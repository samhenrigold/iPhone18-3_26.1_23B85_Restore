void sub_1007483D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100748418(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((validContextType() & 1) == 0)
  {
    v10 = *(a1 + 64);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "getAppType";
      v14 = 2080;
      v15 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v12, 0x16u);
    }

    return 3;
  }

  v4 = a1 + 24 * v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 128);
  if (v5 == v6)
  {
    return 3;
  }

  LODWORD(v7) = 3;
  do
  {
    (*(**(v5 + 8) + 192))(*(v5 + 8));
    AppType = DataiRatControllerInterface::getAppType();
    if (v7 <= AppType)
    {
      v9 = AppType;
    }

    else
    {
      v9 = v7;
    }

    if (v7 == 3)
    {
      v9 = AppType;
    }

    if (AppType == 3)
    {
      v7 = v7;
    }

    else
    {
      v7 = v9;
    }

    v5 += 24;
  }

  while (v5 != v6);
  return v7;
}

void sub_10074856C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (validContextType())
  {
    memset(v9, 0, sizeof(v9));
    sub_10008A108(v9, *(a1 + 24 * v4 + 120), *(a1 + 24 * v4 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * v4 + 128) - *(a1 + 24 * v4 + 120)) >> 3));
    v6 = v9[0];
    v7 = v9[1];
    if (v9[0] != v9[1])
    {
      do
      {
        (*(*v6[1] + 104))(v6[1], a3);
        v6 += 3;
      }

      while (v6 != v7);
      v6 = v9[0];
    }

    if (v6)
    {
      v9[1] = v6;
      operator delete(v6);
    }
  }

  else
  {
    v8 = *(a1 + 64);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9[0]) = 136315394;
      *(v9 + 4) = "handleDataContextMOBIKEDone";
      WORD2(v9[1]) = 2080;
      *(&v9[1] + 6) = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v9, 0x16u);
    }
  }
}

void sub_1007486F8(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100748808;
  v4[3] = &unk_101E77F98;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10075B7D8;
  block[3] = &unk_101E78C28;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100748808(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "retryPendingActivations_block_invoke";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: retrying for %s", buf, 0x16u);
  }

  v4 = *(v2 + 55);
  if (v4)
  {
    *(v2 + 55) = 0;
    (*(*v4 + 8))(v4);
    v5 = sub_1000C2A4C(v2, 0, 0);
    sub_10000501C(buf, "Check if need to switchOver after out of pending");
    v6 = (*(*v2 + 1248))(v2, v5, buf);
    v7 = v6;
    if (buf[23] < 0)
    {
      operator delete(*buf);
      if (v7)
      {
        return;
      }
    }

    else if (v6)
    {
      return;
    }

    sub_100748B24(v2, v5);
  }

  if (validContextType())
  {
    v8 = (v2 + 24 * *(a1 + 40));
    memset(buf, 0, sizeof(buf));
    sub_10008A108(buf, v8[15], v8[16], 0xAAAAAAAAAAAAAAABLL * ((v8[16] - v8[15]) >> 3));
    v9 = *buf;
    v10 = *&buf[8];
    if (*buf != *&buf[8])
    {
      do
      {
        v11 = v9[1];
        v14[0] = 1;
        v15 = "reactivate pending";
        v16 = "CommCenter";
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v23 = 0;
        v24 = 0;
        __p = 0;
        v25 = 0;
        (*(*v11 + 120))(v11, v14);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }

        v9 += 3;
      }

      while (v9 != v10);
      v9 = *buf;
    }

    if (v9)
    {
      *&buf[8] = v9;
      operator delete(v9);
    }
  }

  else
  {
    v12 = *(v2 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = asString();
      *buf = 136315394;
      *&buf[4] = "retryPendingActivations_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_100748ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100748B24(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handoverFailed";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  if (validContextType())
  {
    v5 = 0;
    *&buf[8] = 0uLL;
    *buf = &buf[8];
    do
    {
      v6 = a1 + 24 * dword_101836038[v5] + 120;
      __p = 0;
      v39 = 0;
      v40 = 0;
      sub_10008A108(&__p, *v6, *(v6 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 1) - *v6) >> 3));
      v7 = __p;
      v8 = v39;
      if (__p != v39)
      {
        v9 = (__p + 8);
        do
        {
          if (*(v9 + 8) == 1)
          {
            sub_10075B8AC(buf, v9, v9);
          }

          v10 = (v9 + 2);
          v9 += 3;
        }

        while (v10 != v8);
        v7 = __p;
      }

      if (v7)
      {
        v39 = v7;
        operator delete(v7);
      }

      ++v5;
    }

    while (v5 != 2);
    if (sub_10074B638(a1) != a2)
    {
      (*(*a1 + 856))(a1, a2, 1, 0);
      v20 = *buf;
      if (*buf != &buf[8])
      {
        do
        {
          v21 = v20[4];
          sub_100004AA0(&__p, a1 + 4);
          if (__p)
          {
            v22 = __p + 24;
          }

          else
          {
            v22 = 0;
          }

          v36 = v22;
          v37 = v39;
          __p = 0;
          v39 = 0;
          (*(*v21 + 288))(v21, a2, &v36, 1, 0);
          if (v37)
          {
            sub_100004A34(v37);
          }

          if (v39)
          {
            sub_100004A34(v39);
          }

          v23 = v20[1];
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
              v24 = v20[2];
              v25 = *v24 == v20;
              v20 = v24;
            }

            while (!v25);
          }

          v20 = v24;
        }

        while (v24 != &buf[8]);
      }

      goto LABEL_57;
    }

    if (validContextType())
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 9));
      v12 = ServiceMap;
      if (v13 < 0)
      {
        v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
        v15 = 5381;
        do
        {
          v13 = v15;
          v16 = *v14++;
          v15 = (33 * v15) ^ v16;
        }

        while (v16);
      }

      std::mutex::lock(ServiceMap);
      __p = v13;
      v17 = sub_100009510(&v12[1].__m_.__sig, &__p);
      if (v17)
      {
        v19 = v17[3];
        v18 = v17[4];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v12);
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v18);
          if (!v19)
          {
LABEL_56:
            sub_100004A34(v18);
            goto LABEL_57;
          }

LABEL_40:
          v34 = 0;
          v35 = 0;
          (*(*v19 + 456))(&v34, v19);
          if (v34)
          {
            v26 = *buf;
            if (*buf != &buf[8])
            {
              do
              {
                v27 = v34;
                v28 = PersonalitySpecificImpl::simSlot(a1);
                v29 = (*(**(v26 + 4) + 192))(*(v26 + 4));
                v30 = (*(*a1 + 328))(a1, a2);
                (*(*a1 + 528))(&__p, a1, a2);
                if (v40 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                (*(*v27 + 56))(v27, v28, v29, a2, v30, p_p);
                if (SHIBYTE(v40) < 0)
                {
                  operator delete(__p);
                }

                v32 = *(v26 + 1);
                if (v32)
                {
                  do
                  {
                    v33 = v32;
                    v32 = *v32;
                  }

                  while (v32);
                }

                else
                {
                  do
                  {
                    v33 = *(v26 + 2);
                    v25 = *v33 == v26;
                    v26 = v33;
                  }

                  while (!v25);
                }

                v26 = v33;
              }

              while (v33 != &buf[8]);
            }
          }

          if (v35)
          {
            sub_100004A34(v35);
          }

          if (!v18)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        std::mutex::unlock(v12);
        if (v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        std::mutex::unlock(v12);
      }
    }

LABEL_57:
    sub_10006DCAC(buf, *&buf[8]);
  }
}

void sub_100749024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21)
{
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_10006DCAC(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1007490E0(uint64_t a1, unsigned int *a2)
{
  if (a2[4])
  {
    return 1;
  }

  if ((validContextType() & 1) == 0)
  {
    v7 = *(a1 + 64);
    v2 = 0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9[0]) = 136315394;
      *(v9 + 4) = "isObserverCurrentOnSomething";
      WORD2(v9[1]) = 2080;
      *(&v9[1] + 6) = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v9, 0x16u);
      return 0;
    }

    return v2;
  }

  v5 = otherContextType();
  memset(v9, 0, sizeof(v9));
  sub_10008A108(v9, *(a1 + 24 * v5 + 120), *(a1 + 24 * v5 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * v5 + 128) - *(a1 + 24 * v5 + 120)) >> 3));
  if (v9[0] == v9[1])
  {
LABEL_9:
    v2 = 0;
    if (!v9[0])
    {
      return v2;
    }

LABEL_10:
    v9[1] = v9[0];
    operator delete(v9[0]);
    return v2;
  }

  v6 = v9[0];
  while (*(v6 + 8) != *(a2 + 1) || (*(v6 + 16) & 1) == 0)
  {
    v6 += 24;
    if (v6 == v9[1])
    {
      goto LABEL_9;
    }
  }

  v2 = 1;
  if (v9[0])
  {
    goto LABEL_10;
  }

  return v2;
}

uint64_t sub_100749264(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v3 = ServiceMap;
  if (v4 < 0)
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

  std::mutex::lock(ServiceMap);
  __p = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &__p);
  if (!v8)
  {
    std::mutex::unlock(v3);
    goto LABEL_9;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    std::mutex::unlock(v3);
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_9:
    v11 = 2;
    goto LABEL_41;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  if (!v10)
  {
    v11 = 2;
LABEL_40:
    sub_100004A34(v9);
    goto LABEL_41;
  }

LABEL_11:
  v29 = 0;
  v30 = 0;
  (*(*v10 + 456))(&v29, v10);
  if (v29)
  {
    v12 = 0;
    __p = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v13 = a1 + 120 + 24 * dword_101836038[v12];
      v14 = *v13;
      v15 = *(v13 + 8);
      while (v14 != v15)
      {
        if (sub_1007490E0(a1, v14))
        {
          sub_1000C44A0(&__p, v14);
        }

        v14 = (v14 + 24);
      }

      ++v12;
    }

    while (v12 != 2);
    v16 = __p;
    v17 = v27;
    if (__p == v27)
    {
      goto LABEL_33;
    }

    LODWORD(v18) = 3;
    do
    {
      (*(*v16[1] + 192))(v16[1]);
      AppType = DataiRatControllerInterface::getAppType();
      if (v18 <= AppType)
      {
        v20 = AppType;
      }

      else
      {
        v20 = v18;
      }

      if (v18 == 3)
      {
        v20 = AppType;
      }

      if (AppType == 3)
      {
        v18 = v18;
      }

      else
      {
        v18 = v20;
      }

      v16 += 3;
    }

    while (v16 != v17);
    if (v18 >= 3)
    {
LABEL_33:
      v11 = 2;
    }

    else
    {
      v21 = v29;
      v22 = PersonalitySpecificImpl::simSlot(a1);
      v11 = (*(*v21 + 96))(v21, v22, v18);
      v23 = *(a1 + 64);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = asString();
        *buf = 136315394;
        v32 = "getPreferredTransportType";
        v33 = 2080;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: iRAT recommends %s", buf, 0x16u);
      }
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 2;
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  if (v9)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (validContextType())
  {
    return v11;
  }

  else
  {
    return 1;
  }
}

