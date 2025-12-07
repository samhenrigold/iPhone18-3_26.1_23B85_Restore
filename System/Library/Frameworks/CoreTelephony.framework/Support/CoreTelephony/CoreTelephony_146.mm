__n128 sub_1012B0ED4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F265D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012B0F0C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1012B0F54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012B101C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F26658;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012B1054(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_1012B114C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B1208(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F266D8;
  a2[1] = v2;
  return result;
}

void sub_1012B1234(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/is_activation_ticket_updated");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_1012B12E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B132C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B1388(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012B13A4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_1012B13B4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1012B140C(uint64_t a1)
{
  v2 = a1;
  sub_10005B8C8(&v3);
  (*(*v3 + 160))();
  if (v4)
  {
    sub_100004A34(v4);
  }

  return sub_1012B13B4(&v2);
}

void sub_1012B1490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1012B13B4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B1528(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26790;
  a2[1] = v2;
  return result;
}

void sub_1012B1554(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*a2);
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I BAA prefetch for update baseband : %s", &v5, 0xCu);
  }
}

uint64_t sub_1012B15FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B16B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26810;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012B16E4(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v2 = *(result + 8);
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Ticket refetch failed, requesting reactivation", v6, 2u);
    }

    v4 = *(v2 + 152);
    v5 = (*(**(v2 + 112) + 376))(*(v2 + 112));
    return (*(*v4 + 16))(v4, v5);
  }

  return result;
}

uint64_t sub_1012B17B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012B1870(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26890;
  a2[1] = v2;
  return result;
}

void sub_1012B189C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012B197C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012B19C8(void *a1)
{
  v1 = a1;
  *(**a1 + 133) = 1;
  operator delete();
}

void sub_1012B1A14(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 112) + 152))(*(v2 + 112));
  v4 = *(v2 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = CSIBOOLAsString(v3 == 3);
    v7 = CSIBOOLAsString(*(v1 + 8));
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ticket rejected (%s) activated (%s)", buf, 0x16u);
  }

  BasebandBootStrategy = capabilities::ct::getBasebandBootStrategy(v5);
  if (BasebandBootStrategy == 2 || (BasebandBootStrategy = (*(**(v2 + 112) + 152))(*(v2 + 112)), BasebandBootStrategy))
  {
    if (capabilities::ct::getProvisioningProfileSupport(BasebandBootStrategy) == 1 && *(v1 + 8) == 1 && v3 != 3 && (*(**(v2 + 112) + 416))(*(v2 + 112)) == 2)
    {
      *buf = off_101F26790;
      *&buf[8] = v2;
      v12 = buf;
      sub_1012A7450(v2, 1, buf);
    }

    if ((v1[1] & 1) == 0 && v3 != 3)
    {
      v9 = *(v2 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Removing stored postponement ticket", buf, 2u);
      }

      DevicePersistentSaveValue(kPostponementTicketPlist, 0);
      DevicePersistentSaveValue(kPostponementTicketObliterated, kCFBooleanTrue);
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Removing cached postponement ticket", buf, 2u);
      }

      (*(**(v2 + 112) + 72))(*(v2 + 112));
    }
  }

  operator delete();
}

void sub_1012B1CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000FF50(va);
  operator delete();
}

const __CFString *sub_1012B1D20(int a1)
{
  v1 = @"PhoneNumber?";
  if (a1 == 2)
  {
    v1 = @"PhoneNumber2";
  }

  if (a1 == 1)
  {
    return @"PhoneNumber";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1012B1D4C(uint64_t a1, void *a2, NSObject **a3, char *a4, __int128 *a5, uint64_t a6)
{
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, a4);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = *a3;
  *(a1 + 24) = *a3;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(&v17, &v19);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), &v17);
  ctu::OsLogLogger::~OsLogLogger(&v17);
  ctu::OsLogContext::~OsLogContext(&v19);
  v13 = sub_1011D4668(v18, a6);
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v13) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v18);
  *a1 = off_101F26910;
  *(a1 + 56) = *a2;
  v14 = a2[1];
  *(a1 + 64) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 88), *a5, *(a5 + 1));
  }

  else
  {
    v15 = *a5;
    *(a1 + 104) = *(a5 + 2);
    *(a1 + 88) = v15;
  }

  *(a1 + 152) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = a4;
  *(a1 + 135) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  return a1;
}

void sub_1012B1FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_1012B20BC(uint64_t a1)
{
  *a1 = off_101F26910;
  sub_10004C4EC(a1 + 168, *(a1 + 176));
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
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
  return a1;
}

void sub_1012B2190(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[10];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (v3[9])
      {
        v8 = v3[5];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I HTTP Request for data is complete", buf, 2u);
        }

        v9 = a2[1];
        v11 = *a2;
        v12 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(a1 + 64);
        if (!v10)
        {
          sub_100022DB4();
        }

        (*(*v10 + 48))(v10, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1012B2284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B22A4(uint64_t a1, __int128 *a2)
{
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 112);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Reporting %s information to the server", &buf, 0xCu);
  }

  v7 = *(a1 + 192);
  if (v7 >= 4)
  {
    v12 = *v5;
    v11 = 4;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109376;
      DWORD1(buf) = v7;
      WORD4(buf) = 1024;
      *(&buf + 10) = 4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Request failure count %u has already reached the max %u", &buf, 0xEu);
    }
  }

  else
  {
    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9 && *(a1 + 72))
      {
        if (*(a1 + 136) == 1)
        {
          v10 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Response is still pending, sending the request later", &buf, 2u);
          }

          v11 = 5;
        }

        else
        {
          cf = 0;
          (*(*a1 + 40))(&cf, a1, a2);
          if (cf)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            sub_100D869B4(v5, a1 + 88, &v22);
            v14 = HIBYTE(v24);
            if (v24 < 0)
            {
              v14 = v23;
            }

            if (v14)
            {
              theData = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(v19, *a2, *(a2 + 1));
              }

              else
              {
                *v19 = *a2;
                v19[2] = *(a2 + 2);
              }

              sub_100004AA0(&buf, (a1 + 8));
              v17 = *(&buf + 1);
              *v20 = buf;
              if (*(&buf + 1))
              {
                atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
                sub_100004A34(v17);
              }

              v26 = 0;
              operator new();
            }

            v16 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E Failed to create activity URL of the server", &buf, 2u);
            }

            v11 = 1;
            if (SHIBYTE(v24) < 0)
            {
              operator delete(v22);
            }
          }

          else
          {
            v15 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E Failed to create XML Data for sending to server", &buf, 2u);
            }

            v11 = 1;
          }

          sub_10002D760(&cf);
        }

LABEL_39:
        sub_100004A34(v9);
        return v11;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Could not get parent", &buf, 2u);
    }

    v11 = 0;
    if (v9)
    {
      goto LABEL_39;
    }
  }

  return v11;
}

void sub_1012B292C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, const void *a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  operator delete(v45);
  sub_10098AFA8(&a10);
  sub_10002D760(&a19);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a28);
  sub_100004A34(v44);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B2A3C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1012B2D0C(a1, 3);
    v4 = CSIBOOLAsString(v3);
    v5 = CSIBOOLAsString(*(a1 + 137));
    v6 = CSIBOOLAsString(*(a1 + 138));
    *buf = 136315650;
    *v27 = v4;
    *&v27[8] = 2080;
    *&v27[10] = v5;
    v28 = 2080;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Service Provisioned: %s, CS Registered: %s, PS Registered: %s", buf, 0x20u);
  }

  v7 = *(a1 + 168);
  if (v7 != (a1 + 176))
  {
    do
    {
      v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v7 + 8));
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        MCCAndMNC::getMcc(buf, (v7 + 5));
        IntValue = MCC::getIntValue(buf);
        MCCAndMNC::getMnc(v18, (v7 + 5));
        IntegerWidth = MNC::getIntegerWidth(v18);
        MCCAndMNC::getMnc(v16, (v7 + 5));
        v11 = MCC::getIntValue(v16);
        *v20 = 67109632;
        v21 = IntValue;
        v22 = 1024;
        v23 = IntegerWidth;
        v24 = 1024;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I MCC: %03d, MNC: %0.*d", v20, 0x14u);
        if (v17 < 0)
        {
          operator delete(v16[1]);
        }

        if (v19 < 0)
        {
          operator delete(v18[1]);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(*&v27[4]);
        }
      }

      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (a1 + 176));
  }

  return (*(*a1 + 72))(a1);
}

void sub_1012B2CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B2D0C(uint64_t a1, uint64_t a2)
{
  subscriber::makeSimSlotRange();
  v3 = v9;
  if (v9 == v10)
  {
    return 0;
  }

  do
  {
    if (v11(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v10);
  if (v3 == v10)
  {
    return 0;
  }

  v4 = (a1 + 152);
  while (1)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = *v3;
      v7 = v4;
      do
      {
        if (*(v5 + 28) >= v6)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 28) < v6));
      }

      while (v5);
      if (v7 != v4 && v6 >= *(v7 + 7) && (v7[4] & 1) != 0)
      {
        break;
      }
    }

    do
    {
      ++v3;
    }

    while (v3 != v10 && (v11(*v3) & 1) == 0);
    if (v3 == v10)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1012B2DFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  MCCAndMNC::MCCAndMNC();
  sub_1012B2E7C(a1 + 168, &v10, v5);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_1012B2E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002FECBC(va);
  _Unwind_Resume(a1);
}

void *sub_1012B2E7C(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *a2;
    v8 = a1 + 8;
    do
    {
      if (*(v6 + 32) >= v7)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v7));
    }

    while (v6);
    if (v8 != v5 && v7 >= *(v8 + 32))
    {
      MCC::operator=();
      MCC::operator=();
      return v8;
    }

    v5 = v8;
  }

  return sub_1012B3948(a1, v5, a2, a2, a3);
}

void *sub_1012B2F1C(uint64_t a1, int a2)
{
  v4 = a2;
  result = sub_1012B3AAC(a1 + 168, &v4);
  if (!*(a1 + 184))
  {
    v5 = v4;
    v6 = &v5;
    result = sub_100051AD8(a1 + 144, &v5, &unk_101802C98, &v6);
    *(result + 32) = 0;
    *(a1 + 137) = 0;
    *(a1 + 192) = 0;
  }

  return result;
}

uint64_t sub_1012B2FB8(uint64_t a1)
{
  *a1 = off_101F26A60;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1012B3014(uint64_t a1)
{
  *a1 = off_101F26A60;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_1012B3144(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101F26A60;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  v6 = *(v3 + 6);
  *(a2 + 40) = *(v3 + 5);
  *(a2 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012B31D0(void *a1)
{
  sub_1002C8840(a1 + 8);

  operator delete(a1);
}

void sub_1012B320C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_57;
  }

  v6 = a1[1];
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_57;
  }

  v8 = a1[5];
  sub_100004A34(v7);
  if (!v8)
  {
    goto LABEL_57;
  }

  v9 = *(v6 + 80);
  if (!v9)
  {
    v10 = 0;
    goto LABEL_27;
  }

  v10 = std::__shared_weak_count::lock(v9);
  if (!v10 || (v11 = *(v6 + 72)) == 0)
  {
LABEL_27:
    v23 = *(v6 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#N Could not get strong ref", buf, 2u);
    }

    goto LABEL_55;
  }

  v12 = *(v6 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(v6 + 112);
    (*(*v4 + 64))(object, v4);
    if (v56 >= 0)
    {
      v14 = object;
    }

    else
    {
      v14 = object[0];
    }

    v48 = v14;
    v47 = (*(*v4 + 16))(v4);
    (*(*v4 + 16))(v4);
    ctu::Http::asString();
    if (v54 >= 0)
    {
      v15 = &v53;
    }

    else
    {
      v15 = v53;
    }

    v46 = v15;
    v45 = (*(*v4 + 24))(v4);
    v16 = v13;
    v44 = v11;
    v17 = (*(*v4 + 24))(v4);
    ctu::Http::asString(v17, v18);
    v19 = v52;
    v20 = v51;
    (*(*v4 + 48))(__p, v4);
    v21 = &v51;
    if (v19 < 0)
    {
      v21 = v20;
    }

    v22 = __p;
    if (v50 < 0)
    {
      v22 = __p[0];
    }

    *buf = 136316674;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v48;
    *&buf[22] = 1024;
    LODWORD(v58) = v47;
    WORD2(v58) = 2080;
    *(&v58 + 6) = v46;
    HIWORD(v58) = 1024;
    v59 = v45;
    *v60 = 2080;
    *&v60[2] = v21;
    v61 = 2080;
    v62 = v22;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s data HTTP response: '%s', Result: %d (%s), Status: %d (%s), Response: '%s'", buf, 0x40u);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v44;
    if (v52 < 0)
    {
      operator delete(v51);
    }

    if (v54 < 0)
    {
      operator delete(v53);
    }

    if (v56 < 0)
    {
      operator delete(object[0]);
    }
  }

  else if (!v4)
  {
    v28 = *(v6 + 192) + 1;
    *(v6 + 192) = v28;
    v29 = -1;
    goto LABEL_40;
  }

  if ((*(*v4 + 16))(v4) == 1 && (*(*v4 + 24))(v4) == 200)
  {
    v26 = a1[2];
    v25 = (a1 + 2);
    v24 = v26;
    if (v25[23] >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = v24;
    }

    object[0] = xpc_string_create(v27);
    if (!object[0])
    {
      object[0] = xpc_null_create();
    }

    (*(*v6 + 64))(v6, object);
    xpc_release(object[0]);
    object[0] = 0;
    sub_100DA1474(v6);
    goto LABEL_42;
  }

  v28 = *(v6 + 192) + 1;
  *(v6 + 192) = v28;
  v29 = (*(*v4 + 24))(v4);
LABEL_40:
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_100DA17E8;
  *&v58 = &unk_101ED82F8;
  *(&v58 + 1) = v6;
  v59 = v28;
  *v60 = v29;
  sub_100DA14E8(0x800E9, buf);
  v30 = *(v6 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(v6 + 112);
    v32 = *(v6 + 192);
    *buf = 136315394;
    *&buf[4] = v31;
    *&buf[12] = 1024;
    *&buf[14] = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s request to the server failed, current failure count: %d", buf, 0x12u);
  }

LABEL_42:
  ServiceMap = Registry::getServiceMap(*(v6 + 56));
  v34 = ServiceMap;
  if (v35 < 0)
  {
    v36 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v37 = 5381;
    do
    {
      v35 = v37;
      v38 = *v36++;
      v37 = (33 * v37) ^ v38;
    }

    while (v38);
  }

  std::mutex::lock(ServiceMap);
  *buf = v35;
  v39 = sub_100009510(&v34[1].__m_.__sig, buf);
  if (!v39)
  {
    v41 = 0;
    goto LABEL_49;
  }

  v41 = v39[3];
  v40 = v39[4];
  if (!v40)
  {
LABEL_49:
    std::mutex::unlock(v34);
    v40 = 0;
    v42 = 1;
    goto LABEL_50;
  }

  atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v34);
  atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v40);
  v42 = 0;
