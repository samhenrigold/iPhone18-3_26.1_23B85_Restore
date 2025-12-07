uint64_t *sub_10042424C(uint64_t *a1)
{
  v1 = *a1;
  v43 = a1;
  v44 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: start 2 ...", buf, 2u);
  }

  sub_100418918(v2);
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: start 3 ...", buf, 2u);
  }

  *buf = 0;
  v49 = 0;
  v50 = 0;
  v5 = *(v2 + 264);
  if (v5 != (v2 + 272))
  {
    v6 = 0;
    do
    {
      if (v6 >= v50)
      {
        v7 = *buf;
        v8 = v6 - *buf;
        v9 = (v6 - *buf) >> 2;
        v10 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          sub_1000CE3D4();
        }

        v11 = v50 - *buf;
        if ((v50 - *buf) >> 1 > v10)
        {
          v10 = v11 >> 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_100016740(buf, v12);
        }

        v13 = (v6 - *buf) >> 2;
        v14 = (4 * v9);
        v15 = (4 * v9 - 4 * v13);
        *v14 = *(v5 + 8);
        v6 = v14 + 1;
        memcpy(v15, v7, v8);
        v16 = *buf;
        *buf = v15;
        v49 = v6;
        v50 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6++ = *(v5 + 8);
      }

      v49 = v6;
      v17 = v5[1];
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
          v18 = v5[2];
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v5 = v18;
    }

    while (v18 != (v2 + 272));
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
  v21 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  __p = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, &__p);
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
      v42 = 0;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v42 = 1;
  if (!v28)
  {
    goto LABEL_39;
  }

LABEL_34:
  (*(*v28 + 24))(v28);
  v29 = *buf;
  v30 = v49;
  while (v29 != v30)
  {
    sub_100419790(v28, &__p);
    (*(*__p + 64))(__p);
    if (v46)
    {
      sub_100004A34(v46);
    }

    ++v29;
  }

LABEL_39:
  v31 = *buf;
  for (i = v49; v31 != i; ++v31)
  {
    if (v28)
    {
      sub_1004196C0(v28, &__p);
      v33 = (*(*__p + 80))(__p);
      if (v46)
      {
        sub_100004A34(v46);
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v31);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      WirelessTechnologyAsString();
      v35 = v47 >= 0 ? &__p : __p;
      *v51 = 136315138;
      v52 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Default wireless technology is %s", v51, 0xCu);
      if (v47 < 0)
      {
        operator delete(__p);
      }
    }

    sub_100419D84(v2, *v31, v33, 0);
  }

  v36 = *(v2 + 288);
  for (j = *(v2 + 296); v36 != j; v36 += 2)
  {
    v38 = *v36;
    v39 = v36[1];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v38 + 40))(v38);
    if (v39)
    {
      sub_100004A34(v39);
    }
  }

  sub_10042481C(v2 + 72);
  v40 = *(v2 + 40);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: started !", &__p, 2u);
  }

  if ((v42 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  if (*buf)
  {
    v49 = *buf;
    operator delete(*buf);
  }

  sub_10032EAB4(&v44);
  return sub_1000049E0(&v43);
}

void sub_10042477C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042481C(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/events/pdpConfig_started");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10042488C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1004248BC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    v2 = (v1 + 8);
    sub_1000212F4(&v2);
    operator delete();
  }

  return a1;
}

void sub_10042492C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  for (i = a1[2]; v3 != i; v3 += 16)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *v5;
    if (*(a1 + 56) == 1)
    {
      v8 = (v7 + 256);
    }

    else
    {
      v8 = (v7 + 264);
    }

    (*v8)(v5);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(&__p, a1[4], a1[5]);
  }

  else
  {
    __p = *(a1 + 2);
    v10 = a1[6];
  }

  v11 = *(a1 + 56);
  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (v2 + 8));
  operator new();
}

uint64_t *sub_100424B3C(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *v1;
  v3 = *(*v1 + 440) - 1;
  *(v2 + 440) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v5 = *v5;
    }

    v6 = asStringBool(*(v1 + 32));
    *buf = 136315906;
    *&buf[4] = "ipcInterfaceConfigReset";
    v26 = 1024;
    v27 = v3;
    v28 = 2080;
    v29 = v5;
    v30 = 2080;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s cycle completed: fResetStarted = %u (reason %s, start %s)", buf, 0x26u);
  }

  if (!*(v2 + 448))
  {
    v7 = *(v2 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1017700D0(v7, v8, v9);
    }
  }

  if (!*(v2 + 440))
  {
    v10 = *(v2 + 448);
    *(v2 + 448) = 0;
    if (v10)
    {
      dispatch_release(v10);
    }

    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "ipcInterfaceConfigReset";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s queue destroyed", buf, 0xCu);
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
LABEL_24:
          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          goto LABEL_26;
        }

LABEL_22:
        sub_10000501C(buf, "Ended reset of interfaces");
        (*(*v20 + 1160))(v20, 3, buf, 0);
        if (SBYTE3(v29) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_24;
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
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_26:
  sub_1003023A8(&v24);
  return sub_1000049E0(&v23);
}

void *sub_100424E40(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFDictionaryGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t sub_100424EAC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100424F44(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100424FC4(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  sub_10009A268(*v1, *(v1 + 8), v6);
  v2 = *(v1 + 40);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v6);
  v7 = v6;
  sub_1000212F4(&v7);
  sub_10042508C(&v5);
  return sub_1000049E0(&v4);
}

void sub_100425058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10042508C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10042508C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100422BB0(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1004250DC(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

void *sub_1004251B0(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
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

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 2) = *(v9 + 2);
          sub_10042531C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
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

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_10042538C(v5, a2 + 28);
  }

  return result;
}

void sub_100425308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10042531C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_1000070DC(a1, v3, v5, a2);
  return a2;
}

void sub_100425438(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    sub_10042303C(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void *sub_100425488(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
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

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 5;
          sub_1004255FC(v15, (v9 + 4));
          sub_1001723F0(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = sub_100425658(&v12);
  }

  if (a2 != a3)
  {
    sub_1004256B0(v5);
  }

  return result;
}

void sub_1004255E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100425658(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004255FC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *v4 = *a2;
  if (v3 != (a2 + 8))
  {
    sub_1004232BC(v3, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  }

  return a1;
}

uint64_t sub_100425658(uint64_t a1)
{
  sub_100423BA0(*a1, *(a1 + 16));
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

    sub_100423BA0(*a1, v2);
  }

  return a1;
}

void sub_1004257D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100425438(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004257F0(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004234B0(result, a4);
  }

  return result;
}

void sub_100425858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10042303C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100425878(uint64_t a1, NSObject **a2, void *a3, char a4)
{
  *a1 = &off_101EA11D8;
  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, "probe.http");
  sub_100425974((a1 + 8), a2, &v10);
  ctu::OsLogContext::~OsLogContext(&v10);
  *a1 = off_101E4C1A0;
  v8 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = a4;
  *(a1 + 65) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return a1;
}

void sub_100425950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_100425974(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1004259DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_100425A04(void *a1)
{
  *a1 = off_101E4C1A0;
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  TMKXPCServer.shutdown()();
}

void sub_100425A8C(void *a1)
{
  sub_100425A04(a1);

  operator delete();
}

void sub_100425AC4(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 48) + 24))(buf);
  v4 = *buf;
  memset(buf, 0, sizeof(buf));
  v5 = *(a1 + 96);
  *(a1 + 88) = v4;
  if (v5)
  {
    sub_100004A34(v5);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*(a1 + 88))
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    sub_100004AA0(buf, (a1 + 8));
    v7 = *buf;
    v6 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
    }

    (*(**(a1 + 88) + 8))(*(a1 + 88), *(a1 + 24));
    v8 = *(a1 + 88);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_100425DE0;
    v15[3] = &unk_101E4C1C8;
    v15[4] = a1;
    v15[5] = v7;
    v16 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000224C8(v17, a2);
    (*(*v8 + 16))(v8, v15);
    if (*(a1 + 64) == 1)
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I starting probe", buf, 2u);
      }

      *(a1 + 65) = 0;
      v10 = *(a1 + 88);
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      (*(*v10 + 40))(v10, __p);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      sub_100426074(a1);
    }

    sub_10000FF50(v17);
    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    return;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E Unable to allocate request", buf, 2u);
  }

  sub_10000FFD0(a2, 0);
}

void sub_100425D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  sub_10000FF50(v25 + 56);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(a1);
}

void sub_100425DE0(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_23:
        sub_100004A34(v7);
        return;
      }

      v8 = *a2;
      v9 = *(v5 + 40);
      if (*a2)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v8 + 16))(v8);
          ctu::Http::asString();
          v10 = (*(**a2 + 24))();
          v11 = __p;
          if (v15 < 0)
          {
            v11 = __p[0];
          }

          *buf = 136315394;
          v17 = v11;
          v18 = 1024;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I got probe response, result: %s, respone: %d", buf, 0x12u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          v8 = *a2;
        }

        if ((*(*v8 + 24))(v8) == 200)
        {
          v12 = 1;
LABEL_22:
          sub_10000FFD0((a1 + 7), v12);
          goto LABEL_23;
        }

        if ((*(**a2 + 24))() == -1 && (*(v5 + 64) & 1) == 0 && *(v5 + 65) == 1)
        {
          v13 = *(v5 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Data has changed during request, re-attempt", __p, 2u);
          }

          sub_100426074(v5);
          goto LABEL_23;
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_101770150(v9);
      }

      v12 = 0;
      goto LABEL_22;
    }
  }
}

void sub_100426074(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I waiting till we have data", buf, 2u);
  }

  (*(**(a1 + 48) + 32))(buf);
  v3 = *buf;
  v11 = 12;
  strcpy(__p, "probe: timer");
  v4 = (*(**(a1 + 48) + 40))(*(a1 + 48));
  v5 = *(a1 + 24);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100426498;
  v7[3] = &unk_101E4C1F8;
  v7[4] = a1;
  aBlock = _Block_copy(v7);
  sub_100D23364(v3, __p, 1, 1000000 * v4, &object, &aBlock);
  sub_10039C50C((a1 + 72), &v14);
  v6 = v14;
  v14 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_100426264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = *(v21 - 40);
  *(v21 - 40) = 0;
  if (v23)
  {
    sub_10176B574(v23);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v21 - 56);
  if (v24)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004262CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8(a1 + 56, a2 + 56);
}

void sub_100426310(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100426328(uint64_t a1)
{
  sub_10000FF50(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100426374(uint64_t a1, int a2)
{
  if (*(a1 + 64) != a2)
  {
    *(a1 + 65) = 1;
  }

  *(a1 + 64) = a2;
  if (a2 && *(a1 + 72))
  {
    v3 = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I start probe on getting data mode", buf, 2u);
    }

    *(a1 + 65) = 0;
    v5 = *(a1 + 88);
    __p[1] = 0;
    v7 = 0;
    __p[0] = 0;
    (*(*v5 + 40))(v5, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100426454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100426498(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I start request on timer expiry", buf, 2u);
  }

  *(v1 + 65) = 0;
  v3 = *(v1 + 88);
  __p[1] = 0;
  v5 = 0;
  __p[0] = 0;
  (*(*v3 + 40))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100426544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_100426560(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "overlay unknown";
  }

  else
  {
    return off_101E4C398[a1];
  }
}

uint64_t sub_100426584(uint64_t a1)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v3 + v4;
  if (v4 >= 29)
  {
    v6 = v4;
    v7 = v3;
    do
    {
      v8 = memchr(v7, 100, v6 - 28);
      if (!v8)
      {
        break;
      }

      if (*v8 == 0x6D2B656369766564 && v8[1] == 0x746C756D2B6F6E76 && v8[2] == 0x61632B65646F6D69 && *(v8 + 21) == 0x726569727261632BLL)
      {
        if (v8 != v3)
        {
          break;
        }

        return 7;
      }

      v7 = v8 + 1;
      v6 = v5 - v7;
    }

    while (v5 - v7 >= 29);
  }

  if (v4 >= 22)
  {
    v12 = v4;
    v13 = v3;
    do
    {
      v14 = memchr(v13, 109, v12 - 21);
      if (!v14)
      {
        break;
      }

      if (*v14 == 0x6C756D2B6F6E766DLL && v14[1] == 0x632B65646F6D6974 && *(v14 + 14) == 0x726569727261632BLL)
      {
        if (v14 == v3)
        {
          return 6;
        }

        break;
      }

      v13 = v14 + 1;
      v12 = v5 - v13;
    }

    while (v5 - v13 >= 22);
    if (v4 >= 24)
    {
      v17 = v4;
      v18 = v3;
      do
      {
        v19 = memchr(v18, 100, v17 - 23);
        if (!v19)
        {
          break;
        }

        if (*v19 == 0x6D2B656369766564 && v19[1] == 0x65646F6D69746C75 && v19[2] == 0x726569727261632BLL)
        {
          if (v19 != v3)
          {
            break;
          }

          return 3;
        }

        v18 = v19 + 1;
        v17 = v5 - v18;
      }

      while (v5 - v18 >= 24);
    }
  }

  if (v4 >= 19)
  {
    v22 = v4;
    v23 = v3;
    do
    {
      v24 = memchr(v23, 100, v22 - 18);
      if (!v24)
      {
        break;
      }

      if (*v24 == 0x6D2B656369766564 && v24[1] == 0x727261632B6F6E76 && *(v24 + 11) == 0x726569727261632BLL)
      {
        if (v24 != v3)
        {
          break;
        }

        return 5;
      }

      v23 = v24 + 1;
      v22 = v5 - v23;
    }

    while (v5 - v23 >= 19);
  }

  if (v4 >= 17)
  {
    v27 = v4;
    v28 = v3;
    do
    {
      v29 = memchr(v28, 109, v27 - 16);
      if (!v29)
      {
        break;
      }

      if (*v29 == 0x646F6D69746C756DLL && v29[1] == 0x6569727261632B65 && *(v29 + 16) == 114)
      {
        if (v29 != v3)
        {
          break;
        }

        return 2;
      }

      v28 = v29 + 1;
      v27 = v5 - v28;
    }

    while (v5 - v28 >= 17);
  }

  if (v4 >= 14)
  {
    v32 = v4;
    v33 = v3;
    do
    {
      v34 = memchr(v33, 100, v32 - 13);
      if (!v34)
      {
        break;
      }

      if (*v34 == 0x632B656369766564 && *(v34 + 6) == 0x726569727261632BLL)
      {
        if (v34 != v3)
        {
          break;
        }

        return 1;
      }

      v33 = v34 + 1;
      v32 = v5 - v33;
    }

    while (v5 - v33 >= 14);
  }

  if (v4 >= 12)
  {
    v36 = v4;
    v37 = v3;
    do
    {
      v38 = memchr(v37, 109, v36 - 11);
      if (!v38)
      {
        break;
      }

      if (*v38 == 0x7261632B6F6E766DLL && v38[2] == 1919248754)
      {
        if (v38 == v3)
        {
          return 4;
        }

        break;
      }

      v37 = v38 + 1;
      v36 = v5 - v37;
    }

    while (v5 - v37 >= 12);
    v40 = v4;
    v41 = v3;
    do
    {
      v42 = memchr(v41, 103, v40 - 11);
      if (!v42)
      {
        break;
      }

      if (*v42 == 0x7261632B616D7367 && v42[2] == 1919248754)
      {
        if (v42 == v3)
        {
          return 8;
        }

        break;
      }

      v41 = v42 + 1;
      v40 = v5 - v41;
    }

    while (v5 - v41 >= 12);
    if (v4 >= 19)
    {
      v45 = v3;
      do
      {
        v46 = memchr(v45, 100, v4 - 18);
        if (!v46)
        {
          break;
        }

        if (*v46 == 0x672B656369766564 && v46[1] == 0x727261632B616D73 && *(v46 + 11) == 0x726569727261632BLL)
        {
          if (v46 != v3)
          {
            break;
          }

          return 9;
        }

        v45 = v46 + 1;
        v4 = v5 - v45;
      }

      while (v5 - v45 >= 19);
    }
  }

  if (!sub_1003D9A94(a1, "multimode+gsma+carrier", 0))
  {
    return 10;
  }

  if (!sub_1003D9A94(a1, "device+multimode+gsma+carrier", 0))
  {
    return 11;
  }

  if (!sub_1003D9A94(a1, "mvno+gsma+carrier", 0))
  {
    return 12;
  }

  if (!sub_1003D9A94(a1, "device+mvno+gsma+carrier", 0))
  {
    return 13;
  }

  if (!sub_1003D9A94(a1, "mvno+multimode+gsma+carrier", 0))
  {
    return 14;
  }

  if (sub_1003D9A94(a1, "device+mvno+multimode+gsma+carrier", 0))
  {
    return 0;
  }

  return 15;
}

uint64_t sub_100426AC8(int a1, int a2)
{
  if ((a2 ^ a1) == 2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

BOOL sub_100426AE4()
{
  memset(&v9, 0, sizeof(v9));
  getGSMAOverlayKey(&v9);
  memset(&__p, 0, sizeof(__p));
  getGSMAOverlayKey(&__p);
  v0 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v3 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v2 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v2)
  {
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v9;
    }

    else
    {
      v4 = v9.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v6 = memcmp(v4, p_p, size) != 0;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v0 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
LABEL_17:
  if (v0 < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_100426BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100426BDC(std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(v2, 0, sizeof(v2));
  ctu::tokenize();
  v3 = v2;
  sub_1000087B4(&v3);
}

void sub_100426D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000087B4(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100426D4C(os_log_t *a1, std::string::size_type a2, std::string::size_type a3)
{
  v6 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I currentCarrierFile: %s - matchedCarrierFile: %s", &buf, 0x16u);
  }

  memset(&buf, 0, sizeof(buf));
  sub_100426BDC(&buf);
  memset(&__p, 0, sizeof(__p));
  sub_100426BDC(&__p);
  v9 = *a1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *v21 = 136315394;
    v22 = p_buf;
    v23 = 2080;
    v24 = p_p;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I current key: %s - matched key: %s", v21, 0x16u);
  }

  v12 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v14)
  {
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &buf;
    }

    else
    {
      v16 = buf.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    v18 = memcmp(v16, v17, size) != 0;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v18 = 1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v12 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
LABEL_31:
  if (v12 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_100426F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100426F74(os_log_t *a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    if ((ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && !ctu::starts_with())
    {
      v34 = *a1;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v35 = a2;
        }

        else
        {
          v35 = *a2;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v35;
        v15 = "#I There is no overlay for the carrier file: %s";
        v16 = v34;
        v17 = 12;
        goto LABEL_33;
      }

      return;
    }

    v37 = a1;
    v6 = kPlistExtension;
    v7 = *(a2 + 23);
    v8 = *a2;
    v9 = *(a2 + 8);
    if (v7 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v7 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = strlen(kPlistExtension);
    if (v12)
    {
      v13 = v12;
      if (v11 < v12)
      {
        goto LABEL_28;
      }

      v19 = (v10 + v11);
      v20 = *kPlistExtension;
      v21 = v10;
      while (1)
      {
        if (v11 - v13 == -1)
        {
          goto LABEL_28;
        }

        v22 = memchr(v21, v20, v11 - v13 + 1);
        if (!v22)
        {
          goto LABEL_28;
        }

        v23 = v22;
        if (!memcmp(v22, v6, v13))
        {
          break;
        }

        v21 = v23 + 1;
        v11 = v19 - (v23 + 1);
        if (v11 < v13)
        {
          goto LABEL_28;
        }
      }

      if (v23 == v19 || (v18 = &v23[-v10], v18 == -1))
      {
LABEL_28:
        v14 = *v37;
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v15 = "#I plist extension is not present in the carrier file name";
LABEL_32:
          v16 = v14;
          v17 = 2;
LABEL_33:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &buf, v17);
          return;
        }

        return;
      }
    }

    else
    {
      v18 = 0;
    }

    memset(&buf, 0, sizeof(buf));
    if (v7 < 0)
    {
      sub_100005F2C(&buf, v8, v9);
    }

    else
    {
      buf = *a2;
    }

    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v24 = v37;
      if (buf.__r_.__value_.__l.__size_ >= v18)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
        buf.__r_.__value_.__l.__size_ = v18;
        goto LABEL_49;
      }
    }

    else
    {
      v24 = v37;
      if (v18 <= SHIBYTE(buf.__r_.__value_.__r.__words[2]))
      {
        *(&buf.__r_.__value_.__s + 23) = v18;
        p_buf = &buf;
LABEL_49:
        p_buf->__r_.__value_.__s.__data_[v18] = 0;
        size = buf.__r_.__value_.__l.__size_;
        v26 = buf.__r_.__value_.__r.__words[0];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &buf;
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        if (size)
        {
          v28 = 0;
          v29 = ~size;
          v30 = v26 + size - 1;
          while (v29 != -1)
          {
            v31 = *(v30 + v28);
            ++v29;
            --v28;
            if (v31 == 43)
            {
              if (!v29)
              {
                break;
              }

              if (v28 != -1)
              {
                std::string::basic_string(&v38, &buf, -v29, 0xFFFFFFFFFFFFFFFFLL, &v39);
                *a3 = v38;
                goto LABEL_61;
              }

              v32 = *v24;
              if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v38.__r_.__value_.__l.__data_) = 0;
                v33 = "#I _ is the last character in the string, cannot get the version";
                goto LABEL_60;
              }

              goto LABEL_61;
            }
          }
        }

        v32 = *v24;
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v38.__r_.__value_.__l.__data_) = 0;
          v33 = "#I _ is missing from the carrier file";
LABEL_60:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, &v38, 2u);
        }

LABEL_61:
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    sub_10013C334();
  }

  v14 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v15 = "#I Carrier file name is empty?";
    goto LABEL_32;
  }
}