void sub_100749568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007495D4(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    return (*(*v1 + 80))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100749608(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return (*(*v1 + 80))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10074963C(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    return (*(*v1 + 96))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100749670(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return (*(*v1 + 96))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1007496A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[14])
  {
    goto LABEL_13;
  }

  if ((validContextType() & 1) == 0)
  {
    v14 = a1[8];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "isMOBIKEPossibleTo";
      v20 = 2080;
      v21 = asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v8 = a1[14];
  (*(*a1 + 16))(&v16, a1);
  v9 = (*(*v8 + 232))(v8, a2, a3, &v16, a4);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (!v9)
  {
LABEL_13:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  v10 = &a1[3 * a2];
  v11 = v10[15];
  v12 = v10[16];
  v13 = 1;
  while (v11 != v12)
  {
    if (*(v11 + 16) == 1)
    {
      v13 &= (*(**(v11 + 8) + 304))(*(v11 + 8), a2);
    }

    v11 += 24;
  }

  return v13 & 1;
}

void sub_100749874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074989C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[14];
  if (!v4)
  {
    return 0;
  }

  (*(*a1 + 16))(&v10);
  v8 = (*(*v4 + 224))(v4, a2, a3, &v10, a4);
  if (v11)
  {
    sub_100004A34(v11);
  }

  return v8;
}

void sub_100749958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100749978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004AA0(&v8, (a1 + 32));
  v7 = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_100749AEC;
  v10[3] = &unk_101E77FB8;
  v10[4] = a1;
  v10[5] = v7;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10075B814(v12, a3);
  v12[4] = a2;
  sub_100741294(a1 + 664, a2, v10, (a1 + 48), (a1 + 72));
  sub_1003B7318(v12);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_100749AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_1003B7318(v19 + 56);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  _Unwind_Resume(a1);
}

void sub_100749AEC(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = a1[10];
        if (!v6)
        {
          sub_100022DB4();
        }

        if ((*(*v6 + 48))(v6))
        {
          v7 = v3[14];
          if (v7)
          {
            v8 = v3[8];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v15 = "apnFallbackTimerSet_block_invoke";
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: APNFallback timeout: going back to IPv6 only", buf, 0xCu);
              v7 = v3[14];
            }

            (*(*v3 + 16))(&v11, v3);
            (*(*v7 + 264))(v7, 0, &v11, 31, "CommCenter");
            if (v12)
            {
              sub_100004A34(v12);
            }
          }
        }

        else
        {
          v9 = v3[8];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v15 = "apnFallbackTimerSet_block_invoke";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: APNFallback timeout: cannot go back to IPv6 only, postponing ...", buf, 0xCu);
          }

          v10 = a1[11];
          sub_10075B814(v13, (a1 + 7));
          sub_100749978(v3, v10, v13);
          sub_1003B7318(v13);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100749CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_100749D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10075B814(a1 + 56, a2 + 56);
}

void sub_100749D78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100749D90(uint64_t a1)
{
  sub_1003B7318(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100749DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "apnFallback";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v7 = *(a3 + 24);
  if (!v7)
  {
    sub_100022DB4();
  }

  if ((*(*v7 + 48))(v7))
  {
    if (((*(*a1 + 136))(a1, 0, 0, 0) & 1) != 0 && (*(a1 + 664) & 1) == 0 && sub_100741BB8(a1, 0) == 3)
    {
      v22 = 0;
      v21 = 0;
      memset(&v20, 0, sizeof(v20));
      sub_10074014C(a1, &v22 + 1, &v22, &v21, &v20);
      if (HIBYTE(v22) == 1 && *(a1 + 112))
      {
        v8 = v22;
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__dst, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v20;
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        sub_100741200(a1 + 664, 1, v8, &__dst, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v10 = v21;
        if (v21)
        {
          sub_10075B814(v29, a3);
          sub_100749978(a1, v10, v29);
          sub_1003B7318(v29);
        }

        v11 = *(a1 + 64);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = asString();
          sub_10074A21C(a1 + 664, &v17);
          v13 = (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v17 : v17.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          v24 = "apnFallback";
          v25 = 2080;
          v26 = v12;
          v27 = 2080;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: fAPNFallbackState %s set to %s", buf, 0x20u);
          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }
        }

        v14 = *(a1 + 112);
        (*(*a1 + 16))(&v15, a1);
        (*(*v14 + 264))(v14, 0, &v15, 30, "CommCenter");
        if (v16)
        {
          sub_100004A34(v16);
        }
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v9 = *(a1 + 64);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "apnFallback";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: APNFallback is not allowed", buf, 0xCu);
    }
  }
}

void sub_10074A19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074A21C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10000501C(&v47, "[ipv4=");
  v4 = asStringBool(*a1);
  sub_10000501C(v45, v4);
  if ((v46 & 0x80u) == 0)
  {
    v5 = v45;
  }

  else
  {
    v5 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v6 = v46;
  }

  else
  {
    v6 = v45[1];
  }

  v7 = std::string::append(&v47, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v48, ", ipv6=", 7uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = asStringBool(*(a1 + 1));
  sub_10000501C(v43, v11);
  if ((v44 & 0x80u) == 0)
  {
    v12 = v43;
  }

  else
  {
    v12 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v13 = v44;
  }

  else
  {
    v13 = v43[1];
  }

  v14 = std::string::append(&v49, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v50, ", tentative=", 0xCuLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = asStringBool(*(a1 + 2));
  sub_10000501C(__p, v18);
  if ((v42 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v20 = v42;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v51, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v52, ", apn=", 6uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(a1 + 31);
  if (v25 >= 0)
  {
    v26 = (a1 + 8);
  }

  else
  {
    v26 = *(a1 + 8);
  }

  if (v25 >= 0)
  {
    v27 = *(a1 + 31);
  }

  else
  {
    v27 = *(a1 + 16);
  }

  v28 = std::string::append(&v53, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v54, ", app=", 7uLL);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v34 = *(a1 + 40);
  v33 = a1 + 40;
  v32 = v34;
  v35 = *(v33 + 23);
  if (v35 >= 0)
  {
    v36 = v33;
  }

  else
  {
    v36 = v32;
  }

  if (v35 >= 0)
  {
    v37 = *(v33 + 23);
  }

  else
  {
    v37 = *(v33 + 8);
  }

  v38 = std::string::append(&v55, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v56, "]", 2uLL);
  *a2 = *v40;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_10074A578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 41) < 0)
  {
    operator delete(*(v59 - 64));
  }

  if (*(v59 - 73) < 0)
  {
    operator delete(*(v59 - 96));
  }

  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  if (*(v59 - 137) < 0)
  {
    operator delete(*(v59 - 160));
  }

  if (*(v59 - 169) < 0)
  {
    operator delete(*(v59 - 192));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074A6BC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 || *(a1 + 664) != 1)
  {

    sub_10000501C(a3, "");
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    sub_10074014C(a1, &v8 + 1, &v8, &v7, a3);
    v5 = *(a1 + 64);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v6 = a3;
      }

      else
      {
        v6 = *a3;
      }

      *buf = 136315394;
      v10 = "getApnFallbackName";
      v11 = 2080;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: APNFallback name set to '%s'", buf, 0x16u);
    }
  }
}

void sub_10074A7FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074A818(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_10074A6BC(a1, a2, __p);
  v5 = HIBYTE(v9);
  if (v9 < 0)
  {
    v5 = __p[1];
  }

  if (v5)
  {
    *a3 = *__p;
    *(a3 + 16) = v9;
    __p[1] = 0;
    v9 = 0;
    __p[0] = 0;
  }

  else
  {
    v6 = *(a1 + 264);
    if (v6)
    {
      if (*(v6 + 71) < 0)
      {
        sub_100005F2C(a3, *(v6 + 48), *(v6 + 56));
      }

      else
      {
        v7 = *(v6 + 48);
        *(a3 + 16) = *(v6 + 64);
        *a3 = v7;
      }
    }

    else
    {
      sub_10000501C(a3, "");
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10074A8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074A900(void *a1)
{
  v1 = a1[14];
  if (v1)
  {
    (*(*a1 + 16))(&v3);
    (*(*v1 + 248))(v1, &v3);
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v2 = a1[8];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "notifyConnectionReady";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: data activator empty", buf, 0xCu);
    }
  }
}

void sub_10074AA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074AA34(Registry **a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(a1[9]);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v18 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v18);
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
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = 1;
    if (v13)
    {
      return v14;
    }

    goto LABEL_12;
  }

LABEL_11:
  v15 = PersonalitySpecificImpl::simSlot(a1);
  v16 = (*(*a1 + 17))(a1, a2, 1, 0);
  v14 = (*(*v12 + 1144))(v12, a2, v15, v16);
  if ((v13 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v11);
  }

  return v14;
}

void sub_10074ABB4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074ABCC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[14];
  if (v3)
  {
    (*(*a1 + 16))(&v5);
    (*(*v3 + 216))(v3, a2, &v5);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10074AC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074AC9C(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004AA0(&__p, a1 + 4);
    v5 = __p;
    v6 = v47;
    __p = 0;
    v47 = 0;
    if (v5)
    {
      v7 = (*(v5[3] + 48))();
    }

    else
    {
      v7 = "nothing";
    }

    v8 = asString();
    *buf = 136315650;
    *&buf[4] = "handleDataContextActivated";
    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 2080;
    v52 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s activated with %s", buf, 0x20u);
    if (v6)
    {
      sub_100004A34(v6);
    }

    if (v47)
    {
      sub_100004A34(v47);
    }
  }

  if (validContextType())
  {
    *&buf[8] = 0uLL;
    *buf = &buf[8];
    v9 = a1 + 120;
    v10 = 0;
    if ((*(*a1 + 1240))(a1, a2, 3))
    {
      do
      {
        v11 = &v9[24 * dword_101836038[v10]];
        v12 = *(v11 + 1);
        if (*v11 != v12)
        {
          v13 = *v11 + 8;
          do
          {
            if (*(v13 + 8) == 1)
            {
              sub_10075B8AC(buf, v13, v13);
            }

            v14 = v13 + 16;
            v13 += 24;
          }

          while (v14 != v12);
        }

        ++v10;
      }

      while (v10 != 2);
    }

    else
    {
      do
      {
        v15 = &v9[24 * dword_101836038[v10]];
        v16 = *(v15 + 1);
        if (*v15 != v16)
        {
          v17 = (*v15 + 8);
          do
          {
            if (*(v17 + 8) == 1 && *v17 && (*(**v17 + 128))(*v17))
            {
              sub_10075B8AC(buf, v17, v17);
            }

            v18 = v17 + 2;
            v17 += 3;
          }

          while (v18 != v16);
        }

        ++v10;
      }

      while (v10 != 2);
    }

    v19 = sub_1007421F0(a1);
    v20 = *buf;
    if (*buf != &buf[8])
    {
      v21 = v19;
      do
      {
        sub_100740A20(a1, a2, v20[4], 1);
        v22 = *v20[4];
        if (v21)
        {
          v23 = (v22 + 48);
        }

        else
        {
          v23 = (v22 + 40);
        }

        (*v23)();
        v24 = v20[1];
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
            v25 = v20[2];
            v26 = *v25 == v20;
            v20 = v25;
          }

          while (!v26);
        }

        v20 = v25;
      }

      while (v25 != &buf[8]);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 9));
    v28 = ServiceMap;
    if (v29 < 0)
    {
      v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
      v31 = 5381;
      do
      {
        v29 = v31;
        v32 = *v30++;
        v31 = (33 * v31) ^ v32;
      }

      while (v32);
    }

    std::mutex::lock(ServiceMap);
    __p = v29;
    v33 = sub_100009510(&v28[1].__m_.__sig, &__p);
    if (v33)
    {
      v35 = v33[3];
      v34 = v33[4];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v34);
        if (!v35)
        {
LABEL_64:
          sub_100004A34(v34);
          goto LABEL_65;
        }

LABEL_48:
        v49 = 0;
        v50 = 0;
        (*(*v35 + 456))(&v49, v35);
        if (v49)
        {
          v38 = *buf;
          if (*buf != &buf[8])
          {
            do
            {
              v39 = v49;
              v40 = PersonalitySpecificImpl::simSlot(a1);
              v41 = (*(**(v38 + 4) + 192))(*(v38 + 4));
              v42 = (*(*a1 + 328))(a1, a2);
              (*(*a1 + 528))(&__p, a1, a2);
              if (v48 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              (*(*v39 + 56))(v39, v40, v41, a2, v42, p_p);
              if (v48 < 0)
              {
                operator delete(__p);
              }

              v44 = *(v38 + 1);
              if (v44)
              {
                do
                {
                  v45 = v44;
                  v44 = *v44;
                }

                while (v44);
              }

              else
              {
                do
                {
                  v45 = *(v38 + 2);
                  v26 = *v45 == v38;
                  v38 = v45;
                }

                while (!v26);
              }

              v38 = v45;
            }

            while (v45 != &buf[8]);
          }
        }

        if (v50)
        {
          sub_100004A34(v50);
        }

        if (!v34)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      std::mutex::unlock(v28);
      if (v35)
      {
        goto LABEL_48;
      }
    }

    else
    {
      std::mutex::unlock(v28);
    }

LABEL_65:
    sub_10006DCAC(buf, *&buf[8]);
    return;
  }

  v36 = *(a1 + 8);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = asString();
    *buf = 136315394;
    *&buf[4] = "handleDataContextActivated";
    *&buf[12] = 2080;
    *&buf[14] = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
  }
}

void sub_10074B294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_10006DCAC(&a18, a19);
  _Unwind_Resume(a1);
}

void sub_10074B344(PersonalitySpecificImpl *a1, int a2, int a3, unsigned int a4)
{
  v7 = 0;
  v8 = 0;
  v9 = a1 + 120;
  do
  {
    v10 = &v9[24 * dword_101836038[v8]];
    v12 = *v10;
    v11 = *(v10 + 1);
    while (v12 != v11)
    {
      if (*(v12 + 16) == 1)
      {
        v7 |= (*(**(v12 + 8) + 192))(*(v12 + 8)) == a2;
      }

      v12 += 24;
    }

    ++v8;
  }

  while (v8 != 2);
  if (v7)
  {
    v13 = sub_1000C2A4C(a1, 0, 0);
    if (a3)
    {
      v14 = sub_10074B638(a1);
      if (v13 == a4)
      {
        v15 = v14;
        if (v13 != v14)
        {
          sub_10000501C(__p, "Switch to forced context type");
          v16 = (*(*a1 + 1248))(a1, a4, __p);
          v17 = v16;
          if (SHIBYTE(v25) < 0)
          {
            operator delete(*__p);
            if (v17)
            {
              return;
            }
          }

          else if (v16)
          {
            return;
          }

          v18 = *(a1 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = asString();
            v20 = asString();
            *__p = 136315650;
            *&__p[4] = "recalculateForceContextType";
            v23 = 2080;
            v24 = v19;
            v25 = 2080;
            v26 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: handover to forced type %s failed (2), deactivate current context %s", __p, 0x20u);
          }

          (*(*a1 + 672))(a1, v15, 35, "Handover to Forced Type Failed. (2)", "CommCenter");
          sub_100748B24(a1, a4);
        }
      }
    }

    else
    {
      sub_10000501C(__p, "Switch back to iRat type when context is not forced");
      (*(*a1 + 1248))(a1, v13, __p);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_10074B610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074B638(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (!v1)
  {
    return 2;
  }

  sub_100004AA0(&v5, (a1 + 32));
  if (v5)
  {
    v2 = v5 + 24;
  }

  else
  {
    v2 = 0;
  }

  v7 = v2;
  v8 = v6;
  v5 = 0;
  v6 = 0;
  v3 = (*(*v1 + 184))(v1, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  return v3;
}

void sub_10074B6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074B70C(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 384))();
  }

  return result;
}

void sub_10074B744(void *a1, uint64_t a2)
{
  if (validContextType())
  {
    (*(*a1 + 1240))(a1, a2, 0);
    v4 = otherContextType();
    memset(v19, 0, sizeof(v19));
    sub_10008A108(v19, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    v5 = sub_1007421F0(a1);
    v6 = a1[8];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "handleDataContextDeactivated";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: In handover: switch observers to the remaining context when possible", &buf, 0xCu);
      }

      v8 = *v19;
      v9 = *&v19[8];
      while (v8 != v9)
      {
        if (*(v8 + 16) == 1)
        {
          sub_100740A20(a1, v4, *(v8 + 8), 1);
        }

        v8 += 24;
      }
    }

    else
    {
      if (v7)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "handleDataContextDeactivated";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: Not in handover:", &buf, 0xCu);
      }

      v11 = *v19;
      v12 = *&v19[8];
      while (v11 != v12)
      {
        if (*(v11 + 16) == 1)
        {
          v13 = *(v11 + 8);
          sub_100004AA0(&buf, a1 + 4);
          if (buf)
          {
            v14 = buf + 24;
          }

          else
          {
            v14 = 0;
          }

          v16 = v14;
          v17 = *(&buf + 1);
          buf = 0uLL;
          v15 = (*(*v13 + 64))(v13, a2, &v16);
          if (v17)
          {
            sub_100004A34(v17);
          }

          if (*(&buf + 1))
          {
            sub_100004A34(*(&buf + 1));
          }

          if (v15)
          {
            sub_100740A20(a1, a2, *(v11 + 8), 0);
          }
        }

        v11 += 24;
      }
    }

    (*(*a1 + 1208))(a1, a2);
    if (*v19)
    {
      *&v19[8] = *v19;
      operator delete(*v19);
    }
  }

  else
  {
    v10 = a1[8];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315394;
      *&v19[4] = "handleDataContextDeactivated";
      *&v19[12] = 2080;
      *&v19[14] = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v19, 0x16u);
    }
  }
}

uint64_t sub_10074BAB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7)
{
  if (validContextType())
  {
    memset(buf, 0, sizeof(buf));
    sub_10008A108(buf, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    v14 = *buf;
    v15 = *&buf[8];
    while (v14 != v15)
    {
      if (*(v14 + 16) == 1)
      {
        v16 = *(v14 + 8);
        if (v16)
        {
          (*(*v16 + 72))(v16, a4, a5, a6);
        }
      }

      v14 += 24;
    }

    sub_10074BD70(a1, a3, v21);
    sub_10074BD70(a1, a2, v20);
    sub_10074BEDC(v21, v20, &__p);
    if (&__p != a7)
    {
      sub_10075B5F0(a7, __p, v23, 0x4EC4EC4EC4EC4EC5 * (v23 - __p));
    }

    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    if (v21[0])
    {
      v21[1] = v21[0];
      operator delete(v21[0]);
    }

    v18 = sub_10074BF70(a1, a2, a3);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v17 = a1[8];
    v18 = 0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handleDataContextNetworkDisconnect";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
      return 0;
    }
  }

  return v18;
}

void sub_10074BCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074BD70(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (validContextType())
  {
    v6 = a1 + 24 * v3;
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
    while (v7 != v8)
    {
      if (*(v7 + 16) == 1)
      {
        *v12 = (*(**(v7 + 8) + 264))(*(v7 + 8));
        *&v12[8] = v9;
        LOBYTE(v13) = v10;
        sub_100090374(a3, v12);
      }

      v7 += 24;
    }
  }

  else
  {
    v11 = *(a1 + 64);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 136315394;
      *&v12[4] = "getActiveConnectionsTraits";
      v13 = 2080;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v12, 0x16u);
    }
  }
}

void sub_10074BEC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074BEDC(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_100090CF8(a3, *a1, *(a1 + 8), 0x4EC4EC4EC4EC4EC5 * (*(a1 + 8) - *a1));
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    sub_100090374(a3, v5);
    v5 = (v5 + 13);
  }
}

void sub_10074BF54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074BF70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!(*(*a1 + 1080))(a1) || sub_100750BB8(v5, a2, a3) != a3)
  {
    return 0;
  }

  if ((validContextType() & 1) == 0)
  {
    v58 = v5[8];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v74 = "canDoHandover";
      v75 = 2080;
      v76 = asString();
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    return 0;
  }

  __p = 0;
  v71 = 0;
  v72 = 0;
  sub_10008A108(&__p, v5[3 * a2 + 15], v5[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((v5[3 * a2 + 16] - v5[3 * a2 + 15]) >> 3));
  v6 = __p;
  v7 = v71;
  if (__p == v71)
  {
    v57 = 0;
    if (!__p)
    {
      return v57;
    }

LABEL_75:
    v71 = v6;
    operator delete(v6);
    return v57;
  }

  v8 = 1;
  v63 = v5;
  v60 = v71;
  do
  {
    if ((sub_1007490E0(v5, v6) & 1) == 0)
    {
      goto LABEL_66;
    }

    v69 = 0;
    *v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    (*(*v6[1] + 272))(&v66);
    v9 = v66;
    if (v66)
    {
      v61 = v66;
      v62 = v6;
      v10 = v67[12];
      v11 = v5[8];
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          v13 = (*(*v5 + 40))(v5);
          v14 = asString();
          if (v66)
          {
            v15 = "f";
          }

          else
          {
            v15 = "t";
          }

          if (v66)
          {
            v16 = asString();
          }

          else
          {
            v16 = "OK";
          }

          v22 = *(&v66 + 1);
          v21 = *v67;
          v23 = asStringBool(v67[8]);
          v24 = asStringBool(v67[9]);
          v25 = asStringBool(v67[10]);
          v26 = asStringBool(v67[11]);
          *buf = 136317954;
          v74 = v13;
          v75 = 2080;
          v76 = "canDoHandover";
          v77 = 2080;
          v78 = "cannot be activated";
          v79 = 2080;
          v80 = v14;
          v81 = 2080;
          v82 = v15;
          v83 = 2080;
          v84 = v16;
          v85 = 2080;
          v86 = v22;
          v87 = 2080;
          v88 = v21;
          v89 = 2080;
          v90 = v23;
          v91 = 2080;
          v92 = v24;
          v93 = 2080;
          v94 = v25;
          v95 = 2080;
          v96 = v26;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})", buf, 0x7Au);
          v5 = v63;
        }

        goto LABEL_30;
      }

      if (!v12)
      {
LABEL_30:
        v30 = *(&v68 + 1);
        v31 = v69;
        if (v69)
        {
          atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v30)
        {
          while (1)
          {
            v32 = *(v30 + 28);
            v33 = v5[8];
            v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
            if (v32 == 1)
            {
              if (v34)
              {
                log = v33;
                v35 = (*(*v5 + 40))(v5);
                v36 = asString();
                v37 = "f";
                if (!*v30)
                {
                  v37 = "t";
                }

                v64 = v37;
                if (*v30)
                {
                  v38 = asString();
                }

                else
                {
                  v38 = "OK";
                }

                v44 = *(v30 + 8);
                v43 = *(v30 + 16);
                v45 = asStringBool(*(v30 + 24));
                v46 = asStringBool(*(v30 + 25));
                v47 = asStringBool(*(v30 + 26));
                v48 = asStringBool(*(v30 + 27));
                *buf = 136317954;
                v74 = v35;
                v75 = 2080;
                v76 = "canDoHandover";
                v77 = 2080;
                v78 = "cannot be activated (chained):";
                v79 = 2080;
                v80 = v36;
                v81 = 2080;
                v82 = v64;
                v83 = 2080;
                v84 = v38;
                v85 = 2080;
                v86 = v44;
                v87 = 2080;
                v88 = v43;
                v89 = 2080;
                v90 = v45;
                v91 = 2080;
                v92 = v46;
                v93 = 2080;
                v94 = v47;
                v95 = 2080;
                v96 = v48;
                _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: %s: %s: %s(%s{%s %s [ allowed=%s blocked=%s netAvailable=%s home=%s ]})", buf, 0x7Au);
                v5 = v63;
              }

              goto LABEL_54;
            }

            if (v34)
            {
              break;
            }

LABEL_54:
            v54 = *(v30 + 40);
            v53 = *(v30 + 48);
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v31)
            {
              sub_100004A34(v31);
            }

            v31 = v53;
            v30 = v54;
            if (!v54)
            {
              goto LABEL_61;
            }
          }

          v39 = (*(*v5 + 40))(v5);
          v40 = asString();
          if (*v30)
          {
            v41 = "f";
          }

          else
          {
            v41 = "t";
          }

          if (*v30)
          {
            v42 = asString();
          }

          else
          {
            v42 = "OK";
          }

          v49 = *(v30 + 8);
          if (v49)
          {
            v50 = *(v30 + 16);
            if (*v49)
            {
              v51 = "{";
              v52 = "}";
LABEL_53:
              *buf = 136317442;
              v74 = v39;
              v75 = 2080;
              v76 = "canDoHandover";
              v77 = 2080;
              v78 = "cannot be activated (chained):";
              v79 = 2080;
              v80 = v40;
              v81 = 2080;
              v82 = v41;
              v83 = 2080;
              v84 = v42;
              v85 = 2080;
              v86 = v51;
              v87 = 2080;
              v88 = v49;
              v89 = 2080;
              v90 = v50;
              v91 = 2080;
              v92 = v52;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: %s: %s: %s(%s%s%s %s%s)", buf, 0x66u);
              goto LABEL_54;
            }
          }

          else
          {
            v50 = *(v30 + 16);
          }

          v52 = "";
          v51 = "";
          goto LABEL_53;
        }

        v53 = v31;
