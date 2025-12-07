_OWORD *sub_1004BFA38(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v9 = v4 - *a1;
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
      sub_1003E5FE8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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
  return (v6 - 16);
}

uint64_t sub_1004BFB14(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &off_1024576F0;
  if (*(a2 + 23) < 0)
  {
    sub_100007244((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100007244((a1 + 64), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 80) = *(a4 + 2);
    *(a1 + 64) = v8;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244((a1 + 88), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 104) = *(a3 + 2);
    *(a1 + 88) = v9;
  }

  *(a1 + 112) = 0;
  return a1;
}

void sub_1004BFC18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BFC68(uint64_t a1)
{
  sub_10005DB2C(a1);

  operator delete();
}

uint64_t sub_1004BFCA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1004C01C8(&v25);
  v4 = sub_100038730(&v25, "[", 1);
  v5 = *(a1 + 87);
  if (v5 >= 0)
  {
    v6 = a1 + 64;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 87);
  }

  else
  {
    v7 = *(a1 + 72);
  }

  v8 = sub_100038730(v4, v6, v7);
  v9 = sub_100038730(v8, "]/", 2);
  v10 = *(a1 + 63);
  if (v10 >= 0)
  {
    v11 = a1 + 40;
  }

  else
  {
    v11 = *(a1 + 40);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 63);
  }

  else
  {
    v12 = *(a1 + 48);
  }

  v13 = sub_100038730(v9, v11, v12);
  v14 = sub_100038730(v13, "/", 1);
  v15 = *(a1 + 111);
  if (v15 >= 0)
  {
    v16 = a1 + 88;
  }

  else
  {
    v16 = *(a1 + 88);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 111);
  }

  else
  {
    v17 = *(a1 + 96);
  }

  v18 = sub_100038730(v14, v16, v17);
  v19 = sub_100038730(v18, "/", 1);
  sub_1004BFFE4(a1, __p);
  if ((v24 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v21 = v24;
  }

  else
  {
    v21 = __p[1];
  }

  sub_100038730(v19, v20, v21);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1004C0334(&v25, a2);
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  std::locale::~locale(v27);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004BFEE0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1004BFF24(uint64_t a1)
{
  *a1 = off_102457740;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1004BFF74(uint64_t a1)
{
  *a1 = off_102457740;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1004BFFE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1004C01C8(&v8);
  if (*(a1 + 36))
  {
    v4 = *(a1 + 31);
    v5 = v4 >= 0 ? a1 + 8 : *(a1 + 8);
    v6 = v4 >= 0 ? *(a1 + 31) : *(a1 + 16);
    sub_100038730(&v8, v5, v6);
    if ((*(a1 + 36) & 2) != 0)
    {
      sub_100038730(&v8, ".", 1);
      std::ostream::operator<<();
      if ((*(a1 + 36) & 4) != 0)
      {
        sub_100038730(&v8, ".", 1);
        std::ostream::operator<<();
      }
    }
  }

  sub_1004C0334(&v8, a2);
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  std::locale::~locale(v10);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004C01A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1004C01C8(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_100038A3C((a1 + 1), 16);
  return a1;
}

void sub_1004C030C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const void *sub_1004C0334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000389F0(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
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

uint64_t sub_1004C03DC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_1004C04F8(uint64_t a1, uint64_t a2)
{
  *a1 = off_102457740;
  if (*(a2 + 31) < 0)
  {
    sub_100007244((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  *a1 = &off_1024576F0;
  if (*(a2 + 63) < 0)
  {
    sub_100007244((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100007244((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100007244((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_1004C0618(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1004C06D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_102457768;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1004C0708(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1004C07A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C07CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C0818(uint64_t a1)
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

__n128 sub_1004C08F4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1024577F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1004C0924(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0uLL;
  sub_1004C09D0(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_1004C096C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C0984(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C09D0(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14, 0xFFFFFFFFLL))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101896904();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101896904();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4();
}

uint64_t sub_1004C0C00(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_1004C0C7C(a1, a2, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_1004C0C7C(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100007070(a1, a2);
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
    sub_1004C0ED8();
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

  if (!sub_100019DF4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1004C0EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004C0F54(va);
  _Unwind_Resume(a1);
}

char **sub_1004C0F54(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1004C10B0(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_1004C0FA0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_1004C1018((__dst + 24), a2 + 24);
  return __dst;
}

void sub_1004C0FFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C1018(uint64_t a1, uint64_t a2)
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

void sub_1004C10B0(uint64_t a1)
{
  sub_1004C0818(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1004C1100(uint64_t a1)
{
  sub_1004C113C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1004C113C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1004C10B0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1004C1198(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void *sub_1004C122C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_10095D914(a1);
}

void sub_1004C1278(void *a1)
{
  sub_1004C122C(a1);

  operator delete();
}

void sub_1004C12B0(uint64_t a1)
{
  sub_1004C122C((a1 - 32));

  operator delete();
}

uint64_t sub_1004C1308(uint64_t a1, uint64_t a2)
{
  if (qword_102656458 != -1)
  {
    sub_101896A5C();
  }

  return qword_102656450;
}

void sub_1004C1340(id a1)
{
  if ((sub_100023B30(a1, v1) & 2) != 0)
  {
    operator new();
  }
}

void sub_1004C1400(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    sub_101896A70();
  }

  v3 = sub_100011660(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004C1488;
  v4[3] = &unk_102449A78;
  v4[4] = a1;
  sub_10017A794(v3, v4);
}

void sub_1004C1510(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 40))
  {
    sub_101896AC8();
  }

  v3 = sub_100011660(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004C1598;
  v4[3] = &unk_102449A78;
  v4[4] = a1;
  sub_10017A794(v3, v4);
}

void sub_1004C1598(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (v2)
  {
    sub_100008080(v2);
  }
}

uint64_t sub_1004C15B0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = *(a1 + 56);
  LODWORD(v4) = *(a2 + 1);
  BYTE4(v4) = *(a2 + 5);
  *(&v4 + 5) = *(a2 + 6);
  return sub_100013B00(a1, 0, &v3, 16);
}

uint64_t sub_1004C1600(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = *(a1 + 24);
  LODWORD(v4) = *(a2 + 1);
  BYTE4(v4) = *(a2 + 5);
  *(&v4 + 5) = *(a2 + 6);
  return sub_100013B00(a1 - 32, 0, &v3, 16);
}

void sub_1004C1658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_1004C1400(a1, a2);
      }
    }

    else
    {
      sub_1004C1510(a1, a2);
    }
  }
}

void sub_1004C17FC(id a1)
{
  sub_10001A3E8(a1, v1);
  if (sub_10001CF3C())
  {
    byte_102656470 = 1;
  }
}

void sub_1004C1D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

void sub_1004C1E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_101896E40((v11 + 8), (v10 + 8));
  operator delete();
}

void sub_1004C23B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C23D0(uint64_t a1, uint64_t a2)
{
  if (qword_1025D44F0 != -1)
  {
    sub_101896D48();
  }

  v3 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Aggregating HRRecovery db records", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101896F54();
  }

  sub_1004C24A4(*(*(a1 + 32) + 24));
  sub_1004C27B0(*(*(a1 + 32) + 48));
  return sub_1004C2ABC(*(*(a1 + 32) + 72));
}

uint64_t sub_1004C24A4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101897030();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897044();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_101897138();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897160();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_1004C57B8(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101897138();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_1004C57B8(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101897254();
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 24) + 32);

    return v16();
  }
}

uint64_t sub_1004C27B0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101897030();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897354();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_101897138();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897448();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_1004C58BC(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101897138();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_1004C58BC(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189753C();
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 24) + 32);

    return v16();
  }
}

uint64_t sub_1004C2ABC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101897030();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189763C();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_101897138();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897730();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_1004C59C0(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101897138();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_1004C59C0(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101897824();
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 24) + 32);

    return v16();
  }
}

void sub_1004C37A4(id a1, BOOL a2, NSError *a3)
{
  if (a2)
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v3 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "HRRecovery successfully pushed to HKHealthStore", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897D14();
    }
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v5 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "HKHealthStore, HRRecovery, saveObjects failed on, %{public}@", &v6, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101897C0C(a3);
    }
  }
}

void sub_1004C3998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C3CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58)
{
  if (a58)
  {
    sub_100008080(a58);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1004C4860(uint64_t a1)
{
  v45[0] = @"age_bin";
  v2 = *(*(a1 + 32) + 100);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_10038EB38(&v42, qword_1026564A0, qword_1026564A8, (qword_1026564A8 - qword_1026564A0) >> 2);
  if (v43 == v42)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = (v43 - v42) >> 2;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (*(v42 + v3) < v2)
    {
      if (v4 == ++v3)
      {
        v3 = v4;
        break;
      }
    }
  }

  v46[0] = [NSNumber numberWithInt:v3];
  v45[1] = @"gender";
  v46[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 96)];
  v45[2] = @"useBetaBlocker";
  v46[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 108)];
  v45[3] = @"userBMI_bin";
  v5 = *(*(a1 + 32) + 104);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  sub_10038EB38(&v39, qword_1026564C0, qword_1026564C8, (qword_1026564C8 - qword_1026564C0) >> 2);
  if (v40 == v39)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = (v40 - v39) >> 2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    while (*(v39 + v6) < v5)
    {
      if (v7 == ++v6)
      {
        v6 = v7;
        break;
      }
    }
  }

  v46[3] = [NSNumber numberWithInt:v6];
  v45[4] = @"restingHR";
  LODWORD(v8) = *(*(a1 + 32) + 220);
  v46[4] = [NSNumber numberWithFloat:v8];
  v45[5] = @"hrmax";
  LODWORD(v9) = *(*(a1 + 32) + 224);
  v46[5] = [NSNumber numberWithFloat:v9];
  v45[6] = @"HRRecoveryEstimateStatus";
  v46[6] = [NSNumber numberWithInt:*(*(a1 + 32) + 112)];
  v45[7] = @"diffTimeRecoveryOnsetWorkout";
  v46[7] = [NSNumber numberWithDouble:*(*(a1 + 32) + 120)];
  v45[8] = @"diffTimeTDropWorkoutEnd";
  v46[8] = [NSNumber numberWithDouble:*(*(a1 + 32) + 128)];
  v45[9] = @"hrRecovery";
  v46[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v45[10] = @"hrRecoverySession";
  v46[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v45[11] = @"peakHR";
  LODWORD(v10) = *(*(a1 + 32) + 144);
  v46[11] = [NSNumber numberWithFloat:v10];
  v45[12] = @"steadyStateHR";
  LODWORD(v11) = *(*(a1 + 32) + 148);
  v46[12] = [NSNumber numberWithFloat:v11];
  v45[13] = @"hrMinAdjusted";
  LODWORD(v12) = *(*(a1 + 32) + 152);
  v46[13] = [NSNumber numberWithFloat:v12];
  v45[14] = @"observedHRRecovery";
  LODWORD(v13) = *(*(a1 + 32) + 156);
  v46[14] = [NSNumber numberWithFloat:v13];
  v45[15] = @"recoveryLoad";
  LODWORD(v14) = *(*(a1 + 32) + 160);
  v46[15] = [NSNumber numberWithFloat:v14];
  v45[16] = @"maxRecoveryHR";
  LODWORD(v15) = *(*(a1 + 32) + 164);
  v46[16] = [NSNumber numberWithFloat:v15];
  v45[17] = @"minRecoveryHR";
  LODWORD(v16) = *(*(a1 + 32) + 168);
  v46[17] = [NSNumber numberWithFloat:v16];
  v45[18] = @"recoveryMetsMean";
  LODWORD(v17) = *(*(a1 + 32) + 172);
  v46[18] = [NSNumber numberWithFloat:v17];
  v45[19] = @"recoveryMetsStdDev";
  LODWORD(v18) = *(*(a1 + 32) + 176);
  v46[19] = [NSNumber numberWithFloat:v18];
  v45[20] = @"biasAdjustment";
  LODWORD(v19) = *(*(a1 + 32) + 180);
  v46[20] = [NSNumber numberWithFloat:v19];
  v45[21] = @"isOtherwiseEligibleForLongitudinal";
  v46[21] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v45[22] = @"hrRecoveryReference";
  LODWORD(v20) = *(*(a1 + 32) + 188);
  v46[22] = [NSNumber numberWithFloat:v20];
  v45[23] = @"hrRecoveryReferencePeak";
  LODWORD(v21) = *(*(a1 + 32) + 192);
  v46[23] = [NSNumber numberWithFloat:v21];
  v45[24] = @"hrOneMinPostRecovery";
  LODWORD(v22) = *(*(a1 + 32) + 196);
  v46[24] = [NSNumber numberWithFloat:v22];
  v45[25] = @"hrOneMinExponential";
  LODWORD(v23) = *(*(a1 + 32) + 200);
  v46[25] = [NSNumber numberWithFloat:v23];
  v45[26] = @"isEligibleForHK";
  v46[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v45[27] = @"minHRAfterWorkoutEnd";
  LODWORD(v24) = *(*(a1 + 32) + 208);
  v46[27] = [NSNumber numberWithFloat:v24];
  v45[28] = @"maxHRAfterWorkoutEnd";
  LODWORD(v25) = *(*(a1 + 32) + 212);
  v46[28] = [NSNumber numberWithFloat:v25];
  v45[29] = @"oneMinusFHRAfterWorkoutEnd";
  LODWORD(v26) = *(*(a1 + 32) + 216);
  v46[29] = [NSNumber numberWithFloat:v26];
  v45[30] = @"peakHrOneMinusFhr";
  LODWORD(v27) = *(*(a1 + 32) + 228);
  v46[30] = [NSNumber numberWithFloat:v27];
  v45[31] = @"vo2MaxEstimationStatus";
  v46[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 232)];
  v45[32] = @"VO2MaxValue";
  v46[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 236)];
  v45[33] = @"lambda";
  LODWORD(v28) = *(*(a1 + 32) + 240);
  v46[33] = [NSNumber numberWithFloat:v28];
  v45[34] = @"mse";
  LODWORD(v29) = *(*(a1 + 32) + 244);
  v46[34] = [NSNumber numberWithFloat:v29];
  v45[35] = @"evs";
  LODWORD(v30) = *(*(a1 + 32) + 248);
  v46[35] = [NSNumber numberWithFloat:v30];
  v45[36] = @"sessionType";
  v46[36] = [NSNumber numberWithInt:*(*(a1 + 32) + 252)];
  v45[37] = @"workoutType";
  v46[37] = [NSNumber numberWithInt:*(*(a1 + 32) + 256)];
  v45[38] = @"sessionDuration_bin";
  v31 = *(*(a1 + 32) + 264);
  v37 = 0;
  v38 = 0;
  __p = 0;
  sub_10038EB38(&__p, qword_102656480, qword_102656488, (qword_102656488 - qword_102656480) >> 2);
  if (v37 == __p)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0;
    v33 = (v37 - __p) >> 2;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    while (*(__p + v32) < v31)
    {
      if (v33 == ++v32)
      {
        v32 = v33;
        break;
      }
    }
  }

  v46[38] = [NSNumber numberWithInt:v32];
  v45[39] = @"LyonAlgVersion";
  v46[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 268)];
  v34 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:40];
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v34;
}

void *sub_1004C5370(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102457D10;
  sub_1012468F8(a1 + 3, *a2);
  return a1;
}

void sub_1004C53F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102457D10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004C54D8(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102457D60;
  sub_100F6B1A4((a1 + 3), *a2);
  return a1;
}

void sub_1004C5558(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102457D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004C5640(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102457DB0;
  sub_100A93970(a1 + 3, *a2);
  return a1;
}

void sub_1004C56C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102457DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004C573C(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[11];
    if (v3)
    {
      sub_100008080(v3);
    }

    v4 = v2[9];
    if (v4)
    {
      sub_100008080(v4);
    }

    v5 = v2[7];
    if (v5)
    {
      sub_100008080(v5);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1004C57B8(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101897FE0();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897FF4();
    }
  }

  return v7;
}

uint64_t sub_1004C58BC(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101897FE0();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018980D0();
    }
  }

  return v7;
}

uint64_t sub_1004C59C0(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101897FE0();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018981AC();
    }
  }

  return v7;
}