LABEL_50:
  *(v6 + 196) = (*(*v41 + 88))(v41);
  if ((v42 & 1) == 0)
  {
    sub_100004A34(v40);
  }

  *(v6 + 136) = 0;
  v43 = *(v6 + 128);
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  if (v43)
  {
    sub_100004A34(v43);
  }

  (*(*v11 + 16))(v11, "Checking for any pending events");
LABEL_55:
  if (v10)
  {
    sub_100004A34(v10);
  }

LABEL_57:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1012B383C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, xpc_object_t object, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B38FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012B3948(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  v5 = *sub_10002E2F4(a1, a2, &v11, &v10, a3);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1012B39F8();
  }

  return v5;
}

void sub_1012B3A80(_Unwind_Exception *a1)
{
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  sub_100045EDC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B3AAC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  sub_1000237E4(v4 + 32);
  operator delete(v4);
  return 1;
}

void RegistrationEventHandler::create(void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_1012B3C40(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
    if (!v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  dispatch_release(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

void sub_1012B3C80(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v65, *(a1 + 48));
  v2 = a1 + 64;
  ctu::RestModule::connect();
  if (v66)
  {
    sub_100004A34(v66);
  }

  v3 = (a1 + 80);
  v67 = off_101F26D38;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 80))
  {
    v4 = *(a1 + 104);
    if (v4 == v3)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F26D38;
      v69 = 0;
      ((*v4)[3])(v4, &v67);
      (*(**(a1 + 104) + 32))(*(a1 + 104));
      *(a1 + 104) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 80);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 80) = off_101F26D38;
      *(a1 + 88) = v2;
      v69 = v4;
    }

    *(a1 + 104) = v3;
  }

  sub_1012B9F78(&v67);
  v5 = *(a1 + 104);
  if (v5)
  {
    v5 = (*(*v5 + 48))(v5, a1 + 112);
  }

  if (capabilities::ct::supportsGemini(v5))
  {
    v67 = off_101F26DC8;
    v68 = (a1 + 64);
    v69 = &v67;
    sub_1012BA8A4(&v67, (a1 + 1032));
    sub_1012B989C(&v67);
    v6 = *(a1 + 1056);
    if (v6)
    {
      (*(*v6 + 48))(v6, a1 + 1064);
    }
  }

  v67 = off_101F26E58;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_1012BA8A4(&v67, (a1 + 192));
  sub_1012B989C(&v67);
  v7 = *(a1 + 216);
  if (v7)
  {
    (*(*v7 + 48))(v7, a1 + 224);
  }

  v67 = off_101F26ED8;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_1012BAEB0(&v67, (a1 + 1872));
  sub_1012B9E78(&v67);
  v8 = *(a1 + 1896);
  if (v8)
  {
    v8 = (*(*v8 + 48))(v8, a1 + 1904);
  }

  if (capabilities::ct::supportsGemini(v8))
  {
    v67 = off_101F26F68;
    v68 = (a1 + 64);
    v69 = &v67;
    sub_1012BAEB0(&v67, (a1 + 1912));
    sub_1012B9E78(&v67);
    v9 = *(a1 + 1936);
    if (v9)
    {
      (*(*v9 + 48))(v9, a1 + 1944);
    }
  }

  v10 = (a1 + 136);
  v67 = off_101F26FE8;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 136))
  {
    v11 = *(a1 + 160);
    if (v11 == v10)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F26FE8;
      v69 = 0;
      ((*v11)[3])(v11, &v67);
      (*(**(a1 + 160) + 32))(*(a1 + 160));
      *(a1 + 160) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 136);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 136) = off_101F26FE8;
      *(a1 + 144) = v2;
      v69 = v11;
    }

    *(a1 + 160) = v10;
  }

  sub_1012B9EF8(&v67);
  v12 = *(a1 + 160);
  if (v12)
  {
    (*(*v12 + 48))(v12, a1 + 168);
  }

  sub_1012B5800((a1 + 1952), a1 + 64);
  v13 = (a1 + 2000);
  v67 = off_101F27108;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2000))
  {
    v14 = *(a1 + 2024);
    if (v14 == v13)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27108;
      v69 = 0;
      ((*v14)[3])(v14, &v67);
      (*(**(a1 + 2024) + 32))(*(a1 + 2024));
      *(a1 + 2024) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2000);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2000) = off_101F27108;
      *(a1 + 2008) = v2;
      v69 = v14;
    }

    *(a1 + 2024) = v13;
  }

  sub_1012B9D78(&v67);
  v15 = *(a1 + 2024);
  if (v15)
  {
    (*(*v15 + 48))(v15, a1 + 2032);
  }

  v67 = off_101F27198;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_10031E078(&v67, (a1 + 2056));
  sub_10031D330(&v67);
  v16 = *(a1 + 2080);
  if (v16)
  {
    (*(*v16 + 48))(v16, a1 + 2088);
  }

  v67 = off_101F27218;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_10031E078(&v67, (a1 + 2112));
  sub_10031D330(&v67);
  v17 = *(a1 + 2136);
  if (v17)
  {
    (*(*v17 + 48))(v17, a1 + 2144);
  }

  v67 = off_101F27298;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_10031E078(&v67, (a1 + 2168));
  sub_10031D330(&v67);
  v18 = *(a1 + 2192);
  if (v18)
  {
    (*(*v18 + 48))(v18, a1 + 2200);
  }

  v67 = off_101F27318;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_10031E078(&v67, (a1 + 2224));
  sub_10031D330(&v67);
  v19 = *(a1 + 2248);
  if (v19)
  {
    (*(*v19 + 48))(v19, a1 + 2256);
  }

  v20 = (a1 + 2280);
  v67 = off_101F27398;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2280))
  {
    v21 = *(a1 + 2304);
    if (v21 == v20)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27398;
      v69 = 0;
      ((*v21)[3])(v21, &v67);
      (*(**(a1 + 2304) + 32))(*(a1 + 2304));
      *(a1 + 2304) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2280);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2280) = off_101F27398;
      *(a1 + 2288) = v2;
      v69 = v21;
    }

    *(a1 + 2304) = v20;
  }

  sub_1012B9CF8(&v67);
  v22 = *(a1 + 2304);
  if (v22)
  {
    (*(*v22 + 48))(v22, a1 + 2312);
  }

  v23 = (a1 + 2336);
  v67 = off_101F27428;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2336))
  {
    v24 = *(a1 + 2360);
    if (v24 == v23)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27428;
      v69 = 0;
      ((*v24)[3])(v24, &v67);
      (*(**(a1 + 2360) + 32))(*(a1 + 2360));
      *(a1 + 2360) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2336);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2336) = off_101F27428;
      *(a1 + 2344) = v2;
      v69 = v24;
    }

    *(a1 + 2360) = v23;
  }

  sub_1012B9C78(&v67);
  v25 = *(a1 + 2360);
  if (v25)
  {
    (*(*v25 + 48))(v25, a1 + 2368);
  }

  v26 = (a1 + 2392);
  v67 = off_101F274B8;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2392))
  {
    v27 = *(a1 + 2416);
    if (v27 == v26)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F274B8;
      v69 = 0;
      ((*v27)[3])(v27, &v67);
      (*(**(a1 + 2416) + 32))(*(a1 + 2416));
      *(a1 + 2416) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2392);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2392) = off_101F274B8;
      *(a1 + 2400) = v2;
      v69 = v27;
    }

    *(a1 + 2416) = v26;
  }

  sub_1012B9BF8(&v67);
  v28 = *(a1 + 2416);
  if (v28)
  {
    (*(*v28 + 48))(v28, a1 + 2424);
  }

  v29 = (a1 + 2448);
  v67 = off_101F27548;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2448))
  {
    v30 = *(a1 + 2472);
    if (v30 == v29)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27548;
      v69 = 0;
      ((*v30)[3])(v30, &v67);
      (*(**(a1 + 2472) + 32))(*(a1 + 2472));
      *(a1 + 2472) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2448);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2448) = off_101F27548;
      *(a1 + 2456) = v2;
      v69 = v30;
    }

    *(a1 + 2472) = v29;
  }

  sub_1012B9B78(&v67);
  v31 = *(a1 + 2472);
  if (v31)
  {
    (*(*v31 + 48))(v31, a1 + 2480);
  }

  v67 = off_101F275D8;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_1012BD4B8(&v67, (a1 + 2504));
  sub_1012B9AF8(&v67);
  v32 = *(a1 + 2528);
  if (v32)
  {
    (*(*v32 + 48))(v32, a1 + 2536);
  }

  v67 = off_101F27668;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_1012BD4B8(&v67, (a1 + 2560));
  sub_1012B9AF8(&v67);
  v33 = *(a1 + 2584);
  if (v33)
  {
    (*(*v33 + 48))(v33, a1 + 2592);
  }

  v34 = (a1 + 2616);
  v67 = off_101F276E8;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2616))
  {
    v35 = *(a1 + 2640);
    if (v35 == v34)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F276E8;
      v69 = 0;
      ((*v35)[3])(v35, &v67);
      (*(**(a1 + 2640) + 32))(*(a1 + 2640));
      *(a1 + 2640) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2616);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2616) = off_101F276E8;
      *(a1 + 2624) = v2;
      v69 = v35;
    }

    *(a1 + 2640) = v34;
  }

  sub_1012B9A78(&v67);
  v36 = *(a1 + 2640);
  if (v36)
  {
    (*(*v36 + 48))(v36, a1 + 2648);
  }

  v37 = (a1 + 2672);
  v67 = off_101F27778;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2672))
  {
    v38 = *(a1 + 2696);
    if (v38 == v37)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27778;
      v69 = 0;
      ((*v38)[3])(v38, &v67);
      (*(**(a1 + 2696) + 32))(*(a1 + 2696));
      *(a1 + 2696) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2672);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2672) = off_101F27778;
      *(a1 + 2680) = v2;
      v69 = v38;
    }

    *(a1 + 2696) = v37;
  }

  sub_1012B99F8(&v67);
  v39 = *(a1 + 2696);
  if (v39)
  {
    (*(*v39 + 48))(v39, a1 + 2704);
  }

  v67 = off_101F27808;
  v68 = (a1 + 64);
  v69 = &v67;
  sub_100B7CD88(&v67, (a1 + 2728));
  sub_100B76B60(&v67);
  v40 = *(a1 + 2752);
  if (v40)
  {
    (*(*v40 + 48))(v40, a1 + 2760);
  }

  v41 = (a1 + 2784);
  v67 = off_101F27888;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2784))
  {
    v42 = *(a1 + 2808);
    if (v42 == v41)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27888;
      v69 = 0;
      ((*v42)[3])(v42, &v67);
      (*(**(a1 + 2808) + 32))(*(a1 + 2808));
      *(a1 + 2808) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2784);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2784) = off_101F27888;
      *(a1 + 2792) = v2;
      v69 = v42;
    }

    *(a1 + 2808) = v41;
  }

  sub_1012B991C(&v67);
  v43 = *(a1 + 2808);
  if (v43)
  {
    (*(*v43 + 48))(v43, a1 + 2816);
  }

  v44 = (a1 + 2840);
  v67 = off_101F27918;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2840))
  {
    v45 = *(a1 + 2864);
    if (v45 == v44)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F27918;
      v69 = 0;
      ((*v45)[3])(v45, &v67);
      (*(**(a1 + 2864) + 32))(*(a1 + 2864));
      *(a1 + 2864) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2840);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2840) = off_101F27918;
      *(a1 + 2848) = v2;
      v69 = v45;
    }

    *(a1 + 2864) = v44;
  }

  sub_1012BA078(&v67);
  v46 = *(a1 + 2864);
  if (v46)
  {
    (*(*v46 + 48))(v46, a1 + 2872);
  }

  v47 = (a1 + 2896);
  v67 = off_101F279A8;
  v68 = (a1 + 64);
  v69 = &v67;
  if (&v67 != (a1 + 2896))
  {
    v48 = *(a1 + 2920);
    if (v48 == v47)
    {
      v73 = a1 + 64;
      v74 = 0;
      v72 = off_101F279A8;
      v69 = 0;
      ((*v48)[3])(v48, &v67);
      (*(**(a1 + 2920) + 32))(*(a1 + 2920));
      *(a1 + 2920) = 0;
      v69 = &v67;
      (v72[3])(&v72, a1 + 2896);
      (v72[4])(&v72);
    }

    else
    {
      *(a1 + 2896) = off_101F279A8;
      *(a1 + 2904) = v2;
      v69 = v48;
    }

    *(a1 + 2920) = v47;
  }

  sub_1012B9FF8(&v67);
  v49 = *(a1 + 2920);
  if (v49)
  {
    (*(*v49 + 48))(v49, a1 + 2928);
  }

  (*(*a1 + 104))(a1, 3, 0);
  (*(*a1 + 40))(a1, 3, 0, 0);
  (*(*a1 + 48))(a1, 3, 0);
  (*(*a1 + 56))(a1, 3, 0xFFFFFFFFLL, 0xFFFFFFFFLL);
  MCCAndMNC::MCCAndMNC(&v67);
  (*(*a1 + 80))(a1, 3, &v67, 11, 0, 0);
  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68);
  }

  (*(*a1 + 128))(a1, 3, 0);
  (*(*a1 + 136))(a1, 3, 0);
  (*(*a1 + 64))(a1, 3, 0);
  (*(*a1 + 72))(a1, 3, 11);
  MCC::MCC(v62);
  MNC::MNC(v59);
  (*(*a1 + 264))(a1, 3, v62, v59);
  if (v61 < 0)
  {
    operator delete(__p);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  MCC::MCC(v56);
  (*(*a1 + 280))(a1, 3, v56);
  if (v58 < 0)
  {
    operator delete(v57);
  }

  MNC::MNC(v53);
  (*(*a1 + 288))(a1, 3, v53);
  if (v55 < 0)
  {
    operator delete(v54);
  }

  (*(*a1 + 256))(a1, 3, 0);
  (*(*a1 + 160))(a1, 3, 0, 11, 0, 0);
  (*(*a1 + 168))(a1, 3, 0, 11);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  (*(*a1 + 96))(a1, 3, &v50, 0);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_1012B5728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B5800(void *a1, uint64_t a2)
{
  v4[0] = off_101F27078;
  v4[1] = a2;
  v4[3] = v4;
  sub_1012BB93C(v4, a1);
  sub_1012B9DF8(v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t RegistrationEventHandler::RegistrationEventHandler(uint64_t a1, void *a2, NSObject **a3, void *a4)
{
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v55, kCtLoggingSystemName, "reg.evt");
  ctu::OsLogLogger::OsLogLogger(v54, &v55);
  ctu::OsLogLogger::OsLogLogger(v8, v54);
  ctu::OsLogLogger::~OsLogLogger(v54);
  ctu::OsLogContext::~OsLogContext(&v55);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F26B18;
  *(a1 + 32) = *a4;
  v9 = a4[1];
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *a2;
  v10 = a2[1];
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "Registration Event Handler");
  v51 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::RestModule::RestModule();
  if (v51)
  {
    dispatch_release(v51);
  }

  if (v53 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 216) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 224));
  *(a1 + 1056) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 1064));
  *(a1 + 1896) = 0;
  *(a1 + 1903) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 1943) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 1976) = 0u;
  *(a1 + 2024) = 0;
  sub_100AE9114((a1 + 2032), &rest::kDefaultCipherDomains);
  *(a1 + 2080) = 0;
  sub_1000517E4(a1 + 2088, &rest::kDefaultNetworkScanState);
  *(a1 + 2136) = 0;
  *(a1 + 2152) = 0u;
  *(a1 + 2144) = a1 + 2152;
  *(a1 + 2192) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2200) = a1 + 2208;
  *(a1 + 2248) = 0;
  *(a1 + 2264) = 0u;
  *(a1 + 2256) = a1 + 2264;
  *(a1 + 2304) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2312) = a1 + 2320;
  *(a1 + 2360) = 0;
  *(a1 + 2376) = 0u;
  *(a1 + 2368) = a1 + 2376;
  *(a1 + 2416) = 0;
  *(a1 + 2432) = 0u;
  *(a1 + 2424) = a1 + 2432;
  *(a1 + 2472) = 0;
  *(a1 + 2488) = 0u;
  *(a1 + 2480) = a1 + 2488;
  *(a1 + 2528) = 0;
  sub_100051598((a1 + 2536), &rest::kDefaultLastVisiblePlmns);
  *(a1 + 2584) = 0;
  *(a1 + 2600) = 0u;
  *(a1 + 2592) = a1 + 2600;
  *(a1 + 2640) = 0;
  v11 = (a1 + 2656);
  *(a1 + 2656) = 0u;
  *(a1 + 2648) = a1 + 2656;
  v12 = rest::kDefaultLastVisibleMccs;
  if (rest::kDefaultLastVisibleMccs != (&rest::kDefaultLastVisibleMccs + 8))
  {
    do
    {
      v13 = *v11;
      v14 = a1 + 2656;
      if (*(a1 + 2648) == v11)
      {
        goto LABEL_18;
      }

      v15 = *v11;
      v16 = a1 + 2656;
      if (v13)
      {
        do
        {
          v14 = v15;
          v15 = *(v15 + 8);
        }

        while (v15);
      }

      else
      {
        do
        {
          v14 = *(v16 + 16);
          v17 = *v14 == v16;
          v16 = v14;
        }

        while (v17);
      }

      v18 = *(v12 + 8);
      if (*(v14 + 32) < v18)
      {
LABEL_18:
        if (v13)
        {
          v19 = (v14 + 8);
        }

        else
        {
          v19 = (a1 + 2656);
        }

        if (!*v19)
        {
LABEL_29:
          operator new();
        }
      }

      else
      {
        if (!v13)
        {
          goto LABEL_29;
        }

        while (1)
        {
          while (1)
          {
            v20 = v13;
            v21 = *(v13 + 32);
            if (v21 <= v18)
            {
              break;
            }

            v13 = *v20;
            if (!*v20)
            {
              goto LABEL_29;
            }
          }

          if (v21 >= v18)
          {
            break;
          }

          v13 = v20[1];
          if (!v13)
          {
            goto LABEL_29;
          }
        }
      }

      v22 = v12[1];
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
          v23 = v12[2];
          v17 = *v23 == v12;
          v12 = v23;
        }

        while (!v17);
      }

      v12 = v23;
    }

    while (v23 != (&rest::kDefaultLastVisibleMccs + 8));
  }

  *(a1 + 2696) = 0;
  v24 = (a1 + 2712);
  *(a1 + 2712) = 0u;
  *(a1 + 2704) = a1 + 2712;
  v25 = rest::kDefaultLastVisibleMncs;
  if (rest::kDefaultLastVisibleMncs != (&rest::kDefaultLastVisibleMncs + 8))
  {
    v26 = 0;
    v27 = (a1 + 2712);
    while (1)
    {
      v28 = a1 + 2712;
      if (v27 == v24)
      {
        goto LABEL_44;
      }

      v29 = v26;
      v30 = a1 + 2712;
      if (v26)
      {
        do
        {
          v28 = v29;
          v29 = *(v29 + 8);
        }

        while (v29);
      }

      else
      {
        do
        {
          v28 = *(v30 + 16);
          v17 = *v28 == v30;
          v30 = v28;
        }

        while (v17);
      }

      v31 = *(v25 + 8);
      if (*(v28 + 32) < v31)
      {
LABEL_44:
        if (v26)
        {
          v32 = (v28 + 8);
        }

        else
        {
          v32 = (a1 + 2712);
        }

        if (!*v32)
        {
LABEL_55:
          operator new();
        }
      }

      else
      {
        if (!v26)
        {
          goto LABEL_55;
        }

        while (1)
        {
          while (1)
          {
            v33 = v26;
            v34 = *(v26 + 32);
            if (v34 <= v31)
            {
              break;
            }

            v26 = *v33;
            if (!*v33)
            {
              goto LABEL_55;
            }
          }

          if (v34 >= v31)
          {
            break;
          }

          v26 = v33[1];
          if (!v26)
          {
            goto LABEL_55;
          }
        }
      }

      v35 = v25[1];
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
          v36 = v25[2];
          v17 = *v36 == v25;
          v25 = v36;
        }

        while (!v17);
      }

      if (v36 == (&rest::kDefaultLastVisibleMncs + 8))
      {
        break;
      }

      v26 = *v24;
      v27 = *(a1 + 2704);
      v25 = v36;
    }
  }

  *(a1 + 2752) = 0;
  sub_100903918((a1 + 2760), &rest::kDefaultTrackingAreaUpdateTimers);
  *(a1 + 2808) = 0;
  v37 = (a1 + 2824);
  *(a1 + 2824) = 0u;
  *(a1 + 2816) = a1 + 2824;
  v38 = rest::kDefaultNetworkRejects;
  if (rest::kDefaultNetworkRejects != (&rest::kDefaultNetworkRejects + 8))
  {
    v39 = 0;
    v40 = (a1 + 2824);
    while (1)
    {
      v41 = *(v38 + 7);
      v42 = a1 + 2824;
      if (v40 == v37)
      {
        goto LABEL_71;
      }

      v43 = v39;
      v44 = a1 + 2824;
      if (v39)
      {
        do
        {
          v42 = v43;
          v43 = *(v43 + 8);
        }

        while (v43);
      }

      else
      {
        do
        {
          v42 = *(v44 + 16);
          v17 = *v42 == v44;
          v44 = v42;
        }

        while (v17);
      }

      if (*(v42 + 28) < v41)
      {
LABEL_71:
        if (v39)
        {
          v45 = (v42 + 8);
        }

        else
        {
          v45 = (a1 + 2824);
        }

        if (!*v45)
        {
LABEL_82:
          operator new();
        }
      }

      else
      {
        if (!v39)
        {
          goto LABEL_82;
        }

        while (1)
        {
          while (1)
          {
            v46 = v39;
            v47 = *(v39 + 28);
            if (v47 <= v41)
            {
              break;
            }

            v39 = *v46;
            if (!*v46)
            {
              goto LABEL_82;
            }
          }

          if (v47 >= v41)
          {
            break;
          }

          v39 = v46[1];
          if (!v39)
          {
            goto LABEL_82;
          }
        }
      }

      v48 = v38[1];
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        do
        {
          v49 = v38[2];
          v17 = *v49 == v38;
          v38 = v49;
        }

        while (!v17);
      }

      if (v49 == (&rest::kDefaultNetworkRejects + 8))
      {
        break;
      }

      v39 = *v37;
      v40 = *(a1 + 2816);
      v38 = v49;
    }
  }

  *(a1 + 2864) = 0;
  sub_100B776E0((a1 + 2872), &rest::kDefaultImsPreferenceStates);
  *(a1 + 2920) = 0;
  *(a1 + 2936) = 0u;
  *(a1 + 2928) = a1 + 2936;
  return a1;
}

