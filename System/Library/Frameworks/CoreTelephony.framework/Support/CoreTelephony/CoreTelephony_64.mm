void sub_100417F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: bootstrap 2...", buf, 2u);
  }

  sub_100417C00(a1);
  sub_100418168(a1);
  Registry::createRestModuleOneTimeUseConnection(&v7, *(a1 + 56));
  ctu::RestModule::connect();
  if (v8)
  {
    sub_100004A34(v8);
  }

  v14 = 0;
  v11[3] = 0;
  v10 = 0;
  PersonalitiesTracker::bind();
  sub_100249B60(v9);
  sub_100249BE0(v11);
  v4 = sub_100249C60(buf);
  v5 = capabilities::ct::supportedPDPContextCount(v4);
  sub_100418418(a1, v5, buf);
  sub_1000FA138((a1 + 288));
  *(a1 + 288) = *buf;
  *(a1 + 304) = v13;
  v13 = 0;
  memset(buf, 0, sizeof(buf));
  v11[0] = buf;
  sub_1000212F4(v11);
  v6 = (*(a1 + 296) - *(a1 + 288)) >> 4;
  if (v6 != v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10176FD5C((a1 + 296), (a1 + 288), buf);
      v6 = *buf;
    }

    if (v6 != v5)
    {
      __TUAssertTrigger("fPacketHandlers.size() == contextCount");
    }
  }
}

void sub_100418128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_100249B60(va);
  sub_100249BE0(va1);
  sub_100249C60(va2);
  _Unwind_Resume(a1);
}

void sub_100418168(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *v18 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v18);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_10:
  if (!(*(*v10 + 32))(v10))
  {
    goto LABEL_30;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I configuring DNS overrides", v18, 2u);
  }

  sub_100419A00(@"FakePrimaryDns", v18);
  v13 = (a1 + 336);
  if (*(a1 + 359) < 0)
  {
    operator delete(*v13);
  }

  *v13 = *v18;
  *(a1 + 352) = *&v18[16];
  sub_100419A00(@"FakeSecondaryDns", v18);
  v14 = (a1 + 360);
  if (*(a1 + 383) < 0)
  {
    operator delete(*v14);
  }

  *v14 = *v18;
  *(a1 + 376) = *&v18[16];
  v15 = *(a1 + 359);
  if (v15 < 0)
  {
    if (!*(a1 + 344))
    {
      goto LABEL_21;
    }

LABEL_24:
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if ((v15 & 0x80000000) != 0)
      {
        v13 = *v13;
      }

      if (*(a1 + 383) < 0)
      {
        v14 = *v14;
      }

      *v18 = 136315394;
      *&v18[4] = v13;
      *&v18[12] = 2080;
      *&v18[14] = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Fake primary DNS: %s, fake secondary DNS: %s", v18, 0x16u);
    }

    goto LABEL_30;
  }

  if (*(a1 + 359))
  {
    goto LABEL_24;
  }

LABEL_21:
  v16 = *(a1 + 383);
  if (v16 < 0)
  {
    v16 = *(a1 + 368);
  }

  if (v16)
  {
    goto LABEL_24;
  }

LABEL_30:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1004183E4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100418418(void *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I creating PDP Managers", &buf, 2u);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v8 = dispatch_queue_create("SCWriteQueuePDP", v7);
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create("IPConfigurationQueuePDP", v9);
  if (a2)
  {
    v11 = a1[8];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a1[3];
    if (v12)
    {
      dispatch_retain(v12);
    }

    if (v8)
    {
      dispatch_retain(v8);
    }

    if (v10)
    {
      dispatch_retain(v10);
    }

    sub_1004724C4(&v15);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (a3[1] - *a3) >> 4;
    buf = 134218240;
    *buf_4 = v14;
    v18 = 2048;
    v19 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I created %lu/%lu PDP Managers", &buf, 0x16u);
  }
}

void sub_100418720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, dispatch_object_t object, dispatch_object_t a12, dispatch_object_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (*(&a9 + 1))
  {
    sub_100004A34(*(&a9 + 1));
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    dispatch_release(a12);
  }

  if (a13)
  {
    dispatch_release(a13);
  }

  if (a15)
  {
    sub_100004A34(a15);
    if (!v18)
    {
LABEL_13:
      if (!v17)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (!v18)
  {
    goto LABEL_13;
  }

  dispatch_release(v18);
  if (!v17)
  {
LABEL_15:
    sub_1000212F4(&a16);
    _Unwind_Resume(a1);
  }

LABEL_14:
  dispatch_release(v17);
  goto LABEL_15;
}

void sub_1004187B4(void *a1, NSObject **a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: bootstrap 1...", v6, 2u);
  }

  v5 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, a1 + 1);
  operator new();
}

void sub_100418918(uint64_t a1)
{
  v16 = 0;
  if (getifaddrs(&v16))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176FE34();
    }
  }

  else
  {
    v2 = socket(2, 2, 0);
    if (v2 < 0)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176FE70();
      }
    }

    else
    {
      for (i = v16; i; i = i->ifa_next)
      {
        if (strnstr(i->ifa_name, "rd", 0x10uLL))
        {
          v31 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          *__n = 0u;
          v24 = 0u;
          *__dst = 0u;
          v14[1] = 0;
          v15 = 0;
          v14[0] = 0;
          sub_10000501C(v14, i->ifa_name);
          if (v15 >= 0)
          {
            v4 = v14;
          }

          else
          {
            v4 = v14[0];
          }

          strncpy(__dst, v4, 0x10uLL);
          if (ioctl(v2, 0xC0946990uLL, __dst) != -1 && LODWORD(__n[0]) && !strncmp(__n + 4, "CoreTelephonyHOVI", LODWORD(__n[0])))
          {
            v5 = *(a1 + 40);
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              if (v15 >= 0)
              {
                v6 = v14;
              }

              else
              {
                v6 = v14[0];
              }

              *buf = 136315138;
              *&buf[4] = v6;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I deleting virtual interface %s", buf, 0xCu);
            }

            v13 = 0;
            if (SHIBYTE(v15) < 0)
            {
              sub_100005F2C(v11, v14[0], v14[1]);
            }

            else
            {
              *v11 = *v14;
              v12 = v15;
            }

            if (SHIBYTE(v12) < 0)
            {
              sub_100005F2C(__p, v11[0], v11[1]);
            }

            else
            {
              *__p = *v11;
              v19 = v12;
            }

            v17 = 0;
            if (SHIBYTE(v19) < 0)
            {
              sub_100005F2C(buf, __p[0], __p[1]);
            }

            else
            {
              *buf = *__p;
              v33 = v19;
            }

            v20 = 0;
            if (ctu::cf::convert_copy())
            {
              v7 = v17;
              v17 = v20;
              v21 = v7;
              sub_100005978(&v21);
            }

            if (SHIBYTE(v33) < 0)
            {
              operator delete(*buf);
            }

            v13 = v17;
            v17 = 0;
            sub_100005978(&v17);
            if (SHIBYTE(v19) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v12) < 0)
            {
              operator delete(v11[0]);
            }

            RedirectFromName = NEVirtualInterfaceCreateRedirectFromName();
            if (RedirectFromName)
            {
              NEVirtualInterfaceInvalidate();
              CFRelease(RedirectFromName);
            }

            else
            {
              v9 = *(a1 + 40);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                if (v15 >= 0)
                {
                  v10 = v14;
                }

                else
                {
                  v10 = v14[0];
                }

                *buf = 136315138;
                *&buf[4] = v10;
                _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to create a reference to virtual interface %s", buf, 0xCu);
              }
            }

            sub_100005978(&v13);
          }

          if (SHIBYTE(v15) < 0)
          {
            operator delete(v14[0]);
          }
        }
      }

      close(v2);
    }

    freeifaddrs(v16);
  }
}

void sub_100418CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, const void *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a28);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_100418D60(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: start 1 ...", &v3, 2u);
  }

  v3 = a1;
  sub_100004AA0(&v4, a1 + 1);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, a1 + 1);
  operator new();
}

void sub_100418EB8(uint64_t a1, void **a2, BOOL a3)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 440);
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 136315906;
      *&buf[4] = "ipcInterfaceConfigReset";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      *&buf[18] = 2080;
      *&buf[20] = v8;
      *&buf[28] = 2080;
      *&buf[30] = asStringBool(a3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s cycle started: fResetStarted = %u (reason %s, start %s)", buf, 0x26u);
    }

    if (*(a1 + 440))
    {
      if (!*(a1 + 448))
      {
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10176FEAC(v9, v10, v11);
        }

        return;
      }

LABEL_31:
      ++*(a1 + 440);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      sub_1004217D0(&v29, *(a1 + 288), *(a1 + 296), (*(a1 + 296) - *(a1 + 288)) >> 4);
      *buf = a1;
      memset(&buf[8], 0, 24);
      sub_1004217D0(&buf[8], v29, v30, (v30 - v29) >> 4);
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&buf[32], *a2, a2[1]);
      }

      else
      {
        *&buf[32] = *a2;
        v35 = a2[2];
      }

      v36 = a3;
      operator new();
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
    *buf = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, buf);
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
          goto LABEL_22;
        }

        goto LABEL_20;
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
LABEL_22:
      if ((v21 & 1) == 0)
      {
        sub_100004A34(v19);
      }

      if (*(a1 + 448))
      {
        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10176FF2C(v22, v23, v24);
        }
      }

      else
      {
        v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
        v26 = dispatch_queue_create("ipcInterfaceConfigReset", v25);
        v27 = *(a1 + 448);
        *(a1 + 448) = v26;
        if (v27)
        {
          dispatch_release(v27);
        }

        v28 = *(a1 + 40);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "ipcInterfaceConfigReset";
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s queue created", buf, 0xCu);
        }
      }

      goto LABEL_31;
    }

LABEL_20:
    sub_10000501C(__p, "Started reset of interfaces");
    (*(*v20 + 1160))(v20, 3, __p, 0);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_22;
  }
}

void sub_1004192D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_100419354(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    v6 = a1 + 272;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v6 != a1 + 272 && *(v6 + 32) <= a2)
    {
      v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "not-given";
        if (a3)
        {
          v8 = a3;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I refresh with ID: %s", &buf, 0xCu);
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      v10 = ServiceMap;
      if (v11 < 0)
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
      *&buf = v11;
      v15 = sub_100009510(&v10[1].__m_.__sig, &buf);
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
          if (!v17)
          {
LABEL_34:
            if ((v18 & 1) == 0)
            {
              sub_100004A34(v16);
            }

            return;
          }

LABEL_21:
          buf = 0uLL;
          v23 = 0;
          if (a3)
          {
            v19 = a3;
          }

          else
          {
            v19 = "";
          }

          sub_10000501C(&buf, v19);
          sub_1004196C0(v17, &v20);
          (*(*v20 + 64))(v20);
          if (v21)
          {
            sub_100004A34(v21);
          }

          sub_100419790(v17, &v20);
          (*(*v20 + 64))(v20);
          if (v21)
          {
            sub_100004A34(v21);
          }

          sub_100419860(v17, &v20);
          if (v21)
          {
            sub_100004A34(v21);
          }

          sub_100419930(v17, &v20);
          (*(*v20 + 64))(v20, &buf);
          if (v21)
          {
            sub_100004A34(v21);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(buf);
          }

          goto LABEL_34;
        }
      }

      else
      {
        v17 = 0;
      }

      std::mutex::unlock(v10);
      v16 = 0;
      v18 = 1;
      if (!v17)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }
  }
}

void sub_100419650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004196C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  lpsrc = 0;
  v6 = 0;
  (*(*a1 + 56))(&lpsrc);
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
    sub_100004A34(v6);
  }
}

void sub_100419790(uint64_t a1@<X0>, void *a2@<X8>)
{
  lpsrc = 0;
  v6 = 0;
  (*(*a1 + 56))(&lpsrc);
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
    sub_100004A34(v6);
  }
}

void sub_100419860(uint64_t a1@<X0>, void *a2@<X8>)
{
  lpsrc = 0;
  v6 = 0;
  (*(*a1 + 56))(&lpsrc);
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
    sub_100004A34(v6);
  }
}

void sub_100419930(uint64_t a1@<X0>, void *a2@<X8>)
{
  lpsrc = 0;
  v6 = 0;
  (*(*a1 + 56))(&lpsrc);
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
    sub_100004A34(v6);
  }
}

void sub_100419A00(const __CFString *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = CFPreferencesCopyValue(a1, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v3)
  {
    v4 = v3;
    Length = CFStringGetLength(v3);
    if (Length)
    {
      usedBufLen = 0;
      v14.location = 0;
      v14.length = Length;
      CFStringGetBytes(v4, v14, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
      buffer = 0;
      v11 = 0;
      v12 = 0;
      sub_1000CFAD0(&buffer, usedBufLen + 1);
      v15.location = 0;
      v15.length = Length;
      CFStringGetBytes(v4, v15, 0x8000100u, 0, 0, buffer, Length, 0);
      if (Length >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000A2378();
      }

      if (Length >= 0x17)
      {
        operator new();
      }

      HIBYTE(v9) = Length;
      memmove(&__dst, buffer, Length);
      *(&__dst + Length) = 0;
      v7 = v9;
      v6 = buffer;
      *a2 = __dst;
      a2[2] = v7;
      if (v6)
      {
        v11 = v6;
        operator delete(v6);
      }
    }

    CFRelease(v4);
  }
}

void sub_100419B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100419BCC(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 272);
  if (!v3)
  {
    return 0;
  }

  v5 = a1 + 272;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == a1 + 272 || *(v5 + 32) > a2)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
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
  v18 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v18);
  if (!v14)
  {
    v16 = 0;
LABEL_18:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_16;
    }

LABEL_19:
    sub_100419930(v16, &v18);
    v6 = (*(*v18 + 64))(v18, a3);
    if (v19)
    {
      sub_100004A34(v19);
    }

    goto LABEL_21;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
    goto LABEL_19;
  }

LABEL_16:
  v6 = 0;
LABEL_21:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  return v6;
}

