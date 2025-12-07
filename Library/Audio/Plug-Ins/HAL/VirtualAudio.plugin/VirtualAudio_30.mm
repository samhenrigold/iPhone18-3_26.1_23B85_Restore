void sub_26A4AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_26A4C4(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_26A520(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  if (v2->__shared_owners_ == -1)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (*a1)
  {
    v5 = (*(**a1 + 160))(*a1);
  }

  else
  {
    v5 = 0;
  }

  sub_1A8C0(v4);
  return v5;
}

BOOL sub_26A5C0(uint64_t a1)
{
  if (a1 <= 1919186543)
  {
    if (a1 > 1919050850)
    {
      if (a1 <= 1919181935)
      {
        if (a1 == 1919050851)
        {
          return 0;
        }

        v3 = 1919118966;
      }

      else
      {
        if (a1 == 1919181936 || a1 == 1919184754)
        {
          return 0;
        }

        v3 = 1919185776;
      }
    }

    else if (a1 <= 1667327074)
    {
      if (!a1)
      {
        return 0;
      }

      v3 = 1651799408;
    }

    else
    {
      if (a1 == 1667327075 || a1 == 1918989155)
      {
        return 0;
      }

      v3 = 1919050611;
    }

    goto LABEL_30;
  }

  result = 1;
  if (a1 <= 1919971426)
  {
    if (a1 <= 1919904884)
    {
      if (a1 == 1919186544)
      {
        return result;
      }

      v3 = 1919842148;
    }

    else
    {
      if (a1 == 1919904885 || a1 == 1919907442)
      {
        return 0;
      }

      v3 = 1919970403;
    }

    goto LABEL_30;
  }

  if (a1 > 1920168052)
  {
    if (a1 == 1920429155)
    {
      return 0;
    }

    if (a1 == 1920360819)
    {
      return result;
    }

    v3 = 1920168053;
LABEL_30:
    if (a1 != v3)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (a1 == 1919971427 || a1 == 1919971701)
  {
    return 0;
  }

  if (a1 == 1920099684)
  {
    return result;
  }

LABEL_33:
  v4 = sub_5544(20);
  v5 = *v4;
  if (!*v4)
  {
    return 0;
  }

  result = os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_22170(__p, a1);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v10 = "RoutingManager_Utilities.h";
    v11 = 1024;
    v12 = 131;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported VirtualAudioPlugInRouteChangeReason %s", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_26A870(uint64_t **a1, uint64_t a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  sub_26AD34(&v27, *a2);
  v6 = v27;
  if (v27 != v28)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (((*(*v6[4] + 152))(v6[4]) & 1) == 0)
      {
        v21 = sub_5544(14);
        v22 = *v21;
        if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v30 = "RoutingManager.cpp";
          v31 = 1024;
          v32 = 3101;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): one of the specified ports is not connected.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "one of the specified ports is not connected.");
LABEL_42:
      }

      if (((*(*v6[4] + 160))(v6[4]) & 1) == 0)
      {
        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v30 = "RoutingManager.cpp";
          v31 = 1024;
          v32 = 3102;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): one of the specified ports is not routable.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "one of the specified ports is not routable.");
        goto LABEL_42;
      }

      if (a3 || (*(a2 + 8) & 1) == 0)
      {
        if (a3 == 1 && (*(a2 + 9) & 1) != 0 && (v6[4][23] & 1) == 0)
        {
          if (v7)
          {
            v12 = std::__shared_weak_count::lock(v7);
            if (v12)
            {
              v10 = v12;
              atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v12);
              v13 = std::__shared_weak_count::lock(v10);
              if (v13)
              {
                sub_1A8C0(v13);
                std::__shared_weak_count::__release_weak(v10);
                if (v8)
                {
                  v25 = sub_5544(14);
                  v26 = *v25;
                  if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v30 = "RoutingManager.cpp";
                    v31 = 1024;
                    v32 = 3111;
                    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): more than one output specified in inPortsForOverride.", buf, 0x12u);
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "more than one output specified in inPortsForOverride.");
                  goto LABEL_42;
                }

                goto LABEL_23;
              }

LABEL_22:
              std::__shared_weak_count::__release_weak(v10);
            }
          }

LABEL_23:
          v8 = v6[4];
          v14 = v6[5];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          *a1 = v8;
          a1[1] = v14;
          if (v7)
          {
            std::__shared_weak_count::__release_weak(v7);
          }

          goto LABEL_27;
        }
      }

      else if (v6[4][23])
      {
        if (v7)
        {
          v9 = std::__shared_weak_count::lock(v7);
          if (v9)
          {
            v10 = v9;
            atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v9);
            v11 = std::__shared_weak_count::lock(v10);
            if (!v11)
            {
              goto LABEL_22;
            }

            sub_1A8C0(v11);
            std::__shared_weak_count::__release_weak(v10);
            if (v8)
            {
              v23 = sub_5544(14);
              v24 = *v23;
              if (*v23)
              {
                if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v30 = "RoutingManager.cpp";
                  v31 = 1024;
                  v32 = 3106;
                  _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): more than one input specified in inPortsForOverride.", buf, 0x12u);
                }
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "more than one input specified in inPortsForOverride.");
              goto LABEL_42;
            }
          }
        }

        goto LABEL_23;
      }

      v14 = v7;
LABEL_27:
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v7 = v14;
      v6 = v16;
    }

    while (v16 != v28);
  }

  sub_1199A8(v28[0]);
}

void sub_26ACDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  __cxa_free_exception(v12);
  sub_1199A8(a11);
  v14 = *(v11 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(a1);
}

void sub_26AD34(uint64_t ***a1, void *a2)
{
  v14 = 0;
  v15 = 0;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
    v11 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v13 = (a1 + 1);
LABEL_20:
    *a1 = v13;
    goto LABEL_21;
  }

  do
  {
    v5 = v4[5];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        if (v4[4])
        {
          v7 = v14 ? &v15 : &v14;
          if (!*v7)
          {
            operator new();
          }
        }

        sub_1A8C0(v6);
      }
    }

    v8 = v4[1];
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
      do
      {
        v9 = v4[2];
        v10 = *v9 == v4;
        v4 = v9;
      }

      while (!v10);
    }

    v4 = v9;
  }

  while (v9 != v3);
  v11 = v14;
  v12 = v15;
  *a1 = &v14;
  a1[1] = v11;
  v13 = (a1 + 1);
  a1[2] = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  *(v11 + 16) = v13;
  v14 = 0;
  v15 = 0;
  v11 = 0;
LABEL_21:
  sub_1199A8(v11);
}

void sub_26AF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    sub_1A8C0(v11);
  }

  sub_1199A8(a11);
  _Unwind_Resume(a1);
}

void *sub_26AF78(uint64_t **a1, unint64_t *a2, void *a3)
{
  result = sub_871F0(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_26B028(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  for (i = *(a2 + 8); i != a2; i = *(i + 8))
  {
    v16 = 0;
    v17 = 0;
    v26[0] = off_6BC5B8;
    v26[1] = &v16;
    v26[3] = v26;
    v5 = sub_26B270((i + 16), v26);
    sub_26B5B8(v26);
    if ((v5 & 1) == 0)
    {
      v6 = sub_5544(8);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        sub_FC33C(v14, i + 16);
        v8 = v15;
        v9 = v14[0];
        sub_FC33C(__p, &v16);
        v10 = v14;
        if (v8 < 0)
        {
          v10 = v9;
        }

        v11 = __p;
        if (v13 < 0)
        {
          v11 = __p[0];
        }

        *buf = 136315906;
        v19 = "RoutingManager.cpp";
        v20 = 1024;
        v21 = 284;
        v22 = 2080;
        v23 = v10;
        v24 = 2080;
        v25 = v11;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disallowing port %s for colistening, partner port is %s", buf, 0x26u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      sub_26AF78(a1, (i + 16), (i + 16));
    }

    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_26B21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  sub_4B0F4(*a10);
  _Unwind_Resume(a1);
}

uint64_t sub_26B270(uint64_t *a1, uint64_t a2)
{
  sub_88A00(&v22, a1, "", 214);
  v4 = *(v22 + 144);
  v5 = 1;
  if (v4 > 1886152040)
  {
    if (v4 != 1886152041)
    {
      v6 = 1886216820;
      goto LABEL_6;
    }

LABEL_18:
    v5 = 0;
    goto LABEL_29;
  }

  if (v4 == 1885892674)
  {
    sub_88A00(&v24, a1, "", 210);
    v13 = (*(*v24 + 112))(v24);
    if (v25)
    {
      sub_1A8C0(v25);
    }

    if ((v13 & 0x1FFFFFFFFLL) != 0x165707668)
    {
      sub_26B638(&v24, a1, 1885892706);
      if (v25)
      {
        sub_88A00(&v20, &v24, "", 241);
        v26 = 0x676C6F6273687370;
        v27 = 0;
        v14 = sub_59410(v20, &v26, 0, 0);
        *(&v17 + 1) = v15;
        *&v17 = v14;
        v16 = v17 >> 32;
        v5 = 1;
        if ((v16 & 0x100000000) != 0 && v16)
        {
          v18 = *(a2 + 24);
          if (!v18)
          {
            sub_46A74();
          }

          v5 = (*(*v18 + 48))(v18, &v24);
        }

        if (v21)
        {
          sub_1A8C0(v21);
        }

        goto LABEL_26;
      }

LABEL_28:
      v5 = 1;
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v6 = 1885892706;
LABEL_6:
  if (v4 != v6)
  {
    goto LABEL_29;
  }

  v24 = 0x676C6F6273687370;
  LODWORD(v25) = 0;
  v7 = sub_59410(v22, &v24, 0, 0);
  *(&v10 + 1) = v8;
  *&v10 = v7;
  v9 = v10 >> 32;
  if ((v9 & 0x100000000) != 0)
  {
    if (v9)
    {
      goto LABEL_29;
    }
  }

  sub_88A00(&v24, a1, "", 210);
  v11 = (*(*v24 + 112))(v24);
  if (v25)
  {
    sub_1A8C0(v25);
  }

  if ((v11 & 0x1FFFFFFFFLL) == 0x165707668)
  {
    goto LABEL_28;
  }

  sub_26B638(&v24, a1, 1885892674);
  if (!v25)
  {
    goto LABEL_28;
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    sub_46A74();
  }

  v5 = (*(*v12 + 48))(v12, &v24);
LABEL_26:
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

LABEL_29:
  if (v23)
  {
    sub_1A8C0(v23);
  }

  return v5;
}

void sub_26B550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26B5B8(uint64_t a1)
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

void sub_26B638(uint64_t *a1, uint64_t *a2, int a3)
{
  sub_88A00(&v11, a2, "", 184);
  sub_11319C(v13, v11);
  sub_76388(&v14, v13);
  sub_65310(v13);
  if (v12)
  {
    sub_1A8C0(v12);
  }

  v5 = v15;
  if (v15 != &v14)
  {
    do
    {
      v7 = v5[2];
      v6 = v5[3];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *(v7 + 144);
        sub_1A8C0(v6);
        if (v8 == a3)
        {
          goto LABEL_10;
        }
      }

      else if (*(v7 + 144) == a3)
      {
        goto LABEL_10;
      }

      v5 = v5[1];
    }

    while (v5 != &v14);
    goto LABEL_13;
  }

LABEL_10:
  if (v5 == &v14)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = v5[2];
  v9 = v5[3];
  if (!v9)
  {
LABEL_14:
    *a1 = v10;
    a1[1] = 0;
    goto LABEL_15;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a1 = v10;
  a1[1] = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_1A8C0(v9);
LABEL_15:
  sub_87980(&v14);
}

void sub_26B748(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  sub_65310(va);
  if (a5)
  {
    sub_1A8C0(a5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26B770(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return 0;
}

uint64_t sub_26B7BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BC5B8;
  a2[1] = v2;
  return result;
}

void sub_26B850(_DWORD *a1, uint64_t a2, std::string::size_type *a3)
{
  sub_27A4();
  v5 = atomic_load(&qword_6E9558);
  if (v5 == pthread_self())
  {
    v6 = a3[1];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *a3;
        if (*a3)
        {
          if (((*(*v9 + 160))(*a3) & 1) == 0 && (*(v9 + 184) & 0x40) != 0)
          {
            v10 = sub_809C0();
            v30 = v9;
            v31 = v8;
            atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_22ED54(buf, &v30, 1);
            sub_1150D4(v10, buf, 1, 1);
            sub_65310(buf);
            if (v31)
            {
              std::__shared_weak_count::__release_weak(v31);
            }
          }

          sub_114A00(buf, v9);
          sub_26BC74(a2, buf);
          sub_65310(buf);
        }

        sub_1A8C0(v8);
      }
    }

    sub_7B03C(&v30, (a2 + 72));
    v11 = sub_5544(8);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_265514(&__p, &v30);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      v25 = "RoutingManager.cpp";
      v26 = 1024;
      v27 = 4261;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d disallowed ports in current route config: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = *(a2 + 144);
    v15 = *(a2 + 408);
    v16 = *(a2 + 410);
    v17 = *a3;
    v18 = a3[1];
    __p.__r_.__value_.__r.__words[0] = v17;
    __p.__r_.__value_.__l.__size_ = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    LOWORD(__p.__r_.__value_.__r.__words[2]) = 0;
    LOBYTE(v22) = v15;
    sub_C25C0(buf, a2, (a2 + 32), (a2 + 48), &v30, (a2 + 120), v14, (a2 + 152), a2 + 200, (a2 + 240), v22, (a2 + 416), 1919907442, (a2 + 440), (a2 + 472), v16, &__p);
  }

  v19 = sub_5544(14);
  v20 = *v19;
  if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "RoutingManager.cpp";
    v26 = 1024;
    v27 = 4247;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Thread is not holding routing mutex", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Thread is not holding routing mutex");
}

void sub_26BBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_65310(va);
  v23 = *(v21 - 112);
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  sub_1A8C0(v20);
  _Unwind_Resume(a1);
}

void sub_26BC74(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    return;
  }

  v3 = *(a1 + 32);
  if (v3 <= 1668313665)
  {
    v4 = v3 == 1668114797 || v3 == 1668301427;
    v5 = 24946;
    goto LABEL_9;
  }

  if (v3 <= 1668576376)
  {
    v4 = v3 == 1668313666;
    v5 = 29299;
LABEL_9:
    v6 = v5 | 0x63700000;
    goto LABEL_11;
  }

  v4 = v3 == 1668703084;
  v6 = 1668576377;
LABEL_11:
  if (v4 || v3 == v6)
  {
    for (i = a2[1]; i != a2; i = i[1])
    {
      v9 = i[3];
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = v10;
          v12 = i[2];
          if (v12)
          {
            v13 = *(v12 + 184);
            if ((v13 & 0x40) != 0 && (v13 & 1) == 0 && *(v12 + 144) == 1885892706)
            {
              v14 = sub_809C0();
              __p = v12;
              v23 = v11;
              atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_22ED54(buf, &__p, 1);
              sub_1150D4(v14, buf, 1, 1);
              sub_65310(buf);
              if (v23)
              {
                std::__shared_weak_count::__release_weak(v23);
              }

              v15 = sub_5544(2);
              v16 = sub_5544(35);
              v17 = 0;
              *buf = 0x100000002;
              v18 = *(v15 + 8);
              while (1)
              {
                v19 = *&buf[v17];
                if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
                {
                  break;
                }

                v17 += 4;
                if (v17 == 8)
                {
                  goto LABEL_31;
                }
              }

              if ((v18 & v19) == 0)
              {
                v15 = v16;
              }

LABEL_31:
              v20 = *v15;
              if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                sub_23148(&__p, (v12 + 8));
                p_p = &__p;
                if (v24 < 0)
                {
                  p_p = __p;
                }

                *buf = 136315650;
                *&buf[4] = "RoutingManager.cpp";
                v26 = 1024;
                v27 = 4507;
                v28 = 2080;
                v29 = p_p;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding preferred port sibling output port to routable ports: %s", buf, 0x1Cu);
                if (v24 < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }

          sub_1A8C0(v11);
        }
      }
    }
  }
}

void sub_26BF70(uint64_t a1)
{
  v2 = sub_5544(8);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "RoutingManager.cpp";
    v18 = 1024;
    v19 = 6131;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CachedPortStack: ", buf, 0x12u);
  }

  v4 = *(a1 + 528);
  for (i = *(a1 + 536); v4 != i; v4 += 2)
  {
    sub_25704(&v14, v4, "", 6133);
    v6 = sub_5544(8);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v14;
      sub_23148(__p, v14 + 2);
      v9 = v13 >= 0 ? __p : __p[0];
      v10 = (*(*v8 + 360))(v8);
      v11 = (*(*v8 + 368))(v8);
      *buf = 136316162;
      v17 = "RoutingManager.cpp";
      v18 = 1024;
      v19 = 6135;
      v20 = 2080;
      v21 = v9;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Modified Port: %s, SupportsInEarState(%d), GetInEarState(%d)", buf, 0x28u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v15)
    {
      sub_1A8C0(v15);
    }
  }
}

void sub_26C1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_1A8C0(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C200(const void **a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(a2 + 528);
  if (v3 != *(a2 + 536))
  {
    v4 = a1;
    while (1)
    {
      sub_25704(&v38, v3, "", 6121);
      v5 = v38;
      if (*(v38 + 303) < 0)
      {
        sub_54A0(&__dst, *(v38 + 280), *(v38 + 288));
      }

      else
      {
        __dst = *(v38 + 280);
        v41 = *(v38 + 296);
      }

      v6 = HIBYTE(v41);
      v7 = SHIBYTE(v41);
      v8 = __dst;
      if (SHIBYTE(v41) >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (SHIBYTE(v41) < 0)
      {
        v6 = *(&__dst + 1);
      }

      v10 = *(a3 + 23);
      v11 = v10 >= 0 ? a3 : *a3;
      v12 = v10 >= 0 ? *(a3 + 23) : *(a3 + 8);
      if (v12)
      {
        break;
      }

      v15 = 0;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_36;
      }

LABEL_37:
      v21 = v39;
      if (!v15)
      {
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = v4[1];
        v22 = v4[2];
        if (v23 >= v22)
        {
          v25 = *v4;
          v26 = v23 - *v4;
          v27 = v26 >> 4;
          v28 = (v26 >> 4) + 1;
          if (v28 >> 60)
          {
            sub_189A00();
          }

          v29 = v22 - v25;
          if (v29 >> 3 > v28)
          {
            v28 = v29 >> 3;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF0)
          {
            v30 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          v43 = v4;
          if (v30)
          {
            sub_1DC690(v30);
          }

          v31 = (16 * v27);
          *v31 = v5;
          v31[1] = v21;
          v24 = 16 * v27 + 16;
          v32 = &v31[-2 * (v26 >> 4)];
          memcpy(v32, v25, v26);
          v33 = *v4;
          *v4 = v32;
          v4[1] = v24;
          v34 = v4[2];
          v4[2] = 0;
          v41 = v33;
          v42 = v34;
          *&__dst = v33;
          *(&__dst + 1) = v33;
          sub_B1540(&__dst);
        }

        else
        {
          *v23 = v5;
          v23[1] = v21;
          v24 = (v23 + 2);
        }

        v4[1] = v24;
      }

      if (v21)
      {
        sub_1A8C0(v21);
      }

      v3 += 2;
      if (v3 == *(a2 + 536))
      {
        return;
      }
    }

    v13 = p_dst + v6;
    if (v6 >= v12)
    {
      v16 = *v11;
      v17 = p_dst;
      do
      {
        v18 = v6 - v12;
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v16, v18 + 1);
        if (!v19)
        {
          break;
        }

        v14 = v19;
        if (!memcmp(v19, v11, v12))
        {
          goto LABEL_28;
        }

        v17 = (v14 + 1);
        v6 = v13 - (v14 + 1);
      }

      while (v6 >= v12);
      v14 = v13;
LABEL_28:
      v4 = a1;
    }

    else
    {
      v14 = p_dst + v6;
    }

    v15 = v14 == v13 || v14 - p_dst == -1;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_36:
    operator delete(v8);
    goto LABEL_37;
  }
}

void sub_26C46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
    sub_1A8C0(v14);
  }

  a13 = a10;
  sub_86D0C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_26C4B8(uint64_t *a1, void *a2, int a3)
{
  if (!a3)
  {
    v22 = sub_5544(8);
    v23 = sub_5544(35);
    v24 = 0;
    *buf = 0x100000002;
    v25 = *(v22 + 8);
    while (1)
    {
      v26 = *&buf[v24];
      if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
      {
        break;
      }

      v24 += 4;
      if (v24 == 8)
      {
        goto LABEL_37;
      }
    }

    if ((v25 & v26) == 0)
    {
      v22 = v23;
    }

LABEL_37:
    v27 = *v22;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4560;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Making BTLE Ports routable (Setting:Always)", buf, 0x12u);
    }

    goto LABEL_74;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      goto LABEL_73;
    }

    v3 = sub_5544(8);
    v4 = sub_5544(35);
    v5 = 0;
    *buf = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&buf[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_42;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_42:
    v28 = *v3;
    if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4521;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Making BTLE Ports unroutable (Setting:Never)", buf, 0x12u);
    }

    v29 = 0;
    goto LABEL_75;
  }

  sub_2679B4(v45, *a1);
  memset(buf, 0, sizeof(buf));
  strcpy(v52, "cwdv");
  v52[8] = 0;
  v53 = 3;
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  v58 = 0;
  v59 = 0;
  __p = 0;
  v56 = 44739104;
  v9 = sub_809C0();
  *v49 = off_6BC4E0;
  v50 = v49;
  sub_256FB0(v43, v9, buf, v49);
  sub_85148(v49);
  *v49 = v45;
  sub_26CB40(v43[1], v43, v44, v49);
  if (!v44)
  {
    v30 = sub_5544(8);
    v31 = sub_5544(35);
    v32 = 0;
    *v49 = 0x100000002;
    v33 = *(v30 + 8);
    while (1)
    {
      v34 = *&v49[v32];
      if (((v33 & v34) != 0) != ((*(v31 + 8) & v34) != 0))
      {
        break;
      }

      v32 += 4;
      if (v32 == 8)
      {
        goto LABEL_56;
      }
    }

    if ((v33 & v34) == 0)
    {
      v30 = v31;
    }

LABEL_56:
    v40 = *v30;
    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 136315394;
      *&v49[4] = "RoutingManager.cpp";
      *&v49[12] = 1024;
      *&v49[14] = 4553;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Making BTLE Ports routable (Setting:Automatic)", v49, 0x12u);
    }

    LOBYTE(v21) = 0;
    goto LABEL_68;
  }

  v11 = *(v43[0] + 16);
  v10 = *(v43[0] + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a2[1];
  if (v12 == a2)
  {
LABEL_30:
    LOBYTE(v21) = 1;
    goto LABEL_66;
  }

  while (1)
  {
    v13 = v12[3];
    if (v13)
    {
      v14 = v12[2];
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = std::__shared_weak_count::lock(v13);
      v16 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *v49 = v14;
        *&v49[8] = v15;
        sub_1A8C0(v15);
        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
    }

    *v49 = 0;
    *&v49[8] = 0;
LABEL_17:
    v17 = sub_26817C(v45, v49);
    v47 = 0;
    v48 = 0;
    if (v10)
    {
      v18 = std::__shared_weak_count::lock(v10);
      v19 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v47 = v11;
        v48 = v18;
        sub_1A8C0(v18);
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_26817C(v45, &v47);
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v17 > v20)
    {
      break;
    }

    v12 = v12[1];
    if (v12 == a2)
    {
      goto LABEL_30;
    }
  }

  v35 = sub_5544(8);
  v36 = sub_5544(35);
  v37 = 0;
  *v49 = 0x100000002;
  v38 = *(v35 + 8);
  while (1)
  {
    v39 = *&v49[v37];
    if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
    {
      break;
    }

    v37 += 4;
    if (v37 == 8)
    {
      goto LABEL_62;
    }
  }

  if ((v38 & v39) == 0)
  {
    v35 = v36;
  }

LABEL_62:
  v21 = *v35;
  if (v21)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 136315394;
      *&v49[4] = "RoutingManager.cpp";
      *&v49[12] = 1024;
      *&v49[14] = 4546;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Making BTLE Ports routable (Setting:Automatic)", v49, 0x12u);
    }

    LOBYTE(v21) = 0;
  }

