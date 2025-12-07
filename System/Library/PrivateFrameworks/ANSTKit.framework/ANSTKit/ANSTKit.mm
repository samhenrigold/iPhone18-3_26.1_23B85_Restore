void sub_22E5D6F98(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id _ANSTLoggingGetOSLogForCategoryANSTKit(uint64_t a1)
{
  if (qword_2814675B8 != -1)
  {
    sub_22E656D10();
  }

  v2 = qword_2814675B0;

  return v2;
}

uint64_t sub_22E5D7118()
{
  qword_2814675B0 = os_log_create("com.apple.ANSTKit", "ANSTKit");

  return MEMORY[0x2821F96F8]();
}

__CFString *ANSTISPInferenceVersionToNSString(uint64_t a1, const char *a2)
{
  if (a1 == 0x10000)
  {
    v3 = @"Version1";
  }

  else if (a1 == 196613)
  {
    v3 = @"Version3.5";
  }

  else
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownVersion(0x%zx)", a1);
  }

  return v3;
}

__CFString *ANSTISPInferenceResolutionToNSString(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = @"1024x576";
    }

    else
    {
      v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownResolution(%zd)", a1);
    }
  }

  else
  {
    v3 = @"512x384";
  }

  return v3;
}

__CFString *ANSTISPInferenceFrameRateToNSString(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = @"Low";
    }

    else
    {
      v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownFrameRate(%zd)", a1);
    }
  }

  else
  {
    v3 = @"Standard";
  }

  return v3;
}

uint64_t espressoPlanPriorityForQualityOfService(qos_class_t a1)
{
  HIDWORD(v2) = a1 - 9;
  LODWORD(v2) = a1 - 9;
  v1 = v2 >> 3;
  if (v1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_22E661940[v1];
  }
}