void sub_100427578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004275A0(os_log_t *a1, std::string::size_type a2, std::string::size_type a3)
{
  memset(&__src, 0, sizeof(__src));
  sub_100426F74(a1, a2, &__src);
  v6 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  v7 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  size = __src.__r_.__value_.__l.__size_;
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = __src.__r_.__value_.__l.__size_;
  }

  if (!v6)
  {
    v12 = *a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Current carrier file does not have version: %s", &buf, 0xCu);
    }

    v14 = 0;
    if ((v7 & 0x80) != 0)
    {
      goto LABEL_67;
    }

    return v14;
  }

  memset(&v30, 0, sizeof(v30));
  sub_100426F74(a1, a3, &v30);
  v9 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v10 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
  v11 = v30.__r_.__value_.__l.__size_;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v30.__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
    v15 = *a1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Matched carrier file does not have version: %s", &buf, 0xCu);
    }

    v14 = 0;
    if ((v10 & 0x80) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  v29 = 0;
  if (v7 < 0)
  {
    sub_100005F2C(&__dst, __src.__r_.__value_.__l.__data_, size);
  }

  else
  {
    __dst = __src;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  v32 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v17 = v32;
    v32 = v34;
    v35 = v17;
    sub_100005978(&v35);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v29 = v32;
  v32 = 0;
  sub_100005978(&v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
LABEL_38:
    v26 = v30;
    goto LABEL_41;
  }

  sub_100005F2C(&v26, v30.__r_.__value_.__l.__data_, v11);
LABEL_41:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v26;
  }

  v32 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v18 = v32;
    v32 = v34;
    v35 = v18;
    sub_100005978(&v35);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v19 = v32;
  v27 = v32;
  v32 = 0;
  sub_100005978(&v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v20 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    p_src = __src.__r_.__value_.__r.__words[0];
    if (v7 >= 0)
    {
      p_src = &__src;
    }

    v22 = v30.__r_.__value_.__r.__words[0];
    if (v10 >= 0)
    {
      v22 = &v30;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
    *(buf.__r_.__value_.__r.__words + 4) = p_src;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Versions in the plist files (%{public}s, %{public}s)", &buf, 0x16u);
  }

  v23 = _CompareBundleVersionStrings(v29, v19);
  v14 = v23 == -1;
  if (v23 == -1)
  {
    v24 = *a1;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I New version is higher", &buf, 2u);
    }
  }

  sub_100005978(&v27);
  sub_100005978(&v29);
  if ((*(&v30.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_65:
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_66:
  if ((*(&__src.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_67:
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_100427A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, const void *a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_100005978(&a36);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(&a23);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

const char *sub_100427B34(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_101E4C418[a1];
  }
}

uint64_t sub_100427B58(uint64_t a1, Registry **a2, const void **a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "cb.overlay");
  ctu::OsLogLogger::OsLogLogger(&buf, &__p);
  ctu::OsLogLogger::OsLogLogger(a1, &buf);
  ctu::OsLogLogger::~OsLogLogger(&buf);
  ctu::OsLogContext::~OsLogContext(&__p);
  v14 = *a2;
  *(a1 + 8) = *a2;
  v15 = a2[1];
  *(a1 + 16) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    v14 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 24), v14);
  *(a1 + 40) = a4;
  sub_100010024((a1 + 48), a3);
  *(a1 + 56) = 0;
  v16 = (a1 + 56);
  sub_100BE9B38(a1 + 64, a2);
  sub_100BE9B38(a1 + 248, a2);
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 480) = a5;
  if (!*a3)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Received base bundle matching info is invalid", &__p, 2u);
    }

    return a1;
  }

  sub_100010024(&v35, a3);
  v17 = sub_1004280A0(a6, &v35, a1 + 64, 0);
  sub_10001021C(&v35);
  if (v17)
  {
    v18 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      sub_100BEB0C0(a1 + 64, &__p);
      v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Found the base bundle successfully with name %s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    sub_100463AE0((a1 + 64), &buf);
    v20 = strlen("/carrier.plist");
    v21 = std::string::append(&buf, "/carrier.plist", v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    sub_100BEA10C(a1 + 64, &__p);
  }

  else
  {
    sub_100010024(&v33, a3);
    v24 = sub_1004280A0(a7, &v33, a1 + 64, 1);
    sub_10001021C(&v33);
    v25 = *a1;
    v26 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    if (!v24)
    {
      if (v26)
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Failed to find a bundle", &__p, 2u);
      }

      goto LABEL_28;
    }

    if (v26)
    {
      sub_100BEB0C0(a1 + 64, &__p);
      v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Found the base bundle successfully with name %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    sub_100463AE0((a1 + 64), &buf);
    v28 = strlen("/carrier.plist");
    v29 = std::string::append(&buf, "/carrier.plist", v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    sub_100BEA10C(a1 + 64, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_28:
  sub_100BEB088((a1 + 64), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!size)
    {
      return a1;
    }
  }

  else if (!*(&__p.__r_.__value_.__s + 23))
  {
    return a1;
  }

  sub_1004280F4(a1, (a1 + 64), &buf.__r_.__value_.__l.__data_);
  if (v16 != &buf)
  {
    __p.__r_.__value_.__r.__words[0] = v16->__r_.__value_.__r.__words[0];
    v16->__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[0];
    buf.__r_.__value_.__r.__words[0] = 0;
    sub_10001021C(&__p.__r_.__value_.__l.__data_);
  }

  sub_10001021C(&buf.__r_.__value_.__l.__data_);
  return a1;
}

void sub_100427F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 + 479) < 0)
  {
    operator delete(*(v23 + 456));
  }

  if (*(v23 + 455) < 0)
  {
    operator delete(*(v23 + 432));
  }

  sub_100BE9E54(v23 + 248);
  sub_100BE9E54((v24 + 1));
  sub_10001021C(v24);
  sub_10001021C((v23 + 48));
  v26 = *(v23 + 32);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v23 + 16);
  if (v27)
  {
    sub_100004A34(v27);
  }

  ctu::OsLogLogger::~OsLogLogger(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_1004280A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

void sub_1004280F4(uint64_t a1@<X0>, char *a2@<X1>, const void **a3@<X8>)
{
  sub_100BEB088(a2, __p);
  sub_1009F7DEC(a1, (a1 + 8), __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100428170(uint64_t a1, uint64_t a2, const void **a3, int a4, char a5, char *a6)
{
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, "cb.overlay");
  ctu::OsLogLogger::OsLogLogger(v16, &v15);
  ctu::OsLogLogger::OsLogLogger(a1, v16);
  ctu::OsLogLogger::~OsLogLogger(v16);
  ctu::OsLogContext::~OsLogContext(&v15);
  v12 = *a2;
  v13 = *(a2 + 8);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v12 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 24), v12);
  *(a1 + 40) = sub_100BEB0B0(a6) | a4;
  sub_100010024((a1 + 48), a3);
  sub_1004280F4(a1, a6, (a1 + 56));
  sub_100BE9D24(a1 + 64, a6);
  sub_100BE9D24(a1 + 248, a6);
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 480) = a5;
  return a1;
}

void sub_10042827C(_Unwind_Exception *a1)
{
  sub_100BE9E54(v1 + 64);
  sub_10001021C((v1 + 56));
  sub_10001021C((v1 + 48));
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100428304(uint64_t a1, uint64_t a2, const void **a3, int a4, char a5, char *a6, uint64_t a7)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "cb.overlay");
  ctu::OsLogLogger::OsLogLogger(v18, &v17);
  ctu::OsLogLogger::OsLogLogger(a1, v18);
  ctu::OsLogLogger::~OsLogLogger(v18);
  ctu::OsLogContext::~OsLogContext(&v17);
  v14 = *a2;
  v15 = *(a2 + 8);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    v14 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 24), v14);
  *(a1 + 40) = sub_100BEB0B0(a6) | a4;
  sub_100010024((a1 + 48), a3);
  sub_1004280F4(a1, a6, (a1 + 56));
  sub_100BE9D24(a1 + 64, a6);
  sub_100BE9D24(a1 + 248, a7);
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 480) = a5;
  return a1;
}

void sub_10042841C(_Unwind_Exception *a1)
{
  sub_100BE9E54(v1 + 64);
  sub_10001021C((v1 + 56));
  sub_10001021C((v1 + 48));
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger(v1);
  _Unwind_Resume(a1);
}