void sub_1012B5FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ctu::OsLogLogger *a10, uint64_t a11, dispatch_object_t object, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21)
{
  sub_1012BA078(v21 + 2840);
  sub_1012B6220(v21 + 2784);
  sub_100B4956C(v21 + 2728);
  sub_1012B999C(*v22);
  sub_1012B99F8(v21 + 2672);
  sub_1012B6260(v21 + 2616);
  sub_1012B62A0(v21 + 2560);
  sub_1012B62A0(v21 + 2504);
  sub_1012B62E0(v21 + 2448);
  sub_1012B6320(v21 + 2392);
  sub_1012B6360(v21 + 2336);
  sub_1012B63A0(v21 + 2280);
  sub_10083C218(v21 + 2224);
  sub_10083C218(v21 + 2168);
  sub_10083C218(v21 + 2112);
  sub_10083C218(v21 + 2056);
  sub_1012B63E0(v21 + 2000);
  sub_1012B9DF8(v21 + 1952);
  sub_1012B9E78(v21 + 1912);
  sub_1012B9E78(v21 + 1872);
  sub_10004543C(v21 + 1064);
  sub_1012B989C(v21 + 1032);
  sub_10004543C(a11 + 104);
  sub_1012B989C(a11 + 72);
  sub_1012B6420(a11 + 16);
  sub_1012B6460(a11 - 40);
  v24 = *(v21 + 9);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v21 + 7);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v21 + 5);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v21 + 3);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  ctu::OsLogLogger::~OsLogLogger(a10);
  RegistrationEventInterface::~RegistrationEventInterface(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6220(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B991C(a1);
}

uint64_t sub_1012B6260(uint64_t a1)
{
  sub_100045B14(a1 + 32, *(a1 + 40));

  return sub_1012B9A78(a1);
}

uint64_t sub_1012B62A0(uint64_t a1)
{
  sub_10004C4EC(a1 + 32, *(a1 + 40));

  return sub_1012B9AF8(a1);
}

uint64_t sub_1012B62E0(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9B78(a1);
}

uint64_t sub_1012B6320(uint64_t a1)
{
  sub_100009970(a1 + 32, *(a1 + 40));

  return sub_1012B9BF8(a1);
}

uint64_t sub_1012B6360(uint64_t a1)
{
  sub_10004C4EC(a1 + 32, *(a1 + 40));

  return sub_1012B9C78(a1);
}

uint64_t sub_1012B63A0(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9CF8(a1);
}

uint64_t sub_1012B63E0(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9D78(a1);
}

uint64_t sub_1012B6420(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9EF8(a1);
}

uint64_t sub_1012B6460(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012B9F78(a1);
}

void sub_1012B64A0(uint64_t a1)
{
  *a1 = off_101F26B18;
  sub_10006DCAC(a1 + 2928, *(a1 + 2936));
  sub_1012B9FF8(a1 + 2896);
  sub_10004EC58(a1 + 2872, *(a1 + 2880));
  sub_1012BA078(a1 + 2840);
  sub_10006DCAC(a1 + 2816, *(a1 + 2824));
  sub_1012B991C(a1 + 2784);
  sub_10006DCAC(a1 + 2760, *(a1 + 2768));
  sub_100B76B60(a1 + 2728);
  sub_1012B999C(*(a1 + 2712));
  sub_1012B99F8(a1 + 2672);
  sub_100045B14(a1 + 2648, *(a1 + 2656));
  sub_1012B9A78(a1 + 2616);
  sub_10004C4EC(a1 + 2592, *(a1 + 2600));
  sub_1012B9AF8(a1 + 2560);
  sub_10004C4EC(a1 + 2536, *(a1 + 2544));
  sub_1012B9AF8(a1 + 2504);
  sub_10006DCAC(a1 + 2480, *(a1 + 2488));
  sub_1012B9B78(a1 + 2448);
  sub_100009970(a1 + 2424, *(a1 + 2432));
  sub_1012B9BF8(a1 + 2392);
  sub_10004C4EC(a1 + 2368, *(a1 + 2376));
  sub_1012B9C78(a1 + 2336);
  sub_10006DCAC(a1 + 2312, *(a1 + 2320));
  sub_1012B9CF8(a1 + 2280);
  sub_10006DCAC(a1 + 2256, *(a1 + 2264));
  sub_10031D330(a1 + 2224);
  sub_10006DCAC(a1 + 2200, *(a1 + 2208));
  sub_10031D330(a1 + 2168);
  sub_10006DCAC(a1 + 2144, *(a1 + 2152));
  sub_10031D330(a1 + 2112);
  sub_10006DCAC(a1 + 2088, *(a1 + 2096));
  sub_10031D330(a1 + 2056);
  sub_10006DCAC(a1 + 2032, *(a1 + 2040));
  sub_1012B9D78(a1 + 2000);
  sub_1012B9DF8(a1 + 1952);
  sub_1012B9E78(a1 + 1912);
  sub_1012B9E78(a1 + 1872);
  sub_10004543C(a1 + 1064);
  sub_1012B989C(a1 + 1032);
  sub_10004543C(a1 + 224);
  sub_1012B989C(a1 + 192);
  sub_10006DCAC(a1 + 168, *(a1 + 176));
  sub_1012B9EF8(a1 + 136);
  sub_10006DCAC(a1 + 112, *(a1 + 120));
  sub_1012B9F78(a1 + 80);
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  RegistrationEventInterface::~RegistrationEventInterface(a1);
}

void sub_1012B66DC(uint64_t a1)
{
  sub_1012B64A0(a1);

  operator delete();
}

uint64_t sub_1012B6714(uint64_t a1, int a2, uint64_t a3)
{
  (*(**(a1 + 32) + 80))(*(a1 + 32), a3);
  sub_100083E9C(event::registration::emergencyCallbackModeChanged, a3);
  v7[0] = 1;
  v7[1] = a1 + 1952;
  *(a1 + 1984) = a2;
  *(a1 + 1988) = 1;
  *(a1 + 1992) = a3;
  return sub_1012BE64C(v7);
}

uint64_t sub_1012B67A8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v19 = a2;
  v17 = 1;
  v18 = a1 + 2112;
  v15 = 1;
  v16 = a1 + 2168;
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v6 = v12;
    v7 = v13;
    if (v12 != v13)
    {
      v8 = v14;
      do
      {
        if (v14(*v6))
        {
          break;
        }

        ++v6;
      }

      while (v6 != v13);
      v9 = v13;
      while (v6 != v9)
      {
        v11 = *v6;
        v20 = &v11;
        *(sub_100051AD8(v18 + 32, &v11, &unk_101802C98, &v20) + 32) = a3;
        v20 = &v11;
        *(sub_100051AD8(v16 + 32, &v11, &unk_101802C98, &v20) + 32) = a4;
        do
        {
          ++v6;
        }

        while (v6 != v7 && (v8(*v6) & 1) == 0);
      }
    }
  }

  else
  {
    v12 = &v19;
    *(sub_100051AD8(a1 + 2144, &v19, &unk_101802C98, &v12) + 32) = a3;
    v12 = &v19;
    *(sub_100051AD8(v16 + 32, &v19, &unk_101802C98, &v12) + 32) = a4;
  }

  sub_1012BE71C(&v15);
  return sub_1012BE6B4(&v17);
}

