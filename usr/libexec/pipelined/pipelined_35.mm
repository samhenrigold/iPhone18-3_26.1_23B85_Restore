float sub_100225570(uint64_t a1, uint64_t a2)
{
  sub_100322264(&v10, a2);
  if (v10 < 0)
  {
    sub_1003846E0(__p, v12);
    sub_10003F5D0(__p);
  }

  sub_100224FC0(a1, &v10);
  (*(**(a1 + 48) + 144))(*(a1 + 48), a2);
  sub_100381E9C(*(a1 + 48), v12);
  if (v12[0] == 1)
  {
    v5 = *(a1 + 72);
    v6 = sub_100118234(&v10);
    v7 = v13;
    v8 = v14;
    v9 = v15;
    sub_100045CE8(v5, v7, v8, v9, v6);
  }

  return result;
}

void sub_100225688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002256B4(uint64_t a1, uint64_t a2)
{
  sub_100380A84(*(a1 + 64), a2);
  if (*(a2 + 80))
  {
    v4 = *(a2 + 24);
    if (v4 >= 10)
    {
      sub_100380A8C(*(a1 + 64), *(a2 + 32) / v4);
    }
  }
}

void sub_100225794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002257E0(uint64_t a1)
{
  v3 = *(a1 + 64);
  sub_100380A9C(v3);
  sub_100380AF0(v3);
  operator new();
}

void sub_1002258B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  sub_100224FC0(a1, &v5);
  if (*(a1 + 136) == *(a1 + 144))
  {
    sub_1002C0CDC(a3);
  }

  else
  {
    sub_1002C0D04((a1 + 136), a3);
    *(a1 + 144) = *(a1 + 136);
  }
}

void sub_100225984(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004434A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100225A00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 120) == 1)
    {
      *(a2 + 120) = 0;
    }

    v3 = *(a2 + 104);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(a2 + 64);
    if (v4)
    {
      v5 = *(a2 + 72);
      v6 = *(a2 + 64);
      if (v5 != v4)
      {
        v7 = v5 - 12;
        v8 = v5 - 12;
        v9 = v5 - 12;
        do
        {
          v10 = *v9;
          v9 -= 12;
          (*v10)(v8);
          v7 -= 12;
          v11 = v8 == v4;
          v8 = v9;
        }

        while (!v11);
        v6 = *(a2 + 64);
      }

      *(a2 + 72) = v4;
      operator delete(v6);
    }

    v12 = *(a2 + 24);
    if (v12)
    {
      *(a2 + 32) = v12;
      operator delete(v12);
    }

    operator delete();
  }
}

uint64_t sub_100225B2C(uint64_t a1, void *a2, void *a3, double *a4, unsigned int *a5)
{
  v5 = (*(a1 + 8) - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    sub_10000FC84();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 59))
    {
      operator new();
    }

    sub_10000D444();
  }

  v10 = sub_1002C0CC0(32 * v5, a2, a3, *a5, *a4);
  v11 = v10 + 32;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v10 - v13;
  memcpy((v10 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_100225C38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100225C70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004434F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100225CC4(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  return result;
}

void sub_100225CDC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100225D4C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100225DBC(uint64_t result, uint64_t a2, char a3, double a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(result + 48) = v4;
  *(result + 56) = a4;
  *(result + 64) = a3;
  return result;
}

void sub_100225E0C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100225E7C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100225EEC(uint64_t result)
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

uint64_t sub_100225F64(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t *a5)
{
  *a1 = off_100443540;
  v6 = a2[1];
  *(a1 + 8) = *a2;
  v7 = a1 + 8;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v8 = *a5;
  v9 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 48);
  }

  (*(*v8 + 32))(v8, v7);
  return a1;
}

void sub_100226028(_Unwind_Exception *a1)
{
  sub_10002BB1C(v3);
  sub_10002BB1C(v2);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

void *sub_10022604C(void *a1)
{
  *a1 = off_100443540;
  v2 = a1[6];
  if (v2)
  {
    (*(*v2 + 40))(v2, a1 + 1);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[5];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_1002261AC(void *a1)
{
  sub_10022604C(a1);

  operator delete();
}

void sub_1002261E4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v14.n128_u64[0] = *(a1 + 32);
  v14.n128_u64[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = sub_1002551EC(v15, v6, &v14);
  v9 = v14.n128_u64[1];
  if (v14.n128_u64[1] && !atomic_fetch_add((v14.n128_u64[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9, v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  (*(**(a1 + 48) + 16))(*(a1 + 48), a1 + 8, a2, v15, v8);
  v10 = (a3[1] - *a3) >> 4;
  v12 = (a2[1] - *a2) >> 5;
  v13 = v10;
  if (v10 != v12)
  {
    sub_100014A08(v18, "");
    sub_10022679C(&v20, "unexpected number of radio map entries returned, ");
    sub_100181374(&v13, &v21);
    sub_1002267EC(&v22, " expecting, ");
    sub_100181374(&v12, &v23);
    sub_1000E661C(v18, &v20, 4);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_19:
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      operator delete(v18[0]);
LABEL_16:
      sub_10003F5D0(&__p);
    }

LABEL_20:
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v11 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_100226464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100048F1C(v27);
  sub_100225EEC(&a13);
  _Unwind_Resume(a1);
}

void sub_1002264B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  while (1)
  {
    v23 = *(v22 - 1);
    v22 -= 3;
    if (v23 < 0)
    {
      operator delete(*v22);
    }

    if (v22 == &a22)
    {
      JUMPOUT(0x100226480);
    }
  }
}

void sub_1002264DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100225EEC(va);
  _Unwind_Resume(a1);
}

void sub_1002264F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100226504(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v11.n128_u64[0] = *(a1 + 32);
  v11.n128_u64[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = sub_1002551EC(v12, v4, &v11);
  v7 = v11.n128_u64[1];
  if (v11.n128_u64[1] && !atomic_fetch_add((v11.n128_u64[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7, v6);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *(a1 + 48);
    v9 = *(a2 + 24);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *(a2 + 24);
    if (!v9)
    {
LABEL_8:
      v15 = v9;
      goto LABEL_12;
    }
  }

  if (v9 != a2)
  {
    v9 = (*(*v9 + 16))(v9, v6);
    goto LABEL_8;
  }

  v15 = v14;
  (*(*v9 + 24))(v9, v14, v6);
LABEL_12:
  (*(*v8 + 24))(v8, a1 + 8, v12, v14, v6);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
    v10 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  v10 = v13;
  if (v13)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_10022673C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100225EEC(va);
  _Unwind_Resume(a1);
}

void sub_100226750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_10022683C(va1);
  sub_100225EEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100226780@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

std::string *sub_10022679C@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1002267D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002267EC@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_100226820(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022683C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_1002268C8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100226938()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_1002269A8(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = off_1004435A0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = xmmword_1003D9450;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  return result;
}

void sub_100226A08(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (sub_100231A58(a1 + 64, a2))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    sub_100226D1C(a4, (a3[1] - *a3) >> 5);
    v8 = sub_100231A7C(a1 + 64, a2);
    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      v11 = v8;
      do
      {
        v13 = v9 + 2;
        v12 = *v9;
        v14 = *v9 >> 31;
        if (v12 >> 31 == v12)
        {
          *&v25 = *v13;
          v14 = v12;
        }

        else
        {
          v15 = *v13;
          v26 = v9[6];
          v25 = v15;
        }

        v24 = v14 ^ v12;
        v27 = v11;
        sub_100226EBC((a1 + 8), &v24, &v22);
        v16 = a4[1];
        if (v16 >= a4[2])
        {
          v17 = sub_1002286C0(a4, &v22);
        }

        else
        {
          *v16 = 0;
          if (v22 == 1)
          {
            *(v16 + 8) = v23;
            v23 = 0uLL;
            *v16 = 1;
          }

          v17 = v16 + 24;
        }

        a4[1] = v17;
        if (v22 == 1)
        {
          v18 = *(&v23 + 1);
          if (*(&v23 + 1))
          {
            if (!atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v18->__on_zero_shared)(v18);
              std::__shared_weak_count::__release_weak(v18);
            }
          }
        }

        v9 += 8;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v20 = *a3;
    v19 = a3[1];
    LOBYTE(v24) = 0;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    v22 = a4;
    LOBYTE(v23) = 0;
    v21 = v19 - v20;
    if (v21)
    {
      if ((v21 >> 5) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }
}

void sub_100226CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10022823C(va);
  sub_100192074(va1);
  _Unwind_Resume(a1);
}

void sub_100226CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100192074(va);
  sub_1001812AC(v3);
  _Unwind_Resume(a1);
}

void sub_100226D1C(uint64_t *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_100226EBC(void *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 + 1;
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_11;
  }

  v8 = a1 + 1;
  do
  {
    v9 = sub_100228314(a1, (v5 + 4), a2);
    v10 = v9;
    if (!v9)
    {
      v8 = v5;
    }

    v5 = v5[v10];
  }

  while (v5);
  if (v8 == v4 || sub_100228314(a1, a2, (v8 + 4)))
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    v12 = v8[11];
    if (a1[4] != v12)
    {
      v14 = *v12;
      v13 = v12[1];
      *(v14 + 8) = v13;
      *v13 = v14;
      --a1[5];
      operator delete(v12);
      operator new();
    }

    v15 = v8[10];
    *(a3 + 8) = v8[9];
    *(a3 + 16) = v15;
    if (v15)
    {
      v16 = (v15 + 8);
      v11 = 1;
      atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = 1;
    }
  }

  *a3 = v11;
}

void sub_100227104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100227118(uint64_t a1, uint64_t ***a2, uint64_t *a3, void *a4)
{
  v6 = (a3[1] - *a3) >> 5;
  v37 = (a4[1] - *a4) >> 4;
  v38 = v6;
  if (v6 != v37)
  {
    sub_1000474A4(buf, "");
    sub_1000BDA70("macs and radioMaps do not match 1-to-1, macs,", &v39);
    sub_100181374(&v38, &v40);
    sub_1002267EC(&v41, ",radiomaps, ");
    sub_100181374(&v37, &v42);
    sub_1000E661C(buf, &v39, 4);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_63;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_58:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_64;
    }

LABEL_63:
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

LABEL_65:
      operator delete(*buf);
LABEL_60:
      sub_1000BC6D8(&__p);
    }

LABEL_64:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_65;
  }

  v35 = sub_100231B70(a1 + 64, a2);
  v7 = *a3;
  if (a3[1] != *a3)
  {
    v8 = 0;
    v9 = (a1 + 16);
    do
    {
      v10 = (v7 + 32 * v8);
      v13 = *v10;
      v12 = v10 + 2;
      v11 = v13;
      v14 = v13 >> 31;
      if (v13 >> 31 == v13)
      {
        v39.__r_.__value_.__l.__size_ = *v12;
        LODWORD(v39.__r_.__value_.__l.__data_) = 0;
        LODWORD(v40.__r_.__value_.__r.__words[1]) = v35;
        v15 = *v9;
        if (!*v9)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v16 = *v12;
        LODWORD(v40.__r_.__value_.__l.__data_) = v12[4];
        *&v39.__r_.__value_.__r.__words[1] = v16;
        LODWORD(v39.__r_.__value_.__l.__data_) = v14 ^ v11;
        LODWORD(v40.__r_.__value_.__r.__words[1]) = v35;
        v15 = *v9;
        if (!*v9)
        {
LABEL_48:
          if (v8 >= (a4[1] - *a4) >> 4)
          {
            sub_1000BFF58();
          }

          sub_100227668((a1 + 8), &v39, (*a4 + 16 * v8));
          goto LABEL_4;
        }
      }

      v17 = v9;
      do
      {
        v18 = SLODWORD(v39.__r_.__value_.__l.__data_) >> 31;
        if (SLODWORD(v39.__r_.__value_.__l.__data_) >> 31 == LODWORD(v39.__r_.__value_.__l.__data_))
        {
          *&v47 = v39.__r_.__value_.__l.__size_;
          v19 = 0;
          v20 = *(v15 + 8);
          v21 = v20 >> 31;
          v22 = 0;
          if (v20 >> 31 == v20)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v47 = *&v39.__r_.__value_.__r.__words[1];
          data = v40.__r_.__value_.__l.__data_;
          v19 = v18 ^ LODWORD(v39.__r_.__value_.__l.__data_);
          v20 = *(v15 + 8);
          v21 = v20 >> 31;
          v22 = (v18 ^ LODWORD(v39.__r_.__value_.__l.__data_)) >> 31;
          if (v20 >> 31 == v20)
          {
LABEL_20:
            if (v22 != v19 || v15[5] < v47)
            {
              goto LABEL_10;
            }

            *&v44 = v15[5];
            v25 = 0;
            v26 = 0;
            if (v18 == LODWORD(v39.__r_.__value_.__l.__data_))
            {
              goto LABEL_33;
            }

            goto LABEL_23;
          }
        }

        if (v22 != v19)
        {
          v23 = bswap64(v15[5]);
          v24 = bswap64(v47);
          if (v23 != v24 || (v23 = bswap64(v15[6]), v24 = bswap64(*(&v47 + 1)), v23 != v24) || (v23 = bswap32(*(v15 + 14)), v24 = bswap32(data), v23 != v24))
          {
            v29 = v23 < v24 ? -1 : 1;
            if (v29 < 0)
            {
LABEL_10:
              ++v15;
              goto LABEL_11;
            }
          }
        }

        v44 = *(v15 + 5);
        v45 = *(v15 + 14);
        v25 = v21 ^ v20;
        v26 = v25 >> 31;
        if (v18 == LODWORD(v39.__r_.__value_.__l.__data_))
        {
LABEL_33:
          if (v26 != v25 || v39.__r_.__value_.__l.__size_ < v44)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }

LABEL_23:
        if (v26 != v25)
        {
          v27 = bswap64(v39.__r_.__value_.__l.__size_);
          v28 = bswap64(v44);
          if (v27 != v28 || (v27 = bswap64(v39.__r_.__value_.__r.__words[2]), v28 = bswap64(*(&v44 + 1)), v27 != v28) || (v27 = bswap32(v40.__r_.__value_.__l.__data_), v28 = bswap32(v45), v27 != v28))
          {
            v30 = v27 < v28 ? -1 : 1;
            if (v30 < 0)
            {
LABEL_35:
              v17 = v15;
              goto LABEL_11;
            }
          }
        }

LABEL_40:
        v31 = sub_10023189C(v15 + 16, &v40.__r_.__value_.__r.__words[1]);
        if (v31)
        {
          v32 = 8;
        }

        else
        {
          v32 = 0;
        }

        if (!v31)
        {
          v17 = v15;
        }

        v15 = (v15 + v32);
LABEL_11:
        v15 = *v15;
      }

      while (v15);
      if (v17 == v9 || sub_100228314(a1 + 8, &v39, (v17 + 4)))
      {
        goto LABEL_48;
      }

      if (qword_10045B080 != -1)
      {
        sub_100385F98();
      }

      v33 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "attempting to insert a mac,locationId pair that already exists in the cache", buf, 2u);
      }

LABEL_4:
      ++v8;
      v7 = *a3;
    }

    while (v8 < (a3[1] - *a3) >> 5);
  }
}

void sub_100227608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  while (1)
  {
    v16 = *(v15 - 1);
    v15 -= 3;
    if (v16 < 0)
    {
      operator delete(*v15);
    }

    if (v15 == &a15)
    {
      JUMPOUT(0x100227620);
    }
  }
}

void sub_100227668(uint64_t **a1, _DWORD *a2, uint64_t *a3)
{
  v5 = (a1 + 1);
  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = (a1 + 1);
  do
  {
    v8 = sub_100228314(a1, (v6 + 4), a2);
    v9 = v8;
    if (!v8)
    {
      v7 = v6;
    }

    v6 = v6[v9];
  }

  while (v6);
  if (v7 == v5 || sub_100228314(a1, a2, (v7 + 4)))
  {
LABEL_11:
    if (a1[2] >= a1[6])
    {
      sub_1002288B4(a1);
    }

    operator new();
  }
}

void sub_100227870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100227884(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = (a3[1] - *a3) >> 5;
  v5 = a4[1] - *a4;
  v11 = v5 >> 4;
  v12 = v4;
  if (v4 != v5 >> 4)
  {
    sub_1000474A4(&__p, "");
    sub_1000BDA70("macs and radioMaps do not match 1-to-1, macs,", &v17);
    sub_100181374(&v12, &v18);
    sub_1002267EC(&v19, ",radiomaps, ");
    sub_100181374(&v11, &v20);
    sub_1000E661C(&__p, &v17, 4);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_23:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

LABEL_28:
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_30:
      operator delete(__p);
LABEL_25:
      sub_1000BC6D8(&v13);
    }

LABEL_29:
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  memset(&v17, 0, sizeof(v17));
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v6 = a4[1];
  if (v6 != *a4)
  {
    if (!(((v6 - *a4) >> 4) >> 59))
    {
      operator new();
    }

    sub_10000FC84();
  }

  (*(*a1 + 32))(a1, a2, &__p, &v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v7 = v17.__r_.__value_.__r.__words[0];
  if (v17.__r_.__value_.__r.__words[0])
  {
    size = v17.__r_.__value_.__l.__size_;
    v9 = v17.__r_.__value_.__r.__words[0];
    if (v17.__r_.__value_.__l.__size_ != v17.__r_.__value_.__r.__words[0])
    {
      do
      {
        v10 = *(size - 8);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        size -= 16;
      }

      while (size != v7);
      v9 = v17.__r_.__value_.__r.__words[0];
    }

    v17.__r_.__value_.__l.__size_ = v7;
    operator delete(v9);
  }
}

void sub_100227EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  while (1)
  {
    v20 = *(v19 - 1);
    v19 -= 3;
    if (v20 < 0)
    {
      operator delete(*v19);
    }

    if (v19 == &a19)
    {
      JUMPOUT(0x100227F04);
    }
  }
}

void sub_100227F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100048F1C(&a19);
  _Unwind_Resume(a1);
}

void sub_100227F88(void *a1)
{
  v2 = a1 + 2;
  sub_100228180((a1 + 1), a1[2]);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  if (v2[4])
  {
    v3 = v2 + 2;
    v4 = a1[5];
    v5 = *(a1[4] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a1[6] = 0;
    if (v4 != v3)
    {
      do
      {
        v7 = v4[1];
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v3);
    }
  }
}

void *sub_100228000(void *a1)
{
  *a1 = off_1004435A0;
  sub_1001F324C(a1 + 8);
  if (a1[6])
  {
    v2 = a1[5];
    v3 = *(a1[4] + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[6] = 0;
    if (v2 != a1 + 4)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1 + 4);
    }
  }

  sub_100228180((a1 + 1), a1[2]);
  return a1;
}

void sub_100228098(void *a1)
{
  *a1 = off_1004435A0;
  sub_1001F324C(a1 + 8);
  if (a1[6])
  {
    v2 = a1[5];
    v3 = *(a1[4] + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[6] = 0;
    if (v2 != a1 + 4)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1 + 4);
    }
  }

  sub_100228180((a1 + 1), a1[2]);

  operator delete();
}

void sub_100228180(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100228180(a1, *a2);
    sub_100228180(a1, a2[1]);
    v4 = a2[10];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void ***sub_10022823C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v7 = *(v6 - 24);
          v6 -= 24;
          if (v7 == 1)
          {
            v8 = *(v4 - 1);
            if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }

            *v6 = 0;
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

BOOL sub_100228314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 8);
  v4 = *a3;
  v5 = *a3 >> 31;
  if (v4 >> 31 == v4)
  {
    *&v22 = *v3;
    v6 = *a3;
  }

  else
  {
    v22 = *v3;
    v23 = *(a3 + 24);
    v6 = v4 >> 31;
  }

  v7 = v6 ^ v4;
  v8 = (a2 + 8);
  v9 = *a2 >> 31;
  v10 = (v6 ^ v4) >> 31;
  if (v9 != *a2)
  {
    if (v10 == v7 || (v16 = bswap64(*v8), v17 = bswap64(v22), v16 == v17) && (v16 = bswap64(*(a2 + 16)), v17 = bswap64(*(&v22 + 1)), v16 == v17) && (v16 = bswap32(*(a2 + 24)), v17 = bswap32(v23), v16 == v17) || (v16 < v17 ? (v19 = -1) : (v19 = 1), (v19 & 0x80000000) == 0))
    {
      v20 = *v8;
      v21 = *(a2 + 24);
      v11 = v9 ^ *a2;
      v12 = v11 >> 31;
      if (v5 != v4)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    return 1;
  }

  if (v10 != v7 || *v8 < v22)
  {
    return 1;
  }

  *&v20 = *v8;
  v11 = 0;
  v12 = 0;
  if (v5 != v4)
  {
LABEL_8:
    if (v12 == v11)
    {
      goto LABEL_32;
    }

    v13 = bswap64(*v3);
    v14 = bswap64(v20);
    if (v13 == v14 && (v13 = bswap64(*(a3 + 16)), v14 = bswap64(*(&v20 + 1)), v13 == v14) && (v13 = bswap32(*(a3 + 24)), v14 = bswap32(v21), v13 == v14))
    {
      v15 = 0;
    }

    else
    {
      v15 = v13 < v14 ? -1 : 1;
    }

    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    return 0;
  }

LABEL_24:
  if (v12 != v11 || *v3 < v20)
  {
    return 0;
  }

LABEL_32:

  return sub_10023189C((a2 + 32), (a3 + 32));
}