void sub_1004284A4(uint64_t a1)
{
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  sub_100BE9E54(a1 + 248);
  sub_100BE9E54(a1 + 64);
  sub_10001021C((a1 + 56));
  sub_10001021C((a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger(a1);
}

void sub_100428534(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100BEB0C0(a1 + 64, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    size = buf.__r_.__value_.__l.__size_;
    operator delete(buf.__r_.__value_.__l.__data_);
    if (size)
    {
      goto LABEL_8;
    }
  }

  else if (*(&buf.__r_.__value_.__s + 23))
  {
    goto LABEL_8;
  }

  v5 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I There is no valid carrier bundle name", &buf, 2u);
  }

  __TUAssertTrigger("false");
LABEL_8:
  v6 = *(a1 + 40) - 1;
  if (v6 > 0xE)
  {
    v7 = "carrier";
  }

  else
  {
    v7 = off_101E4C440[v6];
  }

  sub_10000501C(&v52, v7);
  std::string::push_back(&v52, 43);
  v44 = v52;
  memset(&v52, 0, sizeof(v52));
  sub_100BEB0C0(a1 + 64, &__p);
  if (v43 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v43 >= 0)
  {
    v9 = HIBYTE(v43);
  }

  else
  {
    v9 = v42;
  }

  v10 = std::string::append(&v44, p_p, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v53, 43);
  buf = v53;
  memset(&v53, 0, sizeof(v53));
  v12 = *(a1 + 455);
  if (v12 >= 0)
  {
    v13 = (a1 + 432);
  }

  else
  {
    v13 = *(a1 + 432);
  }

  if (v12 >= 0)
  {
    v14 = *(a1 + 455);
  }

  else
  {
    v14 = *(a1 + 440);
  }

  v15 = std::string::append(&buf, v13, v14);
  v16 = v15->__r_.__value_.__r.__words[0];
  *&v50 = v15->__r_.__value_.__l.__size_;
  *(&v50 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
  v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v18 = (a1 + 456);
  if (*(a1 + 479) < 0)
  {
    operator delete(*v18);
  }

  v19 = v50;
  *(a1 + 456) = v16;
  *(a1 + 464) = v19;
  *(a1 + 471) = *(&v50 + 7);
  *(a1 + 479) = v17;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v20 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v21 = (a1 + 456);
    if (*(a1 + 479) < 0)
    {
      v21 = *v18;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Overridden filename prefix: %s", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  sub_100BEB088((a1 + 64), &buf);
  v22 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    LODWORD(v53.__r_.__value_.__l.__data_) = 136315138;
    *(v53.__r_.__value_.__r.__words + 4) = p_buf;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Current carrier file path name: %s", &v53, 0xCu);
  }

  memset(&v53, 0, sizeof(v53));
  sub_100428D4C(a1, &v53);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = buf.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    v25 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    v26 = memchr(v25, 43, v24);
    if (v26)
    {
      if (v26 - v25 != -1)
      {
        memset(&v44, 0, sizeof(v44));
        (*(**(a1 + 24) + 120))(&v52);
        ctu::tokenize();
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        memset(&v52, 0, sizeof(v52));
        (*(**(a1 + 24) + 120))(&__p);
        ctu::tokenize();
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p);
        }

        v27 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v44.__r_.__value_.__l.__size_ - v44.__r_.__value_.__r.__words[0]) >> 3));
        if (v44.__r_.__value_.__l.__size_ == v44.__r_.__value_.__r.__words[0])
        {
          v28 = 0;
        }

        else
        {
          v28 = v27;
        }

        sub_10042C4EC(v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_, &v50, v28, 1);
        v29 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v52.__r_.__value_.__l.__size_ - v52.__r_.__value_.__r.__words[0]) >> 3));
        if (v52.__r_.__value_.__l.__size_ == v52.__r_.__value_.__r.__words[0])
        {
          v30 = 0;
        }

        else
        {
          v30 = v29;
        }

        sub_10042C4EC(v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_, &v50, v30, 1);
        __p = 0;
        v42 = 0;
        v43 = 0;
        sub_10016FCA8(&__p, 0xAAAAAAAAAAAAAAABLL * ((v44.__r_.__value_.__l.__size_ - v44.__r_.__value_.__r.__words[0]) >> 3));
        v40 = a2;
        v48 = v44.__r_.__value_.__l.__size_;
        v49 = v44.__r_.__value_.__r.__words[0];
        v46 = v52.__r_.__value_.__l.__size_;
        v47 = v52.__r_.__value_.__r.__words[0];
        v45 = __p;
        sub_10042E00C(&v49, &v48, &v47, &v46, &v45);
        v32 = v31;
        v33 = __p;
        if (__p != v31)
        {
          do
          {
            v34 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v33;
              if (*(v33 + 23) < 0)
              {
                v35 = *v33;
              }

              LODWORD(v50) = 136446210;
              *(&v50 + 4) = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Adding the extra identifier %{public}s to the file name", &v50, 0xCu);
            }

            sub_100428E24(43, v33, &v50);
            if ((v51 & 0x80u) == 0)
            {
              v36 = &v50;
            }

            else
            {
              v36 = v50;
            }

            if ((v51 & 0x80u) == 0)
            {
              v37 = v51;
            }

            else
            {
              v37 = *(&v50 + 1);
            }

            std::string::append((a1 + 456), v36, v37);
            if (v51 < 0)
            {
              operator delete(v50);
            }

            v33 += 3;
          }

          while (v33 != v32);
        }

        *&v50 = &__p;
        sub_1000087B4(&v50);
        __p = &v52;
        sub_1000087B4(&__p);
        v52.__r_.__value_.__r.__words[0] = &v44;
        sub_1000087B4(&v52);
        a2 = v40;
      }
    }
  }

  v38 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_100428D4C(a1, &v44);
    v39 = (v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v44 : v44.__r_.__value_.__r.__words[0];
    LODWORD(v52.__r_.__value_.__l.__data_) = 136315138;
    *(v52.__r_.__value_.__r.__words + 4) = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Overridden carrier file path name: %s", &v52, 0xCu);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 479) < 0)
  {
    sub_100005F2C(a2, *v18, *(a1 + 464));
  }

  else
  {
    *a2 = *v18;
    *(a2 + 16) = *(a1 + 472);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_100428BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void ***__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void ****p_p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void **a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  p_p = &__p;
  sub_1000087B4(&p_p);
  __p = &a40;
  sub_1000087B4(&__p);
  a40 = &a20;
  sub_1000087B4(&a40);
  if (*(v45 - 137) < 0)
  {
    operator delete(*(v45 - 160));
  }

  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_100428D4C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10042A360(a1, &v8);
  sub_10042A4D0(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v8, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_100428DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100428E24@<X0>(char a1@<W0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 23);
  v7 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *a3 = 0;
  result = sub_1000677C4(a3, v8 + 1);
  if (result[23] >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  *v10 = a1;
  v11 = v10 + 1;
  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    result = memmove(v11, v12, v8);
  }

  *(v11 + v8) = 0;
  return result;
}

uint64_t sub_100428EBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_100428D4C(a1, &__p);
  v3 = (*(*v2 + 88))(v2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = *a1;
  v5 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      sub_100428D4C(a1, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v10 = p_p;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Overridden file %s already exists, not generating again", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (v5)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Overridden file does not exist", &__p, 2u);
  }

  return v3 ^ 1u;
}

void sub_100429014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429038(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v28 = &v28;
  v29 = &v28;
  v30 = 0;
  if ((*(**(a1 + 24) + 88))(*(a1 + 24)))
  {
    v6 = *(a1 + 24);
    (*(*v6 + 136))(__p, v6, a2);
    v7 = (*(*v6 + 96))(v6, __p, &v28, 0);
    v8 = v7;
    if (v32 < 0)
    {
      operator delete(*__p);
      if (v8)
      {
        goto LABEL_37;
      }
    }

    else if (v7)
    {
      goto LABEL_37;
    }

    v9 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      if (a3[23] >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      *__p = 136315138;
      *&__p[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Going through the contents in the directory searching for pattern %s", __p, 0xCu);
    }

    for (i = v29; i != &v28; i = i[1])
    {
      v12 = *(i + 39);
      if (v12 < 0)
      {
        v13 = i[2];
        v14 = i[3];
      }

      else
      {
        v13 = (i + 2);
        v14 = *(i + 39);
      }

      v15 = a3[23];
      if (v15 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      if (v15 >= 0)
      {
        v17 = a3[23];
      }

      else
      {
        v17 = *(a3 + 1);
      }

      if (v17)
      {
        if (v14 >= v17)
        {
          v18 = &v13[v14];
          v19 = *v16;
          v20 = v13;
          do
          {
            v21 = v14 - v17;
            if (v21 == -1)
            {
              break;
            }

            v22 = memchr(v20, v19, v21 + 1);
            if (!v22)
            {
              break;
            }

            v23 = v22;
            if (!memcmp(v22, v16, v17))
            {
              if (v23 == v18 || v23 != v13)
              {
                break;
              }

              goto LABEL_31;
            }

            v20 = v23 + 1;
            v14 = v18 - (v23 + 1);
          }

          while (v14 >= v17);
        }
      }

      else
      {
LABEL_31:
        v24 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          v25 = i + 2;
          if ((v12 & 0x80000000) != 0)
          {
            v25 = i[2];
          }

          *__p = 136315138;
          *&__p[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Removing file %s", __p, 0xCu);
        }

        (*(a4 + 16))(a4, i + 2);
      }
    }
  }

LABEL_37:
  sub_10042E114(&v28);
}

void sub_100429314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_10042E114(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_100429348(uint64_t a1, uint64_t a2)
{
  sub_100429C60(&__p);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 0x40000000;
  v40[2] = sub_100429CF0;
  v40[3] = &unk_101E4C2C0;
  v40[4] = a1;
  sub_100429038(a1, &__p, (a1 + 456), v40);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  err = 0;
  memset(&v38, 0, sizeof(v38));
  sub_100429DE0(a1, &v38);
  v4 = (*(**(a1 + 24) + 192))(*(a1 + 24), &v38, a2, &err);
  v5 = *a1;
  if (v4)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      sub_100429DE0(a1, &__p);
      v6 = (__p.st_gid & 0x80000000) == 0 ? &__p : *&__p.st_dev;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I The overridden file was successfully written to %s", &buf, 0xCu);
      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }
    }

    v36 = 0;
    v37 = 0;
    Registry::getMobileHelper(&v36, *(a1 + 8));
    v7 = v36;
    if (!v36)
    {
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        sub_1017702CC();
      }

      v14 = 0;
      goto LABEL_70;
    }

    p_p = &__p;
    sub_100429C60(&__p);
    if ((__p.st_gid & 0x80000000) != 0)
    {
      p_p = *&__p.st_dev;
    }

    sub_10042A360(a1, &buf);
    v9 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    v10 = buf.__r_.__value_.__r.__words[0];
    sub_10042A4D0(a1, &v41);
    if (v9 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = v10;
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v41;
    }

    else
    {
      v12 = v41.__r_.__value_.__r.__words[0];
    }

    v13 = (*(*v7 + 56))(v7, p_p, p_buf, v12);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v14 = v13 == 0;
    v15 = *a1;
    v16 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v16)
      {
        sub_100429DE0(a1, &buf);
        v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v18 = buf.__r_.__value_.__r.__words[0];
        sub_100428D4C(a1, &v41);
        v19 = &buf;
        if (v17 < 0)
        {
          v19 = v18;
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v41;
        }

        else
        {
          v20 = v41.__r_.__value_.__r.__words[0];
        }

        __p.st_dev = 136315650;
        *&__p.st_mode = v19;
        WORD2(__p.st_ino) = 2080;
        *(&__p.st_ino + 6) = v20;
        HIWORD(__p.st_gid) = 1024;
        __p.st_rdev = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N Could not copy %s to %s. Error: %d", &__p, 0x1Cu);
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      sub_10000501C(&__p, "NA");
      sub_10000501C(&buf, "mobile");
      sub_100A08E30(a1, &__p, v13, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      (*(**(a1 + 24) + 120))(&__p);
      sub_10000501C(&buf, "NA");
      sub_100429EB8(a1, &__p, &buf, v13, 2u);
    }

    else
    {
      if (!v16)
      {
LABEL_68:
        v31 = *(a1 + 24);
        sub_100429DE0(a1, &__p);
        (*(*v31 + 112))(v31, &__p);
        if (SHIBYTE(__p.st_gid) < 0)
        {
          operator delete(*&__p.st_dev);
        }

LABEL_70:
        if (v37)
        {
          sub_100004A34(v37);
        }

        goto LABEL_86;
      }

      sub_100429DE0(a1, &__p);
      st_gid_high = SHIBYTE(__p.st_gid);
      v28 = *&__p.st_dev;
      sub_100428D4C(a1, &buf);
      v29 = &__p;
      if (st_gid_high < 0)
      {
        v29 = v28;
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &buf;
      }

      else
      {
        v30 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v41.__r_.__value_.__l.__data_) = 136315394;
      *(v41.__r_.__value_.__r.__words + 4) = v29;
      WORD2(v41.__r_.__value_.__r.__words[1]) = 2080;
      *(&v41.__r_.__value_.__r.__words[1] + 6) = v30;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Moving %s to %s Succeeded", &v41, 0x16u);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    goto LABEL_68;
  }

  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_101770194();
  }

  if (err)
  {
    CFErrorGetDomain(err);
    memset(&__p, 0, 24);
    ctu::cf::assign();
    *&buf.__r_.__value_.__l.__data_ = *&__p.st_dev;
    buf.__r_.__value_.__r.__words[2] = *&__p.st_uid;
    Code = CFErrorGetCode(err);
    v22 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_1017701C8(&v38, &err, v22);
    }

    memset(&__p, 0, sizeof(__p));
    sub_100429C60(&v41);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v41;
    }

    else
    {
      v23 = v41.__r_.__value_.__r.__words[0];
    }

    v24 = stat(v23, &__p);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v25 = *a1;
    v26 = *a1;
    if (v24)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_101770264();
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v41.__r_.__value_.__l.__data_) = 67240704;
      HIDWORD(v41.__r_.__value_.__r.__words[0]) = __p.st_mode;
      LOWORD(v41.__r_.__value_.__r.__words[1]) = 1026;
      *(&v41.__r_.__value_.__r.__words[1] + 2) = __p.st_uid;
      HIWORD(v41.__r_.__value_.__r.__words[1]) = 1026;
      LODWORD(v41.__r_.__value_.__r.__words[2]) = __p.st_gid;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Printing stats for overlay folder : mode: %{public}o, user id: %{public}u, group id: %{public}u", &v41, 0x14u);
    }

    WirelessUserDirectory = _GetWirelessUserDirectory();
    v33 = stat(WirelessUserDirectory, &__p);
    v34 = *a1;
    if (v33)
    {
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        sub_101770298();
      }
    }

    else if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v41.__r_.__value_.__l.__data_) = 67240704;
      HIDWORD(v41.__r_.__value_.__r.__words[0]) = __p.st_mode;
      LOWORD(v41.__r_.__value_.__r.__words[1]) = 1026;
      *(&v41.__r_.__value_.__r.__words[1] + 2) = __p.st_uid;
      HIWORD(v41.__r_.__value_.__r.__words[1]) = 1026;
      LODWORD(v41.__r_.__value_.__r.__words[2]) = __p.st_gid;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Printing stats for wireless user folder : mode: %{public}o, user id: %{public}u, group id: %{public}u", &v41, 0x14u);
    }

    (*(**(a1 + 24) + 120))(&v41);
    sub_100429EB8(a1, &v41, &buf, Code, 1u);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    sub_10000501C(&v41, "wireless");
    sub_100A08E30(a1, &buf, Code, &v41);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v14 = 0;
LABEL_86:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  sub_1003A5A8C(&err);
  return v14;
}

void sub_100429B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1003A5A8C(&a18);
  _Unwind_Resume(a1);
}

void sub_100429C40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100429C30);
}