LABEL_61:
        v6 = v62;
        v7 = v60;
        v9 = v61;
        if (v53)
        {
          sub_100004A34(v53);
        }

        goto LABEL_63;
      }

      v17 = (*(*v5 + 40))(v5);
      v18 = asString();
      if (v66)
      {
        v19 = "f";
      }

      else
      {
        v19 = "t";
      }

      if (v66)
      {
        v20 = asString();
      }

      else
      {
        v20 = "OK";
      }

      if (*(&v66 + 1))
      {
        v27 = *v67;
        if (**(&v66 + 1))
        {
          v28 = "{";
          v29 = "}";
LABEL_29:
          *buf = 136317442;
          v74 = v17;
          v75 = 2080;
          v76 = "canDoHandover";
          v77 = 2080;
          v78 = "cannot be activated";
          v79 = 2080;
          v80 = v18;
          v81 = 2080;
          v82 = v19;
          v83 = 2080;
          v84 = v20;
          v85 = 2080;
          v86 = v28;
          v87 = 2080;
          v88 = *(&v66 + 1);
          v89 = 2080;
          v90 = v27;
          v91 = 2080;
          v92 = v29;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I DATA.%s: %s: %s: %s: %s(%s%s%s %s%s)", buf, 0x66u);
          goto LABEL_30;
        }
      }

      else
      {
        v27 = *v67;
      }

      v29 = "";
      v28 = "";
      goto LABEL_29;
    }

LABEL_63:
    if (v69)
    {
      sub_100004A34(v69);
    }

    v8 = 0;
    v55 = 0;
    v56 = 0;
    if (v9)
    {
      goto LABEL_68;
    }

LABEL_66:
    v6 += 3;
  }

  while (v6 != v7);
  v55 = 1;
  v56 = v8;
LABEL_68:
  v6 = __p;
  v57 = v55 & (v56 ^ 1u);
  if (__p)
  {
    goto LABEL_75;
  }

  return v57;
}

uint64_t sub_10074C7F4(void *a1, uint64_t a2)
{
  if ((validContextType() & 1) == 0)
  {
    v9 = a1[8];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "isContextStateIdle";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    return 1;
  }

  v4 = a1[14];
  if (!v4)
  {
    return 1;
  }

  sub_100004AA0(buf, a1 + 4);
  if (*buf)
  {
    v5 = *buf + 24;
  }

  else
  {
    v5 = 0;
  }

  v11 = v5;
  v12 = *&buf[8];
  *buf = 0;
  *&buf[8] = 0;
  v6 = (*(*v4 + 368))(v4, &v11);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v6)
  {
    return 1;
  }

  v7 = a1[14];
  (*(*a1 + 16))(buf, a1);
  v8 = (*(*v7 + 88))(v7, a2, buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  return v8;
}

void sub_10074C9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074C9F4(void *a1, uint64_t a2)
{
  if (validContextType())
  {
    v4 = otherContextType();
    v5 = sub_1007421F0(a1);
    v6 = sub_1007421F0(a1);
    (*(*a1 + 1240))(a1, a2, 0);
    v7 = a1[8];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_100004AA0(&v29, a1 + 4);
      v8 = v29;
      v29 = 0uLL;
      if (v8)
      {
        (*(*(v8 + 24) + 48))();
      }

      *buf = 136315394;
      *&buf[4] = "handleDataContextAborted";
      *&buf[12] = 2080;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: from %s", buf, 0x16u);
      if (*(&v8 + 1))
      {
        sub_100004A34(*(&v8 + 1));
      }

      if (*(&v29 + 1))
      {
        sub_100004A34(*(&v29 + 1));
      }
    }

    memset(buf, 0, sizeof(buf));
    sub_10008A108(buf, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    v10 = a1[8];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v11)
      {
        LODWORD(v29) = 136315138;
        *(&v29 + 4) = "handleDataContextAborted";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: In handover: switch observers to the remaining context", &v29, 0xCu);
      }

      v12 = *buf;
      v13 = *&buf[8];
      while (v12 != v13)
      {
        if (*(v12 + 16) == 1)
        {
          sub_100740A20(a1, v4, *(v12 + 8), 1);
        }

        v12 += 24;
      }
    }

    else
    {
      if (v11)
      {
        LODWORD(v29) = 136315138;
        *(&v29 + 4) = "handleDataContextAborted";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: Not in handover:", &v29, 0xCu);
      }

      v14 = *buf;
      v15 = *&buf[8];
      while (v14 != v15)
      {
        if (*(v14 + 16) == 1)
        {
          v16 = *(v14 + 8);
          if (v16)
          {
            sub_100004AA0(&v29, a1 + 4);
            if (v29)
            {
              v17 = v29 + 24;
            }

            else
            {
              v17 = 0;
            }

            v27 = v17;
            v28 = *(&v29 + 1);
            v29 = 0uLL;
            (*(*v16 + 80))(v16, a2, &v27);
            if (v28)
            {
              sub_100004A34(v28);
            }

            if (*(&v29 + 1))
            {
              sub_100004A34(*(&v29 + 1));
            }

            sub_100740A20(a1, a2, *(v14 + 8), 0);
          }
        }

        v14 += 24;
      }

      if (v6)
      {
        v18 = a1[8];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v29) = 136315138;
          *(&v29 + 4) = "handleDataContextAborted";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: handover to this:", &v29, 0xCu);
        }

        if (sub_10074C7F4(a1, v4) && sub_100741BB8(a1, v4))
        {
          (*(*a1 + 1240))(a1, v4, 0);
          v29 = 0uLL;
          v30 = 0;
          sub_10008A108(&v29, a1[3 * v4 + 15], a1[3 * v4 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * v4 + 16] - a1[3 * v4 + 15]) >> 3));
          v20 = *(&v29 + 1);
          v19 = v29;
          if (v29 != *(&v29 + 1))
          {
            do
            {
              if (*(v19 + 16) == 1)
              {
                v21 = *(v19 + 8);
                if (v21)
                {
                  sub_100004AA0(&v23, a1 + 4);
                  if (v23)
                  {
                    v22 = v23 + 24;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v25 = v22;
                  v26 = v24;
                  v23 = 0;
                  v24 = 0;
                  (*(*v21 + 64))(v21, v4, &v25);
                  if (v26)
                  {
                    sub_100004A34(v26);
                  }

                  if (v24)
                  {
                    sub_100004A34(v24);
                  }

                  sub_100740A20(a1, v4, *(v19 + 8), 0);
                }
              }

              v19 += 24;
            }

            while (v19 != v20);
            v19 = v29;
          }

          if (v19)
          {
            *(&v29 + 1) = v19;
            operator delete(v19);
          }
        }
      }
    }

    (*(*a1 + 1216))(a1, a2);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v9 = a1[8];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handleDataContextAborted";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_10074CF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10074D044(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (validContextType())
  {
    v6 = a1 + 24 * v4;
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
    while (v7 != v8)
    {
      if ((*(v7 + 16) & 1) != 0 || (v11 = otherContextType(), sub_100741BB8(a1, v11) == 3) && (v12 = otherContextType(), sub_10008F964(a1, v12, *(v7 + 8))))
      {
        v9 = (*(**(v7 + 8) + 264))(*(v7 + 8));
        if ((v10 & 0x10000) != 0)
        {
          if ((v9 & 0x10000000000) == 0)
          {
            return 1;
          }
        }

        else if ((v9 & 0x10000000000) == 0 && !a3)
        {
          return 1;
        }
      }

      v7 += 24;
    }
  }

  else
  {
    v13 = *(a1 + 64);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v15 = 136315394;
    v16 = "hasIllegalConnectionsWhileInternationalDataRoamingNotAllowed";
    v17 = 2080;
    v18 = asString();
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v15, 0x16u);
  }

  return 0;
}

uint64_t sub_10074D1D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[14];
  if (v10)
  {
    (*(*v10 + 352))(v10, 0);
  }

  if (anyContextType())
  {
    LODWORD(a2) = 0;
    for (i = 0; i != 2; ++i)
    {
      LODWORD(a2) = (*(*a1 + 672))(a1, dword_101836038[i], a3, a4, a5) | a2;
    }

    return a2 & 1;
  }

  v12 = a1[8];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_100741BB8(a1, a2);
    *buf = 136315906;
    *&buf[4] = "deactivateDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    v64 = 2080;
    v65 = asString();
    v66 = 2080;
    v67 = asString();
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: state %s ct %s reason %s", buf, 0x2Au);
  }

  if (!validContextType())
  {
    goto LABEL_62;
  }

  v13 = sub_100741BB8(a1, a2);
  if ((v13 - 2) < 2)
  {
    v26 = a1[14];
    if (v26)
    {
      sub_100004AA0(buf, a1 + 4);
      if (*buf)
      {
        v27 = *buf + 24;
      }

      else
      {
        v27 = 0;
      }

      v57 = v27;
      v58 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v28 = (*(*v26 + 368))(v26, &v57);
      if (v58)
      {
        sub_100004A34(v58);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v28)
      {
        v29 = a1[8];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = asString();
          sub_100741BB8(a1, a2);
          v31 = asString();
          v32 = asString();
          *buf = 136316162;
          *&buf[4] = "deactivateDataSettings";
          *&buf[12] = 2080;
          *&buf[14] = v30;
          v64 = 2080;
          v65 = a4;
          v66 = 2080;
          v67 = v31;
          v68 = 2080;
          v69 = v32;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: requested, because of %s('%s'), in state %s on %s (2)", buf, 0x34u);
        }

        v33 = a1[14];
        (*(*a1 + 16))(&v55, a1);
        LOBYTE(a2) = (*(*v33 + 264))(v33, a2, &v55, a3, a5);
        v34 = v56;
        if (!v56)
        {
          return a2 & 1;
        }

LABEL_37:
        sub_100004A34(v34);
        return a2 & 1;
      }
    }

    v35 = a1[8];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = asString();
      *buf = 136315394;
      *&buf[4] = "deactivateDataSettings";
      *&buf[12] = 2080;
      *&buf[14] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#E %s: !!! deactivation without current active PDPActivator (%s)", buf, 0x16u);
    }

    (*(*a1 + 1240))(a1, a2, 0);
    (*(*a1 + 464))(a1, a2);
    goto LABEL_54;
  }

  if (v13 == 1)
  {
    v37 = a1[14];
    v38 = a1[8];
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    if (v37)
    {
      if (v39)
      {
        v40 = asString();
        sub_100741BB8(a1, a2);
        v41 = asString();
        v42 = asString();
        *buf = 136316162;
        *&buf[4] = "deactivateDataSettings";
        *&buf[12] = 2080;
        *&buf[14] = v40;
        v64 = 2080;
        v65 = a4;
        v66 = 2080;
        v67 = v41;
        v68 = 2080;
        v69 = v42;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: requested, because of %s('%s'), in state %s on %s (3)", buf, 0x34u);
        v37 = a1[14];
      }

      sub_100004AA0(buf, a1 + 4);
      if (*buf)
      {
        v43 = *buf + 24;
      }

      else
      {
        v43 = 0;
      }

      v53 = v43;
      v54 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      (*(*v37 + 48))(v37, &v53);
      if (v54)
      {
        sub_100004A34(v54);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    else if (v39)
    {
      v44 = asString();
      *buf = 136315394;
      *&buf[4] = "deactivateDataSettings";
      *&buf[12] = 2080;
      *&buf[14] = v44;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#E %s: !!! deactivation (on grab) without current active PDPActivator (%s)", buf, 0x16u);
    }

    (*(*a1 + 464))(a1, a2);
    goto LABEL_54;
  }

  if (v13)
  {
LABEL_54:
    LOBYTE(a2) = 1;
    return a2 & 1;
  }

  v14 = a1[14];
  if (!v14)
  {
    goto LABEL_58;
  }

  sub_100004AA0(buf, a1 + 4);
  if (*buf)
  {
    v15 = *buf + 24;
  }

  else
  {
    v15 = 0;
  }

  v61 = v15;
  v62 = *&buf[8];
  *buf = 0;
  *&buf[8] = 0;
  v16 = (*(*v14 + 368))(v14, &v61);
  if (v62)
  {
    sub_100004A34(v62);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v17 = a1[14];
  if (!v16)
  {
    if (v17)
    {
      v45 = a1[8];
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      v46 = asString();
      *buf = 136315394;
      *&buf[4] = "deactivateDataSettings";
      *&buf[12] = 2080;
      *&buf[14] = v46;
      v23 = "#I %s: this is not our activator (%s)";
LABEL_60:
      v24 = v45;
      v25 = 22;
      goto LABEL_61;
    }

LABEL_58:
    v45 = a1[8];
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v47 = asString();
    *buf = 136315394;
    *&buf[4] = "deactivateDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = v47;
    v23 = "#I %s: activator is empty (%s)";
    goto LABEL_60;
  }

  v18 = (*(*v17 + 80))(v17, a2);
  v19 = a1[8];
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = asString();
      v22 = asString();
      *buf = 136315650;
      *&buf[4] = "deactivateDataSettings";
      *&buf[12] = 2080;
      *&buf[14] = v21;
      v64 = 2080;
      v65 = v22;
      v23 = "#I %s: nothing to deactivate for %s (%s)";
      v24 = v19;
      v25 = 32;
LABEL_61:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }

LABEL_62:
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  if (v20)
  {
    v49 = asString();
    sub_100741BB8(a1, a2);
    v50 = asString();
    v51 = asString();
    *buf = 136316162;
    *&buf[4] = "deactivateDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = v49;
    v64 = 2080;
    v65 = a4;
    v66 = 2080;
    v67 = v50;
    v68 = 2080;
    v69 = v51;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: requested, because of %s('%s'), in state %s on %s (1)", buf, 0x34u);
  }

  v52 = a1[14];
  (*(*a1 + 16))(&v59, a1);
  LOBYTE(a2) = (*(*v52 + 264))(v52, a2, &v59, a3, a5);
  v34 = v60;
  if (v60)
  {
    goto LABEL_37;
  }

  return a2 & 1;
}

void sub_10074DAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10074DB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "resetDataSettings";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    *&buf[22] = 2080;
    v29 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: resetting settings %s due to %s", buf, 0x20u);
  }

  for (i = 0; i != 2; ++i)
  {
    v8 = dword_101836038[i];
    if (v8 == v4 || anyContextType())
    {
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *(a1 + 120 + 24 * v8), *(a1 + 120 + 24 * v8 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v8 + 8) - *(a1 + 120 + 24 * v8)) >> 3));
      v9 = *buf;
      v10 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v11 = (*buf + 8);
        do
        {
          if (*(v11 + 8) == 1)
          {
            v12 = *(a1 + 112);
            if (v12 && (v13 = otherContextType(), (*(*v12 + 320))(v12, v13)) && !anyContextType())
            {
              v16 = otherContextType();
              v15 = (v9 + 8);
              v14 = 1;
            }

            else
            {
              (*(**v11 + 368))(*v11, a3);
              v14 = 0;
              v15 = v11;
              v16 = v8;
            }

            sub_100740A20(a1, v16, *v15, v14);
          }

          v9 += 24;
          v17 = v11 + 2;
          v11 += 3;
        }

        while (v17 != v10);
      }

      *(a1 + 232 + 4 * v8) = 0;
      *(a1 + 240 + v8) = 0;
      v18 = (a1 + 312 + 16 * v8);
      v19 = v18[1];
      *v18 = 0;
      v18[1] = 0;
      if (v19)
      {
        sub_100004A34(v19);
      }

      v20 = a1 + 360 + 16 * v8;
      v22 = *(v20 + 8);
      v21 = (v20 + 8);
      if (v22 == 1)
      {
        *v21 = 0;
      }

      *(a1 + 448 + 4 * v8) = 0;
      v23 = (a1 + 456 + 56 * v8);
      *v23 = 0;
      v23[1] = "";
      v23[2] = "";
      v23[3] = 0;
      v23[4] = 2;
      v24 = v23[6];
      v23[5] = 0;
      v23[6] = 0;
      if (v24)
      {
        sub_100004A34(v24);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }
  }

  *(a1 + 568) = 0u;
  v25 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v25)
  {
    sub_100004A34(v25);
  }

  *(a1 + 592) = 2;
  v26 = *(a1 + 440);
  *(a1 + 440) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  sub_100741C98(a1 + 664);
  return (*(*a1 + 688))(a1, "settings resetting", 1, 0);
}