uint64_t sub_10022855C(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v8 = v5;
      if (!sub_100228314(a1, a2, (v5 + 4)))
      {
        break;
      }

      v5 = *v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_7;
      }
    }

    if (!sub_100228314(a1, (v8 + 4), a2))
    {
      break;
    }

    v6 = v8 + 1;
    v5 = v8[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (!*v6)
  {
LABEL_7:
    operator new();
  }

  return *v6;
}

uint64_t sub_1002286C0(void **a1, unsigned __int8 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v14 = (8 * ((a1[1] - *a1) >> 3));
  *v14 = 0;
  if (*a2 == 1)
  {
    *(24 * v2 + 8) = *(a2 + 8);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *v14 = 1;
  }

  v6 = (v14 + 24);
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 + v14 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = *a1 + v14 - v8;
    do
    {
      *v11 = 0;
      if (*v10 == 1)
      {
        *(v11 + 8) = *(v10 + 8);
        *(v10 + 1) = 0;
        *(v10 + 2) = 0;
        *v11 = 1;
      }

      v10 += 24;
      v11 += 24;
    }

    while (v10 != v8);
    do
    {
      if (*v7 == 1)
      {
        v12 = *(v7 + 2);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        *v7 = 0;
      }

      v7 += 24;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_1002288B4(uint64_t **a1)
{
  v2 = (a1 + 1);
  v3 = a1[1];
  v4 = a1[3];
  if (v3)
  {
    v5 = (a1 + 1);
    do
    {
      v6 = sub_100228314(a1, (v3 + 4), (v4 + 2));
      v7 = v6;
      if (!v6)
      {
        v5 = v3;
      }

      v3 = v3[v7];
    }

    while (v3);
    if (v5 != v2 && !sub_100228314(a1, (v4 + 2), (v5 + 4)))
    {
      v8 = v5[1];
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
        v10 = v5;
        do
        {
          v9 = v10[2];
          v11 = *v9 == v10;
          v10 = v9;
        }

        while (!v11);
      }

      if (*a1 == v5)
      {
        *a1 = v9;
      }

      v12 = a1[1];
      a1[2] = (a1[2] - 1);
      sub_100228A0C(v12, v5);
      v13 = v5[10];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      operator delete(v5);
    }
  }

  v15 = *v4;
  v14 = v4[1];
  *(v15 + 8) = v14;
  *v14 = v15;
  a1[5] = (a1[5] - 1);

  operator delete(v4);
}

uint64_t **sub_100228A0C(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      *(v6 + 8) = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
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

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *(v6 + 8);
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = *(v14 + 8);
      v17 = *v16;
      *(v14 + 8) = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = *(v14 + 16);
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      *(v14 + 16) = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (!v20)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v20 + 24) == 1)
      {
LABEL_62:
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      else
      {
        v19 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    v22 = *(v14 + 16);
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    *(v14 + 16) = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
  }

  else
  {
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v26 = *v25;
    v7[1] = *v25;
    if (v26)
    {
      *(v26 + 16) = v7;
    }

    v27 = v7[2];
    v25[2] = v27;
    v27[*v27 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = *(v34 + 16);
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  *(v34 + 16) = v35;
  return result;
}

void sub_100228DC0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100228E30()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100228EA0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100443648;
  v5 = a1 + 1;
  __p[0] = sub_100170784(a2);
  v8 = sub_1002CDB1C(a2);
  v7 = sub_1002CDB28(a2);
  v6 = sub_1002CDB34(a2);
  sub_10031C15C(v10, &v7, &v6);
  sub_1002541EC(v5, __p, &v8, v10);
  sub_100212B98(a3, a2);
}

void sub_1002290E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 79) < 0)
  {
    operator delete(*(v16 + 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100229150(uint64_t a1)
{
  *a1 = off_100443648;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100231890(v2);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void sub_1002291C4(uint64_t a1)
{
  *a1 = off_100443648;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100231890(v2);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  operator delete();
}

BOOL sub_100229248(uint64_t a1)
{
  v1 = (a1 + 80);
  if (*(a1 + 80))
  {
    return 1;
  }

  v4 = (a1 + 56);
  v5 = *(a1 + 79);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = sub_100255ECC(*(a1 + 56), *(a1 + 64), v1);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      *(a1 + 56) = 0;
      *(a1 + 79) = 0;
LABEL_24:
      *(a1 + 88) = sub_10025785C(*(a1 + 80));
      return 1;
    }

    **(a1 + 56) = 0;
    *(a1 + 64) = 0;
    if ((*(a1 + 79) & 0x80) != 0)
    {
      v11 = 22;
      if ((*(a1 + 72) & 0x7FFFFFFFFFFFFFFFLL) == 0x17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if ((*(a1 + 79) | 7) == 0x17)
      {
        v9 = 24;
      }

      else
      {
        v9 = *(a1 + 79) | 7;
      }

      if (*(a1 + 79) <= 0x16u)
      {
        v10 = 22;
      }

      else
      {
        v10 = v9;
      }

      v11 = v10;
      if (v10 == 22)
      {
        goto LABEL_24;
      }
    }

    sub_1002297AC(v4, v11);
    goto LABEL_24;
  }

  v6 = sub_100255ECC((a1 + 56), v5, v1);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = v6;
  if (qword_10045B050 != -1)
  {
    sub_100385FC0();
  }

  v8 = qword_10045B058;
  result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12[0] = 67109120;
    v12[1] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Couldn't deserialize rssi data: %d", v12, 8u);
    return 0;
  }

  return result;
}

void sub_1002293D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000D388(a1);
}

BOOL sub_1002293E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002541F0((a1 + 8), a2);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v5;
  result = sub_100229248(a1);
  if (result)
  {
    v8 = *(a1 + 20);
    v9 = v6 / v8;
    v10 = v6 % v8;
    v11 = sub_1002577BC(*(a1 + 80), v10, v9);
    v12.n64_u64[0] = sub_100257818(*(a1 + 80), v10, v9).n64_u64[0];
    result = v12.n64_f64[0] > 0.0;
    if (a3)
    {
      v13 = NAN;
      if (v12.n64_f64[0] > 0.0)
      {
        v13 = v11;
      }

      *(a3 + 8) = v13;
      *(a3 + 16) = v12.n64_f64[0];
    }
  }

  return result;
}

BOOL sub_1002294A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100229248(a1);
  if (result)
  {
    sub_100173428(a2, (a1 + 8), &v27);
    v7 = *(&v27 + 1);
    v8 = 0.0;
    if (*(&v27 + 1) == 0.0 || v27 == -1)
    {
      v9 = 0.0;
      v10 = 0.0;
    }

    else
    {
      v15 = *(a1 + 20);
      v16 = v27 / v15;
      v17 = v27 % v15;
      v9 = 0.0;
      v10 = 0.0;
      if (sub_100257818(*(a1 + 80), v27 % v15, v27 / v15).n64_f64[0] != 0.0)
      {
        v9 = v7 * sub_1002577BC(*(a1 + 80), v17, v16) + 0.0;
        v10 = v7 * sub_100257818(*(a1 + 80), v17, v16).n64_f64[0] + 0.0;
        v8 = v7;
      }
    }

    v11 = v29;
    if (v29 != 0.0 && v28 != -1)
    {
      v18 = *(a1 + 20);
      v19 = v28 / v18;
      v20 = v28 % v18;
      if (sub_100257818(*(a1 + 80), v28 % v18, v28 / v18).n64_f64[0] != 0.0)
      {
        v9 = v9 + v11 * sub_1002577BC(*(a1 + 80), v20, v19);
        v10 = v10 + v11 * sub_100257818(*(a1 + 80), v20, v19).n64_f64[0];
        v8 = v8 + v11;
      }
    }

    v12 = v31;
    if (v31 != 0.0 && v30 != -1)
    {
      v21 = *(a1 + 20);
      v22 = v30 / v21;
      v23 = v30 % v21;
      if (sub_100257818(*(a1 + 80), v30 % v21, v30 / v21).n64_f64[0] != 0.0)
      {
        v9 = v9 + v12 * sub_1002577BC(*(a1 + 80), v23, v22);
        v10 = v10 + v12 * sub_100257818(*(a1 + 80), v23, v22).n64_f64[0];
        v8 = v8 + v12;
      }
    }

    v13 = v33;
    if (v33 != 0.0 && v32 != -1)
    {
      v24 = *(a1 + 20);
      v25 = v32 / v24;
      v26 = v32 % v24;
      if (sub_100257818(*(a1 + 80), v32 % v24, v32 / v24).n64_f64[0] != 0.0)
      {
        v9 = v9 + v13 * sub_1002577BC(*(a1 + 80), v26, v25);
        v10 = v10 + v13 * sub_100257818(*(a1 + 80), v26, v25).n64_f64[0];
        v8 = v8 + v13;
      }
    }

    result = v8 > 0.0;
    if (a3)
    {
      if (v8 <= 0.0)
      {
        *(a3 + 8) = 0x7FF4000000000000;
        v14 = 0.0;
      }

      else
      {
        *(a3 + 8) = v9 / v8;
        v14 = v10 / v8;
      }

      *(a3 + 16) = v14;
    }
  }

  return result;
}

void sub_1002297AC(_BYTE *__dst, unint64_t a2)
{
  v3 = __dst[23];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 22;
    LOBYTE(v5) = __dst[23];
    v6 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v3 = *(__dst + 1);
  v8 = *(__dst + 2);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v5 = HIBYTE(v8);
  v6 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *__dst;
  if ((v5 & 0x80) == 0)
  {
    v9 = v5 + 1;
LABEL_9:
    memmove(__dst, v7, v9);
    goto LABEL_10;
  }

  v10 = *(__dst + 1);
  v6 = 1;
  v9 = v10 + 1;
  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    operator delete(v7);
  }

  __dst[23] = v3 & 0x7F;
}

void sub_100229938(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_100229960()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002299D0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100229A40(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (***a5)(void, uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *a1;
  if (v6 == 1)
  {
    *a1 = 0;
    v7 = *(a4 + 24);
    if (!v7)
    {
      sub_1000DB498();
    }

    (*(*v7 + 48))(&v14);
    (**a5)(a5, a2, &v14, a3, a6);
    v12 = v15;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  return v6;
}

void sub_100229B74()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100229BE4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100229C54(uint64_t a1, uint64_t ****a2)
{
  v66 = (a1 + 24);
  *(a1 + 48) = 0;
  v2 = (a1 + 48);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  v3 = (a2 + 1);
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      v7 = v6[1];
      v8 = v6;
      if (v7)
      {
        do
        {
          v9 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (!v10);
      }

      v5 += (v6[7] - v6[6]) >> 5;
      v6 = v9;
    }

    while (v9 != v3);
    if (v5)
    {
      if (v5 <= 0x1999999999999999)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  v23 = 0;
  __src = 0;
  v69 = (a1 + 48);
  v70 = (a2 + 1);
  if (v4 == v3)
  {
    v11 = 0;
    __p = 0;
  }

  else
  {
    __p = 0;
    v11 = 0;
    v24 = 0;
    do
    {
      if (sub_100231A58(v2, v4 + 4))
      {
        v25 = sub_100231A7C(v2, v4 + 4);
      }

      else
      {
        v25 = sub_1002318B0(v2, (v4 + 4));
      }

      v26 = v25;
      v28 = v4[6];
      v27 = v4[7];
      while (v28 != v27)
      {
        v31 = *v28;
        v32 = *v28 >> 31;
        if (v31 >> 31 == v31)
        {
          v33 = v24;
          sub_10021AAE0(&buf, v28[1]);
          v37 = v23 - __src;
          v38 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - __src) >> 1);
          v39 = v38 + 1;
          if (v38 + 1 > 0x1999999999999999)
          {
            sub_10000FC84();
          }

          if (0x999999999999999ALL * (-__src >> 1) > v39)
          {
            v39 = 0x999999999999999ALL * (-__src >> 1);
          }

          if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 1) >= 0xCCCCCCCCCCCCCCCLL)
          {
            v40 = 0x1999999999999999;
          }

          else
          {
            v40 = v39;
          }

          if (v40)
          {
            if (v40 <= 0x1999999999999999)
            {
              operator new();
            }

            sub_10000D444();
          }

          v51 = 2 * ((v23 - __src) >> 1);
          v52 = buf;
          *(v51 + 4) = WORD2(buf);
          *v51 = v52;
          *(v51 + 6) = v26;
          v23 = (v51 + 10);
          memcpy((10 * v38 - v37), __src, v37);
          if (__src)
          {
            operator delete(__src);
          }

          __src = 10 * v38 - v37;
          v24 = v33;
          v28 += 4;
        }

        else if (v11 < v24)
        {
          v29 = *(v28 + 1);
          v11[6] = *(v28 + 6);
          *(v11 + 2) = v29;
          v30 = *v28;
          v28 += 4;
          *v11 = v30 ^ (v30 >> 31);
          v11[8] = v26;
          v11 += 10;
        }

        else
        {
          v34 = (v11 - __p) >> 3;
          v35 = 0xCCCCCCCCCCCCCCCDLL * v34 + 1;
          if (v35 > 0x666666666666666)
          {
            sub_10000FC84();
          }

          if (0x999999999999999ALL * ((v24 - __p) >> 3) > v35)
          {
            v35 = 0x999999999999999ALL * ((v24 - __p) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v24 - __p) >> 3) >= 0x333333333333333)
          {
            v36 = 0x666666666666666;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            if (v36 <= 0x666666666666666)
            {
              operator new();
            }

            sub_10000D444();
          }

          v41 = (8 * v34);
          if (v32 == v31)
          {
            *(8 * v34 + 8) = v28[1];
            v32 = v31;
          }

          else
          {
            v42 = *(v28 + 1);
            *(8 * v34 + 0x18) = *(v28 + 6);
            *(8 * v34 + 8) = v42;
          }

          *v41 = v32 ^ v31;
          *(8 * v34 + 0x20) = v26;
          v43 = v41 - (v11 - __p);
          if (__p != v11)
          {
            v44 = 8;
            v45 = __p;
            v46 = v41 - (v11 - __p);
            do
            {
              v49 = v45 + 2;
              v48 = *v45;
              if (v48 == v48 >> 31)
              {
                *v44 = *v49;
                v47 = v48;
              }

              else
              {
                v50 = *v49;
                *(v44 + 16) = v45[6];
                *v44 = v50;
                v47 = *v45;
                v48 = *v45 >> 31;
              }

              *(v44 - 8) = v47 ^ v48;
              *(v46 + 8) = v45[8];
              v45 += 10;
              v46 += 40;
              v44 += 40;
            }

            while (v45 != v11);
          }

          v24 = 0;
          v11 = v41 + 10;
          if (__p)
          {
            operator delete(__p);
          }

          __p = v43;
          v28 += 4;
        }
      }

      v53 = v4[1];
      v2 = v69;
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v4[2];
          v10 = *v54 == v4;
          v4 = v54;
        }

        while (!v10);
      }

      v4 = v54;
    }

    while (v54 != v70);
  }

  v12 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - __src) >> 1);
  v13 = 126 - 2 * __clz(v12);
  if (v23 == __src)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  sub_10022AB70(a2, a2[1]);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v70;
  sub_10022AC3C(__src, v23, &buf, v14, 1);
  buf = 0uLL;
  v75 = 0;
  v15 = __src;
  if (v23 == __src)
  {
    *(&buf + 1) = 0xCCCCCCCCCCCCCCCDLL * ((v23 - __src) >> 1);
    v16 = a1;
  }

  else
  {
    v16 = a1;
    sub_10021D1B0(&buf, 0, v12, __src, &v73);
  }

  if (&buf == v16)
  {
    if (v75)
    {
      operator delete(buf);
    }
  }

  else
  {
    sub_100385E24(v16, &buf, (&buf + 8));
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v16 + 8);
    if (v18)
    {
      if (v18 >= v17)
      {
        goto LABEL_82;
      }

      if (v18 > 0xCCCCCCCCCCCCCCCLL)
      {
        goto LABEL_119;
      }

      v19 = operator new(10 * v18);
      v20 = v19;
      v16 = a1;
      v21 = *a1;
      if (*a1 && (v22 = *(a1 + 8)) != 0)
      {
        memmove(v19, *a1, 10 * v22);
        v15 = __src;
      }

      else
      {
        v15 = __src;
        if (!v21)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      v20 = 0;
      v21 = *v16;
      if (!*v16)
      {
LABEL_81:
        *v16 = v20;
        *(v16 + 16) = v18;
        goto LABEL_82;
      }
    }

    operator delete(v21);
    goto LABEL_81;
  }

LABEL_82:
  if (qword_10045B050 != -1)
  {
    sub_100385FD4();
  }

  v55 = qword_10045B058;
  v56 = __p;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v57 = *(v16 + 8);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v57;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "mac to location_id lookup, bulk inserted wifi macs, total, %zu", &buf, 0xCu);
  }

  if (__p != v11)
  {
    v58 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - __p) >> 3);
    sub_10022C574(__p, v11, &buf, 126 - 2 * __clz(v58), 1);
    buf = 0uLL;
    v75 = 0;
    sub_100220E40(&buf, 0, v58, __p, &v73);
    v16 = a1;
    v15 = __src;
    if (&buf == v66)
    {
      if (v75)
      {
        operator delete(buf);
      }
    }

    else
    {
      sub_100385E9C(a1, (a1 + 24), &buf);
    }

    v59 = *(a1 + 40);
    if (!v59)
    {
      goto LABEL_98;
    }

    v60 = *(a1 + 32);
    if (!v60)
    {
      v61 = 0;
      v62 = *v66;
      if (*v66)
      {
        goto LABEL_96;
      }

      goto LABEL_97;
    }

    if (v60 >= v59)
    {
LABEL_98:
      if (qword_10045B050 != -1)
      {
        sub_100385FD4();
      }

      v63 = qword_10045B058;
      v56 = __p;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v64 = *(v16 + 32);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "mac to location_id lookup, bulk inserted beacon macs, total, %zu", &buf, 0xCu);
      }

      goto LABEL_102;
    }

    if (v60 <= 0x333333333333333)
    {
      v61 = operator new(40 * v60);
      v16 = a1;
      v15 = __src;
      if (!sub_100385EEC((a1 + 24), (a1 + 32), v61, &buf))
      {
        v62 = buf;
LABEL_96:
        operator delete(v62);
      }

LABEL_97:
      *(v16 + 24) = v61;
      *(v16 + 40) = v60;
      goto LABEL_98;
    }

LABEL_119:
    sub_10021D108("get_next_capacity, allocator's max size reached");
  }

LABEL_102:
  if (v15)
  {
    operator delete(v15);
  }

  if (v56)
  {
    operator delete(v56);
  }

  return v16;
}

void sub_10022A510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21)
{
  if (a21)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
    if (!a17)
    {
LABEL_5:
      sub_1001F324C(a13);
      if (!*(a12 + 40))
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!a17)
  {
    goto LABEL_5;
  }

  operator delete(a17);
  sub_1001F324C(a13);
  if (!*(a12 + 40))
  {
LABEL_6:
    if (!*(a12 + 16))
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*a10);
  if (!*(a12 + 16))
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(*a12);
  _Unwind_Resume(a1);
}

void sub_10022A5DC(int8x8_t *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  if (*a2 == *a2 >> 31)
  {
    sub_10022A5F0(a1, a2, a3);
  }

  else
  {
    sub_10022A8B4(a1, a2, a3);
  }
}

void sub_10022A5F0(int8x8_t *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *v29 = &v28;
  v5 = *a2;
  v4 = (a2 + 2);
  if (v5 != v5 >> 31)
  {
    sub_10017910C();
  }

  sub_10021AAE0(v29, *v4);
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1;
    v8 = *v29 | (*&v29[4] << 32);
    do
    {
      v9 = v6 >> 1;
      v10 = (*&v7 + 10 * (v6 >> 1));
      v11 = *v10 | (*(v10 + 2) << 32);
      if (v8 > v11)
      {
        v7 = (v10 + 10);
        v9 = v6 + ~v9;
      }

      else if (v11 <= v8)
      {
        v12 = *&v7 + 10 * v6;
        if (v10 != v7)
        {
          v13 = 0xCCCCCCCCCCCCCCCDLL * ((10 * (v6 >> 1)) >> 1);
          do
          {
            v14 = v13 >> 1;
            v15 = *&v7 + 10 * (v13 >> 1);
            v16 = *(v15 + 4);
            v18 = *v15;
            v17 = (v15 + 10);
            v13 += ~(v13 >> 1);
            if (v8 <= (v18 | (v16 << 32)))
            {
              v13 = v14;
            }

            else
            {
              v7 = v17;
            }
          }

          while (v13);
        }

        v19 = v10 + 10;
        v20 = v12 - (v10 + 10);
        if (v20)
        {
          v21 = 0xCCCCCCCCCCCCCCCDLL * (v20 >> 1);
          v12 = v19;
          do
          {
            v22 = v21 >> 1;
            v23 = v12 + 10 * (v21 >> 1);
            v24 = *(v23 + 4);
            v26 = *v23;
            v25 = v23 + 10;
            v21 += ~(v21 >> 1);
            if ((v26 | (v24 << 32)) > v8)
            {
              v21 = v22;
            }

            else
            {
              v12 = v25;
            }
          }

          while (v21);
        }

        if (*&v7 != v12)
        {
          v27 = **&v7;
          *&v29[4] = *(*&v7 + 4);
          *v29 = v27;
          *&v29[6] = *(*&v7 + 6);
          sub_100231BDC(a1 + 6, &v29[6]);
          operator new();
        }

        return;
      }

      v6 = v9;
    }

    while (v9);
  }
}

