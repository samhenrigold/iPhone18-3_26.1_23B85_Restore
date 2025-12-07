uint64_t sub_10060C8B0(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(__p, a3[2], a3[3]);
  }

  else
  {
    *__p = *(a3 + 1);
    v13 = a3[4];
  }

  v14 = a3[5];
  sub_10060C994(a1, a2, &v10, a4);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  return a1;
}

void sub_10060C96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060C994(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v9 = *a3;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(__p, a3[2], a3[3]);
    v9 = v13;
    v8 = v14;
  }

  else
  {
    *__p = *(a3 + 1);
    v16 = a3[4];
  }

  v17 = a3[5];
  *a1 = a2;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C((a1 + 24), __p[0], __p[1]);
    v11 = SHIBYTE(v16);
    *(a1 + 48) = v17;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 24) = *__p;
    v10 = v17;
    *(a1 + 40) = v16;
    *(a1 + 48) = v10;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  *(a1 + 56) = a4;
  return a1;
}

void sub_10060CA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v12 = *(v10 + 16);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_1005F6E2C(&a9);
  _Unwind_Resume(a1);
}

void sub_10060CACC(uint64_t (***a1)(), __int128 *a2)
{
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v4;
  v5 = *(a2 + 4);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *__p = *(a2 + 40);
    v11 = *(a2 + 7);
  }

  v12 = *(a2 + 8);
  v13 = *(a2 + 72);
  sub_10060CBB4(a1, &v6);
}

void sub_10060CB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060CBB4(uint64_t (***a1)(), __int128 *a2)
{
  *a1 = 0;
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v4;
  v5 = *(a2 + 4);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *__p = *(a2 + 40);
    v11 = *(a2 + 7);
  }

  v12 = *(a2 + 8);
  v13 = *(a2 + 72);
  sub_10060CC9C(a1, &v6);
}

void sub_10060CC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060CC9C(uint64_t (***a1)(), __int128 *a2)
{
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v4;
  v5 = *(a2 + 4);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *__p = *(a2 + 40);
    v11 = *(a2 + 7);
  }

  v12 = *(a2 + 8);
  v13 = *(a2 + 72);
  sub_10060CDF4(off_101E6A410, &v6, a1 + 1);
}