LABEL_66:
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_68:
  sub_65310(v43);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v55[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  sub_477A0(v46);
  if ((v21 & 1) == 0)
  {
LABEL_74:
    v29 = 1;
LABEL_75:
    v41 = 1;
    return v29 | (v41 << 8);
  }

LABEL_73:
  v29 = 0;
  v41 = 0;
  return v29 | (v41 << 8);
}

void sub_26CA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  sub_65310(&a9);
  sub_46934(va);
  sub_477A0(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_26CB40(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      v9 = *(*a2 + 24);
      v54[0] = *(*a2 + 16);
      v54[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(a1 + 24);
      v53[0] = *(a1 + 16);
      v53[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = sub_26CF1C(a4, v54, v53);
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v11)
      {
        v13 = *v8;
        v12 = v8[1];
        *(v13 + 8) = v12;
        *v12 = v13;
        v14 = *v4;
        *(v14 + 8) = v8;
        *v8 = v14;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v16 = a3 >> 1;
      v17 = (a3 >> 1) + 1;
      v18 = a1;
      do
      {
        v18 = v18[1];
        --v17;
      }

      while (v17 > 1);
      v19 = sub_26CB40(a1, v18, a3 >> 1, a4);
      v4 = sub_26CB40(v18, a2, a3 - v16, a4);
      v20 = v4[3];
      v52[0] = v4[2];
      v52[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v19[3];
      v51[0] = v19[2];
      v51[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = sub_26CF1C(a4, v52, v51);
      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v22)
      {
        for (i = v4[1]; i != a2; i = i[1])
        {
          v24 = i[3];
          v50[0] = i[2];
          v50[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = v19[3];
          v49[0] = v19[2];
          v49[1] = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = sub_26CF1C(a4, v50, v49);
          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
            if (!v26)
            {
              break;
            }
          }

          else if (!v26)
          {
            break;
          }
        }

        v27 = *i;
        v28 = *(*i + 8);
        v29 = *v4;
        *(v29 + 8) = v28;
        *v28 = v29;
        v30 = *v19;
        v31 = v19[1];
        *(v30 + 8) = v4;
        *v4 = v30;
        *v19 = v27;
        *(v27 + 8) = v19;
      }

      else
      {
        v31 = v19[1];
        i = v4;
        v4 = v19;
      }

      if (v31 != i && i != a2)
      {
        v32 = i;
        do
        {
          v33 = i[3];
          v48[0] = i[2];
          v48[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = v31[3];
          v47[0] = v31[2];
          v47[1] = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = sub_26CF1C(a4, v48, v47);
          if (v34)
          {
            std::__shared_weak_count::__release_weak(v34);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v35)
          {
            for (j = i[1]; j != a2; j = j[1])
            {
              v37 = j[3];
              v46[0] = j[2];
              v46[1] = v37;
              if (v37)
              {
                atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v38 = v31[3];
              v45[0] = v31[2];
              v45[1] = v38;
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v39 = sub_26CF1C(a4, v46, v45);
              if (v38)
              {
                std::__shared_weak_count::__release_weak(v38);
              }

              if (v37)
              {
                std::__shared_weak_count::__release_weak(v37);
                if (!v39)
                {
                  break;
                }
              }

              else if (!v39)
              {
                break;
              }
            }

            v40 = *j;
            v41 = *(*j + 8);
            v42 = *i;
            *(v42 + 8) = v41;
            *v41 = v42;
            if (v32 == i)
            {
              v32 = j;
            }

            v44 = *v31;
            v43 = v31[1];
            *(v44 + 8) = i;
            *i = v44;
            *v31 = v40;
            *(v40 + 8) = v31;
            v31 = v43;
            i = j;
          }

          else
          {
            v31 = v31[1];
          }
        }

        while (v31 != v32 && i != a2);
      }
    }
  }

  return v4;
}

void sub_26CED0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_26CF1C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v21 = 0;
  v22 = 0;
  v6 = a2[1];
  if (v6)
  {
    v8 = std::__shared_weak_count::lock(v6);
    v9 = v8;
    if (v8)
    {
      v10 = *a2;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v21 = v10;
      v22 = v8;
      sub_1A8C0(v8);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_26817C(v5, &v21);
  v12 = *a1;
  v19 = 0;
  v20 = 0;
  v13 = a3[1];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    v15 = v14;
    if (v14)
    {
      v16 = *a3;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v19 = v16;
      v20 = v14;
      sub_1A8C0(v14);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = sub_26817C(v12, &v19);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return v11 < v17;
}

void sub_26D02C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_26D058(uint64_t *a1, void *a2, void *a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2 != a3)
  {
    operator new();
  }

  return a1;
}

uint64_t sub_26D168(uint64_t a1, _OWORD *a2, void *a3, void *a4, uint64_t **a5, void *a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v15 = a1;
  *a1 = *a2;
  sub_7FD64((a1 + 16), a3);
  *(v15 + 48) = 0;
  v16 = (v15 + 48);
  v17 = (v15 + 40);
  *(v15 + 40) = v15 + 48;
  *(v15 + 80) = 0;
  *(v15 + 72) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = v15 + 72;
  v39 = v15;
  sub_44E44((v15 + 88), a4);
  sub_44E44((v15 + 112), a6);
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  *(v15 + 152) = 0;
  *(v15 + 156) = 1;
  *(v15 + 160) = a8;
  *(v15 + 168) = *a7;
  if (*(a7 + 31) < 0)
  {
    sub_54A0((v15 + 176), *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v18 = *(a7 + 8);
    *(v15 + 192) = *(a7 + 24);
    *(v15 + 176) = v18;
  }

  v19 = *(a7 + 32);
  *(v15 + 208) = 0u;
  *(v15 + 200) = v19;
  *(v15 + 288) = 0u;
  *(v15 + 304) = 0u;
  *(v15 + 368) = 0;
  *(v15 + 224) = 0u;
  *(v15 + 240) = 0u;
  *(v15 + 256) = 0u;
  *(v15 + 272) = 0u;
  *(v15 + 288) = 1065353216;
  *(v15 + 296) = 0u;
  *(v15 + 320) = 0u;
  *(v15 + 336) = 0u;
  *(v15 + 312) = 0u;
  *(v15 + 328) = 1065353216;
  *(v15 + 352) = 0u;
  *(v15 + 368) = 1065353216;
  *(v15 + 376) = 0;
  *(v15 + 380) = 0;
  *(v15 + 384) = 0;
  *(v15 + 386) = a9;
  *(v15 + 392) = 0;
  *(v15 + 416) = 0;
  *(v15 + 424) = 0;
  *(v15 + 432) = 0;
  *(v15 + 440) = 0;
  *(v15 + 448) = 0;
  *(v15 + 456) = a10;
  if (v17 == a5)
  {
    return v15;
  }

  v22 = *a5;
  v20 = a5 + 1;
  v21 = v22;
  if (*(v15 + 56))
  {
    v23 = *v17;
    *v17 = v16;
    *(*v16 + 16) = 0;
    *v16 = 0;
    *(v15 + 56) = 0;
    if (v23[1])
    {
      v24 = v23[1];
    }

    else
    {
      v24 = v23;
    }

    if (v24)
    {
      v25 = sub_1658B4(v24);
      if (v21 == v20)
      {
        v27 = v24;
      }

      else
      {
        v26 = v21;
        do
        {
          v27 = v25;
          v29 = v26[4];
          v28 = v26[5];
          if (v28)
          {
            atomic_fetch_add_explicit((v28 + 16), 1uLL, memory_order_relaxed);
          }

          v30 = v24[5];
          v24[4] = v29;
          v24[5] = v28;
          if (v30)
          {
            std::__shared_weak_count::__release_weak(v30);
          }

          v31 = *v16;
          v32 = v16;
          v33 = v16;
          if (*v16)
          {
            do
            {
              while (1)
              {
                v32 = v31;
                if (!sub_87164(v24 + 4, v31 + 4))
                {
                  break;
                }

                v31 = *v32;
                v33 = v32;
                if (!*v32)
                {
                  goto LABEL_22;
                }
              }

              v31 = v32[1];
            }

            while (v31);
            v33 = v32 + 1;
          }

LABEL_22:
          sub_46B44(v17, v32, v33, v24);
          if (v27)
          {
            v25 = sub_1658B4(v27);
          }

          else
          {
            v25 = 0;
          }

          v34 = v26[1];
          if (v34)
          {
            do
            {
              v21 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v21 = v26[2];
              v35 = *v21 == v26;
              v26 = v21;
            }

            while (!v35);
          }

          if (!v27)
          {
            break;
          }

          v24 = v27;
          v26 = v21;
        }

        while (v21 != v20);
      }

      sub_4B0F4(v27);
      v15 = v39;
      if (!v25)
      {
        goto LABEL_40;
      }

      for (i = v25[2]; i; i = i[2])
      {
        v25 = i;
      }

      v36 = v25;
    }

    else
    {
      v36 = 0;
    }

    sub_4B0F4(v36);
  }

LABEL_40:
  if (v21 != v20)
  {
    operator new();
  }

  return v15;
}

void sub_26D500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 144);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_477A0(*(a10 + 120));
  sub_477A0(*(a10 + 96));
  sub_2626B0(v10);
  sub_4B0F4(*(a10 + 24));
  _Unwind_Resume(a1);
}

__n128 sub_26D5B8(uint64_t a1, void ***a2, void ***a3, void ***a4, void ***a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v29 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    if ((sub_6F834(v8 + 4, i + 4) & 0x80) != 0)
    {
      sub_26D9C0(a6, v8 + 4);
      v21 = *a2;
      v22 = (*a2)[1];
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
          v23 = v21[2];
          v17 = *v23 == v21;
          v21 = v23;
        }

        while (!v17);
      }

      *a2 = v23;
    }

    else if ((sub_6F834(i + 4, v8 + 4) & 0x80) != 0)
    {
      v24 = i[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = i[2];
          v17 = *v25 == i;
          i = v25;
        }

        while (!v17);
      }

      *a4 = v25;
    }

    else
    {
      v15 = v8[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v8[2];
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      *a2 = v16;
      v18 = *a4;
      v19 = (*a4)[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v18[2];
          v17 = *v20 == v18;
          v18 = v20;
        }

        while (!v17);
      }

      *a4 = v20;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v29 = *a6;
  if (v8 != v9)
  {
    do
    {
      sub_26D9C0(&v29, v8 + 4);
      v26 = v8[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v8[2];
          v17 = *v27 == v8;
          v8 = v27;
        }

        while (!v17);
      }

      v8 = v27;
    }

    while (v27 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v29;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

uint64_t **sub_26D7C0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_1658B4(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v17;
          v11 = sub_1E2CB4(v5, &v14, v17 + 4);
          sub_46B44(v5, v14, v11, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = sub_1658B4(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_26D970(&v15);
  }

  if (a2 != a3)
  {
    sub_23F700(&v15, v5, (a2 + 4));
  }

  return result;
}

void sub_26D95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26D970(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26D970(uint64_t a1)
{
  sub_98A08(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_98A08(v2);
  }

  return a1;
}

uint64_t sub_26D9C0(uint64_t a1, void ***a2)
{
  v3 = sub_23F54C(*a1, *(a1 + 8), a2, a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

_BYTE *sub_26DA2C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27A4();
  v28 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v10 = atomic_load(&qword_6E9558);
  if (v10 != pthread_self())
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "RoutingManager.cpp";
      v32 = 1024;
      *v33 = 2455;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
LABEL_34:
    __cxa_throw(exception, v21, v20);
  }

  if (*(a3 + 32))
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "RoutingManager.cpp";
      v32 = 1024;
      *v33 = 2458;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_33;
  }

  if (*(a3 + 168) != 1852796517)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "RoutingManager.cpp";
      v32 = 1024;
      *v33 = 2459;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_33;
  }

  v11 = *(a3 + 199);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 184);
  }

  if (v11)
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "RoutingManager.cpp";
      v32 = 1024;
      *v33 = 2460;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_33:
    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "Precondition failure.");
    goto LABEL_34;
  }

  sub_26DF08(buf, a2, a3, a4, a5, 1);
  v12 = *buf;
  if (!*buf)
  {
    v29[0] = v29;
    v29[1] = v29;
    v29[2] = 0;
    v13 = *&v33[2];
    if (*&v33[2] != (&v31 + 4))
    {
      do
      {
        v14 = sub_840F4(*(a3 + 386), &v31 + 4, v13 + 2);
        v15 = v13[1];
        if (v14)
        {
          while (1)
          {
            if (v15 == (&v31 + 4))
            {
              sub_CFE14(v29, v29, &v31 + 4, v13, v15);
              goto LABEL_15;
            }

            if (!sub_840F4(*(a3 + 386), &v31 + 4, v15 + 2))
            {
              break;
            }

            v15 = v15[1];
          }

          sub_CFE14(v29, v29, &v31 + 4, v13, v15);
          v15 = v15[1];
        }

LABEL_15:
        v13 = v15;
      }

      while (v15 != (&v31 + 4));
    }

    sub_65310(v29);
    v12 = *buf;
  }

  *a1 = v12;
  sub_65234((a1 + 8), &v31 + 4);
  sub_65310((&v31 + 4));
  return sub_210C50(&v28);
}