void sub_10074DF08(uint64_t a1, uint64_t a2, BOOL a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asStringBool(a3);
    if (a4)
    {
      v10 = (*(*a4 + 16))(a4);
    }

    else
    {
      v10 = "null";
    }

    v11 = asStringBool(*(a1 + 596));
    *buf = 136316162;
    *&buf[4] = "detachActivator";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    *&buf[22] = 2080;
    v44 = v9;
    v45 = 2080;
    v46 = v10;
    v47 = 2080;
    v48 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: detaching due to : %s forced : %s requestingObserver : %s detaching : %s", buf, 0x34u);
  }

  if (*(a1 + 596))
  {
    return;
  }

  *(a1 + 596) = 1;
  v12 = *(a1 + 112);
  if (!v12 || !(*(*v12 + 80))(v12, 2) || *(a1 + 232) || *(a1 + 236) || !(*(**(a1 + 112) + 16))(*(a1 + 112)) && sub_1000C5B50(a1))
  {
    goto LABEL_11;
  }

  v35 = (*(**(a1 + 112) + 16))(*(a1 + 112));
  if (a3)
  {
    goto LABEL_35;
  }

  v13 = 0;
  while (2)
  {
    v14 = dword_101836038[v13];
    v40 = 0;
    v41 = 0;
    v42 = 0;
    sub_10008A108(&v40, *(a1 + 120 + 24 * v14), *(a1 + 120 + 24 * v14 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v14 + 8) - *(a1 + 120 + 24 * v14)) >> 3));
    v16 = v40;
    v15 = v41;
    if (v40 == v41)
    {
      v21 = 1;
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    while (1)
    {
      if (LOBYTE(v16->__shared_weak_owners_) == 1)
      {
        shared_owners = v16->__shared_owners_;
        if (shared_owners != a4)
        {
          break;
        }
      }

LABEL_25:
      if (++v16 == v15)
      {
        v21 = 1;
        goto LABEL_31;
      }
    }

    if (!a4 && ((*(*shared_owners + 128))(shared_owners) & 1) == 0 && (*(*v16->__shared_owners_ + 192))(v16->__shared_owners_) == 5)
    {
      v18 = *(a1 + 64);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = (*(*v16->__shared_owners_ + 16))(v16->__shared_owners_);
        v20 = asString();
        *buf = 136315650;
        *&buf[4] = "detachActivator";
        *&buf[12] = 2080;
        *&buf[14] = v19;
        *&buf[22] = 2080;
        v44 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: ephemeral observer %s is current on idle %s", buf, 0x20u);
      }

      goto LABEL_25;
    }

    v22 = *(a1 + 64);
    v21 = 0;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (*(*v16->__shared_owners_ + 16))(v16->__shared_owners_);
      v24 = asString();
      *buf = 136315650;
      *&buf[4] = "detachActivator";
      *&buf[12] = 2080;
      *&buf[14] = v23;
      *&buf[22] = 2080;
      v44 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: cannot detach because %s is current on %s", buf, 0x20u);
      v21 = 0;
    }

LABEL_31:
    v16 = v40;
    if (v40)
    {
LABEL_32:
      v41 = v16;
      operator delete(v16);
    }

LABEL_33:
    if (v21)
    {
      if (++v13 == 2)
      {
LABEL_35:
        v25 = *(a1 + 112);
        sub_100004AA0(buf, (a1 + 32));
        if (*buf)
        {
          v26 = *buf + 24;
        }

        else
        {
          v26 = 0;
        }

        v38 = v26;
        v39 = *&buf[8];
        *buf = 0;
        *&buf[8] = 0;
        v27 = (*(*v25 + 104))(v25, &v38);
        if (v39)
        {
          sub_100004A34(v39);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v27)
        {
          v28 = *(a1 + 64);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "detachActivator";
            *&buf[12] = 1024;
            *&buf[14] = v35;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) detached from PDP %d", buf, 0x12u);
          }

          v29 = 0;
          *(a1 + 112) = 0;
          do
          {
            v30 = dword_101836038[v29];
            memset(buf, 0, sizeof(buf));
            sub_10008A108(buf, *(a1 + 120 + 24 * v30), *(a1 + 120 + 24 * v30 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v30 + 8) - *(a1 + 120 + 24 * v30)) >> 3));
            v31 = *buf;
            v32 = *&buf[8];
            if (*buf != *&buf[8])
            {
              do
              {
                if (*(v31 + 16) == 1)
                {
                  sub_100740A20(a1, v30, *(v31 + 8), 0);
                  v33 = *(v31 + 8);
                  sub_100004AA0(&v40, (a1 + 32));
                  if (v40)
                  {
                    v34 = v40 + 1;
                  }

                  else
                  {
                    v34 = 0;
                  }

                  v36 = v34;
                  v37 = v41;
                  v40 = 0;
                  v41 = 0;
                  (*(*v33 + 64))(v33, v30, &v36);
                  if (v37)
                  {
                    sub_100004A34(v37);
                  }

                  if (v41)
                  {
                    sub_100004A34(v41);
                  }

                  (*(**(v31 + 8) + 368))(*(v31 + 8), "detach activator");
                }

                v31 += 24;
              }

              while (v31 != v32);
              v31 = *buf;
            }

            if (v31)
            {
              *&buf[8] = v31;
              operator delete(v31);
            }

            ++v29;
          }

          while (v29 != 2);
        }

        break;
      }

      continue;
    }

    break;
  }

LABEL_11:
  *(a1 + 596) = 0;
}

void sub_10074E570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  *(v22 + 596) = 0;
  _Unwind_Resume(exception_object);
}

void sub_10074E614(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "clearActivator";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: clearing activator", buf, 0xCu);
  }

  v3 = *(a1 + 112);
  if (v3 && (*(*v3 + 80))(v3, 2) && !*(a1 + 232) && !*(a1 + 236) && ((*(**(a1 + 112) + 16))(*(a1 + 112)) || !sub_1000C5B50(a1)))
  {
    v4 = (*(**(a1 + 112) + 16))(*(a1 + 112));
    v5 = *(a1 + 64);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "clearActivator";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) cleared from PDP %d", buf, 0x12u);
    }

    v6 = 0;
    *(a1 + 112) = 0;
    do
    {
      v7 = dword_101836038[v6];
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *(a1 + 120 + 24 * v7), *(a1 + 120 + 24 * v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v7 + 8) - *(a1 + 120 + 24 * v7)) >> 3));
      v8 = *buf;
      v9 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          if (*(v8 + 16) == 1)
          {
            sub_100740A20(a1, v7, *(v8 + 8), 0);
            v10 = *(v8 + 8);
            sub_100004AA0(&v12, (a1 + 32));
            if (v12)
            {
              v11 = v12 + 24;
            }

            else
            {
              v11 = 0;
            }

            v14 = v11;
            v15 = v13;
            v12 = 0;
            v13 = 0;
            (*(*v10 + 64))(v10, v7, &v14);
            if (v15)
            {
              sub_100004A34(v15);
            }

            if (v13)
            {
              sub_100004A34(v13);
            }

            (*(**(v8 + 8) + 368))(*(v8 + 8), "detach activator");
          }

          v8 += 24;
        }

        while (v8 != v9);
        v8 = *buf;
      }

      if (v8)
      {
        *&buf[8] = v8;
        operator delete(v8);
      }

      ++v6;
    }

    while (v6 != 2);
  }
}

uint64_t sub_10074E978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, uint64_t a6)
{
  v12 = a1[8];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "requestQos";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v13 = a1[14];
  if (!v13)
  {
    return 0;
  }

  (*(*a1 + 16))(&v17, a1);
  sub_100010024(&v16, a5);
  v14 = (*(*v13 + 136))(v13, a2, &v17, a3, a4, &v16, a6);
  sub_10001021C(&v16);
  if (v18)
  {
    sub_100004A34(v18);
  }

  return v14;
}

void sub_10074EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10074EB1C(void *a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v8 = a1[8];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "setPacketNotificationFilter";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v9 = a1[14];
  if (v9)
  {
    (*(*a1 + 16))(&v11, a1);
    sub_100010024(&v10, a4);
    (*(*v9 + 144))(v9, a2, &v11, a3, &v10);
    sub_10001021C(&v10);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }
}

void sub_10074EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10074EC98(void *a1, uint64_t a2, const void **a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "dropIPPackets";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v7 = a1[14];
  if (v7)
  {
    (*(*a1 + 16))(&v9, a1);
    sub_10006F22C(&v8, a3);
    (*(*v7 + 152))(v7, a2, &v9, &v8);
    sub_100010250(&v8);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_10074EDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100010250(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10074EE04(void *a1, uint64_t a2)
{
  v4 = a1[8];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "dropIMSPackets";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v5 = a1[14];
  if (v5)
  {
    (*(*a1 + 16))(&v6, a1);
    (*(*v5 + 160))(v5, a2, &v6);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }
}

void sub_10074EF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074EF4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[8];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "setQuality";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  v9 = a1[14];
  if (v9)
  {
    (*(*a1 + 16))(&v10, a1);
    (*(*v9 + 168))(v9, a2, &v10, a3, a4);
    if (v11)
    {
      sub_100004A34(v11);
    }
  }
}

void sub_10074F084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074F0AC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[14];
  if (v4)
  {
    (*(*a1 + 16))(&v9, a1);
    v7 = (*(*a1 + 136))(a1, 0, 0, 0);
    (*(*v4 + 408))(v4, &v9, a2, a3, v7);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  else
  {
    v8 = a1[8];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E invalid fDataActivator", buf, 2u);
    }
  }
}

void sub_10074F1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10074F1F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136315138;
    *&v10[4] = "handleDataContextGrabbed";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", v10, 0xCu);
  }

  v7 = a1[14];
  if (v7 == a3)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10177C8D4(a1 + 14, v10);
    v7 = *v10;
  }

  if (v7 == a3 || (__TUAssertTrigger("dataActivator == fDataActivator"), a1[14] == a3))
  {
LABEL_8:
    v8 = sub_100741BB8(a1, a2);
    if (v8 == 1)
    {
      (*(*a1 + 1240))(a1, a2, 0);
      (*(*a1 + 1224))(a1, a2);
      sub_1007486F8(a1, a2);
    }

    v9 = otherContextType();
    if (sub_100741BB8(a1, v9) == 1)
    {
      (*(*a1 + 1240))(a1, v9, 0);
      if (v8 != 1)
      {
        (*(*a1 + 1224))(a1, v9);
        sub_1007486F8(a1, v9);
      }
    }
  }
}

void sub_10074F450(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 136315138;
    *&v13[4] = "handleDataContextGrabRejected";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: start", v13, 0xCu);
  }

  v7 = a1[14];
  if (v7 == a3)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10177C988(a1 + 14, v13);
    v7 = *v13;
  }

  if (v7 == a3 || (__TUAssertTrigger("dataActivator == fDataActivator"), a1[14] == a3))
  {
LABEL_8:
    v8 = sub_100741BB8(a1, a2);
    if (v8 == 1)
    {
      sub_1007435C0(a1, a2, 4294967287);
      (*(*a1 + 480))(a1, a2);
    }

    v9 = otherContextType();
    if (sub_100741BB8(a1, v9) == 1)
    {
      (*(*a1 + 1240))(a1, v9, 0);
      sub_1007435C0(a1, v9, 4294967287);
      (*(*a1 + 480))(a1, v9);
    }

    else if (v8 != 1)
    {
      v10 = sub_100741BB8(a1, a2);
      if ((v10 - 1) < 2)
      {
        (*(*a1 + 1240))(a1, a2, 0);
        sub_1007435C0(a1, a2, 4294967287);
        (*(*a1 + 480))(a1, a2);
      }

      else if (v10)
      {
        if (v10 == 3)
        {
          (*(*a1 + 464))(a1, a2);
        }
      }

      else
      {
        v11 = a1[8];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          sub_100741BB8(a1, a2);
          v12 = asString();
          *v13 = 136315394;
          *&v13[4] = "handleDataContextGrabRejected";
          v14 = 2080;
          v15 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: ERR: At wrong state %s", v13, 0x16u);
        }
      }
    }
  }
}

uint64_t sub_10074F7C8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (validContextType())
  {
    memset(v12, 0, sizeof(v12));
    sub_10008A108(v12, *(a1 + 24 * v2 + 120), *(a1 + 24 * v2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * v2 + 128) - *(a1 + 24 * v2 + 120)) >> 3));
    v4 = v12[0];
    v5 = v12[1];
    if (v12[0] == v12[1])
    {
      v8 = 0;
      if (!v12[0])
      {
        return v8;
      }
    }

    else
    {
      v6 = v12[0] + 24;
      do
      {
        v7 = (*(**(v6 - 16) + 160))(*(v6 - 16));
        v8 = v7;
        if (v6 == v5)
        {
          v9 = 1;
        }

        else
        {
          v9 = v7;
        }

        v6 += 24;
      }

      while (v9 != 1);
      v4 = v12[0];
      if (!v12[0])
      {
        return v8;
      }
    }

    v12[1] = v4;
    operator delete(v4);
    return v8;
  }

  v10 = *(a1 + 64);
  v8 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12[0]) = 136315394;
    *(v12 + 4) = "isSMSOverIMSnoVoLTEEnabled";
    WORD2(v12[1]) = 2080;
    *(&v12[1] + 6) = asString();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v12, 0x16u);
    return 0;
  }

  return v8;
}

uint64_t sub_10074F970(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (validContextType())
  {
    memset(v12, 0, sizeof(v12));
    sub_10008A108(v12, *(a1 + 24 * v2 + 120), *(a1 + 24 * v2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * v2 + 128) - *(a1 + 24 * v2 + 120)) >> 3));
    v4 = v12[0];
    v5 = v12[1];
    if (v12[0] == v12[1])
    {
      v8 = 0;
      if (!v12[0])
      {
        return v8;
      }
    }

    else
    {
      v6 = v12[0] + 24;
      do
      {
        v7 = (*(**(v6 - 16) + 224))(*(v6 - 16));
        v8 = v7;
        if (v6 == v5)
        {
          v9 = 1;
        }

        else
        {
          v9 = v7;
        }

        v6 += 24;
      }

      while (v9 != 1);
      v4 = v12[0];
      if (!v12[0])
      {
        return v8;
      }
    }

    v12[1] = v4;
    operator delete(v4);
    return v8;
  }

  v10 = *(a1 + 64);
  v8 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12[0]) = 136315394;
    *(v12 + 4) = "isDadRequired";
    WORD2(v12[1]) = 2080;
    *(&v12[1] + 6) = asString();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v12, 0x16u);
    return 0;
  }

  return v8;
}

uint64_t sub_10074FB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (validContextType())
  {
    memset(v11, 0, sizeof(v11));
    sub_10008A108(v11, *(a1 + 24 * v4 + 120), *(a1 + 24 * v4 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * v4 + 128) - *(a1 + 24 * v4 + 120)) >> 3));
    v6 = v11[0];
    v7 = v11[1];
    if (v11[0] == v11[1])
    {
      v8 = 1;
      if (!v11[0])
      {
        return v8;
      }

      goto LABEL_13;
    }

    while (!sub_1007490E0(a1, v6) || ((*(**(v6 + 8) + 216))(*(v6 + 8), a3) & 1) != 0)
    {
      v6 += 24;
      if (v6 == v7)
      {
        v8 = 1;
        goto LABEL_12;
      }
    }

    v8 = 0;
LABEL_12:
    v6 = v11[0];
    if (v11[0])
    {
LABEL_13:
      v11[1] = v6;
      operator delete(v6);
    }
  }

  else
  {
    v9 = *(a1 + 64);
    v8 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11[0]) = 136315394;
      *(v11 + 4) = "deactivateWithReasonAllowed";
      WORD2(v11[1]) = 2080;
      *(&v11[1] + 6) = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v11, 0x16u);
      return 0;
    }
  }

  return v8;
}

uint64_t sub_10074FCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (validContextType())
  {
    memset(v11, 0, sizeof(v11));
    sub_10008A108(v11, *(a1 + 24 * v4 + 120), *(a1 + 24 * v4 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24 * v4 + 128) - *(a1 + 24 * v4 + 120)) >> 3));
    v6 = v11[0];
    v7 = v11[1];
    if (v11[0] == v11[1])
    {
      v8 = 0;
      if (!v11[0])
      {
        return v8;
      }

      goto LABEL_13;
    }

    while (!sub_1007490E0(a1, v6) || ((*(**(v6 + 8) + 168))(*(v6 + 8), a3) & 1) == 0)
    {
      v6 += 24;
      if (v6 == v7)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v8 = 1;
LABEL_12:
    v6 = v11[0];
    if (v11[0])
    {
LABEL_13:
      v11[1] = v6;
      operator delete(v6);
    }
  }

  else
  {
    v9 = *(a1 + 64);
    v8 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11[0]) = 136315394;
      *(v11 + 4) = "shouldDeactivateBeDelayed";
      WORD2(v11[1]) = 2080;
      *(&v11[1] + 6) = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", v11, 0x16u);
      return 0;
    }
  }

  return v8;
}

