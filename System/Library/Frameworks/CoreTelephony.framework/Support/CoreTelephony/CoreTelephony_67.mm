void **sub_1004416D8(void **a1)
{
  sub_10044170C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10044170C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

BOOL sub_100441760(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((v4 != 0) == (v5 == 0) || v4 && CFEqual(v4, v5) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if ((v6 != 0) == (v7 == 0) || v6 && CFEqual(v6, v7) != 1)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if ((v8 != 0) == (v9 == 0) || v8 && CFEqual(v8, v9) != 1)
  {
    return 0;
  }

  v10 = *(a1 + 24);
  v11 = *(a2 + 24);
  result = (v10 == 0) == (v11 == 0);
  if (v10)
  {
    if (v11)
    {
      return CFEqual(*(a1 + 24), v11) == 1;
    }
  }

  return result;
}

void sub_1004418D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1004419A8);
  __cxa_rethrow();
}

void sub_100441914(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100441968(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004419A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1004419D4(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

uint64_t *sub_100441A98(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        DDBControlImpl::init_sync(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_100441B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100441B30(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        DDBControlImpl::start_sync(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_100441BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100441BC8(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 120));
          v8 = asStringBool(*(v1 + 24));
          *buf = 136315650;
          v14 = v7;
          v15 = 2080;
          v16 = " ";
          v17 = 2080;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sactivate : %s", buf, 0x20u);
        }

        v9 = *(v3 + 152);
        if (v9)
        {
          (*(*v9 + 336))(v9, *(***(v3 + 120) + 48));
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100441D54(&v12);
  return sub_1000049E0(&v11);
}

void sub_100441D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100441D54(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100441D54(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 32);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100441DC0(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = *(v3 + 152);
        if (v6)
        {
          (*(*v6 + 16))(v6, 4);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v9);
  return sub_1000049E0(&v8);
}

void sub_100441E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100441E80(void **a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!v1[1])
      {
LABEL_20:
        sub_100004A34(v5);
        goto LABEL_21;
      }

      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PersonalityInfo::logPrefix(***(v3 + 120));
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sToken might not be actual, cleaning the wallet", buf, 0x16u);
      }

      ServiceMap = Registry::getServiceMap(*(v3 + 72));
      v9 = ServiceMap;
      if (v10 < 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      *buf = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, buf);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
LABEL_14:
          (*(*v16 + 32))(v16, ***(v3 + 120) + 24, @"service-token", off_101FB1CA0, 0, 4);
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          v18 = *(v3 + 152);
          if (v18)
          {
            memset(buf, 0, sizeof(buf));
            (*(*v18 + 280))(v18, buf);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            (*(**(v3 + 152) + 16))(*(v3 + 152), 3);
          }

          goto LABEL_20;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_14;
    }
  }

LABEL_21:
  sub_10007060C(&v21);
  return sub_1000049E0(&v20);
}

void sub_100442108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_100004A34(v12);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100442174(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(v2 + 120));
    *buf = 136315394;
    *&buf[4] = v4;
    v19 = 2080;
    v20 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sCEContext changed", buf, 0x16u);
  }

  v5 = *(v2 + 152);
  if (!v5)
  {
LABEL_20:
    operator delete();
  }

  if (*(v1 + 2) != 1 || *(*(v2 + 120) + 504) != 1)
  {
    (*(*v5 + 16))(v5, 4);
    goto LABEL_20;
  }

  v17 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 72));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
LABEL_15:
      (*(*v14 + 24))(&v16, v14, ***(v2 + 120) + 24, @"service-token", off_101FB1CA0, 0, 4);
      sub_1001B1A54(&v17, &v16);
      sub_10000A1EC(&v16);
      if ((v15 & 1) == 0)
      {
        sub_100004A34(v13);
      }

      if (!v17)
      {
        (*(**(v2 + 152) + 280))(*(v2 + 152), *(v2 + 120) + 480);
      }

      sub_10002D760(&v17);
      goto LABEL_20;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  goto LABEL_15;
}

void sub_100442420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002D760(va);
  operator delete();
}

uint64_t sub_100442500(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4D2C0;
  a2[1] = v2;
  return result;
}

void sub_10044252C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 120));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_100442610(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004426CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4D340;
  a2[1] = v2;
  return result;
}

void sub_1004426F8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 120));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1004427DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100442848(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4D3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_10044289C(const void **a1)
{
  sub_100029A48(a1 + 6);
  sub_100029A48(a1 + 5);
  sub_100029A48(a1 + 4);

  return sub_100029A48(a1 + 3);
}

char *sub_1004428EC(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1004429A0();
  }

  return v5;
}

uint64_t sub_100442AB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4D410;
  a2[1] = v2;
  return result;
}

void sub_100442ADC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 120));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_100442BC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100442C7C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4D490;
  a2[1] = v2;
  return result;
}

void sub_100442CA8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 120));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_100442D8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100442DD8(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100442ECC(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100442F44(v3);
  sub_100443038(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100442F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100443038(va);
  v10 = a9;
  a9 = 0;
  if (v10)
  {
    sub_1002B78C4(&a9, v10);
  }

  _Unwind_Resume(a1);
}

void sub_100442F44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 24);
        v7 = *(a1 + 40);
        v10[0] = *(a1 + 32);
        v10[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v9, (a1 + 48));
        sub_100060E84(&v8, (a1 + 56));
        sub_10043F9E8(v3, v6, v10, &v9);
        sub_10000A1EC(&v8);
        sub_10001021C(&v9);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100443008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100443038(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000A1EC((v1 + 56));
    sub_10001021C((v1 + 48));
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_1004430A8(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10044319C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100443214(v3);
  sub_100443038(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004431EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100443038(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100443214(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 24);
        v7 = *(a1 + 40);
        v10[0] = *(a1 + 32);
        v10[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v9, (a1 + 48));
        sub_100060E84(&v8, (a1 + 56));
        sub_100440300(v3, v6, v10, &v9, &v8);
        sub_10000A1EC(&v8);
        sub_10001021C(&v9);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004432DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10044330C(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_100443400(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100443478(v3);
  sub_100443038(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_100443450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100443038(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_100443478(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 24);
        v7 = *(a1 + 40);
        v10[0] = *(a1 + 32);
        v10[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v9, (a1 + 48));
        sub_100060E84(&v8, (a1 + 56));
        sub_10043F8B8(v3, v6, v10);
        sub_10000A1EC(&v8);
        sub_10001021C(&v9);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100443538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100443568(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_10044365C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004436D4(v3);
  sub_100443038(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004436AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100443038(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1004436D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = *(a1 + 40);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v8, (a1 + 48));
        sub_100060E84(&v7, (a1 + 56));
        sub_10043F9A4(v3);
        sub_10000A1EC(&v7);
        sub_10001021C(&v8);
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10044377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1004437AC(const __CFString *a1)
{
  v1 = sub_100443868(a1);
  if (v1)
  {
    if (sub_1001883A0() || sub_1000B1374())
    {
      v5 = 0;
      v4 = CFPreferencesCopyValue(v1, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_10017A3BC(&v5, &v4);
      LOBYTE(v4) = 0;
      ctu::cf::assign(&v4, v5, v2);
      LOBYTE(v1) = v4;
      sub_100045C8C(&v5);
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

void sub_100443854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

const __CFString *sub_100443868(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, @"kCTAutomaticSMS"))
    {
      return @"DisallowAutomaticSMS";
    }

    else if (CFEqual(v1, @"kCTCarrierEntitlements"))
    {
      return @"DisallowCarrierEntitlements";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFString *sub_1004438D4(const __CFString *a1, int a2)
{
  result = sub_100443868(a1);
  if (result)
  {
    v4 = result;
    if (sub_1001883A0() || (result = sub_1000B1374(), result))
    {
      v5 = &kCFBooleanTrue;
      if (!a2)
      {
        v5 = &kCFBooleanFalse;
      }

      v6 = *v5;
      v7 = kCommCenterPreferencesNoBackupAppID;

      return persistentSaveValue(v7, v4, v6);
    }
  }

  return result;
}

uint64_t sub_100443958(uint64_t a1, uint64_t *a2)
{
  *a1 = off_101E4D510;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "cp.pst");
  sub_100443A94(v4, "CellularPlanPersistenceControllerImpl", QOS_CLASS_UTILITY, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E4D510;
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 48);
  }

  (*(*v5 + 624))(v5);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_100443A4C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 40));
  sub_1000C0544(v2);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_100443A94(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
{
  object = 0;
  sub_1000B9CE0(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger(&object, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &object);
  ctu::OsLogLogger::~OsLogLogger(&object);
  return a1;
}

void sub_100443AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

void sub_100443B38(uint64_t a1)
{
  *a1 = off_101E4D510;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_100443BD4(uint64_t a1)
{
  sub_100443B38(a1);

  operator delete();
}

void sub_100443C0C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_100443CE8(uint64_t a1, uint64_t a2)
{
  sub_10016A310(&v3 + 8, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100443F64(uint64_t a1, uint64_t a2)
{
  v52 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v2 = [NSNumber numberWithInt:4];
  [v52 encodeObject:v2 forKey:@"version"];

  if (*(a2 + 16))
  {
    v3 = objc_opt_new();
    v4 = *a2;
    if (*a2 != a2 + 8)
    {
      do
      {
        v5 = v4 + 4;
        if (*(v4 + 55) < 0)
        {
          v5 = *v5;
        }

        v6 = [NSString stringWithUTF8String:v5];
        [v3 addObject:v6];

        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != (a2 + 8));
    }

    [v52 encodeObject:v3 forKey:@"userEnabledIccids"];
  }

  if (*(a2 + 40))
  {
    v10 = objc_opt_new();
    v11 = *(a2 + 24);
    if (v11 != (a2 + 32))
    {
      do
      {
        v12 = v11 + 4;
        if (*(v11 + 55) < 0)
        {
          v12 = *v12;
        }

        v13 = [NSString stringWithUTF8String:v12];
        [v10 addObject:v13];

        v14 = v11[1];
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
            v15 = v11[2];
            v9 = *v15 == v11;
            v11 = v15;
          }

          while (!v9);
        }

        v11 = v15;
      }

      while (v15 != (a2 + 32));
    }

    [v52 encodeObject:v10 forKey:@"usableIccids"];
  }

  v16 = (a2 + 48);
  if (*(a2 + 71) < 0)
  {
    if (!*(a2 + 56))
    {
      goto LABEL_29;
    }

    v16 = *v16;
    goto LABEL_28;
  }

  if (*(a2 + 71))
  {
LABEL_28:
    v17 = [NSString stringWithUTF8String:v16];
    [v52 encodeObject:v17 forKey:@"userActiveDataSelectedPlanIccid"];
  }

LABEL_29:
  v18 = (a2 + 72);
  if (*(a2 + 95) < 0)
  {
    if (!*(a2 + 80))
    {
      goto LABEL_35;
    }

    v18 = *v18;
    goto LABEL_34;
  }

  if (*(a2 + 95))
  {
LABEL_34:
    v19 = [NSString stringWithUTF8String:v18];
    [v52 encodeObject:v19 forKey:@"userDefaultVoiceSelectedPlanIccid"];
  }

LABEL_35:
  if (*(a2 + 112))
  {
    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = *(a2 + 96);
    if (v21 != (a2 + 104))
    {
      do
      {
        v22 = v21 + 7;
        if (*(v21 + 79) < 0)
        {
          v22 = *v22;
        }

        v23 = [NSString stringWithUTF8String:v22];
        v24 = v21 + 4;
        if (*(v21 + 55) < 0)
        {
          v24 = *v24;
        }

        v25 = [NSString stringWithUTF8String:v24];
        [v20 setObject:v23 forKeyedSubscript:v25];

        v26 = v21[1];
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
            v27 = v21[2];
            v9 = *v27 == v21;
            v21 = v27;
          }

          while (!v9);
        }

        v21 = v27;
      }

      while (v27 != (a2 + 104));
    }

    v28 = [v20 copy];
    [v52 encodeObject:v28 forKey:@"carrierNames"];
  }

  if (*(a2 + 136))
  {
    v29 = objc_alloc_init(NSMutableDictionary);
    v30 = *(a2 + 120);
    if (v30 != (a2 + 128))
    {
      do
      {
        v59[0] = @"mcc";
        v31 = v30 + 11;
        if (*(v30 + 111) < 0)
        {
          v31 = *v31;
        }

        v32 = [NSString stringWithUTF8String:v31];
        v60[0] = v32;
        v59[1] = @"mnc";
        v33 = v30 + 14;
        if (*(v30 + 135) < 0)
        {
          v33 = *v33;
        }

        v34 = [NSString stringWithUTF8String:v33];
        v60[1] = v34;
        v59[2] = @"gid1";
        v35 = v30 + 17;
        if (*(v30 + 159) < 0)
        {
          v35 = *v35;
        }

        v36 = [NSString stringWithUTF8String:v35];
        v60[2] = v36;
        v59[3] = @"gid2";
        v37 = v30 + 20;
        if (*(v30 + 183) < 0)
        {
          v37 = *v37;
        }

        v38 = [NSString stringWithUTF8String:v37];
        v60[3] = v38;
        v39 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
        v40 = v30 + 4;
        if (*(v30 + 55) < 0)
        {
          v40 = *v40;
        }

        v41 = [NSString stringWithUTF8String:v40];
        [v29 setObject:v39 forKeyedSubscript:v41];

        v42 = v30[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = v30[2];
            v9 = *v43 == v30;
            v30 = v43;
          }

          while (!v9);
        }

        v30 = v43;
      }

      while (v43 != (a2 + 128));
    }

    v44 = [v29 copy];
    [v52 encodeObject:v44 forKey:@"carrierDescriptors"];
  }

  v45 = (a2 + 144);
  if (*(a2 + 167) < 0)
  {
    if (!*(a2 + 152))
    {
      goto LABEL_73;
    }

    v45 = *v45;
    goto LABEL_72;
  }

  if (*(a2 + 167))
  {
LABEL_72:
    v46 = [NSString stringWithUTF8String:v45];
    [v52 encodeObject:v46 forKey:@"userDisabledPhySimIccid"];
  }

LABEL_73:
  v47 = [v52 encodedData];
  cf = v47;
  if (v47)
  {
    CFRetain(v47);
  }

  v48 = *(a1 + 48);
  sub_100444744(&v55);
  v49 = std::string::append(&v55, "com.apple.CommCenter.CellularPlan.plist", 0x27uLL);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v57 = v49->__r_.__value_.__r.__words[2];
  *__p = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v54 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  (*(*v48 + 896))(v48, __p, &v54);
  sub_10002D760(&v54);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  sub_10002D760(&cf);
}

void sub_100444744(std::string *a1@<X8>)
{
  WirelessUserDirectory = _GetWirelessUserDirectory();
  sub_10000501C(&v4, WirelessUserDirectory);
  v3 = std::string::append(&v4, "/Library/Preferences/no_backup/", 0x1FuLL);
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1004447B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004447D4(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100450FA0(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100444900(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100444918(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 48);
  sub_100444744(&__dst);
  v3 = std::string::append(&__dst, "com.apple.CommCenter.CellularPlan.plist", 0x27uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v103 = v3->__r_.__value_.__r.__words[2];
  *__p = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  (*(*v2 + 904))(&v90, v2, __p);
  v70 = v90.__r_.__value_.__l.__data_;
  sub_10002D760(&v90.__r_.__value_.__l.__data_);
  if (SHIBYTE(v103) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v70)
  {
    __p[1] = 0;
    __p[0] = &__p[1];
    v105[1] = 0;
    v105[0] = 0;
    v103 = 0;
    v104 = v105;
    *v106 = 0u;
    *v107 = 0u;
    v108 = 0u;
    v110[0] = 0;
    v109 = v110;
    memset(v112, 0, sizeof(v112));
    v110[1] = 0;
    v111 = v112;
    v5 = [NSKeyedUnarchiver alloc];
    v101 = 0;
    v6 = [v5 initForReadingFromData:v70 error:&v101];
    v7 = v101;
    v60 = v6;
    v62 = v7;
    if (!v6 || v7)
    {
      sub_100445C60(a2, __p);
    }

    else
    {
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v57 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
      v58 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
      if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v58 intValue] == 2)
        {
          v66 = 0;
          [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lastSelectedIccid"];
          v61 = 0;
          v64 = 0;
          v65 = 0;
          v67 = 0;
          v63 = v68 = 0;
        }

        else if ([v58 intValue] < 3)
        {
          v65 = 0;
          v66 = 0;
          v61 = 0;
          v63 = 0;
          v64 = 0;
          v67 = 0;
          v68 = 0;
        }

        else
        {
          v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lastSelectedIccid"];
          v12 = [v60 decodeObjectOfClass:objc_opt_class() forKey:@"userActiveDataSelectedPlanIccid"];
          v13 = [v60 decodeObjectOfClass:objc_opt_class() forKey:@"userDefaultVoiceSelectedPlanIccid"];
          v14 = [v60 decodeObjectOfClasses:v57 forKey:@"carrierNames"];
          v15 = [v60 decodeObjectOfClasses:v57 forKey:@"carrierDescriptors"];
          v16 = [v60 decodeObjectOfClasses:v57 forKey:@"userDisabledPhySimIccid"];
          [v60 decodeObjectOfClasses:v57 forKey:@"userEnabledIccids"];
          v65 = v15;
          v61 = v66 = v16;
          v63 = v11;
          v64 = v14;
          v67 = v12;
          v68 = v13;
        }

        if ([v58 intValue] == 4)
        {
          v69 = [v60 decodeObjectOfClasses:v57 forKey:@"usableIccids"];
        }

        else
        {
          v69 = 0;
        }

        [v60 finishDecoding];
        if (v63)
        {
          v17 = v63;
          __dst.__r_.__value_.__r.__words[0] = [v63 UTF8String];
          sub_100072D94(__p);
        }

        if (v61)
        {
          memset(v100, 0, sizeof(v100));
          v18 = v61;
          if ([v18 countByEnumeratingWithState:v100 objects:v118 count:16])
          {
            __dst.__r_.__value_.__r.__words[0] = [**(&v100[0] + 1) UTF8String];
            sub_100072D94(__p);
          }
        }

        if (v69)
        {
          memset(v99, 0, sizeof(v99));
          v19 = v69;
          if ([v19 countByEnumeratingWithState:v99 objects:v117 count:16])
          {
            __dst.__r_.__value_.__r.__words[0] = [**(&v99[0] + 1) UTF8String];
            sub_100072D94(&v104);
          }
        }

        if (v67)
        {
          v20 = v67;
          sub_100016890(v106, [v67 UTF8String]);
        }

        if (v68)
        {
          v21 = v68;
          sub_100016890(&v107[1], [v68 UTF8String]);
        }

        if (v64)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v22 = v64;
            v23 = [v22 countByEnumeratingWithState:&v95 objects:v116 count:16];
            if (v23)
            {
              v24 = 0;
              v25 = *v96;
              for (i = *v96; ; i = *v96)
              {
                if (i != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v95 + 1) + 8 * v24);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = [v22 objectForKey:v27];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v30 = [v22 objectForKey:v27];
                    v31 = v30;
                    v32 = [v30 UTF8String];
                    v33 = v27;
                    sub_10000501C(&__dst, [v27 UTF8String]);
                    v90.__r_.__value_.__r.__words[0] = &__dst;
                    v34 = sub_1000E9F90(&v109, &__dst, &unk_101802C98, &v90);
                    sub_100016890((v34 + 56), v32);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }
                  }
                }

                if (++v24 >= v23)
                {
                  v23 = [v22 countByEnumeratingWithState:&v95 objects:v116 count:16];
                  if (!v23)
                  {
                    break;
                  }

                  v24 = 0;
                }
              }
            }
          }
        }

        if (v65)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            obj = v65;
            v35 = [obj countByEnumeratingWithState:&v91 objects:v115 count:16];
            if (v35)
            {
              v36 = *v92;
              do
              {
                for (j = 0; j != v35; j = j + 1)
                {
                  if (*v92 != v36)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v38 = *(*(&v91 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v39 = [obj objectForKeyedSubscript:v38];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v40 = [v39 objectForKeyedSubscript:@"mcc"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v41 = [v39 objectForKeyedSubscript:@"mnc"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v42 = [v39 objectForKeyedSubscript:@"gid1"];
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v43 = [v39 objectForKeyedSubscript:@"gid2"];
                            objc_opt_class();
                            v44 = objc_opt_isKindOfClass();

                            if (v44)
                            {
                              memset(&v90, 0, sizeof(v90));
                              v45 = v38;
                              sub_10000501C(&v90, [v38 UTF8String]);
                              v88[0] = 0;
                              v88[1] = 0;
                              v89 = 0;
                              v46 = [v39 objectForKeyedSubscript:@"mcc"];
                              v47 = v46;
                              sub_10000501C(v88, [v46 UTF8String]);

                              v86 = 0uLL;
                              v87 = 0;
                              v48 = [v39 objectForKeyedSubscript:@"mnc"];
                              v49 = v48;
                              sub_10000501C(&v86, [v48 UTF8String]);

                              v84[0] = 0;
                              v84[1] = 0;
                              v85 = 0;
                              v50 = [v39 objectForKeyedSubscript:@"gid1"];
                              v51 = v50;
                              sub_10000501C(v84, [v50 UTF8String]);

                              v82 = 0uLL;
                              v83 = 0;
                              v52 = [v39 objectForKeyedSubscript:@"gid2"];
                              v53 = v52;
                              sub_10000501C(&v82, [v52 UTF8String]);

                              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                              {
                                sub_100005F2C(&__dst, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
                              }

                              else
                              {
                                __dst = v90;
                              }

                              v73 = 1;
                              if (SHIBYTE(v89) < 0)
                              {
                                sub_100005F2C(&v74, v88[0], v88[1]);
                              }

                              else
                              {
                                v74 = *v88;
                                v75 = v89;
                              }

                              if (SHIBYTE(v87) < 0)
                              {
                                sub_100005F2C(&v76, v86, *(&v86 + 1));
                              }

                              else
                              {
                                v76 = v86;
                                v77 = v87;
                              }

                              if (SHIBYTE(v85) < 0)
                              {
                                sub_100005F2C(&v78, v84[0], v84[1]);
                              }

                              else
                              {
                                v78 = *v84;
                                v79 = v85;
                              }

                              if (SHIBYTE(v83) < 0)
                              {
                                sub_100005F2C(&v80, v82, *(&v82 + 1));
                              }

                              else
                              {
                                v80 = v82;
                                v81 = v83;
                              }

                              v114 = &v90;
                              v54 = sub_100174060(&v111, &v90, &unk_101802C98, &v114, &v113);
                              sub_10016A270((v54 + 7), &__dst);
                              if (*(v54 + 111) < 0)
                              {
                                operator delete(v54[11]);
                              }

                              v54[13] = v75;
                              *(v54 + 11) = v74;
                              HIBYTE(v75) = 0;
                              LOBYTE(v74) = 0;
                              if (*(v54 + 135) < 0)
                              {
                                operator delete(v54[14]);
                              }

                              v54[16] = v77;
                              *(v54 + 7) = v76;
                              HIBYTE(v77) = 0;
                              LOBYTE(v76) = 0;
                              if (*(v54 + 159) < 0)
                              {
                                operator delete(v54[17]);
                              }

                              v54[19] = v79;
                              *(v54 + 17) = v78;
                              HIBYTE(v79) = 0;
                              LOBYTE(v78) = 0;
                              if (*(v54 + 183) < 0)
                              {
                                operator delete(v54[20]);
                                v55 = SHIBYTE(v79);
                                *(v54 + 10) = v80;
                                v54[22] = v81;
                                HIBYTE(v81) = 0;
                                LOBYTE(v80) = 0;
                                if (v55 < 0)
                                {
                                  operator delete(v78);
                                }
                              }

                              else
                              {
                                *(v54 + 10) = v80;
                                v54[22] = v81;
                                HIBYTE(v81) = 0;
                                LOBYTE(v80) = 0;
                              }

                              if (SHIBYTE(v77) < 0)
                              {
                                operator delete(v76);
                              }

                              if (SHIBYTE(v75) < 0)
                              {
                                operator delete(v74);
                              }

                              if (v73 == 1 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__dst.__r_.__value_.__l.__data_);
                              }

                              if (SHIBYTE(v83) < 0)
                              {
                                operator delete(v82);
                              }

                              if (SHIBYTE(v85) < 0)
                              {
                                operator delete(v84[0]);
                              }

                              if (SHIBYTE(v87) < 0)
                              {
                                operator delete(v86);
                              }

                              if (SHIBYTE(v89) < 0)
                              {
                                operator delete(v88[0]);
                              }

                              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v90.__r_.__value_.__l.__data_);
                              }
                            }
                          }

                          else
                          {
                          }
                        }

                        else
                        {
                        }
                      }

                      else
                      {
                      }
                    }
                  }
                }

                v35 = [obj countByEnumeratingWithState:&v91 objects:v115 count:16];
              }

              while (v35);
            }
          }
        }

        if (v66)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v56 = v66;
            sub_10000501C(&__dst, [v66 UTF8String]);
            if ((v112[39] & 0x80000000) != 0)
            {
              operator delete(*&v112[16]);
            }

            *&v112[16] = __dst;
          }
        }

        sub_100445C60(a2, __p);
      }

      else
      {
        [v6 finishDecoding];
        v65 = 0;
        v66 = 0;
        v61 = 0;
        v68 = 0;
        v69 = 0;
        v64 = 0;
        v67 = 0;
        sub_100445C60(a2, __p);
      }

      v6 = v60;
    }

    if ((v112[39] & 0x80000000) != 0)
    {
      operator delete(*&v112[16]);
    }

    sub_10016A798(&v111, *v112);
    sub_1000DD0AC(&v109, v110[0]);
    if (SHIBYTE(v108) < 0)
    {
      operator delete(v107[1]);
    }

    if (SHIBYTE(v107[0]) < 0)
    {
      operator delete(v106[0]);
    }

    sub_100009970(&v104, v105[0]);
    sub_100009970(__p, __p[1]);
  }

  else
  {
    *a2 = 0;
    a2[168] = 0;
  }
}

void sub_10044595C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27)
{
  sub_1001589C8(&STACK[0x2B0]);

  _Unwind_Resume(a1);
}