uint64_t sub_1004C5C50(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C5DB4;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656588 != -1)
  {
    dispatch_once(&qword_102656588, block);
  }

  return qword_102636EE8;
}

void sub_1004C5E24(id *a1, void *a2)
{
  *a1 = a2;
  sub_100565518(0, __p, a2);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0].__r_.__value_.__r.__words[0];
  }

  v4 = [[NSString stringWithUTF8String:?], "stringByAppendingPathComponent:", @"activityLog.pb"];
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  a1[1] = v4;
  a1[2] = 0;
  sub_1004B6400(a1 + 3, v4);
  sub_10104B848((a1 + 9), "CMActivityLog", [objc_msgSend(*a1 "silo")], objc_msgSend(a1[1], "UTF8String"));
  [*a1 silo];
  if (qword_1025D4200 != -1)
  {
    sub_10189829C();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLActivityLogger being constructed.", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018982C4(__p);
    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4208, 2, "CLActivityLogger being constructed.", v10, 2);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 2, "CLActivityLogger::CLActivityLogger(id<CLIntersiloUniverse>)", "%s\n", v8);
    if (v9 != __p)
    {
      free(v9);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1004C61A4, @"NanoLifestyleEnableFitnessDataCollectionSettingDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v7, a1, sub_1004C61A4, @"com.apple.managedconfiguration.defaultsdidchange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  sub_1006960B0();
}

void sub_1004C611C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10104C8E0(v19);
  sub_1004B6C10(v18 + 24);
  v21 = *(v18 + 16);
  *(v18 + 16) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(a1);
}

void sub_1004C61A4(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*a2 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101898308();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLActivityLogger::onFitnessDataCollectionSettingChangedNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10189831C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLActivityLogger::onFitnessDataCollectionSettingChangedNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*a2 silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004C6AC4;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1004C63D0(uint64_t a1, char *a2, unsigned int *a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101898308();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLActivityLogger::onMotionStateMediatorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10189831C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLActivityLogger::onMotionStateMediatorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1004C6670(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1004C659C(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"NanoLifestyleEnableFitnessDataCollectionSettingDidChangeNotification", 0);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v3, a1, @"com.apple.managedconfiguration.defaultsdidchange", 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 8) = 0;
  sub_10104C8E0(a1 + 72);
  sub_1004B6C10(a1 + 24);
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_1004C6670(uint64_t a1, uint64_t a2, char *a3, unsigned int *a4)
{
  [*a1 silo];
  if (*a3 == 1)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101898344();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a4;
      v9 = a4[2];
      v10 = a4[3];
      v11 = a4[5];
      v12 = a4[6];
      v13 = a4[15];
      v14 = *(a4 + 8);
      v15 = *(a4 + 11);
      v21 = 67110912;
      *v22 = v8;
      *&v22[4] = 1024;
      *&v22[6] = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      v31 = 2048;
      v32 = v14;
      v33 = 2048;
      v34 = v15;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLActivityLogger, kNotificationActivityOverride,overrideAction,%d,activity{State,%d,Confidence,%d,MountedState,%d,MountedConfidence,%d,exitState,%d,estExitTime,%f,startTime,%f}", &v21, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189845C(a4);
    }

    v16 = objc_alloc_init(ALActivityLog);
    [(ALActivityLog *)v16 setTimestamp:CFAbsoluteTimeGetCurrent()];
    [(ALActivityLog *)v16 setActivityOverrideMsg:objc_alloc_init(ALActivityOverrideMsg)];
    [(ALActivityOverrideMsg *)[(ALActivityLog *)v16 activityOverrideMsg] setOverrideAction:*a4];
    [(ALActivityOverrideMsg *)[(ALActivityLog *)v16 activityOverrideMsg] setActivity:objc_alloc_init(ALCLMotionActivity)];
    [objc_msgSend_activity(-[ALActivityLog activityOverrideMsg](v16 "activityOverrideMsg"))];
    [objc_msgSend_activity(-[ALActivityLog activityOverrideMsg](v16 "activityOverrideMsg"))];
    [objc_msgSend_activity(-[ALActivityLog activityOverrideMsg](v16 "activityOverrideMsg"))];
    [objc_msgSend_activity(-[ALActivityLog activityOverrideMsg](v16 "activityOverrideMsg"))];
    [objc_msgSend_activity(-[ALActivityLog activityOverrideMsg](v16 "activityOverrideMsg"))];
    [objc_msgSend_activity(-[ALActivityLog activityOverrideMsg](v16 "activityOverrideMsg"))];
    [objc_msgSend_activity(-[ALActivityLog activityOverrideMsg](v16 "activityOverrideMsg"))];
    [objc_msgSend_activity(-[ALActivityLog activityOverrideMsg](v16 "activityOverrideMsg"))];
    [*a1 silo];
    if (*(a1 + 72) == 1)
    {
      sub_1004B6764((a1 + 24), v16);
    }

    if (qword_1025D4200 != -1)
    {
      sub_10189829C();
    }

    v17 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v18 = [-[ALActivityLog formattedText](v16 "formattedText")];
      v21 = 136315138;
      *v22 = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLActivityLogger,log kNotificationActivityOverride:%s", &v21, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018985B8(v16);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_101898344();
    }

    v19 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a3;
      v21 = 67109120;
      *v22 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#Warning CLActivityLogger, Unhandled notification %d", &v21, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101898358(a3);
    }
  }
}

void sub_1004C6A24(uint64_t a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_101898344();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLActivityLogger, dataCollection setting changed", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018986CC();
  }

  sub_10104B1E4(a1 + 72, v3);
}

double sub_1004C6B84(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1004C6BB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1004C6C84(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1004C6CD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C6DB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C6EA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C707C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

void sub_1004C71BC(id a1)
{
  v1 = sub_100719350();
  if (!v1)
  {
    byte_102656638 = 1;
  }

  v3 = sub_10071B280(v1, v2);
  if (v3)
  {
    byte_102656638 = 0;
    if (qword_1025D47D0 != -1)
    {
      sub_1018987F0();
    }

    v5 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Harvest is not supported in multiuser mode", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018988E8();
    }
  }

  else if (sub_10071C978(v3, v4))
  {
    byte_102656638 = 0;
    if (qword_1025D47D0 != -1)
    {
      sub_1018987F0();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Harvest is not supported in diagnostics mode", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101898804();
    }
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018989CC();
  }

  v7 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67240192;
    v8[1] = byte_102656638;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLHarvesterService is supported, %{public}d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018989F4();
  }
}

void sub_1004C7474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C75B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C7720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C8E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = *(v41 - 136);
  if (v43)
  {
    sub_100008080(v43);
  }

  if (v40)
  {
    sub_100008080(v40);
  }

  v44 = *(v41 - 168);
  if (v44)
  {
    sub_100008080(v44);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C95B8(id a1)
{
  if (qword_1025D47D0 != -1)
  {
    sub_1018987F0();
  }

  v1 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289026;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Classifier has been set up}", v2, 0x12u);
  }
}

void sub_1004C9680(id a1, int a2)
{
  if (qword_1025D47D0 != -1)
  {
    sub_1018987F0();
  }

  v2 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:flushing archivemanager to disk as result of a darwin notification.}", v3, 0x12u);
  }
}

id sub_1004C9748(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004C97BC;
  v3[3] = &unk_102447418;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 async:v3];
}

void sub_1004C97BC(uint64_t a1)
{
  if (*(*(a1 + 32) + 64))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018987F0();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 68289026;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reload harvest rules and settings}", v4, 0x12u);
    }

    (*(**(*(a1 + 32) + 64) + 48))(*(*(a1 + 32) + 64));
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018987F0();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down. Do not reload harvest rules and settings", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018991CC();
    }
  }
}

uint64_t sub_1004C993C(uint64_t a1)
{
  v2 = [+[GEOCountryConfiguration sharedConfiguration](GEOCountryConfiguration "sharedConfiguration")];
  if ([*(*(a1 + 32) + 160) isEqualToString:@"CN"] && (objc_msgSend(v2, "isEqualToString:", @"CN") & 1) == 0)
  {
    sub_100572204(*(*(a1 + 32) + 64));
  }

  [*(a1 + 32) setLastCountryCode:v2];
  [*(*(a1 + 32) + 16) refresh];
  v3 = *(**(*(a1 + 32) + 64) + 48);

  return v3();
}

void sub_1004C9BD0(uint64_t a1)
{
  v1 = (*(a1 + 32) + 64);
  v2 = *(*(a1 + 32) + 72);
  *v1 = 0;
  v1[1] = 0;
  if (v2)
  {
    sub_100008080(v2);
  }
}

void sub_1004C9BF4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  a1[1] = v2;
}

void sub_1004C9FD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C9FF8(void *a1, uint64_t a2)
{
  v2 = [a1 valueForEntitlement:a2];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v2 BOOLValue])
    {
      return 1;
    }
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018987F0();
  }

  v4 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "connecting process isn't entitled, they shall not pass %{public}@", &v5, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018992B0(v2);
    return 0;
  }

  return result;
}

_OWORD *sub_1004CA5E4(const void **a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v17[4] = a1;
    if (v10)
    {
      sub_1004CA6DC(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = a1[1] - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_1004CA724(v17);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  a1[1] = v6;
  return (v6 - 16);
}

void sub_1004CA6DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1001D0818();
}

void **sub_1004CA724(void **a1)
{
  sub_1004CA758(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004CA758(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_100008080(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *sub_1004CA7AC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA834(result, a4);
  }

  return result;
}

void sub_1004CA814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1004CA974(&a9);
  _Unwind_Resume(a1);
}

void sub_1004CA834(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1004CA6DC(a1, a2);
  }

  sub_10028C64C();
}

void *sub_1004CA870(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1004CA8F8(v7);
  return v4;
}

uint64_t sub_1004CA8F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA930(a1);
  }

  return a1;
}

void sub_1004CA930(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_100008080(v3);
    }

    v1 -= 16;
  }
}