const void **sub_10074FEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v49 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
  v14 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v12 + 96))(v47, v12, v14, 1, @"NoDafPopupTemporaryErrors", 0, 0);
  sub_100060DE8(&v49, v47);
  sub_10000A1EC(v47);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v49)
  {
    memset(buf, 0, sizeof(buf));
    v53 = 0;
    ctu::cf::assign();
    *v47 = *buf;
    v48 = v53;
    v15 = *(a1 + 64);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v47;
      if (v48 < 0)
      {
        v16 = v47[0];
      }

      *buf = 136446210;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I noPopupDafListStr = %{public}s", buf, 0xCu);
    }

    memset(buf, 0, sizeof(buf));
    v53 = 0;
    DataUtils::tokenizeWithBasicDelimiters();
    v17 = *buf;
    v18 = *&buf[8];
    if (*buf != *&buf[8])
    {
      while (1)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        sub_10000501C(__p, ":");
        DataUtils::tokenize();
        if (v51 < 0)
        {
          operator delete(*__p);
        }

        v19 = v44;
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3);
        if (v20 == 2)
        {
          break;
        }

        if (v20 == 1)
        {
          v21 = 0;
          if (v44[23] < 0)
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        v33 = *(a1 + 64);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v17;
          if (*(v17 + 23) < 0)
          {
            v34 = *v17;
          }

          *__p = 136446210;
          *&__p[4] = v34;
          v35 = v33;
          v36 = "#E wrong token in noPopupDafListStr = %{public}s";
          v37 = 12;
LABEL_45:
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, __p, v37);
        }

LABEL_46:
        *__p = &v44;
        sub_1000087B4(__p);
        v17 += 3;
        if (v17 == v18)
        {
          goto LABEL_47;
        }
      }

      v31 = v44;
      if (v44[23] < 0)
      {
        v31 = *v44;
      }

      v21 = atoi(v31);
      v32 = v19[47];
      v19 += 24;
      if (v32 < 0)
      {
LABEL_22:
        v19 = *v19;
      }

LABEL_23:
      v22 = atoi(v19);
      v23 = v22;
      v25 = *(a2 + 8);
      v24 = *(a2 + 16);
      if (v25 >= v24)
      {
        v27 = (v25 - *a2) >> 3;
        if ((v27 + 1) >> 61)
        {
          sub_1000CE3D4();
        }

        v28 = v24 - *a2;
        v29 = v28 >> 2;
        if (v28 >> 2 <= (v27 + 1))
        {
          v29 = v27 + 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          sub_10006A8B4(a2, v30);
        }

        v38 = (8 * v27);
        *v38 = v21 | (v22 << 32);
        v26 = 8 * v27 + 8;
        v39 = *(a2 + 8) - *a2;
        v40 = v38 - v39;
        memcpy(v38 - v39, *a2, v39);
        v41 = *a2;
        *a2 = v40;
        *(a2 + 8) = v26;
        *(a2 + 16) = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *v25 = v21 | (v22 << 32);
        v26 = (v25 + 1);
      }

      *(a2 + 8) = v26;
      v42 = *(a1 + 64);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *__p = 67109376;
      *&__p[4] = v21;
      *&__p[8] = 1024;
      *&__p[10] = v23;
      v35 = v42;
      v36 = "#I noPopupDafListStr token: %d/%d";
      v37 = 14;
      goto LABEL_45;
    }

LABEL_47:
    v44 = buf;
    sub_1000087B4(&v44);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }
  }

  return sub_100005978(&v49);
}

void sub_100750330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100005978(&a23);
  v31 = *v29;
  if (*v29)
  {
    *(v29 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100750418(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    v2 = *(v1 + 312);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "not ";
    if (v2)
    {
      v4 = "";
    }

    v6 = 136315394;
    v7 = "isImsAltNameConfigured";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: alt-name is %ssupported", &v6, 0x16u);
  }

  return v2 & 1;
}

uint64_t sub_1007504FC(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    v2 = *(v1 + 233);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "not ";
    if (v2)
    {
      v4 = "";
    }

    v6 = 136315394;
    v7 = "isSwitchOverSupported";
    v8 = 2080;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: switchover is %ssupported", &v6, 0x16u);
  }

  return v2 & 1;
}

void sub_1007505E0(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1[14];
  if (v3)
  {
    (*(*a1 + 16))(&v6);
    (*(*v3 + 312))(v3, 0, &v6, a2, a3);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }
}

void sub_10075069C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007506C0(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 234);
  }

  return v1 & 1;
}

uint64_t sub_1007506D4(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 234);
  }

  return v1 & 1;
}

uint64_t sub_1007506E8(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 235);
  }

  return v1 & 1;
}

uint64_t sub_1007506FC(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 235);
  }

  return v1 & 1;
}

uint64_t sub_100750710(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = *(v2 + 236);
  }

  else
  {
    v3 = 0;
  }

  v31 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_12:
  v14 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v12 + 96))(&v30, v12, v14, 1, @"EnableWiFiN1ModeOnlyWhenSAEnabled", kCFBooleanFalse, 0);
  sub_10002FE1C(&v31, &v30);
  sub_10000A1EC(&v30);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v31, v15);
  if (buf[0] == 1)
  {
    v16 = Registry::getServiceMap(*(a1 + 72));
    v17 = v16;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(v16);
    *buf = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, buf);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        if (!v24)
        {
LABEL_27:
          if ((v25 & 1) == 0)
          {
            sub_100004A34(v23);
          }

          goto LABEL_29;
        }

LABEL_24:
        v26 = PersonalitySpecificImpl::simSlot(a1);
        v27 = (*(*v24 + 752))(v24, v26);
        v28 = *(a1 + 64);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v3 & 1;
          v33 = 1024;
          v34 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Support5GSaHandOver=%d, saCapability=%d", buf, 0xEu);
        }

        v3 &= v27;
        goto LABEL_27;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    if (!v24)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_29:
  sub_100045C8C(&v31);
  return v3 & 1;
}

void sub_100750A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100750A80(uint64_t a1, uint64_t a2)
{
  if ((validContextType() & 1) == 0)
  {
    v11 = *(a1 + 64);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v12 = 136315394;
    v13 = "isContextConfiguredOnConnections";
    v14 = 2080;
    v15 = asString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v12, 0x16u);
    return 0;
  }

  v4 = a1 + 24 * a2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 128);
  if (v5 == v6)
  {
    return 0;
  }

  v7 = v5 + 24;
  do
  {
    v8 = (*(**(v7 - 16) + 184))(*(v7 - 16), a2);
    if (v8)
    {
      v9 = v7 == v6;
    }

    else
    {
      v9 = 1;
    }

    v7 += 24;
  }

  while (!v9);
  return v8 ^ 1u;
}

uint64_t sub_100750BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((validContextType() & 1) == 0)
  {
    v16 = *(a1 + 64);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "handoverPossible";
      v41 = 2080;
      v42 = asString();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }

    return 2;
  }

  if (a3 == 1)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
        if (!v14)
        {
LABEL_31:
          if ((v15 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          goto LABEL_33;
        }

LABEL_14:
        v17 = PersonalitySpecificImpl::simSlot(a1);
        if (!(*(*v14 + 240))(v14, v17))
        {
          goto LABEL_31;
        }

        v39 = 0;
        v18 = Registry::getServiceMap(*(a1 + 72));
        v19 = v18;
        if (v20 < 0)
        {
          v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
          v22 = 5381;
          do
          {
            v20 = v22;
            v23 = *v21++;
            v22 = (33 * v22) ^ v23;
          }

          while (v23);
        }

        std::mutex::lock(v18);
        *buf = v20;
        v24 = sub_100009510(&v19[1].__m_.__sig, buf);
        if (v24)
        {
          v26 = v24[3];
          v25 = v24[4];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v19);
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v25);
            v27 = 0;
LABEL_23:
            v28 = PersonalitySpecificImpl::simSlot(a1);
            (*(*v26 + 96))(&v38, v26, v28, 1, @"PreventWiFiHandoverInEmergency", kCFBooleanFalse, 0);
            sub_10002FE1C(&v39, &v38);
            sub_10000A1EC(&v38);
            if ((v27 & 1) == 0)
            {
              sub_100004A34(v25);
            }

            buf[0] = 0;
            ctu::cf::assign(buf, v39, v29);
            if (buf[0] == 1)
            {
              v30 = *(a1 + 64);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "handoverPossible";
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: Emergency mode - stay on the same transport", buf, 0xCu);
              }

              sub_100045C8C(&v39);
              if ((v15 & 1) == 0)
              {
                sub_100004A34(v13);
              }

              return a2;
            }

            sub_100045C8C(&v39);
            goto LABEL_31;
          }
        }

        else
        {
          v26 = 0;
        }

        std::mutex::unlock(v19);
        v25 = 0;
        v27 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_14;
  }

LABEL_33:
  v31 = a1 + 24 * a2;
  v32 = *(v31 + 120);
  v33 = *(v31 + 128);
  if (v32 == v33)
  {
    return 2;
  }

  v34 = 1;
  v35 = a3;
  do
  {
    if (sub_1007490E0(a1, v32))
    {
      v36 = (*(**(v32 + 8) + 176))(*(v32 + 8), a2, a3);
      if (v36 == a3)
      {
        v34 = 0;
      }

      else
      {
        if (v36 == a2)
        {
          return a2;
        }

        v34 = 0;
        v35 = 2;
      }
    }

    v32 += 24;
  }

  while (v32 != v33);
  if (v34)
  {
    return 2;
  }

  else
  {
    return v35;
  }
}

void sub_100750FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100751040(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[14];
  if (!v3)
  {
    return 1;
  }

  (*(*a1 + 16))(&v8);
  v6 = (*(*v3 + 424))(v3, a2, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return v6;
}

void sub_100751108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100751128(Registry **a1)
{
  if (!(*(*a1 + 135))(a1))
  {
    v2 = 0;
    return v2 & 1;
  }

  if (sub_1000C5B50(a1))
  {
    v2 = 1;
    return v2 & 1;
  }

  v17 = 0;
  ServiceMap = Registry::getServiceMap(a1[9]);
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
  v18 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v18);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_12:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_13:
  v13 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v11 + 96))(&v16, v11, v13, 1, @"PreventCellularHandoverInIdleCelWWANForNDDS", kCFBooleanFalse, 0);
  sub_10002FE1C(&v17, &v16);
  sub_10000A1EC(&v16);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  LOBYTE(v18) = 0;
  ctu::cf::assign(&v18, v17, v14);
  v2 = v18 ^ 1;
  sub_100045C8C(&v17);
  return v2 & 1;
}

void sub_1007512E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void sub_100751320(PersonalitySpecificImpl *a1, int a2)
{
  if ((*(*a1 + 1080))(a1))
  {
    v4 = 0;
    for (i = 0; i != 2; ++i)
    {
      v6 = (a1 + 24 * dword_101836038[i] + 120);
      v7 = *v6;
      v8 = v6[1];
      while (v7 != v8)
      {
        if (*(v7 + 16) == 1)
        {
          v4 |= (*(**(v7 + 8) + 136))(*(v7 + 8));
        }

        v7 += 24;
      }
    }

    if (v4)
    {
      v9 = sub_1000C2A4C(a1, 0, 0);
      v10 = (*(*a1 + 928))(a1);
      v11 = PersonalitySpecificImpl::simSlot(a1);
      if (v11 == a2 || v9 != 1 || v10 || !capabilities::ct::supportsGemini(v11))
      {
        sub_10000501C(__p, "Check if need to switch to delayed iRat type after call finish");
        v13 = (*(*a1 + 1248))(a1, v9, __p);
        v14 = v13;
        if (v18 < 0)
        {
          operator delete(*__p);
          if (v14)
          {
            return;
          }
        }

        else if (v13)
        {
          return;
        }

        sub_100748B24(a1, v9);
        return;
      }

      v12 = *(a1 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = asString();
        v16 = 2080;
        v17 = asString();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Vega switchoverto after call: let's not try Vega HO at this point: contextType=%s, transportType=%s", __p, 0x16u);
      }
    }
  }
}

void sub_100751590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007515BC(Registry **this, uint64_t a2, __int128 **a3, int a4)
{
  if (!a4)
  {
LABEL_35:
    LODWORD(__p) = PersonalitySpecificImpl::simSlot(this);
    v32 = 0;
    v33 = 0;
    *(&__p + 1) = 0;
    sub_10004EFD0(&__p + 8, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    v34 = (*(*this + 17))(this, a2, 1, 0);
    v35 = a2;
    sub_1007519DC((this + 11), &__p);
    v28 = &__p + 1;
    sub_1000087B4(&v28);
    return;
  }

  ServiceMap = Registry::getServiceMap(this[9]);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *&__p = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &__p);
  if (!v13)
  {
    v15 = 0;
LABEL_13:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
LABEL_8:
    v17 = this[8];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10177CAD8(v17, v18, v19);
    }

    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    goto LABEL_35;
  }

LABEL_14:
  __p = 0uLL;
  v32 = 0;
  (*(*this + 102))(&__p, this);
  v28 = 0;
  v29 = 0;
  (*(*v15 + 40))(&v28, v15, &__p);
  if (v28)
  {
    cf = 0;
    (*v28)[5](&cf);
    v20 = cf;
    v30 = 0;
    if (cf && (v21 = CFGetTypeID(cf), v21 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v30, v20, v22);
      v23 = v30;
    }

    else
    {
      v23 = 0;
    }

    sub_10000A1EC(&cf);
  }

  else
  {
    v24 = this[8];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177CA3C(&__p, v24, v25);
    }

    v23 = 0;
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((v23 & 1) == 0)
  {
    goto LABEL_32;
  }

  v26 = this[8];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 136315138;
    *(&__p + 4) = "proxyUpdate";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: suppressed proxy change in handover", &__p, 0xCu);
    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    return;
  }

LABEL_32:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_35;
  }
}

void sub_100751958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007519DC(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/proxy_update");
  object = v5;
  v5 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_100751A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_100751ABC(Registry **a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(a1[9]);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
  if (!v12)
  {
    v14 = 0;
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (v14)
  {
LABEL_10:
    v16 = PersonalitySpecificImpl::simSlot(a1);
    v17 = (*(*a1 + 17))(a1, a2, 1, 0);
    (*(*v14 + 744))(v14, v16, a3, v17);
  }

LABEL_11:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_100751C30(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100751C50(Registry **a1, uint64_t a2, void **a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    *buf = 136315650;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 2080;
    v130 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: context type = %s, reason = %s", buf, 0x20u);
  }

  if (!a1[14])
  {
    v17 = a1[8];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "switchOverTo";
    v14 = "#I %s: activator empty";
LABEL_18:
    v15 = v17;
    v16 = 12;
    goto LABEL_19;
  }

  if (((*(*a1 + 135))(a1) & 1) == 0)
  {
    v17 = a1[8];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "switchOverTo";
    v14 = "#I %s: switchover not supported";
    goto LABEL_18;
  }

  if (!validContextType())
  {
    return 0;
  }

  v9 = sub_1000C45A8(a1, 0, 0);
  v10 = validContextType() ^ 1;
  if (v9 == a2)
  {
    LOBYTE(v10) = 1;
  }

  if ((v10 & 1) == 0)
  {
    v11 = a1[8];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      v13 = asString();
      *buf = 136315650;
      *&buf[4] = "switchOverTo";
      *&buf[12] = 2080;
      *&buf[14] = v12;
      *&buf[22] = 2080;
      v130 = v13;
      v14 = "#I %s: Forced Context Type is %s, forbidden to switch to %s";
      v15 = v11;
      v16 = 32;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }

    return 0;
  }

  v110 = sub_10074B638(a1);
  if ((validContextType() & 1) == 0)
  {
    v17 = a1[8];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315138;
    *&buf[4] = "switchOverTo";
    v14 = "#I %s: no valid current context type";
    goto LABEL_18;
  }

  v128 = 0;
  v108 = (*(*a1 + 116))(a1);
  v20 = v110;
  if (v110 == a2)
  {
    if (a2 != 1)
    {
      goto LABEL_69;
    }

    if (sub_1007496A4(a1, 1, v108, &v128))
    {
      v21 = v128;
      v22 = a1[8];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = asStringBool(v21);
        v24 = asString();
        *buf = 136315650;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v23;
        *&buf[22] = 2080;
        v130 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Mobike is possible. shouldSwitch: %s, preferredTransportType: %s", buf, 0x20u);
        v20 = v110;
        if (v21)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v20 = v110;
        if (v21)
        {
          goto LABEL_57;
        }
      }

LABEL_69:
      v44 = 0;
      v45 = 0;
      goto LABEL_110;
    }

    if (sub_1007534AC(a1, 1, v108))
    {
      v37 = a1[8];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = asString();
        *buf = 136315394;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s: iRat transport type is changed to %s. We should deactivate", buf, 0x16u);
      }

      v107 = 0;
      v39 = 0;
      v40 = "transport type changed";
LABEL_51:
      v109 = v40;
      goto LABEL_85;
    }

    goto LABEL_55;
  }

  v25 = a1[8];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asString();
    v27 = asString();
    *buf = 136315650;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v26;
    *&buf[22] = 2080;
    v130 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: Currently activated or activating on %s, iRat recommend %s: see if we can switch...", buf, 0x20u);
    v20 = v110;
  }

  v28 = sub_100750BB8(a1, v20, a2);
  if (v28 != a2)
  {
    v20 = v110;
    if (v28 == v110)
    {
      v36 = a1[8];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "switchOverTo";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: handoverPossible got same context type, staying on it", buf, 0xCu);
      }

      goto LABEL_69;
    }

    if ((validContextType() & 1) == 0)
    {
      v41 = a1[8];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "switchOverTo";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: handoverPossible got unknown, deactivating", buf, 0xCu);
      }

      v107 = 0;
      v39 = 0;
      v40 = "Should deactivate rather than switchover";
      goto LABEL_51;
    }

LABEL_55:
    v44 = 0;
    v45 = 0;