__n128 sub_100445C60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = (a2 + 8);
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = a1 + 8;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = v4;
  }

  *(a1 + 24) = *(a2 + 24);
  v6 = (a2 + 32);
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;
  v8 = a1 + 32;
  v9 = *(a2 + 40);
  *(a1 + 40) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 24) = v6;
    *v6 = 0;
    *(a2 + 40) = 0;
  }

  else
  {
    *(a1 + 24) = v8;
  }

  v10 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v11 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v11;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  v12 = (a2 + 104);
  v13 = *(a2 + 104);
  *(a1 + 104) = v13;
  v14 = a1 + 104;
  v15 = *(a2 + 112);
  *(a1 + 112) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a2 + 96) = v12;
    *v12 = 0;
    *(a2 + 112) = 0;
  }

  else
  {
    *(a1 + 96) = v14;
  }

  *(a1 + 120) = *(a2 + 120);
  v16 = (a2 + 128);
  v17 = *(a2 + 128);
  *(a1 + 128) = v17;
  v18 = a1 + 128;
  v19 = *(a2 + 136);
  *(a1 + 136) = v19;
  if (v19)
  {
    *(v17 + 16) = v18;
    *(a2 + 120) = v16;
    *v16 = 0;
    *(a2 + 136) = 0;
  }

  else
  {
    *(a1 + 120) = v18;
  }

  result = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = result;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = 0;
  *(a1 + 168) = 1;
  return result;
}