void sub_10060CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060CDA0(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060CEEC(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_10060CDC0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[72];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_10060CDF4(uint64_t a1, __int128 *a2, void *a3)
{
  v8 = *a2;
  v6 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v6;
  v7 = *(a2 + 4);
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *__p = *(a2 + 40);
    v13 = *(a2 + 7);
  }

  v14 = *(a2 + 8);
  v15 = *(a2 + 72);
  sub_10060D084(a1, &v8, a3);
}

void sub_10060CEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060CEEC(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (*(v5 + 63) < 0)
      {
        operator delete(*(v5 + 40));
      }

      v6 = *(v5 + 32);
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK34ActiveCallEndedWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK34ActiveCallEndedWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060D060(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10060D084(uint64_t a1, __int128 *a2, void *a3)
{
  v8 = *a2;
  v6 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v6;
  v7 = *(a2 + 4);
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    *__p = *(a2 + 40);
    v13 = *(a2 + 7);
  }

  v14 = *(a2 + 8);
  v15 = *(a2 + 72);
  sub_10060D178(a1, &v8, a3);
}

void sub_10060D150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060D228(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t sub_10060D24C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB31E0 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060D2CC(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060D2CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "ActiveCallEndedWaitingCallAccepted";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_10060D3D4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_10060D43C(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060D43C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 120))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060D4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060D4DC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_10060D544(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060D544(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 56))(*(a3 + 8), &v7, a2 + 2, a2[5]), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060D5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060D5E8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_10060D650(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060D650(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v11 = v6;
    if (v6)
    {
      v7 = v6;
      v10 = *a2;
      if (!v10)
      {
        goto LABEL_7;
      }

      v8 = *sub_1005F4DE4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Ending a specific call when there are multiple calls going on", v9, 2u);
      }

      ++*a2[5];
      (*(**(a3 + 8) + 80))(*(a3 + 8), &v10);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

void sub_10060D734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060D758(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_10060D7C0(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060D7C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v11 = v6;
    if (v6)
    {
      v7 = v6;
      v10 = *a2;
      if (!v10)
      {
        goto LABEL_7;
      }

      v8 = *sub_1005F4DE4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Ending a specific call when there are multiple calls going on", v9, 2u);
      }

      ++*a2[5];
      (*(**(a3 + 8) + 80))(*(a3 + 8), &v10);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

void sub_10060D8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060D8C8(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_10060D94C(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060DA54(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060D94C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 16);
    sub_10060DB04(sub_10060D8C8, 0, a1, v5, 5, v7);
    sub_10060DCD8(&v8, v7);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060DA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_1003ABCAC((v16 - 48));
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10060DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10060E1A4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060DB04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a4[1];
  v13 = *a4;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a4 + 16);
  sub_10060DBEC(v16, a3, &v13, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v10 = v16[1];
  *(a6 + 16) = v16[0];
  *(a6 + 24) = v10;
  v11 = v17;
  *(a6 + 32) = v17;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v12 = v17;
    *(a6 + 40) = v18;
    *(a6 + 48) = v19;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  else
  {
    *(a6 + 40) = v18;
    *(a6 + 48) = v19;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_10060DBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060DBEC(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 16);
  sub_10060DC6C(a1, a2, &v7, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_10060DC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060DC6C(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a3 + 16);
    *a1 = a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = v8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v9 = *(a3 + 16);
    *a1 = a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = v9;
  }

  *(a1 + 32) = a4;
  return a1;
}

void sub_10060DCD8(uint64_t (***a1)(), __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_10060DD70(a1, &v4);
}

void sub_10060DD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060DD70(uint64_t (***a1)(), __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_10060DE08(a1, &v4);
}

void sub_10060DDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060DE08(uint64_t (***a1)(), __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_10060DF10(off_101E6A430, &v4, a1 + 1);
}

void sub_10060DEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060DEBC(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060DFA0(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_10060DEDC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[48];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_10060DF10(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  v4 = *(a2 + 4);
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  sub_10060E0CC(a1, &v5, a3);
}

void sub_10060DF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060DFA0(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13SendDTMFDigithEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13SendDTMFDigithEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060E0CC(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10060E18C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060E1A4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB3258 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060E224(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060E224(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "SendDTMFDigit";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_10060E32C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_10060E390(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_10060E390(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 160))(*(a3 + 8), &v7, *(a2 + 16)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060E418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060E430(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_10060E494(&v6, a4, a1);
  *(v4 + 24) = 6;
  return 1;
}

void sub_10060E494(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 160))(*(a3 + 8), &v7, *(a2 + 16)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060E51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060E534(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_10060E598(&v6, a4, a1);
  *(v4 + 24) = 4;
  return 1;
}

void sub_10060E598(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 160))(*(a3 + 8), &v7, *(a2 + 16)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060E620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060E638(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_10060E6BC(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060E7BC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060E6BC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    sub_1005F8474(sub_10060E638, 0, a1, v5, 5, v6);
    sub_10060E86C(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060E780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_1003ABCAC((v15 - 48));
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10060E7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10060ED04(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060E86C(uint64_t (***a1)(), __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_10060E8FC(a1, &v4);
}

void sub_10060E8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060E8FC(uint64_t (***a1)(), __int128 *a2)
{
  *a1 = 0;
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_10060E98C(a1, &v4);
}

void sub_10060E974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060E98C(uint64_t (***a1)(), __int128 *a2)
{
  v4 = *a2;
  v2 = *(a2 + 3);
  v5 = *(a2 + 2);
  v6 = v2;
  v3 = *(a2 + 4);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 40);
  sub_10060EA8C(off_101E6A450, &v4, a1 + 1);
}

void sub_10060EA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060EA38(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060EB14(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_10060EA58(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[40];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_10060EA8C(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  v4 = *(a2 + 4);
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 40);
  sub_10060EC38(a1, &v5, a3);
}

void sub_10060EAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060EB14(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      v5 = *(*a2 + 32);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13StopDTMFDigithEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13StopDTMFDigithEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060EC38(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10060ECEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060ED04(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB32D0 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060ED84(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060ED84(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *sub_1005F4DE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005F8B30(a4, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "StopDTMFDigit";
    v11 = 2080;
    v12 = v6;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I For event %s, there is no transition from current state %s (%d). No transition can be OK!", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_10060EE8C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_10060EEF0(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_10060EEF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 168))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060EF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060EF8C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_10060EFF0(&v6, a4, a1);
  *(v4 + 24) = 6;
  return 1;
}

void sub_10060EFF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 168))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060F074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060F08C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_10060F0F0(&v6, a4, a1);
  *(v4 + 24) = 4;
  return 1;
}

void sub_10060F0F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 168))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060F174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060F238(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "CallEvent", "", v5, 2u);
    }
  }
}

uint64_t sub_10060F2B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10060F2FC()
{
  if ((byte_101FB25A8 & 1) == 0)
  {
    byte_101FB25A8 = 1;
    qword_101FB2598 = sub_1005F8DB0;
    unk_101FB25A0 = sub_1005F8DB0;
    qword_101FB2588 = sub_1005F8DB0;
    unk_101FB2590 = sub_1005F8DB0;
    qword_101FB2578 = sub_1005F8DB0;
    unk_101FB2580 = sub_1005F8DB0;
    qword_101FB2570 = sub_1005F8DB0;
    qword_101FB2558 = sub_1005F8DB0;
    unk_101FB2560 = sub_1005F8DB0;
    qword_101FB2548 = sub_1005F8DB0;
    unk_101FB2550 = sub_1005F8DB0;
    qword_101FB2540 = sub_1005F8DB0;
    qword_101FB2568 = sub_1005F8DB8;
  }
}

void sub_10060F354()
{
  if ((byte_101FB2620 & 1) == 0)
  {
    byte_101FB2620 = 1;
    qword_101FB2610 = sub_1005F9708;
    unk_101FB2618 = sub_1005F9708;
    qword_101FB2600 = sub_1005F9708;
    unk_101FB2608 = sub_1005F9708;
    qword_101FB25E8 = sub_1005F9708;
    unk_101FB25F0 = sub_1005F9708;
    qword_101FB25D8 = sub_1005F9708;
    unk_101FB25E0 = sub_1005F9708;
    qword_101FB25C8 = sub_1005F9708;
    unk_101FB25D0 = sub_1005F9708;
    qword_101FB25B8 = sub_1005F9708;
    unk_101FB25C0 = sub_1005F9708;
    qword_101FB25F8 = sub_1005F9710;
  }
}

void sub_10060F3A8()
{
  if ((byte_101FB2698 & 1) == 0)
  {
    byte_101FB2698 = 1;
    qword_101FB2688 = sub_1005FA068;
    unk_101FB2690 = sub_1005FA068;
    qword_101FB2678 = sub_1005FA068;
    unk_101FB2680 = sub_1005FA068;
    qword_101FB2668 = sub_1005FA068;
    unk_101FB2670 = sub_1005FA068;
    qword_101FB2658 = sub_1005FA068;
    unk_101FB2660 = sub_1005FA068;
    qword_101FB2648 = sub_1005FA068;
    unk_101FB2650 = sub_1005FA068;
    qword_101FB2630 = sub_1005FA068;
    *algn_101FB2638 = sub_1005FA068;
    qword_101FB2640 = sub_1005FA4C4;
  }
}

void sub_10060F3FC()
{
  if ((byte_101FB2710 & 1) == 0)
  {
    byte_101FB2710 = 1;
    qword_101FB2700 = sub_1005FB0AC;
    unk_101FB2708 = sub_1005FB0AC;
    qword_101FB26F0 = sub_1005FB0AC;
    unk_101FB26F8 = sub_1005FB0AC;
    qword_101FB26E0 = sub_1005FB0AC;
    unk_101FB26E8 = sub_1005FB0AC;
    qword_101FB26D0 = sub_1005FB0AC;
    unk_101FB26D8 = sub_1005FB0AC;
    qword_101FB26C0 = sub_1005FB0AC;
    unk_101FB26C8 = sub_1005FB0AC;
    qword_101FB26A8 = sub_1005FB0AC;
    unk_101FB26B0 = sub_1005FB0AC;
    qword_101FB26B8 = sub_1005FB0B4;
  }
}

void sub_10060F450()
{
  if ((byte_101FB2788 & 1) == 0)
  {
    byte_101FB2788 = 1;
    qword_101FB2778 = sub_1005FBA34;
    unk_101FB2780 = sub_1005FBA34;
    qword_101FB2768 = sub_1005FBA34;
    unk_101FB2770 = sub_1005FBA34;
    qword_101FB2758 = sub_1005FBA34;
    unk_101FB2760 = sub_1005FBA34;
    qword_101FB2748 = sub_1005FBA34;
    unk_101FB2750 = sub_1005FBA34;
    qword_101FB2738 = sub_1005FBA34;
    unk_101FB2740 = sub_1005FBA34;
    qword_101FB2728 = sub_1005FBA34;
    unk_101FB2730 = sub_1005FBA34;
    qword_101FB2720 = sub_1005FBA3C;
  }
}

void sub_10060F4A4()
{
  if ((byte_101FB2800 & 1) == 0)
  {
    byte_101FB2800 = 1;
    qword_101FB27F0 = sub_1005FC3B4;
    unk_101FB27F8 = sub_1005FC3B4;
    qword_101FB27E0 = sub_1005FC3B4;
    unk_101FB27E8 = sub_1005FC3B4;
    qword_101FB27D0 = sub_1005FC3B4;
    unk_101FB27D8 = sub_1005FC3B4;
    qword_101FB27C0 = sub_1005FC3B4;
    unk_101FB27C8 = sub_1005FC3B4;
    qword_101FB27B0 = sub_1005FC3B4;
    unk_101FB27B8 = sub_1005FC3B4;
    qword_101FB27A0 = sub_1005FC3B4;
    unk_101FB27A8 = sub_1005FC3B4;
    qword_101FB2798 = sub_1005FC3BC;
  }
}

void sub_10060F4F8()
{
  if ((byte_101FB2878 & 1) == 0)
  {
    byte_101FB2878 = 1;
    qword_101FB2868 = sub_1005FCD08;
    unk_101FB2870 = sub_1005FCD08;
    qword_101FB2858 = sub_1005FCD08;
    unk_101FB2860 = sub_1005FCD08;
    qword_101FB2848 = sub_1005FCD08;
    unk_101FB2850 = sub_1005FCD08;
    qword_101FB2838 = sub_1005FCD08;
    unk_101FB2840 = sub_1005FCD08;
    qword_101FB2830 = sub_1005FCD08;
    qword_101FB2818 = sub_1005FCD08;
    unk_101FB2820 = sub_1005FCD08;
    qword_101FB2810 = sub_1005FCD08;
    qword_101FB2828 = sub_1005FCD10;
  }
}

void sub_10060F550()
{
  if ((byte_101FB28F0 & 1) == 0)
  {
    byte_101FB28F0 = 1;
    qword_101FB28E0 = sub_1005FD664;
    unk_101FB28E8 = sub_1005FD664;
    qword_101FB28D0 = sub_1005FD664;
    unk_101FB28D8 = sub_1005FD664;
    qword_101FB28C0 = sub_1005FD664;
    unk_101FB28C8 = sub_1005FD664;
    qword_101FB28B0 = sub_1005FD664;
    qword_101FB2890 = sub_1005FD664;
    unk_101FB2898 = sub_1005FD664;
    qword_101FB2888 = sub_1005FD664;
    qword_101FB28B8 = sub_1005FD66C;
    qword_101FB28A8 = sub_1005FD770;
    qword_101FB28A0 = sub_1005FD874;
  }
}

void sub_10060F5C4()
{
  if ((byte_101FB2968 & 1) == 0)
  {
    byte_101FB2968 = 1;
    qword_101FB2958 = sub_1005FE1C4;
    unk_101FB2960 = sub_1005FE1C4;
    qword_101FB2948 = sub_1005FE1C4;
    unk_101FB2950 = sub_1005FE1C4;
    qword_101FB2938 = sub_1005FE1C4;
    unk_101FB2940 = sub_1005FE1C4;
    qword_101FB2928 = sub_1005FE1C4;
    unk_101FB2930 = sub_1005FE1C4;
    qword_101FB2918 = sub_1005FE1C4;
    unk_101FB2920 = sub_1005FE1C4;
    qword_101FB2908 = sub_1005FE1C4;
    unk_101FB2910 = sub_1005FE1C4;
    qword_101FB2900 = sub_1005FE1CC;
  }
}

void sub_10060F618()
{
  if ((byte_101FB29E0 & 1) == 0)
  {
    byte_101FB29E0 = 1;
    qword_101FB29D0 = sub_1005FEB18;
    unk_101FB29D8 = sub_1005FEB18;
    qword_101FB29C0 = sub_1005FEB18;
    unk_101FB29C8 = sub_1005FEB18;
    qword_101FB29B0 = sub_1005FEB18;
    unk_101FB29B8 = sub_1005FEB18;
    qword_101FB29A0 = sub_1005FEB18;
    unk_101FB29A8 = sub_1005FEB18;
    qword_101FB2988 = sub_1005FEB18;
    unk_101FB2990 = sub_1005FEB18;
    qword_101FB2978 = sub_1005FEB18;
    unk_101FB2980 = sub_1005FEB18;
    qword_101FB2998 = sub_1005FEB20;
  }
}

void sub_10060F66C()
{
  if ((byte_101FB2A58 & 1) == 0)
  {
    byte_101FB2A58 = 1;
    qword_101FB2A48 = sub_1005FF474;
    unk_101FB2A50 = sub_1005FF474;
    qword_101FB2A28 = sub_1005FF474;
    unk_101FB2A30 = sub_1005FF474;
    qword_101FB2A18 = sub_1005FF474;
    qword_101FB2A00 = sub_1005FF474;
    unk_101FB2A08 = sub_1005FF474;
    qword_101FB29F0 = sub_1005FF474;
    qword_101FB2A40 = sub_1005FF47C;
    qword_101FB2A38 = sub_1005FF584;
    qword_101FB2A20 = sub_1005FF740;
    qword_101FB2A10 = sub_1005FF8FC;
    qword_101FB29F8 = sub_1005FFAB8;
  }
}

void sub_10060F6FC()
{
  if ((byte_101FB2AD0 & 1) == 0)
  {
    byte_101FB2AD0 = 1;
    qword_101FB2AC0 = sub_1006004C0;
    unk_101FB2AC8 = sub_1006004C0;
    qword_101FB2AB0 = sub_1006004C0;
    unk_101FB2AB8 = sub_1006004C0;
    qword_101FB2A98 = sub_1006004C0;
    unk_101FB2AA0 = sub_1006004C0;
    qword_101FB2A88 = sub_1006004C0;
    unk_101FB2A90 = sub_1006004C0;
    qword_101FB2A78 = sub_1006004C0;
    unk_101FB2A80 = sub_1006004C0;
    qword_101FB2A70 = sub_1006004C0;
    qword_101FB2AA8 = sub_1006004C8;
    qword_101FB2A68 = sub_1006007F8;
  }
}

void sub_10060F760()
{
  if ((byte_101FB2B48 & 1) == 0)
  {
    byte_101FB2B48 = 1;
    qword_101FB2B38 = sub_100600AD8;
    unk_101FB2B40 = sub_100600AD8;
    qword_101FB2B28 = sub_100600AD8;
    unk_101FB2B30 = sub_100600AD8;
    qword_101FB2B18 = sub_100600AD8;
    unk_101FB2B20 = sub_100600AD8;
    qword_101FB2B08 = sub_100600AD8;
    unk_101FB2B10 = sub_100600AD8;
    qword_101FB2AF8 = sub_100600AD8;
    unk_101FB2B00 = sub_100600AD8;
    qword_101FB2AE8 = sub_100600AD8;
    unk_101FB2AF0 = sub_100600AD8;
    qword_101FB2AE0 = sub_100600D08;
  }
}

void sub_10060F7B4()
{
  if ((byte_101FB2BC0 & 1) == 0)
  {
    byte_101FB2BC0 = 1;
    qword_101FB2BB0 = sub_100601890;
    unk_101FB2BB8 = sub_100601890;
    qword_101FB2BA0 = sub_100601890;
    unk_101FB2BA8 = sub_100601890;
    qword_101FB2B90 = sub_100601890;
    unk_101FB2B98 = sub_100601890;
    qword_101FB2B80 = sub_100601890;
    unk_101FB2B88 = sub_100601890;
    qword_101FB2B70 = sub_100601890;
    unk_101FB2B78 = sub_100601890;
    qword_101FB2B60 = sub_100601890;
    unk_101FB2B68 = sub_100601890;
    qword_101FB2B58 = sub_100601AC0;
  }
}

void sub_10060F808()
{
  if ((byte_101FB2C38 & 1) == 0)
  {
    byte_101FB2C38 = 1;
    qword_101FB2C28 = sub_100602D00;
    unk_101FB2C30 = sub_100602D00;
    qword_101FB2C18 = sub_100602D00;
    unk_101FB2C20 = sub_100602D00;
    qword_101FB2C08 = sub_100602D00;
    unk_101FB2C10 = sub_100602D00;
    qword_101FB2BF8 = sub_100602D00;
    unk_101FB2C00 = sub_100602D00;
    qword_101FB2BE8 = sub_100602D00;
    unk_101FB2BF0 = sub_100602D00;
    qword_101FB2BE0 = sub_100602D00;
    qword_101FB2BD0 = sub_100602D00;
    qword_101FB2BD8 = sub_100602D08;
  }
}

void sub_10060F860()
{
  if ((byte_101FB2CB0 & 1) == 0)
  {
    byte_101FB2CB0 = 1;
    qword_101FB2CA8 = sub_10060365C;
    qword_101FB2CA0 = sub_100603664;
    qword_101FB2C98 = sub_100603770;
    qword_101FB2C90 = sub_1006038A8;
    qword_101FB2C88 = sub_1006039E0;
    qword_101FB2C80 = sub_100603AEC;
    qword_101FB2C78 = sub_100603C24;
    qword_101FB2C70 = sub_100603DB8;
    qword_101FB2C68 = sub_100603EC4;
    qword_101FB2C60 = sub_100604088;
    qword_101FB2C58 = sub_100604194;
    qword_101FB2C50 = sub_1006042A0;
    qword_101FB2C48 = sub_100604408;
  }
}

void sub_10060F950()
{
  if ((byte_101FB2D28 & 1) == 0)
  {
    byte_101FB2D28 = 1;
    qword_101FB2D18 = sub_100604D58;
    unk_101FB2D20 = sub_100604D58;
    qword_101FB2CE8 = sub_100604D58;
    qword_101FB2D10 = sub_100604D60;
    qword_101FB2D08 = sub_100604E64;
    qword_101FB2D00 = sub_100604F68;
    qword_101FB2CF8 = sub_100605070;
    qword_101FB2CF0 = sub_100605174;
    qword_101FB2CE0 = sub_100605278;
    qword_101FB2CD8 = sub_1006055A8;
    qword_101FB2CD0 = sub_1006057CC;
    qword_101FB2CC8 = sub_1006058D8;
    qword_101FB2CC0 = sub_1006059E0;
  }
}

void sub_10060FA24()
{
  if ((byte_101FB2DA0 & 1) == 0)
  {
    byte_101FB2DA0 = 1;
    qword_101FB2D90 = sub_100605F74;
    unk_101FB2D98 = sub_100605F74;
    qword_101FB2D78 = sub_100605F74;
    unk_101FB2D80 = sub_100605F74;
    qword_101FB2D60 = sub_100605F74;
    unk_101FB2D68 = sub_100605F74;
    qword_101FB2D50 = sub_100605F74;
    unk_101FB2D58 = sub_100605F74;
    qword_101FB2D40 = sub_100605F74;
    unk_101FB2D48 = sub_100605F74;
    qword_101FB2D38 = sub_100605F74;
    qword_101FB2D88 = sub_100605F7C;
    qword_101FB2D70 = sub_100605FA8;
  }
}

void sub_10060FA88()
{
  if ((byte_101FB2E18 & 1) == 0)
  {
    byte_101FB2E18 = 1;
    qword_101FB2E08 = sub_100606820;
    unk_101FB2E10 = sub_100606820;
    qword_101FB2DF0 = sub_100606820;
    unk_101FB2DF8 = sub_100606820;
    qword_101FB2DD8 = sub_100606820;
    qword_101FB2DB0 = sub_100606820;
    *algn_101FB2DB8 = sub_100606820;
    qword_101FB2E00 = sub_100606828;
    qword_101FB2DE8 = sub_100606854;
    qword_101FB2DE0 = sub_100606880;
    qword_101FB2DD0 = sub_1006068AC;
    qword_101FB2DC8 = sub_100606A40;
    qword_101FB2DC0 = sub_100606C64;
  }
}

void sub_10060FB24()
{
  if ((byte_101FB2E90 & 1) == 0)
  {
    byte_101FB2E90 = 1;
    qword_101FB2E80 = sub_1006077CC;
    unk_101FB2E88 = sub_1006077CC;
    qword_101FB2E78 = sub_1006077CC;
    qword_101FB2E58 = sub_1006077CC;
    unk_101FB2E60 = sub_1006077CC;
    qword_101FB2E48 = sub_1006077CC;
    unk_101FB2E50 = sub_1006077CC;
    qword_101FB2E38 = sub_1006077CC;
    unk_101FB2E40 = sub_1006077CC;
    qword_101FB2E28 = sub_1006077CC;
    qword_101FB2E70 = sub_1006077D4;
    qword_101FB2E68 = sub_1006078D8;
    qword_101FB2E30 = sub_1006079E0;
  }
}

void sub_10060FB98()
{
  if ((byte_101FB2F08 & 1) == 0)
  {
    byte_101FB2F08 = 1;
    qword_101FB2EF8 = sub_100608334;
    unk_101FB2F00 = sub_100608334;
    qword_101FB2EE8 = sub_100608334;
    unk_101FB2EF0 = sub_100608334;
    qword_101FB2EE0 = sub_100608334;
    qword_101FB2EC8 = sub_100608334;
    unk_101FB2ED0 = sub_100608334;
    qword_101FB2EB8 = sub_100608334;
    unk_101FB2EC0 = sub_100608334;
    qword_101FB2EA8 = sub_100608334;
    unk_101FB2EB0 = sub_100608334;
    qword_101FB2EA0 = sub_100608334;
    qword_101FB2ED8 = sub_10060833C;
  }
}

void sub_10060FBF0()
{
  if ((byte_101FB2F80 & 1) == 0)
  {
    byte_101FB2F80 = 1;
    qword_101FB2F70 = sub_100608444;
    unk_101FB2F78 = sub_100608444;
    qword_101FB2F58 = sub_100608444;
    unk_101FB2F60 = sub_100608444;
    qword_101FB2F40 = sub_100608444;
    unk_101FB2F48 = sub_100608444;
    qword_101FB2F30 = sub_100608444;
    unk_101FB2F38 = sub_100608444;
    qword_101FB2F20 = sub_100608444;
    unk_101FB2F28 = sub_100608444;
    qword_101FB2F18 = sub_100608444;
    qword_101FB2F68 = sub_10060844C;
    qword_101FB2F50 = sub_100608550;
  }
}

void sub_10060FC54()
{
  if ((byte_101FB2FF8 & 1) == 0)
  {
    byte_101FB2FF8 = 1;
    qword_101FB2FE8 = sub_100608EA0;
    unk_101FB2FF0 = sub_100608EA0;
    qword_101FB2FE0 = sub_100608EA0;
    qword_101FB2FC8 = sub_100608EA0;
    unk_101FB2FD0 = sub_100608EA0;
    qword_101FB2FB8 = sub_100608EA0;
    unk_101FB2FC0 = sub_100608EA0;
    qword_101FB2FA8 = sub_100608EA0;
    unk_101FB2FB0 = sub_100608EA0;
    qword_101FB2F98 = sub_100608EA0;
    unk_101FB2FA0 = sub_100608EA0;
    qword_101FB2F90 = sub_100608EA0;
    qword_101FB2FD8 = sub_100608EA8;
  }
}

void sub_10060FCAC()
{
  if ((byte_101FB3070 & 1) == 0)
  {
    byte_101FB3070 = 1;
    qword_101FB3060 = sub_1006097FC;
    unk_101FB3068 = sub_1006097FC;
    qword_101FB3048 = sub_1006097FC;
    unk_101FB3050 = sub_1006097FC;
    qword_101FB3030 = sub_1006097FC;
    unk_101FB3038 = sub_1006097FC;
    qword_101FB3020 = sub_1006097FC;
    unk_101FB3028 = sub_1006097FC;
    qword_101FB3010 = sub_1006097FC;
    unk_101FB3018 = sub_1006097FC;
    qword_101FB3008 = sub_1006097FC;
    qword_101FB3058 = sub_100609804;
    qword_101FB3040 = sub_100609868;
  }
}

void sub_10060FD10()
{
  if ((byte_101FB30E8 & 1) == 0)
  {
    byte_101FB30E8 = 1;
    qword_101FB30D8 = sub_10060A1B8;
    unk_101FB30E0 = sub_10060A1B8;
    qword_101FB30C0 = sub_10060A1B8;
    unk_101FB30C8 = sub_10060A1B8;
    qword_101FB30B0 = sub_10060A1B8;
    unk_101FB30B8 = sub_10060A1B8;
    qword_101FB30A0 = sub_10060A1B8;
    unk_101FB30A8 = sub_10060A1B8;
    qword_101FB3090 = sub_10060A1B8;
    unk_101FB3098 = sub_10060A1B8;
    qword_101FB3080 = sub_10060A1B8;
    *algn_101FB3088 = sub_10060A1B8;
    qword_101FB30D0 = sub_10060A1C0;
  }
}

void sub_10060FD64()
{
  if ((byte_101FB3160 & 1) == 0)
  {
    byte_101FB3160 = 1;
    qword_101FB3150 = sub_10060B188;
    unk_101FB3158 = sub_10060B188;
    qword_101FB3140 = sub_10060B188;
    unk_101FB3148 = sub_10060B188;
    qword_101FB3128 = sub_10060B188;
    unk_101FB3130 = sub_10060B188;
    qword_101FB3118 = sub_10060B188;
    unk_101FB3120 = sub_10060B188;
    qword_101FB3108 = sub_10060B188;
    unk_101FB3110 = sub_10060B188;
    qword_101FB30F8 = sub_10060B188;
    qword_101FB3138 = sub_10060B190;
    qword_101FB3100 = sub_10060B298;
  }
}

void sub_10060FDC8()
{
  if ((byte_101FB31D8 & 1) == 0)
  {
    byte_101FB31D8 = 1;
    qword_101FB31C8 = sub_10060C264;
    unk_101FB31D0 = sub_10060C264;
    qword_101FB31B8 = sub_10060C264;
    unk_101FB31C0 = sub_10060C264;
    qword_101FB31A0 = sub_10060C264;
    unk_101FB31A8 = sub_10060C264;
    qword_101FB3190 = sub_10060C264;
    unk_101FB3198 = sub_10060C264;
    qword_101FB3180 = sub_10060C264;
    unk_101FB3188 = sub_10060C264;
    qword_101FB3170 = sub_10060C264;
    qword_101FB31B0 = sub_10060C26C;
    qword_101FB3178 = sub_10060C374;
  }
}

void sub_10060FE2C()
{
  if ((byte_101FB3250 & 1) == 0)
  {
    byte_101FB3250 = 1;
    qword_101FB3240 = sub_10060D3CC;
    unk_101FB3248 = sub_10060D3CC;
    qword_101FB3230 = sub_10060D3CC;
    unk_101FB3238 = sub_10060D3CC;
    qword_101FB3210 = sub_10060D3CC;
    qword_101FB31F8 = sub_10060D3CC;
    unk_101FB3200 = sub_10060D3CC;
    qword_101FB31E8 = sub_10060D3CC;
    unk_101FB31F0 = sub_10060D3CC;
    qword_101FB3228 = sub_10060D3D4;
    qword_101FB3220 = sub_10060D4DC;
    qword_101FB3218 = sub_10060D5E8;
    qword_101FB3208 = sub_10060D758;
  }
}

void sub_10060FEAC()
{
  if ((byte_101FB32C8 & 1) == 0)
  {
    byte_101FB32C8 = 1;
    qword_101FB32B8 = sub_10060E324;
    unk_101FB32C0 = sub_10060E324;
    qword_101FB32A8 = sub_10060E324;
    unk_101FB32B0 = sub_10060E324;
    qword_101FB32A0 = sub_10060E324;
    qword_101FB3288 = sub_10060E324;
    qword_101FB3270 = sub_10060E324;
    unk_101FB3278 = sub_10060E324;
    qword_101FB3260 = sub_10060E324;
    *algn_101FB3268 = sub_10060E324;
    qword_101FB3298 = sub_10060E32C;
    qword_101FB3290 = sub_10060E430;
    qword_101FB3280 = sub_10060E534;
  }
}

void sub_10060FF20()
{
  if ((byte_101FB3340 & 1) == 0)
  {
    byte_101FB3340 = 1;
    qword_101FB3330 = sub_10060EE84;
    unk_101FB3338 = sub_10060EE84;
    qword_101FB3320 = sub_10060EE84;
    unk_101FB3328 = sub_10060EE84;
    qword_101FB3318 = sub_10060EE84;
    qword_101FB3300 = sub_10060EE84;
    qword_101FB32E8 = sub_10060EE84;
    unk_101FB32F0 = sub_10060EE84;
    qword_101FB32D8 = sub_10060EE84;
    unk_101FB32E0 = sub_10060EE84;
    qword_101FB3310 = sub_10060EE8C;
    qword_101FB3308 = sub_10060EF8C;
    qword_101FB32F8 = sub_10060F08C;
  }
}

const char *sub_10060FF94(int a1)
{
  v1 = "";
  if (a1 == 1)
  {
    v1 = "Active";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Disabled";
  }
}

const char *sub_10060FFC0(unsigned int a1)
{
  if (a1 > 2)
  {
    return "";
  }

  else
  {
    return off_101E6A5B0[a1];
  }
}

const char *sub_10060FFE4(int a1)
{
  v1 = "Good";
  if (a1 == -1)
  {
    v1 = "Incomplete";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Pending";
  }
}

const char *sub_100610010(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101E6A5C8[a1];
  }
}

const void **sub_100610034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v32 = Mutable;
  if (*(a1 + 56) == 1)
  {
    v5 = Mutable;
    if (*(a1 + 55) < 0)
    {
      sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
    }

    else
    {
      *__p = *(a1 + 32);
      v30 = *(a1 + 48);
    }

    if (SHIBYTE(v30) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v35 = v30;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v33;
      v33 = v38;
      v39 = v6;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"organization", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v7 = v32;
    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(v27, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *v27 = *(a1 + 64);
      v28 = *(a1 + 80);
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(&__dst, v27[0], v27[1]);
    }

    else
    {
      __dst = *v27;
      v35 = v28;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v33;
      v33 = v38;
      v39 = v8;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v7, @"department", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  if (*(a1 + 120) == 1)
  {
    v9 = v32;
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(v25, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      *v25 = *(a1 + 96);
      v26 = *(a1 + 112);
    }

    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(&__dst, v25[0], v25[1]);
    }

    else
    {
      __dst = *v25;
      v35 = v26;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v33;
      v33 = v38;
      v39 = v10;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v9, @"city", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v11 = v32;
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(v23, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      *v23 = *(a1 + 128);
      v24 = *(a1 + 144);
    }

    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&__dst, v23[0], v23[1]);
    }

    else
    {
      __dst = *v23;
      v35 = v24;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v33;
      v33 = v38;
      v39 = v12;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v11, @"state", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  if (*(a1 + 184) == 1)
  {
    v13 = v32;
    if (*(a1 + 183) < 0)
    {
      sub_100005F2C(v21, *(a1 + 160), *(a1 + 168));
    }

    else
    {
      *v21 = *(a1 + 160);
      v22 = *(a1 + 176);
    }

    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&__dst, v21[0], v21[1]);
    }

    else
    {
      __dst = *v21;
      v35 = v22;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v14 = v33;
      v33 = v38;
      v39 = v14;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v13, @"country", v31);
    sub_100005978(&v31);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v15 = v32;
    if (*(a1 + 215) < 0)
    {
      sub_100005F2C(v19, *(a1 + 192), *(a1 + 200));
    }

    else
    {
      *v19 = *(a1 + 192);
      v20 = *(a1 + 208);
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(&__dst, v19[0], v19[1]);
    }

    else
    {
      __dst = *v19;
      v35 = v20;
    }

    v33 = 0;
    if (SHIBYTE(v35) < 0)
    {
      sub_100005F2C(&v36, __dst, *(&__dst + 1));
    }

    else
    {
      v36 = __dst;
      v37 = v35;
    }

    v38 = 0;
    if (ctu::cf::convert_copy())
    {
      v16 = v33;
      v33 = v38;
      v39 = v16;
      sub_100005978(&v39);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    v17 = v33;
    v31 = v33;
    v33 = 0;
    sub_100005978(&v33);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v15, @"email", v17);
    sub_100005978(&v31);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  sub_100010180(a2, &v32);
  return sub_1000296E0(&v32);
}

void sub_1006107A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_100005978((v49 - 120));
  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v49 - 128));
  _Unwind_Resume(a1);
}

void sub_1006109FC(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"organization");
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 56))
      {
        if (*(a1 + 55) < 0)
        {
          operator delete(*(a1 + 32));
        }

        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 47) = 0;
        *(a1 + 55) = 0;
      }

      else
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 47) = 0;
        *(a1 + 55) = 0;
        *(a1 + 56) = 1;
      }
    }
  }

  v6 = CFDictionaryGetValue(theDict, @"department");
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 88))
      {
        if (*(a1 + 87) < 0)
        {
          operator delete(*(a1 + 64));
        }

        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 79) = 0;
        *(a1 + 87) = 0;
      }

      else
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 79) = 0;
        *(a1 + 87) = 0;
        *(a1 + 88) = 1;
      }
    }
  }

  v8 = CFDictionaryGetValue(theDict, @"city");
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 120))
      {
        if (*(a1 + 119) < 0)
        {
          operator delete(*(a1 + 96));
        }

        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 111) = 0;
        *(a1 + 119) = 0;
      }

      else
      {
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 111) = 0;
        *(a1 + 119) = 0;
        *(a1 + 120) = 1;
      }
    }
  }

  v10 = CFDictionaryGetValue(theDict, @"state");
  if (v10)
  {
    v11 = CFGetTypeID(v10);
    if (v11 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 152))
      {
        if (*(a1 + 151) < 0)
        {
          operator delete(*(a1 + 128));
        }

        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        *(a1 + 143) = 0;
        *(a1 + 151) = 0;
      }

      else
      {
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        *(a1 + 143) = 0;
        *(a1 + 151) = 0;
        *(a1 + 152) = 1;
      }
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"country");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 184))
      {
        if (*(a1 + 183) < 0)
        {
          operator delete(*(a1 + 160));
        }

        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 175) = 0;
        *(a1 + 183) = 0;
      }

      else
      {
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 175) = 0;
        *(a1 + 183) = 0;
        *(a1 + 184) = 1;
      }
    }
  }

  v14 = CFDictionaryGetValue(theDict, @"email");
  if (v14)
  {
    v15 = CFGetTypeID(v14);
    if (v15 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 216))
      {
        if (*(a1 + 215) < 0)
        {
          operator delete(*(a1 + 192));
        }

        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        *(a1 + 207) = 0;
        *(a1 + 215) = 0;
      }

      else
      {
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        *(a1 + 207) = 0;
        *(a1 + 215) = 0;
        *(a1 + 216) = 1;
      }
    }
  }
}