void sub_22E5D8E98(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *sub_22E5D8EB4(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E5D9A7C();
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

void sub_22E5D9470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5D9860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22E5D9958(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = ANSTBaseNetworkEspresso;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_22E5D9A94(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22E5D9AF0(exception, a1);
  __cxa_throw(exception, off_27884F7A0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22E5D9AF0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22E5D9B24()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_22E5D9B58(uint64_t result)
{
  if (*(result + 24))
  {
    sub_22E5D9BB4(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_22E5D9BB4(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_22E5D9C00(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22E5D9EC0(a1, a2);
  v7 = v6;
  v8 = *(a1 + 2);
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_22E5DA36C(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

unint64_t sub_22E5D9EC0(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_22E5D9F00(&v5, a2, v3);
}

unint64_t sub_22E5D9F00(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_22E5DA2AC(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_22E5DA200(a2, a3);
  }

  else
  {
    return sub_22E5DA108(a2, a3);
  }
}

unint64_t sub_22E5DA108(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_22E5DA200(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_22E5DA2AC(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_22E5DA36C(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_22E5DA3E4(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_22E5DA4D4(result, prime);
    }
  }
}

void sub_22E5DA4D4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22E5D9B24();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_22E5DA638(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_22E5DA69C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22E5DA6F8(exception, a1);
  __cxa_throw(exception, off_27884F7A8, MEMORY[0x277D825F8]);
}

std::logic_error *sub_22E5DA6F8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

const void **sub_22E5DA72C(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_22E5D9EC0(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_22E5DA36C(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

const void **sub_22E5DA9D8(void *a1, uint64_t *a2)
{
  v4 = sub_22E5D9EC0(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_22E5DA36C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **sub_22E5DAAD4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22E5D9EC0(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_22E5DAD4C();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_22E5DA36C(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_22E5DAD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_22E5DA638(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5DAE1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_22E5DA638(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_22E5DAE38(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_22E5D9A7C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_22E5DAEDC(uint64_t a1)
{
  sub_22E5D9BB4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_22E5DAF18@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2082;
  *(a2 + 14) = result;
  return result;
}

uint64_t sub_22E5DAF2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2082;
  *(a3 + 14) = result;
  *(a3 + 22) = 2082;
  *(a3 + 24) = a2;
  return result;
}

void sub_22E5DAF48(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_22E5DAF64(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x20u);
}

void sub_22E5DC6B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_22E5DDD38(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E5DDCECLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5DFC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22E5DFC84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E5DFC9C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = a4;
  if (v21)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = v10[4144];
    v12 = objc_msgSend_acResult(v10, v8, v9);
    AcANSTPostProcessNetOutputs(v11, v10 + 30678, &v10[4145], a2, a3, &v10[4610], v12, v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t ANSTTensorDataTypeGetSize(uint64_t a1)
{
  if (a1 > 99)
  {
    if (a1 <= 104)
    {
      if (a1 == 100)
      {
        return 8;
      }

      if (a1 == 102)
      {
        return 4;
      }
    }

    else
    {
      if (a1 <= 114)
      {
        if (a1 != 105)
        {
          return 8;
        }

        return 4;
      }

      if (a1 == 116)
      {
        return 16;
      }
    }

    return 2;
  }

  v1 = 1;
  if (a1 > 80)
  {
    if (a1 <= 83)
    {
      if (a1 != 81)
      {
        return 2;
      }

      return 8;
    }

    if (a1 != 84)
    {
      return v1;
    }

    return 16;
  }

  if (a1 != 67)
  {
    if (a1 == 68)
    {
      return 16;
    }

    return 4;
  }

  return v1;
}

uint64_t ANSTTensorDataTypeGetPreferredAlignment(uint64_t a1)
{
  if (a1 > 99)
  {
    if (a1 <= 104)
    {
      v7 = 8;
      v8 = 4;
      if (a1 != 102)
      {
        v8 = 2;
      }

      v6 = a1 == 100;
    }

    else
    {
      if (a1 > 114)
      {
        if (a1 == 116)
        {
          return 8;
        }

        else
        {
          return 2;
        }
      }

      v6 = a1 == 105;
      v7 = 4;
      v8 = 8;
    }

    if (v6)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  v1 = 1;
  v2 = 8;
  if (a1 != 84)
  {
    v2 = 1;
  }

  v3 = 8;
  if (a1 != 81)
  {
    v3 = 2;
  }

  if (a1 <= 83)
  {
    v2 = v3;
  }

  v4 = 8;
  if (a1 != 68)
  {
    v4 = 4;
  }

  if (a1 != 67)
  {
    v1 = v4;
  }

  if (a1 <= 80)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

__CFString *ANSTTensorDataTypeToNSString(uint64_t a1)
{
  if (a1 > 99)
  {
    v1 = @"Int16";
    if (a1 != 115)
    {
      v1 = @"Int128";
    }

    v6 = @"Int32";
    if (a1 != 105)
    {
      v6 = @"Int64";
    }

    if (a1 <= 114)
    {
      v1 = v6;
    }

    v3 = @"Float64";
    v7 = @"Float32";
    if (a1 != 102)
    {
      v7 = @"Float16";
    }

    if (a1 != 100)
    {
      v3 = v7;
    }

    v5 = a1 <= 104;
  }

  else
  {
    v1 = @"Int8";
    if (a1 == 84)
    {
      v1 = @"UInt128";
    }

    v2 = @"UInt64";
    if (a1 != 81)
    {
      v2 = @"UInt16";
    }

    if (a1 <= 83)
    {
      v1 = v2;
    }

    v3 = @"UInt8";
    v4 = @"Float128";
    if (a1 != 68)
    {
      v4 = @"UInt32";
    }

    if (a1 != 67)
    {
      v3 = v4;
    }

    v5 = a1 <= 80;
  }

  if (v5)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22E5E1C70(uint64_t a1, uint64_t *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  component_dtype = e5rt_tensor_desc_dtype_get_component_dtype();
  if (component_dtype)
  {
    v6 = component_dtype;
    last_error_message = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_tensor_desc_dtype_get_component_dtype(e5_dtype_desc, &component_dtype)", v6, last_error_message);
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E657894();
    }

    if (!a3)
    {
      goto LABEL_12;
    }

    v12 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA068];
    v25[0] = v9;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v25, &v24, 1);
    v19 = LABEL_11:;
    *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v20, @"ANSTErrorDomain", 5, v19);

LABEL_12:
    return 0;
  }

  component_pack = e5rt_tensor_desc_dtype_get_component_pack();
  if (component_pack)
  {
    v14 = component_pack;
    v15 = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s returned error code %u (%s)", "e5rt_tensor_desc_dtype_get_component_pack(e5_dtype_desc, &component_pack)", v14, v15);
    v17 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22E657894();
    }

    if (!a3)
    {
      goto LABEL_12;
    }

    v12 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA068];
    v23 = v9;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, &v23, &v22, 1);
    goto LABEL_11;
  }

  *a2 = 67;
  return 1;
}

__CFString *ANSTImageOrientationToNSString(unint64_t a1)
{
  if (a1 < 5)
  {
    return off_27884F890[a1];
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E6579FC();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTFrameRateToNSString(uint64_t a1)
{
  if (!a1)
  {
    return @"Unspecified";
  }

  if (a1 == 1)
  {
    return @"30 FPS";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E657A7C();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTObjectCategoryFromAcDetCategory(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_27884F8B8[a1];
  }
}

uint64_t AcImageOrientationFromANSTImageOrientation(uint64_t a1)
{
  if ((a1 - 1) < 4)
  {
    return dword_22E661960[a1 - 1];
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E657AFC(v2);
  }

  return 0;
}

void sub_22E5E8E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22E5E8E3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E5E8E54(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  objc_msgSend_boundingBox(v13, v5, v6);
  v8 = v7;
  objc_msgSend_boundingBox(v13, v9, v10);
  v12 = *(*(a1 + 32) + 8);
  if (v8 * v11 > *(v12 + 24))
  {
    *(v12 + 24) = v8 * v11;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void sub_22E5E8EE4(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22E5E8F98;
  v7[3] = &unk_27884FA80;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = a2;
  v7[4] = v3;
  v8 = v5;
  v9 = *(a1 + 56);
  objc_msgSend_performDataAccessWithOptions_usingBlock_error_(v4, v6, 0, v7, *(a1 + 64));
}

void sub_22E5E8F98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    if (a2)
    {
      v37 = *(*(a1 + 32) + 152);
      cblas_sgemv_NEWLAPACK();
      cblas_sscal_NEWLAPACK();
      v3 = *(a1 + 32);
      v4 = v3[19];
      v5 = v3[17];
      v6 = *v4;
      if (v5 >= 2)
      {
        v7 = v4 + 1;
        do
        {
          v8 = *v7++;
          v9 = v8;
          if (v6 < v8)
          {
            v6 = v9;
          }
        }

        while (v7 < &v4[v5]);
      }

      if (v5)
      {
        v10 = v3[20];
        v11 = v5;
        v12 = v10;
        do
        {
          v13 = *v4++;
          *v12++ = v13 - v6;
          --v11;
        }

        while (v11);
        v14 = 0.0;
        v15 = v5;
        v16 = v10;
        do
        {
          v17 = *v16++;
          v14 = v14 + expf(v17);
          --v15;
        }

        while (v15);
        do
        {
          *v10 = expf(*v10) / v14;
          ++v10;
          LODWORD(v5) = v5 - 1;
        }

        while (v5);
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_22E5E91A0;
      v38[3] = &unk_27884FA58;
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = *(a1 + 32);
      v39 = v19;
      v40 = v20;
      objc_msgSend_enumerateObjectsUsingBlock_(v18, v21, v38, v37, 1);
      v22 = v39;
    }

    else
    {
      v22 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22E6582C0(v22, v30, v31, v32, v33, v34, v35, v36);
      }
    }
  }

  else
  {
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E658338(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }
}

void sub_22E5E91A0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = *(*(*(a1 + 40) + 160) + 4 * a3);
  v6 = a2;
  LODWORD(v7) = v5;
  v11 = objc_msgSend_numberWithFloat_(v4, v8, v9, v7);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v10, v11, v6);
}

void sub_22E5E98B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

__CFString *ANSTVideoMaskRefineAlgorithmVersionToNSString(uint64_t a1)
{
  if (a1 == 0x10000)
  {
    return @"Version1";
  }

  v3 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_22E658564(a1, v3);
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTAssetTypeToNSString(unint64_t a1, const char *a2)
{
  if (a1 >= 3)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownType(0x%zx)", a1);
  }

  else
  {
    v3 = off_27884FAE8[a1];
  }

  return v3;
}

void sub_22E5EE7FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E5EE548);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5EEE24(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    free(v2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5EF3D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    free(v2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5EFC9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E5EFB58);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5F0290(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E5F014CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5F0A84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    free(v2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5F1260(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    free(v2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5F1FD8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E5F1E8CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5F2500(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E5F2344);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5F390C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E5F3270);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5F3E9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E5F3DA8);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E5F3F30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x20u);
}

uint64_t sub_22E5F47F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = a2;
    v5 = *(v3 + 16);
    v6 = *(a1 + 40);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 33112);
    v8 = objc_msgSend_count(*(v9 + 33104), 0, a3);
    v5 = *(v3 + 16);
    v6 = v3;
    v7 = v10;
    v4 = 0;
  }

  return v5(v6, v7, v8, v4);
}

void sub_22E5F4E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22E5F4E34(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 64);
  *(*(*(a1 + 32) + 33112) + 24 * v3) = a2;
  result = objc_msgSend__recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex_skipIndexSet_block_(*(a1 + 32), a2, v3 + 1, *(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

__CFString *ANSTLabelDetectionVersionToNSString(uint64_t a1)
{
  if (a1 == 0x10000)
  {
    return @"Version1";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E659510();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTLabelDetectionResolutionToNSString(uint64_t a1)
{
  if (!a1)
  {
    return @"640x640";
  }

  v1 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_22E659584();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTLabelDetectionFrameRateToNSString(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_27884FB50[a1];
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E6595F8();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

void sub_22E5F5388(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void *sub_22E5F5D08(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E5F5D98;
  v5[3] = &unk_27884FB70;
  v5[4] = *(a1 + 40);
  v5[5] = a2;
  result = objc_msgSend_performMutableDataAccessWithOptions_usingBlock_error_(v3, a2, 0, v5, *(a1 + 56));
  **(a1 + 48) = result;
  return result;
}

void *sub_22E5F5E70(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E5F5F00;
  v5[3] = &unk_27884FB70;
  v5[4] = *(a1 + 40);
  v5[5] = a2;
  result = objc_msgSend_performMutableDataAccessWithOptions_usingBlock_error_(v3, a2, 0, v5, *(a1 + 56));
  **(a1 + 48) = result;
  return result;
}

__CFString *ANSTViSegHQInferenceVersionToNSString(uint64_t a1, const char *a2)
{
  switch(a1)
  {
    case 65536:
      v3 = @"Version1";

      break;
    case 131073:
      v3 = @"Version2 (E5ML)";

      break;
    case 131072:
      v3 = @"Version2";

      break;
    default:
      v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownVersion(0x%zx)", a1);

      break;
  }

  return v3;
}

__CFString *ANSTViSegHQInferenceResolutionToNSString(unint64_t a1, const char *a2)
{
  if (a1 >= 4)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownResolution(%zd)", a1);
  }

  else
  {
    v3 = off_27884FBD8[a1];
  }

  return v3;
}

uint64_t sub_22E5F7D88(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_22E5F7E5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_22E5F7F30(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_22E5F8004(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_22E5F80D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t sub_22E5F81AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

__CFString *ANSTVideoMaskRefinerHQVersionToNSString(uint64_t a1, const char *a2)
{
  if (a1 == 0x10000)
  {
    v3 = @"Version1";
  }

  else
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownVersion(0x%zx)", a1);
  }

  return v3;
}

__CFString *ANSTVideoMaskRefinerHQResolutionToNSString(uint64_t a1)
{
  if (!a1)
  {
    return @"448x576";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E659808(a1, v2);
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__n128 sub_22E5FA248(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = a2[1].n128_u32[0];
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u32[0] = v3;
  return result;
}

void sub_22E5FD708(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x20u);
}

BOOL sub_22E5FDB44(void *a1, _OWORD *a2, const char *a3)
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a1;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v9, v7, v8, 0);
  v11 = NSStringFromSelector(a3);
  v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v6, v12, v10, v11);

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = *(MEMORY[0x277CBF398] + 16);
      *a2 = *MEMORY[0x277CBF398];
      a2[1] = v14;
      v15 = 1;
    }

    else
    {
      v16 = v13;
      v17 = v16;
      v20 = objc_msgSend_objCType(v17, v18, v19);
      v21 = strcmp(v20, "{CGRect={CGPoint=dd}{CGSize=dd}}");
      v15 = v21 == 0;
      if (!v21)
      {
        objc_msgSend_getValue_size_(v16, v22, a2, 32);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_22E5FDE8C(void *a1, const char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  *v20 = a3;
  *&v20[1] = a4;
  *&v20[2] = a5;
  *&v20[3] = a6;
  v11 = a1;
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  if (CGRectIsNull(v22))
  {
    v19 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
    v14 = NSStringFromSelector(a2);
    objc_msgSend_encodeObject_forKey_(v11, v15, v19, v14);
  }

  else
  {
    v16 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v12, v20, "{CGRect={CGPoint=dd}{CGSize=dd}}");
    v17 = NSStringFromSelector(a2);
    objc_msgSend_encodeObject_forKey_(v11, v18, v16, v17);
  }
}

id sub_22E5FE548(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, uint64_t a7)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23[0] = @"x";
  v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a6, a7, a1);
  v24[0] = v10;
  v23[1] = @"y";
  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v11, v12, a2);
  v24[1] = v13;
  v23[2] = @"width";
  v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v14, v15, a3);
  v24[2] = v16;
  v23[3] = @"height";
  v19 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v17, v18, a4);
  v24[3] = v19;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v24, v23, 4);

  return v21;
}

BOOL sub_22E5FE920(void *a1, uint64_t *a2, const char *a3)
{
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a3);
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v8, v6, v7);

  if (v9)
  {
    *a2 = objc_msgSend_integerValue(v9, v10, v11);
  }

  return v9 != 0;
}

BOOL sub_22E601030(void *a1, _BYTE *a2, const char *a3)
{
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a3);
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v8, v6, v7);

  if (v9)
  {
    *a2 = objc_msgSend_BOOLValue(v9, v10, v11);
  }

  return v9 != 0;
}

void sub_22E604268(uint64_t a1, const void *a2)
{
  BaseAddress = IOSurfaceGetBaseAddress(*(a1 + 40));
  v10 = objc_msgSend_tensorDescriptor(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_sizeInBytes(v10, v7, v8);
  memcpy(BaseAddress, a2, v9);
}

void sub_22E6042E0(uint64_t a1, void *a2)
{
  BaseAddress = IOSurfaceGetBaseAddress(*(a1 + 40));
  v10 = objc_msgSend_tensorDescriptor(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_sizeInBytes(v10, v7, v8);
  memcpy(a2, BaseAddress, v9);
}

void sub_22E604358(uint64_t a1, void *a2, uint64_t a3)
{
  _H0 = *(*(a1 + 48) + 2 * a3);
  __asm { FCVT            S8, H0 }

  v10 = *(*(a1 + 32) + 8);
  v11 = a2;
  objc_msgSend_normalizationThresholdForActionType_detectorVersion_(ANSTActionDetector, v12, v11, v10);
  v16 = _S8 - v15;
  if (v15 >= _S8)
  {
    v17 = ((v16 * 0.5) / v15) + 0.5;
  }

  else
  {
    v17 = v16 * 0.5 / (1.0 - v15) + 0.5;
  }

  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  _NF = v17 < 0.0;
  v19 = 0.0;
  if (!_NF)
  {
    *&v19 = v18;
  }

  v21 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v13, v14, v19);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v20, v21, v11);
}

uint64_t sub_22E6054B8(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      v1 = _ANSTLoggingGetOSLogForCategoryANSTKit(result);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
      {
        sub_22E65A150();
      }

      return 0;
    }
  }

  return result;
}

__CFString *ANSTFaceAttributeAlgorithmVersionToNSString(uint64_t a1)
{
  if (a1 == 0x10000)
  {
    return @"v1";
  }

  v3 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_22E65A974(a1, v3);
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

void sub_22E608100(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x22E607C0CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22E6084EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22E6084A0);
  }

  _Unwind_Resume(exception_object);
}

__CFString *ANSTActionDetectorVersionToNSString(uint64_t a1)
{
  v1 = __ROR8__(a1 - 0x10000, 16);
  if (v1 < 4)
  {
    return off_27884FD28[v1];
  }

  v4 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_22E65AE2C(a1, v4);
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

uint64_t _ccrrt_dense(size_t size, double **a2, int *a3, int *a4, int *a5, double *a6)
{
  v11 = size;
  if (size)
  {
    v12 = size;
    v13 = size;
    v14 = a5;
    v15 = a6;
    v16 = a4;
    do
    {
      *v16++ = -1;
      *v15++ = 1000000.0;
      *v14++ = 0;
      --v13;
    }

    while (v13);
    v17 = 0;
    do
    {
      v18 = a2[v17];
      v19 = size;
      v20 = a5;
      v21 = a6;
      do
      {
        if (*v18 < *v21)
        {
          *v21 = *v18;
          *v20 = v17;
        }

        ++v18;
        ++v21;
        ++v20;
        --v19;
      }

      while (v19);
      ++v17;
    }

    while (v17 != size);
  }

  else
  {
    v12 = 0;
  }

  v22 = malloc_type_malloc(v12, 0x100004077774924uLL);
  v23 = 0xFFFFFFFFLL;
  if (v22)
  {
    v24 = v22;
    memset(v22, 1, v12);
    v25 = v11 + 1;
    v26 = v11 - 1;
    v27 = &a5[v11 - 1];
    do
    {
      v28 = *v27;
      if (a4[v28] < 0)
      {
        a4[v28] = v26;
      }

      else
      {
        v24[v28] = 0;
        *v27 = -1;
      }

      --v25;
      --v26;
      --v27;
    }

    while (v25 > 1);
    if (v11)
    {
      v29 = 0;
      v23 = 0;
      do
      {
        v30 = a4[v29];
        if ((v30 & 0x80000000) != 0)
        {
          a3[v23] = v29;
          v23 = (v23 + 1);
        }

        else if (v24[v29])
        {
          v31 = 0;
          v32 = 1000000.0;
          do
          {
            if (v30 != v31)
            {
              v33 = a2[v29];
              v34 = a6[v31];
              if (v33[v31] - v34 < v32)
              {
                v32 = v33[v31] - v34;
              }
            }

            ++v31;
          }

          while (v12 != v31);
          a6[v30] = a6[v30] - v32;
        }

        ++v29;
      }

      while (v29 != v12);
    }

    else
    {
      v23 = 0;
    }

    free(v24);
  }

  return v23;
}

uint64_t _carr_dense(unsigned int a1, double **a2, unsigned int a3, int *a4, int *a5, int *a6, double *a7)
{
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = a4[v7];
      v11 = a2[v10];
      v12 = *a7;
      v13 = *v11 - *a7;
      if (a1 < 2)
      {
        v14 = 0;
        v15 = -1;
        v17 = 1000000.0;
      }

      else
      {
        v14 = 0;
        v15 = -1;
        v16 = 1;
        v17 = 1000000.0;
        do
        {
          v18 = v11[v16] - a7[v16];
          if (v18 < v17)
          {
            v15 = v18 >= v13 ? v16 : v14;
            if (v18 >= v13)
            {
              v17 = v11[v16] - a7[v16];
            }

            else
            {
              v14 = v16;
              v17 = v13;
            }

            if (v18 < v13)
            {
              v13 = v11[v16] - a7[v16];
            }
          }

          ++v16;
        }

        while (a1 != v16);
        v12 = a7[v14];
      }

      ++v9;
      v19 = a6[v14];
      if (v9 >= (v7 + 1) * a1)
      {
        goto LABEL_24;
      }

      v20 = v12 - (v17 - v13);
      if (v20 >= v12)
      {
        break;
      }

      a7[v14] = v20;
      if (v19 < 0)
      {
        goto LABEL_26;
      }

      a4[v7] = v19;
LABEL_27:
      a5[v10] = v14;
      a6[v14] = v10;
      if (v7 >= a3)
      {
        return v8;
      }
    }

    if ((v19 & 0x80000000) == 0 && (v15 & 0x80000000) == 0)
    {
      v19 = a6[v15];
      v14 = v15;
    }

LABEL_24:
    if ((v19 & 0x80000000) == 0)
    {
      a4[v8] = v19;
      v8 = (v8 + 1);
    }

LABEL_26:
    ++v7;
    goto LABEL_27;
  }

  return 0;
}

uint64_t _find_dense(unsigned int a1, int a2, double *a3, int *a4, int *a5)
{
  result = (a2 + 1);
  if (result < a1)
  {
    v7 = a3[a4[a2]];
    v8 = &a4[result];
    v9 = ~a2 + a1;
    do
    {
      v10 = *v8;
      v11 = a3[v10];
      if (v11 <= v7)
      {
        if (v11 >= v7)
        {
          v12 = result;
        }

        else
        {
          v12 = a2;
        }

        if (v11 < v7)
        {
          v7 = a3[v10];
        }

        *v8 = a4[v12];
        result = (v12 + 1);
        a4[v12] = v10;
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t _scan_dense(unsigned int a1, double **a2, unsigned int *a3, unsigned int *a4, double *a5, int *a6, int *a7, int *a8, double *a9)
{
  v9 = *a3;
  for (i = *a4; v9 != i; ++v9)
  {
    v13 = a1 - i;
    if (a1 > i)
    {
      v14 = a6[v9];
      v15 = a8[v14];
      v16 = a5[v14];
      v17 = a2[v15];
      v18 = v17[v14] - a9[v14] - v16;
      v19 = &a6[i];
      do
      {
        v11 = *v19;
        v20 = v17[v11] - a9[v11] - v18;
        if (v20 < a5[v11])
        {
          a5[v11] = v20;
          a7[v11] = v15;
          if (v20 == v16)
          {
            if (a8[v11] < 0)
            {
              return v11;
            }

            *v19 = a6[i];
            a6[i++] = v11;
          }
        }

        ++v19;
        --v13;
      }

      while (v13);
    }
  }

  *a3 = v9;
  *a4 = v9;
  return 0xFFFFFFFFLL;
}

uint64_t find_path_dense(unsigned int a1, double **a2, int a3, int *a4, double *a5, int *a6)
{
  *v38 = 0;
  v12 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  v14 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  if (a1)
  {
    v16 = 0;
    v17 = a2[a3];
    do
    {
      v13[v16] = v16;
      a6[v16] = a3;
      v14[v16] = v17[v16] - a5[v16];
      ++v16;
    }

    while (a1 != v16);
  }

  v18 = 0;
  do
  {
    v19 = v38[1];
    if (v38[1] == v38[0])
    {
      v20 = v38[1] + 1;
      if (v38[1] + 1 < a1)
      {
        v21 = v15[v13[v38[1]]];
        v22 = a1 - 1 - v38[1];
        v23 = &v13[v20];
        do
        {
          v24 = *v23;
          v25 = v15[v24];
          if (v25 <= v21)
          {
            if (v25 >= v21)
            {
              v26 = v20;
            }

            else
            {
              v26 = v19;
            }

            if (v25 < v21)
            {
              v21 = v15[v24];
            }

            *v23 = v13[v26];
            v20 = v26 + 1;
            v13[v26] = v24;
          }

          ++v23;
          --v22;
        }

        while (v22);
      }

      v38[0] = v20;
      if (v19 >= v20)
      {
        v18 = v19;
      }

      else
      {
        v27 = v20;
        v28 = &v13[v19];
        v29 = v27 - v19;
        LODWORD(v30) = -1;
        do
        {
          v32 = *v28++;
          v31 = v32;
          if (a4[v32] >= 0)
          {
            v30 = v30;
          }

          else
          {
            v30 = v31;
          }

          --v29;
        }

        while (v29);
        v18 = v19;
        if (v30 != -1)
        {
          goto LABEL_29;
        }
      }
    }

    v33 = _scan_dense(a1, a2, &v38[1], v38, v15, v13, a6, a4, a5);
  }

  while (v33 == -1);
  v30 = v33;
  LODWORD(v19) = v18;
LABEL_29:
  if (v19)
  {
    v34 = v15[v13[v38[1]]];
    v19 = v19;
    v35 = v13;
    do
    {
      v36 = *v35++;
      a5[v36] = a5[v36] + v15[v36] - v34;
      --v19;
    }

    while (v19);
  }

  free(v13);
  free(v15);
  return v30;
}

uint64_t _ca_dense(unsigned int a1, double **a2, int a3, int *a4, int *a5, int *a6, double *a7)
{
  v14 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  if (a3)
  {
    v16 = &a4[a3];
    do
    {
      path_dense = find_path_dense(a1, a2, *a4, a6, a7, v15);
      if (*a4 != -1)
      {
        do
        {
          v18 = v15[path_dense];
          a6[path_dense] = v18;
          v19 = a5[v18];
          a5[v18] = path_dense;
          path_dense = v19;
        }

        while (v18 != *a4);
      }

      ++a4;
    }

    while (a4 < v16);
  }

  free(v15);
  return 0;
}

uint64_t lapjv_internal(size_t a1, double **a2, int *a3, int *a4)
{
  v8 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = _ccrrt_dense(a1, a2, v9, a3, a4, v10);
  if (v12 >= 1)
  {
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = _carr_dense(a1, a2, v12, v9, a3, a4, v11);
      v12 = v15;
      if (v15 < 1)
      {
        break;
      }

      v13 = 0;
    }

    while ((v14 & 1) != 0);
    if (v15 >= 1)
    {
      v12 = _ca_dense(a1, a2, v15, v9, a3, a4, v11);
    }
  }

  free(v11);
  free(v9);
  return v12;
}

__CFString *ANSTISPAlgorithmVersionToNSString(uint64_t a1)
{
  if (a1 == 0x10000)
  {
    return @"Version1";
  }

  if (a1 == 196613)
  {
    return @"Version3.5";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65AEB8();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTISPAlgorithmResolutionToNSString(uint64_t a1)
{
  if (!a1)
  {
    return @"512x384";
  }

  if (a1 == 1)
  {
    return @"1024x576";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65AF2C();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTISPAlgorithmRunningFrameRateToNSString(uint64_t a1)
{
  if (!a1)
  {
    return @"Standard";
  }

  if (a1 == 1)
  {
    return @"Low";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65AFA0();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

double acAcObjectMaskNull@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void performNMS(unint64_t *a1, float a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 6));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_22E60DA10(v4, v5, v7, 1);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v8 = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    do
    {
      v10 = v18;
      v11 = v19;
      while (v10 != v11)
      {
        v16[2] = 0;
        v17 = 0;
        v12 = vadd_f32(*(v8 + 12), *(v8 + 20));
        v16[0] = *(v8 + 12);
        v16[1] = v12;
        *&v17 = *(v8 + 28) / 1000.0;
        v14[2] = 0;
        v15 = 0;
        v13 = vadd_f32(*(v10 + 12), *(v10 + 20));
        v14[0] = *(v10 + 12);
        v14[1] = v13;
        *&v15 = *(v10 + 7) / 1000.0;
        if (acDetRectOverlap(v16, v14) > a2)
        {
          goto LABEL_10;
        }

        v10 += 12;
      }

      sub_22E60AE14(&v18, v8);
LABEL_10:
      v8 += 192;
    }

    while (v8 != v9);
  }

  if (&v18 != a1)
  {
    sub_22E6106EC(a1, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 6));
  }

  v16[0] = &v18;
  sub_22E610A88(v16);
}

void sub_22E60ADF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a14 = &a18;
  sub_22E610A88(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_22E60AE14(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_22E6102F4(a1, a2);
  }

  else
  {
    sub_22E61025C(a1, a2);
    result = v3 + 192;
  }

  a1[1] = result;
  return result;
}

void ANSTTrackingNode::ANSTTrackingNode(ANSTTrackingNode *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 2336) = 0;
  sub_22E60AEAC(this, 0x1EuLL);
}

void sub_22E60AE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22E610A88(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_22E60AEAC(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0x155555555555556)
    {
      sub_22E610494(result, a2);
    }

    sub_22E61047C();
  }

  return result;
}

void sub_22E60AF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22E610658(va);
  _Unwind_Resume(a1);
}

void ANSTTrackingNode::~ANSTTrackingNode(void **this)
{
  v1 = this;
  sub_22E610A88(&v1);
}

{
  v1 = this;
  sub_22E610A88(&v1);
}

uint64_t ANSTTrackingNode::process(uint64_t a1, unint64_t *a2)
{
  v2 = a2;
  performNMS(a2, 0.3);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
  if (v4 > 1)
  {
    if (*(a1 + 9344) >= 0x186A1u)
    {
      *(a1 + 9344) = 0;
    }

    v20 = v2[1];
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v2) >> 6);
    v22 = 126 - 2 * __clz(v21);
    if (v20 == *v2)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    sub_22E60DA10(*v2, v20, v23, 1);
    v24 = v2[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v24 - *v2) >> 6) >= 0x1F)
    {
      sub_22E60BB2C(v2, (*v2 + 5760), v24);
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 6);
    }

    v25 = *(a1 + 8);
    v26 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v25 - *a1) >> 6));
    if (v25 == *a1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    sub_22E60DA10(*a1, v25, v27, 1);
    v28 = *(a1 + 8);
    if (0xAAAAAAAAAAAAAAABLL * ((v28 - *a1) >> 6) >= 0x1F)
    {
      sub_22E60BB2C(a1, (*a1 + 5760), v28);
      v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
    }

    v121 = v21;
    v122 = v4;
    v120 = bmMaximum(v21, v4);
    v29 = (a1 + 24);
    v30 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
    v128 = v2;
    v31 = (v2[1] - *v2) >> 6;
    v32 = 0xAAAAAAAAAAAAAAABLL * v31;
    v33 = bmMaximum(v30, -1431655765 * v31);
    if (v33)
    {
      v34 = 0;
      v35 = 0;
      v36 = v30;
      v37 = v33;
      v38 = 192 * v32;
      v123 = v33 - v32;
      v127 = a1;
      v126 = v33;
      v124 = v33;
      v125 = v36;
      do
      {
        if (v34 >= v36)
        {
          v45 = v33;
          do
          {
            v29[v35++] = 0x40000000;
            --v45;
          }

          while (v45);
        }

        else
        {
          v39 = *a1 + 192 * v34;
          v130 = 0uLL;
          __src[0] = *(v39 + 12);
          __src[1] = vadd_f32(__src[0], *(v39 + 20));
          *(&v130 + 2) = *(v39 + 28) / 1000.0;
          v40 = v32;
          if (v32)
          {
            v41 = 0;
            do
            {
              v42 = *v2;
              v141[2] = 0;
              v142 = 0;
              v43 = v42 + v41;
              v141[0] = *(v43 + 12);
              v141[1] = vadd_f32(v141[0], *(v43 + 20));
              *&v142 = *(v43 + 28) / 1000.0;
              *&v29[v35++] = 1.0 - acDetRectOverlap(v141, __src);
              v41 += 192;
            }

            while (v38 != v41);
          }

          v44 = v123;
          v32 = v40;
          v33 = v126;
          if (v126 > v40)
          {
            do
            {
              v29[v35++] = 0x40000000;
              --v44;
            }

            while (v44);
          }

          a1 = v127;
          v37 = v124;
          v36 = v125;
        }

        ++v34;
      }

      while (v34 != v37);
    }

    if (v4)
    {
      v46 = bmMunkresTempBytes(v120);
      sub_22E610B90(__src, v46);
      memcpy((a1 + 3624), v29, 4 * v120 * v120);
      bmMunkres(v29, v120, __src[0], LODWORD(__src[1]) - LODWORD(__src[0]), (a1 + 9224), 0x78u, 0, v47);
      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      v48 = 0;
      v49 = *a1;
      v50 = xmmword_22E661D00;
      v51 = xmmword_22E661D10;
      v52 = xmmword_22E661D20;
      v53 = xmmword_22E661D30;
      v54 = xmmword_22E661D40;
      v55 = xmmword_22E661D50;
      v56 = xmmword_22E661C80;
      v57 = xmmword_22E661C90;
      v58 = (v4 + 15) & 0x1FFFFFFF0;
      v59 = vdupq_n_s64(v4 - 1);
      v60 = vdupq_n_s64(0x10uLL);
      do
      {
        v61 = vmovn_s64(vcgeq_u64(v59, v57));
        if (vuzp1_s8(vuzp1_s16(v61, *v50.i8), *v50.i8).u8[0])
        {
          *(v49 + v48 + 164) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v61, *&v50), *&v50).i8[1])
        {
          *(v49 + v48 + 356) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v59, *&v56))), *&v50).i8[2])
        {
          *(v49 + v48 + 548) = 0;
          *(v49 + v48 + 740) = 0;
        }

        v62 = vmovn_s64(vcgeq_u64(v59, v55));
        if (vuzp1_s8(*&v50, vuzp1_s16(v62, *&v50)).i32[1])
        {
          *(v49 + v48 + 932) = 0;
        }

        if (vuzp1_s8(*&v50, vuzp1_s16(v62, *&v50)).i8[5])
        {
          *(v49 + v48 + 1124) = 0;
        }

        if (vuzp1_s8(*&v50, vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v59, *&v54)))).i8[6])
        {
          *(v49 + v48 + 1316) = 0;
          *(v49 + v48 + 1508) = 0;
        }

        v63 = vmovn_s64(vcgeq_u64(v59, v53));
        if (vuzp1_s8(vuzp1_s16(v63, *v50.i8), *v50.i8).u8[0])
        {
          *(v49 + v48 + 1700) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v63, *&v50), *&v50).i8[1])
        {
          *(v49 + v48 + 1892) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v59, *&v52))), *&v50).i8[2])
        {
          *(v49 + v48 + 2084) = 0;
          *(v49 + v48 + 2276) = 0;
        }

        v64 = vmovn_s64(vcgeq_u64(v59, v51));
        if (vuzp1_s8(*&v50, vuzp1_s16(v64, *&v50)).i32[1])
        {
          *(v49 + v48 + 2468) = 0;
        }

        if (vuzp1_s8(*&v50, vuzp1_s16(v64, *&v50)).i8[5])
        {
          *(v49 + v48 + 2660) = 0;
        }

        if (vuzp1_s8(*&v50, vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v59, *&v50)))).i8[6])
        {
          *(v49 + v48 + 2852) = 0;
          *(v49 + v48 + 3044) = 0;
        }

        v55 = vaddq_s64(v55, v60);
        v56 = vaddq_s64(v56, v60);
        v57 = vaddq_s64(v57, v60);
        v54 = vaddq_s64(v54, v60);
        v53 = vaddq_s64(v53, v60);
        v52 = vaddq_s64(v52, v60);
        v51 = vaddq_s64(v51, v60);
        v48 += 3072;
        v50 = vaddq_s64(v50, v60);
        v58 -= 16;
      }

      while (v58);
    }

    else
    {
      v49 = *a1;
    }

    v65 = -1431655765 * ((*(a1 + 8) - v49) >> 6);
    v66 = -1431655765 * ((v2[1] - *v2) >> 6);
    v67 = bmMaximum(v65, v66);
    if (v67)
    {
      v68 = 0;
      v69 = a1 + 3624;
      v70 = 192 * v67;
      v71 = 2306;
      do
      {
        if (v71 - 2306 < v66)
        {
          v72 = *(a1 + 4 * v71);
          if (v72 < v65)
          {
            v73 = *v2;
            if ((1.0 - *(v69 + 4 * (v71 + v72 * v67 - 2306))) <= 0.2)
            {
              *(v73 + v68 + 164) = 0;
            }

            else
            {
              v74 = 3 * v72;
              v75 = *a1 + 192 * v72;
              v76 = *v75;
              v77 = *(v73 + v68 + 32);
              v78 = *(v73 + v68);
              *(v75 + 16) = *(v73 + v68 + 16);
              *(v75 + 32) = v77;
              v79 = *(v73 + v68 + 96);
              v81 = *(v73 + v68 + 48);
              v80 = *(v73 + v68 + 64);
              *(v75 + 80) = *(v73 + v68 + 80);
              *(v75 + 96) = v79;
              *(v75 + 48) = v81;
              *(v75 + 64) = v80;
              v83 = *(v73 + v68 + 128);
              v82 = *(v73 + v68 + 144);
              v84 = *(v73 + v68 + 112);
              *(v75 + 157) = *(v73 + v68 + 157);
              *(v75 + 128) = v83;
              *(v75 + 144) = v82;
              *(v75 + 112) = v84;
              *v75 = v78;
              v85 = v73 + v68;
              v86 = v67;
              std::string::operator=((v75 + 168), (v73 + v68 + 168));
              v69 = a1 + 3624;
              v67 = v86;
              v87 = *a1 + (v74 << 6);
              *v87 = v76;
              v88 = *(v85 + 36);
              v89 = *(v85 + 52);
              v90 = *(v85 + 68);
              *(v87 + 84) = *(v85 + 84);
              *(v87 + 68) = v90;
              *(v87 + 52) = v89;
              *(v87 + 36) = v88;
              v91 = *(v85 + 100);
              v92 = *(v85 + 116);
              v93 = *(v85 + 132);
              *(v87 + 148) = *(v85 + 148);
              *(v87 + 132) = v93;
              *(v87 + 116) = v92;
              *(v87 + 100) = v91;
              v2 = v128;
              *(*a1 + (v74 << 6) + 164) = 1;
              *(*v128 + v68 + 164) = 1;
            }
          }
        }

        v68 += 192;
        ++v71;
      }

      while (v70 != v68);
    }

    __src[0] = 0;
    __src[1] = 0;
    *&v130 = 0;
    if (v122)
    {
      v94 = 0;
      v95 = 0;
      v96 = 164;
      do
      {
        if (!*(*a1 + v96))
        {
          if (v94 >= v130)
          {
            v97 = __src[0];
            v98 = v94 - __src[0];
            v99 = (v94 - __src[0]) >> 2;
            v100 = v99 + 1;
            if ((v99 + 1) >> 62)
            {
              sub_22E61047C();
            }

            v101 = v130 - __src[0];
            if ((v130 - __src[0]) >> 1 > v100)
            {
              v100 = v101 >> 1;
            }

            if (v101 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v102 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v102 = v100;
            }

            if (v102)
            {
              sub_22E610C54(__src, v102);
            }

            v103 = (v94 - __src[0]) >> 2;
            v104 = (4 * v99);
            v105 = (4 * v99 - 4 * v103);
            *v104 = v95;
            v94 = (v104 + 1);
            memcpy(v105, v97, v98);
            v106 = __src[0];
            __src[0] = v105;
            __src[1] = v94;
            *&v130 = 0;
            if (v106)
            {
              operator delete(v106);
            }

            v2 = v128;
          }

          else
          {
            *v94 = v95;
            v94 += 4;
          }

          __src[1] = v94;
        }

        ++v95;
        v96 += 192;
      }

      while (v122 != v95);
      v107 = __src[0];
    }

    else
    {
      v107 = 0;
      v94 = 0;
    }

    v108 = 126 - 2 * __clz((v94 - v107) >> 2);
    if (v94 == v107)
    {
      v109 = 0;
    }

    else
    {
      v109 = v108;
    }

    sub_22E610C9C(v94, v94, v107, v107, v141, v109, 1);
    v110 = __src[0];
    v111 = __src[1];
    if (__src[0] != __src[1])
    {
      v112 = *(a1 + 8);
      do
      {
        v113 = *v110;
        if (0xAAAAAAAAAAAAAAABLL * ((v112 - *a1) >> 6) > v113)
        {
          sub_22E610ADC(v141, (*a1 + 192 * v113 + 192), v112, *a1 + 192 * v113);
          v112 = v114;
          for (i = *(a1 + 8); i != v112; i -= 12)
          {
            if (*(i - 1) < 0)
            {
              operator delete(*(i - 3));
            }
          }

          *(a1 + 8) = v112;
        }

        ++v110;
      }

      while (v110 != v111);
    }

    if (v121)
    {
      v116 = 0;
      do
      {
        v117 = *v2 + v116;
        if (!*(v117 + 164) && 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6) <= 0x1D)
        {
          v118 = *(a1 + 9344);
          *(a1 + 9344) = v118 + 1;
          *v117 = v118;
          sub_22E60AE14(a1, v117);
        }

        v116 += 192;
      }

      while (192 * v121 != v116);
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }

  else
  {
    sub_22E60BADC(a1);
    sub_22E60AEAC(a1, 0x1EuLL);
    v5 = *v2;
    if (v2[1] != *v2)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = v5 + 192 * v6;
        v9 = *v8;
        v10 = *(v8 + 32);
        v130 = *(v8 + 16);
        v131 = v10;
        *__src = v9;
        v11 = *(v8 + 48);
        v12 = *(v8 + 64);
        v13 = *(v8 + 96);
        v134 = *(v8 + 80);
        v135 = v13;
        v132 = v11;
        v133 = v12;
        v14 = *(v8 + 112);
        v15 = *(v8 + 128);
        v16 = *(v8 + 144);
        *&v138[13] = *(v8 + 157);
        v137 = v15;
        *v138 = v16;
        v136 = v14;
        if (*(v8 + 191) < 0)
        {
          sub_22E5DAE38(&__p, *(v8 + 168), *(v8 + 176));
        }

        else
        {
          v17 = *(v8 + 168);
          v140 = *(v8 + 184);
          __p = v17;
        }

        v18 = *(a1 + 9344);
        *(a1 + 9344) = v18 + 1;
        LODWORD(__src[0]) = v18;
        v138[20] = 1;
        sub_22E60AE14(a1, __src);
        if (SHIBYTE(v140) < 0)
        {
          operator delete(__p);
        }

        v6 = v7;
        v5 = *v2;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 6) > v7++);
    }
  }

  return 1;
}

void sub_22E60BA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E60BADC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 192)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

__int128 *sub_22E60BB2C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_22E610ADC(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        if (*(v7 - 1) < 0)
        {
          operator delete(*(v7 - 24));
        }

        v7 -= 192;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void ANSTKCFTrackingNode::ANSTKCFTrackingNode(ANSTKCFTrackingNode *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_22E611AC8(this + 80);
  *(this + 6) = 0;
  *(this + 28) = xmmword_22E661D60;
  *(this + 44) = 30;
}

void sub_22E60BC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  a10 = v11;
  sub_22E6120A8(&a10);
  sub_22E6120A8(&a10);
  _Unwind_Resume(a1);
}