void sub_1012B692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_1012BE71C(va);
  sub_1012BE6B4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6958(uint64_t a1, uint64_t a2, int a3)
{
  v17 = a2;
  v15 = 1;
  v16 = a1 + 2224;
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v4 = v12;
    v5 = v13;
    if (v12 != v13)
    {
      v6 = v14;
      do
      {
        if (v14(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v13);
      v7 = v13;
      while (v4 != v7)
      {
        v11 = *v4;
        v18 = &v11;
        *(sub_100051AD8(v16 + 32, &v11, &unk_101802C98, &v18) + 32) = a3;
        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
      }
    }
  }

  else
  {
    v12 = &v17;
    *(sub_100051AD8(a1 + 2256, &v17, &unk_101802C98, &v12) + 32) = a3;
    if (v17 == 1)
    {
      v8 = &event::registration::dataNotAttached;
      if (a3)
      {
        v8 = &event::registration::dataAttached;
      }

      v9 = sub_100081A98(v8 + 1);
      sub_100081ADC(v9);
    }
  }

  return sub_1012BE784(&v15);
}

void sub_1012B6AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012BE784(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6AD0(uint64_t a1, int a2, int a3, int a4)
{
  v20 = a2;
  v18 = 1;
  v19 = a1 + 2280;
  if (a2 == 1)
  {
    if (a4 <= 0)
    {
      v7 = "SIM Slot_1: Data mode changed to NoData";
    }

    else
    {
      v7 = "SIM Slot_1: Data mode changed";
    }

    goto LABEL_26;
  }

  if (a2 == 2)
  {
    if (a4 <= 0)
    {
      v7 = "SIM Slot_2: Data mode changed to NoData";
    }

    else
    {
      v7 = "SIM Slot_2: Data mode changed";
    }

    goto LABEL_26;
  }

  if (a2 != 3)
  {
    if (a4 <= 0)
    {
      v7 = "SIM Slot_Unknown: Data mode changed to NoData";
    }

    else
    {
      v7 = "SIM Slot_Unknown: Data mode changed";
    }

LABEL_26:
    v21 = _os_activity_create(&_mh_execute_header, v7, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v21, &state);
    os_activity_scope_leave(&state);
    sub_1000C0590(&v21);
    state.opaque[0] = &v20;
    v13 = sub_1010DCFA4(v19 + 32, &v20, &unk_101802C98, &state);
    *(v13 + 8) = a3;
    *(v13 + 9) = a4;
    return sub_1012BE7EC(&v18);
  }

  if (a4 <= 0)
  {
    v6 = "SIM Slot_All: Data mode changed to NoData";
  }

  else
  {
    v6 = "SIM Slot_All: Data mode changed";
  }

  v21 = _os_activity_create(&_mh_execute_header, v6, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v21, &state);
  os_activity_scope_leave(&state);
  sub_1000C0590(&v21);
  subscriber::makeSimSlotRange();
  v8 = state.opaque[0];
  v9 = state.opaque[1];
  if (state.opaque[0] != state.opaque[1])
  {
    v10 = v17;
    do
    {
      if (v10(*v8))
      {
        break;
      }

      ++v8;
    }

    while (v8 != v9);
    v11 = state.opaque[1];
    while (v8 != v11)
    {
      v15 = *v8;
      v21 = &v15;
      v12 = sub_1010DCFA4(v19 + 32, &v15, &unk_101802C98, &v21);
      *(v12 + 8) = a3;
      *(v12 + 9) = a4;
      do
      {
        ++v8;
      }

      while (v8 != v9 && (v10(*v8) & 1) == 0);
    }
  }

  return sub_1012BE7EC(&v18);
}

void sub_1012B6D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012BE7EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6D30(uint64_t a1, int a2, char a3)
{
  v17 = a2;
  v14[0] = 1;
  v15 = 0u;
  v16 = 0;
  v14[1] = a1 + 2056;
  sub_1000517E4(&v15, a1 + 2088);
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v5 = v11;
    v6 = v12;
    if (v11 != v12)
    {
      v7 = v13;
      do
      {
        if (v13(*v5))
        {
          break;
        }

        ++v5;
      }

      while (v5 != v12);
      v8 = v12;
      while (v5 != v8)
      {
        v10 = *v5;
        v18 = &v10;
        *(sub_100051AD8(&v15, &v10, &unk_101802C98, &v18) + 32) = a3;
        do
        {
          ++v5;
        }

        while (v5 != v6 && (v7(*v5) & 1) == 0);
      }
    }
  }

  else
  {
    v11 = &v17;
    *(sub_100051AD8(&v15, &v17, &unk_101802C98, &v11) + 32) = a3;
  }

  return sub_1012BE854(v14);
}

void sub_1012B6E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012BE854(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6EA0(uint64_t a1, uint64_t a2, int a3)
{
  v15 = a2;
  v13 = 1;
  v14 = a1 + 80;
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v4 = v10;
    v5 = v11;
    if (v10 != v11)
    {
      v6 = v12;
      do
      {
        if (v12(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v11);
      v7 = v11;
      if (v4 != v11)
      {
        do
        {
          v9 = *v4;
          v16 = &v9;
          *(sub_10030C46C(v14 + 32, &v9, &unk_101802C98, &v16) + 8) = a3;
          do
          {
            ++v4;
          }

          while (v4 != v5 && (v6(*v4) & 1) == 0);
        }

        while (v4 != v7);
      }
    }
  }

  else
  {
    v10 = &v15;
    *(sub_10030C46C(a1 + 112, &v15, &unk_101802C98, &v10) + 8) = a3;
  }

  return sub_1012BE980(&v13);
}

void sub_1012B6FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012BE980(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B6FE8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, char a6)
{
  v10 = a2;
  v33 = a2;
  v30[0] = 1;
  v31 = 0u;
  v32 = 0;
  v30[1] = a1 + 2336;
  sub_10011D214(&v31, a1 + 2368);
  if (v10 == 3)
  {
    subscriber::makeSimSlotRange();
    v11 = v27;
    v12 = v28;
    if (v27 != v28)
    {
      v13 = v29;
      do
      {
        if (v29(*v11))
        {
          break;
        }

        ++v11;
      }

      while (v11 != v28);
      v14 = v28;
      while (v11 != v14)
      {
        v26 = *v11;
        MCC::MCC(v18, a3);
        MCC::MCC(&v21, (a3 + 32));
        v24 = a4;
        LOBYTE(v25) = a5;
        HIBYTE(v25) = a6;
        v34 = &v26;
        v15 = sub_1012BEB60(&v31, v26, &v34);
        MCC::operator=();
        MCC::operator=();
        *(v15 + 26) = v24;
        *(v15 + 54) = v25;
        if (v23 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        do
        {
          ++v11;
        }

        while (v11 != v12 && (v13(*v11) & 1) == 0);
      }
    }
  }

  else
  {
    MCC::MCC(v18, a3);
    MCC::MCC(&v21, (a3 + 32));
    v24 = a4;
    LOBYTE(v25) = a5;
    HIBYTE(v25) = a6;
    v27 = &v33;
    v16 = sub_1012BEB60(&v31, v10, &v27);
    MCC::operator=();
    MCC::operator=();
    *(v16 + 26) = v24;
    *(v16 + 54) = v25;
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }
  }

  return sub_1012BE9E8(v30);
}

void sub_1012B7218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1012BE9E8(&a26);
  _Unwind_Resume(a1);
}

void sub_1012B726C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    RegisteredNetworkInfo::operator=();
    v6 = a1[132];
    if (!v6)
    {
      return;
    }

    v5 = *(*v6 + 48);
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    RegisteredNetworkInfo::operator=();
    v4 = a1[27];
    if (!v4)
    {
      return;
    }

    v5 = *(*v4 + 48);
LABEL_7:

    v5();
    return;
  }

  v7 = a1[1];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unhandled slot %s for registered network info", &v8, 0xCu);
  }
}