void sub_100610E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100610E6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = v22;
    v22 = Mutable;
    *&v26 = v5;
    sub_1000296E0(&v26);
  }

  if (*(a1 + 120) == 1)
  {
    v6 = v22;
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      *__dst = *(a1 + 96);
      v20 = *(a1 + 112);
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v25 = v20;
    }

    v23 = 0;
    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(&v26, __p[0], __p[1]);
    }

    else
    {
      v26 = *__p;
      v27 = v25;
    }

    v28 = 0;
    if (ctu::cf::convert_copy())
    {
      v7 = v23;
      v23 = v28;
      v29 = v7;
      sub_100005978(&v29);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    value = v23;
    v23 = 0;
    sub_100005978(&v23);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v6, @"connectivity-auth-type", value);
    sub_100005978(&value);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (*(a1 + 448) == 1)
  {
    v8 = v22;
    sub_100610034(a1 + 224, &v26);
    CFDictionaryAddValue(v8, @"certificate-info", v26);
    sub_10001021C(&v26);
  }

  if (*(a1 + 184) == 1)
  {
    v9 = v22;
    if (*(a1 + 183) < 0)
    {
      sub_100005F2C(v17, *(a1 + 160), *(a1 + 168));
    }

    else
    {
      *v17 = *(a1 + 160);
      v18 = *(a1 + 176);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, v17[0], v17[1]);
    }

    else
    {
      *__p = *v17;
      v25 = v18;
    }

    v23 = 0;
    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(&v26, __p[0], __p[1]);
    }

    else
    {
      v26 = *__p;
      v27 = v25;
    }

    v28 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v23;
      v23 = v28;
      v29 = v10;
      sub_100005978(&v29);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    value = v23;
    v23 = 0;
    sub_100005978(&v23);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v9, @"gateway-address", value);
    sub_100005978(&value);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v11 = v22;
    if (*(a1 + 215) < 0)
    {
      sub_100005F2C(v15, *(a1 + 192), *(a1 + 200));
    }

    else
    {
      *v15 = *(a1 + 192);
      v16 = *(a1 + 208);
    }

    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(__p, v15[0], v15[1]);
    }

    else
    {
      *__p = *v15;
      v25 = v16;
    }

    v23 = 0;
    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(&v26, __p[0], __p[1]);
    }

    else
    {
      v26 = *__p;
      v27 = v25;
    }

    v28 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v23;
      v23 = v28;
      v29 = v12;
      sub_100005978(&v29);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    v13 = v23;
    value = v23;
    v23 = 0;
    sub_100005978(&v23);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v11, @"entitlement-server-address", v13);
    sub_100005978(&value);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }
  }

  sub_100010180(a2, &v22);
  return sub_1000296E0(&v22);
}

void sub_10061129C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, const void *a31, const void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a31);
  _Unwind_Resume(a1);
}

void sub_1006113E8(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"connectivity-auth-type");
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      memset(v23, 0, 24);
      ctu::cf::assign();
      v36[0] = 0;
      *(v36 + 7) = 0;
      if (*(a1 + 120))
      {
        if (*(a1 + 119) < 0)
        {
          operator delete(*(a1 + 96));
        }

        v6 = v36[0];
        *(a1 + 96) = 0;
        *(a1 + 104) = v6;
        *(a1 + 111) = *(v36 + 7);
        *(a1 + 119) = 0;
      }

      else
      {
        v7 = v36[0];
        *(a1 + 96) = 0;
        *(a1 + 104) = v7;
        *(a1 + 111) = *(v36 + 7);
        *(a1 + 119) = 0;
        *(a1 + 120) = 1;
      }
    }
  }

  v8 = CFDictionaryGetValue(theDict, @"certificate-info");
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDictionaryGetTypeID())
    {
      *__p = 0u;
      v35 = 0u;
      *v32 = 0u;
      v33 = 0u;
      *v30 = 0u;
      v31 = 0u;
      *v28 = 0u;
      v29 = 0u;
      *v26 = 0u;
      v27 = 0u;
      *v24 = 0u;
      v25 = 0u;
      memset(v23, 0, sizeof(v23));
      sub_10055DF64(a1 + 224, v23);
      if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
      {
        operator delete(__p[0]);
      }

      if (BYTE8(v33) == 1 && SBYTE7(v33) < 0)
      {
        operator delete(v32[0]);
      }

      if (BYTE8(v31) == 1 && SBYTE7(v31) < 0)
      {
        operator delete(v30[0]);
      }

      if (BYTE8(v29) == 1 && SBYTE7(v29) < 0)
      {
        operator delete(v28[0]);
      }

      if (BYTE8(v27) == 1 && SBYTE7(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
      {
        operator delete(v24[0]);
      }

      if (v23[1].n128_u8[8] == 1 && v23[1].n128_i8[7] < 0)
      {
        operator delete(v23[0].n128_u64[0]);
      }

      sub_1006109FC(a1 + 224, v9);
    }
  }

  v11 = CFDictionaryGetValue(theDict, @"gateway-address");
  if (v11)
  {
    v12 = CFGetTypeID(v11);
    if (v12 == CFStringGetTypeID())
    {
      memset(v23, 0, 24);
      ctu::cf::assign();
      v36[0] = v23[0].n128_u64[1];
      v13 = v23[0].n128_u64[0];
      *(v36 + 7) = *(&v23[0].n128_u64[1] + 7);
      v14 = v23[1].n128_u8[7];
      if (*(a1 + 184))
      {
        if (*(a1 + 183) < 0)
        {
          operator delete(*(a1 + 160));
        }

        v15 = v36[0];
        *(a1 + 160) = v13;
        *(a1 + 168) = v15;
        *(a1 + 175) = *(v36 + 7);
        *(a1 + 183) = v14;
      }

      else
      {
        v16 = v36[0];
        *(a1 + 160) = v23[0].n128_u64[0];
        *(a1 + 168) = v16;
        *(a1 + 175) = *(v36 + 7);
        *(a1 + 183) = v14;
        *(a1 + 184) = 1;
      }
    }
  }

  v17 = CFDictionaryGetValue(theDict, @"entitlement-server-address");
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 == CFStringGetTypeID())
    {
      memset(v23, 0, 24);
      ctu::cf::assign();
      v36[0] = v23[0].n128_u64[1];
      v19 = v23[0].n128_u64[0];
      *(v36 + 7) = *(&v23[0].n128_u64[1] + 7);
      v20 = v23[1].n128_u8[7];
      if (*(a1 + 216))
      {
        if (*(a1 + 215) < 0)
        {
          operator delete(*(a1 + 192));
        }

        v21 = v36[0];
        *(a1 + 192) = v19;
        *(a1 + 200) = v21;
        *(a1 + 207) = *(v36 + 7);
        *(a1 + 215) = v20;
      }

      else
      {
        v22 = v36[0];
        *(a1 + 192) = v23[0].n128_u64[0];
        *(a1 + 200) = v22;
        *(a1 + 207) = *(v36 + 7);
        *(a1 + 215) = v20;
        *(a1 + 216) = 1;
      }
    }
  }
}

void sub_100611768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1006117A4@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v40 = Mutable;
  if (*(a1 + 24) == 1)
  {
    v5 = Mutable;
    if (*(a1 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a1, *(a1 + 1));
    }

    else
    {
      __dst = *a1;
      v38 = *(a1 + 2);
    }

    if (SHIBYTE(v38) < 0)
    {
      sub_100005F2C(&v42, __dst, *(&__dst + 1));
    }

    else
    {
      v42 = __dst;
      v43 = v38;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v41;
      v41 = v46;
      v47 = v6;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v5, @"csr", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__dst);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v7 = v40;
    if (*(a1 + 55) < 0)
    {
      sub_100005F2C(__p, *(a1 + 4), *(a1 + 5));
    }

    else
    {
      *__p = a1[2];
      v36 = *(a1 + 6);
    }

    if (SHIBYTE(v36) < 0)
    {
      sub_100005F2C(&v42, __p[0], __p[1]);
    }

    else
    {
      v42 = *__p;
      v43 = v36;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v41;
      v41 = v46;
      v47 = v8;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v7, @"sip-uri", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 88) == 1)
  {
    v9 = v40;
    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(v33, *(a1 + 8), *(a1 + 9));
    }

    else
    {
      *v33 = a1[4];
      v34 = *(a1 + 10);
    }

    if (SHIBYTE(v34) < 0)
    {
      sub_100005F2C(&v42, v33[0], v33[1]);
    }

    else
    {
      v42 = *v33;
      v43 = v34;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v41;
      v41 = v46;
      v47 = v10;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v9, @"apn", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }
  }

  if (*(a1 + 120) == 1)
  {
    v11 = v40;
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(v31, *(a1 + 12), *(a1 + 13));
    }

    else
    {
      *v31 = a1[6];
      v32 = *(a1 + 14);
    }

    if (SHIBYTE(v32) < 0)
    {
      sub_100005F2C(&v42, v31[0], v31[1]);
    }

    else
    {
      v42 = *v31;
      v43 = v32;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v41;
      v41 = v46;
      v47 = v12;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v11, @"username", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  if (*(a1 + 152) == 1)
  {
    v13 = v40;
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(v29, *(a1 + 16), *(a1 + 17));
    }

    else
    {
      *v29 = a1[8];
      v30 = *(a1 + 18);
    }

    if (SHIBYTE(v30) < 0)
    {
      sub_100005F2C(&v42, v29[0], v29[1]);
    }

    else
    {
      v42 = *v29;
      v43 = v30;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v14 = v41;
      v41 = v46;
      v47 = v14;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v13, @"password", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (*(a1 + 184) == 1)
  {
    v15 = v40;
    if (*(a1 + 183) < 0)
    {
      sub_100005F2C(v27, *(a1 + 20), *(a1 + 21));
    }

    else
    {
      *v27 = a1[10];
      v28 = *(a1 + 22);
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(&v42, v27[0], v27[1]);
    }

    else
    {
      v42 = *v27;
      v43 = v28;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v16 = v41;
      v41 = v46;
      v47 = v16;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v15, @"imsi", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v17 = v40;
    if (*(a1 + 215) < 0)
    {
      sub_100005F2C(v25, *(a1 + 24), *(a1 + 25));
    }

    else
    {
      *v25 = a1[12];
      v26 = *(a1 + 26);
    }

    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(&v42, v25[0], v25[1]);
    }

    else
    {
      v42 = *v25;
      v43 = v26;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v18 = v41;
      v41 = v46;
      v47 = v18;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v17, @"impu", v39);
    sub_100005978(&v39);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (*(a1 + 248) == 1)
  {
    v19 = v40;
    if (*(a1 + 247) < 0)
    {
      sub_100005F2C(v23, *(a1 + 28), *(a1 + 29));
    }

    else
    {
      *v23 = a1[14];
      v24 = *(a1 + 30);
    }

    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&v42, v23[0], v23[1]);
    }

    else
    {
      v42 = *v23;
      v43 = v24;
    }

    v41 = 0;
    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&v44, v42, *(&v42 + 1));
    }

    else
    {
      v44 = v42;
      v45 = v43;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v20 = v41;
      v41 = v46;
      v47 = v20;
      sub_100005978(&v47);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v21 = v41;
    v39 = v41;
    v41 = 0;
    sub_100005978(&v41);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    CFDictionaryAddValue(v19, @"pcscf-address", v21);
    sub_100005978(&v39);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  sub_100010180(a2, &v40);
  return sub_1000296E0(&v40);
}

void sub_10061216C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  sub_100005978((v56 - 120));
  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v56 - 128));
  _Unwind_Resume(a1);
}