void ANSTKCFTrackingNode::ANSTKCFTrackingNode(ANSTKCFTrackingNode *this, int a2, int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_22E611AC8(this + 80);
  *(this + 6) = 0;
  *(this + 28) = xmmword_22E661D60;
  *(this + 44) = (a2 / 30.0 * a3);
}

void sub_22E60BCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22E6120A8(va);
  sub_22E6120A8(va);
  _Unwind_Resume(a1);
}

void ANSTKCFTrackingNode::~ANSTKCFTrackingNode(ANSTKCFTrackingNode *this)
{
  sub_22E6120FC(this + 10);
  v2 = (this + 56);
  sub_22E6120A8(&v2);
  v2 = this;
  sub_22E6120A8(&v2);
}

uint64_t ANSTKCFTrackingNode::init(ANSTKCFTrackingNode *this)
{
  *(this + 12) = 0;
  *(this + 6) = 0;
  sub_22E60BD80(this);
  sub_22E60BD80(this + 7);
  return 1;
}

void sub_22E60BD80(uint64_t *result)
{
  v2 = *result;
  for (i = result[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_22E612C1C(v4);
    }
  }

  result[1] = v2;
}

void ANSTKCFTrackingNode::joint_stracks(__int128 **a1@<X1>, __int128 **a2@<X2>, void **a3@<X8>)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7 = __p;
    if (__p == v16)
    {
      goto LABEL_9;
    }

    v8 = 0;
    do
    {
      v9 = *v7++;
      if (v9 == *(*v5 + 8))
      {
        ++v8;
      }
    }

    while (v7 != v16);
    if (!v8)
    {
LABEL_9:
      v18 = *(*v5 + 8);
      sub_22E60BF14(&__p, &v18);
    }

    sub_22E60BFF4(a3, v5++);
  }

  v11 = *a2;
  v10 = a2[1];
  while (v11 != v10)
  {
    v12 = __p;
    if (__p == v16)
    {
      goto LABEL_19;
    }

    v13 = 0;
    do
    {
      v14 = *v12++;
      if (v14 == *(*v11 + 8))
      {
        ++v13;
      }
    }

    while (v12 != v16);
    if (!v13)
    {
LABEL_19:
      v18 = *(*v11 + 8);
      sub_22E60BF14(&__p, &v18);
      sub_22E60BFF4(a3, v11);
    }

    ++v11;
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_22E60BEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E6120A8(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22E60BF14(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_22E61047C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_22E610C54(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void **sub_22E60BFF4(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_22E61047C();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_22E61215C(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_22E6121A4(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void ANSTKCFTrackingNode::sub_stracks(__int128 **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    v12 = *(*v5 + 8);
    sub_22E60BF14(&__p, &v12);
    v5 += 16;
  }

  v7 = *a1;
  v8 = a1[1];
  while (v7 != v8)
  {
    v9 = __p;
    if (__p == v14)
    {
      goto LABEL_12;
    }

    v10 = 0;
    do
    {
      v11 = *v9++;
      if (v11 == *(*v7 + 8))
      {
        ++v10;
      }
    }

    while (v9 != v14);
    if (!v10)
    {
LABEL_12:
      sub_22E60BFF4(a3, v7);
    }

    ++v7;
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_22E60C1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_22E6120A8(&__p);
  _Unwind_Resume(a1);
}

void ANSTKCFTrackingNode::remove_duplicate_stracks(int8x16_t ***a1@<X1>, int8x16_t ***a2@<X2>, uint64_t *a3@<X8>)
{
  memset(v40, 0, sizeof(v40));
  memset(v39, 0, sizeof(v39));
  KCFHelper::matching::iou_distance(a1, a2, &v37);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v7 = v37;
  v6 = v38;
  if (v38 != v37)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = &v7[3 * v9];
      v29 = 0;
      v11 = *v10;
      if (v10[1] != *v10)
      {
        v12 = 0;
        do
        {
          if (v11[v12] < 0.15)
          {
            v13 = (*a1)[2 * v30][1].i32[2] - (*a1)[2 * v30][1].i32[1];
            v14 = (*a2)[2 * v12][1].i32[2] - (*a2)[2 * v12][1].i32[1];
            if (v13 <= v14)
            {
              p_p = &v34;
            }

            else
            {
              p_p = &__p;
            }

            if (v13 <= v14)
            {
              v16 = &v30;
            }

            else
            {
              v16 = &v29;
            }

            sub_22E60BF14(p_p, v16);
          }

          v12 = ++v29;
          v11 = *v10;
        }

        while (v12 < (v10[1] - *v10) >> 2);
        v8 = v30;
        v7 = v37;
        v6 = v38;
      }

      v30 = ++v8;
      v9 = v8;
    }

    while (0xAAAAAAAAAAAAAAABLL * (v6 - v7) > v8);
  }

  v18 = *a1;
  v17 = a1[1];
  if (v17 != *a1)
  {
    v19 = 0;
    do
    {
      v20 = v34;
      if (v34 == v35)
      {
        goto LABEL_24;
      }

      v21 = 0;
      do
      {
        v22 = *v20++;
        if (v19 == v22)
        {
          ++v21;
        }
      }

      while (v20 != v35);
      if (!v21)
      {
LABEL_24:
        sub_22E60BFF4(v40, &v18[2 * v19]);
        v18 = *a1;
        v17 = a1[1];
      }

      ++v19;
    }

    while (v19 < (v17 - v18) >> 4);
  }

  v24 = *a2;
  v23 = a2[1];
  if (v23 != *a2)
  {
    v25 = 0;
    do
    {
      v26 = __p;
      if (__p == v32)
      {
        goto LABEL_34;
      }

      v27 = 0;
      do
      {
        v28 = *v26++;
        if (v25 == v28)
        {
          ++v27;
        }
      }

      while (v26 != v32);
      if (!v27)
      {
LABEL_34:
        sub_22E60BFF4(v39, &v24[2 * v25]);
        v24 = *a2;
        v23 = a2[1];
      }

      ++v25;
    }

    while (v25 < (v23 - v24) >> 4);
  }

  sub_22E61222C(a3, v40, v39);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  v34 = &v37;
  sub_22E612474(&v34);
  v37 = v39;
  sub_22E6120A8(&v37);
  v39[0] = v40;
  sub_22E6120A8(v39);
}

void sub_22E60C480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char ***a13, char ***a14, uint64_t a15, char **a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  a13 = &a16;
  sub_22E612474(&a13);
  a16 = &a19;
  sub_22E6120A8(&a16);
  a19 = &a22;
  sub_22E6120A8(&a19);
  _Unwind_Resume(a1);
}

void ANSTKCFTrackingNode::get_dists(int8x16_t ***a2@<X1>, int8x16_t ***a3@<X2>, void *x8_0@<X8>)
{
  KCFHelper::matching::iou_distance(a2, a3, v6);
  KCFHelper::matching::fuse_score(v6, a3, x8_0);
  v7 = v6;
  sub_22E612474(&v7);
}

void sub_22E60C558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22E612474(va);
  _Unwind_Resume(a1);
}

uint64_t ANSTKCFTrackingNode::process(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  ++*(a1 + 24);
  memset(v158, 0, sizeof(v158));
  memset(v157, 0, sizeof(v157));
  v154 = 0;
  v155 = 0;
  v156 = 0;
  memset(v153, 0, sizeof(v153));
  v6 = *(a1 + 28);
  v5 = *(a1 + 32);
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v145 = 0;
    v144 = 0;
    v146 = 0;
  }

  else
  {
    v9 = (v6 * 1000.0);
    v10 = (v5 * 1000.0);
    do
    {
      v11 = *(v7 + 28);
      if (v11 > v9)
      {
        sub_22E60AE14(&v150, v7);
        v11 = *(v7 + 28);
      }

      if (v11 < v9 && v11 > v10)
      {
        sub_22E60AE14(&v147, v7);
      }

      v7 += 192;
    }

    while (v7 != v8);
    v145 = 0;
    v144 = 0;
    v146 = 0;
    if (v150 != v151)
    {
      sub_22E612C88();
    }
  }

  v142 = 0;
  v141 = 0;
  v143 = 0;
  memset(v140, 0, sizeof(v140));
  v13 = *a1;
  v14 = *(a1 + 8);
  if (*a1 != v14)
  {
    do
    {
      if (*(*v13 + 12))
      {
        v15 = v140;
      }

      else
      {
        v15 = &v141;
      }

      sub_22E60BFF4(v15, v13++);
    }

    while (v13 != v14);
  }

  v138 = 0uLL;
  v139 = 0;
  ANSTKCFTrackingNode::joint_stracks(v140, (a1 + 56), v79);
  sub_22E612520(&v138);
  v138 = *v79;
  v139 = *&v79[16];
  memset(v79, 0, 24);
  v130 = v79;
  sub_22E6120A8(&v130);
  KCFHelper::multi_predict(&v138, a1 + 80, v16);
  v136 = 0uLL;
  v137 = 0;
  ANSTKCFTrackingNode::get_dists(&v138, &v144, v79);
  sub_22E612560(&v136);
  v136 = *v79;
  v137 = *&v79[16];
  memset(v79, 0, 24);
  v130 = v79;
  sub_22E612474(&v130);
  KCFHelper::matching::linear_assignment(&v136, (*(&v138 + 1) - v138) >> 4, v145 - v144, &v130);
  v128 = 0;
  v127 = 0;
  v129 = 0;
  sub_22E6125A0(&v127, v130, v131, (v131 - v130) >> 3);
  v125 = 0;
  v124 = 0;
  v126 = 0;
  sub_22E6126A0(&v124, v132, v133, (v133 - v132) >> 2);
  v122 = 0;
  v121 = 0;
  v123 = 0;
  sub_22E6126A0(&v121, v134, v135, (v135 - v134) >> 2);
  v17 = v127;
  v18 = v128;
  while (v17 != v18)
  {
    v19 = (v138 + 16 * *v17);
    v20 = *v19;
    v21 = *&v144[HIDWORD(*v17)];
    v22 = *(a1 + 24);
    if (*(*v19 + 16) == 1)
    {
      KCFHelper::STrack::update(v20, v21, v22);
      v23 = v158;
    }

    else
    {
      KCFHelper::STrack::re_activate(v20, v21, v22, (a1 + 48), 0);
      v23 = v157;
    }

    sub_22E60BFF4(v23, v19);
    ++v17;
  }

  v119 = 0;
  v118 = 0;
  v120 = 0;
  if (v147 != v148)
  {
    sub_22E612C88();
  }

  v115 = 0;
  v116 = 0;
  v117 = 0;
  v24 = v124;
  v25 = v125;
  while (v24 != v25)
  {
    v26 = (v138 + 16 * *v24);
    if (*(*v26 + 16) == 1)
    {
      sub_22E60BFF4(&v115, v26);
    }

    ++v24;
  }

  KCFHelper::matching::iou_distance(&v115, &v118, v79);
  sub_22E612560(&v136);
  v136 = *v79;
  v137 = *&v79[16];
  memset(v79, 0, 24);
  v109 = v79;
  sub_22E612474(&v109);
  KCFHelper::matching::linear_assignment(&v136, (v116 - v115) >> 4, (v119 - v118) >> 4, &v109);
  sub_22E612758(&v127, v109, v110, (v110 - v109) >> 3);
  sub_22E612884(&v124, v111, v112, (v112 - v111) >> 2);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  sub_22E6126A0(&v106, v113, v114, (v114 - v113) >> 2);
  v27 = v127;
  v28 = v128;
  while (v27 != v28)
  {
    v29 = &v115[16 * *v27];
    v30 = *v29;
    v31 = v118[2 * HIDWORD(*v27)];
    v32 = *(a1 + 24);
    if (*(*v29 + 16) == 1)
    {
      KCFHelper::STrack::update(v30, v31, v32);
      v33 = v158;
    }

    else
    {
      KCFHelper::STrack::re_activate(v30, v31, v32, (a1 + 48), 0);
      v33 = v157;
    }

    sub_22E60BFF4(v33, v29);
    ++v27;
  }

  v34 = v124;
  v35 = v125;
  if (v124 != v125)
  {
    do
    {
      v36 = &v115[16 * *v34];
      if (*(*v36 + 16) != 2)
      {
        *(*v36 + 16) = 2;
        sub_22E60BFF4(&v154, v36);
      }

      ++v34;
    }

    while (v34 != v35);
  }

  memset(v105, 0, sizeof(v105));
  v37 = v144;
  v38 = v145;
  if (v144 != v145)
  {
    do
    {
      sub_22E60BFF4(v105, v37++);
    }

    while (v37 != v38);
    v38 = v145;
    v37 = v144;
  }

  while (v38 != v37)
  {
    v39 = *(v38 - 1);
    if (v39)
    {
      sub_22E612C1C(v39);
    }

    --v38;
  }

  v145 = v37;
  v40 = v121;
  v41 = v122;
  while (v40 != v41)
  {
    sub_22E60BFF4(&v144, v105[0] + *v40++);
  }

  ANSTKCFTrackingNode::get_dists(&v141, &v144, v79);
  sub_22E612560(&v136);
  v136 = *v79;
  v137 = *&v79[16];
  memset(v79, 0, 24);
  v99 = v79;
  sub_22E612474(&v99);
  KCFHelper::matching::linear_assignment(&v136, (v142 - v141) >> 4, v145 - v144, &v99);
  sub_22E612758(&v127, v99, v100, (v100 - v99) >> 3);
  v96 = 0;
  v97 = 0;
  v98 = 0;
  sub_22E6126A0(&v96, v101, v102, (v102 - v101) >> 2);
  sub_22E612884(&v121, v103, v104, (v104 - v103) >> 2);
  v42 = v127;
  v43 = v128;
  while (v42 != v43)
  {
    v78 = *v42;
    KCFHelper::STrack::update(v141[2 * v78], *&v144[HIDWORD(*v42)], *(a1 + 24));
    sub_22E60BFF4(v158, &v141[2 * v78]);
    ++v42;
  }

  v44 = v96;
  v45 = v97;
  if (v96 != v97)
  {
    do
    {
      v46 = &v141[2 * *v44];
      *(*v46 + 16) = 3;
      sub_22E60BFF4(v153, v46);
      ++v44;
    }

    while (v44 != v45);
  }

  v47 = *(a1 + 56);
  for (i = *(a1 + 64); v47 != i; ++v47)
  {
    if (*(a1 + 24) - *(*v47 + 24) > *(a1 + 44))
    {
      *(*v47 + 16) = 3;
      sub_22E60BFF4(v153, v47);
    }
  }

  v93 = 0;
  v94 = 0;
  v95 = 0;
  v49 = *a1;
  v50 = *(a1 + 8);
  while (v49 != v50)
  {
    sub_22E60BFF4(&v93, v49++);
  }

  sub_22E60BD80(a1);
  v51 = v93;
  v52 = v94;
  while (v51 != v52)
  {
    if (*(*v51 + 16) == 1)
    {
      sub_22E60BFF4(a1, v51);
    }

    ++v51;
  }

  ANSTKCFTrackingNode::joint_stracks(a1, v158, v79);
  sub_22E612520(a1);
  *a1 = *v79;
  *(a1 + 16) = *&v79[16];
  memset(v79, 0, 24);
  v89 = v79;
  sub_22E6120A8(&v89);
  ANSTKCFTrackingNode::joint_stracks(a1, v157, v79);
  sub_22E612520(a1);
  *a1 = *v79;
  *(a1 + 16) = *&v79[16];
  memset(v79, 0, 24);
  v89 = v79;
  sub_22E6120A8(&v89);
  ANSTKCFTrackingNode::sub_stracks((a1 + 56), a1, v79);
  sub_22E612520((a1 + 56));
  *(a1 + 56) = *v79;
  *(a1 + 72) = *&v79[16];
  memset(v79, 0, 24);
  v89 = v79;
  sub_22E6120A8(&v89);
  v53 = v154;
  v54 = v155;
  while (v53 != v54)
  {
    sub_22E60BFF4((a1 + 56), v53++);
  }

  ANSTKCFTrackingNode::sub_stracks((a1 + 56), v153, v79);
  sub_22E612520((a1 + 56));
  *(a1 + 56) = *v79;
  *(a1 + 72) = *&v79[16];
  memset(v79, 0, 24);
  v89 = v79;
  sub_22E6120A8(&v89);
  ANSTKCFTrackingNode::remove_duplicate_stracks(a1, (a1 + 56), &v89);
  if (&v89 != a1)
  {
    sub_22E6129B0(a1, v89, v90, (v90 - v89) >> 4);
  }

  if ((a1 + 56) != &v91)
  {
    sub_22E6129B0(a1 + 56, v91, v92, (v92 - v91) >> 4);
  }

  v55 = *a1;
  v56 = *(a1 + 8);
  if (v56 != *a1)
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = *(v55 + v57);
      if (*(v59 + 12) == 1)
      {
        v60 = *(v59 + 160);
        v85 = *(v59 + 144);
        v86 = v60;
        *v87 = *(v59 + 176);
        *&v87[13] = *(v59 + 189);
        v61 = *(v59 + 96);
        v81 = *(v59 + 80);
        v82 = v61;
        v62 = *(v59 + 128);
        v83 = *(v59 + 112);
        v84 = v62;
        v63 = *(v59 + 48);
        *v79 = *(v59 + 32);
        *&v79[16] = v63;
        v80 = *(v59 + 64);
        if (*(v59 + 223) < 0)
        {
          sub_22E5DAE38(&__p, *(v59 + 200), *(v59 + 208));
          v55 = *a1;
        }

        else
        {
          __p = *(v59 + 200);
        }

        v64 = *(v55 + v57);
        v65 = *(v64 + 304);
        if (*(v64 + 312) == v65)
        {
          v67 = *(v64 + 352);
        }

        else
        {
          v66.i32[0] = vmul_lane_f32(v65[1], v65[1], 1).u32[0];
          v66.i32[1] = HIDWORD(*&v65[1]);
          *&v67 = vadd_f32(*v65, vmul_f32(v66, 0xBF000000BF000000));
          *(&v67 + 1) = v66;
        }

        *&v79[12] = v67;
        *v79 = *(v64 + 8);
        v159 = v79;
        v68 = sub_22E612DDC(a3, v79, &std::piecewise_construct, &v159);
        v70 = v83;
        v69 = v84;
        v71 = v82;
        *(v68 + 11) = v81;
        v72 = *&v87[13];
        v74 = v86;
        v73 = *v87;
        *(v68 + 19) = v85;
        *(v68 + 21) = v74;
        *(v68 + 23) = v73;
        *(v68 + 197) = v72;
        *(v68 + 13) = v71;
        *(v68 + 15) = v70;
        *(v68 + 17) = v69;
        v75 = *&v79[16];
        v76 = v80;
        *(v68 + 5) = *v79;
        *(v68 + 7) = v75;
        *(v68 + 9) = v76;
        std::string::operator=((v68 + 26), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v55 = *a1;
        v56 = *(a1 + 8);
      }

      ++v58;
      v57 += 16;
    }

    while (v58 < (v56 - v55) >> 4);
  }

  *v79 = &v91;
  sub_22E6120A8(v79);
  *v79 = &v89;
  sub_22E6120A8(v79);
  *v79 = &v93;
  sub_22E6120A8(v79);
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  *v79 = v105;
  sub_22E6120A8(v79);
  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  *v79 = &v115;
  sub_22E6120A8(v79);
  *v79 = &v118;
  sub_22E6120A8(v79);
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  *v79 = &v136;
  sub_22E612474(v79);
  *v79 = &v138;
  sub_22E6120A8(v79);
  *v79 = v140;
  sub_22E6120A8(v79);
  *v79 = &v141;
  sub_22E6120A8(v79);
  *v79 = &v144;
  sub_22E6120A8(v79);
  *v79 = &v147;
  sub_22E610A88(v79);
  *v79 = &v150;
  sub_22E610A88(v79);
  *v79 = v153;
  sub_22E6120A8(v79);
  *v79 = &v154;
  sub_22E6120A8(v79);
  *v79 = v157;
  sub_22E6120A8(v79);
  *v79 = v158;
  sub_22E6120A8(v79);
  return 1;
}

void sub_22E60D228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a11 = &a41;
  sub_22E6120A8(&a11);
  if (__p)
  {
    a45 = __p;
    operator delete(__p);
  }

  sub_22E60D4B0(&a47);
  a11 = &a56;
  sub_22E6120A8(&a11);
  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  sub_22E60D4B0(&a62);
  a11 = &a65;
  sub_22E6120A8(&a11);
  a11 = &STACK[0x208];
  sub_22E6120A8(&a11);
  v67 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v68;
    operator delete(v68);
  }

  v69 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v69;
    operator delete(v69);
  }

  sub_22E60D4B0(&STACK[0x268]);
  a11 = &STACK[0x2B0];
  sub_22E612474(&a11);
  a11 = &STACK[0x2D0];
  sub_22E6120A8(&a11);
  a11 = &STACK[0x2E8];
  sub_22E6120A8(&a11);
  a11 = &STACK[0x300];
  sub_22E6120A8(&a11);
  a11 = &STACK[0x318];
  sub_22E6120A8(&a11);
  a11 = (v65 - 256);
  sub_22E610A88(&a11);
  a11 = (v65 - 232);
  sub_22E610A88(&a11);
  a11 = (v65 - 208);
  sub_22E6120A8(&a11);
  a11 = (v65 - 184);
  sub_22E6120A8(&a11);
  a11 = (v65 - 160);
  sub_22E6120A8(&a11);
  a11 = (v65 - 136);
  sub_22E6120A8(&a11);
  _Unwind_Resume(a1);
}

void sub_22E60D494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_22E612C1C(a12);
  }

  JUMPOUT(0x22E60D394);
}

uint64_t sub_22E60D4B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t ANSTKCFTrackingNode::process_new_object(char **a1, __int128 **a2)
{
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = a2[1];
      if (*a2 == v7)
      {
LABEL_12:
        if ((v6 & 1) == 0)
        {
          sub_22E60BF14(&v81, &v84);
          v6 = 0;
          goto LABEL_15;
        }
      }

      else
      {
        v8 = *a2 + 168;
        while (1)
        {
          v9 = *(v8 - 168);
          v10 = *(v8 - 136);
          v70 = *(v8 - 152);
          v71 = v10;
          *v69 = v9;
          v11 = *(v8 - 120);
          v12 = *(v8 - 104);
          v13 = *(v8 - 72);
          v74 = *(v8 - 88);
          v75 = v13;
          v72 = v11;
          v73 = v12;
          v14 = *(v8 - 56);
          v15 = *(v8 - 40);
          v16 = *(v8 - 24);
          *&v78[13] = *(v8 - 11);
          v77 = v15;
          *v78 = v16;
          v76 = v14;
          if (v8[23] < 0)
          {
            sub_22E5DAE38(&__p, *v8, *(v8 + 1));
          }

          else
          {
            v17 = *v8;
            v80 = *(v8 + 2);
            __p = v17;
          }

          v18 = *(*v4 + 8);
          if (SHIBYTE(v80) < 0)
          {
            operator delete(__p);
          }

          if (v69[0] == v18)
          {
            break;
          }

          v19 = v8 - 168;
          v8 += 192;
          if (v19 + 192 == v7)
          {
            goto LABEL_12;
          }
        }
      }

      v6 = 1;
LABEL_15:
      ++v84;
      v4 += 16;
      if (v4 == v5)
      {
        v20 = v81;
        v21 = v82;
        goto LABEL_18;
      }
    }
  }

  v20 = 0;
  v21 = 0;