uint64_t sub_1012B73E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20 = 1;
  v21 = a1 + 2840;
  subscriber::makeSimSlotRange();
  v6 = v17;
  v7 = v18;
  if (v17 != v18)
  {
    v8 = v19;
    do
    {
      if (v19(*v6))
      {
        break;
      }

      ++v6;
    }

    while (v6 != v18);
    v9 = v18;
    while (v6 != v9)
    {
      v16 = *v6;
      v13 = 0uLL;
      v14 = 0;
      sub_1003647D4(&v13, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      v15 = a4;
      v22 = &v16;
      v10 = sub_1010DC738(v21 + 32, &v16, &unk_101802C98, &v22);
      v11 = v10[5];
      if (v11)
      {
        v10[6] = v11;
        operator delete(v11);
        v10[5] = 0;
        v10[6] = 0;
        v10[7] = 0;
      }

      *(v10 + 5) = v13;
      v10[7] = v14;
      *(v10 + 16) = v15;
      do
      {
        ++v6;
      }

      while (v6 != v7 && (v8(*v6) & 1) == 0);
    }
  }

  return sub_1012BEC7C(&v20);
}

void sub_1012B7530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1012BEC7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B7568(uint64_t a1, uint64_t a2, int a3)
{
  v15 = a2;
  v13 = 1;
  v14 = a1 + 136;
  if (a2 == 3)
  {
    subscriber::makeSimSlotRange();
    v4 = state.opaque[0];
    v5 = state.opaque[1];
    if (state.opaque[0] != state.opaque[1])
    {
      v6 = v12;
      do
      {
        if (v12(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != state.opaque[1]);
      v7 = state.opaque[1];
      while (v4 != v7)
      {
        v10 = *v4;
        v16 = &v10;
        *(sub_100EB3B10(v14 + 32, v10, &v16) + 8) = a3;
        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
      }
    }

    goto LABEL_17;
  }

  state.opaque[0] = &v15;
  *(sub_100EB3B10(a1 + 168, a2, &state) + 8) = a3;
  switch(v15)
  {
    case 3:
LABEL_17:
      v8 = "SIM Slot_All: Registration status update";
      break;
    case 2:
      if ((a3 & 0xFFFFFFFE) == 4)
      {
        v8 = "SIM Slot_2: Registration status update to Registered";
      }

      else if (a3 == 6)
      {
        v8 = "SIM Slot_2: Registration status update to EmergencyOnly";
      }

      else if ((a3 & 0xFFFFFFFD) == 1)
      {
        v8 = "SIM Slot_2: Registration status update to NotRegistered";
      }

      else
      {
        v8 = "SIM Slot_2: Registration status update";
      }

      break;
    case 1:
      if ((a3 & 0xFFFFFFFE) == 4)
      {
        v8 = "SIM Slot_1: Registration status update to Registered";
      }

      else if (a3 == 6)
      {
        v8 = "SIM Slot_1: Registration status update to EmergencyOnly";
      }

      else if ((a3 & 0xFFFFFFFD) == 1)
      {
        v8 = "SIM Slot_1: Registration status update to NotRegistered";
      }

      else
      {
        v8 = "SIM Slot_1: Registration status update";
      }

      break;
    default:
      v8 = "SIM Slot_Unknown: Registration status update";
      break;
  }

  v16 = _os_activity_create(&_mh_execute_header, v8, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  os_activity_scope_leave(&state);
  sub_1000C0590(&v16);
  return sub_1012BECE4(&v13);
}

void sub_1012B77A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012BECE4(va);
  _Unwind_Resume(a1);
}

void sub_1012B77C4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a2 == 2)
  {
    *(a1 + 1944) = a3;
    *(a1 + 1945) = a4;
    *(a1 + 1946) = 0;
    v4 = *(a1 + 1936);
    if (!v4)
    {
      return;
    }

    v5 = *(*v4 + 48);
    v6 = a1 + 1944;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    *(a1 + 1904) = a3;
    *(a1 + 1905) = a4;
    *(a1 + 1906) = 0;
    v4 = *(a1 + 1896);
    if (!v4)
    {
      return;
    }

    v5 = *(*v4 + 48);
    v6 = a1 + 1904;
LABEL_7:

    v5(v4, v6);
    return;
  }

  v7 = *(a1 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unhandled slot %s for RAT selection update", &v8, 0xCu);
  }
}

void sub_1012B793C(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    *(a1 + 1944) = 0;
    *(a1 + 1946) = 1;
    v2 = *(a1 + 1936);
    if (!v2)
    {
      return;
    }

    v3 = *(*v2 + 48);
    v4 = a1 + 1944;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    *(a1 + 1904) = 0;
    *(a1 + 1906) = 1;
    v2 = *(a1 + 1896);
    if (!v2)
    {
      return;
    }

    v3 = *(*v2 + 48);
    v4 = a1 + 1904;
LABEL_7:

    v3(v2, v4);
    return;
  }

  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unhandled slot %s for RAT selection failed", &v6, 0xCu);
  }
}

uint64_t sub_1012B7AB4(uint64_t a1, int a2, int a3)
{
  v45[1] = a1 + 2392;
  v45[0] = 1;
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v3 = *(a1 + 2424);
  v4 = (a1 + 2432);
  if (v3 != (a1 + 2432))
  {
    while (1)
    {
      v42 = 0;
      v5 = v47;
      if (v46 == &v47)
      {
        break;
      }

      v6 = &v47;
      if (v47)
      {
        do
        {
          v7 = v5;
          v5 = *(v5 + 1);
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (v8);
      }

      if ((sub_1000068BC(v7 + 4, v3 + 32) & 0x80) != 0)
      {
        if (!v47)
        {
LABEL_14:
          v42 = &v47;
LABEL_15:
          operator new();
        }

        goto LABEL_10;
      }

      v9 = sub_100005C2C(&v46, &v42, v3 + 4);
LABEL_11:
      if (!*v9)
      {
        goto LABEL_15;
      }

      v10 = *(v3 + 1);
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
          v11 = *(v3 + 2);
          v8 = *v11 == v3;
          v3 = v11;
        }

        while (!v8);
      }

      v3 = v11;
      if (v11 == v4)
      {
        goto LABEL_22;
      }
    }

    v7 = &v47;
    if (!v47)
    {
      goto LABEL_14;
    }

LABEL_10:
    v42 = v7;
    v9 = (v7 + 1);
    goto LABEL_11;
  }

LABEL_22:
  v51 = 0;
  v52 = 0;
  v50 = &v51;
  subscriber::makeSimSlotRange();
  v12 = v42;
  v13 = v43;
  if (v42 != v43)
  {
    v14 = v44;
    do
    {
      if (v14(*v12))
      {
        break;
      }

      v12 += 4;
    }

    while (v12 != v13);
    v15 = v43;
    while (v12 != v15)
    {
      v16 = *v12;
      v40 = 0;
      v41 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 48));
      v18 = ServiceMap;
      if (v19 < 0)
      {
        v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
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
      v49 = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, &v49);
      if (v23)
      {
        v25 = v23[3];
        v24 = v23[4];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v24);
          v26 = 0;
          goto LABEL_36;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
LABEL_36:
      (*(*v25 + 8))(&v40, v25, v16);
      if ((v26 & 1) == 0)
      {
        sub_100004A34(v24);
      }

      if (v40)
      {
        v27 = (v40 + 24);
        if (v16 == a2)
        {
          v49 = (v40 + 24);
          *(sub_1012BEF10(&v50, (v40 + 24), &v49) + 56) = a3;
        }

        else
        {
          v28 = v47;
          if (v47)
          {
            v29 = &v47;
            do
            {
              v30 = v29;
              v31 = v28 + 32;
              v32 = sub_1000068BC(v28 + 4, v27);
              if ((v32 & 0x80u) == 0)
              {
                v29 = v28;
              }

              v28 = *&v28[(v32 >> 4) & 8];
            }

            while (v28);
            if (v29 != &v47)
            {
              v33 = (v32 & 0x80u) == 0 ? v31 : (v30 + 4);
              if ((sub_1000068BC(v27, v33) & 0x80) == 0)
              {
                v34 = *(v29 + 14);
                v49 = (v40 + 24);
                *(sub_1012BEF10(&v50, (v40 + 24), &v49) + 56) = v34;
              }
            }
          }
        }
      }

      if (v41)
      {
        sub_100004A34(v41);
      }

      do
      {
        v12 += 4;
      }

      while (v12 != v13 && (v14(*v12) & 1) == 0);
    }
  }

  sub_100009970(&v46, v47);
  v35 = v51;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  if (v52)
  {
    *(v51 + 16) = &v47;
    v50 = &v51;
    v51 = 0;
    v52 = 0;
    v35 = 0;
  }

  else
  {
    v46 = &v47;
  }

  sub_100009970(&v50, v35);
  return sub_1012BED4C(v45);
}

void sub_1012B7EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100009970(v17 - 104, *(v17 - 96));
  sub_1012BED4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B7F80(uint64_t a1, int a2, __int16 a3)
{
  v8 = a2;
  if ((a3 & 0x100) != 0)
  {
    v6 = a2;
    v7 = a3;
    v12 = 0;
    sub_10031DEC4(&v6, &v12);
    sub_10000501C(__p, "/cc/events/cs_voice_support_changed");
    object = v12;
    v12 = xpc_null_create();
    ctu::RestModule::sendEvent();
    xpc_release(object);
    object = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v12);
  }

  __p[0] = 1;
  __p[1] = (a1 + 2448);
  v12 = &v8;
  *(sub_10095B208(a1 + 2480, &v8, &unk_101802C98, &v12) + 16) = a3;
  return sub_1012BEFE8(__p);
}

void sub_1012B8064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v18 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012B80B8(uint64_t a1, uint64_t a2, int a3)
{
  v13[0] = 1;
  v14 = 0u;
  v15 = 0;
  v13[1] = a1 + 2728;
  sub_100903918(&v14, a1 + 2760);
  subscriber::makeSimSlotRange();
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    v6 = v12;
    do
    {
      if (v12(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v11);
    v7 = v11;
    while (v4 != v7)
    {
      v9 = *v4;
      v16 = &v9;
      *(sub_10030C46C(&v14, &v9, &unk_101802C98, &v16) + 8) = a3;
      do
      {
        ++v4;
      }

      while (v4 != v5 && (v6(*v4) & 1) == 0);
    }
  }

  return sub_1012BF050(v13);
}

void sub_1012B81CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012BF050(va);
  _Unwind_Resume(a1);
}