void sub_100419D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100419D84(uint64_t a1, signed int a2, uint64_t a3, int a4)
{
  v126 = a3;
  v127 = a2;
  v4 = *(a1 + 272);
  if (v4)
  {
    v6 = a3;
    v7 = a1 + 272;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v7 != a1 + 272 && *(v7 + 32) <= a2)
    {
      v120 = (*(**(a1 + 48) + 16))(*(a1 + 48));
      v9 = *v120;
      if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
      {
        WirelessTechnologyAsString();
        v10 = __p[0];
        v11 = "false";
        if ((SBYTE7(v123) & 0x80u) == 0)
        {
          v10 = __p;
        }

        if (a4)
        {
          v11 = "true";
        }

        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: tech: %s, forced: %s", buf, 0x16u);
        if (SBYTE7(v123) < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = &v127;
      v12 = sub_100423CEC(a1 + 312, &v127, &unk_101802C98, __p);
      v13 = v12;
      if (a4)
      {
        *(v12 + 8) = 0;
        v14 = *v120;
        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: dropped compatible technologies", __p, 2u);
        }

        if (v6)
        {
          goto LABEL_21;
        }

        v6 = *(v13 + 9);
        v116 = v13 + 9;
        if (v6)
        {
LABEL_22:
          memset(buf, 0, sizeof(buf));
          ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
          __p[0] = v17;
          v21 = sub_100009510(&v16[1].__m_.__sig, __p);
          if (v21)
          {
            v23 = v21[3];
            v22 = v21[4];
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v16);
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v22);
              v24 = 0;
LABEL_38:
              (*(*v23 + 120))(&cf, v23, v127, @"AllowsMultiplePDNConnectionsToSameAPN", kCFBooleanFalse);
              v27 = cf;
              v133[0] = 0;
              if (cf)
              {
                v28 = CFGetTypeID(cf);
                if (v28 == CFBooleanGetTypeID())
                {
                  ctu::cf::assign(v133, v27, v29);
                }
              }

              *(v13 + 41) = v133[0];
              sub_10000A1EC(&cf);
              if ((v24 & 1) == 0)
              {
                sub_100004A34(v22);
              }

              v30 = *(v13 + 41);
              v124 = 0;
              v125 = 0;
              sub_10041AEC0(a1, v127, &v124);
              if (v124)
              {
                sub_10041B304(a1, v127, v30, buf, 1, &v124);
              }

              *(v13 + 40) = sub_10041B40C(a1, v127, &v124);
              v31 = Registry::getServiceMap(*(a1 + 56));
              v32 = v31;
              if (v33 < 0)
              {
                v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
                v35 = 5381;
                do
                {
                  v33 = v35;
                  v36 = *v34++;
                  v35 = (33 * v35) ^ v36;
                }

                while (v36);
              }

              std::mutex::lock(v31);
              __p[0] = v33;
              v37 = sub_100009510(&v32[1].__m_.__sig, __p);
              if (v37)
              {
                v38 = v37[3];
                v39 = v37[4];
                if (v39)
                {
                  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v32);
                  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v39);
                  if (!v38)
                  {
                    v40 = 0;
LABEL_65:
                    sub_100004A34(v39);
                    goto LABEL_66;
                  }

                  goto LABEL_59;
                }

                std::mutex::unlock(v32);
                if (v38)
                {
LABEL_59:
                  __p[0] = 0;
                  __p[1] = 0;
                  sub_100419790(v38, __p);
                  if ((*(*__p[0] + 96))(__p[0]))
                  {
                    v40 = (*(*__p[0] + 88))(__p[0]) ^ 1;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (__p[1])
                  {
                    sub_100004A34(__p[1]);
                  }

                  if (v39)
                  {
                    goto LABEL_65;
                  }

LABEL_66:
                  v42 = v125;
                  v43 = 2;
                  do
                  {
                    if (v40 && (v43 == 16 || v43 == 32 || v43 == 0x8000000))
                    {
                      v44 = v42;
                    }

                    else
                    {
                      sub_10041AEC0(a1, v127, __p);
                      v45 = __p[0];
                      v44 = __p[1];
                      __p[0] = 0;
                      __p[1] = 0;
                      v124 = v45;
                      v125 = v44;
                      if (v42)
                      {
                        sub_100004A34(v42);
                        if (__p[1])
                        {
                          sub_100004A34(__p[1]);
                        }
                      }

                      if (v45)
                      {
                        sub_10041B304(a1, v127, v30, buf, v43, &v124);
                      }
                    }

                    v46 = v43 >> 35;
                    v43 *= 2;
                    v42 = v44;
                  }

                  while (!v46);
                  if (*&buf[8] - *buf >= 0x21uLL)
                  {
                    v47 = 126 - 2 * __clz((*&buf[8] - (*buf + 16)) >> 4);
                    if (*&buf[8] == *buf + 16)
                    {
                      v48 = 0;
                    }

                    else
                    {
                      v48 = v47;
                    }

                    sub_100421918((*buf + 16), *&buf[8], v48, 1);
                  }

                  v49 = 2;
                  do
                  {
                    *__p = 0u;
                    v123 = 0u;
                    sub_10041B664(a1, v127, __p);
                    if (__p[0])
                    {
                      sub_10041B978(a1, v127, v30, buf, v49, __p, &v123);
                    }

                    if (*(&v123 + 1))
                    {
                      sub_100004A34(*(&v123 + 1));
                    }

                    if (__p[1])
                    {
                      sub_100004A34(__p[1]);
                    }

                    v50 = v49 >> 35;
                    v49 *= 2;
                  }

                  while (!v50);
                  sub_10041BC30(a1, v127, buf);
                  sub_10041C0C4(a1, v127, buf);
                  sub_10041C680(a1, v127, buf);
                  sub_10041CA18(a1, buf);
                  if (v127 == 1)
                  {
                    sub_10041CC0C(a1, 1, v30, buf);
                  }

                  __p[0] = 0;
                  __p[1] = 0;
                  *&v123 = 0;
                  v51 = sub_100007DEC(a1 + 264, &v127);
                  sub_10009A398(v51, __p);
                  v52 = __p[0];
                  if (*&buf[8] - *buf == __p[1] - __p[0])
                  {
                    if (__p[1] == __p[0])
                    {
LABEL_98:
                      *(v13 + 8) |= v6;
                      v55 = *v120;
                      v118 = 0;
                      if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
                      {
                        WirelessTechnologyList::asString(&cf, (v13 + 4));
                        if (v132 >= 0)
                        {
                          p_cf = &cf;
                        }

                        else
                        {
                          p_cf = cf;
                        }

                        *v133 = 136315138;
                        *&v133[4] = p_cf;
                        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: skipped - no changes detected, new compatible technologies: %s", v133, 0xCu);
                        if (v132 < 0)
                        {
                          operator delete(cf);
                        }

                        v118 = 0;
                      }

LABEL_147:
                      *v116 = v6;
                      cf = __p;
                      sub_1000212F4(&cf);
                      if (v125)
                      {
                        sub_100004A34(v125);
                      }

                      __p[0] = buf;
                      sub_1000212F4(__p);
                      goto LABEL_150;
                    }

                    v53 = 0;
                    v54 = 0;
                    while ((sub_1002A44B4(*(*buf + v53), *&v52[v53]) & 1) != 0)
                    {
                      ++v54;
                      v52 = __p[0];
                      v53 += 16;
                      if (v54 >= (__p[1] - __p[0]) >> 4)
                      {
                        goto LABEL_98;
                      }
                    }
                  }

                  v57 = sub_10041CE58(a1, v127, buf, 0x30u);
                  v59 = v58;
                  v60 = sub_10041CE58(a1, v127, buf, 0x8000000u);
                  v119 = v61;
                  v62 = v60;
                  *v133 = &v127;
                  v63 = sub_100423C00(a1 + 264, &v127, &unk_101802C98, v133);
                  std::mutex::lock((v63 + 5));
                  v64 = *(v63 + 13);
                  *(v63 + 13) = *buf;
                  *buf = v64;
                  v65 = v63[15];
                  v63[15] = *&buf[16];
                  *&buf[16] = v65;
                  std::mutex::unlock((v63 + 5));
                  *(v13 + 8) = v6;
                  v66 = *v120;
                  if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
                  {
                    v128 = &v127;
                    v67 = sub_100423C00(a1 + 264, &v127, &unk_101802C98, &v128);
                    std::mutex::lock((v67 + 5));
                    v69 = v67[13];
                    v68 = v67[14];
                    std::mutex::unlock((v67 + 5));
                    WirelessTechnologyList::asString(&cf, (v13 + 4));
                    v70 = v132 >= 0 ? &cf : cf;
                    *v133 = 134218242;
                    *&v133[4] = (v68 - v69) >> 4;
                    v134 = 2080;
                    v135 = v70;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: %zu APNs updated, reset compatible technologies: %s", v133, 0x16u);
                    if (v132 < 0)
                    {
                      operator delete(cf);
                    }
                  }

                  v71 = Registry::getServiceMap(*(a1 + 56));
                  v72 = v71;
                  if (v73 < 0)
                  {
                    v74 = (v73 & 0x7FFFFFFFFFFFFFFFLL);
                    v75 = 5381;
                    do
                    {
                      v73 = v75;
                      v76 = *v74++;
                      v75 = (33 * v75) ^ v76;
                    }

                    while (v76);
                  }

                  std::mutex::lock(v71);
                  cf = v73;
                  v77 = sub_100009510(&v72[1].__m_.__sig, &cf);
                  if (v77)
                  {
                    v78 = v77[3];
                    v79 = v77[4];
                    if (v79)
                    {
                      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::mutex::unlock(v72);
                      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_100004A34(v79);
                      v80 = 0;
                      if (!v78)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    v78 = 0;
                  }

                  std::mutex::unlock(v72);
                  v79 = 0;
                  v80 = 1;
                  if (!v78)
                  {
                    goto LABEL_132;
                  }

LABEL_120:
                  v81 = (*(*v78 + 1192))(v78);
                  v82 = v81;
                  if (v81)
                  {
                    v83 = (*(*v81 + 56))(v81);
                    if (v83 == v127)
                    {
                      if (v57)
                      {
                        v84 = *v120;
                        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(cf) = 67109376;
                          HIDWORD(cf) = HIDWORD(v57);
                          v130 = 1024;
                          v131 = v59;
                          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I PHS APN set changed: was 0x%x, become 0x%x", &cf, 0xEu);
                        }

                        if (HIDWORD(v57))
                        {
                          (*(*v82 + 24))(v82, v127);
                        }
                      }

                      if (v62)
                      {
                        v85 = *v120;
                        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(cf) = 67109376;
                          HIDWORD(cf) = HIDWORD(v62);
                          v130 = 1024;
                          v131 = v119;
                          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I LL PHS APN set changed: was 0x%x, become 0x%x", &cf, 0xEu);
                        }

                        if (HIDWORD(v62))
                        {
                          (*(*v82 + 24))(v82, v127);
                        }
                      }
                    }
                  }

LABEL_132:
                  if ((v80 & 1) == 0)
                  {
                    sub_100004A34(v79);
                  }

                  v86 = Registry::getServiceMap(*(a1 + 56));
                  v87 = v86;
                  if (v88 < 0)
                  {
                    v89 = (v88 & 0x7FFFFFFFFFFFFFFFLL);
                    v90 = 5381;
                    do
                    {
                      v88 = v90;
                      v91 = *v89++;
                      v90 = (33 * v90) ^ v91;
                    }

                    while (v91);
                  }

                  std::mutex::lock(v86);
                  cf = v88;
                  v92 = sub_100009510(&v87[1].__m_.__sig, &cf);
                  if (v92)
                  {
                    v93 = v92[3];
                    v94 = v92[4];
                    if (v94)
                    {
                      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::mutex::unlock(v87);
                      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_100004A34(v94);
                      v95 = 0;
                      if (!v93)
                      {
                        goto LABEL_144;
                      }

                      goto LABEL_143;
                    }
                  }

                  else
                  {
                    v93 = 0;
                  }

                  std::mutex::unlock(v87);
                  v94 = 0;
                  v95 = 1;
                  if (!v93)
                  {
LABEL_144:
                    if ((v95 & 1) == 0)
                    {
                      sub_100004A34(v94);
                    }

                    v118 = 1;
                    goto LABEL_147;
                  }

LABEL_143:
                  (*(*v93 + 16))(v93, v127);
                  goto LABEL_144;
                }
              }

              else
              {
                std::mutex::unlock(v32);
              }

              v40 = 0;
              goto LABEL_66;
            }
          }

          else
          {
            v23 = 0;
          }

          std::mutex::unlock(v16);
          v22 = 0;
          v24 = 1;
          goto LABEL_38;
        }

        v41 = *v120;
        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: skipped - forced but wireless technology is not detected", __p, 2u);
        }
      }

      else
      {
        if (v6 && (v12[4] & v6) == 0)
        {
LABEL_21:
          v116 = v13 + 9;
          goto LABEL_22;
        }

        v25 = *v120;
        if (os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
        {
          WirelessTechnologyAsString();
          v26 = (SBYTE7(v123) & 0x80u) == 0 ? __p : __p[0];
          *buf = 136315138;
          *&buf[4] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I reconfigure_sync: skipped - compatible technology (%s), no forced", buf, 0xCu);
          if (SBYTE7(v123) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v118 = 0;
LABEL_150:
      v96 = sub_100007DEC(a1 + 264, &v127);
      std::mutex::lock(v96);
      v98 = v96[8];
      v97 = v96[9];
      std::mutex::unlock(v96);
      v99 = v97 - v98;
      if (v97 == v98)
      {
        return v118;
      }

      v100 = 0;
      v101 = v99 >> 4;
      if (v101 <= 1)
      {
        v102 = 1;
      }

      else
      {
        v102 = v101;
      }

      v117 = v96;
      while (1)
      {
        sub_10041CF40(v96, v100, __p);
        v103 = *(__p[0] + 19);
        if (__p[1])
        {
          sub_100004A34(__p[1]);
        }

        v104 = ConnectionMaskToType(v103);
        if (isSlice())
        {
          v105 = Registry::getServiceMap(*(a1 + 56));
          v106 = v105;
          if (v107 < 0)
          {
            v108 = (v107 & 0x7FFFFFFFFFFFFFFFLL);
            v109 = 5381;
            do
            {
              v107 = v109;
              v110 = *v108++;
              v109 = (33 * v109) ^ v110;
            }

            while (v110);
          }

          std::mutex::lock(v105);
          __p[0] = v107;
          v111 = sub_100009510(&v106[1].__m_.__sig, __p);
          if (v111)
          {
            v112 = v111[3];
            v113 = v111[4];
            if (v113)
            {
              atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v106);
              atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
              v96 = v117;
              v114 = v113;
              sub_100004A34(v113);
              if (v112)
              {
                goto LABEL_171;
              }

              sub_100004A34(v113);
            }

            else
            {
              v114 = 0;
              std::mutex::unlock(v106);
              if (v112)
              {
LABEL_171:
                if (((*(*v112 + 256))(v112, v127, v103) & 0x100000000) != 0)
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  *&v123 = 0;
                  (*(*v112 + 160))(__p, v112, v127, v104);
                  *buf = 0;
                  *&buf[8] = 0;
                  sub_10041CF40(v96, v100, &cf);
                  sub_1002AEE08();
                }

                if (!v114)
                {
                  goto LABEL_168;
                }

                v115 = v114;
LABEL_167:
                sub_100004A34(v115);
                goto LABEL_168;
              }
            }
          }

          else
          {
            std::mutex::unlock(v106);
          }
        }

        sub_10041CF40(v96, v100, __p);
        sub_1002A3288(__p[0], v120, "");
        v115 = __p[1];
        if (__p[1])
        {
          goto LABEL_167;
        }

LABEL_168:
        if (++v100 == v102)
        {
          return v118;
        }
      }
    }
  }

  return 0;
}

void sub_10041AD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, void **p_p, uint64_t a27)
{
  if ((v28 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  p_p = &__p;
  sub_1000212F4(&p_p);
  if (a22)
  {
    sub_100004A34(a22);
  }

  __p = (v29 - 128);
  sub_1000212F4(&__p);
  _Unwind_Resume(a1);
}

void sub_10041AEC0(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 272);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 272;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 == a1 + 272 || *(v5 + 32) > a2)
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v28 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v28);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_17:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_18:
  v28 = 0;
  v29 = 0;
  sub_1004196C0(v14, &v28);
  if (v28)
  {
    (*(*v28 + 72))(&v27);
    v16 = *(&v27 + 1);
    v17 = v27;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  *a3 = 0;
  a3[1] = 0;
  v28 = 0;
  v29 = 0;
  sub_100419930(v14, &v28);
  v18 = v28;
  if (v28)
  {
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v18 + 136))(&v27);
    v19 = v27;
    v27 = 0uLL;
    v20 = a3[1];
    *a3 = v19;
    if (v20)
    {
      sub_100004A34(v20);
      if (*(&v27 + 1))
      {
        sub_100004A34(*(&v27 + 1));
      }
    }

    if (v16)
    {
      sub_100004A34(v16);
    }
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  if (!*a3)
  {
    v28 = 0;
    v29 = 0;
    sub_100419860(v14, &v28);
    if (v28)
    {
      (*(*v28 + 72))(&v27);
      v21 = v27;
      v27 = 0uLL;
      v22 = a3[1];
      *a3 = v21;
      if (v22)
      {
        sub_100004A34(v22);
        if (*(&v27 + 1))
        {
          sub_100004A34(*(&v27 + 1));
        }
      }
    }

    if (v29)
    {
      sub_100004A34(v29);
    }

    if (!*a3 && v17)
    {
      v28 = 0;
      v29 = 0;
      sub_100419790(v14, &v28);
      v23 = v28;
      if (v28)
      {
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v23 + 72))(&v27);
        v24 = v27;
        v27 = 0uLL;
        v25 = a3[1];
        *a3 = v24;
        if (v25)
        {
          sub_100004A34(v25);
          if (*(&v27 + 1))
          {
            sub_100004A34(*(&v27 + 1));
          }
        }

        if (v16)
        {
          sub_100004A34(v16);
        }
      }

      if (v29)
      {
        sub_100004A34(v29);
      }

      if (!*a3)
      {
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = a3[1];
        *a3 = v17;
        a3[1] = v16;
        if (v26)
        {
          sub_100004A34(v26);
        }
      }
    }
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10041B278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  v21 = *(v16 + 8);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10041B304(_BOOL8 result, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5, uint64_t *a6)
{
  v9 = *a4;
  v10 = a4[1] - *a4;
  v11 = v10 >> 4;
  if (v10)
  {
    v12 = a3;
    v17 = a2;
    v13 = 0;
    v14 = *a6;
    if (v11 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v10 >> 4;
    }

    while (1)
    {
      v16 = *v9;
      result = sub_10041D72C(result, v12, v14, *v9);
      if (result)
      {
        break;
      }

      ++v13;
      v9 += 2;
      if (v15 == v13)
      {
        v13 = v15;
        goto LABEL_10;
      }
    }

    *(v16 + 152) |= a5;
LABEL_10:
    a2 = v17;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == v11)
  {

    sub_10041D7DC(result, a2, a4, a5, 0, a6);
  }

  return result;
}