void sub_26DE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_26DF08(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_27A4();
  v12 = atomic_load(&qword_6E9558);
  if (v12 != pthread_self())
  {
    v104 = sub_5544(14);
    v105 = *v104;
    if (*v104 && os_log_type_enabled(*v104, OS_LOG_TYPE_ERROR))
    {
      *v135 = 136315394;
      *&v135[4] = "RoutingManager.cpp";
      *&v135[12] = 1024;
      *&v135[14] = 5359;
      _os_log_impl(&dword_0, v105, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v135, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a3 + 32))
  {
    v107 = sub_5544(14);
    v108 = *v107;
    if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_ERROR))
    {
      *v135 = 136315394;
      *&v135[4] = "RoutingManager.cpp";
      *&v135[12] = 1024;
      *&v135[14] = 5361;
      _os_log_impl(&dword_0, v108, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v135, 0x12u);
    }

    v109 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v109, "Precondition failure.");
  }

  if (*(a3 + 168) != 1852796517)
  {
    v110 = sub_5544(14);
    v111 = *v110;
    if (*v110 && os_log_type_enabled(*v110, OS_LOG_TYPE_ERROR))
    {
      *v135 = 136315394;
      *&v135[4] = "RoutingManager.cpp";
      *&v135[12] = 1024;
      *&v135[14] = 5362;
      _os_log_impl(&dword_0, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v135, 0x12u);
    }

    v112 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v112, "Precondition failure.");
  }

  sub_7EDC8(v135, a2, a3);
  v13 = sub_5544(8);
  if (*(v13 + 8))
  {
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        sub_BCD50(&v128, v135);
        v113 = SHIBYTE(v128.__r_.__value_.__r.__words[2]);
        v114 = v128.__r_.__value_.__r.__words[0];
        memset(&v127, 0, sizeof(v127));
        std::string::append(&v127, "[ ", 2uLL);
        v15 = *(a4 + 8);
        if (*a4 == v15)
        {
          v20 = *(a4 + 24);
          if (v20 == 1986295651)
          {
            if ((*(a4 + 32) & 1) == 0)
            {
              if (!*(a4 + 64))
              {
                v21 = *(a4 + 103);
                if ((v21 & 0x80u) != 0)
                {
                  v21 = *(a4 + 88);
                }

                if (!v21)
                {
                  v23 = (a4 + 72);
                  v22 = *(a4 + 72);
                  v24 = v22 & 3;
                  if (v24 == 2)
                  {
                    v25 = v22 & 0xC;
                    if (v25 == 8)
                    {
                      v26 = v22 & 0x30;
                      if (v26 == 32)
                      {
                        v27 = v22 & 0xC0;
                        if (v27 == 128)
                        {
                          v28 = v22 & 0x300;
                          if (v28 == 512)
                          {
                            v29 = v22 & 0xC00;
                            if (v29 == 2048)
                            {
                              v30 = v22 & 0x3000;
                              if (v30 == 0x2000)
                              {
                                v31 = v22 & 0xC000;
                                if (v31 == 0x8000)
                                {
                                  v32 = v22 & 0x30000;
                                  if ((v22 & 0x30000) == 0x20000)
                                  {
                                    v33 = v22 & 0xC0000;
                                    if ((v22 & 0xC0000) == 0x80000)
                                    {
                                      v34 = v22 & 0x300000;
                                      if ((v22 & 0x300000) == 0x200000)
                                      {
                                        v35 = v22 & 0xC00000;
                                        if (v35 == 0x800000)
                                        {
                                          v36 = "empty";
                                          v37 = 5;
LABEL_200:
                                          std::string::append(&v127, v36, v37);
                                          goto LABEL_201;
                                        }

LABEL_194:
                                        if (v35)
                                        {
                                          v36 = "not high quality";
                                        }

                                        else
                                        {
                                          v36 = "high quality";
                                        }

                                        if (v35)
                                        {
                                          v37 = 16;
                                        }

                                        else
                                        {
                                          v37 = 12;
                                        }

                                        goto LABEL_200;
                                      }

                                      goto LABEL_185;
                                    }

                                    goto LABEL_176;
                                  }

                                  goto LABEL_167;
                                }

                                goto LABEL_158;
                              }

                              goto LABEL_149;
                            }

                            goto LABEL_140;
                          }

                          goto LABEL_131;
                        }

                        goto LABEL_122;
                      }

                      goto LABEL_113;
                    }

                    goto LABEL_104;
                  }

                  goto LABEL_95;
                }

                goto LABEL_83;
              }

              goto LABEL_67;
            }

            goto LABEL_53;
          }
        }

        else
        {
          sub_10898C(&v130, *a4, v15);
          v16 = std::string::insert(&v130, 0, "Port types: ", 0xCuLL);
          v17 = *&v16->__r_.__value_.__l.__data_;
          __p[2] = v16->__r_.__value_.__r.__words[2];
          *__p = v17;
          v16->__r_.__value_.__l.__size_ = 0;
          v16->__r_.__value_.__r.__words[2] = 0;
          v16->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          if (SHIBYTE(__p[2]) >= 0)
          {
            v19 = HIBYTE(__p[2]);
          }

          else
          {
            v19 = __p[1];
          }

          std::string::append(&v127, v18, v19);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          if (*(a4 + 24) == 1986295651)
          {
            goto LABEL_51;
          }

          std::string::append(&v127, "; ", 2uLL);
          v20 = *(a4 + 24);
        }

        sub_22170(&v129, v20);
        v38 = std::string::insert(&v129, 0, "Allowed VAD type: ", 0x12uLL);
        v39 = *&v38->__r_.__value_.__l.__data_;
        v130.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&v130.__r_.__value_.__l.__data_ = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        v40 = std::string::append(&v130, "; ", 2uLL);
        v41 = *&v40->__r_.__value_.__l.__data_;
        __p[2] = v40->__r_.__value_.__r.__words[2];
        *__p = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v43 = HIBYTE(__p[2]);
        }

        else
        {
          v43 = __p[1];
        }

        std::string::append(&v127, v42, v43);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

LABEL_51:
        if ((*(a4 + 32) & 1) == 0)
        {
LABEL_65:
          if (!*(a4 + 64))
          {
LABEL_79:
            v56 = *(a4 + 103);
            if ((v56 & 0x80u) != 0)
            {
              v56 = *(a4 + 88);
            }

            if (!v56)
            {
              goto LABEL_93;
            }

            std::string::append(&v127, "; ", 2uLL);
LABEL_83:
            std::operator+<char>();
            v57 = std::string::append(&v130, "; ", 2uLL);
            v58 = *&v57->__r_.__value_.__l.__data_;
            __p[2] = v57->__r_.__value_.__r.__words[2];
            *__p = v58;
            v57->__r_.__value_.__l.__size_ = 0;
            v57->__r_.__value_.__r.__words[2] = 0;
            v57->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p[2]) >= 0)
            {
              v59 = __p;
            }

            else
            {
              v59 = __p[0];
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v60 = HIBYTE(__p[2]);
            }

            else
            {
              v60 = __p[1];
            }

            std::string::append(&v127, v59, v60);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v130.__r_.__value_.__l.__data_);
            }

LABEL_93:
            v23 = (a4 + 72);
            v61 = *(a4 + 72);
            if ((v61 & 3) == 2)
            {
LABEL_102:
              if ((v61 & 0xC) == 8)
              {
LABEL_111:
                if ((v61 & 0x30) == 0x20)
                {
LABEL_120:
                  if ((v61 & 0xC0) == 0x80)
                  {
LABEL_129:
                    if ((v61 & 0x300) == 0x200)
                    {
LABEL_138:
                      if ((v61 & 0xC00) == 0x800)
                      {
LABEL_147:
                        if ((v61 & 0x3000) == 0x2000)
                        {
LABEL_156:
                          if ((v61 & 0xC000) == 0x8000)
                          {
LABEL_165:
                            if ((v61 & 0x30000) == 0x20000)
                            {
LABEL_174:
                              if ((v61 & 0xC0000) == 0x80000)
                              {
LABEL_183:
                                if ((v61 & 0x300000) == 0x200000)
                                {
LABEL_192:
                                  if ((v61 & 0xC00000) == 0x800000)
                                  {
LABEL_201:
                                    std::string::append(&v127, " ]", 2uLL);
                                    v84 = &v128;
                                    if (v113 < 0)
                                    {
                                      v84 = v114;
                                    }

                                    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                    {
                                      v85 = &v127;
                                    }

                                    else
                                    {
                                      v85 = v127.__r_.__value_.__r.__words[0];
                                    }

                                    *buf = 136315906;
                                    *&buf[4] = "RoutingManager.cpp";
                                    v133 = 1024;
                                    *v134 = 5368;
                                    *&v134[4] = 2080;
                                    *&v134[6] = v84;
                                    *&v134[14] = 2080;
                                    *&v134[16] = v85;
                                    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d For %s and filter %s", buf, 0x26u);
                                    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v127.__r_.__value_.__l.__data_);
                                    }

                                    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v128.__r_.__value_.__l.__data_);
                                    }

                                    goto LABEL_210;
                                  }

                                  std::string::append(&v127, "; ", 2uLL);
                                  v35 = *v23 & 0xC00000;
                                  goto LABEL_194;
                                }

                                std::string::append(&v127, "; ", 2uLL);
                                v34 = *v23 & 0x300000;
LABEL_185:
                                if (v34)
                                {
                                  v82 = "not auto";
                                }

                                else
                                {
                                  v82 = "auto";
                                }

                                if (v34)
                                {
                                  v83 = 8;
                                }

                                else
                                {
                                  v83 = 4;
                                }

                                std::string::append(&v127, v82, v83);
                                std::string::append(&v127, " set partner routability", 0x18uLL);
                                v61 = *v23;
                                goto LABEL_192;
                              }

                              std::string::append(&v127, "; ", 2uLL);
                              v33 = *v23 & 0xC0000;
LABEL_176:
                              if (v33)
                              {
                                v80 = "not auto";
                              }

                              else
                              {
                                v80 = "auto";
                              }

                              if (v33)
                              {
                                v81 = 8;
                              }

                              else
                              {
                                v81 = 4;
                              }

                              std::string::append(&v127, v80, v81);
                              std::string::append(&v127, " set sibling routability", 0x18uLL);
                              v61 = *v23;
                              goto LABEL_183;
                            }

                            std::string::append(&v127, "; ", 2uLL);
                            v32 = *v23 & 0x30000;
LABEL_167:
                            if (v32)
                            {
                              v78 = "cannot set routable";
                            }

                            else
                            {
                              v78 = "can set routable";
                            }

                            if (v32)
                            {
                              v79 = 19;
                            }

                            else
                            {
                              v79 = 16;
                            }

                            std::string::append(&v127, v78, v79);
                            v61 = *v23;
                            goto LABEL_174;
                          }

                          std::string::append(&v127, "; ", 2uLL);
                          v31 = *v23 & 0xC000;
LABEL_158:
                          if (v31)
                          {
                            v76 = "not built-in";
                          }

                          else
                          {
                            v76 = "built-in";
                          }

                          if (v31)
                          {
                            v77 = 12;
                          }

                          else
                          {
                            v77 = 8;
                          }

                          std::string::append(&v127, v76, v77);
                          v61 = *v23;
                          goto LABEL_165;
                        }

                        std::string::append(&v127, "; ", 2uLL);
                        v30 = *v23 & 0x3000;
LABEL_149:
                        if (v30)
                        {
                          v74 = "not client visible";
                        }

                        else
                        {
                          v74 = "client visible";
                        }

                        if (v30)
                        {
                          v75 = 18;
                        }

                        else
                        {
                          v75 = 14;
                        }

                        std::string::append(&v127, v74, v75);
                        v61 = *v23;
                        goto LABEL_156;
                      }

                      std::string::append(&v127, "; ", 2uLL);
                      v29 = *v23 & 0xC00;
LABEL_140:
                      if (v29)
                      {
                        v72 = "ignores silent mode";
                      }

                      else
                      {
                        v72 = "obeys silent mode";
                      }

                      if (v29)
                      {
                        v73 = 19;
                      }

                      else
                      {
                        v73 = 17;
                      }

                      std::string::append(&v127, v72, v73);
                      v61 = *v23;
                      goto LABEL_147;
                    }

                    std::string::append(&v127, "; ", 2uLL);
                    v28 = *v23 & 0x300;