void sub_1012B81EC(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v2 = a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/subscription_changed");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1012B8290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012B82D4(uint64_t a1, uint64_t a2, char a3, int a4, char a5, char a6)
{
  if (a2 == 1)
  {
    v9 = event::registration::networkRejectPS[1];
    if (!v9)
    {
      __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
    }

    v55 = a3;
    v54 = a4;
    v53 = a5;
    v52 = a6;
    v51 = 0uLL;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v10 = sub_10004A4A8(v9 + 3);
    sub_100048D3C(&v59, v10);
    v11 = v9[1];
    if (v11)
    {
      if (atomic_load_explicit((v11 + 8), memory_order_acquire) == 1)
      {
        v12 = v9[1];
        if (!v12 || atomic_load_explicit((v12 + 8), memory_order_acquire) != 1)
        {
          __assert_rtn("nolock_cleanup_connections", "signal_template.hpp", 461, "_shared_state.unique()");
        }

        v13 = sub_1012BF174(*v9);
        v14 = sub_1012BF580(*v13);
        v15 = v9[2];
        if (v15 == v14)
        {
          v16 = sub_1012BF174(*v9);
          v15 = *(sub_1012BF580(*v16) + 8);
        }

        *&v56 = v15;
        sub_1012BF1B4(v9, &v56, 1);
      }

      v17 = *v9;
      v18 = v9[1];
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1u, memory_order_relaxed);
      }
    }

    else
    {
      v18 = 0;
      v17 = *v9;
    }

    v19 = v51;
    *&v51 = v17;
    *(&v51 + 1) = v18;
    v56 = v19;
    sub_10004A724(&v56 + 1);
    sub_10004A704(*(&v70 + 1));
    sub_10004A6B0(&v59);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v74 = 0;
    v75 = 10;
    v76 = &v59 + 8;
    v77 = 0;
    v78 = &v55;
    v79 = &v54;
    v80 = &v53;
    v81 = &v52;
    v82 = 0;
    v83 = 0;
    v20 = sub_1012BF174(v51);
    v21 = sub_1012BF580(*v20);
    v50[0] = &v59;
    v50[1] = v9;
    v50[2] = v21;
    v22 = sub_1012BF174(v51);
    sub_10004AA88((v22 + 16));
    v23 = sub_1012BF174(v51);
    v24 = *(sub_1012BF580(*v23) + 8);
    v25 = sub_1012BF174(v51);
    v26 = sub_1012BF580(*v25);
    *&v48 = v24;
    *(&v48 + 1) = v26;
    *&v49 = &v59;
    *(&v49 + 1) = v26;
    sub_1012BF5C0(&v48);
    v27 = *sub_1012BF174(v51);
    sub_1012BF580(v27);
    v28 = sub_1012BF174(v51);
    v29 = sub_1012BF580(*v28);
    v47[0] = v27;
    v47[1] = v29;
    v47[2] = &v59;
    v47[3] = v29;
    sub_1012BF5C0(v47);
    v56 = v48;
    v57 = v49;
    v30 = v47[0];
    v31 = v48;
    if (v48 != v47[0])
    {
      v32 = v57;
      v33 = *v57;
      do
      {
        if ((v33 & 1) == 0)
        {
          v34 = sub_1012BF500(*(v31 + 16));
          v35 = sub_1012BF540(*(v34 + 32));
          v36 = *(v35 + 24);
          if (!v36)
          {
            std::runtime_error::runtime_error(&v58, "call to empty boost::function");
            v58.__vftable = &off_101E25EA8;
            sub_1001028A8(&v58);
          }

          (*((v36 & 0xFFFFFFFFFFFFFFFELL) + 8))(v35 + 32, **(v32 + 272), **(v32 + 280), **(v32 + 288), **(v32 + 296));
          if ((*v32 & 1) == 0)
          {
            *v32 = 1;
          }
        }

        *&v56 = *(v31 + 8);
        sub_1012BF5C0(&v56);
        v32 = v57;
        if (*v57 == 1)
        {
          *v57 = 0;
        }

        v33 = 0;
        v31 = v56;
      }

      while (v56 != v30);
    }

    sub_1012BF9A4(v50);
    sub_1012C0194(&v59);
    sub_10004A724(&v51 + 1);
  }

  *&v56 = 1;
  *(&v56 + 1) = a1 + 2784;
  subscriber::makeSimSlotRange();
  v38 = *(&v59 + 1);
  v37 = v59;
  if (v59 != *(&v59 + 1))
  {
    v39 = v60;
    do
    {
      if (v39(*v37))
      {
        break;
      }

      ++v37;
    }

    while (v37 != v38);
    v40 = *(&v59 + 1);
    while (v37 != v40)
    {
      v41 = *v37;
      LODWORD(v47[0]) = *v37;
      v42 = *(*(&v56 + 1) + 40);
      v43 = *(&v56 + 1) + 32;
      if (!v42)
      {
        goto LABEL_37;
      }

      v44 = *(&v56 + 1) + 40;
      do
      {
        if (*(v42 + 28) >= v41)
        {
          v44 = v42;
        }

        v42 = *(v42 + 8 * (*(v42 + 28) < v41));
      }

      while (v42);
      if (v44 != *(&v56 + 1) + 40 && v41 >= *(v44 + 28))
      {
        *&v48 = v47;
        *(sub_1012C02F4(v43, v41, &v48) + 32) = a3;
        *&v48 = v47;
        v45 = sub_1012C02F4(*(&v56 + 1) + 32, v47[0], &v48);
      }

      else
      {
LABEL_37:
        *&v48 = v47;
        v45 = sub_1012C02F4(v43, v41, &v48);
        *(v45 + 32) = a3;
        *(v45 + 33) = 0;
      }

      *(v45 + 9) = a4;
      do
      {
        ++v37;
      }

      while (v37 != v38 && (v39(*v37) & 1) == 0);
    }
  }

  return sub_1012C028C(&v56);
}

void sub_1012B884C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012B88A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_1000FFEDC(va);
  JUMPOUT(0x1012B88ACLL);
}

void sub_1012B88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1012C028C(va);
  _Unwind_Resume(a1);
}

void sub_1012B88CC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1012B88D4);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012B88E4(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v16 = 1;
  v17 = a1 + 2784;
  subscriber::makeSimSlotRange();
  v6 = v13;
  if (v13 != v14)
  {
    do
    {
      if (v15(*v6))
      {
        break;
      }

      ++v6;
    }

    while (v6 != v14);
    while (v6 != v14)
    {
      v7 = *(v17 + 40);
      v8 = v17 + 32;
      if (!v7)
      {
        goto LABEL_12;
      }

      v9 = *v6;
      v10 = v17 + 40;
      do
      {
        if (*(v7 + 28) >= v9)
        {
          v10 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 28) < v9));
      }

      while (v7);
      if (v10 != v17 + 40 && v9 >= *(v10 + 28))
      {
        v18 = v6;
        *(sub_1012C02F4(v8, *v6, &v18) + 33) = a3;
        v18 = v6;
        v11 = sub_1012C02F4(v17 + 32, *v6, &v18);
      }

      else
      {
LABEL_12:
        v18 = v6;
        v11 = sub_1012C02F4(v8, *v6, &v18);
        *(v11 + 32) = 0;
        *(v11 + 33) = a3;
      }

      *(v11 + 9) = a4;
      do
      {
        ++v6;
      }

      while (v6 != v14 && (v15(*v6) & 1) == 0);
    }
  }

  return sub_1012C028C(&v16);
}

void sub_1012B8A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1012C028C(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1012B8A44(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  LODWORD(v31) = a2;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  sub_10000D518(&v39);
  v5 = subscriber::operator<<();
  sub_10000C030(v5, ", ", 2);
  std::ostream::operator<<();
  sub_10000D684(&v39, __p);
  sub_1000841A0(&event::activation::serviceProvisioned[3], __p);
  if (SBYTE7(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&v43 + 1));
  }

  std::locale::~locale(&v40);
  std::ostream::~ostream();
  std::ios::~ios();
  v6 = sub_100B89AD0(&event::activation::serviceProvisioned[1]);
  v36 = a2;
  v35 = v3;
  v34[0] = 0;
  v34[1] = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = sub_10004A4A8(v6 + 3);
  sub_100048D3C(&v39, v7);
  v8 = v6[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_100B8A108(v6, &v39, 0, 1);
    }

    v9 = *v6;
    v10 = v6[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *v6;
  }

  v11 = *v34;
  v34[0] = v9;
  v34[1] = v10;
  *__p = v11;
  sub_10004A724(&__p[1]);
  sub_10004A704(*(&v50 + 1));
  sub_10004A6B0(&v39);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  *&v54 = 0;
  *(&v54 + 1) = 10;
  v55 = &v39 + 8;
  v56 = 0;
  v57 = &v36;
  v58 = &v35;
  v59 = 0;
  v60 = 0;
  v12 = sub_100B89DA0(v34);
  v33[0] = &v39;
  v33[1] = v6;
  v33[2] = sub_100B8AFB8(v12);
  v13 = sub_100B89DA0(v34);
  sub_10004AA88((v13 + 16));
  v14 = sub_100B89DA0(v34);
  v15 = *(sub_100B8AFB8(v14) + 8);
  v16 = sub_100B89DA0(v34);
  *&v31 = v15;
  *(&v31 + 1) = sub_100B8AFB8(v16);
  *&v32 = &v39;
  *(&v32 + 1) = *(&v31 + 1);
  sub_1012C03BC(&v31);
  v17 = sub_100B89DA0(v34);
  v18 = sub_100B8AFB8(v17);
  v19 = sub_100B89DA0(v34);
  v27 = v18;
  v28 = sub_100B8AFB8(v19);
  v29 = &v39;
  v30 = v28;
  sub_1012C03BC(&v27);
  *__p = v31;
  v38 = v32;
  v20 = v27;
  v21 = v31;
  if (v31 != v27)
  {
    v22 = v38;
    v23 = *v38;
    do
    {
      if ((v23 & 1) == 0)
      {
        v24 = sub_100B89DE4(v21 + 2);
        v25 = sub_100B8A768((v24 + 32));
        sub_100B8B714((v25 + 24));
        if ((*v22 & 1) == 0)
        {
          *v22 = 1;
        }
      }

      if ((*v38 & 1) == 0)
      {
        __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
      }

      __p[0] = *(__p[0] + 1);
      sub_1012C03BC(__p);
      v22 = v38;
      if (*v38 == 1)
      {
        *v38 = 0;
      }

      v23 = 0;
      v21 = __p[0];
    }

    while (__p[0] != v20);
  }

  sub_1012C072C(v33);
  sub_1012C08F4(&v39);
  return sub_10004A724(&v34[1]);
}

void sub_1012B8F00(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x1012B8F70);
}

void sub_1012B8F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1012B8F84(uint64_t a1, char a2, int a3)
{
  v6 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/e911_state_ready");
  object = v6;
  v6 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v6);
}

void sub_1012B9020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1012B9064(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/e911_chosen_slot");
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

void sub_1012B90FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1012B9140(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v2 = a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/e911_scan_failed");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1012B91E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1012B9228(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/events/e911_state_exit_completed");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1012B9298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1012B92C8(uint64_t a1, unsigned int a2, int a3)
{
  v3 = &_mh_execute_header;
  if (!a3)
  {
    BYTE4(v3) = 0;
  }

  v4 = a2;
  v5 = BYTE4(v3);
  v9 = 0;
  sub_10031DEC4(&v4, &v9);
  sub_10000501C(&__p, "/cc/events/first_scan_completed");
  object = v9;
  v9 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_1012B9374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012B93B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    (*(**(a1 + 32) + 88))(*(a1 + 32), a3, a4);
  }

  v5 = *(**(a1 + 32) + 40);

  return v5();
}

uint64_t sub_1012B944C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    (*(**(a1 + 32) + 96))(*(a1 + 32), a3, a4);
  }

  v5 = *(**(a1 + 32) + 104);

  return v5();
}

void sub_1012B94F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  (*(*v4 + 24))(v4, a2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1012B9584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012B95A0(uint64_t a1, uint64_t a2, int a3)
{
  v13 = 1;
  v14 = a1 + 2000;
  subscriber::makeSimSlotRange();
  v4 = v10;
  if (v10 != v11)
  {
    do
    {
      if (v12(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v11);
    while (v4 != v11)
    {
      v5 = *v4;
      v6 = *(v14 + 40);
      if (!v6)
      {
LABEL_12:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = *(v6 + 7);
          if (v8 <= v5)
          {
            break;
          }

          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_12;
          }
        }

        if (v8 >= v5)
        {
          break;
        }

        v6 = v7[1];
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      *(v7 + 8) = a3;
      do
      {
        ++v4;
      }

      while (v4 != v11 && (v12(*v4) & 1) == 0);
    }
  }

  return sub_1012C09EC(&v13);
}

void sub_1012B96E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012C09EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012B9700(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = subscriber::asString();
    v8 = asStringBool(*a3);
    *v14 = 136315394;
    *&v14[4] = v7;
    *&v14[12] = 2080;
    *&v14[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Updating EmergencySupport REST for %s, limited: %s", v14, 0x16u);
  }

  *v14 = 1;
  *&v14[8] = a1 + 2896;
  v9 = *(a1 + 2936);
  if (!v9)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = *(v9 + 7);
      if (v11 <= v4)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_10;
      }
    }

    if (v11 >= v4)
    {
      break;
    }

    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v12 = *a3;
  *(v10 + 10) = *(a3 + 2);
  v10[4] = v12;
  return sub_1012C0A54(v14);
}

uint64_t sub_1012B989C(uint64_t a1)
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

uint64_t sub_1012B991C(uint64_t a1)
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