void sub_100429C60(std::string *a1@<X8>)
{
  WirelessUserDirectory = _GetWirelessUserDirectory();
  sub_10000501C(&v4, WirelessUserDirectory);
  v3 = std::string::append(&v4, "/Library/", 9uLL);
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_100429CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429CF0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  sub_100429C60(&v9);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::append(&v9, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v11 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 112))(v3, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_100429DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429DE0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100429C60(&v8);
  sub_10042A4D0(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v8, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_100429E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429EB8(uint64_t a1, const char *a2, const char *a3, unsigned int a4, unsigned int a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_9:
  v20 = *a1;
  if (v18)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      if (a3[23] >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      *buf = 136446978;
      *&buf[4] = v21;
      *&buf[12] = 2082;
      *&buf[14] = v22;
      v39 = 1026;
      v40 = a4;
      v41 = 1024;
      v42 = a5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Submitting metric on write failure for overlay file %{public}s. Error domain: %{public}s and error code: %{public}d, error location: %d", buf, 0x22u);
    }

    v37 = 0;
    v23 = xpc_dictionary_create(0, 0, 0);
    v24 = v23;
    if (v23)
    {
      v37 = v23;
    }

    else
    {
      v24 = xpc_null_create();
      v37 = v24;
      if (!v24)
      {
        v25 = xpc_null_create();
        v24 = 0;
        goto LABEL_27;
      }
    }

    if (xpc_get_type(v24) == &_xpc_type_dictionary)
    {
      xpc_retain(v24);
LABEL_28:
      xpc_release(v24);
      v35 = xpc_int64_create(a4);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      *buf = &v37;
      *&buf[8] = "error_code";
      sub_10000F688(buf, &v35, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v35);
      v35 = 0;
      if (a3[23] >= 0)
      {
        v26 = a3;
      }

      else
      {
        v26 = *a3;
      }

      v33 = xpc_string_create(v26);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      *buf = &v37;
      *&buf[8] = "error_domain";
      sub_10000F688(buf, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      if (a2[23] >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      v31 = xpc_string_create(v27);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      *buf = &v37;
      *&buf[8] = "overlay_file_name";
      sub_10000F688(buf, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      v29 = xpc_int64_create(a5);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      *buf = &v37;
      *&buf[8] = "directory_name";
      sub_10000F688(buf, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v28 = v37;
      v29 = 0;
      if (v37)
      {
        xpc_retain(v37);
      }

      else
      {
        v28 = xpc_null_create();
      }

      (*(*v18 + 16))(v18, "commCenterBundleOverlayFileWriteFailure", &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v37);
      goto LABEL_46;
    }

    v25 = xpc_null_create();
LABEL_27:
    v37 = v25;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_101770300();
  }

LABEL_46:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_10042A360(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 480) - 5 > 1)
  {
    v8 = sub_100357A48();
    sub_10000501C(&v10, v8);
    v9 = strlen(kUserCBDir);
    v5 = std::string::append(&v10, kUserCBDir, v9);
  }

  else
  {
    v3 = sub_100357A48();
    sub_10000501C(&v10, v3);
    v4 = strlen(kUserCountryBundleDir);
    v5 = std::string::append(&v10, kUserCountryBundleDir, v4);
  }

  v6 = *&v5->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v11, "Overlay/", 8uLL);
  *a2 = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_10042A494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042A4D0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10042A614((a1 + 456), 43, &v12);
  sub_10042A6B0(a1, __p);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v12, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = strlen(kPlistExtension);
  v9 = std::string::append(&v13, kPlistExtension, v8);
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_10042A5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
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

char *sub_10042A614@<X0>(const void **a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  v7 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *a3 = 0;
  result = sub_1000677C4(a3, v8 + 1);
  if (result[23] >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    result = memmove(v10, v11, v8);
  }

  v12 = &v10[v8];
  *v12 = a2;
  v12[1] = 0;
  return result;
}

const void **sub_10042A6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  sub_100BEB15C(a1 + 64, &v4);
  v5 = 0uLL;
  v6 = 0;
  ctu::cf::assign();
  *a2 = v5;
  *(a2 + 16) = v6;
  return sub_100005978(&v4);
}

void sub_10042A714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10042A740(uint64_t a1, const void **a2, uint64_t a3, const void **a4, const void **a5, CFDictionaryRef *a6, const void **a7, char *a8, char a9)
{
  *a1 = off_101E4C2F0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v16 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v17 = *a3;
  *(a1 + 40) = *a3;
  v18 = *(a3 + 8);
  *(a1 + 48) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    v17 = *a3;
  }

  Registry::getFileSystemInterface((a1 + 56), v17);
  sub_100010024((a1 + 72), a4);
  sub_100010024((a1 + 80), a5);
  *(a1 + 88) = 0;
  v19 = (a1 + 88);
  sub_10005C7A4((a1 + 96), a7);
  *(a1 + 104) = 0;
  v20 = (a1 + 104);
  if (a9)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v37 = 0;
    sub_100463AE0(a8, &v42);
    v21 = std::string::append(&v42, "/supported_devices.plist", 0x18uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    *&v37 = *(&v21->__r_.__value_.__l + 2);
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if ((*(**(a1 + 56) + 88))(*(a1 + 56), __p))
    {
      *buf = 0;
      sub_1009F7DEC(*(a1 + 8), (a1 + 40), __p, buf);
      if (*buf && CFDictionaryContainsKey(*buf, @"SupportedSIMOverrides"))
      {
        theDict = CFDictionaryGetValue(*buf, @"SupportedSIMOverrides");
        v42.__r_.__value_.__r.__words[0] = 0;
        sub_100010180(&v42, &theDict);
        v23 = *v20;
        *v20 = v42.__r_.__value_.__r.__words[0];
        v42.__r_.__value_.__r.__words[0] = v23;
        sub_10001021C(&v42.__r_.__value_.__l.__data_);
      }

      sub_10001021C(buf);
    }

    if (SBYTE7(v37) < 0)
    {
      operator delete(__p[0]);
    }
  }

  theDict = 0;
  sub_10042ACBC(a1, &theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(*a6, qword_101FCB6F0);
    v25 = Value;
    if (Value && (v26 = CFGetTypeID(Value), v26 == CFStringGetTypeID()))
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      *key = 0u;
      *__p = 0u;
      sub_10042B1F4(__p, *a6, a2, (a1 + 40), v25, theDict, 1);
      if (key[1])
      {
        memset(&v42, 0, sizeof(v42));
        ctu::cf::assign();
        *buf = v42.__r_.__value_.__l.__size_;
        v27 = v42.__r_.__value_.__r.__words[0];
        *&buf[7] = *(&v42.__r_.__value_.__r.__words[1] + 7);
        v28 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        if (*(a1 + 39) < 0)
        {
          operator delete(*v16);
        }

        v29 = *buf;
        *(a1 + 16) = v27;
        *(a1 + 24) = v29;
        *(a1 + 31) = *&buf[7];
        *(a1 + 39) = v28;
        *buf = CFDictionaryGetValue(theDict, key[1]);
        v42.__r_.__value_.__r.__words[0] = 0;
        sub_100010180(&v42, buf);
        v30 = *v19;
        *v19 = v42.__r_.__value_.__r.__words[0];
        v42.__r_.__value_.__r.__words[0] = v30;
        sub_10001021C(&v42.__r_.__value_.__l.__data_);
      }

      else
      {
        v34 = **(a1 + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I There is no match to perform Multimode overlay", &v42, 2u);
        }
      }

      if (*(&v40 + 1))
      {
        sub_100004A34(*(&v40 + 1));
      }

      sub_100005978(&key[1]);
      if (key[0])
      {
        sub_100004A34(key[0]);
      }

      sub_100005978(__p);
    }

    else
    {
      v31 = **(a1 + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Failed to find IMSI in the overlay matching info", __p, 2u);
      }
    }
  }

  else
  {
    v32 = **(a1 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v37 = 0;
      ctu::cf::assign();
      *&v42.__r_.__value_.__l.__data_ = *__p;
      v42.__r_.__value_.__r.__words[2] = v37;
      v33 = &v42;
      if (SBYTE7(v37) < 0)
      {
        v33 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I There is no merged %s overlay configuration", buf, 0xCu);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_10001021C(&theDict);
  return a1;
}

void sub_10042ABBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_10042B3D0(&a9);
  sub_10001021C(&a23);
  sub_10001021C(v31);
  sub_100005978((v29 + 96));
  sub_10001021C(v30);
  sub_10001021C((v29 + 80));
  sub_10001021C((v29 + 72));
  v34 = *(v29 + 64);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v29 + 48);
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (*(v29 + 39) < 0)
  {
    operator delete(*v32);
  }

  _Unwind_Resume(a1);
}

const void **sub_10042ACBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  theDict = 0;
  Value = CFDictionaryGetValue(*(a1 + 80), *(a1 + 96));
  v4 = Value;
  if (Value && (v5 = CFGetTypeID(Value), v5 == CFDictionaryGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = theDict;
    theDict = Mutable;
    *v45 = v7;
    sub_1000296E0(v45);
    Count = CFDictionaryGetCount(v4);
    keys[0] = 0;
    keys[1] = 0;
    v43 = 0;
    sub_10007D780(keys, Count);
    v49 = 0uLL;
    v50 = 0;
    sub_10007D780(&v49, Count);
    CFDictionaryGetKeysAndValues(v4, keys[0], v49);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v10 = *(v49 + 8 * i);
        if (v10 && (v11 = CFGetTypeID(*(v49 + 8 * i)), v11 == CFDictionaryGetTypeID()))
        {
          v12 = CFDictionaryGetValue(v10, @"SupportedSIMs");
          v13 = v12;
          if (v12 && (v14 = CFGetTypeID(v12), v14 == CFArrayGetTypeID()))
          {
            v15 = CFDictionaryGetValue(v10, @"OverrideConfiguration");
            v16 = v15;
            if (v15)
            {
              v17 = CFGetTypeID(v15);
              if (v17 == CFDictionaryGetTypeID())
              {
                v18 = CFArrayGetCount(v13);
                if (v18 >= 1)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v13, j);
                    v21 = ValueAtIndex;
                    if (ValueAtIndex)
                    {
                      v22 = CFGetTypeID(ValueAtIndex);
                      if (v22 == CFStringGetTypeID())
                      {
                        v23 = v21;
                      }

                      else
                      {
                        v23 = 0;
                      }
                    }

                    else
                    {
                      v23 = 0;
                    }

                    v24 = *(a1 + 104);
                    if (v24 && CFDictionaryContainsKey(v24, v23) && ((v25 = CFDictionaryGetValue(*(a1 + 104), v23), (v26 = v25) == 0) ? (v28 = 0) : (v27 = CFGetTypeID(v25), v27 != CFDictionaryGetTypeID()) ? (v28 = 0) : (v28 = v26), (sub_100AB0C50(*(a1 + 8), a1 + 40, v28) & 1) == 0))
                    {
                      v29 = **(a1 + 8);
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        memset(v45, 0, sizeof(v45));
                        v46 = 0;
                        ctu::cf::assign();
                        *__p = *v45;
                        v41 = v46;
                        v30 = *v45;
                        if (v46 >= 0)
                        {
                          v30 = __p;
                        }

                        *buf = 136315138;
                        v48 = v30;
                        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I This SupportedSIM %s is not allowed for MVNO Overlay for this device", buf, 0xCu);
                        if (SHIBYTE(v41) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }
                    }

                    else
                    {
                      CFDictionarySetValue(theDict, v23, v16);
                    }
                  }
                }

                continue;
              }
            }

            v35 = **(a1 + 8);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *v45 = 0;
              v32 = v35;
              v33 = "#I No Override Configuration found in the config dictionary";
              goto LABEL_40;
            }
          }

          else
          {
            v34 = **(a1 + 8);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *v45 = 0;
              v32 = v34;
              v33 = "#I No Supported SIMs found in the config dictionary";
              goto LABEL_40;
            }
          }
        }

        else
        {
          v31 = **(a1 + 8);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v45 = 0;
            v32 = v31;
            v33 = "#I Failed to get the config dictionary in Allowed Multimode SIMs section";
LABEL_40:
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, v45, 2u);
          }
        }
      }
    }

    if (v49)
    {
      *(&v49 + 1) = v49;
      operator delete(v49);
    }

    v36 = keys[0];
    if (keys[0])
    {
      keys[1] = keys[0];
LABEL_49:
      operator delete(v36);
    }
  }

  else
  {
    v37 = **(a1 + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      memset(v45, 0, sizeof(v45));
      v46 = 0;
      ctu::cf::assign();
      *keys = 0u;
      v43 = 0;
      LODWORD(v49) = 136315138;
      *(&v49 + 4) = keys;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I There is no %s in the base bundle", &v49, 0xCu);
      if (SHIBYTE(v43) < 0)
      {
        v36 = keys[0];
        goto LABEL_49;
      }
    }
  }

  sub_100010180(a2, &theDict);
  return sub_1000296E0(&theDict);
}

void sub_10042B15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a20);
  _Unwind_Resume(a1);
}

const void **sub_10042B1F4@<X0>(uint64_t *__return_ptr a1@<X8>, CFDictionaryRef theDict@<X3>, const void **result@<X0>, Registry **a4@<X1>, const __CFString *a5@<X2>, const __CFDictionary *a6@<X4>, uint64_t a7@<X5>)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  if (!a5 || !theDict || !a6)
  {
    return result;
  }

  v9 = a7;
  v12 = result;
  Value = CFDictionaryGetValue(theDict, qword_101FCB700);
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    v16 = v15 != CFStringGetTypeID();
  }

  else
  {
    v16 = 1;
  }

  v17 = CFDictionaryGetValue(theDict, @"HomeBundleIdentifier");
  if (!v17)
  {
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_15:
    sub_10042E2B8(v20, a5, v12, a4, a6);
LABEL_16:
    sub_10042FB00(a1, v20);
    sub_10042FB00((a1 + 5), v22);
    if (v23)
    {
      sub_100004A34(v23);
    }

    goto LABEL_18;
  }

  v18 = CFGetTypeID(v17);
  TypeID = CFStringGetTypeID();
  if (!v16)
  {
    goto LABEL_15;
  }

  if (v18 != TypeID)
  {
LABEL_14:
    sub_10042ED68(v12, a4, a5, theDict, a6, v9, v20);
    goto LABEL_16;
  }

  sub_10042E768(v20, a5, v12, a4, a6);
  sub_10042FB00(a1, v20);
  sub_10042FB00((a1 + 5), v22);
  if (v23)
  {
    sub_100004A34(v23);
  }

LABEL_18:
  sub_100005978(v22);
  if (v21)
  {
    sub_100004A34(v21);
  }

  return sub_100005978(v20);
}

const void **sub_10042B3D0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100005978((a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return sub_100005978(a1);
}

uint64_t sub_10042B424(uint64_t a1)
{
  *a1 = off_101E4C2F0;
  sub_10001021C((a1 + 104));
  sub_100005978((a1 + 96));
  sub_10001021C((a1 + 88));
  sub_10001021C((a1 + 80));
  sub_10001021C((a1 + 72));
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10042B4B4(uint64_t a1)
{
  sub_10042B424(a1);

  operator delete();
}

char *sub_10042B4EC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[39] < 0)
  {
    return sub_100005F2C(a2, *(result + 2), *(result + 3));
  }

  *a2 = *(result + 1);
  *(a2 + 16) = *(result + 4);
  return result;
}

const void **sub_10042B520@<X0>(CFDictionaryRef theDict@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, *(a2 + 96));
  sub_100010180(a3, &MutableCopy);
  return sub_1000296E0(&MutableCopy);
}

void sub_10042B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

__CFDictionary *sub_10042B598(CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, qword_101FCB700);
  CFDictionaryRemoveValue(MutableCopy, @"1xIMSI");
  v2 = qword_101FCB6F0;
  Value = CFDictionaryGetValue(MutableCopy, @"GwIMSI");
  CFDictionarySetValue(MutableCopy, v2, Value);
  v4 = CFDictionaryGetValue(MutableCopy, @"GwGID1");
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      CFDictionarySetValue(MutableCopy, @"GID1", v5);
    }
  }

  v7 = CFDictionaryGetValue(MutableCopy, @"GwGID2");
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFStringGetTypeID())
    {
      CFDictionarySetValue(MutableCopy, @"GID2", v8);
    }
  }

  return MutableCopy;
}

void *sub_10042B6C0(void *a1, NSObject **a2, uint64_t a3, const void **a4, const void **a5, char *a6)
{
  sub_100010024(&v17, a4);
  sub_100010024(&v16, a5);
  sub_100010024(&v14, a4);
  sub_10042B800(a2, &v14, &v15);
  v13 = @"AllowedMultimodeSIMs";
  CFRetain(@"AllowedMultimodeSIMs");
  sub_10042A740(a1, a2, a3, &v17, &v16, &v15, &v13, a6, 0);
  sub_100005978(&v13);
  sub_10001021C(&v15);
  sub_10001021C(&v14);
  sub_10001021C(&v16);
  sub_10001021C(&v17);
  *a1 = &off_101E4C318;
  return a1;
}

void sub_10042B7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  sub_100005978(va);
  sub_10001021C(va2);
  sub_10001021C(va1);
  sub_10001021C(va3);
  sub_10001021C(va4);
  _Unwind_Resume(a1);
}

const void **sub_10042B800@<X0>(NSObject **a1@<X0>, CFDictionaryRef *a2@<X1>, __CFDictionary **a3@<X8>)
{
  Value = CFDictionaryGetValue(*a2, @"1xIMSI");
  if (Value && (v7 = CFGetTypeID(Value), v7 == CFStringGetTypeID()))
  {
    *a3 = 0;
    v8 = *a1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I 1x's cards GW part will act as the multimode key", v12, 2u);
    }

    *a3 = sub_10042B598(*a2);
  }

  else
  {
    *a3 = 0;
    v9 = *a1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SIM info part will act as the multimode key", v12, 2u);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *a2);
    CFDictionaryRemoveValue(MutableCopy, qword_101FCB700);
    *a3 = MutableCopy;
  }

  v12[0] = 0;
  return sub_10001021C(v12);
}

void sub_10042B950(uint64_t a1)
{
  sub_10042B424(a1);

  operator delete();
}

void *sub_10042B988(void *a1, const void **a2, uint64_t a3, const void **a4, const void **a5, char *a6)
{
  sub_100010024(&v18, a4);
  sub_100010024(&v17, a5);
  sub_100010024(&theDict, a4);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, qword_101FCB700);
  v16 = MutableCopy;
  v14 = @"MVNOOverrides";
  CFRetain(@"MVNOOverrides");
  sub_10042A740(a1, a2, a3, &v18, &v17, &v16, &v14, a6, 1);
  sub_100005978(&v14);
  sub_10001021C(&v16);
  sub_10001021C(&theDict);
  sub_10001021C(&v17);
  sub_10001021C(&v18);
  *a1 = &off_101E4C340;
  return a1;
}

void sub_10042BAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  sub_100005978(va);
  sub_10001021C(va2);
  sub_10001021C(va1);
  sub_10001021C(va3);
  sub_10001021C(va4);
  _Unwind_Resume(a1);
}

void sub_10042BAF4(uint64_t a1)
{
  sub_10042B424(a1);

  operator delete();
}

void *sub_10042BB34@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*(result + 39) & 0x80000000) == 0)
  {
    if (!*(result + 39))
    {
      *a2 = *(result + 1);
      a2[2] = result[4];
      return result;
    }

    return std::operator+<char>();
  }

  if (result[3])
  {
    return std::operator+<char>();
  }

  return sub_100005F2C(a2, result[2], 0);
}

void *sub_10042BB84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  *a1 = *a3;
  a1[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v9 = *a3;
  }

  Registry::getFileSystemInterface(a1 + 2, v9);
  a1[4] = a6;
  a1[5] = a2;
  return a1;
}

void sub_10042BBE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10042BC00@<X0>(NSObject ***a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = capabilities::ct::compatibleHardwareConfigurationString(a1);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    v6 = *a1[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Model name is empty", v7, 2u);
    }

    return __TUAssertTrigger("false");
  }

  return result;
}

void sub_10042BC9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042BCB8(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v4 = *(a1 + 16);
  sub_100463AE0(*(a1 + 32), &__p);
  (*(*v4 + 136))(v14, v4, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_10000501C(buf, kPlistExtensionWithoutDot);
  sub_10042BC00(a1, v7);
  findMatchingFile();
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
  }

  if (__p == v12)
  {
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No device specific overlay file name found in the base bundle", buf, 2u);
    }
  }

  else
  {
    v7[0] = 0;
    ctu::ns::AutoPool::AutoPool(v7);
    dictAfterMergingPlistsAtPath();
    if (&v6 != a2)
    {
      *buf = *a2;
      *a2 = v6;
      v6 = 0;
      sub_10001021C(buf);
    }

    sub_10001021C(&v6);
    ctu::ns::AutoPool::~AutoPool(v7);
  }

  *buf = &__p;
  sub_1000087B4(buf);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_10042BE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  ctu::ns::AutoPool::~AutoPool(&__p);
  a16 = &a23;
  sub_1000087B4(&a16);
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  sub_10001021C(v28);
  _Unwind_Resume(a1);
}