void sub_1004CA974(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1004C9BF4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double sub_1004CAA50(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1004CAA7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1004CAB50(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1004CABA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004CAC84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004CAD70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004CAE28(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458388;
  sub_1012197B4(a1 + 3, *a2);
  return a1;
}

void sub_1004CAEA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CAF98(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024583D8;
  sub_1004CB090((a1 + 3), a2, a3);
  return a1;
}

void sub_1004CB014(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024583D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CB090(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  v6 = *a3;
  *a3 = 0uLL;
  sub_10056E7E4(a1, v4, &v6);
  if (*(&v6 + 1))
  {
    sub_100008080(*(&v6 + 1));
  }

  return a1;
}

void sub_1004CB0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004CB164(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458428;
  sub_100504298(a1 + 3, *a2);
  return a1;
}

void sub_1004CB1E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CB2EC(void *a1, uint64_t *a2, __int128 *a3, uint64_t *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458478;
  sub_1004CB3E4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1004CB368(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CB3E4(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t *a4, void *a5)
{
  v6 = *a2;
  v15 = *a3;
  *a3 = 0uLL;
  v7 = a4[1];
  v13 = *a4;
  v14 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a5[1];
  if (*a5)
  {
    v9 = *a5 + 32;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10092D180(a1, v6, &v15, &v13, &v11);
  if (v12)
  {
    sub_100008080(v12);
  }

  if (v14)
  {
    sub_100008080(v14);
  }

  if (*(&v15 + 1))
  {
    sub_100008080(*(&v15 + 1));
  }

  return a1;
}

void sub_1004CB4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_101896E40((v11 + 8), (v10 | 8));
  _Unwind_Resume(a1);
}

void *sub_1004CB534(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024584C8;
  sub_1011D7B20(a1 + 3, *a2);
  return a1;
}

void sub_1004CB5B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024584C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CB6D4(void *a1, uint64_t *a2, __int128 *a3, uint64_t *a4, void *a5, uint64_t *a6, void *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458518;
  sub_1004CB7CC((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_1004CB750(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CB7CC(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t *a4, void *a5, uint64_t *a6, void *a7)
{
  v8 = *a2;
  v24 = *a3;
  *a3 = 0uLL;
  v9 = a4[1];
  v22 = *a4;
  v23 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  if (*a5)
  {
    v11 = *a5 + 16;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a6[1];
  v18 = *a6;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a7[1];
  if (*a7)
  {
    v14 = *a7 + 8;
  }

  else
  {
    v14 = 0;
  }

  v16 = v14;
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100FB05F4(a1, v8, &v24, &v22, &v20, &v18, &v16);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (*(&v24 + 1))
  {
    sub_100008080(*(&v24 + 1));
  }

  return a1;
}

void sub_1004CB8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994A4(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CB990(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458568;
  sub_10082AD8C(a1 + 3, *a2);
  return a1;
}

void sub_1004CBA10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CBB18(void *a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024585B8;
  sub_1004CBC10((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1004CBB94(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024585B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CBC10(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v16 = *a2;
  *a2 = 0uLL;
  v6 = a3[1];
  v14 = *a3;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  v12 = *a4;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a5[1];
  v10 = *a5;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10125519C(a1, &v16, &v14, &v12, &v10);
  if (v11)
  {
    sub_100008080(v11);
  }

  if (v13)
  {
    sub_100008080(v13);
  }

  if (v15)
  {
    sub_100008080(v15);
  }

  if (*(&v16 + 1))
  {
    sub_100008080(*(&v16 + 1));
  }

  return a1;
}

void sub_1004CBCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CBD88(void *a1, void **a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458608;
  sub_100B97548((a1 + 3), *a2, *a3);
  return a1;
}

void sub_1004CBE0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CBF3C(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458658;
  sub_1004CC034((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1004CBFB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CC034(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = *a2;
  v22 = *a3;
  *a3 = 0uLL;
  v10 = a4[1];
  if (*a4)
  {
    v11 = *a4 + 24;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (*a5)
  {
    v13 = *a5 + 8;
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v16 = *a6;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1011D5520(a1, v9, &v22, &v20, &v18, &v16, *a7, *a8, v16);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (*(&v22 + 1))
  {
    sub_100008080(*(&v22 + 1));
  }

  return a1;
}

void sub_1004CC134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CC1C8(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024586A8;
  sub_100BA1DC0((a1 + 3), *a2);
  return a1;
}

void sub_1004CC248(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024586A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1004CC378(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024586F8;
  sub_1004CC470((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
}

void sub_1004CC3F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024586F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1004CC470(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = *a2;
  v17 = *a3;
  *a3 = 0uLL;
  v9 = a4[1];
  if (*a4)
  {
    v10 = *a4 + 24;
  }

  else
  {
    v10 = 0;
  }

  v16[0] = v10;
  v16[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  if (*a5)
  {
    v12 = *a5 + 8;
  }

  else
  {
    v12 = 0;
  }

  v15[0] = v12;
  v15[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  v14[0] = *a6;
  v14[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100D682F0(a1, v8, &v17, v16, v15, v14, *a7, *a8);
}

void sub_1004CC574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  sub_1018994F8(v12 + 8);
  _Unwind_Resume(a1);
}

void sub_1004CC650(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458748;
  sub_1004CC748((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
}

void sub_1004CC6CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1004CC748(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = *a2;
  v17 = *a3;
  *a3 = 0uLL;
  v9 = a4[1];
  if (*a4)
  {
    v10 = *a4 + 24;
  }

  else
  {
    v10 = 0;
  }

  v16[0] = v10;
  v16[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  if (*a5)
  {
    v12 = *a5 + 8;
  }

  else
  {
    v12 = 0;
  }

  v15[0] = v12;
  v15[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  v14[0] = *a6;
  v14[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100C1380C(a1, v8, &v17, v16, v15, v14, *a7, *a8, 0);
}

void sub_1004CC84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  sub_1018994F8(v12 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CC8E0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458798;
  sub_1007613CC(a1 + 3, *a2);
  return a1;
}

void sub_1004CC960(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CCAA0(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024587E8;
  sub_1004CCBA8((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void sub_1004CCB2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024587E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CCBA8(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v10 = *a2;
  v26 = *a3;
  *a3 = 0uLL;
  v11 = a4[1];
  if (*a4)
  {
    v12 = *a4 + 24;
  }

  else
  {
    v12 = 0;
  }

  v24 = v12;
  v25 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a5[1];
  if (*a5)
  {
    v14 = *a5 + 8;
  }

  else
  {
    v14 = 0;
  }

  v22 = v14;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v20 = *a6;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a7[1];
  v18 = *a7;
  v19 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100FF1838(a1, v10, &v26, &v24, &v22, &v20, &v18, *a8, *a9);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (v25)
  {
    sub_100008080(v25);
  }

  if (*(&v26 + 1))
  {
    sub_100008080(*(&v26 + 1));
  }

  return a1;
}

void sub_1004CCCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  sub_1018994A4(v12 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CCDD4(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458838;
  sub_1004CCEDC((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void sub_1004CCE60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CCEDC(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v10 = *a2;
  v26 = *a3;
  *a3 = 0uLL;
  v11 = a4[1];
  if (*a4)
  {
    v12 = *a4 + 24;
  }

  else
  {
    v12 = 0;
  }

  v24 = v12;
  v25 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a5[1];
  if (*a5)
  {
    v14 = *a5 + 8;
  }

  else
  {
    v14 = 0;
  }

  v22 = v14;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v20 = *a6;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a7[1];
  v18 = *a7;
  v19 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100E668C8(a1, v10, &v26, &v24, &v22, &v20, &v18, *a8, *a9);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (v25)
  {
    sub_100008080(v25);
  }

  if (*(&v26 + 1))
  {
    sub_100008080(*(&v26 + 1));
  }

  return a1;
}

void sub_1004CD018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  sub_1018994A4(v12 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CD0B0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458888;
  sub_10084D090((a1 + 3), *a2);
  return a1;
}

void sub_1004CD130(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CD260(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024588D8;
  sub_1004CD358((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1004CD2DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024588D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CD358(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = *a2;
  v22 = *a3;
  *a3 = 0uLL;
  v10 = a4[1];
  if (*a4)
  {
    v11 = *a4 + 24;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (*a5)
  {
    v13 = *a5 + 8;
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v16 = *a6;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100C1915C(a1, v9, &v22, &v20, &v18, &v16, *a7, *a8, v16);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (*(&v22 + 1))
  {
    sub_100008080(*(&v22 + 1));
  }

  return a1;
}

void sub_1004CD458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CD534(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458928;
  sub_1004CD62C((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1004CD5B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CD62C(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = *a2;
  v22 = *a3;
  *a3 = 0uLL;
  v10 = a4[1];
  if (*a4)
  {
    v11 = *a4 + 24;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (*a5)
  {
    v13 = *a5 + 8;
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v16 = *a6;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100C52C30(a1, v9, &v22, &v20, &v18, &v16, *a7, *a8, v16);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (*(&v22 + 1))
  {
    sub_100008080(*(&v22 + 1));
  }

  return a1;
}

void sub_1004CD72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CD7C0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458978;
  sub_1008DC6D4(a1 + 3, *a2);
  return a1;
}

void sub_1004CD840(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CD980(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024589C8;
  sub_1004CDA88((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return a1;
}

void sub_1004CDA0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024589C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CDA88(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v11 = *a2;
  v30 = *a3;
  *a3 = 0uLL;
  v12 = a4[1];
  if (*a4)
  {
    v13 = *a4 + 24;
  }

  else
  {
    v13 = 0;
  }

  v28 = v13;
  v29 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  if (*a5)
  {
    v15 = *a5 + 8;
  }

  else
  {
    v15 = 0;
  }

  v26 = v15;
  v27 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a6[1];
  v24 = *a6;
  v25 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a7[1];
  v22 = *a7;
  v23 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a8[1];
  v20 = *a8;
  v21 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10111BB78(a1, v11, &v30, &v28, &v26, &v24, &v22, &v20, *a9, *a10);
  if (v21)
  {
    sub_100008080(v21);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (v25)
  {
    sub_100008080(v25);
  }

  if (v27)
  {
    sub_100008080(v27);
  }

  if (v29)
  {
    sub_100008080(v29);
  }

  if (*(&v30 + 1))
  {
    sub_100008080(*(&v30 + 1));
  }

  return a1;
}

void sub_1004CDBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  if (a14)
  {
    sub_100008080(a14);
  }

  if (a16)
  {
    sub_100008080(a16);
  }

  if (a18)
  {
    sub_100008080(a18);
  }

  v20 = *(v18 - 40);
  if (v20)
  {
    sub_100008080(v20);
  }

  v21 = *(v18 - 24);
  if (v21)
  {
    sub_100008080(v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004CDC8C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458A18;
  sub_100FB3F14(a1 + 3, *a2);
  return a1;
}

void sub_1004CDD0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CDE3C(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458A68;
  sub_1004CDF34((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1004CDEB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458A68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CDF34(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = *a2;
  v22 = *a3;
  *a3 = 0uLL;
  v10 = a4[1];
  if (*a4)
  {
    v11 = *a4 + 24;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (*a5)
  {
    v13 = *a5 + 8;
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v16 = *a6;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100BC30C4(a1, v9, &v22, &v20, &v18, &v16, *a7, *a8, v16);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (*(&v22 + 1))
  {
    sub_100008080(*(&v22 + 1));
  }

  return a1;
}

void sub_1004CE034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CE0C8(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458AB8;
  sub_100403EFC(a1 + 3, *a2);
  return a1;
}

void sub_1004CE148(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CE278(void *a1, void **a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458B08;
  sub_1004CE370((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1004CE2F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458B08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CE370(uint64_t a1, void **a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = *a2;
  v22 = *a3;
  *a3 = 0uLL;
  v10 = a4[1];
  if (*a4)
  {
    v11 = *a4 + 24;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (*a5)
  {
    v13 = *a5 + 8;
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v16 = *a6;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100401F6C(a1, v9, &v22, &v20, &v18, &v16, *a7, *a8);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (*(&v22 + 1))
  {
    sub_100008080(*(&v22 + 1));
  }

  return a1;
}

void sub_1004CE470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CE504(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458B58;
  sub_1011A3F4C(a1 + 3, *a2);
  return a1;
}

void sub_1004CE584(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CE6B4(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458BA8;
  sub_1004CE7AC((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1004CE730(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CE7AC(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = *a2;
  v22 = *a3;
  *a3 = 0uLL;
  v10 = a4[1];
  if (*a4)
  {
    v11 = *a4 + 24;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (*a5)
  {
    v13 = *a5 + 8;
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v16 = *a6;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005EA4C0(a1, v9, &v22, &v20, &v18, &v16, *a7, *a8, v16);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (*(&v22 + 1))
  {
    sub_100008080(*(&v22 + 1));
  }

  return a1;
}

void sub_1004CE8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CE940(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458BF8;
  sub_1012938B0(a1 + 3, *a2);
  return a1;
}

void sub_1004CE9C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CEB10(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458C48;
  sub_1004CEC20((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return a1;
}

void sub_1004CEBA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CEC20(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v12 = *a2;
  v34 = *a3;
  *a3 = 0uLL;
  v13 = a4[1];
  if (*a4)
  {
    v14 = *a4 + 24;
  }

  else
  {
    v14 = 0;
  }

  v32 = v14;
  v33 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a5[1];
  if (*a5)
  {
    v16 = *a5 + 8;
  }

  else
  {
    v16 = 0;
  }

  v30 = v16;
  v31 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a6[1];
  v28 = *a6;
  v29 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a7[1];
  v26 = *a7;
  v27 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a8[1];
  v24 = *a8;
  v25 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = a9[1];
  v22 = *a9;
  v23 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100E46580(a1, v12, &v34, &v32, &v30, &v28, &v26, &v24, &v22, *a10, *a11);
  if (v23)
  {
    sub_100008080(v23);
  }

  if (v25)
  {
    sub_100008080(v25);
  }

  if (v27)
  {
    sub_100008080(v27);
  }

  if (v29)
  {
    sub_100008080(v29);
  }

  if (v31)
  {
    sub_100008080(v31);
  }

  if (v33)
  {
    sub_100008080(v33);
  }

  if (*(&v34 + 1))
  {
    sub_100008080(*(&v34 + 1));
  }

  return a1;
}

void sub_1004CED94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  if (a16)
  {
    sub_100008080(a16);
  }

  if (a18)
  {
    sub_100008080(a18);
  }

  if (a20)
  {
    sub_100008080(a20);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    sub_100008080(v22);
  }

  v23 = *(v20 - 40);
  if (v23)
  {
    sub_100008080(v23);
  }

  v24 = *(v20 - 24);
  if (v24)
  {
    sub_100008080(v24);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004CEE60(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458C98;
  sub_100CD0DA8(a1 + 3, *a2);
  return a1;
}

void sub_1004CEEE0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CF020(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458CE8;
  sub_1004CF128((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void sub_1004CF0AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CF128(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v10 = *a2;
  v26 = *a3;
  *a3 = 0uLL;
  v11 = a4[1];
  if (*a4)
  {
    v12 = *a4 + 24;
  }

  else
  {
    v12 = 0;
  }

  v24 = v12;
  v25 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a5[1];
  if (*a5)
  {
    v14 = *a5 + 8;
  }

  else
  {
    v14 = 0;
  }

  v22 = v14;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v20 = *a6;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a7[1];
  v18 = *a7;
  v19 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1012E6F34(a1, v10, &v26, &v24, &v22, &v20, &v18, *a8, *a9);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (v25)
  {
    sub_100008080(v25);
  }

  if (*(&v26 + 1))
  {
    sub_100008080(*(&v26 + 1));
  }

  return a1;
}

void sub_1004CF264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  sub_1018994A4(v12 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CF2FC(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458D38;
  sub_100E8FA68((a1 + 3), *a2);
  return a1;
}

void sub_1004CF37C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CF4AC(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, void **a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458D88;
  sub_1004CF5A4((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1004CF528(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458D88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CF5A4(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, void **a8)
{
  v9 = *a2;
  v22 = *a3;
  *a3 = 0uLL;
  v10 = a4[1];
  if (*a4)
  {
    v11 = *a4 + 24;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (*a5)
  {
    v13 = *a5 + 8;
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v16 = *a6;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1012F2598(a1, v9, &v22, &v20, &v18, &v16, *a7, *a8, v16);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (*(&v22 + 1))
  {
    sub_100008080(*(&v22 + 1));
  }

  return a1;
}

void sub_1004CF6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1004CF738(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458DD8;
  sub_100ED1828(a1 + 3, *a2);
  return a1;
}

void sub_1004CF7B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CF8E8(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102458E28;
  sub_1004CF9E0((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1004CF964(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102458E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004CF9E0(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = *a2;
  v22 = *a3;
  *a3 = 0uLL;
  v10 = a4[1];
  if (*a4)
  {
    v11 = *a4 + 24;
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  if (*a5)
  {
    v13 = *a5 + 8;
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a6[1];
  v16 = *a6;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100509114(a1, v9, &v22, &v20, &v18, &v16, *a7, *a8, v16);
  if (v17)
  {
    sub_100008080(v17);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (*(&v22 + 1))
  {
    sub_100008080(*(&v22 + 1));
  }

  return a1;
}

void sub_1004CFAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018994F8(v10 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004CFB08(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100EFC7CC(result);

    operator delete();
  }

  return result;
}

BOOL sub_1004CFB68()
{
  v1 = qword_1025D47D8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_1004CFB88()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_1004CFC00()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

void sub_1004CFC78()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_1004CFD3C()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_1004CFDF4()
{
  qword_102656590 = off_102458188;
  qword_1026565A8 = &qword_102656590;
  __cxa_atexit(sub_1003EE78C, &qword_102656590, dword_100000000);
  qword_1026565B0 = off_102458208;
  qword_1026565C8 = &qword_1026565B0;
  __cxa_atexit(sub_1003EE78C, &qword_1026565B0, dword_100000000);
  qword_1026565D0 = off_102458288;
  qword_1026565E8 = &qword_1026565D0;
  __cxa_atexit(sub_1003EE790, &qword_1026565D0, dword_100000000);
  qword_1026565F0 = off_102458308;
  qword_102656608 = &qword_1026565F0;
  __cxa_atexit(sub_1003EE790, &qword_1026565F0, dword_100000000);
  operator new();
}

uint64_t sub_1004D0008(uint64_t a1)
{
  *a1 = CFAbsoluteTimeGetCurrent();
  sub_1001CBD74((a1 + 8));
  sub_10000EC00(v5, "CLWifiAssociatedApHarvestDatabase");
  sub_10000EC00(__p, "CLSubHarvesterWifiAssociatedAp");
  sub_1012675F8(a1 + 24, v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return a1;
}

void sub_1004D0098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v22 = *(v20 + 16);
  if (v22)
  {
    sub_100008080(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D00E4(uint64_t a1)
{
  v2 = sub_10018E854(*(a1 + 8));
  sub_10019C594(a1 + 24, v2);
  sub_10019C558((a1 + 24));
  if (!sub_10018E854(*(a1 + 8)))
  {
    sub_1001CBD74(buf);
    v3 = *buf;
    memset(buf, 0, sizeof(buf));
    v4 = *(a1 + 16);
    *(a1 + 8) = v3;
    if (v4)
    {
      sub_100008080(v4);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }
    }

    if (sub_10018E854(*(a1 + 8)))
    {
      v5 = "success";
    }

    else
    {
      v5 = "fail";
    }

    sub_10000EC00(__p, v5);
    if (qword_1025D4620 != -1)
    {
      sub_101899538();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v12 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLSubHarvesterWifiAssociatedAp, re-initialize database: %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101899560(buf);
      v8 = __p;
      if (v12 < 0)
      {
        v8 = __p[0];
      }

      v13 = 136315138;
      v14 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "CLSubHarvesterWifiAssociatedAp, re-initialize database: %s", &v13);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "void CLSubHarvesterWifiAssociatedAp::reinitializeWifiAssociatedApHarvestDatabaseIfInvalid()", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1004D0304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D032C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *v35 = @"locationType";
  *v31 = [NSNumber numberWithUnsignedInt:*(a2 + 96)];
  v10 = [NSDictionary dictionaryWithObjects:v31 forKeys:v35 count:1];
  if (qword_1025D4620 != -1)
  {
    sub_101899538();
  }

  v11 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Submitting CoreAnalytics event for associated AP harvest location, %{public}@", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018995A4(v10);
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v39 = sub_1004D0B70;
  v40 = &unk_102449D20;
  v41 = v10;
  AnalyticsSendEventLazy();
  if (*(a2 + 96) == 1)
  {
    if (a3 == 3)
    {
      v12 = *(a4 + 1);
      if (v12 <= 0xC && ((1 << v12) & 0x17DF) != 0)
      {
        v13 = *(a2 + 76);
        v14 = *a1;
        if (v13 - v14 >= *(sub_100100690() + 4))
        {
          if (*(a4 + 96) == 1 && *(a4 + 48) > 0)
          {
            sub_1004D00E4(a1);
            sub_10018F18C(&buf, a4 + 8, a2, a5);
            sub_10023FC28(*(a1 + 8), &buf);
            *a1 = *(a2 + 76);
          }

          else
          {
            if (qword_1025D4620 != -1)
            {
              sub_101899538();
            }

            v19 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf) = 0;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Skip harvesting associated AP as the device is not connected to any wifi network!", &buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101899804();
            }
          }
        }

        return;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101899538();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_1001D78F4(&buf);
        v21 = SHIBYTE(v39) >= 0 ? &buf : buf;
        v22 = *(a4 + 1);
        *v31 = 136643075;
        *&v31[4] = v21;
        v32 = 1026;
        v33 = v22;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Skip harvesting location %{sensitive}s for associated AP as scanType %{public}d is not accepted", v31, 0x12u);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101899538();
        }

        v23 = qword_1025D4628;
        sub_1001D78F4(v31);
        if (v34 >= 0)
        {
          v24 = v31;
        }

        else
        {
          v24 = *v31;
        }

        v25 = *(a4 + 1);
        *v35 = 136643075;
        *&v35[4] = v24;
        v36 = 1026;
        v37 = v25;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v23, 2, "Skip harvesting location %{sensitive}s for associated AP as scanType %{public}d is not accepted", v35, 18);
        v27 = v26;
        if (v34 < 0)
        {
          operator delete(*v31);
        }

LABEL_65:
        sub_100152C7C("Generic", 1, 0, 2, "void CLSubHarvesterWifiAssociatedAp::harvestWifiFromGps(const CLDaemonLocation &, const CLWifiService_Type::Notification, const CLWifiService_Type::NotificationData &, const RTLocationOfInterestType)", "%s\n", v27);
        if (v27 != &buf)
        {
          free(v27);
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101899538();
      }

      v17 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_1001D78F4(&buf);
        v18 = SHIBYTE(v39) >= 0 ? &buf : buf;
        *v31 = 136643075;
        *&v31[4] = v18;
        v32 = 1026;
        v33 = a3;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Skip harvesting location %{sensitive}s for associated AP as notification %{public}d is not kNotificationScan", v31, 0x12u);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101899538();
        }

        v28 = qword_1025D4628;
        sub_1001D78F4(v31);
        if (v34 >= 0)
        {
          v29 = v31;
        }

        else
        {
          v29 = *v31;
        }

        *v35 = 136643075;
        *&v35[4] = v29;
        v36 = 1026;
        v37 = a3;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v28, 2, "Skip harvesting location %{sensitive}s for associated AP as notification %{public}d is not kNotificationScan", v35, 18);
        v27 = v30;
        if (v34 < 0)
        {
          operator delete(*v31);
        }

        goto LABEL_65;
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101899538();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_1001D78F4(&buf);
      v16 = SHIBYTE(v39) >= 0 ? &buf : buf;
      *v31 = 136642819;
      *&v31[4] = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Skip harvesting location %{sensitive}s for associated AP as it is not GPS", v31, 0xCu);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018996BC(a2);
    }
  }
}

void sub_1004D09A8(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018998FC();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Clearing associated AP harvest data in WifiAssociatedApHarvestDatabase [GPS Harvest]", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101899910();
  }

  sub_100654B28(*(a1 + 8));
}

void sub_1004D0A48(uint64_t a1)
{
  v2 = sub_100100690();
  v3 = sub_1001B0A10(v2);
  v5 = v3;
  if (qword_1025D4620 != -1)
  {
    sub_1018998FC();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134283521;
    v7 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Purging GPS harvest samples older than %{private}.1fs in WifiAssociatedApHarvestDatabase", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101899A04(v3);
  }

  sub_1001B0B4C(*(a1 + 8), &v5);
}

void sub_1004D0B78()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

id sub_1004D0EA0(uint64_t a1)
{
  v2 = sub_1000081AC();
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  result = [v4 hasSessionTimedOut:?];
  if (result)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_101899C30();
    }

    v6 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      [*v3 lastARKitUpdate];
      v8 = 134349312;
      v9 = v2;
      v10 = 2050;
      v11 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLVN,sessionTimerHandler,Session has timed out without end notification,nowMachContinuousTime,%{public}.3lf,lastARKitUpdate,%{public}.3lf", &v8, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101899C44(v3, v2);
    }

    return [*v3 closeSessionWithState:2 fromClient:@"com.apple.locationd.CLVisionNotifier"];
  }

  return result;
}

uint64_t sub_1004D1E40(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2082;
  *(v3 + 14) = result;
  return result;
}

uint64_t sub_1004D1FC8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D2E14;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656700 != -1)
  {
    dispatch_once(&qword_102656700, block);
  }

  return qword_102636EF0;
}

void sub_1004D2220(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  v4 = sub_10071C8FC(v2, v3);
  if (v4)
  {
    v6 = sub_10001A3E8(v4, v5);
    if ((sub_10003FFF8(v6, v7) & 1) == 0)
    {
      byte_1026566F0 = 1;
    }
  }
}

void sub_1004D2390(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  __asm { FMOV            V2.2D, #-1.0 }

  *(a2 + 24) = _Q2;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_100FAB22C(*(a1 + 120), &v13, a3, a4);
  v10 = v13;
  if ((v14 - v13) < 0x41)
  {
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v11 = v14[-4];
    v12 = v14[-3];
    *(a2 + 24) = v13[11];
    *(a2 + 32) = v11;
    *(a2 + 40) = vsub_s32(v12, v10[5]);
  }

  v14 = v10;
  operator delete(v10);
}

void sub_1004D2418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1004D24C4(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4390 != -1)
  {
    sub_10014E59C();
  }

  v4 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Added client for cycling workout distance updates", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189A49C();
  }

  return [*(a1 + 856) addObject:a2];
}

id sub_1004D25AC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4390 != -1)
  {
    sub_10014E59C();
  }

  v4 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Removed client from cycling workout distance updates", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189A588();
  }

  return [*(a1 + 856) removeObject:a2];
}

void sub_1004D2710(uint64_t a1, void *a2)
{
  v2 = sub_1004D2B2C(a1, "CLOdometerNotifier", a2);
  *v2 = off_102458F68;
  v2[14] = off_102459088;
  operator new();
}

void sub_1004D29D8(_Unwind_Exception *a1)
{
  v6 = *(v1 + 1032);
  *(v1 + 1032) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *v4;
  *v4 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(v1 + 1007) < 0)
  {
    operator delete(*v3);
  }

  sub_1001FB750(v2);
  sub_1004D3D1C((v1 + 864));
  if (*(v1 + 855) < 0)
  {
    operator delete(*(v1 + 832));
  }

  v8 = *(v1 + 144);
  if (v8)
  {
    sub_100008080(v8);
  }

  v9 = *(v1 + 128);
  if (v9)
  {
    sub_100008080(v9);
  }

  sub_1004D2BD8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D2B2C(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024593D0;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_1004D2BBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D2BD8(uint64_t a1)
{
  *a1 = off_1024593D0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1004D2C5C(uint64_t a1)
{
  *a1 = off_102458F68;
  *(a1 + 112) = off_102459088;

  *(a1 + 976) = 0;
  *(a1 + 856) = 0;
  *(a1 + 108) = 1;
  v2 = *(a1 + 1032);
  *(a1 + 1032) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1008);
  *(a1 + 1008) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  sub_1001FB750((a1 + 952));
  v4 = *(a1 + 936);
  *(a1 + 936) = 0;
  if (v4)
  {
    sub_100E9A2E4(v4);
    operator delete();
  }

  v5 = *(a1 + 888);
  if (v5)
  {
    *(a1 + 896) = v5;
    operator delete(v5);
  }

  if (*(a1 + 855) < 0)
  {
    operator delete(*(a1 + 832));
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    sub_100008080(v7);
  }

  return sub_1004D2BD8(a1);
}

void sub_1004D2DD4(uint64_t a1)
{
  *(a1 + 976) = 0;

  *(a1 + 856) = 0;
  *(a1 + 108) = 1;
}

uint64_t sub_1004D2E14(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  v2 = sub_10001CF3C();
  if (v2)
  {
    operator new();
  }

  v4 = sub_10001A3E8(v2, v3);
  result = sub_10001CF04(v4, v5);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1004D2ECC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D2F5C;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656710 != -1)
  {
    dispatch_once(&qword_102656710, block);
  }

  return byte_102656708;
}

id sub_1004D2F5C(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "vendor")];
  byte_102656708 = result;
  return result;
}

id sub_1004D2FB8(uint64_t a1)
{
  v1 = (a1 + 984);
  if (*(a1 + 1007) < 0)
  {
    v1 = *v1;
  }

  v2 = [objc_msgSend(*(a1 + 976) syncgetAuthorizationContextIfClientIsNonZonal:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v1)), "isAuthorizedForServiceTypeMask:", 16}];
  if ((v2 & 1) == 0)
  {
    if (qword_1025D4390 != -1)
    {
      sub_10014E59C();
    }

    v3 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Motion calibration system service is disabled.", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189A920();
    }
  }

  return v2;
}

uint64_t sub_1004D30B8(uint64_t a1, char a2)
{
  v2 = *(a1 - 112);
  *(a1 + 832) = a2;
  return (*(v2 + 216))();
}

void sub_1004D30E8(unsigned __int8 *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 2)
  {
    (*(*result + 240))(result, a3, a4);

    sub_100D3D2D4(result + 864, a4);
  }
}

_DWORD *sub_1004D3160(_DWORD *result, uint64_t a2, _DWORD *a3, int *a4)
{
  if (!*a3)
  {
    v5 = result;
    if (qword_1025D4390 != -1)
    {
      sub_10014E59C();
    }

    v6 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_INFO))
    {
      v7 = *a4;
      v8[0] = 67174657;
      v8[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Received SignalEnv notification, %{private}d", v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189AB64(a4);
    }

    v5[237] = *a4;
    return (*(*v5 + 248))(v5, a4);
  }

  return result;
}

void sub_1004D3344(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10189A8E4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifier::onSignalEnvironmentNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10189A8F8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifier::onSignalEnvironmentNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1004D3160(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1004D3510(uint64_t a1)
{
  result = *(a1 + 1032);
  *(a1 + 1032) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

BOOL sub_1004D35D8(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_10189A8E4();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_10189AE78(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_1004D38F0(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10189A8E4();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189B0A4(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10189A8E4();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189AF80(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_10189A8F8();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_10189A8F8();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLOdometerNotifier_Type::Notification, CLOdometerNotifier_Type::NotificationData>::listClients() [Notification_T = CLOdometerNotifier_Type::Notification, NotificationData_T = CLOdometerNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
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
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_1004D3CB4(uint64_t a1)
{
  sub_1004D4830(a1);

  operator delete();
}

void *sub_1004D3D1C(void *a1)
{
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    sub_100E9A2E4(v2);
    operator delete();
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1004D3DD4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_1004D3E20(a1, a2);
  }

  sub_10028C64C();
}

void sub_1004D3E20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1004D3F00(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1004D3F2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1004D4000(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1004D4050(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D4134(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004D4220(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004D42D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D42EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1004D431C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004D435C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1004D43DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004D43F0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004D43F0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1003F764C(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1004D4438(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1003F764C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1004D447C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004D44DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024595A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1004D4538(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1004D4710(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10189B1DC();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C8D342 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189B1F0();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10189B1DC();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C8D342 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189B2F8();
    }
  }

  return 0;
}

id sub_1004D4710(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254E9D8))
  {
    if ([objc_msgSend(a2 "serialized")] != 192)
    {
      sub_10189B610();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t *sub_1004D47C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1001623C8(a2, *(a1 + 32), *(a1 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 6));
}

uint64_t *sub_1004D47F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  return sub_1001623C8(v2, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 6));
}

void sub_1004D4818(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

uint64_t sub_1004D4830(uint64_t a1)
{
  *a1 = off_102459640;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_1004D4974(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1004D4994()
{
  qword_102656660 = off_1024591D0;
  qword_102656678 = &qword_102656660;
  __cxa_atexit(sub_1003EE78C, &qword_102656660, dword_100000000);
  qword_102656680 = off_102459250;
  qword_102656698 = &qword_102656680;
  __cxa_atexit(sub_1003EE78C, &qword_102656680, dword_100000000);
  qword_1026566A0 = off_1024592D0;
  qword_1026566B8 = &qword_1026566A0;
  __cxa_atexit(sub_1003EE790, &qword_1026566A0, dword_100000000);
  qword_1026566C0 = off_102459350;
  qword_1026566D8 = &qword_1026566C0;

  return __cxa_atexit(sub_1003EE790, &qword_1026566C0, dword_100000000);
}

void sub_1004D5220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_1004D524C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4660 != -1)
  {
    sub_10189B794();
  }

  v3 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[CLEEDCoexMonitorThermal initWithQueue:mitigationConfig:cachedCoexMetricData:eventCB:coexMetricUpdateCB:]_block_invoke";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#EED2CXTH,%{public}s ThermalMitigation Disabled, returning with nominal.", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189B814();
  }

  result = *(a1 + 32);
  v5 = result[2];
  if (v5)
  {
    return (*(v5 + 16))(v5, [result getMitigationForCurrentlevel], 0);
  }

  return result;
}

id sub_1004D534C(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {

    return [result queryThermalLevel];
  }

  return result;
}

void sub_1004D66AC(void *a1, double **a2, double a3)
{
  v3 = *a2;
  a2[1] = *a2;
  v4 = *a1;
  v5 = a1[1];
  if (v5 != *a1)
  {
    v7 = *(v4 + 2) - a3;
    v8 = v7 + 0.0;
    v9 = (v7 + 0.0) * *(v4 + 5) / 3600.0 + 0.0;
    v34 = v9;
    v35 = v7 + 0.0;
    v10 = v4[2];
    v11 = v4[3];
    v12 = v4[5];
    v40 = v4[4];
    v41 = v12;
    v38 = v10;
    v39 = v11;
    v13 = v4[1];
    v36 = *v4;
    v37 = v13;
    if (v7 >= 60.0)
    {
      v15 = *&v37;
      do
      {
        v16 = v8 + -60.0;
        v17 = v15 - (v8 + -60.0) + -60.0;
        v18 = v9 * 3600.0 / v8;
        v19 = a2[2];
        if (v3 >= v19)
        {
          v20 = *a2;
          v21 = v3 - *a2;
          v22 = v21 >> 4;
          v23 = (v21 >> 4) + 1;
          if (v23 >> 60)
          {
            sub_10028C64C();
          }

          v24 = v19 - v20;
          if (v24 >> 3 > v23)
          {
            v23 = v24 >> 3;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            sub_1003E5FE8(a2, v25);
          }

          v26 = (16 * v22);
          *v26 = v17;
          v26[1] = v18;
          v3 = (16 * v22 + 16);
          memcpy(0, v20, v21);
          v27 = *a2;
          *a2 = 0;
          a2[1] = v3;
          a2[2] = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v3 = v17;
          v3[1] = v18;
          v3 += 2;
          v9 = v34;
          v8 = v35;
          v16 = v35 + -60.0;
        }

        a2[1] = v3;
        v9 = v9 - v9 * 60.0 / v8;
        v34 = v9;
        v35 = v16;
        v8 = v16;
      }

      while (v16 >= 60.0);
      v4 = *a1;
      v5 = a1[1];
    }

    v28 = v4 + 6;
    v33[0] = &v35;
    v33[1] = &v34;
    v33[2] = &v36;
    v33[3] = a2;
    while (v28 != v5)
    {
      v29 = v28[1];
      v42[0] = *v28;
      v42[1] = v29;
      v30 = v28[2];
      v31 = v28[3];
      v32 = v28[5];
      v42[4] = v28[4];
      v42[5] = v32;
      v42[2] = v30;
      v42[3] = v31;
      sub_1004D68FC(v33, v42);
      v28 += 6;
    }
  }
}

void sub_1004D68FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a1 + 16) + 16);
  if (v3 >= v4)
  {
    v7 = v3 - v4;
    v8 = v7 + **a1;
    if (v8 >= 60.0)
    {
      v9 = v8 + -60.0;
      v10 = *(a1 + 8);
      v11 = *v10 + (v7 - (v8 + -60.0)) * *(a2 + 40) / 3600.0;
      *v10 = v11;
      v12 = *(a1 + 24);
      v13 = *(a2 + 16) - (v8 + -60.0) + -60.0;
      v14 = v11 * 3600.0 / 60.0;
      v16 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (v16 >= v15)
      {
        v18 = *v12;
        v19 = v16 - *v12;
        v20 = v19 >> 4;
        v21 = (v19 >> 4) + 1;
        if (v21 >> 60)
        {
LABEL_37:
          sub_10028C64C();
        }

        v22 = v15 - v18;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        v23 = v22 >= 0x7FFFFFFFFFFFFFF0;
        v24 = 0xFFFFFFFFFFFFFFFLL;
        if (!v23)
        {
          v24 = v21;
        }

        if (v24)
        {
          sub_1003E5FE8(*(a1 + 24), v24);
        }

        v25 = (16 * v20);
        *v25 = v13;
        v25[1] = v14;
        v17 = 16 * v20 + 16;
        memcpy(0, v18, v19);
        v26 = *v12;
        *v12 = 0;
        *(v12 + 8) = v17;
        *(v12 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v16 = v13;
        v16[1] = v14;
        v17 = (v16 + 2);
      }

      *(v12 + 8) = v17;
      v28 = *a1;
      v27 = *(a1 + 8);
      *v28 = v9;
      *v27 = v9 * *(a2 + 40) / 3600.0;
      for (i = *v28; i >= 60.0; *v44 = i)
      {
        v30 = *(a1 + 24);
        v31 = *(a2 + 16) - (i + -60.0) + -60.0;
        v32 = *v27 * 3600.0 / i;
        v34 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (v34 >= v33)
        {
          v36 = *v30;
          v37 = v34 - *v30;
          v38 = v37 >> 4;
          v39 = (v37 >> 4) + 1;
          if (v39 >> 60)
          {
            goto LABEL_37;
          }

          v40 = v33 - v36;
          if (v40 >> 3 > v39)
          {
            v39 = v40 >> 3;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF0)
          {
            v41 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            sub_1003E5FE8(*(a1 + 24), v41);
          }

          v42 = (16 * v38);
          *v42 = v31;
          v42[1] = v32;
          v35 = 16 * v38 + 16;
          memcpy(0, v36, v37);
          v43 = *v30;
          *v30 = 0;
          *(v30 + 8) = v35;
          *(v30 + 16) = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v34 = v31;
          v34[1] = v32;
          v35 = (v34 + 2);
        }

        *(v30 + 8) = v35;
        v44 = *a1;
        v27 = *(a1 + 8);
        *v27 = *v27 + *v27 * -60.0 / **a1;
        i = *v44 + -60.0;
      }
    }

    else
    {
      **a1 = v8;
      **(a1 + 8) = **(a1 + 8) + v7 * *(a2 + 40) / 3600.0;
    }

    v45 = *(a1 + 16);
    v46 = *(a2 + 16);
    *v45 = *a2;
    v45[1] = v46;
    v47 = *(a2 + 32);
    v48 = *(a2 + 48);
    v49 = *(a2 + 80);
    v45[4] = *(a2 + 64);
    v45[5] = v49;
    v45[2] = v47;
    v45[3] = v48;
  }

  else
  {
    if (qword_1025D43B0 != -1)
    {
      sub_10189C01C();
    }

    v5 = qword_1025D43B8;
    if (os_log_type_enabled(qword_1025D43B8, OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "METMinutes,time rolled back", v50, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189C030();
    }

    *(*(a1 + 24) + 8) = **(a1 + 24);
  }
}

void sub_1004D6D30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D6D48(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1004D6D78(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004D6E20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D6E38(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1004D6E68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004D6F10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D6F28(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1004D6F58(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004D7440(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  v4 = sub_10001CF04(v2, v3);
  if (v4 & 1) != 0 || (sub_10001A3E8(v4, v5), v6 = sub_10001CF3C(), (v6) || (v8 = sub_10001A3E8(v6, v7), sub_10003FFF8(v8, v9)))
  {
    byte_102656738 = 1;
  }
}

void sub_1004D769C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D7918(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity))
  {
    [*(a1 + 32) onSyncActivity:activity];
    if (xpc_activity_get_state(activity) == 2 && !xpc_activity_set_state(activity, 4))
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v4 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
      {
        v14 = 136446466;
        v15 = "com.apple.vo2max.CloudKitManager";
        v16 = 2050;
        state = xpc_activity_get_state(activity);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as Continue. Current state is %{public}ld", &v14, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189C79C();
      }
    }
  }

  else
  {
    v5 = xpc_activity_copy_criteria(activity);
    if (!v5)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
    }

    int64 = xpc_dictionary_get_int64(v5, XPC_ACTIVITY_DELAY);
    v8 = *(a1 + 40);
    v7 = (a1 + 40);
    if (int64 == v8)
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v7;
        v14 = 136446466;
        v15 = "com.apple.vo2max.CloudKitManager";
        v16 = 2050;
        state = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "XPC_CHECK_IN: %{public}s activity already scheduled with a delay of %{public}lld seconds", &v14, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189C9D4();
      }
    }

    else
    {
      v11 = int64;
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v12 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v7;
        v14 = 136446722;
        v15 = "com.apple.vo2max.CloudKitManager";
        v16 = 2050;
        state = v11;
        v18 = 2050;
        v19 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "XPC_CHECK_IN: %{public}s: Overwriting previous delay (%{public}lld) with a new delay of %{public}lld seconds", &v14, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189C8B0(v7, v11);
      }

      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, *v7);
      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
      xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_activity_set_criteria(activity, v5);
    }

    xpc_release(v5);
  }
}

void sub_1004D7E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D8550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008080(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D867C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) "universe")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D871C;
  block[3] = &unk_102447468;
  block[4] = a3;
  block[5] = a2;
  block[6] = *(a1 + 32);
  dispatch_async(v6, block);
}

void sub_1004D871C(void **a1, uint64_t a2)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v3 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v4 = *v2;
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Error determining account status: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189D2B8();
    }
  }

  else
  {
    v6 = a1 + 5;
    if ([a1[5] accountStatus] == 1)
    {
      if ([*v6 supportsDeviceToDeviceEncryption])
      {
        v7 = a1[6];
        v8 = v7[33];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1004D89B4;
        v13[3] = &unk_102459B60;
        v13[4] = v7;
        [v8 fetchUserRecordIDWithCompletionHandler:v13];
        return;
      }

      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v11 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(a1[6] + 33) containerIdentifier];
        *buf = 138543362;
        v15 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "iCloud account for container %{public}@ doesn't support device to device encryption", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189D4AC();
      }
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        v10 = [*v6 accountStatus];
        *buf = 134349056;
        v15 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "iCloud account is not available, status: %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189D3B4();
      }
    }

    [a1[6] stopSyncing:0];
  }
}

void sub_1004D89B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) "universe")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D8A54;
  block[3] = &unk_102447468;
  v7 = *(a1 + 32);
  block[4] = a3;
  block[5] = v7;
  block[6] = a2;
  dispatch_async(v6, block);
}

void sub_1004D8A54(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v3 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v4 = *v2;
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Error getting user record: %{public}@", &v12, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189D5B0();
    }

    return;
  }

  v6 = [*(a1 + 40) getUserRecordIDName];
  if (v6)
  {
    if ([v6 isEqual:{objc_msgSend(*(a1 + 48), "recordName")}])
    {
      goto LABEL_26;
    }

    if ([*(a1 + 40) shouldKeepLocalDataOnAccountChange])
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v7 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "iCloud account has changed. Due to testing override, will not delete local VO2Max data but will still delete sync engine metadata.", &v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189D790();
      }

      [*(a1 + 40) stopSyncing:1];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v8 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[CKManager] iCloud account has changed. Deleting sync engine metadata", &v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189D6AC();
      }

      [*(a1 + 40) stopSyncing:1];
      [*(a1 + 40) deleteLocalVO2MaxData];
    }
  }

  [*(a1 + 40) setUserRecordIDName:{objc_msgSend(*(a1 + 48), "recordName")}];
LABEL_26:
  if (!*(*(a1 + 40) + 272))
  {
    if (qword_1025D4450 != -1)
    {
      sub_10015DAE4();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Will attempt to initialize the sync engine if/after device has been unlocked.", &v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189D874();
    }

    v10 = *(*(a1 + 40) + 80);
    if (v10)
    {
      [*(v10 + 16) register:*(v10 + 8) forNotification:0 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10015DAE4();
      }

      v11 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Attempting registration when fDataProtectionClient is not initialized", &v12, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189D958();
      }
    }
  }
}

void sub_1004D8FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) "universe")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004D9050;
  block[3] = &unk_102447468;
  v7 = *(a1 + 32);
  block[4] = a3;
  block[5] = v7;
  block[6] = a2;
  dispatch_async(v6, block);
}

void sub_1004D9050(void *a1, uint64_t a2)
{
  v3 = (a1 + 4);
  if (a1[4])
  {
    if (qword_1025D4450 != -1)
    {
      sub_10189C184();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v5 = *v3;
      *buf = 138543362;
      v26 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CKManager] Error fetching record zones: %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189DC04();
    }

    v6 = a1 + 5;
    v7 = 3;
  }

  else
  {
    v8 = (a1 + 6);
    if (a1[6])
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*v8 count];
        v11 = *v8;
        *buf = 134349314;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "[CKManager] Deleting %{public}lu zones: %@", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189DD00();
      }

      v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*v8, "count")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = *v8;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, 0);
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [[CKSyncEnginePendingZoneDelete alloc] initWithZoneID:{objc_msgSend(*(*(&v21 + 1) + 8 * i), "zoneID")}];
            [v12 addObject:v18];
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13);
        }

        while (v15);
      }

      v19 = a1[5];
      v6 = a1 + 5;
      [objc_msgSend(*(v19 + 272) "state")];
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_10189C184();
      }

      v20 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "[CKManager] No zones to delete", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189DE10();
      }

      v6 = a1 + 5;
    }

    v7 = 4;
  }

  *(*v6 + 256) = v7;
}

void sub_1004D93F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D95E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004D9CA4(id a1, NSError *a2)
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = a2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Sync engine fetch complete for output records: %{public}@", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189E564();
  }
}

void sub_1004D9D78(id a1, NSError *a2)
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = a2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Sync engine fetch complete for input records: %{public}@", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189E654();
  }
}

void sub_1004D9E4C(id a1, NSError *a2)
{
  if (qword_1025D4450 != -1)
  {
    sub_10189C184();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = a2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Sync engine fetch complete for prior records: %{public}@", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189E744();
  }
}

void sub_1004DAE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  v19 = *(v17 - 208);
  if (v19)
  {
    *(v17 - 200) = v19;
    operator delete(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004DB6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004DC474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1004DD988(uint64_t a1)
{
  v3[0] = @"phoneSyncEngineEnabled";
  v4[0] = [NSNumber numberWithBool:*(*(a1 + 32) + 272) != 0];
  v3[1] = @"phoneOutputSaveQueuedCount";
  v4[1] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v3[2] = @"phoneOutputSaveAttemptedCount";
  v4[2] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v3[3] = @"phoneOutputSaveSuccessCount";
  v4[3] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v3[4] = @"phoneOutputSaveFailureCount";
  v4[4] = [NSNumber numberWithInt:*(*(a1 + 32) + 152)];
  v3[5] = @"phoneOutputFetchSuccessCount";
  v4[5] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v3[6] = @"phoneOutputFetchFailureCount";
  v4[6] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v3[7] = @"phoneInputSaveQueuedCount";
  v4[7] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v3[8] = @"phoneInputSaveAttemptedCount";
  v4[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v3[9] = @"phoneInputSaveSuccessCount";
  v4[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v3[10] = @"phoneInputSaveFailureCount";
  v4[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v3[11] = @"phoneInputFetchSuccessCount";
  v4[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v3[12] = @"phoneInputFetchFailureCount";
  v4[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 184)];
  v3[13] = @"phoneForcedFetchRequestedCount";
  v4[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v3[14] = @"phoneSecondsOfDataCollection";
  v4[14] = [NSNumber numberWithDouble:*(*(a1 + 32) + 224)];
  v3[15] = @"phonePriorSaveQueuedCount";
  v4[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v3[16] = @"phonePriorDeleteQueuedCount";
  v4[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v3[17] = @"phonePriorSaveAttemptedCount";
  v4[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 196)];
  v3[18] = @"phonePriorSaveSuccessCount";
  v4[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v3[19] = @"phonePriorSaveFailureCount";
  v4[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v3[20] = @"phonePriorFetchSuccessCount";
  v4[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 208)];
  v3[21] = @"phonePriorFetchFailureCount";
  v4[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 212)];
  v3[22] = @"numPairedWatches";
  v4[22] = [NSNumber numberWithInt:*(a1 + 136)];
  v3[23] = @"watchSyncEngineEnabled";
  v4[23] = [NSNumber numberWithBool:*(a1 + 40)];
  v3[24] = @"watchOutputSaveQueuedCount";
  v4[24] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[25] = @"watchOutputSaveAttemptedCount";
  v4[25] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[26] = @"watchOutputSaveSuccessCount";
  v4[26] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[27] = @"watchOutputSaveFailureCount";
  v4[27] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[28] = @"watchOutputFetchSuccessCount";
  v4[28] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[29] = @"watchOutputFetchFailureCount";
  v4[29] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[30] = @"watchInputSaveQueuedCount";
  v4[30] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[31] = @"watchInputSaveAttemptedCount";
  v4[31] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[32] = @"watchInputSaveSuccessCount";
  v4[32] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[33] = @"watchInputSaveFailureCount";
  v4[33] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[34] = @"watchInputFetchSuccessCount";
  v4[34] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[35] = @"watchInputFetchFailureCount";
  v4[35] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[36] = @"watchForcedFetchRequestedCount";
  v4[36] = [NSNumber numberWithInt:*(a1 + 120)];
  v3[37] = @"watchSecondsOfDataCollection";
  v4[37] = [NSNumber numberWithDouble:*(a1 + 128)];
  v3[38] = @"watchPriorSaveQueuedCount";
  v4[38] = [NSNumber numberWithInt:*(a1 + 92)];
  v3[39] = @"watchPriorDeleteQueuedCount";
  v4[39] = [NSNumber numberWithInt:*(a1 + 96)];
  v3[40] = @"watchPriorSaveAttemptedCount";
  v4[40] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[41] = @"watchPriorSaveSuccessCount";
  v4[41] = [NSNumber numberWithInt:*(a1 + 104)];
  v3[42] = @"watchPriorSaveFailureCount";
  v4[42] = [NSNumber numberWithInt:*(a1 + 108)];
  v3[43] = @"watchPriorFetchSuccessCount";
  v4[43] = [NSNumber numberWithInt:*(a1 + 112)];
  v3[44] = @"watchPriorFetchFailureCount";
  v4[44] = [NSNumber numberWithInt:*(a1 + 116)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:45];
}

uint64_t sub_1004DFA14(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(__int128 *, __int128 *))
{
  v8 = *a4;
  v9 = a2[3];
  v74 = a2[2];
  v75 = v9;
  v76 = a2[4];
  v10 = a2[1];
  v72 = *a2;
  v73 = v10;
  v11 = a1[3];
  v69 = a1[2];
  v70 = v11;
  v71 = a1[4];
  v12 = a1[1];
  v67 = *a1;
  v68 = v12;
  v13 = v8(&v72, &v67);
  v14 = *a4;
  if (v13)
  {
    v15 = a3[3];
    v74 = a3[2];
    v75 = v15;
    v76 = a3[4];
    v16 = a3[1];
    v72 = *a3;
    v73 = v16;
    v17 = a2[3];
    v69 = a2[2];
    v70 = v17;
    v71 = a2[4];
    v18 = a2[1];
    v67 = *a2;
    v68 = v18;
    if (v14(&v72, &v67))
    {
      v19 = a1[3];
      v74 = a1[2];
      v75 = v19;
      v76 = a1[4];
      v20 = a1[1];
      v72 = *a1;
      v73 = v20;
      *a1 = *a3;
      v21 = a3[4];
      v23 = a3[1];
      v22 = a3[2];
      a1[3] = a3[3];
      a1[4] = v21;
      a1[1] = v23;
      a1[2] = v22;
LABEL_9:
      v65 = v76;
      a3[3] = v75;
      a3[4] = v65;
      v66 = v74;
      a3[1] = v73;
      a3[2] = v66;
      result = 1;
      *a3 = v72;
      return result;
    }

    v48 = a1[3];
    v74 = a1[2];
    v75 = v48;
    v76 = a1[4];
    v49 = a1[1];
    v72 = *a1;
    v73 = v49;
    *a1 = *a2;
    v50 = a2[4];
    v52 = a2[1];
    v51 = a2[2];
    a1[3] = a2[3];
    a1[4] = v50;
    a1[1] = v52;
    a1[2] = v51;
    v53 = v76;
    a2[3] = v75;
    a2[4] = v53;
    v54 = v74;
    a2[1] = v73;
    a2[2] = v54;
    *a2 = v72;
    v55 = *a4;
    v56 = a3[3];
    v74 = a3[2];
    v75 = v56;
    v76 = a3[4];
    v57 = a3[1];
    v72 = *a3;
    v73 = v57;
    v58 = a2[3];
    v69 = a2[2];
    v70 = v58;
    v71 = a2[4];
    v59 = a2[1];
    v67 = *a2;
    v68 = v59;
    if (v55(&v72, &v67))
    {
      v60 = a2[3];
      v74 = a2[2];
      v75 = v60;
      v76 = a2[4];
      v61 = a2[1];
      v72 = *a2;
      v73 = v61;
      *a2 = *a3;
      v62 = a3[4];
      v64 = a3[1];
      v63 = a3[2];
      a2[3] = a3[3];
      a2[4] = v62;
      a2[1] = v64;
      a2[2] = v63;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = a3[3];
    v74 = a3[2];
    v75 = v24;
    v76 = a3[4];
    v25 = a3[1];
    v72 = *a3;
    v73 = v25;
    v26 = a2[3];
    v69 = a2[2];
    v70 = v26;
    v71 = a2[4];
    v27 = a2[1];
    v67 = *a2;
    v68 = v27;
    result = (v14)(&v72, &v67);
    if (!result)
    {
      return result;
    }

    v29 = a2[3];
    v74 = a2[2];
    v75 = v29;
    v76 = a2[4];
    v30 = a2[1];
    v72 = *a2;
    v73 = v30;
    *a2 = *a3;
    v31 = a3[4];
    v33 = a3[1];
    v32 = a3[2];
    a2[3] = a3[3];
    a2[4] = v31;
    a2[1] = v33;
    a2[2] = v32;
    v34 = v76;
    a3[3] = v75;
    a3[4] = v34;
    v35 = v74;
    a3[1] = v73;
    a3[2] = v35;
    *a3 = v72;
    v36 = *a4;
    v37 = a2[3];
    v74 = a2[2];
    v75 = v37;
    v76 = a2[4];
    v38 = a2[1];
    v72 = *a2;
    v73 = v38;
    v39 = a1[3];
    v69 = a1[2];
    v70 = v39;
    v71 = a1[4];
    v40 = a1[1];
    v67 = *a1;
    v68 = v40;
    if (v36(&v72, &v67))
    {
      v41 = a1[3];
      v74 = a1[2];
      v75 = v41;
      v76 = a1[4];
      v42 = a1[1];
      v72 = *a1;
      v73 = v42;
      *a1 = *a2;
      v43 = a2[4];
      v45 = a2[1];
      v44 = a2[2];
      a1[3] = a2[3];
      a1[4] = v43;
      a1[1] = v45;
      a1[2] = v44;
      v46 = v76;
      a2[3] = v75;
      a2[4] = v46;
      v47 = v74;
      a2[1] = v73;
      a2[2] = v47;
      result = 1;
      *a2 = v72;
      return result;
    }
  }

  return 1;
}

double sub_1004DFD34(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, unsigned int (**a5)(__int128 *, __int128 *))
{
  v10 = *a5;
  v11 = a2[3];
  v112 = a2[2];
  v113 = v11;
  v114 = a2[4];
  v12 = a2[1];
  v110 = *a2;
  v111 = v12;
  v13 = a1[3];
  v107 = a1[2];
  v108 = v13;
  v109 = a1[4];
  v14 = a1[1];
  v105 = *a1;
  v106 = v14;
  v15 = v10(&v110, &v105);
  v16 = *a5;
  if (v15)
  {
    v17 = a3[3];
    v112 = a3[2];
    v113 = v17;
    v114 = a3[4];
    v18 = a3[1];
    v110 = *a3;
    v111 = v18;
    v19 = a2[3];
    v107 = a2[2];
    v108 = v19;
    v109 = a2[4];
    v20 = a2[1];
    v105 = *a2;
    v106 = v20;
    if (v16(&v110, &v105))
    {
      v21 = a1[3];
      v112 = a1[2];
      v113 = v21;
      v114 = a1[4];
      v22 = a1[1];
      v110 = *a1;
      v111 = v22;
      *a1 = *a3;
      v23 = a3[4];
      v25 = a3[1];
      v24 = a3[2];
      a1[3] = a3[3];
      a1[4] = v23;
      a1[1] = v25;
      a1[2] = v24;
LABEL_9:
      v66 = v114;
      a3[3] = v113;
      a3[4] = v66;
      v67 = v112;
      a3[1] = v111;
      a3[2] = v67;
      *a3 = v110;
      goto LABEL_10;
    }

    v49 = a1[3];
    v112 = a1[2];
    v113 = v49;
    v114 = a1[4];
    v50 = a1[1];
    v110 = *a1;
    v111 = v50;
    *a1 = *a2;
    v51 = a2[4];
    v53 = a2[1];
    v52 = a2[2];
    a1[3] = a2[3];
    a1[4] = v51;
    a1[1] = v53;
    a1[2] = v52;
    v54 = v114;
    a2[3] = v113;
    a2[4] = v54;
    v55 = v112;
    a2[1] = v111;
    a2[2] = v55;
    *a2 = v110;
    v56 = *a5;
    v57 = a3[3];
    v112 = a3[2];
    v113 = v57;
    v114 = a3[4];
    v58 = a3[1];
    v110 = *a3;
    v111 = v58;
    v59 = a2[3];
    v107 = a2[2];
    v108 = v59;
    v109 = a2[4];
    v60 = a2[1];
    v105 = *a2;
    v106 = v60;
    if (v56(&v110, &v105))
    {
      v61 = a2[3];
      v112 = a2[2];
      v113 = v61;
      v114 = a2[4];
      v62 = a2[1];
      v110 = *a2;
      v111 = v62;
      *a2 = *a3;
      v63 = a3[4];
      v65 = a3[1];
      v64 = a3[2];
      a2[3] = a3[3];
      a2[4] = v63;
      a2[1] = v65;
      a2[2] = v64;
      goto LABEL_9;
    }
  }

  else
  {
    v26 = a3[3];
    v112 = a3[2];
    v113 = v26;
    v114 = a3[4];
    v27 = a3[1];
    v110 = *a3;
    v111 = v27;
    v28 = a2[3];
    v107 = a2[2];
    v108 = v28;
    v109 = a2[4];
    v29 = a2[1];
    v105 = *a2;
    v106 = v29;
    if (v16(&v110, &v105))
    {
      v30 = a2[3];
      v112 = a2[2];
      v113 = v30;
      v114 = a2[4];
      v31 = a2[1];
      v110 = *a2;
      v111 = v31;
      *a2 = *a3;
      v32 = a3[4];
      v34 = a3[1];
      v33 = a3[2];
      a2[3] = a3[3];
      a2[4] = v32;
      a2[1] = v34;
      a2[2] = v33;
      v35 = v114;
      a3[3] = v113;
      a3[4] = v35;
      v36 = v112;
      a3[1] = v111;
      a3[2] = v36;
      *a3 = v110;
      v37 = *a5;
      v38 = a2[3];
      v112 = a2[2];
      v113 = v38;
      v114 = a2[4];
      v39 = a2[1];
      v110 = *a2;
      v111 = v39;
      v40 = a1[3];
      v107 = a1[2];
      v108 = v40;
      v109 = a1[4];
      v41 = a1[1];
      v105 = *a1;
      v106 = v41;
      if (v37(&v110, &v105))
      {
        v42 = a1[3];
        v112 = a1[2];
        v113 = v42;
        v114 = a1[4];
        v43 = a1[1];
        v110 = *a1;
        v111 = v43;
        *a1 = *a2;
        v44 = a2[4];
        v46 = a2[1];
        v45 = a2[2];
        a1[3] = a2[3];
        a1[4] = v44;
        a1[1] = v46;
        a1[2] = v45;
        v47 = v114;
        a2[3] = v113;
        a2[4] = v47;
        v48 = v112;
        a2[1] = v111;
        a2[2] = v48;
        *a2 = v110;
      }
    }
  }

LABEL_10:
  v68 = *a5;
  v69 = a4[3];
  v112 = a4[2];
  v113 = v69;
  v114 = a4[4];
  v70 = a4[1];
  v110 = *a4;
  v111 = v70;
  v71 = a3[3];
  v107 = a3[2];
  v108 = v71;
  v109 = a3[4];
  v72 = a3[1];
  v105 = *a3;
  v106 = v72;
  if (v68(&v110, &v105))
  {
    v74 = a3[3];
    v112 = a3[2];
    v113 = v74;
    v114 = a3[4];
    v75 = a3[1];
    v110 = *a3;
    v111 = v75;
    *a3 = *a4;
    v76 = a4[4];
    v78 = a4[1];
    v77 = a4[2];
    a3[3] = a4[3];
    a3[4] = v76;
    a3[1] = v78;
    a3[2] = v77;
    v79 = v114;
    a4[3] = v113;
    a4[4] = v79;
    v80 = v112;
    a4[1] = v111;
    a4[2] = v80;
    *a4 = v110;
    v81 = *a5;
    v82 = a3[3];
    v112 = a3[2];
    v113 = v82;
    v114 = a3[4];
    v83 = a3[1];
    v110 = *a3;
    v111 = v83;
    v84 = a2[3];
    v107 = a2[2];
    v108 = v84;
    v109 = a2[4];
    v85 = a2[1];
    v105 = *a2;
    v106 = v85;
    if (v81(&v110, &v105))
    {
      v86 = a2[3];
      v112 = a2[2];
      v113 = v86;
      v114 = a2[4];
      v87 = a2[1];
      v110 = *a2;
      v111 = v87;
      *a2 = *a3;
      v88 = a3[4];
      v90 = a3[1];
      v89 = a3[2];
      a2[3] = a3[3];
      a2[4] = v88;
      a2[1] = v90;
      a2[2] = v89;
      v91 = v114;
      a3[3] = v113;
      a3[4] = v91;
      v92 = v112;
      a3[1] = v111;
      a3[2] = v92;
      *a3 = v110;
      v93 = *a5;
      v94 = a2[3];
      v112 = a2[2];
      v113 = v94;
      v114 = a2[4];
      v95 = a2[1];
      v110 = *a2;
      v111 = v95;
      v96 = a1[3];
      v107 = a1[2];
      v108 = v96;
      v109 = a1[4];
      v97 = a1[1];
      v105 = *a1;
      v106 = v97;
      if (v93(&v110, &v105))
      {
        v98 = a1[3];
        v112 = a1[2];
        v113 = v98;
        v114 = a1[4];
        v99 = a1[1];
        v110 = *a1;
        v111 = v99;
        *a1 = *a2;
        v100 = a2[4];
        v102 = a2[1];
        v101 = a2[2];
        a1[3] = a2[3];
        a1[4] = v100;
        a1[1] = v102;
        a1[2] = v101;
        v103 = v114;
        a2[3] = v113;
        a2[4] = v103;
        v104 = v112;
        a2[1] = v111;
        a2[2] = v104;
        result = *&v110;
        *a2 = v110;
      }
    }
  }

  return result;
}

uint64_t sub_1004E01F4(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 80);
    if ((result + 80) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v5;
        v10 = *a3;
        v11 = v8[3];
        v36 = v8[2];
        v37 = v11;
        v38 = v8[4];
        v12 = v8[1];
        v34 = *v8;
        v35 = v12;
        v29 = *v9;
        v13 = v9[1];
        v14 = v9[2];
        v15 = v9[4];
        v32 = v9[3];
        v33 = v15;
        v30 = v13;
        v31 = v14;
        result = v10(&v34, &v29);
        if (result)
        {
          v16 = v8[3];
          v36 = v8[2];
          v37 = v16;
          v38 = v8[4];
          v17 = v8[1];
          v34 = *v8;
          v35 = v17;
          v18 = v7;
          while (1)
          {
            v19 = (v4 + v18);
            v20 = *(v4 + v18 + 48);
            v19[7] = *(v4 + v18 + 32);
            v19[8] = v20;
            v19[9] = *(v4 + v18 + 64);
            v21 = *(v4 + v18 + 16);
            v19[5] = *(v4 + v18);
            v19[6] = v21;
            if (!v18)
            {
              break;
            }

            v22 = *a3;
            v31 = v36;
            v32 = v37;
            v33 = v38;
            v29 = v34;
            v30 = v35;
            v23 = *(v19 - 2);
            v28[2] = *(v19 - 3);
            v28[3] = v23;
            v28[4] = *(v19 - 1);
            v24 = *(v19 - 4);
            v28[0] = *(v19 - 5);
            v28[1] = v24;
            result = v22(&v29, v28);
            v18 -= 80;
            if ((result & 1) == 0)
            {
              v25 = (v4 + v18 + 80);
              goto LABEL_10;
            }
          }

          v25 = v4;
LABEL_10:
          v26 = v37;
          v25[2] = v36;
          v25[3] = v26;
          v25[4] = v38;
          v27 = v35;
          *v25 = v34;
          v25[1] = v27;
        }

        v5 = v8 + 5;
        v7 += 80;
      }

      while (v8 + 5 != a2);
    }
  }

  return result;
}

uint64_t sub_1004E038C(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 80); v4 + 5 != a2; i = v4 + 5)
    {
      v7 = v4;
      v4 = i;
      v8 = *a3;
      v9 = v4[3];
      v35 = v4[2];
      v36 = v9;
      v37 = v4[4];
      v10 = v4[1];
      v33 = *v4;
      v34 = v10;
      v28 = *v7;
      v11 = v7[1];
      v12 = v7[2];
      v13 = v7[4];
      v31 = v7[3];
      v32 = v13;
      v29 = v11;
      v30 = v12;
      result = v8(&v33, &v28);
      if (result)
      {
        v14 = v4[3];
        v35 = v4[2];
        v36 = v14;
        v37 = v4[4];
        v15 = v4[1];
        v33 = *v4;
        v34 = v15;
        v16 = v4;
        do
        {
          v17 = v16 - 5;
          v18 = *(v16 - 4);
          v19 = *(v16 - 2);
          v20 = *(v16 - 1);
          v16[2] = *(v16 - 3);
          v16[3] = v19;
          v16[4] = v20;
          v21 = *(v16 - 6);
          *v16 = *(v16 - 5);
          v16[1] = v18;
          v22 = *a3;
          v30 = v35;
          v31 = v36;
          v32 = v37;
          v28 = v33;
          v29 = v34;
          v23 = *(v16 - 7);
          v27[2] = *(v16 - 8);
          v27[3] = v23;
          v27[4] = v21;
          v24 = *(v16 - 9);
          v27[0] = *(v16 - 10);
          v27[1] = v24;
          result = v22(&v28, v27);
          v16 = v17;
        }

        while ((result & 1) != 0);
        v25 = v36;
        v17[2] = v35;
        v17[3] = v25;
        v17[4] = v37;
        v26 = v34;
        *v17 = v33;
        v17[1] = v26;
      }
    }
  }

  return result;
}

_OWORD *sub_1004E04F8(_OWORD *a1, _OWORD *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[3];
  v61 = a1[2];
  v62 = v7;
  v8 = a1[3];
  v63 = a1[4];
  v9 = a1[1];
  v59 = *a1;
  v60 = v9;
  v66 = v61;
  v67 = v8;
  v68 = a1[4];
  v10 = *a3;
  v64 = v59;
  v65 = v6;
  v11 = *(a2 - 2);
  v56 = *(a2 - 3);
  v57 = v11;
  v58 = *(a2 - 1);
  v12 = *(a2 - 4);
  v54 = *(a2 - 5);
  v55 = v12;
  if (v10(&v64, &v54))
  {
    v13 = a1;
    do
    {
      v14 = v13 + 5;
      v15 = *a3;
      v66 = v61;
      v67 = v62;
      v68 = v63;
      v64 = v59;
      v65 = v60;
      v16 = v13[8];
      v56 = v13[7];
      v57 = v16;
      v58 = v13[9];
      v17 = v13[6];
      v54 = v13[5];
      v55 = v17;
      v18 = v15(&v64, &v54);
      v13 = v14;
    }

    while ((v18 & 1) == 0);
  }

  else
  {
    v19 = a1 + 5;
    do
    {
      v14 = v19;
      if (v19 >= v4)
      {
        break;
      }

      v20 = *a3;
      v66 = v61;
      v67 = v62;
      v68 = v63;
      v64 = v59;
      v65 = v60;
      v21 = v14[3];
      v56 = v14[2];
      v57 = v21;
      v58 = v14[4];
      v22 = v14[1];
      v54 = *v14;
      v55 = v22;
      v23 = v20(&v64, &v54);
      v19 = v14 + 5;
    }

    while (!v23);
  }

  if (v14 >= v4)
  {
    v24 = v4;
  }

  else
  {
    do
    {
      v24 = v4 - 5;
      v25 = *a3;
      v66 = v61;
      v67 = v62;
      v68 = v63;
      v64 = v59;
      v65 = v60;
      v26 = *(v4 - 2);
      v56 = *(v4 - 3);
      v57 = v26;
      v58 = *(v4 - 1);
      v27 = *(v4 - 4);
      v54 = *(v4 - 5);
      v55 = v27;
      v4 -= 5;
    }

    while ((v25(&v64, &v54) & 1) != 0);
  }

  while (v14 < v24)
  {
    v64 = *v14;
    v28 = v14[1];
    v29 = v14[2];
    v30 = v14[4];
    v67 = v14[3];
    v68 = v30;
    v65 = v28;
    v66 = v29;
    v31 = v24[4];
    v33 = v24[1];
    v32 = v24[2];
    v14[3] = v24[3];
    v14[4] = v31;
    v14[1] = v33;
    v14[2] = v32;
    *v14 = *v24;
    v34 = v68;
    v36 = v65;
    v35 = v66;
    v24[3] = v67;
    v24[4] = v34;
    v24[1] = v36;
    v24[2] = v35;
    *v24 = v64;
    do
    {
      v66 = v61;
      v67 = v62;
      v68 = v63;
      v64 = v59;
      v65 = v60;
      v37 = v14[8];
      v56 = v14[7];
      v57 = v37;
      v58 = v14[9];
      v39 = v14[5];
      v38 = v14[6];
      v14 += 5;
      v40 = *a3;
      v54 = v39;
      v55 = v38;
    }

    while (!v40(&v64, &v54));
    do
    {
      v66 = v61;
      v67 = v62;
      v68 = v63;
      v64 = v59;
      v65 = v60;
      v54 = *(v24 - 5);
      v41 = *(v24 - 4);
      v42 = *(v24 - 3);
      v43 = *(v24 - 2);
      v44 = *(v24 - 1);
      v24 -= 5;
      v45 = *a3;
      v57 = v43;
      v58 = v44;
      v55 = v41;
      v56 = v42;
    }

    while ((v45(&v64, &v54) & 1) != 0);
  }

  v46 = v14 - 5;
  if (v14 - 5 != a1)
  {
    *a1 = *v46;
    v47 = *(v14 - 4);
    v48 = *(v14 - 3);
    v49 = *(v14 - 1);
    a1[3] = *(v14 - 2);
    a1[4] = v49;
    a1[1] = v47;
    a1[2] = v48;
  }

  *v46 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v63;
  *(v14 - 2) = v62;
  *(v14 - 1) = v52;
  *(v14 - 4) = v50;
  *(v14 - 3) = v51;
  return v14;
}

__int128 *sub_1004E07E8(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[3];
  v54 = a1[2];
  v55 = v7;
  v56 = a1[4];
  v8 = a1[1];
  v52 = *a1;
  v53 = v8;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 8];
    v59 = a1[v6 + 7];
    v60 = v10;
    v61 = a1[v6 + 9];
    v11 = a1[v6 + 6];
    v57 = a1[v6 + 5];
    v58 = v11;
    v49 = v54;
    v50 = v55;
    v51 = v56;
    v47 = v52;
    v48 = v53;
    v6 += 5;
  }

  while ((v9(&v57, &v47) & 1) != 0);
  v12 = &a1[v6];
  v13 = &a1[v6 - 5];
  if (v6 == 5)
  {
    while (v12 < a2)
    {
      v18 = *a3;
      v14 = a2 - 5;
      v19 = *(a2 - 2);
      v59 = *(a2 - 3);
      v60 = v19;
      v61 = *(a2 - 1);
      v20 = *(a2 - 4);
      v57 = *(a2 - 5);
      v58 = v20;
      v49 = v54;
      v50 = v55;
      v51 = v56;
      v47 = v52;
      v48 = v53;
      a2 -= 5;
      if (v18(&v57, &v47))
      {
        goto LABEL_9;
      }
    }

    v14 = a2;
  }

  else
  {
    do
    {
      v14 = a2 - 5;
      v15 = *a3;
      v16 = *(a2 - 2);
      v59 = *(a2 - 3);
      v60 = v16;
      v61 = *(a2 - 1);
      v17 = *(a2 - 4);
      v57 = *(a2 - 5);
      v58 = v17;
      v49 = v54;
      v50 = v55;
      v51 = v56;
      v47 = v52;
      v48 = v53;
      a2 -= 5;
    }

    while (!v15(&v57, &v47));
  }

LABEL_9:
  if (v12 < v14)
  {
    v21 = v12;
    v22 = v14;
    do
    {
      v23 = v21[3];
      v59 = v21[2];
      v60 = v23;
      v61 = v21[4];
      v24 = v21[1];
      v57 = *v21;
      v58 = v24;
      v26 = v22[1];
      v25 = v22[2];
      v27 = v22[4];
      v21[3] = v22[3];
      v21[4] = v27;
      v21[1] = v26;
      v21[2] = v25;
      *v21 = *v22;
      *v22 = v57;
      v28 = v58;
      v29 = v59;
      v30 = v61;
      v22[3] = v60;
      v22[4] = v30;
      v22[1] = v28;
      v22[2] = v29;
      do
      {
        v31 = v21[8];
        v59 = v21[7];
        v60 = v31;
        v61 = v21[9];
        v33 = v21[5];
        v32 = v21[6];
        v21 += 5;
        v34 = *a3;
        v57 = v33;
        v58 = v32;
        v49 = v54;
        v50 = v55;
        v51 = v56;
        v47 = v52;
        v48 = v53;
      }

      while ((v34(&v57, &v47) & 1) != 0);
      do
      {
        v57 = *(v22 - 5);
        v35 = *(v22 - 4);
        v36 = *(v22 - 3);
        v37 = *(v22 - 2);
        v38 = *(v22 - 1);
        v22 -= 5;
        v39 = *a3;
        v60 = v37;
        v61 = v38;
        v58 = v35;
        v59 = v36;
        v49 = v54;
        v50 = v55;
        v51 = v56;
        v47 = v52;
        v48 = v53;
      }

      while (!v39(&v57, &v47));
    }

    while (v21 < v22);
    v13 = v21 - 5;
  }

  if (v13 != a1)
  {
    *a1 = *v13;
    v40 = v13[1];
    v41 = v13[2];
    v42 = v13[4];
    a1[3] = v13[3];
    a1[4] = v42;
    a1[1] = v40;
    a1[2] = v41;
  }

  *v13 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v56;
  v13[3] = v55;
  v13[4] = v45;
  v13[1] = v43;
  v13[2] = v44;
  return v13;
}

BOOL sub_1004E0AB0(__int128 *a1, __int128 *a2, unsigned int (**a3)(__int128 *, __int128 *))
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v76 = a2 - 5;
        v77 = *a3;
        v78 = a1[6];
        v79 = a1[8];
        v80 = a1[9];
        v246 = a1[7];
        v247 = v79;
        v248 = v80;
        v81 = a1[4];
        v244 = a1[5];
        v245 = v78;
        v82 = a1[3];
        v241 = a1[2];
        v242 = v82;
        v243 = v81;
        v83 = a1[1];
        v239 = *a1;
        v240 = v83;
        v84 = v77(&v244, &v239);
        v85 = *a3;
        if (v84)
        {
          v86 = v76[3];
          v246 = v76[2];
          v247 = v86;
          v248 = v76[4];
          v87 = v76[1];
          v244 = *v76;
          v245 = v87;
          v88 = a1[8];
          v241 = a1[7];
          v242 = v88;
          v243 = a1[9];
          v89 = a1[6];
          v239 = a1[5];
          v240 = v89;
          if (v85(&v244, &v239))
          {
            v90 = a1[3];
            v246 = a1[2];
            v247 = v90;
            v248 = a1[4];
            v91 = a1[1];
            v244 = *a1;
            v245 = v91;
            *a1 = *v76;
            v92 = v76[4];
            v94 = v76[1];
            v93 = v76[2];
            a1[3] = v76[3];
            a1[4] = v92;
            a1[1] = v94;
            a1[2] = v93;
          }

          else
          {
            v170 = a1[3];
            v246 = a1[2];
            v247 = v170;
            v171 = a1[5];
            v248 = a1[4];
            v172 = a1[1];
            v244 = *a1;
            v245 = v172;
            v173 = v172;
            a1[5] = v244;
            v174 = v246;
            v175 = v247;
            v177 = a1[5];
            v176 = a1[6];
            a1[6] = v173;
            v179 = a1[6];
            v178 = a1[7];
            a1[7] = v174;
            v181 = a1[7];
            v180 = a1[8];
            a1[2] = v178;
            a1[3] = v180;
            a1[8] = v175;
            v182 = a1[8];
            a1[4] = a1[9];
            *a1 = v171;
            a1[1] = v176;
            a1[9] = v248;
            v183 = v76[3];
            v246 = v76[2];
            v247 = v183;
            v248 = v76[4];
            v184 = v76[1];
            v244 = *v76;
            v245 = v184;
            v185 = *a3;
            v241 = v181;
            v242 = v182;
            v243 = a1[9];
            v239 = v177;
            v240 = v179;
            if (!v185(&v244, &v239))
            {
              return 1;
            }

            v186 = a1[8];
            v246 = a1[7];
            v247 = v186;
            v248 = a1[9];
            v187 = a1[6];
            v244 = a1[5];
            v245 = v187;
            a1[5] = *v76;
            v188 = v76[4];
            v190 = v76[1];
            v189 = v76[2];
            a1[8] = v76[3];
            a1[9] = v188;
            a1[6] = v190;
            a1[7] = v189;
          }

          v191 = v248;
          v76[3] = v247;
          v76[4] = v191;
          v192 = v246;
          v76[1] = v245;
          v76[2] = v192;
          result = 1;
          *v76 = v244;
          return result;
        }

        v113 = v76[3];
        v246 = v76[2];
        v247 = v113;
        v248 = v76[4];
        v114 = v76[1];
        v244 = *v76;
        v245 = v114;
        v115 = a1[8];
        v241 = a1[7];
        v242 = v115;
        v243 = a1[9];
        v116 = a1[6];
        v239 = a1[5];
        v240 = v116;
        if (!v85(&v244, &v239))
        {
          return 1;
        }

        v117 = a1[8];
        v246 = a1[7];
        v247 = v117;
        v248 = a1[9];
        v118 = a1[6];
        v244 = a1[5];
        v245 = v118;
        a1[5] = *v76;
        v119 = v76[4];
        v121 = v76[1];
        v120 = v76[2];
        a1[8] = v76[3];
        a1[9] = v119;
        a1[6] = v121;
        a1[7] = v120;
        v122 = v248;
        v76[3] = v247;
        v76[4] = v122;
        v123 = v246;
        v76[1] = v245;
        v76[2] = v123;
        *v76 = v244;
        v74 = *a3;
        v124 = a1[6];
        v125 = a1[8];
        v126 = a1[9];
        v246 = a1[7];
        v247 = v125;
        v248 = v126;
        v127 = a1[4];
        v244 = a1[5];
        v245 = v124;
        v128 = a1[3];
        v241 = a1[2];
        v242 = v128;
        v243 = v127;
        break;
      case 4:
        sub_1004DFD34(a1, a1 + 5, a1 + 10, a2 - 5, a3);
        return 1;
      case 5:
        sub_1004DFD34(a1, a1 + 5, a1 + 10, a1 + 15, a3);
        v21 = *a3;
        v22 = *(a2 - 2);
        v246 = *(a2 - 3);
        v247 = v22;
        v248 = *(a2 - 1);
        v23 = *(a2 - 4);
        v244 = *(a2 - 5);
        v245 = v23;
        v24 = a1[18];
        v241 = a1[17];
        v242 = v24;
        v243 = a1[19];
        v25 = a1[16];
        v239 = a1[15];
        v240 = v25;
        if (!v21(&v244, &v239))
        {
          return 1;
        }

        v26 = a2 - 5;
        v27 = a1[18];
        v246 = a1[17];
        v247 = v27;
        v248 = a1[19];
        v28 = a1[16];
        v244 = a1[15];
        v245 = v28;
        a1[15] = *(a2 - 5);
        v29 = *(a2 - 1);
        v31 = *(a2 - 4);
        v30 = *(a2 - 3);
        a1[18] = *(a2 - 2);
        a1[19] = v29;
        a1[16] = v31;
        a1[17] = v30;
        v32 = v248;
        v26[3] = v247;
        v26[4] = v32;
        v33 = v246;
        v26[1] = v245;
        v26[2] = v33;
        *v26 = v244;
        v34 = *a3;
        v35 = a1[16];
        v36 = a1[18];
        v37 = a1[19];
        v246 = a1[17];
        v247 = v36;
        v248 = v37;
        v38 = a1[14];
        v244 = a1[15];
        v245 = v35;
        v39 = a1[13];
        v241 = a1[12];
        v242 = v39;
        v243 = v38;
        v40 = a1[11];
        v239 = a1[10];
        v240 = v40;
        if (!v34(&v244, &v239))
        {
          return 1;
        }

        v41 = a1[16];
        v43 = a1[9];
        v42 = a1[10];
        a1[10] = a1[15];
        v45 = a1[10];
        v44 = a1[11];
        a1[11] = v41;
        v46 = a1[18];
        v48 = a1[11];
        v47 = a1[12];
        a1[12] = a1[17];
        v50 = a1[12];
        v49 = a1[13];
        v246 = v47;
        v247 = v49;
        a1[13] = v46;
        v51 = a1[13];
        v248 = a1[14];
        v244 = v42;
        v245 = v44;
        v52 = v42;
        v53 = v245;
        a1[14] = a1[19];
        a1[15] = v52;
        v54 = v246;
        v55 = v248;
        a1[18] = v247;
        a1[19] = v55;
        a1[16] = v53;
        a1[17] = v54;
        v56 = *a3;
        v246 = v50;
        v247 = v51;
        v248 = a1[14];
        v244 = v45;
        v245 = v48;
        v57 = a1[8];
        v241 = a1[7];
        v242 = v57;
        v243 = v43;
        v58 = a1[6];
        v239 = a1[5];
        v240 = v58;
        if (!v56(&v244, &v239))
        {
          return 1;
        }

        v59 = a1[11];
        v61 = a1[4];
        v60 = a1[5];
        a1[5] = a1[10];
        v63 = a1[5];
        v62 = a1[6];
        a1[6] = v59;
        v64 = a1[13];
        v66 = a1[6];
        v65 = a1[7];
        a1[7] = a1[12];
        v68 = a1[7];
        v67 = a1[8];
        v246 = v65;
        v247 = v67;
        a1[8] = v64;
        v69 = a1[8];
        v248 = a1[9];
        v244 = v60;
        v245 = v62;
        v70 = v60;
        v71 = v245;
        a1[9] = a1[14];
        a1[10] = v70;
        v72 = v246;
        v73 = v248;
        a1[13] = v247;
        a1[14] = v73;
        a1[11] = v71;
        a1[12] = v72;
        v74 = *a3;
        v246 = v68;
        v247 = v69;
        v248 = a1[9];
        v244 = v63;
        v245 = v66;
        v75 = a1[3];
        v241 = a1[2];
        v242 = v75;
        v243 = v61;
        break;
      default:
        goto LABEL_16;
    }

    v129 = a1[1];
    v239 = *a1;
    v240 = v129;
    if (v74(&v244, &v239))
    {
      v130 = a1[3];
      v246 = a1[2];
      v247 = v130;
      v131 = a1[5];
      v248 = a1[4];
      v132 = a1[1];
      v244 = *a1;
      v245 = v132;
      v133 = a1[6];
      v134 = a1[8];
      v135 = a1[9];
      a1[2] = a1[7];
      a1[3] = v134;
      *a1 = v131;
      a1[1] = v133;
      v136 = v244;
      v137 = v245;
      a1[4] = v135;
      a1[5] = v136;
      v138 = v246;
      v139 = v248;
      a1[8] = v247;
      a1[9] = v139;
      a1[6] = v137;
      a1[7] = v138;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = *(a2 - 2);
    v246 = *(a2 - 3);
    v247 = v8;
    v248 = *(a2 - 1);
    v9 = *(a2 - 4);
    v244 = *(a2 - 5);
    v245 = v9;
    v10 = a1[3];
    v241 = a1[2];
    v242 = v10;
    v243 = a1[4];
    v11 = a1[1];
    v239 = *a1;
    v240 = v11;
    if (v7(&v244, &v239))
    {
      v12 = a2 - 5;
      v13 = a1[3];
      v246 = a1[2];
      v247 = v13;
      v248 = a1[4];
      v14 = a1[1];
      v244 = *a1;
      v245 = v14;
      *a1 = *(a2 - 5);
      v15 = *(a2 - 1);
      v17 = *(a2 - 4);
      v16 = *(a2 - 3);
      a1[3] = *(a2 - 2);
      a1[4] = v15;
      a1[1] = v17;
      a1[2] = v16;
      v18 = v248;
      v12[3] = v247;
      v12[4] = v18;
      v19 = v246;
      v12[1] = v245;
      v12[2] = v19;
      result = 1;
      *v12 = v244;
      return result;
    }

    return 1;
  }

LABEL_16:
  v95 = a1 + 10;
  v96 = *a3;
  v97 = a1[6];
  v98 = a1[8];
  v99 = a1[9];
  v246 = a1[7];
  v247 = v98;
  v248 = v99;
  v100 = a1[4];
  v244 = a1[5];
  v245 = v97;
  v101 = a1[3];
  v241 = a1[2];
  v242 = v101;
  v243 = v100;
  v102 = a1[1];
  v239 = *a1;
  v240 = v102;
  v103 = v96(&v244, &v239);
  v104 = *a3;
  if (v103)
  {
    v105 = a1[13];
    v246 = a1[12];
    v247 = v105;
    v248 = a1[14];
    v106 = a1[11];
    v244 = *v95;
    v245 = v106;
    v107 = a1[8];
    v241 = a1[7];
    v242 = v107;
    v243 = a1[9];
    v108 = a1[6];
    v239 = a1[5];
    v240 = v108;
    if (v104(&v244, &v239))
    {
      v109 = a1[3];
      v246 = a1[2];
      v247 = v109;
      v248 = a1[4];
      v110 = a1[1];
      v244 = *a1;
      v245 = v110;
      v111 = a1[13];
      a1[2] = a1[12];
      a1[3] = v111;
      a1[4] = a1[14];
      v112 = a1[11];
      *a1 = *v95;
      a1[1] = v112;
    }

    else
    {
      v193 = a1[3];
      v246 = a1[2];
      v247 = v193;
      v194 = a1[5];
      v248 = a1[4];
      v195 = a1[1];
      v244 = *a1;
      v245 = v195;
      v196 = v195;
      a1[5] = v244;
      v197 = v246;
      v198 = v247;
      v200 = a1[5];
      v199 = a1[6];
      a1[6] = v196;
      v202 = a1[6];
      v201 = a1[7];
      a1[7] = v197;
      v204 = a1[7];
      v203 = a1[8];
      a1[2] = v201;
      a1[3] = v203;
      a1[8] = v198;
      v205 = a1[8];
      a1[4] = a1[9];
      *a1 = v194;
      a1[1] = v199;
      a1[9] = v248;
      v206 = a1[13];
      v246 = a1[12];
      v247 = v206;
      v248 = a1[14];
      v207 = a1[11];
      v244 = *v95;
      v245 = v207;
      v208 = *a3;
      v241 = v204;
      v242 = v205;
      v243 = a1[9];
      v239 = v200;
      v240 = v202;
      if (!v208(&v244, &v239))
      {
        goto LABEL_33;
      }

      v209 = a1[8];
      v246 = a1[7];
      v247 = v209;
      v248 = a1[9];
      v210 = a1[6];
      v244 = a1[5];
      v245 = v210;
      v211 = a1[13];
      a1[7] = a1[12];
      a1[8] = v211;
      a1[9] = a1[14];
      v212 = a1[11];
      a1[5] = *v95;
      a1[6] = v212;
    }

    v213 = v244;
    v214 = v245;
    v215 = v248;
    a1[13] = v247;
    a1[14] = v215;
    v216 = v246;
    a1[11] = v214;
    a1[12] = v216;
    *v95 = v213;
  }

  else
  {
    v140 = a1[13];
    v246 = a1[12];
    v247 = v140;
    v248 = a1[14];
    v141 = a1[11];
    v244 = *v95;
    v245 = v141;
    v142 = a1[8];
    v241 = a1[7];
    v242 = v142;
    v243 = a1[9];
    v143 = a1[6];
    v239 = a1[5];
    v240 = v143;
    if (v104(&v244, &v239))
    {
      v144 = a1[11];
      v146 = a1[4];
      v145 = a1[5];
      a1[5] = *v95;
      v148 = a1[5];
      v147 = a1[6];
      a1[6] = v144;
      v149 = a1[13];
      v151 = a1[6];
      v150 = a1[7];
      a1[7] = a1[12];
      v153 = a1[7];
      v152 = a1[8];
      v246 = v150;
      v247 = v152;
      a1[8] = v149;
      v154 = a1[8];
      v248 = a1[9];
      v244 = v145;
      v245 = v147;
      a1[9] = a1[14];
      v155 = v248;
      a1[13] = v247;
      a1[14] = v155;
      v156 = v246;
      a1[11] = v245;
      a1[12] = v156;
      *v95 = v244;
      v157 = *a3;
      v246 = v153;
      v247 = v154;
      v248 = a1[9];
      v244 = v148;
      v245 = v151;
      v158 = a1[3];
      v241 = a1[2];
      v242 = v158;
      v243 = v146;
      v159 = a1[1];
      v239 = *a1;
      v240 = v159;
      if (v157(&v244, &v239))
      {
        v160 = a1[3];
        v246 = a1[2];
        v247 = v160;
        v161 = a1[5];
        v248 = a1[4];
        v162 = a1[1];
        v244 = *a1;
        v245 = v162;
        v163 = a1[6];
        v164 = a1[8];
        v165 = a1[9];
        a1[2] = a1[7];
        a1[3] = v164;
        *a1 = v161;
        a1[1] = v163;
        v166 = v244;
        v167 = v245;
        a1[4] = v165;
        a1[5] = v166;
        v168 = v246;
        v169 = v248;
        a1[8] = v247;
        a1[9] = v169;
        a1[6] = v167;
        a1[7] = v168;
      }
    }
  }

LABEL_33:
  v217 = a1 + 15;
  if (a1 + 15 == a2)
  {
    return 1;
  }

  v218 = 0;
  v219 = 0;
  while (1)
  {
    v220 = *a3;
    v221 = v217[3];
    v246 = v217[2];
    v247 = v221;
    v248 = v217[4];
    v222 = v217[1];
    v244 = *v217;
    v245 = v222;
    v239 = *v95;
    v223 = v95[1];
    v224 = v95[2];
    v225 = v95[4];
    v242 = v95[3];
    v243 = v225;
    v240 = v223;
    v241 = v224;
    if (v220(&v244, &v239))
    {
      v226 = v217[3];
      v246 = v217[2];
      v247 = v226;
      v248 = v217[4];
      v227 = v217[1];
      v244 = *v217;
      v245 = v227;
      v228 = v218;
      while (1)
      {
        v229 = (a1 + v228);
        v230 = *(a1 + v228 + 208);
        v229[17] = *(a1 + v228 + 192);
        v229[18] = v230;
        v229[19] = *(a1 + v228 + 224);
        v231 = *(a1 + v228 + 176);
        v229[15] = *(a1 + v228 + 160);
        v229[16] = v231;
        if (v228 == -160)
        {
          break;
        }

        v232 = *a3;
        v241 = v246;
        v242 = v247;
        v243 = v248;
        v239 = v244;
        v240 = v245;
        v233 = v229[8];
        v238[2] = v229[7];
        v238[3] = v233;
        v238[4] = v229[9];
        v234 = v229[6];
        v238[0] = v229[5];
        v238[1] = v234;
        v228 -= 80;
        if (((v232)(&v239, v238) & 1) == 0)
        {
          v235 = (a1 + v228 + 240);
          goto LABEL_41;
        }
      }

      v235 = a1;
LABEL_41:
      v236 = v247;
      v235[2] = v246;
      v235[3] = v236;
      v235[4] = v248;
      v237 = v245;
      *v235 = v244;
      v235[1] = v237;
      if (++v219 == 8)
      {
        return v217 + 5 == a2;
      }
    }

    v95 = v217;
    v218 += 80;
    v217 += 5;
    if (v217 == a2)
    {
      return 1;
    }
  }
}