void sub_100612484(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"csr");
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 24))
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 15) = 0;
        *(a1 + 23) = 0;
      }

      else
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 15) = 0;
        *(a1 + 23) = 0;
        *(a1 + 24) = 1;
      }
    }
  }

  v6 = CFDictionaryGetValue(theDict, @"sip-uri");
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 56))
      {
        if (*(a1 + 55) < 0)
        {
          operator delete(*(a1 + 32));
        }

        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 47) = 0;
        *(a1 + 55) = 0;
      }

      else
      {
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 47) = 0;
        *(a1 + 55) = 0;
        *(a1 + 56) = 1;
      }
    }
  }

  v8 = CFDictionaryGetValue(theDict, @"apn");
  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 88))
      {
        if (*(a1 + 87) < 0)
        {
          operator delete(*(a1 + 64));
        }

        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 79) = 0;
        *(a1 + 87) = 0;
      }

      else
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 79) = 0;
        *(a1 + 87) = 0;
        *(a1 + 88) = 1;
      }
    }
  }

  v10 = CFDictionaryGetValue(theDict, @"username");
  if (v10)
  {
    v11 = CFGetTypeID(v10);
    if (v11 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 120))
      {
        if (*(a1 + 119) < 0)
        {
          operator delete(*(a1 + 96));
        }

        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 111) = 0;
        *(a1 + 119) = 0;
      }

      else
      {
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 111) = 0;
        *(a1 + 119) = 0;
        *(a1 + 120) = 1;
      }
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"password");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 152))
      {
        if (*(a1 + 151) < 0)
        {
          operator delete(*(a1 + 128));
        }

        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        *(a1 + 143) = 0;
        *(a1 + 151) = 0;
      }

      else
      {
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        *(a1 + 143) = 0;
        *(a1 + 151) = 0;
        *(a1 + 152) = 1;
      }
    }
  }

  v14 = CFDictionaryGetValue(theDict, @"imsi");
  if (v14)
  {
    v15 = CFGetTypeID(v14);
    if (v15 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 184))
      {
        if (*(a1 + 183) < 0)
        {
          operator delete(*(a1 + 160));
        }

        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 175) = 0;
        *(a1 + 183) = 0;
      }

      else
      {
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 175) = 0;
        *(a1 + 183) = 0;
        *(a1 + 184) = 1;
      }
    }
  }

  v16 = CFDictionaryGetValue(theDict, @"impu");
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    if (v17 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 216))
      {
        if (*(a1 + 215) < 0)
        {
          operator delete(*(a1 + 192));
        }

        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        *(a1 + 207) = 0;
        *(a1 + 215) = 0;
      }

      else
      {
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        *(a1 + 207) = 0;
        *(a1 + 215) = 0;
        *(a1 + 216) = 1;
      }
    }
  }

  v18 = CFDictionaryGetValue(theDict, @"pcscf-address");
  if (v18)
  {
    v19 = CFGetTypeID(v18);
    if (v19 == CFStringGetTypeID())
    {
      ctu::cf::assign();
      if (*(a1 + 248))
      {
        if (*(a1 + 247) < 0)
        {
          operator delete(*(a1 + 224));
        }

        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        *(a1 + 239) = 0;
        *(a1 + 247) = 0;
      }

      else
      {
        *(a1 + 224) = 0;
        *(a1 + 232) = 0;
        *(a1 + 239) = 0;
        *(a1 + 247) = 0;
        *(a1 + 248) = 1;
      }
    }
  }
}

void sub_100612A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100612A44(uint64_t a1@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  *a2 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (Mutable)
  {
    *a2 = Mutable;
    *&v23 = 0;
    sub_1000296E0(&v23);
  }

  if (*(a1 + 256) == 1)
  {
    sub_1006117A4(a1, &v23);
    CFDictionaryAddValue(v5, @"imsIndividualCredentials", v23);
    sub_10001021C(&v23);
  }

  if (*(a1 + 288) == 1)
  {
    if (*(a1 + 287) < 0)
    {
      sub_100005F2C(__p, *(a1 + 264), *(a1 + 272));
    }

    else
    {
      *__p = *(a1 + 264);
      v18 = *(a1 + 280);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v22 = v18;
    }

    v20 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&v23, __dst, *(&__dst + 1));
    }

    else
    {
      v23 = __dst;
      v24 = v22;
    }

    v25 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v20;
      v20 = v25;
      v26 = v6;
      sub_100005978(&v26);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    value = v20;
    v20 = 0;
    sub_100005978(&v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"token", value);
    sub_100005978(&value);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 320) == 1)
  {
    if (*(a1 + 319) < 0)
    {
      sub_100005F2C(v15, *(a1 + 296), *(a1 + 304));
    }

    else
    {
      *v15 = *(a1 + 296);
      v16 = *(a1 + 312);
    }

    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(&__dst, v15[0], v15[1]);
    }

    else
    {
      __dst = *v15;
      v22 = v16;
    }

    v20 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&v23, __dst, *(&__dst + 1));
    }

    else
    {
      v23 = __dst;
      v24 = v22;
    }

    v25 = 0;
    if (ctu::cf::convert_copy())
    {
      v7 = v20;
      v20 = v25;
      v26 = v7;
      sub_100005978(&v26);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    value = v20;
    v20 = 0;
    sub_100005978(&v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"subscriberId", value);
    sub_100005978(&value);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }
  }

  if (*(a1 + 352) == 1)
  {
    if (*(a1 + 351) < 0)
    {
      sub_100005F2C(v13, *(a1 + 328), *(a1 + 336));
    }

    else
    {
      *v13 = *(a1 + 328);
      v14 = *(a1 + 344);
    }

    if (SHIBYTE(v14) < 0)
    {
      sub_100005F2C(&__dst, v13[0], v13[1]);
    }

    else
    {
      __dst = *v13;
      v22 = v14;
    }

    v20 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&v23, __dst, *(&__dst + 1));
    }

    else
    {
      v23 = __dst;
      v24 = v22;
    }

    v25 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v20;
      v20 = v25;
      v26 = v8;
      sub_100005978(&v26);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    value = v20;
    v20 = 0;
    sub_100005978(&v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"gatewayUsername", value);
    sub_100005978(&value);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  if (*(a1 + 384) == 1)
  {
    if (*(a1 + 383) < 0)
    {
      sub_100005F2C(v11, *(a1 + 360), *(a1 + 368));
    }

    else
    {
      *v11 = *(a1 + 360);
      v12 = *(a1 + 376);
    }

    if (SHIBYTE(v12) < 0)
    {
      sub_100005F2C(&__dst, v11[0], v11[1]);
    }

    else
    {
      __dst = *v11;
      v22 = v12;
    }

    v20 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(&v23, __dst, *(&__dst + 1));
    }

    else
    {
      v23 = __dst;
      v24 = v22;
    }

    v25 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = v20;
      v20 = v25;
      v26 = v9;
      sub_100005978(&v26);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    v10 = v20;
    value = v20;
    v20 = 0;
    sub_100005978(&v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v5, @"gatewayPassword", v10);
    sub_100005978(&value);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }
}

void sub_100612F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, int a38, const void *a39)
{
  sub_100005978(&a39);
  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(v39);
  _Unwind_Resume(a1);
}

void sub_100613124(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"imsIndividualCredentials");
  if (Value)
  {
    v5 = Value;
    memset(v30, 0, sizeof(v30));
    sub_1006134DC(a1, v30);
    sub_100221F4C(v30);
    sub_100612484(a1, v5);
  }

  v6 = CFDictionaryGetValue(theDict, @"token");
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFStringGetTypeID())
    {
      memset(v30, 0, 24);
      ctu::cf::assign();
      v31[0] = *(&v30[0] + 1);
      v8 = *&v30[0];
      *(v31 + 7) = *(v30 + 15);
      v9 = BYTE7(v30[1]);
      if (*(a1 + 288))
      {
        if (*(a1 + 287) < 0)
        {
          operator delete(*(a1 + 264));
        }

        v10 = v31[0];
        *(a1 + 264) = v8;
        *(a1 + 272) = v10;
        *(a1 + 279) = *(v31 + 7);
        *(a1 + 287) = v9;
      }

      else
      {
        v11 = v31[0];
        *(a1 + 264) = *&v30[0];
        *(a1 + 272) = v11;
        *(a1 + 279) = *(v31 + 7);
        *(a1 + 287) = v9;
        *(a1 + 288) = 1;
      }
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"subscriberId");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFStringGetTypeID())
    {
      memset(v30, 0, 24);
      ctu::cf::assign();
      v31[0] = *(&v30[0] + 1);
      v14 = *&v30[0];
      *(v31 + 7) = *(v30 + 15);
      v15 = BYTE7(v30[1]);
      if (*(a1 + 320))
      {
        if (*(a1 + 319) < 0)
        {
          operator delete(*(a1 + 296));
        }

        v16 = v31[0];
        *(a1 + 296) = v14;
        *(a1 + 304) = v16;
        *(a1 + 311) = *(v31 + 7);
        *(a1 + 319) = v15;
      }

      else
      {
        v17 = v31[0];
        *(a1 + 296) = *&v30[0];
        *(a1 + 304) = v17;
        *(a1 + 311) = *(v31 + 7);
        *(a1 + 319) = v15;
        *(a1 + 320) = 1;
      }
    }
  }

  v18 = CFDictionaryGetValue(theDict, @"gatewayUsername");
  if (v18)
  {
    v19 = CFGetTypeID(v18);
    if (v19 == CFStringGetTypeID())
    {
      memset(v30, 0, 24);
      ctu::cf::assign();
      v31[0] = *(&v30[0] + 1);
      v20 = *&v30[0];
      *(v31 + 7) = *(v30 + 15);
      v21 = BYTE7(v30[1]);
      if (*(a1 + 352))
      {
        if (*(a1 + 351) < 0)
        {
          operator delete(*(a1 + 328));
        }

        v22 = v31[0];
        *(a1 + 328) = v20;
        *(a1 + 336) = v22;
        *(a1 + 343) = *(v31 + 7);
        *(a1 + 351) = v21;
      }

      else
      {
        v23 = v31[0];
        *(a1 + 328) = *&v30[0];
        *(a1 + 336) = v23;
        *(a1 + 343) = *(v31 + 7);
        *(a1 + 351) = v21;
        *(a1 + 352) = 1;
      }
    }
  }

  v24 = CFDictionaryGetValue(theDict, @"gatewayPassword");
  if (v24)
  {
    v25 = CFGetTypeID(v24);
    if (v25 == CFStringGetTypeID())
    {
      memset(v30, 0, 24);
      ctu::cf::assign();
      v31[0] = *(&v30[0] + 1);
      v26 = *&v30[0];
      *(v31 + 7) = *(v30 + 15);
      v27 = BYTE7(v30[1]);
      if (*(a1 + 384))
      {
        if (*(a1 + 383) < 0)
        {
          operator delete(*(a1 + 360));
        }

        v28 = v31[0];
        *(a1 + 360) = v26;
        *(a1 + 368) = v28;
        *(a1 + 375) = *(v31 + 7);
        *(a1 + 383) = v27;
      }

      else
      {
        v29 = v31[0];
        *(a1 + 360) = *&v30[0];
        *(a1 + 368) = v29;
        *(a1 + 375) = *(v31 + 7);
        *(a1 + 383) = v27;
        *(a1 + 384) = 1;
      }
    }
  }
}

void sub_10061349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006134DC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 256) == 1)
  {
    sub_100616810(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
      *(a2 + 8) = 0uLL;
      *a2 = 0;
      *(a1 + 24) = 1;
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    if (*(a2 + 56) == 1)
    {
      v4 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v4;
      *(a2 + 40) = 0uLL;
      *(a2 + 4) = 0;
      *(a1 + 56) = 1;
    }

    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
    if (*(a2 + 88) == 1)
    {
      v5 = a2[4];
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 64) = v5;
      *(a2 + 72) = 0uLL;
      *(a2 + 8) = 0;
      *(a1 + 88) = 1;
    }

    *(a1 + 96) = 0;
    *(a1 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      v6 = a2[6];
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 96) = v6;
      *(a2 + 104) = 0uLL;
      *(a2 + 12) = 0;
      *(a1 + 120) = 1;
    }

    *(a1 + 128) = 0;
    *(a1 + 152) = 0;
    if (*(a2 + 152) == 1)
    {
      v7 = a2[8];
      *(a1 + 144) = *(a2 + 18);
      *(a1 + 128) = v7;
      *(a2 + 136) = 0uLL;
      *(a2 + 16) = 0;
      *(a1 + 152) = 1;
    }

    *(a1 + 160) = 0;
    *(a1 + 184) = 0;
    if (*(a2 + 184) == 1)
    {
      v8 = a2[10];
      *(a1 + 176) = *(a2 + 22);
      *(a1 + 160) = v8;
      *(a2 + 168) = 0uLL;
      *(a2 + 20) = 0;
      *(a1 + 184) = 1;
    }

    *(a1 + 192) = 0;
    *(a1 + 216) = 0;
    if (*(a2 + 216) == 1)
    {
      v9 = a2[12];
      *(a1 + 208) = *(a2 + 26);
      *(a1 + 192) = v9;
      *(a2 + 200) = 0uLL;
      *(a2 + 24) = 0;
      *(a1 + 216) = 1;
    }

    *(a1 + 224) = 0;
    *(a1 + 248) = 0;
    if (*(a2 + 248) == 1)
    {
      v10 = a2[14];
      *(a1 + 240) = *(a2 + 30);
      *(a1 + 224) = v10;
      *(a2 + 232) = 0uLL;
      *(a2 + 28) = 0;
      *(a1 + 248) = 1;
    }

    *(a1 + 256) = 1;
  }

  return a1;
}

uint64_t *IMSInfo::serialize@<X0>(uint64_t *__return_ptr a1@<X8>, IMSInfo *this@<X0>)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (*(this + 23) < 0)
  {
    v5 = *(this + 1);
    if (!v5)
    {
      goto LABEL_20;
    }

    sub_100005F2C(&__dst, *this, v5);
  }

  else
  {
    if (!*(this + 23))
    {
      goto LABEL_20;
    }

    __dst = *this;
    v56 = *(this + 2);
  }

  if (SHIBYTE(v56) < 0)
  {
    sub_100005F2C(&v59, __dst, *(&__dst + 1));
  }

  else
  {
    v59 = __dst;
    v60 = v56;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v58;
    v58 = v63;
    v64 = v6;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"imsi", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst);
  }