void sub_100445D94(uint64_t a1, void *a2)
{
  memset(v3, 0, sizeof(v3));
  sub_10044EDCC(v3, *a2, a2[1], 0x34F72C234F72C235 * ((a2[1] - *a2) >> 3));
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100445EE0(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1004519AC(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044600C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100446024(uint64_t a1, __int128 **a2)
{
  memset(v3, 0, sizeof(v3));
  sub_1002831D0(v3, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100446170(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045318C(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044629C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1004462B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004AA0(&v11, (a1 + 8));
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  sub_100034C50(v7, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (a1 + 8));
  operator new();
}

void sub_100446454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10044648C(uint64_t a1, uint64_t a2)
{
  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  v7[0] = v5;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  sub_1004541AC(&v8, a2);
  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1004465F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10044662C(void *a1, uint64_t *a2)
{
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v5 = [NSNumber numberWithInt:4];
  [v4 encodeObject:v5 forKey:@"version"];

  if (a2[1] == *a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_10044683C(a2);
  }

  [v4 encodeObject:v6 forKey:@"pendingTransferInfo"];
  v7 = [v4 encodedData];
  v8 = v7;
  v13 = v7;
  if (v7)
  {
    CFRetain(v7);
    v10 = v8;
    CFRetain(v8);
  }

  else
  {
    v10 = 0;
  }

  v9 = a1[7];
  v11 = a1[6];
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v14[0] = 0;
  v14[1] = 0;
  sub_100004AA0(v14, a1 + 1);
  operator new();
}

id sub_10044683C(uint64_t *a1)
{
  v1 = a1[1] - *a1;
  if (v1)
  {
    v4 = [NSMutableArray arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * (v1 >> 8)];
    v5 = *a1;
    v6 = a1[1];
    while (v5 != v6)
    {
      v7 = sub_100736C50(v5, v3);
      if (v7)
      {
        [v4 addObject:v7];
      }

      v5 += 1280;
    }

    if ([v4 count])
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100446928(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1004551EC(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100446A54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100446A64(void *a1, uint64_t *a2, std::string *__str, char **a4, __int128 *a5, uint64_t a6)
{
  v21 = 0;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  std::string::operator=(v19, __str);
  if (&v19[24] != a4)
  {
    sub_1001122C4(&v19[24], *a4, a4[1], a4[1] - *a4);
  }

  v12 = a1[5];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v19;
    if (v19[23] < 0)
    {
      v13 = *v19;
    }

    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = v20 - *&v19[24];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Upload to cloud for [%s] with [%ld] bytes", buf, 0x16u);
  }

  if ((v19[23] & 0x80000000) != 0)
  {
    sub_100005F2C(v16, *v19, *&v19[8]);
  }

  else
  {
    *v16 = *v19;
    v17 = *&v19[16];
  }

  memset(__p, 0, 24);
  sub_100034C50(__p, *&v19[24], v20, v20 - *&v19[24]);
  __p[3] = v21;
  sub_100004AA0(buf, a1 + 1);
  v14 = *&buf[8];
  v22 = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  v23 = a1;
  if ((v19[23] & 0x80000000) != 0)
  {
    sub_100005F2C(&v24, *v19, *&v19[8]);
  }

  else
  {
    v24 = *v19;
    v25 = *&v19[16];
  }

  v26 = 0uLL;
  v27 = 0;
  sub_100034C50(&v26, *&v19[24], v20, v20 - *&v19[24]);
  v28 = v21;
  v15 = a2[1];
  v29 = *a2;
  v30 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = 0uLL;
  v32 = 0;
  sub_100034C50(&v31, *a4, a4[1], a4[1] - *a4);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v33, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = *&__str->__r_.__value_.__l.__data_;
    v34 = __str->__r_.__value_.__r.__words[2];
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&v35, *a5, *(a5 + 1));
  }

  else
  {
    v35 = *a5;
    v36 = *(a5 + 2);
  }

  v37 = *(a5 + 24);
  v38 = *(a5 + 40);
  sub_100456684(v39, a6);
  v39[8] = 0;
  operator new();
}

void sub_100446EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v57 + 151) < 0)
  {
    operator delete(*(v57 + 128));
  }

  v59 = *(v57 + 104);
  if (v59)
  {
    *(v57 + 112) = v59;
    operator delete(v59);
  }

  v60 = *(v57 + 96);
  if (v60)
  {
    sub_100004A34(v60);
  }

  sub_1001DE0AC(v57 + 32);
  v61 = *(v57 + 16);
  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  operator delete(v57);
  sub_100446FF0(&a28);
  sub_1001DE0AC(&a9);
  sub_1001DE0AC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100446FF0(uint64_t a1)
{
  sub_100297224(a1 + 200);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_100447084(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, std::string **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  if (*(a2 + 16))
  {
    v5 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      do
      {
        v40 = 0;
        v38 = 0u;
        memset(v39, 0, sizeof(v39));
        v36 = 0u;
        *v37 = 0u;
        v34 = 0u;
        *v35 = 0u;
        v32 = 0u;
        *v33 = 0u;
        v30 = 0u;
        *v31 = 0u;
        v28 = 0u;
        *v29 = 0u;
        *v27 = 0u;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        *__p = 0u;
        *v16 = 0u;
        *v17 = 0u;
        *v14 = 0u;
        v15 = 0u;
        *v13 = 0u;
        if (sub_100833B90(a1 + 40, v5 + 24, v27, v13))
        {
          v9 = *(&v21 + 1);
          for (i = v21; i != v9; i += 80)
          {
            if (sub_10016FA58(a2, (i + 8)))
            {
              v11 = *(a1 + 40);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = v5;
                if (*(v5 + 23) < 0)
                {
                  v12 = *v5;
                }

                *buf = 136315138;
                *&buf[4] = v12;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Found matched uuid: %s", buf, 0xCu);
              }

              sub_100005BA0(&v23, v5, v5);
              break;
            }
          }
        }

        *buf = &v21;
        sub_100111D64(buf);
        if (SBYTE7(v20) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[1]);
        }

        if (SHIBYTE(v17[0]) < 0)
        {
          operator delete(v16[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[1]);
        }

        if (SHIBYTE(v14[0]) < 0)
        {
          operator delete(v13[0]);
        }

        if (v40 == 1)
        {
          v13[0] = v39 + 8;
          sub_100112048(v13);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(v37[1]);
          }

          if (SBYTE7(v36) < 0)
          {
            operator delete(v35[0]);
          }

          if (BYTE8(v32) == 1)
          {
            if (SBYTE7(v34) < 0)
            {
              operator delete(v33[0]);
            }

            BYTE8(v32) = 0;
          }

          if (BYTE8(v30) == 1)
          {
            if (SBYTE7(v32) < 0)
            {
              operator delete(v31[0]);
            }

            BYTE8(v30) = 0;
          }

          if (SBYTE7(v30) < 0)
          {
            operator delete(v29[0]);
          }

          if (LOBYTE(v27[0]) == 1 && SHIBYTE(v28) < 0)
          {
            operator delete(v27[1]);
          }
        }

        v5 += 56;
      }

      while (v5 != v6);
      if (v25)
      {
        sub_10044739C(a4, *a4, v23, &v24);
      }
    }
  }

  sub_100009970(&v23, v24);
}

void sub_10044735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35)
{
  sub_100009970(&a30, a31);
  sub_1000087B4(&a35);
  _Unwind_Resume(a1);
}

std::string *sub_10044739C(void *a1, std::string *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
    do
    {
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

      ++v4;
      v5 = v7;
    }

    while (v7 != a4);
  }

  return sub_10044F518(a1, a2, a3, a4, v4);
}

void sub_1004473F4(uint64_t a1, uint64_t *a2, std::string **a3, uint64_t a4)
{
  v6 = a3[1];
  v7 = *a3;
  v8 = v6 - *a3;
  if (v6 != *a3)
  {
    *buf = 0;
    v14 = 0;
    v15 = 0;
    if (buf == a3)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      sub_100008234(buf, v7, v6, 0xAAAAAAAAAAAAAAABLL * (v8 >> 3));
      v9 = *buf;
      v10 = v14;
    }

    memset(v12, 0, sizeof(v12));
    sub_10004EFD0(v12, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    sub_100457018(v16, a4);
    v17 = 0;
    operator new();
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I No records to delete", buf, 2u);
  }

  sub_100447630(a4, 0, 0);
}

uint64_t sub_100447630(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_10044768C(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1000224C8(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1004477B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1004477D0(uint64_t a1, char *a2, uint64_t a3)
{
  v5[4] = a1;
  sub_100074920(&v6, a2);
  sub_100457A54(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10044794C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100447984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, const std::string **a5, uint64_t a6, uint64_t a7)
{
  v18 = 0uLL;
  v17 = &v18;
  for (i = *(a4 + 24); ; i += 168)
  {
    if (i == *(a4 + 32))
    {
      goto LABEL_22;
    }

    v14 = *(i + 95);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(i + 80);
    }

    if (v14)
    {
      v15 = *(i + 119);
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(i + 104);
      }

      if (!v15)
      {
        break;
      }
    }
  }

  *__p = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *v29 = 0u;
  *v30 = 0u;
  memset(v28, 0, sizeof(v28));
  *v27 = 0u;
  sub_100444918(a1, v27);
  if (BYTE8(v36) == 1)
  {
    sub_10016A798(&v17, v18);
    v17 = *(&v33 + 1);
    v18 = v34;
    if (*(&v34 + 1))
    {
      *(v34 + 16) = &v18;
      *(&v33 + 1) = &v34;
      v34 = 0uLL;
    }

    else
    {
      v17 = &v18;
    }
  }

  if (BYTE8(v36) == 1)
  {
    if (SBYTE7(v36) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10016A798(&v33 + 8, v34);
    sub_1000DD0AC(&v32, *(&v32 + 1));
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[1]);
    }

    if (SHIBYTE(v30[0]) < 0)
    {
      operator delete(v29[0]);
    }

    sub_100009970(&v28[1], v28[2]);
    sub_100009970(v27, v27[1]);
  }

LABEL_22:
  *v29 = 0u;
  *v30 = 0u;
  memset(v28, 0, sizeof(v28));
  *v27 = 0u;
  sub_10092ABC4(v27, a3, a4, (a1 + 48), (a1 + 40), a5, a6, &v17, 0);
  memset(v16, 0, sizeof(v16));
  sub_100034C50(v16, v27[0], v27[1], v27[1] - v27[0]);
  v19 = a1;
  sub_10044FA5C(v20, a4);
  *&v20[152] = *&v28[1];
  v21 = v28[3];
  memset(&v28[1], 0, 24);
  v22 = *v29;
  v23 = *v30;
  sub_10045923C(v24, a7);
  v24[2] = *v27;
  v25 = v28[0];
  v27[1] = 0;
  v28[0] = 0;
  v26 = 0;
  v27[0] = 0;
  operator new();
}

void sub_100447D60(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  (***(a1 + 48))(&theDate);
  ServiceMap = Registry::getServiceMap(theDate);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  if (v22)
  {
    sub_100004A34(v22);
  }

  if ((v17 & 1) == 0)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    theDate = 0;
    (*(*v16 + 40))(buf, v16, @"kLastUploadTimestamp", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100432018(&theDate, buf);
    sub_10000A1EC(buf);
    if (theDate)
    {
      AbsoluteTime = CFDateGetAbsoluteTime(theDate);
    }

    else
    {
      v20 = *(a1 + 40);
      AbsoluteTime = 0.0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I cannot load device info last upload timestamp from preferences", buf, 2u);
      }
    }

    sub_1003EC530(&theDate);
    v19 = AbsoluteTime + 2592000.0;
  }

  else
  {
    v19 = 2592000.0;
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177084C();
    }
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if ((a2 & 1) != 0 || CFAbsoluteTimeGetCurrent() > v19)
  {
    v24 = a1;
    sub_10045ECD0(&v25, a4);
    *__p = *a3;
    v27 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v28 = 0;
    operator new();
  }

  sub_100449E18(a4, 0);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1004480CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_1003EC530(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100448164(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  sub_10044FE7C(a1 + 216);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  sub_10028C89C(a1 + 136, *(a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_100077CD4(a1 + 56, *(a1 + 64));
  v4 = (a1 + 32);
  sub_1000B2AF8(&v4);
  v4 = (a1 + 8);
  sub_100112048(&v4);
  return a1;
}

void sub_10044821C(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045A754(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100448348(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100448360(void *a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v8 = *(a2 + 2);
  }

  sub_10011C9B0(v5, &__dst, 1);
  sub_100457018(v6, a3);
  sub_100448478(a1, v5, v6);
  sub_1003F2928(v6);
  sub_100009970(v5, v5[1]);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst);
  }
}

void sub_100448478(void *a1, void **a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v10[0] = 0;
  sub_1000727F0(a2, __p);
  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = a2[2];
  if (v6)
  {
    v7 = *a2;
    __p[0] = a1;
    __p[1] = v7;
    v10[0] = a2[1];
    v10[1] = v6;
    *(v10[0] + 16) = v10;
    *a2 = a2 + 1;
    a2[2] = 0;
    a2[1] = 0;
    sub_100457018(&v11, a3);
    v8[0] = 0;
    v8[1] = 0;
    sub_100004AA0(v8, a1 + 1);
    operator new();
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_101770880();
  }

  sub_100447630(a3, 0, 0);
}

void sub_1004486A4(void *a1, void *a2, uint64_t a3)
{
  sub_10092F704(a2, v5);
  sub_100457018(v6, a3);
  sub_100448478(a1, v5, v6);
  sub_1003F2928(v6);
  sub_100009970(v5, v5[1]);
}

void sub_100448738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1003F2928(va);
  sub_100009970(&a9, a10);
  _Unwind_Resume(a1);
}

void sub_100448760(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v7 = *(a2 + 2);
  }

  sub_1000224C8(&v8, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10044892C(unint64_t a1, uint64_t *a2)
{
  v3[0] = a1;
  v3[1] = 0uLL;
  sub_10016B908(v3 + 1, *a2, a2[1], 0x8F5C28F5C28F5C29 * ((a2[1] - *a2) >> 3));
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100448A64(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045CA70(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100448B90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100448BA8(uint64_t a1, uint64_t *a2)
{
  memset(v3, 0, sizeof(v3));
  sub_100171D18(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6));
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100448CF4(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045D9B4(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100448E20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100448E38(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100448F68(uint64_t a1, uint64_t a2)
{
  sub_10001C168(v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044907C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1004490CC(uint64_t a1, void *a2, const char *a3, const char *a4, _BYTE *a5)
{
  if (sub_10064AAD8(a2))
  {
    v10 = 0;
    value = 0;
  }

  else
  {
    +[NSMutableDictionary dictionary];
    v26 = a4;
    v29 = v27 = a5;
    v11 = [NSMutableArray arrayWithCapacity:a2[2]];
    v28 = a2;
    v12 = *a2;
    if (*a2 != a2 + 1)
    {
      do
      {
        v13 = +[NSMutableDictionary dictionary];
        v14 = v12 + 4;
        if (*(v12 + 55) < 0)
        {
          v14 = *v14;
        }

        v15 = [NSString stringWithUTF8String:v14];
        [v13 setObject:v15 forKeyedSubscript:@"kActiveSimIdIccidKey"];
        v16 = v12 + 7;

        if (*(v12 + 79) < 0)
        {
          v16 = *v16;
        }

        v17 = [NSString stringWithUTF8String:v16];
        [v13 setObject:v17 forKeyedSubscript:@"kActiveSimIdPhNumKey"];

        [v11 addObject:v13];
        v18 = v12[1];
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
            v19 = v12[2];
            v20 = *v19 == v12;
            v12 = v19;
          }

          while (!v20);
        }

        v12 = v19;
      }

      while (v19 != a2 + 1);
    }

    v10 = v29;
    if ([v11 count])
    {
      [v29 setObject:v11 forKeyedSubscript:@"kActiveSimIdListKey"];
    }

    sub_100449C78(v29, @"kDataSimIccidKey", v28 + 3);
    sub_100449C78(v29, @"kVoiceSimIccidKey", v28 + 6);

    value = v29;
    a5 = v27;
    a4 = v26;
    if (v29)
    {
      CFRetain(v29);
    }
  }

  v31 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a3, 0x8000100u, kCFAllocatorNull);
  v21 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a4, 0x8000100u, kCFAllocatorNull);
  v30 = v21;
  CFPreferencesSetValue(v31, value, v21, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (a5[1] == 1)
  {
    v22 = &kCFBooleanTrue;
    if (!*a5)
    {
      v22 = &kCFBooleanFalse;
    }

    CFPreferencesSetValue(@"kRestoredFlagKey", *v22, v21, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v21 = v30;
  }

  v23 = CFPreferencesSynchronize(v21, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = "yes";
    if (!v23)
    {
      v25 = "no";
    }

    *buf = 138412802;
    v34 = v31;
    v35 = 2112;
    v36 = v30;
    v37 = 2080;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I written key (%@) to file (%@) successfully: %s", buf, 0x20u);
  }

  sub_100005978(&v30);
  sub_100005978(&v31);
  sub_10001021C(&value);
}

void sub_100449470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100449520@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X3>, std::string *a5@<X8>)
{
  key = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x8000100u, kCFAllocatorNull);
  v31 = 0;
  applicationID = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a3, 0x8000100u, kCFAllocatorNull);
  *buf = CFPreferencesCopyValue(key, applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100138C38(&v31, buf);
  if (v31)
  {
    v8 = v31;
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    memset(v36, 0, sizeof(v36));
    v24 = v8;
    v9 = [v8 objectForKeyedSubscript:@"kActiveSimIdListKey"];
    v22 = v9;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v22;
      }

      else
      {
        v9 = 0;
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v12)
    {
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            memset(&v26, 0, sizeof(v26));
            memset(&__p, 0, sizeof(__p));
            sub_100449D3C(v16, @"kActiveSimIdIccidKey", &v26);
            sub_100449D3C(v16, @"kActiveSimIdPhNumKey", &__p);
            sub_10045EB0C(buf, &v26, &v26, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v26.__r_.__value_.__l.__data_);
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v12);
    }

    sub_100449D3C(v24, @"kDataSimIccidKey", v36);
    sub_100449D3C(v24, @"kVoiceSimIccidKey", &v36[1]);
    if (a4)
    {
      *a4 = 0;
      v26.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__r.__words[0] = CFPreferencesCopyValue(@"kRestoredFlagKey", applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_10017A3BC(&v26, &__p.__r_.__value_.__l.__data_);
      if (v26.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__s.__data_[0] = 0;
        ctu::cf::assign(&__p, v26.__r_.__value_.__l.__data_, v17);
        *a4 = __p.__r_.__value_.__s.__data_[0];
      }

      sub_100045C8C(&v26.__r_.__value_.__l.__data_);
    }

    v18 = *&buf[8];
    a5->__r_.__value_.__r.__words[0] = *buf;
    a5->__r_.__value_.__l.__size_ = v18;
    p_size = &a5->__r_.__value_.__l.__size_;
    v20 = *&buf[16];
    a5->__r_.__value_.__r.__words[2] = *&buf[16];
    if (v20)
    {
      *(v18 + 16) = p_size;
      *buf = &buf[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
    }

    else
    {
      a5->__r_.__value_.__r.__words[0] = p_size;
    }

    a5[1] = v36[0];
    memset(v36, 0, 24);
    a5[2] = v36[1];
    memset(&v36[1], 0, sizeof(std::string));
    a5[3].__r_.__value_.__s.__data_[0] = 1;

    if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36[0].__r_.__value_.__l.__data_);
    }

    sub_1000DD0AC(buf, *&buf[8]);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = key;
      *&buf[12] = 2112;
      *&buf[14] = applicationID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I user preferences key (%@) not found in file %@", buf, 0x16u);
    }

    a5->__r_.__value_.__s.__data_[0] = 0;
    a5[3].__r_.__value_.__s.__data_[0] = 0;
  }

  sub_10001021C(&v31);
  sub_100005978(&applicationID);
  return sub_100005978(&key);
}

void sub_100449984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, const void *a37, const void *a38)
{
  sub_100045C8C(&a21);

  sub_10014C84C(v39 - 176);
  sub_10001021C(&a36);
  sub_100005978(&a37);
  sub_100005978(&a38);
  _Unwind_Resume(a1);
}

void sub_100449A38(uint64_t a1, void *a2, std::string::value_type a3)
{
  sub_100444744(&v9);
  v6 = std::string::append(&v9, "com.apple.CommCenter.RestoredMultiSimPreferences.plist", 0x36uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v11 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (v11 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9.__r_.__value_.__s.__data_[0] = a3;
  v9.__r_.__value_.__s.__data_[1] = 1;
  sub_1004490CC(a1, a2, "kRestoredMultiSimPreferencesKey", v8, &v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100449AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100449B2C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100444744(__p);
  v4 = std::string::append(__p, "com.apple.CommCenter.RestoredMultiSimPreferences.plist", 0x36uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14 = v4->__r_.__value_.__r.__words[2];
  v13 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = 0;
  *v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__p = 0u;
  if (v14 >= 0)
  {
    v6 = &v13;
  }

  else
  {
    v6 = v13;
  }

  sub_100449520(a1, "kRestoredMultiSimPreferencesKey", v6, &v12, __p);
  *a2 = v12;
  sub_10045004C((a2 + 8), __p);
  if (BYTE8(v11) == 1)
  {
    if (SBYTE7(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(*(&v8 + 1));
    }

    sub_1000DD0AC(__p, __p[1]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_100449C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1001510E4(&__p);
  if (*(v14 - 25) < 0)
  {
    operator delete(*(v14 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_100449C78(void *a1, void *a2, uint64_t *a3)
{
  v8 = a1;
  v5 = a2;
  if (v8 && v5)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    v7 = [NSString stringWithUTF8String:v6];
    [v8 setObject:v7 forKeyedSubscript:v5];
  }
}

void sub_100449D3C(void *a1, void *a2, std::string *a3)
{
  v7 = a1;
  v5 = a2;
  if (v7 && v5)
  {
    v6 = [v7 objectForKeyedSubscript:v5];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_100016890(a3, [v6 UTF8String]);
      }
    }
  }
}

uint64_t sub_100449E18(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100449E6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  sub_10045A6D4(a1 + 8);
  return a1;
}

void sub_100449EA8(uint64_t a1, int a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_100449F88(uint64_t a1, uint64_t a2)
{
  sub_10045ECD0(v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044A09C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044A0B4(uint64_t a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_10044A194(uint64_t a1, uint64_t a2)
{
  sub_10045F64C(v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044A2A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044A2C0(uint64_t a1, uint64_t a2)
{
  sub_10045ECD0(v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044A3D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044A3EC(uint64_t a1, const void **a2)
{
  sub_10006F22C(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10044A4F0(uint64_t a1@<X0>, CFArrayRef *a2@<X8>)
{
  *a2 = 0;
  (***(a1 + 48))(&buf);
  ServiceMap = Registry::getServiceMap(buf);
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v22 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v22);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v12)
  {
    v22 = 0;
    (*(*v12 + 40))(&buf, v12, @"AddOnRemotePlanList", @"no_backup/com.apple.CommCenter.AddOnRemotePlanList.plist", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1001B1A54(&v22, &buf);
    sub_10000A1EC(&buf);
    if (v22)
    {
      v14 = objc_opt_class();
      v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
      v21 = 0;
      v16 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v15 fromData:v22 error:&v21];
      v17 = v21;

      if (v17)
      {
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1017708B4(v17, v18);
        }
      }

      else if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *&buf = v16;
          sub_10044A870(a2, &buf);
          v19 = *(a1 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            Count = CFArrayGetCount(*a2);
            LODWORD(buf) = 134217984;
            *(&buf + 4) = Count;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Loaded (%lu) add on remote devices", &buf, 0xCu);
          }
        }
      }
    }

    sub_10002D760(&v22);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10044A7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_10002D760(va);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  sub_100010250(v7);
  _Unwind_Resume(a1);
}

const void **sub_10044A870(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100010250(&v6);
  return a1;
}

const void **sub_10044A8C4(double a1)
{
  v5 = 0;
  valuePtr = *&a1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v1)
  {
    v5 = v1;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = 0;
  sub_100029A48(&v5);
  CFPreferencesSetValue(@"AddOnRemotePlanListExpiryTime", v2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  return sub_100029A48(&v4);
}

void sub_10044A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

double sub_10044A990()
{
  sub_1000929F0();
  v3 = 0;
  v4 = CFPreferencesCopyValue(@"AddOnRemotePlanListExpiryTime", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v3, &v4);
  if (v3)
  {
    v4 = 0;
    ctu::cf::assign(&v4, v3, v0);
    v1 = *&v4;
  }

  else
  {
    v1 = 0.0;
  }

  sub_100029A48(&v3);
  return v1;
}

const void **sub_10044AA44(double a1)
{
  v5 = 0;
  valuePtr = *&a1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v1)
  {
    v5 = v1;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = 0;
  sub_100029A48(&v5);
  CFPreferencesSetValue(@"AccountCreationTimestamp", v2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  return sub_100029A48(&v4);
}

void sub_10044AAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

double sub_10044AB10()
{
  sub_1000929F0();
  v3 = 0;
  v4 = CFPreferencesCopyValue(@"AccountCreationTimestamp", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v3, &v4);
  if (v3)
  {
    v4 = 0;
    ctu::cf::assign(&v4, v3, v0);
    v1 = *&v4;
  }

  else
  {
    v1 = 0.0;
  }

  sub_100029A48(&v3);
  return v1;
}

const void **sub_10044ABC4(double a1)
{
  v5 = 0;
  valuePtr = *&a1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v1)
  {
    v5 = v1;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = 0;
  sub_100029A48(&v5);
  CFPreferencesSetValue(@"PrivateNetworkAllowDynamicDataSwitchWaitTimestamp", v2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  return sub_100029A48(&v4);
}

void sub_10044AC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

double sub_10044AC90()
{
  sub_1000929F0();
  v3 = 0;
  v4 = CFPreferencesCopyValue(@"PrivateNetworkAllowDynamicDataSwitchWaitTimestamp", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v3, &v4);
  if (v3)
  {
    v4 = 0;
    ctu::cf::assign(&v4, v3, v0);
    v1 = *&v4;
  }

  else
  {
    v1 = 0.0;
  }

  sub_100029A48(&v3);
  return v1;
}

void sub_10044AD44(uint64_t a1, uint64_t a2)
{
  sub_1004501B4(&v4 + 1, a2);
  sub_10045051C(&v5, a2 + 24);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_10044AFAC(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10045FE64(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044B0D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044B0F0(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = a2[1];
  v4 = a2[2];
  v5[0] = v3;
  v5[1] = v4;
  if (v4)
  {
    *(v3 + 16) = v5;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_10044B244(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100460164(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_10044B370(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10044B388(uint64_t a1, void *a2)
{
  v3 = objc_opt_new();
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = objc_opt_new();
      v8 = [NSNumber numberWithBool:*(v5 + 256)];
      [v7 setValue:v8 forKey:@"supportPrivateNetworkKey"];

      v9 = v5 + 12;
      if (*(v5 + 119) < 0)
      {
        v9 = *v9;
      }

      v10 = [NSString stringWithUTF8String:v9];
      [v7 setValue:v10 forKey:@"mccKey"];

      v11 = v5 + 15;
      if (*(v5 + 143) < 0)
      {
        v11 = *v11;
      }

      v12 = [NSString stringWithUTF8String:v11];
      [v7 setValue:v12 forKey:@"mncKey"];

      v13 = v5 + 18;
      if (*(v5 + 167) < 0)
      {
        v13 = *v13;
      }

      v14 = [NSString stringWithUTF8String:v13];
      [v7 setValue:v14 forKey:@"gid1Key"];

      v15 = v5 + 21;
      if (*(v5 + 191) < 0)
      {
        v15 = *v15;
      }

      v16 = [NSString stringWithUTF8String:v15];
      [v7 setValue:v16 forKey:@"gid2Key"];

      v17 = [NSNumber numberWithBool:*(v5 + 257)];
      [v7 setValue:v17 forKey:@"allowsAutomaticToggling"];

      if (*(v5 + 216) == 1)
      {
        v18 = v5 + 24;
        if (*(v5 + 215) < 0)
        {
          v18 = *v18;
        }

        v19 = [NSString stringWithUTF8String:v18];
        [v7 setValue:v19 forKey:@"simCsgIdentifierKey"];
      }

      if (*(v5 + 248) == 1)
      {
        v20 = v5 + 28;
        if (*(v5 + 247) < 0)
        {
          v20 = *v20;
        }

        v21 = [NSString stringWithUTF8String:v20];
        [v7 setValue:v21 forKey:@"simNidIdentifierKey"];
      }

      v22 = v5 + 4;
      if (*(v5 + 55) < 0)
      {
        v22 = *v22;
      }

      v23 = [NSString stringWithUTF8String:v22];
      [v3 setValue:v7 forKey:v23];

      v24 = v5[1];
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
          v25 = v5[2];
          v26 = *v25 == v5;
          v5 = v25;
        }

        while (!v26);
      }

      v5 = v25;
    }

    while (v25 != v4);
  }

  v40 = 0;
  v27 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v40];
  v28 = v40;
  if (v28)
  {
    v29 = *(a1 + 40);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [v28 description];
      v31 = v30;
      v32 = [v30 UTF8String];
      *buf = 136315138;
      *&buf[4] = v32;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Encode Error: %s", buf, 0xCu);
    }
  }

  else
  {
    cf = v27;
    if (v27)
    {
      CFRetain(v27);
    }

    v33 = *(a1 + 48);
    sub_100444744(&v38);
    v34 = std::string::append(&v38, "com.apple.CommCenter.PrivateNetworkData.plist", 0x2DuLL);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v42 = v34->__r_.__value_.__r.__words[2];
    *buf = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v37 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v33 + 896))(v33, buf, &v37);
    sub_10002D760(&v37);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);
  }
}

void sub_10044B7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10044B8A8(uint64_t a1, uint64_t a2)
{
  memset(v243, 0, 32);
  v242 = 0u;
  v2 = *(a1 + 40);
  v3 = os_signpost_id_generate(v2);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *(a1 + 40);
    if (os_signpost_enabled(v4))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "LoadPrivateNetworkSettings", "", &buf, 2u);
    }
  }

  *&buf = off_101E4DF20;
  *(&v225 + 1) = &buf;
  *&v242 = v3;
  *(&v242 + 1) = os_retain(v2);
  sub_1000148FC(v243, &buf);
  sub_10001499C(&buf);
  v215 = 0;
  v214 = 0;
  (***(a1 + 48))(&buf);
  sub_10000501C(&__p, "loadPrivateNetworkSettings_sync");
  v240 = v242;
  sub_1000148FC(&v241, v243);
  v242 = 0uLL;
  sub_100014A28(v243);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(&v240);
  if (v213 < 0)
  {
    operator delete(__p);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  v211 = 0;
  v5 = *(a1 + 48);
  sub_100444744(&v132);
  v6 = std::string::append(&v132, "com.apple.CommCenter.PrivateNetworkData.plist", 0x2DuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v225 = *(&v6->__r_.__value_.__l + 2);
  buf = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*v5 + 904))(&v211, v5, &buf);
  if (SBYTE7(v225) < 0)
  {
    operator delete(buf);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  v8 = v211;
  v85 = v8;
  if (v8)
  {
    v197 = 0;
    obj = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v197];
    v9 = v197;
    if (!v9)
    {
      if (obj)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_16;
        }
      }
    }

    v50 = *(a1 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Migration from NSKeyedUnarchiver to NSJSONSerialization decoding", &buf, 2u);
    }

    v51 = [NSKeyedUnarchiver alloc];
    v196 = 0;
    v52 = [v51 initForReadingFromData:v85 error:&v196];
    v53 = v196;
    v54 = v53;
    if (!v52 || v53)
    {
      v68 = *(a1 + 40);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v54;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I No unarchiver or error: %@", &buf, 0xCu);
      }

      v184[1] = 0;
      v184[0] = 0;
      v183 = v184;
      v185 = 0;
      v195 = 0;
      v69 = *(a2 + 24);
      if (!v69)
      {
        sub_100022DB4();
      }

      (*(*v69 + 48))(v69, &v183);
      if (v195 == 1)
      {
        sub_1001349A0(v194, v194[1]);
        if (v193 < 0)
        {
          operator delete(v192);
        }

        if (v191 < 0)
        {
          operator delete(v190);
        }

        if (v189 < 0)
        {
          operator delete(v188);
        }

        if (v187 < 0)
        {
          operator delete(v186);
        }
      }

      sub_1004504C0(&v183, v184[0]);
    }

    else
    {
      v55 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
      if (v55 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v55 intValue] == 4)
        {
          v56 = objc_opt_class();
          v57 = objc_opt_class();
          v58 = objc_opt_class();
          v59 = [NSSet setWithObjects:v56, v57, v58, objc_opt_class(), 0];
          v60 = [v52 decodeObjectOfClasses:v59 forKey:@"iccidProfileDictKey"];

          obj = v60;
          if (!v60 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10177092C();
            }

            [v52 finishDecoding];
            v145[1] = 0;
            v145[0] = 0;
            v144 = v145;
            v146 = 0;
            v156 = 0;
            v77 = *(a2 + 24);
            if (!v77)
            {
              sub_100022DB4();
            }

            (*(*v77 + 48))(v77, &v144);
            if (v156 == 1)
            {
              sub_1001349A0(v155, v155[1]);
              if (v154 < 0)
              {
                operator delete(v153);
              }

              if (v152 < 0)
              {
                operator delete(v151);
              }

              if (v150 < 0)
              {
                operator delete(v149);
              }

              if (v148 < 0)
              {
                operator delete(v147);
              }
            }

            sub_1004504C0(&v144, v145[0]);

LABEL_173:
            v54 = 0;
            goto LABEL_174;
          }

          [v52 finishDecoding];
          v143 = 0;
          v61 = [NSJSONSerialization dataWithJSONObject:v60 options:0 error:&v143];
          v54 = v143;
          v62 = *(a1 + 40);
          if (v54)
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              v63 = [v54 description];
              v64 = v63;
              v65 = [v63 UTF8String];
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v65;
              _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "NSJSONSerialization Encode Error: %s", &buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
            {
              v78 = [obj count];
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v78;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I Saving private network settings for iccids count: %lu", &buf, 0xCu);
            }

            *&v119 = 0;
            sub_1003F50D4(&v119, v61);
            v79 = *(a1 + 48);
            sub_100444744(&v132);
            v80 = std::string::append(&v132, "com.apple.CommCenter.PrivateNetworkData.plist", 0x2DuLL);
            v81 = *&v80->__r_.__value_.__l.__data_;
            *&v225 = *(&v80->__r_.__value_.__l + 2);
            buf = v81;
            v80->__r_.__value_.__l.__size_ = 0;
            v80->__r_.__value_.__r.__words[2] = 0;
            v80->__r_.__value_.__r.__words[0] = 0;
            sub_10002D728(&v142, &v119);
            (*(*v79 + 896))(v79, &buf, &v142);
            sub_10002D760(&v142);
            if (SBYTE7(v225) < 0)
            {
              operator delete(buf);
            }

            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

            sub_10002D760(&v119);
          }

          if (v54)
          {
            goto LABEL_174;
          }

LABEL_16:
          v10 = *(a1 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [obj count];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Loading private network settings for iccids count: %lu", &buf, 0xCu);
          }

          v141 = 0u;
          v140 = 0u;
          v139 = 0u;
          v138 = 0u;
          v137 = 0u;
          v136 = 0u;
          v135 = 0u;
          v134 = 0u;
          v133 = 0u;
          *&v132.__r_.__value_.__r.__words[1] = 0u;
          v132.__r_.__value_.__r.__words[0] = &v132.__r_.__value_.__l.__size_;
          BYTE8(v141) = 0;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          obj = obj;
          v93 = [obj countByEnumeratingWithState:&v128 objects:v239 count:16];
          if (v93)
          {
            v102 = 0;
            v92 = *v129;
            for (i = *v129; ; i = *v129)
            {
              if (i != v92)
              {
                objc_enumerationMutation(obj);
              }

              v96 = *(*(&v128 + 1) + 8 * v102);
              v13 = [obj objectForKey:?];
              v237 = 0u;
              v238 = 0u;
              v235 = 0u;
              v236 = 0u;
              v233 = 0u;
              v234 = 0u;
              v231 = 0u;
              v232 = 0u;
              v229 = 0u;
              v230 = 0u;
              memset(v228, 0, sizeof(v228));
              memset(v227, 0, sizeof(v227));
              memset(v226, 0, sizeof(v226));
              buf = 0u;
              v225 = 0u;
              sub_100450684(&buf);
              v14 = [v13 objectForKey:@"supportPrivateNetworkKey"];
              v15 = [v14 BOOLValue];

              BYTE8(v229) = v15;
              v101 = [v13 objectForKey:@"mccKey"];
              if (v101)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = v101;
                  sub_100016890(&v226[1], [v101 UTF8String]);
                }
              }

              v100 = [v13 objectForKey:@"mncKey"];
              if (v100)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = v100;
                  sub_100016890(v227, [v100 UTF8String]);
                }
              }

              v99 = [v13 objectForKey:@"gid1Key"];
              if (v99)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = v99;
                  sub_100016890(&v227[1], [v99 UTF8String]);
                }
              }

              v98 = [v13 objectForKey:@"gid2Key"];
              if (v98)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = v98;
                  sub_100016890(v228, [v98 UTF8String]);
                }
              }

              v95 = [v13 objectForKey:@"allowsAutomaticToggling"];
              if (v95)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  BYTE9(v229) = [v95 BOOLValue];
                }
              }

              v97 = [v13 objectForKey:@"simCsgIdentifierKey"];
              if (v97)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = v97;
                  *&v119 = [v97 UTF8String];
                  sub_100184AD0(&v228[24], &v119);
                }
              }

              v21 = [v13 objectForKey:@"simNidIdentifierKey"];
              if (v21)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = v21;
                  *&v119 = [v21 UTF8String];
                  sub_100184AD0(&v228[56], &v119);
                }
              }

              v23 = [v13 objectForKey:@"pnwProfileNameKey"];
              if (v23)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && (BYTE8(v141) & 1) == 0)
                {
                  v127 = 0;
                  v125 = 0u;
                  v126 = 0u;
                  v123 = 0u;
                  v124 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v119 = 0u;
                  v120 = 0u;
                  sub_10000501C(&v122 + 1, "");
                  sub_10000501C(&v124, "");
                  WORD4(v125) = 0;
                  HIDWORD(v125) = 0;
                  *(&v126 + 1) = 0;
                  v127 = 0;
                  *&v126 = &v126 + 8;
                  v24 = v23;
                  sub_100016890((&v119 + 8), [v23 UTF8String]);
                  v90 = [v13 objectForKey:@"pnwProfileVersionKey"];
                  if (v90)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v25 = v90;
                      sub_100016890(&v121, [v90 UTF8String]);
                    }
                  }

                  v86 = [v13 objectForKey:@"supportsCellOverWifiKey"];
                  if (v86)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      BYTE9(v125) = [v86 BOOLValue];
                    }
                  }

                  v87 = [v13 objectForKey:@"5GStandaloneEnabled"];
                  if (v87)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      HIDWORD(v125) = [v87 intValue];
                    }
                  }

                  v88 = [v13 objectForKey:@"pnwProfileTypeKey"];
                  if (v88)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      LODWORD(v119) = [v88 integerValue];
                    }
                  }

                  v89 = [v13 objectForKey:@"geofenceListKey"];
                  if (v89)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v218 = 0;
                      memset(v217, 0, sizeof(v217));
                      v115 = 0u;
                      v116 = 0u;
                      v117 = 0u;
                      v118 = 0u;
                      v26 = v89;
                      v27 = [v26 countByEnumeratingWithState:&v115 objects:v223 count:16];
                      if (v27)
                      {
                        v28 = 0;
                        v29 = *v116;
                        for (j = *v116; ; j = *v116)
                        {
                          if (j != v29)
                          {
                            objc_enumerationMutation(v26);
                          }

                          v31 = [v26 objectForKeyedSubscript:*(*(&v115 + 1) + 8 * v28)];
                          v32 = [v31 objectForKeyedSubscript:@"radiusKey"];
                          [v32 doubleValue];
                          *v217 = v33;

                          v34 = [v31 objectForKeyedSubscript:@"longitudeKey"];
                          [v34 doubleValue];
                          *&v217[8] = v35;

                          v36 = [v31 objectForKeyedSubscript:@"latitudeKey"];
                          [v36 doubleValue];
                          *&v217[16] = v37;

                          v38 = [v31 objectForKeyedSubscript:@"geofenceIdKey"];
                          v39 = v38;
                          sub_100016890(&v217[24], [v38 UTF8String]);

                          sub_1004604CC(&v126, &v217[24], &v217[24], v217);
                          if (++v28 >= v27)
                          {
                            v27 = [v26 countByEnumeratingWithState:&v115 objects:v223 count:16];
                            if (!v27)
                            {
                              break;
                            }

                            v28 = 0;
                          }
                        }
                      }

                      if (SHIBYTE(v218) < 0)
                      {
                        operator delete(*&v217[48]);
                      }

                      if ((v217[47] & 0x80000000) != 0)
                      {
                        operator delete(*&v217[24]);
                      }
                    }
                  }

                  sub_10044D4B4(&v133, &v119);
                  v40 = *(a1 + 40);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    log = v40;
                    v82 = sub_10071FFA8(v119);
                    if (v120 >= 0)
                    {
                      v41 = &v119 + 8;
                    }

                    else
                    {
                      v41 = *(&v119 + 1);
                    }

                    if ((SBYTE7(v122) & 0x80u) == 0)
                    {
                      v42 = &v121;
                    }

                    else
                    {
                      v42 = v121;
                    }

                    if (v123 >= 0)
                    {
                      v43 = &v122 + 8;
                    }

                    else
                    {
                      v43 = *(&v122 + 1);
                    }

                    if ((SBYTE7(v125) & 0x80u) == 0)
                    {
                      v44 = &v124;
                    }

                    else
                    {
                      v44 = v124;
                    }

                    v45 = asString(BYTE8(v125));
                    v46 = asString(BYTE9(v125));
                    v47 = asString();
                    *v217 = 136317186;
                    *&v217[4] = v82;
                    *&v217[12] = 2080;
                    *&v217[14] = v41;
                    *&v217[22] = 2080;
                    *&v217[24] = v42;
                    *&v217[32] = 2080;
                    *&v217[34] = v43;
                    *&v217[42] = 2080;
                    *&v217[44] = v44;
                    *&v217[52] = 2080;
                    *&v217[54] = v45;
                    *&v217[62] = 2080;
                    v218 = v46;
                    v219 = 2080;
                    v220 = v47;
                    v221 = 2048;
                    v222 = v127;
                    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I profile migration case: profileType=%s, profileName=%s, profileVersion=%s, CsgIdentifier=%s, NidIdentifier=%s, isSetAside=%s, supportsCellularOverWifi=%s, 5GStandaloneEnabled=%s, geofenceSize=#%lu", v217, 0x5Cu);
                  }

                  sub_1001349A0(&v126, *(&v126 + 1));
                  if (SBYTE7(v125) < 0)
                  {
                    operator delete(v124);
                  }

                  if (SHIBYTE(v123) < 0)
                  {
                    operator delete(*(&v122 + 1));
                  }

                  if (SBYTE7(v122) < 0)
                  {
                    operator delete(v121);
                  }

                  if (SHIBYTE(v120) < 0)
                  {
                    operator delete(*(&v119 + 1));
                  }
                }
              }

              v48 = v96;
              sub_10000501C(&v119, [v96 UTF8String]);
              *v217 = &v119;
              v49 = sub_1004606E4(&v132, &v119, &unk_101802C98, v217, &v216);
              sub_10044D558((v49 + 56), &buf);
              if (SBYTE7(v120) < 0)
              {
                operator delete(v119);
              }

              sub_100135324(&buf);
              if (++v102 >= v93)
              {
                v93 = [obj countByEnumeratingWithState:&v128 objects:v239 count:16];
                if (!v93)
                {
                  break;
                }

                v102 = 0;
              }
            }
          }

          sub_1004501B4(v103, &v132);
          sub_10045051C(v104, &v133);
          v72 = *(a2 + 24);
          if (!v72)
          {
            sub_100022DB4();
          }

          (*(*v72 + 48))(v72, v103);
          if (v114 == 1)
          {
            sub_1001349A0(v113, v113[1]);
            if (v112 < 0)
            {
              operator delete(v111);
            }

            if (v110 < 0)
            {
              operator delete(v109);
            }

            if (v108 < 0)
            {
              operator delete(v107);
            }

            if (v106 < 0)
            {
              operator delete(v105);
            }
          }

          sub_1004504C0(v103, v103[1]);
          if (BYTE8(v141) == 1)
          {
            sub_1001349A0(&v140, *(&v140 + 1));
            if (SBYTE7(v139) < 0)
            {
              operator delete(v138);
            }

            if (SHIBYTE(v137) < 0)
            {
              operator delete(*(&v136 + 1));
            }

            if (SBYTE7(v136) < 0)
            {
              operator delete(v135);
            }

            if (SHIBYTE(v134) < 0)
            {
              operator delete(*(&v133 + 1));
            }
          }

          sub_1004504C0(&v132, v132.__r_.__value_.__l.__size_);
          goto LABEL_173;
        }

        v74 = *(a1 + 40);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = [v55 intValue];
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v75;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I Version mismatch [%d]", &buf, 8u);
        }

        [v52 finishDecoding];
        v158[1] = 0;
        v158[0] = 0;
        v157 = v158;
        v159 = 0;
        v169 = 0;
        v76 = *(a2 + 24);
        if (!v76)
        {
          sub_100022DB4();
        }

        (*(*v76 + 48))(v76, &v157);
        if (v169 == 1)
        {
          sub_1001349A0(v168, v168[1]);
          if (v167 < 0)
          {
            operator delete(v166);
          }

          if (v165 < 0)
          {
            operator delete(v164);
          }

          if (v163 < 0)
          {
            operator delete(v162);
          }

          if (v161 < 0)
          {
            operator delete(v160);
          }
        }

        sub_1004504C0(&v157, v158[0]);
      }

      else
      {
        v70 = *(a1 + 40);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I Version decoding failure", &buf, 2u);
        }

        [v52 finishDecoding];
        v171[1] = 0;
        v171[0] = 0;
        v170 = v171;
        v172 = 0;
        v182 = 0;
        v71 = *(a2 + 24);
        if (!v71)
        {
          sub_100022DB4();
        }

        (*(*v71 + 48))(v71, &v170);
        if (v182 == 1)
        {
          sub_1001349A0(v181, v181[1]);
          if (v180 < 0)
          {
            operator delete(v179);
          }

          if (v178 < 0)
          {
            operator delete(v177);
          }

          if (v176 < 0)
          {
            operator delete(v175);
          }

          if (v174 < 0)
          {
            operator delete(v173);
          }
        }

        sub_1004504C0(&v170, v171[0]);
      }

      v54 = 0;
    }