uint64_t sub_10042BF0C(uint64_t a1, os_log_t *a2, Registry **a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = *a3;
  v10 = a3[1];
  *(a1 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a7;
  sub_100010024((a1 + 48), a4);
  *(a1 + 56) = 0u;
  v11 = (a1 + 56);
  *(a1 + 72) = 0u;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v42 = 0;
  v43 = 0;
  v12 = *(a1 + 32);
  sub_100010024(&v38, (a1 + 48));
  sub_100463AE0(*(a1 + 40), &v37);
  sub_100AB1764(v12, a1, &v38, &v37, &__p);
  v36.__r_.__value_.__r.__words[0] = &v44;
  v36.__r_.__value_.__l.__size_ = &v43;
  v36.__r_.__value_.__r.__words[2] = &v42;
  sub_10042E1F8(&v36, &__p);
  sub_100005978(&v41);
  sub_100005978(&v40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  sub_10001021C(&v38);
  v13 = HIBYTE(v46);
  if (v46 < 0)
  {
    v13 = v45;
  }

  if (v13 && v43 && v42)
  {
    theDict = 0;
    sub_1009F7DEC(a2, a3, &v44, &theDict);
    if (theDict)
    {
      v34 = 0;
      __p.__r_.__value_.__r.__words[0] = CFDictionaryGetValue(theDict, v42);
      sub_100010180(&v34, &__p.__r_.__value_.__l.__data_);
      if (v34)
      {
        v14 = kGsmaOverlayKeyToken;
        memset(&__p, 0, sizeof(__p));
        ctu::cf::assign();
        v33 = __p;
        v15 = strlen(v14);
        v16 = std::string::insert(&v33, 0, v14, v15);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
        *&v36.__r_.__value_.__l.__data_ = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        v18 = std::string::append(&v36, "v", 1uLL);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v37.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        sub_100BEB15C(*(a1 + 40), &v31);
        memset(&__p, 0, sizeof(__p));
        ctu::cf::assign();
        v32 = __p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v32;
        }

        else
        {
          v20 = v32.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v37, v20, size);
        v23 = v22->__r_.__value_.__r.__words[0];
        v47[0] = v22->__r_.__value_.__l.__size_;
        *(v47 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
        v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        if (*(a1 + 87) < 0)
        {
          operator delete(*(a1 + 64));
        }

        v25 = v47[0];
        *(a1 + 64) = v23;
        *(a1 + 72) = v25;
        *(a1 + 79) = *(v47 + 7);
        *(a1 + 87) = v24;
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        sub_100005978(&v31);
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        v37.__r_.__value_.__r.__words[0] = CFDictionaryGetValue(v34, @"OverrideConfiguration");
        __p.__r_.__value_.__r.__words[0] = 0;
        sub_100010180(&__p, &v37.__r_.__value_.__l.__data_);
        v26 = *v11;
        *v11 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__r.__words[0] = v26;
        sub_10001021C(&__p.__r_.__value_.__l.__data_);
      }

      else
      {
        v29 = **(a1 + 32);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#N No overlay configuration to perform GSMA overlay.", &__p, 2u);
        }
      }

      sub_10001021C(&v34);
    }

    else
    {
      v28 = **(a1 + 32);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_101770334(&v46 + 7, &v44, v28);
      }
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v27 = **(a1 + 32);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#N No matched GSMA configuration present in GSMA bundle.", &__p, 2u);
    }
  }

  sub_100005978(&v42);
  sub_100005978(&v43);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  return a1;
}

char *sub_10042C4B8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[87] < 0)
  {
    return sub_100005F2C(a2, *(result + 8), *(result + 9));
  }

  *a2 = *(result + 4);
  *(a2 + 16) = *(result + 10);
  return result;
}