uint64_t sub_10041B40C(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(a1 + 272);
  if (!v3)
  {
    return 0;
  }

  v5 = a1 + 272;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == a1 + 272 || *(v5 + 32) > a2 || !*a3 || *(*a3 + 144) > 1u)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v34 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v34);
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
LABEL_20:
  v34 = 0;
  v35 = 0;
  sub_1004196C0(v14, &v34);
  if (v34)
  {
    (*(*v34 + 72))(v33);
    v19 = v33[0];
    v18 = v33[1];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  if (!v19)
  {
    goto LABEL_39;
  }

  v20 = *a3;
  v21 = *(v19 + 71);
  if (v21 >= 0)
  {
    v22 = *(v19 + 71);
  }

  else
  {
    v22 = *(v19 + 56);
  }

  v23 = *(v20 + 71);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(v20 + 56);
  }

  if (v22 != v23 || ((v27 = *(v19 + 48), v26 = (v19 + 48), v25 = v27, v21 >= 0) ? (v28 = v26) : (v28 = v25), (v31 = *(v20 + 48), v29 = (v20 + 48), v30 = v31, v24 >= 0) ? (v32 = v29) : (v32 = v30), memcmp(v28, v32, v22)))
  {
LABEL_39:
    v16 = 1;
    if (!v18)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v16 = 0;
  if (v18)
  {
LABEL_40:
    sub_100004A34(v18);
  }

LABEL_41:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  return v16;
}

void sub_10041B634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041B664(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 272);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 272;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 == a1 + 272 || *(v5 + 32) > a2)
  {
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v24 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v24);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_17:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_18:
  v24 = 0;
  v25 = 0;
  sub_1004196C0(v14, &v24);
  if (v24)
  {
    (*(*v24 + 72))(&v22);
    v17 = v22;
    v16 = v23;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  v24 = 0;
  v25 = 0;
  sub_100419930(v14, &v24);
  v18 = v24;
  if (v24)
  {
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v18 + 136))(&v22);
    v20 = v22;
    v19 = v23;
    v22 = 0;
    v23 = 0;
    if (v16)
    {
      sub_100004A34(v16);
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v20)
  {
    v21 = v19;
  }

  else
  {
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17;
    v21 = v16;
    if (v19)
    {
      sub_100004A34(v19);
      v20 = v17;
      v21 = v16;
    }
  }

  *a3 = v20;
  *(a3 + 8) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 16) = v17;
  *(a3 + 24) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10041B918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041B978(_BOOL8 a1, uint64_t a2, uint64_t a3, const void **a4, unint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v7 = a6;
  v9 = a3;
  v10 = *a7;
  v11 = *a7 && (*(v10 + 152) & a5) != 0 && (*(v10 + 160) & a5) != 0;
  v12 = *a4;
  v13 = a4[1] - *a4;
  v14 = v13 >> 4;
  if (!v13)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v26 = a1;
  v27 = a2;
  v29 = a4;
  v15 = 0;
  v16 = 0;
  v17 = *a6;
  if (v14 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v13 >> 4;
  }

  while (1)
  {
    v19 = *&v12[v15];
    if (v11)
    {
      break;
    }

    a1 = sub_10041D72C(a1, v9, v17, *&v12[v15]);
    if (a1)
    {
      goto LABEL_17;
    }

LABEL_13:
    ++v16;
    v15 += 16;
    if (v18 == v16)
    {
      v16 = v18;
      v7 = a6;
      goto LABEL_19;
    }
  }

  if ((*(v19 + 152) & a5) == 0)
  {
    goto LABEL_13;
  }

  a1 = sub_10041D72C(a1, v9, v17, *&v12[v15]);
  if (a1)
  {
LABEL_17:
    v7 = a6;
    goto LABEL_18;
  }

  v20 = *(v26 + 40);
  a1 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  v7 = a6;
  if (a1)
  {
    v21 = &v34;
    asStringMask(a5);
    if (v35 < 0)
    {
      v21 = v34;
    }

    sub_1002A4078(*a6, v32);
    v22 = v33;
    v23 = v32[0];
    sub_1002A4078(*(*v29 + v15), __p);
    v24 = v32;
    if (v22 < 0)
    {
      v24 = v23;
    }

    if (v31 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    *buf = 136315650;
    v37 = v21;
    v38 = 2080;
    v39 = v24;
    v40 = 2080;
    v41 = v25;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Service %s requested to be on apn:%s but placed on %s since it already has the service for BB", buf, 0x20u);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    v19 = *(*v29 + v15);
    v14 = (v29[1] - *v29) >> 4;
  }

LABEL_18:
  *(v19 + 160) |= a5;
LABEL_19:
  a4 = v29;
  a2 = v27;
LABEL_20:
  if (v16 == v14)
  {
    sub_10041D7DC(a1, a2, a4, 0, a5, v7);
  }
}

void sub_10041BBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041BC30(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_10:
  v17 = (*(*v15 + 904))(v15);
  if (v17)
  {
    if ((*(*v17 + 64))(v17, a2, 0))
    {
      v18 = *a3;
      v19 = a3[1] - *a3;
      if (v19)
      {
        v20 = 0;
        v21 = v19 >> 4;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        v23 = -1;
        do
        {
          v24 = *v18;
          v18 += 16;
          if (*(v24 + 152))
          {
            v23 = v20;
          }

          ++v20;
        }

        while (v22 != v20);
        if (v23 != -1)
        {
          v28 = 0;
          *buf = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          sub_100424E40(&v28, buf);
          v25 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v26 = asString();
            *buf = 136315138;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Generating APN for %s", buf, 0xCu);
          }

          sub_1002AEE08();
        }
      }
    }
  }

LABEL_24:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  return 0;
}

void sub_10041C060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

capabilities::ct *sub_10041C0C4(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  result = capabilities::ct::supportsVoiceCall(v4);
  if (result)
  {
    result = capabilities::ct::supportsEmergencySoSOverCell(result);
    if (result)
    {
      v6 = *a3;
      v7 = a3[1] - *a3;
      if (!v7)
      {
LABEL_8:
        v13 = 0;
        *buf = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        sub_100424E40(&v13, buf);
        if (a3[1] == *a3)
        {
          v9 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Empty APN list, generate a fake internet APN too besides SOS APN", buf, 2u);
          }

          v11 = 0;
          v12 = 0;
          sub_1002A938C(&v11);
        }

        v10 = *v4;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No Emergency APN present, generate one", buf, 2u);
        }

        v11 = 0;
        v12 = 0;
        sub_1002A938C(&v11);
      }

      v8 = v7 >> 4;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      while ((*(*v6 + 154) & 4) == 0)
      {
        v6 += 16;
        if (!--v8)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_10041C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041C680(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v41 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  if (!v12)
  {
    v13 = 0;
    goto LABEL_8;
  }

  v13 = v12[3];
  v14 = v12[4];
  if (!v14)
  {
LABEL_8:
    std::mutex::unlock(v7);
    v14 = 0;
    v15 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v15 = 0;
LABEL_9:
  v40 = v14;
  if (v13)
  {
    v16 = (*(*v13 + 248))(v13, a2);
    v17 = (v16 & 0x100) == 0;
  }

  else
  {
    LOBYTE(v16) = 0;
    v17 = 1;
  }

  v39 = v15;
  v19 = *a3;
  v18 = a3[1];
  if (v18 == *a3)
  {
    goto LABEL_30;
  }

  v20 = 0;
  v21 = 0;
  v22 = v17 | v16;
  while (1)
  {
    v23 = *&v19[v20];
    v24 = *(v23 + 152);
    if ((v24 & 0x8000000) != 0)
    {
      break;
    }

LABEL_20:
    ++v21;
    ++v20;
    if (v21 >= v18 - v19)
    {
      goto LABEL_30;
    }
  }

  if ((v24 >> 4) & 1 | v22 & 1)
  {
    goto LABEL_37;
  }

  v25 = *v41;
  v26 = os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT);
  if (v24 != 0x8000000)
  {
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Removing not allowed dedicated low-latency tethering service from APN", buf, 2u);
      v19 = *a3;
      v18 = a3[1];
      v23 = *&(*a3)[v20];
      v24 = *(v23 + 152);
    }

    *(v23 + 152) = v24 & 0xFFFFFFFFF7FFFFFFLL;
    goto LABEL_20;
  }

  if (v26)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Removing not allowed dedicated low-latency tethering APN", buf, 2u);
    v19 = *a3;
    v18 = a3[1];
  }

  sub_100422B44(buf, &v19[v20 + 1], v18, &v19[v20]);
  v18 = v27;
  for (i = a3[1]; i != v18; i -= 16)
  {
    v29 = *(i - 8);
    if (v29)
    {
      sub_100004A34(v29);
    }
  }

  a3[1] = v18;
  v19 = *a3;
LABEL_30:
  if (v18 != v19)
  {
    v30 = 0;
    v31 = v18 - v19;
    if (v31 <= 1)
    {
      v31 = 1;
    }

    while (1)
    {
      v32 = *&v19[v30];
      v33 = *(v32 + 152);
      if ((v33 & 0x10) != 0)
      {
        break;
      }

      ++v30;
      if (!--v31)
      {
        goto LABEL_35;
      }
    }

    v38 = *v41;
    v36 = v40;
    if (os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Adding low-latency tethering service to APN", buf, 2u);
      v32 = *&(*a3)[v30];
      v33 = *(v32 + 152);
    }

    *(v32 + 152) = v33 | 0x8000000;
    v35 = 1;
    if (v39)
    {
      return v35;
    }

LABEL_38:
    sub_100004A34(v36);
    return v35;
  }

LABEL_35:
  v34 = *v41;
  if (os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I No Tethering APN present, not adding low-latency tethering", buf, 2u);
  }

LABEL_37:
  v35 = 0;
  v36 = v40;
  if ((v39 & 1) == 0)
  {
    goto LABEL_38;
  }

  return v35;
}

void sub_10041C9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, std::__shared_weak_count *a12)
{
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041CA18(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (sub_10029FE84(*v2))
      {
        v6 = *(a1 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*v2 + 48);
          if (*(*v2 + 71) < 0)
          {
            v7 = *v7;
          }

          v8 = sub_1002A24BC(*(*v2 + 144));
          v9 = *(*v2 + 148);
          *buf = 136315650;
          v17 = v7;
          v18 = 2080;
          v19 = v8;
          v20 = 1024;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I APN %s (%s.%d), allowing no DNS", buf, 0x1Cu);
        }

        v5 = 1;
      }

      else if ((isSliceMask(*(*v2 + 152)) & 1) == 0)
      {
        v10 = *(a1 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = (*v2 + 48);
          if (*(*v2 + 71) < 0)
          {
            v11 = *v11;
          }

          v12 = sub_1002A24BC(*(*v2 + 144));
          v13 = *(*v2 + 148);
          v14 = asStringBool(*(*v2 + 232));
          *buf = 136315906;
          v17 = v11;
          v18 = 2080;
          v19 = v12;
          v20 = 1024;
          v21 = v13;
          v22 = 2080;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I APN %s (%s.%d), allowing no DNS not changed, current value is %s", buf, 0x26u);
        }
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  return v5 & 1;
}

void sub_10041CC0C(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v4 = *(a1 + 248);
  v6 = *v4;
  v5 = v4[1];
  if (v6 != v5)
  {
    while (*(*v6 + 49) != 1)
    {
      v6 += 16;
      if (v6 == v5)
      {
        return;
      }
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v12 = ServiceMap;
    if ((v13 & 0x8000000000000000) != 0)
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
    v23 = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, &v23);
    if (!v17)
    {
      std::mutex::unlock(v12);
      return;
    }

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
LABEL_22:
        sub_100004A34(v18);
        return;
      }
    }

    else
    {
      std::mutex::unlock(v12);
      if (!v19)
      {
        return;
      }
    }

    v23 = 0;
    v24 = 0;
    (**v19)(&v23, v19, *v6 + 24);
    if (v23)
    {
      v21 = 0;
      v22 = 0;
      v20[2] = 0;
      v20[3] = 0;
      (*(*v23 + 128))(&v21);
      if (v21)
      {
        v20[0] = 0;
        v20[1] = 0;
        sub_10041B978(a1, a2, a3, a4, 0x4000000uLL, &v21, v20);
      }

      if (v22)
      {
        sub_100004A34(v22);
      }
    }

    if (v24)
    {
      sub_100004A34(v24);
    }

    if (v18)
    {
      goto LABEL_22;
    }
  }
}

void sub_10041CE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10041CE58(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v22 = a2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = sub_100007DEC(a1 + 264, &v22);
  sub_10009A398(v6, &v19);
  v7 = v19;
  if (v20 == v19)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = (v20 - v19) >> 4;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = *v7;
      v7 += 16;
      v8 |= *(v10 + 152);
      --v9;
    }

    while (v9);
  }

  v12 = *a3;
  v11 = *(a3 + 8);
  v13 = v11 - *a3;
  if (v11 == *a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = v13 >> 4;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v16 = *v12;
      v12 += 2;
      v14 |= *(v16 + 152);
      --v15;
    }

    while (v15);
  }

  v17 = ((v8 & a4) != (v14 & a4)) | ((v8 & a4) << 32);
  v23 = &v19;
  sub_1000212F4(&v23);
  return v17;
}

void sub_10041CF40(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock(a1);
  v6 = *(a1 + 64);
  if (a2 >= (*(a1 + 72) - v6) >> 4)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(v6 + 16 * a2);
    *a3 = v7;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::mutex::unlock(a1);
}

uint64_t sub_10041CFBC(uint64_t a1, int a2)
{
  v7 = a2;
  v2 = *(a1 + 272);
  if (!v2)
  {
    return 0;
  }

  v3 = a1 + 272;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 == a1 + 272 || *(v3 + 32) > a2)
  {
    return 0;
  }

  v6 = sub_100007DEC(a1 + 264, &v7);
  std::mutex::lock(v6);
  v4 = (v6[9] - v6[8]) >> 4;
  std::mutex::unlock(v6);
  return v4;
}

void sub_10041D054(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_10041D0F0(a1);
  v10 = v6;
  v7 = *(a1 + 272);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = a1 + 272;
  do
  {
    if (*(v7 + 32) >= v6)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v6));
  }

  while (v7);
  if (v8 != a1 + 272 && *(v8 + 32) <= v6)
  {
    v9 = sub_100007DEC(a1 + 264, &v10);
    sub_10041CF40(v9, a2, a3);
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_10041D0F0(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v12 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v12);
  if (v7)
  {
    v8 = v7[3];
    v9 = v7[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v10 = 0;
      if (!v8)
      {
        goto LABEL_7;
      }

LABEL_11:
      LODWORD(v2) = (*(*v8 + 808))(v8);
      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock(v2);
  v9 = 0;
  v10 = 1;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v10 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v9);
  }

LABEL_13:
  if (v8)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void sub_10041D210(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041D22C(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = a2;
  v5 = *(a1 + 272);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = a1 + 272;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 != a1 + 272 && *(v7 + 32) <= a2)
  {
    v8 = sub_100007DEC(a1 + 264, &v9);
    sub_10041CF40(v8, a3, a4);
  }

  else
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_10041D2B8(uint64_t result, int a2, unint64_t a3, const std::string *a4)
{
  v9 = a2;
  v4 = *(result + 272);
  if (v4)
  {
    v7 = result + 272;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v7 != result + 272 && *(v7 + 32) <= a2)
    {
      v8 = sub_100007DEC(result + 264, &v9);
      sub_10041D33C(v8, a3, a4);
    }
  }
}

void sub_10041D33C(uint64_t a1, unint64_t a2, const std::string *a3)
{
  std::mutex::lock(a1);
  v6 = *(a1 + 64);
  if (a2 < (*(a1 + 72) - v6) >> 4)
  {
    v7 = *(v6 + 16 * a2);
    if (v7)
    {
      std::string::operator=(v7 + 2, a3);
    }
  }

  std::mutex::unlock(a1);
}

void sub_10041D3C0(uint64_t result@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v9 = a2;
  v5 = *(result + 272);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = result + 272;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 != result + 272 && *(v7 + 32) <= a2)
  {
    v8 = sub_100007DEC(result + 264, &v9);
    sub_10041D44C(v8, a3, a4);
  }

  else
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_10041D44C(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock(a1);
  *a3 = 0;
  a3[1] = 0;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (v6 != v7)
  {
    v8 = a2[23];
    if (v8 >= 0)
    {
      v9 = a2[23];
    }

    else
    {
      v9 = *(a2 + 1);
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = *(a1 + 64);
    do
    {
      v12 = *v11;
      v13 = *(*v11 + 71);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(*v11 + 56);
      }

      if (v13 == v9)
      {
        v15 = v14 >= 0 ? (v12 + 48) : *(v12 + 48);
        if (!memcmp(v15, v10, v9))
        {
          v22 = v11[1];
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          *a3 = v12;
          a3[1] = v22;
          goto LABEL_38;
        }
      }

      v11 += 2;
    }

    while (v11 != v7);
    v16 = a2[23];
    if (v16 >= 0)
    {
      v17 = a2[23];
    }

    else
    {
      v17 = *(a2 + 1);
    }

    if (v16 < 0)
    {
      a2 = *a2;
    }

    while (1)
    {
      v18 = *v6;
      if (*(*v6 + 312) == 1)
      {
        v19 = *(v18 + 311);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v18 + 296);
        }

        if (v19 == v17)
        {
          v21 = v20 >= 0 ? (v18 + 288) : *(v18 + 288);
          if (!memcmp(v21, a2, v17))
          {
            break;
          }
        }
      }

      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_38;
      }
    }

    v23 = v6[1];
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v18;
    a3[1] = v23;
  }