LABEL_20:
  if (*(this + 47) < 0)
  {
    v7 = *(this + 4);
    if (!v7)
    {
      goto LABEL_39;
    }

    sub_100005F2C(__p, *(this + 3), v7);
  }

  else
  {
    if (!*(this + 47))
    {
      goto LABEL_39;
    }

    *__p = *(this + 24);
    v54 = *(this + 5);
  }

  if (SHIBYTE(v54) < 0)
  {
    sub_100005F2C(&v59, __p[0], __p[1]);
  }

  else
  {
    v59 = *__p;
    v60 = v54;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v58;
    v58 = v63;
    v64 = v8;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"impi", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v9 = *(this + 7) - *(this + 6);
  if (v9)
  {
    v63 = 0;
    v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0xAAAAAAAAAAAAAAABLL * (v9 >> 3), &kCFTypeArrayCallBacks);
    v63 = v10;
    v12 = *(this + 6);
    if (*(this + 7) == v12)
    {
      v18 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = (v12 + v13);
        if (*(v12 + v13 + 23) < 0)
        {
          v15 = *v15;
        }

        v16 = v63;
        v64 = 0;
        *&v59 = 0;
        if (ctu::cf::convert_copy(&v59, v15, 0x8000100, kCFAllocatorDefault, v11))
        {
          v17 = v64;
          v64 = v59;
          *&valuePtr = v17;
          sub_100005978(&valuePtr);
        }

        v58 = v64;
        v64 = 0;
        sub_100005978(&v64);
        CFArrayAppendValue(v16, v58);
        sub_100005978(&v58);
        ++v14;
        v12 = *(this + 6);
        v13 += 24;
      }

      while (v14 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v12) >> 3));
      v18 = v63;
    }

    CFDictionaryAddValue(Mutable, @"impuList", v18);
    sub_1000279DC(&v63);
  }

  if (*(this + 95) < 0)
  {
    v19 = *(this + 10);
    if (!v19)
    {
      goto LABEL_69;
    }

    sub_100005F2C(v51, *(this + 9), v19);
  }

  else
  {
    if (!*(this + 95))
    {
      goto LABEL_69;
    }

    *v51 = *(this + 72);
    v52 = *(this + 11);
  }

  if (SHIBYTE(v52) < 0)
  {
    sub_100005F2C(&v59, v51[0], v51[1]);
  }

  else
  {
    v59 = *v51;
    v60 = v52;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v20 = v58;
    v58 = v63;
    v64 = v20;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"mdn", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

LABEL_69:
  if (*(this + 119) < 0)
  {
    v21 = *(this + 13);
    if (!v21)
    {
      goto LABEL_88;
    }

    sub_100005F2C(v49, *(this + 12), v21);
  }

  else
  {
    if (!*(this + 119))
    {
      goto LABEL_88;
    }

    *v49 = *(this + 6);
    v50 = *(this + 14);
  }

  if (SHIBYTE(v50) < 0)
  {
    sub_100005F2C(&v59, v49[0], v49[1]);
  }

  else
  {
    v59 = *v49;
    v60 = v50;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v22 = v58;
    v58 = v63;
    v64 = v22;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"realm", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

LABEL_88:
  if (*(this + 143) < 0)
  {
    v23 = *(this + 16);
    if (!v23)
    {
      goto LABEL_107;
    }

    sub_100005F2C(v47, *(this + 15), v23);
  }

  else
  {
    if (!*(this + 143))
    {
      goto LABEL_107;
    }

    *v47 = *(this + 120);
    v48 = *(this + 17);
  }

  if (SHIBYTE(v48) < 0)
  {
    sub_100005F2C(&v59, v47[0], v47[1]);
  }

  else
  {
    v59 = *v47;
    v60 = v48;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v24 = v58;
    v58 = v63;
    v64 = v24;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"apn", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

LABEL_107:
  v25 = *(this + 36);
  *&v59 = 0;
  *&valuePtr = v25;
  v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v26)
  {
    v27 = v59;
    *&v59 = v26;
    *&valuePtr = v27;
    sub_100029A48(&valuePtr);
  }

  v64 = v59;
  *&v59 = 0;
  sub_100029A48(&v59);
  CFDictionaryAddValue(Mutable, @"ipVer", v64);
  sub_100029A48(&v64);
  if (*(this + 175) < 0)
  {
    v28 = *(this + 20);
    if (!v28)
    {
      goto LABEL_128;
    }

    sub_100005F2C(v45, *(this + 19), v28);
  }

  else
  {
    if (!*(this + 175))
    {
      goto LABEL_128;
    }

    *v45 = *(this + 152);
    v46 = *(this + 21);
  }

  if (SHIBYTE(v46) < 0)
  {
    sub_100005F2C(&v59, v45[0], v45[1]);
  }

  else
  {
    v59 = *v45;
    v60 = v46;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v29 = v58;
    v58 = v63;
    v64 = v29;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"password", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

LABEL_128:
  v30 = &kCFBooleanTrue;
  if (!*(this + 176))
  {
    v30 = &kCFBooleanFalse;
  }

  CFDictionaryAddValue(Mutable, @"allowNoDNS", *v30);
  if (*(this + 207) < 0)
  {
    v31 = *(this + 24);
    if (!v31)
    {
      goto LABEL_149;
    }

    sub_100005F2C(v43, *(this + 23), v31);
  }

  else
  {
    if (!*(this + 207))
    {
      goto LABEL_149;
    }

    *v43 = *(this + 184);
    v44 = *(this + 25);
  }

  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(&v59, v43[0], v43[1]);
  }

  else
  {
    v59 = *v43;
    v60 = v44;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v32 = v58;
    v58 = v63;
    v64 = v32;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"mcc", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

LABEL_149:
  if (*(this + 231) < 0)
  {
    v33 = *(this + 27);
    if (!v33)
    {
      goto LABEL_168;
    }

    sub_100005F2C(v41, *(this + 26), v33);
  }

  else
  {
    if (!*(this + 231))
    {
      goto LABEL_168;
    }

    *v41 = *(this + 13);
    v42 = *(this + 28);
  }

  if (SHIBYTE(v42) < 0)
  {
    sub_100005F2C(&v59, v41[0], v41[1]);
  }

  else
  {
    v59 = *v41;
    v60 = v42;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v34 = v58;
    v58 = v63;
    v64 = v34;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"isoMcc", v57);
  sub_100005978(&v57);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

LABEL_168:
  if (*(this + 255) < 0)
  {
    v35 = *(this + 30);
    if (!v35)
    {
      goto LABEL_187;
    }

    sub_100005F2C(v39, *(this + 29), v35);
  }

  else
  {
    if (!*(this + 255))
    {
      goto LABEL_187;
    }

    *v39 = *(this + 232);
    v40 = *(this + 31);
  }

  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(&v59, v39[0], v39[1]);
  }

  else
  {
    v59 = *v39;
    v60 = v40;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(&valuePtr, v59, *(&v59 + 1));
  }

  else
  {
    valuePtr = v59;
    v62 = v60;
  }

  v63 = 0;
  if (ctu::cf::convert_copy())
  {
    v36 = v58;
    v58 = v63;
    v64 = v36;
    sub_100005978(&v64);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(valuePtr);
  }

  v37 = v58;
  v57 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  CFDictionaryAddValue(Mutable, @"mnc", v37);
  sub_100005978(&v57);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

LABEL_187:
  *&valuePtr = Mutable;
  return sub_100424E40(a1, &valuePtr);
}

void sub_1006142F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_100005978((v63 - 168));
  if (*(v63 - 137) < 0)
  {
    operator delete(*(v63 - 160));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void IMSInfo::deserialize(IMSInfo *this, CFDictionaryRef theDict)
{
  v2 = theDict;
  CFDictionaryGetValue(theDict, @"imsi");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v62[0] = 0;
  *(v62 + 7) = 0;
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  v4 = v62[0];
  *this = 0;
  *(this + 1) = v4;
  *(this + 15) = *(v62 + 7);
  *(this + 23) = 0;
  CFDictionaryGetValue(v2, @"impi");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v62[0] = 0;
  *(v62 + 7) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v5 = v62[0];
  *(this + 3) = 0;
  *(this + 4) = v5;
  *(this + 39) = *(v62 + 7);
  *(this + 47) = 0;
  v6 = (this + 48);
  sub_100008764(this + 6);
  Value = CFDictionaryGetValue(v2, @"impuList");
  v8 = Value;
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFArrayGetTypeID() && CFArrayGetCount(v8) >= 1)
    {
      v10 = 0;
      v11 = v2;
      do
      {
        CFArrayGetValueAtIndex(v8, v10);
        v58 = 0;
        v59 = 0uLL;
        ctu::cf::assign();
        v62[0] = v59;
        *(v62 + 7) = *(&v59 + 7);
        v12 = HIBYTE(v59);
        v13 = *(this + 7);
        v14 = *(this + 8);
        if (v13 >= v14)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v6) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000CE3D4();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v6) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v18;
          }

          v61 = this + 48;
          if (v20)
          {
            sub_100005348(this + 48, v20);
          }

          v21 = 24 * v17;
          v22 = v62[0];
          *v21 = v58;
          *(v21 + 8) = v22;
          *(v21 + 15) = *(v62 + 7);
          *(v21 + 23) = v12;
          v16 = 24 * v17 + 24;
          v23 = *(this + 6);
          v24 = *(this + 7) - v23;
          v25 = v21 - v24;
          memcpy((v21 - v24), v23, v24);
          v26 = *(this + 6);
          *(this + 6) = v25;
          *(this + 7) = v16;
          v27 = *(this + 8);
          *(this + 8) = 0;
          *(&v59 + 1) = v26;
          v60 = v27;
          v58 = v26;
          *&v59 = v26;
          sub_1000054E0(&v58);
          v2 = v11;
        }

        else
        {
          v15 = v62[0];
          *v13 = v58;
          *(v13 + 8) = v15;
          *(v13 + 15) = *(v62 + 7);
          *(v13 + 23) = v12;
          v16 = v13 + 24;
        }

        *(this + 7) = v16;
        ++v10;
      }

      while (v10 < CFArrayGetCount(v8));
    }
  }

  CFDictionaryGetValue(v2, @"mdn");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v28 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v29 = HIBYTE(v59);
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v30 = v62[0];
  *(this + 9) = v28;
  *(this + 10) = v30;
  *(this + 87) = *(v62 + 7);
  *(this + 95) = v29;
  CFDictionaryGetValue(v2, @"realm");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v31 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v32 = HIBYTE(v59);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v33 = v62[0];
  *(this + 12) = v31;
  *(this + 13) = v33;
  *(this + 111) = *(v62 + 7);
  *(this + 119) = v32;
  CFDictionaryGetValue(v2, @"apn");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v34 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v35 = HIBYTE(v59);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v36 = v62[0];
  *(this + 15) = v34;
  *(this + 16) = v36;
  *(this + 135) = *(v62 + 7);
  *(this + 143) = v35;
  v37 = CFDictionaryGetValue(v2, @"ipVer");
  v38 = v37;
  LODWORD(v58) = 0;
  if (v37)
  {
    v39 = CFGetTypeID(v37);
    if (v39 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v58, v38, v40);
    }
  }

  *(this + 36) = v58;
  CFDictionaryGetValue(v2, @"password");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v41 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v42 = HIBYTE(v59);
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  v43 = v62[0];
  *(this + 19) = v41;
  *(this + 20) = v43;
  *(this + 167) = *(v62 + 7);
  *(this + 175) = v42;
  v44 = CFDictionaryGetValue(v2, @"allowNoDNS");
  v45 = v44;
  LOBYTE(v58) = 0;
  if (v44 && (v46 = CFGetTypeID(v44), v46 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v58, v45, v47);
    v48 = v58;
  }

  else
  {
    v48 = 0;
  }

  *(this + 176) = v48;
  CFDictionaryGetValue(v2, @"mcc");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v49 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v50 = HIBYTE(v59);
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  v51 = v62[0];
  *(this + 23) = v49;
  *(this + 24) = v51;
  *(this + 199) = *(v62 + 7);
  *(this + 207) = v50;
  CFDictionaryGetValue(v2, @"isoMcc");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v52 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v53 = HIBYTE(v59);
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v54 = v62[0];
  *(this + 26) = v52;
  *(this + 27) = v54;
  *(this + 223) = *(v62 + 7);
  *(this + 231) = v53;
  CFDictionaryGetValue(v2, @"mnc");
  v58 = 0;
  v59 = 0uLL;
  ctu::cf::assign();
  v55 = v58;
  v62[0] = v59;
  *(v62 + 7) = *(&v59 + 7);
  v56 = HIBYTE(v59);
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v57 = v62[0];
  *(this + 29) = v55;
  *(this + 30) = v57;
  *(this + 247) = *(v62 + 7);
  *(this + 255) = v56;
}

void sub_100614C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100614CC8(uint64_t a1, const __CFDictionary *a2)
{
  if (a2)
  {
    v61 = 0;
    *__p = 0u;
    v60 = 0u;
    *v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    *v54 = 0u;
    v51 = 0u;
    *v52 = 0u;
    memset(v50, 0, sizeof(v50));
    sub_1002B5320(a1, v50);
    if (v61 == 1 && SHIBYTE(v60) < 0)
    {
      operator delete(__p[1]);
    }

    if (LOBYTE(__p[0]) == 1 && SHIBYTE(v58) < 0)
    {
      operator delete(v57[1]);
    }

    if (BYTE8(v55) == 1 && SBYTE7(v55) < 0)
    {
      operator delete(v54[0]);
    }

    if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
    {
      operator delete(v52[0]);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[3]);
    }

    if (SHIBYTE(v50[2]) < 0)
    {
      operator delete(v50[0]);
    }

    Value = CFDictionaryGetValue(a2, @"displayName");
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v6 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v7 = HIBYTE(v50[2]);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v8 = v62[0];
        *a1 = v6;
        *(a1 + 8) = v8;
        *(a1 + 15) = *(v62 + 7);
        *(a1 + 23) = v7;
      }
    }

    v9 = CFDictionaryGetValue(a2, @"sipUserName");
    if (v9)
    {
      v10 = CFGetTypeID(v9);
      if (v10 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v11 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v12 = HIBYTE(v50[2]);
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        v13 = v62[0];
        *(a1 + 24) = v11;
        *(a1 + 32) = v13;
        *(a1 + 39) = *(v62 + 7);
        *(a1 + 47) = v12;
      }
    }

    v14 = CFDictionaryGetValue(a2, @"addressUpdateURL");
    if (v14)
    {
      v15 = CFGetTypeID(v14);
      if (v15 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v16 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v17 = HIBYTE(v50[2]);
        if (*(a1 + 72))
        {
          if (*(a1 + 71) < 0)
          {
            operator delete(*(a1 + 48));
          }

          v18 = v62[0];
          *(a1 + 48) = v16;
          *(a1 + 56) = v18;
          *(a1 + 63) = *(v62 + 7);
          *(a1 + 71) = v17;
        }

        else
        {
          v19 = v62[0];
          *(a1 + 48) = v50[0];
          *(a1 + 56) = v19;
          *(a1 + 63) = *(v62 + 7);
          *(a1 + 71) = v17;
          *(a1 + 72) = 1;
        }
      }
    }

    v20 = CFDictionaryGetValue(a2, @"addressUpdateToken");
    if (v20)
    {
      v21 = CFGetTypeID(v20);
      if (v21 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v22 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v23 = HIBYTE(v50[2]);
        if (*(a1 + 104))
        {
          if (*(a1 + 103) < 0)
          {
            operator delete(*(a1 + 80));
          }

          v24 = v62[0];
          *(a1 + 80) = v22;
          *(a1 + 88) = v24;
          *(a1 + 95) = *(v62 + 7);
          *(a1 + 103) = v23;
        }

        else
        {
          v25 = v62[0];
          *(a1 + 80) = v50[0];
          *(a1 + 88) = v25;
          *(a1 + 95) = *(v62 + 7);
          *(a1 + 103) = v23;
          *(a1 + 104) = 1;
        }
      }
    }

    v26 = CFDictionaryGetValue(a2, @"addressStatus");
    v27 = v26;
    if (v26)
    {
      v28 = CFGetTypeID(v26);
      if (v28 == CFNumberGetTypeID())
      {
        LODWORD(v50[0]) = 0;
        ctu::cf::assign(v50, v27, v29);
        *(a1 + 112) = v50[0];
        *(a1 + 116) = 1;
      }
    }

    v30 = CFDictionaryGetValue(a2, @"tcStatus");
    v31 = v30;
    if (v30)
    {
      v32 = CFGetTypeID(v30);
      if (v32 == CFNumberGetTypeID())
      {
        LODWORD(v50[0]) = 0;
        ctu::cf::assign(v50, v31, v33);
        *(a1 + 120) = v50[0];
        *(a1 + 124) = 1;
      }
    }

    v34 = CFDictionaryGetValue(a2, @"proviStatus");
    v35 = v34;
    if (v34)
    {
      v36 = CFGetTypeID(v34);
      if (v36 == CFNumberGetTypeID())
      {
        LODWORD(v50[0]) = 0;
        ctu::cf::assign(v50, v35, v37);
        *(a1 + 128) = v50[0];
        *(a1 + 132) = 1;
      }
    }

    v38 = CFDictionaryGetValue(a2, @"address-ref-id");
    if (v38)
    {
      v39 = CFGetTypeID(v38);
      if (v39 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v40 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v41 = HIBYTE(v50[2]);
        if (*(a1 + 160))
        {
          if (*(a1 + 159) < 0)
          {
            operator delete(*(a1 + 136));
          }

          v42 = v62[0];
          *(a1 + 136) = v40;
          *(a1 + 144) = v42;
          *(a1 + 151) = *(v62 + 7);
          *(a1 + 159) = v41;
        }

        else
        {
          v43 = v62[0];
          *(a1 + 136) = v50[0];
          *(a1 + 144) = v43;
          *(a1 + 151) = *(v62 + 7);
          *(a1 + 159) = v41;
          *(a1 + 160) = 1;
        }
      }
    }

    v44 = CFDictionaryGetValue(a2, @"address-ref-id-expiry");
    if (v44)
    {
      v45 = CFGetTypeID(v44);
      if (v45 == CFStringGetTypeID())
      {
        memset(v50, 0, 24);
        ctu::cf::assign();
        v46 = v50[0];
        v62[0] = v50[1];
        *(v62 + 7) = *(&v50[1] + 7);
        v47 = HIBYTE(v50[2]);
        if (*(a1 + 192))
        {
          if (*(a1 + 191) < 0)
          {
            operator delete(*(a1 + 168));
          }

          v48 = v62[0];
          *(a1 + 168) = v46;
          *(a1 + 176) = v48;
          *(a1 + 183) = *(v62 + 7);
          *(a1 + 191) = v47;
        }

        else
        {
          v49 = v62[0];
          *(a1 + 168) = v50[0];
          *(a1 + 176) = v49;
          *(a1 + 183) = *(v62 + 7);
          *(a1 + 191) = v47;
          *(a1 + 192) = 1;
        }
      }
    }
  }
}