void sub_1012B999C(char *a1)
{
  if (a1)
  {
    sub_1012B999C(*a1);
    sub_1012B999C(*(a1 + 1));
    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

uint64_t sub_1012B99F8(uint64_t a1)
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

uint64_t sub_1012B9A78(uint64_t a1)
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

uint64_t sub_1012B9AF8(uint64_t a1)
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

uint64_t sub_1012B9B78(uint64_t a1)
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

uint64_t sub_1012B9BF8(uint64_t a1)
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

uint64_t sub_1012B9C78(uint64_t a1)
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

uint64_t sub_1012B9CF8(uint64_t a1)
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

uint64_t sub_1012B9D78(uint64_t a1)
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

uint64_t sub_1012B9DF8(uint64_t a1)
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

uint64_t sub_1012B9E78(uint64_t a1)
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

uint64_t sub_1012B9EF8(uint64_t a1)
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

uint64_t sub_1012B9F78(uint64_t a1)
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

uint64_t sub_1012B9FF8(uint64_t a1)
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

uint64_t sub_1012BA078(uint64_t a1)
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

void sub_1012BA178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012BA1B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012BA1EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012BA21C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BA2CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26D38;
  a2[1] = v2;
  return result;
}

void sub_1012BA2F8(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 8);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/rat");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_1012BA5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BA688(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BA744(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26DC8;
  a2[1] = v2;
  return result;
}

void sub_1012BA770(uint64_t a1, const RegisteredNetworkInfo *a2)
{
  v5 = 0;
  write_rest_value(a2);
  sub_10000501C(&__p, "/cc/props/reg_net_info2");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BA814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BA858(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012BA8A4(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1012BAB04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012BAB80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26E58;
  a2[1] = v2;
  return result;
}

void sub_1012BABAC(uint64_t a1, const RegisteredNetworkInfo *a2)
{
  v5 = 0;
  write_rest_value(a2);
  sub_10000501C(&__p, "/cc/props/reg_net_info1");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BAC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BAC94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BAD50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26ED8;
  a2[1] = v2;
  return result;
}

void sub_1012BAD7C(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/reg_rat_selection1");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BAE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BAE64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012BAEB0(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1012BB110(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012BB18C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26F68;
  a2[1] = v2;
  return result;
}

void sub_1012BB1B8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/reg_rat_selection2");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BB25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BB2A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BB35C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F26FE8;
  a2[1] = v2;
  return result;
}

void sub_1012BB388(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 8);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/registration_status");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_1012BB660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BB718(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BB7D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27078;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BB808(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012BB854(uint64_t *a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/emergency_callback_mode");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BB8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1012BB93C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1012BBB9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012BBC18(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27108;
  a2[1] = v2;
  return result;
}

void sub_1012BBC44(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v29 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v29 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v29;
      v23 = "first";
      sub_10000F688(&__p, &v27, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = *(v6 + 8);
      v15 = asString();
      ctu::rest::detail::write_enum_string_value(v14, v15, v16);
      __p = &v29;
      v23 = "second";
      sub_10000F688(&__p, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v17 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v29);
      xpc_array_append_value(v4, v17);
      xpc_release(v17);
      v18 = v6[1];
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
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v21 = v4;
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/cipher_domains");
  v29 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v29 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v29);
  v29 = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
}

void sub_1012BBF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BBFD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC090(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27198;
  a2[1] = v2;
  return result;
}

void sub_1012BC0BC(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_network_scan");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC1A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC260(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27218;
  a2[1] = v2;
  return result;
}

void sub_1012BC28C(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_cs_attached");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC374(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC430(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27298;
  a2[1] = v2;
  return result;
}

void sub_1012BC45C(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_ps_attached");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC544(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC600(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27318;
  a2[1] = v2;
  return result;
}

void sub_1012BC62C(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_data_attached");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC714(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC7D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27398;
  a2[1] = v2;
  return result;
}

void sub_1012BC7FC(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_1010DCE38(a2, &v5);
  sub_10000501C(&__p, "/cc/props/reg_data_modes");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BC8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BC8E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BC9A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27428;
  a2[1] = v2;
  return result;
}

void sub_1012BC9CC(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 8);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      rest::write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
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

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/reg_serving_network");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012BCC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BCD4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BCE08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F274B8;
  a2[1] = v2;
  return result;
}

void sub_1012BCE34(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      write_rest_value();
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      v11 = *(v6 + 14);
      v12 = asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
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

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/ims_voice_support");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012BD0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BD1B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BD270(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27548;
  a2[1] = v2;
  return result;
}