LABEL_174:
    goto LABEL_175;
  }

  v66 = *(a1 + 40);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I loadPrivateNetworkSettings: No data", &buf, 2u);
  }

  v199[1] = 0;
  v199[0] = 0;
  v198 = v199;
  v200 = 0;
  v210 = 0;
  v67 = *(a2 + 24);
  if (!v67)
  {
    sub_100022DB4();
  }

  (*(*v67 + 48))(v67, &v198);
  if (v210 == 1)
  {
    sub_1001349A0(v209, v209[1]);
    if (v208 < 0)
    {
      operator delete(v207);
    }

    if (v206 < 0)
    {
      operator delete(v205);
    }

    if (v204 < 0)
    {
      operator delete(v203);
    }

    if (v202 < 0)
    {
      operator delete(v201);
    }
  }

  sub_1004504C0(&v198, v199[0]);
LABEL_175:

  sub_10002D760(&v211);
  if (v215)
  {
    sub_100004A34(v215);
  }

  return sub_100014DA8(&v242);
}

void sub_10044CFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  sub_10002D760(&STACK[0x6D8]);
  if (STACK[0x700])
  {
    sub_100004A34(STACK[0x700]);
  }

  sub_100014DA8((v38 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_10044D3E8(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    sub_1001349A0(a1 + 136, *(a1 + 144));
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
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
      operator delete(*(a1 + 32));
    }
  }

  sub_1004504C0(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_10044D470(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_10044D4B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    std::string::operator=((a1 + 32), (a2 + 32));
    std::string::operator=((a1 + 56), (a2 + 56));
    std::string::operator=((a1 + 80), (a2 + 80));
    *(a1 + 104) = *(a2 + 104);
    if (a1 != a2)
    {
      sub_100135418((a1 + 112), *(a2 + 112), (a2 + 120));
    }
  }

  else
  {
    sub_100134E64(a1, a2);
    *(a1 + 136) = 1;
  }

  return a1;
}

uint64_t sub_10044D558(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_1001741DC((a1 + 8), *(a2 + 8), (a2 + 16));
  }

  v4 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v4;
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=((a1 + 64), (a2 + 64));
  std::string::operator=((a1 + 88), (a2 + 88));
  std::string::operator=((a1 + 112), (a2 + 112));
  sub_10012BF3C((a1 + 136), (a2 + 136));
  sub_10012BF3C((a1 + 168), (a2 + 168));
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  std::string::operator=((a1 + 216), (a2 + 216));
  std::string::operator=((a1 + 240), (a2 + 240));
  std::string::operator=((a1 + 264), (a2 + 264));
  std::string::operator=((a1 + 288), (a2 + 288));
  *(a1 + 312) = *(a2 + 312);
  if (a1 != a2)
  {
    sub_100135418((a1 + 320), *(a2 + 320), (a2 + 328));
  }

  *(a1 + 344) = *(a2 + 344);
  return a1;
}