void sub_100615268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1006152B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = 0;
  if (*(a1 + 200) == 1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = v45;
      v45 = Mutable;
      *&valuePtr = v5;
      sub_1000296E0(&valuePtr);
    }

    v6 = v45;
    if (*(a1 + 23) < 0)
    {
      sub_100005F2C(__p, *a1, *(a1 + 8));
    }

    else
    {
      *__p = *a1;
      v43 = *(a1 + 16);
    }

    if (SHIBYTE(v43) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v48 = v43;
    }

    v46 = 0;
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
    }

    else
    {
      valuePtr = __dst;
      v50 = v48;
    }

    v51 = 0;
    if (ctu::cf::convert_copy())
    {
      v7 = v46;
      v46 = v51;
      v52 = v7;
      sub_100005978(&v52);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(valuePtr);
    }

    v44 = v46;
    v46 = 0;
    sub_100005978(&v46);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v6, @"displayName", v44);
    sub_100005978(&v44);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v45;
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(v40, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *v40 = *(a1 + 24);
      v41 = *(a1 + 40);
    }

    if (SHIBYTE(v41) < 0)
    {
      sub_100005F2C(&__dst, v40[0], v40[1]);
    }

    else
    {
      __dst = *v40;
      v48 = v41;
    }

    v46 = 0;
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
    }

    else
    {
      valuePtr = __dst;
      v50 = v48;
    }

    v51 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = v46;
      v46 = v51;
      v52 = v9;
      sub_100005978(&v52);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(valuePtr);
    }

    v44 = v46;
    v46 = 0;
    sub_100005978(&v46);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__dst);
    }

    CFDictionaryAddValue(v8, @"sipUserName", v44);
    sub_100005978(&v44);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }

    if (*(a1 + 72) == 1)
    {
      v10 = v45;
      if (*(a1 + 71) < 0)
      {
        sub_100005F2C(v38, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *v38 = *(a1 + 48);
        v39 = *(a1 + 64);
      }

      if (SHIBYTE(v39) < 0)
      {
        sub_100005F2C(&__dst, v38[0], v38[1]);
      }

      else
      {
        __dst = *v38;
        v48 = v39;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v11 = v46;
        v46 = v51;
        v52 = v11;
        sub_100005978(&v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v44 = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }

      CFDictionaryAddValue(v10, @"addressUpdateURL", v44);
      sub_100005978(&v44);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }
    }

    if (*(a1 + 104) == 1)
    {
      v12 = v45;
      if (*(a1 + 103) < 0)
      {
        sub_100005F2C(v36, *(a1 + 80), *(a1 + 88));
      }

      else
      {
        *v36 = *(a1 + 80);
        v37 = *(a1 + 96);
      }

      if (SHIBYTE(v37) < 0)
      {
        sub_100005F2C(&__dst, v36[0], v36[1]);
      }

      else
      {
        __dst = *v36;
        v48 = v37;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v13 = v46;
        v46 = v51;
        v52 = v13;
        sub_100005978(&v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v44 = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }

      CFDictionaryAddValue(v12, @"addressUpdateToken", v44);
      sub_100005978(&v44);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }
    }

    if (*(a1 + 116) == 1)
    {
      v14 = v45;
      v15 = *(a1 + 112);
      *&__dst = 0;
      LODWORD(valuePtr) = v15;
      v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v16)
      {
        v17 = __dst;
        *&__dst = v16;
        *&valuePtr = v17;
        sub_100029A48(&valuePtr);
      }

      v52 = __dst;
      *&__dst = 0;
      sub_100029A48(&__dst);
      CFDictionaryAddValue(v14, @"addressStatus", v52);
      sub_100029A48(&v52);
    }

    if (*(a1 + 124) == 1)
    {
      v18 = v45;
      v19 = *(a1 + 120);
      *&__dst = 0;
      LODWORD(valuePtr) = v19;
      v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v20)
      {
        v21 = __dst;
        *&__dst = v20;
        *&valuePtr = v21;
        sub_100029A48(&valuePtr);
      }

      v52 = __dst;
      *&__dst = 0;
      sub_100029A48(&__dst);
      CFDictionaryAddValue(v18, @"tcStatus", v52);
      sub_100029A48(&v52);
    }

    if (*(a1 + 132) == 1)
    {
      v22 = v45;
      v23 = *(a1 + 128);
      *&__dst = 0;
      LODWORD(valuePtr) = v23;
      v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v24)
      {
        v25 = __dst;
        *&__dst = v24;
        *&valuePtr = v25;
        sub_100029A48(&valuePtr);
      }

      v52 = __dst;
      *&__dst = 0;
      sub_100029A48(&__dst);
      CFDictionaryAddValue(v22, @"proviStatus", v52);
      sub_100029A48(&v52);
    }

    if (*(a1 + 160) == 1)
    {
      v26 = v45;
      if (*(a1 + 159) < 0)
      {
        sub_100005F2C(v34, *(a1 + 136), *(a1 + 144));
      }

      else
      {
        *v34 = *(a1 + 136);
        v35 = *(a1 + 152);
      }

      if (SHIBYTE(v35) < 0)
      {
        sub_100005F2C(&__dst, v34[0], v34[1]);
      }

      else
      {
        __dst = *v34;
        v48 = v35;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v27 = v46;
        v46 = v51;
        v52 = v27;
        sub_100005978(&v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v44 = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }

      CFDictionaryAddValue(v26, @"address-ref-id", v44);
      sub_100005978(&v44);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }
    }

    if (*(a1 + 192) == 1)
    {
      v28 = v45;
      if (*(a1 + 191) < 0)
      {
        sub_100005F2C(v32, *(a1 + 168), *(a1 + 176));
      }

      else
      {
        *v32 = *(a1 + 168);
        v33 = *(a1 + 184);
      }

      if (SHIBYTE(v33) < 0)
      {
        sub_100005F2C(&__dst, v32[0], v32[1]);
      }

      else
      {
        __dst = *v32;
        v48 = v33;
      }

      v46 = 0;
      if (SHIBYTE(v48) < 0)
      {
        sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
      }

      else
      {
        valuePtr = __dst;
        v50 = v48;
      }

      v51 = 0;
      if (ctu::cf::convert_copy())
      {
        v29 = v46;
        v46 = v51;
        v52 = v29;
        sub_100005978(&v52);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(valuePtr);
      }

      v30 = v46;
      v44 = v46;
      v46 = 0;
      sub_100005978(&v46);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__dst);
      }

      CFDictionaryAddValue(v28, @"address-ref-id-expiry", v30);
      sub_100005978(&v44);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[0]);
      }
    }
  }

  sub_100010180(a2, &v45);
  return sub_1000296E0(&v45);
}

void sub_100615B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_100005978((v49 - 136));
  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v49 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_100615DF4(uint64_t a1, const __CFString *a2, CFTypeRef cf, uint64_t a4, int a5)
{
  if (a2)
  {
    v7 = cf;
    v12 = cf;
    if (cf)
    {
      CFRetain(cf);
      if (a5 && *a1)
      {
        (*(**a1 + 56))(&v11);
        v9 = v12;
        v12 = v11;
        v13 = v9;
        v11 = 0;
        sub_10000A1EC(&v13);
        sub_10000A1EC(&v11);
        v7 = v12;
      }
    }

    else if (a5)
    {
      v7 = 0;
    }

    CFPreferencesSetValue(a2, v7, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    CFPreferencesSynchronize(@"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_10000A1EC(&v12);
  }

  return a2 != 0;
}

void sub_100615F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

const void *sub_100615F34(uint64_t a1, CFStringRef key, int a3)
{
  v11 = 0;
  if (key)
  {
    v5 = CFPreferencesCopyValue(key, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = v11;
    v11 = v5;
    v12 = v6;
    sub_10000A1EC(&v12);
    v7 = v11;
    if (v11 && a3 && *a1)
    {
      (*(**a1 + 64))(&v10);
      v8 = v11;
      v11 = v10;
      v12 = v8;
      v10 = 0;
      sub_10000A1EC(&v12);
      sub_10000A1EC(&v10);
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = 0;
  sub_10000A1EC(&v11);
  return v7;
}

void sub_10061603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_100616054(uint64_t a1, const __CFString *a2, const void *a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  sub_100615DF4(a1, a2, a3, __p, 0);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10061609C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006160C4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    sub_100004A34(v4);
  }
}

uint64_t sub_1006160F0@<X0>(void *a1@<X8>)
{
  pthread_mutex_lock(&stru_101FB3348);
  if (!xmmword_101FB3388)
  {
    operator new();
  }

  v2 = *(&xmmword_101FB3388 + 1);
  *a1 = xmmword_101FB3388;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return pthread_mutex_unlock(&stru_101FB3348);
}

void sub_1006161D4()
{
  oslog = 0;
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "ps.sto");
  ctu::OsLogLogger::OsLogLogger(&oslog, buf);
  ctu::OsLogContext::~OsLogContext(buf);
  v0 = CFPreferencesCopyMultiple(0, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  theDict = v0;
  if (v0)
  {
    Count = CFDictionaryGetCount(v0);
  }

  else
  {
    Count = 0;
  }

  v2 = oslog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v45 = "";
    v46 = 2080;
    v47 = "";
    v48 = 2048;
    v49 = Count;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| ---- local storage has %zu values", buf, 0x20u);
  }

  if (theDict)
  {
    keys = 0;
    v38 = 0;
    v39 = 0;
    sub_100222418(&keys, Count);
    values = 0;
    v35 = 0;
    v36 = 0;
    sub_10007D780(&values, Count);
    CFDictionaryGetKeysAndValues(theDict, keys, values);
    if (Count)
    {
      for (i = 0; Count != i; ++i)
      {
        v4 = CFGetTypeID(values[i]);
        if (v4 == CFStringGetTypeID())
        {
          v5 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v42 = 0uLL;
            v43 = 0;
            ctu::cf::assign();
            *v32 = v42;
            v33 = v43;
            v6 = v42;
            v7 = SHIBYTE(v43);
            v42 = 0uLL;
            v43 = 0;
            ctu::cf::assign();
            v8 = v32;
            if (v7 < 0)
            {
              v8 = v6;
            }

            *__p = v42;
            v31 = v43;
            v9 = v42;
            if (v43 >= 0)
            {
              v9 = __p;
            }

            *buf = 136316162;
            v45 = "";
            v46 = 2080;
            v47 = "";
            v48 = 2048;
            v49 = i;
            v50 = 2080;
            v51 = v8;
            v52 = 2080;
            v53 = v9;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s| %2zu %s \t= %s", buf, 0x34u);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v10 = CFGetTypeID(values[i]);
          if (v10 == CFNumberGetTypeID())
          {
            v11 = oslog;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v42 = 0uLL;
              v43 = 0;
              ctu::cf::assign();
              v33 = v43;
              *v32 = v42;
              v12 = SHIBYTE(v43);
              v13 = v42;
              v14 = values[i];
              LODWORD(v42) = 0;
              ctu::cf::assign(&v42, v14, v15);
              v16 = v32;
              if (v12 < 0)
              {
                v16 = v13;
              }

              *buf = 136316162;
              v45 = "";
              v46 = 2080;
              v47 = "";
              v48 = 2048;
              v49 = i;
              v50 = 2080;
              v51 = v16;
              v52 = 1024;
              LODWORD(v53) = v42;
              v17 = v11;
              v18 = "#I %s%s| %2zu %s \t= %d";
              v19 = 48;
              goto LABEL_33;
            }
          }

          else
          {
            v20 = CFGetTypeID(values[i]);
            TypeID = CFBooleanGetTypeID();
            v22 = oslog;
            v23 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
            if (v20 == TypeID)
            {
              if (v23)
              {
                v42 = 0uLL;
                v43 = 0;
                ctu::cf::assign();
                v33 = v43;
                *v32 = v42;
                v24 = SHIBYTE(v43);
                v25 = v42;
                Value = CFBooleanGetValue(values[i]);
                *buf = 136316162;
                v27 = v32;
                if (v24 < 0)
                {
                  v27 = v25;
                }

                v45 = "";
                v28 = "true";
                if (!Value)
                {
                  v28 = "false";
                }

                v46 = 2080;
                v47 = "";
                v48 = 2048;
                v49 = i;
                v50 = 2080;
                v51 = v27;
                v52 = 2080;
                v53 = v28;
                v17 = v22;
                v18 = "#I %s%s| %2zu %s \t= %s";
                v19 = 52;
                goto LABEL_33;
              }
            }

            else if (v23)
            {
              v42 = 0uLL;
              v43 = 0;
              ctu::cf::assign();
              *v32 = v42;
              v33 = v43;
              v29 = v42;
              if (v43 >= 0)
              {
                v29 = v32;
              }

              *buf = 136315906;
              v45 = "";
              v46 = 2080;
              v47 = "";
              v48 = 2048;
              v49 = i;
              v50 = 2080;
              v51 = v29;
              v17 = v22;
              v18 = "#I %s%s| %2zu %s";
              v19 = 42;
LABEL_33:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
LABEL_34:
              if (SHIBYTE(v33) < 0)
              {
                operator delete(v32[0]);
              }
            }
          }
        }
      }
    }

    if (values)
    {
      v35 = values;
      operator delete(values);
    }

    if (keys)
    {
      v38 = keys;
      operator delete(keys);
    }
  }

  sub_10001021C(&theDict);
  ctu::OsLogLogger::~OsLogLogger(&oslog);
}

void sub_100616730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, const void *a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  sub_10001021C(&a29);
  ctu::OsLogLogger::~OsLogLogger(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_100616810(uint64_t a1, __n128 *a2)
{
  sub_10016A270(a1, a2);
  sub_10016A270(a1 + 32, a2 + 2);
  sub_10016A270(a1 + 64, a2 + 4);
  sub_10016A270(a1 + 96, a2 + 6);
  sub_10016A270(a1 + 128, a2 + 8);
  sub_10016A270(a1 + 160, a2 + 10);
  sub_10016A270(a1 + 192, a2 + 12);
  sub_10016A270(a1 + 224, a2 + 14);
  return a1;
}

void sub_100616920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1001A9614(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100616944(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100616984(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006169C4(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_100616A1C()
{
  if ((byte_101FB3398 & 1) == 0)
  {
    byte_101FB3398 = 1;
    return __cxa_atexit(sub_10061680C, &stru_101FB3348, &_mh_execute_header);
  }

  return result;
}

void MaxDataRateManager::create(uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_100616BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    sub_101760EE4(a14);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::MaxDataRateManager(uint64_t a1, void *a2, uint64_t a3)
{
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, "max");
  sub_100106AC0((a1 + 8), "MaxDataRateManager", QOS_CLASS_UTILITY, &v19);
  ctu::OsLogContext::~OsLogContext(&v19);
  v21[0] = off_101E2A828;
  v21[1] = sub_100617B7C;
  v21[3] = v21;
  sub_100617BA8((a1 + 48), a2, v21);
  sub_1000A8744(v21);
  *a1 = off_101E6A608;
  *(a1 + 56) = *a2;
  v6 = a2[1];
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_10000501C(&__p, "MaxDataRateManager");
  v7 = *(a1 + 24);
  v13 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a1 + 32);
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 112) = 0u;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  sub_100627878((a1 + 160), &rest::kDefaultMccMncComputedInfos);
  *(a1 + 184) = 0;
  sub_100627AD8((a1 + 192), &rest::kDefaultNRDisableStatuses);
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 304) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  *(a1 + 360) = 0;
  *(a1 + 352) = a1 + 360;
  sub_10000501C(&v19, "MaxDataRateManager");
  PersonalitiesTracker::PersonalitiesTracker();
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19.var0);
  }

  *(a1 + 552) = 0u;
  *(a1 + 544) = a1 + 552;
  subscriber::makeSimSlotRange();
  var0 = v19.var0;
  fRef = v19.var1.fRef;
  if (v19.var0 != v19.var1.fRef)
  {
    v11 = v20;
    do
    {
      if (v11(*var0))
      {
        break;
      }

      ++var0;
    }

    while (var0 != fRef);
    if (var0 != v19.var1.fRef)
    {
      v18 = *var0;
      Registry::getTelephonyCapabilities(&v16, *(a1 + 56));
      (*(*v16 + 32))(v16);
      sub_100313F94(&v17);
    }
  }

  sub_100627700();
}

void sub_10061785C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, dispatch_object_t object, dispatch_object_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_1006270D0(v43 - 160);
  v45 = *(v42 + 632);
  if (v45)
  {
    sub_100004A34(v45);
  }

  v46 = *(v42 + 616);
  if (v46)
  {
    sub_100004A34(v46);
  }

  v47 = *(v42 + 600);
  if (v47)
  {
    sub_100004A34(v47);
  }

  v48 = *a9;
  *a9 = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(v42 + 576);
  if (v49)
  {
    sub_100004A34(v49);
  }

  sub_10006EC28(a17, *a19);
  PersonalitiesTracker::~PersonalitiesTracker((a16 + 160));
  sub_100617D6C(a16 + 96);
  sub_10006DCAC(a13, *(v42 + 296));
  sub_10006DCAC(a14, *(v42 + 272));
  sub_10006DCAC(a15, *(v42 + 248));
  sub_10006DCAC(a16, *(v42 + 224));
  sub_10006DCAC(v42 + 192, *(v42 + 200));
  sub_1001A8E08(a11 + 48, *(v42 + 168));
  sub_10032D3A4(a10, *(v42 + 136));
  sub_10006DCAC(a11 - 8, *(v42 + 112));
  v50 = *(v42 + 96);
  if (v50)
  {
    sub_100004A34(v50);
  }

  v51 = *(v42 + 80);
  if (v51)
  {
    sub_100004A34(v51);
  }

  v52 = *(v42 + 64);
  if (v52)
  {
    sub_100004A34(v52);
  }

  v53 = *a12;
  *a12 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  MaxDataRateInterface::~MaxDataRateInterface(v42);
  ctu::OsLogLogger::~OsLogLogger((v42 + 40));
  sub_1000C0544((v42 + 8));
  _Unwind_Resume(a1);
}

const char *sub_100617B7C(int a1)
{
  v1 = "max.?";
  if (a1 == 2)
  {
    v1 = "max.2";
  }

  if (a1 == 1)
  {
    return "max.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_100617BA8(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_100617D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_100617D6C(uint64_t a1)
{
  sub_10006DCAC(a1 + 40, *(a1 + 48));

  return sub_100625D94(a1);
}

void MaxDataRateManager::notifyServiceShutdown(NSObject *a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, &a1[1].isa);
  operator new();
}

void MaxDataRateManager::notifyServiceBootstrap(MaxDataRateManager *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void MaxDataRateManager::notifyServiceMigration(MaxDataRateManager *this, dict a2, group_session a3)
{
  if (*a2.fObj.fObj)
  {
    xpc_retain(*a2.fObj.fObj);
  }

  else
  {
    xpc_null_create();
  }

  v5 = *a3.var0.fObj;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, this + 1);
  operator new();
}

void MaxDataRateManager::notifyServiceStart(MaxDataRateManager *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void MaxDataRateManager::~MaxDataRateManager(MaxDataRateManager *this)
{
  *this = off_101E6A608;
  v2 = *(this + 79);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 77);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 73);
  *(this + 73) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10006EC28(this + 544, *(this + 69));
  PersonalitiesTracker::~PersonalitiesTracker((this + 376));
  sub_10006DCAC(this + 352, *(this + 45));
  sub_100625D94(this + 312);
  sub_10006DCAC(this + 288, *(this + 37));
  sub_10006DCAC(this + 264, *(this + 34));
  sub_10006DCAC(this + 240, *(this + 31));
  sub_10006DCAC(this + 216, *(this + 28));
  sub_10006DCAC(this + 192, *(this + 25));
  sub_1001A8E08(this + 160, *(this + 21));
  sub_10032D3A4(this + 128, *(this + 17));
  sub_10006DCAC(this + 104, *(this + 14));
  v7 = *(this + 12);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MaxDataRateInterface::~MaxDataRateInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  MaxDataRateManager::~MaxDataRateManager(this);

  operator delete();
}

BOOL MaxDataRateManager::getUserPreferenceFromPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3, BOOL *a4)
{
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v8 = v7;
  if (a3)
  {
    v10 = *(a1 + 56);
    v9 = (a1 + 56);
    Registry::getTelephonyCapabilities(&__p, v10);
    v11 = (*(*__p + 32))(__p);
    if (v34)
    {
      sub_100004A34(v34);
    }

    if (v11)
    {
      ServiceMap = Registry::getServiceMap(*v9);
      v13 = ServiceMap;
      if (v14 < 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      __p = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &__p);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
          if (!v20)
          {
LABEL_11:
            v22 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
            {
              LOWORD(__p) = 0;
              _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &__p, 2u);
            }

            v23 = 0;
LABEL_36:
            if ((v21 & 1) == 0)
            {
              sub_100004A34(v19);
            }

            return v23;
          }

LABEL_21:
          __p = 0;
          v34 = 0;
          v35 = 0;
          PersonalityIdFromSlotId();
          if (isReal())
          {
            v36 = 0;
            v37 = 0;
            if (ctu::cf::convert_copy(&v37, a3, 0x8000100, kCFAllocatorDefault, v25))
            {
              v36 = v37;
              cf = 0;
              sub_100005978(&cf);
              v26 = v36;
            }

            else
            {
              v26 = 0;
            }

            v32 = v26;
            v36 = 0;
            sub_100005978(&v36);
            cf = 0;
            (*(*v20 + 64))(&cf, v20, &__p, v26, @"MaxDataRate", 0, 1);
            v27 = cf;
            v23 = cf != 0;
            if (cf)
            {
              LOBYTE(v37) = 0;
              v28 = CFGetTypeID(cf);
              if (v28 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&v37, v27, v29);
                v30 = v37;
              }

              else
              {
                v30 = 0;
              }

              *a4 = v30;
            }

            sub_10000A1EC(&cf);
            sub_100005978(&v32);
          }

          else
          {
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
            {
              sub_101775D7C();
            }

            v23 = 0;
          }

          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_36;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      if (!v20)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    v24 = sub_10005D028();
    sub_10000501C(&__p, a3);
    v23 = sub_10005D0D8(v24, &__p, a4);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_101775DB0();
    }

    return 0;
  }

  return v23;
}