LABEL_38:

  std::mutex::unlock(a1);
}

uint64_t sub_10041D5CC(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100424EAC(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_10041D714(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

BOOL sub_10041D72C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 71);
  v5 = *(a3 + 56);
  if (v4 >= 0)
  {
    v5 = *(a3 + 71);
  }

  v6 = *(a4 + 71);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a4 + 56);
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v11 = (a3 + 48);
  }

  else
  {
    v11 = *(a3 + 48);
  }

  if (v7 >= 0)
  {
    v12 = (a4 + 48);
  }

  else
  {
    v12 = *(a4 + 48);
  }

  v14 = strcasecmp(v11, v12) == 0;
  result = v14;
  v14 = !v14 || a2 == 0;
  if (!v14)
  {
    return *(a3 + 148) == *(a4 + 148);
  }

  return result;
}

void sub_10041D95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041D974(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ---------------DarwinPDPConfig:------------", buf, 2u);
    v2 = *v1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 336);
    if (*(a1 + 359) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 360);
    if (*(a1 + 383) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 384);
    *buf = 136315650;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    *&buf[22] = 1024;
    *&buf[24] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fPrimaryDnsOverride: %s, fSecondaryDnsOverride: %s, fDNSNotificationHandlerToken: %d", buf, 0x1Cu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 440);
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fResetStarted: %u", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asStringBool(*(a1 + 448) != 0);
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIpcInterfaceConfigResetQueue: %s", buf, 0xCu);
  }

  v8 = *(a1 + 312);
  v9 = (a1 + 320);
  if (v8 != (a1 + 320))
  {
    do
    {
      v85 = *(v8 + 7);
      v10 = sub_100007DEC(a1 + 264, &v85);
      std::mutex::lock(v10);
      v12 = v10[8];
      v11 = v10[9];
      std::mutex::unlock(v10);
      v13 = *v1;
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
      {
        v14 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t Sim %s:", buf, 0xCu);
        v13 = *v1;
      }

      v15 = (v11 - v12) >> 4;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        WirelessTechnologyList::asString(&v82, (v8 + 4));
        v77 = v12;
        v78 = v11;
        v16 = v9;
        if (v84 >= 0)
        {
          v17 = &v82;
        }

        else
        {
          v17 = v82;
        }

        WirelessTechnologyAsString();
        if (v81 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v19 = asStringBool(*(v8 + 40));
        v20 = asStringBool(*(v8 + 41));
        *buf = 134219010;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = v17;
        *&buf[22] = 2080;
        *&buf[24] = p_p;
        *&buf[32] = 2080;
        v87 = v19;
        v88 = 2080;
        v89 = v20;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t %lu APN(s) found, fCompatibleTechnologies: %s, fCurrentTechnology: %s, fIsCorporateInternetAPN: %s, fAllowsDupApnNames: %s", buf, 0x34u);
        if (v81 < 0)
        {
          operator delete(__p);
        }

        v9 = v16;
        v12 = v77;
        v11 = v78;
        if (v84 < 0)
        {
          operator delete(v82);
        }
      }

      if (v11 != v12)
      {
        v21 = 0;
        if (v15 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v15;
        }

        do
        {
          v23 = *v1;
          if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNx%zu:", buf, 0xCu);
          }

          sub_10041CF40(v10, v21, buf);
          sub_1002A24E4(*buf, v1);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          ++v21;
        }

        while (v22 != v21);
      }

      v24 = v8[1];
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
          v25 = v8[2];
          v26 = *v25 == v8;
          v8 = v25;
        }

        while (!v26);
      }

      v8 = v25;
    }

    while (v25 != v9);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v29;
  v33 = sub_100009510(&v28[1].__m_.__sig, buf);
  if (!v33)
  {
    v35 = 0;
LABEL_50:
    std::mutex::unlock(v28);
    v34 = 0;
    v36 = 1;
    if (!v35)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v35 = v33[3];
  v34 = v33[4];
  if (!v34)
  {
    goto LABEL_50;
  }

  atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v28);
  atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v34);
  v36 = 0;
  if (v35)
  {
LABEL_51:
    (*(*v35 + 40))(v35);
  }

LABEL_52:
  if ((v36 & 1) == 0)
  {
    sub_100004A34(v34);
  }

  v37 = *(a1 + 248);
  v38 = *v37;
  v39 = v37[1];
  v40 = *(a1 + 40);
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
  if (v38 == v39)
  {
    if (v41)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t no cloud apns", buf, 2u);
    }
  }

  else
  {
    if (v41)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t from cloud:", buf, 2u);
      v42 = *(a1 + 248);
      v38 = *v42;
      v39 = v42[1];
    }

    if (v38 != v39)
    {
      while (*(*v38 + 49) != 1)
      {
LABEL_76:
        v38 += 16;
        if (v38 == v39)
        {
          goto LABEL_80;
        }
      }

      *buf = 0;
      *&buf[8] = 0;
      v43 = Registry::getServiceMap(*(a1 + 56));
      v44 = v43;
      if (v45 < 0)
      {
        v46 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
        v47 = 5381;
        do
        {
          v45 = v47;
          v48 = *v46++;
          v47 = (33 * v47) ^ v48;
        }

        while (v48);
      }

      std::mutex::lock(v43);
      v82 = v45;
      v49 = sub_100009510(&v44[1].__m_.__sig, &v82);
      if (v49)
      {
        v51 = v49[3];
        v50 = v49[4];
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v44);
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v50);
          v52 = 0;
LABEL_67:
          (**v51)(buf, v51, *v38 + 24);
          if ((v52 & 1) == 0)
          {
            sub_100004A34(v50);
          }

          if (*buf)
          {
            v82 = 0;
            v83 = 0;
            (*(**buf + 128))(&v82);
            if (v82)
            {
              sub_1002A24E4(v82, v1);
            }

            if (v83)
            {
              sub_100004A34(v83);
            }
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          goto LABEL_76;
        }
      }

      else
      {
        v51 = 0;
      }

      std::mutex::unlock(v44);
      v50 = 0;
      v52 = 1;
      goto LABEL_67;
    }
  }

LABEL_80:
  if (*(a1 + 408))
  {
    v53 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPCContextConfigInfo:", buf, 2u);
    }

    v54 = *(a1 + 392);
    if (v54 != (a1 + 400))
    {
      do
      {
        v55 = *v1;
        if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
        {
          v56 = *(v54 + 7);
          v57 = *(v54 + 8);
          v58 = *(v54 + 9);
          v59 = *(v54 + 10);
          v60 = *(v54 + 11);
          *buf = 67110144;
          *&buf[4] = v56;
          *&buf[8] = 1024;
          *&buf[10] = v57;
          *&buf[14] = 1024;
          *&buf[16] = v58;
          *&buf[20] = 1024;
          *&buf[22] = v59;
          *&buf[26] = 1024;
          *&buf[28] = v60;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t id=%u c.id=%u maxInterfaces=%u maxUlPipes=%u maxDlPipes=%u ", buf, 0x20u);
        }

        v61 = v54[1];
        if (v61)
        {
          do
          {
            v62 = v61;
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          do
          {
            v62 = v54[2];
            v26 = *v62 == v54;
            v54 = v62;
          }

          while (!v26);
        }

        v54 = v62;
      }

      while (v62 != (a1 + 400));
    }
  }

  if (*(a1 + 432))
  {
    v63 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPCConfigSetInfo:", buf, 2u);
    }

    v64 = *(a1 + 416);
    if (v64 != (a1 + 424))
    {
      do
      {
        v65 = *v1;
        if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
        {
          v66 = subscriber::asString();
          *buf = 136315138;
          *&buf[4] = v66;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t simSlot=%s", buf, 0xCu);
        }

        v68 = v64[5];
        v67 = v64[6];
        while (v68 != v67)
        {
          v69 = *v1;
          if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
          {
            v70 = v68;
            if (*(v68 + 23) < 0)
            {
              v70 = *v68;
            }

            v71 = *(v68 + 6);
            v72 = *(v68 + 7);
            v73 = v68[4];
            v74 = *(v68 + 10);
            *buf = 136316162;
            *&buf[4] = v70;
            *&buf[12] = 1024;
            *&buf[14] = v71;
            *&buf[18] = 1024;
            *&buf[20] = v72;
            *&buf[24] = 2048;
            *&buf[26] = v73;
            LOWORD(v87) = 1024;
            *(&v87 + 2) = v74;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\t name=%s dataPath=%u trafficType=%u serviceMask=%llu maxQueueSets=%u ", buf, 0x28u);
          }

          v68 += 6;
        }

        v75 = v64[1];
        if (v75)
        {
          do
          {
            v76 = v75;
            v75 = *v75;
          }

          while (v75);
        }

        else
        {
          do
          {
            v76 = v64[2];
            v26 = *v76 == v64;
            v64 = v76;
          }

          while (!v26);
        }

        v64 = v76;
      }

      while (v76 != (a1 + 424));
    }
  }
}

void sub_10041E368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if ((v36 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041E40C(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = *(a1 + 272);
  if (v2)
  {
    v3 = a1 + 272;
    do
    {
      if (*(v2 + 32) >= a2)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a2));
    }

    while (v2);
    if (v3 == a1 + 272 || *(v3 + 32) > a2)
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = *(sub_1000A8C4C(a1 + 312, &v5) + 8);
    }
  }

  return v2 & 1;
}

uint64_t sub_10041E484(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v12 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v12);
  if (v7)
  {
    v8 = v7[3];
    v9 = v7[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v10 = 0;
      if (!v8)
      {
        goto LABEL_7;
      }

LABEL_11:
      LODWORD(v2) = (*(*v8 + 792))(v8);
      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock(v2);
  v9 = 0;
  v10 = 1;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v10 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v9);
  }

LABEL_13:
  if (v8)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void sub_10041E5A4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041E5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 96))(&v19, v14, a2, 1, @"MTU", 0, 0);
  sub_10006DD00(&cf, &v19);
  sub_10000A1EC(&v19);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (cf)
  {
    v18 = cf;
    CFRetain(cf);
    v16 = sub_10041E790((a1 + 40), v3, &v18);
    sub_100010250(&v18);
  }

  else
  {
    v16 = 0;
  }

  sub_100010250(&cf);
  return v16;
}

void sub_10041E748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_100010250(&a9);
  sub_100010250(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10041E790(os_log_t *a1, unsigned int a2, CFArrayRef *a3)
{
  v51 = 0;
  Count = CFArrayGetCount(*a3);
  if (Count >= 1)
  {
    v6 = Count;
    v43 = 0;
    v7 = 0;
    while (1)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(*a3, v7);
      v9 = ValueAtIndex;
      if (ValueAtIndex && (v10 = CFGetTypeID(ValueAtIndex), v10 == CFDictionaryGetTypeID()))
      {
        if (CFDictionaryContainsKey(v9, @"size") && CFDictionaryContainsKey(v9, @"technology-mask"))
        {
          Value = CFDictionaryGetValue(v9, @"technology-mask");
          v12 = Value;
          if (Value)
          {
            v13 = CFGetTypeID(Value);
            if (v13 != CFNumberGetTypeID())
            {
              v12 = 0;
            }
          }

          v14 = CFDictionaryGetValue(v9, @"size");
          v15 = v14;
          if (v14 && (v16 = CFGetTypeID(v14), TypeID = CFNumberGetTypeID(), v12) && v16 == TypeID)
          {
            if (!CFNumberGetValue(v12, kCFNumberIntType, &valuePtr))
            {
              v32 = *a1;
              if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_32;
              }

              *buf = 134217984;
              *v53 = v7;
              v27 = v32;
              v28 = "#I Item %lu couldn't retrieve from kCFTechMaskKey, continuing to next item!";
              goto LABEL_30;
            }

            if (!valuePtr)
            {
              v33 = *a1;
              if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_32;
              }

              *buf = 134218240;
              *v53 = v7;
              *&v53[8] = 1024;
              *&v53[10] = 0;
              v27 = v33;
              v28 = "#I Item %lu kCFTechMaskKey has mask = %u, continuing to next item!";
              v31 = 18;
              goto LABEL_31;
            }

            v18 = v43 | ((valuePtr & 0x10) >> 4);
            v43 = v18;
            if (a2 == 13)
            {
              if ((valuePtr & 4) == 0)
              {
                goto LABEL_17;
              }
            }

            else
            {
              *buf = 0;
              sub_10029ECB8(valuePtr, (v18 & 1) == 0, buf);
              if ((*buf & asWirelessTechnology()) == 0)
              {
LABEL_17:
                v19 = *a1;
                if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = asWirelessTechnology();
                  WirelessTechnologyList::asString(v48, &v47);
                  if (v49 >= 0)
                  {
                    v20 = v48;
                  }

                  else
                  {
                    v20 = v48[0];
                  }

                  v21 = asString();
                  sub_10029ECEC(valuePtr, __p);
                  v22 = __p;
                  if (v46 < 0)
                  {
                    v22 = __p[0];
                  }

                  *buf = 136446722;
                  *v53 = v20;
                  *&v53[8] = 2082;
                  *&v53[10] = v21;
                  *&v53[18] = 2082;
                  *&v53[20] = v22;
                  v23 = v19;
                  v24 = "#I The current technology %{public}s (data mode:%{public}s) is not in the CB MTU mask %{public}s , continuing to next item!";
                  v25 = 32;
LABEL_47:
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
                  if (v46 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v49 < 0)
                  {
                    operator delete(v48[0]);
                  }

                  goto LABEL_32;
                }

                goto LABEL_32;
              }
            }

            v34 = CFNumberGetValue(v15, kCFNumberIntType, &v51);
            v35 = *a1;
            v36 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
            if (!v34)
            {
              if (!v36)
              {
                goto LABEL_32;
              }

              *buf = 0;
              v27 = v35;
              v28 = "#E MTU fetching from carrier bundle was a error continuing to next item!";
              v31 = 2;
              goto LABEL_31;
            }

            if (v36)
            {
              v42 = v51;
              v47 = asWirelessTechnology();
              WirelessTechnologyList::asString(v48, &v47);
              if (v49 >= 0)
              {
                v37 = v48;
              }

              else
              {
                v37 = v48[0];
              }

              v38 = asString();
              sub_10029ECEC(valuePtr, __p);
              v39 = __p;
              if (v46 < 0)
              {
                v39 = __p[0];
              }

              *buf = 67109890;
              *v53 = v42;
              *&v53[4] = 2082;
              *&v53[6] = v37;
              *&v53[14] = 2082;
              *&v53[16] = v38;
              *&v53[24] = 2082;
              *&v53[26] = v39;
              v23 = v35;
              v24 = "#I MTU size %d found for wireless technology %{public}s (data mode:%{public}s). CB mask %{public}s";
              v25 = 38;
              goto LABEL_47;
            }
          }

          else
          {
            v30 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *v53 = v7;
              v27 = v30;
              v28 = "#I Item %lu doesn't have keys kCFMTUSizeKey and kCFTechMaskKey properly formatted, continuing to next item!";
              goto LABEL_30;
            }
          }
        }

        else
        {
          v29 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *v53 = v7;
            v27 = v29;
            v28 = "#I Item %lu doesn't have keys kCFMTUSizeKey and kCFTechMaskKey , continuing to next item!";
            goto LABEL_30;
          }
        }
      }

      else
      {
        v26 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v53 = v7;
          v27 = v26;
          v28 = "#I Item %lu is not an dictionary, continuing to next item!";
LABEL_30:
          v31 = 12;
LABEL_31:
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v31);
        }
      }