LABEL_18:
  v22 = v21 - v20;
  if ((v22 >> 2) >= 1)
  {
    v23 = (v22 >> 2) & 0x7FFFFFFF;
    v24 = a1[1];
    do
    {
      v25 = &(*a1)[16 * *&v81[4 * v23 - 4]];
      sub_22E612BB0(v69, v25 + 1, v24, v25);
      v24 = v26;
      for (i = a1[1]; i != v24; i -= 16)
      {
        v28 = *(i - 1);
        if (v28)
        {
          sub_22E612C1C(v28);
        }
      }

      a1[1] = v24;
      v29 = v23-- <= 1;
    }

    while (!v29);
    v20 = v81;
  }

  v84 = 0;
  v82 = v20;
  v30 = a1[7];
  v31 = v20;
  v68 = a1[8];
  if (v30 != v68)
  {
    v32 = 0;
    while (1)
    {
      v33 = a2[1];
      if (*a2 == v33)
      {
LABEL_39:
        if ((v32 & 1) == 0)
        {
          sub_22E60BF14(&v81, &v84);
          v32 = 0;
          goto LABEL_42;
        }
      }

      else
      {
        v34 = *a2 + 168;
        while (1)
        {
          v35 = *(v34 - 168);
          v36 = *(v34 - 136);
          v70 = *(v34 - 152);
          v71 = v36;
          *v69 = v35;
          v37 = *(v34 - 120);
          v38 = *(v34 - 104);
          v39 = *(v34 - 72);
          v74 = *(v34 - 88);
          v75 = v39;
          v72 = v37;
          v73 = v38;
          v40 = *(v34 - 56);
          v41 = *(v34 - 40);
          v42 = *(v34 - 24);
          *&v78[13] = *(v34 - 11);
          v77 = v41;
          *v78 = v42;
          v76 = v40;
          if (v34[23] < 0)
          {
            sub_22E5DAE38(&__p, *v34, *(v34 + 1));
          }

          else
          {
            v43 = *v34;
            v80 = *(v34 + 2);
            __p = v43;
          }

          v44 = v69[0];
          v45 = *(*v30 + 8);
          if (SHIBYTE(v80) < 0)
          {
            operator delete(__p);
          }

          if (v44 == v45)
          {
            break;
          }

          v46 = v34 - 168;
          v34 += 192;
          if (v46 + 192 == v33)
          {
            goto LABEL_39;
          }
        }
      }

      v32 = 1;
LABEL_42:
      ++v84;
      v30 += 16;
      if (v30 == v68)
      {
        v20 = v81;
        v31 = v82;
        break;
      }
    }
  }

  v47 = v31 - v20;
  if ((v47 >> 2) >= 1)
  {
    v48 = (v47 >> 2) & 0x7FFFFFFF;
    v49 = a1[8];
    do
    {
      v50 = &a1[7][16 * *&v81[4 * v48 - 4]];
      sub_22E612BB0(v69, v50 + 1, v49, v50);
      v49 = v51;
      for (j = a1[8]; j != v49; j -= 16)
      {
        v53 = *(j - 1);
        if (v53)
        {
          sub_22E612C1C(v53);
        }
      }

      a1[8] = v49;
      v29 = v48-- <= 1;
    }

    while (!v29);
  }

  v55 = *a2;
  for (k = a2[1]; v55 != k; v55 += 12)
  {
    v56 = *v55;
    v57 = v55[2];
    v70 = v55[1];
    v71 = v57;
    *v69 = v56;
    v58 = v55[3];
    v59 = v55[4];
    v60 = v55[6];
    v74 = v55[5];
    v75 = v60;
    v72 = v58;
    v73 = v59;
    v61 = v55[7];
    v62 = v55[8];
    v63 = v55[9];
    *&v78[13] = *(v55 + 157);
    v77 = v62;
    *v78 = v63;
    v76 = v61;
    if (*(v55 + 191) < 0)
    {
      sub_22E5DAE38(&__p, *(v55 + 21), *(v55 + 22));
    }

    else
    {
      v64 = *(v55 + 168);
      v80 = *(v55 + 23);
      __p = v64;
    }

    v65 = *a1;
    v66 = a1[1];
    if (*a1 == v66)
    {
LABEL_60:
      sub_22E612C88();
    }

    while (v69[0] != *(*v65 + 8))
    {
      v65 += 16;
      if (v65 == v66)
      {
        goto LABEL_60;
      }
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(__p);
    }
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  return 1;
}

void sub_22E60D978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  v41 = *(v39 - 128);
  if (v41)
  {
    *(v39 - 120) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANSTKCFTrackingNode::reset(ANSTKCFTrackingNode *this)
{
  *(this + 12) = 0;
  *(this + 6) = 0;
  sub_22E60BD80(this);
  sub_22E60BD80(this + 7);
  return 1;
}

void sub_22E60DA10(unint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v253 = a2 - 24;
    v254 = a2 - 12;
    v252 = a2 - 36;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v7) >> 6);
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                sub_22E60F030(v7, (v7 + 192), v254);
                return;
              case 4:
                v115 = (v7 + 192);
                v116 = (v7 + 384);
                sub_22E60F030(v7, (v7 + 192), (v7 + 384));
                if (*(a2 - 41) > *(v7 + 412))
                {
                  v351 = *(v7 + 512);
                  *v359 = *(v7 + 528);
                  *&v359[13] = *(v7 + 541);
                  v307 = *(v7 + 448);
                  v318 = *(v7 + 464);
                  v329 = *(v7 + 480);
                  v340 = *(v7 + 496);
                  v263 = *v116;
                  v274 = *(v7 + 400);
                  v285 = *(v7 + 416);
                  v296 = *(v7 + 432);
                  v117 = *(v7 + 552);
                  *&v370 = *(v7 + 560);
                  *(&v370 + 7) = *(v7 + 567);
                  v118 = *(v7 + 575);
                  *(v7 + 568) = 0;
                  *(v7 + 552) = 0u;
                  v120 = *(a2 - 4);
                  v119 = *(a2 - 3);
                  v121 = *(a2 - 5);
                  *(v7 + 541) = *(a2 - 35);
                  *(v7 + 512) = v120;
                  *(v7 + 528) = v119;
                  *(v7 + 496) = v121;
                  v123 = *(a2 - 9);
                  v122 = *(a2 - 8);
                  v124 = *(a2 - 6);
                  *(v7 + 464) = *(a2 - 7);
                  *(v7 + 480) = v124;
                  *(v7 + 432) = v123;
                  *(v7 + 448) = v122;
                  v125 = *(a2 - 12);
                  v126 = *(a2 - 10);
                  *(v7 + 400) = *(a2 - 11);
                  *(v7 + 416) = v126;
                  *v116 = v125;
                  v127 = *(a2 - 24);
                  *(v7 + 568) = *(a2 - 1);
                  *(v7 + 552) = v127;
                  *(a2 - 11) = v274;
                  *(a2 - 10) = v285;
                  *(a2 - 12) = v263;
                  *(a2 - 7) = v318;
                  *(a2 - 6) = v329;
                  *(a2 - 9) = v296;
                  *(a2 - 8) = v307;
                  *(a2 - 35) = *&v359[13];
                  *(a2 - 4) = v351;
                  *(a2 - 3) = *v359;
                  *(a2 - 5) = v340;
                  *(a2 - 3) = v117;
                  *(a2 - 9) = *(&v370 + 7);
                  *(a2 - 2) = v370;
                  *(a2 - 1) = v118;
                  if (*(v7 + 412) > *(v7 + 220))
                  {
                    v352 = *(v7 + 320);
                    *v360 = *(v7 + 336);
                    *&v360[13] = *(v7 + 349);
                    v308 = *(v7 + 256);
                    v319 = *(v7 + 272);
                    v330 = *(v7 + 288);
                    v341 = *(v7 + 304);
                    v264 = *v115;
                    v275 = *(v7 + 208);
                    v286 = *(v7 + 224);
                    v297 = *(v7 + 240);
                    v128 = *(v7 + 360);
                    *&v371 = *(v7 + 368);
                    *(&v371 + 7) = *(v7 + 375);
                    v129 = *(v7 + 383);
                    v130 = *(v7 + 528);
                    *(v7 + 320) = *(v7 + 512);
                    *(v7 + 336) = v130;
                    *(v7 + 349) = *(v7 + 541);
                    v131 = *(v7 + 464);
                    *(v7 + 256) = *(v7 + 448);
                    *(v7 + 272) = v131;
                    v132 = *(v7 + 496);
                    *(v7 + 288) = *(v7 + 480);
                    *(v7 + 304) = v132;
                    v133 = *(v7 + 400);
                    *v115 = *v116;
                    *(v7 + 208) = v133;
                    v134 = *(v7 + 432);
                    *(v7 + 224) = *(v7 + 416);
                    *(v7 + 240) = v134;
                    *(v7 + 360) = *(v7 + 552);
                    *(v7 + 376) = *(v7 + 568);
                    *(v7 + 512) = v352;
                    *(v7 + 528) = *v360;
                    *(v7 + 541) = *&v360[13];
                    *(v7 + 448) = v308;
                    *(v7 + 464) = v319;
                    *(v7 + 480) = v330;
                    *(v7 + 496) = v341;
                    *v116 = v264;
                    *(v7 + 400) = v275;
                    *(v7 + 416) = v286;
                    *(v7 + 432) = v297;
                    *(v7 + 552) = v128;
                    *(v7 + 560) = v371;
                    *(v7 + 567) = *(&v371 + 7);
                    *(v7 + 575) = v129;
                    if (*(v7 + 220) > *(v7 + 28))
                    {
                      v276 = *(v7 + 16);
                      v287 = *(v7 + 32);
                      v265 = *v7;
                      v320 = *(v7 + 80);
                      v331 = *(v7 + 96);
                      v298 = *(v7 + 48);
                      v309 = *(v7 + 64);
                      *&v361[13] = *(v7 + 157);
                      v353 = *(v7 + 128);
                      *v361 = *(v7 + 144);
                      v342 = *(v7 + 112);
                      *(&v372 + 7) = *(v7 + 183);
                      v135 = *(v7 + 168);
                      *&v372 = *(v7 + 176);
                      v136 = *(v7 + 191);
                      v137 = *(v7 + 272);
                      *(v7 + 64) = *(v7 + 256);
                      *(v7 + 80) = v137;
                      *(v7 + 157) = *(v7 + 349);
                      v138 = *(v7 + 336);
                      *(v7 + 128) = *(v7 + 320);
                      *(v7 + 144) = v138;
                      v139 = *(v7 + 304);
                      *(v7 + 96) = *(v7 + 288);
                      *(v7 + 112) = v139;
                      v140 = *(v7 + 208);
                      *v7 = *v115;
                      *(v7 + 16) = v140;
                      v141 = *(v7 + 240);
                      *(v7 + 32) = *(v7 + 224);
                      *(v7 + 48) = v141;
                      *(v7 + 168) = *(v7 + 360);
                      *(v7 + 184) = *(v7 + 376);
                      *(v7 + 320) = v353;
                      *(v7 + 336) = *v361;
                      *(v7 + 349) = *&v361[13];
                      *(v7 + 256) = v309;
                      *(v7 + 272) = v320;
                      *(v7 + 288) = v331;
                      *(v7 + 304) = v342;
                      *v115 = v265;
                      *(v7 + 208) = v276;
                      *(v7 + 224) = v287;
                      *(v7 + 240) = v298;
                      *(v7 + 360) = v135;
                      *(v7 + 368) = v372;
                      *(v7 + 375) = *(&v372 + 7);
                      *(v7 + 383) = v136;
                    }
                  }
                }

                return;
              case 5:

                sub_22E60F4D4(v7, v7 + 192, v7 + 384, (v7 + 576), v254);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 41) > *(v7 + 28))
              {
                v273 = *(v7 + 16);
                v284 = *(v7 + 32);
                v262 = *v7;
                v317 = *(v7 + 80);
                v328 = *(v7 + 96);
                v295 = *(v7 + 48);
                v306 = *(v7 + 64);
                *&v358[13] = *(v7 + 157);
                v350 = *(v7 + 128);
                *v358 = *(v7 + 144);
                v339 = *(v7 + 112);
                v104 = *(v7 + 168);
                *&v369 = *(v7 + 176);
                *(&v369 + 7) = *(v7 + 183);
                v105 = *(v7 + 191);
                *(v7 + 176) = 0;
                *(v7 + 184) = 0;
                *(v7 + 168) = 0;
                v107 = *(a2 - 4);
                v106 = *(a2 - 3);
                v108 = *(a2 - 5);
                *(v7 + 157) = *(a2 - 35);
                *(v7 + 128) = v107;
                *(v7 + 144) = v106;
                *(v7 + 112) = v108;
                v110 = *(a2 - 9);
                v109 = *(a2 - 8);
                v111 = *(a2 - 6);
                *(v7 + 80) = *(a2 - 7);
                *(v7 + 96) = v111;
                *(v7 + 48) = v110;
                *(v7 + 64) = v109;
                v112 = *(a2 - 12);
                v113 = *(a2 - 10);
                *(v7 + 16) = *(a2 - 11);
                *(v7 + 32) = v113;
                *v7 = v112;
                v114 = *(a2 - 24);
                *(v7 + 184) = *(a2 - 1);
                *(v7 + 168) = v114;
                *(a2 - 11) = v273;
                *(a2 - 10) = v284;
                *(a2 - 12) = v262;
                *(a2 - 7) = v317;
                *(a2 - 6) = v328;
                *(a2 - 9) = v295;
                *(a2 - 8) = v306;
                *(a2 - 35) = *&v358[13];
                *(a2 - 4) = v350;
                *(a2 - 3) = *v358;
                *(a2 - 5) = v339;
                *(a2 - 3) = v104;
                *(a2 - 9) = *(&v369 + 7);
                *(a2 - 2) = v369;
                *(a2 - 1) = v105;
              }

              return;
            }
          }

          if (v8 <= 4607)
          {
            v142 = (v7 + 192);
            v144 = v7 == a2 || v142 == a2;
            if (a4)
            {
              if (!v144)
              {
                v145 = 0;
                v146 = v7;
                do
                {
                  v147 = v142;
                  v148 = *(v146 + 220);
                  if (v148 > *(v146 + 28))
                  {
                    *&v373[12] = *(v142 + 12);
                    *v373 = *v142;
                    v332 = *(v146 + 320);
                    *v343 = *(v146 + 336);
                    *&v343[13] = *(v146 + 349);
                    v288 = *(v146 + 256);
                    v299 = *(v146 + 272);
                    v310 = *(v146 + 288);
                    v321 = *(v146 + 304);
                    v150 = *(v146 + 224);
                    v149 = *(v146 + 240);
                    v258 = *(v146 + 360);
                    *v400 = *(v146 + 368);
                    *&v400[7] = *(v146 + 375);
                    v256 = *(v146 + 383);
                    *(v146 + 368) = 0;
                    *(v146 + 376) = 0;
                    *(v146 + 360) = 0;
                    v151 = *(v142 + 191) < 0;
                    v152 = v145;
                    v266 = v150;
                    v277 = v149;
                    while (1)
                    {
                      v153 = v152;
                      v154 = a1 + v152;
                      v155 = *(a1 + v152 + 144);
                      *(v154 + 320) = *(v154 + 128);
                      *(v154 + 336) = v155;
                      *(a1 + v152 + 349) = *(a1 + v152 + 157);
                      v156 = *(a1 + v152 + 80);
                      *(v154 + 256) = *(v154 + 64);
                      *(v154 + 272) = v156;
                      v157 = *(a1 + v152 + 112);
                      *(v154 + 288) = *(v154 + 96);
                      *(v154 + 304) = v157;
                      v158 = *(a1 + v152 + 16);
                      *(v154 + 192) = *v154;
                      *(v154 + 208) = v158;
                      v159 = *(a1 + v152 + 48);
                      v160 = (a1 + v152 + 360);
                      *(v154 + 224) = *(a1 + v152 + 32);
                      *(v154 + 240) = v159;
                      if (v151)
                      {
                        operator delete(*v160);
                      }

                      *v160 = *(v154 + 168);
                      *(v154 + 376) = *(v154 + 184);
                      *(v154 + 191) = 0;
                      *(v154 + 168) = 0;
                      if (!v153)
                      {
                        break;
                      }

                      v151 = 0;
                      v152 = v153 - 192;
                      if (v148 <= *(a1 + v153 - 164))
                      {
                        v161 = a1 + v153;
                        goto LABEL_96;
                      }
                    }

                    v161 = a1;
LABEL_96:
                    *(v161 + 12) = *&v373[12];
                    *v161 = *v373;
                    *(v161 + 28) = v148;
                    *(v161 + 128) = v332;
                    *(v161 + 144) = *v343;
                    *(v161 + 157) = *&v343[13];
                    *(v161 + 64) = v288;
                    *(v161 + 80) = v299;
                    *(v161 + 96) = v310;
                    *(v161 + 112) = v321;
                    *(v161 + 32) = v266;
                    *(v161 + 48) = v277;
                    *(a1 + v153 + 168) = v258;
                    *(v161 + 176) = *v400;
                    *(v161 + 183) = *&v400[7];
                    *(v161 + 191) = v256;
                  }

                  v142 = v147 + 12;
                  v145 += 192;
                  v146 = v147;
                }

                while (v147 + 12 != a2);
              }
            }

            else if (!v144)
            {
              do
              {
                v237 = v142;
                v238 = *(a1 + 220);
                if (v238 > *(a1 + 28))
                {
                  *&v376[12] = *(v142 + 12);
                  *v376 = *v142;
                  v335 = *(a1 + 320);
                  *v346 = *(a1 + 336);
                  *&v346[13] = *(a1 + 349);
                  v291 = *(a1 + 256);
                  v302 = *(a1 + 272);
                  v313 = *(a1 + 288);
                  v324 = *(a1 + 304);
                  v240 = *(a1 + 224);
                  v239 = *(a1 + 240);
                  v241 = *(a1 + 360);
                  *v403 = *(a1 + 368);
                  *&v403[7] = *(a1 + 375);
                  v242 = *(a1 + 383);
                  *(a1 + 368) = 0;
                  *(a1 + 376) = 0;
                  *(a1 + 360) = 0;
                  v243 = *(v142 + 191) < 0;
                  v269 = v240;
                  v280 = v239;
                  do
                  {
                    v244 = *(a1 + 144);
                    *(a1 + 320) = *(a1 + 128);
                    *(a1 + 336) = v244;
                    *(a1 + 349) = *(a1 + 157);
                    v245 = *(a1 + 80);
                    *(a1 + 256) = *(a1 + 64);
                    *(a1 + 272) = v245;
                    v246 = *(a1 + 112);
                    *(a1 + 288) = *(a1 + 96);
                    *(a1 + 304) = v246;
                    v247 = *(a1 + 16);
                    *(a1 + 192) = *a1;
                    *(a1 + 208) = v247;
                    v248 = *(a1 + 48);
                    v249 = (a1 + 360);
                    *(a1 + 224) = *(a1 + 32);
                    *(a1 + 240) = v248;
                    if (v243)
                    {
                      operator delete(*v249);
                    }

                    v243 = 0;
                    *v249 = *(a1 + 168);
                    *(a1 + 376) = *(a1 + 184);
                    *(a1 + 191) = 0;
                    *(a1 + 168) = 0;
                    v250 = a1 - 192;
                    v251 = *(a1 - 164);
                    a1 -= 192;
                  }

                  while (v238 > v251);
                  *(v250 + 204) = *&v376[12];
                  *(v250 + 192) = *v376;
                  *(v250 + 220) = v238;
                  *(v250 + 224) = v269;
                  *(v250 + 272) = v302;
                  *(v250 + 288) = v313;
                  *(v250 + 240) = v280;
                  *(v250 + 256) = v291;
                  *(v250 + 349) = *&v346[13];
                  *(v250 + 320) = v335;
                  *(v250 + 336) = *v346;
                  *(v250 + 304) = v324;
                  *(v250 + 360) = v241;
                  *(v250 + 375) = *&v403[7];
                  *(v250 + 368) = *v403;
                  *(v250 + 383) = v242;
                }

                v142 = (v237 + 192);
                a1 = v237;
              }

              while ((v237 + 192) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v7 != a2)
            {
              v162 = (v9 - 2) >> 1;
              v163 = v162;
              do
              {
                v164 = v163;
                if (v162 >= v163)
                {
                  v165 = (2 * v163) | 1;
                  v166 = v7 + 192 * v165;
                  if (2 * v163 + 2 < v9)
                  {
                    v167 = *(v166 + 28);
                    v168 = *(v166 + 220);
                    v169 = v167 > v168;
                    v170 = v167 <= v168 ? 0 : 192;
                    v166 += v170;
                    if (v169)
                    {
                      v165 = 2 * v163 + 2;
                    }
                  }

                  v171 = v7 + 192 * v163;
                  v172 = *(v171 + 28);
                  if (*(v166 + 28) <= v172)
                  {
                    *&v374[12] = *(v171 + 12);
                    *v374 = *v171;
                    *&v344[13] = *(v171 + 157);
                    v333 = *(v171 + 128);
                    *v344 = *(v171 + 144);
                    v322 = *(v171 + 112);
                    v300 = *(v171 + 80);
                    v311 = *(v171 + 96);
                    v278 = *(v171 + 48);
                    v289 = *(v171 + 64);
                    v267 = *(v171 + 32);
                    v173 = *(v171 + 168);
                    *&v401[7] = *(v171 + 183);
                    *v401 = *(v171 + 176);
                    v174 = *(v171 + 191);
                    *(v171 + 168) = 0;
                    *(v171 + 176) = 0;
                    *(v171 + 184) = 0;
                    do
                    {
                      v175 = v171;
                      v171 = v166;
                      v176 = *v166;
                      v177 = *(v166 + 32);
                      *(v175 + 16) = *(v166 + 16);
                      *(v175 + 32) = v177;
                      *v175 = v176;
                      v178 = *(v166 + 48);
                      v179 = *(v166 + 64);
                      v180 = *(v166 + 96);
                      *(v175 + 80) = *(v166 + 80);
                      *(v175 + 96) = v180;
                      *(v175 + 48) = v178;
                      *(v175 + 64) = v179;
                      v181 = *(v166 + 112);
                      v182 = *(v166 + 128);
                      v183 = *(v166 + 144);
                      *(v175 + 157) = *(v166 + 157);
                      *(v175 + 128) = v182;
                      *(v175 + 144) = v183;
                      *(v175 + 112) = v181;
                      v184 = *(v166 + 168);
                      *(v175 + 184) = *(v166 + 184);
                      *(v175 + 168) = v184;
                      *(v166 + 191) = 0;
                      *(v166 + 168) = 0;
                      if (v162 < v165)
                      {
                        break;
                      }

                      v185 = (2 * v165) | 1;
                      v166 = v7 + 192 * v185;
                      v186 = 2 * v165 + 2;
                      if (v186 < v9)
                      {
                        v187 = *(v166 + 28);
                        v188 = *(v166 + 220);
                        v189 = v187 > v188;
                        v190 = v187 <= v188 ? 0 : 192;
                        v166 += v190;
                        if (v189)
                        {
                          v185 = v186;
                        }
                      }

                      v165 = v185;
                    }

                    while (*(v166 + 28) <= v172);
                    *(v171 + 12) = *&v374[12];
                    *v171 = *v374;
                    *(v171 + 28) = v172;
                    *(v171 + 128) = v333;
                    *(v171 + 144) = *v344;
                    *(v171 + 157) = *&v344[13];
                    *(v171 + 64) = v289;
                    *(v171 + 80) = v300;
                    *(v171 + 96) = v311;
                    *(v171 + 112) = v322;
                    *(v171 + 32) = v267;
                    *(v171 + 48) = v278;
                    *(v171 + 168) = v173;
                    *(v171 + 176) = *v401;
                    *(v171 + 183) = *&v401[7];
                    *(v171 + 191) = v174;
                  }
                }

                v163 = v164 - 1;
              }

              while (v164);
              v191 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 6);
              do
              {
                v192 = 0;
                v193 = a2;
                v279 = *(v7 + 16);
                v290 = *(v7 + 32);
                v268 = *v7;
                v323 = *(v7 + 80);
                v334 = *(v7 + 96);
                v301 = *(v7 + 48);
                v312 = *(v7 + 64);
                *&v362[13] = *(v7 + 157);
                v354 = *(v7 + 128);
                *v362 = *(v7 + 144);
                v345 = *(v7 + 112);
                v194 = *(v7 + 168);
                *v365 = *(v7 + 176);
                *&v365[7] = *(v7 + 183);
                v195 = *(v7 + 191);
                *(v7 + 176) = 0;
                *(v7 + 184) = 0;
                v196 = v7;
                *(v7 + 168) = 0;
                do
                {
                  v197 = v196 + 192 * v192;
                  v198 = v197 + 192;
                  v199 = (2 * v192) | 1;
                  v192 = 2 * v192 + 2;
                  if (v192 >= v191)
                  {
                    v192 = v199;
                  }

                  else
                  {
                    v200 = *(v197 + 220);
                    v201 = *(v197 + 412);
                    v202 = v197 + 384;
                    if (v200 <= v201)
                    {
                      v192 = v199;
                    }

                    else
                    {
                      v198 = v202;
                    }
                  }

                  v203 = *v198;
                  v204 = *(v198 + 32);
                  *(v196 + 16) = *(v198 + 16);
                  *(v196 + 32) = v204;
                  *v196 = v203;
                  v205 = *(v198 + 48);
                  v206 = *(v198 + 64);
                  v207 = *(v198 + 96);
                  *(v196 + 80) = *(v198 + 80);
                  *(v196 + 96) = v207;
                  *(v196 + 48) = v205;
                  *(v196 + 64) = v206;
                  v208 = *(v198 + 112);
                  v209 = *(v198 + 128);
                  v210 = *(v198 + 144);
                  *(v196 + 157) = *(v198 + 157);
                  *(v196 + 128) = v209;
                  *(v196 + 144) = v210;
                  *(v196 + 112) = v208;
                  v211 = *(v198 + 168);
                  *(v196 + 184) = *(v198 + 184);
                  *(v196 + 168) = v211;
                  *(v198 + 191) = 0;
                  *(v198 + 168) = 0;
                  v196 = v198;
                }

                while (v192 <= ((v191 - 2) >> 1));
                a2 -= 12;
                if (v198 == v193 - 12)
                {
                  *(v198 + 16) = v279;
                  *(v198 + 32) = v290;
                  *v198 = v268;
                  *(v198 + 80) = v323;
                  *(v198 + 96) = v334;
                  *(v198 + 48) = v301;
                  *(v198 + 64) = v312;
                  *(v198 + 157) = *&v362[13];
                  *(v198 + 128) = v354;
                  *(v198 + 144) = *v362;
                  *(v198 + 112) = v345;
                  *(v198 + 168) = v194;
                  *(v198 + 176) = *v365;
                  *(v198 + 183) = *&v365[7];
                  *(v198 + 191) = v195;
                }

                else
                {
                  v212 = *a2;
                  v213 = *(v193 - 10);
                  *(v198 + 16) = *(v193 - 11);
                  *(v198 + 32) = v213;
                  *v198 = v212;
                  v214 = *(v193 - 9);
                  v215 = *(v193 - 8);
                  v216 = *(v193 - 6);
                  *(v198 + 80) = *(v193 - 7);
                  *(v198 + 96) = v216;
                  *(v198 + 48) = v214;
                  *(v198 + 64) = v215;
                  v217 = *(v193 - 5);
                  v218 = *(v193 - 4);
                  v219 = *(v193 - 3);
                  *(v198 + 157) = *(v193 - 35);
                  *(v198 + 128) = v218;
                  *(v198 + 144) = v219;
                  *(v198 + 112) = v217;
                  v220 = *(v193 - 24);
                  *(v198 + 184) = *(v193 - 1);
                  *(v198 + 168) = v220;
                  *(v193 - 11) = v279;
                  *(v193 - 10) = v290;
                  *a2 = v268;
                  *(v193 - 7) = v323;
                  *(v193 - 6) = v334;
                  *(v193 - 9) = v301;
                  *(v193 - 8) = v312;
                  *(v193 - 35) = *&v362[13];
                  *(v193 - 4) = v354;
                  *(v193 - 3) = *v362;
                  *(v193 - 5) = v345;
                  *(v193 - 3) = v194;
                  *(v193 - 9) = *&v365[7];
                  *(v193 - 2) = *v365;
                  *(v193 - 1) = v195;
                  v221 = v198 - v7 + 192;
                  if (v221 >= 193)
                  {
                    v222 = (0xAAAAAAAAAAAAAAABLL * (v221 >> 6) - 2) >> 1;
                    v223 = v7 + 192 * v222;
                    v224 = *(v198 + 28);
                    if (*(v223 + 28) > v224)
                    {
                      *&v402[12] = *(v198 + 12);
                      *v402 = *v198;
                      *&v397[13] = *(v198 + 157);
                      v388 = *(v198 + 96);
                      v391 = *(v198 + 112);
                      v394 = *(v198 + 128);
                      *v397 = *(v198 + 144);
                      v382 = *(v198 + 64);
                      v385 = *(v198 + 80);
                      v375 = *(v198 + 32);
                      v379 = *(v198 + 48);
                      v225 = *(v198 + 168);
                      *v406 = *(v198 + 176);
                      *&v406[7] = *(v198 + 183);
                      v226 = *(v198 + 191);
                      *(v198 + 176) = 0;
                      *(v198 + 184) = 0;
                      *(v198 + 168) = 0;
                      do
                      {
                        v227 = v198;
                        v198 = v223;
                        v228 = *v223;
                        v229 = *(v223 + 32);
                        *(v227 + 16) = *(v223 + 16);
                        *(v227 + 32) = v229;
                        *v227 = v228;
                        v230 = *(v223 + 48);
                        v231 = *(v223 + 64);
                        v232 = *(v223 + 96);
                        *(v227 + 80) = *(v223 + 80);
                        *(v227 + 96) = v232;
                        *(v227 + 48) = v230;
                        *(v227 + 64) = v231;
                        v233 = *(v223 + 112);
                        v234 = *(v223 + 128);
                        v235 = *(v223 + 144);
                        *(v227 + 157) = *(v223 + 157);
                        *(v227 + 128) = v234;
                        *(v227 + 144) = v235;
                        *(v227 + 112) = v233;
                        v236 = *(v223 + 168);
                        *(v227 + 184) = *(v223 + 184);
                        *(v227 + 168) = v236;
                        *(v223 + 191) = 0;
                        *(v223 + 168) = 0;
                        if (!v222)
                        {
                          break;
                        }

                        v222 = (v222 - 1) >> 1;
                        v223 = v7 + 192 * v222;
                      }

                      while (*(v223 + 28) > v224);
                      *(v198 + 12) = *&v402[12];
                      *v198 = *v402;
                      *(v198 + 28) = v224;
                      *(v198 + 128) = v394;
                      *(v198 + 144) = *v397;
                      *(v198 + 157) = *&v397[13];
                      *(v198 + 64) = v382;
                      *(v198 + 80) = v385;
                      *(v198 + 96) = v388;
                      *(v198 + 112) = v391;
                      *(v198 + 32) = v375;
                      *(v198 + 48) = v379;
                      *(v198 + 168) = v225;
                      *(v198 + 176) = *v406;
                      *(v198 + 183) = *&v406[7];
                      *(v198 + 191) = v226;
                    }
                  }
                }

                v169 = v191-- <= 2;
              }

              while (!v169);
            }

            return;
          }

          v10 = v9 >> 1;
          v11 = v7 + 192 * (v9 >> 1);
          if (v8 <= 0x6000)
          {
            sub_22E60F030((a1 + 192 * v10), a1, v254);
          }

          else
          {
            sub_22E60F030(a1, (a1 + 192 * v10), v254);
            v12 = 3 * v10;
            sub_22E60F030((a1 + 192), (a1 + (v12 << 6) - 192), v253);
            sub_22E60F030((a1 + 384), (a1 + 192 + (v12 << 6)), v252);
            sub_22E60F030((a1 + (v12 << 6) - 192), v11, (a1 + 192 + (v12 << 6)));
            v270 = *(a1 + 16);
            v281 = *(a1 + 32);
            v259 = *a1;
            v314 = *(a1 + 80);
            v325 = *(a1 + 96);
            v292 = *(a1 + 48);
            v303 = *(a1 + 64);
            *&v355[13] = *(a1 + 157);
            v347 = *(a1 + 128);
            *v355 = *(a1 + 144);
            v336 = *(a1 + 112);
            v13 = *(a1 + 168);
            *&v366 = *(a1 + 176);
            *(&v366 + 7) = *(a1 + 183);
            v14 = *(a1 + 191);
            *(a1 + 176) = 0;
            *(a1 + 184) = 0;
            *(a1 + 168) = 0;
            v16 = *(v11 + 16);
            v15 = *(v11 + 32);
            *a1 = *v11;
            *(a1 + 16) = v16;
            *(a1 + 32) = v15;
            v17 = *(v11 + 96);
            v19 = *(v11 + 48);
            v18 = *(v11 + 64);
            *(a1 + 80) = *(v11 + 80);
            *(a1 + 96) = v17;
            *(a1 + 48) = v19;
            *(a1 + 64) = v18;
            v21 = *(v11 + 128);
            v20 = *(v11 + 144);
            v22 = *(v11 + 112);
            *(a1 + 157) = *(v11 + 157);
            *(a1 + 128) = v21;
            *(a1 + 144) = v20;
            *(a1 + 112) = v22;
            v23 = *(v11 + 168);
            *(a1 + 184) = *(v11 + 184);
            *(a1 + 168) = v23;
            *(v11 + 16) = v270;
            *(v11 + 32) = v281;
            *v11 = v259;
            *(v11 + 80) = v314;
            *(v11 + 96) = v325;
            *(v11 + 48) = v292;
            *(v11 + 64) = v303;
            *(v11 + 157) = *&v355[13];
            *(v11 + 128) = v347;
            *(v11 + 144) = *v355;
            *(v11 + 112) = v336;
            *(v11 + 168) = v13;
            *(v11 + 183) = *(&v366 + 7);
            *(v11 + 176) = v366;
            *(v11 + 191) = v14;
          }

          v257 = --a3;
          if (a4)
          {
            break;
          }

          v24 = *(a1 + 28);
          if (*(a1 - 164) > v24)
          {
            goto LABEL_17;
          }

          *&v399[12] = *(a1 + 12);
          *v399 = *a1;
          *&v396[13] = *(a1 + 157);
          v387 = *(a1 + 96);
          v390 = *(a1 + 112);
          v393 = *(a1 + 128);
          *v396 = *(a1 + 144);
          v381 = *(a1 + 64);
          v384 = *(a1 + 80);
          v368 = *(a1 + 32);
          v378 = *(a1 + 48);
          v69 = *(a1 + 168);
          v68 = a1 + 168;
          *v364 = *(a1 + 176);
          *&v364[7] = *(a1 + 183);
          v70 = *(a1 + 191);
          *(a1 + 176) = 0;
          *(a1 + 184) = 0;
          *(a1 + 168) = 0;
          if (v24 <= *(a2 - 41))
          {
            v73 = a1 + 192;
            do
            {
              v7 = v73;
              if (v73 >= a2)
              {
                break;
              }

              v74 = *(v73 + 28);
              v73 += 192;
            }

            while (v24 <= v74);
          }

          else
          {
            v71 = a1;
            do
            {
              v7 = v71 + 192;
              v72 = *(v71 + 220);
              v71 += 192;
            }

            while (v24 <= v72);
          }

          v75 = a2;
          if (v7 < a2)
          {
            v76 = a2;
            do
            {
              v75 = v76 - 12;
              v77 = *(v76 - 41);
              v76 -= 12;
            }

            while (v24 > v77);
          }

          while (v7 < v75)
          {
            v272 = *(v7 + 16);
            v283 = *(v7 + 32);
            v261 = *v7;
            v316 = *(v7 + 80);
            v327 = *(v7 + 96);
            v294 = *(v7 + 48);
            v305 = *(v7 + 64);
            *&v357[13] = *(v7 + 157);
            v349 = *(v7 + 128);
            *v357 = *(v7 + 144);
            v338 = *(v7 + 112);
            v78 = *(v7 + 168);
            *&v405 = *(v7 + 176);
            *(&v405 + 7) = *(v7 + 183);
            v79 = *(v7 + 191);
            *(v7 + 176) = 0;
            *(v7 + 184) = 0;
            *(v7 + 168) = 0;
            v81 = v75[8];
            v80 = v75[9];
            v82 = v75[7];
            *(v7 + 157) = *(v75 + 157);
            *(v7 + 128) = v81;
            *(v7 + 144) = v80;
            *(v7 + 112) = v82;
            v84 = v75[3];
            v83 = v75[4];
            v85 = v75[6];
            *(v7 + 80) = v75[5];
            *(v7 + 96) = v85;
            *(v7 + 48) = v84;
            *(v7 + 64) = v83;
            v86 = *v75;
            v87 = v75[2];
            *(v7 + 16) = v75[1];
            *(v7 + 32) = v87;
            *v7 = v86;
            v88 = *(v75 + 168);
            *(v7 + 184) = *(v75 + 23);
            *(v7 + 168) = v88;
            v75[5] = v316;
            v75[6] = v327;
            v75[3] = v294;
            v75[4] = v305;
            *(v75 + 157) = *&v357[13];
            v75[8] = v349;
            v75[9] = *v357;
            v75[7] = v338;
            v75[1] = v272;
            v75[2] = v283;
            *v75 = v261;
            *(v75 + 21) = v78;
            *(v75 + 22) = v405;
            *(v75 + 183) = *(&v405 + 7);
            *(v75 + 191) = v79;
            do
            {
              v89 = *(v7 + 220);
              v7 += 192;
            }

            while (v24 <= v89);
            do
            {
              v90 = *(v75 - 41);
              v75 -= 12;
            }

            while (v24 > v90);
          }

          v91 = (v7 - 192);
          if (v7 - 192 == a1)
          {
            v102 = *(v7 - 1);
            *v91 = *v399;
            *(v7 - 180) = *&v399[12];
            *(v7 - 164) = v24;
            *(v7 - 160) = v368;
            *(v7 - 112) = v384;
            *(v7 - 96) = v387;
            *(v7 - 144) = v378;
            *(v7 - 128) = v381;
            *(v7 - 35) = *&v396[13];
            *(v7 - 64) = v393;
            *(v7 - 48) = *v396;
            *(v7 - 80) = v390;
            if (v102 < 0)
            {
              v103 = v70;
              operator delete(*(v7 - 24));
              v70 = v103;
            }
          }

          else
          {
            v92 = *v91;
            v93 = *(v7 - 160);
            *(a1 + 16) = *(v7 - 176);
            *(a1 + 32) = v93;
            *a1 = v92;
            v94 = *(v7 - 144);
            v95 = *(v7 - 128);
            v96 = *(v7 - 96);
            *(a1 + 80) = *(v7 - 112);
            *(a1 + 96) = v96;
            *(a1 + 48) = v94;
            *(a1 + 64) = v95;
            v97 = *(v7 - 80);
            v98 = *(v7 - 64);
            v99 = *(v7 - 48);
            *(a1 + 157) = *(v7 - 35);
            *(a1 + 128) = v98;
            *(a1 + 144) = v99;
            *(a1 + 112) = v97;
            if (*(a1 + 191) < 0)
            {
              v100 = v70;
              operator delete(*v68);
              v70 = v100;
            }

            v101 = *(v7 - 24);
            *(v68 + 16) = *(v7 - 8);
            *v68 = v101;
            *(v7 - 1) = 0;
            *(v7 - 24) = 0;
            *(v7 - 180) = *&v399[12];
            *v91 = *v399;
            *(v7 - 164) = v24;
            *(v7 - 160) = v368;
            *(v7 - 112) = v384;
            *(v7 - 96) = v387;
            *(v7 - 144) = v378;
            *(v7 - 128) = v381;
            *(v7 - 35) = *&v396[13];
            *(v7 - 64) = v393;
            *(v7 - 48) = *v396;
            *(v7 - 80) = v390;
          }

          a4 = 0;
          *(v7 - 24) = v69;
          *(v7 - 9) = *&v364[7];
          *(v7 - 16) = *v364;
          *(v7 - 1) = v70;
        }

        v24 = *(a1 + 28);