void sub_10042C4EC(char *result, uint64_t **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = (a2 - 6);
  v9 = a2 - 9;
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v57 = sub_1000068BC(v10 + 3, v10);
        v58 = sub_1000068BC(a2 - 3, v10 + 24);
        if (v57 < 0)
        {
          if (v58 < 0)
          {
            goto LABEL_96;
          }

          v122 = *(v10 + 2);
          v98 = *v10;
          *v10 = *(v10 + 24);
          *(v10 + 2) = *(v10 + 5);
          *(v10 + 24) = v98;
          *(v10 + 5) = v122;
          if ((sub_1000068BC(a2 - 3, v10 + 24) & 0x80) == 0)
          {
            return;
          }

          v70 = *(v10 + 5);
          v71 = *(v10 + 24);
          v72 = *(a2 - 1);
          *(v10 + 24) = *v8;
          *(v10 + 5) = v72;
          *v8 = v71;
LABEL_97:
          *(a2 - 1) = v70;
          return;
        }

        if ((v58 & 0x80000000) == 0)
        {
          return;
        }

        v59 = *(v10 + 5);
        v60 = *(v10 + 24);
        v61 = *(a2 - 1);
        *(v10 + 24) = *v8;
        *(v10 + 5) = v61;
        *v8 = v60;
        *(a2 - 1) = v59;
LABEL_71:
        if ((sub_1000068BC(v10 + 3, v10) & 0x80) != 0)
        {
          v121 = *(v10 + 2);
          v97 = *v10;
          *v10 = *(v10 + 24);
          *(v10 + 2) = *(v10 + 5);
          *(v10 + 24) = v97;
          *(v10 + 5) = v121;
        }

        return;
      case 4uLL:

        sub_10042CFA4(v10, v10 + 3, v10 + 6, (a2 - 3));
        return;
      case 5uLL:
        sub_10042CFA4(v10, v10 + 3, v10 + 6, (v10 + 72));
        if ((sub_1000068BC(a2 - 3, v10 + 72) & 0x80) == 0)
        {
          return;
        }

        v62 = *(v10 + 11);
        v63 = *(v10 + 72);
        v64 = *(a2 - 1);
        *(v10 + 72) = *v8;
        *(v10 + 11) = v64;
        *v8 = v63;
        *(a2 - 1) = v62;
        if ((sub_1000068BC(v10 + 9, v10 + 48) & 0x80) == 0)
        {
          return;
        }

        v65 = *(v10 + 8);
        v66 = *(v10 + 3);
        *(v10 + 3) = *(v10 + 72);
        *(v10 + 8) = *(v10 + 11);
        *(v10 + 72) = v66;
        *(v10 + 11) = v65;
        if ((sub_1000068BC(v10 + 6, v10 + 24) & 0x80) == 0)
        {
          return;
        }

        v67 = *(v10 + 5);
        v68 = *(v10 + 24);
        *(v10 + 24) = *(v10 + 3);
        *(v10 + 5) = *(v10 + 8);
        *(v10 + 3) = v68;
        *(v10 + 8) = v67;
        goto LABEL_71;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_10042D164(v10, a2);
      }

      else
      {

        sub_10042D274(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_10042DA8C(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[24 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_1000068BC(&v10[24 * v15], v10);
      v18 = sub_1000068BC(a2 - 3, &result[24 * v15]);
      if (v17 < 0)
      {
        if (v18 < 0)
        {
          v105 = *(result + 2);
          v81 = *result;
          v29 = *v8;
          *(result + 2) = *(a2 - 1);
          *result = v29;
        }

        else
        {
          v104 = *(result + 2);
          v80 = *result;
          v25 = *v16;
          *(result + 2) = *(v16 + 2);
          *result = v25;
          *(v16 + 2) = v104;
          *v16 = v80;
          if ((sub_1000068BC(a2 - 3, &result[24 * v15]) & 0x80) == 0)
          {
            goto LABEL_29;
          }

          v105 = *(v16 + 2);
          v81 = *v16;
          v26 = *v8;
          *(v16 + 2) = *(a2 - 1);
          *v16 = v26;
        }

        *v8 = v81;
        *(a2 - 1) = v105;
      }

      else if (v18 < 0)
      {
        v100 = *(v16 + 2);
        v76 = *v16;
        v19 = *v8;
        *(v16 + 2) = *(a2 - 1);
        *v16 = v19;
        *v8 = v76;
        *(a2 - 1) = v100;
        if ((sub_1000068BC(&result[24 * v15], result) & 0x80) != 0)
        {
          v101 = *(result + 2);
          v77 = *result;
          v20 = *v16;
          *(result + 2) = *(v16 + 2);
          *result = v20;
          *(v16 + 2) = v101;
          *v16 = v77;
        }
      }

LABEL_29:
      v30 = &result[24 * v15 - 24];
      v31 = sub_1000068BC(v30, result + 24);
      v32 = sub_1000068BC(v74, v30);
      if (v31 < 0)
      {
        if (v32 < 0)
        {
          v38 = *(result + 5);
          v39 = *(result + 24);
          v40 = *(a2 - 4);
          *(result + 24) = *v74;
          *(result + 5) = v40;
          *v74 = v39;
          *(a2 - 4) = v38;
        }

        else
        {
          v86 = *(result + 24);
          v110 = *(result + 5);
          v35 = *&result[24 * v15 - 8];
          *(result + 24) = *v30;
          *(result + 5) = v35;
          *&result[24 * v15 - 8] = v110;
          *v30 = v86;
          if ((sub_1000068BC(v74, v30) & 0x80) != 0)
          {
            v111 = *&result[24 * v15 - 8];
            v87 = *v30;
            v36 = *v74;
            *&result[24 * v15 - 8] = *(a2 - 4);
            *v30 = v36;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v32 < 0)
      {
        v108 = *&result[24 * v15 - 8];
        v84 = *v30;
        v33 = *v74;
        *&result[24 * v15 - 8] = *(a2 - 4);
        *v30 = v33;
        *v74 = v84;
        *(a2 - 4) = v108;
        if ((sub_1000068BC(v30, result + 24) & 0x80) != 0)
        {
          v85 = *(result + 24);
          v109 = *(result + 5);
          v34 = *&result[24 * v15 - 8];
          *(result + 24) = *v30;
          *(result + 5) = v34;
          *&result[24 * v15 - 8] = v109;
          *v30 = v85;
        }
      }

      v41 = &result[24 * v15];
      v42 = sub_1000068BC(v41 + 3, result + 48);
      v43 = sub_1000068BC(a2 - 9, v41 + 24);
      if (v42 < 0)
      {
        if (v43 < 0)
        {
          v48 = *(result + 8);
          v49 = *(result + 3);
          v50 = *(a2 - 7);
          *(result + 3) = *v9;
          *(result + 8) = v50;
          *v9 = v49;
        }

        else
        {
          v90 = *(result + 3);
          v114 = *(result + 8);
          v46 = *(v41 + 5);
          *(result + 3) = *(v41 + 24);
          *(result + 8) = v46;
          *(v41 + 5) = v114;
          *(v41 + 24) = v90;
          if ((sub_1000068BC(a2 - 9, v41 + 24) & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v115 = *(v41 + 5);
          v91 = *(v41 + 24);
          v47 = *v9;
          *(v41 + 5) = *(a2 - 7);
          *(v41 + 24) = v47;
          *v9 = v91;
          v48 = v115;
        }

        *(a2 - 7) = v48;
      }

      else if (v43 < 0)
      {
        v112 = *(v41 + 5);
        v88 = *(v41 + 24);
        v44 = *v9;
        *(v41 + 5) = *(a2 - 7);
        *(v41 + 24) = v44;
        *v9 = v88;
        *(a2 - 7) = v112;
        if ((sub_1000068BC(v41 + 3, result + 48) & 0x80) != 0)
        {
          v89 = *(result + 3);
          v113 = *(result + 8);
          v45 = *(v41 + 5);
          *(result + 3) = *(v41 + 24);
          *(result + 8) = v45;
          *(v41 + 5) = v113;
          *(v41 + 24) = v89;
        }
      }

LABEL_48:
      v51 = sub_1000068BC(v16, v30);
      v52 = sub_1000068BC(v41 + 3, v16);
      if ((v51 & 0x80) == 0)
      {
        if (v52 < 0)
        {
          v116 = *(v16 + 2);
          v92 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 2) = *(v41 + 5);
          *(v41 + 5) = v116;
          *(v41 + 24) = v92;
          if ((sub_1000068BC(v16, v30) & 0x80) != 0)
          {
            v117 = *(v30 + 16);
            v93 = *v30;
            *v30 = *v16;
            *(v30 + 16) = *(v16 + 2);
            *(v16 + 2) = v117;
            *v16 = v93;
          }
        }

        goto LABEL_57;
      }

      if (v52 < 0)
      {
        v119 = *(v30 + 16);
        v95 = *v30;
        *v30 = *(v41 + 24);
        *(v30 + 16) = *(v41 + 5);
LABEL_56:
        *(v41 + 5) = v119;
        *(v41 + 24) = v95;
      }

      else
      {
        v118 = *(v30 + 16);
        v94 = *v30;
        *v30 = *v16;
        *(v30 + 16) = *(v16 + 2);
        *(v16 + 2) = v118;
        *v16 = v94;
        if ((sub_1000068BC(v41 + 3, v16) & 0x80) != 0)
        {
          v119 = *(v16 + 2);
          v95 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 2) = *(v41 + 5);
          goto LABEL_56;
        }
      }

LABEL_57:
      v120 = *(result + 2);
      v96 = *result;
      v53 = *v16;
      *(result + 2) = *(v16 + 2);
      *result = v53;
      *(v16 + 2) = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v21 = sub_1000068BC(v10, &v10[24 * v15]);
    v22 = sub_1000068BC(a2 - 3, result);
    if (v21 < 0)
    {
      if (v22 < 0)
      {
        v107 = *(v16 + 2);
        v83 = *v16;
        v37 = *v8;
        *(v16 + 2) = *(a2 - 1);
        *v16 = v37;
      }

      else
      {
        v106 = *(v16 + 2);
        v82 = *v16;
        v27 = *result;
        *(v16 + 2) = *(result + 2);
        *v16 = v27;
        *(result + 2) = v106;
        *result = v82;
        if ((sub_1000068BC(a2 - 3, result) & 0x80) == 0)
        {
          goto LABEL_58;
        }

        v107 = *(result + 2);
        v83 = *result;
        v28 = *v8;
        *(result + 2) = *(a2 - 1);
        *result = v28;
      }

      *v8 = v83;
      *(a2 - 1) = v107;
      goto LABEL_58;
    }

    if (v22 < 0)
    {
      v102 = *(result + 2);
      v78 = *result;
      v23 = *v8;
      *(result + 2) = *(a2 - 1);
      *result = v23;
      *v8 = v78;
      *(a2 - 1) = v102;
      if ((sub_1000068BC(result, &result[24 * v15]) & 0x80) != 0)
      {
        v103 = *(v16 + 2);
        v79 = *v16;
        v24 = *result;
        *(v16 + 2) = *(result + 2);
        *v16 = v24;
        *(result + 2) = v103;
        *result = v79;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && (sub_1000068BC(result - 3, result) & 0x80) == 0)
    {
      v10 = sub_10042D360(result, a2);
      goto LABEL_65;
    }

    v54 = sub_10042D4D8(result, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_10042D650(result, v54);
    v10 = v54 + 24;
    if (sub_10042D650((v54 + 24), a2))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_10042C4EC(result, v54, a3, -v12, a5 & 1);
      v10 = v54 + 24;
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  v69 = sub_1000068BC(a2 - 3, v10);
  if (v69 < 0)
  {
LABEL_96:
    v123 = *(v10 + 2);
    v99 = *v10;
    v73 = *v8;
    *(v10 + 2) = *(a2 - 1);
    *v10 = v73;
    *v8 = v99;
    v70 = v123;
    goto LABEL_97;
  }
}

__n128 sub_10042CFA4(char *a1, uint64_t ***a2, uint64_t ***a3, __int128 *a4)
{
  v8 = sub_1000068BC(a2, a1);
  v9 = sub_1000068BC(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = *(a1 + 2);
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      *(a1 + 2) = v22;
    }

    else
    {
      v16 = *(a1 + 2);
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      *(a1 + 2) = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((sub_1000068BC(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((sub_1000068BC(a2, a1) & 0x80) != 0)
    {
      v13 = *(a1 + 2);
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      *(a1 + 2) = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((sub_1000068BC(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    *(a4 + 2) = v24;
    if ((sub_1000068BC(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((sub_1000068BC(a2, a1) & 0x80) != 0)
      {
        v30 = *(a1 + 2);
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        *(a1 + 2) = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

void sub_10042D164(uint64_t **a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    v16 = v2;
    v17 = v3;
    v6 = (a1 + 3);
    if (a1 + 3 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v6;
        if ((sub_1000068BC(v6, v9) & 0x80) != 0)
        {
          v14 = *v8;
          v15 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v10 = v7;
          do
          {
            v11 = (a1 + v10);
            if (*(a1 + v10 + 47) < 0)
            {
              operator delete(v11[3]);
            }

            *(v11 + 3) = *v11;
            v11[5] = v11[2];
            *(v11 + 23) = 0;
            *v11 = 0;
            if (!v10)
            {
              v13 = a1;
              goto LABEL_13;
            }

            v10 -= 24;
          }

          while ((sub_1000068BC(&v14, a1 + v10) & 0x80) != 0);
          v12 = *(a1 + v10 + 47);
          v13 = a1 + v10 + 24;
          if (v12 < 0)
          {
            operator delete(*v13);
          }

LABEL_13:
          *v13 = v14;
          *(v13 + 16) = v15;
        }

        v6 = (v8 + 3);
        v7 += 24;
      }

      while (v8 + 3 != a2);
    }
  }
}

void sub_10042D274(uint64_t **a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    v13 = v2;
    v14 = v3;
    v5 = a1;
    v6 = (a1 + 3);
    if (a1 + 3 != a2)
    {
      v7 = a1 - 3;
      do
      {
        v8 = v5;
        v5 = v6;
        if ((sub_1000068BC(v6, v8) & 0x80) != 0)
        {
          v11 = *v5;
          v12 = v5[2];
          v5[1] = 0;
          v5[2] = 0;
          *v5 = 0;
          v9 = v7;
          do
          {
            if (*(v9 + 71) < 0)
            {
              operator delete(v9[6]);
            }

            *(v9 + 3) = *(v9 + 3);
            v9[8] = v9[5];
            *(v9 + 47) = 0;
            *(v9 + 24) = 0;
            v10 = sub_1000068BC(&v11, v9);
            v9 -= 3;
          }

          while (v10 < 0);
          if (*(v9 + 71) < 0)
          {
            operator delete(v9[6]);
          }

          *(v9 + 3) = v11;
          v9[8] = v12;
        }

        v6 = (v5 + 3);
        v7 += 3;
      }

      while (v5 + 3 != a2);
    }
  }
}

char *sub_10042D360(char *a1, unint64_t a2)
{
  v2 = a2;
  v14 = *a1;
  v15 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  if ((sub_1000068BC(&v14, (a2 - 24)) & 0x80) != 0)
  {
    v5 = a1;
    do
    {
      v5 += 24;
    }

    while ((sub_1000068BC(&v14, v5) & 0x80) == 0);
  }

  else
  {
    v4 = a1 + 24;
    do
    {
      v5 = v4;
      if (v4 >= v2)
      {
        break;
      }

      v6 = sub_1000068BC(&v14, v4);
      v4 = v5 + 24;
    }

    while ((v6 & 0x80) == 0);
  }

  if (v5 < v2)
  {
    do
    {
      v2 -= 24;
    }

    while ((sub_1000068BC(&v14, v2) & 0x80) != 0);
  }

  while (v5 < v2)
  {
    v7 = *v5;
    v17 = *(v5 + 2);
    v16 = v7;
    v8 = *v2;
    *(v5 + 2) = *(v2 + 16);
    *v5 = v8;
    v9 = v16;
    *(v2 + 16) = v17;
    *v2 = v9;
    do
    {
      v5 += 24;
    }

    while ((sub_1000068BC(&v14, v5) & 0x80) == 0);
    do
    {
      v2 -= 24;
    }

    while ((sub_1000068BC(&v14, v2) & 0x80) != 0);
  }

  v10 = (v5 - 24);
  if (v5 - 24 == a1)
  {
    if (*(v5 - 1) < 0)
    {
      operator delete(*v10);
    }
  }

  else
  {
    if (a1[23] < 0)
    {
      operator delete(*a1);
    }

    v11 = *v10;
    *(a1 + 2) = *(v5 - 1);
    *a1 = v11;
    *(v5 - 1) = 0;
    *(v5 - 24) = 0;
  }

  v12 = v14;
  *(v5 - 1) = v15;
  *v10 = v12;
  return v5;
}

char *sub_10042D4D8(__int128 *a1, uint64_t ***a2)
{
  v4 = 0;
  v15 = *a1;
  v16 = *(a1 + 2);
  *(a1 + 8) = 0uLL;
  *a1 = 0;
  do
  {
    v4 += 24;
  }

  while ((sub_1000068BC((a1 + v4), &v15) & 0x80) != 0);
  v5 = a1 + v4;
  if (v4 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while ((sub_1000068BC(a2, &v15) & 0x80) == 0);
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while ((sub_1000068BC(a2, &v15) & 0x80) == 0);
  }

  v6 = a1 + v4;
  if (v5 < a2)
  {
    v7 = a2;
    do
    {
      v17 = *v6;
      v8 = v17;
      v18 = *(v6 + 2);
      v9 = v18;
      v10 = v7[2];
      *v6 = *v7;
      *(v6 + 2) = v10;
      v7[2] = v9;
      *v7 = v8;
      do
      {
        v6 += 24;
      }

      while ((sub_1000068BC(v6, &v15) & 0x80) != 0);
      do
      {
        v7 -= 3;
      }

      while ((sub_1000068BC(v7, &v15) & 0x80) == 0);
    }

    while (v6 < v7);
  }

  v11 = (v6 - 24);
  if (v6 - 24 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v11);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v11;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v12;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v13 = v15;
  *(v6 - 1) = v16;
  *v11 = v13;
  return v6 - 24;
}

BOOL sub_10042D650(__int128 *a1, __int128 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = sub_1000068BC(a1 + 3, a1);
        v15 = sub_1000068BC(v5, a1 + 24);
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 2);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 2) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 2);
          v29 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 2) = *(a1 + 5);
          *(a1 + 24) = v29;
          *(a1 + 5) = v28;
          if ((sub_1000068BC(v5, a1 + 24) & 0x80) != 0)
          {
            v30 = *(a1 + 5);
            v31 = *(a1 + 24);
            v32 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 5) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 5);
        v17 = *(a1 + 24);
        v18 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 5) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        sub_10042CFA4(a1, a1 + 3, a1 + 6, (a2 - 24));
        return 1;
      case 5:
        v6 = a2 - 24;
        sub_10042CFA4(a1, a1 + 3, a1 + 6, (a1 + 72));
        if ((sub_1000068BC(v6, a1 + 72) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 11);
        v8 = *(a1 + 72);
        v9 = *(v6 + 16);
        *(a1 + 72) = *v6;
        *(a1 + 11) = v9;
        *v6 = v8;
        *(v6 + 16) = v7;
        if ((sub_1000068BC(a1 + 9, a1 + 48) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v11 = a1[3];
        a1[3] = *(a1 + 72);
        *(a1 + 8) = *(a1 + 11);
        *(a1 + 72) = v11;
        *(a1 + 11) = v10;
        if ((sub_1000068BC(a1 + 6, a1 + 24) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 5);
        v13 = *(a1 + 24);
        *(a1 + 24) = a1[3];
        *(a1 + 5) = *(a1 + 8);
        a1[3] = v13;
        *(a1 + 8) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((sub_1000068BC(a1 + 3, a1) & 0x80) != 0)
    {
      v19 = *(a1 + 2);
      v20 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v20;
      *(a1 + 5) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((sub_1000068BC(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 3);
  v22 = sub_1000068BC(a1 + 3, a1);
  v23 = sub_1000068BC(a1 + 6, a1 + 24);
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 2);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 2) = *(a1 + 8);
    }

    else
    {
      v34 = *(a1 + 2);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v35;
      *(a1 + 5) = v34;
      if ((sub_1000068BC(a1 + 6, a1 + 24) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 5);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 5) = *(a1 + 8);
    }

    *v21 = v37;
    *(a1 + 8) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 5);
    v25 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 5) = *(a1 + 8);
    *v21 = v25;
    *(a1 + 8) = v24;
    if ((sub_1000068BC(a1 + 3, a1) & 0x80) != 0)
    {
      v26 = *(a1 + 2);
      v27 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 2) = *(a1 + 5);
      *(a1 + 24) = v27;
      *(a1 + 5) = v26;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((sub_1000068BC(v38, v21) & 0x80) != 0)
    {
      v47 = *v38;
      v48 = *(v38 + 2);
      *(v38 + 1) = 0;
      *(v38 + 2) = 0;
      *v38 = 0;
      v41 = v39;
      do
      {
        v42 = a1 + v41;
        if (*(a1 + v41 + 95) < 0)
        {
          operator delete(*(v42 + 72));
        }

        *(v42 + 72) = *(v42 + 48);
        *(v42 + 88) = *(v42 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          v45 = a1;
          goto LABEL_44;
        }

        v43 = sub_1000068BC(&v47, a1 + v41 + 24);
        v41 -= 24;
      }

      while (v43 < 0);
      v44 = *(a1 + v41 + 95);
      v45 = a1 + v41 + 72;
      if (v44 < 0)
      {
        operator delete(*v45);
      }

LABEL_44:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v40 == 8)
      {
        return (v38 + 24) == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 = (v38 + 24);
    if (v38 == a2)
    {
      return 1;
    }
  }
}

char *sub_10042DA8C(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[24 * v10];
      do
      {
        sub_10042DCC0(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if ((sub_1000068BC(v13, a1) & 0x80) != 0)
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 2);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 2) = v14;
          sub_10042DCC0(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 1);
        *&v27[7] = *(a1 + 15);
        v20 = a1[23];
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = 0;
        v21 = sub_10042DE50(a1, a4, v17);
        v22 = v21;
        v23 = v21[23];
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          v22[23] = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 2);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 1) = *v27;
          *(v18 + 15) = *&v27[7];
          v18[23] = v20;
          sub_10042DF1C(a1, (v22 + 24), a4, 0xAAAAAAAAAAAAAAABLL * ((v22 + 24 - a1) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_10042DCA8(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10042DCC0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v12 = (a1 + 24 * v11);
      v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v13 < a3 && (sub_1000068BC((a1 + 24 * v11), &v12[1].n128_i8[8]) & 0x80u) != 0)
      {
        v12 = (v12 + 24);
        v11 = v13;
      }

      if ((sub_1000068BC(v12, v7) & 0x80) == 0)
      {
        v19 = *v7;
        v20 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v15 = v12;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v16 = *v12;
          v7[1].n128_u64[0] = v12[1].n128_u64[0];
          *v7 = v16;
          v12[1].n128_u8[7] = 0;
          v12->n128_u8[0] = 0;
          if (v9 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 24 * v17);
          v18 = 2 * v11 + 2;
          if (v18 < a3 && (sub_1000068BC((a1 + 24 * v17), &v12[1].n128_i8[8]) & 0x80u) != 0)
          {
            v12 = (v12 + 24);
            v17 = v18;
          }

          v7 = v15;
          v11 = v17;
          if ((sub_1000068BC(v12, &v19) & 0x80) != 0)
          {
            if (v15[1].n128_i8[7] < 0)
            {
              operator delete(v15->n128_u64[0]);
            }

            break;
          }
        }

        result = v19;
        v15[1].n128_u64[0] = v20;
        *v15 = result;
      }
    }
  }

  return result;
}

char *sub_10042DE50(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = v7 + 24;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = v7 + 48;
      if ((sub_1000068BC(v7 + 3, v7 + 48) & 0x80u) != 0)
      {
        v8 = v11;
        v5 = v10;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    v8[23] = 0;
    *v8 = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

double sub_10042DF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 24 * v7);
    v9 = (a2 - 24);
    if ((sub_1000068BC(v8, (a2 - 24)) & 0x80) != 0)
    {
      v13 = *v9;
      v14 = *(v9 + 2);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      while (1)
      {
        v11 = v8;
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v12 = *v8;
        *(v9 + 2) = *(v8 + 2);
        *v9 = v12;
        *(v8 + 23) = 0;
        *v8 = 0;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 24 * v7);
        v9 = v11;
        if ((sub_1000068BC(v8, &v13) & 0x80) == 0)
        {
          if (*(v11 + 23) < 0)
          {
            operator delete(*v11);
          }

          break;
        }
      }

      result = *&v13;
      *v11 = v13;
      *(v11 + 2) = v14;
    }
  }

  return result;
}

std::string *sub_10042E00C(std::string **a1, std::string **a2, uint64_t ***a3, uint64_t ***a4, std::string **a5)
{
  v6 = *a1;
  v7 = *a2;
  if (*a1 == *a2)
  {
    return v6;
  }

  for (i = *a3; *a3 != *a4; i = *a3)
  {
    if ((sub_1000068BC(v6, i) & 0x80) != 0)
    {
      std::string::operator=(*a5, *a1);
      v14 = a5;
    }

    else
    {
      v13 = sub_1000068BC(*a3, *a1);
      v14 = a3;
      if (v13 < 0)
      {
        goto LABEL_8;
      }
    }

    ++*a1;
LABEL_8:
    *v14 += 3;
    v6 = *a1;
    v7 = *a2;
    if (*a1 == *a2)
    {
      return v6;
    }
  }

  v15 = *a5;
  while (v6 != v7)
  {
    std::string::operator=(v15++, v6++);
  }

  return v7;
}

void sub_10042E114(uint64_t *result)
{
  if (result[2])
  {
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    result[2] = 0;
    while (v2 != result)
    {
      v5 = *(v2 + 8);
      sub_10042E174(result, v2);
      v2 = v5;
    }
  }
}

void sub_10042E174(int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

const void **sub_10042E1B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_100005978(a1);
}

void sub_10042E1F8(void *a1, __int128 *a2)
{
  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = a2 + 3;
  v7 = a1[1];
  if (v7 != (a2 + 24))
  {
    v8 = *v7;
    *v7 = 0;
    v12 = v8;
    *v7 = *v6;
    *v6 = 0;
    sub_100005978(&v12);
  }

  v9 = a2 + 2;
  v10 = a1[2];
  if (v10 != a2 + 2)
  {
    v11 = *v10;
    *v10 = 0;
    v12 = v11;
    *v10 = *v9;
    *v9 = 0;
    sub_100005978(&v12);
  }
}

const void **sub_10042E2B8@<X0>(uint64_t *__return_ptr a1@<X8>, CFStringRef theString@<X2>, os_log_t *a3@<X0>, Registry **a4@<X1>, const __CFDictionary *a5@<X4>)
{
  v33 = 0;
  cf = 0;
  if (theString && CFStringGetLength(theString) >= 1)
  {
    theArray = 0;
    sub_100AAFD34(a3, theString, a5, &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) == 1)
      {
        *v35 = CFArrayGetValueAtIndex(theArray, 0);
        *v41 = 0;
        v10 = sub_100060DE8(v41, v35);
        v11 = cf;
        cf = *v41;
        *v41 = v11;
        sub_100005978(v10);
        sub_100222570(&v33, &cf);
        v12 = *a3;
        if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
        {
          memset(v41, 0, sizeof(v41));
          v42 = 0;
          ctu::cf::assign();
          *v35 = *v41;
          v36 = v42;
          if (v42 >= 0)
          {
            v13 = v35;
          }

          else
          {
            v13 = *v35;
          }

          v28 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          copyFileName(&v28, &v29);
          memset(v41, 0, sizeof(v41));
          v42 = 0;
          ctu::cf::assign();
          *__p = *v41;
          v31 = v42;
          v14 = __p;
          if (v42 < 0)
          {
            v14 = __p[0];
          }

          *buf = 136446466;
          v38 = v13;
          v39 = 2082;
          v40 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Best match for the given Carrier ID and prefix '%{public}s': '%{public}s'", buf, 0x16u);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100005978(&v29);
          sub_100005978(&v28);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(*v35);
          }
        }

        v15 = 50.0;
        goto LABEL_25;
      }

      v21 = *a3;
      v15 = 0.0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFArrayGetCount(theArray);
        *v41 = 134217984;
        *&v41[4] = Count;
        v18 = "#I No Unique match found for CarrierBundle = %zu";
        v19 = v21;
        v20 = 12;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = *a3;
      v15 = 0.0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        v18 = "#I No candidates were found in the collection";
        v19 = v17;
        v20 = 2;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, v41, v20);
      }
    }

LABEL_25:
    sub_100010250(&theArray);
    goto LABEL_26;
  }

  v16 = *a3;
  v15 = 0.0;
  if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Invalid prefix provided to search for best match with SIM Info", v41, 2u);
  }

LABEL_26:
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v27 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v26 = v33;
  if (v33)
  {
    CFRetain(v33);
  }

  sub_10042F6C8(a1, a4, &v27, &v26, v15, v15);
  sub_100005978(&v26);
  sub_100005978(&v27);
  v23 = *a3;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_10042F45C(a1, v41);
    if (v42 >= 0)
    {
      v24 = v41;
    }

    else
    {
      v24 = *v41;
    }

    *v35 = 136446210;
    *&v35[4] = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Returning bundle match: %{public}s", v35, 0xCu);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*v41);
    }
  }

  sub_100005978(&v33);
  return sub_100005978(&cf);
}