LABEL_32:
      if (v6 == ++v7)
      {
        return v51;
      }
    }
  }

  v40 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I MTU value set has zero items, using default value!", buf, 2u);
  }

  return v51;
}

void sub_10041ECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041ED18(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5)
{
  if (a3 || !a5 || !*a4)
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v33 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v33);
  if (!v15)
  {
    std::mutex::unlock(v10);
    return;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v10);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v16);
    if (!v17)
    {
LABEL_35:
      sub_100004A34(v16);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v10);
    if (!v17)
    {
      return;
    }
  }

  v33 = 0;
  v34 = 0;
  sub_1004196C0(v17, &v33);
  v18 = v33;
  if (v33)
  {
    v19 = a4[1];
    v31 = *a4;
    v32 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = (*(*v18 + 88))(v18, &v31, a5);
    if (v32)
    {
      sub_100004A34(v32);
    }

    if (v20)
    {
      v21 = Registry::getServiceMap(*(a1 + 56));
      v22 = v21;
      if ((v23 & 0x8000000000000000) != 0)
      {
        v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
        v25 = 5381;
        do
        {
          v23 = v25;
          v26 = *v24++;
          v25 = (33 * v25) ^ v26;
        }

        while (v26);
      }

      std::mutex::lock(v21);
      v35 = v23;
      v27 = sub_100009510(&v22[1].__m_.__sig, &v35);
      if (v27)
      {
        v29 = v27[3];
        v28 = v27[4];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v22);
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v28);
          v30 = 0;
LABEL_28:
          if (v29)
          {
            (*(*v29 + 664))(v29, a2, 21, 0xFFFFFFFFLL, 0);
          }

          if ((v30 & 1) == 0)
          {
            sub_100004A34(v28);
          }

          goto LABEL_32;
        }
      }

      else
      {
        v29 = 0;
      }

      std::mutex::unlock(v22);
      v28 = 0;
      v30 = 1;
      goto LABEL_28;
    }
  }

LABEL_32:
  if (v34)
  {
    sub_100004A34(v34);
  }

  if (v16)
  {
    goto LABEL_35;
  }
}

void sub_10041EF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041EFE8(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (!v11)
  {
    v13 = 0;
LABEL_13:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_14:
    v16 = 0;
    v17 = 0;
    sub_100419930(v13, &v16);
    v15 = v16;
    if (v16)
    {
      *a3 = 0;
      (*(*v15 + 88))(v15);
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176FFAC();
      }

      *a3 = 0;
    }

    if (v17)
    {
      sub_100004A34(v17);
    }

    goto LABEL_21;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176FFE8();
  }

  *a3 = 0;
LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10041F188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041F1B8(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (!v11)
  {
    v13 = 0;
LABEL_13:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_14:
    v16 = 0;
    v17 = 0;
    sub_100419930(v13, &v16);
    v15 = v16;
    if (v16)
    {
      *a3 = 0;
      (*(*v15 + 80))(v15);
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176FFAC();
      }

      *a3 = 0;
    }

    if (v17)
    {
      sub_100004A34(v17);
    }

    goto LABEL_21;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176FFE8();
  }

  *a3 = 0;
LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10041F358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10041F388(capabilities::ct *a1, uint64_t a2)
{
  if (capabilities::ct::supportedPDPContextCount(a1) >> 32)
  {
    sub_101770024();
  }

  v2 = subscriber::simSlotAsInstance();
  return (v2 + 1) | (capabilities::ct::supportedPDPContextCount(v2) << 32);
}

void sub_10041F3D4(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *&v47 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v47);
  if (!v10)
  {
    std::mutex::unlock(v5);
    return;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v5);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
    if (!v12)
    {
LABEL_45:
      sub_100004A34(v11);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v5);
    if (!v12)
    {
      return;
    }
  }

  v13 = (*(*v12 + 792))(v12);
  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA398))
  {
    *&v47 = @"IPC";
    *(&v47 + 1) = @"IPCContext";
    qword_101FBA388 = 0;
    unk_101FBA390 = 0;
    qword_101FBA380 = 0;
    sub_10005B328(&qword_101FBA380, &v47, &v48, 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA380, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA398);
  }

  v14 = Registry::getServiceMap(*(a1 + 56));
  v15 = v14;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(v14);
  *&v47 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v47);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_19:
  (*(*v22 + 104))(&theDict, v22, v13, 1, &qword_101FBA380, 0, 0);
  sub_10006DD00(&v46, &theDict);
  v24 = theArray;
  theArray = v46;
  v46 = 0;
  *&v47 = v24;
  sub_100010250(&v47);
  sub_100010250(&v46);
  sub_10000A1EC(&theDict);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        theDict = 0;
        *&v47 = CFArrayGetValueAtIndex(theArray, i);
        sub_100010180(&theDict, &v47);
        if (theDict)
        {
          v47 = 0uLL;
          Value = CFDictionaryGetValue(theDict, @"Id");
          v28 = Value;
          if (Value)
          {
            LODWORD(v46) = 0;
            v29 = CFGetTypeID(Value);
            if (v29 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v46, v28, v30);
            }

            LODWORD(v47) = v46;
          }

          v31 = CFDictionaryGetValue(theDict, @"MaxInterfaces");
          v32 = v31;
          if (v31)
          {
            LODWORD(v46) = 0;
            v33 = CFGetTypeID(v31);
            if (v33 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v46, v32, v34);
            }

            DWORD1(v47) = v46;
          }

          v35 = CFDictionaryGetValue(theDict, @"MaxUlPipes");
          v36 = v35;
          if (v35)
          {
            LODWORD(v46) = 0;
            v37 = CFGetTypeID(v35);
            if (v37 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v46, v36, v38);
            }

            DWORD2(v47) = v46;
          }

          v39 = CFDictionaryGetValue(theDict, @"MaxDlPipes");
          v40 = v39;
          if (v39)
          {
            LODWORD(v46) = 0;
            v41 = CFGetTypeID(v39);
            if (v41 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v46, v40, v42);
            }

            HIDWORD(v47) = v46;
          }

          if (v47)
          {
            v46 = &v47;
            v43 = sub_1004250DC(a2, &v47, &unk_101802C98, &v46);
            *(v43 + 2) = v47;
          }
        }

        sub_10001021C(&theDict);
      }
    }
  }

  sub_100010250(&theArray);
  if (v11)
  {
    goto LABEL_45;
  }
}

void sub_10041F898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __cxa_guard_abort(&qword_101FBA398);
  sub_100010250(va);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10041F938(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10041F96C(unint64_t *a1@<X8>)
{
  *&__p[8] = 0u;
  *&__p[24] = 0x700000000;
  *&__p[32] = 1;
  *&__p[40] = 4;
  __p[23] = 12;
  qmemcpy(__p, "__Internet__", 12);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *&__p[44] = 256;
  v2 = sub_100422CA8(a1, __p);
  v3 = __p[23];
  a1[1] = v2;
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  *&__p[24] = 0x700000000;
  __p[23] = 13;
  qmemcpy(__p, "__Internet2__", 13);
  *&__p[32] = 1;
  *&__p[40] = 0x10100000004;
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v5 = v4 + 48;
  }

  a1[1] = v5;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[16] = 0u;
  __p[23] = 15;
  strcpy(__p, "__LLTethering__");
  *&__p[40] = 2;
  *&__p[28] = 3;
  *&__p[32] = 0x8000000;
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    v7 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v7 = v6 + 48;
  }

  a1[1] = v7;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  *&__p[24] = 0x200000000;
  __p[23] = 13;
  qmemcpy(__p, "__Tethering__", 13);
  *&__p[32] = 16;
  *&__p[40] = 2;
  v8 = a1[1];
  if (v8 >= a1[2])
  {
    v9 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v9 = v8 + 48;
  }

  a1[1] = v9;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  *&__p[24] = 0x100000000;
  __p[23] = 7;
  strcpy(__p, "__IMS__");
  *&__p[32] = 393216;
  *&__p[40] = 2;
  v10 = a1[1];
  if (v10 >= a1[2])
  {
    v11 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v11 = v10 + 48;
  }

  a1[1] = v11;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  memset(&__p[16], 0, 32);
  __p[23] = 16;
  *__p = *"__OtherInitial__";
  *&__p[40] = 1;
  *&__p[24] = 0;
  v12 = a1[1];
  if (v12 >= a1[2])
  {
    v13 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v13 = v12 + 48;
  }

  a1[1] = v13;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  __p[23] = 12;
  qmemcpy(__p, "__LLFilter__", 12);
  *&__p[24] = 0x100000002;
  *&__p[32] = 134610944;
  *&__p[40] = 0;
  v14 = a1[1];
  if (v14 >= a1[2])
  {
    v15 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v15 = v14 + 48;
  }

  a1[1] = v15;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  memset(&__p[16], 0, 32);
  __p[23] = 15;
  strcpy(__p, "__OtherFilter__");
  *&__p[24] = 2;
  v16 = a1[1];
  if (v16 >= a1[2])
  {
    v17 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v17 = v16 + 48;
  }

  a1[1] = v17;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  __p[23] = 9;
  qmemcpy(__p, "__LLDRB__", 9);
  *&__p[24] = 0x100000001;
  *&__p[32] = 134610944;
  *&__p[40] = 0;
  v18 = a1[1];
  if (v18 >= a1[2])
  {
    v19 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v19 = v18 + 48;
  }

  a1[1] = v19;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  *&__p[40] = 0;
  __p[23] = 12;
  qmemcpy(__p, "__OtherDRB__", 12);
  *&__p[24] = 1uLL;
  v20 = a1[1];
  if (v20 >= a1[2])
  {
    v21 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v21 = v20 + 48;
  }

  a1[1] = v21;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

void sub_10041FE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10042303C(&__p);
  _Unwind_Resume(a1);
}

const void **sub_10041FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA3B8))
  {
    __p[0] = @"IPC";
    __p[1] = @"IPCConfigSet";
    qword_101FBA3A8 = 0;
    unk_101FBA3B0 = 0;
    qword_101FBA3A0 = 0;
    sub_10005B328(&qword_101FBA3A0, __p, &__p[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA3A0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA3B8);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
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
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_10:
  (*(*v14 + 104))(v42, v14, a2, 1, &qword_101FBA3A0, 0, 0);
  sub_10006DD00(&v40, v42);
  __p[0] = theArray;
  theArray = v40;
  v40 = 0;
  sub_100010250(__p);
  sub_100010250(&v40);
  sub_10000A1EC(v42);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        theDict = 0;
        __p[0] = CFArrayGetValueAtIndex(theArray, i);
        sub_100010180(&theDict, __p);
        if (theDict)
        {
          v44 = 0u;
          memset(__p, 0, sizeof(__p));
          if (CFDictionaryGetValue(theDict, @"Name"))
          {
            v40 = 0;
            v41 = 0uLL;
            ctu::cf::assign();
            v18 = v40;
            *v42 = v41;
            *&v42[7] = *(&v41 + 7);
            v19 = HIBYTE(v41);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            __p[0] = v18;
            __p[1] = *v42;
            *(&__p[1] + 7) = *&v42[7];
            HIBYTE(__p[2]) = v19;
          }

          else
          {
            v19 = HIBYTE(__p[2]);
          }

          if (v19 >= 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = __p[1];
          }

          if (v20)
          {
            Value = CFDictionaryGetValue(theDict, @"DataPathType");
            v22 = Value;
            if (Value)
            {
              LODWORD(v40) = 0;
              v23 = CFGetTypeID(Value);
              if (v23 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v40, v22, v24);
              }

              LODWORD(__p[3]) = v40;
            }

            v25 = CFDictionaryGetValue(theDict, @"ServiceMask");
            v26 = v25;
            if (v25)
            {
              v40 = 0;
              v27 = CFGetTypeID(v25);
              if (v27 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v40, v26, v28);
              }

              *&v44 = v40;
            }

            v29 = CFDictionaryGetValue(theDict, @"TrafficTypeMask");
            v30 = v29;
            if (v29)
            {
              LODWORD(v40) = 0;
              v31 = CFGetTypeID(v29);
              if (v31 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v40, v30, v32);
              }

              HIDWORD(__p[3]) = v40;
            }

            v33 = CFDictionaryGetValue(theDict, @"MaxQueueSets");
            v34 = v33;
            if (v33)
            {
              LODWORD(v40) = 0;
              v35 = CFGetTypeID(v33);
              if (v35 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v40, v34, v36);
              }

              DWORD2(v44) = v40;
            }

            sub_1004203F4(a3, __p);
            LOBYTE(v19) = HIBYTE(__p[2]);
          }

          if ((v19 & 0x80) != 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10001021C(&theDict);
      }
    }
  }

  return sub_100010250(&theArray);
}

void sub_100420338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_guard_abort(&qword_101FBA3B8);
  sub_100010250(&a12);
  sub_10042303C(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1004203F4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100423158(a1, a2);
  }

  else
  {
    sub_1004230E0(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_100420434(NSObject **a1)
{
  v2 = capabilities::ct::supportsIPCInterfaceConfig(a1);
  if (v2)
  {
    if (ApplePDPHelperInterface::getInstance(v2))
    {
      sub_1004204AC(a1);

      sub_1004209D8(a1);
    }

    else
    {
      v3 = a1[5];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_101770050(v3, v4, v5);
      }
    }
  }
}

void sub_1004204AC(uint64_t a1)
{
  v43[0] = 0;
  v43[1] = 0;
  v42 = v43;
  v2 = *(a1 + 64);
  *buf = *(a1 + 56);
  *&buf[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v4 = *&v41[8];
  v3 = *v41;
  if (*v41 != *&v41[8])
  {
    v5 = *&v41[16];
    do
    {
      v6 = (*&v41[16])(*v3);
      if (v6)
      {
        break;
      }

      ++v3;
    }

    while (v3 != *&v41[8]);
    v7 = *&v41[8];
    while (v3 != v7)
    {
      v8 = *v3;
      *buf = 0;
      *&buf[8] = 0;
      v6 = sub_10041F388(v6, v8);
      *buf = v6;
      *&buf[8] = v9;
      if (v6)
      {
        v44 = buf;
        v6 = sub_1004250DC(&v42, buf, &unk_101802C98, &v44);
        *(v6 + 32) = *buf;
      }

      do
      {
        if (++v3 == v4)
        {
          break;
        }

        v6 = v5(*v3);
      }

      while ((v6 & 1) == 0);
    }
  }

  *v41 = xmmword_101802ED0;
  *buf = v41;
  v10 = sub_1004250DC(&v42, v41, &unk_101802C98, buf);
  *(v10 + 2) = *v41;
  sub_10041F3D4(a1, &v42);
  v12 = *(a1 + 392);
  v13 = (a1 + 400);
  if (v12 != (a1 + 400))
  {
    do
    {
      v14 = v43[0];
      v15 = *(v12 + 7);
      if (!v43[0])
      {
        goto LABEL_24;
      }

      v16 = v43;
      do
      {
        v17 = *(v14 + 7);
        v18 = v17 >= v15;
        v19 = v17 < v15;
        if (v18)
        {
          v16 = v14;
        }

        v14 = v14[v19];
      }

      while (v14);
      if (v16 == v43 || v15 < *(v16 + 7))
      {
LABEL_24:
        *&v41[12] = 0;
        *&v41[4] = 0;
        *v41 = v15;
        Instance = ApplePDPHelperInterface::getInstance(v11);
        v21 = (*(*Instance + 40))(Instance, v41);
        v22 = *(a1 + 40);
        if (v21)
        {
          v11 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT);
          if (v11)
          {
            v23 = *(v12 + 7);
            *buf = 136315394;
            *&buf[4] = "updateIpcContextConfiguration_sync";
            *&buf[12] = 1024;
            *&buf[14] = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Unconfigured ipcContext %u", buf, 0x12u);
          }
        }

        else
        {
          v11 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR);
          if (v11)
          {
            v27 = *(v12 + 7);
            *buf = 136315394;
            *&buf[4] = "updateIpcContextConfiguration_sync";
            *&buf[12] = 1024;
            *&buf[14] = v27;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Cannot unconfigure ipcContext %u", buf, 0x12u);
          }
        }
      }

      v24 = v12[1];
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
          v25 = v12[2];
          v26 = *v25 == v12;
          v12 = v25;
        }

        while (!v26);
      }

      v12 = v25;
    }

    while (v25 != v13);
  }

  v28 = v42;
  if (v42 != v43)
  {
    while (1)
    {
      v29 = *v13;
      v30 = *(v28 + 7);
      if (!*v13)
      {
        goto LABEL_46;
      }

      v31 = a1 + 400;
      do
      {
        v32 = *(v29 + 28);
        v18 = v32 >= v30;
        v33 = v32 < v30;
        if (v18)
        {
          v31 = v29;
        }

        v29 = *(v29 + 8 * v33);
      }

      while (v29);
      if (v31 == v13 || v30 < *(v31 + 28))
      {
        goto LABEL_46;
      }

      v11 = IPCContextConfig::operator!=();
      if (v11)
      {
        break;
      }

LABEL_51:
      v38 = v28[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v28[2];
          v26 = *v39 == v28;
          v28 = v39;
        }

        while (!v26);
      }

      v28 = v39;
      if (v39 == v43)
      {
        goto LABEL_57;
      }
    }

    v30 = *(v28 + 7);