uint64_t *sub_10044D660(uint64_t a1, void *a2)
{
  memset(v64, 0, sizeof(v64));
  v63 = 0u;
  v4 = *(a1 + 40);
  v5 = os_signpost_id_generate(v4);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = *(a1 + 40);
    if (os_signpost_enabled(v6))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SavePrivateNetworkProfiles", "", &buf, 2u);
    }
  }

  *&buf = off_101E4DFA0;
  p_buf = &buf;
  *&v63 = v5;
  *(&v63 + 1) = os_retain(v4);
  sub_1000148FC(v64, &buf);
  sub_10001499C(&buf);
  v59 = 0;
  v60 = 0;
  (***(a1 + 48))(&buf);
  sub_10000501C(&__p, "savePrivateNetworkProfiles_sync");
  v61 = v63;
  sub_1000148FC(&v62, v64);
  v63 = 0uLL;
  sub_100014A28(v64);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(&v61);
  if (v58 < 0)
  {
    operator delete(__p);
  }

  v49 = a1;
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  v51 = objc_opt_new();
  v7 = *a2;
  v50 = a2 + 1;
  if (*a2 != a2 + 1)
  {
    do
    {
      v52 = objc_opt_new();
      v8 = v7 + 8;
      if (*(v7 + 87) < 0)
      {
        v8 = *v8;
      }

      v9 = [NSString stringWithUTF8String:v8];
      [v52 setValue:v9 forKey:@"pnwProfileNameKey"];

      v10 = v7 + 11;
      if (*(v7 + 111) < 0)
      {
        v10 = *v10;
      }

      v11 = [NSString stringWithUTF8String:v10];
      [v52 setValue:v11 forKey:@"pnwProfileVersionKey"];

      v12 = v7 + 14;
      if (*(v7 + 135) < 0)
      {
        v12 = *v12;
      }

      v13 = [NSString stringWithUTF8String:v12];
      [v52 setValue:v13 forKey:@"profileCsgIdentifierKey"];

      v14 = v7 + 17;
      if (*(v7 + 159) < 0)
      {
        v14 = *v14;
      }

      v15 = [NSString stringWithUTF8String:v14];
      [v52 setValue:v15 forKey:@"profileNidIdentifierKey"];

      v16 = [NSNumber numberWithBool:*(v7 + 161)];
      [v52 setValue:v16 forKey:@"supportsCellOverWifiKey"];

      v17 = [NSNumber numberWithInt:*(v7 + 41)];
      [v52 setValue:v17 forKey:@"5GStandaloneEnabled"];

      v18 = [NSNumber numberWithInt:*(v7 + 14)];
      [v52 setValue:v18 forKey:@"pnwProfileTypeKey"];

      v19 = objc_opt_new();
      v20 = v7[21];
      if (v20 != v7 + 22)
      {
        v21 = 0;
        do
        {
          v22 = objc_opt_new();
          v23 = [NSNumber numberWithDouble:*(v20 + 9)];
          [v22 setValue:v23 forKey:@"latitudeKey"];

          v24 = [NSNumber numberWithDouble:*(v20 + 8)];
          [v22 setValue:v24 forKey:@"longitudeKey"];

          v25 = [NSNumber numberWithDouble:*(v20 + 7)];
          [v22 setValue:v25 forKey:@"radiusKey"];

          v26 = v20 + 10;
          if (*(v20 + 103) < 0)
          {
            v26 = *v26;
          }

          v27 = [NSString stringWithUTF8String:v26];
          [v22 setValue:v27 forKey:@"geofenceIdKey"];

          v28 = [NSNumber numberWithUnsignedInt:v21];
          v29 = [v28 stringValue];
          [v19 setValue:v22 forKey:v29];

          v30 = v20[1];
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = *v30;
            }

            while (v30);
          }

          else
          {
            do
            {
              v31 = v20[2];
              v32 = *v31 == v20;
              v20 = v31;
            }

            while (!v32);
          }

          v21 = (v21 + 1);
          v20 = v31;
        }

        while (v31 != v7 + 22);
      }

      [v52 setValue:v19 forKey:@"geofenceListKey"];
      v33 = v7 + 4;
      if (*(v7 + 55) < 0)
      {
        v33 = *v33;
      }

      v34 = [NSString stringWithUTF8String:v33];
      [v51 setValue:v52 forKey:v34];

      v35 = v7[1];
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
          v36 = v7[2];
          v32 = *v36 == v7;
          v7 = v36;
        }

        while (!v32);
      }

      v7 = v36;
    }

    while (v36 != v50);
  }

  v56 = 0;
  v37 = [NSJSONSerialization dataWithJSONObject:v51 options:0 error:&v56];
  v38 = v56;
  if (v38)
  {
    v39 = *(v49 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [v38 description];
      v41 = v40;
      v42 = [v40 UTF8String];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v42;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Save Private Network Profile Encode Error: %s", &buf, 0xCu);
    }
  }

  else
  {
    cf = v37;
    if (v37)
    {
      CFRetain(v37);
    }

    v43 = *(v49 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v51 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Saving private network profiles count: %lu", &buf, 0xCu);
    }

    v45 = *(v49 + 48);
    sub_100444744(&v54);
    v46 = std::string::append(&v54, "com.apple.CommCenter.PrivateNetworkProfiles.plist", 0x31uLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v66 = v46->__r_.__value_.__r.__words[2];
    buf = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v53 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v45 + 896))(v45, &buf, &v53);
    sub_10002D760(&v53);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);
  }

  if (v60)
  {
    sub_100004A34(v60);
  }

  return sub_100014DA8(&v63);
}