LABEL_17:
        v25 = 0;
        *&v398[12] = *(a1 + 12);
        *v398 = *a1;
        *&v395[13] = *(a1 + 157);
        v386 = *(a1 + 96);
        v389 = *(a1 + 112);
        v392 = *(a1 + 128);
        *v395 = *(a1 + 144);
        v380 = *(a1 + 64);
        v383 = *(a1 + 80);
        v367 = *(a1 + 32);
        v377 = *(a1 + 48);
        v26 = *(a1 + 168);
        v27 = (a1 + 168);
        *v363 = *(a1 + 176);
        *&v363[7] = *(a1 + 183);
        v28 = *(a1 + 191);
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        *(a1 + 168) = 0;
        do
        {
          v29 = *(a1 + v25 + 220);
          v25 += 192;
        }

        while (v29 > v24);
        v30 = a1 + v25;
        v31 = a2;
        if (v25 == 192)
        {
          v34 = a2;
          while (v30 < v34)
          {
            v32 = v34 - 12;
            v35 = *(v34 - 41);
            v34 -= 12;
            if (v35 > v24)
            {
              goto LABEL_27;
            }
          }

          v32 = v34;
        }

        else
        {
          do
          {
            v32 = v31 - 12;
            v33 = *(v31 - 41);
            v31 -= 12;
          }

          while (v33 <= v24);
        }

LABEL_27:
        v7 = v30;
        if (v30 < v32)
        {
          v36 = v32;
          do
          {
            v271 = *(v7 + 16);
            v282 = *(v7 + 32);
            v260 = *v7;
            v315 = *(v7 + 80);
            v326 = *(v7 + 96);
            v293 = *(v7 + 48);
            v304 = *(v7 + 64);
            *&v356[13] = *(v7 + 157);
            v348 = *(v7 + 128);
            *v356 = *(v7 + 144);
            v337 = *(v7 + 112);
            v37 = *(v7 + 168);
            *&v404 = *(v7 + 176);
            *(&v404 + 7) = *(v7 + 183);
            v38 = *(v7 + 191);
            *(v7 + 176) = 0;
            *(v7 + 184) = 0;
            *(v7 + 168) = 0;
            v40 = *(v36 + 128);
            v39 = *(v36 + 144);
            v41 = *(v36 + 112);
            *(v7 + 157) = *(v36 + 157);
            *(v7 + 128) = v40;
            *(v7 + 144) = v39;
            *(v7 + 112) = v41;
            v43 = *(v36 + 48);
            v42 = *(v36 + 64);
            v44 = *(v36 + 96);
            *(v7 + 80) = *(v36 + 80);
            *(v7 + 96) = v44;
            *(v7 + 48) = v43;
            *(v7 + 64) = v42;
            v45 = *v36;
            v46 = *(v36 + 32);
            *(v7 + 16) = *(v36 + 16);
            *(v7 + 32) = v46;
            *v7 = v45;
            v47 = *(v36 + 168);
            *(v7 + 184) = *(v36 + 184);
            *(v7 + 168) = v47;
            *(v36 + 80) = v315;
            *(v36 + 96) = v326;
            *(v36 + 48) = v293;
            *(v36 + 64) = v304;
            *(v36 + 157) = *&v356[13];
            *(v36 + 128) = v348;
            *(v36 + 144) = *v356;
            *(v36 + 112) = v337;
            *(v36 + 16) = v271;
            *(v36 + 32) = v282;
            *v36 = v260;
            *(v36 + 168) = v37;
            *(v36 + 176) = v404;
            *(v36 + 183) = *(&v404 + 7);
            *(v36 + 191) = v38;
            do
            {
              v48 = *(v7 + 220);
              v7 += 192;
            }

            while (v48 > v24);
            do
            {
              v49 = *(v36 - 164);
              v36 -= 192;
            }

            while (v49 <= v24);
          }

          while (v7 < v36);
        }

        v50 = (v7 - 192);
        if (v7 - 192 == a1)
        {
          v63 = *(v7 - 1);
          *v50 = *v398;
          *(v7 - 180) = *&v398[12];
          *(v7 - 164) = v24;
          *(v7 - 160) = v367;
          *(v7 - 112) = v383;
          *(v7 - 96) = v386;
          *(v7 - 144) = v377;
          *(v7 - 128) = v380;
          *(v7 - 35) = *&v395[13];
          *(v7 - 64) = v392;
          *(v7 - 48) = *v395;
          *(v7 - 80) = v389;
          if (v63 < 0)
          {
            v64 = v26;
            v65 = a2;
            v66 = v28;
            operator delete(*(v7 - 24));
            v28 = v66;
            a2 = v65;
            v26 = v64;
          }
        }

        else
        {
          v51 = *v50;
          v52 = *(v7 - 160);
          *(a1 + 16) = *(v7 - 176);
          *(a1 + 32) = v52;
          *a1 = v51;
          v53 = *(v7 - 144);
          v54 = *(v7 - 128);
          v55 = *(v7 - 96);
          *(a1 + 80) = *(v7 - 112);
          *(a1 + 96) = v55;
          *(a1 + 48) = v53;
          *(a1 + 64) = v54;
          v56 = *(v7 - 80);
          v57 = *(v7 - 64);
          v58 = *(v7 - 48);
          *(a1 + 157) = *(v7 - 35);
          *(a1 + 128) = v57;
          *(a1 + 144) = v58;
          *(a1 + 112) = v56;
          if (*(a1 + 191) < 0)
          {
            v59 = v26;
            v60 = a2;
            v61 = v28;
            operator delete(*v27);
            v28 = v61;
            a2 = v60;
            v26 = v59;
          }

          v62 = *(v7 - 24);
          *(a1 + 184) = *(v7 - 8);
          *v27 = v62;
          *(v7 - 1) = 0;
          *(v7 - 24) = 0;
          *(v7 - 180) = *&v398[12];
          *v50 = *v398;
          *(v7 - 164) = v24;
          *(v7 - 160) = v367;
          *(v7 - 112) = v383;
          *(v7 - 96) = v386;
          *(v7 - 144) = v377;
          *(v7 - 128) = v380;
          *(v7 - 35) = *&v395[13];
          *(v7 - 64) = v392;
          *(v7 - 48) = *v395;
          *(v7 - 80) = v389;
        }

        *(v7 - 24) = v26;
        *(v7 - 9) = *&v363[7];
        *(v7 - 16) = *v363;
        *(v7 - 1) = v28;
        a3 = v257;
        if (v30 >= v32)
        {
          break;
        }