void sub_10042E698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10042E768@<X0>(uint64_t *__return_ptr a1@<X8>, CFStringRef theString@<X2>, os_log_t *a3@<X0>, Registry **a4@<X1>, const __CFDictionary *a5@<X3>)
{
  v35 = 0;
  if (theString)
  {
    if (CFStringGetLength(theString) > 0)
    {
      theArray = 0;
      sub_100AAFD34(a3, theString, a5, &theArray);
      if (theArray && CFArrayGetCount(theArray) > 0)
      {
        Count = CFArrayGetCount(theArray);
        v11 = 0.0;
        if (Count >= 1)
        {
          v12 = 0;
          while (1)
          {
            cf = 0;
            __p[0] = CFArrayGetValueAtIndex(theArray, v12);
            sub_100060DE8(&cf, __p);
            v27 = cf;
            theString2 = 0;
            if (cf)
            {
              CFRetain(cf);
            }

            copyFileName(&v27, &theString2);
            sub_100005978(&v27);
            if (theString2)
            {
              if (CFStringCompare(theString, theString2, 1uLL) == kCFCompareEqualTo)
              {
                break;
              }
            }

            sub_100005978(&theString2);
            sub_100005978(&cf);
            if (Count == ++v12)
            {
              goto LABEL_39;
            }
          }

          sub_100222570(&v35, &cf);
          v19 = *a3;
          if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v35;
            if (v35)
            {
              CFRetain(v35);
            }

            copyFileName(&v25, &v26);
            __p[0] = 0;
            __p[1] = 0;
            v37 = 0;
            ctu::cf::assign();
            *buf = *__p;
            v39 = v37;
            v20 = buf;
            if (v37 < 0)
            {
              v20 = __p[0];
            }

            *v40 = 138543618;
            v41 = theString;
            v42 = 2082;
            v43 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Best match for the given Home Bundle Identifier '%{public}@': '%{public}s'", v40, 0x16u);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(*buf);
            }

            sub_100005978(&v26);
            sub_100005978(&v25);
          }

          sub_100005978(&theString2);
          sub_100005978(&cf);
          v11 = 50.0;
        }

LABEL_39:
        *(a1 + 3) = 0u;
        *(a1 + 4) = 0u;
        *(a1 + 1) = 0u;
        *(a1 + 2) = 0u;
        *a1 = 0u;
        v24 = v35;
        if (v35)
        {
          CFRetain(v35);
          v23 = v35;
          if (v35)
          {
            CFRetain(v35);
          }
        }

        else
        {
          v23 = 0;
        }

        sub_10042F6C8(a1, a4, &v24, &v23, v11, v11);
        sub_100005978(&v23);
        sub_100005978(&v24);
        v16 = *a3;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        sub_10042F45C(a1, __p);
        if (v37 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v21;
        v18 = "#I Returning bundle match: %{public}s";
      }

      else
      {
        *(a1 + 3) = 0u;
        *(a1 + 4) = 0u;
        *(a1 + 1) = 0u;
        *(a1 + 2) = 0u;
        *a1 = 0u;
        v31 = v35;
        if (v35)
        {
          CFRetain(v35);
          v30 = v35;
          if (v35)
          {
            CFRetain(v35);
          }
        }

        else
        {
          v30 = 0;
        }

        sub_10042F6C8(a1, a4, &v31, &v30, 0.0, 0.0);
        sub_100005978(&v30);
        sub_100005978(&v31);
        v16 = *a3;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        sub_10042F45C(a1, __p);
        if (v37 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v17;
        v18 = "#I No candidates were found in the collection. Returning bundle match: %{public}s";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_50:
      sub_100010250(&theArray);
      return sub_100005978(&v35);
    }

    v15 = v35;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    v34 = v15;
  }

  else
  {
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v34 = 0;
  }

  v33 = 0;
  sub_10042F6C8(a1, a4, &v34, &v33, 0.0, 0.0);
  sub_100005978(&v33);
  sub_100005978(&v34);
  v13 = *a3;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_10042F45C(a1, __p);
    v14 = v37 >= 0 ? __p : __p[0];
    *buf = 136446210;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Invalid homeBundleIdentifierFromMatchInfo provided to search for best match with SIM Info. Returning bundle match: %{public}s", buf, 0xCu);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100005978(&v35);
}

void sub_10042EC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46, int a47, __int16 a48, char a49, char a50, int a51, __int16 a52, char a53, char a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10042ED68@<X0>(os_log_t *a1@<X0>, Registry **a2@<X1>, const __CFString *a3@<X2>, const __CFDictionary *a4@<X3>, const __CFDictionary *a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  v43 = 0;
  v44 = 0;
  v14 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT) && (__p[0] = 0, __p[1] = 0, v46 = 0, ctu::cf::assign(), *cf = 0u, v48 = 0, *buf = 136315138, *&buf[4] = cf, _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Provided match prefix to search based on SIM information: %s", buf, 0xCu), SHIBYTE(v48) < 0))
  {
    operator delete(cf[0]);
    if (!a3)
    {
      goto LABEL_43;
    }
  }

  else if (!a3)
  {
LABEL_43:
    v29 = *a1;
    v25 = 0.0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Invalid prefix provided to search for best match with SIM Info", __p, 2u);
    }

    v26 = 0.0;
    goto LABEL_53;
  }

  if (CFStringGetLength(a3) < 1)
  {
    goto LABEL_43;
  }

  *buf = 0;
  sub_100AAFD34(a1, a3, a5, buf);
  if (!*buf)
  {
    v30 = *a1;
    v25 = 0.0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      v31 = "#I No candidates were found in the collection";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, __p, 2u);
    }

LABEL_51:
    v26 = 0.0;
    goto LABEL_52;
  }

  Count = CFArrayGetCount(*buf);
  if (Count < 1)
  {
    v30 = *a1;
    v25 = 0.0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      v31 = "#I No candidates in the candidate list";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  __p[0] = 0;
  __p[1] = 0;
  v46 = 0;
  cf[0] = 0;
  sub_10042FB60(__p, Count, cf);
  v42 = 0;
  sub_10030D8CC(&v42, a4);
  v16 = 0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  do
  {
    cf[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*buf, v16);
    sub_100060DE8(cf, &ValueAtIndex);
    v40 = cf[0];
    ValueAtIndex = 0;
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    copyFileName(&v40, &ValueAtIndex);
    sub_100005978(&v40);
    if (ValueAtIndex)
    {
      *v39 = 0;
      sub_10030DCA4(v39, a1, ValueAtIndex);
      v21 = sub_10030DCE4(v39, &v42);
      *(__p[0] + v16) = v21;
      if (v21 != 0.0)
      {
        v38 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
        }

        v22 = sub_100109238();
        sub_100005978(&v38);
        if (!v22)
        {
          *(__p[0] + v16) = 0;
          goto LABEL_30;
        }

        v21 = *(__p[0] + v16);
      }

      if (v21 != 0.0)
      {
        if ((a6 & 1) == 0)
        {
          v37 = cf[0];
          if (cf[0])
          {
            CFRetain(cf[0]);
          }

          v23 = sub_100109238();
          sub_100005978(&v37);
          v21 = *(__p[0] + v16);
          if (v21 <= 0.0)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }

        if (v21 > 0.0)
        {
          v23 = 1;
LABEL_26:
          if (v21 > v19)
          {
            v20 = v16;
            v19 = v21;
          }

          if ((v23 & (v21 > v17)) != 0)
          {
            v18 = v16;
            v17 = v21;
          }
        }
      }

LABEL_30:
      sub_10030DCE0(v39);
      goto LABEL_31;
    }

    v24 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Failed to get the candidate name", v39, 2u);
    }

LABEL_31:
    sub_100005978(&ValueAtIndex);
    sub_100005978(cf);
    ++v16;
  }

  while (Count != v16);
  v25 = 0.0;
  v26 = 0.0;
  if (v18 >= 0.0 && v18 < Count && v17 > 0.0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*buf, v18);
    cf[0] = 0;
    sub_100060DE8(cf, &ValueAtIndex);
    v27 = v44;
    v44 = cf[0];
    cf[0] = v27;
    sub_100005978(cf);
    v26 = v17;
  }

  if (v20 >= 0.0 && v20 < Count && v19 > 0.0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*buf, v20);
    cf[0] = 0;
    sub_100060DE8(cf, &ValueAtIndex);
    v28 = v43;
    v43 = cf[0];
    cf[0] = v28;
    sub_100005978(cf);
    v25 = v19;
  }

  sub_10030DCE0(&v42);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_52:
  sub_100010250(buf);
LABEL_53:
  a7[3] = 0u;
  a7[4] = 0u;
  a7[1] = 0u;
  a7[2] = 0u;
  *a7 = 0u;
  v36 = v44;
  if (v44)
  {
    CFRetain(v44);
  }

  v35 = v43;
  if (v43)
  {
    CFRetain(v43);
  }

  sub_10042F6C8(a7, a2, &v36, &v35, v26, v25);
  sub_100005978(&v35);
  sub_100005978(&v36);
  v32 = *a1;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    sub_10042F45C(a7, __p);
    if (v46 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    LODWORD(cf[0]) = 136315138;
    *(cf + 4) = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Returning bundle match: %s", cf, 0xCu);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100005978(&v43);
  return sub_100005978(&v44);
}

void sub_10042F348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, const void *a32, const void *a33, const void *a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, const void *a46)
{
  sub_10030DCE0(&a32);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  sub_100010250(&a46);
  sub_100005978(&a33);
  sub_100005978(&a34);
  _Unwind_Resume(a1);
}

uint64_t sub_10042F45C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  sub_10000D518(&v16);
  v4 = sub_10000C030(&v16, "Matchs: ", 8);
  sub_10042F8A0(a1 + 40, v14);
  if ((v15 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = v14[1];
  }

  v7 = sub_10000C030(v4, v5, v6);
  v8 = sub_10000C030(v7, ", ", 2);
  sub_10042F8A0(a1, __p);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  sub_10000C030(v8, v9, v10);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  sub_10000D684(&v16, a2);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10042F67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100D50834(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_10042F6C8(uint64_t a1, Registry **a2, const void **a3, const void **a4, double a5, double a6)
{
  sub_10005C7A4(&v13, a3);
  sub_10042F798(a1, a2, &v13, 0, a5);
  sub_100005978(&v13);
  sub_10005C7A4(&v12, a4);
  sub_10042F798(a1 + 40, a2, &v12, 1, a6);
  sub_100005978(&v12);
  return a1;
}

void sub_10042F76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_100005978(&a9);
  sub_10042E1B8(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10042F798(uint64_t a1, Registry **a2, const void **a3, char a4, double a5)
{
  v9 = sub_10005C7A4(a1, a3);
  *(v9 + 1) = a5;
  *(v9 + 16) = a4;
  ServiceMap = Registry::getServiceMap(*a2);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
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
  v20 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v20);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  std::mutex::unlock(v11);
  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v17);
  }

  return a1;
}

uint64_t sub_10042F8A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  sub_10000D518(&v16);
  v4 = sub_10000C030(&v16, "[Name: ", 7);
  sub_10082F9B4(__p);
  if ((v15 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_10000C030(v4, v5, v6);
  sub_10000C030(v7, ", Score: ", 9);
  v8 = std::ostream::operator<<();
  v9 = sub_10000C030(v8, ", include cookie: ", 18);
  v10 = CSIBOOLAsString(*(a1 + 16));
  v11 = strlen(v10);
  v12 = sub_10000C030(v9, v10, v11);
  sub_10000C030(v12, "]", 1);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000D684(&v16, a2);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_10042FB00(uint64_t a1, uint64_t a2)
{
  sub_100222570(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

uint64_t *sub_10042FB60(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1000D0358(a1, a2);
  }

  return a1;
}

void sub_10042FC1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10042FD04(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4C4D8;
  sub_100B2E0D8(a1 + 3);
  return a1;
}

void sub_10042FD80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4C4D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10042FFDC(uint64_t a1, void *a2, NSObject **a3, char *a4, char *a5, void *a6, uint64_t *a7, char a8, char a9, void *aBlock)
{
  ctu::OsLogContext::OsLogContext(&v36, kCtLoggingSystemName, a5);
  sub_1004303CC((a1 + 8), a3, &v36);
  ctu::OsLogContext::~OsLogContext(&v36);
  *a1 = off_101E4C528;
  *(a1 + 48) = *a2;
  v17 = a2[1];
  *(a1 + 56) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = aBlock;
  *(a1 + 64) = *a6;
  v19 = a6[1];
  *(a1 + 72) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v20 = *a7;
  *(a1 + 112) = 0u;
  v21 = (a1 + 112);
  *(a1 + 80) = a9;
  *(a1 + 81) = a8;
  *(a1 + 104) = v20;
  *(a1 + 144) = 0;
  v22 = (a1 + 144);
  *(a1 + 128) = 0u;
  if (aBlock)
  {
    v18 = _Block_copy(aBlock);
  }

  *(a1 + 152) = v18;
  v23 = *a7 / 4;
  v24 = 5;
  if (v23 < 5)
  {
    v24 = *a7 / 4;
  }

  v25 = 60 * v24;
  if (v23 >= 10)
  {
    v23 = 10;
  }

  *(a1 + 160) = v25;
  *(a1 + 168) = 60 * v23;
  if (a4 && *a4)
  {
    v26 = (a1 + 136);
    sub_10000501C(&v35, "TimedUpdater '");
    v27 = strlen(a4);
    v28 = std::string::append(&v35, a4, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v36, "'", 1uLL);
    v31 = v30->__r_.__value_.__r.__words[0];
    v37[0] = v30->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v30->__r_.__value_.__r.__words[1] + 7);
    v32 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 135) < 0)
    {
      operator delete(*v21);
    }

    v33 = v37[0];
    *(a1 + 112) = v31;
    *(a1 + 120) = v33;
    *(a1 + 127) = *(v37 + 7);
    *(a1 + 135) = v32;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    sub_100430458(a4, &v35);
    if (v26 != &v35)
    {
      v36.__r_.__value_.__r.__words[0] = v26->__r_.__value_.__r.__words[0];
      v26->__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
      v35.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&v36.__r_.__value_.__l.__data_);
    }

    sub_100005978(&v35.__r_.__value_.__l.__data_);
    sub_100430578(a1, a4, &v35);
    if (v22 != &v35)
    {
      v36.__r_.__value_.__r.__words[0] = v22->__r_.__value_.__r.__words[0];
      v22->__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
      v35.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&v36.__r_.__value_.__l.__data_);
    }

    sub_100005978(&v35.__r_.__value_.__l.__data_);
  }

  else
  {
    if (*(a1 + 135) < 0)
    {
      *(a1 + 120) = 12;
      v21 = *(a1 + 112);
    }

    else
    {
      *(a1 + 135) = 12;
    }

    strcpy(v21, "TimedUpdater");
    *(a1 + 80) = 0;
  }

  return a1;
}

void sub_100430300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v27 = *(v21 + 152);
  if (v27)
  {
    _Block_release(v27);
  }

  sub_100005978(v23);
  sub_100005978(v24);
  if (*(v21 + 135) < 0)
  {
    operator delete(*v25);
  }

  sub_1003EC530(v22);
  v28 = *(v21 + 72);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v21 + 56);
  if (v29)
  {
    sub_100004A34(v29);
  }

  ctu::OsLogLogger::~OsLogLogger((v21 + 40));
  sub_1000C0544((v21 + 8));
  _Unwind_Resume(a1);
}

void *sub_1004303CC(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100430434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_100430458(char *a1@<X1>, CFStringRef *a2@<X8>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_10000501C(&__p, a1);
  v3 = HIBYTE(v13);
  v4 = __p;
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 >= 0)
  {
    v6 = HIBYTE(v13);
  }

  else
  {
    v6 = v12;
  }

  if (v6)
  {
    do
    {
      v7 = *p_p;
      if (v7 < 0)
      {
        v8 = __maskrune(*p_p, 0x500uLL);
      }

      else
      {
        v8 = _DefaultRuneLocale.__runetype[v7] & 0x500;
      }

      if (v7 != 46 && v8 == 0)
      {
        *p_p = 46;
      }

      ++p_p;
      --v6;
    }

    while (v6);
    v3 = HIBYTE(v13);
    v4 = __p;
  }

  if (v3 >= 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = v4;
  }

  *a2 = CFStringCreateWithFormat(0, 0, @"%sNextUpdate", v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_100430558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100430578(uint64_t a1@<X0>, char *a2@<X1>, CFStringRef *a3@<X8>)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  sub_10000501C(v20, a2);
  if (v21 >= 0)
  {
    v5 = v20;
  }

  else
  {
    v5 = v20[0];
  }

  if (v21 >= 0)
  {
    v6 = HIBYTE(v21);
  }

  else
  {
    v6 = v20[1];
  }

  for (; v6; --v6)
  {
    v7 = *v5;
    if (v7 < 0)
    {
      v8 = __maskrune(*v5, 0x500uLL);
    }

    else
    {
      v8 = _DefaultRuneLocale.__runetype[v7] & 0x500;
    }

    if (v7 != 46 && v8 == 0)
    {
      *v5 = 46;
    }

    v5 = (v5 + 1);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = v20;
    if (v21 < 0)
    {
      v11 = v20[0];
    }

    v14 = *(v10 + 24);
    v12 = (v10 + 24);
    v13 = v14;
    v15 = *(v12 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v12 + 1);
    }

    if (v16 < 0)
    {
      v12 = v13;
    }

    if (!v15)
    {
      v12 = "<invalid>";
    }

    *a3 = CFStringCreateWithFormat(0, 0, @"%s-%s", v11, v12);
  }

  else
  {
    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(__dst, v20[0], v20[1]);
    }

    else
    {
      *__dst = *v20;
      v19 = v21;
    }

    if (SHIBYTE(v19) < 0)
    {
      sub_100005F2C(v23, __dst[0], __dst[1]);
    }

    else
    {
      *v23 = *__dst;
      v24 = v19;
    }

    v22 = 0;
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(__p, v23[0], v23[1]);
    }

    else
    {
      *__p = *v23;
      v26 = v24;
    }

    v27 = 0;
    if (ctu::cf::convert_copy())
    {
      v17 = v22;
      v22 = v27;
      v28 = v17;
      sub_100005978(&v28);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    *a3 = v22;
    v22 = 0;
    sub_100005978(&v22);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_1004307B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100430824(uint64_t a1)
{
  *a1 = off_101E4C528;
  sub_1004308C8(a1);
  v2 = *(a1 + 152);
  if (v2)
  {
    _Block_release(v2);
  }

  sub_100005978((a1 + 144));
  sub_100005978((a1 + 136));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  sub_1003EC530((a1 + 96));
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
  return a1;
}

BOOL sub_1004308C8(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 88));
    dispatch_release(*(a1 + 88));
    *(a1 + 88) = 0;
  }

  return v1 != 0;
}

