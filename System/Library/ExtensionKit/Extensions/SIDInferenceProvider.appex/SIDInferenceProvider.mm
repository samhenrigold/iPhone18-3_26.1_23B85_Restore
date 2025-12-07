void sub_100001D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_1000034A4(va);
  sub_1000034A4(va1);

  _Unwind_Resume(a1);
}

void sub_100002FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000034A4(v23);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000032A0(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100003318(a1, a2);
  }

  return a1;
}

void sub_1000032FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003318(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10000336C(a1, a2);
  }

  sub_100003354();
}

void sub_10000336C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100003458();
}

void sub_1000033C8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100003424(exception, a1);
}

std::logic_error *sub_100003424(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100003458()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void **sub_1000034A4(void **a1)
{
  sub_1000034E0(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000034E0(int a1, void **__p)
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

void sub_10000352C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1000034E0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_100003588(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_100003600(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100003854(a1, i + 2, (i + 2));
  }

  return a1;
}

void sub_100003600(uint64_t result, size_t __n)
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

      sub_1000036F0(result, prime);
    }
  }
}

void sub_1000036F0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100003458();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **sub_100003854(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100003B74(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    sub_100003AB4();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100004020(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_100003A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10000413C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003B58(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10000413C(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_100003B74(uint64_t a1, uint64_t *a2)
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

  return sub_100003BB4(&v5, a2, v3);
}

unint64_t sub_100003BB4(uint64_t a1, uint64_t *a2, unint64_t a3)
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
      return sub_100003F60(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_100003EB4(a2, a3);
  }

  else
  {
    return sub_100003DBC(a2, a3);
  }
}

unint64_t sub_100003DBC(_DWORD *a1, unint64_t a2)
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

unint64_t sub_100003EB4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_100003F60(void *a1, uint64_t a2)
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

BOOL sub_100004020(uint64_t a1, const void **a2, const void **a3)
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

void *sub_100004098(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000348C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_10000413C(uint64_t a1, void **__p)
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

const void **sub_1000041A0(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_100003B74(a1, a2);
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

  if (!sub_100004020(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t sub_100004420()
{
  v0 = sub_10000E320();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = __chkstk_darwin(v0);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v39 = &v36 - v3;
  v4 = sub_100004EF8(&qword_100018350, &qword_10000F178);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = sub_10000E010();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v36 - v16;
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  sub_10000E1F0();
  if (v20)
  {
    sub_10000DFE0();

    v21 = *(v11 + 56);
    v21(v7, 0, 1, v10);
    (*(v11 + 32))(v9, v7, v10);
    v21(v9, 0, 1, v10);
    v22 = (*(v11 + 48))(v9, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v7, 1, 1, v10);
    sub_1000049E8(v9);
    v23 = *(v11 + 48);
    if (v23(v7, 1, v10) != 1)
    {
      sub_100004F40(v7, &qword_100018350, &qword_10000F178);
    }

    v22 = v23(v9, 1, v10);
  }

  if (v22 == 1)
  {
    sub_100004F40(v9, &qword_100018350, &qword_10000F178);
    return 0;
  }

  v25 = v19;
  (*(v11 + 32))(v19, v9, v10);
  v26 = v39;
  sub_10000E210();
  v28 = v37;
  v27 = v38;
  v29 = (*(v37 + 88))(v26, v38);
  if (v29 == enum case for InferenceModelFormat.espressoV2(_:))
  {
    v40 = sub_10000E1E0();
    v41 = v30;
    v42._countAndFlagsBits = 0x6C65646F6D6C6D2ELL;
    v42._object = 0xE900000000000063;
    sub_10000E4A0(v42);
    sub_10000DFF0();

    sub_10000DFF0();
    v31 = *(v11 + 8);
    v31(v14, v10);
    v32 = sub_10000E000();
  }

  else
  {
    if (v29 != enum case for InferenceModelFormat.precompiled(_:))
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_10000E520(34);
      v44._object = 0x800000010000FF50;
      v44._countAndFlagsBits = 0xD000000000000020;
      sub_10000E4A0(v44);
      v34 = v36;
      sub_10000E210();
      sub_10000E540();
      v35 = *(v28 + 8);
      v35(v34, v27);
      sub_10000E030();

      (*(v11 + 8))(v25, v10);
      v35(v39, v27);
      return 0;
    }

    v40 = sub_10000E1E0();
    v41 = v33;
    v43._countAndFlagsBits = 0x656C646E75622ELL;
    v43._object = 0xE700000000000000;
    sub_10000E4A0(v43);
    sub_10000DFF0();

    v32 = sub_10000E000();
    v31 = *(v11 + 8);
  }

  v31(v17, v10);
  v31(v25, v10);
  return v32;
}

uint64_t sub_1000049E8@<X0>(uint64_t a1@<X8>)
{
  sub_10000E070();
  swift_allocObject();
  sub_10000E060();
  sub_10000E200();
  sub_10000E050();

  if (v11)
  {
    sub_100004EF8(&qword_100018370, &qword_10000F198);
    sub_100004EF8(&qword_100018378, &unk_10000F1A0);
    if (swift_dynamicCast())
    {
      if (*(&v13 + 1))
      {
        sub_100004FA0(&v12, v15);
        sub_100004FB8(v15, v15[3]);
        *(&v13 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_100004FFC(&v12);
        sub_10000E090();
        sub_100004FB8(&v12, *(&v13 + 1));
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v4 = *(AssociatedTypeWitness - 8);
        __chkstk_darwin(AssociatedTypeWitness);
        v6 = v10 - v5 + 24;
        sub_10000E040();
        swift_getAssociatedConformanceWitness();
        sub_10000E080();

        (*(v4 + 8))(v6, AssociatedTypeWitness);
        v7 = sub_10000E010();
        (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
        sub_1000050B0(&v12);
        return sub_1000050B0(v15);
      }
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {

    sub_100004F40(v10, &qword_100018360, &qword_10000F188);
    v12 = 0u;
    v13 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_100004F40(&v12, &qword_100018368, &qword_10000F190);
  v2 = sub_10000E010();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t variable initialization expression of SIDInferenceProvider.workflow@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000E2D0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100004EF8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004F40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004EF8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004FA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100004FB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_100004FFC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100005060(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_1000050B0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_1000050FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v64 = sub_10000E1D0();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = (v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000E2E0();
  v62 = a3;
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v13 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v13)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(v62);
    goto LABEL_10;
  }

  LODWORD(v10) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v10 = v10;
LABEL_10:
  if ((v8 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_75;
  }

  v14 = 4 * v8;
  if (!(4 * v8))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v57 = a2;
  if (v10 % v14)
  {
    v4 = sub_10000E340();
    sub_100005708();
    a2 = swift_allocError();
    a3 = v15;
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_10000E520(81);
    v68._object = 0x800000010000FFA0;
    v68._countAndFlagsBits = 0xD000000000000041;
    sub_10000E4A0(v68);
    if (v9 <= 1)
    {
      if (!v9)
      {
        v16 = BYTE6(v62);
LABEL_29:
        v67 = v16;
        v69._countAndFlagsBits = sub_10000E580();
        sub_10000E4A0(v69);

        v70._countAndFlagsBits = 0x697320776F52202CLL;
        v70._object = 0xEC000000203A657ALL;
        sub_10000E4A0(v70);
        v67 = v14;
        v71._countAndFlagsBits = sub_10000E580();
        sub_10000E4A0(v71);

        v22 = v66;
        *a3 = v65;
        *(a3 + 8) = v22;
        (*(*(v4 - 8) + 104))(a3, enum case for UseCaseExecutionError.validationFailure(_:), v4);
        swift_willThrow();
        return v23;
      }

      goto LABEL_27;
    }

    v16 = 0;
    if (v9 != 2)
    {
      goto LABEL_29;
    }

    v19 = *(v57 + 16);
    v18 = *(v57 + 24);
    v13 = __OFSUB__(v18, v19);
    v16 = v18 - v19;
    if (!v13)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v9 > 1)
  {
LABEL_23:
    if (v9 == 2)
    {
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      v13 = __OFSUB__(v20, v21);
      v17 = v20 - v21;
      if (v13)
      {
        __break(1u);
LABEL_27:
        LODWORD(v16) = HIDWORD(v57) - v57;
        if (!__OFSUB__(HIDWORD(v57), v57))
        {
          v16 = v16;
          goto LABEL_29;
        }

        goto LABEL_80;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_33:
    if (((v17 / v14) & 0x8000000000000000) == 0)
    {
      v52[1] = v4;
      if (!(v17 / v14))
      {
        return &_swiftEmptyArrayStorage;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v24 = 0;
        v25 = 0;
        v60 = enum case for InferenceData.float32(_:);
        v58 = v61 + 32;
        v59 = (v61 + 104);
        v23 = &_swiftEmptyArrayStorage;
        v53 = v17 / v14;
        v54 = v8;
        while (1)
        {
          v55 = v23;
          v56 = v25;
          if (v8)
          {
            break;
          }

          v28 = &_swiftEmptyArrayStorage;
LABEL_62:
          v46 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_100005D6C(0, v46[2] + 1, 1, v46);
          }

          v47 = v53;
          v8 = v54;
          v48 = v56;
          v50 = v46[2];
          v49 = v46[3];
          v23 = v46;
          if (v50 >= v49 >> 1)
          {
            v51 = v54;
            v23 = sub_100005D6C((v49 > 1), v50 + 1, 1, v46);
            v8 = v51;
          }

          v25 = v48 + 1;
          v23[2] = v50 + 1;
          v23[v50 + 4] = v28;
          if (v25 == v47)
          {
            return v23;
          }
        }

        v26 = v8;
        v27 = v24;
        v28 = &_swiftEmptyArrayStorage;
        while (1)
        {
          v24 = v27 + 4;
          if (__OFADD__(v27, 4))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          if (v24 < v27)
          {
            goto LABEL_71;
          }

          v29 = sub_10000E020();
          v30 = v29;
          v32 = v31;
          v33 = v31 >> 62;
          if ((v31 >> 62) > 1)
          {
            break;
          }

          if (v33)
          {
            if (v29 > v29 >> 32)
            {
              goto LABEL_72;
            }

            v40 = sub_10000DFA0();
            if (!v40)
            {
              goto LABEL_84;
            }

            v41 = v40;
            v42 = sub_10000DFC0();
            if (__OFSUB__(v30, v42))
            {
              goto LABEL_74;
            }

            v39 = (v30 - v42 + v41);
            result = sub_10000DFB0();
            if (!v39)
            {
              goto LABEL_85;
            }

LABEL_53:
            v34 = *v39;
            goto LABEL_55;
          }

          v34 = v29;
LABEL_55:
          *v63 = v34;
          (*v59)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_100005EA0(0, v28[2] + 1, 1, v28);
          }

          v45 = v28[2];
          v44 = v28[3];
          if (v45 >= v44 >> 1)
          {
            v28 = sub_100005EA0((v44 > 1), v45 + 1, 1, v28);
          }

          sub_100006078(v30, v32);
          v28[2] = v45 + 1;
          (*(v61 + 32))(v28 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v45, v63, v64);
          v27 += 4;
          if (!--v26)
          {
            goto LABEL_62;
          }
        }

        if (v33 != 2)
        {
          v34 = 0;
          goto LABEL_55;
        }

        v35 = *(v29 + 16);
        v36 = sub_10000DFA0();
        if (!v36)
        {
          goto LABEL_82;
        }

        v37 = v36;
        v38 = sub_10000DFC0();
        if (__OFSUB__(v35, v38))
        {
          goto LABEL_73;
        }

        v39 = (v35 - v38 + v37);
        sub_10000DFB0();
        if (!v39)
        {
          goto LABEL_83;
        }

        goto LABEL_53;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  if (!v9)
  {
    v17 = BYTE6(v62);
    goto LABEL_33;
  }

  LODWORD(v17) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v17 = v17;
    goto LABEL_33;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  sub_10000DFB0();
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_10000DFB0();
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

unint64_t sub_100005708()
{
  result = qword_100018380;
  if (!qword_100018380)
  {
    sub_10000E340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018380);
  }

  return result;
}

void *sub_100005760(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v64 = sub_10000E1D0();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = (v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000E2E0();
  v62 = a3;
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v13 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v13)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(v62);
    goto LABEL_10;
  }

  LODWORD(v10) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v10 = v10;
LABEL_10:
  if ((v8 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_75;
  }

  v14 = 4 * v8;
  if (!(4 * v8))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v57 = a2;
  if (v10 % v14)
  {
    v4 = sub_10000E340();
    sub_100005708();
    a2 = swift_allocError();
    a3 = v15;
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_10000E520(81);
    v68._object = 0x800000010000FFA0;
    v68._countAndFlagsBits = 0xD000000000000041;
    sub_10000E4A0(v68);
    if (v9 <= 1)
    {
      if (!v9)
      {
        v16 = BYTE6(v62);
LABEL_29:
        v67 = v16;
        v69._countAndFlagsBits = sub_10000E580();
        sub_10000E4A0(v69);

        v70._countAndFlagsBits = 0x697320776F52202CLL;
        v70._object = 0xEC000000203A657ALL;
        sub_10000E4A0(v70);
        v67 = v14;
        v71._countAndFlagsBits = sub_10000E580();
        sub_10000E4A0(v71);

        v22 = v66;
        *a3 = v65;
        *(a3 + 8) = v22;
        (*(*(v4 - 8) + 104))(a3, enum case for UseCaseExecutionError.validationFailure(_:), v4);
        swift_willThrow();
        return v23;
      }

      goto LABEL_27;
    }

    v16 = 0;
    if (v9 != 2)
    {
      goto LABEL_29;
    }

    v19 = *(v57 + 16);
    v18 = *(v57 + 24);
    v13 = __OFSUB__(v18, v19);
    v16 = v18 - v19;
    if (!v13)
    {
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v9 > 1)
  {
LABEL_23:
    if (v9 == 2)
    {
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      v13 = __OFSUB__(v20, v21);
      v17 = v20 - v21;
      if (v13)
      {
        __break(1u);
LABEL_27:
        LODWORD(v16) = HIDWORD(v57) - v57;
        if (!__OFSUB__(HIDWORD(v57), v57))
        {
          v16 = v16;
          goto LABEL_29;
        }

        goto LABEL_80;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_33:
    if (((v17 / v14) & 0x8000000000000000) == 0)
    {
      v52[1] = v4;
      if (!(v17 / v14))
      {
        return &_swiftEmptyArrayStorage;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v24 = 0;
        v25 = 0;
        v60 = enum case for InferenceData.int32(_:);
        v58 = v61 + 32;
        v59 = (v61 + 104);
        v23 = &_swiftEmptyArrayStorage;
        v53 = v17 / v14;
        v54 = v8;
        while (1)
        {
          v55 = v23;
          v56 = v25;
          if (v8)
          {
            break;
          }

          v28 = &_swiftEmptyArrayStorage;
LABEL_62:
          v46 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_100005D6C(0, v46[2] + 1, 1, v46);
          }

          v47 = v53;
          v8 = v54;
          v48 = v56;
          v50 = v46[2];
          v49 = v46[3];
          v23 = v46;
          if (v50 >= v49 >> 1)
          {
            v51 = v54;
            v23 = sub_100005D6C((v49 > 1), v50 + 1, 1, v46);
            v8 = v51;
          }

          v25 = v48 + 1;
          v23[2] = v50 + 1;
          v23[v50 + 4] = v28;
          if (v25 == v47)
          {
            return v23;
          }
        }

        v26 = v8;
        v27 = v24;
        v28 = &_swiftEmptyArrayStorage;
        while (1)
        {
          v24 = v27 + 4;
          if (__OFADD__(v27, 4))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          if (v24 < v27)
          {
            goto LABEL_71;
          }

          v29 = sub_10000E020();
          v30 = v29;
          v32 = v31;
          v33 = v31 >> 62;
          if ((v31 >> 62) > 1)
          {
            break;
          }

          if (v33)
          {
            if (v29 > v29 >> 32)
            {
              goto LABEL_72;
            }

            v40 = sub_10000DFA0();
            if (!v40)
            {
              goto LABEL_84;
            }

            v41 = v40;
            v42 = sub_10000DFC0();
            if (__OFSUB__(v30, v42))
            {
              goto LABEL_74;
            }

            v39 = (v30 - v42 + v41);
            result = sub_10000DFB0();
            if (!v39)
            {
              goto LABEL_85;
            }

LABEL_53:
            v34 = *v39;
            goto LABEL_55;
          }

          v34 = v29;
LABEL_55:
          *v63 = v34;
          (*v59)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_100005EA0(0, v28[2] + 1, 1, v28);
          }

          v45 = v28[2];
          v44 = v28[3];
          if (v45 >= v44 >> 1)
          {
            v28 = sub_100005EA0((v44 > 1), v45 + 1, 1, v28);
          }

          sub_100006078(v30, v32);
          v28[2] = v45 + 1;
          (*(v61 + 32))(v28 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v45, v63, v64);
          v27 += 4;
          if (!--v26)
          {
            goto LABEL_62;
          }
        }

        if (v33 != 2)
        {
          v34 = 0;
          goto LABEL_55;
        }

        v35 = *(v29 + 16);
        v36 = sub_10000DFA0();
        if (!v36)
        {
          goto LABEL_82;
        }

        v37 = v36;
        v38 = sub_10000DFC0();
        if (__OFSUB__(v35, v38))
        {
          goto LABEL_73;
        }

        v39 = (v35 - v38 + v37);
        sub_10000DFB0();
        if (!v39)
        {
          goto LABEL_83;
        }

        goto LABEL_53;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  if (!v9)
  {
    v17 = BYTE6(v62);
    goto LABEL_33;
  }

  LODWORD(v17) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v17 = v17;
    goto LABEL_33;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  sub_10000DFB0();
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_10000DFB0();
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

void *sub_100005D6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004EF8(&qword_100018388, &qword_10000F1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004EF8(&qword_100018390, &qword_10000F1B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100005EA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004EF8(&qword_100018398, &qword_10000F1C0);
  v10 = *(sub_10000E1D0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000E1D0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100006078(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000060D0()
{
  v0 = sub_10000E3F0();
  sub_10000DE20(v0, qword_1000183A0);
  sub_10000DD8C(v0, qword_1000183A0);
  return sub_10000E3E0();
}

uint64_t sub_100006188()
{
  v0 = sub_10000E160();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t SIDInferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v1 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
  v2 = sub_10000E2D0();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t SIDInferenceProvider.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v1 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
  v2 = sub_10000E2D0();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t _s20SIDInferenceProviderAAC15transitionAsset_2toy20ModelManagerServices09InferencebD10DescriptorV_AE9LoadStateOtYaAE0I5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = v3;
  v4[8] = a3;
  v4[5] = a1;
  v4[6] = a2;
  sub_100004EF8(&qword_1000183C0, &qword_10000F1D8);
  v4[9] = swift_task_alloc();
  v5 = sub_10000E0F0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_10000E180();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100006408, v3, 0);
}

uint64_t sub_100006408()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v2 + 16))(v1, v0[6], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for LoadState.unloaded(_:))
  {
    v5 = v0[7];
    v6 = *(v5 + 112);
    v7 = v5;
    if (v6)
    {
      [objc_opt_self() releaseESOP:v6];
      v7 = v0[7];
    }

    v8 = v0[9];
    *(v5 + 112) = 0;
    v9 = sub_10000E2D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
    swift_beginAccess();
    sub_10000D190(v8, v7 + v10);
    swift_endAccess();

    v11 = v0[1];
    goto LABEL_10;
  }

  if (v4 != enum case for LoadState.loaded(_:))
  {
    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[8];
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    (*(v20 + 104))(v21, enum case for InferenceError.unsupportedRequestType(_:), v19);
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();
    (*(v17 + 8))(v16, v18);

    v11 = v0[1];
LABEL_10:

    return v11();
  }

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_10000672C;
  v13 = v0[12];
  v14 = v0[5];

  return sub_10000696C(v14, v13);
}

uint64_t sub_10000672C()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1000068D4;
  }

  else
  {
    v4 = sub_100006858;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100006858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000068D4()
{
  (*(v0[11] + 32))(v0[8], v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10000696C(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[8] = a2;
  v3[6] = a1;
  v4 = sub_10000E1C0();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_10000E240();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100006A98, v2, 0);
}

uint64_t sub_100006A98()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  *(v0 + 192) = enum case for RequestType.loadInferenceAsset(_:);
  v3 = *(v2 + 104);
  *(v0 + 128) = v3;
  *(v0 + 136) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_100006B70;
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);

  return static RequestContext.from(_:correlationID:)(v5, v6, 0, 0);
}

uint64_t sub_100006B70()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 56);

  v6 = *(v3 + 8);
  *(v1 + 152) = v6;
  *(v1 + 160) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  return _swift_task_switch(sub_100006CF0, v5, 0);
}

uint64_t sub_100006CF0()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  (*(v0 + 128))(*(v0 + 88), *(v0 + 192), *(v0 + 72));
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  v6 = type metadata accessor for SIDInferenceProvider(0);
  v7 = sub_10000D200(&qword_1000183E0, type metadata accessor for SIDInferenceProvider, &protocol conformance descriptor for SIDInferenceProvider);
  *v5 = v0;
  v5[1] = sub_100006E38;
  v8 = *(v0 + 120);
  v9 = *(v0 + 88);

  return PerformanceTrackable.trackPerformance<A>(requestType:requestContext:operation:)(v7, v9, v8, &unk_10000F5F0, v4, v6, &type metadata for () + 8, v7);
}

uint64_t sub_100006E38()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 72);
  *(*v1 + 184) = v0;

  v3(v4, v5);

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_100007088;
  }

  else
  {
    v7 = sub_100006FEC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100006FEC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100007088()
{
  v1 = v0[8];
  (*(v0[14] + 8))(v0[15], v0[13]);
  swift_getErrorValue();
  sub_10000E5B0();
  sub_10000D068(&_swiftEmptyArrayStorage);
  sub_10000E0E0();
  v2 = enum case for InferenceError.loadFailed(_:);
  v3 = sub_10000E0F0();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100007228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  v6 = sub_10000E220();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = sub_10000E320();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_100004EF8(&qword_1000183C0, &qword_10000F1D8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_10000E2D0();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  sub_100004EF8(&qword_100018658, &qword_10000F5F8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_10000747C, a4, 0);
}

uint64_t sub_10000747C()
{
  v1 = v0[27];
  v0[28] = sub_10000E170();
  v0[29] = v2;
  sub_10000E1A0();
  v0[30] = sub_10000E190();
  v3 = sub_10000E240();
  v0[31] = v3;
  v4 = *(v3 - 8);
  v0[32] = v4;
  v5 = *(v4 + 56);
  v0[33] = v5;
  v0[34] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1000075DC;
  v8 = v0[27];

  return ((&async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:) + v6))(v8);
}

uint64_t sub_1000075DC(uint64_t a1)
{
  v3 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v4 = v3[12];
    sub_100004F40(v3[27], &qword_100018658, &qword_10000F5F8);

    v5 = sub_10000869C;
  }

  else
  {
    v4 = v3[12];
    sub_100004F40(v3[27], &qword_100018658, &qword_10000F5F8);

    v5 = sub_10000779C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000779C()
{
  v19 = v0;
  if (qword_100018348 != -1)
  {
    swift_once();
  }

  v1 = sub_10000E3F0();
  v0[38] = sub_10000DD8C(v1, qword_1000183A0);

  v2 = sub_10000E3D0();
  v3 = sub_10000E4F0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000C56C(v5, v4, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "[SIDInferenceProvider][loadAsset] Fetching workflow for asset identifier %s", v6, 0xCu);
    sub_1000050B0(v7);
  }

  v8 = v0[33];
  v9 = v0[31];
  v10 = v0[26];
  (*(v0[32] + 16))(v10, v0[11], v9);
  v8(v10, 0, 1, v9);
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = sub_1000079D8;
  v12 = v0[36];
  v13 = v0[28];
  v14 = v0[29];
  v15 = v0[26];
  v16 = v0[22];

  return static SystemDatabase.queryActiveWorkflowByAsset(_:using:requestContext:)(v16, v13, v14, v12, v15);
}

uint64_t sub_1000079D8()
{
  v2 = *v1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 96);
  if (v0)
  {

    sub_100004F40(v3, &qword_100018658, &qword_10000F5F8);
    v5 = sub_10000879C;
  }

  else
  {
    sub_100004F40(v3, &qword_100018658, &qword_10000F5F8);

    v5 = sub_100007BAC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100007BAC()
{
  v76 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F40(v3, &qword_1000183C0, &qword_10000F1D8);
    v4 = sub_10000E0F0();
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_allocError();
    v6 = v5;
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    (*(*(v4 - 8) + 104))(v6, enum case for InferenceError.loadFailed(_:), v4);
    swift_willThrow();
  }

  else
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 168);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    v11 = *(v0 + 112);
    v70 = *(v0 + 104);
    v12 = *(v0 + 96);
    (*(v2 + 32))(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    (*(v2 + 56))(v8, 0, 1, v1);
    v13 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
    swift_beginAccess();
    sub_10000D190(v8, v12 + v13);
    swift_endAccess();
    sub_10000E2C0();
    sub_10000E210();
    v14 = *(v11 + 8);
    v14(v10, v70);
    sub_10000E2C0();
    v15 = sub_100004420();
    v17 = v16;
    v14(v9, v70);
    if (v17)
    {

      v18 = sub_10000E3D0();
      v19 = sub_10000E4F0();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v74 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_10000C56C(v15, v17, &v74);
        _os_log_impl(&_mh_execute_header, v18, v19, "[SIDInferenceProvider][loadAsset] Retrieved model path: %s", v20, 0xCu);
        sub_1000050B0(v21);
      }

      v22 = [objc_opt_self() defaultManager];
      v23 = sub_10000E430();
      v24 = [v22 fileExistsAtPath:v23];

      if (v24)
      {
        v25 = *(v0 + 152);
        v27 = *(v0 + 136);
        v26 = *(v0 + 144);
        v67 = v15;
        v28 = sub_10000E430();
        (*(v26 + 104))(v25, enum case for InferenceModelFormat.precompiled(_:), v27);
        sub_10000D200(&qword_100018660, &type metadata accessor for InferenceModelFormat, &protocol conformance descriptor for InferenceModelFormat);
        sub_10000E4D0();
        sub_10000E4D0();
        if (*(v0 + 40) == *(v0 + 56) && *(v0 + 48) == *(v0 + 64))
        {
          v29 = 1;
        }

        else
        {
          v29 = sub_10000E590();
        }

        v42 = *(v0 + 144);
        v43 = *(v0 + 152);
        v44 = *(v0 + 136);
        v45 = objc_opt_self();
        v73 = *(v42 + 8);
        v73(v43, v44);

        *(v0 + 72) = 0;
        v46 = [v45 compileAndRetrieveESOP:v28 alreadyCompiled:v29 & 1 error:v0 + 72];

        v47 = *(v0 + 72);
        if (v46)
        {
          v49 = *(v0 + 192);
          v48 = *(v0 + 200);
          v50 = *(v0 + 184);
          v51 = *(v0 + 160);
          v52 = *(v0 + 136);
          v53 = *(v0 + 96);

          v73(v51, v52);
          (*(v49 + 8))(v48, v50);
          *(v53 + 112) = v46;

          v54 = *(v0 + 8);
          goto LABEL_17;
        }

        v55 = *(v0 + 192);
        v64 = *(v0 + 184);
        v66 = *(v0 + 200);
        v56 = *(v0 + 160);
        v62 = *(v0 + 136);
        v57 = v47;
        sub_10000DFD0();

        swift_willThrow();

        v58 = sub_10000E0F0();
        sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
        swift_allocError();
        v60 = v59;
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_10000E520(33);

        v74 = 0xD00000000000001FLL;
        v75 = 0x80000001000102E0;
        v80._countAndFlagsBits = v67;
        v80._object = v17;
        sub_10000E4A0(v80);

        sub_10000D068(&_swiftEmptyArrayStorage);
        sub_10000E0E0();
        (*(*(v58 - 8) + 104))(v60, enum case for InferenceError.loadFailed(_:), v58);
        swift_willThrow();

        v73(v56, v62);
        (*(v55 + 8))(v66, v64);
      }

      else
      {
        v37 = *(v0 + 192);
        v69 = *(v0 + 184);
        v72 = *(v0 + 200);
        v38 = *(v0 + 144);
        v63 = *(v0 + 136);
        v65 = *(v0 + 160);
        v39 = sub_10000E0F0();
        sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
        swift_allocError();
        v41 = v40;
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_10000E520(23);

        v74 = 0xD000000000000014;
        v75 = 0x80000001000102C0;
        v78._countAndFlagsBits = v15;
        v78._object = v17;
        sub_10000E4A0(v78);

        v79._countAndFlagsBits = 46;
        v79._object = 0xE100000000000000;
        sub_10000E4A0(v79);
        sub_10000D068(&_swiftEmptyArrayStorage);
        sub_10000E0E0();
        (*(*(v39 - 8) + 104))(v41, enum case for InferenceError.loadFailed(_:), v39);
        swift_willThrow();

        (*(v38 + 8))(v65, v63);
        (*(v37 + 8))(v72, v69);
      }
    }

    else
    {
      v30 = *(v0 + 192);
      v68 = *(v0 + 184);
      v71 = *(v0 + 200);
      v31 = *(v0 + 160);
      v33 = *(v0 + 136);
      v32 = *(v0 + 144);
      v34 = sub_10000E0F0();
      sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
      swift_allocError();
      v36 = v35;
      sub_10000D068(&_swiftEmptyArrayStorage);
      sub_10000E0E0();
      (*(*(v34 - 8) + 104))(v36, enum case for InferenceError.loadFailed(_:), v34);
      swift_willThrow();

      (*(v32 + 8))(v31, v33);
      (*(v30 + 8))(v71, v68);
    }
  }

  v54 = *(v0 + 8);
LABEL_17:

  return v54();
}

uint64_t sub_10000869C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000879C()
{
  (*(v0[24] + 56))(v0[22], 1, 1, v0[23]);
  sub_100004F40(v0[22], &qword_1000183C0, &qword_10000F1D8);
  v1 = sub_10000E0F0();
  sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_allocError();
  v3 = v2;
  sub_10000D068(&_swiftEmptyArrayStorage);
  sub_10000E0E0();
  (*(*(v1 - 8) + 104))(v3, enum case for InferenceError.loadFailed(_:), v1);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t _s20SIDInferenceProviderAAC14requestOneShot10clientData13configuration20ModelManagerServices06ClientG0VAH_AF09InferenceB20RequestConfigurationVtYaAF0M5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[8] = a4;
  v5[5] = a1;
  v5[6] = a2;
  v6 = sub_10000E1C0();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_10000E240();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_10000E270();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  sub_100004EF8(&qword_1000183D0, &qword_10000F1F0);
  v5[18] = swift_task_alloc();
  v9 = sub_10000E370();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100008BCC, v4, 0);
}

uint64_t sub_100008BCC()
{
  v0[22] = sub_10000E0B0();
  v0[23] = v1;
  if (v1 >> 60 == 15)
  {
    v2 = v0[8];
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    v3 = enum case for InferenceError.invalidClientData(_:);
    v4 = sub_10000E0F0();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_10000DF60();
    swift_allocObject();
    sub_10000DF50();
    sub_10000D200(&qword_1000183D8, &type metadata accessor for EnhancedUseCaseRequest, &protocol conformance descriptor for EnhancedUseCaseRequest);
    sub_10000DF40();
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[17];
    v12 = v0[10];
    v13 = v0[9];
    v22 = v0[11];
    v23 = v0[7];

    (*(v8 + 56))(v10, 0, 1, v9);
    (*(v8 + 32))(v7, v10, v9);
    sub_10000E360();
    sub_10000E350();
    (*(v12 + 104))(v22, enum case for RequestType.requestInferenceOneShot(_:), v13);
    v14 = swift_task_alloc();
    v0[24] = v14;
    *(v14 + 16) = v23;
    *(v14 + 24) = v11;
    v15 = swift_task_alloc();
    v0[25] = v15;
    v16 = type metadata accessor for SIDInferenceProvider(0);
    v17 = sub_10000E0D0();
    v18 = sub_10000D200(&qword_1000183E0, type metadata accessor for SIDInferenceProvider, &protocol conformance descriptor for SIDInferenceProvider);
    *v15 = v0;
    v15[1] = sub_1000090D8;
    v19 = v0[14];
    v20 = v0[11];
    v21 = v0[5];

    return PerformanceTrackable.trackPerformance<A>(requestType:requestContext:operation:)(v21, v20, v19, &unk_10000F200, v14, v16, v17, v18);
  }
}

uint64_t sub_1000090D8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[7];
  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = sub_100009380;
  }

  else
  {
    v7 = sub_100009270;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100009270()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  sub_10000D248(v0[22], v0[23]);
  (*(v8 + 8))(v7, v9);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100009380()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v14 = v0[19];
  v15 = v0[21];
  v5 = v0[16];
  v16 = v0[15];
  v17 = v0[17];
  v6 = v0[13];
  v12 = v0[12];
  v13 = v0[14];
  v7 = v0[8];
  sub_10000E520(25);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v19._object = 0x8000000100010090;
  v19._countAndFlagsBits = 0xD000000000000017;
  sub_10000E4A0(v19);
  v0[4] = v1;
  sub_100004EF8(&qword_100018358, &qword_10000F180);
  sub_10000E540();
  sub_10000D068(&_swiftEmptyArrayStorage);
  sub_10000E0E0();
  v8 = enum case for InferenceError.internalError(_:);
  v9 = sub_10000E0F0();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();
  sub_10000D248(v2, v3);

  (*(v6 + 8))(v13, v12);
  (*(v4 + 8))(v15, v14);
  (*(v5 + 8))(v17, v16);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000095F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v5 = sub_10000E2F0();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_10000E380();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = sub_10000E1B0();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = sub_10000E3C0();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v9 = sub_10000E290();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v10 = sub_10000E3B0();
  v3[28] = v10;
  v3[29] = *(v10 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  sub_100004EF8(&qword_100018630, &qword_10000F5C8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_100004EF8(&qword_100018638, &qword_10000F5D0);
  v3[34] = swift_task_alloc();
  sub_100004EF8(&qword_1000183C0, &qword_10000F1D8);
  v3[35] = swift_task_alloc();
  v11 = sub_10000E2D0();
  v3[36] = v11;
  v3[37] = *(v11 - 8);
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1000099EC, a2, 0);
}

uint64_t sub_1000099EC()
{
  v1 = v0;
  v2 = v0[37];
  v3 = v1[35];
  v4 = v1[36];
  v5 = v1[9];
  v6 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
  swift_beginAccess();
  sub_10000DA8C(v5 + v6, v3);
  v171 = v1;
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    sub_100004F40(v1[35], &qword_1000183C0, &qword_10000F1D8);
    v7 = sub_10000E0F0();
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_allocError();
    v9 = v8;
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    (*(*(v7 - 8) + 104))(v9, enum case for InferenceError.loadFailed(_:), v7);
    swift_willThrow();
    goto LABEL_7;
  }

  v10 = v1[34];
  (*(v1[37] + 32))(v1[38], v1[35], v1[36]);
  sub_10000E260();
  v11 = sub_10000E310();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F40(v1[34], &qword_100018638, &qword_10000F5D0);
    v16 = v1[37];
    v15 = v1[38];
    v17 = v1[36];
    v18 = sub_10000E0F0();
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_allocError();
    v20 = v19;
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    v21 = &enum case for InferenceError.invalidClientData(_:);
LABEL_6:
    (*(*(v18 - 8) + 104))(v20, *v21, v18);
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    goto LABEL_7;
  }

  sub_10000E2A0();
  sub_10000E300();
  v13 = v1[34];
  v14 = (v12 + 8);
  v24 = v1[9];

  (*v14)(v13, v11);
  v25 = *(v24 + 112);
  if (!v25)
  {
    v16 = v1[37];
    v15 = v1[38];
    v17 = v1[36];

    v18 = sub_10000E0F0();
    sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_allocError();
    v20 = v112;
    sub_10000D068(&_swiftEmptyArrayStorage);
    sub_10000E0E0();
    v21 = &enum case for InferenceError.loadFailed(_:);
    goto LABEL_6;
  }

  v26 = objc_opt_self();
  isa = sub_10000E400().super.isa;

  v1[7] = 0;
  v28 = [v26 executeESOP:v25 inputData:isa error:v1 + 7];

  v29 = v1[7];
  v30 = v1[38];
  if (v28)
  {
    v154 = v1[33];
    v148 = v1[32];
    v31 = v1[29];
    v32 = v1;
    v33 = v1[16];
    v34 = v32[12];
    v35 = sub_10000E410();
    v36 = v29;

    v37 = sub_10000DAFC(&_swiftEmptyArrayStorage);
    v38 = sub_10000E2B0();
    v39 = 0;
    v40 = *(v38 + 64);
    v144 = v38 + 64;
    v152 = v38;
    v41 = -1;
    v42 = -1 << *(v38 + 32);
    if (-v42 < 64)
    {
      v41 = ~(-1 << -v42);
    }

    v43 = v41 & v40;
    v44 = (63 - v42) >> 6;
    v159 = (v31 + 32);
    v151 = (v33 + 88);
    v150 = enum case for InferenceFeatureDataType.float32(_:);
    v145 = enum case for InferenceFeatureDataType.int32(_:);
    v149 = (v34 + 8);
    v146 = v44;
    v147 = v31;
    v153 = (v31 + 8);
    v156 = v35;
    if ((v41 & v40) != 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      if (v44 <= v39 + 1)
      {
        v47 = v39 + 1;
      }

      else
      {
        v47 = v44;
      }

      v46 = v171;
      do
      {
        v45 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
          goto LABEL_65;
        }

        if (v45 >= v44)
        {
          v158 = v47 - 1;
          v108 = v171[32];
          v109 = sub_100004EF8(&qword_100018640, &qword_10000F5D8);
          (*(*(v109 - 8) + 56))(v108, 1, 1, v109);
          v43 = 0;
          goto LABEL_26;
        }

        v43 = *(v144 + 8 * v45);
        ++v39;
      }

      while (!v43);
      v166 = v37;
LABEL_25:
      v48 = v46[31];
      v49 = v46[32];
      v50 = v46[28];
      v51 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v52 = v51 | (v45 << 6);
      v53 = (*(v152 + 48) + 16 * v52);
      v54 = *v53;
      v55 = v53[1];
      (*(v147 + 16))(v48, *(v152 + 56) + *(v147 + 72) * v52, v50);
      v56 = sub_100004EF8(&qword_100018640, &qword_10000F5D8);
      v57 = *(v56 + 48);
      *v49 = v54;
      *(v148 + 8) = v55;
      (*(v147 + 32))(&v49[v57], v48, v50);
      v58 = *(*(v56 - 8) + 56);
      v59 = v56;
      v46 = v171;
      v58(v49, 0, 1, v59);

      v158 = v45;
      v35 = v156;
      v44 = v146;
      v37 = v166;
LABEL_26:
      v60 = v46[33];
      sub_10000DC14(v46[32], v60);
      v61 = sub_100004EF8(&qword_100018640, &qword_10000F5D8);
      if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
      {
        v123 = v46[37];
        v122 = v46[38];
        v124 = v46[36];
        v125 = v46;
        v126 = v46[24];
        v127 = v125[23];
        v128 = v125[20];
        v129 = v125[21];
        v160 = v125[22];
        v163 = v125[19];

        (*(v123 + 16))(v126, v122, v124);
        (*(v127 + 104))(v126, enum case for Workflow.inference(_:), v160);
        (*(v128 + 104))(v129, enum case for CacheStatus.miss(_:), v163);
        sub_10000E280();
        sub_10000DF90();
        swift_allocObject();
        sub_10000DF80();
        sub_10000D200(&qword_100018648, &type metadata accessor for UseCaseResponse, &protocol conformance descriptor for UseCaseResponse);
        sub_10000DF70();
        v131 = v125[37];
        v130 = v125[38];
        v169 = v125[36];
        v142 = v125[26];
        v141 = v125[27];
        v143 = v125[25];

        sub_10000E0C0();
        (*(v142 + 8))(v141, v143);
        (*(v131 + 8))(v130, v169);

        v22 = v125[1];
        goto LABEL_8;
      }

      v62 = v46[33];
      v63 = *v62;
      v64 = *(v154 + 8);
      (*v159)(v46[30], v62 + *(v61 + 48), v46[28]);
      if (!*(v35 + 16) || (v65 = sub_10000CFE4(v63, v64, sub_10000CB14), (v66 & 1) == 0))
      {
        v168 = v46[38];
        v116 = v46[37];
        v165 = v46[36];
        v117 = v46[30];
        v118 = v46[28];

        v119 = sub_10000E0F0();
        sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
        swift_allocError();
        v121 = v120;
        sub_10000E520(18);

        v175._countAndFlagsBits = v63;
        v175._object = v64;
        sub_10000E4A0(v175);

        sub_10000D068(&_swiftEmptyArrayStorage);
        sub_10000E0E0();
        (*(*(v119 - 8) + 104))(v121, enum case for InferenceError.invalidClientData(_:), v119);
        swift_willThrow();

        (*v153)(v117, v118);
        (*(v116 + 8))(v168, v165);
        goto LABEL_7;
      }

      v167 = v63;
      v164 = v64;
      v67 = v46[18];
      v68 = v46[15];
      v69 = v35;
      v70 = (*(v35 + 56) + 16 * v65);
      v72 = *v70;
      v71 = v70[1];
      sub_10000DC84(*v70, v71);
      sub_10000E3A0();
      v73 = (*v151)(v67, v68);
      v162 = v71;
      if (v73 == v150)
      {
        v74 = v46[14];
        sub_10000E390();
        v75 = v72;
        v76 = sub_1000050FC(v74, v72, v71);
        (*v149)(v46[14], v46[11]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v172 = v37;
        v78 = sub_10000CFE4(v167, v164, sub_10000CB14);
        v80 = *(v37 + 16);
        v81 = (v79 & 1) == 0;
        v82 = __OFADD__(v80, v81);
        v83 = v80 + v81;
        if (!v82)
        {
          v84 = v79;
          v35 = v69;
          if (*(v37 + 24) >= v83)
          {
            v85 = v164;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v110 = v78;
              sub_10000CE74();
              v78 = v110;
            }
          }

          else
          {
            sub_10000CBCC(v83, isUniquelyReferenced_nonNull_native);
            v85 = v164;
            v78 = sub_10000CFE4(v167, v164, sub_10000CB14);
            if ((v84 & 1) != (v86 & 1))
            {
              goto LABEL_61;
            }
          }

          v98 = v171[30];
          v99 = v171[28];
          if (v84)
          {
            v100 = v78;

            v37 = v172;
            *(v172[7] + 8 * v100) = v76;
            v35 = v156;

            v101 = v75;
            goto LABEL_50;
          }

          v37 = v172;
          v172[(v78 >> 6) + 8] |= 1 << v78;
          v102 = (v172[6] + 16 * v78);
          *v102 = v167;
          v102[1] = v85;
          *(v172[7] + 8 * v78) = v76;
          sub_100006078(v75, v162);
          (*v153)(v98, v99);
          v103 = v172[2];
          v82 = __OFADD__(v103, 1);
          v104 = v103 + 1;
          if (!v82)
          {
LABEL_53:
            *(v37 + 16) = v104;
            v39 = v158;
            if (!v43)
            {
              continue;
            }

LABEL_16:
            v166 = v37;
            v45 = v39;
            v46 = v171;
            goto LABEL_25;
          }

LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v73 != v145)
      {
        v132 = v46[37];
        v157 = v46[38];
        v161 = v46[36];
        v133 = v46[30];
        v155 = v46[28];
        v134 = v46[17];
        v170 = v46[18];
        v135 = v171[16];
        v136 = v171[15];

        v137 = sub_10000E0F0();
        sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
        swift_allocError();
        v139 = v138;
        sub_10000E520(64);
        v171[5] = 0;
        v171[6] = 0xE000000000000000;
        v176._object = 0x8000000100010240;
        v176._countAndFlagsBits = 0xD00000000000001FLL;
        sub_10000E4A0(v176);
        sub_10000E3A0();
        sub_10000E540();
        v140 = *(v135 + 8);
        v140(v134, v136);
        v177._object = 0x8000000100010260;
        v177._countAndFlagsBits = 0xD00000000000001FLL;
        sub_10000E4A0(v177);
        sub_10000D068(&_swiftEmptyArrayStorage);
        sub_10000E0E0();
        (*(*(v137 - 8) + 104))(v139, enum case for InferenceError.unsupportedRequestType(_:), v137);
        swift_willThrow();

        sub_100006078(v72, v162);
        (*v153)(v133, v155);
        (*(v132 + 8))(v157, v161);
        v140(v170, v136);
        goto LABEL_7;
      }

      v87 = v46[13];
      sub_10000E390();
      v88 = sub_100005760(v87, v72, v71);
      v35 = v69;
      v89 = v88;
      (*v149)(v46[13], v46[11]);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v37;
      v91 = sub_10000CFE4(v167, v164, sub_10000CB14);
      v93 = *(v37 + 16);
      v94 = (v92 & 1) == 0;
      v82 = __OFADD__(v93, v94);
      v95 = v93 + v94;
      if (v82)
      {
        goto LABEL_66;
      }

      v96 = v92;
      if (*(v37 + 24) >= v95)
      {
        if ((v90 & 1) == 0)
        {
          v111 = v91;
          sub_10000CE74();
          v91 = v111;
        }
      }

      else
      {
        sub_10000CBCC(v95, v90);
        v91 = sub_10000CFE4(v167, v164, sub_10000CB14);
        if ((v96 & 1) != (v97 & 1))
        {
LABEL_61:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }
      }

      v98 = v171[30];
      v99 = v171[28];
      if ((v96 & 1) == 0)
      {
        v37 = v173;
        v173[(v91 >> 6) + 8] |= 1 << v91;
        v106 = (v173[6] + 16 * v91);
        *v106 = v167;
        v106[1] = v164;
        *(v173[7] + 8 * v91) = v89;
        sub_100006078(v72, v162);
        (*v153)(v98, v99);
        v107 = v173[2];
        v82 = __OFADD__(v107, 1);
        v104 = v107 + 1;
        if (!v82)
        {
          goto LABEL_53;
        }

        goto LABEL_68;
      }

      v105 = v91;

      v37 = v173;
      *(v173[7] + 8 * v105) = v89;
      v35 = v156;

      v101 = v72;
LABEL_50:
      sub_100006078(v101, v162);
      (*v153)(v98, v99);
      v39 = v158;
      if (v43)
      {
        goto LABEL_16;
      }
    }
  }

  v114 = v1[36];
  v113 = v1[37];
  v115 = v29;
  sub_10000DFD0();

  swift_willThrow();
  (*(v113 + 8))(v30, v114);
LABEL_7:

  v22 = v171[1];
LABEL_8:

  return v22();
}

uint64_t SIDInferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000E470();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000E0B0();
  if (v4 >> 60 != 15)
  {
    v5 = v3;
    v6 = v4;
    sub_10000E460();
    v7 = sub_10000E450();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      a1[3] = &type metadata for SIDInferenceProvider.ExampleStream;
      a1[4] = sub_10000D348();
      result = sub_10000D248(v5, v6);
      *a1 = v9;
      a1[1] = v10;
      return result;
    }

    sub_10000D248(v5, v6);
  }

  a1[3] = type metadata accessor for SIDInferenceProvider.ErrorStream(0);
  a1[4] = sub_10000D200(&qword_1000183E8, type metadata accessor for SIDInferenceProvider.ErrorStream, &unk_10000F588);
  v12 = sub_100004FFC(a1);
  sub_10000D068(&_swiftEmptyArrayStorage);
  sub_10000E0E0();
  v13 = enum case for InferenceError.invalidClientData(_:);
  v14 = sub_10000E0F0();
  return (*(*(v14 - 8) + 104))(v12, v13, v14);
}

uint64_t sub_10000B294(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10000E470();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000B354, 0, 0);
}

uint64_t sub_10000B354()
{
  sub_10000E4B0();
  if (v1)
  {
    v0[2] = 0;
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v0[3] = 0xE000000000000000;
    sub_10000E420();
    sub_10000E460();
    sub_10000E440();
    v6 = v5;

    result = (*(v3 + 8))(v2, v4);
    if (v6 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v8 = v0[4];

    sub_10000E0C0();
    v9 = sub_10000E0D0();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = v0[4];
    v11 = sub_10000E0D0();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000B508(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B5A0;

  return sub_10000B294(a1);
}

uint64_t sub_10000B5A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_10000E0F0();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_10000B7C8;

  return sub_10000B8FC(a1);
}

uint64_t sub_10000B7C8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t sub_10000B8FC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10000E470();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000DF2C, 0, 0);
}

void sub_10000B9BC(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v3;
}

uint64_t sub_10000B9E8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000BA70, 0, 0);
}

uint64_t sub_10000BA70()
{
  v1 = v0[3];
  sub_10000DA28(v0[2], v1);
  v2 = sub_10000E0F0();
  sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_allocError();
  (*(*(v2 - 8) + 32))(v3, v1, v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000BB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = v5;
  v6[6] = a4;
  v6[3] = a2;
  v6[4] = a3;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000BC10, 0, 0);
}

uint64_t sub_10000BC10()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_10000DA28(v0[5], v1);
  v3 = sub_10000E0F0();
  v0[8] = v3;
  v0[9] = sub_10000D200(&qword_1000183C8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  v0[10] = swift_allocError();
  (*(*(v3 - 8) + 32))(v4, v1, v3);
  swift_willThrow();
  if (v2)
  {
    swift_getObjectType();
    v5 = sub_10000E4E0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_10000BD58, v5, v7);
}

uint64_t sub_10000BD58()
{
  v0[2] = v0[10];
  sub_100004EF8(&qword_100018358, &qword_10000F180);
  swift_dynamicCast();
  swift_willThrowTypedImpl();

  v1 = v0[1];

  return v1();
}

uint64_t SIDInferenceProvider.deinit()
{
  sub_100004F40(v0 + OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow, &qword_1000183C0, &qword_10000F1D8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SIDInferenceProvider.__deallocating_deinit()
{
  sub_100004F40(v0 + OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow, &qword_1000183C0, &qword_10000F1D8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000BEB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SIDInferenceProvider(0);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  v3 = OBJC_IVAR____TtC20SIDInferenceProvider20SIDInferenceProvider_workflow;
  v4 = sub_10000E2D0();
  result = (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *a1 = v2;
  return result;
}

uint64_t sub_10000BF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SIDInferenceProvider(0);
  v4 = sub_10000E130();
  v5 = *(v3 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_10000BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SIDInferenceProvider(0);
  v4 = sub_10000E100();
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_10000C098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SIDInferenceProvider(0);
  sub_10000E110();
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_10000C118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v6 = sub_10000E0F0();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_10000DF3C;

  return _s20SIDInferenceProviderAAC15transitionAsset_2toy20ModelManagerServices09InferencebD10DescriptorV_AE9LoadStateOtYaAE0I5ErrorOYKF(a1, a2, v7);
}

uint64_t sub_10000C240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SIDInferenceProvider(0);
  *v10 = v5;
  v10[1] = sub_10000DF28;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(a1, a2, a3, v11, a5);
}

uint64_t sub_10000C310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for SIDInferenceProvider(0);
  *v6 = v3;
  v6[1] = sub_10000DF28;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, v7, a3);
}

uint64_t sub_10000C3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v7 = sub_10000E0F0();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10000DF3C;

  return _s20SIDInferenceProviderAAC14requestOneShot10clientData13configuration20ModelManagerServices06ClientG0VAH_AF09InferenceB20RequestConfigurationVtYaAF0M5ErrorOYKF(a1, a2, v9, v8);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SIDInferenceProviderService(0);
  sub_10000D200(&qword_1000183F8, type metadata accessor for SIDInferenceProviderService, &protocol conformance descriptor for InferenceProviderExtension<A>);
  sub_10000E0A0();
  return 0;
}

unint64_t sub_10000C56C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C638(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DDC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000050B0(v11);
  return v7;
}

unint64_t sub_10000C638(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C744(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000E530();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000C744(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C790(a1, a2);
  sub_10000C8C0(&off_100014BB0);
  return v3;
}

char *sub_10000C790(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000C9AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000E530();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000E4C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000C9AC(v10, 0);
        result = sub_10000E510();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000C8C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000CA20(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000C9AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100004EF8(&qword_100018668, &qword_10000F600);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CA20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004EF8(&qword_100018668, &qword_10000F600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10000CB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000E590())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000CBCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004EF8(&qword_100018650, &qword_10000F5E0);
  v34 = v4;
  result = sub_10000E560();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10000E5C0();
      sub_10000E490();
      result = sub_10000E5D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_10000CE74()
{
  v1 = v0;
  sub_100004EF8(&qword_100018650, &qword_10000F5E0);
  v2 = *v0;
  v3 = sub_10000E550();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000CFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_10000E5C0();
  sub_10000E490();
  v5 = sub_10000E5D0();

  return a3(a1, a2, v5);
}

unint64_t sub_10000D068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004EF8(&unk_100018670, &qword_10000F608);
    v3 = sub_10000E570();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000CFE4(v5, v6, sub_10000CB14);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000D190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004EF8(&qword_1000183C0, &qword_10000F1D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D248(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006078(result, a2);
  }

  return result;
}

uint64_t sub_10000D25C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B5A0;

  return sub_1000095F0(a1, v5, v4);
}

unint64_t sub_10000D348()
{
  result = qword_1000183F0;
  if (!qword_1000183F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183F0);
  }

  return result;
}

uint64_t sub_10000D3BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D48C(uint64_t a1)
{
  sub_10000D534(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000D534(uint64_t a1)
{
  if (!qword_100018490)
  {
    sub_10000E2D0();
    v1 = sub_10000E500();
    if (!v2)
    {
      atomic_store(v1, &qword_100018490);
    }
  }
}

__n128 sub_10000D58C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000D598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D5E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D640(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E0F0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000D6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E0F0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000D730(uint64_t a1)
{
  result = sub_10000E0F0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000D82C()
{
  result = qword_100018608;
  if (!qword_100018608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018608);
  }

  return result;
}

unint64_t sub_10000D884()
{
  result = qword_100018610;
  if (!qword_100018610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018610);
  }

  return result;
}

unint64_t sub_10000D8DC()
{
  result = qword_100018618;
  if (!qword_100018618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018618);
  }

  return result;
}

uint64_t sub_10000D9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDInferenceProvider.ErrorStream(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDInferenceProvider.ErrorStream(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004EF8(&qword_1000183C0, &qword_10000F1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000DAFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004EF8(&qword_100018650, &qword_10000F5E0);
    v3 = sub_10000E570();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000CFE4(v5, v6, sub_10000CB14);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000DC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004EF8(&qword_100018630, &qword_10000F5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000DC84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_10000DCD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DF28;

  return sub_100007228(a1, v4, v5, v6);
}

uint64_t sub_10000DD8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000DDC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000DE20(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_10000DE84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000DE90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000DED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}