LABEL_42:
        sub_22E60DA10(a1, (v7 - 192), v257, a4 & 1);
        a4 = 0;
      }

      v67 = sub_22E60FC14(a1, v7 - 192);
      if (sub_22E60FC14(v7, a2))
      {
        break;
      }

      if (!v67)
      {
        goto LABEL_42;
      }
    }

    a2 = (v7 - 192);
    if (!v67)
    {
      continue;
    }

    break;
  }
}

__n128 sub_22E60F030(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 7);
  v4 = *(a3 + 7);
  if (v3 <= *(a1 + 7))
  {
    if (v4 > v3)
    {
      v90 = a2[8];
      *v94 = a2[9];
      *&v94[13] = *(a2 + 157);
      v74 = a2[4];
      v78 = a2[5];
      v82 = a2[6];
      v86 = a2[7];
      v58 = *a2;
      v62 = a2[1];
      v66 = a2[2];
      v70 = a2[3];
      v16 = *(a2 + 21);
      *&v98 = *(a2 + 22);
      *(&v98 + 7) = *(a2 + 183);
      v17 = *(a2 + 191);
      a2[11] = 0uLL;
      *(a2 + 21) = 0;
      v19 = a3[1];
      v18 = a3[2];
      *a2 = *a3;
      a2[1] = v19;
      a2[2] = v18;
      v20 = a3[6];
      v22 = a3[3];
      v21 = a3[4];
      a2[5] = a3[5];
      a2[6] = v20;
      a2[3] = v22;
      a2[4] = v21;
      v24 = a3[8];
      v23 = a3[9];
      v25 = a3[7];
      *(a2 + 157) = *(a3 + 157);
      a2[8] = v24;
      a2[9] = v23;
      a2[7] = v25;
      v26 = *(a3 + 23);
      *(a2 + 168) = *(a3 + 168);
      *(a2 + 23) = v26;
      a3[8] = v90;
      a3[9] = *v94;
      *(a3 + 157) = *&v94[13];
      a3[4] = v74;
      a3[5] = v78;
      a3[6] = v82;
      a3[7] = v86;
      *a3 = v58;
      a3[1] = v62;
      result = v70;
      a3[2] = v66;
      a3[3] = v70;
      *(a3 + 21) = v16;
      *(a3 + 22) = v98;
      *(a3 + 183) = *(&v98 + 7);
      *(a3 + 191) = v17;
      if (*(a2 + 7) > *(a1 + 7))
      {
        v91 = a1[8];
        *v95 = a1[9];
        *&v95[13] = *(a1 + 157);
        v75 = a1[4];
        v79 = a1[5];
        v83 = a1[6];
        v87 = a1[7];
        v59 = *a1;
        v63 = a1[1];
        v67 = a1[2];
        v71 = a1[3];
        v28 = *(a1 + 21);
        *&v99 = *(a1 + 22);
        *(&v99 + 7) = *(a1 + 183);
        v29 = *(a1 + 191);
        a1[11] = 0uLL;
        *(a1 + 21) = 0;
        v31 = a2[1];
        v30 = a2[2];
        *a1 = *a2;
        a1[1] = v31;
        a1[2] = v30;
        v32 = a2[6];
        v34 = a2[3];
        v33 = a2[4];
        a1[5] = a2[5];
        a1[6] = v32;
        a1[3] = v34;
        a1[4] = v33;
        v36 = a2[8];
        v35 = a2[9];
        v37 = a2[7];
        *(a1 + 157) = *(a2 + 157);
        a1[8] = v36;
        a1[9] = v35;
        a1[7] = v37;
        v38 = *(a2 + 23);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 23) = v38;
        a2[8] = v91;
        a2[9] = *v95;
        *(a2 + 157) = *&v95[13];
        a2[4] = v75;
        a2[5] = v79;
        a2[6] = v83;
        a2[7] = v87;
        *a2 = v59;
        a2[1] = v63;
        result = v71;
        a2[2] = v67;
        a2[3] = v71;
        *(a2 + 21) = v28;
        *(a2 + 22) = v99;
        *(a2 + 183) = *(&v99 + 7);
        *(a2 + 191) = v29;
      }
    }
  }

  else
  {
    if (v4 <= v3)
    {
      v92 = a1[8];
      *v96 = a1[9];
      *&v96[13] = *(a1 + 157);
      v76 = a1[4];
      v80 = a1[5];
      v84 = a1[6];
      v88 = a1[7];
      v60 = *a1;
      v64 = a1[1];
      v68 = a1[2];
      v72 = a1[3];
      v5 = *(a1 + 21);
      *&v100 = *(a1 + 22);
      *(&v100 + 7) = *(a1 + 183);
      v6 = *(a1 + 191);
      a1[11] = 0uLL;
      *(a1 + 21) = 0;
      v40 = a2[1];
      v39 = a2[2];
      *a1 = *a2;
      a1[1] = v40;
      a1[2] = v39;
      v41 = a2[6];
      v43 = a2[3];
      v42 = a2[4];
      a1[5] = a2[5];
      a1[6] = v41;
      a1[3] = v43;
      a1[4] = v42;
      v45 = a2[8];
      v44 = a2[9];
      v46 = a2[7];
      *(a1 + 157) = *(a2 + 157);
      a1[8] = v45;
      a1[9] = v44;
      a1[7] = v46;
      v47 = *(a2 + 168);
      *(a1 + 23) = *(a2 + 23);
      *(a1 + 168) = v47;
      a2[8] = v92;
      a2[9] = *v96;
      *(a2 + 157) = *&v96[13];
      a2[4] = v76;
      a2[5] = v80;
      a2[6] = v84;
      a2[7] = v88;
      *a2 = v60;
      a2[1] = v64;
      result = v72;
      a2[2] = v68;
      a2[3] = v72;
      *(a2 + 21) = v5;
      *(a2 + 22) = v100;
      *(a2 + 183) = *(&v100 + 7);
      *(a2 + 191) = v6;
      if (*(a3 + 7) <= *(a2 + 7))
      {
        return result;
      }

      v89 = a2[8];
      *v93 = a2[9];
      *&v93[13] = *(a2 + 157);
      v73 = a2[4];
      v77 = a2[5];
      v81 = a2[6];
      v85 = a2[7];
      v57 = *a2;
      v61 = a2[1];
      v65 = a2[2];
      v69 = a2[3];
      *v97 = *(a2 + 22);
      *&v97[7] = *(a2 + 183);
      a2[11] = 0uLL;
      *(a2 + 21) = 0;
      v49 = a3[1];
      v48 = a3[2];
      *a2 = *a3;
      a2[1] = v49;
      a2[2] = v48;
      v50 = a3[6];
      v52 = a3[3];
      v51 = a3[4];
      a2[5] = a3[5];
      a2[6] = v50;
      a2[3] = v52;
      a2[4] = v51;
      v54 = a3[8];
      v53 = a3[9];
      v55 = a3[7];
      *(a2 + 157) = *(a3 + 157);
      a2[8] = v54;
      a2[9] = v53;
      a2[7] = v55;
      v56 = *(a3 + 168);
      *(a2 + 23) = *(a3 + 23);
      *(a2 + 168) = v56;
    }

    else
    {
      v89 = a1[8];
      *v93 = a1[9];
      *&v93[13] = *(a1 + 157);
      v73 = a1[4];
      v77 = a1[5];
      v81 = a1[6];
      v85 = a1[7];
      v57 = *a1;
      v61 = a1[1];
      v65 = a1[2];
      v69 = a1[3];
      v5 = *(a1 + 21);
      *v97 = *(a1 + 22);
      *&v97[7] = *(a1 + 183);
      v6 = *(a1 + 191);
      a1[11] = 0uLL;
      *(a1 + 21) = 0;
      v8 = a3[1];
      v7 = a3[2];
      *a1 = *a3;
      a1[1] = v8;
      a1[2] = v7;
      v9 = a3[6];
      v11 = a3[3];
      v10 = a3[4];
      a1[5] = a3[5];
      a1[6] = v9;
      a1[3] = v11;
      a1[4] = v10;
      v13 = a3[8];
      v12 = a3[9];
      v14 = a3[7];
      *(a1 + 157) = *(a3 + 157);
      a1[8] = v13;
      a1[9] = v12;
      a1[7] = v14;
      v15 = *(a3 + 23);
      *(a1 + 168) = *(a3 + 168);
      *(a1 + 23) = v15;
    }

    a3[8] = v89;
    a3[9] = *v93;
    *(a3 + 157) = *&v93[13];
    a3[4] = v73;
    a3[5] = v77;
    a3[6] = v81;
    a3[7] = v85;
    *a3 = v57;
    a3[1] = v61;
    result = v69;
    a3[2] = v65;
    a3[3] = v69;
    *(a3 + 21) = v5;
    *(a3 + 22) = *v97;
    *(a3 + 183) = *&v97[7];
    *(a3 + 191) = v6;
  }

  return result;
}

__n128 sub_22E60F4D4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result.n128_u64[0] = sub_22E60F030(a1, a2, a3).n128_u64[0];
  if (*(a4 + 7) > *(a3 + 28))
  {
    v144 = *(a3 + 128);
    *v151 = *(a3 + 144);
    *&v151[13] = *(a3 + 157);
    v116 = *(a3 + 64);
    v123 = *(a3 + 80);
    v130 = *(a3 + 96);
    v137 = *(a3 + 112);
    v88 = *a3;
    v95 = *(a3 + 16);
    v102 = *(a3 + 32);
    v109 = *(a3 + 48);
    v11 = *(a3 + 168);
    *&v158 = *(a3 + 176);
    *(&v158 + 7) = *(a3 + 183);
    v12 = *(a3 + 191);
    *(a3 + 184) = 0;
    *(a3 + 176) = 0;
    *(a3 + 168) = 0;
    v14 = a4[1];
    v13 = a4[2];
    *a3 = *a4;
    *(a3 + 16) = v14;
    *(a3 + 32) = v13;
    v15 = a4[6];
    v17 = a4[3];
    v16 = a4[4];
    *(a3 + 80) = a4[5];
    *(a3 + 96) = v15;
    *(a3 + 48) = v17;
    *(a3 + 64) = v16;
    v19 = a4[8];
    v18 = a4[9];
    v20 = a4[7];
    *(a3 + 157) = *(a4 + 157);
    *(a3 + 128) = v19;
    *(a3 + 144) = v18;
    *(a3 + 112) = v20;
    v21 = *(a4 + 23);
    *(a3 + 168) = *(a4 + 168);
    *(a3 + 184) = v21;
    a4[8] = v144;
    a4[9] = *v151;
    *(a4 + 157) = *&v151[13];
    a4[4] = v116;
    a4[5] = v123;
    a4[6] = v130;
    a4[7] = v137;
    *a4 = v88;
    a4[1] = v95;
    result = v109;
    a4[2] = v102;
    a4[3] = v109;
    *(a4 + 21) = v11;
    *(a4 + 22) = v158;
    *(a4 + 183) = *(&v158 + 7);
    *(a4 + 191) = v12;
    if (*(a3 + 28) > *(a2 + 28))
    {
      v145 = *(a2 + 128);
      *v152 = *(a2 + 144);
      *&v152[13] = *(a2 + 157);
      v117 = *(a2 + 64);
      v124 = *(a2 + 80);
      v131 = *(a2 + 96);
      v138 = *(a2 + 112);
      v89 = *a2;
      v96 = *(a2 + 16);
      v103 = *(a2 + 32);
      v110 = *(a2 + 48);
      v22 = *(a2 + 168);
      *&v159 = *(a2 + 176);
      *(&v159 + 7) = *(a2 + 183);
      v23 = *(a2 + 191);
      *(a2 + 184) = 0;
      *(a2 + 176) = 0;
      *(a2 + 168) = 0;
      v25 = *(a3 + 16);
      v24 = *(a3 + 32);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      v26 = *(a3 + 96);
      v28 = *(a3 + 48);
      v27 = *(a3 + 64);
      *(a2 + 80) = *(a3 + 80);
      *(a2 + 96) = v26;
      *(a2 + 48) = v28;
      *(a2 + 64) = v27;
      v30 = *(a3 + 128);
      v29 = *(a3 + 144);
      v31 = *(a3 + 112);
      *(a2 + 157) = *(a3 + 157);
      *(a2 + 128) = v30;
      *(a2 + 144) = v29;
      *(a2 + 112) = v31;
      v32 = *(a3 + 184);
      *(a2 + 168) = *(a3 + 168);
      *(a2 + 184) = v32;
      *(a3 + 128) = v145;
      *(a3 + 144) = *v152;
      *(a3 + 157) = *&v152[13];
      *(a3 + 64) = v117;
      *(a3 + 80) = v124;
      *(a3 + 96) = v131;
      *(a3 + 112) = v138;
      *a3 = v89;
      *(a3 + 16) = v96;
      result = v110;
      *(a3 + 32) = v103;
      *(a3 + 48) = v110;
      *(a3 + 168) = v22;
      *(a3 + 176) = v159;
      *(a3 + 183) = *(&v159 + 7);
      *(a3 + 191) = v23;
      if (*(a2 + 28) > *(a1 + 28))
      {
        v146 = *(a1 + 128);
        *v153 = *(a1 + 144);
        *&v153[13] = *(a1 + 157);
        v118 = *(a1 + 64);
        v125 = *(a1 + 80);
        v132 = *(a1 + 96);
        v139 = *(a1 + 112);
        v90 = *a1;
        v97 = *(a1 + 16);
        v104 = *(a1 + 32);
        v111 = *(a1 + 48);
        v33 = *(a1 + 168);
        *&v160 = *(a1 + 176);
        *(&v160 + 7) = *(a1 + 183);
        v34 = *(a1 + 191);
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        *(a1 + 168) = 0;
        v36 = *(a2 + 16);
        v35 = *(a2 + 32);
        *a1 = *a2;
        *(a1 + 16) = v36;
        *(a1 + 32) = v35;
        v37 = *(a2 + 96);
        v39 = *(a2 + 48);
        v38 = *(a2 + 64);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v37;
        *(a1 + 48) = v39;
        *(a1 + 64) = v38;
        v41 = *(a2 + 128);
        v40 = *(a2 + 144);
        v42 = *(a2 + 112);
        *(a1 + 157) = *(a2 + 157);
        *(a1 + 128) = v41;
        *(a1 + 144) = v40;
        *(a1 + 112) = v42;
        v43 = *(a2 + 184);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v43;
        *(a2 + 128) = v146;
        *(a2 + 144) = *v153;
        *(a2 + 157) = *&v153[13];
        *(a2 + 64) = v118;
        *(a2 + 80) = v125;
        *(a2 + 96) = v132;
        *(a2 + 112) = v139;
        *a2 = v90;
        *(a2 + 16) = v97;
        result = v111;
        *(a2 + 32) = v104;
        *(a2 + 48) = v111;
        *(a2 + 168) = v33;
        *(a2 + 176) = v160;
        *(a2 + 183) = *(&v160 + 7);
        *(a2 + 191) = v34;
      }
    }
  }

  if (*(a5 + 7) > *(a4 + 7))
  {
    v147 = a4[8];
    *v154 = a4[9];
    *&v154[13] = *(a4 + 157);
    v119 = a4[4];
    v126 = a4[5];
    v133 = a4[6];
    v140 = a4[7];
    v91 = *a4;
    v98 = a4[1];
    v105 = a4[2];
    v112 = a4[3];
    v44 = *(a4 + 21);
    *&v161 = *(a4 + 22);
    *(&v161 + 7) = *(a4 + 183);
    v45 = *(a4 + 191);
    *(a4 + 23) = 0;
    *(a4 + 22) = 0;
    *(a4 + 21) = 0;
    v47 = a5[1];
    v46 = a5[2];
    *a4 = *a5;
    a4[1] = v47;
    a4[2] = v46;
    v48 = a5[6];
    v50 = a5[3];
    v49 = a5[4];
    a4[5] = a5[5];
    a4[6] = v48;
    a4[3] = v50;
    a4[4] = v49;
    v52 = a5[8];
    v51 = a5[9];
    v53 = a5[7];
    *(a4 + 157) = *(a5 + 157);
    a4[8] = v52;
    a4[9] = v51;
    a4[7] = v53;
    v54 = *(a5 + 23);
    *(a4 + 168) = *(a5 + 168);
    *(a4 + 23) = v54;
    a5[8] = v147;
    a5[9] = *v154;
    *(a5 + 157) = *&v154[13];
    a5[4] = v119;
    a5[5] = v126;
    a5[6] = v133;
    a5[7] = v140;
    *a5 = v91;
    a5[1] = v98;
    result = v112;
    a5[2] = v105;
    a5[3] = v112;
    *(a5 + 21) = v44;
    *(a5 + 22) = v161;
    *(a5 + 183) = *(&v161 + 7);
    *(a5 + 191) = v45;
    if (*(a4 + 7) > *(a3 + 28))
    {
      v148 = *(a3 + 128);
      *v155 = *(a3 + 144);
      *&v155[13] = *(a3 + 157);
      v120 = *(a3 + 64);
      v127 = *(a3 + 80);
      v134 = *(a3 + 96);
      v141 = *(a3 + 112);
      v92 = *a3;
      v99 = *(a3 + 16);
      v106 = *(a3 + 32);
      v113 = *(a3 + 48);
      v55 = *(a3 + 168);
      *&v162 = *(a3 + 176);
      *(&v162 + 7) = *(a3 + 183);
      v56 = *(a3 + 191);
      *(a3 + 184) = 0;
      *(a3 + 176) = 0;
      *(a3 + 168) = 0;
      v58 = a4[1];
      v57 = a4[2];
      *a3 = *a4;
      *(a3 + 16) = v58;
      *(a3 + 32) = v57;
      v59 = a4[6];
      v61 = a4[3];
      v60 = a4[4];
      *(a3 + 80) = a4[5];
      *(a3 + 96) = v59;
      *(a3 + 48) = v61;
      *(a3 + 64) = v60;
      v63 = a4[8];
      v62 = a4[9];
      v64 = a4[7];
      *(a3 + 157) = *(a4 + 157);
      *(a3 + 128) = v63;
      *(a3 + 144) = v62;
      *(a3 + 112) = v64;
      v65 = *(a4 + 23);
      *(a3 + 168) = *(a4 + 168);
      *(a3 + 184) = v65;
      a4[8] = v148;
      a4[9] = *v155;
      *(a4 + 157) = *&v155[13];
      a4[4] = v120;
      a4[5] = v127;
      a4[6] = v134;
      a4[7] = v141;
      *a4 = v92;
      a4[1] = v99;
      result = v113;
      a4[2] = v106;
      a4[3] = v113;
      *(a4 + 21) = v55;
      *(a4 + 22) = v162;
      *(a4 + 183) = *(&v162 + 7);
      *(a4 + 191) = v56;
      if (*(a3 + 28) > *(a2 + 28))
      {
        v149 = *(a2 + 128);
        *v156 = *(a2 + 144);
        *&v156[13] = *(a2 + 157);
        v121 = *(a2 + 64);
        v128 = *(a2 + 80);
        v135 = *(a2 + 96);
        v142 = *(a2 + 112);
        v93 = *a2;
        v100 = *(a2 + 16);
        v107 = *(a2 + 32);
        v114 = *(a2 + 48);
        v66 = *(a2 + 168);
        *&v163 = *(a2 + 176);
        *(&v163 + 7) = *(a2 + 183);
        v67 = *(a2 + 191);
        *(a2 + 184) = 0;
        *(a2 + 176) = 0;
        *(a2 + 168) = 0;
        v69 = *(a3 + 16);
        v68 = *(a3 + 32);
        *a2 = *a3;
        *(a2 + 16) = v69;
        *(a2 + 32) = v68;
        v70 = *(a3 + 96);
        v72 = *(a3 + 48);
        v71 = *(a3 + 64);
        *(a2 + 80) = *(a3 + 80);
        *(a2 + 96) = v70;
        *(a2 + 48) = v72;
        *(a2 + 64) = v71;
        v74 = *(a3 + 128);
        v73 = *(a3 + 144);
        v75 = *(a3 + 112);
        *(a2 + 157) = *(a3 + 157);
        *(a2 + 128) = v74;
        *(a2 + 144) = v73;
        *(a2 + 112) = v75;
        v76 = *(a3 + 184);
        *(a2 + 168) = *(a3 + 168);
        *(a2 + 184) = v76;
        *(a3 + 128) = v149;
        *(a3 + 144) = *v156;
        *(a3 + 157) = *&v156[13];
        *(a3 + 64) = v121;
        *(a3 + 80) = v128;
        *(a3 + 96) = v135;
        *(a3 + 112) = v142;
        *a3 = v93;
        *(a3 + 16) = v100;
        result = v114;
        *(a3 + 32) = v107;
        *(a3 + 48) = v114;
        *(a3 + 168) = v66;
        *(a3 + 176) = v163;
        *(a3 + 183) = *(&v163 + 7);
        *(a3 + 191) = v67;
        if (*(a2 + 28) > *(a1 + 28))
        {
          v150 = *(a1 + 128);
          *v157 = *(a1 + 144);
          *&v157[13] = *(a1 + 157);
          v122 = *(a1 + 64);
          v129 = *(a1 + 80);
          v136 = *(a1 + 96);
          v143 = *(a1 + 112);
          v94 = *a1;
          v101 = *(a1 + 16);
          v108 = *(a1 + 32);
          v115 = *(a1 + 48);
          v77 = *(a1 + 168);
          *&v164 = *(a1 + 176);
          *(&v164 + 7) = *(a1 + 183);
          v78 = *(a1 + 191);
          *(a1 + 176) = 0;
          *(a1 + 184) = 0;
          *(a1 + 168) = 0;
          v80 = *(a2 + 16);
          v79 = *(a2 + 32);
          *a1 = *a2;
          *(a1 + 16) = v80;
          *(a1 + 32) = v79;
          v81 = *(a2 + 96);
          v83 = *(a2 + 48);
          v82 = *(a2 + 64);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 96) = v81;
          *(a1 + 48) = v83;
          *(a1 + 64) = v82;
          v85 = *(a2 + 128);
          v84 = *(a2 + 144);
          v86 = *(a2 + 112);
          *(a1 + 157) = *(a2 + 157);
          *(a1 + 128) = v85;
          *(a1 + 144) = v84;
          *(a1 + 112) = v86;
          v87 = *(a2 + 184);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 184) = v87;
          *(a2 + 128) = v150;
          *(a2 + 144) = *v157;
          *(a2 + 157) = *&v157[13];
          *(a2 + 64) = v122;
          *(a2 + 80) = v129;
          *(a2 + 96) = v136;
          *(a2 + 112) = v143;
          *a2 = v94;
          *(a2 + 16) = v101;
          result = v115;
          *(a2 + 32) = v108;
          *(a2 + 48) = v115;
          *(a2 + 168) = v77;
          *(a2 + 176) = v164;
          *(a2 + 183) = *(&v164 + 7);
          *(a2 + 191) = v78;
        }
      }
    }
  }

  return result;
}