void sub_10044DDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_10002D760(&a21);

  if (a30)
  {
    sub_100004A34(a30);
  }

  sub_100014DA8(&a37);
  _Unwind_Resume(a1);
}

uint64_t *sub_10044DFA0(uint64_t a1, uint64_t a2)
{
  memset(v107, 0, sizeof(v107));
  v106 = 0u;
  v3 = *(a1 + 40);
  v4 = os_signpost_id_generate(v3);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = *(a1 + 40);
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "LoadPrivateNetworkProfiles", "", buf, 2u);
    }
  }

  *buf = off_101E4E020;
  *(&v95 + 1) = buf;
  *&v106 = v4;
  *(&v106 + 1) = os_retain(v3);
  sub_1000148FC(v107, buf);
  sub_10001499C(buf);
  v90 = 0;
  v89 = 0;
  (***(a1 + 48))(buf);
  sub_10000501C(&__p, "loadPrivateNetworkProfiles_sync");
  v104 = v106;
  sub_1000148FC(&v105, v107);
  v106 = 0uLL;
  sub_100014A28(v107);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(&v104);
  if (v88 < 0)
  {
    operator delete(__p);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v86 = 0;
  v6 = *(a1 + 48);
  sub_100444744(&v68);
  v7 = std::string::append(&v68, "com.apple.CommCenter.PrivateNetworkProfiles.plist", 0x31uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  *&v95 = *(&v7->__r_.__value_.__l + 2);
  *buf = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  (*(*v6 + 904))(&v86, v6, buf);
  if (SBYTE7(v95) < 0)
  {
    operator delete(*buf);
  }

  if (SBYTE7(v69) < 0)
  {
    operator delete(v68);
  }

  v9 = v86;
  v48 = v9;
  if (v9)
  {
    v82 = 0;
    v47 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v82];
    v10 = v82;
    v11 = *(a1 + 40);
    v46 = v10;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v43 = [v46 description];
        v44 = v43;
        v45 = [v43 UTF8String];
        *buf = 136315138;
        *&buf[4] = v45;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Load Private Network Profile Decode Error: %s", buf, 0xCu);
      }

      v79[0] = 0;
      v81 = 0;
      v12 = *(a2 + 24);
      if (!v12)
      {
        sub_100022DB4();
      }

      (*(*v12 + 48))(v12, v79);
      if (v81 != 1)
      {
        goto LABEL_86;
      }

      v13 = v80;
      v14 = v79;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v47 count];
        *buf = 134217984;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Loading private network profiles count: %lu", buf, 0xCu);
      }

      v78[0] = 0;
      v78[1] = 0;
      v77 = v78;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      obj = v47;
      v51 = [obj countByEnumeratingWithState:&v73 objects:v103 count:16];
      if (v51)
      {
        v60 = 0;
        v18 = *v74;
        v50 = *v74;
        while (1)
        {
          if (v18 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v73 + 1) + 8 * v60);
          v61 = [obj objectForKey:?];
          v102 = 0;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          *v99 = 0u;
          *v96 = 0u;
          *v97 = 0u;
          *buf = 0u;
          v95 = 0u;
          sub_10000501C(&v97[1], "");
          sub_10000501C(v99, "");
          WORD4(v100) = 0;
          HIDWORD(v100) = 0;
          *(&v101 + 1) = 0;
          v102 = 0;
          *&v101 = &v101 + 8;
          v59 = [v61 objectForKey:@"pnwProfileNameKey"];
          if (v59)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v59;
              sub_100016890(&buf[8], [v59 UTF8String]);
            }
          }

          v58 = [v61 objectForKey:@"pnwProfileVersionKey"];
          if (v58)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v58;
              sub_100016890(v96, [v58 UTF8String]);
            }
          }

          v57 = [v61 objectForKey:@"profileCsgIdentifierKey"];
          if (v57)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v57;
              sub_100016890(&v97[1], [v57 UTF8String]);
            }
          }

          v56 = [v61 objectForKey:@"profileNidIdentifierKey"];
          if (v56)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v56;
              sub_100016890(v99, [v56 UTF8String]);
            }
          }

          v53 = [v61 objectForKey:@"supportsCellOverWifiKey"];
          if (v53)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              BYTE9(v100) = [v53 BOOLValue];
            }
          }

          v54 = [v61 objectForKey:@"5GStandaloneEnabled"];
          if (v54)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              HIDWORD(v100) = [v54 intValue];
            }
          }

          v23 = [v61 objectForKey:@"pnwProfileTypeKey"];
          if (v23)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = [v23 integerValue];
            }
          }

          v24 = [v61 objectForKey:@"geofenceListKey"];
          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v72 = 0;
              v70 = 0u;
              *v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v25 = v24;
              v26 = [v25 countByEnumeratingWithState:&v64 objects:v93 count:16];
              if (v26)
              {
                v27 = 0;
                v28 = *v65;
                for (i = *v65; ; i = *v65)
                {
                  if (i != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = [v25 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * v27)];
                  v31 = [v30 objectForKeyedSubscript:@"radiusKey"];
                  [v31 doubleValue];
                  *&v68 = v32;

                  v33 = [v30 objectForKeyedSubscript:@"longitudeKey"];
                  [v33 doubleValue];
                  *(&v68 + 1) = v34;

                  v35 = [v30 objectForKeyedSubscript:@"latitudeKey"];
                  [v35 doubleValue];
                  *&v69 = v36;

                  v37 = [v30 objectForKeyedSubscript:@"geofenceIdKey"];
                  v38 = v37;
                  sub_100016890((&v69 + 8), [v37 UTF8String]);

                  sub_1004604CC(&v101, &v69 + 1, &v69 + 8, &v68);
                  if (++v27 >= v26)
                  {
                    v26 = [v25 countByEnumeratingWithState:&v64 objects:v93 count:16];
                    if (!v26)
                    {
                      break;
                    }

                    v27 = 0;
                  }
                }
              }

              if (SHIBYTE(v72) < 0)
              {
                operator delete(v71[0]);
              }

              if (SHIBYTE(v70) < 0)
              {
                operator delete(*(&v69 + 1));
              }
            }
          }

          v39 = v55;
          sub_10000501C(&v68, [v55 UTF8String]);
          v92 = &v68;
          v40 = sub_100460B64(&v77, &v68, &unk_101802C98, &v92, &v91);
          *(v40 + 14) = *buf;
          std::string::operator=((v40 + 8), &buf[8]);
          std::string::operator=((v40 + 11), v96);
          std::string::operator=((v40 + 14), &v97[1]);
          std::string::operator=((v40 + 17), v99);
          v40[20] = *(&v100 + 1);
          if (v40 + 7 != buf)
          {
            sub_100135418(v40 + 21, v101, &v101 + 1);
          }

          if (SBYTE7(v69) < 0)
          {
            operator delete(v68);
          }

          sub_1001349A0(&v101, *(&v101 + 1));
          if (SBYTE7(v100) < 0)
          {
            operator delete(v99[0]);
          }

          if (SHIBYTE(v98) < 0)
          {
            operator delete(v97[1]);
          }

          if (SHIBYTE(v97[0]) < 0)
          {
            operator delete(v96[0]);
          }

          if (SHIBYTE(v95) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (++v60 >= v51)
          {
            v51 = [obj countByEnumeratingWithState:&v73 objects:v103 count:16];
            if (!v51)
            {
              break;
            }

            v60 = 0;
          }

          v18 = *v74;
        }
      }

      sub_100450860(v62, &v77);
      v63 = 1;
      v41 = *(a2 + 24);
      if (!v41)
      {
        sub_100022DB4();
      }

      (*(*v41 + 48))(v41, v62);
      if (v63 == 1)
      {
        sub_100450B8C(v62, v62[1]);
      }

      v13 = v78[0];
      v14 = &v77;
    }

    sub_100450B8C(v14, v13);
LABEL_86:

    goto LABEL_87;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I loadPrivateNetworkSettings: No data", buf, 2u);
  }

  v83[0] = 0;
  v85 = 0;
  v16 = *(a2 + 24);
  if (!v16)
  {
    sub_100022DB4();
  }

  (*(*v16 + 48))(v16, v83);
  if (v85 == 1)
  {
    sub_100450B8C(v83, v84);
  }

LABEL_87:

  sub_10002D760(&v86);
  if (v90)
  {
    sub_100004A34(v90);
  }

  return sub_100014DA8(&v106);
}

void sub_10044EB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10002D760(&a65);
  if (STACK[0x208])
  {
    sub_100004A34(STACK[0x208]);
  }

  sub_100014DA8((v65 - 160));
  _Unwind_Resume(a1);
}

uint64_t *sub_10044EDCC(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10044EE54(result, a4);
  }

  return result;
}

void sub_10044EE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_10044F294(&a9);
  _Unwind_Resume(a1);
}

void sub_10044EE54(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    sub_10044EEA4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10044EEA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  sub_100013D10();
}