LABEL_131:
                    if (v28)
                    {
                      v70 = "not overridable";
                    }

                    else
                    {
                      v70 = "overridable";
                    }

                    if (v28)
                    {
                      v71 = 15;
                    }

                    else
                    {
                      v71 = 11;
                    }

                    std::string::append(&v127, v70, v71);
                    v61 = *v23;
                    goto LABEL_138;
                  }

                  std::string::append(&v127, "; ", 2uLL);
                  v27 = *v23 & 0xC0;
LABEL_122:
                  if (v27)
                  {
                    v68 = "not last-in cachable";
                  }

                  else
                  {
                    v68 = "last-in cachable";
                  }

                  if (v27)
                  {
                    v69 = 20;
                  }

                  else
                  {
                    v69 = 16;
                  }

                  std::string::append(&v127, v68, v69);
                  v61 = *v23;
                  goto LABEL_129;
                }

                std::string::append(&v127, "; ", 2uLL);
                v26 = *v23 & 0x30;
LABEL_113:
                if (v26)
                {
                  v66 = "output";
                }

                else
                {
                  v66 = "input";
                }

                if (v26)
                {
                  v67 = 6;
                }

                else
                {
                  v67 = 5;
                }

                std::string::append(&v127, v66, v67);
                v61 = *v23;
                goto LABEL_120;
              }

              std::string::append(&v127, "; ", 2uLL);
              v25 = *v23 & 0xC;
LABEL_104:
              if (v25)
              {
                v64 = "not routable";
              }

              else
              {
                v64 = "routable";
              }

              if (v25)
              {
                v65 = 12;
              }

              else
              {
                v65 = 8;
              }

              std::string::append(&v127, v64, v65);
              v61 = *v23;
              goto LABEL_111;
            }

            std::string::append(&v127, "; ", 2uLL);
            v24 = *v23 & 3;
LABEL_95:
            if (v24)
            {
              v62 = "not connected";
            }

            else
            {
              v62 = "connected";
            }

            if (v24)
            {
              v63 = 13;
            }

            else
            {
              v63 = 9;
            }

            std::string::append(&v127, v62, v63);
            v61 = *v23;
            goto LABEL_102;
          }

          std::string::append(&v127, "; ", 2uLL);
LABEL_67:
          sub_1DE284(&v129, a4 + 40);
          v50 = std::string::insert(&v129, 0, "Connection Type Inclusion: ", 0x1BuLL);
          v51 = *&v50->__r_.__value_.__l.__data_;
          v130.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
          *&v130.__r_.__value_.__l.__data_ = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          v52 = std::string::append(&v130, "; ", 2uLL);
          v53 = *&v52->__r_.__value_.__l.__data_;
          __p[2] = v52->__r_.__value_.__r.__words[2];
          *__p = v53;
          v52->__r_.__value_.__l.__size_ = 0;
          v52->__r_.__value_.__r.__words[2] = 0;
          v52->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p[2]) >= 0)
          {
            v54 = __p;
          }

          else
          {
            v54 = __p[0];
          }

          if (SHIBYTE(__p[2]) >= 0)
          {
            v55 = HIBYTE(__p[2]);
          }

          else
          {
            v55 = __p[1];
          }

          std::string::append(&v127, v54, v55);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v129.__r_.__value_.__l.__data_);
          }

          goto LABEL_79;
        }

        std::string::append(&v127, "; ", 2uLL);
LABEL_53:
        sub_22170(&v129, *(a4 + 28));
        v44 = std::string::insert(&v129, 0, "Supported mode: ", 0x10uLL);
        v45 = *&v44->__r_.__value_.__l.__data_;
        v130.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v130.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        v46 = std::string::append(&v130, "; ", 2uLL);
        v47 = *&v46->__r_.__value_.__l.__data_;
        __p[2] = v46->__r_.__value_.__r.__words[2];
        *__p = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v48 = __p;
        }

        else
        {
          v48 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v49 = HIBYTE(__p[2]);
        }

        else
        {
          v49 = __p[1];
        }

        std::string::append(&v127, v48, v49);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        goto LABEL_65;
      }
    }
  }

LABEL_210:
  v86 = sub_809C0();
  *buf = off_6BC4E0;
  *&v134[10] = buf;
  sub_256FB0(&v130, v86, a4, buf);
  sub_85148(buf);
  v87 = *v135;
  v88 = *&v135[8];
  sub_80C2C(v126, &v130);
  v89 = *(a3 + 386);
  v116 = 0;
  v117 = 0;
  v115 = 0;
  strcpy(v118, "cwdv");
  v118[8] = 0;
  v119 = 3;
  v121[0] = 0;
  v121[1] = 0;
  v120 = v121;
  v122 = 44739242;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  sub_26F2D4(buf, a2, v87, v88, v126, &v136, &v137, &v138, v89, a6, &v115, a3 + 208, a5);
  if (SHIBYTE(v125) < 0)
  {
    operator delete(v123);
  }

  sub_477A0(v121[0]);
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  sub_65310(v126);
  v90 = *buf;
  sub_7FE10(&v129, &buf[8]);
  v128.__r_.__value_.__r.__words[0] = &v128;
  v128.__r_.__value_.__l.__size_ = &v128;
  v128.__r_.__value_.__r.__words[2] = 0;
  if (!v90)
  {
    size = v130.__r_.__value_.__l.__size_;
    if (v130.__r_.__value_.__l.__size_ != &v130)
    {
      do
      {
        if (&v129.__r_.__value_.__r.__words[1] != sub_87414(v129.__r_.__value_.__l.__data_, &v129.__r_.__value_.__l.__size_, &size->__r_.__value_.__r.__words[2]))
        {
          data = size[1].__r_.__value_.__l.__data_;
          if (data)
          {
            v97 = std::__shared_weak_count::lock(data);
            if (v97)
            {
              atomic_fetch_add_explicit(&v97->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v97);
            }
          }

          operator new();
        }

        size = size->__r_.__value_.__l.__size_;
      }

      while (size != &v130);
      v98 = v128.__r_.__value_.__l.__size_;
      if (v128.__r_.__value_.__l.__size_ != &v128)
      {
        while (1)
        {
          sub_88A00(__p, &v98->__r_.__value_.__r.__words[2], "", 5396);
          v99 = *(__p[0] + 36);
          if (__p[1])
          {
            sub_1A8C0(__p[1]);
          }

          if (v99 == 1886545251)
          {
            break;
          }

          v98 = v98->__r_.__value_.__l.__size_;
          if (v98 == &v128)
          {
            goto LABEL_215;
          }
        }
      }

      if (v98 != &v128)
      {
        v100 = v128.__r_.__value_.__l.__size_;
        if (v128.__r_.__value_.__l.__size_ != v98)
        {
          v101 = v98->__r_.__value_.__l.__size_;
          if (v101 != v128.__r_.__value_.__l.__size_)
          {
            v102 = v98->__r_.__value_.__r.__words[0];
            *(v102 + 8) = v101;
            *v101 = v102;
            v103 = *v100;
            *(v103 + 8) = v98;
            v98->__r_.__value_.__r.__words[0] = v103;
            *v100 = v98;
            v98->__r_.__value_.__l.__size_ = v100;
          }
        }
      }
    }
  }