LABEL_108:
    v20 = v110;
    goto LABEL_110;
  }

  if ((sub_10074AA34(a1, a2) & 1) == 0)
  {
    v42 = a1[8];
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v43 = asString();
    *buf = 136315394;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v43;
    v33 = "#I %s: Policy is not allowing the new context type: %s";
    v34 = v42;
    v35 = 22;
LABEL_54:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
    goto LABEL_55;
  }

  v20 = v110;
  if (validContextType())
  {
    if (LOBYTE(a1[2 * v110 + 96]) == 1)
    {
      v29 = sub_100753270(a1, v110);
      v20 = v110;
      if (v29 < sub_100753304(a1))
      {
        v30 = a1[8];
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_69;
        }

        v31 = asString();
        v32 = sub_100753270(a1, v110);
        *buf = 136315906;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v31;
        *&buf[22] = 2048;
        v130 = v32;
        v131 = 2080;
        v132 = "seconds";
        v33 = "#I %s: Do not initiate new handover when activation is fresh on %s that is %lld %s old. Do not touch it.";
        v34 = v30;
        v35 = 42;
        goto LABEL_54;
      }
    }
  }

LABEL_57:
  if (v128)
  {
    goto LABEL_109;
  }

  v126 = 0;
  v127 = 0;
  sub_10005D2A4(a1[9], &v126);
  v20 = v110;
  if (v110 == 1 && v126 && !(*(*a1 + 41))(a1, 1) && (!sub_10074BF70(a1, 1, a2) || (sub_100751128(a1) & 1) == 0))
  {
    v51 = v126;
    v52 = PersonalitySpecificImpl::simSlot(a1);
    if (((*(*v51 + 1056))(v51, v52) & 1) == 0)
    {
      v53 = a1[8];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I On IWLAN over Cell. Can't handover to BB. Should deactivate.", buf, 2u);
      }

      v54 = a1[14];
      if (v54)
      {
        v55 = 1;
        v39 = (*(*v54 + 176))(v54, 1);
        v56 = 0;
        goto LABEL_81;
      }

      v39 = 0;
      v56 = 0;
      goto LABEL_196;
    }
  }

  v46 = a1[14];
  if (!v46 || !(*(*v46 + 176))(v46, 1))
  {
    goto LABEL_80;
  }

  if ((sub_10074BF70(a1, v110, a2) & 1) == 0)
  {
    v57 = a1[8];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = asString();
      *buf = 136315394;
      *&buf[4] = "switchOverTo";
      *&buf[12] = 2080;
      *&buf[14] = v58;
      v48 = "#I %s: Can't handover from %s right now in unstable state, not deactivating because the recommended context type is not possible anyway";
      v49 = v57;
      v50 = 22;
      goto LABEL_79;
    }

LABEL_80:
    v39 = 0;
    v56 = 0;
    v55 = 0;
    goto LABEL_81;
  }

  if (v126 && (*(*a1 + 126))(a1, v110) && (*(*v126 + 1048))(v126))
  {
    v47 = a1[8];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "switchOverTo";
      v48 = "#I %s: Unstable state in the middle of a call. Let it be.";
      v49 = v47;
      v50 = 12;
LABEL_79:
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
      goto LABEL_80;
    }

    goto LABEL_80;
  }

  if (v110 == 1 && (*(*a1 + 41))(a1, 1) == 1)
  {
    v88 = a1[14];
    if ((!v88 || ((*(*v88 + 304))(v88) & 1) == 0) && v126 && (*(*v126 + 232))(v126))
    {
      v89 = a1[8];
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "switchOverTo";
        v90 = "#I %s: Unstable state in the non-WoW network. Do not touch it.";
        v91 = v89;
        v92 = 12;
LABEL_183:
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, v90, buf, v92);
        goto LABEL_184;
      }

      goto LABEL_184;
    }
  }

  if (validContextType())
  {
    if (LOBYTE(a1[2 * v110 + 96]) == 1)
    {
      v93 = sub_100753270(a1, v110);
      v20 = v110;
      if (v93 < sub_1007539FC(a1))
      {
        v94 = a1[8];
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          v95 = asString();
          v96 = sub_100753270(a1, v110);
          *buf = 136315906;
          *&buf[4] = "switchOverTo";
          *&buf[12] = 2080;
          *&buf[14] = v95;
          *&buf[22] = 2048;
          v130 = v96;
          v131 = 2080;
          v132 = "seconds";
          v90 = "#I %s: Unstable state in a fresh handover to %s that is %lld %s old. Do not touch it.";
          v91 = v94;
          v92 = 42;
          goto LABEL_183;
        }

LABEL_184:
        v39 = 0;
        v56 = 0;
        v55 = 0;
        v20 = v110;
        goto LABEL_81;
      }
    }
  }

  if (validContextType() && LOBYTE(a1[2 * v20 + 96]) == 1)
  {
    v97 = a1[8];
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = asString();
      v99 = sub_100753270(a1, v20);
      *buf = 136315906;
      *&buf[4] = "switchOverTo";
      *&buf[12] = 2080;
      *&buf[14] = v98;
      *&buf[22] = 2048;
      v130 = v99;
      v131 = 2080;
      v132 = "seconds";
      v100 = "#I %s: Unstable state in a activation on %s that is %lld %s old.";
      v101 = v97;
      v102 = 42;
LABEL_191:
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, v100, buf, v102);
    }
  }

  else
  {
    v103 = a1[8];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = asString();
      *buf = 136315394;
      *&buf[4] = "switchOverTo";
      *&buf[12] = 2080;
      *&buf[14] = v104;
      v100 = "#E %s: Unstable state in a activation on %s that has no start timestamp";
      v101 = v103;
      v102 = 22;
      goto LABEL_191;
    }
  }

  v105 = a1[8];
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v106 = asString();
    *buf = 136315394;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v106;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I %s: Can't handover from %s right now in unstable state, deactivating for now", buf, 0x16u);
  }

  v39 = 1;
  v56 = 1;
LABEL_196:
  v55 = 1;
LABEL_81:
  if (v127)
  {
    sub_100004A34(v127);
  }

  if (v55)
  {
    v107 = v56;
    v109 = 0;
LABEL_85:
    v59 = 0;
    v60 = a1 + 15;
    do
    {
      v61 = &v60[3 * dword_101836038[v59]];
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *v61, v61[1], 0xAAAAAAAAAAAAAAABLL * ((v61[1] - *v61) >> 3));
      v62 = *buf;
      v63 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          if (*(v62 + 16) == 1)
          {
            (*(**(v62 + 8) + 320))(*(v62 + 8), v39);
          }

          v62 += 24;
        }

        while (v62 != v63);
        v62 = *buf;
      }

      if (v62)
      {
        *&buf[8] = v62;
        operator delete(v62);
      }

      ++v59;
    }

    while (v59 != 2);
    if (v107)
    {
      goto LABEL_105;
    }

    v64 = 0;
    v65 = 1;
    do
    {
      v66 = &v60[3 * dword_101836038[v64]];
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *v66, v66[1], 0xAAAAAAAAAAAAAAABLL * ((v66[1] - *v66) >> 3));
      v68 = *buf;
      v67 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          if (*(v68 + 16) == 1)
          {
            v65 &= (*(**(v68 + 8) + 328))(*(v68 + 8));
          }

          v68 += 24;
        }

        while (v68 != v67);
        v68 = *buf;
      }

      if (v68)
      {
        *&buf[8] = v68;
        operator delete(v68);
      }

      ++v64;
    }

    while (v64 != 2);
    if (v65)
    {
LABEL_105:
      for (i = 0; i != 2; ++i)
      {
        (*(*a1 + 84))(a1, dword_101836038[i], 27, v109, "CommCenter");
      }
    }

    else
    {
      v87 = a1[8];
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "switchOverTo";
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I %s: deactivation on handover not possible cancelled, a connection does not want deactivation", buf, 0xCu);
      }
    }

    v45 = 0;
    v44 = 1;
    goto LABEL_108;
  }

LABEL_109:
  v44 = 0;
  v45 = 1;
LABEL_110:
  v70 = a1[55];
  if (v70)
  {
    v71 = a1[8];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "switchOverTo";
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#I %s: We have pending handover that is not needed anymore, discarding it", buf, 0xCu);
      v70 = a1[55];
      a1[55] = 0;
      if (!v70)
      {
        goto LABEL_116;
      }
    }

    else
    {
      a1[55] = 0;
    }

    (*(*v70 + 8))(v70);
  }

LABEL_116:
  if (!v45)
  {
    if (v20 == a2)
    {
      return 1;
    }

    else
    {
      return v44;
    }
  }

  v125 = 0;
  if ((v128 & 1) == 0)
  {
    v74 = a1[14];
    if (!v74)
    {
      goto LABEL_130;
    }

    if ((*(*v74 + 176))(v74, 0))
    {
      v75 = a1[8];
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = asString();
        v77 = asString();
        *buf = 136315650;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v76;
        *&buf[22] = 2080;
        v130 = v77;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I %s: Can't handover from %s right now, pending switch to %s", buf, 0x20u);
      }

      v18 = 1;
      v125 = 1;
      goto LABEL_138;
    }

    v20 = v110;
    if ((v128 & 1) == 0)
    {
LABEL_130:
      v78 = a1[8];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = asString();
        v80 = asString();
        *buf = 136315650;
        *&buf[4] = "switchOverTo";
        *&buf[12] = 2080;
        *&buf[14] = v79;
        *&buf[22] = 2080;
        v130 = v80;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I %s: Currently activated or activating on %s, switching over to %s", buf, 0x20u);
        v20 = v110;
      }

      if (sub_10074BF70(a1, v20, a2))
      {
        v81 = a1[14];
        (*(*a1 + 2))(&v123, a1);
        sub_10074BD70(a1, v110, __p);
        v18 = (*(*v81 + 240))(v81, v110, a2, &v123, a3, 0, __p, &v125);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v124)
        {
          sub_100004A34(v124);
        }
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_138;
    }
  }

  v72 = a1[8];
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v73 = asString();
    *buf = 136315394;
    *&buf[4] = "switchOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v73;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I %s: Try to MOBIKE handover to transportType:%s", buf, 0x16u);
    v20 = v110;
  }

  sub_10074989C(a1, v20, v108, a3);
  v18 = 1;
LABEL_138:
  if (v125 == 1)
  {
    memset(buf, 0, sizeof(buf));
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(buf, *a3, a3[1]);
    }

    else
    {
      *buf = *a3;
      *&buf[16] = a3[2];
    }

    v126 = 0;
    v127 = 0;
    sub_1002306AC(a1 + 4, &v126);
    Registry::getTimerService(&v119, a1[9]);
    v82 = v119;
    sub_10000501C(v117, "switchover back off timer");
    v83 = a1[6];
    object = v83;
    if (v83)
    {
      dispatch_retain(v83);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_100753BA4;
    aBlock[3] = &unk_101E77FE8;
    aBlock[4] = a1;
    aBlock[5] = v126;
    v112 = v127;
    if (v127)
    {
      atomic_fetch_add_explicit(&v127->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (buf[23] < 0)
    {
      sub_100005F2C(&v113, *buf, *&buf[8]);
    }

    else
    {
      v113 = *buf;
      v114 = *&buf[16];
    }

    v115 = _Block_copy(aBlock);
    sub_100D23364(v82, v117, 0, 2000000, &object, &v115);
    v84 = v121;
    v121 = 0;
    v85 = a1[55];
    a1[55] = v84;
    if (v85)
    {
      (*(*v85 + 8))(v85);
      v86 = v121;
      v121 = 0;
      if (v86)
      {
        (*(*v86 + 8))(v86);
      }
    }

    if (v115)
    {
      _Block_release(v115);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v118 < 0)
    {
      operator delete(v117[0]);
    }

    if (v120)
    {
      sub_100004A34(v120);
    }

    if (SHIBYTE(v114) < 0)
    {
      operator delete(v113);
    }

    if (v112)
    {
      std::__shared_weak_count::__release_weak(v112);
    }

    if (v127)
    {
      std::__shared_weak_count::__release_weak(v127);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  return v18;
}

void sub_100753148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *aBlock, dispatch_object_t object, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = *(v40 - 176);
  if (v42)
  {
    sub_100004A34(v42);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100753270(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!validContextType() || *(a1 + 760 + 16 * v2 + 8) != 1)
  {
    return 0;
  }

  v4 = sub_10075ABA4(a1);
  v5 = a1 + 760 + 16 * v2;
  if ((*(v5 + 8) & 1) == 0)
  {
    sub_1000D1644();
  }

  v6 = ((v4 - *v5) * 0x112E0BE826D694B3) >> 64;
  return (v6 >> 26) + (v6 >> 63);
}

uint64_t sub_100753304(Registry **a1)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(a1[9]);
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v10 + 96))(&cf, v10, v12, 1, @"FreshActivationInterval", 0, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v13 = cf;
  if (cf)
  {
    LODWORD(v19) = 0;
    v14 = CFGetTypeID(cf);
    if (v14 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v19, v13, v15);
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 3;
  }

  sub_10000A1EC(&cf);
  return v16;
}

uint64_t sub_1007534AC(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = (*(*a1 + 328))(a1);
  v7 = *(a1 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "shouldActOnTransportTypeChangeTo";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    *&buf[22] = 2080;
    v32 = asString();
    v33 = 2080;
    v34 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Current context is %s over %s, new transport type is %s.", buf, 0x2Au);
  }

  result = 0;
  if (v4 == 1 && v6 != a3)
  {
    for (i = 0; i != 2; ++i)
    {
      v10 = a1 + 24 * dword_101836038[i] + 120;
      memset(buf, 0, sizeof(buf));
      sub_10008A108(buf, *v10, *(v10 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 1) - *v10) >> 3));
      v11 = *buf;
      v12 = *&buf[8];
      if (*buf != *&buf[8])
      {
        while (*(v11 + 16) != 1 || ((*(**(v11 + 8) + 312))(*(v11 + 8), a3) & 1) != 0)
        {
          v11 += 24;
          if (v11 == v12)
          {
            v11 = *buf;
            goto LABEL_11;
          }
        }

        v22 = *(a1 + 8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = (*(**(v11 + 8) + 16))(*(v11 + 8));
          *v30 = 136315394;
          *&v30[4] = "shouldActOnTransportTypeChangeTo";
          *&v30[12] = 2080;
          *&v30[14] = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: %s told us not to switch transport", v30, 0x16u);
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        return 0;
      }

LABEL_11:
      if (v11)
      {
        *&buf[8] = v11;
        operator delete(v11);
      }
    }

    if (a3 || !(*(*a1 + 1008))(a1, 0))
    {
      return 1;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 9));
    v14 = ServiceMap;
    if (v15 < 0)
    {
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(ServiceMap);
    *buf = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, buf);
    if (!v19)
    {
      std::mutex::unlock(v14);
      return 1;
    }

    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      if (!v21)
      {
        goto LABEL_38;
      }

LABEL_31:
      *v30 = 0;
      *&v30[8] = 0;
      (*(*v21 + 456))(v30, v21);
      v24 = *v30;
      if (!*v30)
      {
        goto LABEL_35;
      }

      v25 = PersonalitySpecificImpl::simSlot(a1);
      v26 = (*(*v24 + 88))(v24, v25, 1);
      v27 = *(a1 + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = asString();
        *buf = 136315394;
        *&buf[4] = "shouldActOnTransportTypeChangeTo";
        *&buf[12] = 2080;
        *&buf[14] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: iRAT recommends %s context type", buf, 0x16u);
      }

      if (v26)
      {
LABEL_35:
        if (*&v30[8])
        {
          sub_100004A34(*&v30[8]);
        }

        if (v20)
        {
LABEL_38:
          sub_100004A34(v20);
        }

        return 1;
      }

      v29 = *(a1 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "shouldActOnTransportTypeChangeTo";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: Stale event", buf, 0xCu);
      }

      if (*&v30[8])
      {
        sub_100004A34(*&v30[8]);
      }

      if (v20)
      {
        sub_100004A34(v20);
      }

      return 0;
    }

    std::mutex::unlock(v14);
    if (v21)
    {
      goto LABEL_31;
    }

    return 1;
  }

  return result;
}

void sub_100753998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007539FC(Registry **a1)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(a1[9]);
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v10 + 96))(&cf, v10, v12, 1, @"StallActivationInterval", 0, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v13 = cf;
  if (cf)
  {
    LODWORD(v19) = 0;
    v14 = CFGetTypeID(cf);
    if (v14 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v19, v13, v15);
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 15;
  }

  sub_10000A1EC(&cf);
  return v16;
}

void sub_100753BA4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = sub_1000C2A4C(v3, 0, 0);
        v7 = *(v3 + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315394;
          v10 = "switchOverTo_block_invoke";
          v11 = 2080;
          v12 = asString();
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: switchover pending timer, trying to switch to: %s", &v9, 0x16u);
        }

        v8 = *(v3 + 55);
        *(v3 + 55) = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        if (((*(*v3 + 1248))(v3, v6, a1 + 7) & 1) == 0)
        {
          sub_100748B24(v3, v6);
        }
      }

      sub_100004A34(v5);
    }
  }
}