void sub_10022A890(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022A8B4(int8x8_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v5 = a1[3];
  v6 = a1[4];
  a3[2] = 0;
  v19 = v5;
  v18 = v5 + 40 * *&v6;
  sub_10022FEA4(&v19, &v18, a2, &v20);
  v7 = v21;
  if (v20 != v21)
  {
    v17 = a3;
    v8 = 0;
    v9 = (v20 + 8);
    do
    {
      v11 = v9 - 8;
      v10 = *(v9 - 2);
      v12 = v10 >> 31;
      if (v10 >> 31 == v10)
      {
        *&v21 = *v9;
        v12 = v10;
      }

      else
      {
        v13 = *v9;
        v22 = *(v9 + 4);
        v21 = v13;
      }

      LODWORD(v20) = v12 ^ v10;
      v23 = *(v9 + 6);
      v14 = sub_100231BDC(a1 + 6, &v23);
      v15 = v8;
      v16 = v8 >> 3;
      if (((v8 >> 3) + 1) >> 61)
      {
        v17[1] = v8;
        v17[2] = 0;
        *v17 = 0;
        sub_10000FC84();
      }

      if (v8 >> 3 != -1)
      {
        if (!(((v8 >> 3) + 1) >> 61))
        {
          operator new();
        }

        v17[1] = v8;
        v17[2] = 0;
        *v17 = 0;
        sub_10000D444();
      }

      *(8 * v16) = v14;
      v8 = 8 * v16 + 8;
      memcpy(0, 0, v15);
      v9 = (v9 + 40);
    }

    while (v11 + 40 != v7);
    v17[1] = v8;
    v17[2] = 0;
    *v17 = 0;
  }
}

void sub_10022AAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v13)
  {
    *(v12 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022AB70(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10022AB70(a1, *a2);
    sub_10022AB70(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    v5 = a2[5];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = a2;
    }

    else
    {
      v6 = a2;
    }

    operator delete(v6);
  }
}

uint64_t sub_10022AC3C(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 1);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          return sub_10022B364(v8, (v8 + 10), (a2 - 10));
        case 4uLL:
          result = sub_10022B364(v8, (v8 + 10), v8 + 5);
          v31 = (a2 - 10);
          v32 = v8[5] | (*(v8 + 12) << 32);
          v33 = *(a2 - 10) | (*(a2 - 3) << 32);
          if (v32 > v33 || v33 <= v32 && (result = sub_10023189C(a2 - 1, (v8 + 26)), result))
          {
            v34 = *(v8 + 14);
            v35 = *(v8 + 5);
            v36 = *(a2 - 1);
            *(v8 + 5) = *v31;
            *(v8 + 14) = v36;
            *v31 = v35;
            *(a2 - 1) = v34;
            v37 = *(v8 + 10) | (*(v8 + 7) << 32);
            v38 = v8[5] | (*(v8 + 12) << 32);
            if (v37 > v38 || v38 <= v37 && (result = sub_10023189C((v8 + 26), v8 + 4), result))
            {
              v39 = *(v8 + 9);
              v40 = *(v8 + 10);
              *(v8 + 10) = *(v8 + 5);
              *(v8 + 9) = *(v8 + 14);
              *(v8 + 5) = v40;
              *(v8 + 14) = v39;
              v41 = *v8 | (*(v8 + 2) << 32);
              v42 = *(v8 + 10) | (*(v8 + 7) << 32);
              if (v41 > v42 || v42 <= v41 && (result = sub_10023189C(v8 + 4, (v8 + 6)), result))
              {
                v43 = *v8;
                v73 = *(v8 + 4);
                v72 = v43;
                *v8 = *(v8 + 10);
                *(v8 + 4) = *(v8 + 9);
                *(v8 + 10) = v72;
                *(v8 + 9) = v73;
              }
            }
          }

          return result;
        case 5uLL:

          return sub_10022B570(v8, (v8 + 10), v8 + 5, (v8 + 30), (a2 - 10));
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v26 = (a2 - 10);
        v27 = *v8 | (*(v8 + 2) << 32);
        v28 = *(a2 - 10) | (*(a2 - 3) << 32);
        if (v27 > v28 || v28 <= v27 && (result = sub_10023189C(a2 - 1, (v8 + 6)), result))
        {
          v29 = *v8;
          v73 = *(v8 + 4);
          v72 = v29;
          v30 = *v26;
          *(v8 + 4) = *(a2 - 1);
          *v8 = v30;
          *v26 = v72;
          *(a2 - 1) = v73;
        }

        return result;
      }
    }

    if (v12 <= 239)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {
        v57 = (v13 - 2) >> 1;
        v58 = v57 + 1;
        v59 = (v8 + 10 * v57);
        do
        {
          sub_10022C0EC(v8, a3, 0xCCCCCCCCCCCCCCCDLL * (v12 >> 1), v59);
          v59 = (v59 - 10);
          --v58;
        }

        while (v58);
        v60 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 1);
        do
        {
          result = sub_10022C31C(v8, a2, a3, v60);
          a2 = (a2 - 10);
        }

        while (v60-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = (v8 + 10 * (v13 >> 1));
    if (v12 < 0x501)
    {
      sub_10022B364(v15, v8, (a2 - 10));
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_10022B364(v8, v15, (a2 - 10));
      v16 = 10 * v14;
      v17 = (v8 + 10 * v14 - 10);
      sub_10022B364((v8 + 10), v17, a2 - 5);
      sub_10022B364(v8 + 5, (v8 + v16 + 10), (a2 - 30));
      sub_10022B364(v17, v15, (v8 + v16 + 10));
      v18 = *v8;
      v73 = *(v8 + 4);
      v72 = v18;
      v19 = *v15;
      *(v8 + 4) = *(v15 + 4);
      *v8 = v19;
      v20 = v72;
      *(v15 + 4) = v73;
      *v15 = v20;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v21 = *v8 | (*(v8 + 2) << 32);
    v22 = *(v8 - 10) | (*(v8 - 3) << 32);
    if (v21 <= v22 && (v22 > v21 || !sub_10023189C(v8 - 1, (v8 + 6))))
    {
      result = sub_10022B858(v8, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v23 = sub_10022BB00(v8, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }

    v25 = sub_10022BD44(v8, v23);
    v9 = (v23 + 10);
    result = sub_10022BD44((v23 + 10), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v23;
      if (v25)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v25)
    {
LABEL_23:
      result = sub_10022AC3C(v8, v23, a3, -v11, a5 & 1);
      v9 = (v23 + 10);
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (v8 != a2)
    {
      for (i = (v8 + 10); (v8 + 10) != a2; i = (v8 + 10))
      {
        v64 = v8;
        v8 = i;
        v65 = *v64 | (*(v64 + 2) << 32);
        v66 = *(v64 + 10) | (*(v64 + 7) << 32);
        if (v65 <= v66)
        {
          if (v66 > v65)
          {
            continue;
          }

          result = sub_10023189C(v64 + 4, (v64 + 6));
          if (!result)
          {
            continue;
          }
        }

        v67 = *v8;
        v73 = *(v8 + 4);
        v72 = v67;
        do
        {
          do
          {
            v68 = v64;
            *(v64 + 10) = *v64;
            *(v64 + 9) = *(v64 + 4);
            v69 = *(v64 - 10);
            v64 = (v64 - 10);
            v70 = v69 | (*(v68 - 3) << 32);
            v71 = v72 | (WORD2(v72) << 32);
          }

          while (v70 > v71);
          if (v71 > v70)
          {
            break;
          }

          result = sub_10023189C((&v72 + 6), v68 - 1);
        }

        while ((result & 1) != 0);
        v63 = v72;
        *(v68 + 4) = v73;
        *v68 = v63;
      }
    }

    return result;
  }

  if (v8 == a2)
  {
    return result;
  }

  v44 = v8 + 10;
  if ((v8 + 10) == a2)
  {
    return result;
  }

  v45 = 0;
  v46 = v8;
  while (2)
  {
    v49 = v46;
    v46 = v44;
    v50 = *v49 | (*(v49 + 2) << 32);
    v51 = *(v49 + 10) | (*(v49 + 7) << 32);
    if (v50 <= v51)
    {
      if (v51 > v50)
      {
        goto LABEL_46;
      }

      result = sub_10023189C(v49 + 4, (v49 + 6));
      if (!result)
      {
        goto LABEL_46;
      }
    }

    v52 = *v46;
    v73 = *(v46 + 4);
    v72 = v52;
    *v46 = *v49;
    *(v46 + 4) = *(v49 + 4);
    v47 = v8;
    if (v49 == v8)
    {
      goto LABEL_45;
    }

    v53 = v45;
    while (2)
    {
      v54 = v8 + v53;
      v55 = *(v8 + v53 - 10) | (*(v8 + v53 - 6) << 32);
      v56 = v72 | (WORD2(v72) << 32);
      if (v55 > v56)
      {
LABEL_50:
        v49 = (v49 - 10);
        *v54 = *(v8 + v53 - 10);
        *(v54 + 4) = *(v8 + v53 - 2);
        v53 -= 10;
        if (!v53)
        {
          v47 = v8;
          goto LABEL_45;
        }

        continue;
      }

      break;
    }

    if (v56 <= v55)
    {
      result = sub_10023189C((&v72 + 6), (v8 + v53 - 4));
      if (!result)
      {
        v47 = v49;
        goto LABEL_45;
      }

      goto LABEL_50;
    }

    v47 = (v8 + v53);
LABEL_45:
    v48 = v72;
    *(v47 + 4) = v73;
    *v47 = v48;
LABEL_46:
    v44 = v46 + 10;
    v45 += 10;
    if ((v46 + 10) != a2)
    {
      continue;
    }

    return result;
  }
}

BOOL sub_10022B364(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v6 = *a1 | (*(a1 + 2) << 32);
  v7 = *a2 | (*(a2 + 2) << 32);
  if (v6 > v7 || v7 <= v6 && (v12 = sub_10023189C((a2 + 6), (a1 + 6)), v7 = *a2 | (*(a2 + 2) << 32), v12))
  {
    v8 = *a3 | (*(a3 + 2) << 32);
    if (v7 > v8 || v8 <= v7 && sub_10023189C((a3 + 6), (a2 + 6)))
    {
      v9 = *(a1 + 4);
      v10 = *a1;
      v11 = *(a3 + 4);
      *a1 = *a3;
      *(a1 + 4) = v11;
    }

    else
    {
      v22 = *(a1 + 4);
      v23 = *a1;
      v24 = *(a2 + 4);
      *a1 = *a2;
      *(a1 + 4) = v24;
      *a2 = v23;
      *(a2 + 4) = v22;
      v25 = v23 | (WORD2(v23) << 32);
      v26 = *a3 | (*(a3 + 2) << 32);
      if (v25 <= v26 && (v26 > v25 || !sub_10023189C((a3 + 6), (a2 + 6))))
      {
        return 1;
      }

      v9 = *(a2 + 4);
      v10 = *a2;
      v27 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v27;
    }

    *a3 = v10;
    *(a3 + 4) = v9;
    return 1;
  }

  v13 = *a3 | (*(a3 + 2) << 32);
  if (v7 > v13)
  {
LABEL_7:
    v14 = *(a2 + 4);
    v15 = *a2;
    v16 = *(a3 + 4);
    *a2 = *a3;
    *(a2 + 4) = v16;
    *a3 = v15;
    *(a3 + 4) = v14;
    v17 = *a1 | (*(a1 + 2) << 32);
    v18 = *a2 | (*(a2 + 2) << 32);
    if (v17 > v18 || v18 <= v17 && sub_10023189C((a2 + 6), (a1 + 6)))
    {
      v19 = *(a1 + 4);
      v20 = *a1;
      v21 = *(a2 + 4);
      *a1 = *a2;
      *(a1 + 4) = v21;
      *a2 = v20;
      *(a2 + 4) = v19;
    }

    return 1;
  }

  if (v13 > v7)
  {
    return 0;
  }

  result = sub_10023189C((a3 + 6), (a2 + 6));
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL sub_10022B570(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = sub_10022B364(a1, a2, a3);
  v11 = *a3 | (*(a3 + 2) << 32);
  v12 = *a4 | (*(a4 + 2) << 32);
  if (v11 > v12 || v12 <= v11 && (result = sub_10023189C((a4 + 6), (a3 + 6))))
  {
    v13 = *(a3 + 4);
    v14 = *a3;
    v15 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v15;
    *a4 = v14;
    *(a4 + 4) = v13;
    v16 = *a2 | (*(a2 + 2) << 32);
    v17 = *a3 | (*(a3 + 2) << 32);
    if (v16 > v17 || v17 <= v16 && (result = sub_10023189C((a3 + 6), (a2 + 6))))
    {
      v18 = *(a2 + 4);
      v19 = *a2;
      v20 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v20;
      *a3 = v19;
      *(a3 + 4) = v18;
      v21 = *a1 | (*(a1 + 2) << 32);
      v22 = *a2 | (*(a2 + 2) << 32);
      if (v21 > v22 || v22 <= v21 && (result = sub_10023189C((a2 + 6), (a1 + 6))))
      {
        v23 = *(a1 + 4);
        v24 = *a1;
        v25 = *(a2 + 4);
        *a1 = *a2;
        *(a1 + 4) = v25;
        *a2 = v24;
        *(a2 + 4) = v23;
      }
    }
  }

  v26 = *a4 | (*(a4 + 2) << 32);
  v27 = *a5 | (*(a5 + 2) << 32);
  if (v26 > v27 || v27 <= v26 && (result = sub_10023189C((a5 + 6), (a4 + 6))))
  {
    v28 = *(a4 + 4);
    v29 = *a4;
    v30 = *(a5 + 4);
    *a4 = *a5;
    *(a4 + 4) = v30;
    *a5 = v29;
    *(a5 + 4) = v28;
    v31 = *a3 | (*(a3 + 2) << 32);
    v32 = *a4 | (*(a4 + 2) << 32);
    if (v31 > v32 || v32 <= v31 && (result = sub_10023189C((a4 + 6), (a3 + 6))))
    {
      v33 = *(a3 + 4);
      v34 = *a3;
      v35 = *(a4 + 4);
      *a3 = *a4;
      *(a3 + 4) = v35;
      *a4 = v34;
      *(a4 + 4) = v33;
      v36 = *a2 | (*(a2 + 2) << 32);
      v37 = *a3 | (*(a3 + 2) << 32);
      if (v36 > v37 || v37 <= v36 && (result = sub_10023189C((a3 + 6), (a2 + 6))))
      {
        v38 = *(a2 + 4);
        v39 = *a2;
        v40 = *(a3 + 4);
        *a2 = *a3;
        *(a2 + 4) = v40;
        *a3 = v39;
        *(a3 + 4) = v38;
        v41 = *a1 | (*(a1 + 2) << 32);
        v42 = *a2 | (*(a2 + 2) << 32);
        if (v41 > v42 || v42 <= v41 && (result = sub_10023189C((a2 + 6), (a1 + 6))))
        {
          v43 = *(a1 + 4);
          v44 = *a1;
          v45 = *(a2 + 4);
          *a1 = *a2;
          *(a1 + 4) = v45;
          *a2 = v44;
          *(a2 + 4) = v43;
        }
      }
    }
  }

  return result;
}

char *sub_10022B858(char *a1, char *a2)
{
  v2 = a2;
  v26 = *a1;
  v27 = *(a1 + 4);
  v4 = *(a2 - 10) | (*(a2 - 3) << 32);
  v5 = v26 & 0xFFFFFFFFFFFFLL;
  if (v4 <= (v26 & 0xFFFFFFFFFFFFuLL))
  {
    if (v5 <= v4 && sub_10023189C((&v26 + 6), a2 - 1))
    {
      v5 = v26 | (WORD2(v26) << 32);
      j = a1 + 10;
      for (i = *(a1 + 10) | (*(a1 + 7) << 32); i <= v5; i = v8 | (*(j + 2) << 32))
      {
LABEL_6:
        if (v5 <= i)
        {
          if (sub_10023189C((&v26 + 6), j + 6))
          {
            break;
          }

          v5 = v26 | (WORD2(v26) << 32);
        }

        v8 = *(j + 10);
        j += 10;
      }
    }

    else
    {
      for (j = a1 + 10; j < v2; j += 10)
      {
        v9 = *j | (*(j + 2) << 32);
        v10 = v26 | (WORD2(v26) << 32);
        if (v9 > v10 || v10 <= v9 && sub_10023189C((&v26 + 6), j + 6))
        {
          break;
        }
      }
    }
  }

  else
  {
    j = a1 + 10;
    i = *(a1 + 10) | (*(a1 + 7) << 32);
    if (i <= v5)
    {
      goto LABEL_6;
    }
  }

  if (j < v2)
  {
    do
    {
      do
      {
        v2 -= 10;
        v11 = *v2 | (*(v2 + 2) << 32);
        v12 = v26 | (WORD2(v26) << 32);
      }

      while (v11 > v12);
    }

    while (v12 <= v11 && sub_10023189C((&v26 + 6), v2 + 6));
  }

  while (j < v2)
  {
    v13 = *j;
    v29 = *(j + 4);
    v28 = v13;
    v14 = *v2;
    *(j + 4) = *(v2 + 4);
    *j = v14;
    v15 = v28;
    *(v2 + 4) = v29;
    *v2 = v15;
    v16 = *(j + 10);
    j += 10;
    v17 = v16 | (*(j + 2) << 32);
    v18 = v26 | (WORD2(v26) << 32);
    while (v17 <= v18)
    {
      if (v18 <= v17)
      {
        if (sub_10023189C((&v26 + 6), j + 6))
        {
          goto LABEL_32;
        }

        v18 = v26 | (WORD2(v26) << 32);
      }

      v19 = *(j + 10);
      j += 10;
      v17 = v19 | (*(j + 2) << 32);
    }

    do
    {
      do
      {
LABEL_32:
        v2 -= 10;
        v20 = *v2 | (*(v2 + 2) << 32);
        v21 = v26 | (WORD2(v26) << 32);
      }

      while (v20 > v21);
    }

    while (v21 <= v20 && sub_10023189C((&v26 + 6), v2 + 6));
  }

  v22 = j - 10;
  if (j - 10 != a1)
  {
    v23 = *v22;
    *(a1 + 4) = *(j - 1);
    *a1 = v23;
  }

  v24 = v26;
  *(j - 1) = v27;
  *v22 = v24;
  return j;
}

char *sub_10022BB00(char *a1, unint64_t a2)
{
  v4 = 0;
  v30 = *a1;
  v31 = *(a1 + 4);
  while (1)
  {
    v5 = v30 | (WORD2(v30) << 32);
    v6 = *&a1[v4 + 10] | (*&a1[v4 + 14] << 32);
    if (v5 <= v6 && (v6 > v5 || !sub_10023189C(&a1[v4 + 16], (&v30 + 6))))
    {
      break;
    }

    v4 += 10;
  }

  v7 = &a1[v4];
  v8 = &a1[v4 + 10];
  if (v4)
  {
    v10 = *(a2 - 10);
    a2 -= 10;
    v9 = v10;
    v11 = v30 | (WORD2(v30) << 32);
    while (1)
    {
      v13 = v9 | (*(a2 + 4) << 32);
      if (v11 > v13)
      {
        break;
      }

      if (v13 <= v11)
      {
        if (sub_10023189C((a2 + 6), (&v30 + 6)))
        {
          break;
        }

        v11 = v30 | (WORD2(v30) << 32);
      }

      v12 = *(a2 - 10);
      a2 -= 10;
      v9 = v12;
    }
  }

  else
  {
LABEL_19:
    if (v8 < a2)
    {
      do
      {
        v14 = *(a2 - 10);
        a2 -= 10;
        v15 = v30 | (WORD2(v30) << 32);
        v16 = v14 | (*(a2 + 4) << 32);
        if (v15 > v16)
        {
          break;
        }

        if (v16 > v15)
        {
          goto LABEL_19;
        }

        v17 = sub_10023189C((a2 + 6), (&v30 + 6));
        if (v8 >= a2)
        {
          break;
        }
      }

      while (!v17);
    }
  }

  if (v8 < a2)
  {
    v18 = &a1[v4 + 10];
    v19 = a2;
    do
    {
      v20 = *v18;
      v33 = *(v18 + 4);
      v32 = v20;
      v21 = *v19;
      *(v18 + 4) = *(v19 + 8);
      *v18 = v21;
      v22 = v32;
      *(v19 + 8) = v33;
      *v19 = v22;
      while (1)
      {
        do
        {
          v18 += 10;
          v23 = v30 | (WORD2(v30) << 32);
          v24 = *v18 | (*(v18 + 2) << 32);
        }

        while (v23 > v24);
        if (v24 > v23)
        {
          break;
        }

        if (!sub_10023189C(v18 + 6, (&v30 + 6)))
        {
          goto LABEL_31;
        }
      }

      do
      {
LABEL_28:
        v25 = *(v19 - 10);
        v19 -= 10;
        v26 = v25 | (*(v19 + 4) << 32);
        if (v23 > v26)
        {
          goto LABEL_22;
        }
      }

      while (v26 > v23);
      if (!sub_10023189C((v19 + 6), (&v30 + 6)))
      {
LABEL_31:
        v23 = v30 | (WORD2(v30) << 32);
        goto LABEL_28;
      }

LABEL_22:
      ;
    }

    while (v18 < v19);
    v7 = v18 - 10;
  }

  if (v7 != a1)
  {
    v27 = *v7;
    *(a1 + 4) = *(v7 + 4);
    *a1 = v27;
  }

  v28 = v30;
  *(v7 + 4) = v31;
  *v7 = v28;
  return v7;
}

BOOL sub_10022BD44(unsigned int *a1, char *a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10022B364(a1, (a1 + 10), (a2 - 10));
        return 1;
      case 4:
        sub_10022B364(a1, (a1 + 10), a1 + 5);
        v21 = a2 - 10;
        v22 = a1[5] | (*(a1 + 12) << 32);
        v23 = *(a2 - 10) | (*(a2 - 3) << 32);
        if (v22 > v23 || v23 <= v22 && sub_10023189C(a2 - 1, (a1 + 26)))
        {
          v24 = *(a1 + 14);
          v25 = *(a1 + 5);
          v26 = *(a2 - 1);
          *(a1 + 5) = *v21;
          *(a1 + 14) = v26;
          *v21 = v25;
          *(a2 - 1) = v24;
          v27 = *(a1 + 10) | (*(a1 + 7) << 32);
          v28 = a1[5] | (*(a1 + 12) << 32);
          if (v27 > v28 || v28 <= v27 && sub_10023189C((a1 + 26), a1 + 4))
          {
            v29 = *(a1 + 9);
            v30 = *(a1 + 10);
            *(a1 + 10) = *(a1 + 5);
            *(a1 + 9) = *(a1 + 14);
            *(a1 + 5) = v30;
            *(a1 + 14) = v29;
            v31 = *a1 | (*(a1 + 2) << 32);
            v32 = *(a1 + 10) | (*(a1 + 7) << 32);
            if (v31 > v32 || v32 <= v31 && sub_10023189C(a1 + 4, (a1 + 6)))
            {
              v33 = *(a1 + 4);
              v34 = *a1;
              *a1 = *(a1 + 10);
              *(a1 + 4) = *(a1 + 9);
              *(a1 + 10) = v34;
              *(a1 + 9) = v33;
            }
          }
        }

        return 1;
      case 5:
        sub_10022B570(a1, (a1 + 10), a1 + 5, (a1 + 30), (a2 - 10));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 10;
      v6 = *a1 | (*(a1 + 2) << 32);
      v7 = *(a2 - 10) | (*(a2 - 3) << 32);
      if (v6 > v7 || v7 <= v6 && sub_10023189C(a2 - 1, (a1 + 6)))
      {
        v8 = *(a1 + 4);
        v9 = *a1;
        v10 = *(a2 - 1);
        *a1 = *v5;
        *(a1 + 4) = v10;
        *v5 = v9;
        *(a2 - 1) = v8;
      }

      return 1;
    }
  }

  v11 = a1 + 5;
  sub_10022B364(a1, (a1 + 10), a1 + 5);
  v12 = a1 + 30;
  if (a1 + 30 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (2)
  {
    v16 = *v11 | (*(v11 + 2) << 32);
    v17 = *v12 | (*(v12 + 2) << 32);
    if (v16 <= v17 && (v17 > v16 || !sub_10023189C(v12 + 6, (v11 + 6))))
    {
      goto LABEL_15;
    }

    v36 = *v12;
    v37 = *(v12 + 4);
    *v12 = *v11;
    *(v12 + 4) = *(v11 + 4);
    v18 = v13;
    while (1)
    {
      v19 = *(a1 + v18 + 10) | (*(a1 + v18 + 14) << 32);
      v20 = v36 | (WORD2(v36) << 32);
      if (v19 <= v20)
      {
        break;
      }

LABEL_18:
      v11 = (v11 - 10);
      *(a1 + v18 + 20) = *(a1 + v18 + 10);
      *(a1 + v18 + 28) = *(a1 + v18 + 18);
      v18 -= 10;
      if (v18 == -20)
      {
        v11 = a1;
        goto LABEL_14;
      }
    }

    if (v20 <= v19)
    {
      if (!sub_10023189C((&v36 + 6), (a1 + v18 + 16)))
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    v11 = (a1 + v18 + 20);
LABEL_14:
    v15 = v36;
    *(v11 + 4) = v37;
    *v11 = v15;
    if (++v14 == 8)
    {
      return v12 + 10 == a2;
    }

    else
    {
LABEL_15:
      v11 = v12;
      v13 += 10;
      v12 += 10;
      if (v12 != a2)
      {
        continue;
      }

      return 1;
    }
  }
}

BOOL sub_10022C0EC(_BOOL8 result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v7 = result;
    v8 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 1)))
    {
      v10 = (0x999999999999999ALL * ((a4 - result) >> 1)) | 1;
      v11 = (result + 10 * v10);
      v12 = 0x999999999999999ALL * ((a4 - result) >> 1) + 2;
      if (v12 < a3)
      {
        v13 = *(v11 + 10) | (*(v11 + 7) << 32);
        v14 = *v11 | (*(v11 + 2) << 32);
        if (v13 > v14 || v14 <= v13 && (v15 = a4, result = sub_10023189C((v11 + 6), v11 + 4), a4 = v15, result))
        {
          v11 = (v11 + 10);
          v10 = v12;
        }
      }

      v16 = *a4 | (*(a4 + 2) << 32);
      v17 = *v11 | (*(v11 + 2) << 32);
      if (v16 <= v17)
      {
        if (v17 > v16 || (v18 = a4, result = sub_10023189C((v11 + 6), (a4 + 6)), a4 = v18, !result))
        {
          v29 = *a4;
          v30 = *(a4 + 4);
          v19 = *(v11 + 4);
          *a4 = *v11;
          *(a4 + 4) = v19;
          if (v8 >= v10)
          {
            while (1)
            {
              v23 = 2 * v10;
              v10 = (2 * v10) | 1;
              v20 = (v7 + 10 * v10);
              v24 = v23 + 2;
              if (v23 + 2 < a3)
              {
                v25 = *(v20 + 10) | (*(v20 + 7) << 32);
                v26 = *v20 | (*(v20 + 2) << 32);
                if (v25 > v26 || v26 <= v25 && (result = sub_10023189C((v20 + 6), v20 + 4)))
                {
                  v20 = (v20 + 10);
                  v10 = v24;
                }
              }

              v27 = v29 | (WORD2(v29) << 32);
              v28 = *v20 | (*(v20 + 2) << 32);
              if (v27 > v28)
              {
                break;
              }

              if (v28 <= v27)
              {
                result = sub_10023189C((v20 + 6), (&v29 + 6));
                if (result)
                {
                  break;
                }
              }

              v22 = *v20;
              *(v11 + 4) = *(v20 + 4);
              *v11 = v22;
              v11 = v20;
              if (v8 < v10)
              {
                goto LABEL_13;
              }
            }
          }

          v20 = v11;
LABEL_13:
          v21 = v29;
          *(v20 + 4) = v30;
          *v20 = v21;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10022C31C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v40 = v4;
    v41 = v5;
    v8 = result;
    v9 = 0;
    v36 = *result;
    v37 = *(result + 8);
    v10 = (a4 - 2) >> 1;
    v11 = result;
    do
    {
      v13 = v11;
      v14 = v11 + 10 * v9;
      v11 = (v14 + 10);
      v15 = 2 * v9;
      v9 = (2 * v9) | 1;
      v16 = v15 + 2;
      if (v15 + 2 < a4)
      {
        v17 = (v14 + 20);
        v18 = *(v14 + 5) | (*(v14 + 12) << 32);
        v19 = *(v14 + 10) | (*(v14 + 7) << 32);
        if (v18 > v19 || v19 <= v18 && (result = sub_10023189C(v14 + 4, v14 + 26), result))
        {
          v11 = v17;
          v9 = v16;
        }
      }

      v12 = *v11;
      *(v13 + 4) = *(v11 + 4);
      *v13 = v12;
    }

    while (v9 <= v10);
    v20 = (a2 - 10);
    if (v11 == (a2 - 10))
    {
      v30 = v36;
      v31 = v37;
    }

    else
    {
      v21 = *v20;
      *(v11 + 4) = *(a2 - 2);
      *v11 = v21;
      *v20 = v36;
      *(a2 - 2) = v37;
      v22 = v11 - v8 + 10;
      if (v22 < 11)
      {
        return result;
      }

      v23 = 0xCCCCCCCCCCCCCCCDLL * (v22 >> 1) - 2;
      v24 = v23 >> 1;
      v25 = (v8 + 10 * (v23 >> 1));
      v26 = *v11 | (*(v11 + 2) << 32);
      v27 = *v25 | (*(v25 + 2) << 32);
      if (v26 <= v27)
      {
        if (v27 > v26)
        {
          return result;
        }

        result = sub_10023189C((v25 + 6), (v11 + 6));
        if (!result)
        {
          return result;
        }
      }

      v28 = *v11;
      v39 = *(v11 + 4);
      v38 = v28;
      v29 = *v25;
      *(v11 + 4) = *(v25 + 4);
      *v11 = v29;
      if (v23 >= 2)
      {
        while (1)
        {
          v33 = v24 - 1;
          v24 = (v24 - 1) >> 1;
          v11 = (v8 + 10 * v24);
          v34 = v38 | (WORD2(v38) << 32);
          v35 = *v11 | (*(v11 + 2) << 32);
          if (v34 <= v35)
          {
            if (v35 > v34)
            {
              break;
            }

            result = sub_10023189C((v11 + 6), (&v38 + 6));
            if (!result)
            {
              break;
            }
          }

          v32 = *v11;
          *(v25 + 4) = *(v11 + 4);
          *v25 = v32;
          v25 = (v8 + 10 * v24);
          if (v33 <= 1)
          {
            goto LABEL_15;
          }
        }
      }

      v11 = v25;
LABEL_15:
      v30 = v38;
      v31 = v39;
    }

    *(v11 + 4) = v31;
    *v11 = v30;
  }

  return result;
}

uint64_t sub_10022C574(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 10;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:

        return sub_10022CC8C(v8, v8 + 40, (a2 - 10), a3);
      case 4uLL:

        return sub_10022D348(v8, v8 + 40, v8 + 80, (a2 - 10), a3);
      case 5uLL:

        return sub_10022D794(v8, v8 + 40, v8 + 80, v8 + 120, (a2 - 10), a3);
    }

LABEL_11:
    if (v13 <= 959)
    {
      if (a5)
      {

        return sub_10022DD08(v8, a2, a3);
      }

      else
      {

        return sub_10022E104(v8, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v8 != a2)
      {
        v41 = (v14 - 2) >> 1;
        v42 = v41 + 1;
        v43 = v8 + 40 * v41;
        do
        {
          sub_10022F6C0(v8, a3, 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3), v43);
          v43 -= 40;
          --v42;
        }

        while (v42);
        v44 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          result = sub_10022F95C(v8, a2, a3, v44);
          a2 -= 10;
        }

        while (v44-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v8 + 40 * (v14 >> 1);
    if (v13 >= 0x1401)
    {
      sub_10022CC8C(v8, v16, (a2 - 10), a3);
      v17 = 40 * v15;
      v18 = 40 * v15 + v8 - 40;
      sub_10022CC8C(v8 + 40, v18, (a2 - 20), a3);
      sub_10022CC8C(v8 + 80, v8 + 40 + v17, (a2 - 30), a3);
      sub_10022CC8C(v18, v16, v8 + 40 + v17, a3);
      v19 = *v8;
      v20 = *v8 >> 31;
      v22 = (v8 + 8);
      v21 = *(v8 + 8);
      if (v20 == *v8)
      {
        v23 = *v16;
        if (v19 == *v16)
        {
          v24 = 0;
          *v22 = *(v16 + 8);
          v25 = 0;
          if (*v16)
          {
            goto LABEL_22;
          }

LABEL_32:
          if (v25 == v24)
          {
            *(v16 + 8) = v21;
            v30 = *(v8 + 32);
            *(v8 + 32) = *(v16 + 32);
            *(v16 + 32) = v30;
            if (a5)
            {
              goto LABEL_37;
            }
          }

          else
          {
            *(v16 + 8) = v21;
            *(v16 + 24) = v52;
            *(v16 + 16) = v51;
            v31 = *(v8 + 32);
            *(v8 + 32) = *(v16 + 32);
            *(v16 + 32) = v31;
            if (a5)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_36;
        }

        v24 = 0;
      }

      else
      {
        v51 = *(v8 + 16);
        v52 = *(v8 + 24);
        v24 = v20 ^ v19;
        v23 = *v16;
        if (v19 == *v16)
        {
          v26 = *(v16 + 8);
          *(v8 + 24) = *(v16 + 24);
          *v22 = v26;
          v25 = v24 >> 31;
          if (*v16 != v24)
          {
            goto LABEL_22;
          }

          goto LABEL_32;
        }
      }

      v27 = (v23 >> 31) ^ v23;
      if (v23 >> 31 == v23)
      {
        *(v8 + 8) = *(v16 + 8);
        *v8 = v27;
        v25 = v24 >> 31;
        if (*v16 != v24)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v29 = *(v16 + 8);
        *(v8 + 24) = *(v16 + 24);
        *v22 = v29;
        *v8 = v27;
        v25 = v24 >> 31;
        if (*v16 != v24)
        {
LABEL_22:
          *(v16 + 8) = v21;
          if (v25 != v24)
          {
            *(v16 + 24) = v52;
            *(v16 + 16) = v51;
          }

          *v16 = v25 ^ v24;
          v28 = *(v8 + 32);
          *(v8 + 32) = *(v16 + 32);
          *(v16 + 32) = v28;
          if (a5)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      goto LABEL_32;
    }

    sub_10022CC8C(v16, v8, (a2 - 10), a3);
    if (a5)
    {
      goto LABEL_37;
    }

LABEL_36:
    if (!sub_100228314(a3, v8 - 40, v8))
    {
      result = sub_10022E4AC(v8, a2, a3);
      v10 = result;
      goto LABEL_42;
    }

LABEL_37:
    v32 = sub_10022EBB8(v8, a2, a3);
    if ((v33 & 1) == 0)
    {
      goto LABEL_40;
    }

    v34 = sub_10022F2A8(v8, v32, a3);
    v10 = (v32 + 10);
    result = sub_10022F2A8((v32 + 10), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v32;
      if (v34)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v34)
    {
LABEL_40:
      result = sub_10022C574(v8, v32, a3, -v12, a5 & 1);
      v10 = (v32 + 10);
LABEL_42:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_11;
  }

  result = sub_100228314(a3, (a2 - 10), v8);
  if (result)
  {
    v35 = *v8;
    v36 = *v8 >> 31;
    v38 = (v8 + 8);
    v37 = *(v8 + 8);
    if (v36 == *v8)
    {
      v39 = *v9;
      if (v35 == *v9)
      {
        v40 = 0;
        *v38 = *(a2 - 4);
        goto LABEL_78;
      }

      v40 = 0;
LABEL_74:
      v47 = a2 - 8;
      if (v39 >> 31 == v39)
      {
        *(v8 + 8) = *v47;
      }

      else
      {
        v48 = *v47;
        *(v8 + 24) = *(a2 - 4);
        *v38 = v48;
      }

      *v8 = (v39 >> 31) ^ v39;
    }

    else
    {
      v51 = *(v8 + 16);
      v52 = *(v8 + 24);
      v40 = v36 ^ v35;
      v39 = *v9;
      if (v35 != *v9)
      {
        goto LABEL_74;
      }

      v46 = *(a2 - 2);
      *(v8 + 24) = *(a2 - 4);
      *v38 = v46;
    }

LABEL_78:
    v49 = v40 >> 31;
    if (*v9 == v40)
    {
      *(a2 - 4) = v37;
      if (v49 != v40)
      {
        *(a2 - 3) = v51;
        *(a2 - 4) = v52;
      }
    }

    else
    {
      *(a2 - 4) = v37;
      if (v49 != v40)
      {
        *(a2 - 3) = v51;
        *(a2 - 4) = v52;
      }

      *(a2 - 10) = v49 ^ v40;
    }

    v50 = *(v8 + 32);
    *(v8 + 32) = *(a2 - 2);
    *(a2 - 2) = v50;
  }

  return result;
}

BOOL sub_10022CC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100228314(a4, a2, a1);
  result = sub_100228314(a4, a3, a2);
  if (!v8)
  {
    if (!result)
    {
      return result;
    }

    v16 = *a2;
    v17 = *a2 >> 31;
    v19 = (a2 + 8);
    v18 = *(a2 + 8);
    if (v17 == *a2)
    {
      v20 = *a3;
      if (v16 == *a3)
      {
        v21 = 0;
        *v19 = *(a3 + 8);
        v22 = 0;
        if (!*a3)
        {
          goto LABEL_51;
        }

        goto LABEL_22;
      }

      v21 = 0;
    }

    else
    {
      v61 = *(a2 + 16);
      v62 = *(a2 + 24);
      v21 = v17 ^ v16;
      v20 = *a3;
      if (v16 == *a3)
      {
        v30 = *(a3 + 8);
        *(a2 + 24) = *(a3 + 24);
        *v19 = v30;
        v22 = v21 >> 31;
        if (*a3 == v21)
        {
          goto LABEL_51;
        }

        goto LABEL_22;
      }
    }

    v33 = (v20 >> 31) ^ v20;
    if (v20 >> 31 == v20)
    {
      *(a2 + 8) = *(a3 + 8);
      *a2 = v33;
      v22 = v21 >> 31;
      if (*a3 == v21)
      {
LABEL_51:
        *(a3 + 8) = v18;
        if (v22 != v21)
        {
          *(a3 + 16) = v61;
          *(a3 + 24) = v62;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v37 = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *v19 = v37;
      *a2 = v33;
      v22 = v21 >> 31;
      if (*a3 == v21)
      {
        goto LABEL_51;
      }
    }

LABEL_22:
    *(a3 + 8) = v18;
    if (v22 != v21)
    {
      *(a3 + 16) = v61;
      *(a3 + 24) = v62;
    }

    *a3 = v22 ^ v21;
LABEL_57:
    v40 = (a2 + 32);
    v39 = *(a2 + 32);
    *(a2 + 32) = *(a3 + 32);
    *(a3 + 32) = v39;
    if (!sub_100228314(a4, a2, a1))
    {
      return 1;
    }

    v41 = *a1;
    v42 = *a1 >> 31;
    v44 = (a1 + 8);
    v43 = *(a1 + 8);
    if (v42 == *a1)
    {
      v45 = *a2;
      if (v41 == *a2)
      {
        v46 = 0;
        *v44 = *v19;
        v47 = 0;
        if (!*a2)
        {
          goto LABEL_88;
        }

        goto LABEL_70;
      }

      v46 = 0;
    }

    else
    {
      v61 = *(a1 + 16);
      v62 = *(a1 + 24);
      v46 = v42 ^ v41;
      v45 = *a2;
      if (v41 == *a2)
      {
        v56 = *v19;
        *(a1 + 24) = *(a2 + 24);
        *v44 = v56;
        v47 = v46 >> 31;
        if (*a2 == v46)
        {
LABEL_88:
          if (v47 == v46)
          {
            *v19 = v43;
          }

          else
          {
            *(a2 + 8) = v43;
            *(a2 + 16) = v61;
            *(a2 + 24) = v62;
          }

          v35 = (a1 + 32);
          goto LABEL_98;
        }

LABEL_70:
        *(a2 + 8) = v43;
        if (v47 != v46)
        {
          *(a2 + 16) = v61;
          *(a2 + 24) = v62;
        }

        *a2 = v47 ^ v46;
        v35 = (a1 + 32);
        goto LABEL_98;
      }
    }

    if (v45 >> 31 == v45)
    {
      *(a1 + 8) = *v19;
    }

    else
    {
      v58 = *v19;
      *(a1 + 24) = *(a2 + 24);
      *v44 = v58;
    }

    *a1 = (v45 >> 31) ^ v45;
    v47 = v46 >> 31;
    if (*a2 == v46)
    {
      goto LABEL_88;
    }

    goto LABEL_70;
  }

  if (result)
  {
    v10 = *a1;
    v11 = *a1 >> 31;
    v12 = *(a1 + 8);
    if (v11 == *a1)
    {
      v13 = *a3;
      if (v10 == *a3)
      {
        v14 = 0;
        *(a1 + 8) = *(a3 + 8);
        v15 = 0;
        if (!*a3)
        {
          goto LABEL_47;
        }

LABEL_18:
        *(a3 + 8) = v12;
        if (v15 != v14)
        {
          *(a3 + 16) = v61;
          *(a3 + 24) = v62;
        }

        *a3 = v15 ^ v14;
        v35 = (a1 + 32);
        goto LABEL_97;
      }

      v14 = 0;
    }

    else
    {
      v61 = *(a1 + 16);
      v62 = *(a1 + 24);
      v14 = v11 ^ v10;
      v13 = *a3;
      if (v10 == *a3)
      {
        v29 = *(a3 + 8);
        *(a1 + 24) = *(a3 + 24);
        *(a1 + 8) = v29;
        v15 = v14 >> 31;
        if (*a3 != v14)
        {
          goto LABEL_18;
        }

        goto LABEL_47;
      }
    }

    v32 = (v13 >> 31) ^ v13;
    if (v13 >> 31 == v13)
    {
      *(a1 + 8) = *(a3 + 8);
      *a1 = v32;
      v15 = v14 >> 31;
      if (*a3 == v14)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

    v36 = *(a3 + 8);
    *(a1 + 24) = *(a3 + 24);
    *(a1 + 8) = v36;
    *a1 = v32;
    v15 = v14 >> 31;
    if (*a3 != v14)
    {
      goto LABEL_18;
    }

LABEL_47:
    *(a3 + 8) = v12;
    if (v15 != v14)
    {
      *(a3 + 16) = v61;
      *(a3 + 24) = v62;
    }

    v35 = (a1 + 32);
LABEL_97:
    v40 = (a3 + 32);
LABEL_98:
    v60 = *v35;
    *v35 = *v40;
    *v40 = v60;
    return 1;
  }

  v23 = *a1;
  v24 = *a1 >> 31;
  v25 = *(a1 + 8);
  if (v24 == *a1)
  {
    v26 = *a2;
    if (v23 == *a2)
    {
      v27 = 0;
      *(a1 + 8) = *(a2 + 8);
      v28 = 0;
      if (!*a2)
      {
        goto LABEL_54;
      }

      goto LABEL_26;
    }

    v27 = 0;
  }

  else
  {
    v61 = *(a1 + 16);
    v62 = *(a1 + 24);
    v27 = v24 ^ v23;
    v26 = *a2;
    if (v23 == *a2)
    {
      v31 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v31;
      v28 = v27 >> 31;
      if (*a2 == v27)
      {
        goto LABEL_54;
      }

      goto LABEL_26;
    }
  }

  v34 = (v26 >> 31) ^ v26;
  if (v26 >> 31 == v26)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = v34;
    v28 = v27 >> 31;
    if (*a2 == v27)
    {
LABEL_54:
      *(a2 + 8) = v25;
      if (v28 != v27)
      {
        *(a2 + 16) = v61;
        *(a2 + 24) = v62;
      }

      goto LABEL_63;
    }
  }

  else
  {
    v38 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v38;
    *a1 = v34;
    v28 = v27 >> 31;
    if (*a2 == v27)
    {
      goto LABEL_54;
    }
  }

LABEL_26:
  *(a2 + 8) = v25;
  if (v28 != v27)
  {
    *(a2 + 16) = v61;
    *(a2 + 24) = v62;
  }

  *a2 = v28 ^ v27;
LABEL_63:
  v35 = (a2 + 32);
  v48 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v48;
  if (sub_100228314(a4, a3, a2))
  {
    v49 = *a2;
    v50 = *a2 >> 31;
    v52 = (a2 + 8);
    v51 = *(a2 + 8);
    if (v50 == *a2)
    {
      v53 = *a3;
      if (v49 == *a3)
      {
        v54 = 0;
        *v52 = *(a3 + 8);
        v55 = 0;
        if (!*a3)
        {
          goto LABEL_93;
        }

        goto LABEL_74;
      }

      v54 = 0;
    }

    else
    {
      v61 = *(a2 + 16);
      v62 = *(a2 + 24);
      v54 = v50 ^ v49;
      v53 = *a3;
      if (v49 == *a3)
      {
        v57 = *(a3 + 8);
        *(a2 + 24) = *(a3 + 24);
        *v52 = v57;
        v55 = v54 >> 31;
        if (*a3 == v54)
        {
          goto LABEL_93;
        }

        goto LABEL_74;
      }
    }

    if (v53 >> 31 == v53)
    {
      *(a2 + 8) = *(a3 + 8);
    }

    else
    {
      v59 = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *v52 = v59;
    }

    *a2 = (v53 >> 31) ^ v53;
    v55 = v54 >> 31;
    if (*a3 == v54)
    {
LABEL_93:
      *(a3 + 8) = v51;
      if (v55 != v54)
      {
        *(a3 + 16) = v61;
        *(a3 + 24) = v62;
      }

      goto LABEL_97;
    }

LABEL_74:
    *(a3 + 8) = v51;
    if (v55 != v54)
    {
      *(a3 + 16) = v61;
      *(a3 + 24) = v62;
    }

    *a3 = v55 ^ v54;
    goto LABEL_97;
  }

  return 1;
}

BOOL sub_10022D348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10022CC8C(a1, a2, a3, a5);
  result = sub_100228314(a5, a4, a3);
  if (result)
  {
    v11 = *a3;
    v12 = *a3 >> 31;
    v14 = (a3 + 8);
    v13 = *(a3 + 8);
    if (v12 == *a3)
    {
      v15 = *a4;
      if (v11 == *a4)
      {
        v16 = 0;
        *v14 = *(a4 + 8);
        v17 = 0;
        if (!*a4)
        {
          goto LABEL_17;
        }

        goto LABEL_8;
      }

      v16 = 0;
    }

    else
    {
      v43 = *(a3 + 16);
      v44 = *(a3 + 24);
      v16 = v12 ^ v11;
      v15 = *a4;
      if (v11 == *a4)
      {
        v18 = *(a4 + 8);
        *(a3 + 24) = *(a4 + 24);
        *v14 = v18;
        v17 = v16 >> 31;
        if (*a4 == v16)
        {
          goto LABEL_17;
        }

        goto LABEL_8;
      }
    }

    v19 = (v15 >> 31) ^ v15;
    if (v15 >> 31 == v15)
    {
      *(a3 + 8) = *(a4 + 8);
      *a3 = v19;
      v17 = v16 >> 31;
      if (*a4 == v16)
      {
LABEL_17:
        *(a4 + 8) = v13;
        if (v17 != v16)
        {
          *(a4 + 16) = v43;
          *(a4 + 24) = v44;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v20 = *(a4 + 8);
      *(a3 + 24) = *(a4 + 24);
      *v14 = v20;
      *a3 = v19;
      v17 = v16 >> 31;
      if (*a4 == v16)
      {
        goto LABEL_17;
      }
    }

LABEL_8:
    *(a4 + 8) = v13;
    if (v17 != v16)
    {
      *(a4 + 16) = v43;
      *(a4 + 24) = v44;
    }

    *a4 = v17 ^ v16;
LABEL_19:
    v21 = *(a3 + 32);
    *(a3 + 32) = *(a4 + 32);
    *(a4 + 32) = v21;
    result = sub_100228314(a5, a3, a2);
    if (!result)
    {
      return result;
    }

    v22 = *a2;
    v23 = *a2 >> 31;
    v25 = (a2 + 8);
    v24 = *(a2 + 8);
    if (v23 == *a2)
    {
      v26 = *a3;
      if (v22 == *a3)
      {
        v27 = 0;
        *v25 = *v14;
        v28 = 0;
        if (!*a3)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      v27 = 0;
    }

    else
    {
      v43 = *(a2 + 16);
      v44 = *(a2 + 24);
      v27 = v23 ^ v22;
      v26 = *a3;
      if (v22 == *a3)
      {
        v29 = *v14;
        *(a2 + 24) = *(a3 + 24);
        *v25 = v29;
        v28 = v27 >> 31;
        if (*a3 == v27)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }
    }

    v30 = (v26 >> 31) ^ v26;
    if (v26 >> 31 == v26)
    {
      *(a2 + 8) = *v14;
      *a2 = v30;
      v28 = v27 >> 31;
      if (*a3 == v27)
      {
LABEL_35:
        if (v28 == v27)
        {
          *v14 = v24;
        }

        else
        {
          *(a3 + 8) = v24;
          *(a3 + 16) = v43;
          *(a3 + 24) = v44;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v31 = *v14;
      *(a2 + 24) = *(a3 + 24);
      *v25 = v31;
      *a2 = v30;
      v28 = v27 >> 31;
      if (*a3 == v27)
      {
        goto LABEL_35;
      }
    }

LABEL_26:
    *(a3 + 8) = v24;
    if (v28 != v27)
    {
      *(a3 + 16) = v43;
      *(a3 + 24) = v44;
    }

    *a3 = v28 ^ v27;
LABEL_38:
    v32 = *(a2 + 32);
    *(a2 + 32) = *(a3 + 32);
    *(a3 + 32) = v32;
    result = sub_100228314(a5, a2, a1);
    if (!result)
    {
      return result;
    }

    v33 = *a1;
    v34 = *a1 >> 31;
    v36 = (a1 + 8);
    v35 = *(a1 + 8);
    if (v34 == *a1)
    {
      v37 = *a2;
      if (v33 == *a2)
      {
        v38 = 0;
        *v36 = *v25;
        v39 = 0;
        if (!*a2)
        {
LABEL_54:
          if (v39 == v38)
          {
            *v25 = v35;
          }

          else
          {
            *(a2 + 8) = v35;
            *(a2 + 16) = v43;
            *(a2 + 24) = v44;
          }

LABEL_57:
          v42 = *(a1 + 32);
          *(a1 + 32) = *(a2 + 32);
          *(a2 + 32) = v42;
          return result;
        }

LABEL_45:
        *(a2 + 8) = v35;
        if (v39 != v38)
        {
          *(a2 + 16) = v43;
          *(a2 + 24) = v44;
        }

        *a2 = v39 ^ v38;
        goto LABEL_57;
      }

      v38 = 0;
    }

    else
    {
      v43 = *(a1 + 16);
      v44 = *(a1 + 24);
      v38 = v34 ^ v33;
      v37 = *a2;
      if (v33 == *a2)
      {
        v40 = *v25;
        *(a1 + 24) = *(a2 + 24);
        *v36 = v40;
        v39 = v38 >> 31;
        if (*a2 == v38)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }
    }

    if (v37 >> 31 == v37)
    {
      *(a1 + 8) = *v25;
    }

    else
    {
      v41 = *v25;
      *(a1 + 24) = *(a2 + 24);
      *v36 = v41;
    }

    *a1 = (v37 >> 31) ^ v37;
    v39 = v38 >> 31;
    if (*a2 == v38)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  return result;
}

BOOL sub_10022D794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10022D348(a1, a2, a3, a4, a6);
  result = sub_100228314(a6, a5, a4);
  if (!result)
  {
    return result;
  }

  v13 = *a4;
  v14 = *a4 >> 31;
  v16 = (a4 + 8);
  v15 = *(a4 + 8);
  if (v14 == *a4)
  {
    v17 = *a5;
    if (v13 == *a5)
    {
      v18 = 0;
      *v16 = *(a5 + 8);
      v19 = 0;
      if (!*a5)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v18 = 0;
  }

  else
  {
    v55 = *(a4 + 16);
    v56 = *(a4 + 24);
    v18 = v14 ^ v13;
    v17 = *a5;
    if (v13 == *a5)
    {
      v20 = *(a5 + 8);
      *(a4 + 24) = *(a5 + 24);
      *v16 = v20;
      v19 = v18 >> 31;
      if (*a5 == v18)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }
  }

  v21 = (v17 >> 31) ^ v17;
  if (v17 >> 31 == v17)
  {
    *(a4 + 8) = *(a5 + 8);
    *a4 = v21;
    v19 = v18 >> 31;
    if (*a5 == v18)
    {
LABEL_17:
      *(a5 + 8) = v15;
      if (v19 != v18)
      {
        *(a5 + 16) = v55;
        *(a5 + 24) = v56;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v22 = *(a5 + 8);
    *(a4 + 24) = *(a5 + 24);
    *v16 = v22;
    *a4 = v21;
    v19 = v18 >> 31;
    if (*a5 == v18)
    {
      goto LABEL_17;
    }
  }

LABEL_8:
  *(a5 + 8) = v15;
  if (v19 != v18)
  {
    *(a5 + 16) = v55;
    *(a5 + 24) = v56;
  }

  *a5 = v19 ^ v18;
LABEL_19:
  v23 = *(a4 + 32);
  *(a4 + 32) = *(a5 + 32);
  *(a5 + 32) = v23;
  result = sub_100228314(a6, a4, a3);
  if (!result)
  {
    return result;
  }

  v24 = *a3;
  v25 = *a3 >> 31;
  v27 = (a3 + 8);
  v26 = *(a3 + 8);
  if (v25 == *a3)
  {
    v28 = *a4;
    if (v24 == *a4)
    {
      v29 = 0;
      *v27 = *v16;
      v30 = 0;
      if (!*a4)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    v29 = 0;
  }

  else
  {
    v55 = *(a3 + 16);
    v56 = *(a3 + 24);
    v29 = v25 ^ v24;
    v28 = *a4;
    if (v24 == *a4)
    {
      v31 = *v16;
      *(a3 + 24) = *(a4 + 24);
      *v27 = v31;
      v30 = v29 >> 31;
      if (*a4 == v29)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }
  }

  v32 = (v28 >> 31) ^ v28;
  if (v28 >> 31 == v28)
  {
    *(a3 + 8) = *v16;
    *a3 = v32;
    v30 = v29 >> 31;
    if (*a4 == v29)
    {
LABEL_35:
      if (v30 == v29)
      {
        *v16 = v26;
      }

      else
      {
        *(a4 + 8) = v26;
        *(a4 + 16) = v55;
        *(a4 + 24) = v56;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v33 = *v16;
    *(a3 + 24) = *(a4 + 24);
    *v27 = v33;
    *a3 = v32;
    v30 = v29 >> 31;
    if (*a4 == v29)
    {
      goto LABEL_35;
    }
  }

LABEL_26:
  *(a4 + 8) = v26;
  if (v30 != v29)
  {
    *(a4 + 16) = v55;
    *(a4 + 24) = v56;
  }

  *a4 = v30 ^ v29;
LABEL_38:
  v34 = *(a3 + 32);
  *(a3 + 32) = *(a4 + 32);
  *(a4 + 32) = v34;
  result = sub_100228314(a6, a3, a2);
  if (!result)
  {
    return result;
  }

  v35 = *a2;
  v36 = *a2 >> 31;
  v38 = (a2 + 8);
  v37 = *(a2 + 8);
  if (v36 != *a2)
  {
    v55 = *(a2 + 16);
    v56 = *(a2 + 24);
    v40 = v36 ^ v35;
    v39 = *a3;
    if (v35 == *a3)
    {
      v42 = *v27;
      *(a2 + 24) = *(a3 + 24);
      *v38 = v42;
      v41 = v40 >> 31;
      if (*a3 == v40)
      {
        goto LABEL_54;
      }

      goto LABEL_45;
    }

LABEL_48:
    if (v39 >> 31 == v39)
    {
      *(a2 + 8) = *v27;
    }

    else
    {
      v43 = *v27;
      *(a2 + 24) = *(a3 + 24);
      *v38 = v43;
    }

    *a2 = (v39 >> 31) ^ v39;
    v41 = v40 >> 31;
    if (*a3 == v40)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  v39 = *a3;
  if (v35 != *a3)
  {
    v40 = 0;
    goto LABEL_48;
  }

  v40 = 0;
  *v38 = *v27;
  v41 = 0;
  if (!*a3)
  {
LABEL_54:
    if (v41 == v40)
    {
      *v27 = v37;
    }

    else
    {
      *(a3 + 8) = v37;
      *(a3 + 16) = v55;
      *(a3 + 24) = v56;
    }

    goto LABEL_57;
  }

LABEL_45:
  *(a3 + 8) = v37;
  if (v41 != v40)
  {
    *(a3 + 16) = v55;
    *(a3 + 24) = v56;
  }

  *a3 = v41 ^ v40;
LABEL_57:
  v44 = *(a2 + 32);
  *(a2 + 32) = *(a3 + 32);
  *(a3 + 32) = v44;
  result = sub_100228314(a6, a2, a1);
  if (!result)
  {
    return result;
  }

  v45 = *a1;
  v46 = *a1 >> 31;
  v48 = (a1 + 8);
  v47 = *(a1 + 8);
  if (v46 != *a1)
  {
    v55 = *(a1 + 16);
    v56 = *(a1 + 24);
    v50 = v46 ^ v45;
    v49 = *a2;
    if (v45 == *a2)
    {
      v51 = *v38;
      *(a1 + 24) = *(a2 + 24);
      *v48 = v51;
      goto LABEL_68;
    }

LABEL_64:
    if (v49 >> 31 == v49)
    {
      *(a1 + 8) = *v38;
    }

    else
    {
      v52 = *v38;
      *(a1 + 24) = *(a2 + 24);
      *v48 = v52;
    }

    *a1 = (v49 >> 31) ^ v49;
    goto LABEL_68;
  }

  v49 = *a2;
  if (v45 != *a2)
  {
    v50 = 0;
    goto LABEL_64;
  }

  v50 = 0;
  *v48 = *v38;
LABEL_68:
  v53 = v50 >> 31;
  if (*a2 == v50)
  {
    if (v53 == v50)
    {
      *v38 = v47;
    }

    else
    {
      *(a2 + 8) = v47;
      *(a2 + 16) = v55;
      *(a2 + 24) = v56;
    }
  }

  else
  {
    *(a2 + 8) = v47;
    if (v53 != v50)
    {
      *(a2 + 16) = v55;
      *(a2 + 24) = v56;
    }

    *a2 = v53 ^ v50;
  }

  v54 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v54;
  return result;
}

BOOL sub_10022DD08(_BOOL8 result, int *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 40;
  if ((result + 40) == a2)
  {
    return result;
  }

  v6 = 0;
  v7 = result;
  while (2)
  {
    v8 = v5;
    result = sub_100228314(a3, v5, v7);
    if (!result)
    {
      goto LABEL_7;
    }

    v9 = *v8;
    v10 = *v8 >> 31;
    if (v9 >> 31 == v9)
    {
      *&v34 = *(v7 + 48);
      v10 = *v8;
    }

    else
    {
      v34 = *(v7 + 48);
      v35 = *(v7 + 64);
    }

    v33 = v10 ^ v9;
    v36 = *(v7 + 72);
    for (i = v6; ; i -= 40)
    {
      v12 = &v4[i];
      v13 = *&v4[i];
      if (v9 == v13)
      {
        if (v9 == v9 >> 31)
        {
          *(v12 + 6) = *(v12 + 1);
        }

        else
        {
          *(v12 + 3) = *(v12 + 8);
          *(v12 + 16) = *(v12 + 6);
        }
      }

      else
      {
        if (v13 >> 31 == v13)
        {
          *(v12 + 6) = *(v12 + 1);
        }

        else
        {
          *(v12 + 3) = *(v12 + 8);
          *(v12 + 16) = *(v12 + 6);
        }

        *(v12 + 10) = (v13 >> 31) ^ v13;
      }

      v14 = &v4[i];
      *&v4[i + 72] = *&v4[i + 32];
      if (!i)
      {
        break;
      }

      v15 = *(v14 - 10);
      v16 = v15 >> 31;
      v17 = v14 - 32;
      if (v15 >> 31 == v15)
      {
        *&v39 = *v17;
        v18 = 0;
        v19 = v33;
        v20 = v33 >> 31;
        v21 = 0;
        if (v33 >> 31 == v33)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v39 = *v17;
        v40 = *(v14 - 4);
        v18 = v16 ^ v15;
        v19 = v33;
        v20 = v33 >> 31;
        v21 = (v16 ^ v15) >> 31;
        if (v33 >> 31 == v33)
        {
LABEL_31:
          if (v21 != v18 || v34 < v39)
          {
            goto LABEL_13;
          }

          *&v37 = v34;
          v24 = 0;
          v25 = 0;
          if (v16 != v15)
          {
            goto LABEL_34;
          }

          goto LABEL_44;
        }
      }

      if (v21 != v18)
      {
        v22 = bswap64(v34);
        v23 = bswap64(v39);
        if (v22 != v23 || (v22 = bswap64(*(&v34 + 1)), v23 = bswap64(*(&v39 + 1)), v22 != v23) || (v22 = bswap32(v35), v23 = bswap32(v40), v22 != v23))
        {
          v28 = v22 < v23 ? -1 : 1;
          if (v28 < 0)
          {
            goto LABEL_13;
          }
        }
      }

      v37 = v34;
      v38 = v35;
      v24 = v20 ^ v19;
      v25 = v24 >> 31;
      if (v16 != v15)
      {
LABEL_34:
        if (v25 != v24)
        {
          v26 = bswap64(*v17);
          v27 = bswap64(v37);
          if (v26 != v27 || (v26 = bswap64(*(v17 + 1)), v27 = bswap64(*(&v37 + 1)), v26 != v27) || (v26 = bswap32(*(v17 + 4)), v27 = bswap32(v38), v26 != v27))
          {
            v29 = v26 < v27 ? -1 : 1;
            if (v29 < 0)
            {
LABEL_57:
              v30 = &v4[i];
              v31 = v19 >> 31;
              if (*&v4[i] != v19)
              {
                goto LABEL_58;
              }

LABEL_55:
              if (v31 == v19)
              {
                *(v30 + 1) = v34;
              }

              else
              {
                *(v30 + 6) = v35;
                *(v30 + 8) = v34;
              }

              goto LABEL_6;
            }
          }
        }

        goto LABEL_51;
      }

LABEL_44:
      if (v25 != v24 || *v17 < v37)
      {
        goto LABEL_57;
      }

LABEL_51:
      result = sub_10023189C(&v36, &v4[i - 8]);
      if (!result)
      {
        v30 = &v4[i];
        v19 = v33;
        v31 = v33 >> 31;
        if (*&v4[i] != v33)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      }

LABEL_13:
      v9 = *v12;
    }

    v30 = v4;
    v19 = v33;
    v31 = v33 >> 31;
    if (*v4 == v33)
    {
      goto LABEL_55;
    }

LABEL_58:
    if (v31 == v19)
    {
      *(v30 + 1) = v34;
    }

    else
    {
      *(v30 + 6) = v35;
      *(v30 + 8) = v34;
    }

    *v30 = v31 ^ v19;
LABEL_6:
    *(v30 + 8) = v36;
LABEL_7:
    v5 = (v8 + 10);
    v6 += 40;
    v7 = v8;
    if (v8 + 10 != a2)
    {
      continue;
    }

    return result;
  }
}

BOOL sub_10022E104(_BOOL8 result, int *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 40;
  if ((result + 40) == a2)
  {
    return result;
  }

  while (2)
  {
    v7 = v5;
    result = sub_100228314(a3, v5, v4);
    if (!result)
    {
      goto LABEL_7;
    }

    v8 = *v7;
    v9 = *v7 >> 31;
    if (v8 >> 31 == v8)
    {
      *&v28 = *(v4 + 48);
      v9 = *v7;
    }

    else
    {
      v28 = *(v4 + 48);
      v29 = *(v4 + 64);
    }

    v27 = v9 ^ v8;
    v30 = *(v4 + 72);
    while (1)
    {
      v10 = *v4;
      if (v8 == *v4)
      {
        if (v8 == v8 >> 31)
        {
          *(v4 + 48) = *(v4 + 8);
        }

        else
        {
          *(v4 + 48) = *(v4 + 8);
          *(v4 + 64) = *(v4 + 24);
        }
      }

      else
      {
        if (v10 >> 31 == v10)
        {
          *(v4 + 48) = *(v4 + 8);
        }

        else
        {
          *(v4 + 48) = *(v4 + 8);
          *(v4 + 64) = *(v4 + 24);
        }

        *(v4 + 40) = (v10 >> 31) ^ v10;
      }

      *(v4 + 72) = *(v4 + 32);
      v11 = *(v4 - 40);
      v12 = v11 >> 31;
      if (v11 >> 31 != v11)
      {
        break;
      }

      *&v33 = *(v4 - 32);
      v13 = 0;
      v14 = v27;
      v15 = v27 >> 31;
      v16 = 0;
      if (v27 >> 31 == v27)
      {
        goto LABEL_30;
      }

LABEL_24:
      if (v16 == v13 || (v17 = bswap64(v28), v18 = bswap64(v33), v17 == v18) && (v17 = bswap64(*(&v28 + 1)), v18 = bswap64(*(&v33 + 1)), v17 == v18) && (v17 = bswap32(v29), v18 = bswap32(v34), v17 == v18) || (v17 < v18 ? (v24 = -1) : (v24 = 1), (v24 & 0x80000000) == 0))
      {
        v31 = v28;
        v32 = v29;
        v20 = v15 ^ v14;
        v21 = v20 >> 31;
        if (v12 == v11)
        {
          goto LABEL_43;
        }

        goto LABEL_33;
      }

LABEL_13:
      v8 = *v4;
      v4 -= 40;
    }

    v19 = *(v4 - 32);
    v34 = *(v4 - 16);
    v33 = v19;
    v13 = v12 ^ v11;
    v14 = v27;
    v15 = v27 >> 31;
    v16 = (v12 ^ v11) >> 31;
    if (v27 >> 31 != v27)
    {
      goto LABEL_24;
    }

LABEL_30:
    if (v16 != v13 || v28 < v33)
    {
      goto LABEL_13;
    }

    *&v31 = v28;
    v20 = 0;
    v21 = 0;
    if (v12 == v11)
    {
LABEL_43:
      if (v21 != v20 || *(v4 - 32) < v31)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

LABEL_33:
    if (v21 != v20)
    {
      v22 = bswap64(*(v4 - 32));
      v23 = bswap64(v31);
      if (v22 != v23 || (v22 = bswap64(*(v4 - 24)), v23 = bswap64(*(&v31 + 1)), v22 != v23) || (v22 = bswap32(*(v4 - 16)), v23 = bswap32(v32), v22 != v23))
      {
        v25 = v22 < v23 ? -1 : 1;
        if (v25 < 0)
        {
          goto LABEL_52;
        }
      }
    }

LABEL_50:
    result = sub_10023189C(&v30, (v4 - 8));
    if (result)
    {
      goto LABEL_13;
    }

    v14 = v27;
LABEL_52:
    v26 = v14 >> 31;
    if (*v4 == v14)
    {
      if (v26 == v14)
      {
        *(v4 + 8) = v28;
      }

      else
      {
        *(v4 + 24) = v29;
        *(v4 + 8) = v28;
      }
    }

    else
    {
      if (v26 == v14)
      {
        *(v4 + 8) = v28;
      }

      else
      {
        *(v4 + 24) = v29;
        *(v4 + 8) = v28;
      }

      *v4 = v26 ^ v14;
    }

    *(v4 + 32) = v30;
LABEL_7:
    v5 = (v7 + 10);
    v4 = v7;
    if (v7 + 10 != a2)
    {
      continue;
    }

    return result;
  }
}

unint64_t sub_10022E4AC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = (a1 + 8);
  v6 = *a1;
  v8 = *a1 >> 31;
  if (v6 >> 31 == v6)
  {
    *&v74 = *v7;
    v8 = v6;
  }

  else
  {
    v74 = *v7;
    v75 = *(a1 + 24);
  }

  v9 = v8 ^ v6;
  v10 = *(a1 + 32);
  v73 = v9;
  v76 = v10;
  if (sub_100228314(a3, &v73, a2 - 40))
  {
    v11 = a1;
    do
    {
      v11 += 40;
    }

    while (!sub_100228314(a3, &v73, v11));
  }

  else
  {
    v12 = a1 + 40;
    do
    {
      v11 = v12;
      if (v12 >= v4)
      {
        break;
      }

      v13 = sub_100228314(a3, &v73, v12);
      v12 = v11 + 40;
    }

    while (!v13);
  }

  if (v11 < v4)
  {
    do
    {
      v4 -= 40;
    }

    while (sub_100228314(a3, &v73, v4));
  }

  if (v11 >= v4)
  {
    goto LABEL_94;
  }

  while (2)
  {
    v14 = *v11;
    v15 = *v11 >> 31;
    v17 = (v11 + 8);
    v16 = *(v11 + 8);
    if (v15 == *v11)
    {
      v18 = *v4;
      if (v14 == *v4)
      {
        v19 = 0;
        *v17 = *(v4 + 8);
        v20 = 0;
        if (!*v4)
        {
          goto LABEL_31;
        }

LABEL_22:
        v22 = v20 ^ v19;
        if (v20 == v19)
        {
          *(v4 + 8) = v16;
        }

        else
        {
          v24 = v79;
          *(v4 + 8) = v16;
          *(v4 + 16) = v24;
          *(v4 + 24) = v80;
        }

        *v4 = v22;
        goto LABEL_34;
      }

      v19 = 0;
    }

    else
    {
      v79 = *(v11 + 16);
      LODWORD(v80) = *(v11 + 24);
      v19 = v15 ^ v14;
      v18 = *v4;
      if (v14 == *v4)
      {
        v21 = *(v4 + 8);
        *(v11 + 24) = *(v4 + 24);
        *v17 = v21;
        v20 = v19 >> 31;
        if (*v4 == v19)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    v23 = (v18 >> 31) ^ v18;
    if (v18 >> 31 != v18)
    {
      v25 = *(v4 + 8);
      *(v11 + 24) = *(v4 + 24);
      *v17 = v25;
      *v11 = v23;
      v20 = v19 >> 31;
      if (*v4 == v19)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    *(v11 + 8) = *(v4 + 8);
    *v11 = v23;
    v20 = v19 >> 31;
    if (*v4 != v19)
    {
      goto LABEL_22;
    }

LABEL_31:
    if (v20 == v19)
    {
      *(v4 + 8) = v16;
    }

    else
    {
      v26 = v79;
      *(v4 + 8) = v16;
      *(v4 + 16) = v26;
      *(v4 + 24) = v80;
    }

LABEL_34:
    v27 = *(v11 + 32);
    *(v11 + 32) = *(v4 + 32);
    *(v4 + 32) = v27;
    while (1)
    {
      while (1)
      {
        v11 += 40;
        v28 = (v11 + 8);
        v29 = *v11;
        v30 = *v11 >> 31;
        if (v30 != *v11)
        {
          break;
        }

        *&v80 = *v28;
        v31 = 0;
        v32 = v73;
        v33 = v73 >> 31;
        v34 = 0;
        if (v73 >> 31 != v73)
        {
          goto LABEL_37;
        }

LABEL_43:
        if (v34 != v31 || v74 < v80)
        {
          goto LABEL_64;
        }

        *&v77 = v74;
        v38 = 0;
        v39 = 0;
        if (v30 == v29)
        {
          goto LABEL_56;
        }

LABEL_46:
        if (v39 != v38)
        {
          v40 = bswap64(*v28);
          v41 = bswap64(v77);
          if (v40 != v41 || (v40 = bswap64(*(v11 + 16)), v41 = bswap64(*(&v77 + 1)), v40 != v41) || (v40 = bswap32(*(v11 + 24)), v41 = bswap32(v78), v40 != v41))
          {
            v43 = v40 < v41 ? -1 : 1;
            if (v43 < 0)
            {
              continue;
            }
          }
        }

        goto LABEL_63;
      }

      v37 = *v28;
      v81 = *(v11 + 24);
      v80 = v37;
      v31 = v30 ^ v29;
      v32 = v73;
      v33 = v73 >> 31;
      v34 = (v30 ^ v29) >> 31;
      if (v73 >> 31 == v73)
      {
        goto LABEL_43;
      }

LABEL_37:
      if (v34 != v31)
      {
        v35 = bswap64(v74);
        v36 = bswap64(v80);
        if (v35 != v36 || (v35 = bswap64(*(&v74 + 1)), v36 = bswap64(*(&v80 + 1)), v35 != v36) || (v35 = bswap32(v75), v36 = bswap32(v81), v35 != v36))
        {
          v42 = v35 < v36 ? -1 : 1;
          if (v42 < 0)
          {
            break;
          }
        }
      }

      v77 = v74;
      v78 = v75;
      v38 = v33 ^ v32;
      v39 = v38 >> 31;
      if (v30 != v29)
      {
        goto LABEL_46;
      }

LABEL_56:
      if (v39 == v38 && *v28 >= v77)
      {
LABEL_63:
        if (sub_10023189C(&v76, (v11 + 32)))
        {
          goto LABEL_64;
        }
      }
    }

    do
    {
LABEL_64:
      while (1)
      {
        v4 -= 40;
        v44 = (v4 + 8);
        v45 = *v4;
        v46 = *v4 >> 31;
        if (v46 != *v4)
        {
          break;
        }

        *&v80 = *v44;
        v47 = 0;
        v48 = v73;
        v49 = v73 >> 31;
        v50 = 0;
        if (v73 >> 31 == v73)
        {
          goto LABEL_72;
        }

LABEL_66:
        if (v50 != v47)
        {
          v51 = bswap64(v74);
          v52 = bswap64(v80);
          if (v51 != v52 || (v51 = bswap64(*(&v74 + 1)), v52 = bswap64(*(&v80 + 1)), v51 != v52) || (v51 = bswap32(v75), v52 = bswap32(v81), v51 != v52))
          {
            v58 = v51 < v52 ? -1 : 1;
            if (v58 < 0)
            {
              continue;
            }
          }
        }

        v77 = v74;
        v78 = v75;
        v54 = v49 ^ v48;
        v55 = v54 >> 31;
        if (v46 != v45)
        {
          goto LABEL_75;
        }

LABEL_85:
        if (v55 != v54 || *v44 < v77)
        {
          goto LABEL_15;
        }

LABEL_92:
        if (!sub_10023189C(&v76, (v4 + 32)))
        {
          goto LABEL_15;
        }
      }

      v53 = *v44;
      v81 = *(v4 + 24);
      v80 = v53;
      v47 = v46 ^ v45;
      v48 = v73;
      v49 = v73 >> 31;
      v50 = (v46 ^ v45) >> 31;
      if (v73 >> 31 != v73)
      {
        goto LABEL_66;
      }

LABEL_72:
      ;
    }

    while (v50 != v47 || v74 < v80);
    *&v77 = v74;
    v54 = 0;
    v55 = 0;
    if (v46 == v45)
    {
      goto LABEL_85;
    }

LABEL_75:
    if (v55 == v54)
    {
      goto LABEL_92;
    }

    v56 = bswap64(*v44);
    v57 = bswap64(v77);
    if (v56 == v57)
    {
      v56 = bswap64(*(v4 + 16));
      v57 = bswap64(*(&v77 + 1));
      if (v56 == v57)
      {
        v56 = bswap32(*(v4 + 24));
        v57 = bswap32(v78);
        if (v56 == v57)
        {
          goto LABEL_92;
        }
      }
    }

    v59 = v56 < v57 ? -1 : 1;
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_15:
    if (v11 < v4)
    {
      continue;
    }

    break;
  }

LABEL_94:
  v60 = (v11 - 40);
  if (v11 - 40 != a1)
  {
    v61 = *v60;
    if (*a1 == *v60)
    {
      v62 = (v11 - 32);
      if (*a1 == *a1 >> 31)
      {
        *v7 = *v62;
      }

      else
      {
        v64 = *v62;
        *(v7 + 4) = *(v11 - 16);
        *v7 = v64;
      }
    }

    else
    {
      v63 = (v11 - 32);
      if (v61 >> 31 == v61)
      {
        *(a1 + 8) = *v63;
      }

      else
      {
        v65 = *v63;
        *(v7 + 4) = *(v11 - 16);
        *v7 = v65;
      }

      *a1 = (v61 >> 31) ^ v61;
    }

    *(a1 + 32) = *(v11 - 8);
  }

  v66 = *v60;
  v67 = v73;
  if (*v60 == v73)
  {
    v68 = (v11 - 32);
    if (v66 == v66 >> 31)
    {
      *v68 = v74;
    }

    else
    {
      v70 = v74;
      *(v11 - 16) = v75;
      *v68 = v70;
    }
  }

  else
  {
    v69 = (v11 - 32);
    if (v73 >> 31 == v73)
    {
      *v69 = v74;
    }

    else
    {
      v71 = v74;
      *(v11 - 16) = v75;
      *v69 = v71;
    }

    *v60 = (v67 >> 31) ^ v67;
  }

  *(v11 - 8) = v76;
  return v11;
}

int *sub_10022EBB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = (a1 + 8);
  v6 = *a1;
  v8 = *a1 >> 31;
  v72 = a1 + 8;
  if (v6 >> 31 == v6)
  {
    *&v74 = *v7;
    v8 = v6;
  }

  else
  {
    v74 = *v7;
    v75 = *(a1 + 24);
  }

  v9 = 0;
  v10 = *(a1 + 32);
  v73 = v8 ^ v6;
  v76 = v10;
  do
  {
    v11 = sub_100228314(a3, a1 + v9 + 40, &v73);
    v9 += 40;
  }

  while (v11);
  v12 = a1 + v9;
  if (v9 == 40)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      a2 -= 40;
    }

    while (!sub_100228314(a3, a2, &v73));
  }

  else
  {
    do
    {
      a2 -= 40;
    }

    while (!sub_100228314(a3, a2, &v73));
  }

  if (v12 < a2)
  {
    v13 = a1 + v9;
    v14 = a2;
    while (1)
    {
      v15 = *v13;
      v16 = *v13 >> 31;
      v18 = (v13 + 8);
      v17 = *(v13 + 8);
      if (v16 == *v13)
      {
        v19 = *v14;
        if (v15 == *v14)
        {
          v20 = 0;
          *v18 = *(v14 + 8);
          v21 = 0;
          if (*v14)
          {
            goto LABEL_20;
          }

          goto LABEL_29;
        }

        v20 = 0;
      }

      else
      {
        v79 = *(v13 + 16);
        LODWORD(v80) = *(v13 + 24);
        v20 = v16 ^ v15;
        v19 = *v14;
        if (v15 == *v14)
        {
          v22 = *(v14 + 8);
          *(v13 + 24) = *(v14 + 24);
          *v18 = v22;
          v21 = v20 >> 31;
          if (*v14 != v20)
          {
            goto LABEL_20;
          }

          goto LABEL_29;
        }
      }

      v24 = (v19 >> 31) ^ v19;
      if (v19 >> 31 == v19)
      {
        *(v13 + 8) = *(v14 + 8);
        *v13 = v24;
        v21 = v20 >> 31;
        if (*v14 != v20)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v26 = *(v14 + 8);
        *(v13 + 24) = *(v14 + 24);
        *v18 = v26;
        *v13 = v24;
        v21 = v20 >> 31;
        if (*v14 != v20)
        {
LABEL_20:
          v23 = v21 ^ v20;
          if (v21 == v20)
          {
            *(v14 + 8) = v17;
          }

          else
          {
            v25 = v79;
            *(v14 + 8) = v17;
            *(v14 + 16) = v25;
            *(v14 + 24) = v80;
          }

          *v14 = v23;
          goto LABEL_32;
        }
      }

LABEL_29:
      if (v21 == v20)
      {
        *(v14 + 8) = v17;
      }

      else
      {
        v27 = v79;
        *(v14 + 8) = v17;
        *(v14 + 16) = v27;
        *(v14 + 24) = v80;
      }

LABEL_32:
      v28 = *(v13 + 32);
      *(v13 + 32) = *(v14 + 32);
      *(v14 + 32) = v28;
      while (1)
      {
        do
        {
          while (1)
          {
            v13 += 40;
            v29 = v73 >> 31;
            if (v73 >> 31 == v73)
            {
              *&v80 = v74;
              v30 = v73;
            }

            else
            {
              v80 = v74;
              v81 = v75;
              v30 = v73 >> 31;
            }

            v31 = v30 ^ v73;
            v33 = (v13 + 8);
            v32 = *v13;
            v34 = *v13 >> 31;
            v35 = v31 >> 31;
            if (v34 != *v13)
            {
              break;
            }

            if (v35 == v31 && *v33 >= v80)
            {
              *&v77 = *v33;
              v36 = 0;
              v37 = 0;
              if (v29 == v73)
              {
                goto LABEL_54;
              }

              goto LABEL_40;
            }
          }

          if (v35 == v31)
          {
            break;
          }

          v40 = bswap64(*v33);
          v41 = bswap64(v80);
          if (v40 == v41)
          {
            v40 = bswap64(*(v13 + 16));
            v41 = bswap64(*(&v80 + 1));
            if (v40 == v41)
            {
              v40 = bswap32(*(v13 + 24));
              v41 = bswap32(v81);
              if (v40 == v41)
              {
                break;
              }
            }
          }

          v42 = v40 < v41 ? -1 : 1;
        }

        while (v42 < 0);
        v43 = *v33;
        v78 = *(v13 + 24);
        v77 = v43;
        v36 = v34 ^ v32;
        v37 = v36 >> 31;
        if (v29 == v73)
        {
LABEL_54:
          if (v37 != v36 || v74 < v77)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

LABEL_40:
        if (v37 != v36)
        {
          v38 = bswap64(v74);
          v39 = bswap64(v77);
          if (v38 != v39 || (v38 = bswap64(*(&v74 + 1)), v39 = bswap64(*(&v77 + 1)), v38 != v39) || (v38 = bswap32(v75), v39 = bswap32(v78), v38 != v39))
          {
            v44 = v38 < v39 ? -1 : 1;
            if (v44 < 0)
            {
              break;
            }
          }
        }

LABEL_61:
        if (!sub_10023189C((v13 + 32), &v76))
        {
          goto LABEL_62;
        }
      }

      while (1)
      {
LABEL_62:
        while (1)
        {
          v14 -= 40;
          v45 = v73 >> 31;
          if (v73 >> 31 == v73)
          {
            *&v80 = v74;
            v46 = v73;
          }

          else
          {
            v80 = v74;
            v81 = v75;
            v46 = v73 >> 31;
          }

          v47 = v46 ^ v73;
          v49 = (v14 + 8);
          v48 = *v14;
          v50 = *v14 >> 31;
          v51 = v47 >> 31;
          if (v50 != *v14)
          {
            break;
          }

          if (v51 != v47 || *v49 < v80)
          {
            goto LABEL_13;
          }

          *&v77 = *v49;
          v52 = 0;
          v53 = 0;
          if (v45 != v73)
          {
            goto LABEL_69;
          }

LABEL_83:
          if (v53 == v52 && v74 >= v77)
          {
LABEL_90:
            if (sub_10023189C((v14 + 32), &v76))
            {
              goto LABEL_13;
            }
          }
        }

        if (v51 != v47)
        {
          v56 = bswap64(*v49);
          v57 = bswap64(v80);
          if (v56 != v57 || (v56 = bswap64(*(v14 + 16)), v57 = bswap64(*(&v80 + 1)), v56 != v57) || (v56 = bswap32(*(v14 + 24)), v57 = bswap32(v81), v56 != v57))
          {
            v58 = v56 < v57 ? -1 : 1;
            if (v58 < 0)
            {
              break;
            }
          }
        }

        v59 = *v49;
        v78 = *(v14 + 24);
        v77 = v59;
        v52 = v50 ^ v48;
        v53 = v52 >> 31;
        if (v45 == v73)
        {
          goto LABEL_83;
        }

LABEL_69:
        if (v53 != v52)
        {
          v54 = bswap64(v74);
          v55 = bswap64(v77);
          if (v54 != v55 || (v54 = bswap64(*(&v74 + 1)), v55 = bswap64(*(&v77 + 1)), v54 != v55) || (v54 = bswap32(v75), v55 = bswap32(v78), v54 != v55))
          {
            v60 = v54 < v55 ? -1 : 1;
            if (v60 < 0)
            {
              continue;
            }
          }
        }

        goto LABEL_90;
      }

LABEL_13:
      if (v13 >= v14)
      {
        goto LABEL_93;
      }
    }
  }

  v13 = a1 + v9;
LABEL_93:
  result = (v13 - 40);
  if (v13 - 40 != a1)
  {
    v62 = *result;
    if (*a1 == *result)
    {
      v63 = (v13 - 32);
      if (*a1 == *a1 >> 31)
      {
        *v72 = *v63;
      }

      else
      {
        v65 = *v63;
        *(v72 + 16) = *(v13 - 16);
        *v72 = v65;
      }
    }

    else
    {
      v64 = (v13 - 32);
      if (v62 >> 31 == v62)
      {
        *(a1 + 8) = *v64;
      }

      else
      {
        v66 = *v64;
        *(v72 + 16) = *(v13 - 16);
        *v72 = v66;
      }

      *a1 = (v62 >> 31) ^ v62;
    }

    *(a1 + 32) = *(v13 - 8);
  }

  v67 = v73;
  if (*result == v73)
  {
    v68 = (v13 - 32);
    if (*result == *result >> 31)
    {
      *v68 = v74;
    }

    else
    {
      v70 = v74;
      *(v13 - 16) = v75;
      *v68 = v70;
    }
  }

  else
  {
    v69 = (v13 - 32);
    if (v73 >> 31 == v73)
    {
      *v69 = v74;
    }

    else
    {
      v71 = v74;
      *(v13 - 16) = v75;
      *v69 = v71;
    }

    *result = (v67 >> 31) ^ v67;
  }

  *(v13 - 8) = v76;
  return result;
}

BOOL sub_10022F2A8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_10022CC8C(a1, a1 + 40, (a2 - 10), a3);
        return 1;
      case 4:
        sub_10022D348(a1, a1 + 40, a1 + 80, (a2 - 10), a3);
        return 1;
      case 5:
        sub_10022D794(a1, a1 + 40, a1 + 80, a1 + 120, (a2 - 10), a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = a2 - 10;
      if (sub_100228314(a3, (a2 - 10), a1))
      {
        v8 = *a1;
        v9 = *a1 >> 31;
        v11 = (a1 + 8);
        v10 = *(a1 + 8);
        if (v9 == *a1)
        {
          v12 = *v7;
          if (v8 == *v7)
          {
            v13 = 0;
            *v11 = *(a2 - 4);
            goto LABEL_50;
          }

          v13 = 0;
        }

        else
        {
          v40 = *(a1 + 16);
          LODWORD(v41) = *(a1 + 24);
          v13 = v9 ^ v8;
          v12 = *v7;
          if (v8 == *v7)
          {
            v31 = *(a2 - 2);
            *(a1 + 24) = *(a2 - 4);
            *v11 = v31;
            goto LABEL_50;
          }
        }

        v33 = a2 - 8;
        if (v12 >> 31 == v12)
        {
          *(a1 + 8) = *v33;
        }

        else
        {
          v34 = *v33;
          *(a1 + 24) = *(a2 - 4);
          *v11 = v34;
        }

        *a1 = (v12 >> 31) ^ v12;
LABEL_50:
        v35 = v13 >> 31;
        if (*v7 == v13)
        {
          if (v35 == v13)
          {
            *(a2 - 4) = v10;
          }

          else
          {
            v37 = v40;
            *(a2 - 4) = v10;
            *(a2 - 3) = v37;
            *(a2 - 4) = v41;
          }
        }

        else
        {
          v36 = v35 ^ v13;
          if (v35 == v13)
          {
            *(a2 - 4) = v10;
          }

          else
          {
            v38 = v40;
            *(a2 - 4) = v10;
            *(a2 - 3) = v38;
            *(a2 - 4) = v41;
          }

          *(a2 - 10) = v36;
        }

        v39 = *(a1 + 32);
        *(a1 + 32) = *(a2 - 2);
        *(a2 - 2) = v39;
      }

      return 1;
    }
  }

  sub_10022CC8C(a1, a1 + 40, a1 + 80, a3);
  v14 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  v17 = a1 + 80;
  while (1)
  {
    if (!sub_100228314(a3, v14, v17))
    {
      goto LABEL_18;
    }

    v19 = v14 + 2;
    v18 = *v14;
    v20 = *v14 >> 31;
    if (v18 >> 31 == v18)
    {
      *&v41 = *v19;
      v20 = v18;
    }

    else
    {
      v41 = *v19;
      v42 = v14[6];
    }

    v21 = v20 ^ v18;
    v22 = v14[8];
    LODWORD(v40) = v21;
    v43 = v22;
    v23 = v15;
    do
    {
      v24 = a1 + v23;
      v25 = *(a1 + v23 + 120);
      v26 = *(a1 + v23 + 80);
      if (v25 == v26)
      {
        if (v25 == v25 >> 31)
        {
          *(v24 + 128) = *(v24 + 88);
        }

        else
        {
          *(v24 + 128) = *(v24 + 88);
          *(v24 + 144) = *(v24 + 104);
        }
      }

      else
      {
        if (v26 >> 31 == v26)
        {
          *(v24 + 128) = *(v24 + 88);
        }

        else
        {
          *(v24 + 128) = *(v24 + 88);
          *(v24 + 144) = *(v24 + 104);
        }

        *(v24 + 120) = (v26 >> 31) ^ v26;
      }

      v27 = a1 + v23;
      *(a1 + v23 + 152) = *(a1 + v23 + 112);
      if (v23 == -80)
      {
        v28 = a1;
        v29 = *a1;
        v30 = v40;
        if (*a1 != v40)
        {
          goto LABEL_35;
        }

LABEL_38:
        if (v29 == v29 >> 31)
        {
          *(v28 + 8) = v41;
        }

        else
        {
          *(v28 + 8) = v41;
          *(v28 + 24) = v42;
        }

        goto LABEL_17;
      }

      v23 -= 40;
    }

    while (sub_100228314(a3, &v40, v27 + 40));
    v28 = a1 + v23 + 120;
    v29 = *v28;
    v30 = v40;
    if (*v28 == v40)
    {
      goto LABEL_38;
    }

LABEL_35:
    if (v30 >> 31 == v30)
    {
      *(v28 + 8) = v41;
    }

    else
    {
      *(v28 + 8) = v41;
      *(v28 + 24) = v42;
    }

    *v28 = (v30 >> 31) ^ v30;
LABEL_17:
    *(v28 + 32) = v43;
    if (++v16 == 8)
    {
      return v14 + 10 == a2;
    }

LABEL_18:
    v17 = v14;
    v15 += 40;
    v14 += 10;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_10022F6C0(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 3)))
    {
      v10 = (0x999999999999999ALL * ((a4 - result) >> 3)) | 1;
      v11 = result + 40 * v10;
      v12 = 0x999999999999999ALL * ((a4 - result) >> 3) + 2;
      if (v12 < a3 && sub_100228314(a2, result + 40 * v10, v11 + 40))
      {
        v11 += 40;
        v10 = v12;
      }

      result = sub_100228314(a2, v11, v5);
      if (!result)
      {
        v14 = (v5 + 8);
        v13 = *v5;
        v15 = *v5 >> 31;
        if (v13 >> 31 == v13)
        {
          *&v27 = *v14;
          v15 = v13;
        }

        else
        {
          v27 = *v14;
          v28 = *(v5 + 24);
        }

        v16 = v15 ^ v13;
        v17 = *(v5 + 32);
        v26 = v16;
        v29 = v17;
        do
        {
          v18 = v11;
          v19 = *v11;
          if (*v5 == *v11)
          {
            if (*v5 == *v5 >> 31)
            {
              *(v5 + 8) = *(v11 + 8);
            }

            else
            {
              v20 = *(v11 + 8);
              *(v5 + 24) = *(v11 + 24);
              *(v5 + 8) = v20;
            }
          }

          else
          {
            if (v19 >> 31 == v19)
            {
              *(v5 + 8) = *(v11 + 8);
            }

            else
            {
              v21 = *(v11 + 8);
              *(v5 + 24) = *(v11 + 24);
              *(v5 + 8) = v21;
            }

            *v5 = (v19 >> 31) ^ v19;
          }

          *(v5 + 32) = *(v11 + 32);
          if (v7 < v10)
          {
            break;
          }

          v22 = (2 * v10) | 1;
          v11 = v6 + 40 * v22;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v22;
          }

          else if (sub_100228314(a2, v6 + 40 * v22, v11 + 40))
          {
            v11 += 40;
          }

          else
          {
            v10 = v22;
          }

          result = sub_100228314(a2, v11, &v26);
          v5 = v18;
        }

        while (!result);
        if (*v18 == v26)
        {
          if (*v18 == *v18 >> 31)
          {
            *(v18 + 8) = v27;
          }

          else
          {
            v24 = v27;
            *(v18 + 24) = v28;
            *(v18 + 8) = v24;
          }
        }

        else
        {
          v23 = (v26 >> 31) ^ v26;
          if (v26 >> 31 == v26)
          {
            *(v18 + 8) = v27;
          }

          else
          {
            v25 = v27;
            *(v18 + 24) = v28;
            *(v18 + 8) = v25;
          }

          *v18 = v23;
        }

        *(v18 + 32) = v29;
      }
    }
  }

  return result;
}

BOOL sub_10022F95C(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = *result;
    v7 = *result;
    if (*result >> 31 != *result)
    {
      v34 = *(result + 16);
      v35 = *(result + 24);
      v7 = v6 >> 31;
    }

    v30 = v7;
    v8 = 0;
    v31 = *(result + 8);
    v33 = *(result + 32);
    v9 = (a4 - 2) >> 1;
    v29 = result;
    v10 = result;
    do
    {
      v12 = v10;
      v13 = v10 + 40 * v8;
      v10 = v13 + 40;
      v14 = 2 * v8;
      v8 = (2 * v8) | 1;
      v15 = v14 + 2;
      if (v14 + 2 < a4)
      {
        v16 = v13 + 80;
        result = sub_100228314(a3, v13 + 40, v13 + 80);
        if (result)
        {
          v10 = v16;
          v8 = v15;
        }
      }

      v17 = *v10;
      if (*v12 == *v10)
      {
        if (*v12 == *v12 >> 31)
        {
          *(v12 + 8) = *(v10 + 8);
        }

        else
        {
          v18 = *(v10 + 8);
          *(v12 + 24) = *(v10 + 24);
          *(v12 + 8) = v18;
        }
      }

      else
      {
        if (v17 >> 31 == v17)
        {
          *(v12 + 8) = *(v10 + 8);
        }

        else
        {
          v11 = *(v10 + 8);
          *(v12 + 24) = *(v10 + 24);
          *(v12 + 8) = v11;
        }

        *v12 = (v17 >> 31) ^ v17;
      }

      *(v12 + 32) = *(v10 + 32);
    }

    while (v8 <= v9);
    v19 = v30 ^ v6;
    v20 = *v10;
    if (v10 == a2 - 40)
    {
      v23 = v19 >> 31;
      if (v20 == v19)
      {
        *(v10 + 8) = v31;
        if (v23 != v19)
        {
          *(v10 + 16) = v34;
          *(v10 + 24) = v35;
        }
      }

      else
      {
        *(v10 + 8) = v31;
        if (v23 != v19)
        {
          *(v10 + 16) = v34;
          *(v10 + 24) = v35;
        }

        *v10 = v23 ^ v19;
      }

      *(v10 + 32) = v33;
    }

    else
    {
      v21 = *(a2 - 40);
      if (v20 == v21)
      {
        v22 = (a2 - 32);
        if (v20 == v20 >> 31)
        {
          *(v10 + 8) = *v22;
        }

        else
        {
          v25 = *v22;
          *(v10 + 24) = *(a2 - 16);
          *(v10 + 8) = v25;
        }
      }

      else
      {
        v24 = (a2 - 32);
        if (v21 >> 31 == v21)
        {
          *(v10 + 8) = *v24;
        }

        else
        {
          v26 = *v24;
          *(v10 + 24) = *(a2 - 16);
          *(v10 + 8) = v26;
        }

        *v10 = (v21 >> 31) ^ v21;
      }

      *(v10 + 32) = *(a2 - 8);
      v27 = v19 >> 31;
      if (*(a2 - 40) == v19)
      {
        v28 = v29;
        *(a2 - 32) = v31;
        if (v27 != v19)
        {
          *(a2 - 24) = v34;
          *(a2 - 16) = v35;
        }
      }

      else
      {
        v28 = v29;
        *(a2 - 32) = v31;
        if (v27 != v19)
        {
          *(a2 - 24) = v34;
          *(a2 - 16) = v35;
        }

        *(a2 - 40) = v27 ^ v19;
      }

      *(a2 - 8) = v33;
      return sub_10022FCA8(v28, v10 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v10 + 40 - v28) >> 3));
    }
  }

  return result;
}

BOOL sub_10022FCA8(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v7 = (a4 - 2) >> 1;
    v8 = result + 40 * v7;
    v9 = a2 - 40;
    result = sub_100228314(a3, v8, a2 - 40);
    if (result)
    {
      v10 = *(a2 - 40);
      v11 = v10 >> 31;
      v12 = (a2 - 32);
      if (v10 >> 31 == v10)
      {
        *&v21 = *v12;
        v11 = v10;
      }

      else
      {
        v21 = *v12;
        v22 = *(a2 - 16);
      }

      v13 = v11 ^ v10;
      v14 = *(a2 - 8);
      v20 = v13;
      v23 = v14;
      do
      {
        v15 = v8;
        v16 = *v8;
        if (*v9 == *v8)
        {
          if (*v9 == *v9 >> 31)
          {
            *(v9 + 8) = *(v8 + 8);
          }

          else
          {
            v17 = *(v8 + 8);
            *(v9 + 24) = *(v8 + 24);
            *(v9 + 8) = v17;
          }
        }

        else
        {
          if (v16 >> 31 == v16)
          {
            *(v9 + 8) = *(v8 + 8);
          }

          else
          {
            v18 = *(v8 + 8);
            *(v9 + 24) = *(v8 + 24);
            *(v9 + 8) = v18;
          }

          *v9 = (v16 >> 31) ^ v16;
        }

        *(v9 + 32) = *(v8 + 32);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + 40 * v7;
        result = sub_100228314(a3, v8, &v20);
        v9 = v15;
      }

      while (result);
      v19 = v20;
      if (*v15 == v20)
      {
        if (*v15 == *v15 >> 31)
        {
          *(v15 + 8) = v21;
        }

        else
        {
          *(v15 + 8) = v21;
          *(v15 + 24) = v22;
        }
      }

      else
      {
        if (v20 >> 31 == v20)
        {
          *(v15 + 8) = v21;
        }

        else
        {
          *(v15 + 8) = v21;
          *(v15 + 24) = v22;
        }

        *v15 = (v19 >> 31) ^ v19;
      }

      *(v15 + 32) = v23;
    }
  }

  return result;
}

void sub_10022FEA4(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  if (*a2 == *a1)
  {
LABEL_48:
    *a4 = v4;
    a4[1] = v4;
    return;
  }

  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - *a1) >> 3);
  v6 = *a3;
  v7 = *a3 >> 31;
  v9 = (a3 + 8);
  v8 = *(a3 + 8);
  if (v7 == *a3)
  {
    while (1)
    {
      v10 = v5 >> 1;
      v11 = v4 + 40 * (v5 >> 1);
      *&v56 = v8;
      v13 = (v11 + 8);
      v12 = *v11;
      v14 = *v11 >> 31;
      if (v12 >> 31 == v12)
      {
        if (*v13 < v8)
        {
          v4 = v11 + 40;
          *a1 = v11 + 40;
          v10 = v5 + ~v10;
          goto LABEL_5;
        }

        *&v56 = *v13;
      }

      else
      {
        v15 = *v13;
        v57 = *(v11 + 24);
        v56 = v15;
        if ((v14 ^ v12) != (v14 ^ v12) >> 31)
        {
          goto LABEL_5;
        }
      }

      if (v8 >= v56)
      {
        goto LABEL_36;
      }

LABEL_5:
      v5 = v10;
      if (!v10)
      {
        goto LABEL_48;
      }
    }
  }

  v16 = v7 ^ v6;
  v17 = (v7 ^ v6) >> 31;
  while (1)
  {
    v18 = v5 >> 1;
    v11 = v4 + 40 * (v5 >> 1);
    v56 = *v9;
    v57 = *(a3 + 24);
    v19 = (v11 + 8);
    v20 = *v11;
    v21 = *v11 >> 31;
    if (v20 >> 31 != v20)
    {
      break;
    }

    if (v17 == v16 && *v19 >= v56)
    {
      *&v56 = *v19;
      v21 = v20;
      goto LABEL_28;
    }

LABEL_13:
    v4 = v11 + 40;
    *a1 = v11 + 40;
    v18 = v5 + ~v18;
LABEL_14:
    v5 = v18;
    if (!v18)
    {
      goto LABEL_48;
    }
  }

  if (v17 != v16)
  {
    v22 = bswap64(*v19);
    v23 = bswap64(v56);
    if (v22 != v23 || (v22 = bswap64(*(v11 + 16)), v23 = bswap64(*(&v56 + 1)), v22 != v23) || (v22 = bswap32(*(v11 + 24)), v23 = bswap32(v57), v22 != v23))
    {
      v24 = v22 < v23 ? -1 : 1;
      if (v24 < 0)
      {
        goto LABEL_13;
      }
    }
  }

  v25 = *v19;
  v57 = *(v11 + 24);
  v56 = v25;
LABEL_28:
  if ((v21 ^ v20) != (v21 ^ v20) >> 31)
  {
    v26 = bswap64(*v9);
    v27 = bswap64(v56);
    if (v26 != v27 || (v26 = bswap64(*(a3 + 16)), v27 = bswap64(*(&v56 + 1)), v26 != v27) || (v26 = bswap32(*(a3 + 24)), v27 = bswap32(v57), v26 != v27))
    {
      v28 = v26 < v27 ? -1 : 1;
      if (v28 < 0)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_36:
  *a2 = v4 + 40 * v5;
  v55 = *a1;
  v53 = v11;
  sub_1002210E0(&v55, &v53, a3, &v54);
  v32 = v11 + 40;
  if (*a2 != v11 + 40)
  {
    v33 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - (v11 + 40)) >> 3);
    if (*a3 == *a3 >> 31)
    {
      v34 = *(a3 + 8);
      while (1)
      {
        v35 = v33 >> 1;
        v36 = (v32 + 40 * (v33 >> 1));
        v39 = *v36;
        v37 = v36 + 2;
        v38 = v39;
        v40 = v39 >> 31;
        if (v39 >> 31 == v39)
        {
          *&v56 = *v37;
LABEL_43:
          v42 = v32 + 40 * (v33 >> 1) + 40;
          v33 += ~v35;
          if (v34 < v56)
          {
            v33 = v35;
          }

          else
          {
            v32 = v42;
          }

          if (!v33)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v41 = *v37;
          v57 = v37[4];
          v56 = v41;
          if ((v40 ^ v38) == (v40 ^ v38) >> 31)
          {
            goto LABEL_43;
          }

          v33 >>= 1;
          if (!v35)
          {
            goto LABEL_62;
          }
        }
      }
    }

    while (2)
    {
      while (1)
      {
        v43 = v33 >> 1;
        v44 = (v32 + 40 * (v33 >> 1));
        v47 = *v44;
        v45 = v44 + 2;
        v46 = v47;
        v48 = v47 >> 31;
        if (v47 >> 31 == v47)
        {
          break;
        }

        v49 = *v45;
        v57 = v45[4];
        v56 = v49;
        if ((v48 ^ v46) == (v48 ^ v46) >> 31)
        {
          goto LABEL_50;
        }

        v50 = bswap64(*v9);
        v51 = bswap64(v56);
        if (v50 == v51)
        {
          v50 = bswap64(*(v9 + 1));
          v51 = bswap64(*(&v56 + 1));
          if (v50 == v51)
          {
            v50 = bswap32(*(v9 + 4));
            v51 = bswap32(v57);
            if (v50 == v51)
            {
              goto LABEL_50;
            }
          }
        }

        v52 = v50 < v51 ? -1 : 1;
        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

        v33 >>= 1;
        if (!v43)
        {
          goto LABEL_62;
        }
      }

      *&v56 = *v45;
LABEL_50:
      v32 += 40 * (v33 >> 1) + 40;
      v33 += ~v43;
      if (!v33)
      {
        break;
      }

      continue;
    }
  }

LABEL_62:
  *a4 = v54;
  a4[1] = v32;
}

void sub_10023032C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023039C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100230544(uint64_t a1)
{
  v1 = objc_retainBlock(*(*(a1 + 32) + 8));
  if (v1)
  {
    v1[2]();
  }
}

void sub_10023066C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100230694(unsigned __int8 *a1, uint64_t a2, int **a3)
{
  v4 = 0;
  v200 = 0;
  v5 = 1;
  memset(v199, 0, sizeof(v199));
  if (!a1 || !a2)
  {
    goto LABEL_5;
  }

  v4 = 0;
  v197 = &a1[a2];
  v7 = setjmp(v199 + 1);
  if (v7)
  {
    v5 = v7;
    goto LABEL_5;
  }

  if (LODWORD(v199[0]))
  {
    return 5;
  }

  v9 = a1;
  if (a1 >= v197)
  {
    goto LABEL_219;
  }

  v196 = a1 + 1;
  v10 = *v9 << 56;
  if (v10 >= 0)
  {
    return 5;
  }

  v11 = 2 * v10;
  v12 = (2 * v10) >> 60;
  v13 = v12;
  v14 = 16 * v11;
  if (v12 <= 3)
  {
    v18 = 16 * v11;
    v19 = 3;
  }

  else
  {
    v15 = v196;
    if (v196 >= v197)
    {
      goto LABEL_219;
    }

    v16 = ++v196;
    v17 = ((*v15 << 53) & 0x1FFFFFFFFFFFFFFFLL) + v14;
    v18 = v17;
    v19 = 11;
    if (v12 > 0xB)
    {
      if (v16 >= v197)
      {
        goto LABEL_219;
      }

      v196 = v15 + 2;
      v18 = ((v15[1] << 45) & 0x1FFFFFFFFFFFFFLL) + v17;
      v19 = 19;
    }
  }

  v20 = v18;
  v21 = (v19 - v12);
  if (v21 >= v12)
  {
    v25 = v18 << v12;
LABEL_23:
    v27 = v21;
    goto LABEL_24;
  }

  v22 = v196;
  if (v196 >= v197)
  {
    goto LABEL_219;
  }

  v23 = ++v196;
  v24 = (*v22 << 56 >> (v19 - v12)) + (v18 << v12);
  v25 = v24;
  v26 = v21 + 8;
  v27 = v21 + 8;
  if (v21 + 8 < v12)
  {
    if (v23 >= v197)
    {
      goto LABEL_219;
    }

    v196 = v22 + 2;
    LODWORD(v21) = v21 + 16;
    v25 = (v22[1] << 56 >> v26) + v24;
    goto LABEL_23;
  }

LABEL_24:
  v28 = v27 - v12;
  if ((v27 - v12) > 1)
  {
    v30 = v25 << v12;
    v31 = v27 - v12;
  }

  else
  {
    v29 = v196;
    if (v196 >= v197)
    {
      goto LABEL_219;
    }

    ++v196;
    v30 = (*v29 << 56 >> v28) + (v25 << v12);
    v31 = v28 | 8;
  }

  v32 = v31 - 2;
  if ((v31 - 2) <= 7)
  {
    v33 = v196;
    if (v196 < v197)
    {
      ++v196;
      v34 = (*v33 << 56 >> v32) + 4 * v30;
      v32 = v31 + 6;
      goto LABEL_32;
    }

LABEL_219:
    longjmp(v199 + 1, 3);
  }

  v34 = 4 * v30;
LABEL_32:
  v35 = v20 >> -v12;
  LODWORD(v199[0]) = v32 - 8;
  result = 8;
  if (v35 < 2)
  {
    return result;
  }

  v36 = v25 >> (64 - v12);
  if (v36 < 2)
  {
    return result;
  }

  v37 = v36 * v35;
  if ((v36 * v35) > 0x100000)
  {
    return result;
  }

  v38 = v20 >> -v12;
  v193 = v20 >> -v12;
  v39 = malloc_type_malloc((2 * v37 + 20), 0x1000040A86A77D5uLL);
  if (!v39)
  {
    v4 = 0;
    v5 = 7;
    goto LABEL_5;
  }

  v40 = v39;
  v41 = v30 >> 62;
  v4 = v39;
  *v39 = v38;
  v39[1] = v36;
  v39[3] = v41;
  v39[4] = HIBYTE(v34);
  v39[2] = v13;
  if (v37)
  {
    v42 = v39;
    memset_pattern16(v39 + 5, &unk_1003D9530, (2 * v37));
    v40 = v42;
  }

  v43 = v193;
  v44 = v36;
  v45 = v199[0];
  v46 = v34 << 8;
  v47 = v196;
  v48 = v40 + 5;
  v192 = v40 + 5;
  while (2)
  {
    if (v45)
    {
      v49 = v47;
      v50 = v46;
      v51 = v45 - 1;
      v52 = v50;
      v53 = 2 * v50;
      v198 = v53;
      LODWORD(v199[0]) = v51;
      if ((v52 & 0x8000000000000000) == 0)
      {
        goto LABEL_101;
      }

LABEL_45:
      v56 = v4[2];
      if (v51 < v56)
      {
        v57 = v49;
        v58 = v51;
        while (v57 < v197)
        {
          v59 = v57++;
          v196 = v57;
          v53 += *v59 << 56 >> v58;
          v58 += 8;
          v60 = v53;
          v49 = v57;
          v51 = v58;
          if (v58 >= v56)
          {
            goto LABEL_51;
          }
        }

LABEL_217:
        longjmp(v199 + 1, 3);
      }

      v60 = v53;
LABEL_51:
      v61 = v51;
      v62 = v60;
      v63 = v60 << v56;
      v64 = v61 - v56;
      v65 = v4[2];
      if (v64 < v65)
      {
        v66 = v49;
        v67 = v64;
        while (v66 < v197)
        {
          v196 = v66 + 1;
          v63 += *v66 << 56 >> v67;
          v68 = v63;
          v69 = ++v66;
          v67 += 8;
          v64 = v67;
          if (v67 >= v65)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_217;
      }

      v69 = v49;
      v68 = v63;
LABEL_57:
      v70 = v68 >> -v65;
      v71 = v68 << v65;
      v72 = v64 - v4[2];
      if ((v70 & 0x80000000) != 0)
      {
LABEL_216:
        longjmp(v199 + 1, 6);
      }

      v73 = v69;
      v74 = v71;
      v75 = v72;
      v76 = 0;
      v77 = v62 >> -v4[2];
      while (1)
      {
        v78 = v70;
        if (v70 >= v4[1] || v77 < 0 || v77 >= *v4)
        {
          goto LABEL_216;
        }

        *(v48 + (v77 + *v4 * v70)) = 2;
        if (v75 > 1)
        {
          v80 = v69;
          v79 = v75;
        }

        else
        {
          if (v69 >= v197)
          {
            goto LABEL_217;
          }

          v196 = v69 + 1;
          v74 += *v69 << 56 >> v75;
          v79 = v75 | 8;
          v80 = v69 + 1;
          v73 = v69 + 1;
        }

        v81 = v74;
        v82 = v74 >> 62;
        v83 = 4 * v81;
        v84 = 4 * v81;
        v85 = v79 - 2;
        if (v82 > 1)
        {
          if (v82 != 2)
          {
            ++v76;
          }

          goto LABEL_81;
        }

        if (v82)
        {
          --v76;
LABEL_81:
          v69 = v80;
          v74 = v84;
          v75 = v79 - 2;
          goto LABEL_82;
        }

        if ((v79 - 2) <= 1)
        {
          if (v80 >= v197)
          {
            goto LABEL_217;
          }

          v86 = (*v80++ << 56 >> v85) + v83;
          v196 = v80;
          v73 = v80;
          v84 = v86;
          v85 = v79 + 6;
        }

        v87 = v84 >> 62;
        v88 = 4 * v84;
        if (v87 > 1)
        {
          break;
        }

        if (v87)
        {
          v76 += 2;
LABEL_97:
          v69 = v80;
          v74 = v88;
          v75 = v85 - 2;
          goto LABEL_82;
        }

        if (v85 == 2)
        {
          if (v80 >= v197)
          {
            goto LABEL_217;
          }

          v196 = v80 + 1;
          v89 = v88 + (*v80 << 56);
          v69 = v80 + 1;
          v73 = v80 + 1;
          v74 = 2 * v89;
          v75 = 7;
          if ((v89 & 0x8000000000000000) == 0)
          {
LABEL_77:
            v76 += 4;
            goto LABEL_82;
          }
        }

        else
        {
          v69 = v80;
          v74 = 2 * v88;
          v75 = v85 - 3;
          if ((v88 & 0x8000000000000000) == 0)
          {
            goto LABEL_77;
          }
        }

        v76 += 3;
LABEL_82:
        v76 &= 7u;
        if (v76 > 3u)
        {
          if (v76 > 5u)
          {
            if (v76 != 6)
            {
              ++v77;
            }
          }

          else
          {
            --v77;
            if (v76 == 4)
            {
              goto LABEL_60;
            }
          }

          v78 = (v78 - 1);
        }

        else
        {
          if (v76 > 1u)
          {
            if (v76 != 2)
            {
              --v77;
            }

LABEL_91:
            v78 = (v78 + 1);
            goto LABEL_60;
          }

          ++v77;
          if (v76)
          {
            goto LABEL_91;
          }
        }

LABEL_60:
        v70 = v78;
        if ((v78 & 0x80000000) != 0)
        {
          goto LABEL_216;
        }
      }

      if (v87 != 2)
      {
        v47 = v73;
        v46 = v88;
        v45 = v85 - 2;
        continue;
      }

      v76 -= 2;
      goto LABEL_97;
    }

    break;
  }

  if (v47 >= v197)
  {
    goto LABEL_217;
  }

  v196 = v47 + 1;
  v54 = v46 + (*v47 << 56);
  v49 = v196;
  v51 = 7;
  v55 = v54;
  v53 = 2 * v54;
  v198 = v53;
  LODWORD(v199[0]) = 7;
  if ((v55 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

LABEL_101:
  v90 = v40;
  sub_10023169C(v4);
  v91 = v196;
  v92 = v198;
  v93 = LODWORD(v199[0]);
  v190 = v44;
  v191 = v90 + 18;
  v94 = 0;
  do
  {
    v95 = 0;
    v96 = v91;
    v97 = 2 * v193 * v94;
    v98 = v191 + v97;
    v100 = v192 + v97;
    v101 = v94 * v43;
    v102 = v93;
    v103 = v93;
    v104 = v92;
    v105 = v92;
    v106 = v96;
    do
    {
      v109 = v102;
      if (!*(v48 + (v101 + v95)))
      {
        v93 = v103;
        v107 = v105;
        v108 = v96;
        goto LABEL_105;
      }

      if (v95)
      {
        v110 = *(v98 + 2 * v95);
        if (!v94)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v110 = 0;
        if (!v94)
        {
LABEL_120:
          v117 = v110;
          goto LABEL_143;
        }
      }

      v111 = v192 + v193 * (v94 - 1) + v95;
      if (v110)
      {
        v112 = v110;
      }

      else
      {
        v112 = *v111;
      }

      if (v110 && *v111)
      {
        v113 = *v111;
        v114 = v112;
        if (v112 - v113 >= 0)
        {
          v115 = v112 - *v111;
        }

        else
        {
          v115 = *v111 - v112;
        }

        v116 = v113 + v112;
        if ((v113 + v112) < 2)
        {
          goto LABEL_135;
        }

        goto LABEL_144;
      }

      if (v95 + 1 >= v193)
      {
        v118 = 0;
        if (!v95)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v99 = v192 + 2 * v193 * (v94 - 1);
        if (v112)
        {
          v118 = *(v99 + 2 * (v95 + 1));
        }

        else
        {
          v112 = *(v99 + 2 * (v95 + 1));
          v118 = 0;
        }

        if (!v95)
        {
LABEL_126:
          v119 = v118;
LABEL_130:
          v117 = v112;
          v114 = v112;
          v113 = v119;
          if (v119)
          {
            if (v112 - v119 >= 0)
            {
              v115 = v112 - v119;
            }

            else
            {
              v115 = v119 - v112;
            }

            v116 = v113 + v112;
            if ((v113 + v112) < 2)
            {
LABEL_135:
              v120 = v106;
              v121 = v106;
              v122 = v104;
              v123 = v102;
              v124 = 0;
              while (1)
              {
                if (v123)
                {
                  v125 = v96;
                  v126 = v120;
                  v127 = v121;
                  v128 = v123 - 1;
                }

                else
                {
                  if (v121 >= v197)
                  {
                    goto LABEL_218;
                  }

                  v122 += *v121 << 56;
                  v128 = 7;
                  v126 = v121 + 1;
                  v127 = v121 + 1;
                  v125 = v121 + 1;
                }

                v129 = v122;
                v130 = v127;
                v131 = 2 * v129;
                v132 = 2 * v129;
                if (v129 < 0)
                {
                  break;
                }

                ++v124;
                v96 = v125;
                v120 = v126;
                v121 = v130;
                v122 = 2 * v129;
                v123 = v128;
                if (v124 == 256)
                {
                  v133 = 256;
                  goto LABEL_156;
                }
              }

              v133 = v124;
              if (!v124)
              {
                if (v128)
                {
                  v149 = v125;
                }

                else
                {
                  if (v126 >= v197)
                  {
                    goto LABEL_218;
                  }

                  v132 = v131 + (*v126 << 56);
                  v128 = 8;
                  v149 = ++v126;
                }

                v184 = v128;
                v185 = v126;
                v107 = 2 * v132;
                v109 = v184 - 1;
                if ((v132 & 0x8000000000000000) == 0)
                {
                  LOWORD(v152) = 1;
                  v106 = v185;
                  goto LABEL_197;
                }

                if (v184 == 1)
                {
                  if (v185 >= v197)
                  {
                    goto LABEL_218;
                  }

                  v107 = 2 * v132 + (*v185 << 56);
                  LODWORD(v109) = 8;
                  v149 = ++v185;
                }

                v186 = v107;
                v187 = 2 * v107;
                v107 *= 2;
                v109 = (v109 - 1);
                if ((v186 & 0x8000000000000000) == 0)
                {
                  LOWORD(v152) = 2;
                  v106 = v185;
                  goto LABEL_197;
                }

                if (!v109)
                {
                  if (v185 >= v197)
                  {
                    goto LABEL_218;
                  }

                  v107 = v187 + (*v185 << 56);
                  LODWORD(v109) = 8;
                  v149 = ++v185;
                }

                v152 = ~(v107 >> 63) & 3;
                v109 = (v109 - 1);
                v107 *= 2;
                v106 = v185;
                goto LABEL_197;
              }

LABEL_156:
              if (v128 <= 1)
              {
                if (v126 >= v197)
                {
                  goto LABEL_218;
                }

                v132 = (*v126 << 56 >> v128) + v131;
                v128 |= 8u;
                v125 = ++v126;
              }

              v151 = v126;
              v107 = 4 * v132;
              v109 = v128 - 2;
              LOWORD(v152) = (4 * v133) | (v132 >> 62);
              v149 = v125;
              v106 = v151;
              goto LABEL_197;
            }

            goto LABEL_144;
          }

          goto LABEL_143;
        }
      }

      v119 = v118;
      if (v118)
      {
        goto LABEL_130;
      }

      v117 = *(v111 - 1);
      v119 = v117;
      if (v112)
      {
        goto LABEL_130;
      }

LABEL_143:
      v113 = v117;
      v114 = v117;
      v115 = 0;
      v116 = 2 * v117;
      if (v116 < 2)
      {
        goto LABEL_135;
      }

LABEL_144:
      if (v115 >= 2)
      {
        v153 = v106;
        v154 = v106;
        v155 = v104;
        v156 = v102;
        if (v115 < 9)
        {
          v157 = 0;
          while (1)
          {
            v158 = v154;
            if (v156)
            {
              v159 = v156 - 1;
              v160 = v96;
              v161 = v153;
              v162 = 2 * v155;
              v163 = 2 * v155;
              if ((v155 & 0x8000000000000000) != 0)
              {
                goto LABEL_168;
              }
            }

            else
            {
              if (v154 >= v197)
              {
                goto LABEL_218;
              }

              v164 = v155 + (*v154 << 56);
              v159 = 7;
              ++v154;
              v160 = v158 + 1;
              v161 = v158 + 1;
              v162 = 2 * v164;
              v163 = 2 * v164;
              if ((v164 & 0x8000000000000000) != 0)
              {
LABEL_168:
                if (v159)
                {
                  goto LABEL_171;
                }

                if (v161 < v197)
                {
                  v163 = v162 + (*v161 << 56);
                  v159 = 8;
                  v160 = ++v161;
LABEL_171:
                  v165 = v161;
                  v166 = 2 * v157;
                  v167 = v163 >> 63;
                  v146 = 2 * v163;
                  v168 = (v159 - 1);
LABEL_194:
                  v169 = v166 | v167;
                  v147 = v168;
                  v140 = v160;
                  v170 = v165;
                  v171 = (v115 & 1) == 0;
                  if (!(v169 | v115 & 1))
                  {
                    goto LABEL_195;
                  }

LABEL_173:
                  v172 = v170;
                  v144 = v171;
                  v145 = v169;
                  v148 = v172;
                  if (v147)
                  {
LABEL_174:
                    v150 = (v147 - 1);
                    v149 = v140;
LABEL_175:
                    v173 = v145 + !v144;
                    if (v146 < 0)
                    {
                      v173 = -v145;
                    }

                    v174 = v150;
                    v146 *= 2;
                    v106 = v148;
                    v175 = v173 + (v116 >> 1);
                    if (v175 >= 0)
                    {
                      goto LABEL_196;
                    }

                    v188 = 4;
LABEL_211:
                    v189 = v188;
                    free(v4);
                    v4 = 0;
                    v5 = v189;
                    goto LABEL_5;
                  }

LABEL_153:
                  if (v148 < v197)
                  {
                    v146 += *v148++ << 56;
                    v149 = v148;
                    v150 = 7;
                    goto LABEL_175;
                  }
                }

LABEL_218:
                longjmp(v199 + 1, 3);
              }
            }

            ++v157;
            v96 = v160;
            v153 = v161;
            v155 = v163;
            v156 = v159;
            if (v157 == 256)
            {
              goto LABEL_168;
            }
          }
        }

        v176 = 0;
        while (1)
        {
          if (v156)
          {
            v160 = v96;
            v177 = v153;
            v178 = v156 - 1;
            v179 = 2 * v155;
            v180 = 2 * v155;
            if ((v155 & 0x8000000000000000) != 0)
            {
              goto LABEL_190;
            }
          }

          else
          {
            if (v154 >= v197)
            {
              goto LABEL_218;
            }

            v181 = v155 + (*v154 << 56);
            v178 = 7;
            v177 = ++v154;
            v160 = v154;
            v179 = 2 * v181;
            v180 = 2 * v181;
            if ((v181 & 0x8000000000000000) != 0)
            {
LABEL_190:
              v182 = v176;
              if (v178 <= 1)
              {
LABEL_191:
                if (v177 >= v197)
                {
                  goto LABEL_218;
                }

                v180 = (*v177 << 56 >> v178) + v179;
                v178 |= 8u;
                v160 = ++v177;
              }

LABEL_193:
              v165 = v177;
              v166 = 4 * v182;
              v167 = v180 >> 62;
              v146 = 4 * v180;
              v168 = v178 - 2;
              goto LABEL_194;
            }
          }

          ++v176;
          v96 = v160;
          v153 = v177;
          v155 = v180;
          v156 = v178;
          if (v176 == 256)
          {
            v182 = 256;
            if (v178 <= 1)
            {
              goto LABEL_191;
            }

            goto LABEL_193;
          }
        }
      }

      v134 = v106;
      v135 = v106;
      v136 = v104;
      v137 = v102;
      v138 = 0;
      while (v137)
      {
        v139 = (v137 - 1);
        v140 = v96;
        v141 = v134;
        v142 = 2 * v136;
        if (v136 < 0)
        {
          goto LABEL_172;
        }

LABEL_151:
        ++v138;
        v96 = v140;
        v134 = v141;
        v136 = v142;
        v137 = v139;
        if (v138 == 256)
        {
          v144 = v114 == v113;
          v145 = 256;
          v146 = v142;
          LODWORD(v147) = v139;
          v148 = v141;
          if (v139)
          {
            goto LABEL_174;
          }

          goto LABEL_153;
        }
      }

      if (v135 >= v197)
      {
        goto LABEL_218;
      }

      v143 = v136 + (*v135 << 56);
      v141 = ++v135;
      v140 = v135;
      v139 = 7;
      v142 = 2 * v143;
      if ((v143 & 0x8000000000000000) == 0)
      {
        goto LABEL_151;
      }

LABEL_172:
      v147 = v139;
      v146 = v142;
      v169 = v138;
      v170 = v141;
      v171 = (v115 & 1) == 0;
      if (v169 | v115 & 1)
      {
        goto LABEL_173;
      }

LABEL_195:
      v174 = v147;
      v149 = v140;
      v106 = v170;
      v175 = v116 >> 1;
LABEL_196:
      LOWORD(v152) = v175;
      v109 = v174;
      v107 = v146;
LABEL_197:
      v183 = v149;
      v93 = v109;
      *(v100 + 2 * v95) = v152;
      v104 = v107;
      v108 = v183;
LABEL_105:
      v102 = v109;
      v92 = v107;
      ++v95;
      v103 = v93;
      v105 = v92;
      v96 = v108;
    }

    while (v95 != v193);
    ++v94;
    v91 = v108;
    v43 = v193;
  }

  while (v94 != v190);
  if (v108 - a1 != a2)
  {
    v188 = 2;
    goto LABEL_211;
  }

  v5 = 0;
LABEL_5:
  *a3 = v4;
  return v5;
}

int *sub_10023169C(int *result)
{
  v1 = result + 5;
  v2 = *result;
  if (v2 >= 1)
  {
    v3 = result[1];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = result + 5;
      v7 = 2 * v2;
      result = (result + 22);
      while (1)
      {
        if (v4)
        {
          if (v4 == v2 - 1)
          {
            v8 = v6 + v4;
            v9 = v3;
            v10 = v5;
            do
            {
              if (*v8 == 1)
              {
                *v8 = 0;
                v10 = 1;
              }

              v8 = (v8 + v7);
              --v9;
            }

            while (v9);
          }

          else
          {
            if (*(v1 + v4) == 1)
            {
              *(v1 + v4) = 0;
              v5 = 1;
            }

            if (v3 == 1)
            {
              v10 = v5;
            }

            else
            {
              v13 = v6 + v4;
              v14 = result + v2 + v4;
              v15 = v3 - 1;
              v16 = (v3 - 1) - 1;
              v10 = v5;
              do
              {
                if (*(v14 - 1) == 1 && (!v16 || !*(v14 - 2) || !*v14 || !*v13 || !v13[2 * v2]))
                {
                  *(v14 - 1) = 0;
                  v10 = 1;
                }

                --v16;
                v13 = (v13 + v7);
                v14 = (v14 + v7);
                --v15;
              }

              while (v15);
            }
          }
        }

        else
        {
          v11 = v3;
          v12 = v1;
          v10 = v5;
          do
          {
            if (*v12 == 1)
            {
              *v12 = 0;
              v10 = 1;
            }

            v12 = (v12 + 2 * v2);
            --v11;
          }

          while (v11);
        }

        ++v4;
        v5 = v10;
        if (v4 == v2)
        {
          v4 = 0;
          v5 = 0;
          if (!v10)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}