LABEL_215:
  v91 = sub_5544(8);
  if (*(v91 + 8))
  {
    v92 = *v91;
    if (*v91)
    {
      if (os_log_type_enabled(*v91, OS_LOG_TYPE_DEBUG))
      {
        sub_8E920(&v127, &v128, 1);
        v93 = (v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v127 : v127.__r_.__value_.__r.__words[0];
        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = "RoutingManager.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 5406;
        WORD1(__p[2]) = 2080;
        *(&__p[2] + 4) = v93;
        _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ordered ports based off connected port list: %s", __p, 0x1Cu);
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *a1 = v90;
  sub_65234((a1 + 8), &v128);
  sub_65310(&v128);
  sub_4B0F4(v129.__r_.__value_.__l.__size_);
  sub_4B0F4(*&v134[2]);
  sub_65310(&v130);
  return sub_4AF90(v135);
}

void sub_26EF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_4AF90(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_26F130(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 8);
  v5 = v4[1];
  if (v5 != v4)
  {
    while (1)
    {
      v6 = v5[3];
      if (v6)
      {
        v7 = v5[2];
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v8 = std::__shared_weak_count::lock(v6);
        if (!v8)
        {
          v7 = 0;
        }

        if (!v2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        if (!v2)
        {
          goto LABEL_13;
        }
      }

      v9 = std::__shared_weak_count::lock(v2);
      if (v9)
      {
        v10 = v7 == v3;
        sub_1A8C0(v9);
        if (!v8)
        {
          goto LABEL_15;
        }

LABEL_14:
        sub_1A8C0(v8);
        goto LABEL_15;
      }

LABEL_13:
      v10 = v7 == 0;
      if (v8)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      if (!v10)
      {
        v5 = v5[1];
        if (v5 != v4)
        {
          continue;
        }
      }

      v11 = !v10;
      if (v2)
      {
        goto LABEL_20;
      }

      return v11;
    }
  }

  v11 = 1;
  if (v2)
  {
LABEL_20:
    std::__shared_weak_count::__release_weak(v2);
  }

  return v11;
}

uint64_t sub_26F240(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BC528;
  a2[1] = v2;
  return result;
}

os_signpost_id_t *sub_26F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v96 = a3;
  *(&v96 + 1) = a4;
  sub_27A4();
  v15 = atomic_load(&qword_6E9558);
  if (v15 != pthread_self())
  {
    v66 = sub_5544(14);
    v67 = *v66;
    if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 5187;
      _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((sub_231C4() & 1) != 0 || sub_23238("VA_GetPorts", 0xBuLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v16 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        if (v96 > 7)
        {
          v18 = "unknown";
        }

        else
        {
          v18 = off_6BD200[v96];
        }

        v19 = v90;
        sub_53E8(v90, v18);
        if (v92[6] < 0)
        {
          v19 = v90[0];
        }

        sub_3FE7D0(&v98, a5);
        v20 = SHIBYTE(v98.__r_.__value_.__r.__words[2]);
        v21 = v98.__r_.__value_.__r.__words[0];
        sub_265514(&__p, a6);
        v22 = &v98;
        if (v20 < 0)
        {
          v22 = v21;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        *&buf[22] = 2080;
        *&buf[24] = p_p;
        _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VA_GetPorts", "GetPorts for category = %s, candidate ports = %s, disallowed ports = %s", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if ((v92[6] & 0x80000000) != 0)
        {
          operator delete(v90[0]);
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v95 = v16;
  v24 = sub_5544(43);
  if (*(v24 + 8))
  {
    v25 = *v24;
    if (*v24)
    {
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SignpostUtilities.h";
        *&buf[12] = 1024;
        *&buf[14] = 75;
        *&buf[18] = 2080;
        *&buf[20] = "kGetPorts";
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
      }
    }
  }

  *&v98.__r_.__value_.__r.__words[1] = 0uLL;
  v98.__r_.__value_.__r.__words[0] = &v98.__r_.__value_.__l.__size_;
  if (a5[2])
  {
    v26 = *(*a2 + 8);
    if (!v26)
    {
      goto LABEL_38;
    }

    v27 = (*a2 + 8);
    do
    {
      v28 = v26[8];
      v29 = v28 >= v96;
      v30 = v28 < v96;
      if (v29)
      {
        v27 = v26;
      }

      v26 = *&v26[2 * v30];
    }

    while (v26);
    if (v27 != (*a2 + 8) && v96 >= v27[8])
    {
      v34 = sub_5544(8);
      if (*(v34 + 8))
      {
        v35 = *v34;
        if (*v34)
        {
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEBUG))
          {
            sub_879F8(v90, &v96);
            v36 = v92[6] >= 0 ? v90 : v90[0];
            *buf = 136315650;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5214;
            *&buf[18] = 2080;
            *&buf[20] = v36;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d Scanning abstract routes for %s.", buf, 0x1Cu);
            if ((v92[6] & 0x80000000) != 0)
            {
              operator delete(v90[0]);
            }
          }
        }
      }

      v37 = v27[18] == 1668510820;
      *&buf[3] = v96;
      v91 = v37;
      *v92 = *buf;
      *&v92[15] = HIDWORD(v96);
      v90[1] = a7;
      v90[0] = v27 + 10;
      v94 = 0;
      v93 = 0;
      v38 = sub_456B8(v90);
      v72 = v39;
      v69 = v90[0];
      if (v90[0] != v38)
      {
        v73 = v38;
        do
        {
          v40 = sub_5544(8);
          v41 = (v73 + 2);
          if (*(v40 + 8))
          {
            v42 = *v40;
            if (*v40)
            {
              if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
              {
                sub_3FEB1C(&__p, v41);
                v43 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v43 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "RoutingManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 5221;
                *&buf[18] = 2080;
                *&buf[20] = v43;
                _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Scanning abstract route %s.", buf, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          v44 = v73[3];
          if (v44 != v41)
          {
            do
            {
              *buf = v41;
              *&buf[8] = v27 + 10;
              *&buf[16] = a6;
              *&buf[24] = a7;
              *&v100 = a8;
              *(&v100 + 1) = v44 + 2;
              *v101 = a12;
              *&v101[8] = v96;
              v101[24] = a9;
              v103 = 0;
              v104 = 0;
              v45 = *a11;
              v46 = *(a11 + 8);
              v47 = (v46 - *a11) >> 2;
              v102 = 0;
              sub_46980(&v102, v45, v46, v47);
              v105 = *(a11 + 24);
              v106 = *(a11 + 32);
              v107 = *(a11 + 40);
              sub_44E44(v108, (a11 + 48));
              v109 = *(a11 + 72);
              if (*(a11 + 103) < 0)
              {
                sub_54A0(&__src, *(a11 + 80), *(a11 + 88));
              }

              else
              {
                __src = *(a11 + 80);
                v111 = *(a11 + 96);
              }

              LODWORD(v112) = *a13;
              BYTE4(v112) = *(a13 + 4);
              v48 = a5[1];
              v77[2] = v100;
              v78[0] = *v101;
              *(v78 + 9) = *&v101[9];
              v77[0] = *buf;
              v77[1] = *&buf[16];
              v79 = 0;
              v80 = 0;
              v81 = 0;
              sub_46980(&v79, v102, v103, (v103 - v102) >> 2);
              v82 = v105;
              v83 = v106;
              v84 = v107;
              sub_44E44(v85, v108);
              v86 = v109;
              if (SHIBYTE(v111) < 0)
              {
                sub_54A0(&v87, __src, *(&__src + 1));
              }

              else
              {
                v87 = __src;
                v88 = v111;
              }

              v89 = v112;
              while (1)
              {
                if (v48 == a5)
                {
                  v48 = a5;
                  goto LABEL_73;
                }

                if ((sub_2703A8(v77, v48 + 2) & 1) == 0)
                {
                  break;
                }

                v48 = v48[1];
              }

              v49 = a5;
              while (1)
              {
                v49 = *v49;
                if (v48 == v49)
                {
                  break;
                }

                if (sub_2703A8(v77, v49 + 2))
                {
                  v50 = -1;
                  v51 = v48;
                  do
                  {
                    v51 = v51[1];
                    ++v50;
                  }

                  while (v51 != v49);
                  v52 = v50 + 2;
                  if (v50 < 2)
                  {
                    v57 = 0;
                    v53 = 0;
                  }

                  else
                  {
                    v70 = v50 + 2;
                    if (v52 >= 0x7FFFFFFFFFFFFFFLL)
                    {
                      v53 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v53 = v50 + 2;
                    }

                    while (1)
                    {
                      v54 = operator new(16 * v53, &std::nothrow);
                      if (v54)
                      {
                        break;
                      }

                      v55 = v53 >> 1;
                      v56 = v53 > 1;
                      v53 >>= 1;
                      if (!v56)
                      {
                        v57 = 0;
                        v53 = v55;
                        goto LABEL_99;
                      }
                    }

                    v57 = v54;
LABEL_99:
                    v52 = v70;
                  }

                  v48 = sub_270838(v48, v49, v77, v52, v57, v53);
                  if (v57)
                  {
                    operator delete(v57);
                  }

                  break;
                }
              }

LABEL_73:
              if (SHIBYTE(v88) < 0)
              {
                operator delete(v87);
              }

              sub_477A0(v85[1]);
              if (v79)
              {
                v80 = v79;
                operator delete(v79);
              }

              if (v48 != a5[1])
              {
                sub_85034(&v98, &v98.__r_.__value_.__l.__size_, (a5[1] + 16));
              }

              if (SHIBYTE(v111) < 0)
              {
                operator delete(__src);
              }

              sub_477A0(v108[1]);
              v41 = (v73 + 2);
              if (v102)
              {
                v103 = v102;
                operator delete(v102);
              }

              v44 = v44[1];
            }

            while (v44 != v73 + 2);
          }

          v58 = a5[2];
          if (v58 == v98.__r_.__value_.__r.__words[2] || !v58)
          {
            break;
          }

          v59 = v73[1];
          v60 = *v72;
          v73 = *v72;
          while (v59 != v60)
          {
            if (sub_4B65C((v72 + 1), (v59 + 2)))
            {
              v73 = v59;
              break;
            }

            v59 = v59[1];
            v60 = v73;
          }
        }

        while (v73 != v69);
      }

      if (a10)
      {
        v61 = sub_5544(8);
        if (*(v61 + 8))
        {
          v62 = *v61;
          if (*v61)
          {
            if (os_log_type_enabled(*v61, OS_LOG_TYPE_DEBUG))
            {
              sub_3FE68C(v90, &v98);
              v63 = v92[6] >= 0 ? v90 : v90[0];
              *buf = 136315650;
              *&buf[4] = "RoutingManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 5342;
              *&buf[18] = 2080;
              *&buf[20] = v63;
              _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ports: %s", buf, 0x1Cu);
              if ((v92[6] & 0x80000000) != 0)
              {
                operator delete(v90[0]);
              }
            }
          }
        }
      }

      *a1 = 0;
      sub_7FE10((a1 + 8), &v98);
    }

    else
    {
LABEL_38:
      v31 = sub_5544(8);
      if (*(v31 + 8))
      {
        v32 = *v31;
        if (*v31)
        {
          if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
          {
            if (v96 > 7)
            {
              v33 = "unknown";
            }

            else
            {
              v33 = off_6BD200[v96];
            }

            sub_53E8(v90, v33);
            if (v92[6] >= 0)
            {
              v64 = v90;
            }

            else
            {
              v64 = v90[0];
            }

            *buf = 136315650;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 5207;
            *&buf[18] = 2080;
            *&buf[20] = v64;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to find a category entry for %s", buf, 0x1Cu);
            if ((v92[6] & 0x80000000) != 0)
            {
              operator delete(v90[0]);
            }
          }
        }
      }

      *a1 = 2;
      sub_7FE10((a1 + 8), &v98);
    }
  }

  else
  {
    *a1 = 0;
    sub_7FE10((a1 + 8), &v98);
  }

  sub_4B0F4(v98.__r_.__value_.__l.__size_);
  return sub_87278(&v95);
}

void sub_2701FC(_Unwind_Exception *a1)
{
  sub_4B0F4(STACK[0x290]);
  sub_87278(&STACK[0x258]);
  _Unwind_Resume(a1);
}

uint64_t sub_2703A8(uint64_t a1, uint64_t *a2)
{
  sub_25704(&v18, a2, "", 5234);
  v3 = 4;
  if (*(v18 + 184))
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 40) + v3);
  v5 = *(v18 + 144);
  v17 = *(a1 + 184);
  if ((v17 & 0x1FFFFFFFFLL) == 0x172736D78)
  {
    *buf = 256;
    if (sub_34D04C(v18, buf))
    {
      LODWORD(v17) = 1920167273;
      BYTE4(v17) = 1;
    }
  }

  if (v5 == v4)
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    sub_46980(&v7, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 2);
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
    v12 = *(a1 + 120);
    sub_44E44(&v13, (a1 + 128));
    v14 = *(a1 + 152);
    if (*(a1 + 183) < 0)
    {
      sub_54A0(&__p, *(a1 + 160), *(a1 + 168));
    }

    else
    {
      __p = *(a1 + 160);
      v16 = *(a1 + 176);
    }

    v22 = 0;
    v23 = 0;
    *buf = 0;
    sub_46980(buf, v7, v8, (v8 - v7) >> 2);
    v24 = v10;
    v25 = v11;
    v26 = v12;
    sub_44E44(&v27, &v13);
    v28 = v14;
    if (SHIBYTE(v16) < 0)
    {
      sub_54A0(&v29, __p, *(&__p + 1));
    }

    else
    {
      v29 = __p;
      v30 = v16;
    }

    v20 = 0;
    operator new();
  }

  if (v19)
  {
    sub_1A8C0(v19);
  }

  return 0;
}

void sub_27078C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a34)
  {
    sub_1A8C0(a34);
  }

  _Unwind_Resume(exception_object);
}

void *sub_270838(void *a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    v12 = a1[1];
    if (!sub_2703A8(a3, v12 + 2))
    {
      v22 = v12[2];
      v12[2] = a2[2];
      a2[2] = v22;
      v23 = v12[3];
      v12[3] = a2[3];
      a2[3] = v23;
      v24 = v8[2];
      v8[2] = v12[2];
      v12[2] = v24;
      v25 = v8[3];
      v8[3] = v12[3];
      v12[3] = v25;
      return v12;
    }

    v13 = v8[2];
    v8[2] = v12[2];
    v12[2] = v13;
    v14 = v8[3];
    v8[3] = v12[3];
    v12[3] = v14;
    v15 = v12[2];
    v12[2] = a2[2];
    a2[2] = v15;
    v11 = v12[3];
    v12[3] = a2[3];
    goto LABEL_6;
  }

  if (a4 == 2)
  {
    v10 = a1[2];
    a1[2] = a2[2];
    a2[2] = v10;
    v11 = a1[3];
    a1[3] = a2[3];
LABEL_6:
    a2[3] = v11;
    return a2;
  }

  v17 = a5;
  if (a6 >= a4)
  {
    v51[0] = a5;
    v51[1] = &v52;
    *a5 = *(a1 + 1);
    v26 = a5 + 1;
    a1[2] = 0;
    a1[3] = 0;
    v52 = 1;
    for (i = a1[1]; i != a2; i = i[1])
    {
      if (sub_2703A8(a3, i + 2))
      {
        v28 = *(i + 1);
        i[2] = 0;
        i[3] = 0;
        v29 = v8[3];
        *(v8 + 1) = v28;
        if (v29)
        {
          std::__shared_weak_count::__release_weak(v29);
        }

        v8 = v8[1];
      }

      else
      {
        *v26++ = *(i + 1);
        i[2] = 0;
        i[3] = 0;
        ++v52;
      }
    }

    v30 = *(i + 1);
    i[2] = 0;
    i[3] = 0;
    v31 = v8[3];
    *(v8 + 1) = v30;
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    v12 = v8[1];
    if (v26 > v17)
    {
      v32 = v8[1];
      do
      {
        v33 = *v17;
        *v17 = 0;
        *(v17 + 1) = 0;
        v34 = *(v32 + 24);
        *(v32 + 16) = v33;
        if (v34)
        {
          std::__shared_weak_count::__release_weak(v34);
        }

        ++v17;
        v32 = *(v32 + 8);
      }

      while (v17 < v26);
    }

    sub_86FD0(v51);
  }

  else
  {
    v18 = a4 / 2;
    v19 = a4 / 2;
    if (a4 <= -2)
    {
      v35 = a4 / 2;
      v20 = a1;
      do
      {
        v20 = *v20;
      }

      while (!__CFADD__(v35++, 1));
    }

    else
    {
      v20 = a1;
      if ((a4 + 1) >= 3)
      {
        v21 = v18 + 1;
        v20 = a1;
        do
        {
          v20 = v20[1];
          --v21;
        }

        while (v21 > 1);
      }
    }

    v37 = v20;
    while (1)
    {
      v37 = *v37;
      if (sub_2703A8(a3, v37 + 2))
      {
        break;
      }

      if (v37 == v8)
      {
        goto LABEL_38;
      }

      --v19;
    }

    v8 = sub_270838(v8, v37, a3, v19, v17, a6);
LABEL_38:
    v12 = a2[1];
    v38 = a4 - v18;
    v39 = v20;
    while (sub_2703A8(a3, v39 + 2))
    {
      v39 = v39[1];
      if (v39 == a2)
      {
        goto LABEL_43;
      }

      --v38;
    }

    v12 = sub_270838(v39, a2, a3, v38, v17, a6);
LABEL_43:
    if (v8 != v20)
    {
      if (v20 == v12)
      {
        return v8;
      }

      else
      {
        v40 = v8[2];
        v8[2] = v20[2];
        v20[2] = v40;
        v41 = v8[3];
        v8[3] = v20[3];
        v20[3] = v41;
        v42 = v8[1];
        for (j = v20[1]; j != v12; j = j[1])
        {
          if (v42 == v20)
          {
            v20 = j;
          }

          v44 = v42[2];
          v42[2] = j[2];
          j[2] = v44;
          v45 = v42[3];
          v42[3] = j[3];
          j[3] = v45;
          v42 = v42[1];
        }

        if (v42 != v20)
        {
          v46 = v42;
          v47 = v20;
          do
          {
            while (1)
            {
              v48 = v46[2];
              v46[2] = v47[2];
              v47[2] = v48;
              v49 = v46[3];
              v46[3] = v47[3];
              v47[3] = v49;
              v46 = v46[1];
              v47 = v47[1];
              if (v47 == v12)
              {
                break;
              }

              if (v46 == v20)
              {
                v20 = v47;
              }
            }

            v47 = v20;
          }

          while (v46 != v20);
        }

        return v42;
      }
    }
  }

  return v12;
}

void sub_270C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_86FD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_270C24(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  sub_477A0(*(a1 + 136));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  return a1;
}

__n128 sub_270C74(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BC600;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

_BYTE *sub_270D20(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27A4();
  v23 = (*(qword_6E94F8 + 16))();
  if (*(a3 + 32))
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "RoutingManager.cpp";
      v27 = 1024;
      *v28 = 2491;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a3 + 168) != 1852796517)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "RoutingManager.cpp";
      v27 = 1024;
      *v28 = 2492;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_28;
  }

  v10 = *(a3 + 199);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 184);
  }

  if (v10)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "RoutingManager.cpp";
      v27 = 1024;
      *v28 = 2493;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_28;
  }

  sub_26DF08(buf, a2, a3, a4, a5, 0);
  v11 = *buf;
  if (!*buf)
  {
    v24[0] = v24;
    v24[1] = v24;
    v24[2] = 0;
    v12 = *&v28[2];
    if (*&v28[2] != (&v26 + 4))
    {
      do
      {
        v13 = sub_840F4(*(a3 + 386), &v26 + 4, v12 + 2);
        v14 = v12[1];
        if (v13)
        {
          while (1)
          {
            if (v14 == (&v26 + 4))
            {
              sub_CFE14(v24, v24, &v26 + 4, v12, v14);
              goto LABEL_14;
            }

            if (!sub_840F4(*(a3 + 386), &v26 + 4, v14 + 2))
            {
              break;
            }

            v14 = v14[1];
          }

          sub_CFE14(v24, v24, &v26 + 4, v12, v14);
          v14 = v14[1];
        }

LABEL_14:
        v12 = v14;
      }

      while (v14 != (&v26 + 4));
    }

    sub_65310(v24);
    v11 = *buf;
  }

  *a1 = v11;
  sub_65234((a1 + 8), &v26 + 4);
  sub_65310((&v26 + 4));
  return sub_210C50(&v23);
}

void sub_2710A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a12);
  _Unwind_Resume(a1);
}

void sub_271104(_DWORD *a1, uint64_t a2, int a3)
{
  sub_7B03C(&v10, (a2 + 72));
  v5 = *(a2 + 184);
  v8[0] = *(a2 + 176);
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 192);
  LOBYTE(v6) = *(a2 + 408);
  sub_C25C0(v7, a2, (a2 + 32), (a2 + 48), &v10, (a2 + 120), *(a2 + 144), (a2 + 152), a2 + 200, (a2 + 240), v6, (a2 + 416), a3, (a2 + 440), (a2 + 472), *(a2 + 410), v8);
}

void sub_271208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_D0710(va);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  sub_4B14C(*(v19 - 64));
  sub_4B0F4(*(v19 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_271240(uint64_t a1)
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

uint64_t sub_2712C0(uint64_t a1, uint64_t a2)
{
  sub_141A44(&v10, a2);
  v2 = v11;
  if (v11 == &v10)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  while (1)
  {
    v3 = v2[3];
    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = std::__shared_weak_count::lock(v3);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = v4;
    v6 = v2[2];
    if (!v6 || *(v6 + 144) != 1885892706)
    {
      sub_1A8C0(v5);
      goto LABEL_9;
    }

    v7 = sub_34CF94(v6);
    sub_1A8C0(v5);
    if (v7)
    {
      break;
    }

LABEL_9:
    v2 = v2[1];
    if (v2 == &v10)
    {
      goto LABEL_10;
    }
  }

  v9 = 1;
LABEL_11:
  sub_65310(&v10);
  return v9;
}

void sub_271380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A8C0(v3);
  sub_65310(va);
  _Unwind_Resume(a1);
}

void sub_271424(uint64_t *a1, int a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  strcpy(v13, "cwdv");
  v13[8] = 0;
  v14 = 3;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  v17 = 44739242;
  v19 = 0;
  v20 = 0;
  __p = 0;
  LODWORD(v21[0]) = 1886152041;
  sub_AFD28(&v10, v21);
  LODWORD(v21[0]) = 1886152047;
  sub_AFD28(&v10, v21);
  v4 = sub_809C0();
  v21[0] = off_6BC4E0;
  v21[3] = v21;
  sub_256FB0(v9, v4, &v10, v21);
  sub_85148(v21);
  if (v9[2])
  {
    v5 = sub_26C4B8(a1, v9, a2);
    v6 = v5;
    if (v5 >= 0x100u)
    {
      v7 = sub_809C0();
      if (v6)
      {
        v8 = 1919842148;
      }

      else
      {
        v8 = 1919971701;
      }

      sub_258778(v7, v9, v8);
    }
  }

  sub_65310(v9);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v16[0]);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_2715B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_65310(va);
  sub_46934(va1);
  _Unwind_Resume(a1);
}