char *sub_100753D38(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_100753D9C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100753DB4(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100753E08(uint64_t a1, uint64_t a2)
{
  if (validContextType())
  {
    sub_100742294(a1, a2);
    v4 = *(a1 + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I fCurrentActivationStart set for %s (handover)", &v10, 0xCu);
    }

    v5 = 0;
    v6 = a1 + 120;
    do
    {
      v7 = (v6 + 24 * dword_101836038[v5]);
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        if (*(v8 + 16) == 1)
        {
          (*(**(v8 + 8) + 256))(*(v8 + 8), 1);
        }

        v8 += 24;
      }

      ++v5;
    }

    while (v5 != 2);
  }
}

void sub_100753F78(Registry **this@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  LOWORD(__p.__r_.__value_.__l.__data_) = 1;
  do
  {
    v5 = 15;
    while (2)
    {
      for (i = this[v5]; i != this[v5 + 1]; i = (i + 24))
      {
        v7 = *(i + 1);
        if (v7)
        {
          v8 = *(i + 16) == __p.__r_.__value_.__s.__data_[v4];
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          (*(*v7 + 408))(v7);
          return;
        }
      }

      v5 += 3;
      if (v5 != 21)
      {
        continue;
      }

      break;
    }

    ++v4;
  }

  while (v4 != 2);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(this[33] + 36) == 4)
  {
    ServiceMap = Registry::getServiceMap(this[9]);
    v10 = ServiceMap;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v20 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v20);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_25:
        (*(*v17 + 160))(&__p, v17);
        std::string::operator=(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        return;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_25;
  }

  PersonalitySpecificImpl::simSlot(this);
  PersonalityIdFromSlotId();
  std::string::operator=(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100754180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007541F0(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (validContextType())
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    sub_10008A108(&v18, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    v8 = v18;
    v9 = v19;
    if (v18 != v19)
    {
      do
      {
        if (*(v8 + 16) == 1)
        {
          v10 = v8[1];
          if (v10)
          {
            v11 = a1[8];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              sub_100004AA0(&v16, a1 + 4);
              v12 = v16;
              v13 = v17;
              v16 = 0;
              v17 = 0;
              if (v12)
              {
                v14 = (*(*(v12 + 24) + 48))();
              }

              else
              {
                v14 = "nothing";
              }

              *buf = 136315394;
              *v22 = "handleDidGetPcoInfo";
              *&v22[8] = 2080;
              *&v22[10] = v14;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: handling %s", buf, 0x16u);
              if (v13)
              {
                sub_100004A34(v13);
              }

              if (v17)
              {
                sub_100004A34(v17);
              }

              v10 = v8[1];
            }

            (*(*v10 + 96))(v10, a3, a4);
          }
        }

        v8 += 3;
      }

      while (v8 != v9);
    }

    *buf = PersonalitySpecificImpl::simSlot(a1);
    *&v22[4] = (*(*a1 + 17))(a1, a2, 1, 0);
    *&v22[12] = a4;
    v24 = 0;
    v25 = 0;
    __p = 0;
    sub_100034C50(&__p, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    sub_100754538((a1 + 11), buf);
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }

  else
  {
    v15 = a1[8];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v22 = "handleDidGetPcoInfo";
      *&v22[8] = 2080;
      *&v22[10] = asString();
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_1007544D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100754538(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/pco_update");
  object = v5;
  v5 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1007545CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_100754620(void *a1, uint64_t a2, uint64_t *a3)
{
  valid = validContextType();
  v7 = a1[8];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (valid)
  {
    if (v8)
    {
      (*(*a1 + 528))(__p, a1, a2);
      v9 = v17 >= 0 ? __p : __p[0];
      v10 = asString();
      v11 = asStringBool(*a3 != 0);
      *buf = 136315906;
      v19 = "setActivationBlocker";
      v20 = 2080;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker for %s (ct %s) set to %s", buf, 0x2Au);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = &a1[2 * a2];
    v14 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v12[40];
    v12[39] = v14;
    v12[40] = v13;
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (v8)
  {
    *buf = 136315394;
    v19 = "setActivationBlocker";
    v20 = 2080;
    v21 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
  }
}

uint64_t sub_10075482C(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 264);
  v6 = *(a1 + 272);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5 || (v7 = *(v5 + 264), v8 = *(v5 + 272), v7 == v8))
  {
LABEL_12:
    v10 = 0;
    if (!v6)
    {
      return v10;
    }

LABEL_13:
    sub_100004A34(v6);
    return v10;
  }

  while (1)
  {
    v16 = 0;
    v12 = *v7;
    v14 = 0;
    v15 = 0;
    __p = 0;
    sub_10024064C(&__p, *(v7 + 3), *(v7 + 4), (*(v7 + 4) - *(v7 + 3)) >> 2);
    LOBYTE(v16) = *(v7 + 48);
    if (v12 == a2)
    {
      v9 = __p;
      if (__p != v14)
      {
        break;
      }
    }

LABEL_9:
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    v7 = (v7 + 56);
    if (v7 == v8)
    {
      goto LABEL_12;
    }
  }

  while (*v9 != a3)
  {
    if (++v9 == v14)
    {
      goto LABEL_9;
    }
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v10 = 1;
  if (v6)
  {
    goto LABEL_13;
  }

  return v10;
}

void sub_100754944(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075495C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 272);
  *a2 = *(result + 264);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100754980(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 264);
  v4 = *(a1 + 272);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = v3 + 264 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_1002AB778(a2, *(v3 + 264), *(v3 + 272), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + 272) - *(v3 + 264)) >> 3));
  }

  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_100754A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1002A6458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100754A5C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (validContextType())
  {
    v4 = *(a1 + v2 + 348);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100754AA0(PersonalitySpecificImpl *a1, uint64_t a2)
{
  v9 = 0;
  v6[0] = PersonalitySpecificImpl::simSlot(a1);
  v4 = *(a1 + 14);
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
    v5 = -3;
  }

  v6[1] = v5;
  v7 = (*(*a1 + 136))(a1, a2, 1, 1);
  v8 = sub_1000AE88C(a1, a2);
  LODWORD(v9) = a2;
  sub_100754B74(a1 + 88, v6);
}

void sub_100754B74(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/data_context_activation_blocked");
  object = v5;
  v5 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_100754C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_100754C54(void *a1, uint64_t a2, int a3, int a4)
{
  v7 = a1[33];
  v6 = a1[34];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_100754980(a1, &v19);
    v8 = v19;
    for (i = v20; v8 != i; v8 += 56)
    {
      v18 = 0;
      v10 = *v8;
      v14 = *(v8 + 16);
      v13 = v10;
      v16 = 0;
      v17 = 0;
      __p = 0;
      sub_10024064C(&__p, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 2);
      LOBYTE(v18) = *(v8 + 48);
      if (v13 == a3)
      {
        v11 = __p;
        if (__p != v16)
        {
          do
          {
            if (*v11 == a4)
            {
              memset(v12, 0, sizeof(v12));
              sub_10024064C(v12, __p, v16, (v16 - __p) >> 2);
              v26 = a3;
              v25 = BYTE4(v13);
              v24 = v14;
              v23 = DWORD2(v13);
              v22 = v18;
              sub_1002403D8();
            }

            ++v11;
          }

          while (v11 != v16);
        }
      }

      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }

    *&v13 = &v19;
    sub_1002A6458(&v13);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100754E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  a15 = &a22;
  sub_1002A6458(&a15);
  if (v22)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(a1);
}

void sub_100754EA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if ((validContextType() & 1) == 0)
  {
    v10 = a1[8];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315394;
      v32 = "reportContextConnectionError";
      v33 = 2080;
      v34 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v31, 0x16u);
    }

    return;
  }

  if (v5 != 4)
  {
    v11 = &a1[2 * a2];
    v13 = v11[39];
    v12 = v11[40];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      if (!sub_1009CA648(v13))
      {
        v28 = a1[8];
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        v31 = 136315138;
        v32 = "reportContextConnectionError";
        v15 = "#I %s: ActivationBlocker: already ON - skip error checking";
        v16 = v28;
        v17 = 12;
        goto LABEL_45;
      }

      if (sub_1009CA608(v13, v5, v4))
      {
        if (sub_1009CA5A4(v13))
        {
          sub_1009CA6CC(v13);
        }

        sub_1009CA6BC(v13);
        if (!sub_1009CA648(v13))
        {
          (*(*a1 + 848))(a1, a2);
        }

        v14 = a1[8];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_46:
          v21 = 0;
          if (!v12)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v31 = 136315650;
        v32 = "reportContextConnectionError";
        v33 = 2080;
        v34 = asString();
        v35 = 1024;
        v36 = v4;
        v15 = "#I %s: ActivationBlocker: additional error reported: type=%s, reason=%d";
        v16 = v14;
        v17 = 28;
LABEL_45:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v31, v17);
        goto LABEL_46;
      }
    }

    sub_10073FB00(a1, a2, "new connection error", 1, 0);
    sub_100754C54(a1, a2, v5, v4);
    v18 = v11[39];
    v19 = v11[40];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      sub_100004A34(v12);
    }

    if (v18)
    {
      sub_1009CA6BC(v18);
      if (!sub_1009CA648(v18))
      {
        (*(*a1 + 848))(a1, a2);
      }

      v20 = a1[8];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315650;
        v32 = "reportContextConnectionError";
        v33 = 2080;
        v34 = asString();
        v35 = 1024;
        v36 = v4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker: new error reported: type=%s, reason=%d", &v31, 0x1Cu);
      }
    }

    v21 = 1;
    v12 = v19;
    if (!v19)
    {
LABEL_33:
      if (v5 == 1)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if ((v22 & 1) == 0)
      {
        return;
      }

      v23 = a2;
      switch(v4)
      {
        case '\'':
          v30 = a1[8];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v31) = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I clear all IPv4v6 activation blocker upon UMTS_REACTIVATION_REQ", &v31, 2u);
          }

          v9 = a1 + v23;
          goto LABEL_8;
        case '3':
          v24 = a1 + 43;
          if (*(a1 + a2 + 344))
          {
            return;
          }

          v25 = a1[8];
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_52;
          }

          v29 = asString();
          v31 = 136315394;
          v32 = "reportContextConnectionError";
          v33 = 2080;
          v34 = v29;
          v27 = "#I %s: fIPv4ActivationBlocker[%s] set";
          break;
        case '2':
          v24 = (a1 + 346);
          if (*(a1 + a2 + 346))
          {
            return;
          }

          v25 = a1[8];
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
LABEL_52:
            *(v24 + a2) = 1;
            return;
          }

          v26 = asString();
          v31 = 136315394;
          v32 = "reportContextConnectionError";
          v33 = 2080;
          v34 = v26;
          v27 = "#I %s: fIPv6ActivationBlocker[%s] set";
          break;
        default:
          return;
      }

      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v27, &v31, 0x16u);
      goto LABEL_52;
    }

LABEL_32:
    sub_100004A34(v12);
    goto LABEL_33;
  }

  if ((v4 - 1028) <= 0x27 && ((1 << (v4 - 4)) & 0x8000000041) != 0)
  {
    v8 = a1[8];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 67109120;
      LODWORD(v32) = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I clear all IPv4v6 activation blocker upon endReason: %d", &v31, 8u);
    }

    v9 = a1 + a2;
LABEL_8:
    v9[346] = 0;
    v9[344] = 0;
  }
}

uint64_t sub_100755418@<X0>(uint64_t result@<X0>, int a2@<W1>, __int128 *a3@<X8>)
{
  v3 = (result + 16 * a2 + 312);
  v4 = *v3;
  *a3 = *v3;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100755448(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  if (validContextType())
  {
    if (a3 == 1)
    {
      if (a4 == 51)
      {
        v11 = a1 + 344;
        if ((*(a1 + 344 + v6) & 1) == 0)
        {
          v12 = *(a1 + 64);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315394;
            v14 = "reportContextConnectionErrorTentative";
            v15 = 2080;
            v16 = asString();
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: fIPv4ActivationBlocker[%s] set", &v13, 0x16u);
          }

          *(v11 + v6) = 1;
        }
      }

      else if (a4 == 50)
      {
        v8 = a1 + 346;
        if ((*(a1 + 346 + v6) & 1) == 0)
        {
          v9 = *(a1 + 64);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315394;
            v14 = "reportContextConnectionErrorTentative";
            v15 = 2080;
            v16 = asString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: fIPv6ActivationBlocker[%s] set", &v13, 0x16u);
          }

          *(v8 + v6) = 1;
        }
      }
    }
  }

  else
  {
    v10 = *(a1 + 64);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "reportContextConnectionErrorTentative";
      v15 = 2080;
      v16 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v13, 0x16u);
    }
  }
}

void sub_10075563C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 64);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9[0]) = 136315394;
    *(v9 + 4) = "handleDNSReady";
    WORD2(v9[1]) = 2080;
    *(&v9[1] + 6) = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: for %s", v9, 0x16u);
  }

  for (i = 0; i != 2; ++i)
  {
    v6 = dword_101836038[i];
    if (v6 == v2 || anyContextType())
    {
      memset(v9, 0, sizeof(v9));
      sub_10008A108(v9, *(a1 + 120 + 24 * v6), *(a1 + 120 + 24 * v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120 + 24 * v6 + 8) - *(a1 + 120 + 24 * v6)) >> 3));
      v7 = v9[0];
      v8 = v9[1];
      if (v9[0] != v9[1])
      {
        do
        {
          if (sub_1007490E0(a1, v7))
          {
            (*(**(v7 + 8) + 384))(*(v7 + 8));
          }

          v7 += 24;
        }

        while (v7 != v8);
        v7 = v9[0];
      }

      if (v7)
      {
        v9[1] = v7;
        operator delete(v7);
      }
    }
  }
}

void sub_100755814(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N !!! reportDNSEmptyProblem on noncellular context type ?", &v8, 2u);
    }
  }

  else
  {
    isDefault = CIPFamily::isDefault((a1 + 632));
    if (isDefault && DataUtils::supportDualIPAPNDefault(isDefault) && (*(a1 + 640) & 2) != 0)
    {
      v5 = *(a1 + 64);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N reportDNSEmptyProblem: DNS is unconfigured in default activation", &v8, 2u);
      }

      if ((*(a1 + 346) & 1) == 0)
      {
        v6 = *(a1 + 64);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = asString();
          v8 = 136315138;
          v9 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I reportDNSEmptyProblem: fIPv6ActivationBlocker[%s] set", &v8, 0xCu);
        }

        *(a1 + 346) = 1;
      }
    }
  }
}

uint64_t sub_10075596C(uint64_t a1, uint64_t a2)
{
  if (validContextType())
  {
    v4 = a1 + 24 * a2;
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    if (v5 == v6)
    {
      return 2;
    }

    v7 = 2;
    while (1)
    {
      if (*(v5 + 16) == 1)
      {
        v8 = *(v5 + 8);
        sub_100004AA0(buf, (a1 + 32));
        if (*buf)
        {
          v9 = *buf + 24;
        }

        else
        {
          v9 = 0;
        }

        v20 = v9;
        v21 = *&buf[8];
        *buf = 0;
        *&buf[8] = 0;
        v10 = (*(*v8 + 296))(v8, a2, &v20);
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v10 != v7)
        {
          if (validContextType())
          {
            if (validContextType())
            {
              v16 = *(a1 + 64);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v18 = asString();
                v19 = asString();
                *buf = 136315650;
                *&buf[4] = "getFailureFallbackType";
                *&buf[12] = 2080;
                *&buf[14] = v18;
                v23 = 2080;
                v24 = v19;
                v12 = "#E %s: Conflicting fallback types: %s and %s";
                v13 = v16;
                v14 = 32;
LABEL_21:
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
              }

              return 2;
            }
          }

          else
          {
            v7 = v10;
          }
        }
      }

      v5 += 24;
      if (v5 == v6)
      {
        return v7;
      }
    }
  }

  v11 = *(a1 + 64);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "getFailureFallbackType";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    v12 = "#E %s: wrong context type: %s";
    v13 = v11;
    v14 = 22;
    goto LABEL_21;
  }

  return 2;
}

void sub_100755B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100755BC8(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a3;
  if (((a4 & 1) != 0 || a2 == 1 && a3 == 97) && (*(a1 + a2 + 348) & 1) == 0)
  {
    v7 = *(a1 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "checkFatalBlockers";
      v22 = 2080;
      v23 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: iWLAN ActivationBlocker set for error code %s", buf, 0x16u);
    }

    *(a1 + a2 + 348) = 1;
    *(a1 + a2 + 88) = v4;
    (*(*a1 + 848))(a1, a2);
    ServiceMap = Registry::getServiceMap(*(a1 + 9));
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
        if (!v16)
        {
LABEL_18:
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          return;
        }

LABEL_16:
        v18 = PersonalitySpecificImpl::simSlot(a1);
        sub_10000501C(__p, "checkFatalBlockers");
        (*(*v16 + 1160))(v16, v18, __p, 0);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }
}

void sub_100755E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100755E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((validContextType() & 1) == 0)
  {
    v8 = *(a1 + 64);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 136315394;
    v10 = "resetFatalActivationBlockers";
    v11 = 2080;
    v12 = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v9, 0x16u);
    return 0;
  }

  if (*(a1 + 348 + v4) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136316674;
    v10 = "resetFatalActivationBlockers";
    v11 = 2080;
    v12 = a3;
    v13 = 2080;
    v14 = asString();
    v15 = 2080;
    v16 = asStringBool(1);
    v17 = 2080;
    v18 = asStringBool(0);
    v19 = 2080;
    v20 = asString();
    v21 = 2080;
    v22 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %s: ActivationBlocker for %s: change FatalActivationBlocker flag: %s -> %s, cause %s -> %s", &v9, 0x48u);
  }

  *(a1 + 348 + v4) = 0;
  *(a1 + 4 * v4 + 352) = 0;
  return 1;
}

void sub_100756048(uint64_t a1, CIPFamily *this, int a3, uint64_t a4, uint64_t a5, _BYTE *a6, _BYTE *a7, _DWORD *a8)
{
  if (a3)
  {
    return;
  }

  if (*a6)
  {
    return;
  }

  v12 = a4;
  if (!CIPFamily::isDefault(this))
  {
    return;
  }

  v15 = *(a1 + 64);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    CIPFamily::asString(__p, this);
    v16 = v30;
    v17 = *__p;
    v18 = asString();
    v19 = __p;
    if (v16 < 0)
    {
      v19 = v17;
    }

    *buf = 136446466;
    v32 = v19;
    v33 = 2080;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Retry settings: family=%{public}s errCode=%s", buf, 0x16u);
    if (v30 < 0)
    {
      operator delete(*__p);
    }
  }

  if (v12 == 108)
  {
    v26 = *(this + 2);
    if ((v26 - 1) < 2)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 6";
      goto LABEL_46;
    }

    if (v26 != 3)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 7";
      goto LABEL_46;
    }