char *sub_10044EF00(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10044EF84(__dst, v6);
      v6 = (v6 + 232);
      __dst += 232;
      v7 -= 232;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_10044EF60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 232;
    do
    {
      v4 = sub_10044F1E0(v4) - 232;
      v2 += 232;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10044EF84(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100005F2C(__dst + 168, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(__dst + 23) = *(a2 + 23);
    *(__dst + 168) = v11;
  }

  *(__dst + 12) = a2[12];
  if (*(a2 + 231) < 0)
  {
    sub_100005F2C(__dst + 208, *(a2 + 26), *(a2 + 27));
  }

  else
  {
    v12 = a2[13];
    *(__dst + 28) = *(a2 + 28);
    *(__dst + 13) = v12;
  }

  return __dst;
}

void sub_10044F11C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10044F1E0(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10044F294(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10044F1E0(v4 - 232);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10044F318(uint64_t a1)
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

uint64_t sub_10044F398(uint64_t a1)
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

uint64_t sub_10044F418(uint64_t a1)
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

uint64_t sub_10044F498(uint64_t a1)
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

std::string *sub_10044F518(void *a1, std::string *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3);
      if (v17 >= a5)
      {
        sub_1001E2D70(a1, v5, a1[1], &v5[a5]);
        std::string::operator=(v5, (v7 + 4));
        if (v6 != 1)
        {
          v20 = v5;
          do
          {
            v21 = v7[1];
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
                v22 = v7[2];
                v23 = *v22 == v7;
                v7 = v22;
              }

              while (!v23);
            }

            std::string::operator=(++v20, (v22 + 4));
            v7 = v22;
          }

          while (v6-- > 2);
        }
      }

      else
      {
        *v33 = a3;
        sub_10044F868(v33, v17);
        v19 = *v33;
        a1[1] = sub_10044F8F4(a1, *v33, a4, a1[1]);
        if (v16 >= 1)
        {
          sub_1001E2D70(a1, v5, v10, &v5[v6]);
          sub_10016FF00(v33, v7, v19, v5);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000CE3D4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v36 = a1;
      if (v15)
      {
        sub_100005348(a1, v15);
      }

      *v33 = 0;
      v34 = 8 * (v13 >> 3);
      v35 = v34;
      sub_10044F7B8(v33, a3, a5);
      v25 = v34;
      memcpy(v35, v5, a1[1] - v5);
      v26 = *a1;
      v27 = v34;
      *&v35 = v35 + a1[1] - v5;
      a1[1] = v5;
      v28 = v5 - v26;
      v29 = (v27 - (v5 - v26));
      memcpy(v29, v26, v28);
      v30 = *a1;
      *a1 = v29;
      v31 = a1[2];
      *(a1 + 1) = v35;
      *&v35 = v30;
      *(&v35 + 1) = v31;
      *v33 = v30;
      v34 = v30;
      sub_1000054E0(v33);
      return v25;
    }
  }

  return v5;
}

void *sub_10044F7B8(void *result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    do
    {
      if (*(a2 + 55) < 0)
      {
        result = sub_100005F2C(v4, a2[4], a2[5]);
      }

      else
      {
        v7 = *(a2 + 2);
        *(v4 + 16) = a2[6];
        *v4 = v7;
      }

      v8 = a2[1];
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
          v9 = a2[2];
          v10 = *v9 == a2;
          a2 = v9;
        }

        while (!v10);
      }

      v4 += 24;
      a2 = v9;
    }

    while (v4 != v6);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

void **sub_10044F868(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void *sub_10044F8F4(uint64_t a1, void *a2, void *a3, void *__dst)
{
  v4 = __dst;
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_100005F2C(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4[2] = v6[6];
        *v4 = v7;
      }

      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v4 = v15 + 3;
      v15 += 3;
      v6 = v9;
    }

    while (v9 != a3);
  }

  LOBYTE(v13) = 1;
  sub_1000083D4(v12);
  return v4;
}

uint64_t sub_10044F9DC(uint64_t a1)
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

uint64_t sub_10044FA5C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10027E628(a1, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_1000B2128((a1 + 24), *(a2 + 24), *(a2 + 32), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  sub_100288F04((a1 + 48), a2 + 48);
  sub_10006F264((a1 + 72), (a2 + 72));
  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v4 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v4;
  }

  sub_10044FBC0((a1 + 128), a2 + 128);
  return a1;
}

void sub_10044FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 96) == 1 && *(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  sub_100077CD4(v10 + 48, *(v10 + 56));
  sub_1000B2AF8(&a10);
  a10 = v10;
  sub_100112048(&a10);
  _Unwind_Resume(a1);
}

void *sub_10044FBC0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10044FC18(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10044FC18(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10044FCA0(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

void *sub_10044FCA0(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *sub_100074A00(a1, a2, &v10, &v9, a3);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_10044FD40();
  }

  return v4;
}

uint64_t sub_10044FDB8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10028C8F8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

_BYTE *sub_10044FE04(_BYTE *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_10027EF58(__dst + 24, (a2 + 24));
  return __dst;
}

void sub_10044FE60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10044FE7C(uint64_t a1)
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

uint64_t sub_10044FEFC(uint64_t a1)
{
  sub_10028C89C(a1 + 128, *(a1 + 136));
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_100077CD4(a1 + 48, *(a1 + 56));
  v3 = (a1 + 24);
  sub_1000B2AF8(&v3);
  v3 = a1;
  sub_100112048(&v3);
  return a1;
}

uint64_t sub_10044FF88(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10044FFCC(uint64_t a1)
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

uint64_t sub_10045004C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    sub_1000E0918(a1, a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v4;
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v5 = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = v5;
    }

    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_1004500E8(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  sub_1000DD0AC(v1, *(v1 + 8));
  if (*(v1 + 72) == 1)
  {
    sub_10014C84C(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100450134(uint64_t a1)
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

void *sub_1004501B4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10045020C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10045020C(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100450294(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

void *sub_100450294(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *sub_100074A00(a1, a2, &v10, &v9, a3);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_100450334();
  }

  return v4;
}

char **sub_1004503AC(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100450470(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1004503F8(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100134A24((__dst + 3), a2 + 24);
  return __dst;
}

void sub_100450454(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100450470(uint64_t a1)
{
  sub_100135324(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1004504C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1004504C0(a1, *a2);
    sub_1004504C0(a1, a2[1]);
    sub_100450470((a2 + 4));

    operator delete(a2);
  }
}

_BYTE *sub_10045051C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[136] = 0;
  if (*(a2 + 136) == 1)
  {
    sub_100134E64(a1, a2);
    a1[136] = 1;
  }

  return a1;
}

void sub_100450564(_Unwind_Exception *exception_object)
{
  if (*(v1 + 136) == 1)
  {
    sub_100130470(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100450584(uint64_t a1)
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

uint64_t sub_100450604(uint64_t a1)
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

uint64_t sub_100450684(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  sub_10000501C((a1 + 40), "");
  sub_10000501C((a1 + 64), "");
  sub_10000501C((a1 + 88), "");
  sub_10000501C((a1 + 112), "");
  *(a1 + 216) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 256;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  sub_10000501C((a1 + 264), "");
  sub_10000501C((a1 + 288), "");
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 328) = 0;
  return a1;
}

void sub_100450778(_Unwind_Exception *a1)
{
  if (*(v2 + 287) < 0)
  {
    operator delete(v4[6]);
  }

  if (*(v2 + 263) < 0)
  {
    operator delete(*(v2 + 240));
  }

  if (*(v2 + 239) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 192) == 1 && *(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  if (*(v2 + 160) == 1 && *(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*(v2 + 112));
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_100009970(v1, *v3);
  _Unwind_Resume(a1);
}

void *sub_100450860(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004508B8(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1004508B8(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100450940(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

void *sub_100450940(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_100074A00(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1004509D0();
  }

  return result;
}

void sub_100450A48(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100450ADC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100450A64(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100134E64((__dst + 3), a2 + 24);
  return __dst;
}

void sub_100450AC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100450ADC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1001349A0(a2 + 168, *(a2 + 176));
    if (*(a2 + 159) < 0)
    {
      operator delete(*(a2 + 136));
    }

    if (*(a2 + 135) < 0)
    {
      operator delete(*(a2 + 112));
    }

    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_100450B8C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100450B8C(a1, *a2);
    sub_100450B8C(a1, *(a2 + 1));
    sub_1001349A0((a2 + 168), *(a2 + 22));
    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_100450C3C(uint64_t **a1)
{
  v1 = **a1;
  v9 = &off_101EA1020;
  sub_100444744(&__p);
  v2 = sub_1009C7B10(&v9, &__p);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v2)
  {
    goto LABEL_14;
  }

  sub_100444744(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = sub_1009C804C(&v9, p_p, 448, 1);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else if (!v5)
  {
    goto LABEL_14;
  }

  v7 = *(v1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = strerror(v6);
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E Could not create directory: %s", &__p, 0xCu);
  }

LABEL_14:
  FileSystemInterface::~FileSystemInterface(&v9);
  operator delete();
}

uint64_t *sub_100450E10(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10016A310(v6, (v1 + 1));
  sub_100443F64(v2, v6);
  if (v14 < 0)
  {
    operator delete(v13[3]);
  }

  sub_10016A798(v13, v13[1]);
  sub_1000DD0AC(v12, v12[1]);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8[3]);
  }

  sub_100009970(v8, v8[1]);
  sub_100009970(v6, v7);
  sub_100450EF8(&v5);
  return sub_1000049E0(&v4);
}

void sub_100450ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_1001589C8(va2);
  sub_100450EF8(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100450EF8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 175) < 0)
    {
      operator delete(*(v1 + 152));
    }

    sub_10016A798(v1 + 128, *(v1 + 136));
    sub_1000DD0AC(v1 + 104, *(v1 + 112));
    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
    }

    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    sub_100009970(v1 + 32, *(v1 + 40));
    sub_100009970(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t sub_100450FA0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100451038(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1004510B8(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  sub_100444918(*v1, v6);
  v2 = v1[4];
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v6);
  if (v15 == 1)
  {
    if (v14 < 0)
    {
      operator delete(v13[3]);
    }

    sub_10016A798(v13, v13[1]);
    sub_1000DD0AC(v12, v12[1]);
    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8[3]);
    }

    sub_100009970(v8, v8[1]);
    sub_100009970(v6, v7);
  }

  sub_1004511D8(&v5);
  return sub_1000049E0(&v4);
}

void sub_1004511AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1004511D8(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004511D8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100171930(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100451228(void **a1)
{
  v1 = *a1;
  v38 = a1;
  v39 = v1;
  v2 = *v1;
  if (v1[2] == v1[1])
  {
    v32 = *(v2 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "com.apple.CommCenter.TransferBlacklistInfo.plist";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Remove file: %s", buf, 0xCu);
    }

    v33 = *(v2 + 48);
    sub_100444744(&v42);
    v34 = std::string::append(&v42, "com.apple.CommCenter.TransferBlacklistInfo.plist", 0x30uLL);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v44 = v34->__r_.__value_.__r.__words[2];
    *buf = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    (*(*v33 + 912))(v33, buf);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    v4 = [NSNumber numberWithInt:4];
    [v3 encodeObject:v4 forKey:@"version"];
    v37 = v3;

    v5 = objc_opt_new();
    v7 = v1[1];
    v6 = v1[2];
    if (v7 != v6)
    {
      while (1)
      {
        v8 = objc_opt_new();
        if (*(v7 + 23) < 0)
        {
          break;
        }

        v9 = v7;
        if (*(v7 + 23))
        {
          goto LABEL_8;
        }

LABEL_9:
        v11 = v7 + 3;
        if (*(v7 + 47) < 0)
        {
          if (!v7[4])
          {
            goto LABEL_15;
          }

          v11 = *v11;
LABEL_14:
          v12 = [NSString stringWithUTF8String:v11];
          [v8 setValue:v12 forKey:@"blacklistSourceEIDKey"];

          goto LABEL_15;
        }

        if (*(v7 + 47))
        {
          goto LABEL_14;
        }

LABEL_15:
        v13 = v7 + 6;
        if (*(v7 + 71) < 0)
        {
          if (!v7[7])
          {
            goto LABEL_21;
          }

          v13 = *v13;
LABEL_20:
          v14 = [NSString stringWithUTF8String:v13];
          [v8 setValue:v14 forKey:@"blacklistSourceICCIDKey"];

          goto LABEL_21;
        }

        if (*(v7 + 71))
        {
          goto LABEL_20;
        }

LABEL_21:
        v15 = v7 + 9;
        if (*(v7 + 95) < 0)
        {
          if (!v7[10])
          {
            goto LABEL_27;
          }

          v15 = *v15;
LABEL_26:
          v16 = [NSString stringWithUTF8String:v15];
          [v8 setValue:v16 forKey:@"blacklistTargetIMEIKey"];

          goto LABEL_27;
        }

        if (*(v7 + 95))
        {
          goto LABEL_26;
        }

LABEL_27:
        v17 = v7 + 12;
        if (*(v7 + 119) < 0)
        {
          if (!v7[13])
          {
            goto LABEL_33;
          }

          v17 = *v17;
LABEL_32:
          v18 = [NSString stringWithUTF8String:v17];
          [v8 setValue:v18 forKey:@"blacklistTargetEIDKey"];

          goto LABEL_33;
        }

        if (*(v7 + 119))
        {
          goto LABEL_32;
        }

LABEL_33:
        v19 = v7 + 15;
        if (*(v7 + 143) < 0)
        {
          if (!v7[16])
          {
            goto LABEL_39;
          }

          v19 = *v19;
LABEL_38:
          v20 = [NSString stringWithUTF8String:v19];
          [v8 setValue:v20 forKey:@"blacklistTargetICCIDKey"];

          goto LABEL_39;
        }

        if (*(v7 + 143))
        {
          goto LABEL_38;
        }

LABEL_39:
        v21 = v7 + 18;
        if (*(v7 + 167) < 0)
        {
          if (!v7[19])
          {
            goto LABEL_45;
          }

          v21 = *v21;
LABEL_44:
          v22 = [NSString stringWithUTF8String:v21];
          [v8 setValue:v22 forKey:@"blacklistCarrierNameKey"];

          goto LABEL_45;
        }

        if (*(v7 + 167))
        {
          goto LABEL_44;
        }

LABEL_45:
        v23 = v7 + 21;
        if ((*(v7 + 191) & 0x80000000) == 0)
        {
          if (!*(v7 + 191))
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if (v7[22])
        {
          v23 = *v23;
LABEL_50:
          v24 = [NSString stringWithUTF8String:v23];
          [v8 setValue:v24 forKey:@"blacklistPhoneNumberKey"];
        }

LABEL_51:
        v25 = [NSNumber numberWithInt:*(v7 + 48)];
        [v8 setValue:v25 forKey:@"blacklistTriggerKey"];

        v26 = [NSNumber numberWithDouble:*(v7 + 25)];
        [v8 setValue:v26 forKey:@"blocklistCreationDateKey"];

        [v5 addObject:v8];
        v7 += 29;
        if (v7 == v6)
        {
          goto LABEL_52;
        }
      }

      if (!v7[1])
      {
        goto LABEL_9;
      }

      v9 = *v7;
LABEL_8:
      v10 = [NSString stringWithUTF8String:v9];
      [v8 setValue:v10 forKey:@"blacklistSourceIMEIKey"];

      goto LABEL_9;
    }

LABEL_52:
    [v37 encodeObject:v5 forKey:@"blacklistInfosKey"];
    v27 = [v37 encodedData];
    cf = v27;
    if (v27)
    {
      CFRetain(v27);
    }

    v28 = *(v2 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = [v5 count];
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I saveBlacklistInfos: Saved [%lu] blacklist info", buf, 0xCu);
    }

    v29 = *(v2 + 48);
    sub_100444744(&v42);
    v30 = std::string::append(&v42, "com.apple.CommCenter.TransferBlacklistInfo.plist", 0x30uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v44 = v30->__r_.__value_.__r.__words[2];
    *buf = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v40 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v29 + 888))(v29, buf, &v40);
    sub_10002D760(&v40);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);
  }

  sub_10045194C(&v39);
  return sub_1000049E0(&v38);
}

void sub_10045181C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, __int16 a17, char a18, char a19, int a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_10002D760(&a21);

  sub_10045194C(&a13);
  sub_1000049E0(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045194C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_10044F294(&v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1004519AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100451A44(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100451AC4(void **a1)
{
  v1 = *a1;
  v83 = a1;
  v84 = v1;
  v74 = v1;
  v2 = *v1;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v75 = v2;
  v3 = *(v2 + 48);
  sub_100444744(&v102);
  v4 = std::string::append(&v102, "com.apple.CommCenter.TransferBlacklistInfo.plist", 0x30uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *&v95[0] = *(&v4->__r_.__value_.__l + 2);
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 904))(&v85, v3, __p);
  v81 = v85;
  sub_10002D760(&v85);
  if (SBYTE7(v95[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (v81)
  {
    v6 = [NSKeyedUnarchiver alloc];
    v89 = 0;
    v7 = [v6 initForReadingFromData:v81 error:&v89];
    v8 = v89;
    v80 = v7;
    v73 = v8;
    if (!v7 || v8)
    {
      v56 = *(v75 + 40);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: No unarchiver or error", __p, 2u);
      }

      __p[0] = 0;
      __p[1] = 0;
      *&v95[0] = 0;
      sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * ((v91 - v90) >> 3));
      v57 = v74[4];
      if (!v57)
      {
        sub_100022DB4();
      }

      (*(*v57 + 48))(v57, __p);
      v102.__r_.__value_.__r.__words[0] = __p;
      sub_10044F294(&v102);
      v82 = 0;
    }

    else
    {
      v82 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
      if (v82 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v82 intValue] == 4)
        {
          v9 = objc_opt_class();
          v10 = objc_opt_class();
          v11 = objc_opt_class();
          v68 = [NSSet setWithObjects:v9, v10, v11, objc_opt_class(), 0];
          v69 = [v7 decodeObjectOfClasses:v68 forKey:@"blacklistInfosKey"];
          if (v69 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            obj = v69;
            v72 = [obj countByEnumeratingWithState:&v85 objects:&v102 count:16];
            if (v72)
            {
              v79 = 0;
              v12 = *v86;
              v70 = *v86;
              while (1)
              {
                if (v12 != v70)
                {
                  objc_enumerationMutation(obj);
                }

                v13 = *(*(&v85 + 1) + 8 * v79);
                v101 = 0;
                v99 = 0u;
                v100 = 0u;
                memset(v98, 0, sizeof(v98));
                memset(v97, 0, sizeof(v97));
                memset(v96, 0, sizeof(v96));
                *__p = 0u;
                memset(v95, 0, sizeof(v95));
                v78 = [v13 objectForKeyedSubscript:@"blacklistSourceIMEIKey"];
                if (v78)
                {
                  v14 = +[NSNull null];
                  v15 = v78 == v14;

                  if (!v15)
                  {
                    v16 = v78;
                    sub_100016890(__p, [v78 UTF8String]);
                  }
                }

                v77 = [v13 objectForKeyedSubscript:@"blacklistSourceEIDKey"];
                if (v77)
                {
                  v17 = +[NSNull null];
                  v18 = v77 == v17;

                  if (!v18)
                  {
                    v19 = v77;
                    sub_100016890((v95 + 8), [v77 UTF8String]);
                  }
                }

                v76 = [v13 objectForKeyedSubscript:@"blacklistSourceICCIDKey"];
                if (v76)
                {
                  v20 = +[NSNull null];
                  v21 = v76 == v20;

                  if (!v21)
                  {
                    v22 = v76;
                    sub_100016890(v96, [v76 UTF8String]);
                  }
                }

                v23 = [v13 objectForKeyedSubscript:@"blacklistTargetIMEIKey"];
                if (v23)
                {
                  v24 = +[NSNull null];
                  v25 = v23 == v24;

                  if (!v25)
                  {
                    v26 = v23;
                    sub_100016890(&v96[1], [v23 UTF8String]);
                  }
                }

                v27 = [v13 objectForKeyedSubscript:@"blacklistTargetEIDKey"];
                if (v27)
                {
                  v28 = +[NSNull null];
                  v29 = v27 == v28;

                  if (!v29)
                  {
                    v30 = v27;
                    sub_100016890(v97, [v27 UTF8String]);
                  }
                }

                v31 = [v13 objectForKeyedSubscript:@"blacklistTargetICCIDKey"];
                if (v31)
                {
                  v32 = +[NSNull null];
                  v33 = v31 == v32;

                  if (!v33)
                  {
                    v34 = v31;
                    sub_100016890(&v97[1], [v31 UTF8String]);
                  }
                }

                v35 = [v13 objectForKeyedSubscript:@"blacklistCarrierNameKey"];
                if (v35)
                {
                  v36 = +[NSNull null];
                  v37 = v35 == v36;

                  if (!v37)
                  {
                    v38 = v35;
                    sub_100016890(v98, [v35 UTF8String]);
                  }
                }

                v39 = [v13 objectForKeyedSubscript:@"blacklistPhoneNumberKey"];
                if (v39)
                {
                  v40 = +[NSNull null];
                  v41 = v39 == v40;

                  if (!v41)
                  {
                    v42 = v39;
                    sub_100016890(&v98[1], [v39 UTF8String]);
                  }
                }

                v43 = [v13 objectForKeyedSubscript:@"blacklistTriggerKey"];
                if (v43)
                {
                  v44 = +[NSNull null];
                  v45 = v44;
                  if (v43 == v44)
                  {
                  }

                  else
                  {
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if (isKindOfClass)
                    {
                      LODWORD(v99) = [v43 intValue];
                    }
                  }
                }

                v47 = [v13 objectForKeyedSubscript:@"blocklistCreationDateKey"];
                if (v47)
                {
                  v48 = +[NSNull null];
                  v49 = v48;
                  if (v47 == v48)
                  {
                  }

                  else
                  {
                    objc_opt_class();
                    v50 = objc_opt_isKindOfClass();

                    if (v50)
                    {
                      [v47 doubleValue];
                      *(&v99 + 1) = v51;
                    }
                  }
                }

                v52 = v91;
                if (v91 >= v92)
                {
                  v53 = sub_100452A54(&v90, __p);
                }

                else
                {
                  sub_10044EF84(v91, __p);
                  v53 = v52 + 232;
                }

                v91 = v53;

                sub_10044F1E0(__p);
                if (++v79 >= v72)
                {
                  v72 = [obj countByEnumeratingWithState:&v85 objects:&v102 count:16];
                  if (!v72)
                  {
                    break;
                  }

                  v79 = 0;
                }

                v12 = *v86;
              }
            }

            [v80 finishDecoding];
            v65 = *(v75 + 40);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = [obj count];
              LODWORD(__p[0]) = 134217984;
              *(__p + 4) = v66;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: Loaded %lu items", __p, 0xCu);
            }

            __p[0] = 0;
            __p[1] = 0;
            *&v95[0] = 0;
            sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * ((v91 - v90) >> 3));
            sub_100452A0C((v74 + 1));
            v93 = __p;
            sub_10044F294(&v93);
          }

          else
          {
            [v7 finishDecoding];
            __p[0] = 0;
            __p[1] = 0;
            *&v95[0] = 0;
            sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * ((v91 - v90) >> 3));
            v63 = v74[4];
            if (!v63)
            {
              sub_100022DB4();
            }

            (*(*v63 + 48))(v63, __p);
            v102.__r_.__value_.__r.__words[0] = __p;
            sub_10044F294(&v102);
            v64 = *(v75 + 40);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v102.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: Failed to decode (blacklistInfosKey)", &v102, 2u);
            }
          }
        }

        else
        {
          [v7 finishDecoding];
          v60 = *(v75 + 40);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = [v82 intValue];
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v61;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: Version mismatch [%d]", __p, 8u);
          }

          __p[0] = 0;
          __p[1] = 0;
          *&v95[0] = 0;
          sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * ((v91 - v90) >> 3));
          v62 = v74[4];
          if (!v62)
          {
            sub_100022DB4();
          }

          (*(*v62 + 48))(v62, __p);
          v102.__r_.__value_.__r.__words[0] = __p;
          sub_10044F294(&v102);
        }
      }

      else
      {
        [v7 finishDecoding];
        __p[0] = 0;
        __p[1] = 0;
        *&v95[0] = 0;
        sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * ((v91 - v90) >> 3));
        v58 = v74[4];
        if (!v58)
        {
          sub_100022DB4();
        }

        (*(*v58 + 48))(v58, __p);
        v102.__r_.__value_.__r.__words[0] = __p;
        sub_10044F294(&v102);
        v59 = *(v75 + 40);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v102.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: Version decoding failure", &v102, 2u);
        }
      }
    }
  }

  else
  {
    v54 = *(v75 + 40);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: No data", __p, 2u);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v95[0] = 0;
    sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * ((v91 - v90) >> 3));
    v55 = v74[4];
    if (!v55)
    {
      sub_100022DB4();
    }

    (*(*v55 + 48))(v55, __p);
    v102.__r_.__value_.__r.__words[0] = __p;
    sub_10044F294(&v102);
  }

  v93 = &v90;
  sub_10044F294(&v93);
  sub_1004529BC(&v84);
  return sub_1000049E0(&v83);
}

void sub_100452784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char *a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  a46 = &a43;
  sub_10044F294(&a46);
  sub_1004529BC(&a30);
  sub_1000049E0(&a29);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004529BC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10044F318(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_100452A0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100452A54(char **a1, __int128 *a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10044EEA4(a1, v6);
  }

  v13 = 0;
  v14 = 232 * v2;
  sub_10044EF84((232 * v2), a2);
  v15 = (232 * v2 + 232);
  v7 = a1[1];
  v8 = (232 * v2 + *a1 - v7);
  sub_100452B9C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100452CD4(&v13);
  return v12;
}

void sub_100452B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100452CD4(va);
  _Unwind_Resume(a1);
}

void sub_100452B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v9 = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 48) = v9;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 0;
      v10 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 72) = v10;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v11 = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 96) = v11;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      v12 = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(a4 + 120) = v12;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      v13 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 144) = v13;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      v14 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 168) = v14;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      *(a4 + 192) = *(v6 + 192);
      v15 = *(v6 + 208);
      *(a4 + 224) = *(v6 + 224);
      *(a4 + 208) = v15;
      *(v6 + 208) = 0;
      *(v6 + 216) = 0;
      *(v6 + 224) = 0;
      v6 += 232;
      a4 += 232;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_10044F1E0(v5) + 232;
    }
  }
}