void sub_100618710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

BOOL MaxDataRateManager::getUserPreferenceFromPersistence_sync(MaxDataRateManager *this, const char *a2, BOOL *a3)
{
  v10 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v9 = 0;
  (*(**(this + 9) + 40))(&v8);
  sub_10002FE1C(&v9, &v8);
  sub_10000A1EC(&v8);
  v5 = v9;
  if (v9)
  {
    *a3 = v9 == kCFBooleanTrue;
  }

  v6 = v5 != 0;
  sub_100045C8C(&v9);
  sub_100005978(&v10);
  return v6;
}

void sub_100618884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  sub_10000A1EC(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

unsigned __int8 *MaxDataRateManager::getSwitchSupportFromPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v6 = v5;
  if (a3)
  {
    v8 = *(a1 + 56);
    v7 = (a1 + 56);
    Registry::getTelephonyCapabilities(&__p, v8);
    v9 = (*(*__p + 32))(__p);
    if (v30)
    {
      sub_100004A34(v30);
    }

    if (v9)
    {
      ServiceMap = Registry::getServiceMap(*v7);
      v11 = ServiceMap;
      if (v12 < 0)
      {
        v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
        v14 = 5381;
        do
        {
          v12 = v14;
          v15 = *v13++;
          v14 = (33 * v14) ^ v15;
        }

        while (v15);
      }

      std::mutex::lock(ServiceMap);
      __p = v12;
      v16 = sub_100009510(&v11[1].__m_.__sig, &__p);
      if (v16)
      {
        v18 = v16[3];
        v17 = v16[4];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v11);
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v17);
          v19 = 0;
          if (!v18)
          {
LABEL_11:
            v20 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_FAULT))
            {
              LOWORD(__p) = 0;
              _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &__p, 2u);
            }

            v21 = 0;
LABEL_36:
            if ((v19 & 1) == 0)
            {
              sub_100004A34(v17);
            }

            return v21;
          }

LABEL_22:
          __p = 0;
          v30 = 0;
          v31 = 0;
          PersonalityIdFromSlotId();
          if (isReal())
          {
            v32 = 0;
            v33 = 0;
            if (ctu::cf::convert_copy(&v33, a3, 0x8000100, kCFAllocatorDefault, v23))
            {
              v32 = v33;
              cf = 0;
              sub_100005978(&cf);
              v24 = v32;
            }

            else
            {
              v24 = 0;
            }

            v28 = v24;
            v32 = 0;
            sub_100005978(&v32);
            cf = 0;
            (*(*v18 + 64))(&cf, v18, &__p, v24, @"MaxDataRate", 0, 1);
            v21 = cf;
            if (cf)
            {
              LOBYTE(v33) = 0;
              v25 = CFGetTypeID(cf);
              if (v25 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v33, v21, v26);
                v21 = v33;
              }

              else
              {
                v21 = 0;
              }
            }

            sub_10000A1EC(&cf);
            sub_100005978(&v28);
          }

          else
          {
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
            {
              sub_101775D7C();
            }

            v21 = 0;
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_36;
        }
      }

      else
      {
        v18 = 0;
      }

      std::mutex::unlock(v11);
      v17 = 0;
      v19 = 1;
      if (!v18)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    LOBYTE(cf) = 0;
    v22 = sub_10005D028();
    sub_10000501C(&__p, a3);
    sub_100618C9C(v22, &__p, &cf);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    return cf;
  }

  else
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101775DB0();
    }

    return 0;
  }
}

void sub_100618C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100618C9C(uint64_t a1, char *a2, _BYTE *a3)
{
  std::mutex::lock(&stru_101FB1BC0);
  memset(&__p, 0, sizeof(__p));
  v6 = sub_10005D1B0(a1, a2, &__p);
  if (v6)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *a3 = strtoll(p_p, 0, 16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v6;
}

void sub_100618D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::setSwitchSupportInPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3, uint64_t a4)
{
  v4 = a4;
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v8 = v7;
  if (a3)
  {
    (*(**(a1 + 624) + 160))(*(a1 + 624));
    v10 = *(a1 + 56);
    v9 = (a1 + 56);
    Registry::getTelephonyCapabilities(&buf, v10);
    v11 = (*(*buf.__r_.__value_.__l.__data_ + 32))(buf.__r_.__value_.__r.__words[0]);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    if (v11)
    {
      ServiceMap = Registry::getServiceMap(*v9);
      v13 = ServiceMap;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      buf.__r_.__value_.__r.__words[0] = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &buf);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
          if (!v20)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      if (!v20)
      {
LABEL_11:
        v22 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &buf, 2u);
        }

LABEL_33:
        if ((v21 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        return;
      }

LABEL_19:
      __p = 0;
      v38 = 0;
      v39 = 0;
      PersonalityIdFromSlotId();
      if (isReal())
      {
        v40 = 0;
        v41 = 0;
        if (ctu::cf::convert_copy(&v41, a3, 0x8000100, kCFAllocatorDefault, v24))
        {
          v40 = v41;
          buf.__r_.__value_.__r.__words[0] = 0;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
          v25 = v40;
        }

        else
        {
          v25 = 0;
        }

        v36 = v25;
        v40 = 0;
        sub_100005978(&v40);
        v41 = 0;
        buf.__r_.__value_.__r.__words[0] = v4;
        v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &buf);
        if (v26)
        {
          v41 = v26;
          buf.__r_.__value_.__r.__words[0] = 0;
          sub_100029A48(&buf.__r_.__value_.__l.__data_);
          v27 = v41;
        }

        else
        {
          v27 = 0;
        }

        v40 = v27;
        v41 = 0;
        sub_100029A48(&v41);
        if ((*(*v20 + 48))(v20, &__p, v36, v27, @"MaxDataRate", 0, 1, 0))
        {
          v28 = *v8;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HIBYTE(v39);
            v30 = __p;
            v31 = v38;
            v32 = asString();
            if ((v29 & 0x80u) == 0)
            {
              v33 = v29;
            }

            else
            {
              v33 = v31;
            }

            p_p = &__p;
            if ((v29 & 0x80u) != 0)
            {
              p_p = v30;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            if (v33)
            {
              v35 = p_p;
            }

            else
            {
              v35 = "<invalid>";
            }

            *(buf.__r_.__value_.__r.__words + 4) = v35;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a3;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v43 = v32;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s : failed to store %s : %s", &buf, 0x20u);
          }
        }

        sub_100029A48(&v40);
        sub_100005978(&v36);
      }

      else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_101775D7C();
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_33;
    }

    v23 = sub_10005D028();
    sub_10000501C(&buf, a3);
    LOBYTE(__p) = v4;
    sub_100619254(v23, &buf, &__p);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101775DB0();
  }
}

void sub_1006191B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_100029A48(&a16);
  sub_100005978(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100619254(uint64_t **a1, std::string *a2, unsigned __int8 *a3)
{
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, "0x%x", *a3);
  sub_10000501C(&__p, __str);
  v5 = sub_10033238C(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_100619304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::setUserPreferenceInPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3, _BOOL4 a4)
{
  v40 = a4;
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v8 = v7;
  if (a3)
  {
    (*(**(a1 + 624) + 160))(*(a1 + 624));
    v10 = *(a1 + 56);
    v9 = (a1 + 56);
    Registry::getTelephonyCapabilities(&buf, v10);
    v11 = (*(*buf.__r_.__value_.__l.__data_ + 32))(buf.__r_.__value_.__r.__words[0]);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    if (v11)
    {
      ServiceMap = Registry::getServiceMap(*v9);
      v13 = ServiceMap;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      buf.__r_.__value_.__r.__words[0] = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &buf);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
          if (!v20)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      if (!v20)
      {
LABEL_11:
        v22 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", &buf, 2u);
        }

LABEL_32:
        if ((v21 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        return;
      }

LABEL_19:
      __p = 0;
      v38 = 0;
      v39 = 0;
      PersonalityIdFromSlotId();
      if (isReal())
      {
        v41 = 0;
        v42 = 0;
        if (ctu::cf::convert_copy(&v42, a3, 0x8000100, kCFAllocatorDefault, v24))
        {
          v41 = v42;
          buf.__r_.__value_.__r.__words[0] = 0;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
          v25 = v41;
        }

        else
        {
          v25 = 0;
        }

        v36 = v25;
        v41 = 0;
        sub_100005978(&v41);
        v26 = &kCFBooleanTrue;
        if (!a4)
        {
          v26 = &kCFBooleanFalse;
        }

        v27 = *v26;
        buf.__r_.__value_.__r.__words[0] = 0;
        sub_100045C8C(&buf.__r_.__value_.__l.__data_);
        v42 = v27;
        buf.__r_.__value_.__r.__words[0] = 0;
        sub_100045C8C(&buf.__r_.__value_.__l.__data_);
        if ((*(*v20 + 48))(v20, &__p, v25, v27, @"MaxDataRate", 0, 1, 0))
        {
          v28 = *v8;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HIBYTE(v39);
            v30 = __p;
            v31 = v38;
            v32 = CSIBOOLAsString(v40);
            if ((v29 & 0x80u) == 0)
            {
              v33 = v29;
            }

            else
            {
              v33 = v31;
            }

            p_p = &__p;
            if ((v29 & 0x80u) != 0)
            {
              p_p = v30;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            if (v33)
            {
              v35 = p_p;
            }

            else
            {
              v35 = "<invalid>";
            }

            *(buf.__r_.__value_.__r.__words + 4) = v35;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a3;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v44 = v32;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s : failed to store %s : %s", &buf, 0x20u);
          }
        }

        sub_100045C8C(&v42);
        sub_100005978(&v36);
      }

      else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_101775D7C();
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_32;
    }

    v23 = sub_10005D028();
    sub_10000501C(&buf, a3);
    sub_1006197F4(v23, &buf, &v40);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101775DB0();
  }
}

void sub_10061975C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100045C8C(&a20);
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006197F4(uint64_t **a1, std::string *a2, unsigned __int8 *a3)
{
  *__str = 0u;
  v9 = 0u;
  snprintf(__str, 0x20uLL, "0x%x", *a3);
  sub_10000501C(&__p, __str);
  v5 = sub_10033238C(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1006198A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **MaxDataRateManager::setUserPreferenceInPersistence_sync(MaxDataRateManager *this, const char *a2, int a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v8 = v5;
  v6 = &kCFBooleanTrue;
  if (!a3)
  {
    v6 = &kCFBooleanFalse;
  }

  (*(**(this + 9) + 16))(*(this + 9), v5, *v6, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(this + 9) + 48))(*(this + 9), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(this + 78) + 160))(*(this + 78));
  return sub_100005978(&v8);
}

void sub_1006199F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::removeKeyFromPersistence_sync(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v6 = v5;
  if (a3)
  {
    v8 = *(a1 + 56);
    v7 = (a1 + 56);
    Registry::getTelephonyCapabilities(buf, v8);
    v9 = (*(**buf + 32))(*buf);
    if (v31)
    {
      sub_100004A34(v31);
    }

    if (v9)
    {
      ServiceMap = Registry::getServiceMap(*v7);
      v11 = ServiceMap;
      if (v12 < 0)
      {
        v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
        v14 = 5381;
        do
        {
          v12 = v14;
          v15 = *v13++;
          v14 = (33 * v14) ^ v15;
        }

        while (v15);
      }

      std::mutex::lock(ServiceMap);
      *buf = v12;
      v16 = sub_100009510(&v11[1].__m_.__sig, buf);
      if (v16)
      {
        v18 = v16[3];
        v17 = v16[4];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v11);
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v17);
          v19 = 0;
          if (!v18)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v18 = 0;
      }

      std::mutex::unlock(v11);
      v17 = 0;
      v19 = 1;
      if (!v18)
      {
LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "PersonalWallet interface not available", buf, 2u);
        }

LABEL_40:
        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        return;
      }

LABEL_19:
      *buf = 0;
      v31 = 0;
      v32 = 0;
      PersonalityIdFromSlotId();
      if (isReal())
      {
        v33 = 0;
        v34 = 0;
        if (ctu::cf::convert_copy(&v34, a3, 0x8000100, kCFAllocatorDefault, v22))
        {
          v33 = v34;
          *v35 = 0;
          sub_100005978(v35);
          v23 = v33;
        }

        else
        {
          v23 = 0;
        }

        v29 = v23;
        v33 = 0;
        sub_100005978(&v33);
        v24 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v25 = HIBYTE(v32);
          if (v32 < 0)
          {
            v25 = v31;
          }

          v26 = buf;
          if (v32 < 0)
          {
            v26 = *buf;
          }

          if (v25)
          {
            v27 = v26;
          }

          else
          {
            v27 = "<invalid>";
          }

          *v35 = 136315394;
          *&v35[4] = v27;
          v36 = 2080;
          v37 = a3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s : remove key : %s", v35, 0x16u);
        }

        if ((*(*v18 + 72))(v18, buf, v23, @"MaxDataRate", 0, 1))
        {
          v28 = *v6;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_101775DE4(buf, a3, v28);
          }
        }

        sub_100005978(&v29);
      }

      else if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_101775D7C();
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_40;
    }

    v21 = sub_10005D028();
    sub_10000501C(buf, a3);
    sub_10033220C(v21, buf);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*buf);
    }
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_101775DB0();
  }
}

void sub_100619DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

const void **MaxDataRateManager::removeKeyFromPersistence_sync(MaxDataRateManager *this, const char *a2)
{
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(**(this + 9) + 16))(*(this + 9), v4, 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(this + 9) + 48))(*(this + 9), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  return sub_100005978(&v4);
}