_BYTE *sub_2715F8(void *a1, uint64_t a2, int a3, std::string::size_type *a4)
{
  sub_27A4();
  v48 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v8 = atomic_load(&qword_6E9558);
  if (v8 != pthread_self())
  {
    v41 = sub_5544(14);
    v42 = *v41;
    if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4685;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  sub_21991C(a1, 1920099684);
  *&v47[8] = 0;
  *&v47[16] = 0;
  *v47 = &v47[8];
  v9 = a4 + 1;
  if (a3)
  {
    v10 = *(a2 + 552);
    v11 = (a2 + 560);
    v51.__r_.__value_.__r.__words[0] = *a4;
    v45[0] = v10;
    *buf = v47;
    *&buf[8] = &v47[8];
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (v10 != (a2 + 560))
    {
      v12 = (a2 + 552);
      do
      {
        v13 = v51.__r_.__value_.__r.__words[0];
        v51.__r_.__value_.__r.__words[0] = sub_2720E0(v51.__r_.__value_.__l.__data_, a4 + 1, v10[7]);
        sub_2722B0(v51.__r_.__value_.__r.__words[0] == v13, &v51, v45, buf, &__p);
        if (v51.__r_.__value_.__l.__data_ == v9)
        {
          break;
        }

        v14 = v45[0];
        v45[0] = sub_2720E0(v45[0], (a2 + 560), *(v51.__r_.__value_.__r.__words[0] + 28));
        sub_2722B0(v45[0] == v14, &v51, v45, buf, &__p);
        v10 = v45[0];
      }

      while (v45[0] != v11);
      if (*&v47[16])
      {
        sub_477A0(*&v47[8]);
        *&v47[16] = 0;
        *v47 = &v47[8];
        v15 = *a4;
        v45[0] = *v12;
        __p.__r_.__value_.__r.__words[0] = a2 + 560;
        v49 = a4 + 1;
        v50 = v15;
        v51.__r_.__value_.__r.__words[0] = v47;
        v51.__r_.__value_.__l.__size_ = &v47[8];
        sub_271C84(buf, v45, &__p, &v50, &v49, &v51);
        v16 = *(a2 + 568);
        v17 = *&v47[8];
        v18 = *v12;
        *(a2 + 552) = *v47;
        *(a2 + 560) = v17;
        *v47 = v18;
        *&v47[16] = v16;
        if (*(&v17 + 1))
        {
          v19 = (v17 + 16);
        }

        else
        {
          v19 = (a2 + 552);
        }

        *v19 = v11;
        v20 = (*&v47[8] + 16);
        if (!v16)
        {
          v20 = v47;
        }

        *v20 = &v47[8];
LABEL_16:
        sub_271104(buf, a2, 1919185776);
      }
    }
  }

  else
  {
    v21 = *(a2 + 552);
    v45[0] = *a4;
    __p.__r_.__value_.__r.__words[0] = (a4 + 1);
    v49 = (a2 + 560);
    v50 = v21;
    v51.__r_.__value_.__r.__words[0] = v47;
    v51.__r_.__value_.__l.__size_ = &v47[8];
    sub_271C84(buf, v45, &__p, &v50, &v49, &v51);
    if (*&v47[16])
    {
      sub_271E78((a2 + 552), *v47, &v47[8]);
      goto LABEL_16;
    }
  }

  v22 = sub_5544(8);
  v23 = sub_5544(35);
  v24 = 0;
  *buf = 0x100000002;
  v25 = *(v22 + 8);
  while (1)
  {
    v26 = *&buf[v24];
    if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
    {
      break;
    }

    v24 += 4;
    if (v24 == 8)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_25;
    }
  }

  if ((v25 & v26) == 0)
  {
    v22 = v23;
  }

  if (*(v22 + 8))
  {
LABEL_25:
    v27 = *v22;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = "????";
      if (a3 == 1)
      {
        v28 = "Remove";
      }

      if (a3)
      {
        v29 = v28;
      }

      else
      {
        v29 = "Add";
      }

      sub_53E8(v45, v29);
      v30 = v46;
      v31 = v45[0];
      v32 = *a4;
      memset(&__p, 0, sizeof(__p));
      std::string::append(&__p, "{ ", 2uLL);
      if (v32 != v9)
      {
        while (1)
        {
          std::to_string(&v51, *(v32 + 28));
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v51;
          }

          else
          {
            v33 = v51.__r_.__value_.__r.__words[0];
          }

          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v51.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v33, size);
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          v35 = *(v32 + 8);
          if (v35)
          {
            do
            {
              v36 = v35;
              v35 = *v35;
            }

            while (v35);
          }

          else
          {
            do
            {
              v36 = *(v32 + 16);
              v37 = *v36 == v32;
              v32 = v36;
            }

            while (!v37);
          }

          if (v36 == v9)
          {
            break;
          }

          std::string::append(&__p, ", ", 2uLL);
          v32 = v36;
        }
      }

      std::string::append(&__p, " }", 2uLL);
      v38 = v45;
      if (v30 < 0)
      {
        v38 = v31;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4700;
      v53 = 2080;
      v54 = v38;
      v55 = 2080;
      v56 = p_p;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Redundant modification (%s) of alt vad disable policy for type %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }
  }

LABEL_57:
  sub_477A0(*&v47[8]);
  return sub_210C50(&v48);
}

void sub_271BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  sub_477A0(a22);
  if (*(v44 + 56) == 1)
  {
    sub_175F78((v44 + 24));
  }

  sub_210C50(&a28);
  _Unwind_Resume(a1);
}

__n128 sub_271C84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v30 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = *(v8 + 7);
    v16 = *(i + 7);
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = v8[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v8[2];
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      sub_272380(a6, v8 + 7);
      v17 = *a2;
      v18 = *(*a2 + 8);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v17[2];
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      sub_272380(&v30, v8 + 7);
      v27 = v8[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v8[2];
          v20 = *v28 == v8;
          v8 = v28;
        }

        while (!v20);
      }

      v8 = v28;
    }

    while (v28 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v30;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

uint64_t **sub_271E78(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_271F04(v5, (v5 + 1), *(v4 + 7), v4 + 7);
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

uint64_t sub_271F04(uint64_t **a1, uint64_t a2, int a3, _DWORD *a4)
{
  v4 = a2;
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *(a2 + 28), v6 > a3))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_16:
      if (v7)
      {
        v10 = (v9 + 8);
      }

      else
      {
        v10 = a2;
      }

      goto LABEL_19;
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = *(v8 + 8);
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = *(v13 + 16);
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    if (*(v9 + 28) < a3)
    {
      goto LABEL_16;
    }

    v15 = *v5;
    if (!*v5)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = *(v15 + 7);
        if (v17 <= a3)
        {
          break;
        }

        v15 = *v16;
        v5 = v16;
        if (!*v16)
        {
          goto LABEL_38;
        }
      }

      if (v17 >= a3)
      {
        break;
      }

      v5 = v16 + 1;
      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v10 = v5;
    goto LABEL_19;
  }

  if (v6 >= a3)
  {
    return v4;
  }

  v10 = (a2 + 8);
  v11 = *(a2 + 8);
  if (v11)
  {
    do
    {
      v10 = v11;
      v11 = *v11;
      v12 = v10;
    }

    while (v11);
  }

  else
  {
    v12 = a2;
    do
    {
      v18 = v12;
      v12 = *(v12 + 16);
    }

    while (*v12 != v18);
  }

  if (v12 != v5 && *(v12 + 28) <= a3)
  {
    v19 = *v5;
    if (!*v5)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v20 = v19;
        v21 = *(v19 + 7);
        if (v21 <= a3)
        {
          break;
        }

        v19 = *v20;
        v5 = v20;
        if (!*v20)
        {
          goto LABEL_38;
        }
      }

      if (v21 >= a3)
      {
        goto LABEL_40;
      }

      v5 = v20 + 1;
      v19 = v20[1];
      if (!v19)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  v4 = *v10;
  if (!*v10)
  {
LABEL_38:
    operator new();
  }

  return v4;
}

void *sub_2720E0(void *a1, void *a2, int a3)
{
  if (a1 != a2)
  {
    if (*(a1 + 7) >= a3)
    {
      return a1;
    }

    v3 = 1;
LABEL_4:
    if (v3)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        if (v5 == a2)
        {
          v9 = v3;
          goto LABEL_26;
        }

        v6 = v5[1];
        v7 = v5;
        if (v6)
        {
          do
          {
            v5 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v5 = v7[2];
            v8 = *v5 == v7;
            v7 = v5;
          }

          while (!v8);
        }

        ++v4;
      }

      while (v4 != v3);
      v9 = v3;
      v4 = v3;
    }

    else
    {
      v9 = 0;
      v4 = 0;
      v5 = a1;
    }

LABEL_26:
    while (v5 != a2 && *(v5 + 7) < a3)
    {
      v3 *= 2;
      a1 = v5;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      v4 = 0;
      v9 = -v3;
      if (-v3 > 1)
      {
        v10 = -v3;
      }

      else
      {
        v10 = 1;
      }

      while (v5 != a2)
      {
        v11 = *v5;
        v12 = v5;
        if (*v5)
        {
          do
          {
            v5 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v5 = v12[2];
            v8 = *v5 == v12;
            v12 = v5;
          }

          while (v8);
        }

        if (++v4 == v10)
        {
          v4 = v10;
          goto LABEL_26;
        }
      }
    }

    a2 = v5;
    v13 = v4 - v9 + v3;
    if (!v13)
    {
      return a1;
    }

    if (v13 != 1)
    {
      do
      {
        v14 = v13 >> 1;
        v15 = a1;
        if (v13 >= 2)
        {
          v16 = v13 >> 1;
          v17 = a1;
          do
          {
            v18 = v17[1];
            if (v18)
            {
              do
              {
                v15 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v15 = v17[2];
                v8 = *v15 == v17;
                v17 = v15;
              }

              while (!v8);
            }

            v17 = v15;
          }

          while (v16-- > 1);
        }

        if (*(v15 + 7) < a3)
        {
          v20 = v15[1];
          if (v20)
          {
            do
            {
              a1 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a1 = v15[2];
              v8 = *a1 == v15;
              v15 = a1;
            }

            while (!v8);
          }

          v14 = v13 + ~v14;
        }

        v13 = v14;
      }

      while (v14);
      return a1;
    }
  }

  return a2;
}

uint64_t sub_2722B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_272380(a4, (*a2 + 28));
      v8 = *a2;
      v9 = *(*a2 + 8);
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
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
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
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

uint64_t sub_272380(uint64_t a1, int *a2)
{
  v3 = sub_271F04(*a1, *(a1 + 8), *a2, a2);
  *(a1 + 8) = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

_BYTE *sub_2723EC(uint64_t a1, int a2)
{
  sub_27A4();
  v14 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "RoutingManager.cpp";
      v17 = 1024;
      v18 = 4724;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  v5 = *(a1 + 560);
  if (!v5)
  {
LABEL_14:
    operator new();
  }

  v6 = a1 + 560;
  v7 = *(a1 + 560);
  do
  {
    if (*(v7 + 28) >= a2)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 28) < a2));
  }

  while (v7);
  if (v6 == a1 + 560 || *(v6 + 28) > a2)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 28);
        if (v9 <= a2)
        {
          break;
        }

        v5 = *v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  return sub_210C50(&v14);
}

void sub_2725FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

uint64_t **sub_272638(uint64_t **a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  sub_271E78(a1, *a2, (a2 + 8));
  return a1;
}

void sub_27268C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_272638(v5, a3);
  sub_2715F8(a1, a2, 1, v5);
  sub_477A0(v5[1]);
}

uint64_t **sub_2726F4(uint64_t **a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  sub_272748(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **sub_272748(uint64_t **result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_23F54C(v5, (v5 + 1), v4 + 4, (v4 + 4));
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

BOOL sub_2727D0(uint64_t a1, int a2)
{
  sub_27A4();
  v13 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "RoutingManager.cpp";
      v16 = 1024;
      v17 = 4792;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
  }

  v5 = a1 + 560;
  v6 = *(a1 + 560);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 560;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v7 == v5 || *(v7 + 28) > a2)
  {
LABEL_9:
    v7 = a1 + 560;
  }

  v8 = v7 != v5;
  sub_210C50(&v13);
  return v8;
}

void sub_27297C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_2729B4(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v8 = *a2;
  v9 = v3;
  do
  {
    v10 = *(v4 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v4;
    }

    v4 = *(v4 + 8 * v12);
  }

  while (v4);
  if (v9 == v3 || v8 < *(v9 + 32))
  {
    return 0;
  }

  sub_272EC8(v34, v9 + 40);
  v35 = *(v9 + 64);
  v36[0] = *(v9 + 72);
  *(v36 + 3) = *(v9 + 75);
  sub_272F50(v37, (v9 + 80));
  sub_273274(v38, (v9 + 104));
  v39 = *(v9 + 128);
  *&v40[3] = *a2;
  v30 = v36[0] == 1668510820;
  *v31 = *v40;
  *&v31[15] = *&v40[15];
  v29[0] = v34;
  v29[1] = (a2 + 22);
  v32 = 0;
  v33 = 0;
  v16 = sub_456B8(v29);
  v17 = v29[0];
  if (v16 == v29[0])
  {
LABEL_12:
    v13 = 0;
  }

  else
  {
    v18 = v15;
    v19 = a3 + 1;
    while (1)
    {
      v20 = *a3;
      if (*a3 == v19)
      {
        break;
      }

      v21 = v16 + 16;
      while (*(v16 + 24) != v21)
      {
        v22 = *(v20 + 7);
        v23 = *(v16 + 24);
        do
        {
          v24 = *(v23 + 16) == v22 || *(v23 + 20) == v22;
          v25 = v24;
          if (v24)
          {
            break;
          }

          v23 = *(v23 + 8);
        }

        while (v23 != v21);
        if (!v25)
        {
          break;
        }

        v26 = v20[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v20[2];
            v24 = *v27 == v20;
            v20 = v27;
          }

          while (!v24);
        }

        v20 = v27;
        if (v27 == v19)
        {
          goto LABEL_41;
        }
      }

      v28 = *(v16 + 8);
      v16 = *v18;
      while (v28 != v16)
      {
        if (sub_4B65C((v18 + 1), v28 + 16))
        {
          v16 = v28;
          break;
        }

        v28 = *(v28 + 8);
      }

      if (v16 == v17)
      {
        goto LABEL_12;
      }
    }

LABEL_41:
    v13 = 1;
  }

  sub_2492C0(v38[1]);
  sub_249314(v37[1]);
  sub_2493B4(v34);
  return v13;
}

void sub_272BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_249C4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_272BFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_2581DC(a4, (*a2 + 16));
      *a2 = *(*a2 + 8);
      v8 = *a3;
      v9 = *(*a3 + 8);
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
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v12 = 0;
      *a3 = v10;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  *a5 = v12;
  return result;
}

void *sub_272CA4(void *a1, void *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a2;
  }

  v4 = a1;
  if (sub_87164(a1 + 4, a3))
  {
    v6 = 1;
LABEL_5:
    if (v6)
    {
      v7 = 0;
      v8 = v4;
      while (v8 != a2)
      {
        v9 = v8[1];
        v10 = v8;
        if (v9)
        {
          do
          {
            v8 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (!v11);
        }

        if (++v7 == v6)
        {
          v12 = v6;
          v7 = v6;
          goto LABEL_27;
        }
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
      v7 = 0;
      v8 = v4;
    }

LABEL_27:
    while (v8 != a2)
    {
      if (!sub_87164(v8 + 4, a3))
      {
        goto LABEL_32;
      }

      v6 *= 2;
      v4 = v8;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = 0;
      v12 = -v6;
      if (-v6 > 1)
      {
        v13 = -v6;
      }

      else
      {
        v13 = 1;
      }

      while (v8 != a2)
      {
        v14 = *v8;
        v15 = v8;
        if (*v8)
        {
          do
          {
            v8 = v14;
            v14 = v14[1];
          }

          while (v14);
        }

        else
        {
          do
          {
            v8 = v15[2];
            v11 = *v8 == v15;
            v15 = v8;
          }

          while (v11);
        }

        if (++v7 == v13)
        {
          v7 = v13;
          goto LABEL_27;
        }
      }
    }

    v8 = a2;
LABEL_32:
    v16 = v7 - v12 + v6;
    if (v16)
    {
      if (v16 == 1)
      {
        return v8;
      }

      else
      {
        do
        {
          v17 = v16 >> 1;
          v18 = v4;
          if (v16 >= 2)
          {
            v19 = v16 >> 1;
            v20 = v4;
            do
            {
              v21 = v20[1];
              if (v21)
              {
                do
                {
                  v18 = v21;
                  v21 = *v21;
                }

                while (v21);
              }

              else
              {
                do
                {
                  v18 = v20[2];
                  v11 = *v18 == v20;
                  v20 = v18;
                }

                while (!v11);
              }

              v20 = v18;
            }

            while (v19-- > 1);
          }

          if (sub_87164(v18 + 4, a3))
          {
            v23 = v18[1];
            if (v23)
            {
              do
              {
                v4 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v4 = v18[2];
                v11 = *v4 == v18;
                v18 = v4;
              }

              while (!v11);
            }

            v17 = v16 + ~v17;
          }

          v16 = v17;
        }

        while (v17);
      }
    }
  }

  return v4;
}

uint64_t *sub_272EC8(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_248EF0(v2 + 16);
  }

  return a1;
}

void *sub_272F50(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }
      }

      else
      {
        v9 = a1 + 1;
        if (v3)
        {
          v9 = a1 + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 32);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return a1;
}