LABEL_46:
    *v41 = v30;
    *&v41[4] = 1;
    *&v41[8] = *(v28 + 36);
    *&v41[16] = *(v28 + 11);
    v34 = ApplePDPHelperInterface::getInstance(v11);
    v35 = (*(*v34 + 40))(v34, v41);
    v36 = *(a1 + 40);
    if (v35)
    {
      v11 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        v37 = *(v28 + 7);
        *buf = 136315394;
        *&buf[4] = "updateIpcContextConfiguration_sync";
        *&buf[12] = 1024;
        *&buf[14] = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: Configured ipcContext %u", buf, 0x12u);
      }
    }

    else
    {
      v11 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR);
      if (v11)
      {
        v40 = *(v28 + 7);
        *buf = 136315394;
        *&buf[4] = "updateIpcContextConfiguration_sync";
        *&buf[12] = 1024;
        *&buf[14] = v40;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Cannot configure ipcContext %u", buf, 0x12u);
      }
    }

    goto LABEL_51;
  }

LABEL_57:
  if ((a1 + 392) != &v42)
  {
    sub_1004251B0((a1 + 392), v42, v43);
  }

  sub_10006DCAC(&v42, v43[0]);
}

void sub_100420994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_10006DCAC(&a14, a15);
  _Unwind_Resume(a1);
}

void sub_1004209D8(uint64_t a1)
{
  i = a1;
  v68[0] = 0;
  v68[1] = 0;
  v67 = v68;
  v2 = *(a1 + 64);
  *buf = *(a1 + 56);
  *&buf[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v3 = *v71;
  v4 = *&v71[8];
  v65 = i;
  if (*v71 != *&v71[8])
  {
    v5 = *&v71[16];
    do
    {
      if (v5(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v4);
    v6 = *&v71[8];
    while (v3 != v6)
    {
      v66 = *v3;
      memset(buf, 0, 24);
      sub_10041FED0(i, v66, buf);
      v69 = &v66;
      v7 = sub_1001AB974(&v67, &v66, &unk_101802C98, &v69) + 5;
      if (v7 != buf)
      {
        sub_1004232BC(v7, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 4));
      }

      v70 = buf;
      sub_10042303C(&v70);
      memset(buf, 0, 24);
      sub_10041F96C(buf);
      v9 = *buf;
      v8 = *&buf[8];
      while (v9 != v8)
      {
        v69 = &v66;
        v10 = sub_1001AB974(&v67, &v66, &unk_101802C98, &v69);
        sub_1004203F4((v10 + 5), v9);
        v9 += 3;
      }

      v70 = buf;
      sub_10042303C(&v70);
      ++v3;
      for (i = v65; v3 != v4; ++v3)
      {
        if (v5(*v3))
        {
          break;
        }
      }
    }
  }

  v11 = *(i + 416);
  v12 = (i + 424);
  if (v11 != (i + 424))
  {
    do
    {
      v13 = v68[0];
      if (!v68[0])
      {
        goto LABEL_27;
      }

      v14 = *(v11 + 8);
      v15 = v68;
      do
      {
        if (*(v13 + 8) >= v14)
        {
          v15 = v13;
        }

        v13 = *&v13[8 * (*(v13 + 8) < v14)];
      }

      while (v13);
      if (v15 != v68 && v14 >= *(v15 + 8))
      {
        v20 = sub_100007DEC(&v67, v11 + 8);
        v21 = v11[5];
        v22 = v11[6];
        if (v21 != v22)
        {
          v23 = v20;
          do
          {
            v25 = *v23;
            v24 = v23[1];
            if (*v23 != v24)
            {
              v26 = *(v21 + 23);
              if (v26 >= 0)
              {
                v27 = *(v21 + 23);
              }

              else
              {
                v27 = v21[1];
              }

              while (1)
              {
                v28 = *(v25 + 23);
                v29 = v28;
                if ((v28 & 0x80u) != 0)
                {
                  v28 = *(v25 + 8);
                }

                if (v28 == v27)
                {
                  v30 = v29 >= 0 ? v25 : *v25;
                  v31 = v26 >= 0 ? v21 : *v21;
                  if (!memcmp(v30, v31, v27))
                  {
                    break;
                  }
                }

                v25 += 48;
                if (v25 == v24)
                {
                  goto LABEL_55;
                }
              }
            }

            if (v25 == v24)
            {
LABEL_55:
              memset(v71, 0, sizeof(v71));
              v32 = subscriber::simSlotAsInstance();
              *v71 = v32 + 1;
              v71[16] = 0;
              v33 = v21;
              if (*(v21 + 23) < 0)
              {
                v33 = *v21;
              }

              *&v71[8] = v33;
              Instance = ApplePDPHelperInterface::getInstance(v32);
              v35 = (*(*Instance + 48))(Instance, v71);
              v36 = *(i + 40);
              if (v35)
              {
                if (os_log_type_enabled(*(i + 40), OS_LOG_TYPE_DEFAULT))
                {
                  v37 = v21;
                  if (*(v21 + 23) < 0)
                  {
                    v37 = *v21;
                  }

                  *buf = 136315394;
                  *&buf[4] = "updateIpcConfigSetConfiguration_sync";
                  *&buf[12] = 2080;
                  *&buf[14] = v37;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: Unconfigured ipcConfigSet %s", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(*(i + 40), OS_LOG_TYPE_ERROR))
              {
                v38 = v21;
                if (*(v21 + 23) < 0)
                {
                  v38 = *v21;
                }

                *buf = 136315394;
                *&buf[4] = "updateIpcConfigSetConfiguration_sync";
                *&buf[12] = 2080;
                *&buf[14] = v38;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Cannot unconfigure ipcConfigSet %s", buf, 0x16u);
              }
            }

            v21 += 6;
          }

          while (v21 != v22);
        }
      }

      else
      {
LABEL_27:
        v16 = *(i + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v39 = subscriber::asString();
          *v71 = 136315394;
          *&v71[4] = "updateIpcConfigSetConfiguration_sync";
          *&v71[12] = 2080;
          *&v71[14] = v39;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: cannot find new config for %s", v71, 0x16u);
        }
      }

      v17 = v11[1];
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
          v18 = v11[2];
          v19 = *v18 == v11;
          v11 = v18;
        }

        while (!v19);
      }

      v11 = v18;
    }

    while (v18 != v12);
  }

  v40 = v67;
  if (v67 != v68)
  {
    v41 = "updateIpcConfigSetConfiguration_sync";
    do
    {
      v43 = *(v40 + 5);
      v42 = *(v40 + 6);
      while (v43 != v42)
      {
        v44 = *v12;
        v45 = *(v40 + 8);
        if (!*v12)
        {
          goto LABEL_98;
        }

        v46 = v12;
        do
        {
          if (*(v44 + 32) >= v45)
          {
            v46 = v44;
          }

          v44 = *(v44 + 8 * (*(v44 + 32) < v45));
        }

        while (v44);
        if (v46 == v12 || v45 < *(v46 + 8))
        {
          goto LABEL_98;
        }

        v48 = v46[5];
        v47 = v46[6];
        if (v48 != v47)
        {
          v49 = v41;
          v50 = v43[2].i8[7];
          if (v50 >= 0)
          {
            v51 = v43[2].u8[7];
          }

          else
          {
            v51 = v43[1];
          }

          while (1)
          {
            v52 = *(v48 + 23);
            v53 = v52;
            if ((v52 & 0x80u) != 0)
            {
              v52 = *(v48 + 8);
            }

            if (v52 == v51)
            {
              v54 = v53 >= 0 ? v48 : *v48;
              v55 = v50 >= 0 ? v43 : *v43;
              if (!memcmp(v54, v55, v51))
              {
                break;
              }
            }

            v48 += 48;
            if (v48 == v47)
            {
              i = v65;
              v41 = v49;
              goto LABEL_98;
            }
          }

          i = v65;
          v41 = v49;
        }

        if (v48 == v47 || (IPCConfigSet::operator==() & 1) == 0)
        {
LABEL_98:
          memset(v71, 0, sizeof(v71));
          v56 = subscriber::simSlotAsInstance();
          *v71 = v56 + 1;
          v71[16] = 1;
          v57 = v43;
          if (v43[2].i8[7] < 0)
          {
            v57 = *v43;
          }

          *&v71[8] = v57;
          *&v71[20] = vrev64_s32(v43[3]);
          *&v71[28] = v43[5].i32[0];
          v58 = ApplePDPHelperInterface::getInstance(v56);
          v59 = (*(*v58 + 48))(v58, v71);
          v60 = *(i + 40);
          if (v59)
          {
            if (os_log_type_enabled(*(i + 40), OS_LOG_TYPE_DEFAULT))
            {
              v61 = v43;
              if (v43[2].i8[7] < 0)
              {
                v61 = *v43;
              }

              *buf = 136315394;
              *&buf[4] = v41;
              *&buf[12] = 2080;
              *&buf[14] = v61;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: Configured ipcConfigSet %s", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(*(i + 40), OS_LOG_TYPE_ERROR))
          {
            v62 = v43;
            if (v43[2].i8[7] < 0)
            {
              v62 = *v43;
            }

            *buf = 136315394;
            *&buf[4] = v41;
            *&buf[12] = 2080;
            *&buf[14] = v62;
            _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%s: Cannot configure ipcConfigSet %s", buf, 0x16u);
          }
        }

        v43 += 6;
      }

      v63 = *(v40 + 1);
      if (v63)
      {
        do
        {
          v64 = v63;
          v63 = *v63;
        }

        while (v63);
      }

      else
      {
        do
        {
          v64 = *(v40 + 2);
          v19 = *v64 == v40;
          v40 = v64;
        }

        while (!v19);
      }

      v40 = v64;
    }

    while (v64 != v68);
  }

  if ((i + 416) != &v67)
  {
    sub_100425488((i + 416), v67, v68);
  }

  sub_100423BA0(&v67, v68[0]);
}

void sub_1004211CC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v9 = a2;
  v12 = *(a1 + 424);
  if (v12)
  {
    v13 = a1 + 424;
    do
    {
      if (*(v12 + 32) >= a2)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 32) < a2));
    }

    while (v12);
    if (v13 != a1 + 424 && *(v13 + 32) <= a2)
    {
      if ((a5 & 0x8000011) != 0)
      {
        v19 = sub_10041E484(a1);
        v20 = 0;
        if (a3)
        {
          if (v19 != v9)
          {
            v21 = sub_10041D0F0(a1);
            v20 = v21 == v9;
            if (v21 != v9)
            {
              v6 &= 0xFFFFFFFFF7FFFFEELL;
            }
          }
        }
      }

      else
      {
        v20 = 0;
      }

      for (i = *(v13 + 40); i != *(v13 + 48); i += 6)
      {
        if (*(i + 6) == a4)
        {
          v23 = i[4];
          if (!v23 || (v23 & v6) != 0)
          {
            if (*(i + 45) != 1)
            {
              v26 = *(a1 + 40);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = i;
                if (*(i + 23) < 0)
                {
                  v27 = *i;
                }

                v31 = 136316162;
                *v32 = v27;
                *&v32[8] = 1024;
                *v33 = v9;
                *&v33[4] = 1024;
                *v34 = a3;
                *&v34[4] = 1024;
                *&v34[6] = a4;
                v35 = 2048;
                v36 = v6;
                v28 = "#I (2) ipcInterfaceConfig name = %{pubic}s [simSlot=%d pdpId=%d dp=%d connmask=0x%lx";
LABEL_42:
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, &v31, 0x28u);
              }

LABEL_43:
              if (*(i + 23) < 0)
              {
                sub_100005F2C(a6, *i, i[1]);
              }

              else
              {
                v30 = *i;
                *(a6 + 16) = i[2];
                *a6 = v30;
              }

              return;
            }

            if (v20 == *(i + 44))
            {
              v26 = *(a1 + 40);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v29 = i;
                if (*(i + 23) < 0)
                {
                  v29 = *i;
                }

                v31 = 136316162;
                *v32 = v29;
                *&v32[8] = 1024;
                *v33 = v9;
                *&v33[4] = 1024;
                *v34 = a3;
                *&v34[4] = 1024;
                *&v34[6] = a4;
                v35 = 2048;
                v36 = v6;
                v28 = "#I (1) ipcInterfaceConfig name = %{pubic}s [simSlot=%d pdpId=%d dp=%d connmask=0x%lx";
                goto LABEL_42;
              }

              goto LABEL_43;
            }
          }
        }
      }

      v25 = *(a1 + 40);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v31 = 136315650;
      *v32 = subscriber::asString();
      *&v32[8] = 1024;
      *v33 = a4;
      *&v33[4] = 2048;
      *v34 = v6;
      v15 = "#E There is no IPC configuration available for %s, data path %d and mask %llu";
      v16 = v25;
      v17 = 28;
      goto LABEL_10;
    }
  }

  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315138;
    *v32 = subscriber::asString();
    v15 = "#E There is no IPC configuration available for %s";
    v16 = v14;
    v17 = 12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v31, v17);
  }

LABEL_11:
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 67109888;
    *v32 = v9;
    *&v32[4] = 1024;
    *&v32[6] = a3;
    *v33 = 1024;
    *&v33[2] = a4;
    *v34 = 2048;
    *&v34[2] = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I (3) ipcInterfaceConfig name = empty [simSlot=%d pdpId=%d dp=%d connmask=0x%lx", &v31, 0x1Eu);
  }

  sub_10000501C(a6, "");
}

BOOL sub_10042156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 424);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a4;
  v7 = a1 + 424;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 == a1 + 424 || *(v7 + 32) > a2)
  {
LABEL_8:
    v8 = *(a1 + 40);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v17 = 136315138;
    v18 = subscriber::asString();
    v10 = "#E There is no IPC configuration available for %s";
    v11 = v8;
    v12 = 12;
    goto LABEL_10;
  }

  if ((a4 & 0x8000011) != 0 && sub_10041E484(a1) != a2)
  {
    v6 &= 0xFFFFFFFFF7FFFFEELL;
  }

  for (i = *(v7 + 40); i != *(v7 + 48); i += 48)
  {
    if (!*(i + 24))
    {
      v14 = *(i + 32);
      if (!v14 || (v14 & v6) != 0)
      {
        return (*(i + 28) >> 2) & 1;
      }
    }
  }

  v16 = *(a1 + 40);
  result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v17 = 136315394;
    v18 = subscriber::asString();
    v19 = 2048;
    v20 = v6;
    v10 = "#E There is no IPC configuration available for %s, and mask %llu";
    v11 = v16;
    v12 = 22;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    return 0;
  }

  return result;
}

void sub_100421728(uint64_t a1)
{
  sub_1004235CC(a1);

  operator delete();
}

char *sub_100421760@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[359] < 0)
  {
    return sub_100005F2C(a2, *(result + 42), *(result + 43));
  }

  *a2 = *(result + 21);
  *(a2 + 16) = *(result + 44);
  return result;
}

char *sub_100421788@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[383] < 0)
  {
    return sub_100005F2C(a2, *(result + 45), *(result + 46));
  }

  *a2 = *(result + 360);
  *(a2 + 16) = *(result + 47);
  return result;
}