void sub_100619F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::migrateCSIKeysToPersonalWallet_sync(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v59 = 0;
  v60 = 0;
  v61 = 0;
  PersonalityIdFromSlotId();
  v5 = isReal();
  sub_10000501C(buf, "Enable5G");
  sub_10000501C(v66, "EnableLTE");
  sub_10000501C(v67, "Enable3G");
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_10016FB64(&v56, buf, &v68, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v67[i + 2]) < 0)
    {
      operator delete(v67[i]);
    }
  }

  v7 = v56;
  v8 = v57;
  v49 = v3;
  if (v56 != v57)
  {
    v9 = &_mh_execute_header;
    v10 = "#I Erase : key : %s";
    v48 = v4;
    do
    {
      LOBYTE(v50[0]) = 0;
      v54 = 0;
      v55 = 0;
      __p = 0;
      sub_10061A728(a2, &__p);
      v11 = sub_10005D028();
      if (sub_10005D0D8(v11, &__p, v50))
      {
        if (v5)
        {
          v12 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v5;
            v14 = v10;
            v15 = v9;
            if (v61 >= 0)
            {
              v16 = HIBYTE(v61);
            }

            else
            {
              v16 = v60;
            }

            if (v61 >= 0)
            {
              v17 = &v59;
            }

            else
            {
              v17 = v59;
            }

            v18 = v7;
            if (*(v7 + 23) < 0)
            {
              v18 = *v7;
            }

            v19 = CSIBOOLAsString(LOBYTE(v50[0]));
            *buf = 136315650;
            v20 = "<invalid>";
            if (v16)
            {
              v20 = v17;
            }

            *&buf[4] = v20;
            v63 = 2080;
            v64 = v18;
            v65 = 2080;
            v66[0] = v19;
            v9 = v15;
            _os_log_impl(v15, v12, OS_LOG_TYPE_DEFAULT, "#I Migration -- %s : key: %s, value: %s", buf, 0x20u);
            v3 = v49;
            v10 = v14;
            v5 = v13;
            v4 = v48;
          }

          v21 = v7;
          if (*(v7 + 23) < 0)
          {
            v21 = *v7;
          }

          MaxDataRateManager::setUserPreferenceInPersistence_sync(v3, a2, v21, LOBYTE(v50[0]));
        }

        v22 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          if (v55 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315138;
          *&buf[4] = p_p;
          _os_log_impl(v9, v22, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
        }

        v24 = sub_10005D028();
        if (v55 >= 0)
        {
          v25 = &__p;
        }

        else
        {
          v25 = __p;
        }

        sub_10000501C(buf, v25);
        sub_10033220C(v24, buf);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(*buf);
        }
      }

      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p);
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  __p = 0;
  v54 = 0;
  v55 = 0;
  sub_10000501C(buf, "Enable5GSwitchSupport");
  sub_10000501C(v66, "EnableLTESwitchSupport");
  sub_10000501C(v67, "Enable3GSwitchSupport");
  __p = 0;
  v54 = 0;
  v55 = 0;
  sub_10016FB64(&__p, buf, &v68, 3uLL);
  for (j = 0; j != -9; j -= 3)
  {
    if (SHIBYTE(v67[j + 2]) < 0)
    {
      operator delete(v67[j]);
    }
  }

  v27 = __p;
  v28 = v54;
  if (__p != v54)
  {
    v29 = &_mh_execute_header;
    do
    {
      v52 = 0;
      v50[1] = 0;
      v51 = 0;
      v50[0] = 0;
      sub_10061A728(a2, v50);
      v30 = sub_10005D028();
      if (v51 >= 0)
      {
        v31 = v50;
      }

      else
      {
        v31 = v50[0];
      }

      sub_10000501C(buf, v31);
      v32 = sub_100618C9C(v30, buf, &v52);
      v33 = v32;
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*buf);
        if (v33)
        {
LABEL_50:
          if (v5)
          {
            v34 = *v4;
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v4;
              v36 = v5;
              v37 = v29;
              if (v61 >= 0)
              {
                v38 = HIBYTE(v61);
              }

              else
              {
                v38 = v60;
              }

              if (v61 >= 0)
              {
                v39 = &v59;
              }

              else
              {
                v39 = v59;
              }

              v40 = v27;
              if (*(v27 + 23) < 0)
              {
                v40 = *v27;
              }

              v41 = asString();
              *buf = 136315650;
              v42 = "<invalid>";
              if (v38)
              {
                v42 = v39;
              }

              *&buf[4] = v42;
              v63 = 2080;
              v64 = v40;
              v65 = 2080;
              v66[0] = v41;
              v29 = v37;
              _os_log_impl(v37, v34, OS_LOG_TYPE_DEFAULT, "#I Migration -- %s : key: %s, value: %s", buf, 0x20u);
              v3 = v49;
              v5 = v36;
              v4 = v35;
            }

            v43 = v27;
            if (*(v27 + 23) < 0)
            {
              v43 = *v27;
            }

            MaxDataRateManager::setSwitchSupportInPersistence_sync(v3, a2, v43, v52);
          }

          v44 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            if (v51 >= 0)
            {
              v45 = v50;
            }

            else
            {
              v45 = v50[0];
            }

            *buf = 136315138;
            *&buf[4] = v45;
            _os_log_impl(v29, v44, OS_LOG_TYPE_DEFAULT, "#I Erase : key : %s", buf, 0xCu);
          }

          v46 = sub_10005D028();
          if (v51 >= 0)
          {
            v47 = v50;
          }

          else
          {
            v47 = v50[0];
          }

          sub_10000501C(buf, v47);
          sub_10033220C(v46, buf);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else if (v32)
      {
        goto LABEL_50;
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      v27 += 3;
    }

    while (v27 != v28);
  }

  *buf = &__p;
  sub_1000087B4(buf);
  *buf = &v56;
  sub_1000087B4(buf);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v59);
  }
}

void sub_10061A59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v53 = &a52;
  v54 = -72;
  v55 = &a52;
  while (1)
  {
    v56 = *v55;
    v55 -= 24;
    if (v56 < 0)
    {
      operator delete(*(v53 - 23));
    }

    v53 = v55;
    v54 += 24;
    if (!v54)
    {
      a38 = &a29;
      sub_1000087B4(&a38);
      if (a37 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_10061A728(int a1@<W0>, void *a3@<X8>)
{
  if ((a1 - 1) < 2)
  {
    v3[0] = 0;
    v3[1] = 0;
    sub_100313F94(v3);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_10061AA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_10018D34C(&a15);
  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::supportsBB2GMitigation_sync(Registry **this)
{
  Registry::getTelephonyCapabilities(&v3, this[7]);
  v1 = (*(*v3 + 48))(v3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1;
}

void sub_10061AB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::handleMigration_sync(MaxDataRateManager *this, int a2, dict a3)
{
  *&buf = a3;
  *(&buf + 1) = "kIsDifferentDevice";
  sub_100006354(&buf, &object);
  v6 = xpc::dyn_cast_or_default(&object, 0, v5);
  xpc_release(object);
  v7 = *(this + 5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Migrator has called to re-evaluate the saved switch states in Max Data Manager", &buf, 2u);
    v7 = *(this + 5);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CSIBOOLAsString(v6);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Is from a different device: %s", &buf, 0xCu);
  }

  MaxDataRateManager::migrate2GSwitchToLegacyRatsSwitch_sync(this);
  MaxDataRateManager::retrieveSavedSwitchSupport_sync(this, 3);
  v22 = 1;
  object = 0;
  v21 = 0;
  MaxDataRateManager::getModel_sync(this, 1, &object);
  v9 = sub_10005D028();
  sub_10000501C(&buf, *(object + 91));
  v10 = sub_10005D0D8(v9, &buf, &v22);
  if (v24 < 0)
  {
    operator delete(buf);
  }

  v11 = *(**(this + 6) + 16);
  if (v10)
  {
    v12 = *v11();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Not saving the check RAT Selection for 3G Switch, there is already a user preference with value: %d", &buf, 8u);
    }
  }

  else
  {
    v13 = v11();
    v14 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = a2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I There is no 3G user preference stored, but checking for RAT Selection: %d", &buf, 8u);
    }

    if (a2 == 1)
    {
      v15 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I RAT Selection has been set to GSM, looks like user had set to 2G before, setting the user selection to 2G", &buf, 2u);
      }

      MaxDataRateManager::setMaxDataRateMandatory_sync(this, 1, 1, 1);
    }
  }

  v16 = *(this + 68);
  if (v16 != (this + 552))
  {
    do
    {
      MaxDataRateManager::maybeEnableLteSwitchOnMigrationForLatestDevices_sync(this, *(v16 + 8), v6);
      MaxDataRateManager::evaluateSwitchStates_sync(this, *(v16 + 8));
      v17 = *(v16 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v16 + 2);
          v19 = *v18 == v16;
          v16 = v18;
        }

        while (!v19);
      }

      v16 = v18;
    }

    while (v18 != (this + 552));
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_10061AE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, std::__shared_weak_count *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

const void **MaxDataRateManager::migrate2GSwitchToLegacyRatsSwitch_sync(MaxDataRateManager *this)
{
  v3 = 0;
  result = MaxDataRateManager::getUserPreferenceFromPersistence_sync(this, "Enable2G", &v3);
  if (result)
  {
    sub_10061D524(*(this + 71) + 120, v3);

    return MaxDataRateManager::removeKeyFromPersistence_sync(this, "Enable2G");
  }

  return result;
}

uint64_t MaxDataRateManager::retrieveSavedSwitchSupport_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 568);
  if (*(v3 + 48))
  {
    v4 = sub_10062FE80(v3 + 24, *(v3 + 8));
    v5 = *(a1 + 568);
  }

  else
  {
    v4 = 0;
    v5 = v3;
  }

  *(v3 + 16) = v4;
  v6 = *(v5 + 168);
  if (v6)
  {
    LODWORD(v6) = (*(*v6 + 48))(v6);
  }

  *(v5 + 136) = v6;
  v30[0] = 1;
  memset(&v30[2], 0, 32);
  v30[1] = a1 + 312;
  LOBYTE(v30[2]) = *(a1 + 344);
  sub_1000517E4(&v30[3], a1 + 352);
  LOBYTE(v30[2]) = *(*(a1 + 568) + 16) == 2;
  subscriber::makeSimSlotRange();
  v8 = v27;
  v7 = v28;
  if (v27 != v28)
  {
    v9 = v29;
    do
    {
      if (v29(*v8))
      {
        break;
      }

      ++v8;
    }

    while (v8 != v28);
    v10 = v28;
    while (v8 != v10)
    {
      v11 = *v8;
      v25 = 0;
      v26 = 0;
      MaxDataRateManager::getModel_sync(a1, v11, &v25);
      v12 = v25;
      if (v25)
      {
        if (*(v25 + 48))
        {
          v13 = sub_10062FE80(v25 + 24, *(v25 + 8));
        }

        else
        {
          v13 = 0;
        }

        *(v12 + 16) = v13;
        if (*(v12 + 168))
        {
          v14 = sub_10062FE80(v12 + 144, *(v12 + 128));
        }

        else
        {
          v14 = 0;
        }

        *(v12 + 136) = v14;
        if (*(v12 + 288))
        {
          v15 = sub_10062FE80(v12 + 264, *(v12 + 248));
        }

        else
        {
          v15 = 0;
        }

        *(v12 + 256) = v15;
        if (*(v12 + 408))
        {
          v16 = sub_10062FE80(v12 + 384, *(v12 + 368));
        }

        else
        {
          v16 = 0;
        }

        *(v12 + 376) = v16;
        v17 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, v11);
        *buf = v11;
        v31 = !v17;
        sub_100626598(&v30[3], buf, &v31);
        v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), v11);
        v19 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = asString();
          *buf = 136315138;
          v33 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I 2G Switch support retrieved: %s", buf, 0xCu);
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = asString();
          *buf = 136315138;
          v33 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I 3G Switch support retrieved: %s", buf, 0xCu);
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v22 = asString();
          *buf = 136315138;
          v33 = v22;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I LTE Switch support retrieved: %s", buf, 0xCu);
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v23 = asString();
          *buf = 136315138;
          v33 = v23;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I 5G Switch support retrieved: %s", buf, 0xCu);
        }
      }

      if (v26)
      {
        sub_100004A34(v26);
      }

      do
      {
        ++v8;
      }

      while (v8 != v7 && (v9(*v8) & 1) == 0);
    }
  }

  return sub_10062A978(v30);
}

void sub_10061B344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10062A978(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getModel_sync@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(result + 552);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = result + 552;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 != result + 552 && *(v4 + 32) <= a2)
  {
    v6 = *(v4 + 40);
    v5 = *(v4 + 48);
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t MaxDataRateManager::setMaxDataRateMandatory_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (MaxDataRateManager::is3GSwitchSupported_sync(a1, a2) == 2 && MaxDataRateManager::isLTESwitchSupported_sync(a1, a2) == 2)
  {
    v9 = *v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I 3G and LTE switches are supported", v49, 2u);
    }

    return MaxDataRateManager::send3GAndLTEUserPreference_sync(a1, a2, v5, a4);
  }

  v10 = 0;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v30 = *(a1 + 568);
        if (*(v30 + 16) != 2 || *(v30 + 136) == 2)
        {
          v31 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2);
          v32 = *v8;
          v33 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
          if (v31)
          {
            if (v33)
            {
              *v49 = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Setting max data rate to 2G", v49, 2u);
            }

            MaxDataRateManager::setUserPreferenceEnable3G_sync(a1, a2, 0, a4);
            v10 = 1;
            goto LABEL_54;
          }

          if (!v33)
          {
            goto LABEL_53;
          }

          *v49 = 0;
          v17 = "#I Tried setting data rate to 2G when regulated rats are disabled";
          v18 = v32;
          goto LABEL_51;
        }

        v39 = *v8;
        if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *v49 = 0;
        v17 = "#I Tried setting data rate to 2G when legacy rats are disabled";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_54;
        }

        v11 = *(a1 + 568);
        if (*(v11 + 16) != 2 || *(v11 + 136) == 2)
        {
          v12 = MaxDataRateManager::carrierAndDeviceSupportLTE_sync(a1, a2);
          if ((v12 & 0x100) != 0)
          {
            v13 = v12;
            v14 = *v8;
            v15 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
            if (v13)
            {
              if (v15)
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I LTE capable device, disabling LTE", v49, 2u);
              }

              v10 = MaxDataRateManager::setUserPreferenceEnableLTE_sync(a1, a2, 0, a4);
            }

            else
            {
              if (v15)
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I LTE non-capable device, Setting max data rate to 3G", v49, 2u);
              }

              MaxDataRateManager::setUserPreferenceEnable3G_sync(a1, a2, 1, a4);
              v10 = 1;
            }

            *v49 = 0;
            *&v49[8] = 0;
            ServiceMap = Registry::getServiceMap(*(a1 + 56));
            sub_1012CA814(v49, ServiceMap);
            if (*v49 && (*(**v49 + 16))(*v49))
            {
              MaxDataRateManager::setUserPreferenceEnable5G_sync(a1, a2, 0, a4);
            }

            v45 = *&v49[8];
            if (!*&v49[8])
            {
              goto LABEL_54;
            }

            goto LABEL_76;
          }

LABEL_53:
          v10 = 0;
          goto LABEL_54;
        }

        v39 = *v8;
        if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *v49 = 0;
        v17 = "#I Tried setting data rate to 3G when legacy rats are disabled";
      }

      v18 = v39;
LABEL_51:
      v19 = 2;
      goto LABEL_52;
    }

    goto LABEL_18;
  }

  if ((v5 - 5) < 4)
  {
LABEL_18:
    v16 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *v49 = 136315138;
    *&v49[4] = asString();
    v17 = "#I Not handling setting maximum data rate to %s";
    v18 = v16;
    goto LABEL_20;
  }

  if (v5 == 3)
  {
    v34 = MaxDataRateManager::carrierAndDeviceSupportLTE_sync(a1, a2);
    if ((v34 & 0x100) == 0)
    {
      goto LABEL_53;
    }

    v35 = v34;
    v36 = *v8;
    v37 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      if (v37)
      {
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I LTE capable device, enabling LTE", v49, 2u);
      }

      Registry::getTelephonyCapabilities(v49, *(a1 + 56));
      v38 = (*(**v49 + 40))(*v49);
      if (*&v49[8])
      {
        sub_100004A34(*&v49[8]);
      }

      if (v38)
      {
        MaxDataRateManager::setUserPreferenceEnable5G_sync(a1, a2, 0, a4);
      }

      v10 = MaxDataRateManager::setUserPreferenceEnableLTE_sync(a1, a2, 1, a4);
      goto LABEL_54;
    }

    if (!v37)
    {
      goto LABEL_53;
    }

    *v49 = 136315138;
    *&v49[4] = asString();
    v17 = "#I Not handling setting maximum data rate to %s on non-LTE capable devices";
    v18 = v36;
LABEL_20:
    v19 = 12;
LABEL_52:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, v49, v19);
    goto LABEL_53;
  }

  if (v5 != 4)
  {
    goto LABEL_54;
  }

  v20 = Registry::getServiceMap(*(a1 + 56));
  v21 = v20;
  if (v22 < 0)
  {
    v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(v20);
  *v49 = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, v49);
  if (v26)
  {
    v28 = v26[3];
    v27 = v26[4];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
      v29 = 0;
      goto LABEL_67;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
LABEL_67:
  if (v28 && (*(*v28 + 16))(v28))
  {
    v46 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I 5G capable device, enabling 5G", v49, 2u);
    }

    MaxDataRateManager::setUserPreferenceEnableLTE_sync(a1, a2, 1, 2);
    v10 = 1;
    MaxDataRateManager::setUserPreferenceEnable5G_sync(a1, a2, 1, a4);
  }

  else
  {
    v47 = *v8;
    v10 = 0;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v48 = asString();
      *v49 = 136315138;
      *&v49[4] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Not handling setting maximum data rate to %s on non-5G capable devices", v49, 0xCu);
      v10 = 0;
    }
  }

  if (v29)
  {
    goto LABEL_54;
  }

  v45 = v27;
LABEL_76:
  sub_100004A34(v45);
LABEL_54:
  v40 = *v8;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = asString();
    v42 = CSIBOOLAsString(v10);
    *v49 = 136315394;
    *&v49[4] = v41;
    *&v49[12] = 2080;
    *&v49[14] = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Setting max data rate to %s resulted in %s", v49, 0x16u);
  }

  return v10;
}