LABEL_32:
    *(a5 + 8) = 1;
    *(a5 + 12) = 0;
    CIPFamily::setDefault(a5);
    *a6 = 1;
    *a7 = 1;
LABEL_33:
    *a8 = 0;
    return;
  }

  if (v12 == 94)
  {
    v23 = *(this + 2);
    if (v23 == 1)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 4";
      goto LABEL_46;
    }

    if (v23 == 2)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 3";
      goto LABEL_46;
    }

    if (v23 != 3)
    {
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 5";
      goto LABEL_46;
    }

    if ((*(a1 + 346) & 1) == 0)
    {
      v24 = *(a1 + 64);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = asString();
        *__p = 136315138;
        *&__p[4] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Retry settings: fIPv6ActivationBlocker[%s] set", __p, 0xCu);
      }

      *(a1 + 346) = 1;
    }

    goto LABEL_32;
  }

  if (v12 != 93)
  {
    return;
  }

  v20 = *(this + 2);
  switch(v20)
  {
    case 3:
      goto LABEL_15;
    case 2:
      v27 = *(a1 + 64);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *__p = 0;
      v28 = "#E Retry settings: Impossible situation 1";
      goto LABEL_46;
    case 1:
LABEL_15:
      if ((*(a1 + 344) & 1) == 0)
      {
        v21 = *(a1 + 64);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = asString();
          *__p = 136315138;
          *&__p[4] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Retry settings: fIPv4ActivationBlocker[%s] set", __p, 0xCu);
        }

        *(a1 + 344) = 1;
      }

      *(a5 + 8) = 2;
      *(a5 + 12) = 0;
      CIPFamily::setDefault(a5);
      *a6 = 1;
      *a7 = 1;
      goto LABEL_33;
  }

  v27 = *(a1 + 64);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    v28 = "#E Retry settings: Impossible situation 2";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, __p, 2u);
  }
}

void sub_100756444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100756468(uint64_t a1, CIPFamily *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, _BOOL4 a7)
{
  v65 = a7;
  v10 = *(a1 + 64);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = __p;
    CIPFamily::asString(__p, a2);
    if (v64 < 0)
    {
      v11 = __p[0];
    }

    v12 = asString();
    v13 = asString();
    v14 = asStringBool(a7);
    *buf = 136316674;
    *&buf[4] = "handleDataContextActivateError_Async";
    *&buf[12] = 2082;
    *&buf[14] = v11;
    v67 = 2080;
    v68 = v12;
    v69 = 1024;
    *v70 = a4;
    *&v70[4] = 2080;
    *&v70[6] = v13;
    v71 = 1024;
    v72 = a5;
    v73 = 2080;
    v74 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: family=%{public}s, ct=%s, errCode=%d (%s), rawCode=%d, toRetry = %s", buf, 0x40u);
    if (v64 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v16 = ServiceMap;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
  v22 = a3;
  if (v21)
  {
    v24 = v21[3];
    v23 = v21[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      if (!v24)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v16);
  v23 = 0;
  v25 = 1;
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_15:
  v26 = PersonalitySpecificImpl::simSlot(a1);
  v27 = *(a1 + 272);
  v61 = *(a1 + 264);
  v62 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v24 + 160))(v24, v26, a3, &v61, a5);
  if (v62)
  {
    sub_100004A34(v62);
  }

LABEL_19:
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  v60 = 0;
  v59 = 2;
  if (a7)
  {
    v60 = 1;
    v59 = a3;
    v28 = a3;
  }

  else
  {
    sub_100756048(a1, a2, a3, a4, a1 + 16 * a3 + 632, &v65, &v60, &v59);
    if (v65)
    {
      v28 = v59;
    }

    else
    {
      v28 = sub_10075596C(a1, a3);
      v59 = v28;
    }

    v22 = a3;
  }

  (*(*a1 + 856))(a1, v22, a4, 0);
  v29 = a3;
  if (!validContextType() || v28 == a3 && !v65)
  {
    sub_100756CE0(a1, a3, a4, 0, a5, a6);
    v38 = v60;
    return v38 & 1;
  }

  v30 = *(a1 + 64);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asString();
    v32 = asString();
    *buf = 136315650;
    *&buf[4] = "handleDataContextActivateError_Async";
    *&buf[12] = 2080;
    *&buf[14] = v31;
    v67 = 2080;
    v68 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: Activate %s failed, will try on %s", buf, 0x20u);
    v29 = a3;
  }

  if (!v60)
  {
    if (!validContextType() || (v40 = (a1 + 120 + 24 * a3), v41 = *v40, v55 = v40[1], *v40 == v55))
    {
      sub_100756CE0(a1, a3, a4, 0, a5, a6);
    }

    else
    {
      v42 = 0;
      v53 = (a1 + 120 + 24 * v28);
      do
      {
        if (*(v41 + 16) == 1 && validContextType())
        {
          v43 = *v53;
          v44 = v53[1];
          while (v43 != v44)
          {
            v45 = *(v41 + 8);
            if (*(v43 + 8) == v45)
            {
              *(v41 + 16) = 0;
              *(v43 + 16) = 1;
              v46 = *(a1 + 64);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                (*(*v45 + 192))(v45);
                v47 = asString();
                v48 = asString();
                v49 = asString();
                *buf = 136315906;
                *&buf[4] = "handleDataContextActivateError_Async";
                *&buf[12] = 2080;
                *&buf[14] = v47;
                v67 = 2080;
                v68 = v48;
                v69 = 2080;
                *v70 = v49;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s: Switching observer %s from %s to %s (change states)", buf, 0x2Au);
                v46 = *(a1 + 64);
              }

              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v50 = asString();
                (*(**(v41 + 8) + 192))(*(v41 + 8));
                v51 = asString();
                v52 = asStringBool(1);
                *buf = 136315906;
                *&buf[4] = "handleDataContextActivateError_Async";
                *&buf[12] = 2080;
                *&buf[14] = v50;
                v67 = 2080;
                v68 = v51;
                v69 = 2080;
                *v70 = v52;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s:  (change states) on %s: connection %s becomes current %s (retry)", buf, 0x2Au);
              }

              ++v42;
            }

            v43 += 24;
          }
        }

        v41 += 24;
      }

      while (v41 != v55);
      v60 = v42 != 0;
      sub_100756CE0(a1, a3, a4, v42 != 0, a5, a6);
      if (v42)
      {
        goto LABEL_34;
      }
    }

    v38 = 0;
    return v38 & 1;
  }

  (*(*a1 + 1240))(a1, v29, 0);
LABEL_34:
  v33 = *(a1 + 112);
  if (v33)
  {
    v34 = *(a1 + 64);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = asString();
      v36 = asString();
      *buf = 136315650;
      *&buf[4] = "handleDataContextActivateError_Async";
      *&buf[12] = 2080;
      *&buf[14] = v35;
      v67 = 2080;
      v68 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s:  with %s, scheduling retryType %s", buf, 0x20u);
      v33 = *(a1 + 112);
    }

    (*(*v33 + 352))(v33, 1);
    sub_100004AA0(buf, (a1 + 32));
    v37 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v37);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 32));
    operator new();
  }

  v38 = 1;
  return v38 & 1;
}

void sub_100756C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100756CE0(void *a1, uint64_t a2, uint64_t a3, BOOL a4, uint64_t a5, unsigned int a6)
{
  v11 = a1[8];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "handleDataActivationError_Async";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    v37 = 1024;
    *v38 = a3;
    *&v38[4] = 2080;
    *&v38[6] = asString();
    v39 = 2080;
    v40 = asStringBool(a4);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: ct=%s, errCode=%d (%s), fallback=%s", buf, 0x30u);
  }

  if (validContextType())
  {
    (*(*a1 + 1240))(a1, a2, 0);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    sub_10008A108(&v33, a1[3 * a2 + 15], a1[3 * a2 + 16], 0xAAAAAAAAAAAAAAABLL * ((a1[3 * a2 + 16] - a1[3 * a2 + 15]) >> 3));
    otherContextType();
    v12 = sub_1007421F0(a1);
    (*(*a1 + 856))(a1, a2, a3, 0);
    v14 = v33;
    v13 = v34;
    if (v33 != v34)
    {
      while (1)
      {
        if (*(v14 + 16) == 1)
        {
          if ((v12 & 1) == 0)
          {
            v15 = a1[8];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              (*(**(v14 + 8) + 192))(*(v14 + 8));
              v16 = asString();
              v17 = asString();
              *buf = 136315650;
              *&buf[4] = "handleDataActivationError_Async";
              *&buf[12] = 2080;
              *&buf[14] = v16;
              v37 = 2080;
              *v38 = v17;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Failing observer %s on %s", buf, 0x20u);
            }

            v18 = *(v14 + 8);
            sub_100004AA0(buf, a1 + 4);
            if (*buf)
            {
              v19 = *buf + 24;
            }

            else
            {
              v19 = 0;
            }

            v31 = v19;
            v32 = *&buf[8];
            *buf = 0;
            *&buf[8] = 0;
            (*(*v18 + 56))(v18, a2, &v31, a3, a5, a6);
            v20 = v32;
            if (v32)
            {
              goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

        else if (!a4 && sub_1007490E0(a1, v14))
        {
          v21 = a1[8];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            (*(**(v14 + 8) + 192))(*(v14 + 8));
            v22 = asString();
            v23 = asString();
            *buf = 136315650;
            *&buf[4] = "handleDataActivationError_Async";
            *&buf[12] = 2080;
            *&buf[14] = v22;
            v37 = 2080;
            *v38 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: Failing handover for observer %s on %s", buf, 0x20u);
          }

          v24 = *(v14 + 8);
          sub_100004AA0(buf, a1 + 4);
          if (*buf)
          {
            v25 = *buf + 24;
          }

          else
          {
            v25 = 0;
          }

          v29 = v25;
          v30 = *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          (*(*v24 + 288))(v24, a2, &v29, a3, a5);
          v20 = v30;
          if (!v30)
          {
            goto LABEL_14;
          }

LABEL_13:
          sub_100004A34(v20);
LABEL_14:
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }
        }

        v14 += 24;
        if (v14 == v13)
        {
          v14 = v33;
          break;
        }
      }
    }

    if (v14)
    {
      v34 = v14;
      operator delete(v14);
    }
  }

  else
  {
    v26 = a1[8];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = asString();
      *buf = 136315394;
      *&buf[4] = "handleDataActivationError_Async";
      *&buf[12] = 2080;
      *&buf[14] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }
}

void sub_1007571B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100757218(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 400))();
  }

  return result;
}

void sub_100757250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1 + 120;
  do
  {
    v11 = v10 + 24 * dword_101836038[v9];
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_10008A108(&v14, *v11, *(v11 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 8) - *v11) >> 3));
    v12 = v14;
    v13 = v15;
    if (v14 != v15)
    {
      do
      {
        if (*(v12 + 16) == 1)
        {
          (*(**(v12 + 8) + 360))(*(v12 + 8), a2, a3, a4, a5);
        }

        v12 += 24;
      }

      while (v12 != v13);
      v12 = v14;
    }

    if (v12)
    {
      v15 = v12;
      operator delete(v12);
    }

    ++v9;
  }

  while (v9 != 2);
}

void sub_10075736C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100757390(void *a1, uint64_t a2, uint64_t a3)
{
  if (validContextType())
  {
    v6 = &a1[3 * a3];
    v7 = v6[15];
    v8 = v6[16];
    if (v7 == v8)
    {
      goto LABEL_8;
    }

    v9 = 0;
    do
    {
      v10 = *(v7 + 16);
      if (*(v7 + 8) == a2)
      {
        v10 = 0;
      }

      v9 |= v10;
      v7 += 24;
    }

    while (v7 != v8);
    if ((v9 & 1) == 0)
    {
LABEL_8:
      (*(*a1 + 1240))(a1, a3, 0);
      return 1;
    }
  }

  else
  {
    v12 = a1[8];
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v13 = 136315394;
    v14 = "tryToSetDataSettingsStateToIdle";
    v15 = 2080;
    v16 = asString();
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", &v13, 0x16u);
  }

  return 0;
}

BOOL sub_10075752C(void *a1, const DataAPNSettingsObserver *a2, uint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "handleDataActivationError_Sync";
    v10 = 2080;
    v11 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: ct=%s", &v8, 0x16u);
  }

  sub_100740A20(a1, a3, a2, 0);
  return sub_100757390(a1, a2, a3);
}

void sub_100757618(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[8];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "handleDataActivateResult_Async";
    v10 = 2080;
    v11 = asString();
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: (impl): ct=%s, result=%d", &v8, 0x1Cu);
  }

  if (a3 == 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = a3;
  }

  if (v7 >= 0xFFFFFFFE)
  {
    sub_100756CE0(a1, a2, HIDWORD(a3), 0, 0, 0);
  }

  else if (v7 == 1)
  {
    (*(*a1 + 448))(a1, a2);
  }

  else if (!v7)
  {
    (*(*a1 + 1240))(a1, a2, 2);
  }
}

uint64_t sub_10075779C(void *a1, uint64_t a2)
{
  v2 = a1[14];
  if (!v2)
  {
    return 0;
  }

  (*(*a1 + 16))(&v6);
  v4 = (*(*v2 + 416))(v2, &v6, a2);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return v4;
}

void sub_100757854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100757874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  result = validContextType();
  if (result)
  {

    return sub_10075C0CC(a3, a1 + 24 * v3 + 392);
  }

  else
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }

  return result;
}

void *sub_1007578F8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a2;
  result = validContextType();
  if (result)
  {

    return sub_10049F714(a1 + 24 * v4 + 392, a3, a3);
  }

  return result;
}

void *sub_100757968(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a2;
  result = validContextType();
  if (result)
  {

    return sub_10049F714(a1 + 24 * v4 + 368, a3, a3);
  }

  return result;
}

void sub_1007579D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (validContextType())
  {
    v4 = a1 + 24 * v2;
    sub_1001178E4(v4 + 392, *(v4 + 400));
    *(v4 + 400) = 0;
    *(v4 + 408) = 0;
    *(v4 + 392) = v4 + 400;
  }
}

void sub_100757A38(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  if (validContextType())
  {
    if (*a3 == 103 && *(a1 + 56 * v4 + 456))
    {
      v6 = *(a1 + 64);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v15 = 136315394;
      v16 = "setLastActivateError";
      v17 = 2080;
      v18 = asString();
      v7 = "#I %s: Keep the old error: %s";
      goto LABEL_12;
    }

    v8 = a1 + 56 * v4;
    v9 = v8 + 456;
    v10 = *a3;
    v11 = a3[1];
    *(v8 + 488) = *(a3 + 4);
    *(v8 + 456) = v10;
    *(v8 + 472) = v11;
    v13 = *(a3 + 5);
    v12 = *(a3 + 6);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v9 + 48);
    *(v9 + 40) = v13;
    *(v9 + 48) = v12;
    if (v14)
    {
      sub_100004A34(v14);
    }

    v6 = *(a1 + 64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "setLastActivateError";
      v17 = 2080;
      v18 = asString();
      v7 = "#I %s: Use the new error: %s";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v15, 0x16u);
    }
  }
}

uint64_t sub_100757BC8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = validContextType();
  if (result)
  {
    ++*(a1 + 4 * v2 + 448);
  }

  return result;
}

uint64_t sub_100757C08(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = validContextType();
  if (result)
  {
    ++*(a1 + 4 * v2 + 424);
  }

  return result;
}

uint64_t sub_100757C48(uint64_t result)
{
  v1 = 0;
  v2 = result + 120;
  do
  {
    v3 = (v2 + 24 * dword_101836038[v1]);
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*(v4 + 16) == 1)
      {
        result = *(v4 + 8);
        if (result)
        {
          result = (*(*result + 416))(result);
        }
      }

      v4 += 24;
    }

    ++v1;
  }

  while (v1 != 2);
  return result;
}

uint64_t sub_100757CF8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = validContextType();
  if (result)
  {
    return *(a1 + 4 * v2 + 448);
  }

  return result;
}

uint64_t sub_100757D30(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = validContextType();
  if (result)
  {
    return *(a1 + 4 * v2 + 424);
  }

  return result;
}

uint64_t sub_100757D68@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 584);
  *a2 = *(result + 576);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_100757D88@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 560);
  *a2 = *(result + 552);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_100757DA8(uint64_t a1, int a2)
{
  (*(*a1 + 840))(a1);
  if (a2)
  {
    v5 = *(a1 + 64);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Resetting throttle counter", v6, 2u);
    }

    result = 0.0;
    *(a1 + 568) = 0;
    *(a1 + 592) = 2;
  }

  return result;
}

void sub_100757E58(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "clearThrottling";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: Clearing throttle timer", buf, 0xCu);
  }

  v3 = *(a1 + 584);
  *(a1 + 576) = 0u;
  if (v3)
  {
    sub_100004A34(v3);
  }

  *(a1 + 448) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    v12 = 0;
LABEL_13:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (!v12)
  {
LABEL_15:
    if (v13)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_14:
  v14 = PersonalitySpecificImpl::simSlot(a1);
  sub_10000501C(__p, "throttle timeout ends");
  (*(*v12 + 1160))(v12, v14, __p, 0);
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if (v13)
  {
    return;
  }

LABEL_16:
  sub_100004A34(v11);
}