void sub_2731D4(_Unwind_Exception *a1)
{
  sub_2735BC(0, v1);
  sub_249314(*v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_273274(uint64_t **a1, void *a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_273320(a1, v3, *(v5 + 8), (v5 + 4));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t **sub_273320(uint64_t **result, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = *(a2 + 8), v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 8) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v14 + 32);
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v15;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_38;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v4 = v15 + 1;
      v14 = v15[1];
      if (!v14)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v9 = v4;
    goto LABEL_19;
  }

  if (v5 >= a3)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 8) <= a3)
  {
    v18 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 32);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_40;
      }

      v4 = v19 + 1;
      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v9)
  {
LABEL_38:
    sub_2734DC(v21, result, a4);
  }

  return result;
}

void sub_27354C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_273568(0, v2);
  _Unwind_Resume(a1);
}

void sub_273568(char a1, void **a2)
{
  if (a1)
  {
    sub_477A0(a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_2735BC(char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 192) == 1)
    {
      sub_2492C0(*(a2 + 176));
    }

    sub_477A0(*(a2 + 152));
    if (*(a2 + 136) == 1)
    {
      sub_477A0(*(a2 + 120));
    }

    sub_477A0(*(a2 + 88));
    if (*(a2 + 64) == 1)
    {
      v3 = *(a2 + 40);
      if (v3)
      {
        *(a2 + 48) = v3;
        operator delete(v3);
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **sub_27365C(uint64_t **result, uint64_t *a2, int a3, uint64_t a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = *(a2 + 8), v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 8) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (*v4)
    {
      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = *(v14 + 32);
          if (v16 <= a3)
          {
            break;
          }

          v14 = *v15;
          v4 = v15;
          if (!*v15)
          {
            goto LABEL_38;
          }
        }

        if (v16 >= a3)
        {
          break;
        }

        v4 = v15 + 1;
        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v9 = v4;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v5 >= a3)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 8) <= a3)
  {
    for (i = *v4; i; i = v19[1])
    {
      while (1)
      {
        v19 = i;
        v20 = *(i + 32);
        if (v20 <= a3)
        {
          break;
        }

        i = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_39;
      }

      v4 = v19 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v9)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t *sub_27386C(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[10 * a3]; i += 10)
    {
      v4 = *i;
      v5 = a1[1];
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % v5.i32[0];
        }
      }

      else
      {
        v7 = (v5.i32[0] - 1) & v4;
      }

      v8 = *(*a1 + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return a1;
}

void sub_273D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27E410(va);
  sub_27E3B0(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_273D54(uint64_t a1)
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

uint64_t *sub_273DD4(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[10 * a3]; i += 10)
    {
      v4 = *i;
      v5 = a1[1];
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % v5.i32[0];
        }
      }

      else
      {
        v7 = (v5.i32[0] - 1) & v4;
      }

      v8 = *(*a1 + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return a1;
}

void sub_274290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275EFC(va);
  sub_275E9C(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2742BC(uint64_t a1)
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

void sub_274408(uint64_t a1)
{
  *a1 = &off_6D40E0;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  operator delete();
}

void sub_274498(void (***a1)(void, uint64_t *), uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (**a1)(a1, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_274508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_274520(uint64_t a1)
{
  *a1 = &off_6D40E0;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  return a1;
}

void sub_274574(double a3, double a4)
{
  v4 = a3;
  v5 = a4;
  operator new();
}

void sub_274600(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_274624(uint64_t a1, _OWORD *a2, uint64_t a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7[0] = 0;
  v9 = 0;
  sub_2746D4(a1, a2, a3, a4, v7);
  if (v9 == 1)
  {
    sub_477A0(v8);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *(a1 + 160) = 0x76657167766F6C75;
  return a1;
}

void sub_2746A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_477A0(a12);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2746D4(uint64_t a1, _OWORD *a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5)
{
  v9 = *(a5 + 48);
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_149330(v24, a5);
  if (v9)
  {
    v10 = 1935895666;
  }

  else
  {
    v10 = 1684234860;
  }

  sub_149250(a1, v10, a3, a4, v24);
  if (v26 == 1)
  {
    sub_477A0(v25);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *a1 = &off_6D5E50;
  *(a1 + 136) = *a2;
  *(a1 + 152) = sub_149458(a1);
  *(a1 + 156) = 0x700000001;
  *(a1 + 164) = 5;
  *(a1 + 184) = 0x100000001;
  *(a1 + 168) = *"";
  if (*(a1 + 144) < *(a1 + 136))
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 136);
        v17 = *(a1 + 144);
        *buf = 136315906;
        v28 = "VolumeControl.h";
        v29 = 1024;
        v30 = 1310;
        v31 = 2048;
        v32 = v16;
        v33 = 2048;
        v34 = v17;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Encountered an invalid range for the variable EQ's current gain parameter: [%f, %f]", buf, 0x26u);
      }
    }
  }

  if (*(a1 + 88) == 1)
  {
    v11 = *(a1 + 64) ? *(*(a1 + 48) + 36) : 0.0;
    if (*(a1 + 136) != v11 || (v12 = sub_59224(a1 + 40), *(a1 + 144) != *&v12))
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18)
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 64))
          {
            v20 = *(*(a1 + 48) + 36);
          }

          else
          {
            v20 = 0.0;
          }

          v21 = sub_59224(a1 + 40);
          v22 = *(a1 + 136);
          v23 = *(a1 + 144);
          *buf = 136316418;
          v28 = "VolumeControl.h";
          v29 = 1024;
          v30 = 1315;
          v31 = 2048;
          v32 = v20;
          v33 = 2048;
          v34 = *&v21;
          v35 = 2048;
          v36 = v22;
          v37 = 2048;
          v38 = v23;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VolumeCurve's range [%f, %f] doesn't match volume range of command [%f, %f]", buf, 0x3Au);
        }
      }
    }
  }

  return a1;
}

void sub_274A0C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "VolumeControl.h";
      v5 = 1024;
      v6 = 426;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SoftwareVolumeCommand does not supports dB to Scalar convertion", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SoftwareVolumeCommand does not supports dB to Scalar convertion");
}

void sub_274AF4()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "VolumeControl.h";
      v5 = 1024;
      v6 = 420;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): SoftwareVolumeCommand does not supports dB to Scalar convertion", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SoftwareVolumeCommand does not supports dB to Scalar convertion");
}

uint64_t sub_274BF4(void *a1, float *a2)
{
  v4 = a1 + 13;
  v5 = (*(*a1 + 320))(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = sub_275004(v4, v5, 0);
  if (a1 + 14 == v7)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v33, v5);
      v29 = v34 >= 0 ? v33 : v33[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 521;
      v38 = 2080;
      v39 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v8 = v7;
  v9 = sub_5544(19);
  v10 = sub_5544(39);
  v11 = 0;
  *buf = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&buf[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

  if (*(v9 + 8))
  {
LABEL_10:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v33, v6);
      v15 = v34;
      v16 = v33[0];
      v17 = *a2;
      sub_22170(__p, v5);
      v18 = v33;
      if (v15 < 0)
      {
        v18 = v16;
      }

      v19 = __p[0];
      v20 = *(v8 + 14);
      if (v32 >= 0)
      {
        v19 = __p;
      }

      *buf = 136316418;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 525;
      v38 = 2080;
      v39 = v18;
      v40 = 2048;
      v41 = v17;
      v42 = 2080;
      v43 = v19;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting parameter '%s' to %f on processor type '%s' index %u", buf, 0x36u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }
  }

LABEL_20:
  v21 = a1[4];
  if (!v21)
  {
    return 0;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = a1[3];
  if (v24)
  {
    v25 = (*(*v24 + 64))(v24, v5, v6, a2, 0);
  }

  else
  {
    v25 = 0;
  }

  sub_1A8C0(v23);
  return v25;
}

void sub_274FC4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275004(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    if (v7 < a2 || v7 == a2 && *(v4 + 9) < a3)
    {
      ++v4;
    }

    else
    {
      v6 = v4;
    }

    v4 = *v4;
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v8 = *(v6 + 8);
  if (v8 > a2 || v8 == a2 && *(v6 + 9) > a3)
  {
    return v3;
  }

  return v6;
}

uint64_t sub_275074(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_2751F0(unsigned int *a1, uint64_t a2, int a3, float a4, float a5)
{
  v50 = a3;
  if (a1[42])
  {
    v10 = sub_5544(39);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v12 = "enabled";
      }

      else
      {
        v12 = "disabled";
      }

      v13 = v48;
      sub_22170(v48, a1[42]);
      if (v49 < 0)
      {
        v13 = v48[0];
      }

      sub_22170(v46, a2);
      v14 = v47;
      v15 = v46[0];
      sub_E896C(__p, a1);
      v16 = v46;
      if (v14 < 0)
      {
        v16 = v15;
      }

      *buf = 136316930;
      *&buf[4] = "VolumeControl.h";
      if (v45 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v52 = 1024;
      v53 = 1435;
      v54 = 2080;
      v55 = v12;
      v56 = 2080;
      *v57 = v13;
      *&v57[8] = 2080;
      v58 = v16;
      v59 = 2048;
      v60 = a4;
      v61 = 2048;
      v62 = a5;
      v63 = 2080;
      v64 = v17;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set Duck command  %s, mParameterID: '%s', type: '%s', gain: %f, time: %f on chain '%s'.", buf, 0x4Eu);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }
    }

    if (a2 != 1)
    {
      v35 = sub_5544(14);
      v36 = *v35;
      if (*v35)
      {
        if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v48, a2);
          v37 = v49 >= 0 ? v48 : v48[0];
          *buf = 136315650;
          *&buf[4] = "VolumeControl.h";
          v52 = 1024;
          v53 = 1437;
          v54 = 2080;
          v55 = v37;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: duck type: '%s' not supported!", buf, 0x1Cu);
          if (v49 < 0)
          {
            operator delete(v48[0]);
          }
        }
      }
    }

    *buf = a1[43];
    v46[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!v46[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    *buf = a1[44];
    __p[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!__p[0])
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v39, "Could not construct");
    }

    *buf = a1[45];
    cf = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!cf)
    {
      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, "Could not construct");
    }

    v18 = a5 * 1000.0;
    v19 = a1[46];
    if (a1[47] != 1)
    {
      v18 = a5;
    }

    v42 = v18;
    if (v19 == 1)
    {
      a4 = log10f(a4) * 20.0;
    }

    v41 = a4;
    sub_2759A8(buf, v46[0], &v50);
    sub_275A8C((&v53 + 2), __p[0], &v41);
    sub_275A8C(&v57[2], cf, &v42);
    v48[0] = buf;
    v48[1] = &dword_0 + 3;
    v20 = sub_69CE8(v48);
    for (i = 0; i != -6; i -= 2)
    {
      v22 = (&v58)[i];
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *&v57[i * 8 + 2];
      if (v23)
      {
        CFRelease(v23);
      }
    }

    *buf = v20;
    v24 = (*(*a1 + 320))(a1);
    sub_3DE5A4(a1, v24, a1[42]);
    CFRelease(v20);
    if (cf)
    {
      CFRelease(cf);
    }

    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (v46[0])
    {
      CFRelease(v46[0]);
    }
  }

  if (sub_DD820())
  {
    v25 = (*(*a1 + 320))(a1);
    if (sub_3DEC5C(a1, v25))
    {
      v26 = sub_8703C();
      v27 = (*(*v26 + 296))(v26);
      v28 = v27;
      if (a3)
      {
        v29 = 1;
      }

      else
      {
        v29 = v27 == 0;
      }

      v30 = v29;
      LODWORD(v48[0]) = v30;
      v31 = sub_5544(39);
      v32 = *v31;
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[4] = "VolumeControl.h";
        v53 = 1481;
        v33 = "enabled";
        v54 = 2080;
        *buf = 136316162;
        v52 = 1024;
        if (!a3)
        {
          v33 = "disabled";
        }

        v55 = v33;
        v56 = 1024;
        *v57 = v28;
        *&v57[4] = 1024;
        *&v57[6] = v30;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Duck %s, enhance dialog level %u, Set AUSI bypass %u", buf, 0x28u);
      }

      v34 = (*(*a1 + 320))(a1);
      sub_3DE5A4(a1, v34, 1936289907);
    }
  }
}