uint64_t *sub_1004217B4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_1004217D0(a1, *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 4);
}

uint64_t *sub_1004217D0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_100421838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_100421858(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
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

  LOBYTE(v8) = 1;
  sub_1004218E0(v7);
  return v4;
}

uint64_t sub_1004218E0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

void sub_100421918(char *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v211 = a2 - 8;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v132 = *(a1 + 2);
          v133 = *(v132 + 148);
          v134 = *a1;
          v135 = *(*a1 + 148);
          v136 = *(a2 - 2);
          v137 = *(v136 + 148);
          if (v133 >= v135)
          {
            if (v137 >= v133)
            {
              return;
            }

            *(a1 + 2) = v136;
            *(a2 - 2) = v132;
            v195 = *(a1 + 3);
            v211 = a1 + 24;
            *(a1 + 3) = *(a2 - 1);
            *(a2 - 1) = v195;
            v196 = *(a1 + 2);
            v197 = *a1;
            if (*(v196 + 148) >= *(*a1 + 148))
            {
              return;
            }

            *a1 = v196;
            *(a1 + 2) = v197;
            v138 = a1 + 8;
          }

          else
          {
            if (v137 >= v133)
            {
              v138 = a1 + 24;
              v207 = *(a1 + 3);
              v208 = *(a1 + 1);
              *a1 = v132;
              *(a1 + 1) = v207;
              *(a1 + 2) = v134;
              *(a1 + 3) = v208;
              v209 = *(a2 - 2);
              if (*(v209 + 148) >= v135)
              {
                return;
              }

              *(a1 + 2) = v209;
            }

            else
            {
              v138 = a1 + 8;
              *a1 = v136;
            }

            *(a2 - 2) = v134;
          }

          v210 = *v138;
          *v138 = *v211;
          *v211 = v210;
          return;
        case 4:

          sub_100422600(a1, a1 + 2, a1 + 4, a2 - 2);
          return;
        case 5:
          sub_100422600(a1, a1 + 2, a1 + 4, a1 + 6);
          v117 = *(a2 - 2);
          v118 = *(a1 + 6);
          if (*(v117 + 148) < *(v118 + 148))
          {
            *(a1 + 6) = v117;
            *(a2 - 2) = v118;
            v119 = *(a1 + 7);
            *(a1 + 7) = *(a2 - 1);
            *(a2 - 1) = v119;
            v120 = *(a1 + 6);
            v121 = *(v120 + 148);
            v122 = *(a1 + 4);
            if (v121 < *(v122 + 148))
            {
              v123 = *(a1 + 5);
              v124 = *(a1 + 7);
              *(a1 + 4) = v120;
              *(a1 + 5) = v124;
              *(a1 + 6) = v122;
              *(a1 + 7) = v123;
              v125 = *(a1 + 2);
              if (v121 < *(v125 + 148))
              {
                v126 = *(a1 + 3);
                *(a1 + 2) = v120;
                *(a1 + 3) = v124;
                *(a1 + 4) = v125;
                *(a1 + 5) = v126;
                v127 = *a1;
                if (v121 < *(*a1 + 148))
                {
                  v128 = *(a1 + 1);
                  *a1 = v120;
                  *(a1 + 1) = v124;
                  *(a1 + 2) = v127;
                  *(a1 + 3) = v128;
                }
              }
            }
          }

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
        v129 = *(a2 - 2);
        v130 = *a1;
        if (*(v129 + 148) < *(*a1 + 148))
        {
          *a1 = v129;
          *(a2 - 2) = v130;
          v131 = *(a1 + 1);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v131;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v154 = v10 >> 1;
      v155 = v10 >> 1;
      do
      {
        v156 = v155;
        if (v154 >= v155)
        {
          v157 = (2 * v155) | 1;
          v158 = &a1[16 * v157];
          if (2 * v156 + 2 >= v9)
          {
            v159 = *v158;
          }

          else
          {
            v159 = *v158;
            if (*(*v158 + 148) < *(*(v158 + 2) + 148))
            {
              v159 = *(v158 + 2);
              v158 += 16;
              v157 = 2 * v156 + 2;
            }
          }

          v160 = &a1[16 * v156];
          v161 = *v160;
          if (*(v159 + 148) >= *(*v160 + 148))
          {
            v162 = *(v160 + 1);
            *v160 = 0;
            *(v160 + 1) = 0;
            v163 = *v158;
            do
            {
              v164 = v158;
              v165 = *(v158 + 1);
              *v164 = 0;
              *(v164 + 1) = 0;
              v166 = *(v160 + 1);
              *v160 = v163;
              *(v160 + 1) = v165;
              if (v166)
              {
                sub_100004A34(v166);
              }

              if (v154 < v157)
              {
                break;
              }

              v158 = &a1[16 * ((2 * v157) | 1)];
              if (2 * v157 + 2 >= v9)
              {
                v163 = *v158;
                v157 = (2 * v157) | 1;
              }

              else
              {
                v163 = *v158;
                if (*(*v158 + 148) >= *(*(v158 + 2) + 148))
                {
                  v157 = (2 * v157) | 1;
                }

                else
                {
                  v163 = *(v158 + 2);
                  v158 += 16;
                  v157 = 2 * v157 + 2;
                }
              }

              v160 = v164;
            }

            while (*(v163 + 148) >= *(v161 + 148));
            v167 = *(v164 + 1);
            *v164 = v161;
            *(v164 + 1) = v162;
            if (v167)
            {
              sub_100004A34(v167);
            }
          }
        }

        v155 = v156 - 1;
      }

      while (v156);
      while (2)
      {
        v168 = 0;
        v169 = a2;
        v171 = *a1;
        v170 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v172 = a1;
        do
        {
          v173 = &v172[16 * v168];
          v174 = v173 + 16;
          if (2 * v168 + 2 >= v9)
          {
            v175 = *v174;
            v168 = (2 * v168) | 1;
          }

          else
          {
            v177 = *(v173 + 4);
            v176 = v173 + 32;
            v175 = v177;
            if (*(*(v176 - 2) + 148) < *(v177 + 148))
            {
              v174 = v176;
              v168 = 2 * v168 + 2;
            }

            else
            {
              v175 = *(v176 - 2);
              v168 = (2 * v168) | 1;
            }
          }

          v178 = *(v174 + 1);
          *v174 = 0;
          *(v174 + 1) = 0;
          v179 = *(v172 + 1);
          *v172 = v175;
          *(v172 + 1) = v178;
          if (v179)
          {
            sub_100004A34(v179);
          }

          v172 = v174;
        }

        while (v168 <= ((v9 - 2) >> 1));
        a2 -= 16;
        if (v174 == v169 - 16)
        {
          v194 = *(v174 + 1);
          *v174 = v171;
          *(v174 + 1) = v170;
          if (!v194)
          {
            goto LABEL_197;
          }
        }

        else
        {
          v180 = *(v169 - 1);
          *a2 = 0;
          *(v169 - 1) = 0;
          v181 = *(v174 + 1);
          *v174 = v180;
          if (v181)
          {
            sub_100004A34(v181);
          }

          v182 = *(v169 - 1);
          *(v169 - 2) = v171;
          *(v169 - 1) = v170;
          if (v182)
          {
            sub_100004A34(v182);
          }

          v183 = (v174 + 16 - a1) >> 4;
          v184 = v183 < 2;
          v185 = v183 - 2;
          if (v184)
          {
            goto LABEL_197;
          }

          v186 = v185 >> 1;
          v187 = &a1[16 * (v185 >> 1)];
          v188 = *v174;
          if (*(*v187 + 148) >= *(*v174 + 148))
          {
            goto LABEL_197;
          }

          v189 = *(v174 + 1);
          *v174 = 0;
          *(v174 + 1) = 0;
          v190 = *v187;
          do
          {
            v191 = v187;
            v192 = *(v187 + 1);
            *v191 = 0;
            *(v191 + 1) = 0;
            v193 = *(v174 + 1);
            *v174 = v190;
            *(v174 + 1) = v192;
            if (v193)
            {
              sub_100004A34(v193);
            }

            if (!v186)
            {
              break;
            }

            v186 = (v186 - 1) >> 1;
            v187 = &a1[16 * v186];
            v190 = *v187;
            v174 = v191;
          }

          while (*(*v187 + 148) < *(v188 + 148));
          v194 = *(v191 + 1);
          *v191 = v188;
          *(v191 + 1) = v189;
          if (!v194)
          {
LABEL_197:
            v184 = v9-- <= 2;
            if (v184)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      sub_100004A34(v194);
      goto LABEL_197;
    }

    v11 = &a1[16 * (v9 >> 1)];
    v12 = v11;
    v13 = *(a2 - 2);
    v14 = *(v13 + 148);
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = *(*v11 + 148);
      v17 = *a1;
      v18 = *(*a1 + 148);
      if (v16 >= v18)
      {
        if (v14 < v16)
        {
          *v11 = v13;
          *(a2 - 2) = v15;
          v25 = v11 + 8;
          v26 = *(v11 + 1);
          *(v11 + 1) = *(a2 - 1);
          *(a2 - 1) = v26;
          v27 = *a1;
          if (*(*v11 + 148) < *(*a1 + 148))
          {
            *a1 = *v11;
            v19 = a1 + 8;
            *v11 = v27;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v14 < v16)
        {
          v19 = a1 + 8;
          *a1 = v13;
          goto LABEL_26;
        }

        v19 = v11 + 8;
        v31 = *(v11 + 1);
        v32 = *(a1 + 1);
        *a1 = v15;
        *(a1 + 1) = v31;
        *v11 = v17;
        *(v11 + 1) = v32;
        v33 = *(a2 - 2);
        if (*(v33 + 148) < v18)
        {
          *v11 = v33;
LABEL_26:
          *(a2 - 2) = v17;
          v25 = a2 - 8;
LABEL_27:
          v34 = *v19;
          *v19 = *v25;
          *v25 = v34;
        }
      }

      v35 = v11 - 16;
      v36 = *(v11 - 2);
      v37 = *(v36 + 148);
      v38 = *(a1 + 2);
      v39 = *(v38 + 148);
      v40 = *(a2 - 4);
      v41 = *(v40 + 148);
      if (v37 >= v39)
      {
        if (v41 < v37)
        {
          *v35 = v40;
          *(a2 - 4) = v36;
          v43 = v11 - 8;
          v44 = *(v11 - 1);
          *(v11 - 1) = *(a2 - 3);
          *(a2 - 3) = v44;
          v45 = *(a1 + 2);
          if (*(*v35 + 148) < *(v45 + 148))
          {
            *(a1 + 2) = *v35;
            *v35 = v45;
            v42 = a1 + 24;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v41 < v37)
        {
          v42 = a1 + 24;
          *(a1 + 2) = v40;
          goto LABEL_39;
        }

        v42 = v11 - 8;
        v49 = *(v11 - 1);
        v50 = *(a1 + 3);
        *(a1 + 2) = v36;
        *(a1 + 3) = v49;
        *v35 = v38;
        *(v11 - 1) = v50;
        v51 = *(a2 - 4);
        if (*(v51 + 148) < v39)
        {
          *v35 = v51;
LABEL_39:
          *(a2 - 4) = v38;
          v43 = a2 - 24;
LABEL_40:
          v52 = *v42;
          *v42 = *v43;
          *v43 = v52;
        }
      }

      v55 = *(v11 + 2);
      v53 = v11 + 16;
      v54 = v55;
      v56 = *(v55 + 148);
      v57 = *(a1 + 4);
      v58 = *(v57 + 148);
      v59 = *(a2 - 6);
      v60 = *(v59 + 148);
      if (v56 >= v58)
      {
        if (v60 < v56)
        {
          *v53 = v59;
          *(a2 - 6) = v54;
          v63 = v53 + 8;
          v62 = *(v53 + 1);
          *(v53 + 1) = *(a2 - 5);
          *(a2 - 5) = v62;
          v54 = *v53;
          v64 = *(a1 + 4);
          if (*(*v53 + 148) < *(v64 + 148))
          {
            *(a1 + 4) = v54;
            *v53 = v64;
            v61 = a1 + 40;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v60 < v56)
        {
          v61 = a1 + 40;
          *(a1 + 4) = v59;
          goto LABEL_49;
        }

        v61 = v53 + 8;
        v65 = *(v53 + 1);
        v66 = *(a1 + 5);
        *(a1 + 4) = v54;
        *(a1 + 5) = v65;
        *v53 = v57;
        *(v53 + 1) = v66;
        v67 = *(a2 - 6);
        if (*(v67 + 148) >= v58)
        {
          v54 = v57;
        }

        else
        {
          *v53 = v67;
LABEL_49:
          *(a2 - 6) = v57;
          v63 = a2 - 40;
LABEL_50:
          v68 = *v61;
          *v61 = *v63;
          *v63 = v68;
          v54 = *v53;
        }
      }

      v69 = *v12;
      v70 = *(*v12 + 148);
      v71 = *v35;
      v72 = *(*v35 + 148);
      v73 = *(v54 + 148);
      if (v70 >= v72)
      {
        if (v73 < v70)
        {
          v76 = (v12 + 8);
          v77 = *(v12 + 1);
          *v12 = v54;
          *(v12 + 1) = *(v53 + 1);
          *v53 = v69;
          *(v53 + 1) = v77;
          if (v73 < v72)
          {
            *v35 = v54;
            v74 = (v35 + 8);
            *v12 = v71;
            goto LABEL_60;
          }

          v69 = v54;
        }
      }

      else
      {
        if (v73 < v70)
        {
          *v35 = v54;
          v74 = (v35 + 8);
          *v53 = v71;
          v75 = (v53 + 8);
          goto LABEL_59;
        }

        v78 = *(v12 + 1);
        *v12 = v71;
        v79 = *(v35 + 1);
        *v35 = v69;
        *(v35 + 1) = v78;
        *(v12 + 1) = v79;
        if (v73 >= v72)
        {
          v69 = v71;
        }

        else
        {
          *v12 = v54;
          *v53 = v71;
          v75 = (v53 + 8);
          v74 = (v12 + 8);
LABEL_59:
          v76 = v75;
LABEL_60:
          v80 = *v74;
          *v74 = *v76;
          *v76 = v80;
          v69 = *v12;
        }
      }

      v81 = *a1;
      *a1 = v69;
      v24 = a1 + 8;
      *v12 = v81;
      v30 = v12 + 8;
      goto LABEL_62;
    }

    v20 = *a1;
    v21 = *(*a1 + 148);
    v22 = *v11;
    v23 = *(*v11 + 148);
    if (v21 >= v23)
    {
      if (v14 >= v21)
      {
        goto LABEL_63;
      }

      *a1 = v13;
      *(a2 - 2) = v20;
      v28 = *(a1 + 1);
      *(a1 + 1) = *(a2 - 1);
      *(a2 - 1) = v28;
      v29 = *v12;
      if (*(*a1 + 148) >= *(*v12 + 148))
      {
        goto LABEL_63;
      }

      *v12 = *a1;
      *a1 = v29;
      v24 = v12 + 8;
      v30 = a1 + 8;
    }

    else
    {
      if (v14 >= v21)
      {
        v24 = a1 + 8;
        v46 = *(a1 + 1);
        v47 = *(v12 + 1);
        *v12 = v20;
        *(v12 + 1) = v46;
        *a1 = v22;
        *(a1 + 1) = v47;
        v48 = *(a2 - 2);
        if (*(v48 + 148) >= v23)
        {
          goto LABEL_63;
        }

        *a1 = v48;
      }

      else
      {
        v24 = v11 + 8;
        *v12 = v13;
      }

      *(a2 - 2) = v22;
      v30 = a2 - 8;
    }

LABEL_62:
    v82 = *v24;
    *v24 = *v30;
    *v30 = v82;
LABEL_63:
    --a3;
    v83 = *a1;
    if ((a4 & 1) != 0 || *(*(a1 - 2) + 148) < *(v83 + 148))
    {
      v84 = 0;
      v85 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v86 = *(v83 + 148);
      do
      {
        v87 = *&a1[v84 + 16];
        v84 += 16;
      }

      while (*(v87 + 148) < v86);
      v88 = &a1[v84];
      v89 = a2;
      if (v84 == 16)
      {
        v89 = a2;
        do
        {
          if (v88 >= v89)
          {
            break;
          }

          v91 = *(v89 - 2);
          v89 -= 16;
        }

        while (*(v91 + 148) >= v86);
      }

      else
      {
        do
        {
          v90 = *(v89 - 2);
          v89 -= 16;
        }

        while (*(v90 + 148) >= v86);
      }

      if (v88 >= v89)
      {
        v8 = &a1[v84];
      }

      else
      {
        v92 = *v89;
        v8 = &a1[v84];
        v93 = v89;
        do
        {
          *v8 = v92;
          *v93 = v87;
          v94 = *(v8 + 1);
          *(v8 + 1) = *(v93 + 1);
          *(v93 + 1) = v94;
          do
          {
            v95 = *(v8 + 2);
            v8 += 16;
            v87 = v95;
          }

          while (*(v95 + 148) < v86);
          do
          {
            v96 = *(v93 - 2);
            v93 -= 16;
            v92 = v96;
          }

          while (*(v96 + 148) >= v86);
        }

        while (v8 < v93);
      }

      v97 = v8 - 16;
      if (v8 - 16 != a1)
      {
        v98 = *v97;
        *v97 = 0;
        *(v8 - 1) = 0;
        v99 = *(a1 + 1);
        *a1 = v98;
        if (v99)
        {
          sub_100004A34(v99);
        }
      }

      v100 = *(v8 - 1);
      *(v8 - 2) = v83;
      *(v8 - 1) = v85;
      if (v100)
      {
        sub_100004A34(v100);
      }

      if (v88 < v89)
      {
        goto LABEL_89;
      }

      v101 = sub_100422764(a1, v8 - 2);
      if (sub_100422764(v8, a2))
      {
        a2 = v8 - 16;
        if (v101)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v101)
      {
LABEL_89:
        sub_100421918(a1, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v102 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v103 = *(v83 + 148);
      if (v103 >= *(*(a2 - 2) + 148))
      {
        v105 = a1 + 16;
        do
        {
          v8 = v105;
          if (v105 >= a2)
          {
            break;
          }

          v105 += 16;
        }

        while (v103 >= *(*v8 + 148));
      }

      else
      {
        v8 = a1;
        do
        {
          v104 = *(v8 + 2);
          v8 += 16;
        }

        while (v103 >= *(v104 + 148));
      }

      v106 = a2;
      if (v8 < a2)
      {
        v106 = a2;
        do
        {
          v107 = *(v106 - 2);
          v106 -= 16;
        }

        while (v103 < *(v107 + 148));
      }

      if (v8 < v106)
      {
        v108 = *v8;
        v109 = *v106;
        do
        {
          *v8 = v109;
          *v106 = v108;
          v110 = *(v8 + 1);
          *(v8 + 1) = *(v106 + 1);
          *(v106 + 1) = v110;
          do
          {
            v111 = *(v8 + 2);
            v8 += 16;
            v108 = v111;
          }

          while (v103 >= *(v111 + 148));
          do
          {
            v112 = *(v106 - 2);
            v106 -= 16;
            v109 = v112;
          }

          while (v103 < *(v112 + 148));
        }

        while (v8 < v106);
      }

      v113 = v8 - 16;
      if (v8 - 16 != a1)
      {
        v114 = *v113;
        *v113 = 0;
        *(v8 - 1) = 0;
        v115 = *(a1 + 1);
        *a1 = v114;
        if (v115)
        {
          sub_100004A34(v115);
        }
      }

      a4 = 0;
      v116 = *(v8 - 1);
      *(v8 - 2) = v83;
      *(v8 - 1) = v102;
      if (v116)
      {
        sub_100004A34(v116);
        a4 = 0;
      }
    }
  }

  v139 = a1 + 16;
  v141 = a1 == a2 || v139 == a2;
  if (a4)
  {
    if (!v141)
    {
      v142 = 0;
      v143 = a1;
      do
      {
        v144 = v143;
        v143 = v139;
        v145 = *(v144 + 2);
        v146 = *v144;
        if (*(v145 + 148) < *(*v144 + 148))
        {
          v147 = *(v144 + 3);
          v148 = v142;
          *v143 = 0;
          *(v143 + 1) = 0;
          while (1)
          {
            v149 = &a1[v148];
            v150 = *&a1[v148 + 8];
            *v149 = 0;
            *(v149 + 1) = 0;
            v151 = *&a1[v148 + 24];
            *(v149 + 2) = v146;
            *(v149 + 3) = v150;
            if (v151)
            {
              sub_100004A34(v151);
            }

            if (!v148)
            {
              break;
            }

            v146 = *&a1[v148 - 16];
            v148 -= 16;
            if (*(v145 + 148) >= *(v146 + 148))
            {
              v152 = &a1[v148 + 16];
              goto LABEL_146;
            }
          }

          v152 = a1;
LABEL_146:
          v153 = *(v152 + 1);
          *v152 = v145;
          *(v152 + 1) = v147;
          if (v153)
          {
            sub_100004A34(v153);
          }
        }

        v139 = v143 + 16;
        v142 += 16;
      }

      while (v143 + 16 != a2);
    }
  }

  else if (!v141)
  {
    v198 = a1 + 24;
    do
    {
      v199 = a1;
      a1 = v139;
      v200 = *(v199 + 2);
      v201 = *v199;
      if (*(v200 + 148) < *(*v199 + 148))
      {
        v202 = *(v199 + 3);
        v203 = v198;
        *a1 = 0;
        *(a1 + 1) = 0;
        do
        {
          v204 = *(v203 - 2);
          *(v203 - 3) = 0;
          *(v203 - 2) = 0;
          v205 = *v203;
          *(v203 - 1) = v201;
          *v203 = v204;
          if (v205)
          {
            sub_100004A34(v205);
          }

          v201 = *(v203 - 5);
          v203 -= 2;
        }

        while (*(v200 + 148) < *(v201 + 148));
        v206 = *v203;
        *(v203 - 1) = v200;
        *v203 = v202;
        if (v206)
        {
          sub_100004A34(v206);
        }
      }

      v139 = a1 + 16;
      v198 += 16;
    }

    while (a1 + 16 != a2);
  }
}

uint64_t *sub_100422600(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 148);
  v6 = *result;
  v7 = *a3;
  v8 = *(*a3 + 148);
  if (v5 >= *(*result + 148))
  {
    if (v8 < v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2 + 1;
      v10 = a2[1];
      a2[1] = a3[1];
      a3[1] = v10;
      v12 = *result;
      if (*(*a2 + 148) < *(*result + 148))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v8 < v5)
    {
      v9 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v11 = a3 + 1;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v9 = a2 + 1;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v6 = *a2;
    if (*(*a3 + 148) < *(*a2 + 148))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (*(*a4 + 148) < *(*a3 + 148))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*(*a3 + 148) < *(*a2 + 148))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = *result;
      if (*(*a2 + 148) < *(*result + 148))
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = a2[1];
        a2[1] = v20;
      }
    }
  }

  return result;
}

BOOL sub_100422764(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = a1[2];
      v21 = *(v20 + 148);
      v22 = *a1;
      v23 = *(*a1 + 148);
      v24 = *(a2 - 2);
      v25 = *(v24 + 148);
      if (v21 >= v23)
      {
        if (v25 >= v21)
        {
          return 1;
        }

        a1[2] = v24;
        *(a2 - 2) = v20;
        v36 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v37 = a1[2];
        v38 = *a1;
        if (*(v37 + 148) >= *(*a1 + 148))
        {
          return 1;
        }

        *a1 = v37;
        a1[2] = v38;
        v26 = a1 + 1;
      }

      else
      {
        if (v25 >= v21)
        {
          v26 = a1 + 3;
          v42 = a1[3];
          v43 = a1[1];
          *a1 = v20;
          a1[1] = v42;
          a1[2] = v22;
          a1[3] = v43;
          v44 = *(a2 - 2);
          if (*(v44 + 148) >= v23)
          {
            return 1;
          }

          a1[2] = v44;
        }

        else
        {
          v26 = a1 + 1;
          *a1 = v24;
        }

        *(a2 - 2) = v22;
        v36 = a2 - 1;
      }

      v45 = *v26;
      *v26 = *v36;
      *v36 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_100422600(a1, a1 + 2, a1 + 4, a1 + 6);
        v8 = *(a2 - 2);
        v9 = a1[6];
        if (*(v8 + 148) < *(v9 + 148))
        {
          a1[6] = v8;
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[6];
          v12 = *(v11 + 148);
          v13 = a1[4];
          if (v12 < *(v13 + 148))
          {
            v14 = a1[5];
            v15 = a1[7];
            a1[4] = v11;
            a1[5] = v15;
            a1[6] = v13;
            a1[7] = v14;
            v16 = a1[2];
            if (v12 < *(v16 + 148))
            {
              v17 = a1[3];
              a1[2] = v11;
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v17;
              v18 = *a1;
              if (v12 < *(*a1 + 148))
              {
                v19 = a1[1];
                *a1 = v11;
                a1[1] = v15;
                a1[2] = v18;
                a1[3] = v19;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_100422600(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (*(v5 + 148) < *(*a1 + 148))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = a1[4];
  v29 = a1[2];
  v30 = *(v29 + 148);
  v31 = *a1;
  v32 = *(*a1 + 148);
  v33 = *(v28 + 148);
  if (v30 < v32)
  {
    if (v33 >= v30)
    {
      v34 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v29;
      a1[1] = v46;
      a1[2] = v31;
      a1[3] = v47;
      if (v33 >= v32)
      {
        goto LABEL_35;
      }

      a1[2] = v28;
    }

    else
    {
      v34 = a1 + 1;
      *a1 = v28;
    }

    a1[4] = v31;
    v40 = a1 + 5;
    goto LABEL_34;
  }

  if (v33 < v30)
  {
    v40 = a1 + 3;
    v39 = a1[3];
    v41 = a1[5];
    a1[2] = v28;
    a1[3] = v41;
    a1[4] = v29;
    a1[5] = v39;
    if (v33 < v32)
    {
      *a1 = v28;
      a1[2] = v31;
      v34 = a1 + 1;
LABEL_34:
      v48 = *v34;
      *v34 = *v40;
      *v40 = v48;
    }
  }

LABEL_35:
  v49 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *v49;
    v53 = *v27;
    if (*(*v49 + 148) < *(v53 + 148))
    {
      v54 = v49[1];
      v55 = v50;
      *v49 = 0;
      v49[1] = 0;
      while (1)
      {
        v56 = (a1 + v55);
        v57 = *(a1 + v55 + 40);
        v56[4] = 0;
        v56[5] = 0;
        v58 = *(a1 + v55 + 56);
        v56[6] = v53;
        v56[7] = v57;
        if (v58)
        {
          sub_100004A34(v58);
        }

        if (v55 == -32)
        {
          break;
        }

        v53 = *(a1 + v55 + 16);
        v55 -= 16;
        if (*(v52 + 148) >= *(v53 + 148))
        {
          v59 = (a1 + v55 + 48);
          goto LABEL_45;
        }
      }

      v59 = a1;
LABEL_45:
      v60 = v59[1];
      *v59 = v52;
      v59[1] = v54;
      if (v60)
      {
        sub_100004A34(v60);
      }

      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v27 = v49;
    v50 += 16;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_100422B08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

__int128 *sub_100422B44(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_100004A34(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100422BB0(uint64_t a1)
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

__n128 sub_100422C30(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 38) = *(a2 + 38);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_100422CA8(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_100422E0C(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 38) = *(a2 + 38);
  *(v7 + 24) = v11;
  *&v20 = v10 + 48;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  sub_100422E64(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_100422FA8(&v18);
  return v17;
}

void sub_100422DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100422FA8(va);
  _Unwind_Resume(a1);
}

void sub_100422E0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100422E64(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 38) = *(v6 + 38);
      *(a4 + 24) = v8;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return sub_100422F28(v10);
}

uint64_t sub_100422F28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100422F60(a1);
  }

  return a1;
}

void sub_100422F60(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_100422FA8(uint64_t a1)
{
  sub_100422FE0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100422FE0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_10042303C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100423090(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100423090(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

__n128 sub_1004230E0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 38) = *(a2 + 38);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_100423158(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_100422E0C(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 38) = *(a2 + 38);
  *(v7 + 24) = v11;
  *&v20 = v10 + 48;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  sub_100422E64(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_100422FA8(&v18);
  return v17;
}

void sub_1004232A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100422FA8(va);
  _Unwind_Resume(a1);
}

void sub_1004232BC(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_100423470(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_1004234B0(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v14 = *(&v6[1].__r_.__value_.__r.__words[1] + 6);
        *(v8 + 24) = *&v6[1].__r_.__value_.__l.__data_;
        *(v8 + 38) = v14;
        v6 += 2;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 25);
      v11 -= 6;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (v11 + __str - v8);
    if (v11 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v13 = *(&v6[1].__r_.__value_.__r.__words[1] + 6);
        *(v8 + 24) = *&v6[1].__r_.__value_.__l.__data_;
        *(v8 + 38) = v13;
        v6 += 2;
        v8 += 48;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_1004234FC(a1, v12, a3, v11);
  }
}

void sub_100423470(uint64_t a1)
{
  if (*a1)
  {
    sub_100423090(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1004234B0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_100422E0C(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1004234FC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      *(v4 + 38) = *(v6 + 38);
      *(v4 + 24) = v9;
      v6 += 3;
      v4 = v8 + 48;
      v14 = v8 + 48;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  sub_100422F28(v11);
  return v4;
}

void sub_1004235CC(uint64_t a1)
{
  *a1 = off_101E4BEB0;
  v2 = *(a1 + 448);
  if (v2)
  {
    dispatch_release(v2);
  }

  sub_100423BA0(a1 + 416, *(a1 + 424));
  sub_10006DCAC(a1 + 392, *(a1 + 400));
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  sub_10006DCAC(a1 + 312, *(a1 + 320));
  v6 = (a1 + 288);
  sub_1000212F4(&v6);
  sub_100423B38(a1 + 264, *(a1 + 272));
  PersonalitiesTracker::~PersonalitiesTracker((a1 + 96));
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  PDPConfigInterface::~PDPConfigInterface(a1);
}

void sub_100423764(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100423838);
  __cxa_rethrow();
}

void sub_1004237A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004237F8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100423838(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100423864(ServiceManager::Service *this)
{
  *this = off_101E4C0E0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1004238C0(ServiceManager::Service *this)
{
  *this = off_101E4C0E0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_100423940@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_100423980(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    sub_1004187B4(v2, &v4);
  }

  sub_1004187B4(v2, &v4);
}

uint64_t sub_100423A38(std::mutex *this, uint64_t *a2)
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
  v8 = *a2;
  v9 = a2[1];
  v13 = v8;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v15);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v15, &v15, &v13);
  v11 = v10;
  v9 = v14;
  if (v14)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

void sub_100423B38(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100423B38(a1, *a2);
    sub_100423B38(a1, *(a2 + 1));
    v4 = (a2 + 104);
    sub_1000212F4(&v4);
    std::mutex::~mutex((a2 + 40));
    operator delete(a2);
  }
}

void sub_100423BA0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100423BA0(a1, *a2);
    sub_100423BA0(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_10042303C(&v4);
    operator delete(a2);
  }
}

uint64_t *sub_100423C00(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100423CEC(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_100423DC4(void **a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 56));
  v4 = ServiceMap;
  if (v5 < 0)
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
  group = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &group);
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
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_10:
  v13 = v1[1];
  group = v13;
  if (v13)
  {
    dispatch_retain(v13);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  (*(*v11 + 32))(v11, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

LABEL_16:
  v14 = *(v2 + 384);
  if (v14 != -1)
  {
    notify_cancel(v14);
    *(v2 + 384) = -1;
  }

  v15 = *(v2 + 288);
  for (i = *(v2 + 296); v15 != i; v15 += 2)
  {
    v17 = *v15;
    v18 = v15[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v17 + 48))(v17);
    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  ctu::RestModule::disconnect((v2 + 72));
  v19 = *(v2 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: shut down !", buf, 2u);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_1000FF844(&v22);
  return sub_1000049E0(&v21);
}

void sub_100423FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100424048(uint64_t **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = v1[1];
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_100417F80(v2, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  object = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &object);
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
        goto LABEL_20;
      }

      goto LABEL_15;
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
    goto LABEL_20;
  }

LABEL_15:
  v14 = v1[1];
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
    dispatch_group_enter(v14);
  }

  (*(*v12 + 16))(v12, &object);
  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

LABEL_20:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_1000FF844(&v17);
  return sub_1000049E0(&v16);
}

void sub_1004241E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t object, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}