BOOL sub_22E60FC14(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 6);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_22E60F030(a1, (a1 + 192), (a2 - 192));
        break;
      case 4:
        v32 = (a1 + 192);
        v33 = (a1 + 384);
        sub_22E60F030(a1, (a1 + 192), (a1 + 384));
        if (*(a2 - 164) > *(a1 + 412))
        {
          v100 = *(a1 + 512);
          *v104 = *(a1 + 528);
          *&v104[13] = *(a1 + 541);
          v81 = *(a1 + 448);
          v86 = *(a1 + 464);
          v91 = *(a1 + 480);
          v96 = *(a1 + 496);
          v61 = *v33;
          v66 = *(a1 + 400);
          v71 = *(a1 + 416);
          v76 = *(a1 + 432);
          v34 = *(a1 + 552);
          *&v110 = *(a1 + 560);
          *(&v110 + 7) = *(a1 + 567);
          v35 = *(a1 + 575);
          *(a1 + 568) = 0;
          *(a1 + 552) = 0u;
          v37 = *(a2 - 176);
          v36 = *(a2 - 160);
          *v33 = *(a2 - 192);
          *(a1 + 400) = v37;
          *(a1 + 416) = v36;
          v38 = *(a2 - 96);
          v40 = *(a2 - 144);
          v39 = *(a2 - 128);
          *(a1 + 464) = *(a2 - 112);
          *(a1 + 480) = v38;
          *(a1 + 432) = v40;
          *(a1 + 448) = v39;
          v42 = *(a2 - 64);
          v41 = *(a2 - 48);
          v43 = *(a2 - 80);
          *(a1 + 541) = *(a2 - 35);
          *(a1 + 512) = v42;
          *(a1 + 528) = v41;
          *(a1 + 496) = v43;
          v44 = *(a2 - 8);
          *(a1 + 552) = *(a2 - 24);
          *(a1 + 568) = v44;
          *(a2 - 64) = v100;
          *(a2 - 48) = *v104;
          *(a2 - 35) = *&v104[13];
          *(a2 - 128) = v81;
          *(a2 - 112) = v86;
          *(a2 - 96) = v91;
          *(a2 - 80) = v96;
          *(a2 - 192) = v61;
          *(a2 - 176) = v66;
          *(a2 - 160) = v71;
          *(a2 - 144) = v76;
          *(a2 - 24) = v34;
          *(a2 - 16) = v110;
          *(a2 - 9) = *(&v110 + 7);
          *(a2 - 1) = v35;
          if (*(a1 + 412) > *(a1 + 220))
          {
            v101 = *(a1 + 320);
            *v105 = *(a1 + 336);
            *&v105[13] = *(a1 + 349);
            v82 = *(a1 + 256);
            v87 = *(a1 + 272);
            v92 = *(a1 + 288);
            v97 = *(a1 + 304);
            v62 = *v32;
            v67 = *(a1 + 208);
            v72 = *(a1 + 224);
            v77 = *(a1 + 240);
            v45 = *(a1 + 360);
            *&v111 = *(a1 + 368);
            *(&v111 + 7) = *(a1 + 375);
            v46 = *(a1 + 383);
            v47 = *(a1 + 528);
            *(a1 + 320) = *(a1 + 512);
            *(a1 + 336) = v47;
            *(a1 + 349) = *(a1 + 541);
            v48 = *(a1 + 464);
            *(a1 + 256) = *(a1 + 448);
            *(a1 + 272) = v48;
            v49 = *(a1 + 496);
            *(a1 + 288) = *(a1 + 480);
            *(a1 + 304) = v49;
            v50 = *(a1 + 400);
            *v32 = *v33;
            *(a1 + 208) = v50;
            v51 = *(a1 + 432);
            *(a1 + 224) = *(a1 + 416);
            *(a1 + 240) = v51;
            *(a1 + 360) = *(a1 + 552);
            *(a1 + 376) = *(a1 + 568);
            *(a1 + 512) = v101;
            *(a1 + 528) = *v105;
            *(a1 + 541) = *&v105[13];
            *(a1 + 448) = v82;
            *(a1 + 464) = v87;
            *(a1 + 480) = v92;
            *(a1 + 496) = v97;
            *v33 = v62;
            *(a1 + 400) = v67;
            *(a1 + 416) = v72;
            *(a1 + 432) = v77;
            *(a1 + 552) = v45;
            *(a1 + 560) = v111;
            *(a1 + 567) = *(&v111 + 7);
            *(a1 + 575) = v46;
            if (*(a1 + 220) > *(a1 + 28))
            {
              v102 = *(a1 + 128);
              *v106 = *(a1 + 144);
              *&v106[13] = *(a1 + 157);
              v83 = *(a1 + 64);
              v88 = *(a1 + 80);
              v93 = *(a1 + 96);
              v98 = *(a1 + 112);
              v63 = *a1;
              v68 = *(a1 + 16);
              v73 = *(a1 + 32);
              v78 = *(a1 + 48);
              v52 = *(a1 + 168);
              *&v112 = *(a1 + 176);
              *(&v112 + 7) = *(a1 + 183);
              v53 = *(a1 + 191);
              v54 = *(a1 + 336);
              *(a1 + 128) = *(a1 + 320);
              *(a1 + 144) = v54;
              *(a1 + 157) = *(a1 + 349);
              v55 = *(a1 + 272);
              *(a1 + 64) = *(a1 + 256);
              *(a1 + 80) = v55;
              v56 = *(a1 + 304);
              *(a1 + 96) = *(a1 + 288);
              *(a1 + 112) = v56;
              v57 = *(a1 + 208);
              *a1 = *v32;
              *(a1 + 16) = v57;
              v58 = *(a1 + 240);
              *(a1 + 32) = *(a1 + 224);
              *(a1 + 48) = v58;
              *(a1 + 168) = *(a1 + 360);
              *(a1 + 184) = *(a1 + 376);
              *(a1 + 320) = v102;
              *(a1 + 336) = *v106;
              *(a1 + 349) = *&v106[13];
              *(a1 + 256) = v83;
              *(a1 + 272) = v88;
              *(a1 + 288) = v93;
              *(a1 + 304) = v98;
              *v32 = v63;
              *(a1 + 208) = v68;
              *(a1 + 224) = v73;
              *(a1 + 240) = v78;
              *(a1 + 360) = v52;
              *(a1 + 368) = v112;
              *(a1 + 375) = *(&v112 + 7);
              result = 1;
              *(a1 + 383) = v53;
              return result;
            }
          }
        }

        return 1;
      case 5:
        sub_22E60F4D4(a1, a1 + 192, a1 + 384, (a1 + 576), (a2 - 192));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 164) > *(a1 + 28))
    {
      v99 = *(a1 + 128);
      *v103 = *(a1 + 144);
      *&v103[13] = *(a1 + 157);
      v79 = *(a1 + 64);
      v84 = *(a1 + 80);
      v89 = *(a1 + 96);
      v94 = *(a1 + 112);
      v59 = *a1;
      v64 = *(a1 + 16);
      v69 = *(a1 + 32);
      v74 = *(a1 + 48);
      v5 = *(a1 + 168);
      *&v108 = *(a1 + 176);
      *(&v108 + 7) = *(a1 + 183);
      v6 = *(a1 + 191);
      *(a1 + 176) = 0;
      *(a1 + 184) = 0;
      *(a1 + 168) = 0;
      v8 = *(a2 - 176);
      v7 = *(a2 - 160);
      *a1 = *(a2 - 192);
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      v9 = *(a2 - 96);
      v11 = *(a2 - 144);
      v10 = *(a2 - 128);
      *(a1 + 80) = *(a2 - 112);
      *(a1 + 96) = v9;
      *(a1 + 48) = v11;
      *(a1 + 64) = v10;
      v13 = *(a2 - 64);
      v12 = *(a2 - 48);
      v14 = *(a2 - 80);
      *(a1 + 157) = *(a2 - 35);
      *(a1 + 128) = v13;
      *(a1 + 144) = v12;
      *(a1 + 112) = v14;
      v15 = *(a2 - 8);
      *(a1 + 168) = *(a2 - 24);
      *(a1 + 184) = v15;
      *(a2 - 64) = v99;
      *(a2 - 48) = *v103;
      *(a2 - 35) = *&v103[13];
      *(a2 - 128) = v79;
      *(a2 - 112) = v84;
      *(a2 - 96) = v89;
      *(a2 - 80) = v94;
      *(a2 - 192) = v59;
      *(a2 - 176) = v64;
      *(a2 - 160) = v69;
      *(a2 - 144) = v74;
      *(a2 - 24) = v5;
      *(a2 - 16) = v108;
      *(a2 - 9) = *(&v108 + 7);
      result = 1;
      *(a2 - 1) = v6;
      return result;
    }

    return 1;
  }

LABEL_11:
  v17 = a1 + 384;
  sub_22E60F030(a1, (a1 + 192), (a1 + 384));
  v18 = a1 + 576;
  if (a1 + 576 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v21 = *(v18 + 28);
    if (v21 > *(v17 + 28))
    {
      *v109 = *v18;
      *&v109[12] = *(v18 + 12);
      v90 = *(v18 + 128);
      *v95 = *(v18 + 144);
      *&v95[13] = *(v18 + 157);
      v70 = *(v18 + 64);
      v75 = *(v18 + 80);
      v80 = *(v18 + 96);
      v85 = *(v18 + 112);
      v60 = *(v18 + 32);
      v65 = *(v18 + 48);
      v22 = *(v18 + 168);
      *v107 = *(v18 + 176);
      *&v107[7] = *(v18 + 183);
      v23 = *(v18 + 191);
      *(v18 + 176) = 0;
      *(v18 + 184) = 0;
      v24 = v19;
      *(v18 + 168) = 0;
      while (1)
      {
        v25 = a1 + v24;
        v26 = *(a1 + v24 + 528);
        *(v25 + 704) = *(a1 + v24 + 512);
        *(v25 + 720) = v26;
        v27 = *(a1 + v24 + 464);
        *(v25 + 640) = *(a1 + v24 + 448);
        *(v25 + 656) = v27;
        v28 = *(a1 + v24 + 496);
        *(v25 + 672) = *(a1 + v24 + 480);
        *(v25 + 688) = v28;
        v29 = *(a1 + v24 + 400);
        *(v25 + 576) = *(a1 + v24 + 384);
        *(v25 + 592) = v29;
        v30 = *(a1 + v24 + 432);
        *(v25 + 608) = *(a1 + v24 + 416);
        *(v25 + 624) = v30;
        *(a1 + v24 + 733) = *(a1 + v24 + 541);
        *(a1 + v24 + 744) = *(a1 + v24 + 552);
        *(v25 + 760) = *(a1 + v24 + 568);
        *(v25 + 575) = 0;
        *(v25 + 552) = 0;
        if (v24 == -384)
        {
          break;
        }

        v24 -= 192;
        if (v21 <= *(v25 + 220))
        {
          v31 = a1 + v24 + 576;
          goto LABEL_19;
        }
      }

      v31 = a1;
LABEL_19:
      *v31 = *v109;
      *(v31 + 12) = *&v109[12];
      *(v31 + 28) = v21;
      *(v31 + 64) = v70;
      *(v31 + 80) = v75;
      *(v31 + 157) = *&v95[13];
      *(v31 + 128) = v90;
      *(v31 + 144) = *v95;
      *(v31 + 96) = v80;
      *(v31 + 112) = v85;
      *(v31 + 32) = v60;
      *(v31 + 48) = v65;
      *(v25 + 552) = v22;
      *(v31 + 176) = *v107;
      *(v31 + 183) = *&v107[7];
      ++v20;
      *(v31 + 191) = v23;
      if (v20 == 8)
      {
        return v18 + 192 == a2;
      }
    }

    v17 = v18;
    v19 += 192;
    v18 += 192;
    if (v18 == a2)
    {
      return 1;
    }
  }
}

void *sub_22E61025C(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(v3 + 80) = a2[5];
  *(v3 + 96) = v8;
  *(v3 + 48) = v6;
  *(v3 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(v3 + 157) = *(a2 + 157);
  *(v3 + 128) = v10;
  *(v3 + 144) = v11;
  *(v3 + 112) = v9;
  if (*(a2 + 191) < 0)
  {
    result = sub_22E5DAE38((v3 + 168), *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v12 = *(a2 + 168);
    *(v3 + 184) = *(a2 + 23);
    *(v3 + 168) = v12;
  }

  v2[1] = v3 + 192;
  return result;
}

uint64_t sub_22E6102F4(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_22E61047C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v27 = a1;
  if (v6)
  {
    sub_22E610494(a1, v6);
  }

  v7 = 192 * v2;
  v24 = 0;
  v25 = v7;
  v26 = 192 * v2;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = a2[2];
  v10 = a2[6];
  v12 = a2[3];
  v11 = a2[4];
  *(v7 + 80) = a2[5];
  *(v7 + 96) = v10;
  *(v7 + 48) = v12;
  *(v7 + 64) = v11;
  v14 = a2[8];
  v13 = a2[9];
  v15 = a2[7];
  *(v7 + 157) = *(a2 + 157);
  *(v7 + 128) = v14;
  *(v7 + 144) = v13;
  *(v7 + 112) = v15;
  *v7 = v8;
  *(v7 + 16) = v9;
  if (*(a2 + 191) < 0)
  {
    sub_22E5DAE38((v7 + 168), *(a2 + 21), *(a2 + 22));
    v7 = v25;
    v17 = v26;
  }

  else
  {
    v16 = *(a2 + 168);
    *(192 * v2 + 0xB8) = *(a2 + 23);
    *(192 * v2 + 0xA8) = v16;
    v17 = 192 * v2;
  }

  *&v26 = v17 + 192;
  v18 = a1[1];
  v19 = v7 + *a1 - v18;
  sub_22E6104EC(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_22E610658(&v24);
  return v23;
}

void sub_22E610468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22E610658(va);
  _Unwind_Resume(a1);
}

void sub_22E610494(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_22E5D9B24();
}

uint64_t sub_22E6104EC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v20 = a4;
  v19 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  if (a2 == a3)
  {
    v18 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[2];
      *(a4 + 16) = v6[1];
      *(a4 + 32) = v8;
      *a4 = v7;
      v9 = v6[3];
      v10 = v6[4];
      v11 = v6[6];
      *(a4 + 80) = v6[5];
      *(a4 + 96) = v11;
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      v12 = v6[7];
      v13 = v6[8];
      v14 = v6[9];
      *(a4 + 157) = *(v6 + 157);
      *(a4 + 128) = v13;
      *(a4 + 144) = v14;
      *(a4 + 112) = v12;
      v15 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 23);
      *(a4 + 168) = v15;
      *(v6 + 22) = 0;
      *(v6 + 23) = 0;
      *(v6 + 21) = 0;
      v6 += 12;
      a4 += 192;
    }

    while (v6 != a3);
    v20 = a4;
    v18 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 191) < 0)
      {
        operator delete(*(v5 + 21));
      }

      v5 += 12;
    }
  }

  return sub_22E6105D8(v17);
}

uint64_t sub_22E6105D8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_22E610610(a1);
  }

  return a1;
}

void sub_22E610610(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 192;
  }
}

uint64_t sub_22E610658(uint64_t a1)
{
  sub_22E610690(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22E610690(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 192;
      *(a1 + 16) = v2 - 192;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_22E6106EC(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) < a4)
  {
    sub_22E6108EC(a1);
    if (a4 <= 0x155555555555555)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
      {
        v10 = 0x155555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_22E61092C(a1, v10);
    }

    sub_22E61047C();
  }

  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 6) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v21 = *v6;
        v22 = v6[2];
        *(v8 + 16) = v6[1];
        *(v8 + 32) = v22;
        *v8 = v21;
        v23 = v6[3];
        v24 = v6[4];
        v25 = v6[6];
        *(v8 + 80) = v6[5];
        *(v8 + 96) = v25;
        *(v8 + 48) = v23;
        *(v8 + 64) = v24;
        v26 = v6[7];
        v27 = v6[8];
        v28 = v6[9];
        *(v8 + 157) = *(v6 + 157);
        *(v8 + 128) = v27;
        *(v8 + 144) = v28;
        *(v8 + 112) = v26;
        std::string::operator=((v8 + 168), v6 + 7);
        v8 += 192;
        v6 += 12;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 24));
      }

      v11 -= 192;
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (a2 + v11 - v8);
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        v14 = v6[2];
        *(v8 + 16) = v6[1];
        *(v8 + 32) = v14;
        *v8 = v13;
        v15 = v6[3];
        v16 = v6[4];
        v17 = v6[6];
        *(v8 + 80) = v6[5];
        *(v8 + 96) = v17;
        *(v8 + 48) = v15;
        *(v8 + 64) = v16;
        v18 = v6[7];
        v19 = v6[8];
        v20 = v6[9];
        *(v8 + 157) = *(v6 + 157);
        *(v8 + 128) = v19;
        *(v8 + 144) = v20;
        *(v8 + 112) = v18;
        std::string::operator=((v8 + 168), v6 + 7);
        v6 += 12;
        v8 += 192;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_22E610978(a1, v12, a3, v11);
  }
}

void sub_22E6108EC(uint64_t *a1)
{
  if (*a1)
  {
    sub_22E60BADC(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_22E61092C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_22E610494(a1, a2);
  }

  sub_22E61047C();
}

uint64_t sub_22E610978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v20 = a4;
  v21 = a4;
  v18[0] = a1;
  v18[1] = &v20;
  v18[2] = &v21;
  v19 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 168);
    do
    {
      v7 = *(v6 - 168);
      v8 = *(v6 - 136);
      *(v4 + 16) = *(v6 - 152);
      *(v4 + 32) = v8;
      *v4 = v7;
      v9 = *(v6 - 120);
      v10 = *(v6 - 104);
      v11 = *(v6 - 72);
      *(v4 + 80) = *(v6 - 88);
      *(v4 + 96) = v11;
      *(v4 + 48) = v9;
      *(v4 + 64) = v10;
      v12 = *(v6 - 56);
      v13 = *(v6 - 40);
      v14 = *(v6 - 24);
      *(v4 + 157) = *(v6 - 11);
      *(v4 + 128) = v13;
      *(v4 + 144) = v14;
      *(v4 + 112) = v12;
      if (*(v6 + 23) < 0)
      {
        sub_22E5DAE38((v4 + 168), *v6, *(v6 + 1));
        v4 = v21;
      }

      else
      {
        v15 = *v6;
        *(v4 + 184) = *(v6 + 2);
        *(v4 + 168) = v15;
      }

      v16 = v6 - 168;
      v4 += 192;
      v21 = v4;
      v6 += 12;
    }

    while (v16 + 192 != a3);
  }

  v19 = 1;
  sub_22E6105D8(v18);
  return v4;
}

void sub_22E610A88(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_22E60BADC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

__int128 *sub_22E610ADC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      v8 = v5[2];
      *(a4 + 16) = v5[1];
      *(a4 + 32) = v8;
      *a4 = v7;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      *(a4 + 80) = v5[5];
      *(a4 + 96) = v11;
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      v12 = v5[7];
      v13 = v5[8];
      v14 = v5[9];
      *(a4 + 157) = *(v5 + 157);
      *(a4 + 128) = v13;
      *(a4 + 144) = v14;
      *(a4 + 112) = v12;
      if (*(a4 + 191) < 0)
      {
        operator delete(*(a4 + 168));
      }

      v15 = *(v5 + 168);
      *(a4 + 184) = *(v5 + 23);
      *(a4 + 168) = v15;
      *(v5 + 191) = 0;
      *(v5 + 168) = 0;
      v5 += 12;
      a4 += 192;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *sub_22E610B90(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22E610C04(a1, a2);
  }

  return a1;
}

void sub_22E610BE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E610C04(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_22E61047C();
}

void sub_22E610C54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_22E5D9B24();
}