void sub_275860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2759A8(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_275A54(_Unwind_Exception *a1)
{
  sub_1D5FAC(v2);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void *sub_275A8C(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_275B38(_Unwind_Exception *a1)
{
  sub_1D5FAC(v2);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_275B90(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  v10 = sub_5544(39);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(v19, a2);
    v12 = v20;
    v13 = v19[0];
    sub_E896C(__p, a1);
    v22 = "VolumeControl.h";
    v14 = v19;
    if (v12 < 0)
    {
      v14 = v13;
    }

    v23 = 1024;
    v24 = 317;
    v26 = v14;
    v15 = "disabled";
    *buf = 136316674;
    if (a3)
    {
      v15 = "enabled";
    }

    v25 = 2080;
    if (v18 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    v27 = 2080;
    v28 = v15;
    v29 = 2048;
    v30 = a4;
    v31 = 2048;
    v32 = a5;
    v33 = 2080;
    v34 = v16;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume ducking is not supported for this volume command, %s type: %s, gain: %f, time: %f, chain: '%s'.", buf, 0x44u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_275D28(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_275DDC(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_275E28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_275E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2742BC((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_275EFC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2742BC(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_275F48(uint64_t a1, uint64_t a2, void *a3)
{
  if ((atomic_load_explicit(&qword_6E8038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8038))
  {
    sub_276000();
  }

  v4 = qword_6E8028;
  v5 = unk_6E8030;
  if (unk_6E8030)
  {
    atomic_fetch_add_explicit((unk_6E8030 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2760A0(a3, v4, v5);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  return 0;
}

void sub_2760A0(void *a1, uint64_t a2, uint64_t a3)
{
  *&v4 = a2;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v4 + 1) = a3;
  v6 = a1[22];
  v5 = a1[23];
  if (v6 >= v5)
  {
    v8 = a1[21];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_2761D8(v12);
    }

    v13 = 24 * v9;
    *v13 = v4;
    *(v13 + 16) = 0;
    v7 = 24 * v9 + 24;
    v14 = a1[21];
    v15 = a1[22] - v14;
    v16 = v13 - v15;
    memcpy((v13 - v15), v14, v15);
    v17 = a1[21];
    a1[21] = v16;
    a1[22] = v7;
    a1[23] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = v4;
    *(v6 + 16) = 0;
    v7 = v6 + 24;
  }

  a1[22] = v7;
}

void sub_2761C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2761D8(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2763F4(_Unwind_Exception *a1)
{
  sub_13EFE4(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t sub_276438(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5, uint64_t a6, std::__shared_weak_count *a7)
{
  if (a7)
  {
    atomic_fetch_add_explicit(&a7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_276B90(a1, a2, a6, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_weak(a7);
  }

  *a1 = &off_6D4F68;
  *(a1 + 132) = a3;
  *(a1 + 136) = a4;
  v12 = *a5;
  *(a1 + 156) = *(a5 + 2);
  *(a1 + 140) = v12;
  return a1;
}

void sub_2764D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276518(unsigned int *a1, uint64_t a2, int a3, float a4, float a5)
{
  v40 = a3;
  if (a1[35])
  {
    v10 = sub_5544(39);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v12 = "enabled";
      }

      else
      {
        v12 = "disabled";
      }

      v13 = v38;
      sub_22170(v38, a1[35]);
      if (v39 < 0)
      {
        v13 = v38[0];
      }

      sub_22170(v36, a2);
      v14 = v37;
      v15 = v36[0];
      sub_E896C(__p, a1);
      *&buf[4] = "VolumeControl.h";
      v16 = v36;
      if (v14 < 0)
      {
        v16 = v15;
      }

      *buf = 136316930;
      v42 = 1024;
      if (v35 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v43 = 616;
      v44 = 2080;
      v45 = v12;
      v46 = 2080;
      v47 = v13;
      v48 = 2080;
      v49 = v16;
      v50 = 2048;
      v51 = a4;
      v52 = 2048;
      v53 = a5;
      v54 = 2080;
      v55 = v17;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set Duck command  %s, mParameterID: '%s', type: '%s', gain: %f, time: %f, chain: '%s'.", buf, 0x4Eu);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      if (v37 < 0)
      {
        operator delete(v36[0]);
      }

      if (v39 < 0)
      {
        operator delete(v38[0]);
      }
    }

    if (a2 != 1)
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25)
      {
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v38, a2);
          v27 = v39 >= 0 ? v38 : v38[0];
          *buf = 136315650;
          *&buf[4] = "VolumeControl.h";
          v42 = 1024;
          v43 = 618;
          v44 = 2080;
          v45 = v27;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: duck type: '%s' not supported!", buf, 0x1Cu);
          if (v39 < 0)
          {
            operator delete(v38[0]);
          }
        }
      }
    }

    *buf = a1[36];
    v36[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!v36[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    *buf = a1[37];
    __p[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!__p[0])
    {
      v29 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v29, "Could not construct");
    }

    *buf = a1[38];
    cf = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!cf)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    v18 = a5 * 1000.0;
    v19 = a1[39];
    if (a1[40] != 1)
    {
      v18 = a5;
    }

    v32 = v18;
    if (v19 == 1)
    {
      a4 = log10f(a4) * 20.0;
    }

    v31 = a4;
    sub_2759A8(buf, v36[0], &v40);
    sub_275A8C((&v43 + 2), __p[0], &v31);
    sub_275A8C((&v47 + 2), cf, &v32);
    v38[0] = buf;
    v38[1] = &dword_0 + 3;
    v20 = sub_69CE8(v38);
    for (i = 0; i != -6; i -= 2)
    {
      v22 = (&v49)[i];
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *(&(&v47)[i] + 2);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    *buf = v20;
    v24 = (*(*a1 + 320))(a1);
    sub_3DE5A4(a1, v24, a1[35]);
    CFRelease(v20);
    if (cf)
    {
      CFRelease(cf);
    }

    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (v36[0])
    {
      CFRelease(v36[0]);
    }
  }
}

void sub_276A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B54(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void *sub_276B90(void *a1, int a2, uint64_t a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1498D0(a1, a2, a3, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *a1 = off_6D50C0;
  return a1;
}

void sub_276BFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_276C14(unsigned int *a1)
{
  v4 = 0.0;
  v2 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v2, a1[34], &v4);
  return v4 == 0.0;
}

void sub_276C8C(unsigned int *a1, int a2)
{
  if ((*(*a1 + 320))(a1) != 1685287015 || a1[34])
  {
    if (a2)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = sub_5544(19);
    v6 = sub_5544(39);
    v7 = 0;
    *buf = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&buf[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v8 & v9) == 0)
    {
      v5 = v6;
    }

LABEL_12:
    v10 = *v5;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      sub_E896C(__p, a1);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "VolumeControl.h";
      v16 = 1024;
      v17 = 594;
      v18 = 2048;
      v19 = v4;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Setting mute value: %.2f for chain '%s'.", buf, 0x26u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v12, a1[34], v4);
  }
}

void sub_276EA0(unsigned int *a1, float a2)
{
  v4 = sub_5544(19);
  v5 = sub_5544(39);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "VolumeControl.h";
    v15 = 1024;
    v16 = 581;
    v17 = 2048;
    v18 = a2;
    v19 = 2080;
    v20 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Setting volume %.2f for chain '%s'.", buf, 0x26u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v11, a1[33], a2);
}

void sub_277060(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_2770C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BC730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_277138(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 152);
  if (v4)
  {
    CFRetain(*(a1 + 152));
  }

  v17 = v4;
  sub_53E8(&__p, "PortType");
  LODWORD(v15[0]) = 1886613611;
  v5 = sub_2902F4(&v17, &__p, v15);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

LABEL_8:
  if ((sub_28F080(v5) & 1) == 0)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.isa) = 136315394;
      *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
      WORD2(__p.info) = 1024;
      *(&__p.info + 6) = 595;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (v5 == 1886613611)
  {
    if ((atomic_load_explicit(&qword_6E8138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8138))
    {
      sub_2774B8(&qword_6E8128);
    }

    v6 = qword_6E8128;
    v7 = unk_6E8130;
    if (unk_6E8130)
    {
      atomic_fetch_add_explicit((unk_6E8130 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = sub_5544(25);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      sub_22170(v15, v5);
      v10 = v16 >= 0 ? v15 : v15[0];
      LODWORD(__p.isa) = 136315650;
      *(&__p.isa + 4) = "DSPGraphConfig_Actions.cpp";
      WORD2(__p.info) = 1024;
      *(&__p.info + 6) = 611;
      WORD1(__p.data) = 2080;
      *(&__p.data + 4) = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Default Volume taper command for port %s.", &__p, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }

    if ((atomic_load_explicit(&qword_6E8150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8150))
    {
      sub_2774B8(&qword_6E8140);
    }

    v6 = qword_6E8140;
    v7 = *algn_6E8148;
    if (*algn_6E8148)
    {
      atomic_fetch_add_explicit((*algn_6E8148 + 8), 1uLL, memory_order_relaxed);
    }
  }

  sub_2760A0(a3, v6, v7);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  return 0;
}

void sub_2775F8(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_27761C(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, int a4, int a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_276B90(a1, 1935895666, a2, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_weak(a3);
  }

  *a1 = off_6D4210;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 176) = a4;
  *(a1 + 180) = a5;
  std::recursive_mutex::recursive_mutex((a1 + 184));
  *(a1 + 248) = 1987341684;
  v9 = sub_5544(42);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    sub_E896C(__p, a1);
    v11 = __p[0];
    v12 = " does not ";
    if (v16 >= 0)
    {
      v11 = __p;
    }

    if (*(a1 + 176))
    {
      v13 = " does not ";
    }

    else
    {
      v13 = " ";
    }

    if (!*(a1 + 180))
    {
      v12 = " ";
    }

    *buf = 136316162;
    v18 = "VolumeControl.h";
    v19 = 1024;
    v20 = 1589;
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = v13;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::SoftwareVolumeCommand_VolumeTaper_Graph() - creating volume taper command for chain '%s'. Volume command%ssupports volume ramping. Volume command%ssupports unit convertion", buf, 0x30u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_2777D8(_Unwind_Exception *a1)
{
  std::recursive_mutex::~recursive_mutex((v1 + 184));
  sub_27781C(v1 + 136);
  sub_13EFE4(v1);
  _Unwind_Resume(a1);
}

void sub_277808()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x277800);
}

uint64_t sub_27781C(uint64_t a1)
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

float sub_27789C(uint64_t a1, float a2)
{
  std::recursive_mutex::lock((a1 + 184));
  LODWORD(v20[1]) = 1;
  v21 = 8;
  v20[0] = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = (*(*a1 + 320))(a1);
    (*(*v7 + 128))(v7, v8, 1987342435, v20, 8, 0, 0, 1);
    v9 = (*(*a1 + 320))(a1);
    (*(*v7 + 120))(v7, v9, 1987342435, v19, &v21, 0, 0, 1);
  }

  sub_1A8C0(v6);
  if (LODWORD(v19[1]) != 1)
  {
    v17 = sub_5544(42);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v23 = "VolumeControl.h";
      v24 = 1024;
      v25 = 1792;
      v26 = 2048;
      v27 = v20[0];
      v28 = 2048;
      v29 = v19[0];
      v12 = "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::convertScalarTodB() Successfully converted %f scalar to %f dB";
      v13 = v18;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }

  else
  {
LABEL_6:
    v10 = sub_5544(42);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "VolumeControl.h";
      v24 = 1024;
      v25 = 1786;
      v26 = 2048;
      v27 = a2;
      v28 = 2048;
      v29 = v19[0];
      v12 = "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::convertScalarTodB() Failed to convert %f Scalar to dB. Output value: %f Scalar";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_0, v13, v14, v12, buf, 0x26u);
    }
  }

  v15 = v19[0];
  std::recursive_mutex::unlock((a1 + 184));
  return v15;
}

float sub_277B8C(uint64_t a1, float a2)
{
  std::recursive_mutex::lock((a1 + 184));
  v20[1] = 0.0;
  v21 = 8;
  v20[0] = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = (*(*a1 + 320))(a1);
    (*(*v7 + 128))(v7, v8, 1987342435, v20, 8, 0, 0, 1);
    v9 = (*(*a1 + 320))(a1);
    (*(*v7 + 120))(v7, v9, 1987342435, v19, &v21, 0, 0, 1);
  }

  sub_1A8C0(v6);
  if (LODWORD(v19[1]))
  {
    v10 = sub_5544(42);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v23 = "VolumeControl.h";
      v24 = 1024;
      v25 = 1759;
      v26 = 2048;
      v27 = v20[0];
      v28 = 2048;
      v29 = v19[0];
      v12 = "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::convertdBToScalar() Successfully converted %f dB to %f scalar.";
      v13 = v11;
      v14 = OS_LOG_TYPE_INFO;
LABEL_12:
      _os_log_impl(&dword_0, v13, v14, v12, buf, 0x26u);
    }
  }

  else
  {
LABEL_9:
    v15 = sub_5544(42);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "VolumeControl.h";
      v24 = 1024;
      v25 = 1753;
      v26 = 2048;
      v27 = a2;
      v28 = 2048;
      v29 = v19[0];
      v12 = "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::convertdBToScalar() Failed to convert %f dB to scalar. Output value: %f dB";
      v13 = v16;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_12;
    }
  }

  v17 = v19[0];
  std::recursive_mutex::unlock((a1 + 184));
  return v17;
}

BOOL sub_277E74(_DWORD *a1)
{
  if (a1[45])
  {
    return 0;
  }

  v4 = (*(*a1 + 320))(a1);

  return sub_3DEC5C(a1, v4);
}

uint64_t sub_277F00(uint64_t a1, uint64_t a2, float a3)
{
  v4 = a2;
  v6 = sub_5544(42);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = "not ramping";
    v9 = *(a1 + 160);
    v12 = 136316162;
    v13 = "VolumeControl.h";
    if (v4)
    {
      v8 = "ramping";
    }

    v14 = 1024;
    v15 = 1678;
    v17 = v8;
    v16 = 2080;
    v18 = 2048;
    v19 = a3;
    if (v9)
    {
      v10 = "active";
    }

    else
    {
      v10 = "nullptr";
    }

    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::VolumeRampUpdated() - ramp state %s slider position %.2f callback is %s.", &v12, 0x30u);
  }

  result = *(a1 + 160);
  if (result)
  {
    result = sub_278050(result, v4, a3);
  }

  *(a1 + 168) = a3;
  *(a1 + 172) = 1;
  return result;
}

uint64_t sub_278050(uint64_t a1, char a2, float a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    sub_46A74();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t sub_2780A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "active";
    v7 = *(a2 + 24);
    v14 = "VolumeControl.h";
    v13 = 136315650;
    if (!v7)
    {
      v6 = "nullptr";
    }

    v15 = 1024;
    v16 = 1669;
    v17 = 2080;
    *v18 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::SetVolumeRampListener() - callback is %s.", &v13, 0x1Cu);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *&v18[4] = &v13;
      (*(*v8 + 24))(v8, &v13);
    }

    else
    {
      *&v18[4] = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    *&v18[4] = 0;
  }

  v9 = a1 + 136;
  if ((a1 + 136) != &v13)
  {
    v10 = *&v18[4];
    v11 = *(a1 + 160);
    if (*&v18[4] == &v13)
    {
      if (v11 == v9)
      {
        (*(**&v18[4] + 24))(*&v18[4], v19);
        (*(**&v18[4] + 32))(*&v18[4]);
        *&v18[4] = 0;
        (*(**(a1 + 160) + 24))(*(a1 + 160), &v13);
        (*(**(a1 + 160) + 32))(*(a1 + 160));
        *(a1 + 160) = 0;
        *&v18[4] = &v13;
        (*(v19[0] + 24))(v19, a1 + 136);
        (*(v19[0] + 32))(v19);
      }

      else
      {
        (*(**&v18[4] + 24))(*&v18[4], a1 + 136);
        (*(**&v18[4] + 32))(*&v18[4]);
        *&v18[4] = *(a1 + 160);
      }

      *(a1 + 160) = v9;
    }

    else if (v11 == v9)
    {
      (*(*v11 + 24))(*(a1 + 160), &v13);
      (*(**(a1 + 160) + 32))(*(a1 + 160));
      *(a1 + 160) = *&v18[4];
      *&v18[4] = &v13;
    }

    else
    {
      *&v18[4] = *(a1 + 160);
      *(a1 + 160) = v10;
    }
  }

  return sub_27781C(&v13);
}

void sub_278430(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27843C(uint64_t a1)
{
  v2 = sub_5544(42);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "VolumeControl.h";
    v7 = 1024;
    v8 = 1660;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::CancelVolumeRamp().", &v5, 0x12u);
  }

  v4 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v4, 1987342957, 0.0);
}

void sub_278544(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a2;
    v7 = *(a2 + 4);
    v8 = *(a2 + 8);
    sub_48540(v19, *(a2 + 16));
    v9 = v7;
    v10 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v10 = v19[1];
    }

    if (v10)
    {
      sub_48540(__p, *(a2 + 16));
      if (v18 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136316418;
      v22 = "VolumeControl.h";
      v23 = 1024;
      v24 = 1646;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = v9;
      v29 = 2048;
      v30 = v8;
      v31 = 2080;
      v32 = v11;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::StartVolumeRamp() - target: %.2f upward rate: %.2fms downward rate: %.2fms category: '%s'.", buf, 0x3Au);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136316418;
      v22 = "VolumeControl.h";
      v23 = 1024;
      v24 = 1646;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = v9;
      v29 = 2048;
      v30 = v8;
      v31 = 2080;
      v32 = "unknown";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::StartVolumeRamp() - target: %.2f upward rate: %.2fms downward rate: %.2fms category: '%s'.", buf, 0x3Au);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  v12 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v12, 1987342957, 1.0);
  v13 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v13, 1987342965, 1.0);
  v14 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v14, 1987343221, *(a2 + 4));
  v15 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v15, 1987343204, *(a2 + 8));
  v16 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v16, 1987343987, *a2);
}

void sub_278888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2788BC(uint64_t a1, int a2)
{
  *(a1 + 96) = a2;
  v4 = sub_5544(42);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = "disabled";
    v26 = "VolumeControl.h";
    *buf = 136315650;
    if (a2)
    {
      v6 = "enabled";
    }

    v27 = 1024;
    v28 = 1695;
    v29 = 2080;
    v30 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d SoftwareVolumeCommand_VolumeTaper_Graph::EnableWritableSoftwareVolumeProcessors() - %s.", buf, 0x1Cu);
  }

  if (a2 && *(a1 + 172) == 1)
  {
    (*(*a1 + 16))(a1, *(a1 + 168));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 24);
      if (v10)
      {
        v24 = a2 ^ 1;
        v11 = (*(*v10 + 128))(v10, 1685287015, 1652127348, &v24, 4, 0, 0, 0);
        v12 = sub_5544(39);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(__p, 1652127348);
          v14 = v23 >= 0 ? __p : __p[0];
          *buf = 136316162;
          v26 = "VolumeControl.h";
          v27 = 1024;
          v28 = 1708;
          v29 = 2080;
          v30 = v14;
          v31 = 1024;
          v32 = v24;
          v33 = 1024;
          v34 = v11;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting bypass of %s to %u: %u", buf, 0x28u);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v15 = v10[102];
        if (v15)
        {
          v16 = v10[101];
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v17 = std::__shared_weak_count::lock(v15);
          std::__shared_weak_count::__release_weak(v15);
          if (v17)
          {
            if (v16)
            {
              if (sub_34CF94(v16))
              {
                v18 = (*(*v10 + 128))(v10, 1685287015, 1652122470, &v24, 4, 0, 0, 0);
                v19 = sub_5544(39);
                v20 = *v19;
                if (*v19)
                {
                  if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_22170(__p, 1652122470);
                    if (v23 >= 0)
                    {
                      v21 = __p;
                    }

                    else
                    {
                      v21 = __p[0];
                    }

                    *buf = 136316162;
                    v26 = "VolumeControl.h";
                    v27 = 1024;
                    v28 = 1720;
                    v29 = 2080;
                    v30 = v21;
                    v31 = 1024;
                    v32 = v24;
                    v33 = 1024;
                    v34 = v18;
                    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting bypass of %s to %u: %u", buf, 0x28u);
                    if (v23 < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }
                }
              }
            }

            sub_1A8C0(v17);
          }
        }
      }

      sub_1A8C0(v9);
    }
  }
}