void sub_100430910(uint64_t a1)
{
  sub_100430824(a1);

  operator delete();
}

void sub_100430948(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  sub_1004308C8(a1);
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  v3 = v2;
  sub_1003EC530(&v3);
  sub_10043099C(a1);
}

void sub_10043099C(uint64_t a1)
{
  if (*(a1 + 136) && *(a1 + 81) == 1)
  {
    v2 = *(a1 + 96);
    v3 = *(a1 + 64);
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v5 = ServiceMap;
    if (v2)
    {
      if (v3)
      {
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
        v31 = v6;
        v10 = sub_100009510(&v5[1].__m_.__sig, &v31);
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
LABEL_26:
            (*(*v12 + 16))(v12, *(a1 + 64) + 24, *(a1 + 136), *(a1 + 96), 0, 0, 1, 0);
            goto LABEL_42;
          }
        }

        else
        {
          v12 = 0;
        }

        std::mutex::unlock(v5);
        v11 = 0;
        goto LABEL_26;
      }

      v19 = "8UStorage";
      if (("8UStorage" & 0x8000000000000000) != 0)
      {
        v20 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
        v21 = 5381;
        do
        {
          v19 = v21;
          v22 = *v20++;
          v21 = (33 * v21) ^ v22;
        }

        while (v22);
      }

      std::mutex::lock(ServiceMap);
      v31 = v19;
      v23 = sub_100009510(&v5[1].__m_.__sig, &v31);
      if (v23)
      {
        v24 = v23[3];
        v11 = v23[4];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v5);
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
LABEL_38:
          sub_10071C318(v24, *(a1 + 136), *(a1 + 96), 0, 1, 0, 0);
          goto LABEL_42;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v5);
      v11 = 0;
      goto LABEL_38;
    }

    if (v3)
    {
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
      v31 = v13;
      v17 = sub_100009510(&v5[1].__m_.__sig, &v31);
      if (v17)
      {
        v18 = v17[3];
        v11 = v17[4];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v5);
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
LABEL_35:
          (*(*v18 + 32))(v18, *(a1 + 64) + 24, *(a1 + 136), 0, 0, 1);
          goto LABEL_42;
        }
      }

      else
      {
        v18 = 0;
      }

      std::mutex::unlock(v5);
      v11 = 0;
      goto LABEL_35;
    }

    v25 = "8UStorage";
    if (("8UStorage" & 0x8000000000000000) != 0)
    {
      v26 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
      v27 = 5381;
      do
      {
        v25 = v27;
        v28 = *v26++;
        v27 = (33 * v27) ^ v28;
      }

      while (v28);
    }

    std::mutex::lock(ServiceMap);
    v31 = v25;
    v29 = sub_100009510(&v5[1].__m_.__sig, &v31);
    if (v29)
    {
      v30 = v29[3];
      v11 = v29[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
LABEL_41:
        sub_10071C340(v30, *(a1 + 136), 0, 1);
LABEL_42:
        if (v11)
        {
          sub_100004A34(v11);
        }

        return;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    goto LABEL_41;
  }
}

void sub_100430D04(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100430D40(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (a2)
  {
    v4 = *(a1 + 96);
    *(a1 + 96) = 0;
    *buf = v4;
    sub_1003EC530(buf);
    v5 = 0;
    goto LABEL_9;
  }

  if (*(a1 + 96))
  {
    return 0;
  }

  v47 = 0;
  sub_100431410(a1, &v47);
  if (!v47)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = sub_100431694(a1, v47);
  if ((v7 & 1) == 0)
  {
    v24 = *(a1 + 40);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    v25 = *(a1 + 64);
    if (v25)
    {
      v26 = PersonalityInfo::logPrefix(v25);
      if (*(a1 + 64))
      {
        v27 = " ";
LABEL_57:
        v42 = (a1 + 112);
        if (*(a1 + 135) < 0)
        {
          v42 = *v42;
        }

        *buf = 136315906;
        *&buf[4] = v26;
        *&buf[12] = 2080;
        *&buf[14] = v27;
        v50 = 2112;
        v51 = v47;
        v52 = 2080;
        v53 = v42;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sPersisted TS [%@] for %s already passed - call to action", buf, 0x2Au);
LABEL_60:
        sub_10043099C(a1);
        sub_100004AA0(buf, (a1 + 8));
        v43 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v43);
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_100004AA0(buf, (a1 + 8));
        operator new();
      }
    }

    else
    {
      v26 = "";
    }

    v27 = "";
    goto LABEL_57;
  }

  v5 = v6;
  sub_100431ADC((a1 + 96), &v47);
LABEL_8:
  sub_1003EC530(&v47);
LABEL_9:
  if (!*(a1 + 96))
  {
    v48[0].__padding_ = 0;
    sub_100344DA8(v48);
    v12 = *(a1 + 168);
    v46[0] = -*(a1 + 160);
    v46[1] = v12;
    v13 = sub_100431DC8(v46, v48, v46);
    v14 = *(a1 + 104);
    Current = CFAbsoluteTimeGetCurrent();
    v5 = v13 + 60 * v14;
    v16 = CFDateCreate(kCFAllocatorDefault, Current + v5 + 600.0);
    v17 = *(a1 + 96);
    *(a1 + 96) = v16;
    *buf = v17;
    sub_1003EC530(buf);
    v18 = *(a1 + 40);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_32:
      sub_10043099C(a1);
      std::random_device::~random_device(v48);
      goto LABEL_33;
    }

    v19 = *(a1 + 64);
    if (v19)
    {
      v20 = PersonalityInfo::logPrefix(v19);
      if (*(a1 + 64))
      {
        v21 = " ";
LABEL_29:
        v28 = (a1 + 112);
        if (*(a1 + 135) < 0)
        {
          v28 = *v28;
        }

        v30 = *(a1 + 96);
        v29 = *(a1 + 104);
        *buf = 136316418;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = v21;
        v50 = 2080;
        v51 = v28;
        v52 = 2048;
        v53 = v29;
        v54 = 2048;
        v55 = v13;
        v56 = 2112;
        v57 = v30;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating next %s for %ld minutes %+lld seconds jitter: [%@]", buf, 0x3Eu);
        goto LABEL_32;
      }
    }

    else
    {
      v20 = "";
    }

    v21 = "";
    goto LABEL_29;
  }

  v8 = *(a1 + 40);
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_33;
  }

  v9 = *(a1 + 64);
  if (!v9)
  {
    v10 = "";
    goto LABEL_19;
  }

  v10 = PersonalityInfo::logPrefix(v9);
  if (!*(a1 + 64))
  {
LABEL_19:
    v11 = "";
    goto LABEL_20;
  }

  v11 = " ";
LABEL_20:
  v22 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v22 = *v22;
  }

  v23 = *(a1 + 96);
  *buf = 136316162;
  *&buf[4] = v10;
  *&buf[12] = 2080;
  *&buf[14] = v11;
  v50 = 2080;
  v51 = v22;
  v52 = 2048;
  v53 = v5;
  v54 = 2112;
  v55 = v23;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sRestore %s from persisted value: %+lld seconds from now: [%@]", buf, 0x34u);
LABEL_33:
  sub_1004308C8(a1);
  *(a1 + 88) = dispatch_source_create(&_dispatch_source_type_timer, 2uLL, 0, *(a1 + 24));
  sub_100004AA0(buf, (a1 + 8));
  v32 = *buf;
  v31 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v31);
  }

  v33 = *(a1 + 88);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 1174405120;
  handler[2] = sub_10043193C;
  handler[3] = &unk_101E4C538;
  handler[4] = a1;
  handler[5] = v32;
  v45 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_source_set_event_handler(v33, handler);
  v34 = *(a1 + 88);
  v35 = dispatch_time(0x8000000000000000, 1000000000 * v5);
  dispatch_source_set_timer(v34, v35, 0xFFFFFFFFFFFFFFFFLL, 0x1388uLL);
  dispatch_activate(*(a1 + 88));
  if (*(a1 + 80) != 1 || !*(a1 + 144) || !*(a1 + 96))
  {
    goto LABEL_50;
  }

  v36 = *(a1 + 40);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = *(a1 + 64);
    if (v37)
    {
      v38 = PersonalityInfo::logPrefix(v37);
      if (*(a1 + 64))
      {
        v39 = " ";
LABEL_46:
        v40 = (a1 + 112);
        if (*(a1 + 135) < 0)
        {
          v40 = *v40;
        }

        *buf = 136315650;
        *&buf[4] = v38;
        *&buf[12] = 2080;
        *&buf[14] = v39;
        v50 = 2080;
        v51 = v40;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sWill power up AP on %s expiry", buf, 0x20u);
        goto LABEL_49;
      }
    }

    else
    {
      v38 = "";
    }

    v39 = "";
    goto LABEL_46;
  }

LABEL_49:
  CPCancelWakeAtDateWithIdentifier();
  CPScheduleWakeAtDateWithIdentifier();
LABEL_50:
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  return 0;
}

void sub_100431410(uint64_t a1@<X0>, const char **a2@<X8>)
{
  *a2 = 0;
  if (!*(a1 + 136) || *(a1 + 81) != 1)
  {
    return;
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (!v4)
  {
    ServiceMap = Registry::getServiceMap(v5);
    v16 = ServiceMap;
    v17 = "8UStorage";
    if (("8UStorage" & 0x8000000000000000) != 0)
    {
      v18 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
    v26 = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &v26);
    if (v21)
    {
      v22 = v21[3];
      v13 = v21[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
LABEL_21:
        sub_10071C330(&v24, v22, *(a1 + 136), 0, 1);
        goto LABEL_22;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v16);
    v13 = 0;
    goto LABEL_21;
  }

  v6 = Registry::getServiceMap(v5);
  v7 = v6;
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

  std::mutex::lock(v6);
  v26 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v26);
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
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
LABEL_18:
  (*(*v14 + 24))(&v24, v14, *(a1 + 64) + 24, *(a1 + 136), 0, 0, 1);
LABEL_22:
  sub_100432018(&v25, &v24);
  if (&v25 != a2)
  {
    v23 = *a2;
    *a2 = v25;
    v25 = 0;
    v26 = v23;
    sub_1003EC530(&v26);
  }

  sub_1003EC530(&v25);
  sub_10000A1EC(&v24);
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_10043163C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003EC530(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_100431694(uint64_t a1, const __CFDate *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(kCFAllocatorDefault, Current);
  v22 = v5;
  if (!v5)
  {
    v9 = 0;
    LOBYTE(v8) = 0;
    goto LABEL_17;
  }

  TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(a2, v5);
  v7 = TimeIntervalSinceDate;
  if (TimeIntervalSinceDate > 0.0)
  {
    v8 = TimeIntervalSinceDate & ~(TimeIntervalSinceDate >> 63);
    if (v8 < 120 * *(a1 + 104))
    {
      v9 = v8 >> 8;
      v10 = 1;
      goto LABEL_16;
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 64);
      if (v12)
      {
        v13 = PersonalityInfo::logPrefix(v12);
        if (*(a1 + 64))
        {
          v14 = " ";
LABEL_12:
          v15 = (a1 + 112);
          if (*(a1 + 135) < 0)
          {
            v15 = *v15;
          }

          *buf = 136315906;
          v24 = v13;
          v25 = 2080;
          v26 = v14;
          v27 = 2112;
          v28 = a2;
          v29 = 2080;
          v30 = v15;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%sTarget time [%@] for %s is too far in the future, probably wallclock time adjusted - assume wrong and already passed", buf, 0x2Au);
          goto LABEL_15;
        }
      }

      else
      {
        v13 = "";
      }

      v14 = "";
      goto LABEL_12;
    }
  }

LABEL_15:
  v10 = 0;
  v9 = 0;
  LOBYTE(v8) = 0;
LABEL_16:
  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = "";
    if (*(a1 + 64) && (v18 = PersonalityInfo::logPrefix(*(a1 + 64)), *(a1 + 64)))
    {
      v19 = " ";
    }

    else
    {
      v19 = "";
    }

    v20 = v8 | (v9 << 8);
    *buf = 136316674;
    if (!v10)
    {
      v20 = 0;
    }

    v24 = v18;
    v21 = " (already passed)";
    v25 = 2080;
    if (v10)
    {
      v21 = "";
    }

    v26 = v19;
    v27 = 2112;
    v28 = a2;
    v29 = 2112;
    v30 = v22;
    v31 = 2048;
    v32 = v7;
    v33 = 2048;
    v34 = v20;
    v35 = 2080;
    v36 = v21;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#D %s%ssecondsTill TS: [%@], Now: [%@], interval: %f -> result:%lld%s", buf, 0x48u);
  }

LABEL_17:
  sub_1003EC530(&v22);
  return v8 | (v9 << 8);
}

void sub_100431920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003EC530(va);
  _Unwind_Resume(a1);
}

void sub_10043193C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[5] || !sub_1004308C8(v3))
      {
        goto LABEL_16;
      }

      v6 = *(v3 + 40);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        v11 = *(v3 + 96);
        *(v3 + 96) = 0;
        *v13 = v11;
        sub_1003EC530(v13);
        sub_10043099C(v3);
        v12 = *(v3 + 152);
        if (v12)
        {
          (*(v12 + 16))();
        }

LABEL_16:
        sub_100004A34(v5);
        return;
      }

      v7 = *(v3 + 64);
      if (v7)
      {
        v8 = PersonalityInfo::logPrefix(v7);
        if (*(v3 + 64))
        {
          v9 = " ";
LABEL_11:
          v10 = (v3 + 112);
          if (*(v3 + 135) < 0)
          {
            v10 = *v10;
          }

          *v13 = 136315650;
          *&v13[4] = v8;
          v14 = 2080;
          v15 = v9;
          v16 = 2080;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sTimer for %s expired - call to action", v13, 0x20u);
          goto LABEL_14;
        }
      }

      else
      {
        v8 = "";
      }

      v9 = "";
      goto LABEL_11;
    }
  }
}

uint64_t sub_100431AB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100431ACC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

const void **sub_100431ADC(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_100431B34(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_1003EC530(&v5);
  }

  return a1;
}

const void **sub_100431B34(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void *sub_100431B6C(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void sub_100431C24(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100431CF8);
  __cxa_rethrow();
}

void sub_100431C64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100431CB8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100431CF8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_100431D24(void **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v6 = v4;
      if (v1[1])
      {
        v7 = *(v3 + 152);
        if (v7)
        {
          (*(v7 + 16))(v7, v5);
        }
      }

      sub_100004A34(v6);
    }
  }

  sub_10007060C(&v10);
  return sub_1000049E0(&v9);
}

void sub_100431DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100431DC8(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v13 = v3;
    v14 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      sub_100431E64(v12, a2, 0x40uLL);
      return sub_100431F44(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      memset(&v12[2], 0, 32);
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      memset(v12, 0, 32);
      sub_100431E64(v12, a2, v10 - v9);
      do
      {
        v11 = sub_100431F44(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t sub_100431E64(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & &_mh_execute_header;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ &_mh_execute_header) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & &_mh_execute_header;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t sub_100431F44(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::random_device::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v3 << v5;
      }

      v3 = v6 + (*(a1 + 56) & v4);
      ++v2;
      v7 = *(a1 + 32);
    }

    while (v2 < v7);
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::random_device::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v3 << (v9 + 1);
    }

    v3 = v10 + (*(a1 + 60) & v8);
  }

  return v3;
}