uint64_t sub_100452CD4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    sub_10044F1E0(i - 232);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_100452D24(uint64_t **a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  (***(*v1 + 48))(__p);
  ServiceMap = Registry::getServiceMap(__p[0]);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v21.__r_.__value_.__r.__words[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v21);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (!v11)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101770960();
      if (v12)
      {
        goto LABEL_26;
      }
    }

    else if (v12)
    {
      goto LABEL_26;
    }

LABEL_25:
    sub_100004A34(v10);
    goto LABEL_26;
  }

  v13 = sub_100453098(v1 + 1);
  v14 = v13;
  v24 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  sub_100444744(&v21);
  v15 = std::string::append(&v21, "com.apple.CommCenter.DeleteBlocklistInfo.plist", 0x2EuLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v23 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v23 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v21.__r_.__value_.__r.__words[0] = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v17, 0x8000100u, kCFAllocatorNull);
  (*(*v11 + 16))(v11, @"kDeleteBlocklistKey", v24, v21.__r_.__value_.__r.__words[0], kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100010250(&v24);

  if ((v12 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_26:
  sub_100453038(&v20);
  return sub_1000049E0(&v19);
}

void sub_100452FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26)
{
  sub_100005978(&a14);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_100010250(&a26);

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  sub_100453038(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100453038(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_10027E114(&v2);
    operator delete();
  }

  return a1;
}

id sub_100453098(uint64_t *a1)
{
  v1 = a1[1] - *a1;
  if (v1)
  {
    v3 = [NSMutableArray arrayWithCapacity:0x8E38E38E38E38E39 * (v1 >> 3)];
    v4 = *a1;
    v5 = a1[1];
    while (v4 != v5)
    {
      v6 = codec::toJSONObject<rest::DeleteCloudCellularPlanBlacklistRecord>();
      if (v6)
      {
        [v3 addObject:v6];
      }

      v4 += 72;
    }

    if ([v3 count])
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10045318C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100453224(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1004532A4(void **a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  (***(*v1 + 48))(__p);
  ServiceMap = Registry::getServiceMap(__p[0]);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v29.__r_.__value_.__r.__words[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v29);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (v11)
  {
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    sub_100444744(&v29);
    v13 = std::string::append(&v29, "com.apple.CommCenter.DeleteBlocklistInfo.plist", 0x2EuLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v31 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v28 = 0;
    if (v31 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v27 = 0;
    v28 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v15, 0x8000100u, kCFAllocatorNull);
    (*(*v11 + 40))(&v29, v11, @"kDeleteBlocklistKey", v28, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_10006DD00(&v27, &v29.__r_.__value_.__l.__data_);
    sub_10000A1EC(&v29.__r_.__value_.__l.__data_);
    v16 = v27;
    if (v16)
    {
      memset(&v29, 0, sizeof(v29));
      if (sub_100453838(&v29, v16))
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_1002831D0(&v24, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_, 0x8E38E38E38E38E39 * ((v29.__r_.__value_.__l.__size_ - v29.__r_.__value_.__r.__words[0]) >> 3));
        v17 = v1[4];
        if (!v17)
        {
          sub_100022DB4();
        }
      }

      else
      {
        if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101770994();
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v17 = v1[4];
        if (!v17)
        {
          sub_100022DB4();
        }
      }

      (*(*v17 + 48))(v17, &v24);
      v32 = &v24;
      sub_10027E114(&v32);
      v32 = &v29;
      v20 = &v32;
    }

    else
    {
      memset(&v29, 0, sizeof(v29));
      v19 = v1[4];
      if (!v19)
      {
        sub_100022DB4();
      }

      (*(*v19 + 48))(v19, &v29);
      v24 = &v29;
      v20 = &v24;
    }

    sub_10027E114(v20);

    sub_100010250(&v27);
    sub_100005978(&v28);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
      if (v12)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if ((v12 & 1) == 0)
    {
LABEL_34:
      sub_100004A34(v10);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101770960();
    }

    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    v18 = v1[4];
    if (!v18)
    {
      sub_100022DB4();
    }

    (*(*v18 + 48))(v18, __p);
    v29.__r_.__value_.__r.__words[0] = __p;
    sub_10027E114(&v29);
    if ((v12 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  sub_1004537E8(&v23);
  return sub_1000049E0(&v22);
}

void sub_1004536EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  *(v30 - 72) = &a11;
  sub_10027E114((v30 - 72));
  *(v30 - 72) = &a16;
  sub_10027E114((v30 - 72));

  sub_100010250(&a14);
  sub_100005978(&a15);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  sub_1004537E8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004537E8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10044F398(v1 + 8);
    operator delete();
  }

  return a1;
}

BOOL sub_100453838(uint64_t *a1, void *a2)
{
  v3 = a2;
  sub_10027E168(a1, *a1);
  v4 = [NSArray typecast:v3];
  v5 = v4;
  if (v4)
  {
    sub_100453B08(a1, [v4 count]);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * v9);
          v22 = 0;
          *__p = 0u;
          *v19 = 0u;
          memset(v20, 0, sizeof(v20));
          if ((codec::fromJSONObject<rest::DeleteCloudCellularPlanBlacklistRecord>() & 1) == 0)
          {
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v20[3]) < 0)
            {
              operator delete(v20[1]);
            }

            if (SHIBYTE(v20[0]) < 0)
            {
              operator delete(v19[0]);
            }

            goto LABEL_26;
          }

          v11 = a1[1];
          if (v11 >= a1[2])
          {
            v15 = sub_10027C8C4(a1, v19);
            v16 = SHIBYTE(v22);
            a1[1] = v15;
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v12 = *v19;
            *(v11 + 16) = v20[0];
            *v11 = v12;
            v19[1] = 0;
            v20[0] = 0;
            v19[0] = 0;
            v13 = v20[3];
            *(v11 + 24) = *&v20[1];
            *(v11 + 40) = v13;
            v20[1] = 0;
            v20[2] = 0;
            v14 = *__p;
            *(v11 + 64) = v22;
            *(v11 + 48) = v14;
            __p[1] = 0;
            v22 = 0;
            v20[3] = 0;
            __p[0] = 0;
            a1[1] = v11 + 72;
          }

          if (SHIBYTE(v20[3]) < 0)
          {
            operator delete(v20[1]);
          }

          if (SHIBYTE(v20[0]) < 0)
          {
            operator delete(v19[0]);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v17 = [v6 count] == (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));
  }

  else
  {
LABEL_26:
    v17 = 0;
  }

  return v17;
}