void sub_1012BD29C(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_1010DE5F0(a2, &v5);
  sub_10000501C(&__p, "/cc/props/cs_voice_support");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BD340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BD384(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BD440(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F275D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BD46C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012BD4B8(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1012BD718(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012BD794(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27668;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BD7C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BD87C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F276E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BD8A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BD964(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27778;
  a2[1] = v2;
  return result;
}

uint64_t sub_1012BD990(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BDA4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27808;
  a2[1] = v2;
  return result;
}

void sub_1012BDA78(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_100B7CA68(a2, &v5);
  sub_10000501C(&__p, "/cc/props/tracking_area_update_timers");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BDB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BDB60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BDC1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27888;
  a2[1] = v2;
  return result;
}

void sub_1012BDC48(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      rest::write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
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

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/network_rejects");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012BDF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BDFC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BE084(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F27918;
  a2[1] = v2;
  return result;
}

void sub_1012BE0B0(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_1010DC5CC(a2, &v5);
  sub_10000501C(&__p, "cc/props/ims_preference_states");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1012BE154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1012BE198(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BE254(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F279A8;
  a2[1] = v2;
  return result;
}

void sub_1012BE280(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
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

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/ims_emergency_support");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012BE548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BE600(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012BE64C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE6B4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE71C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE784(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE7EC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE854(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 32) == *(v4 + 32);
        if (!v5)
        {
          break;
        }

        v6 = v3[1];
        v7 = v3;
        if (v6)
        {
          do
          {
            v3 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v3 = v7[2];
            v5 = *v3 == v7;
            v7 = v3;
          }

          while (!v5);
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
            v5 = *v9 == v4;
            v4 = v9;
          }

          while (!v5);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    sub_10004645C(v2 + 4, (a1 + 16));
    v10 = v2[3];
    if (v10)
    {
      (*(*v10 + 48))(v10, v2 + 4);
    }
  }

LABEL_24:
  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1012BE980(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BE9E8(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (*(v3 + 8) == *(v4 + 8) && rest::operator==())
      {
        v5 = v3[1];
        v6 = v3;
        if (v5)
        {
          do
          {
            v3 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v3 = v6[2];
            v7 = *v3 == v6;
            v6 = v3;
          }

          while (!v7);
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
            v7 = *v9 == v4;
            v4 = v9;
          }

          while (!v7);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    v10 = v2 + 5;
    sub_10004C4EC((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v11 = (a1 + 24);
    v2[5] = v12;
    v2[6] = v13;
    if (v13)
    {
      *(v12 + 16) = v10;
      *(a1 + 16) = v11;
      *v11 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v10;
    }

    v14 = v2[3];
    if (v14)
    {
      (*(*v14 + 48))(v14, v2 + 4);
    }
  }

LABEL_24:
  sub_10004C4EC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t *sub_1012BEB60(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1012BEC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045EDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012BEC7C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BECE4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BED4C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_39;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 55);
        if (v5 >= 0)
        {
          v6 = *(v3 + 55);
        }

        else
        {
          v6 = v3[5];
        }

        v7 = *(v4 + 55);
        v8 = v7;
        if ((v7 & 0x80u) != 0)
        {
          v7 = v4[5];
        }

        if (v6 != v7)
        {
          break;
        }

        v9 = v5 >= 0 ? v3 + 4 : v3[4];
        v10 = v8 >= 0 ? v4 + 4 : v4[4];
        v11 = !memcmp(v9, v10, v6) && *(v3 + 14) == *(v4 + 14);
        if (!v11)
        {
          break;
        }

        v12 = v3[1];
        v13 = v3;
        if (v12)
        {
          do
          {
            v3 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v3 = v13[2];
            v11 = *v3 == v13;
            v13 = v3;
          }

          while (!v11);
        }

        v14 = v4[1];
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
            v15 = v4[2];
            v11 = *v15 == v4;
            v4 = v15;
          }

          while (!v11);
        }

        v4 = v15;
        if (v3 == v2 + 5)
        {
          goto LABEL_39;
        }
      }
    }

    v16 = v2 + 5;
    sub_100009970((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    v17 = (a1 + 24);
    v2[5] = v18;
    v2[6] = v19;
    if (v19)
    {
      *(v18 + 16) = v16;
      *(a1 + 16) = v17;
      *v17 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v16;
    }

    v20 = v2[3];
    if (v20)
    {
      (*(*v20 + 48))(v20, v2 + 4);
    }
  }

LABEL_39:
  sub_100009970(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1012BEF10(uint64_t **a1, uint64_t ***a2, __int128 **a3)
{
  v5 = 0;
  v3 = *sub_100005C2C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_1012BEFE8(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012BF050(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 8) == *(v4 + 8);
        if (!v5)
        {
          break;
        }

        v6 = v3[1];
        v7 = v3;
        if (v6)
        {
          do
          {
            v3 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v3 = v7[2];
            v5 = *v3 == v7;
            v7 = v3;
          }

          while (!v5);
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
            v5 = *v9 == v4;
            v4 = v9;
          }

          while (!v5);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    sub_10004645C(v2 + 4, (a1 + 16));
    v10 = v2[3];
    if (v10)
    {
      (*(*v10 + 48))(v10, v2 + 4);
    }
  }

LABEL_24:
  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1012BF174(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1012BF1B4(uint64_t *a1, uint64_t **a2, int a3)
{
  v3 = a1[1];
  if (!v3 || atomic_load_explicit((v3 + 8), memory_order_acquire) != 1)
  {
    __assert_rtn("nolock_cleanup_connections_from", "signal_template.hpp", 436, "_shared_state.unique()");
  }

  v6 = *a2;
  v7 = sub_1012BF174(*a1);
  result = sub_1012BF580(*v7);
  if (result != v6)
  {
    v9 = 0;
    v10 = a3 - 1;
    do
    {
      if (*(sub_1012BF500(v6[2]) + 24))
      {
        v6 = v6[1];
      }

      else
      {
        v11 = *sub_1012BF174(*a1);
        sub_1012BF580(v11);
        v12 = v6[2];
        sub_1012BF500(v12);
        if (v6 == v11)
        {
          __assert_rtn("erase", "slot_groups.hpp", 148, "it != _list.end()");
        }

        v13 = v11 + 4;
        v14 = v11[4];
        if (!v14)
        {
          goto LABEL_51;
        }

        v35 = (v11 + 3);
        v15 = v11 + 4;
        do
        {
          v16 = sub_100100A24((v11 + 6), (v14 + 4), v12 + 64);
          v17 = v16;
          if (!v16)
          {
            v15 = v14;
          }

          v14 = v14[v17];
        }

        while (v14);
        if (v15 == v13)
        {
LABEL_51:
          __assert_rtn("erase", "slot_groups.hpp", 150, "map_it != _group_map.end()");
        }

        if (sub_100100A24((v11 + 7), (v15 + 4), v12 + 64) || sub_100100A24((v11 + 7), v12 + 64, (v15 + 4)))
        {
          __assert_rtn("erase", "slot_groups.hpp", 151, "weakly_equivalent(map_it->first, key)");
        }

        if (v15[6] == v6)
        {
          v18 = v6[1];
          v19 = *v13;
          v20 = v11;
          v34 = v18;
          if (*v13)
          {
            v21 = v11 + 4;
            do
            {
              v22 = sub_100100A24((v11 + 6), v12 + 64, (v19 + 4));
              v23 = !v22;
              if (v22)
              {
                v21 = v19;
              }

              v19 = v19[v23];
            }

            while (v19);
            v20 = v11;
            v18 = v34;
            if (v21 != v13)
            {
              v20 = v21[6];
            }
          }

          if (v18 == v20)
          {
            v25 = v15[1];
            v26 = v15;
            v10 = a3 - 1;
            if (v25)
            {
              do
              {
                v27 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v27 = v26[2];
                v28 = *v27 == v26;
                v26 = v27;
              }

              while (!v28);
            }

            if (*v35 == v15)
            {
              *v35 = v27;
            }

            v29 = v11[4];
            --v11[5];
            sub_100018288(v29, v15);
            operator delete(v15);
          }

          else
          {
            v36 = 0;
            v24 = *sub_1000FB024(v35, &v36, v12 + 64);
            v10 = a3 - 1;
            if (!v24)
            {
              operator new();
            }

            *(v24 + 48) = v34;
          }
        }

        v30 = *v6;
        v31 = v6[1];
        *(v30 + 8) = v31;
        *v31 = v30;
        --v11[2];
        sub_10004A724(v6 + 3);
        operator delete(v6);
        v6 = v31;
      }

      ++v9;
      v32 = sub_1012BF174(*a1);
      result = sub_1012BF580(*v32);
    }

    while (v6 != result && v10 >= v9);
  }

  a1[2] = v6;
  return result;
}

uint64_t sub_1012BF500(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1012BF540(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1012BF580(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1012BF5C0(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_23;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v3 = *(*result + 16);
      sub_1012BF8DC(v3);
      sub_10004ABC4(&v17, v3);
      v4 = *(*result + 16);
      sub_1012BF500(v4);
      v5 = *(v4 + 32);
      if (v5)
      {
        v6 = result[2];
        for (i = *v5; i != *(sub_1012BF540(v5) + 8); i += 6)
        {
          memset(v29, 0, sizeof(v29));
          sub_10004ACE8(i, v29);
          if (sub_100048EA8(i))
          {
            if (*(v4 + 24) == 1)
            {
              *(v4 + 24) = 0;
              sub_10004B3DC(v4, &v17);
            }

            sub_10004B040(v29);
            break;
          }

          sub_10004AFC8((v6 + 8), v29);
          sub_10004B040(v29);
          v5 = *(v4 + 32);
        }
      }

      v8 = sub_1012BF500(*(*result + 16));
      v9 = result[2];
      if (*(v8 + 24) == 1)
      {
        ++*(v9 + 304);
      }

      else
      {
        ++*(v9 + 308);
      }

      v10 = sub_1012BF500(*(*result + 16));
      if (*(v10 + 24) != 1 || (v11 = *(v10 + 16)) != 0 && atomic_load_explicit((v11 + 8), memory_order_acquire))
      {
        v12 = 1;
      }

      else
      {
        sub_1012BF91C(result, &v17, *result);
        v12 = 0;
      }

      (*(**(&v28 + 1) + 32))(*(&v28 + 1));
      sub_10004A6B0(&v17);
      v1 = *result;
      v13 = result[1];
      if (!v12)
      {
        break;
      }

      v14 = *(v1 + 8);
      *result = v14;
      if (v14 == v13)
      {
        v1 = v13;
        goto LABEL_23;
      }
    }

    if (v1 == v13)
    {
LABEL_23:
      v15 = result[3];
      if (v15 != v1)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v16 = *(v15 + 16);
        sub_1012BF8DC(v16);
        sub_10004ABC4(&v17, v16);
        sub_1012BF91C(result, &v17, result[1]);
        (*(**(&v28 + 1) + 32))(*(&v28 + 1));
        sub_10004A6B0(&v17);
      }
    }
  }
}

void sub_1012BF884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012BF8DC(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1012BF91C(void *a1, void *a2, uint64_t a3)
{
  a1[3] = a3;
  v3 = a1[2];
  if (a1[1] == a3)
  {
    result = *(v3 + 312);
    if (result)
    {
      result = sub_10004B3DC(result, a2);
    }

    *(v3 + 312) = 0;
  }

  else
  {
    v4 = *(a3 + 16);
    result = *(v3 + 312);
    if (result)
    {
      result = sub_10004B3DC(result, a2);
    }

    *(v3 + 312) = v4;
    if (v4)
    {
      v6 = *(v4 + 28);
      if (!v6)
      {
        __assert_rtn("inc_slot_refcount", "connection.hpp", 114, "m_slot_refcount != 0");
      }

      *(v4 + 28) = v6 + 1;
    }
  }

  return result;
}

void *sub_1012BF9A4(void *a1)
{
  if (*(*a1 + 308) > *(*a1 + 304))
  {
    v3 = a1[1];
    v2 = a1[2];
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    v4 = sub_10004A4A8(v3 + 3);
    sub_100048D3C(v10, v4);
    v5 = sub_1012BF174(*v3);
    if (sub_1012BF580(*v5) == v2)
    {
      v6 = v3[1];
      if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
      {
        operator new();
      }

      v7 = sub_1012BF174(*v3);
      v9 = *(sub_1012BF580(*v7) + 8);
      sub_1012BF1B4(v3, &v9, 0);
    }

    sub_10004A704(*(&v11 + 1));
    sub_10004A6B0(v10);
  }

  return a1;
}

void sub_1012BFF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_100100638(a13);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1012BFF70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724((v16 + 8));
    sub_1000FFEDC(va);
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012BFF8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_101080E78(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1012BFFAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724(v13);
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_1012BFFC8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  operator delete();
}

void sub_1012BFFD4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000FFEDC(va);
  sub_10004F058(a1);
}

void sub_1012C0000(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1012C0064);
}

uint64_t sub_1012C0084(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1012C0118(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100034450(*(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_1012C0194(uint64_t a1)
{
  v2 = *(a1 + 312);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 312), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1012C026C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012C028C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t *sub_1012C02F4(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1012C03BC(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_23;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
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
      v18 = 0u;
      v19 = 0u;
      v3 = *(*result + 16);
      sub_1012C06EC(v3);
      sub_10004ABC4(&v18, v3);
      v4 = sub_100B89DE4((*result + 16));
      v5 = (v4 + 32);
      if (*(v4 + 32))
      {
        v6 = v4;
        v7 = result[2];
        for (i = *sub_100B8A768((v4 + 32)); i != *(sub_100B8A768(v5) + 8); i += 6)
        {
          memset(v30, 0, sizeof(v30));
          sub_10004ACE8(i, v30);
          if (sub_100048EA8(i))
          {
            if (*(v6 + 24) == 1)
            {
              *(v6 + 24) = 0;
              sub_10004B3DC(v6, &v18);
            }

            sub_10004B040(v30);
            break;
          }

          sub_10004AFC8((v7 + 8), v30);
          sub_10004B040(v30);
        }
      }

      v9 = sub_100B89DE4((*result + 16));
      v10 = result[2];
      if (*(v9 + 24) == 1)
      {
        ++*(v10 + 288);
      }

      else
      {
        ++*(v10 + 292);
      }

      v11 = sub_100B89DE4((*result + 16));
      if (*(v11 + 24) != 1 || (v12 = *(v11 + 16)) != 0 && atomic_load_explicit((v12 + 8), memory_order_acquire))
      {
        v13 = 1;
      }

      else
      {
        sub_101080694(result, &v18, *result);
        v13 = 0;
      }

      (*(**(&v29 + 1) + 32))(*(&v29 + 1));
      sub_10004A6B0(&v18);
      v1 = *result;
      v14 = result[1];
      if (!v13)
      {
        break;
      }

      v15 = *(v1 + 8);
      *result = v15;
      if (v15 == v14)
      {
        v1 = v14;
        goto LABEL_23;
      }
    }

    if (v1 == v14)
    {
LABEL_23:
      v16 = result[3];
      if (v16 != v1)
      {
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
        v18 = 0u;
        v19 = 0u;
        v17 = *(v16 + 16);
        sub_1012C06EC(v17);
        sub_10004ABC4(&v18, v17);
        sub_101080694(result, &v18, result[1]);
        (*(**(&v29 + 1) + 32))(*(&v29 + 1));
        sub_10004A6B0(&v18);
      }
    }
  }
}

void sub_1012C0694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012C06EC(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void *sub_1012C072C(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    v2 = a1[1];
    v3 = a1[2];
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    v4 = sub_10004A4A8(v2 + 3);
    sub_100048D3C(v10, v4);
    v5 = sub_100B89DA0(v2);
    if (sub_100B8AFB8(v5) == v3)
    {
      v6 = v2[1];
      if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
      {
        operator new();
      }

      v7 = sub_100B89DA0(v2);
      v9 = *(sub_100B8AFB8(v7) + 8);
      sub_100B89FF0(v2, v10, 0, &v9, 0);
    }

    sub_10004A704(*(&v11 + 1));
    sub_10004A6B0(v10);
  }

  return a1;
}

void sub_1012C0898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012C08F4(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1012C09CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012C09EC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

uint64_t sub_1012C0A54(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

void sub_1012C0B44(uint64_t a1, char *a2, void **a3)
{
  sub_10000501C(&v7, a2);
  v4 = std::string::insert(&v7, 0, "com.apple.Telephony.", 0x14uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9 = v4->__r_.__value_.__r.__words[2];
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  object = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    object = xpc_null_create();
  }

  analytics_send_exploding_event_lazy();
  xpc_release(object);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }
}

void sub_1012C0C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  xpc_release(object);
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_1012C0C98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

xpc_object_t sub_1012C0CFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 32) = result;
  return result;
}

void sub_1012C0D6C(uint64_t a1, char *a2, uint64_t a3, void **a4)
{
  sub_10000501C(&v8, a2);
  v5 = std::string::insert(&v8, 0, "com.apple.Telephony.", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10 = v5->__r_.__value_.__r.__words[2];
  v9 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  object = *a4;
  if (*a4)
  {
    xpc_retain(*a4);
  }

  else
  {
    object = xpc_null_create();
  }

  analytics_send_exploding_event_lazy();
  xpc_release(object);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }
}

void sub_1012C0E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_1012C0ECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  values = *(a1 + 40);
  keys = v1;
  v2 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v2) == &_xpc_type_dictionary)
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = xpc_null_create();
  xpc_release(v4);
  return v3;
}

void sub_1012C0F9C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

xpc_object_t sub_1012C0FDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void sub_1012C104C(uint64_t a1, char *a2, int a3, void *a4, uint64_t a5)
{
  if (a3 == 1)
  {
    v8 = 0;
    v9 = 0;
    Registry::getWisServerConnection(&v8, *(a1 + 8));
    if (v8)
    {
      sub_10000501C(&__p, a2);
      wis::WISServerConnection::RegisterCallbackForTimer();
      if (v7 < 0)
      {
        operator delete(__p);
      }
    }

    if (v9)
    {
      sub_100004A34(v9);
    }
  }
}

void sub_1012C112C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 40);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C115C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  (*(v2 + 16))(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1012C11D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C11F0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  Registry::getWisServerConnection(&v2, *(a1 + 8));
  if (v2)
  {
    wis::WISServerConnection::RegisterCallbackForAnomalyInsights();
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1012C128C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1012C12A4(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 32);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  (*(v2 + 16))(v2, &v4);
  return sub_10001021C(&v4);
}

void sub_1012C12FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1012C1344(TelephonyAnalyticsInterface *this)
{
  *this = off_101F27B08;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TelephonyAnalyticsInterface::~TelephonyAnalyticsInterface(this);
}

void sub_1012C13A0(TelephonyAnalyticsInterface *this)
{
  *this = off_101F27B08;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TelephonyAnalyticsInterface::~TelephonyAnalyticsInterface(this);

  operator delete();
}

void sub_1012C1478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C14B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012C14EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012C151C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012C155C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1012C15B0(uint64_t *a3@<X8>)
{
  v5[0] = off_101F27F28;
  v5[3] = v5;
  inactive = dispatch_workloop_create_inactive("SettingsController");
  sub_1001FA58C(v5, inactive);
  dispatch_activate(inactive);
  sub_1001FAD0C(v5);
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

uint64_t sub_1012C21F4(uint64_t a1)
{
  sub_1002B7314(a1 + 32, *(a1 + 40));

  return sub_1012C9C78(a1);
}

uint64_t sub_1012C2234(uint64_t a1)
{
  sub_100170380(a1 + 32, *(a1 + 40));

  return sub_1012C9CF8(a1);
}

void sub_1012C2274(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C2374(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C2474(uint64_t a1)
{
  *a1 = off_101F27C90;
  sub_1000DD0AC(a1 + 664, *(a1 + 672));
  sub_100034450(*(a1 + 648));
  sub_1002B7314(a1 + 616, *(a1 + 624));
  sub_1012C9C78(a1 + 584);
  sub_100170380(a1 + 560, *(a1 + 568));
  sub_100170380(a1 + 536, *(a1 + 544));
  sub_1012C9CF8(a1 + 504);
  sub_100034450(*(a1 + 488));
  sub_100034450(*(a1 + 464));
  PersonalitiesTracker::~PersonalitiesTracker((a1 + 288));
  sub_10006DCAC(a1 + 256, *(a1 + 264));
  sub_100359978(a1 + 232, *(a1 + 240));
  sub_10006DCAC(a1 + 208, *(a1 + 216));
  sub_10032D3A4(a1 + 184, *(a1 + 192));
  v2 = *(a1 + 176);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    sub_100004A34(v9);
  }

  SettingsInterface::~SettingsInterface(a1);
  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1012C25F0(uint64_t a1)
{
  sub_1012C2474(a1);

  operator delete();
}

void sub_1012C2628(void *a1, unsigned int a2, unsigned int a3, char *a4)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = "";
  }

  sub_10000501C(v9, v5);
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, v9[0], v9[1]);
  }

  else
  {
    *__p = *v9;
    v8 = v10;
  }

  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C27A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C27C4(void *a1, unsigned int a2, unsigned int a3, char *a4, uint64_t a5)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = "";
  }

  sub_10000501C(v11, v9);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(&__p, v11[0], v11[1]);
  }

  else
  {
    __p = *v11;
    v17 = v12;
  }

  sub_1000224C8(&v18, a5);
  v10 = a1[2];
  if (v10)
  {
    if (std::__shared_weak_count::lock(v10))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C298C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C29E0(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, char *a5)
{
  v12 = 0uLL;
  v13 = 0;
  if (a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = "";
  }

  sub_10000501C(&v12, v7);
  sub_1000AE428(&v9, a4);
  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(__p, v12, *(&v12 + 1));
  }

  else
  {
    *__p = v12;
    v11 = v13;
  }

  v8 = a1[2];
  if (v8)
  {
    if (std::__shared_weak_count::lock(v8))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C2BC0(_Unwind_Exception *a1)
{
  sub_10034F8E8(v1 + 16);
  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}