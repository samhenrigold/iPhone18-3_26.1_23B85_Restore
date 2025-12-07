void sub_29B1D28EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    sub_29A014BEC(a32);
  }

  v34 = *(v32 - 104);
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  v35 = *(v32 - 56);
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D2A28()
{
  if (!v0)
  {
    JUMPOUT(0x29B1D2A08);
  }

  JUMPOUT(0x29B1D2A00);
}

void sub_29B1D2A34()
{
  if (*(v0 - 73) < 0)
  {
    operator delete(*(v0 - 96));
  }

  JUMPOUT(0x29B1D2A08);
}

void sub_29B1D2A5C()
{
  if (*(v0 - 73) < 0)
  {
    operator delete(*(v0 - 96));
  }

  JUMPOUT(0x29B1D2A20);
}

std::string *sub_29B1D2A74(std::string *result, uint64_t *a2)
{
  v2 = *(result->__r_.__value_.__r.__words[0] + 200);
  v3 = *(result->__r_.__value_.__r.__words[0] + 208);
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      v6 = *a2;
      v7 = sub_29A8877BC((*v5 + 160), v2);
      if (v7)
      {
        v9 = (v7 + 5);
      }

      else
      {
        v9 = sub_29B1F31FC(0, v8);
      }

      result = sub_29B1D9334(v6, v2, v9);
      v2 += 3;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_29B1D2AF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D76C0(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29B1D2BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

char *sub_29B1D2C34(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE60[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1D2CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1D2CC0(uint64_t a1, const void **a2)
{
  sub_29B1D74B0(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_29B1D2D6C(uint64_t a1, char a2)
{
  v5 = a2;
  sub_29A008E78(__p, off_2A14FDCE0[0]);
  sub_29B1D3138(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1D2DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D2DF4(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  sub_29B1C6D90(a1, a2, a3);
  v5 = *a2;
  sub_29A014C58(&v6, (a1 + 8));
  sub_29B1D9ADC(v5, &v6);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29B1D2E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D2E80(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v18 = *(a2 + 16);
  }

  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = *(&__dst + 1);
  }

  if (!v5)
  {
    sub_29A008E78(&v12, off_2A14FDD78[0]);
    v6 = std::string::append(&v12, "1");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_29AD961E8(a1, __p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    __dst = v15;
    v18 = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (sub_29A8877BC(a1 + 12, &__dst))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v15);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  sub_29A014C58(&v15, a1 + 1);
  sub_29AD98274(&v15, &__dst, a3);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29B1D3080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D3138(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  sub_29B1F45D4(a3, &__p);
  sub_29B1D9334(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29B1D3190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D31AC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v18 = *(a2 + 16);
  }

  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = *(&__dst + 1);
  }

  if (!v5)
  {
    sub_29A008E78(&v12, off_2A14FDD80[0]);
    v6 = std::string::append(&v12, "1");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_29AD961E8(a1, __p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    __dst = v15;
    v18 = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (sub_29A8877BC(a1 + 12, &__dst))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v15);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  sub_29A014C58(&v15, a1 + 1);
  sub_29AD9A1C0(&v15, &__dst, a3);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29B1D33AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B1D3464(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A012BFC(result, a4);
    result = sub_29B1D34EC(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29B1D34CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A03CE34(&a9);
  _Unwind_Resume(a1);
}

void *sub_29B1D34EC(uint64_t a1, void *a2, void *a3, void *a4)
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

      v4[2] = a2[2];
      a2 += 3;
      v4 += 3;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29B1D357C(v7);
  return v4;
}

uint64_t sub_29B1D357C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B1D35B4(a1);
  }

  return a1;
}

void sub_29B1D35B4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    v1 -= 24;
  }
}

BOOL sub_29B1D35F8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a2 + 16);
  if (v2 - v3 != *(a2 + 24) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || *(v3 + 2) != v4[2])
    {
      return 0;
    }

    v3 += 24;
    v4 += 3;
  }

  return *(a1 + 40) == *(a2 + 40);
}

uint64_t sub_29B1D366C(uint64_t a1)
{
  v4 = (a1 + 16);
  sub_29A03CE34(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

char *sub_29B1D36B4(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE68[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1D3724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D3740(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A1E686C(a1, *(a1 + 16));
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

void *sub_29B1D379C(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x40uLL);
  *i = 0;
  *(i + 1) = v9;
  v16 = *a4;
  v17 = **a4;
  *(i + 4) = *(*a4 + 2);
  *(i + 1) = v17;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(i + 6) = 0;
  *(i + 7) = 0;
  *(i + 5) = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_38:
    *v25 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29B1D39F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E759C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B1D3A0C(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x40uLL);
  *i = 0;
  *(i + 1) = v9;
  v16 = *a4;
  v17 = **a4;
  *(i + 4) = *(*a4 + 2);
  *(i + 1) = v17;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(i + 6) = 0;
  *(i + 7) = 0;
  *(i + 5) = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_38:
    *v25 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29B1D3C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E759C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B1D3C7C(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x40uLL);
  *i = 0;
  *(i + 1) = v9;
  v16 = *a4;
  v17 = **a4;
  *(i + 4) = *(*a4 + 2);
  *(i + 1) = v17;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(i + 6) = 0;
  *(i + 7) = 0;
  *(i + 5) = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_38:
    *v25 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29B1D3ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A1E759C(va, 0);
  _Unwind_Resume(a1);
}

void sub_29B1D3EEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D7980(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29B1D3FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_29B1D4028(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE20[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1D408C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1D40A8(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE20[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1D4118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D4134(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D7A30(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29B1D41B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1D41D0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC78[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1D4234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B1D4250(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A1D5390(a1, a2, a1[1], &a2[2 * a5]);
        v20 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_29B1D4434(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A1D5390(a1, v5, v10, &v5[2 * a5]);
        v20 = (v7 + v18);
      }

      sub_29A4274B8(v32, v7, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v34 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[16 * v16];
    v33 = &v17[16 * v15];
    v22 = &v21[2 * a5];
    v23 = v21;
    do
    {
      *v23 = *v7;
      v24 = v7[1];
      v23[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v23 += 2;
      v7 += 2;
    }

    while (v23 != v22);
    memcpy(v22, v5, a1[1] - v5);
    v25 = *a1;
    v26 = v22 + a1[1] - v5;
    a1[1] = v5;
    v27 = v5 - v25;
    v28 = v21 - (v5 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    v30 = a1[2];
    a1[2] = v33;
    v32[2] = v29;
    v33 = v30;
    v32[0] = v29;
    v32[1] = v29;
    sub_29A017C0C(v32);
    return v21;
  }

  return v5;
}

void *sub_29B1D4434(uint64_t a1, void *a2, void *a3, void *a4)
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
  sub_29B1D44BC(v7);
  return v4;
}

uint64_t sub_29B1D44BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29B1D44F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D7A30(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29B1D45F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void sub_29B1D4630(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v18 = *(a2 + 16);
  }

  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = *(&__dst + 1);
  }

  if (!v5)
  {
    sub_29A008E78(&v12, off_2A14FDD18[0]);
    v6 = std::string::append(&v12, "1");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_29AD961E8(a1, __p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    __dst = v15;
    v18 = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (sub_29A8877BC(a1 + 12, &__dst))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v15);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  sub_29A014C58(&v15, a1 + 1);
  sub_29B1D4964(&v15, &__dst, a3);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29B1D4830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D48E8(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDE20[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1D4948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D4964(__int128 *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1D49E0(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1D49E0(void *a1, __int128 *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C62F8;
  sub_29B1D4AE0(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1D4A74(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C62F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1D4AE0(uint64_t a1, void *a2, __int128 *a3, __int128 *a4)
{
  v4 = *a3;
  *a3 = 0uLL;
  sub_29B1D4B44(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }
}

void sub_29B1D4B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D4B44(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, off_2A14FDD18[0]);
  sub_29B1D4C1C(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6348;
  return a1;
}

void sub_29B1D4BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D4C1C(void *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AD96D70(a1, &v7, a3, a4);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  *a1 = &unk_2A20C7918;
  return a1;
}

void sub_29B1D4C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D4CB0(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1D4CD8(void *a1, uint64_t *a2)
{
  sub_29AAC0094(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v4)
  {
    sub_29B1D9298(a1, a2);
  }
}

void sub_29B1D4D30(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v18 = *(a2 + 16);
  }

  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = *(&__dst + 1);
  }

  if (!v5)
  {
    sub_29A008E78(&v12, off_2A14FDCF0[0]);
    v6 = std::string::append(&v12, "1");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_29AD961E8(a1, __p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    __dst = v15;
    v18 = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (sub_29A8877BC(a1 + 12, &__dst))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v15);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  sub_29A014C58(&v15, a1 + 1);
  sub_29B1D4FE8(&v15, &__dst, a3);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29B1D4F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D4FE8(__int128 *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1D5064(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1D5064(void *a1, __int128 *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C63B0;
  sub_29B1D5164(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1D50F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C63B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1D5164(uint64_t a1, void *a2, __int128 *a3, __int128 *a4)
{
  v4 = *a3;
  *a3 = 0uLL;
  sub_29B1D51C8(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }
}

void sub_29B1D51B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D51C8(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, off_2A14FDCF0[0]);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7D10;
  return a1;
}

void sub_29B1D5270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D52A0(void *a1, uint64_t *a2)
{
  sub_29AD98C84(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v4)
  {
    sub_29B1D9298(a1, a2);
  }
}

void *sub_29B1D52F8(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B1D5330(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D534C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v18 = *(a2 + 16);
  }

  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = *(&__dst + 1);
  }

  if (!v5)
  {
    sub_29A008E78(&v12, off_2A14FDD68[0]);
    v6 = std::string::append(&v12, "1");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_29AD961E8(a1, __p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    __dst = v15;
    v18 = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (sub_29A8877BC(a1 + 12, &__dst))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v15);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  sub_29A014C58(&v15, a1 + 1);
  sub_29AD96994(&v15, &__dst, a3);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29B1D554C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D5604(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v18 = *(a2 + 16);
  }

  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = *(&__dst + 1);
  }

  if (!v5)
  {
    sub_29A008E78(&v12, off_2A14FDD38[0]);
    v6 = std::string::append(&v12, "1");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_29AD961E8(a1, __p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    __dst = v15;
    v18 = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (sub_29A8877BC(a1 + 12, &__dst))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v15);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  sub_29A014C58(&v15, a1 + 1);
  sub_29AD99A30(&v15, &__dst, a3);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29B1D5804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D58BC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v18 = *(a2 + 16);
  }

  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = *(&__dst + 1);
  }

  if (!v5)
  {
    sub_29A008E78(&v12, off_2A14FDDB0[0]);
    v6 = std::string::append(&v12, "1");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_29AD961E8(a1, __p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    __dst = v15;
    v18 = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (sub_29A8877BC(a1 + 12, &__dst))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v15);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  sub_29A014C58(&v15, a1 + 1);
  sub_29B1D5B74(&v15, &__dst, a3);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29B1D5ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D5B74(__int128 *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1D5BF0(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1D5BF0(void *a1, __int128 *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6470;
  sub_29B1D5CF0(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1D5C84(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1D5CF0(uint64_t a1, void *a2, __int128 *a3, __int128 *a4)
{
  v4 = *a3;
  *a3 = 0uLL;
  sub_29B1D5D54(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }
}

void sub_29B1D5D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D5D54(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, off_2A14FDDB0[0]);
  sub_29AD99D78(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C64C0;
  return a1;
}

void sub_29B1D5DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D5E30(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void *sub_29B1D5E58(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B1D5E90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D5EAC(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B1D5EE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D5F00(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B1D5F38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D5F54(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B1D5F8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D5FA8(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B1D5FE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D5FFC(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B1D6034(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D6050(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B1D6088(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D60A4(void *a1, uint64_t *a2)
{
  sub_29AAC1E24(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v4)
  {
    sub_29B1D9298(a1, a2);
  }
}

void sub_29B1D60FC(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x130uLL);
  sub_29B1D6178(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1D6178(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6530;
  sub_29B1D6278(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1D620C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1D6278(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  *a3 = 0;
  a3[1] = 0;
  sub_29B1C6E30(a2, v5, a4);
  if (v4)
  {

    sub_29A014BEC(v4);
  }
}

void sub_29B1D62E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D6318(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B1D6384(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, off_2A14FDD70[0]);
  sub_29AD96C4C(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6010;
  return a1;
}

void sub_29B1D642C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D645C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29B1D6498(v3);

    operator delete(v4);
  }
}

uint64_t sub_29B1D6498(uint64_t a1)
{
  sub_29B1D64E8(a1 + 168);
  sub_29B1D64E8(a1 + 128);
  sub_29B1D64E8(a1 + 88);
  std::mutex::~mutex((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_29B1D64E8(uint64_t a1)
{
  sub_29A1E686C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *sub_29B1D6524(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29B1D65AC(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29B1D658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29B1D65AC(uint64_t a1, void *a2, void *a3, void *a4)
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
  sub_29B1D6634(v7);
  return v4;
}

uint64_t sub_29B1D6634(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void *sub_29B1D666C(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29B1D4434(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29B1D66D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29B1D66F4(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29B1C6CCC(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29B1D675C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29B1D677C(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29B1D6804(v6, a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_29B1D67E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29B1D6804(uint64_t a1, void *a2, void *a3, void *a4)
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
  sub_29B1D688C(v7);
  return v4;
}

uint64_t sub_29B1D688C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29B1D68C4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v18 = *(a2 + 16);
  }

  v5 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = *(&__dst + 1);
  }

  if (!v5)
  {
    sub_29A008E78(&v12, off_2A14FDD20[0]);
    v6 = std::string::append(&v12, "1");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_29AD961E8(a1, __p, &v15);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst);
    }

    __dst = v15;
    v18 = v16;
    HIBYTE(v16) = 0;
    LOBYTE(v15) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (sub_29A8877BC(a1 + 12, &__dst))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v15);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  sub_29A014C58(&v15, a1 + 1);
  sub_29B1D6B7C(&v15, &__dst, a3);
  if (*(&v15 + 1))
  {
    sub_29A014BEC(*(&v15 + 1));
  }

  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst);
  }
}

void sub_29B1D6AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D6B7C(__int128 *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1D6BF8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1D6BF8(void *a1, __int128 *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C65D0;
  sub_29B1D6CF8(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1D6C8C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C65D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1D6CF8(uint64_t a1, void *a2, __int128 *a3, __int128 *a4)
{
  v4 = *a3;
  *a3 = 0uLL;
  sub_29B1D6D5C(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }
}

void sub_29B1D6D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1D6D5C(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, off_2A14FDD20[0]);
  sub_29AD99D78(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6620;
  return a1;
}

void sub_29B1D6E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D6E38(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void *sub_29B1D6E60(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x40uLL);
  *i = 0;
  *(i + 1) = v9;
  v16 = *a4;
  v17 = **a4;
  *(i + 4) = *(*a4 + 2);
  *(i + 1) = v17;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(i + 6) = 0;
  *(i + 7) = 0;
  *(i + 5) = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_38:
    *v25 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29B1D70B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_29B1D70D0(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B1D7324(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B1D730C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29B1D7324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  result = sub_29A0196C4(v8 + 16, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29B1D7394(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  if (v4)
  {
    v3 = v5;
    *a2 = v4;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29B1D7400(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A2092790, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D74B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7BE8, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7560(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7A68, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7610(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A2092760, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D76C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6778, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7770(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6910, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7820(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C79C0, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D78D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6178, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7980(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6388, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7A30(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6668, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7AE0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6AD8, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7B90(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C60E8, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7C40(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7AE8, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7CF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A2070F08, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7DA0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6D38, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7E50(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7C68, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7F00(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6068, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D7FB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7CE8, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D8060(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7B68, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D8110(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7260, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D81C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C6508, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D8270(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7318, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D8320(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C73D0, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D83D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7488, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1D8480(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20C66F8, &unk_2A20C7540, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void *sub_29B1D8530(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_2A1786A50, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D0728();
  }

  return qword_2A1786A58;
}

void sub_29B1D8568(uint64_t a1, std::string *a2)
{
  v4 = *(a1 + 232);
  if (!v4)
  {
    v13 = 0;
    v5 = 0;
LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    v13 = 0;
    goto LABEL_21;
  }

  v6 = *(a1 + 224);
  if (v6)
  {
    if (sub_29A8877BC((v6 + 96), a2))
    {
      v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v7 >= 0)
      {
        size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = a2->__r_.__value_.__l.__size_;
      }

      v9 = *(a1 + 71);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a1 + 56);
      }

      if (size != v9 || (v7 >= 0 ? (v11 = a2) : (v11 = a2->__r_.__value_.__r.__words[0]), v10 >= 0 ? (v12 = (a1 + 48)) : (v12 = *(a1 + 48)), memcmp(v11, v12, size)))
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        sub_29AAD6B14(exception, v18);
        __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
      }
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_22:
  sub_29B1D87A8(v18, a1);
  sub_29B1D2DE8(*&v18[0]);
  if (*(&v18[0] + 1))
  {
    sub_29A014BEC(*(&v18[0] + 1));
  }

  if (v13)
  {
    sub_29B1E5270((v6 + 96), (a1 + 48));
    sub_29A014C58(v18, (a1 + 8));
    v20 = a2;
    v14 = sub_29B1E5304(v6 + 96, a2, &unk_29B766523, &v20, &v19);
    v15 = v18[0];
    v18[0] = 0uLL;
    v16 = v14[6];
    *(v14 + 5) = v15;
    if (v16)
    {
      sub_29A014BEC(v16);
      if (*(&v18[0] + 1))
      {
        sub_29A014BEC(*(&v18[0] + 1));
      }
    }
  }

  std::string::operator=((a1 + 48), a2);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29B1D873C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_29A014BEC(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_29B1D87A8(void *a1@<X8>, uint64_t a2@<X0>)
{
  sub_29B1D9D04(a2, &v4);
  sub_29B1D78D0(v4, a1);
  v3 = v5;
  if (v5)
  {

    sub_29A014BEC(v3);
  }
}

void sub_29B1D880C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D8824(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a2)
  {
    sub_29B1D8ACC(a1, &__str);
    v22 = *&__str.__r_.__value_.__l.__data_;
    *&__str.__r_.__value_.__l.__data_ = 0uLL;
    v23 = *(a2 + 8);
    *a2 = v22;
    if (v23)
    {
      sub_29A014BEC(v23);
      if (__str.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__str.__r_.__value_.__l.__size_);
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_29A014C58(&v26, (a1 + 8));
  v6 = v26;
  while (v6)
  {
    if (v6 == *a2)
    {
      break;
    }

    if (*(a3 + 23) >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = *(a3 + 8);
    }

    if (v7)
    {
      v8 = off_2A14FDF40[0];
      if (*(v6 + 71) >= 0)
      {
        v9 = *(v6 + 71);
      }

      else
      {
        v9 = *(v6 + 56);
      }

      v10 = strlen(off_2A14FDF40[0]);
      sub_29A022DE0(&v24, v9 + v10);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v24;
      }

      else
      {
        v11 = v24.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (*(v6 + 71) >= 0)
        {
          v12 = (v6 + 48);
        }

        else
        {
          v12 = *(v6 + 48);
        }

        memmove(v11, v12, v9);
      }

      v13 = v11 + v9;
      if (v10)
      {
        memmove(v13, v8, v10);
      }

      v13[v10] = 0;
      v14 = *(a3 + 23);
      if (v14 >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      if (v14 >= 0)
      {
        v16 = *(a3 + 23);
      }

      else
      {
        v16 = *(a3 + 8);
      }

      v17 = std::string::append(&v24, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&__str.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
    }

    else if (*(v6 + 71) < 0)
    {
      sub_29A008D14(&__str, *(v6 + 48), *(v6 + 56));
    }

    else
    {
      __str = *(v6 + 48);
    }

    std::string::operator=(a3, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v7)
      {
LABEL_35:
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (v7)
    {
      goto LABEL_35;
    }

    v19 = v26;
    v20 = *(v26 + 232);
    if (v20 && (v20 = std::__shared_weak_count::lock(v20)) != 0)
    {
      v6 = *(v19 + 224);
    }

    else
    {
      v6 = 0;
    }

    v21 = v27;
    v26 = v6;
    v27 = v20;
    if (v21)
    {
      sub_29A014BEC(v21);
      v6 = v26;
    }
  }

  if (v27)
  {
    sub_29A014BEC(v27);
  }
}

void sub_29B1D8A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D8ACC(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29B1DA1A4(a1, &v4);
  sub_29B1D78D0(v4, a2);
  v3 = v5;
  if (v5)
  {

    sub_29A014BEC(v3);
  }
}

void sub_29B1D8B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D8B48(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  sub_29A008E78(&__p, off_2A14FDF40[0]);
  sub_29B1F3590(&v16, a2, &__p);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  sub_29B1D8C98(a1, &__p);
  v6 = v16;
  v7 = v17;
  v8 = __p;
  if (v16 == v17)
  {
LABEL_12:
    v12 = v14;
    *a3 = v8;
    a3[1] = v12;
  }

  else
  {
    while (1)
    {
      v9 = sub_29A8877BC(v8 + 12, v6);
      if (v9)
      {
        v8 = v9[5];
        v10 = v9[6];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v11 = v14;
      __p = v8;
      v14 = v10;
      if (v11)
      {
        sub_29A014BEC(v11);
        v8 = __p;
      }

      if (!v8)
      {
        break;
      }

      v6 += 3;
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }

    *a3 = 0;
    a3[1] = 0;
    if (v14)
    {
      sub_29A014BEC(v14);
    }
  }

  __p = &v16;
  sub_29A012C90(&__p);
}

void sub_29B1D8C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void sub_29B1D8C98(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&v4, (a1 + 8));
  v3 = v5;
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }
}

void **sub_29B1D8CF4(uint64_t a1, atomic_ullong **a2)
{
  sub_29B1D87A8(&v9, a1);
  sub_29B1D2DE8(v9);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  v9 = (*a2 + 6);
  v4 = sub_29B1E5304(a1 + 96, v9, &unk_29B766523, &v9, &v11);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return sub_29A017F80((a1 + 136), a2);
}

void sub_29B1D8D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D8DAC(void *a1, void *a2)
{
  sub_29B1D87A8(&v10, a1);
  sub_29B1D2DE8(v10);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  sub_29B1E5270(a1 + 12, (*a2 + 48));
  v5 = a1[17];
  v4 = a1[18];
  if (v5 != v4)
  {
    while (*v5 != *a2)
    {
      v5 += 16;
      if (v5 == v4)
      {
        v5 = a1[18];
        break;
      }
    }
  }

  sub_29A03D458(&v10, (v5 + 16), v4, v5);
  v7 = v6;
  v8 = a1[18];
  if (v8 != v6)
  {
    do
    {
      v9 = *(v8 - 8);
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      v8 -= 16;
    }

    while (v8 != v7);
  }

  a1[18] = v7;
}

void sub_29B1D8E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1D8E88(void *a1, uint64_t *a2)
{
  v3 = sub_29A8877BC(a1 + 12, a2);
  if (v3)
  {
    shared_weak_owners = v3[1].__shared_weak_owners_;
    v3 = v3[2].__vftable;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    shared_weak_owners = 0;
  }

  v6 = a1[17];
  v5 = a1[18];
  v7 = v6;
  if (v6 != v5)
  {
    while (*v7 != shared_weak_owners)
    {
      v7 += 16;
      if (v7 == v5)
      {
        v7 = a1[18];
        break;
      }
    }
  }

  v8 = (v7 - v6) >> 4;
  if (v5 == v7)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return v9;
}

void sub_29B1D8F1C(char **a1, uint64_t *a2, int a3)
{
  v5 = sub_29A8877BC(a1 + 12, a2);
  if (v5)
  {
    v6 = v5[5];
    v7 = v5[6];
    v18 = v6;
    v19 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v18 = 0;
    v19 = 0;
  }

  v9 = a1[17];
  v8 = a1[18];
  v10 = v9;
  if (v9 != v8)
  {
    v11 = a1[17];
    while (*v11 != v6)
    {
      ++v11;
      v10 += 16;
      if (v11 == v8)
      {
        v10 = a1[18];
        break;
      }
    }
  }

  if (v8 != v10)
  {
    if (a3 < 0 || ((v8 - v9) >> 4) <= a3)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A008E78(&v17, "Invalid child index");
      sub_29AAD6B14(exception, &v17);
      __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
    }

    sub_29A03D458(&v17, (v10 + 16), v8, v10);
    v13 = v12;
    for (i = a1[18]; i != v13; i -= 16)
    {
      v15 = *(i - 1);
      if (v15)
      {
        sub_29A014BEC(v15);
      }
    }

    a1[18] = v13;
    sub_29B1D90E4(a1 + 17, &a1[17][16 * a3], &v18);
    v7 = v19;
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29B1D908C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1D90E4(char **a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = ((v6 - *a1) >> 4) + 1;
    if (v15 >> 60)
    {
      sub_29A00C9A4();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    v18 = v17 >> 3;
    if (v17 >> 3 <= v15)
    {
      v18 = ((v6 - *a1) >> 4) + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v20 = v16 >> 4;
    v34 = a1;
    if (v19)
    {
      v21 = sub_29A017BD4(a1, v19);
    }

    else
    {
      v21 = 0;
    }

    v31 = v21;
    v32 = &v21[16 * v20];
    *&v33 = v32;
    *(&v33 + 1) = &v21[16 * v19];
    sub_29B1E5614(&v31, a3);
    v23 = v32;
    memcpy(v33, v4, &a1[1][-v4]);
    v24 = *a1;
    v25 = v32;
    *&v33 = &a1[1][v33 - v4];
    a1[1] = v4;
    v26 = v4 - v24;
    v27 = &v25[-(v4 - v24)];
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    v29 = a1[2];
    *(a1 + 1) = v33;
    *&v33 = v28;
    *(&v33 + 1) = v29;
    v31 = v28;
    v32 = v28;
    sub_29A017C0C(&v31);
    return v23;
  }

  else if (a2 == v6)
  {
    v22 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 16;
  }

  else
  {
    sub_29A1D5390(a1, a2, v6, (a2 + 16));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 16;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = *(v10 + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(v4 + 8);
    *v4 = v12;
    *(v4 + 8) = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }

  return v4;
}

void sub_29B1D9284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

void sub_29B1D9298(void *a1, uint64_t *a2)
{
  v3 = sub_29A5DAB7C(a1 + 12, a2);
  if (v3)
  {
    v4 = v3[6];
    v5 = v3[5];
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 56))(a1, &v5);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29B1D931C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29B1D9334(uint64_t a1, uint64_t *a2, const std::string *a3)
{
  sub_29B1D87A8(&v8, a1);
  sub_29B1D2DE8(v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  if (!sub_29A8877BC((a1 + 160), a2))
  {
    sub_29A070BA0(a1 + 200);
  }

  v8 = a2;
  v6 = sub_29B1E4F5C(a1 + 160, a2, &unk_29B766523, &v8, &v10);
  return std::string::operator=((v6 + 5), a3);
}

void sub_29B1D93D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D93E8(void *a1, uint64_t *a2)
{
  v4 = sub_29A5DAB7C(a1 + 20, a2);
  if (v4)
  {
    v5 = v4;
    sub_29B1D87A8(&v11, a1);
    sub_29B1D2DE8(v11);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    sub_29B1E5744(a1 + 20, v5);
    v6 = sub_29A22B430(a1[25], a1[26], a2);
    sub_29A2C97CC(&v11, (v6 + 24), a1[26], v6);
    v8 = v7;
    v9 = a1[26];
    if (v9 != v7)
    {
      do
      {
        v10 = *(v9 - 1);
        v9 -= 3;
        if (v10 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
    }

    a1[26] = v8;
  }
}

void sub_29B1D94AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D94C4(void *a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, std::string **a4@<X8>)
{
  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a3 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(a3 + 23))
  {
    goto LABEL_19;
  }

  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v9 = __p;
  sub_29A022DE0(__p, size + 1);
  if (v31 < 0)
  {
    v9 = __p[0];
  }

  if (size)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2->__r_.__value_.__r.__words[0];
    }

    memmove(v9, v10, size);
  }

  *(v9 + size) = 49;
  sub_29AD961E8(a1, __p, &v32);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v32;
  *(a3 + 16) = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_19:
  if (sub_29A8877BC(a1 + 12, a3))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_29AAD6B14(exception, &v32);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  *a4 = 0;
  a4[1] = 0;
  sub_29B1D8530(0, v11);
  v12 = sub_29A5DAB7C(qword_2A1786A58, a2);
  v14 = sub_29B1D8530(v12, v13);
  if (!v12)
  {
    goto LABEL_24;
  }

  shared_weak_owners = v12[1].__shared_weak_owners_;
  sub_29A014C58(&v28, a1 + 1);
  shared_weak_owners(&v32, &v28, a3);
  v12 = *(&v32 + 1);
  v17 = v32;
  v32 = 0uLL;
  *a4 = __PAIR128__(v12, v17);
  v14 = v29;
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if (!v17)
  {
LABEL_24:
    v18 = sub_29B1F31FC(v14, v15);
    if (!sub_29B1D985C(a1, v18))
    {
      goto LABEL_30;
    }

    sub_29A014C58(&v26, a1 + 1);
    sub_29B1E57A0(&v26, a3, &v32);
    v19 = *(&v32 + 1);
    v17 = v32;
    *a4 = v32;
    a4[1] = v19;
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if (v27)
    {
      sub_29A014BEC(v27);
    }

    std::string::operator=(v17 + 1, a2);
    v12 = v19;
    if (!v17)
    {
LABEL_30:
      sub_29A014C58(&v24, a1 + 1);
      sub_29B1E5900(&v24, a3, &v32);
      v21 = v32;
      *a4 = v32;
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      if (v25)
      {
        sub_29A014BEC(v25);
      }

      std::string::operator=(v21 + 1, a2);
      v17 = *a4;
      v12 = a4[1];
    }
  }

  v22 = v17;
  v23 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 48))(a1, &v22);
  if (v23)
  {
    sub_29A014BEC(v23);
  }
}

void sub_29B1D97A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  v27 = *(v25 + 8);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1D985C(uint64_t a1, const void **a2)
{
  sub_29B1D7400(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

double sub_29B1D9908@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E57A0(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

double sub_29B1D994C@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1E5900(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1D9990(char **a1@<X0>, void *a2@<X1>, std::string *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_29B1D8E88(a1, (*a2 + 48));
  if (v8 == -1)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  else
  {
    v9 = v8;
    sub_29B1D9298(a1, (*a2 + 48));
    v10 = *a2;
    if (*(*a2 + 71) < 0)
    {
      sub_29A008D14(__p, *(v10 + 48), *(v10 + 56));
    }

    else
    {
      *__p = *(v10 + 48);
      v15 = *(v10 + 64);
    }

    sub_29B1D94C4(a1, a3, __p, a4);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B1D8F1C(a1, (*a2 + 48), v9);
    v11 = *a4;
    v12 = a2[1];
    v13[0] = *a2;
    v13[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D9ADC(v11, v13);
    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }
}

void sub_29B1D9A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  v19 = *(v16 + 8);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D9ADC(uint64_t a1, const std::string **a2)
{
  sub_29B1D87A8(&v16, a1);
  sub_29B1D2DE8(v16);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  std::string::operator=((a1 + 72), *a2 + 3);
  v4 = *a2;
  if (*a2 != a1)
  {
    *(a1 + 192) = v4[8].__r_.__value_.__l.__data_;
    sub_29B1E5BEC((a1 + 160), v4[7].__r_.__value_.__l.__size_, 0);
    v4 = *a2;
  }

  if (v4 != a1)
  {
    sub_29A095E3C(a1 + 200, v4[8].__r_.__value_.__l.__size_, v4[8].__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((v4[8].__r_.__value_.__r.__words[2] - v4[8].__r_.__value_.__l.__size_) >> 3));
    v4 = *a2;
  }

  v5 = v4[5].__r_.__value_.__r.__words[2];
  data = v4[6].__r_.__value_.__l.__data_;
  while (v5 != data)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_29A8877BC((a1 + 96), (v8 + 48));
    if (v9)
    {
      v10 = v9[5];
      v11 = v9[6];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v11 = 0;
    }

    if (*(v8 + 71) < 0)
    {
      sub_29A008D14(__p, *(v8 + 48), *(v8 + 56));
    }

    else
    {
      *__p = *(v8 + 48);
      v15 = *(v8 + 64);
    }

    sub_29B1D94C4(a1, (v8 + 24), __p, &v16);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = v16;
    v13[0] = v8;
    v13[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D9ADC(v12, v13);
    if (v7)
    {
      sub_29A014BEC(v7);
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }

LABEL_27:
    if (v11)
    {
      sub_29A014BEC(v11);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }

    v5 += 2;
  }
}

void sub_29B1D9C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_29B1D9D04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = *(a1 + 248);
  if (!v3 || (result = std::__shared_weak_count::lock(v3), (a2[1] = result) == 0) || (v6 = *(a1 + 240), (*a2 = v6) == 0))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29B1D9E70(a1, &v10);
    v8 = std::string::insert(&v10, 0, "Requested root of orphaned element: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v11);
    *exception = &unk_2A20C67D8;
    __cxa_throw(exception, &unk_2A20C6680, sub_29B1DA1A0);
  }

  return result;
}

void sub_29B1D9E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
      if (a9)
      {
        sub_29A014BEC(a9);
      }

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

std::string *sub_29B1D9E70@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = std::operator+<char>();
  v6 = sub_29B1F31FC(v4, v5);
  v7 = *(a1 + 71);
  if (v7 >= 0)
  {
    v8 = *(a1 + 71);
  }

  else
  {
    v8 = *(a1 + 56);
  }

  v9 = v6[23];
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v6 + 1);
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = (a1 + 48)) : (v11 = *(a1 + 48)), v10 >= 0 ? (v12 = v6) : (v12 = *v6), memcmp(v11, v12, v8)))
  {
    std::operator+<char>();
    v13 = std::string::append(&v36, "");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v38 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v38 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v38 >= 0)
    {
      v16 = HIBYTE(v38);
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(a2, v15, v16);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  v17 = *(a1 + 200);
  for (i = *(a1 + 208); v17 != i; v17 += 3)
  {
    std::operator+<char>();
    v19 = std::string::append(&v34, "=");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = sub_29A8877BC((a1 + 160), v17);
    if (v21)
    {
      v23 = (v21 + 5);
    }

    else
    {
      v23 = sub_29B1F31FC(0, v22);
    }

    v24 = v23[23];
    if (v24 >= 0)
    {
      v25 = v23;
    }

    else
    {
      v25 = *v23;
    }

    if (v24 >= 0)
    {
      v26 = v23[23];
    }

    else
    {
      v26 = *(v23 + 1);
    }

    v27 = std::string::append(&v35, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v36, "");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v38 = v29->__r_.__value_.__r.__words[2];
    *__p = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (v38 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    if (v38 >= 0)
    {
      v32 = HIBYTE(v38);
    }

    else
    {
      v32 = __p[1];
    }

    std::string::append(a2, v31, v32);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, ">");
}

void sub_29B1DA0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v35 + 23) < 0)
  {
    operator delete(*v35);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_29B1DA1A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 248);
  if (!v3 || (result = std::__shared_weak_count::lock(v3)) == 0 || (v6 = *(a1 + 240)) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29B1D9E70(a1, &v10);
    v8 = std::string::insert(&v10, 0, "Requested root of orphaned element: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v11);
    *exception = &unk_2A20C67D8;
    __cxa_throw(exception, &unk_2A20C6680, sub_29B1DA1A0);
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_29B1DA298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
      if (a9)
      {
        sub_29A014BEC(a9);
      }

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

void sub_29B1DA308(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_29A014C58(&v3, (a1 + 8));
  sub_29B1DDAF4(a2, &v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29B1DA358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DA370(uint64_t a1)
{
  sub_29B1DA308(a1, &v10);
  v13 = 0;
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v9, &v12);
  v9[3] = v13;
  v1 = sub_29B1F233C();
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B1DD878(v6, (v1 + 2));
  v6[3] = v1[5];
  while (v7 != v5[0])
  {
    v3 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v3);
    }

    sub_29B1F235C(&v7);
  }

  sub_29B1DD9F0(v5);
  sub_29B1DD9F0(&v7);
  sub_29B1DD9F0(&v10);
  return 0;
}

void sub_29B1DA45C(_Unwind_Exception *a1, int a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29B1DD9F0(va);
  sub_29B1DD9F0(v14 - 64);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x29B1DA44CLL);
  }

  _Unwind_Resume(a1);
}

void sub_29B1DA4E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29B1D8C98(a1, &v5);
  v3 = v6;
  *a2 = v5;
  *(a2 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v6;
    *(a2 + 48) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }
}

void sub_29B1DA55C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29B1D8C98(a1, &v3);
  sub_29B1DDA2C(a2, &v3);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29B1DA5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B1DA5BC@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29B1F1808(a2, a3);
  v5 = *(result + 1);
  *a1 = *result;
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 3);
  a1[2] = *(result + 2);
  a1[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(result + 5);
  a1[4] = *(result + 4);
  a1[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29B1DA628(uint64_t a1)
{
  sub_29B1D87A8(&v2, a1);
  sub_29B1D2DE8(v2);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  sub_29AA9E238(a1 + 160);
  sub_29A012CE4((a1 + 200));
  sub_29B1E5DC8(a1 + 96);
  sub_29A017738((a1 + 136));
}

void sub_29B1DA6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DA6C4(uint64_t a1, std::string *a2)
{
  v25 = 1;
  v4 = sub_29B1F331C((a1 + 48));
  sub_29A008E78(&__p, "Invalid element name");
  sub_29B1DA93C(a1, v4, &v25, a2, &__p);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (sub_29AABE8C0(a1))
  {
    sub_29AAE1404(a1, &__p);
    if (__p)
    {
      sub_29AAE1404(a1, &v20);
      v5 = *(v20 + 47);
      if (v5 >= 0)
      {
        v6 = *(v20 + 47);
      }

      else
      {
        v6 = *(v20 + 32);
      }

      v7 = *(a1 + 47);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a1 + 32);
      }

      if (v6 == v7)
      {
        if (v5 >= 0)
        {
          v9 = (v20 + 24);
        }

        else
        {
          v9 = *(v20 + 24);
        }

        if (v8 >= 0)
        {
          v10 = (a1 + 24);
        }

        else
        {
          v10 = *(a1 + 24);
        }

        v11 = memcmp(v9, v10, v6) == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v21)
      {
        sub_29A014BEC(v21);
      }
    }

    else
    {
      v11 = 0;
    }

    if (v23)
    {
      sub_29A014BEC(v23);
    }

    sub_29A008E78(&__p, "Invalid element inheritance");
    sub_29B1DA93C(a1, v11, &v25, a2, &__p);
    if (v24 < 0)
    {
      operator delete(__p);
    }
  }

  v12 = *(a1 + 136);
  v13 = *(a1 + 144);
  for (i = v25; v12 != v13; v12 += 2)
  {
    v15 = *v12;
    v16 = v12[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = (*(*v15 + 32))(v15, a2);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    i &= v17;
  }

  v25 = i;
  v18 = sub_29B1DA370(a1);
  sub_29A008E78(&__p, "Cycle in element inheritance chain");
  sub_29B1DA93C(a1, v18 ^ 1, &v25, a2, &__p);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  return v25;
}

void sub_29B1DA8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1DA93C(uint64_t a1, char a2, _BYTE *a3, std::string *a4, const void **a5)
{
  if ((a2 & 1) == 0)
  {
    *a3 = 0;
    if (a4)
    {
      if (*(a5 + 23) >= 0)
      {
        v8 = *(a5 + 23);
      }

      else
      {
        v8 = a5[1];
      }

      v9 = &v20;
      sub_29A022DE0(&v20, v8 + 2);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v20.__r_.__value_.__r.__words[0];
      }

      if (v8)
      {
        if (*(a5 + 23) >= 0)
        {
          v10 = a5;
        }

        else
        {
          v10 = *a5;
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, ": ");
      sub_29B1D9E70(a1, &v19);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v19;
      }

      else
      {
        v11 = v19.__r_.__value_.__r.__words[0];
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      v13 = std::string::append(&v20, v11, size);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v21, "\n");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v23 = v15->__r_.__value_.__r.__words[2];
      *__p = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (v23 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      if (v23 >= 0)
      {
        v18 = HIBYTE(v23);
      }

      else
      {
        v18 = __p[1];
      }

      std::string::append(a4, v17, v18);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_29B1DAAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1DAB28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29B1DAEDC(a3);
  v6 = *a3;
  v7 = sub_29B1DAF60(a1);
  std::string::operator=((v6 + 8), v7);
  v8 = *a3;
  v9 = sub_29AAE0548(a1);
  std::string::operator=((v8 + 32), v9);
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10)
  {
    sub_29B1D8ACC(a1, &__p);
    v11 = __p.__r_.__value_.__r.__words[0];
    v14 = sub_29B1F31FC(v12, v13);
    sub_29B1D3EEC(v11, v14, &v43);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__p.__r_.__value_.__l.__size_);
    }

    v16 = v43;
    v15 = v44;
    v17 = a2;
    if (v43 != v44)
    {
      v33 = v44;
      while (1)
      {
        v19 = *v16;
        v18 = v16[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = v18;
        sub_29B1C83D4(v19, &__p);
        v20 = sub_29B1E62F8(v17, &__p, 0);
        v22 = v20;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        if (v20)
        {
          goto LABEL_14;
        }

LABEL_31:
        if (v34)
        {
          sub_29A014BEC(v34);
        }

        v16 += 2;
        if (v16 == v15)
        {
          goto LABEL_34;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v22 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_14:
      v23 = sub_29B1F31FC(v20, v21);
      sub_29B1DDC88(v19, v23, &__p);
      size = __p.__r_.__value_.__l.__size_;
      for (i = __p.__r_.__value_.__r.__words[0]; ; i += 2)
      {
        if (i == size)
        {
          v40[0] = &__p;
          sub_29A0176E4(v40);
          v15 = v33;
          v17 = a2;
          goto LABEL_31;
        }

        v27 = *i;
        v26 = i[1];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::operator+<char>();
        v28 = std::string::append(&__str, ">");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v41 = v28->__r_.__value_.__r.__words[2];
        *v40 = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v37 = 0;
        v38 = 0;
        sub_29B1DB034(v27, &v37, &__str);
        if (v38)
        {
          sub_29A014BEC(v38);
        }

        v30 = *a3;
        v46 = v40;
        v31 = sub_29B1E4F5C(v30 + 56, v40, &unk_29B766523, &v46, &v45);
        std::string::operator=((v31 + 5), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v41) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v40[0]);
        if (v26)
        {
          goto LABEL_26;
        }

LABEL_27:
        ;
      }

      if (!v26)
      {
        goto LABEL_27;
      }

LABEL_26:
      sub_29A014BEC(v26);
      goto LABEL_27;
    }

LABEL_34:
    __p.__r_.__value_.__r.__words[0] = &v43;
    sub_29A0176E4(&__p);
  }

  v32 = *a3;
  sub_29A014C58(&v35, (a1 + 8));
  sub_29B1DB194(v32, &v35);
  if (v36)
  {
    sub_29A014BEC(v36);
  }
}

void sub_29B1DADE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  v37 = *(v35 + 8);
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1DAEDC@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x88uLL);
  *v2 = &unk_2A20C67A0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 22) = 1065353216;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 32) = 1065353216;

  return sub_29B1DDB7C(a1, v2);
}

char *sub_29B1DAF60(uint64_t a1)
{
  sub_29A014C58(&v10, (a1 + 8));
  shared_weak_owners = v10;
  if (v10)
  {
    while (1)
    {
      v4 = sub_29B1C7514(shared_weak_owners);
      v1 = v10;
      if (v4)
      {
        break;
      }

      shared_weak_owners = v10[9].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
        v5 = shared_weak_owners;
        if (shared_weak_owners)
        {
          shared_weak_owners = *(v1 + 28);
        }
      }

      else
      {
        v5 = 0;
      }

      v6 = v11;
      v10 = shared_weak_owners;
      v11 = v5;
      if (v6)
      {
        sub_29A014BEC(v6);
        shared_weak_owners = v10;
      }

      if (!shared_weak_owners)
      {
        goto LABEL_10;
      }
    }

    v1 = sub_29B1C7610(v10);
    v7 = 0;
  }

  else
  {
LABEL_10:
    v7 = 1;
  }

  v8 = v11;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v7)
  {
    return sub_29B1F31FC(v8, v2);
  }

  return v1;
}

void sub_29B1DB018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29B1DB034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a1 + 64))(a1);
  v7 = sub_29B1DB4BC(v6);
  if (v7)
  {
    v9 = *a2;
    if (!*a2)
    {
      v10 = sub_29B1F31FC(v7, v8);
      sub_29B1DAB28(a1, v10, &v19);
      v11 = v19;
      v19 = 0uLL;
      v12 = a2[1];
      *a2 = v11;
      if (v12)
      {
        sub_29A014BEC(v12);
        if (*(&v19 + 1))
        {
          sub_29A014BEC(*(&v19 + 1));
        }
      }

      v9 = *a2;
    }

    v13 = sub_29AAC0680(a1);
    v14 = (*(*a1 + 64))(a1);
    return (*(*v9 + 16))(v9, v13, v14);
  }

  else
  {
    result = sub_29AAC0680(a1);
    if (*(result + 23) < 0)
    {
      v17 = *result;
      v18 = result[1];

      return sub_29A008D14(a3, v17, v18);
    }

    else
    {
      v16 = *result;
      *(a3 + 16) = result[2];
      *a3 = v16;
    }
  }

  return result;
}

void sub_29B1DB194(uint64_t a1, uint64_t *a2)
{
  sub_29A008E78(v30, "[");
  sub_29A008E78(v28, "]");
  v4 = *a2;
  v5 = *(*a2 + 232);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v4 + 224);
      if (!v8)
      {
        v19 = v6;
        goto LABEL_45;
      }

LABEL_4:
      sub_29B1D74B0(v8, &v26);
      if (!v26)
      {
        goto LABEL_30;
      }

      sub_29B1EAD88(v26, v25);
      v9 = v25[0];
      v10 = v25[1];
      while (1)
      {
        if (v9 == v10)
        {
          __p[0] = v25;
          sub_29A0176E4(__p);
LABEL_30:
          v18 = *(v8 + 232);
          if (!v18)
          {
            v8 = 0;
            v19 = 0;
            if (!v7)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

          v19 = std::__shared_weak_count::lock(v18);
          if (v19)
          {
            v8 = *(v8 + 224);
            if (!v7)
            {
              goto LABEL_36;
            }

LABEL_35:
            sub_29A014BEC(v7);
            goto LABEL_36;
          }

          v8 = 0;
          if (v7)
          {
            goto LABEL_35;
          }

LABEL_36:
          if (v27)
          {
            sub_29A014BEC(v27);
          }

          v7 = v19;
          if (!v8)
          {
            if (!v19)
            {
              goto LABEL_46;
            }

LABEL_45:
            sub_29A014BEC(v19);
            goto LABEL_46;
          }

          goto LABEL_4;
        }

        v12 = *v9;
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v30, (v12 + 48), &__str);
        if ((v29 & 0x80u) == 0)
        {
          v13 = v28;
        }

        else
        {
          v13 = v28[0];
        }

        if ((v29 & 0x80u) == 0)
        {
          v14 = v29;
        }

        else
        {
          v14 = v28[1];
        }

        v15 = std::string::append(&__str, v13, v14);
        v16 = *&v15->__r_.__value_.__l.__data_;
        v24 = v15->__r_.__value_.__r.__words[2];
        *__p = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v20 = 0;
        v21 = 0;
        sub_29B1DB034(v12, &v20, &__str);
        if (v21)
        {
          sub_29A014BEC(v21);
        }

        if (!sub_29A8877BC((a1 + 56), __p))
        {
          v33 = __p;
          v17 = sub_29B1E4F5C(a1 + 56, __p, &unk_29B766523, &v33, &v32);
          std::string::operator=((v17 + 5), &__str);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p[0]);
        if (v11)
        {
          goto LABEL_25;
        }

LABEL_26:
        v9 += 2;
      }

      if (!v11)
      {
        goto LABEL_26;
      }

LABEL_25:
      sub_29A014BEC(v11);
      goto LABEL_26;
    }
  }

LABEL_46:
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }
}

void sub_29B1DB3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 105) < 0)
  {
    operator delete(*(v35 - 128));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1DB4BC(const void **a1)
{
  v2 = strlen(off_2A14FDEC0[0]);
  v3 = v2;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (v2 != a1[1])
    {
      goto LABEL_8;
    }

    if (v2 == -1)
    {
      sub_29A0F26CC();
    }

    v5 = *a1;
  }

  else
  {
    v5 = a1;
    if (v3 != v4)
    {
LABEL_8:
      v6 = strlen(off_2A14FDEC8[0]);
      if ((v4 & 0x80000000) != 0)
      {
        if (v6 != a1[1])
        {
          return 0;
        }

        if (v6 == -1)
        {
          sub_29A0F26CC();
        }

        a1 = *a1;
      }

      else if (v6 != v4)
      {
        return 0;
      }

      return memcmp(a1, off_2A14FDEC8[0], v6) == 0;
    }
  }

  if (memcmp(v5, off_2A14FDEC0[0], v3))
  {
    goto LABEL_8;
  }

  return 1;
}

char *sub_29B1DB5B4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 232);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3)) == 0)
  {
    v4 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  v3 = *(v2 + 28);
  if (!v3)
  {
LABEL_9:
    v14 = 0;
    v15 = 0;
LABEL_10:
    v2 = sub_29B1F31FC(v3, a2);
    goto LABEL_11;
  }

  sub_29B1D74B0(v3, &v14);
  v5 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  v6 = sub_29B1F31FC(v3, a2);
  (*(*v5 + 80))(&v12, v5, v6);
  if (!v12)
  {
    goto LABEL_21;
  }

  sub_29B1EAF90(v12, &v10, v2 + 6);
  v7 = v10;
  if (v10)
  {
    v2 = sub_29B1DB728(v10);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
LABEL_21:
    v9 = 1;
  }

  v3 = v13;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return v2;
}

void sub_29B1DB6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1DB728(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDCD0[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1DB794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DB7B0(uint64_t a1, std::string *a2)
{
  v55 = 1;
  if (sub_29B1C6234(a1) && sub_29AE151F0(a1))
  {
    sub_29B1C8518(a1, &v54);
    v4 = v54;
    sub_29A008E78(&__p, "Invalid value");
    sub_29B1DA93C(a1, v4 != 0, &v55, a2, &__p);
    if (v53 < 0)
    {
      operator delete(__p);
    }

    if (*(&v54 + 1))
    {
      sub_29A014BEC(*(&v54 + 1));
    }
  }

  v5 = sub_29AE150E4(a1);
  if (v5)
  {
    v7 = sub_29B1F31FC(v5, v6);
    v8 = sub_29AAC1EC0(a1, v7);
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v11 = sub_29B1F31FC(v8, v9);
      v10 = sub_29B1DBE50(a1, v11);
    }

    sub_29A008E78(&__p, "Only input and token elements support interface names");
    sub_29B1DA93C(a1, v10, &v55, a2, &__p);
    if (v53 < 0)
    {
      operator delete(__p);
    }

    sub_29B1DBEFC(a1, &v54);
    v14 = v54;
    if (v54)
    {
      v15 = sub_29B1F31FC(v12, v13);
      (*(*v14 + 80))(&v49, v14, v15);
      v16 = v49;
      if (v49)
      {
        v17 = sub_29AE15164(a1);
        sub_29B1EAF90(v16, &v47, v17);
        v18 = v47;
        sub_29A008E78(&__p, "Interface name not found in referenced declaration");
        sub_29B1DA93C(a1, v18 != 0, &v55, a2, &__p);
        if (v53 < 0)
        {
          operator delete(__p);
        }

        if (v47)
        {
          sub_29B1D7560(a1, &v45);
          if (v45 && sub_29B1D2240(v45))
          {
            v19 = sub_29B1D22C0(v45);
            v20 = (*(*v47 + 64))(v47);
            v21 = (*(*a1 + 64))(a1);
            LOBYTE(v19) = sub_29B1E96B4(v19, v20, v21);
            sub_29A008E78(&__p, "Invalid channels string for interface name");
            sub_29B1DA93C(a1, v19, &v55, a2, &__p);
          }

          else
          {
            v22 = (*(*a1 + 64))(a1);
            v23 = (*(*v47 + 64))(v47);
            v24 = *(v22 + 23);
            if (v24 >= 0)
            {
              v25 = *(v22 + 23);
            }

            else
            {
              v25 = *(v22 + 8);
            }

            v26 = *(v23 + 23);
            v27 = v26;
            if ((v26 & 0x80u) != 0)
            {
              v26 = *(v23 + 8);
            }

            if (v25 == v26)
            {
              if (v24 >= 0)
              {
                v28 = v22;
              }

              else
              {
                v28 = *v22;
              }

              if (v27 >= 0)
              {
                v29 = v23;
              }

              else
              {
                v29 = *v23;
              }

              v30 = memcmp(v28, v29, v25) == 0;
            }

            else
            {
              v30 = 0;
            }

            sub_29A008E78(&__p, "Interface name refers to value element of a different type");
            sub_29B1DA93C(a1, v30, &v55, a2, &__p);
          }

          if (v53 < 0)
          {
            operator delete(__p);
          }

          if (v46)
          {
            sub_29A014BEC(v46);
          }
        }

        if (v48)
        {
          sub_29A014BEC(v48);
        }
      }
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    if (v50)
    {
      sub_29A014BEC(v50);
    }

    if (*(&v54 + 1))
    {
      sub_29A014BEC(*(&v54 + 1));
    }
  }

  if (!sub_29B1DBFDC(a1))
  {
    goto LABEL_55;
  }

  v31 = sub_29B1DC058(a1);
  v32 = v31[23];
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(v31 + 1);
  }

  if (v32)
  {
    v33 = v31;
    sub_29B1D8ACC(a1, &v54);
    sub_29B1DDDC4(v54, v33, &__p);
    v35 = __p;
    v34 = v52;
    __p = 0;
    v52 = 0;
    if (*(&v54 + 1))
    {
      sub_29A014BEC(*(&v54 + 1));
    }

    sub_29A008E78(&__p, "Unit type definition does not exist in document");
    sub_29B1DA93C(a1, v35 != 0, &v55, a2, &__p);
    if (v53 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
LABEL_55:
    v34 = 0;
    v35 = 0;
  }

  if (sub_29B1DC0E0(a1))
  {
    if (v35)
    {
      v36 = sub_29B1DB728(a1);
      sub_29B1C66C0(v35, &__p);
      v37 = __p;
      v38 = v52;
      if (__p == v52)
      {
        LOBYTE(v35) = 0;
      }

      else
      {
        do
        {
          v39 = *v37;
          v40 = v37[1];
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29B1DDE60(v39, v36, &v54);
          v41 = v54;
          LOBYTE(v35) = v54 != 0;
          if (*(&v54 + 1))
          {
            sub_29A014BEC(*(&v54 + 1));
          }

          if (v40)
          {
            sub_29A014BEC(v40);
          }

          if (v41)
          {
            break;
          }

          v37 += 2;
        }

        while (v37 != v38);
      }

      *&v54 = &__p;
      sub_29A0176E4(&v54);
    }

    sub_29A008E78(&__p, "Unit definition does not exist in document");
    sub_29B1DA93C(a1, v35, &v55, a2, &__p);
    if (v53 < 0)
    {
      operator delete(__p);
    }
  }

  v42 = sub_29B1DA6C4(a1, a2);
  v43 = v55;
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  return v42 & v43;
}

void sub_29B1DBD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a22)
  {
    sub_29A014BEC(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DBE50(uint64_t a1, const void **a2)
{
  sub_29B1D81C0(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_29B1DBEFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&v9, (a1 + 8));
  shared_weak_owners = v9;
  if (v9)
  {
    do
    {
      sub_29B1D7FB0(shared_weak_owners, a2);
      v4 = *a2 == 0;
      if (*a2)
      {
        break;
      }

      v5 = a2[1];
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      v6 = v9;
      shared_weak_owners = v9[9].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
        v7 = shared_weak_owners;
        if (shared_weak_owners)
        {
          shared_weak_owners = v6[9].__shared_owners_;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v10;
      v9 = shared_weak_owners;
      v10 = v7;
      if (v8)
      {
        sub_29A014BEC(v8);
        shared_weak_owners = v9;
      }
    }

    while (shared_weak_owners);
  }

  else
  {
    v4 = 1;
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v4)
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_29B1DBFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1DBFDC(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDCD8);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1DC03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1DC058(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDCD8);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1DC0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1DC0E0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDCD0[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1DC140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1DC15C(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = strlen(off_2A14FDEC0[0]);
  v9 = v8;
  v10 = *(a3 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    if (v8 != a3[1])
    {
      goto LABEL_8;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a3;
  }

  else
  {
    v11 = a3;
    if (v9 != v10)
    {
LABEL_8:
      v12 = strlen(off_2A14FDEC8[0]);
      if ((v10 & 0x80000000) != 0)
      {
        if (v12 != a3[1])
        {
          goto LABEL_15;
        }

        if (v12 == -1)
        {
          sub_29A0F26CC();
        }

        a3 = *a3;
      }

      else if (v12 != v10)
      {
LABEL_15:
        if (*(a2 + 23) < 0)
        {
          v13 = *a2;
          v14 = *(a2 + 8);

          sub_29A008D14(a4, v13, v14);
        }

        else
        {
          *a4 = *a2;
          *(a4 + 16) = *(a2 + 16);
        }

        return;
      }

      if (memcmp(a3, off_2A14FDEC8[0], v12))
      {
        goto LABEL_15;
      }

      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      sub_29B1F37E0(&v34, &__p, a1 + 96);
      v26 = *(a1 + 32);
      v25 = a1 + 32;
      v24 = v26;
      v27 = *(v25 + 23);
      if (v27 >= 0)
      {
        v28 = v25;
      }

      else
      {
        v28 = v24;
      }

      if (v27 >= 0)
      {
        v29 = *(v25 + 23);
      }

      else
      {
        v29 = *(v25 + 8);
      }

      v30 = std::string::insert(&v34, 0, v28, v29);
      v31 = *&v30->__r_.__value_.__l.__data_;
      *(a4 + 16) = *(&v30->__r_.__value_.__l + 2);
      *a4 = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v23 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_46;
      }

      return;
    }
  }

  if (memcmp(v11, off_2A14FDEC0[0], v9))
  {
    goto LABEL_8;
  }

  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  sub_29B1F37E0(&v34, &__dst, a1 + 56);
  v17 = *(a1 + 8);
  v16 = a1 + 8;
  v15 = v17;
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  v21 = std::string::insert(&v34, 0, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  *(a4 + 16) = *(&v21->__r_.__value_.__l + 2);
  *a4 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v23 = __dst.__r_.__value_.__r.__words[0];
LABEL_46:
    operator delete(v23);
  }
}

void sub_29B1DC3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1DC438(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (!v2)
  {
    return 1;
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    return 1;
  }

  sub_29A008E78(v18, off_2A14FDF48[0]);
  sub_29B1F3590(v16, a1, v18);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  sub_29A008E78(v18, off_2A14FDF48[0]);
  sub_29B1F3590(v15, a2, v18);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  sub_29B1E5E24(&v13, v16[0], v16[1]);
  sub_29B1E5E24(&v11, v15[0], v15[1]);
  v9 = 0;
  v10 = 0;
  v8 = &v9;
  sub_29B1E5EA8(v13, &v14, v11, &v12, &v8, &v9, &v17, v18);
  v6 = v10 != 0;
  sub_29A019EE8(&v8, v9);
  sub_29A019EE8(&v11, v12);
  sub_29A019EE8(&v13, v14);
  v18[0] = v15;
  sub_29A012C90(v18);
  v18[0] = v16;
  sub_29A012C90(v18);
  return v6;
}

void sub_29B1DC5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void ***a15, char *a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_29A019EE8(&a9, a10);
  sub_29A019EE8(&a12, a13);
  sub_29A019EE8(&a15, a16);
  a15 = &a18;
  sub_29A012C90(&a15);
  a18 = &a21;
  sub_29A012C90(&a18);
  _Unwind_Resume(a1);
}

void sub_29B1DC62C()
{
  if (*(v0 - 41) < 0)
  {
    operator delete(*(v0 - 64));
  }

  JUMPOUT(0x29B1DC624);
}

void sub_29B1DC644()
{
  if ((atomic_load_explicit(&qword_2A1786838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786838))
  {
    sub_29B1DDEFC(&unk_2A1786830, v0);

    __cxa_guard_release(&qword_2A1786838);
  }
}

void sub_29B1DC6C8()
{
  if ((atomic_load_explicit(&qword_2A1786848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786848))
  {
    sub_29B1DE540(&unk_2A1786840, v0);

    __cxa_guard_release(&qword_2A1786848);
  }
}

void sub_29B1DC74C()
{
  if ((atomic_load_explicit(&qword_2A1786858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786858))
  {
    sub_29B1DE788(&unk_2A1786850, v0);

    __cxa_guard_release(&qword_2A1786858);
  }
}

void sub_29B1DC7D0()
{
  if ((atomic_load_explicit(&qword_2A1786868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786868))
  {
    sub_29B1DEB30(&unk_2A1786860, v0);

    __cxa_guard_release(&qword_2A1786868);
  }
}

void sub_29B1DC854()
{
  if ((atomic_load_explicit(&qword_2A1786878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786878))
  {
    sub_29B1DEF04(&unk_2A1786870, v0);

    __cxa_guard_release(&qword_2A1786878);
  }
}

void sub_29B1DC8D8()
{
  if ((atomic_load_explicit(&qword_2A1786888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786888))
  {
    sub_29B1DF14C(&unk_2A1786880, v0);

    __cxa_guard_release(&qword_2A1786888);
  }
}

void sub_29B1DC95C()
{
  if ((atomic_load_explicit(&qword_2A1786898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786898))
  {
    sub_29B1DF1F0(&unk_2A1786890, v0);

    __cxa_guard_release(&qword_2A1786898);
  }
}

void sub_29B1DC9E0()
{
  if ((atomic_load_explicit(&qword_2A17868A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17868A8))
  {
    sub_29B1DF438(&unk_2A17868A0, v0);

    __cxa_guard_release(&qword_2A17868A8);
  }
}

void sub_29B1DCA64()
{
  if ((atomic_load_explicit(&qword_2A17868B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17868B8))
  {
    sub_29B1DF680(&unk_2A17868B0, v0);

    __cxa_guard_release(&qword_2A17868B8);
  }
}

void sub_29B1DCAE8()
{
  if ((atomic_load_explicit(&qword_2A17868C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17868C8))
  {
    sub_29B1DFA54(&unk_2A17868C0, v0);

    __cxa_guard_release(&qword_2A17868C8);
  }
}

void sub_29B1DCB6C()
{
  if ((atomic_load_explicit(&qword_2A17868D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17868D8))
  {
    sub_29B1DFDFC(&unk_2A17868D0, v0);

    __cxa_guard_release(&qword_2A17868D8);
  }
}

void sub_29B1DCBF0()
{
  if ((atomic_load_explicit(&qword_2A17868E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17868E8))
  {
    sub_29B1E0044(&unk_2A17868E0, v0);

    __cxa_guard_release(&qword_2A17868E8);
  }
}

void sub_29B1DCC74()
{
  if ((atomic_load_explicit(&qword_2A17868F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17868F8))
  {
    sub_29B1E0418(&unk_2A17868F0, v0);

    __cxa_guard_release(&qword_2A17868F8);
  }
}

void sub_29B1DCCF8()
{
  if ((atomic_load_explicit(&qword_2A1786908, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786908))
  {
    sub_29B1E07EC(&unk_2A1786900, v0);

    __cxa_guard_release(&qword_2A1786908);
  }
}

void sub_29B1DCD7C()
{
  if ((atomic_load_explicit(&qword_2A1786918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786918))
  {
    sub_29B1E0BC0(&unk_2A1786910, v0);

    __cxa_guard_release(&qword_2A1786918);
  }
}

void sub_29B1DCE00()
{
  if ((atomic_load_explicit(&qword_2A1786928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786928))
  {
    sub_29B1E0F94(&unk_2A1786920, v0);

    __cxa_guard_release(&qword_2A1786928);
  }
}

void sub_29B1DCE84()
{
  if ((atomic_load_explicit(&qword_2A1786938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786938))
  {
    sub_29B1E1368(&unk_2A1786930, v0);

    __cxa_guard_release(&qword_2A1786938);
  }
}

void sub_29B1DCF08()
{
  if ((atomic_load_explicit(&qword_2A1786948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786948))
  {
    sub_29B1E140C(&unk_2A1786940, v0);

    __cxa_guard_release(&qword_2A1786948);
  }
}

void sub_29B1DCF8C()
{
  if ((atomic_load_explicit(&qword_2A1786958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786958))
  {
    sub_29B1E1654(&unk_2A1786950, v0);

    __cxa_guard_release(&qword_2A1786958);
  }
}

void sub_29B1DD010()
{
  if ((atomic_load_explicit(&qword_2A1786968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786968))
  {
    sub_29B1E189C(&unk_2A1786960, v0);

    __cxa_guard_release(&qword_2A1786968);
  }
}

void sub_29B1DD094()
{
  if ((atomic_load_explicit(&qword_2A1786978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786978))
  {
    sub_29B1E1AE4(&unk_2A1786970, v0);

    __cxa_guard_release(&qword_2A1786978);
  }
}

void sub_29B1DD118()
{
  if ((atomic_load_explicit(&qword_2A1786988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786988))
  {
    sub_29B1E1EB8(&unk_2A1786980, v0);

    __cxa_guard_release(&qword_2A1786988);
  }
}

void sub_29B1DD19C()
{
  if ((atomic_load_explicit(&qword_2A1786998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786998))
  {
    sub_29B1E228C(&unk_2A1786990, v0);

    __cxa_guard_release(&qword_2A1786998);
  }
}

void sub_29B1DD220()
{
  if ((atomic_load_explicit(&qword_2A17869A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17869A8))
  {
    sub_29B1E2660(&unk_2A17869A0, v0);

    __cxa_guard_release(&qword_2A17869A8);
  }
}

void sub_29B1DD2A4()
{
  if ((atomic_load_explicit(&qword_2A17869B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17869B8))
  {
    sub_29B1E2A34(&unk_2A17869B0, v0);

    __cxa_guard_release(&qword_2A17869B8);
  }
}

void sub_29B1DD328()
{
  if ((atomic_load_explicit(&qword_2A17869C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17869C8))
  {
    sub_29B1E2E08(&unk_2A17869C0, v0);

    __cxa_guard_release(&qword_2A17869C8);
  }
}

void sub_29B1DD3AC()
{
  if ((atomic_load_explicit(&qword_2A17869D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17869D8))
  {
    sub_29B1E3050(&unk_2A17869D0, v0);

    __cxa_guard_release(&qword_2A17869D8);
  }
}

void sub_29B1DD430()
{
  if ((atomic_load_explicit(&qword_2A17869E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17869E8))
  {
    sub_29B1E3424(&unk_2A17869E0, v0);

    __cxa_guard_release(&qword_2A17869E8);
  }
}

void sub_29B1DD4B4()
{
  if ((atomic_load_explicit(&qword_2A17869F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17869F8))
  {
    sub_29B1E37F8(&unk_2A17869F0, v0);

    __cxa_guard_release(&qword_2A17869F8);
  }
}

void sub_29B1DD538()
{
  if ((atomic_load_explicit(&qword_2A1786A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786A08))
  {
    sub_29B1E3BCC(&unk_2A1786A00, v0);

    __cxa_guard_release(&qword_2A1786A08);
  }
}

void sub_29B1DD5BC()
{
  if ((atomic_load_explicit(&qword_2A1786A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786A18))
  {
    sub_29B1E3FA0(&unk_2A1786A10, v0);

    __cxa_guard_release(&qword_2A1786A18);
  }
}

void sub_29B1DD640()
{
  if ((atomic_load_explicit(&qword_2A1786A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786A28))
  {
    sub_29B1E4374(&unk_2A1786A20, v0);

    __cxa_guard_release(&qword_2A1786A28);
  }
}

void sub_29B1DD6C4()
{
  if ((atomic_load_explicit(&qword_2A1786A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786A38))
  {
    sub_29B1E4748(&unk_2A1786A30, v0);

    __cxa_guard_release(&qword_2A1786A38);
  }
}

void sub_29B1DD748()
{
  if ((atomic_load_explicit(&qword_2A1786A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1786A48))
  {
    sub_29B1E4B1C(&unk_2A1786A40, v0);

    __cxa_guard_release(&qword_2A1786A48);
  }
}

void sub_29B1DD7D0(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1DD7FC(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1DD828(uint64_t a1)
{
  v1 = sub_29B1E4EF0(a1);

  operator delete(v1);
}

void sub_29B1DD850(std::exception *a1)
{
  sub_29AAD6C00(a1);

  operator delete(v1);
}

uint64_t *sub_29B1DD878(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29B1DD8D0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29B1DD8D0(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29B1DD958(v5, (v5 + 8), v4 + 4, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29B1DD958(uint64_t ***a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = sub_29A1B2AD0(a1, a2, &v12, &v11, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v9 = a4[1];
    v7[4] = *a4;
    v7[5] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t sub_29B1DD9F0(uint64_t a1)
{
  sub_29A42FCE0(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t sub_29B1DDA2C(uint64_t a1, unint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_29A42F734(a1 + 32, a2, a2);
  return a1;
}

void sub_29B1DDAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  v14 = v11;
  a10 = v13;
  sub_29A03CE34(&a10);
  sub_29A42FCE0(v14, *(v10 + 40));
  v16 = *(v10 + 24);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v17 = *(v10 + 8);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_29B1DDAF4(unint64_t *a1, unint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[3] = 0;
  a1[2] = (a1 + 3);
  a1[4] = 0;
  a1[5] = 0;
  sub_29A42F734((a1 + 2), a2, a2);
  return a1;
}

void sub_29B1DDB58(_Unwind_Exception *a1)
{
  sub_29A42FCE0(v2, *(v1 + 24));
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_29B1DDB7C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20C6800;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29B1DDBD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2D078C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1DDBF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B1DDC18(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B1DDC48(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20C6850))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29B1DDC88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D81C0(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29B1DDD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void sub_29B1DDDC4(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D8480(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29B1DDE48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1DDE60(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D8320(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29B1DDEE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DDEFC(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDCE8);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DDFA0;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DDF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DDFA0@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DDFE4(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DDFE4(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1DE060(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DE060(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6878;
  sub_29B1DE160(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DE0F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1DE160(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DE1D0(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1DE1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1DE1D0(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDCE8);
  sub_29AD96CE0(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C68C8;
  return a1;
}

void sub_29B1DE274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1DE2A8(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void *sub_29B1DE2D0(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = *(i + 1);
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  *(i + 1) = v9;
  v16 = *a4;
  v17 = **a4;
  *(i + 4) = *(*a4 + 2);
  *(i + 1) = v17;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(i + 5) = 0;
  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v10 || (v19 * v10) < v18)
  {
    v20 = 1;
    if (v10 >= 3)
    {
      v20 = (v10 & (v10 - 1)) != 0;
    }

    v21 = v20 | (2 * v10);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    sub_29A019AA0(a1, v23);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_38:
    *v25 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t sub_29B1DE540(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDCF0[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DE5E4;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DE5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DE5E4@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DE628(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DE628(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1DE6A4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DE6A4(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C63B0;
  sub_29B1DE718(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DE718(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1D51C8(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1DE770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DE788(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDCF8);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DE82C;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DE810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DE82C@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DE870(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DE870(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1DE8EC(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DE8EC(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6938;
  sub_29B1DE9EC(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DE980(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1DE9EC(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DEA5C(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1DEA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1DEA5C(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDCF8);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C7980;
  return a1;
}

void sub_29B1DEB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DEB30(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD00[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DEBD4;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DEBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DEBD4@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DEC18(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DEC18(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1DEC94(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DEC94(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6988;
  sub_29B1DED94(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DED28(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1DED94(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DEE04(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1DEDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1DEE04(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, off_2A14FDD00[0]);
  sub_29AD96D70(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C69D8;
  return a1;
}

void sub_29B1DEEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1DEEDC(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1DEF04(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD08[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DEFA8;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DEF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DEFA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DEFEC(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DEFEC(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x130uLL);
  sub_29B1DF068(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DF068(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6530;
  sub_29B1DF0DC(&v5, a1 + 3, a2);
  return a1;
}

void sub_29B1DF0DC(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1C6F6C(a2, &v4);
  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29B1DF134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DF14C(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD10);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1D994C;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DF1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DF1F0(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD18[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DF294;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DF278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DF294@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DF2D8(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DF2D8(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1DF354(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DF354(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C62F8;
  sub_29B1DF3C8(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DF3C8(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1D4B44(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1DF420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DF438(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD20[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DF4DC;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DF4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DF4DC@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DF520(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DF520(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1DF59C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DF59C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C65D0;
  sub_29B1DF610(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DF610(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1D6D5C(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1DF668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DF680(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD28);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DF724;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DF708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DF724@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DF768(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DF768(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1DF7E4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DF7E4(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6A40;
  sub_29B1DF8E4(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DF878(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6A40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1DF8E4(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DF954(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1DF93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1DF954(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD28);
  sub_29AD96CE0(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6A90;
  return a1;
}

void sub_29B1DF9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1DFA2C(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

uint64_t sub_29B1DFA54(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, qword_2A14FDD30);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DFAF8;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DFADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DFAF8@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DFB3C(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DFB3C(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x128uLL);
  sub_29B1DFBB8(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DFBB8(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6B00;
  sub_29B1DFCB8(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DFC4C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C6B00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B1DFCB8(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1DFD28(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1DFD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1DFD28(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, qword_2A14FDD30);
  sub_29AD96C4C(a1, &v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *a1 = &unk_2A20C6090;
  return a1;
}

void sub_29B1DFDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1DFDFC(uint64_t a1, uint64_t a2)
{
  sub_29B1D8530(a1, a2);
  sub_29A008E78(__p, off_2A14FDD38[0]);
  v6 = __p;
  *(sub_29B1DE2D0(qword_2A1786A58, __p, &unk_29B766523, &v6) + 5) = sub_29B1DFEA0;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B1DFE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1DFEA0@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_29B1DFEE4(a1, a2, v5);
  result = v5[0];
  *a3 = *v5;
  return result;
}

void sub_29B1DFEE4(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x118uLL);
  sub_29B1DFF60(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29B1DFF60(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20C6438;
  sub_29B1DFFD4(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_29B1DFFD4(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AD99C10(a2, &v5, a4);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}