void sub_22E610C9C(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, char a7)
{
LABEL_1:
  for (i = 1 - a6; ; ++i)
  {
    v15 = (a2 - a4) >> 2;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        v57 = *(a2 - 1);
        if (*a4 < v57)
        {
          *(a2 - 1) = *a4;
          *a4 = v57;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v61 = *(a2 - 2);
      v62 = *(a2 - 1);
      v63 = *(a2 - 3);
      if (v61 >= v62)
      {
        if (v63 >= v61)
        {
          v61 = *(a2 - 3);
        }

        else
        {
          *(a2 - 3) = v61;
          *(a2 - 2) = v63;
          v75 = *(a2 - 1);
          if (v63 < v75)
          {
            *(a2 - 2) = v75;
            *(a2 - 1) = v63;
            v61 = *(a2 - 3);
          }
        }
      }

      else
      {
        if (v63 < v61)
        {
          *(a2 - 1) = v63;
          goto LABEL_124;
        }

        *(a2 - 2) = v62;
        *(a2 - 1) = v61;
        v61 = *(a2 - 3);
        if (v61 < v62)
        {
          *(a2 - 2) = v61;
LABEL_124:
          *(a2 - 3) = v62;
          v61 = v62;
        }
      }

      if (*a4 >= v61)
      {
        return;
      }

      *(a2 - 3) = *a4;
      *a4 = v61;
      v73 = *(a2 - 3);
      goto LABEL_128;
    }

    if (v15 == 5)
    {
      v58 = *(a2 - 2);
      v59 = *(a2 - 1);
      v60 = *(a2 - 3);
      if (v58 >= v59)
      {
        if (v60 >= v58)
        {
          v58 = *(a2 - 3);
        }

        else
        {
          *(a2 - 3) = v58;
          *(a2 - 2) = v60;
          v74 = *(a2 - 1);
          if (v60 < v74)
          {
            *(a2 - 2) = v74;
            *(a2 - 1) = v60;
            v58 = *(a2 - 3);
          }
        }
      }

      else
      {
        if (v60 < v58)
        {
          *(a2 - 1) = v60;
          goto LABEL_113;
        }

        *(a2 - 2) = v59;
        *(a2 - 1) = v58;
        v58 = *(a2 - 3);
        if (v58 < v59)
        {
          *(a2 - 2) = v58;
LABEL_113:
          *(a2 - 3) = v59;
          v58 = v59;
        }
      }

      v82 = *(a2 - 4);
      if (v82 < v58)
      {
        *(a2 - 4) = v58;
        *(a2 - 3) = v82;
        v83 = *(a2 - 2);
        if (v82 < v83)
        {
          *(a2 - 3) = v83;
          *(a2 - 2) = v82;
          v84 = *(a2 - 1);
          if (v82 < v84)
          {
            *(a2 - 2) = v84;
            *(a2 - 1) = v82;
          }
        }
      }

      v85 = *(a2 - 4);
      if (*a4 >= v85)
      {
        return;
      }

      *(a2 - 4) = *a4;
      *a4 = v85;
      v73 = *(a2 - 4);
      v86 = *(a2 - 3);
      if (v73 >= v86)
      {
        return;
      }

      *(a2 - 4) = v86;
      *(a2 - 3) = v73;
LABEL_128:
      v87 = *(a2 - 2);
      if (v73 >= v87)
      {
        return;
      }

      *(a2 - 3) = v87;
      *(a2 - 2) = v73;
LABEL_130:
      v88 = *(a2 - 1);
      if (v73 < v88)
      {
        *(a2 - 2) = v88;
        *(a2 - 1) = v73;
      }

      return;
    }

LABEL_9:
    if (v15 <= 23)
    {
      if (a7)
      {
        if (a2 != a4)
        {
          v64 = a2 - 4;
          if (a2 - 4 != a4)
          {
            v65 = 0;
            v66 = a2 - 4;
            do
            {
              v68 = *(v66 - 1);
              v66 -= 4;
              v67 = v68;
              v69 = *v64;
              if (v68 < v69)
              {
                v70 = v65;
                v71 = a2;
                do
                {
                  v72 = v71;
                  *(v71 - 2) = v69;
                  if (!v70)
                  {
                    break;
                  }

                  v71 += 4;
                  v69 = *v72;
                  v70 -= 4;
                }

                while (v67 < *v72);
                *(v72 - 1) = v67;
              }

              a2 -= 4;
              v65 += 4;
              v64 = v66;
            }

            while (v66 != a4);
          }
        }
      }

      else if (a2 != a4)
      {
        v76 = a2 - 4;
        if (a2 - 4 != a4)
        {
          v77 = a2 - 4;
          do
          {
            v78 = v76 + 4;
            v80 = *(v77 - 1);
            v77 -= 4;
            v79 = v80;
            if (v80 < *v76)
            {
              do
              {
                *(v76 - 1) = *(v78 - 1);
                v81 = *v78;
                v76 = v78;
                v78 += 4;
              }

              while (v79 < v81);
              *(v78 - 2) = v79;
            }

            v76 = v77;
          }

          while (v77 != a4);
        }
      }

      return;
    }

    if (i == 1)
    {
      if (a2 != a4)
      {
        sub_22E6117E0(result, a2, a3, a4, a3, a4, a5);
      }

      return;
    }

    v16 = ((a2 - a4) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = &a2[-v16];
    v18 = &a2[-v16];
    v19 = *a4;
    if (v15 >= 0x81)
    {
      v20 = *(v18 - 1);
      v21 = *(a2 - 1);
      if (v20 >= v21)
      {
        if (v19 < v20)
        {
          *(v18 - 1) = v19;
          *a4 = v20;
          v24 = *(v18 - 1);
          v25 = *(a2 - 1);
          if (v24 < v25)
          {
            *(a2 - 1) = v24;
            *(v18 - 1) = v25;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          *(a2 - 1) = v19;
          goto LABEL_26;
        }

        *(a2 - 1) = v20;
        *(v18 - 1) = v21;
        if (*a4 < v21)
        {
          *(v18 - 1) = *a4;
LABEL_26:
          *a4 = v21;
        }
      }

      v30 = *v17;
      v28 = v17 + 4;
      v29 = v30;
      v31 = *(a2 - 2);
      v32 = *(a4 + 1);
      if (v30 >= v31)
      {
        if (v32 < v29)
        {
          *(v28 - 1) = v32;
          *(a4 + 1) = v29;
          v33 = *(v28 - 1);
          v34 = *(a2 - 2);
          if (v33 < v34)
          {
            *(a2 - 2) = v33;
            *(v28 - 1) = v34;
          }
        }
      }

      else
      {
        if (v32 < v29)
        {
          *(a2 - 2) = v32;
          goto LABEL_38;
        }

        *(a2 - 2) = v29;
        *(v28 - 1) = v31;
        v35 = *(a4 + 1);
        if (v35 < v31)
        {
          *(v28 - 1) = v35;
LABEL_38:
          *(a4 + 1) = v31;
        }
      }

      v36 = &a2[-v16 - 4];
      v37 = *(v36 - 1);
      v38 = *(a2 - 3);
      v39 = *(a4 + 2);
      if (v37 >= v38)
      {
        if (v39 < v37)
        {
          *(v36 - 1) = v39;
          *(a4 + 2) = v37;
          v40 = *(v36 - 1);
          v41 = *(a2 - 3);
          if (v40 < v41)
          {
            *(a2 - 3) = v40;
            *(v36 - 1) = v41;
          }
        }
      }

      else
      {
        if (v39 < v37)
        {
          *(a2 - 3) = v39;
          goto LABEL_47;
        }

        *(a2 - 3) = v37;
        *(v36 - 1) = v38;
        v42 = *(a4 + 2);
        if (v42 < v38)
        {
          *(v36 - 1) = v42;
LABEL_47:
          *(a4 + 2) = v38;
        }
      }

      v43 = *(v18 - 1);
      v44 = *(v28 - 1);
      v45 = *(v36 - 1);
      if (v43 >= v44)
      {
        if (v45 < v43)
        {
          *(v18 - 1) = v45;
          *(v36 - 1) = v43;
          v46 = *(v18 - 1);
          v47 = *(v28 - 1);
          if (v46 < v47)
          {
            *(v28 - 1) = v46;
            *(v18 - 1) = v47;
          }
        }
      }

      else
      {
        if (v45 < v43)
        {
          *(v28 - 1) = v45;
          goto LABEL_56;
        }

        *(v28 - 1) = v43;
        *(v18 - 1) = v44;
        v48 = *(v36 - 1);
        if (v48 < v44)
        {
          *(v18 - 1) = v48;
LABEL_56:
          *(v36 - 1) = v44;
        }
      }

      v49 = *(a2 - 1);
      *(a2 - 1) = *(v18 - 1);
      *(v18 - 1) = v49;
      goto LABEL_58;
    }

    v22 = *(a2 - 1);
    v23 = *(v18 - 1);
    if (v22 >= v23)
    {
      if (v19 < v22)
      {
        *(a2 - 1) = v19;
        *a4 = v22;
        v26 = *(a2 - 1);
        v27 = *(v18 - 1);
        if (v26 < v27)
        {
          *(v18 - 1) = v26;
          *(a2 - 1) = v27;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        *(v18 - 1) = v19;
LABEL_35:
        *a4 = v23;
        goto LABEL_58;
      }

      *(v18 - 1) = v22;
      *(a2 - 1) = v23;
      if (*a4 < v23)
      {
        *(a2 - 1) = *a4;
        goto LABEL_35;
      }
    }

LABEL_58:
    if ((a7 & 1) != 0 || *a2 < *(a2 - 1))
    {
      sub_22E611420(a2, a4, &v90);
      v52 = v90;
      v53 = v91;
      a6 = -i;
      if (v92 == 1)
      {
        v89 = sub_22E6114E0(result, a2, v90, v91);
        if (sub_22E6114E0((v53 - 4), v53 - 1, a3, a4))
        {
          a3 = v52;
          a4 = v53;
          if ((v89 & 1) == 0)
          {
            goto LABEL_1;
          }

          return;
        }

        if (v89)
        {
          result = v52;
          a2 = v53 - 4;
          goto LABEL_1;
        }
      }

      sub_22E610C9C(result, a2, v52, v53, a5, a6, a7 & 1);
      a7 = 0;
      a2 = v53 - 4;
      result = v52;
      goto LABEL_1;
    }

    sub_22E611364(result, a2, a3, a4);
    result = v50;
    a2 = v51;
    a7 = 0;
  }

  v55 = *(a2 - 2);
  v54 = *(a2 - 1);
  v56 = *a4;
  if (v55 >= v54)
  {
    if (v56 >= v55)
    {
      return;
    }

    *(a2 - 2) = v56;
    *a4 = v55;
    v73 = *(a2 - 2);
    goto LABEL_130;
  }

  if (v56 >= v55)
  {
    *(a2 - 2) = v54;
    *(a2 - 1) = v55;
    if (*a4 >= v54)
    {
      return;
    }

    *(a2 - 2) = *a4;
  }

  else
  {
    *(a2 - 1) = v56;
  }

  *a4 = v54;
}

void sub_22E611364(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  v4 = *(a2 - 1);
  if (v4 >= *a4)
  {
    v8 = a2 - 1;
    do
    {
      v6 = v8;
      if (v8 <= a4)
      {
        break;
      }

      --v8;
    }

    while (v4 >= *(v6 - 1));
  }

  else
  {
    v5 = a2;
    do
    {
      v6 = v5 - 1;
      v7 = *(v5 - 2);
      --v5;
    }

    while (v4 >= v7);
  }

  if (v6 > a4)
  {
    do
    {
      v9 = *a4++;
    }

    while (v4 < v9);
  }

  while (v6 > a4)
  {
    v10 = *(v6 - 1);
    *(v6 - 1) = *(a4 - 1);
    *(a4 - 1) = v10;
    do
    {
      v11 = *(v6 - 2);
      --v6;
    }

    while (v4 >= v11);
    do
    {
      v12 = *a4++;
    }

    while (v4 < v12);
  }

  if (a2 != v6 + 1)
  {
    *(a2 - 1) = *v6;
  }

  *v6 = v4;
}

void sub_22E611420(unint64_t a1@<X1>, unsigned int *a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *(a1 - 4);
  v4 = a1 + 4;
  v5 = a1;
  do
  {
    v6 = *(v5 - 8);
    v5 -= 4;
    v4 -= 4;
  }

  while (v6 < v3);
  if (a1 == v4)
  {
    do
    {
      if (v5 <= a2)
      {
        break;
      }

      v7 = *a2++;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v8 = *a2++;
    }

    while (v8 >= v3);
  }

  if (v5 > a2)
  {
    v9 = v5;
    v10 = a2;
    do
    {
      v11 = *(v9 - 4);
      *(v9 - 4) = *(v10 - 1);
      *(v10 - 1) = v11;
      v4 = v9 + 4;
      do
      {
        v12 = *(v9 - 8);
        v9 -= 4;
        v4 -= 4;
      }

      while (v12 < v3);
      do
      {
        v13 = *v10++;
      }

      while (v13 >= v3);
    }

    while (v9 > v10);
  }

  if (a1 != v4)
  {
    *(a1 - 4) = *(v4 - 4);
  }

  *(v4 - 4) = v3;
  *a3 = v4;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5 <= a2;
}

uint64_t sub_22E6114E0(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a2 - a4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v12 = *(a2 - 2);
      v11 = *(a2 - 1);
      v13 = *a4;
      if (v12 < v11)
      {
        if (v13 >= v12)
        {
          *(a2 - 2) = v11;
          *(a2 - 1) = v12;
          if (*a4 >= v11)
          {
            goto LABEL_3;
          }

          *(a2 - 2) = *a4;
        }

        else
        {
          *(a2 - 1) = v13;
        }

        *a4 = v11;
        goto LABEL_3;
      }

      if (v13 >= v12)
      {
LABEL_3:
        v5 = 1;
        return v5 & 1;
      }

      *(a2 - 2) = v13;
      *a4 = v12;
      v21 = *(a2 - 2);
LABEL_69:
      v40 = *(a2 - 1);
      if (v21 < v40)
      {
        *(a2 - 2) = v40;
        *(a2 - 1) = v21;
      }

      goto LABEL_3;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_17;
      }

      v7 = *(a2 - 2);
      v8 = *(a2 - 1);
      v9 = *(a2 - 3);
      if (v7 >= v8)
      {
        if (v9 >= v7)
        {
          v7 = *(a2 - 3);
        }

        else
        {
          *(a2 - 3) = v7;
          *(a2 - 2) = v9;
          v23 = *(a2 - 1);
          if (v9 < v23)
          {
            *(a2 - 2) = v23;
            *(a2 - 1) = v9;
            v7 = *(a2 - 3);
          }
        }

        goto LABEL_54;
      }

      if (v9 >= v7)
      {
        *(a2 - 2) = v8;
        *(a2 - 1) = v7;
        v7 = *(a2 - 3);
        if (v7 >= v8)
        {
          goto LABEL_54;
        }

        *(a2 - 2) = v7;
      }

      else
      {
        *(a2 - 1) = v9;
      }

      *(a2 - 3) = v8;
      v7 = v8;
LABEL_54:
      v34 = *(a2 - 4);
      if (v34 < v7)
      {
        *(a2 - 4) = v7;
        *(a2 - 3) = v34;
        v35 = *(a2 - 2);
        if (v34 < v35)
        {
          *(a2 - 3) = v35;
          *(a2 - 2) = v34;
          v36 = *(a2 - 1);
          if (v34 < v36)
          {
            *(a2 - 2) = v36;
            *(a2 - 1) = v34;
          }
        }
      }

      v37 = *(a2 - 4);
      if (*a4 >= v37)
      {
        goto LABEL_3;
      }

      *(a2 - 4) = *a4;
      *a4 = v37;
      v21 = *(a2 - 4);
      v38 = *(a2 - 3);
      if (v21 >= v38)
      {
        goto LABEL_3;
      }

      *(a2 - 4) = v38;
      *(a2 - 3) = v21;
LABEL_67:
      v39 = *(a2 - 2);
      if (v21 >= v39)
      {
        goto LABEL_3;
      }

      *(a2 - 3) = v39;
      *(a2 - 2) = v21;
      goto LABEL_69;
    }

    v18 = *(a2 - 2);
    v19 = *(a2 - 1);
    v20 = *(a2 - 3);
    if (v18 >= v19)
    {
      if (v20 >= v18)
      {
        v18 = *(a2 - 3);
      }

      else
      {
        *(a2 - 3) = v18;
        *(a2 - 2) = v20;
        v24 = *(a2 - 1);
        if (v20 < v24)
        {
          *(a2 - 2) = v24;
          *(a2 - 1) = v20;
          v18 = *(a2 - 3);
        }
      }

      goto LABEL_65;
    }

    if (v20 >= v18)
    {
      *(a2 - 2) = v19;
      *(a2 - 1) = v18;
      v18 = *(a2 - 3);
      if (v18 >= v19)
      {
LABEL_65:
        if (*a4 >= v18)
        {
          goto LABEL_3;
        }

        *(a2 - 3) = *a4;
        *a4 = v18;
        v21 = *(a2 - 3);
        goto LABEL_67;
      }

      *(a2 - 2) = v18;
    }

    else
    {
      *(a2 - 1) = v20;
    }

    *(a2 - 3) = v19;
    v18 = v19;
    goto LABEL_65;
  }

  if (v4 < 2)
  {
    goto LABEL_3;
  }

  if (v4 == 2)
  {
    v10 = *(a2 - 1);
    if (*a4 < v10)
    {
      *(a2 - 1) = *a4;
      *a4 = v10;
    }

    goto LABEL_3;
  }

LABEL_17:
  v16 = *(a2 - 2);
  v15 = *(a2 - 1);
  v14 = a2 - 2;
  v17 = *(a2 - 3);
  if (v16 >= v15)
  {
    if (v17 < v16)
    {
      *(a2 - 3) = v16;
      *(a2 - 2) = v17;
      v22 = *(a2 - 1);
      if (v17 < v22)
      {
        *(a2 - 2) = v22;
        *(a2 - 1) = v17;
      }
    }

    goto LABEL_40;
  }

  if (v17 < v16)
  {
    *(a2 - 1) = v17;
LABEL_39:
    *(a2 - 3) = v15;
    goto LABEL_40;
  }

  *(a2 - 2) = v15;
  *(a2 - 1) = v16;
  v25 = *(a2 - 3);
  if (v25 < v15)
  {
    *(a2 - 2) = v25;
    goto LABEL_39;
  }

LABEL_40:
  v26 = a2 - 3;
  if (a2 - 3 == a4)
  {
LABEL_48:
    v33 = 1;
  }

  else
  {
    v27 = 0;
    v28 = a2 - 3;
    while (1)
    {
      v30 = *--v28;
      v29 = v30;
      if (v30 < *(v14 - 1))
      {
        v31 = v26;
        do
        {
          v32 = v14;
          *(v31 - 1) = *(v14 - 1);
          if (v14 == a2)
          {
            break;
          }

          ++v14;
          v31 = v32;
        }

        while (v29 < *v32);
        *(v32 - 1) = v29;
        if (++v27 == 8)
        {
          break;
        }
      }

      v14 = v26;
      v26 = v28;
      if (v28 == a4)
      {
        goto LABEL_48;
      }
    }

    v33 = 0;
    LOBYTE(v26) = v28 == a4;
  }

  v5 = v33 | v26;
  return v5 & 1;
}

uint64_t sub_22E6117E0(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v8 = a2 - a4;
  if (a2 != a4)
  {
    a5 = a3;
    v14 = v8 >> 2;
    v15 = __OFSUB__(v8 >> 2, 2);
    v16 = (v8 >> 2) - 2;
    if (v16 < 0 == v15)
    {
      v17 = v16 >> 1;
      v18 = v17 + 1;
      v19 = &a2[-4 * v17];
      do
      {
        sub_22E611954(a1, a2, a7, v14, v19, v19);
        v19 += 4;
        --v18;
      }

      while (v18);
    }

    if (a4 != a6)
    {
      v20 = a4;
      do
      {
        v22 = *(v20 - 1);
        v20 -= 4;
        v21 = v22;
        v23 = *(a2 - 1);
        if (v22 < v23)
        {
          *v20 = v23;
          *(a2 - 1) = v21;
          sub_22E611954(a1, a2, a7, v14, a1, a2);
        }
      }

      while (v20 != a6);
    }

    if (v14 >= 2)
    {
      v24 = a4 + 4;
      do
      {
        v25 = *(a2 - 1);
        sub_22E611A0C(a1, a2, a7, v14);
        if (v24 == v27)
        {
          *(v27 - 1) = v25;
        }

        else
        {
          *(v27 - 1) = *(v24 - 1);
          *(v24 - 1) = v25;
          sub_22E611A74(a1, a2, v26, v27 - 1, a7, (a2 - (v27 - 4)) >> 2);
        }

        v24 += 4;
      }

      while (v14-- > 2);
    }
  }

  return a5;
}

void sub_22E611954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v6 = a2 - a6;
    v7 = (a4 - 2) >> 1;
    if (v7 >= (a2 - a6) >> 2)
    {
      v8 = v6 >> 1;
      v9 = (v6 >> 1) | 1;
      v10 = a2 - 4 * v9;
      v11 = v8 + 2;
      if (v11 < a4 && *(v10 - 4) < *(v10 - 8))
      {
        v10 -= 4;
        v9 = v11;
      }

      v12 = *(v10 - 4);
      v13 = *(a6 - 4);
      if (v12 >= v13)
      {
        do
        {
          *(a6 - 4) = v12;
          a6 = v10;
          if (v7 < v9)
          {
            break;
          }

          v14 = (2 * v9) | 1;
          v10 = a2 - 4 * v14;
          v9 = 2 * v9 + 2;
          if (v9 >= a4)
          {
            v9 = v14;
          }

          else if (*(v10 - 4) >= *(v10 - 8))
          {
            v9 = v14;
          }

          else
          {
            v10 -= 4;
          }

          v12 = *(v10 - 4);
        }

        while (v12 >= v13);
        *(a6 - 4) = v13;
      }
    }
  }
}

void sub_22E611A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = a2 + 4 * ~v4;
    v6 = (2 * v4) | 1;
    v7 = 2 * v4 + 2;
    if (v7 < a4 && *(v5 - 4) < *(v5 - 8))
    {
      v5 -= 4;
      v6 = v7;
    }

    *(a2 - 4) = *(v5 - 4);
    a2 = v5;
    v4 = v6;
  }

  while (v6 <= (a4 - 2) / 2);
}

void sub_22E611A74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  if (a6 >= 2)
  {
    v6 = (a6 - 2) >> 1;
    v7 = (a2 - 4 * v6);
    v8 = *(v7 - 1);
    v9 = *a4;
    if (v8 < *a4)
    {
      v10 = a4 + 1;
      do
      {
        v11 = v7;
        *(v10 - 1) = v8;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a2 - 4 * v6);
        v8 = *(v7 - 1);
        v10 = v11;
      }

      while (v8 < v9);
      *(v11 - 1) = v9;
    }
  }
}

uint64_t sub_22E611AC8(uint64_t a1)
{
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  *a1 = &unk_28431E2B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 4;
  v33 = 0;
  sub_22E611DF8((a1 + 8), 0x40uLL, &v33, 0);
  v4 = *(a1 + 64);
  v5 = 2 * v4;
  if (2 * v4)
  {
    v6 = *v2;
    v3 = vdupq_n_s64(v5 - 1);
    v7 = xmmword_22E661C80;
    v8 = xmmword_22E661C90;
    v9 = 3;
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v3, v8));
      if (vuzp1_s16(v10, *v3.i8).u8[0])
      {
        *v6 = 1065353216;
      }

      if (vuzp1_s16(v10, *&v3).i8[2])
      {
        *(v6 + ((8 * v4) | 4)) = 1065353216;
      }

      if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v7))).i32[1])
      {
        *(v6 + ((16 * v4) | 8)) = 1065353216;
        v6[6 * v4 + 3] = 1065353216;
      }

      v11 = vdupq_n_s64(4uLL);
      v7 = vaddq_s64(v7, v11);
      v8 = vaddq_s64(v8, v11);
      v6 = (v6 + ((32 * v4) | 0x10));
      v9 += 4;
    }

    while (v9 - ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) != 3);
  }

  if (v4)
  {
    v12 = *v2;
    v3 = vdupq_n_s64(v4 - 1);
    v13 = xmmword_22E661C80;
    v14 = xmmword_22E661C90;
    v15 = vdupq_n_s64(4uLL);
    v16 = 3;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v3, v14));
      if (vuzp1_s16(v17, *v3.i8).u8[0])
      {
        v12[v4] = 1065353216;
      }

      if (vuzp1_s16(v17, *&v3).i8[2])
      {
        v12[3 * v4 + 1] = 1065353216;
      }

      if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v13))).i32[1])
      {
        v12[5 * v4 + 2] = 1065353216;
        v12[7 * v4 + 3] = 1065353216;
      }

      v13 = vaddq_s64(v13, v15);
      v14 = vaddq_s64(v14, v15);
      v12 = (v12 + ((32 * v4) | 0x10));
      v16 += 4;
    }

    while (v16 - ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != 3);
  }

  v32 = 0;
  sub_22E611DF8((a1 + 32), v5 * v4, &v32, *v3.i8);
  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = vdupq_n_s64(v18 - 1);
    v21 = 24 * v18 + 12;
    v22 = (32 * v18) | 0x10;
    v23 = -((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v24 = xmmword_22E661C80;
    v25 = xmmword_22E661C90;
    v26 = 3;
    v27 = (16 * v18) | 8;
    v28 = (8 * v18) | 4;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v20, v25));
      if (vuzp1_s16(v29, *v20.i8).u8[0])
      {
        *v19 = 1065353216;
      }

      if (vuzp1_s16(v29, *&v20).i8[2])
      {
        *(v19 + v28) = 1065353216;
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v24))).i32[1])
      {
        *(v19 + v27) = 1065353216;
        *(v19 + v21) = 1065353216;
      }

      v30 = vdupq_n_s64(4uLL);
      v24 = vaddq_s64(v24, v30);
      v25 = vaddq_s64(v25, v30);
      v19 = (v19 + v22);
      v26 += 4;
    }

    while (v23 + v26 != 3);
  }

  *(a1 + 56) = 0x3BCCCCCD3D4CCCCDLL;
  return a1;
}

void sub_22E611DC8(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E611DF8(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (result[1] - *result) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_22E611E60(result, a2 - v4, a3, a4);
  }
}

void sub_22E611E28(void *a1)
{
  sub_22E6120FC(a1);

  JUMPOUT(0x2318EA430);
}

void sub_22E611E60(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_22E661C90)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_22E661C80)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      sub_22E61047C();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_22E610C54(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_22E661C90)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_22E661C80)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void sub_22E6120A8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_22E60BD80(v2);
    v3 = **a1;

    operator delete(v3);
  }
}