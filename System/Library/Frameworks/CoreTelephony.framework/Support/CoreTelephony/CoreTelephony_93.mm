uint64_t sub_1005FCF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1005FD4E4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FD04C(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FD0DC(a1, &v4);
}

void sub_1005FD0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FD0DC(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FD16C(a1, &v4);
}

void sub_1005FD154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FD16C(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FD26C(off_101E6A1D0, &v4, a1 + 1);
}

void sub_1005FD200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD218(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FD2F4(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_1005FD238(unsigned __int8 **a1)
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

void sub_1005FD26C(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_1005FD418(a1, &v5, a3);
}

void sub_1005FD2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD2F4(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK6RedialhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK6RedialhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FD418(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FD4CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD4E4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2880 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FD564(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FD564(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "Redial";
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

uint64_t sub_1005FD66C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_1005FD6D4(&v6, a4, a1);
  *(v4 + 24) = 2;
  return 1;
}

void sub_1005FD6D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 16))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FD758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD770(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1005FD7D8(&v6, a4, a1);
  *(v4 + 24) = 2;
  return 1;
}

void sub_1005FD7D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 16))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FD85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD874(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 3;
  sub_1005FD8DC(&v6, a4, a1);
  *(v4 + 24) = 2;
  return 1;
}

void sub_1005FD8DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 16))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FD960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FD978(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FD9FC(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FDAFC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FD9FC(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_1005FD978, 0, a1, v5, 5, v6);
    sub_1005FDBAC(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FDAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_1005FDAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1005FE044(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FDBAC(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FDC3C(a1, &v4);
}

void sub_1005FDC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FDC3C(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FDCCC(a1, &v4);
}

void sub_1005FDCB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FDCCC(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FDDCC(off_101E6A1F0, &v4, a1 + 1);
}

void sub_1005FDD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FDD78(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FDE54(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_1005FDD98(unsigned __int8 **a1)
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

void sub_1005FDDCC(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_1005FDF78(a1, &v5, a3);
}

void sub_1005FDE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FDE54(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK14STKCallDialinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK14STKCallDialinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FDF78(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FE02C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE044(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB28F8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FE0C4(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FE0C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "STKCallDialing";
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

uint64_t sub_1005FE1CC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  sub_1005FE22C(&v6, a4, a1);
  *(v4 + 24) = 4;
  return 1;
}

void sub_1005FE22C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 4), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FE2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE2CC(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FE350(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FE450(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FE350(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_1005FE2CC, 0, a1, v5, 5, v6);
    sub_1005FE500(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FE414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_1005FE450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1005FE998(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FE500(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FE590(a1, &v4);
}

void sub_1005FE578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FE590(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FE620(a1, &v4);
}

void sub_1005FE608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FE620(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FE720(off_101E6A210, &v4, a1 + 1);
}

void sub_1005FE6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE6CC(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FE7A8(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_1005FE6EC(unsigned __int8 **a1)
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

void sub_1005FE720(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_1005FE8CC(a1, &v5, a3);
}

void sub_1005FE790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE7A8(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallAlertinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallAlertinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FE8CC(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FE980(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FE998(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2970 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FEA18(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FEA18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallAlerting";
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

uint64_t sub_1005FEB20(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1005FEB88(&v6, a4, a1);
  *(v4 + 24) = 6;
  return 1;
}

void sub_1005FEB88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FEC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FEC28(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FECAC(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FEDAC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FECAC(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_1005FEC28, 0, a1, v5, 5, v6);
    sub_1005FEE5C(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FED70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_1005FEDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1005FF2F4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FEE5C(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FEEEC(a1, &v4);
}

void sub_1005FEED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FEEEC(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FEF7C(a1, &v4);
}

void sub_1005FEF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FEF7C(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FF07C(off_101E6A230, &v4, a1 + 1);
}

void sub_1005FF010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF028(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1005FF104(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_1005FF048(unsigned __int8 **a1)
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

void sub_1005FF07C(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_1005FF228(a1, &v5, a3);
}

void sub_1005FF0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF104(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10CallActivehEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10CallActivehEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1005FF228(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1005FF2DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF2F4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB29E8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1005FF374(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1005FF374(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallActive";
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

uint64_t sub_1005FF47C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_1005FF4E4(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FF4E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FF56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF584(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_1005FF5EC(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FF5EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 112))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (*(**(a3 + 8) + 152))(*(a3 + 8), &v7), (*(**(a3 + 8) + 192))(*(a3 + 8), &v7, 1), (*(**(a3 + 8) + 200))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FF728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF740(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_1005FF7A8(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FF7A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 112))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (*(**(a3 + 8) + 152))(*(a3 + 8), &v7), (*(**(a3 + 8) + 192))(*(a3 + 8), &v7, 1), (*(**(a3 + 8) + 200))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FF8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FF8FC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1005FF964(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FF964(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 112))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (*(**(a3 + 8) + 152))(*(a3 + 8), &v7), (*(**(a3 + 8) + 192))(*(a3 + 8), &v7, 1), (*(**(a3 + 8) + 200))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FFAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FFAB8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_1005FFB20(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1005FFB20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 112))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (*(**(a3 + 8) + 152))(*(a3 + 8), &v7), (*(**(a3 + 8) + 192))(*(a3 + 8), &v7, 1), (*(**(a3 + 8) + 200))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1005FFC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005FFC74(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1005FFCF8(a1, a2))
  {
    return 1;
  }

  v6 = sub_1005FFDF8(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1005FFCF8(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_1005FFC74, 0, a1, v5, 5, v6);
    sub_1005FFEA8(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1005FFDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_1005FFDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100600340(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1005FFEA8(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FFF38(a1, &v4);
}

void sub_1005FFF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FFF38(uint64_t (***a1)(), __int128 *a2)
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
  sub_1005FFFC8(a1, &v4);
}

void sub_1005FFFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005FFFC8(uint64_t (***a1)(), __int128 *a2)
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
  sub_1006000C8(off_101E6A250, &v4, a1 + 1);
}

void sub_10060005C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600074(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100600150(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_100600094(unsigned __int8 **a1)
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

void sub_1006000C8(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_100600274(a1, &v5, a3);
}

void sub_100600138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600150(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallIncominghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallIncominghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100600274(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100600328(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600340(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2A60 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1006003C0(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1006003C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallIncoming";
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

uint64_t sub_1006004C8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_100600530(&v6, a4, a1);
  *(v4 + 24) = 1;
  return 1;
}

void sub_100600530(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 5), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006005B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006005D0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100600660(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100600758(&v10, a4, a1);
  *(v7 + 24) = 11;
  return 1;
}

BOOL sub_100600660(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 136))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are NOT allowed to go out to UI!", &v9, 2u);
    }
  }

  return v6;
}

void sub_100600740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100600758(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006007E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1006005D0(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1006008B4(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1006008B4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100600940(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100600A38(&v10, a4, a1);
  result = 1;
  *(v7 + 24) = 1;
  return result;
}

uint64_t sub_100600940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 136))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are allowed to go out to UI", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_100600A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100600A38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 5), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100600AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600AE0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100600B70(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100600C68(&v10, a4, a1);
  *(v7 + 24) = 11;
  return 1;
}

BOOL sub_100600B70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 136))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are NOT allowed to go out to UI!", &v9, 2u);
    }
  }

  return v6;
}

void sub_100600C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100600C68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100600CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100600D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_100600AE0(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_100600DC4(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_100600DC4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100600E50(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100600F48(&v10, a4, a1);
  result = 1;
  *(v7 + 24) = 1;
  return result;
}

uint64_t sub_100600E50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 136))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are allowed to go out to UI", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_100600F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100600F48(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I CallIncomingWithAltCall event. Sending Waiting status event", v9, 2u);
      }

      (*(**(a3 + 8) + 40))(*(a3 + 8), &v10, 8);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

void sub_100601020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601044(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1006010C8(a1, a2))
  {
    return 1;
  }

  v6 = sub_1006011C8(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1006010C8(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100601044, 0, a1, v5, 5, v6);
    sub_100601278(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060118C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_1006011C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100601710(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100601278(uint64_t (***a1)(), __int128 *a2)
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
  sub_100601308(a1, &v4);
}

void sub_1006012F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100601308(uint64_t (***a1)(), __int128 *a2)
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
  sub_100601398(a1, &v4);
}

void sub_100601380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100601398(uint64_t (***a1)(), __int128 *a2)
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
  sub_100601498(off_101E6A270, &v4, a1 + 1);
}

void sub_10060142C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601444(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100601520(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_100601464(unsigned __int8 **a1)
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

void sub_100601498(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_100601644(a1, &v5, a3);
}

void sub_100601508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601520(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11CallWaitinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11CallWaitinghEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100601644(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1006016F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601710(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2B50 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100601790(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100601790(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallWaiting";
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

uint64_t sub_100601898(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100601928(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100601A20(&v10, a4, a1);
  *(v7 + 24) = 11;
  return 1;
}

BOOL sub_100601928(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 136))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are NOT allowed to go out to UI!", &v9, 2u);
    }
  }

  return v6;
}

void sub_100601A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100601A20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100601AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_100601898(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_100601B7C(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_100601B7C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_100601C0C(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_100601D04(&v10, a4, a1);
  *(v7 + 24) = 8;
  return 1;
}

uint64_t sub_100601C0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 136))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call's notifications are allowed to go out to UI", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_100601CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100601D04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 176))(*(a3 + 8), 1), (*(**(a3 + 8) + 208))(*(a3 + 8), &v7), (*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 8), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100601DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601DFC(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100601E80(a1, a2))
  {
    return 1;
  }

  v6 = sub_100601FDC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100601E80(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    v4 = a2[1];
    v6[0] = *a2;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 39) < 0)
    {
      sub_100005F2C(v7, a2[2], a2[3]);
    }

    else
    {
      *v7 = *(a2 + 1);
      v8 = a2[4];
    }

    sub_10060208C(sub_100601DFC, 0, a1, v6, 5, v9);
    sub_100602438(&v10, v9);
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_100601F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100601FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100602B80(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060208C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = a4[1];
  v15 = *a4;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 39) < 0)
  {
    sub_100005F2C(v17, a4[2], a4[3]);
  }

  else
  {
    *v17 = *(a4 + 1);
    v18 = a4[4];
  }

  sub_100602248(v19, a3, &v15, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v12 = v19[1];
  *(a6 + 16) = v19[0];
  *(a6 + 24) = v12;
  v13 = v20;
  *(a6 + 32) = v20;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C((a6 + 40), __p, *(&__p + 1));
    v14 = SHIBYTE(v22);
    *(a6 + 64) = v23;
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a6 + 40) = __p;
    *(a6 + 56) = v22;
    *(a6 + 64) = v23;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

void sub_1006021C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v15 = *(v13 + 32);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  sub_100260030(va);
  sub_1005F6E2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100602208(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100602248(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = a3[1];
  v9 = *a3;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, a3[2], a3[3]);
  }

  else
  {
    __p = *(a3 + 1);
    v12 = a3[4];
  }

  sub_100602320(a1, a2, &v9, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

void sub_1006022F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100602320(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, a3[2], a3[3]);
    v8 = v10;
    v7 = v11;
  }

  else
  {
    __p = *(a3 + 1);
    v13 = a3[4];
  }

  *a1 = a2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C((a1 + 24), __p, *(&__p + 1));
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a1 + 24) = __p;
    *(a1 + 40) = v13;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(a1 + 48) = a4;
  return a1;
}

void sub_100602404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = *(v11 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_1005F6E2C(&a10);
  _Unwind_Resume(a1);
}

void sub_100602438(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_100602518(a1, &v6);
}

void sub_1006024F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100602518(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_1006025F8(a1, &v6);
}

void sub_1006025D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006025F8(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_100602748(off_101E6A290, &v6, a1 + 1);
}

void sub_1006026CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006026F4(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100602838(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_100602714(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[64];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_100602748(uint64_t a1, __int128 *a2, void *a3)
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

  v14 = *(a2 + 64);
  sub_1006029C8(a1, &v8, a3);
}

void sub_100602810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100602838(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallAnsweredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK12CallAnsweredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1006029A4(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1006029C8(uint64_t a1, __int128 *a2, void *a3)
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

  v14 = *(a2 + 64);
  sub_100602AB4(a1, &v8, a3);
}

void sub_100602A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100602B5C(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t sub_100602B80(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2BC8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100602C00(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100602C00(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallAnswered";
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

uint64_t sub_100602D08(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_100602D70(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_100602D70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 64))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100602DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100602E10(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100602E94(a1, a2))
  {
    return 1;
  }

  v6 = sub_100602F94(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100602E94(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100602E10, 0, a1, v5, 5, v6);
    sub_100603044(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100602F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100602F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1006034DC(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100603044(uint64_t (***a1)(), __int128 *a2)
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
  sub_1006030D4(a1, &v4);
}

void sub_1006030BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006030D4(uint64_t (***a1)(), __int128 *a2)
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
  sub_100603164(a1, &v4);
}

void sub_10060314C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100603164(uint64_t (***a1)(), __int128 *a2)
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
  sub_100603264(off_101E6A2B0, &v4, a1 + 1);
}

void sub_1006031F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603210(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1006032EC(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_100603230(unsigned __int8 **a1)
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

void sub_100603264(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_100603410(a1, &v5, a3);
}

void sub_1006032D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006032EC(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK9CallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK9CallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100603410(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1006034C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006034DC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2C40 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060355C(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060355C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallEnded";
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

uint64_t sub_100603664(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 11)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 11;
  sub_1006036CC(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1006036CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 1, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100603758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603770(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_1006037D8(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1006037D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 104))(*(a3 + 8), &v7), (*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100603890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006038A8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_100603910(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603910(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 104))(*(a3 + 8), &v7), (*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006039C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006039E0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_100603A48(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603A48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 1, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100603AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603AEC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_100603B54(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603B54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 104))(*(a3 + 8), &v7), (*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100603C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603C24(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_100603C8C(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603C8C(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I CallEnded occured while in Alerting state. Going to process the disconnect", v9, 2u);
      }

      (*(**(a3 + 8) + 104))(*(a3 + 8), &v10);
      (*(**(a3 + 8) + 72))(*(a3 + 8), &v10, 0, 0);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

uint64_t sub_100603DB8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 5;
  sub_100603E20(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603E20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 1, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100603EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100603EC4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_100603F2C(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100603F2C(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I CallEnded occured while in Dialing state. Going to process the disconnect", v9, 2u);
      }

      (*(**(a3 + 8) + 104))(*(a3 + 8), &v10);
      (*(**(a3 + 8) + 72))(*(a3 + 8), &v10, 0, 0);
      (*(**(a3 + 8) + 192))(*(a3 + 8), &v10, 0);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

uint64_t sub_100604088(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 3;
  sub_1006040F0(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1006040F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060417C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604194(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  sub_1006041FC(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_1006041FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100604288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006042A0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_100604308(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100604308(uint64_t a1, uint64_t *a2, uint64_t a3)
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
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I CallEnded occured while in Ringing state. Going to process the disconnect", v9, 2u);
      }

      (*(**(a3 + 8) + 72))(*(a3 + 8), &v10, 0, 0);
      v7 = v11;
      if (v11)
      {
LABEL_7:
        sub_100004A34(v7);
      }
    }
  }
}

void sub_1006043E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604408(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  sub_100604468(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100604468(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006044F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060450C(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100604590(a1, a2))
  {
    return 1;
  }

  v6 = sub_100604690(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100604590(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_10060450C, 0, a1, v5, 5, v6);
    sub_100604740(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100604654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100604690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100604BD8(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100604740(uint64_t (***a1)(), __int128 *a2)
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
  sub_1006047D0(a1, &v4);
}

void sub_1006047B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006047D0(uint64_t (***a1)(), __int128 *a2)
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
  sub_100604860(a1, &v4);
}

void sub_100604848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100604860(uint64_t (***a1)(), __int128 *a2)
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
  sub_100604960(off_101E6A2D0, &v4, a1 + 1);
}

void sub_1006048F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060490C(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1006049E8(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_10060492C(unsigned __int8 **a1)
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

void sub_100604960(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_100604B0C(a1, &v5, a3);
}

void sub_1006049D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006049E8(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10EndPressedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK10EndPressedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100604B0C(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100604BC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604BD8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2CB8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100604C58(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100604C58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "EndPressed";
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

uint64_t sub_100604D60(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_100604DC8(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100604DC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100604E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604E64(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_100604ECC(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100604ECC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100604F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100604F68(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_100604FD0(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100604FD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100605058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100605070(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_1006050D8(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1006050D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060515C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100605174(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 6;
  sub_1006051DC(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1006051DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100605260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100605278(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1006052E0(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1006052E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100605364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060537C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_100605414(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 3;
  sub_10060550C(&v10, a4, a1);
  *(v7 + 24) = 11;
  return 1;
}

uint64_t sub_100605414(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 128))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call has a valid call id", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_1006054F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060550C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100605590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006055CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_10060537C(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_100605664(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_100605664(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E97C();
  }

  if (!sub_1006056D4(&v7, a4, a1))
  {
    return 2;
  }

  *(a1 + 4 * a2 + 24) = 5;
  return 1;
}

BOOL sub_1006056D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 128))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call does NOT have a valid call id!", &v9, 2u);
    }
  }

  return v6;
}

void sub_1006057B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006057CC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  sub_100605834(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100605834(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006058C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006058D8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_100605940(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100605940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006059C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006059E0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  sub_100605A40(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100605A40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100605ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100605AE4(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_100605B68(a1))
  {
    return 1;
  }

  v6 = sub_100605C18(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100605B68(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_100605C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100605DF4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

uint64_t sub_100605CC8(uint64_t result, _WORD *a2, int a3)
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

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK19ExpectDisconnectionhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK19ExpectDisconnectionhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_100605DC0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_100605DF4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2D30 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100605E74(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100605E74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "ExpectDisconnection";
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

uint64_t sub_100605F7C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 10)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100605FA8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 7)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100605FD4(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100606058(a1, a2))
  {
    return 1;
  }

  v6 = sub_100606158(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100606058(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100605FD4, 0, a1, v5, 5, v6);
    sub_100606208(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060611C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100606158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1006066A0(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100606208(uint64_t (***a1)(), __int128 *a2)
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
  sub_100606298(a1, &v4);
}

void sub_100606280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100606298(uint64_t (***a1)(), __int128 *a2)
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
  sub_100606328(a1, &v4);
}

void sub_100606310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100606328(uint64_t (***a1)(), __int128 *a2)
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
  sub_100606428(off_101E6A310, &v4, a1 + 1);
}

void sub_1006063BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006063D4(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1006064B0(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_1006063F4(unsigned __int8 **a1)
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

void sub_100606428(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_1006065D4(a1, &v5, a3);
}

void sub_100606498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006064B0(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13EndAllPressedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK13EndAllPressedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1006065D4(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100606688(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006066A0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2DA8 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100606720(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100606720(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "EndAllPressed";
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

uint64_t sub_100606828(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 10)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100606854(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 7)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100606880(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 6)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_1006068AC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 4)
  {
    sub_10176E9D4();
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_1006068D8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E97C();
  }

  if (!sub_100606948(&v7, a4, a1))
  {
    return 2;
  }

  *(a1 + 4 * a2 + 24) = 11;
  return 1;
}

uint64_t sub_100606948(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v3 = a2[1];
  if (v3 && (v11 = std::__shared_weak_count::lock(v3)) != 0 && (v10 = *a2) != 0 && (*(**(a3 + 8) + 128))(*(a3 + 8), &v10))
  {
    v6 = *sub_1005F4DE4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I This call has a valid call id", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_100606A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100606A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1006068D8(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_100606AFC(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_100606AFC(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 3)
  {
    sub_10176E97C();
  }

  if (!sub_100606B6C(&v7, a4, a1))
  {
    return 2;
  }

  *(a1 + 4 * a2 + 24) = 5;
  return 1;
}

BOOL sub_100606B6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v6 = 1;
  if (v3)
  {
    v10 = std::__shared_weak_count::lock(v3);
    if (v10)
    {
      v9 = *a2;
      if (v9)
      {
        if ((*(**(a3 + 8) + 128))(*(a3 + 8), &v9))
        {
          v6 = 0;
        }
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v6)
  {
    v7 = *sub_1005F4DE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I This call does NOT have a valid call id!", &v9, 2u);
    }
  }

  return v6;
}

void sub_100606C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100606C64(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  sub_100606CCC(&v6, a4, a1);
  *(v4 + 24) = 12;
  return 1;
}

void sub_100606CCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 72))(*(a3 + 8), &v7, 0, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100606D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100606D70(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100606DF4(a1, a2))
  {
    return 1;
  }

  v6 = sub_100606EFC(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100606DF4(uint64_t a1, uint64_t *a2)
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

    v6 = *(a2 + 4);
    sub_100606FAC(sub_100606D70, 0, a1, v5, 5, v7);
    sub_100607180(&v8, v7);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100606EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
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

uint64_t sub_100606EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10060764C(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100606FAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a4[1];
  v13 = *a4;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a4 + 4);
  sub_100607094(v16, a3, &v13, a5);
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

void sub_10060707C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607094(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 4);
  sub_100607114(a1, a2, &v7, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_1006070FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607114(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a3 + 4);
    *a1 = a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = v8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v9 = *(a3 + 4);
    *a1 = a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = v9;
  }

  *(a1 + 32) = a4;
  return a1;
}

void sub_100607180(uint64_t (***a1)(), __int128 *a2)
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

  v8 = *(a2 + 10);
  v9 = *(a2 + 48);
  sub_100607218(a1, &v4);
}

void sub_100607200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100607218(uint64_t (***a1)(), __int128 *a2)
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

  v8 = *(a2 + 10);
  v9 = *(a2 + 48);
  sub_1006072B0(a1, &v4);
}

void sub_100607298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006072B0(uint64_t (***a1)(), __int128 *a2)
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

  v8 = *(a2 + 10);
  v9 = *(a2 + 48);
  sub_1006073B8(off_101E6A330, &v4, a1 + 1);
}

void sub_10060734C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607364(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100607448(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_100607384(unsigned __int8 **a1)
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

void sub_1006073B8(uint64_t a1, __int128 *a2, uint64_t *a3)
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

  v9 = *(a2 + 10);
  v10 = *(a2 + 48);
  sub_100607574(a1, &v5, a3);
}

void sub_100607430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607448(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11CallIgnoredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK11CallIgnoredhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100607574(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100607634(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060764C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2E20 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1006076CC(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1006076CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallIgnored";
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

uint64_t sub_1006077D4(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_10060783C(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060783C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006078C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006078D8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_100607940(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100607940(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, *(a2 + 4)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_1006079C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006079E0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_100607A48(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_100607A48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 96))(*(a3 + 8), &v7, *(a2 + 4)), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100607AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607AE8(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100607B6C(a1, a2))
  {
    return 1;
  }

  v6 = sub_100607C6C(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100607B6C(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100607AE8, 0, a1, v5, 5, v6);
    sub_100607D1C(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100607C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100607C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1006081B4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100607D1C(uint64_t (***a1)(), __int128 *a2)
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
  sub_100607DAC(a1, &v4);
}

void sub_100607D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100607DAC(uint64_t (***a1)(), __int128 *a2)
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
  sub_100607E3C(a1, &v4);
}

void sub_100607E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100607E3C(uint64_t (***a1)(), __int128 *a2)
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
  sub_100607F3C(off_101E6A350, &v4, a1 + 1);
}

void sub_100607ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607EE8(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100607FC4(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_100607F08(unsigned __int8 **a1)
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

void sub_100607F3C(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_1006080E8(a1, &v5, a3);
}

void sub_100607FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100607FC4(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK8CallHeldhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK8CallHeldhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1006080E8(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10060819C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006081B4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2E98 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100608234(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100608234(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallHeld";
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

uint64_t sub_10060833C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_1006083A4(&v6, a4, a1);
  *(v4 + 24) = 10;
  return 1;
}

void sub_1006083A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060842C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060844C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_1006084B0(&v6, a4, a1);
  *(v4 + 24) = 10;
  return 1;
}

void sub_1006084B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 1), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100608538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608550(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_1006085B4(&v6, a4, a1);
  *(v4 + 24) = 7;
  return 1;
}

void sub_1006085B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 0), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060863C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608654(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1006086D8(a1, a2))
  {
    return 1;
  }

  v6 = sub_1006087D8(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1006086D8(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100608654, 0, a1, v5, 5, v6);
    sub_100608888(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_10060879C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_1006087D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100608D20(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100608888(uint64_t (***a1)(), __int128 *a2)
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
  sub_100608918(a1, &v4);
}

void sub_100608900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100608918(uint64_t (***a1)(), __int128 *a2)
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
  sub_1006089A8(a1, &v4);
}

void sub_100608990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006089A8(uint64_t (***a1)(), __int128 *a2)
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
  sub_100608AA8(off_101E6A370, &v4, a1 + 1);
}

void sub_100608A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608A54(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100608B30(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_100608A74(unsigned __int8 **a1)
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

void sub_100608AA8(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_100608C54(a1, &v5, a3);
}

void sub_100608B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608B30(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK17CallAnswerFailurehEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK17CallAnswerFailurehEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100608C54(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100608D08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608D20(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB2F88 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_100608DA0(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_100608DA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "CallAnswerFailure";
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

uint64_t sub_100608EA8(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 9)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 9;
  sub_100608F10(&v6, a4, a1);
  *(v4 + 24) = 1;
  return 1;
}

void sub_100608F10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 40))(*(a3 + 8), &v7, 5), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100608F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100608FB0(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_100609034(a1, a2))
  {
    return 1;
  }

  v6 = sub_100609134(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_100609034(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_100608FB0, 0, a1, v5, 5, v6);
    sub_1006091E4(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_1006090F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100609134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10060967C(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_1006091E4(uint64_t (***a1)(), __int128 *a2)
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
  sub_100609274(a1, &v4);
}

void sub_10060925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100609274(uint64_t (***a1)(), __int128 *a2)
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
  sub_100609304(a1, &v4);
}

void sub_1006092EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100609304(uint64_t (***a1)(), __int128 *a2)
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
  sub_100609404(off_101E6A390, &v4, a1 + 1);
}

void sub_100609398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006093B0(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060948C(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_1006093D0(unsigned __int8 **a1)
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

void sub_100609404(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_1006095B0(a1, &v5, a3);
}

void sub_100609474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060948C(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK15ActiveCallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK15ActiveCallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_1006095B0(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100609664(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060967C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB3000 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_1006096FC(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_1006096FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "ActiveCallEnded";
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

uint64_t sub_100609804(uint64_t a1, int a2, int a3)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 10;
  (*(**(a1 + 8) + 144))(*(a1 + 8));
  *(v3 + 24) = 10;
  return 1;
}

uint64_t sub_100609868(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 7;
  sub_1006098D0(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_1006098D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 80))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_100609954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060996C(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_1006099F0(a1, a2))
  {
    return 1;
  }

  v6 = sub_100609AF0(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_1006099F0(uint64_t a1, uint64_t *a2)
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

    sub_1005F8474(sub_10060996C, 0, a1, v5, 5, v6);
    sub_100609BA0(&v7, v6);
  }

  *(a1 + 88) = 1;
  return v2 ^ 1u;
}

void sub_100609AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
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

uint64_t sub_100609AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10060A038(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_100609BA0(uint64_t (***a1)(), __int128 *a2)
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
  sub_100609C30(a1, &v4);
}

void sub_100609C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100609C30(uint64_t (***a1)(), __int128 *a2)
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
  sub_100609CC0(a1, &v4);
}

void sub_100609CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100609CC0(uint64_t (***a1)(), __int128 *a2)
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
  sub_100609DC0(off_101E6A3B0, &v4, a1 + 1);
}

void sub_100609D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100609D6C(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100609E48(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_100609D8C(unsigned __int8 **a1)
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

void sub_100609DC0(uint64_t a1, __int128 *a2, uint64_t *a3)
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
  sub_100609F6C(a1, &v5, a3);
}

void sub_100609E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100609E48(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK32WaitingCallAnsweredHeldCallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK32WaitingCallAnsweredHeldCallEndedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100609F6C(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10060A020(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060A038(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB3078 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060A0B8(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060A0B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "WaitingCallAnsweredHeldCallEnded";
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

uint64_t sub_10060A1C0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 10)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 10;
  sub_10060A228(&v6, a4, a1);
  *(v4 + 24) = 11;
  return 1;
}

void sub_10060A228(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 88))(*(a3 + 8), &v7), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060A2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060A2C4(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_10060A348(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060A4A4(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060A348(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    v4 = a2[1];
    v6[0] = *a2;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 39) < 0)
    {
      sub_100005F2C(v7, a2[2], a2[3]);
    }

    else
    {
      *v7 = *(a2 + 1);
      v8 = a2[4];
    }

    sub_10060A554(sub_10060A2C4, 0, a1, v6, 5, v9);
    sub_10060A8C0(&v10, v9);
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_10060A45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060A4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10060B008(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060A554(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = a4[1];
  v15 = *a4;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 39) < 0)
  {
    sub_100005F2C(v17, a4[2], a4[3]);
  }

  else
  {
    *v17 = *(a4 + 1);
    v18 = a4[4];
  }

  sub_10060A6D0(v19, a3, &v15, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v12 = v19[1];
  *(a6 + 16) = v19[0];
  *(a6 + 24) = v12;
  v13 = v20;
  *(a6 + 32) = v20;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C((a6 + 40), __p, *(&__p + 1));
    v14 = SHIBYTE(v22);
    *(a6 + 64) = v23;
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a6 + 40) = __p;
    *(a6 + 56) = v22;
    *(a6 + 64) = v23;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

void sub_10060A68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v15 = *(v13 + 32);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  sub_100260030(va);
  sub_1005F6E2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10060A6D0(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = a3[1];
  v9 = *a3;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, a3[2], a3[3]);
  }

  else
  {
    __p = *(a3 + 1);
    v12 = a3[4];
  }

  sub_10060A7A8(a1, a2, &v9, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

void sub_10060A780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060A7A8(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, a3[2], a3[3]);
    v8 = v10;
    v7 = v11;
  }

  else
  {
    __p = *(a3 + 1);
    v13 = a3[4];
  }

  *a1 = a2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C((a1 + 24), __p, *(&__p + 1));
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a1 + 24) = __p;
    *(a1 + 40) = v13;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(a1 + 48) = a4;
  return a1;
}

void sub_10060A88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = *(v11 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_1005F6E2C(&a10);
  _Unwind_Resume(a1);
}

void sub_10060A8C0(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_10060A9A0(a1, &v6);
}

void sub_10060A978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060A9A0(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_10060AA80(a1, &v6);
}

void sub_10060AA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060AA80(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_10060ABD0(off_101E6A3D0, &v6, a1 + 1);
}

void sub_10060AB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060AB7C(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060ACC0(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_10060AB9C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[64];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_10060ABD0(uint64_t a1, __int128 *a2, void *a3)
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

  v14 = *(a2 + 64);
  sub_10060AE50(a1, &v8, a3);
}

void sub_10060AC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060ACC0(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK33ActiveCallHeldWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK33ActiveCallHeldWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060AE2C(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10060AE50(uint64_t a1, __int128 *a2, void *a3)
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

  v14 = *(a2 + 64);
  sub_10060AF3C(a1, &v8, a3);
}

void sub_10060AF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060AFE4(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t sub_10060B008(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB30F0 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060B088(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060B088(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "ActiveCallHeldWaitingCallAccepted";
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

uint64_t sub_10060B190(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_10060B1F8(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060B1F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 48))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060B280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060B298(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_10060B300(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060B300(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 48))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060B388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060B3A0(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_10060B424(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060B580(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060B424(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    v4 = a2[1];
    v6[0] = *a2;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 39) < 0)
    {
      sub_100005F2C(v7, a2[2], a2[3]);
    }

    else
    {
      *v7 = *(a2 + 1);
      v8 = a2[4];
    }

    sub_10060B630(sub_10060B3A0, 0, a1, v6, 5, v9);
    sub_10060B99C(&v10, v9);
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_10060B538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10060C0E4(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060B630(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = a4[1];
  v15 = *a4;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 39) < 0)
  {
    sub_100005F2C(v17, a4[2], a4[3]);
  }

  else
  {
    *v17 = *(a4 + 1);
    v18 = a4[4];
  }

  sub_10060B7AC(v19, a3, &v15, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v12 = v19[1];
  *(a6 + 16) = v19[0];
  *(a6 + 24) = v12;
  v13 = v20;
  *(a6 + 32) = v20;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C((a6 + 40), __p, *(&__p + 1));
    v14 = SHIBYTE(v22);
    *(a6 + 64) = v23;
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a6 + 40) = __p;
    *(a6 + 56) = v22;
    *(a6 + 64) = v23;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

void sub_10060B768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v15 = *(v13 + 32);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  sub_100260030(va);
  sub_1005F6E2C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10060B7AC(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = a3[1];
  v9 = *a3;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, a3[2], a3[3]);
  }

  else
  {
    __p = *(a3 + 1);
    v12 = a3[4];
  }

  sub_10060B884(a1, a2, &v9, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

void sub_10060B85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060B884(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, a3[2], a3[3]);
    v8 = v10;
    v7 = v11;
  }

  else
  {
    __p = *(a3 + 1);
    v13 = a3[4];
  }

  *a1 = a2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C((a1 + 24), __p, *(&__p + 1));
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a1 + 24) = __p;
    *(a1 + 40) = v13;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  *(a1 + 48) = a4;
  return a1;
}

void sub_10060B968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = *(v11 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_1005F6E2C(&a10);
  _Unwind_Resume(a1);
}

void sub_10060B99C(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_10060BA7C(a1, &v6);
}

void sub_10060BA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060BA7C(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_10060BB5C(a1, &v6);
}

void sub_10060BB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060BB5C(uint64_t (***a1)(), __int128 *a2)
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

  v12 = *(a2 + 64);
  sub_10060BCAC(off_101E6A3F0, &v6, a1 + 1);
}

void sub_10060BC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060BC58(uint64_t a1, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10060BD9C(a1, a2, a3);
  }

  a2[4] = 0;
  return a1;
}

uint64_t sub_10060BC78(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[64];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

void sub_10060BCAC(uint64_t a1, __int128 *a2, void *a3)
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

  v14 = *(a2 + 64);
  sub_10060BF2C(a1, &v8, a3);
}

void sub_10060BD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060BD9C(uint64_t result, _WORD *a2, int a3)
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
    if (result == ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK44HoldEndActiveCallRquestedWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineI15CallStatusStateNS_9parameter5void_ESA_SA_SA_EERK44HoldEndActiveCallRquestedWaitingCallAcceptedhEENS0_5list3INS0_5valueIPSB_EENSH_ISC_EENSH_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10060BF08(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10060BF2C(uint64_t a1, __int128 *a2, void *a3)
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

  v14 = *(a2 + 64);
  sub_10060C018(a1, &v8, a3);
}

void sub_10060BFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060C0C0(_Unwind_Exception *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t sub_10060C0E4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(&unk_101FB3168 + *(a1 + 24) + 1))();
  v7 = v6;
  if ((*(a1 + 89) != 1 || a3) && !v6)
  {
    sub_10060C164(a1, a2, a1, *(a1 + 24));
  }

  return v7;
}

void sub_10060C164(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    v10 = "HoldEndActiveCallRquestedWaitingCallAccepted";
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

uint64_t sub_10060C26C(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 8)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 8;
  sub_10060C2D4(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060C2D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 64))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060C35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060C374(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_10060C3DC(&v6, a4, a1);
  *(v4 + 24) = 9;
  return 1;
}

void sub_10060C3DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v6 = std::__shared_weak_count::lock(v3);
    v8 = v6;
    if (v6)
    {
      v7 = *a2;
      if (!v7 || ((*(**(a3 + 8) + 64))(*(a3 + 8), &v7, a2 + 2), (v6 = v8) != 0))
      {
        sub_100004A34(v6);
      }
    }
  }
}

void sub_10060C464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060C47C(int64x2_t *a1, uint64_t *a2, char a3)
{
  if (!sub_10060C500(a1, a2))
  {
    return 1;
  }

  v6 = sub_10060C66C(a1, a2, &v8, a3 & 1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1005F8CEC(a1);
  }

  return v6;
}

uint64_t sub_10060C500(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    v5 = a2[1];
    v7[0] = *a2;
    v7[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 39) < 0)
    {
      sub_100005F2C(v8, a2[2], a2[3]);
    }

    else
    {
      *v8 = *(a2 + 1);
      v9 = a2[4];
    }

    v10 = a2[5];
    sub_10060C71C(sub_10060C47C, 0, a1, v7, 5, v11);
    sub_10060CACC(&v12, v11);
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_10060C624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060C66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10060D24C(a1, a2, a4);
  std::exception::~exception(&v6);
  return v4;
}

void sub_10060C71C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a4[1];
  v17 = *a4;
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 39) < 0)
  {
    sub_100005F2C(v19, a4[2], a4[3]);
  }

  else
  {
    *v19 = *(a4 + 1);
    v20 = a4[4];
  }

  v21 = a4[5];
  sub_10060C8B0(v22, a3, &v17, a5);
  *a6 = a1;
  *(a6 + 8) = a2;
  v13 = v22[1];
  *(a6 + 16) = v22[0];
  *(a6 + 24) = v13;
  v14 = v23;
  *(a6 + 32) = v23;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C((a6 + 40), __p, *(&__p + 1));
    v16 = SHIBYTE(v25);
    *(a6 + 64) = v26;
    *(a6 + 72) = v27;
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a6 + 40) = __p;
    v15 = v26;
    *(a6 + 56) = v25;
    *(a6 + 64) = v15;
    *(a6 + 72) = v27;
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_10060C86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v16 = *(v14 + 32);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_100260030(va);
  sub_1005F6E2C(&a9);
  _Unwind_Resume(a1);
}