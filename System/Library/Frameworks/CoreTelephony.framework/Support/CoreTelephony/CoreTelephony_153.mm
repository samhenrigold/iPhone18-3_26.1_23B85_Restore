void sub_101335114(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = qword_101FCA8E8;
    if (os_log_type_enabled(qword_101FCA8E8, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Getting privacy proxy configuration returned %@", &v8, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = a2 == 2;
  }

  sub_10000FFD0(a1 + 32, v7);
}

void notifyPrivacyProxyOfChangeByUser(uint64_t a1, uint64_t **a2)
{
  if ((atomic_load_explicit(&qword_101FCA900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA900))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FCA8F8, kCtLoggingSystemName, "npp");
    __cxa_guard_release(&qword_101FCA900);
  }

  v4 = [NSString alloc];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v5 = [v4 initWithUTF8String:a2];
  [PrivacyProxyClient reportCellularNetworkStatus:"reportCellularNetworkStatus:networkName:queue:completionHandler:" networkName:a1 queue:? completionHandler:?];
}

void sub_101335310(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = qword_101FCA8F8;
    if (os_log_type_enabled(qword_101FCA8F8, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Reporting privacy proxy returned %@", &v4, 0xCu);
    }
  }
}

void sub_1013353C4(uint64_t a1, NSObject **a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_100FDD6A4();
}

void sub_101335434(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133544C(uint64_t a1, NSObject **a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_1013E6E68();
}

void sub_1013354BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013354D4(ServerUpdaterFactoryInterface *this)
{
  *this = off_101F2FF00;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServerUpdaterFactoryInterface::~ServerUpdaterFactoryInterface(this);
}

void sub_101335530(ServerUpdaterFactoryInterface *this)
{
  *this = off_101F2FF00;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServerUpdaterFactoryInterface::~ServerUpdaterFactoryInterface(this);

  operator delete();
}

void sub_101335670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  ctu::OsLogContext::~OsLogContext(&a10);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_101335780(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_101335818(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101335850(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_101335894(os_log_t *a1, char *__s, void *a3, uint64_t a4, uint64_t a5)
{
  if (!__s)
  {
    __TUAssertTrigger("!!cryptoLabel", 0, a3);
  }

  strlen(__s);
  Hkdf = CCKDFParametersCreateHkdf();
  if (Hkdf)
  {
    v10 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 67109120;
      HIDWORD(__p) = Hkdf;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "derive2x256bitKeys, CCKDFParametersCreateHkdf failed, %d", &__p, 8u);
    }

    return 0;
  }

  else
  {
    __p = 0;
    v20 = 0;
    v21 = 0;
    sub_1000CFAD0(&__p, 64);
    v12 = CCHKDFExpand();
    v11 = v12 == 0;
    if (v12)
    {
      v13 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "derive2x256bitKeys, CCHKDFExpand secret derivation failed, %d", buf, 8u);
      }
    }

    else
    {
      v18 = 0;
      memset(buf, 0, sizeof(buf));
      sub_100A23D78(buf, __p, __p + 32, 32);
      v14 = *a4;
      if (*a4)
      {
        *(a4 + 8) = v14;
        operator delete(v14);
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
      }

      *a4 = *buf;
      *(a4 + 16) = v18;
      v18 = 0;
      memset(buf, 0, sizeof(buf));
      sub_100A23D78(buf, __p + 32, v20, v20 - (__p + 32));
      v15 = *a5;
      if (*a5)
      {
        *(a5 + 8) = v15;
        operator delete(v15);
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
      }

      *a5 = *buf;
      *(a5 + 16) = v18;
    }

    CCKDFParametersDestroy();
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  return v11;
}

void sub_101335AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101335AF4(os_log_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, size_t a5@<X4>, _OWORD *a6@<X8>)
{
  *a6 = 0u;
  a6[1] = 0u;
  __p = 0uLL;
  v8 = 0;
  if (sub_101335BA0(a1, 0, a2, a3, a4, a5, &__p))
  {
    sub_1001E9734(a6, &__p);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_101335B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v11 + 24) == 1)
  {
    v13 = *v11;
    if (*v11)
    {
      *(v11 + 8) = v13;
      operator delete(v13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101335BA0(os_log_t *a1, CCOperation a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, char **a7)
{
  md = 0;
  v37 = 0;
  v38 = 0;
  sub_1000CFAD0(&md, 32);
  if (CC_SHA256(*a4, *(a4 + 8) - *a4, md))
  {
    v34 = 0;
    v35 = 0;
    iv = 0;
    sub_100A23D78(&iv, md, (md + 16), 16);
    v14 = *a3;
    v15 = *(a3 + 8) - *a3;
    cryptorRef = 0;
    v16 = CCCryptorCreateWithMode(a2, 4u, 0, 0, iv, v14, v15, 0, 0, 0, 2u, &cryptorRef);
    if (v16)
    {
      v17 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        LODWORD(dataOutMoved) = 67109120;
        HIDWORD(dataOutMoved) = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "msgProcessing, CCCryptorCreateWithMode failed with error %d", &dataOutMoved, 8u);
      }

      v18 = 0;
      goto LABEL_20;
    }

    OutputLength = CCCryptorGetOutputLength(cryptorRef, a6, 1);
    v21 = *a7;
    v22 = a7[1];
    v23 = v22 - *a7;
    if (OutputLength <= v23)
    {
      if (OutputLength < v23)
      {
        v22 = &v21[OutputLength];
        a7[1] = &v21[OutputLength];
      }
    }

    else
    {
      sub_10018D3CC(a7, OutputLength - v23);
      v21 = *a7;
      v22 = a7[1];
    }

    dataOutMoved = 0;
    v24 = CCCryptorUpdate(cryptorRef, a5, a6, v21, v22 - v21, &dataOutMoved);
    if (v24)
    {
      v25 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v40 = v24;
        v26 = "msgProcessing, CCCryptorUpdate failed with error %d";
LABEL_31:
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 8u);
      }
    }

    else
    {
      v27 = dataOutMoved;
      v28 = CCCryptorFinal(cryptorRef, &(*a7)[dataOutMoved], a7[1] - &(*a7)[dataOutMoved], &dataOutMoved);
      if (!v28)
      {
        v30 = dataOutMoved + v27;
        v31 = a7[1] - *a7;
        if (dataOutMoved + v27 <= v31)
        {
          if (v30 < v31)
          {
            a7[1] = &(*a7)[v30];
          }
        }

        else
        {
          sub_10018D3CC(a7, dataOutMoved + v27 - v31);
        }

        v18 = 1;
        goto LABEL_19;
      }

      v25 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v40 = v28;
        v26 = "msgProcessing, CCCryptorFinal failed with error %d";
        goto LABEL_31;
      }
    }

    v18 = 0;
LABEL_19:
    CCCryptorRelease(cryptorRef);
LABEL_20:
    if (iv)
    {
      v34 = iv;
      operator delete(iv);
    }

    goto LABEL_22;
  }

  v19 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    LOWORD(iv) = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "msgProcessing, CC_SHA256 failed", &iv, 2u);
  }

  v18 = 0;
LABEL_22:
  if (md)
  {
    v37 = md;
    operator delete(md);
  }

  return v18;
}

void sub_101335EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101335EFC(os_log_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, size_t a5@<X4>, _OWORD *a6@<X8>)
{
  *a6 = 0u;
  a6[1] = 0u;
  __p = 0uLL;
  v8 = 0;
  if (sub_101335BA0(a1, 1u, a2, a3, a4, a5, &__p))
  {
    sub_1001E9734(a6, &__p);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_101335F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v11 + 24) == 1)
  {
    v13 = *v11;
    if (*v11)
    {
      *(v11 + 8) = v13;
      operator delete(v13);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_101335FA8(NSObject **a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  v9 = 0uLL;
  v10 = 0;
  sub_10133606C(a1, &v9, a3, a4, a5);
}

void sub_10133603C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133606C(NSObject **a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = a5 + a2[1] - *a2 + 12;
  v7[1] = 0;
  v8 = v6;
  v7[0] = 0;
  *buf = 0;
  sub_1013369D4(v7, &v8, buf);
}

void sub_101336238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133625C(os_log_t *a1@<X0>, void *a2@<X1>, uint64_t *a5@<X4>, size_t a6@<X5>, _OWORD *a7@<X8>)
{
  v12[2] = a6;
  v8 = a5[1] - *a5;
  if (v8 > 0xB)
  {
    v10 = a2[1] - *a2;
    if (v10)
    {
      *buf = 0uLL;
      v12[0] = v10;
      *v13 = 0;
      sub_101336A78(buf, v12, v13);
    }

    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E empty src to encrypt - skipping", buf, 2u);
    }
  }

  else
  {
    v9 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "IV size must be at least 12 bytes, given %zu", buf, 0xCu);
    }
  }

  *a7 = 0u;
  a7[1] = 0u;
}

void sub_1013364B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013364EC(NSObject **a1, uint64_t *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  *buf = a2[1] - *a2;
  v7 = 0;
  sub_101336A78(v8, buf, &v7);
}

void sub_101336654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336674(os_log_t *a1@<X0>, size_t a4@<X3>, void *a5@<X8>)
{
  v8 = a4;
  *a5 = 0;
  a5[1] = 0;
  Hkdf = CCKDFParametersCreateHkdf();
  if (!Hkdf)
  {
    *buf = 0;
    v11 = 0;
    *v9 = 0;
    sub_1013369D4(buf, &v8, v9);
  }

  v7 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = Hkdf;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E failed to CCKDFParametersCreateHkdf: %d", buf, 8u);
  }
}

void sub_101336804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336824(os_log_t *a1@<X0>, size_t a4@<X3>, void *a5@<X8>)
{
  v8 = a4;
  *a5 = 0;
  a5[1] = 0;
  Hkdf = CCKDFParametersCreateHkdf();
  if (!Hkdf)
  {
    *buf = 0;
    v11 = 0;
    *v9 = 0;
    sub_1013369D4(buf, &v8, v9);
  }

  v7 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = Hkdf;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E failed to CCKDFParametersCreateHkdf: %d", buf, 8u);
  }
}

void sub_1013369B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336A60(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101336B04(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101336C10(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336C84(uint64_t a1, NSObject **a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_101336B1C();
}

void sub_101336D38(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101336D84(capabilities::ct *a1, const void **a2, uint64_t a3, const void **a4, uint64_t a5)
{
  if (capabilities::ct::getBasebandBootStrategy(a1) != 2)
  {
    sub_100010024(&v13, a2);
    sub_10005C7A4(&v12, a4);
    sub_101336B1C();
  }

  sub_100010024(&v15, a2);
  sub_10005C7A4(&v14, a4);
  (*(*a1 + 56))(a1, &v15, a3, 0, &v14, a5);
  sub_100005978(&v14);
  return sub_10001021C(&v15);
}

void sub_101336EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  if (a5)
  {
    (*(*a5 + 8))(a5, a2, a3);
  }

  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_101336F44()
{
  v2 = 0;
  v3 = 0;
  sub_101336B1C();
}

void sub_101336FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  if (a5)
  {
    (*(*a5 + 8))(a5, a2, a3);
  }

  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_101337048(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, const void **a5)
{
  sub_100010024(&v9, a2);
  sub_10005C7A4(&v8, a5);
  sub_101336B1C();
}

void sub_10133712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  if (a5)
  {
    (*(*a5 + 8))(a5, a2, a3);
  }

  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_101337180(uint64_t a1, const void **a2, const void **a3)
{
  sub_10005C7A4(&v6, a2);
  sub_10005C7A4(&v5, a3);
  sub_101333614(&v7);
}

void sub_1013371FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_1013372E0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013373AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 8);
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
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
  *&v24 = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, &v24);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_9:
  if (GestaltUtilityInterface::isIPad(v13))
  {
    isIPhone = 1;
    goto LABEL_21;
  }

  v16 = Registry::getServiceMap(*v3);
  v17 = v16;
  if (v6 < 0)
  {
    v18 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v6 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v16);
  *&v24 = v6;
  v21 = sub_100009510(&v17[1].__m_.__sig, &v24);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      goto LABEL_19;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v17);
  v22 = 0;
LABEL_19:
  isIPhone = GestaltUtilityInterface::isIPhone(v23);
  if (v22)
  {
    sub_100004A34(v22);
  }

LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (isIPhone)
  {
    sub_1010C0F24(&v24);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_101337578(_Unwind_Exception *exception_object)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013375EC(CarrierBundleFactoryInterface *this)
{
  *this = off_101F2FFF8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CarrierBundleFactoryInterface::~CarrierBundleFactoryInterface(this);
}

void sub_101337648(CarrierBundleFactoryInterface *this)
{
  *this = off_101F2FFF8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CarrierBundleFactoryInterface::~CarrierBundleFactoryInterface(this);

  operator delete();
}

const void **sub_1013376B8(uint64_t a1)
{
  *v7 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v7 = Mutable;
    v8 = 0;
    sub_1000296E0(&v8);
    Mutable = *v7;
  }

  sub_1001768B8(Mutable, @"MessageName", @"kCarrierBundleIDSMessageInstallIPCC");
  sub_100010180(&v5, v7);
  sub_1013377BC(&v6, v5);
  v3 = (a1 + 56);
  if ((a1 + 56) != &v6)
  {
    v8 = *v3;
    *v3 = v6;
    v6 = 0;
    sub_10002D760(&v8);
  }

  sub_10002D760(&v6);
  sub_10001021C(&v5);
  return sub_1000296E0(v7);
}

void sub_101337794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10001021C(&a9);
  sub_1000296E0(&a11);
  _Unwind_Resume(a1);
}

void sub_1013377BC(void *a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      *a1 = v4;
      CFRetain(v4);
      goto LABEL_8;
    }

    sub_101337FBC();
    v7 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v6;
      v8 = "Error archiving message dictionary : %{public}@";
      v9 = v7;
      v10 = 12;
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    }
  }

  else
  {
    sub_101337FBC();
    v11 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "nil data";
      v9 = v11;
      v10 = 2;
      goto LABEL_10;
    }
  }

  *a1 = 0;
LABEL_8:
}

void sub_101337918(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101337958(uint64_t a1)
{
  *v7 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v7 = Mutable;
    v8 = 0;
    sub_1000296E0(&v8);
    Mutable = *v7;
  }

  sub_1001768B8(Mutable, @"MessageName", @"kCarrierBundleIDSMessageRemoteBundleInfo");
  sub_100010180(&v5, v7);
  sub_1013377BC(&v6, v5);
  v3 = (a1 + 56);
  if ((a1 + 56) != &v6)
  {
    v8 = *v3;
    *v3 = v6;
    v6 = 0;
    sub_10002D760(&v8);
  }

  sub_10002D760(&v6);
  sub_10001021C(&v5);
  return sub_1000296E0(v7);
}

void sub_101337A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10001021C(&a9);
  sub_1000296E0(&a11);
  _Unwind_Resume(a1);
}

const void **sub_101337A5C(uint64_t a1, uint64_t *a2)
{
  *v9 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v9 = Mutable;
    v10 = 0;
    sub_1000296E0(&v10);
    Mutable = *v9;
  }

  sub_1001768B8(Mutable, @"MessageName", @"kCarrierBundleIDSMessageRemoteBundleInfo");
  sub_1002972A4(*v9, @"MessagePayload", *a2);
  sub_100010180(&v7, v9);
  sub_1013377BC(&v8, v7);
  v5 = (a1 + 56);
  if ((a1 + 56) != &v8)
  {
    v10 = *v5;
    *v5 = v8;
    v8 = 0;
    sub_10002D760(&v10);
  }

  sub_10002D760(&v8);
  sub_10001021C(&v7);
  return sub_1000296E0(v9);
}

void sub_101337B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10001021C(&a9);
  sub_1000296E0(&a11);
  _Unwind_Resume(a1);
}

const void **sub_101337B88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  theDict = 0;
  sub_10002D728(&v11, (a1 + 56));
  sub_101337D24(&theDict, v11);
  sub_10002D760(&v11);
  if (theDict)
  {
    *buf = 0;
    Value = CFDictionaryGetValue(theDict, @"MessagePayload");
    v4 = Value;
    if (Value && (v5 = CFGetTypeID(Value), v5 == CFDictionaryGetTypeID()))
    {
      *buf = v4;
      CFRetain(v4);
      if (v4)
      {
        *a2 = *buf;
        *buf = 0;
LABEL_10:
        sub_10001021C(buf);
        return sub_10001021C(&theDict);
      }
    }

    else
    {
      *buf = 0;
    }

    sub_101337FBC();
    v6 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not get the bundle info", v9, 2u);
    }

    *a2 = 0;
    goto LABEL_10;
  }

  sub_101337FBC();
  v7 = qword_101FCA908;
  if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to decode the message", buf, 2u);
  }

  *a2 = 0;
  return sub_10001021C(&theDict);
}

void sub_101337CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_101337D24(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v13];
    v5 = v13;
    if (v5)
    {
      sub_101337FBC();
      v6 = qword_101FCA908;
      if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error creating the UnArchiver : %{public}@", buf, 0xCu);
      }

      *a1 = 0;
    }

    else
    {
      [v4 setRequiresSecureCoding:1];
      v8 = objc_opt_class();
      v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:NSKeyedArchiveRootObjectKey];
      v11 = v10;
      if (v10)
      {
        *a1 = v10;
        CFRetain(v10);
      }

      else
      {
        sub_101337FBC();
        v12 = qword_101FCA908;
        if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "message dictionary is nil", buf, 2u);
        }

        *a1 = 0;
      }
    }
  }

  else
  {
    sub_101337FBC();
    v7 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Message data is NULL", buf, 2u);
    }

    *a1 = 0;
  }
}

void sub_101337FBC()
{
  if ((atomic_load_explicit(&qword_101FCA910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA910))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FCA908, kCtLoggingSystemName, "cb.ids.msg");

    __cxa_guard_release(&qword_101FCA910);
  }
}

uint64_t sub_101338054(uint64_t a1)
{
  theDict = 0;
  sub_10002D728(&v8, (a1 + 56));
  sub_101337D24(&theDict, v8);
  sub_10002D760(&v8);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"MessageName");
    v2 = Value;
    if (Value)
    {
      v3 = CFGetTypeID(Value);
      if (v3 != CFStringGetTypeID())
      {
        v2 = 0;
      }
    }

    if (CFStringCompare(v2, @"kCarrierBundleIDSMessageInstallIPCC", 1uLL))
    {
      v4 = 2 * (CFStringCompare(v2, @"kCarrierBundleIDSMessageRemoteBundleInfo", 1uLL) == kCFCompareEqualTo);
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    sub_101337FBC();
    v5 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to decode the message", v7, 2u);
    }

    v4 = 0;
  }

  sub_10001021C(&theDict);
  return v4;
}

void sub_101338170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_101338198(uint64_t a1)
{
  if (!*(a1 + 456))
  {
    __p[0] = 1;
    __p[1] = (a1 + 584);
    if (*(a1 + 639) < 0)
    {
      **(a1 + 616) = 0;
      *(a1 + 624) = 0;
    }

    else
    {
      *(a1 + 616) = 0;
      *(a1 + 639) = 0;
    }

    if (*(a1 + 663) < 0)
    {
      **(a1 + 640) = 0;
      *(a1 + 648) = 0;
    }

    else
    {
      *(a1 + 640) = 0;
      *(a1 + 663) = 0;
    }

    sub_101338788(__p);
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 336));
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
  __p[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, __p);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_11:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_12:
  sub_100004AA0(__p, (a1 + 8));
  v13 = __p[0];
  v12 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
  }

  v16[0] = off_101F30098;
  v16[1] = v13;
  v16[2] = v12;
  v16[3] = v16;
  v15 = 14;
  strcpy(__p, "SystemObserver");
  (*(*v10 + 56))(v10, v16, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000DC854(v16);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1013383B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000DC854(&a15);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

void sub_101338408(NSObject **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4.fObj.fObj = &object;
  NotifySubscription::NotifySubscription(v7, "com.apple.carplay.connected", v4);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 8) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  *(a2 + 16) = v8;
  *(a2 + 24) = 1;
  NotifySubscription::~NotifySubscription(v7);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_101338488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1013384A0@<X0>(void *a2@<X8>, capabilities::ct *x0_0@<X0>)
{
  result = sub_1013384F4(x0_0);
  if (result)
  {
    sub_101338D5C();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1013384F4(capabilities::ct *a1)
{
  if (capabilities::ct::supportsSubwayDetection(a1))
  {
    return 1;
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
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
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
LABEL_11:
  isWatch = GestaltUtilityInterface::isWatch(v11);
  if (v10)
  {
    sub_100004A34(v10);
  }

  return isWatch;
}

void sub_1013385F0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10133860C(uint64_t a1)
{
  result = sub_1013384F4((a1 + 336));
  if (result)
  {
    result = *(a1 + 912);
    if (result)
    {
      v3 = *(*result + 16);

      return v3();
    }
  }

  return result;
}

uint64_t sub_10133867C(uint64_t a1)
{
  if (!sub_1013384F4((a1 + 336)))
  {
    return 0;
  }

  v2 = *(a1 + 912);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 64);

  return v3();
}

id sub_1013386F0(uint64_t a1)
{
  v2 = [CallStateObserver alloc];
  v3 = *(a1 + 24);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = [(CallStateObserver *)v2 initWithQueue:&object];
  *(a1 + 216) = v4;
  if (object)
  {
    dispatch_release(object);
    v4 = *(a1 + 216);
  }

  return [(CallStateObserver *)v4 registerForCallIsActiveNotification];
}

void sub_101338760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

id sub_101338778(uint64_t a1)
{
  result = *(a1 + 216);
  if (result)
  {
    return [result getCallIsActiveState];
  }

  return result;
}

uint64_t sub_101338788(uint64_t a1)
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

void *sub_1013387F0(void *a1)
{
  *a1 = off_101F30098;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10133883C(void *a1)
{
  *a1 = off_101F30098;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101338914(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F30098;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10133894C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10133895C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10133899C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(v9, *a3, *(a3 + 8));
        }

        else
        {
          *v9 = *a3;
          v10 = *(a3 + 16);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          v12 = *(a2 + 16);
        }

        v13[0] = 0;
        v13[1] = 0;
        sub_100004AA0(v13, (v8 + 8));
        operator new();
      }

      sub_100004A34(v7);
    }
  }
}

void sub_101338B94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 39) < 0)
  {
    operator delete(*v17);
  }

  v19 = *(v16 + 8);
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_10004F058(a1);
}

uint64_t sub_101338C08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101338C54(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v6[0] = 1;
  v2 = *v1;
  v6[1] = *v1 + 584;
  std::string::operator=((v2 + 616), (v1 + 16));
  std::string::operator=((v2 + 640), (v1 + 40));
  sub_101338788(v6);
  sub_101338CE8(&v5);
  return sub_1000049E0(&v4);
}

void sub_101338CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_101338788(&a12);
  sub_101338CE8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101338CE8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void *sub_101338DC8(void *a1, dispatch_object_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101EDD960;
  sub_101338E24((a1 + 3), a2);
  return a1;
}

uint64_t sub_101338E24(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    *a1 = &off_101EE4EA8;
    *(a1 + 8) = v3;
    dispatch_retain(v3);
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
    dispatch_release(v3);
  }

  else
  {
    *a1 = &off_101EE4EA8;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
  }

  return a1;
}

void sub_101338EC4(void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_101338F50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101338F80(uint64_t a1, void *a2, int a3, void *a4)
{
  v8 = (a1 + 8);
  v9 = "roam.user.?";
  if (a3 == 2)
  {
    v9 = "roam.user.2";
  }

  if (a3 == 1)
  {
    v10 = "roam.user.1";
  }

  else
  {
    v10 = v9;
  }

  ctu::OsLogContext::OsLogContext(&v14, kCtLoggingSystemName, v10);
  ctu::OsLogLogger::OsLogLogger(v15, &v14);
  ctu::OsLogLogger::OsLogLogger(v8, v15);
  ctu::OsLogLogger::~OsLogLogger(v15);
  ctu::OsLogContext::~OsLogContext(&v14);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F30118;
  *(a1 + 32) = *a2;
  v11 = a2[1];
  *(a1 + 40) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = a3;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = *a4;
  v12 = a4[1];
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  Registry::getNotificationSenderFactory(&v14, *(a1 + 32));
  (*(*v14.var0 + 64))(v14.var0);
  if (v14.var1.fRef)
  {
    sub_100004A34(v14.var1.fRef);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_101339104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  v15 = *(v12 + 9);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(v12 + 5);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(v12 + 3);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  ctu::OsLogLogger::~OsLogLogger(v13);
  UserRoamingSettingInterface::~UserRoamingSettingInterface(v12);
  _Unwind_Resume(a1);
}

void sub_101339180(uint64_t a1)
{
  *a1 = off_101F30118;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 72);
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

  UserRoamingSettingInterface::~UserRoamingSettingInterface(a1);
}

void sub_10133921C(uint64_t a1)
{
  sub_101339180(a1);

  operator delete();
}

uint64_t sub_101339254(capabilities::ct *a1)
{
  if (capabilities::ct::supportsGemini(a1))
  {

    return sub_10133A1A0(a1);
  }

  else
  {

    return sub_10133A05C(a1);
  }
}

void sub_1013392B0(uint64_t a1)
{
  if (capabilities::ct::supportsGemini(a1))
  {
    PersonalityIdFromSlotId();
    std::string::operator=((a1 + 96), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = sub_10133A05C(a1);
    if ((v2 & 0x100) != 0)
    {
      memset(&__p, 0, sizeof(__p));
      PersonalityIdFromSlotId();
      v3 = *(a1 + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Start InternationalRoamingEDGE migration for %s", buf, 0xCu);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v19 = *(a1 + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "PersonalityId is not valid", buf, 2u);
        }

        goto LABEL_41;
      }

      if ((isReal() & 1) == 0)
      {
        v20 = *(a1 + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "PersonalityId is not real", buf, 2u);
        }

        goto LABEL_41;
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
LABEL_19:
            v16 = *(a1 + 8);
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 0;
            v17 = "Failed to get Personal Wallet interface";
            goto LABEL_34;
          }

LABEL_29:
          v21 = &kCFBooleanTrue;
          if ((v2 & 1) == 0)
          {
            v21 = &kCFBooleanFalse;
          }

          if (!(*(*v14 + 48))(v14, &__p, @"InternationalRoamingEDGE", *v21, 0, 0, 1, 0))
          {
            if (*(a1 + 53) != (v2 & 0xFF00) >> 8 || *(a1 + 52) != v2)
            {
              *(a1 + 52) = v2;
              sub_10133A408(a1);
            }

            sub_10133A32C(a1);
            goto LABEL_39;
          }

          v16 = *(a1 + 8);
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
LABEL_39:
            if ((v15 & 1) == 0)
            {
              sub_100004A34(v13);
            }

LABEL_41:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            return;
          }

          *buf = 0;
          v17 = "Could not store InternationalRoamingEDGE";
LABEL_34:
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
          goto LABEL_39;
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
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    v18 = *(a1 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Migration not needed for user's data roaming setting", &__p, 2u);
    }
  }
}

void sub_101339670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013396D0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (__PAIR64__(*(a1 + 53), *(a1 + 52)) == (a2 | 0x100000000))
  {
    return 0;
  }

  *(a1 + 52) = a2 | 0x100;
  sub_10133A408(a1);
  *(a1 + 56) = v3;
  v7 = *(a1 + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    *buf = 136315394;
    *&buf[4] = CSIBOOLAsString(a2);
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Raw roaming setting has changed to %s due to %s; saving it in preferences", buf, 0x16u);
  }

  if ((capabilities::ct::supportsGemini(v8) & 1) == 0)
  {
    v26 = *(a1 + 64);
    v25 = (a1 + 64);
    v24 = v26;
    if (*(v25 - 4) == 2)
    {
      v27 = @"InternationalRoamingEDGE-2";
    }

    else
    {
      v27 = @"InternationalRoamingEDGE";
    }

    v28 = &kCFBooleanTrue;
    if (!a2)
    {
      v28 = &kCFBooleanFalse;
    }

    (*(*v24 + 16))(v24, v27, *v28, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(**v25 + 48))(*v25, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    goto LABEL_38;
  }

  memset(buf, 0, sizeof(buf));
  PersonalityIdFromSlotId();
  v9 = buf[23];
  if ((buf[23] & 0x80u) != 0)
  {
    v9 = *&buf[8];
  }

  if (!v9)
  {
    v29 = *(a1 + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *v35 = 0;
      _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "PersonalityId is not valid", v35, 2u);
    }

    v30 = 0;
    goto LABEL_34;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
  *v35 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, v35);
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
LABEL_15:
        v20 = *(a1 + 8);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        *v35 = 0;
        v21 = "Failed to get Personal Wallet interface";
        v22 = v20;
        v23 = 2;
        goto LABEL_45;
      }

      goto LABEL_28;
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
    goto LABEL_15;
  }

LABEL_28:
  v31 = &kCFBooleanTrue;
  if (!a2)
  {
    v31 = &kCFBooleanFalse;
  }

  if ((*(*v18 + 48))(v18, buf, @"InternationalRoamingEDGE", *v31, 0, 0, 1, 0))
  {
    v32 = *(a1 + 8);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v34 = buf;
    if ((buf[23] & 0x80u) != 0)
    {
      v34 = *buf;
    }

    *v35 = 136315138;
    *&v35[4] = v34;
    v21 = "Could not store InternationalRoamingEDGE state for %s";
    v22 = v32;
    v23 = 12;
LABEL_45:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, v35, v23);
LABEL_32:
    v30 = 0;
    if (v19)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v30 = 1;
  if ((v19 & 1) == 0)
  {
LABEL_33:
    sub_100004A34(v17);
  }

LABEL_34:
  if ((buf[23] & 0x80000000) == 0)
  {
    if (!v30)
    {
      return 1;
    }

    goto LABEL_38;
  }

  operator delete(*buf);
  if (v30)
  {
LABEL_38:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.commcenter.InternationalRoamingEDGE.changed", 0, 0, 0);
  }

  return 1;
}

void sub_101339B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101339B60(capabilities::ct *a1, uint64_t a2)
{
  if (capabilities::ct::supportsGemini(a1))
  {
    PersonalityIdFromSlotId();
    v3 = *(a1 + 1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "PersonalityId is not valid", buf, 2u);
    }
  }

  return 0;
}

void sub_101339D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101339DB0(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
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
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get Personal Wallet interface", buf, 2u);
    }

    v15 = 0;
    v16 = 0;
    if (v13)
    {
      return v16 | (v15 << 8);
    }

LABEL_23:
    sub_100004A34(v11);
    return v16 | (v15 << 8);
  }

LABEL_13:
  v21 = 0;
  (*(*v12 + 64))(&cf, v12, a2, @"InternationalRoamingEDGE", 0, 0, 1);
  v23 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v22 = 0;
  *buf = 0;
  sub_10002FE1C(buf, &v23);
  if (*buf)
  {
    sub_1005DDAA8(&v22, buf);
  }

  sub_100045C8C(buf);
  v17 = v22;
  v21 = v22;
  v22 = 0;
  sub_100045C8C(&v22);
  sub_10000A1EC(&v23);
  sub_10000A1EC(&cf);
  if (v17)
  {
    v16 = CFBooleanGetValue(v17) != 0;
    v15 = 1;
  }

  else
  {
    v18 = *(a1 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get InternationalRoamingEDGE from Personal Wallet", buf, 2u);
    }

    v16 = 0;
    v15 = 0;
  }

  sub_100045C8C(&v21);
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

  return v16 | (v15 << 8);
}

void sub_10133A004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10133A05C(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 48) == 2)
  {
    v1 = @"InternationalRoamingEDGE-2";
  }

  else
  {
    v1 = @"InternationalRoamingEDGE";
  }

  (*(**(a1 + 64) + 40))(&cf, *(a1 + 64), v1, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v2 = cf;
  if (!cf)
  {
    goto LABEL_12;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFBooleanGetTypeID())
  {
    v2 = cf;
    if (cf)
    {
      v5 = CFGetTypeID(cf);
      if (v5 == CFNumberGetTypeID())
      {
        v11 = 0;
        ctu::cf::assign(&v11, v2, v6);
        LODWORD(v2) = v11 != 0;
        goto LABEL_10;
      }

      LODWORD(v2) = 0;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  ctu::cf::assign(&v10, v2, v4);
  LODWORD(v2) = v10;
LABEL_10:
  v7 = 1;
LABEL_13:
  sub_10000A1EC(&cf);
  return v2 | (v7 << 8);
}

uint64_t sub_10133A1A0(uint64_t a1)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  PersonalityIdFromSlotId();
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "PersonalityId is not valid", v4, 2u);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_10133A270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133A28C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Data Roaming preference is being reset as Network Settings have been reset", v5, 2u);
  }

  if (*(a1 + 53) == 1)
  {
    *(a1 + 53) = 0;
  }

  if ((capabilities::ct::supportsGemini(v3) & 1) == 0)
  {
    sub_10133A32C(a1);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.commcenter.InternationalRoamingEDGE.changed", 0, 0, 0);
}

uint64_t sub_10133A32C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 48) == 2)
  {
    v3 = @"InternationalRoamingEDGE-2";
  }

  else
  {
    v3 = @"InternationalRoamingEDGE";
  }

  (*(*v2 + 16))(v2, v3, 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v4 = *(**(a1 + 64) + 48);

  return v4();
}

uint64_t sub_10133A408(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 53) == 1)
  {
    v2 = *(a1 + 52) == 1;
  }

  return (*(**(a1 + 80) + 128))(*(a1 + 80), *(a1 + 48), &v2);
}

void sub_10133A4F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133A534(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10133A56C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10133A59C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10133A5DC(uint64_t a1)
{
  sub_100004AA0(&v5, (a1 + 16));
  v2 = v5;
  v1 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1174405120;
  v3[2] = sub_10133A6D0;
  v3[3] = &unk_101F30238;
  v3[4] = v2;
  v4 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0(524438, v3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10133A6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133A6D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = v5[1];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sending Link Quality Metric", v8, 2u);
        }

        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = (*(*v5 + 72))(v5);
        (*(*v5 + 96))(v5, v7);
        sub_100004A34(v4);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10133A7C8(_Unwind_Exception *a1)
{
  sub_100004A34(v1);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10133A7E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10133A800(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10133A810(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "msg.tr.format");
  ctu::OsLogLogger::OsLogLogger(__p, buf);
  ctu::OsLogLogger::OsLogLogger(a1, __p);
  ctu::OsLogLogger::~OsLogLogger(__p);
  ctu::OsLogContext::~OsLogContext(buf);
  sub_10000501C((a1 + 8), "TerminalRegistrationMessageFormat");
  *(a1 + 32) = 0u;
  v4 = (a1 + 56);
  *(a1 + 80) = 0u;
  v5 = (a1 + 80);
  *(a1 + 96) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  if (*a2)
  {
    ctu::cf::assign();
    v6 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v7 = *(a1 + 32);
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Terminal Registration Message Format: %s", buf, 0xCu);
    }
  }

  v19 = 0;
  v8 = _CFCopySystemVersionDictionary();
  v19 = v8;
  if (v8)
  {
    v18 = 0;
    *buf = CFDictionaryGetValue(v8, _kCFSystemVersionProductVersionKey);
    sub_100060DE8(&v18, buf);
    if (v18)
    {
      ctu::cf::assign();
    }

    memset(buf, 0, sizeof(buf));
    sub_1005A8358(buf);
    v9 = *buf;
    if (*&buf[8] == *buf)
    {
      goto LABEL_20;
    }

    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    ctu::base64::encode();
    v10 = HIBYTE(v17);
    v11 = HIBYTE(v17);
    if (v17 < 0)
    {
      v10 = __p[1];
    }

    if (v10)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*v5);
      }

      *v5 = *__p;
      *(a1 + 96) = v17;
      goto LABEL_19;
    }

    v12 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to base64 encode product id data", v15, 2u);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((v11 & 0x80) == 0)
    {
LABEL_19:
      v9 = *buf;
LABEL_20:
      if (v9)
      {
        *&buf[8] = v9;
        operator delete(v9);
      }

      sub_100005978(&v18);
      goto LABEL_23;
    }

    operator delete(__p[0]);
    goto LABEL_19;
  }

LABEL_23:
  v13 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 79) < 0)
    {
      v4 = *v4;
    }

    if (*(a1 + 103) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I OS Version = %s, Model = %s", buf, 0x16u);
  }

  sub_10001021C(&v19);
  return a1;
}

void sub_10133AAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_100005978(&a13);
  sub_10001021C(&a14);
  if (*(v16 + 103) < 0)
  {
    operator delete(*v19);
  }

  if (*(v16 + 79) < 0)
  {
    operator delete(*v17);
  }

  if (*(v16 + 55) < 0)
  {
    operator delete(*v18);
  }

  if (*(v16 + 31) < 0)
  {
    operator delete(*(v16 + 8));
  }

  ctu::OsLogLogger::~OsLogLogger(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_10133ABAC(uint64_t a1, __int128 *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "msg.tr.response");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger(a1, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  sub_10000501C((a1 + 8), "TerminalRegistrationModel");
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v4;
  }

  return a1;
}

void sub_10133AC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (*(v12 + 31) < 0)
  {
    operator delete(*(v12 + 8));
  }

  ctu::OsLogLogger::~OsLogLogger(v12);
  _Unwind_Resume(a1);
}

BOOL sub_10133ACA4(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 55);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 == 2)
    {
      LOBYTE(v3) = *v1;
      v4 = *v1;
      v5 = (a1 + 32);
      goto LABEL_6;
    }

    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    return 0;
  }

  v6 = *(a1 + 40);
  if (v6 != 2)
  {
    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v2 = v6;
LABEL_24:
      v13 = 134217984;
      v14 = v2;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid Terminal Registration Response size of %lu", &v13, 0xCu);
    }

    return 0;
  }

  v3 = *v1;
  v4 = **v1;
  v5 = *v1;
LABEL_6:
  v8 = (v4 - 1) < 3 && v5[1] == 4;
  v9 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "an invalid";
    if (v8)
    {
      v10 = "a valid";
    }

    if ((v2 & 0x80000000) != 0)
    {
      LOBYTE(v3) = **v1;
    }

    v13 = 136315394;
    v14 = v10;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received %s Terminal Registration Response of Protocol Version %d", &v13, 0x12u);
  }

  return v8;
}

uint64_t sub_10133AE44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "msg.tr");
  ctu::OsLogLogger::OsLogLogger(v10, &v9);
  ctu::OsLogLogger::OsLogLogger(a1, v10);
  ctu::OsLogLogger::~OsLogLogger(v10);
  ctu::OsLogContext::~OsLogContext(&v9);
  v6 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C((a1 + 24), "TerminalRegistrationModel");
  *(a1 + 56) = 0u;
  *(a1 + 48) = v4;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v7 = subscriber::simSlotAsInstance();
  *(a1 + 152) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_%d", @"TerminalRegistration", v7);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 11;
  return a1;
}

void sub_10133AF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v16 = *(v14 + 2);
  if (v16)
  {
    sub_100004A34(v16);
  }

  ctu::OsLogLogger::~OsLogLogger(v14);
  _Unwind_Resume(a1);
}

const void **sub_10133AFBC(uint64_t a1)
{
  theDict = 0;
  *buf = CFPreferencesCopyValue(*(a1 + 152), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100138C38(&theDict, buf);
  v2 = theDict;
  v3 = *a1;
  v4 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Restored TerminalRegistrationData", buf, 2u);
      v2 = theDict;
    }

    v10 = 0;
    *buf = CFDictionaryGetValue(v2, @"Identifier");
    sub_100060DE8(&v10, buf);
    v9 = 0;
    *buf = CFDictionaryGetValue(theDict, @"Device");
    sub_100060DE8(&v9, buf);
    if (v10 && v9)
    {
      ctu::cf::assign();
      ctu::cf::assign();
    }

    else
    {
      if (*(a1 + 79) < 0)
      {
        operator delete(*(a1 + 56));
      }

      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      if (*(a1 + 127) < 0)
      {
        operator delete(*(a1 + 104));
      }

      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      v5 = *a1;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "";
        if (v10)
        {
          v7 = "";
        }

        else
        {
          v7 = " Identifier Info";
        }

        if (!v9)
        {
          v6 = " DeviceInfo";
        }

        *buf = 136315394;
        *&buf[4] = v7;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Missing%s%s: Ignoring stored Terminal Information", buf, 0x16u);
      }
    }

    sub_100005978(&v9);
    sub_100005978(&v10);
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I No persisted TerminalRegistrationData", buf, 2u);
  }

  return sub_10001021C(&theDict);
}

void sub_10133B220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

const void **sub_10133B25C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  (*(*v12 + 80))(&v16, v12, *(a1 + 48), 1, @"SMSSettings", 0, 0);
  sub_100010180(&cf, &v16);
  sub_10000A1EC(&v16);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v15 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_101151F58(&v15, a2);
  sub_10001021C(&v15);
  return sub_10001021C(&cf);
}

void sub_10133B3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10001021C(&a9);
  sub_10001021C(&a11);
  _Unwind_Resume(a1);
}

void sub_10133B414(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v2 = *(a1 + 152);

  CFPreferencesSetValue(v2, 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

void sub_10133B4B4(uint64_t a1)
{
  if ((*(a1 + 79) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 79))
  {
LABEL_18:
    sub_10133B414(a1);
    CFPreferencesSynchronize(@"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 79);
      if (v7 < 0)
      {
        v7 = *(a1 + 64);
      }

      v8 = *(a1 + 103);
      if (v8 < 0)
      {
        v8 = *(a1 + 88);
      }

      *buf = 134218240;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No identifier information to perist, Identifier length = %lu, Device length = %lu", buf, 0x16u);
    }

    return;
  }

  if ((*(a1 + 103) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 103))
  {
    goto LABEL_18;
  }

  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Persisting TerminalRegistrationData", buf, 2u);
  }

  v12 = 0;
  values[0] = 0;
  v3 = ctu::cf::convert_copy();
  if (v3)
  {
    v12 = values[0];
    *buf = 0;
    sub_100005978(buf);
  }

  v11 = 0;
  values[0] = 0;
  if ((ctu::cf::convert_copy() & 1) != 0 && (v11 = values[0], *buf = 0, sub_100005978(buf), v3))
  {
    value = 0;
    *buf = *off_101F30268;
    values[0] = v12;
    values[1] = v11;
    v4 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v4)
    {
      value = v4;
      *v13 = 0;
      sub_10001021C(v13);
      CFPreferencesSetValue(*(a1 + 152), value, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      CFPreferencesSynchronize(@"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }

    else
    {
      v9 = *a1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Unable to create Terminal Registration Information", v13, 2u);
      }
    }

    sub_10001021C(&value);
  }

  else
  {
    v5 = *a1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid Terminal Registration Info", buf, 2u);
    }
  }

  sub_100005978(&v11);
  sub_100005978(&v12);
}

void sub_10133B7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_10001021C(va);
  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

void sub_10133B800(uint64_t a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping Terminal Registration Data", &v11, 2u);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v3 = *v3;
    }

    v11 = 136315138;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Destination Address: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 160);
    v11 = 67109120;
    LODWORD(v12) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Total SMS tries: %u", &v11, 8u);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CSIBOOLAsString(*(a1 + 164));
    v11 = 136315138;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Ims ready: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CSIBOOLAsString(*(a1 + 165));
    v11 = 136315138;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SMS online: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = CSIBOOLAsString(*(a1 + 166));
    v11 = 136315138;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SMSC available: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CSIBOOLAsString(*(a1 + 167));
    v11 = 136315138;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Attached: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CSIBOOLAsString(*(a1 + 168));
    v11 = 136315138;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Roaming: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CSIBOOLAsString(*(a1 + 172) != 0);
    v11 = 136315138;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Camped RAT: %s", &v11, 0xCu);
  }
}

BOOL sub_10133BB0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v6 = *v6;
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (*(a2 + 47) >= 0)
    {
      v8 = a2 + 3;
    }

    else
    {
      v8 = a2[3];
    }

    v28 = 136315906;
    v29 = v5;
    v30 = 2080;
    v31 = v6;
    v32 = 2080;
    v33 = v7;
    v34 = 2080;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Comparing Identifier (%s,%s) to (%s,%s)", &v28, 0x2Au);
  }

  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = *(a1 + 79);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 64);
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? a2 : *a2;
  v14 = v12 >= 0 ? (a1 + 56) : *(a1 + 56);
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = *(a2 + 47);
  if (v15 >= 0)
  {
    v16 = *(a2 + 47);
  }

  else
  {
    v16 = a2[4];
  }

  v17 = *(a1 + 103);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a1 + 88);
  }

  if (v16 != v17)
  {
    return 0;
  }

  v21 = a2[3];
  v20 = a2 + 3;
  v19 = v21;
  if (v15 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  v25 = *(a1 + 80);
  v24 = (a1 + 80);
  v23 = v25;
  if (v18 >= 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v23;
  }

  return memcmp(v22, v26, v16) == 0;
}

std::string *sub_10133BCC4(uint64_t a1, std::string *a2)
{
  result = sub_10133BB0C(a1, a2);
  if ((result & 1) == 0)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Got a new Terminal Identifier", v6, 2u);
    }

    std::string::operator=((a1 + 56), a2);
    std::string::operator=((a1 + 80), a2 + 1);
    return std::string::operator=((a1 + 104), a2 + 2);
  }

  return result;
}

uint64_t sub_10133BD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[1] = 0;
  v11 = 0;
  cf[0] = 0;
  sub_10133B25C(a1, cf);
  if (!cf[0])
  {
    v5 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v6 = "Invalid Carrier settings";
    goto LABEL_6;
  }

  theDict = cf[0];
  CFRetain(cf[0]);
  *buf = 0;
  v12.__locale_ = CFDictionaryGetValue(theDict, @"DestinationAddress");
  sub_100060DE8(buf, &v12.__locale_);
  v4 = *buf;
  if (*buf)
  {
    ctu::cf::assign();
  }

  else
  {
    v7 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12.__locale_) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Terminal Registration Settings without Destination Address, invalid", &v12, 2u);
    }
  }

  sub_100005978(buf);
  sub_10001021C(&theDict);
  if (v4)
  {
    if (*(a1 + 169) == 1)
    {
      if (CFDictionaryGetValue(cf[0], @"RegistrationOverIMS"))
      {
        operator new();
      }

      v5 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v6 = "Terminal Registration IMS settings not found.";
LABEL_6:
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, buf, 2u);
      }
    }

    else
    {
      if (CFDictionaryGetValue(cf[0], @"Registration"))
      {
        operator new();
      }

      v5 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v6 = "Terminal Registration settings not found.";
        goto LABEL_6;
      }
    }
  }

LABEL_18:
  sub_10001021C(cf);
  if (v11)
  {
    sub_100004A34(v11);
  }

  return 0;
}

void sub_10133CA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, uint64_t a28, std::__shared_weak_count *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1000CFBA0(&a9);
  sub_10001021C(&a27);
  if (a29)
  {
    sub_100004A34(a29);
  }

  _Unwind_Resume(a1);
}

void sub_10133CC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10133CD70(va);
  _Unwind_Resume(a1);
}

BOOL sub_10133CC60(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  (*(*v2 + 192))(__p);
  sub_10133ABAC(v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = sub_10133ACA4(v7);
  sub_10133CD1C(v7);
  return v3;
}

void sub_10133CD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133CD1C(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

void ***sub_10133CD70(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10133CE78(v2);
    operator delete();
  }

  return a1;
}

void sub_10133CDBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void **sub_10133CDF4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10133CE78(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10133CE38(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10133CE78(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

void sub_10133CEEC(uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_10133D244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, dispatch_object_t object, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_10133D3D0(uint64_t a1)
{
  *a1 = off_101F30300;
  sub_1002FED80(a1 + 168);
  sub_1000279DC((a1 + 152));
  sub_100010250((a1 + 144));
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10133D478(uint64_t a1)
{
  sub_10133D3D0(a1);

  operator delete();
}

void sub_10133D4B0(void *a1, dispatch_object_t object)
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

const void **sub_10133D5B0(uint64_t a1, CFDictionaryRef *a2)
{
  Value = CFDictionaryGetValue(*a2, @"storeActivationMode");
  buf[0] = 0;
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v5, v7);
    v8 = buf[0];
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 112) = v8;
  v9 = CFDictionaryGetValue(*a2, @"isManualCheck");
  v10 = v9;
  buf[0] = 0;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v10, v12);
    }
  }

  *(a1 + 113) = buf[0];
  *v139 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v14 = *v139;
    *v139 = Mutable;
    *buf = v14;
    sub_1000296E0(buf);
  }

  if (*(a1 + 113))
  {
    goto LABEL_36;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
      if (!v23)
      {
        goto LABEL_17;
      }

LABEL_22:
      *&v170 = 0;
      (*(*v23 + 40))(buf, v23, @"kNextDesktopHostCarrierBundleUpdateCheck", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100432018(&v170, buf);
      sub_10000A1EC(buf);
      if (v170)
      {
        Current = CFAbsoluteTimeGetCurrent();
        AbsoluteTime = CFDateGetAbsoluteTime(v170);
        v28 = *(a1 + 40);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (Current < AbsoluteTime)
        {
          if (v29)
          {
            *buf = 138543362;
            *&buf[4] = v170;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Next update check is: %{public}@. Will check update then.", buf, 0xCu);
          }

          v30 = 0;
LABEL_33:
          sub_1003EC530(&v170);
          if ((v24 & 1) == 0)
          {
            sub_100004A34(v22);
          }

          if ((v30 & 1) == 0)
          {
            goto LABEL_228;
          }

LABEL_36:
          if ((*(a1 + 200) & 1) == 0)
          {
            *(a1 + 200) = 1;
            v32 = *(a1 + 192);
            if (v32)
            {
              (*(*v32 + 48))(v32, a1 + 200);
            }
          }

          cf = 0;
          sub_1010AF2C4((a1 + 48), &cf);
          v33 = cf;
          if (!cf)
          {
            sub_10133F96C(buf, 1u);
            sub_100209DF4(*v139, @"status", *buf);
            sub_100029A48(buf);
            v35 = *(a1 + 80);
            sub_100010180(&v136, v139);
            (*(*v35 + 32))(v35, &v136);
            sub_10001021C(&v136);
            goto LABEL_70;
          }

          v34 = *(a1 + 40);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Received URL: %{public}@", buf, 0xCu);
            v33 = cf;
            v135 = cf;
            if (!cf)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v135 = v33;
          }

          CFRetain(v33);
LABEL_46:
          *&v170 = 0;
          v36 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (v36)
          {
            *&v170 = v36;
            *buf = 0;
            sub_1000279DC(buf);
          }

          if (v135)
          {
            v168[0] = 0;
            v37 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v37)
            {
              v168[0] = v37;
              *buf = 0;
              sub_1000296E0(buf);
              v37 = v168[0];
            }

            sub_1001768B8(v37, @"URL", v135);
            sub_1002E0298(v168[0], @"StripLegacyVersionXML", kCFBooleanTrue);
            sub_10039D64C(v170, v168[0]);
            sub_10002A7D8(&v166, &v170);
            sub_1000296E0(v168);
          }

          else
          {
            sub_10002A7D8(&v166, &v170);
          }

          sub_1000279DC(&v170);
          sub_100A33784(*v139, @"URLList", v166);
          sub_100010250(&v166);
          sub_100005978(&v135);
          sub_10133F96C(buf, 0);
          sub_100209DF4(*v139, @"status", *buf);
          sub_100029A48(buf);
          v38 = *(a1 + 80);
          sub_100010180(&v134, v139);
          LOBYTE(v38) = (*(*v38 + 32))(v38, &v134);
          sub_10001021C(&v134);
          if (v38)
          {
            v148 = 0;
            (*(**(a1 + 80) + 24))(&v148);
            if (!v148)
            {
              v55 = *(a1 + 40);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I Invalid request. Disconnect.", buf, 2u);
              }

              sub_10133F4C8(a1);
              goto LABEL_247;
            }

            *v147 = 0;
            v39 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v39)
            {
              v40 = *v147;
              *v147 = v39;
              *buf = v40;
              sub_1000296E0(buf);
            }

            v146 = v148;
            if (v148)
            {
              CFRetain(v148);
            }

            v41 = sub_10133F9F8(a1, &v146);
            sub_10001021C(&v146);
            if ((v41 & 1) == 0)
            {
              v56 = *(a1 + 40);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v148;
                _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to receive bytes for %{public}@", buf, 0xCu);
              }

              sub_10133F96C(buf, 2u);
              sub_100209DF4(*v147, @"status", *buf);
              sub_100029A48(buf);
              v57 = *(a1 + 40);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = *v147;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Sending reply for transfer failure: %{public}@", buf, 0xCu);
              }

              v58 = *(a1 + 80);
              sub_100010180(buf, v147);
              (*(*v58 + 32))(v58, buf);
              sub_10001021C(buf);
              sub_10133F4C8(a1);
LABEL_246:
              sub_1000296E0(v147);
LABEL_247:
              sub_10001021C(&v148);
              goto LABEL_248;
            }

            sub_10133F96C(buf, 0);
            sub_100209DF4(*v147, @"status", *buf);
            sub_100029A48(buf);
            v42 = *(a1 + 40);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = *v147;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Sending Success after version.xml transfer: %{public}@", buf, 0xCu);
            }

            v43 = *(a1 + 80);
            sub_100010180(&v145, v147);
            (*(*v43 + 32))(v43, &v145);
            sub_10001021C(&v145);
            v44 = Registry::getServiceMap(*(a1 + 48));
            v45 = v44;
            if (v46 < 0)
            {
              v47 = (v46 & 0x7FFFFFFFFFFFFFFFLL);
              v48 = 5381;
              do
              {
                v46 = v48;
                v49 = *v47++;
                v48 = (33 * v48) ^ v49;
              }

              while (v49);
            }

            std::mutex::lock(v44);
            *buf = v46;
            v50 = sub_100009510(&v45[1].__m_.__sig, buf);
            if (v50)
            {
              v51 = v50[4];
              v133 = v50[3];
              if (v51)
              {
                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v45);
                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                v52 = v51;
                sub_100004A34(v51);
                v53 = 0;
LABEL_81:
                if (v133)
                {
                  v132 = v53;
                  v131 = v52;
                  (*(*v133 + 288))(&v170);
                  v59 = (a1 + 144);
                  if ((a1 + 144) != &v170)
                  {
                    *buf = *v59;
                    *v59 = v170;
                    *&v170 = 0;
                    sub_100010250(buf);
                  }

                  sub_100010250(&v170);
                  v144 = 0;
                  (*(**(a1 + 80) + 24))(&v144);
                  v60 = v144;
                  v61 = *(a1 + 40);
                  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
                  if (v60)
                  {
                    if (v62)
                    {
                      *buf = 138543362;
                      *&buf[4] = v60;
                      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Received message from lockdown: %{public}@", buf, 0xCu);
                      v60 = v144;
                    }

                    __p[0] = 0;
                    __p[1] = 0;
                    v143 = 0;
                    CFDictionaryGetValue(v60, @"messageName");
                    memset(buf, 0, sizeof(buf));
                    v174 = 0;
                    ctu::cf::assign();
                    *__p = *buf;
                    v143 = v174;
                    memset(buf, 0, sizeof(buf));
                    v174 = 0;
                    ctu::cf::assign();
                    v171 = v174;
                    v170 = *buf;
                    if (v143 >= 0)
                    {
                      v63 = HIBYTE(v143);
                    }

                    else
                    {
                      v63 = __p[1];
                    }

                    v64 = HIBYTE(v171);
                    v65 = SHIBYTE(v171);
                    if (v171 < 0)
                    {
                      v64 = *(&v170 + 1);
                    }

                    if (v63 == v64)
                    {
                      if (v143 >= 0)
                      {
                        v66 = __p;
                      }

                      else
                      {
                        v66 = __p[0];
                      }

                      if (v171 >= 0)
                      {
                        v67 = &v170;
                      }

                      else
                      {
                        v67 = v170;
                      }

                      v68 = memcmp(v66, v67, v63) == 0;
                    }

                    else
                    {
                      v68 = 0;
                    }

                    if (v65 < 0)
                    {
                      operator delete(v170);
                    }

                    if (!v68)
                    {
                      v69 = *(a1 + 40);
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                      {
                        v70 = __p;
                        if (v143 < 0)
                        {
                          v70 = __p[0];
                        }

                        *buf = 136315138;
                        *&buf[4] = v70;
                        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I Received Unknown command: %s. Disconnect", buf, 0xCu);
                      }

                      sub_10133F4C8(a1);
                    }

                    if (*v59 && CFArrayGetCount(*v59))
                    {
                      sub_10006F22C(&theArray, (a1 + 144));
                      *&v170 = 0;
                      v71 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                      if (v71)
                      {
                        v72 = v170;
                        *&v170 = v71;
                        *buf = v72;
                        sub_1000279DC(buf);
                      }

                      if (theArray)
                      {
                        Count = CFArrayGetCount(theArray);
                        if (Count >= 1)
                        {
                          for (i = 0; i != Count; ++i)
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
                            v76 = ValueAtIndex;
                            if (ValueAtIndex)
                            {
                              v77 = CFGetTypeID(ValueAtIndex);
                              if (v77 == CFDictionaryGetTypeID())
                              {
                                v78 = v76;
                              }

                              else
                              {
                                v78 = 0;
                              }
                            }

                            else
                            {
                              v78 = 0;
                            }

                            v79 = CFDictionaryGetValue(v78, @"BundleURL");
                            v80 = v79;
                            if (v79)
                            {
                              v81 = CFGetTypeID(v79);
                              if (v81 == CFStringGetTypeID())
                              {
                                v168[0] = 0;
                                v82 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                if (v82)
                                {
                                  v83 = v168[0];
                                  v168[0] = v82;
                                  *buf = v83;
                                  sub_1000296E0(buf);
                                }

                                sub_1001768B8(v168[0], @"URL", v80);
                                sub_10039D64C(v170, v168[0]);
                                sub_1000296E0(v168);
                              }
                            }
                          }
                        }
                      }

                      sub_10002A7D8(&v166, &v170);
                      sub_1000279DC(&v170);
                      sub_100A33784(*v147, @"URLList", v166);
                      sub_100010250(&v166);
                      sub_100010250(&theArray);
                      sub_10133F96C(buf, 0);
                      sub_101341F30(*v147, *buf);
                      sub_100029A48(buf);
                      v84 = *(a1 + 80);
                      sub_100010180(&v140, v147);
                      LOBYTE(v84) = (*(*v84 + 32))(v84, &v140);
                      sub_10001021C(&v140);
                      if (v84)
                      {
                        v85 = CFArrayGetCount(*v59);
                        v86 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                        if (v86)
                        {
                          v87 = *(a1 + 152);
                          *(a1 + 152) = v86;
                          *buf = v87;
                          sub_1000279DC(buf);
                        }

                        v130 = 1;
                        while (1)
                        {
                          if (v85 < 1)
                          {
LABEL_234:
                            if (v130)
                            {
                              sub_10002A7D8(v168, (a1 + 152));
                              *&v170 = a1;
                              sub_100E13114(&v170 + 1, *(a1 + 8), *(a1 + 16));
                              v175 = 0;
                              operator new();
                            }

                            goto LABEL_239;
                          }

                          v154 = 0;
                          (*(**(a1 + 80) + 24))(&v154);
                          v88 = v154;
                          v89 = *(a1 + 40);
                          v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT);
                          if (!v88)
                          {
                            if (v90)
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I Invalid request. Disconnect.", buf, 2u);
                            }

                            sub_10001021C(&v154);
                            goto LABEL_239;
                          }

                          if (v90)
                          {
                            *buf = 138412290;
                            *&buf[4] = v88;
                            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I Received message is %@", buf, 0xCu);
                          }

                          *v153 = 0;
                          v91 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          if (v91)
                          {
                            v92 = *v153;
                            *v153 = v91;
                            *buf = v92;
                            sub_1000296E0(buf);
                          }

                          sub_10133F96C(buf, 0);
                          sub_100209DF4(*v153, @"status", *buf);
                          sub_100029A48(buf);
                          v152 = v154;
                          if (v154)
                          {
                            CFRetain(v154);
                          }

                          v93 = sub_10133F9F8(a1, &v152);
                          sub_10001021C(&v152);
                          if ((v93 & 1) == 0)
                          {
                            break;
                          }

LABEL_215:
                          v119 = *(a1 + 40);
                          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *&buf[4] = *v153;
                            _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "#I Sending reply for transfer: %@", buf, 0xCu);
                          }

                          v120 = *(a1 + 80);
                          sub_100010180(&v149, v153);
                          v121 = (*(*v120 + 32))(v120, &v149);
                          sub_10001021C(&v149);
                          if (v121)
                          {
                            --v85;
                          }

                          else
                          {
                            v122 = *(a1 + 40);
                            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 0;
                              _os_log_error_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Failed sending reply for transfer failure.Disconnect.", buf, 2u);
                            }

                            v130 = 0;
                          }

                          sub_1000296E0(v153);
                          sub_10001021C(&v154);
                          if ((v121 & 1) == 0)
                          {
                            goto LABEL_234;
                          }
                        }

                        sub_10133F96C(buf, 2u);
                        sub_101341F30(*v153, *buf);
                        sub_100029A48(buf);
                        v94 = v154;
                        theDict = v154;
                        if (v154)
                        {
                          CFRetain(v154);
                          v94 = theDict;
                        }

                        *buf = 0;
                        *&v170 = CFDictionaryGetValue(v94, @"originalURL");
                        sub_100060DE8(buf, &v170);
                        if (*buf && (v95 = CFArrayGetCount(*v59), v95 >= 1))
                        {
                          v96 = 0;
                          while (1)
                          {
                            v151 = 0;
                            *&v170 = CFArrayGetValueAtIndex(*v59, v96);
                            sub_100010180(&v151, &v170);
                            v97 = CFDictionaryGetValue(v151, @"BundleURL");
                            v98 = v97;
                            if (v97)
                            {
                              v99 = CFGetTypeID(v97);
                              v100 = v99 == CFStringGetTypeID() ? v98 : 0;
                            }

                            else
                            {
                              v100 = 0;
                            }

                            if (CFEqual(v100, *buf))
                            {
                              break;
                            }

                            sub_10001021C(&v151);
                            if (v95 == ++v96)
                            {
                              goto LABEL_156;
                            }
                          }
                        }

                        else
                        {
LABEL_156:
                          v151 = 0;
                        }

                        sub_100005978(buf);
                        v101 = Registry::getServiceMap(*(a1 + 48));
                        v102 = v101;
                        if (v103 < 0)
                        {
                          v104 = (v103 & 0x7FFFFFFFFFFFFFFFLL);
                          v105 = 5381;
                          do
                          {
                            v103 = v105;
                            v106 = *v104++;
                            v105 = (33 * v105) ^ v106;
                          }

                          while (v106);
                        }

                        std::mutex::lock(v101);
                        *buf = v103;
                        v107 = sub_100009510(&v102[1].__m_.__sig, buf);
                        if (v107)
                        {
                          v108 = v107[3];
                          v109 = v107[4];
                          if (v109)
                          {
                            atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                            std::mutex::unlock(v102);
                            atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                            sub_100004A34(v109);
                            v110 = 0;
                            goto LABEL_165;
                          }
                        }

                        else
                        {
                          v108 = 0;
                        }

                        std::mutex::unlock(v102);
                        v109 = 0;
                        v110 = 1;
LABEL_165:
                        if (!v108)
                        {
LABEL_212:
                          if ((v110 & 1) == 0)
                          {
                            sub_100004A34(v109);
                          }

                          sub_10001021C(&v151);
                          sub_10001021C(&theDict);
                          goto LABEL_215;
                        }

                        v111 = *(a1 + 40);
                        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I Submitting metric on desktop update for bundle transfer failure", buf, 2u);
                        }

                        v172 = 0;
                        v112 = xpc_dictionary_create(0, 0, 0);
                        v113 = v112;
                        if (v112)
                        {
                          v172 = v112;
                        }

                        else
                        {
                          v113 = xpc_null_create();
                          v172 = v113;
                          if (!v113)
                          {
                            v114 = xpc_null_create();
                            v113 = 0;
                            goto LABEL_175;
                          }
                        }

                        if (xpc_get_type(v113) == &_xpc_type_dictionary)
                        {
                          xpc_retain(v113);
LABEL_176:
                          xpc_release(v113);
                          if (v151)
                          {
                            v170 = 0uLL;
                            v171 = 0;
                            CFDictionaryGetValue(v151, @"BundleID");
                            memset(buf, 0, sizeof(buf));
                            v174 = 0;
                            ctu::cf::assign();
                            v170 = *buf;
                            v171 = v174;
                            v115 = *(a1 + 64);
                            v168[0] = 0;
                            v168[1] = 0;
                            v169 = 0;
                            CFDictionaryGetValue(v151, @"BundleURL");
                            memset(buf, 0, sizeof(buf));
                            v174 = 0;
                            ctu::cf::assign();
                            v166 = *buf;
                            v167 = v174;
                            (*(*v115 + 120))(v168, v115, &v166);
                            if (SHIBYTE(v167) < 0)
                            {
                              operator delete(v166);
                            }

                            v166 = 0uLL;
                            v167 = 0;
                            CFDictionaryGetValue(v151, @"BundleVersion");
                            memset(buf, 0, sizeof(buf));
                            v174 = 0;
                            ctu::cf::assign();
                            v166 = *buf;
                            v167 = v174;
                            if (v169 >= 0)
                            {
                              v116 = v168;
                            }

                            else
                            {
                              v116 = v168[0];
                            }

                            v164 = xpc_string_create(v116);
                            if (!v164)
                            {
                              v164 = xpc_null_create();
                            }

                            *buf = &v172;
                            *&buf[8] = "bundle_file_name";
                            sub_10000F688(buf, &v164, &v165);
                            xpc_release(v165);
                            v165 = 0;
                            xpc_release(v164);
                            v164 = 0;
                            if (v171 >= 0)
                            {
                              v117 = &v170;
                            }

                            else
                            {
                              v117 = v170;
                            }

                            v162 = xpc_string_create(v117);
                            if (!v162)
                            {
                              v162 = xpc_null_create();
                            }

                            *buf = &v172;
                            *&buf[8] = "bundle_name";
                            sub_10000F688(buf, &v162, &object);
                            xpc_release(object);
                            object = 0;
                            xpc_release(v162);
                            v162 = 0;
                            if (v167 >= 0)
                            {
                              v118 = &v166;
                            }

                            else
                            {
                              v118 = v166;
                            }

                            v160 = xpc_string_create(v118);
                            if (!v160)
                            {
                              v160 = xpc_null_create();
                            }

                            *buf = &v172;
                            *&buf[8] = "bundle_version";
                            sub_10000F688(buf, &v160, &v161);
                            xpc_release(v161);
                            v161 = 0;
                            xpc_release(v160);
                            v160 = 0;
                            if (SHIBYTE(v167) < 0)
                            {
                              operator delete(v166);
                            }

                            if (SHIBYTE(v169) < 0)
                            {
                              operator delete(v168[0]);
                            }

                            if (SHIBYTE(v171) < 0)
                            {
                              operator delete(v170);
                            }
                          }

                          v168[0] = xpc_string_create("Failed");
                          if (!v168[0])
                          {
                            v168[0] = xpc_null_create();
                          }

                          *buf = &v172;
                          *&buf[8] = "result";
                          sub_10000F688(buf, v168, &v170);
                          xpc_release(v170);
                          *&v170 = 0;
                          xpc_release(v168[0]);
                          v168[0] = 0;
                          v159 = xpc_int64_create(6);
                          if (!v159)
                          {
                            v159 = xpc_null_create();
                          }

                          *buf = &v172;
                          *&buf[8] = "failureReason";
                          sub_10000F688(buf, &v159, &v166);
                          xpc_release(v166);
                          *&v166 = 0;
                          xpc_release(v159);
                          v159 = 0;
                          v157 = xpc_BOOL_create(1);
                          if (!v157)
                          {
                            v157 = xpc_null_create();
                          }

                          *buf = &v172;
                          *&buf[8] = "is_desktop_host";
                          sub_10000F688(buf, &v157, &v158);
                          xpc_release(v158);
                          v158 = 0;
                          xpc_release(v157);
                          v157 = 0;
                          v155 = xpc_BOOL_create(*(a1 + 112));
                          if (!v155)
                          {
                            v155 = xpc_null_create();
                          }

                          *buf = &v172;
                          *&buf[8] = "is_store_activation_mode_enabled_on_desktop";
                          sub_10000F688(buf, &v155, &v156);
                          xpc_release(v156);
                          v156 = 0;
                          xpc_release(v155);
                          v155 = 0;
                          *buf = v172;
                          if (v172)
                          {
                            xpc_retain(v172);
                          }

                          else
                          {
                            *buf = xpc_null_create();
                          }

                          (*(*v108 + 16))(v108, "commCenterBundleInstallDetails", buf);
                          xpc_release(*buf);
                          *buf = 0;
                          xpc_release(v172);
                          goto LABEL_212;
                        }

                        v114 = xpc_null_create();
LABEL_175:
                        v172 = v114;
                        goto LABEL_176;
                      }

                      v128 = *(a1 + 40);
                      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "#I Failed to send urllist to lockdown.Disconnect.", buf, 2u);
                      }

LABEL_239:
                      sub_10133F4C8(a1);
                    }

                    else
                    {
                      v123 = *(a1 + 40);
                      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I No updates available", buf, 2u);
                      }

                      sub_10133F96C(buf, 1u);
                      sub_101341F30(*v147, *buf);
                      v124 = sub_100029A48(buf);
                      v125 = *(a1 + 80);
                      sub_100010180(v124, v147);
                      (*(*v125 + 32))(v125, buf);
                      sub_10001021C(buf);
                      sub_10133F4C8(a1);
                      sub_1013406B8(a1, 3);
                    }

                    if (SHIBYTE(v143) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    v52 = v131;
                    v53 = v132;
                  }

                  else
                  {
                    if (v62)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Invalid request. Disconnect.", buf, 2u);
                    }

                    v52 = v131;
                    v53 = v132;
                    sub_10133F4C8(a1);
                  }

                  sub_10001021C(&v144);
                }

                else
                {
                  sub_10133F4C8(a1);
                }

                if ((v53 & 1) == 0)
                {
                  sub_100004A34(v52);
                }

                goto LABEL_246;
              }
            }

            else
            {
              v133 = 0;
            }

            std::mutex::unlock(v45);
            v52 = 0;
            v53 = 1;
            goto LABEL_81;
          }

          v54 = *(a1 + 40);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Error sending message. Disconnect.", buf, 2u);
          }

LABEL_70:
          sub_10133F4C8(a1);
LABEL_248:
          sub_100005978(&cf);
          return sub_1000296E0(v139);
        }

        if (v29)
        {
          *buf = 0;
          v31 = "#I Past the update check date in preferences. Proceeding to continue with the update.";
          goto LABEL_31;
        }
      }

      else
      {
        v28 = *(a1 + 40);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v31 = "#I Update check date not available in preferences. Proceeding to continue with the update.";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
        }
      }

      v30 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
  if (v23)
  {
    goto LABEL_22;
  }

LABEL_17:
  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot create preferences", buf, 2u);
    if (v24)
    {
      goto LABEL_228;
    }

    goto LABEL_19;
  }

  if ((v24 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v22);
  }

LABEL_228:
  v126 = *(a1 + 40);
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I Not proceeding with update check now.", buf, 2u);
  }

  sub_10133F96C(buf, 1u);
  sub_100209DF4(*v139, @"status", *buf);
  sub_100029A48(buf);
  v127 = *(a1 + 80);
  sub_100010180(&v138, v139);
  (*(*v127 + 32))(v127, &v138);
  sub_10001021C(&v138);
  sub_10133F4C8(a1);
  return sub_1000296E0(v139);
}

void sub_10133F018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, const void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, const void *a33, uint64_t a34, uint64_t a35, const void *a36, const void *a37)
{
  sub_10000FF50(v37 - 160);
  v39 = *(v37 - 176);
  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  sub_100010250((v37 - 216));
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a33);
  if ((a16 & 1) == 0)
  {
    sub_100004A34(a14);
  }

  sub_1000296E0(&a36);
  sub_10001021C(&a37);
  sub_100005978(&a21);
  sub_1000296E0(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_10133F4C8(uint64_t a1)
{
  v2 = a1 + 200;
  if (*(a1 + 200))
  {
    *(a1 + 200) = 0;
    v3 = *(a1 + 192);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2);
    }
  }

  v4 = *(a1 + 143);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 128);
  }

  if (v4)
  {
    v5 = (*(**(a1 + 64) + 112))(*(a1 + 64), a1 + 120);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 143) >= 0)
        {
          v27 = a1 + 120;
        }

        else
        {
          v27 = *(a1 + 120);
        }

        *buf = 136446466;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to remove: %{public}s, error: %ld", buf, 0x16u);
      }
    }
  }

  if (*(a1 + 152))
  {
    v31 = 0;
    sub_10002A7D8(&theArray, (a1 + 152));
    __p[0] = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      __p[0] = Mutable;
      *buf = 0;
      sub_1000279DC(buf);
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v12 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v13 = CFGetTypeID(ValueAtIndex);
            if (v13 == CFDictionaryGetTypeID())
            {
              v14 = v12;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          Value = CFDictionaryGetValue(v14, @"LocalFilePath");
          v16 = Value;
          if (Value)
          {
            v17 = CFGetTypeID(Value);
            if (v17 == CFStringGetTypeID())
            {
              sub_1002F5B6C(__p[0], v16);
            }
          }
        }
      }
    }

    sub_10002A7D8(&v31, __p);
    sub_1000279DC(__p);
    sub_100010250(&theArray);
    if (v31)
    {
      v18 = CFArrayGetCount(v31);
      if (v18 >= 1)
      {
        for (j = 0; j != v18; ++j)
        {
          __p[0] = 0;
          __p[1] = 0;
          v29 = 0;
          CFArrayGetValueAtIndex(v31, j);
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          v29 = *&buf[16];
          v20 = *&buf[8];
          if ((buf[23] & 0x80u) == 0)
          {
            v20 = buf[23];
          }

          if (v20)
          {
            v21 = (*(**(a1 + 64) + 112))(*(a1 + 64), __p);
            if (v21)
            {
              v22 = *(a1 + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                if (v29 >= 0)
                {
                  v23 = __p;
                }

                else
                {
                  v23 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v23;
                *&buf[12] = 2048;
                *&buf[14] = v21;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to remove: %{public}s, error: %ld", buf, 0x16u);
              }
            }
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    sub_100010250(&v31);
  }

  v24 = *(a1 + 144);
  *(a1 + 144) = 0;
  *buf = v24;
  sub_100010250(buf);
  v25 = *(a1 + 152);
  *(a1 + 152) = 0;
  *buf = v25;
  sub_1000279DC(buf);
  if (*(a1 + 143) < 0)
  {
    **(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 120) = 0;
    *(a1 + 143) = 0;
  }

  *(a1 + 112) = 0;
  return (*(**(a1 + 80) + 48))(*(a1 + 80));
}

const void **sub_10133F96C(CFNumberRef *a1, unsigned __int8 a2)
{
  v6 = 0;
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v3)
  {
    v6 = v3;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  v6 = 0;
  return sub_100029A48(&v6);
}

uint64_t sub_10133F9F8(std::string *a1, CFDictionaryRef *a2)
{
  v4 = *a2;
  v5 = a1[1].__r_.__value_.__r.__words[2];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Received message from lockdown: %@", &buf, 0xCu);
      v4 = *a2;
    }

    CFDictionaryGetValue(v4, @"messageName");
    buf = 0uLL;
    *&v92 = 0;
    ctu::cf::assign();
    v88 = buf;
    v89 = v92;
    Value = CFDictionaryGetValue(*a2, @"status");
    v8 = Value;
    LODWORD(buf) = 0;
    if (Value)
    {
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&buf, v8, v10);
      }

      v11 = buf;
      if (buf)
      {
        v12 = a1[1].__r_.__value_.__r.__words[2];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v11;
          v13 = "#I Received an error status: %d. Disconnect.";
          v14 = v12;
          v15 = 8;
LABEL_53:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &buf, v15);
          goto LABEL_56;
        }

        goto LABEL_56;
      }
    }

    buf = 0uLL;
    *&v92 = 0;
    ctu::cf::assign();
    v87 = v92;
    *__p = buf;
    if (v89 >= 0)
    {
      v16 = HIBYTE(v89);
    }

    else
    {
      v16 = *(&v88 + 1);
    }

    v17 = HIBYTE(v87);
    v18 = SHIBYTE(v87);
    if (v87 < 0)
    {
      v17 = __p[1];
    }

    if (v16 == v17)
    {
      if (v89 >= 0)
      {
        v19 = &v88;
      }

      else
      {
        v19 = v88;
      }

      if (v87 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      v21 = memcmp(v19, v20, v16) == 0;
      if ((v18 & 0x80000000) == 0)
      {
LABEL_29:
        v23 = a1[1].__r_.__value_.__r.__words[2];
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (!v21)
        {
          if (v24)
          {
            v38 = &v88;
            if (v89 < 0)
            {
              v38 = v88;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v38;
            v13 = "#I Unknown message %s";
            v14 = v23;
            v15 = 12;
            goto LABEL_53;
          }

LABEL_56:
          v22 = 0;
          goto LABEL_57;
        }

        if (v24)
        {
          v25 = &v88;
          if (v89 < 0)
          {
            v25 = v88;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Received %s request", &buf, 0xCu);
        }

        v26 = CFDictionaryGetValue(*a2, @"fileSize");
        v27 = v26;
        if (!v26 || (v28 = CFGetTypeID(v26), v28 != CFNumberGetTypeID()))
        {
          v39 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Invalid file Size", &buf, 2u);
          }

          goto LABEL_56;
        }

        cf = 0;
        *&buf = CFDictionaryGetValue(*a2, @"originalURL");
        sub_100060DE8(&cf, &buf);
        if (!cf)
        {
          v44 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Invalid original url", &buf, 2u);
          }

          v22 = 0;
          goto LABEL_141;
        }

        __p[0] = 0;
        __p[1] = 0;
        v87 = 0;
        sub_10000501C(__p, "");
        memset(&__str, 0, sizeof(__str));
        v29 = a1[2].__r_.__value_.__r.__words[2];
        buf = 0uLL;
        *&v92 = 0;
        ctu::cf::assign();
        *&v83.__r_.__value_.__l.__data_ = buf;
        v83.__r_.__value_.__r.__words[2] = v92;
        (*(*v29 + 120))(&__str, v29, &v83);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          v32 = p_str + size;
          v33 = p_str;
          v34 = v32;
          do
          {
            v35 = v33;
            v36 = v33;
            while (1)
            {
              v37 = *v36++;
              if (v37 == 46)
              {
                break;
              }

              v35 = v36;
              if (v36 == v32)
              {
                v35 = v34;
                goto LABEL_60;
              }
            }

            v33 = (&v35->__r_.__value_.__l.__data_ + 1);
            v34 = v35;
          }

          while (v36 != v32);
LABEL_60:
          if (v35 != v32 && v35 - p_str != -1)
          {
            std::string::basic_string(&buf, &__str, v35 - p_str, 0xFFFFFFFFFFFFFFFFLL, &v83);
            if (SHIBYTE(v87) < 0)
            {
              operator delete(__p[0]);
            }

            v87 = v92;
            *__p = buf;
            if ((SBYTE7(v92) & 0x80u) == 0)
            {
              v41 = (__p + BYTE7(v92));
            }

            else
            {
              v41 = (__p[0] + __p[1]);
            }

            if ((SBYTE7(v92) & 0x80u) == 0)
            {
              v42 = __p;
            }

            else
            {
              v42 = __p[0];
            }

            while (v42 != v41)
            {
              *v42 = __tolower(*v42);
              v42 = (v42 + 1);
            }
          }
        }

        if (SHIBYTE(v87) < 0)
        {
          if (__p[1] != 5)
          {
            goto LABEL_88;
          }

          v43 = __p[0];
        }

        else
        {
          if (SHIBYTE(v87) != 5)
          {
            goto LABEL_88;
          }

          v43 = __p;
        }

        v45 = *v43;
        v46 = *(v43 + 4);
        if (v45 == 1668311342 && v46 == 99)
        {
          v82 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v48 = sub_101340954(a1, &v82);
          sub_100005978(&v82);
          if (!v48)
          {
            v72 = a1[1].__r_.__value_.__r.__words[2];
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Filename not part of the expected urls.", &buf, 2u);
            }

            v22 = 0;
            goto LABEL_137;
          }
        }

LABEL_88:
        memset(&v83, 0, sizeof(v83));
        WirelessUserDirectory = _GetWirelessUserDirectory();
        v50 = sub_10000501C(v94, WirelessUserDirectory);
        v51 = std::string::append(v50, "/Library/", 9uLL);
        v52 = *&v51->__r_.__value_.__l.__data_;
        v81.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&v81.__r_.__value_.__l.__data_ = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        generateUUIDForIPCC(valuePtr);
        if ((v80 & 0x80u) == 0)
        {
          v53 = valuePtr;
        }

        else
        {
          v53 = valuePtr[0];
        }

        if ((v80 & 0x80u) == 0)
        {
          v54 = v80;
        }

        else
        {
          v54 = valuePtr[1];
        }

        v55 = std::string::append(&v81, v53, v54);
        v56 = *&v55->__r_.__value_.__l.__data_;
        *&v92 = *(&v55->__r_.__value_.__l + 2);
        buf = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v57 = __p;
        }

        else
        {
          v57 = __p[0];
        }

        if (v87 >= 0)
        {
          v58 = HIBYTE(v87);
        }

        else
        {
          v58 = __p[1];
        }

        v59 = std::string::append(&buf, v57, v58);
        v60 = *&v59->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        if (SBYTE7(v92) < 0)
        {
          operator delete(buf);
        }

        if (v80 < 0)
        {
          operator delete(valuePtr[0]);
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        if (v95 < 0)
        {
          operator delete(*v94);
        }

        v61 = a1[3].__r_.__value_.__l.__size_;
        v81.__r_.__value_.__r.__words[0] = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v81.__r_.__value_.__r.__words[0] = Mutable;
          *&buf = 0;
          sub_1000296E0(&buf);
        }

        sub_10133F96C(&buf, 0);
        sub_100209DF4(v81.__r_.__value_.__l.__data_, @"status", buf);
        sub_100029A48(&buf);
        sub_100010180(&v78, &v81.__r_.__value_.__l.__data_);
        sub_1000296E0(&v81.__r_.__value_.__l.__data_);
        v63 = (*(*v61 + 32))(v61, &v78);
        sub_10001021C(&v78);
        if ((v63 & 1) == 0)
        {
          v68 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Couldn't send file transfer ack. Disconnect.", &buf, 2u);
          }

          v22 = 0;
          goto LABEL_135;
        }

        v92 = 0u;
        v93 = 0u;
        buf = 0u;
        v64 = a1[1].__r_.__value_.__r.__words[2];
        v81.__r_.__value_.__r.__words[0] = a1;
        v81.__r_.__value_.__l.__size_ = &v83;
        v65 = sub_101340FCC(&v81);
        sub_101340F1C(&buf, v64, v65);
        *&v81.__r_.__value_.__l.__data_ = 0uLL;
        sub_10000501C(&v76, "Receive data from desktop host");
        sub_101341390(v90, &buf);
        Registry::createXpcJetsamAssertion();
        sub_100014DA8(v90);
        if (v77 < 0)
        {
          operator delete(v76);
        }

        valuePtr[0] = 0;
        CFNumberGetValue(v27, kCFNumberCFIndexType, valuePtr);
        v75 = 0;
        (*(*a1[3].__r_.__value_.__l.__size_ + 40))(&v75);
        if (v75)
        {
          if ((*(*a1[2].__r_.__value_.__r.__words[2] + 200))(a1[2].__r_.__value_.__r.__words[2], &v83, v75, 0))
          {
            v66 = v75;
            v75 = 0;
            *v94 = v66;
            sub_10002D760(v94);
            v67 = v81.__r_.__value_.__l.__size_;
            *&v81.__r_.__value_.__l.__data_ = 0uLL;
            if (v67)
            {
              sub_100004A34(v67);
            }

            if (sub_100318068(__p, ".ipcc"))
            {
              sub_10005C7A4(&v74, &cf);
              sub_1013410A8(a1, &v74, &v83);
              sub_100005978(&v74);
            }

            else
            {
              std::string::operator=(a1 + 5, &v83);
            }

            v22 = 1;
            goto LABEL_132;
          }

          v70 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v73 = &v83;
            if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v73 = v83.__r_.__value_.__r.__words[0];
            }

            *v94 = 136446210;
            *&v94[4] = v73;
            _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Failed to write file: %{public}s", v94, 0xCu);
          }

          v71 = v75;
          v75 = 0;
          *v94 = v71;
          sub_10002D760(v94);
        }

        else
        {
          v69 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *v94 = 0;
            _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Invalid data ref", v94, 2u);
          }
        }

        v22 = 0;
LABEL_132:
        sub_10002D760(&v75);
        if (v81.__r_.__value_.__l.__size_)
        {
          sub_100004A34(v81.__r_.__value_.__l.__size_);
        }

        sub_100014DA8(&buf);
LABEL_135:
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

LABEL_137:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_141:
        sub_100005978(&cf);
LABEL_57:
        if (SHIBYTE(v89) < 0)
        {
          operator delete(v88);
        }

        return v22;
      }
    }

    else
    {
      v21 = 0;
      if ((SHIBYTE(v87) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    operator delete(__p[0]);
    goto LABEL_29;
  }

  if (v6)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Invalid request. Disconnect.", &buf, 2u);
  }

  return 0;
}

void sub_1013404C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, std::__shared_weak_count *a26, int a27, __int16 a28, char a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, const void *a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  sub_100005978(&a10);
  sub_10002D760(&a11);
  if (a26)
  {
    sub_100004A34(a26);
  }

  sub_100014DA8((v58 - 128));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  sub_100005978(&a45);
  if (a58 < 0)
  {
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

const void **sub_1013406B8(uint64_t a1, int a2)
{
  v4 = rand();
  if (a2 == 3)
  {
    v5 = CFAbsoluteTimeGetCurrent() + (v4 % 24 + 1) * 3600.0;
  }

  else
  {
    v5 = CFAbsoluteTimeGetCurrent() + (v4 % 7 + 8) * 86400.0;
  }

  v6 = CFDateCreate(kCFAllocatorDefault, v5);
  v19 = v6;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Saving the next update check at %{public}@", buf, 0xCu);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  if (!v14)
  {
    v16 = 0;
LABEL_14:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
LABEL_15:
    (*(*v16 + 16))(v16, @"kNextDesktopHostCarrierBundleUpdateCheck", v19, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

LABEL_16:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  return sub_1003EC530(&v19);
}

void sub_101340918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v3;
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  sub_1003EC530(va);
  _Unwind_Resume(a1);
}

BOOL sub_101340954(uint64_t a1, CFTypeRef *a2)
{
  Count = CFArrayGetCount(*(a1 + 144));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    theDict = 0;
    *buf = CFArrayGetValueAtIndex(*(a1 + 144), v6);
    sub_100010180(&theDict, buf);
    Value = CFDictionaryGetValue(theDict, @"BundleURL");
    v9 = Value;
    if (Value)
    {
      v10 = CFGetTypeID(Value);
      v11 = v10 == CFStringGetTypeID() ? v9 : 0;
    }

    else
    {
      v11 = 0;
    }

    if (CFEqual(v11, *a2))
    {
      break;
    }

    sub_10001021C(&theDict);
    v7 = ++v6 < v5;
    if (v5 == v6)
    {
      return v7;
    }
  }

  v29 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
        goto LABEL_55;
      }

LABEL_23:
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Submitting metric on desktop update check", buf, 2u);
      }

      v43 = 0;
      v23 = xpc_dictionary_create(0, 0, 0);
      v24 = v23;
      if (v23)
      {
        v43 = v23;
      }

      else
      {
        v24 = xpc_null_create();
        v43 = v24;
        if (!v24)
        {
          v25 = xpc_null_create();
          v24 = 0;
          goto LABEL_32;
        }
      }

      if (xpc_get_type(v24) == &_xpc_type_dictionary)
      {
        xpc_retain(v24);
LABEL_33:
        xpc_release(v24);
        __p[0] = 0;
        __p[1] = 0;
        v42 = 0;
        CFDictionaryGetValue(v29, @"BundleID");
        memset(buf, 0, sizeof(buf));
        v45 = 0;
        ctu::cf::assign();
        *__p = *buf;
        v42 = v45;
        if (v45 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        v39 = xpc_string_create(v26);
        if (!v39)
        {
          v39 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "bundle_update_check_info_bundle_name_to_check";
        sub_10000F688(buf, &v39, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v39);
        v39 = 0;
        v37 = xpc_BOOL_create(1);
        if (!v37)
        {
          v37 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "is_desktop_host";
        sub_10000F688(buf, &v37, &v38);
        xpc_release(v38);
        v38 = 0;
        xpc_release(v37);
        v37 = 0;
        if (*(a1 + 113))
        {
          v27 = 9;
        }

        else
        {
          v27 = 10;
        }

        v35 = xpc_int64_create(v27);
        if (!v35)
        {
          v35 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "update_check_trigger";
        sub_10000F688(buf, &v35, &v36);
        xpc_release(v36);
        v36 = 0;
        xpc_release(v35);
        v35 = 0;
        v33 = xpc_BOOL_create(*(a1 + 112));
        if (!v33)
        {
          v33 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "is_store_activation_mode_enabled_on_desktop";
        sub_10000F688(buf, &v33, &v34);
        xpc_release(v34);
        v34 = 0;
        xpc_release(v33);
        v33 = 0;
        v31 = xpc_BOOL_create(*(a1 + 160) == 1);
        if (!v31)
        {
          v31 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "bundle_update_check_info_is_buddy_active";
        sub_10000F688(buf, &v31, &v32);
        xpc_release(v32);
        v32 = 0;
        xpc_release(v31);
        v31 = 0;
        *buf = v43;
        if (v43)
        {
          xpc_retain(v43);
        }

        else
        {
          *buf = xpc_null_create();
        }

        (*(*v20 + 16))(v20, "commCenterBundleUpdateCheck", buf);
        xpc_release(*buf);
        *buf = 0;
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        xpc_release(v43);
        goto LABEL_55;
      }

      v25 = xpc_null_create();
LABEL_32:
      v43 = v25;
      goto LABEL_33;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v13);
  v19 = 0;
  v21 = 1;
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_55:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  sub_10001021C(&v29);
  sub_10001021C(&theDict);
  return v7;
}

void sub_101340E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  xpc_release(*(v28 - 96));
  *(v28 - 96) = 0;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v28 - 104));
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  sub_10001021C(&a9);
  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_101340F1C(void *a1, void *object, uint64_t a3)
{
  v5[0] = off_101F30618;
  v5[3] = v5;
  *a1 = a3;
  a1[1] = os_retain(object);
  sub_1000148FC((a1 + 2), v5);
  return sub_10001499C(v5);
}

void sub_101340FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001499C(va);
  _Unwind_Resume(a1);
}

os_signpost_id_t sub_101340FCC(void *a1)
{
  v2 = *a1;
  v3 = os_signpost_id_generate(*(*a1 + 40));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *(v2 + 40);
    if (os_signpost_enabled(v4))
    {
      v5 = a1[1];
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v7 = 136315138;
      v8 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Receive data from desktop host", "path=%{signpost.description:attribute}s", &v7, 0xCu);
    }
  }

  return v3;
}

uint64_t sub_1013410A8(uint64_t result, CFTypeRef *a2, uint64_t a3)
{
  if (*a2)
  {
    v4 = *(a3 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a3 + 8);
    }

    if (v4)
    {
      v6 = result;
      result = CFArrayGetCount(*(result + 144));
      if (result >= 1)
      {
        v7 = result;
        for (i = 0; i != v7; ++i)
        {
          theDict = 0;
          __p[0] = CFArrayGetValueAtIndex(*(v6 + 144), i);
          sub_100010180(&theDict, __p);
          v9 = CFDictionaryGetValue(theDict, @"BundleURL");
          v10 = v9;
          if (v9)
          {
            v11 = CFGetTypeID(v9);
            if (v11 == CFStringGetTypeID())
            {
              v12 = v10;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          if (CFEqual(v12, *a2))
          {
            cf = 0;
            MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
            cf = MutableCopy;
            if (*(a3 + 23) < 0)
            {
              sub_100005F2C(v15, *a3, *(a3 + 8));
            }

            else
            {
              *v15 = *a3;
              v16 = *(a3 + 16);
            }

            if (SHIBYTE(v16) < 0)
            {
              sub_100005F2C(__dst, v15[0], v15[1]);
            }

            else
            {
              *__dst = *v15;
              v22 = v16;
            }

            v20 = 0;
            if (SHIBYTE(v22) < 0)
            {
              sub_100005F2C(__p, __dst[0], __dst[1]);
            }

            else
            {
              *__p = *__dst;
              v24 = v22;
            }

            v25 = 0;
            if (ctu::cf::convert_copy())
            {
              v14 = v20;
              v20 = v25;
              v26 = v14;
              sub_100005978(&v26);
            }

            if (SHIBYTE(v24) < 0)
            {
              operator delete(__p[0]);
            }

            value = v20;
            v20 = 0;
            sub_100005978(&v20);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__dst[0]);
            }

            CFDictionarySetValue(MutableCopy, @"LocalFilePath", value);
            sub_100005978(&value);
            if (SHIBYTE(v16) < 0)
            {
              operator delete(v15[0]);
            }

            sub_10039D64C(*(v6 + 152), cf);
            sub_1000296E0(&cf);
          }

          result = sub_10001021C(&theDict);
        }
      }
    }
  }

  return result;
}

void sub_101341304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, const void *a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a18);
  sub_10001021C(&a19);
  _Unwind_Resume(a1);
}

void *sub_101341390(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  sub_1000148FC((a1 + 2), (a2 + 2));
  *a2 = 0;
  a2[1] = 0;
  sub_100014A28((a2 + 2));
  return a1;
}

void sub_1013413D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134142C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10134146C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101341498(ServiceManager::Service *this)
{
  *this = off_101F30418;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1013414F4(ServiceManager::Service *this)
{
  *this = off_101F30418;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_101341574@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1013415B8(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10133D4B0(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10133D4B0(v4, 0);
}

void sub_101341658(uint64_t a1)
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

uint64_t *sub_101341744(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  Registry::createRestModuleOneTimeUseConnection(&v7, *(*v1 + 48));
  ctu::RestModule::connect();
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100118B78(v2 + 160, v2 + 96);
  v9[0] = off_101F30498;
  v9[1] = v2 + 96;
  v9[3] = v9;
  sub_100300158(v9, (v2 + 168));
  sub_1002FED80(v9);
  v3 = *(v2 + 192);
  if (v3)
  {
    (*(*v3 + 48))(v3, v2 + 200);
  }

  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10134184C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1013418EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F30498;
  a2[1] = v2;
  return result;
}

void sub_101341918(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/desktop_update_status");
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

void sub_1013419C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_101341A10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101341A5C(void **a1)
{
  v1 = **a1;
  v2 = v1[10];
  if (v2)
  {
    v3 = v1[3];
    object = v3;
    if (v3)
    {
      dispatch_retain(v3);
    }

    *buf = off_101F30518;
    v7 = v1;
    v8 = buf;
    (*(*v2 + 16))(v2, &object, buf);
    sub_10002B644(buf);
    if (object)
    {
      dispatch_release(object);
    }
  }

  else
  {
    v4 = v1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid lockdown helper.", buf, 2u);
    }
  }

  operator delete();
}

void sub_101341BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, ...)
{
  va_start(va, object);
  sub_10002B644(va);
  if (object)
  {
    dispatch_release(object);
  }

  operator delete();
}

uint64_t sub_101341C4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F30518;
  a2[1] = v2;
  return result;
}

const void **sub_101341C78(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Received connection from lockdown.", buf, 2u);
  }

  cf = 0;
  (*(**(v1 + 80) + 24))(&cf);
  v3 = cf;
  v4 = *(v1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received message from lockdown: %@", buf, 0xCu);
      v3 = cf;
    }

    theString1 = 0;
    *buf = CFDictionaryGetValue(v3, @"messageName");
    sub_100060DE8(&theString1, buf);
    if (CFStringCompare(theString1, @"GetURLList", 1uLL))
    {
      v6 = *(v1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = theString1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received Unknown command: %@. Disconnect", buf, 0xCu);
      }

      sub_10133F4C8(v1);
    }

    else
    {
      *buf = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_10133D5B0(v1, buf);
      sub_10001021C(buf);
    }

    sub_100005978(&theString1);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I No message dict. Disconnect", buf, 2u);
    }

    sub_10133F4C8(v1);
  }

  return sub_10001021C(&cf);
}

void sub_101341E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101341EE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_101341F30(__CFDictionary *a1, const void *a2)
{
  key = @"status";
  CFRetain(@"status");
  v5 = a2;
  if (a2)
  {
    CFRetain(a2);
    if (key)
    {
      CFDictionarySetValue(a1, key, a2);
    }
  }

  sub_100DA3324(&v5);
  return sub_100DA3324(&key);
}

void sub_101341FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

void *sub_101341FC4(void *a1)
{
  *a1 = off_101F30598;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101342010(void *a1)
{
  *a1 = off_101F30598;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1013420F0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F30598;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101342130(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101342140(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101342180(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[2];
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          if (std::__shared_weak_count::lock(v6))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1013422A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013422EC(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v9 = 0;
  (*(**(v2 + 80) + 24))(&v9);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received message from lockdown: %@", buf, 0xCu);
    v3 = *(v2 + 40);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bundle updates complete. End.", buf, 2u);
  }

  *v8 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v8 = Mutable;
    *buf = 0;
    sub_1000296E0(buf);
  }

  sub_10133F96C(buf, 1u);
  sub_100209DF4(*v8, @"status", *buf);
  sub_100029A48(buf);
  v5 = *(v2 + 80);
  sub_100010180(buf, v8);
  (*(*v5 + 32))(v5, buf);
  sub_10001021C(buf);
  sub_10133F4C8(v2);
  if (*(v1 + 8))
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  sub_1013406B8(v2, v6);
  sub_1000296E0(v8);
  sub_10001021C(&v9);
  operator delete();
}

void sub_101342508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_10001021C(va2);
  sub_1000296E0(va);
  sub_10001021C(va1);
  operator delete();
}

void sub_1013425F8(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "Receive data from desktop host", "", v5, 2u);
    }
  }
}

uint64_t sub_101342670(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013426BC(void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_10134279C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013427D0(uint64_t a1, NSObject **a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "pp.push.observer");
  sub_10134288C((a1 + 8), a2, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = &off_101F30698;
  v6 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  return a1;
}

void *sub_10134288C(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1013428F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

push::PushMessageListenerInterface *sub_101342918(push::PushMessageListenerInterface *this)
{
  *this = &off_101F30698;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  push::PushMessageListenerInterface::~PushMessageListenerInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_101342980(push::PushMessageListenerInterface *a1)
{
  sub_101342918(a1);

  operator delete();
}

void sub_1013429B8(void *a1, char a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101342AA8(void *a1, const void **a2)
{
  sub_10005C7A4(&v4 + 1, a2);
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101342BB0(void *a1, const void **a2, const void **a3)
{
  sub_10002D728(&v6 + 1, a2);
  sub_10005C7A4(&v7, a3);
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101342CD8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101342E84(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101342F58);
  __cxa_rethrow();
}

void sub_101342EC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101342F18(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101342F58(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101342F84(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  pthread_mutex_lock(&stru_101FB18D0);
  v3 = off_101FB1910;
  if (!off_101FB1910)
  {
    sub_100BE5C08(buf);
  }

  v4 = *(&off_101FB1910 + 1);
  if (*(&off_101FB1910 + 1))
  {
    atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_101FB18D0);
  cf = @"com.apple.OutOfBandCellularActivation";
  CFRetain(@"com.apple.OutOfBandCellularActivation");
  v5 = *(v2 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "production";
    if (*(v2 + 64))
    {
      v6 = "development";
    }

    *buf = 138412546;
    *&buf[4] = cf;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I register for topic %@ with %s environment", buf, 0x16u);
  }

  sub_100BE64DC(v3, *(v2 + 64));
  if ((v1[1] & 1) == 0)
  {
    v16 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v7 = *(v2 + 16);
    if (!v7 || (v8 = *(v2 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
    {
      sub_100013CC4();
    }

    *buf = v8;
    *&buf[8] = v9;
    sub_100BE6ED8(v3, &v16, buf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_100005978(&v16);
  }

  v15 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v10 = *(v2 + 16);
  if (v10)
  {
    v11 = *(v2 + 8);
    v12 = std::__shared_weak_count::lock(v10);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      sub_100BE6604(v3, &v15, &v13);
      if (v14)
      {
        sub_100004A34(v14);
      }

      sub_100005978(&v15);
      sub_100005978(&cf);
      if (v4)
      {
        sub_100004A34(v4);
      }

      operator delete();
    }
  }

  sub_100013CC4();
}

void sub_1013431D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101343298(void **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v3 = *v1;
  v2 = v1[1];
  if (v2)
  {
    if (CFEqual(v2, @"com.apple.OutOfBandCellularActivation"))
    {
      v4 = v3[7];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = v3[6];
          if (v7)
          {
            (*(*v7 + 24))(v7);
          }

          sub_100004A34(v6);
        }
      }
    }
  }

  else
  {
    v8 = v3[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No topic in the push message", buf, 2u);
    }
  }

  sub_100530510(&v11);
  return sub_1000049E0(&v10);
}

void sub_101343378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100530510(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013433A4(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *v1;
  if (*(v1 + 16) && *(v1 + 8))
  {
    memset(buf, 0, sizeof(buf));
    v26 = 0;
    ctu::cf::assign();
    *v21 = 0u;
    v22 = 0;
    v3 = v2[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v21;
      if (v22 < 0)
      {
        v4 = v21[0];
      }

      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I push token for topic: %s", buf, 0xCu);
    }

    if (CFEqual(*(v1 + 16), @"com.apple.OutOfBandCellularActivation"))
    {
      v5 = v2[7];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = v2[6];
          if (v8)
          {
            v26 = 0;
            memset(buf, 0, sizeof(buf));
            BytePtr = CFDataGetBytePtr(*(v1 + 8));
            Length = CFDataGetLength(*(v1 + 8));
            sub_10018A52C(buf, BytePtr, &BytePtr[Length], Length);
            __p[0] = 0;
            __p[1] = 0;
            v20 = 0;
            ctu::hex();
            v11 = v2[5];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = __p;
              if (v20 < 0)
              {
                v12 = __p[0];
              }

              *__dst = 136315138;
              *&__dst[4] = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I activation push token received: %s", __dst, 0xCu);
            }

            if (SHIBYTE(v20) < 0)
            {
              sub_100005F2C(__dst, __p[0], __p[1]);
            }

            else
            {
              *__dst = *__p;
              v24 = v20;
            }

            (*(*v8 + 16))(v8, __dst);
            if (SHIBYTE(v24) < 0)
            {
              operator delete(*__dst);
            }

            if (SHIBYTE(v20) < 0)
            {
              operator delete(__p[0]);
            }

            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }
          }

          sub_100004A34(v7);
        }
      }
    }

    else
    {
      v14 = v2[5];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v21;
        if (v22 < 0)
        {
          v15 = v21[0];
        }

        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Topic mismatch for activation push token [%s]", buf, 0xCu);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  else
  {
    v13 = v2[5];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No token in activation push token handler", buf, 2u);
    }
  }

  sub_101343754(&v18);
  return sub_1000049E0(&v17);
}

void sub_1013436C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 80);
  if (v33)
  {
    *(v31 - 72) = v33;
    operator delete(v33);
  }

  sub_100004A34(v30);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_101343754(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_101343754(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100005978((v1 + 16));
    sub_10002D760((v1 + 8));
    operator delete();
  }

  return a1;
}

void sub_1013437AC(void ***a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I public token updated", buf, 2u);
  }

  sub_1013429B8(v1, 0);
}

uint64_t sub_10134384C()
{
  if ((byte_101FB1920 & 1) == 0)
  {
    byte_101FB1920 = 1;
    return __cxa_atexit(sub_1001897A0, &stru_101FB18D0, &_mh_execute_header);
  }

  return result;
}

void sub_101343888(uint64_t a1, int a2, void *a3)
{
  v5 = a2;
  v6 = &v5;
  v4 = sub_10031D3B0(a1, &v5, &unk_101802C98, &v6);
  sub_10004645C(v4 + 5, a3);
}

void sub_1013438E0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = (a2 + 1);
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v8 = 0u;
      v9 = 0u;
      sub_100E0AA08(&v8 + 1, (v4 + 5));
      sub_101343E9C(a2, &v8 + 1);
      sub_10006DCAC(&v8 + 8, v9);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }
}

uint64_t sub_1013439C8(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v22 = a2;
  v21 = a3;
  v7 = *(a1 + 32);
  v5 = a1 + 32;
  v6 = v7;
  if (v7)
  {
    v8 = v5;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v8 != v5 && *(v8 + 32) <= a2)
    {
      v11 = *(v8 + 48);
      v9 = v8 + 48;
      v10 = v11;
      if (v11)
      {
        v12 = v9;
        do
        {
          v13 = *(v10 + 32);
          v14 = v13 >= a3;
          v15 = v13 < a3;
          if (v14)
          {
            v12 = v10;
          }

          v10 = *(v10 + 8 * v15);
        }

        while (v10);
        if (v12 != v9 && *(v12 + 32) <= a3 && *(v12 + 40) == a4)
        {
          return 0;
        }
      }
    }
  }

  v17 = v5 - 8;
  v23 = &v22;
  v18 = sub_10031D3B0(v5 - 8, &v22, &unk_101802C98, &v23);
  v19 = v18 + 6;
  sub_10006DCAC((v18 + 5), v18[6]);
  *v19 = 0;
  v19[1] = 0;
  *(v19 - 1) = v19;
  v23 = &v22;
  v20 = sub_10031D3B0(v17, &v22, &unk_101802C98, &v23);
  v23 = &v21;
  *(sub_100701064((v20 + 5), &v21, &unk_101802C98, &v23) + 10) = v4;
  sub_101343B20(v21, v4);
  return 1;
}

void sub_101343B20(int64_t a1, unsigned int a2)
{
  v16 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  v14 = xpc_int64_create(a1);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v11 = 0;
  v12 = &v16;
  v13 = __p;
  sub_10000F688(&v12, &v14, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v14);
  v14 = 0;
  v8 = xpc_int64_create(a2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *__p = v17;
  v11 = v18;
  v7 = __p;
  if (v18 < 0)
  {
    v7 = __p[0];
  }

  v12 = &v16;
  v13 = v7;
  sub_10000F688(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v8);
  v8 = 0;
  *&v17 = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *&v17 = xpc_null_create();
  }

  __p[0] = xpc_null_create();
  sub_10002A37C(144, &v17, __p);
  xpc_release(__p[0]);
  xpc_release(v17);
  xpc_release(v16);
}

void sub_101343D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(*(v17 - 56));
  xpc_release(*(v17 - 64));
  _Unwind_Resume(a1);
}

void sub_101343E08(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= a2 && *(v5 + 56))
    {
      v7 = *(v5 + 48);
      v6 = (v5 + 48);
      sub_10006DCAC((v6 - 1), v7);
      *v6 = 0;
      v6[1] = 0;
      *(v6 - 1) = v6;

      sub_101343B20(0, 0);
    }
  }
}

uint64_t *sub_101343E9C(uint64_t *result, uint64_t **a2)
{
  v3 = a2 + 1;
  v2 = *a2;
  if (*a2 != (a2 + 1))
  {
    v5 = result;
    v6 = (result + 1);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = v2[4];
        v9 = v6;
        while (1)
        {
          while (1)
          {
            v10 = v7;
            v11 = v7[4];
            if (v8 >= v11)
            {
              break;
            }

            v7 = *v10;
            v9 = v10;
            if (!*v10)
            {
              v12 = 1;
              v9 = v10;
              goto LABEL_13;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v9 = v10 + 1;
          v7 = v10[1];
          if (!v7)
          {
            v12 = 1;
            goto LABEL_13;
          }
        }

        v12 = 0;
      }

      else
      {
        v12 = 1;
        v10 = v6;
        v9 = v6;
      }

LABEL_13:
      v13 = v2[1];
      v14 = v2;
      if (v13)
      {
        do
        {
          v15 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v15 = v14[2];
          v16 = *v15 == v14;
          v14 = v15;
        }

        while (!v16);
      }

      if (v12)
      {
        sub_1000194D8(a2, v2);
        result = sub_1000070DC(v5, v10, v9, v2);
      }

      v2 = v15;
    }

    while (v15 != v3);
  }

  return result;
}

void sub_101343FB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (v2 != a2 && v2 != 0)
  {
    v5 = [(objc_class *)off_101FB9768() sharedInstance];
    *(a1 + 64) = [v5 isDeviceEnrolledWithDeKOTA:0];
  }
}

Class sub_10134404C()
{
  if (qword_101FCA928 != -1)
  {
    dispatch_once(&qword_101FCA928, &stru_101F307D8);
  }

  result = objc_getClass("MSDKDemoState");
  qword_101FCA920 = result;
  off_101FB9768 = sub_1013440B0;
  return result;
}

void sub_1013440E8(void *a1, void *a2)
{
  v5 = @"Stewie";
  memset(__p, 0, sizeof(__p));
  sub_10005B328(__p, &v5, &v6, 1uLL);
  sub_101644F28(a1, a2, "stw.em.env", __p);
}

void sub_1013443AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1013443A4);
}

void sub_1013443F8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting up environment", v5, 2u);
  }

  sub_10164531C(a1, (a2 + 8), *a2);
  if ((*(a1 + 272) & 1) == 0 && sub_1013444AC(a1 + 296, 0) != 2)
  {
    *(a1 + 314) = 0;
    sub_10079CC68(*(a1 + 304));
  }
}

uint64_t sub_1013444AC(uint64_t a1, char a2)
{
  if (*(a1 + 18) != 1 || (a2 & 1) != 0)
  {
    *(a1 + 18) = 1;
    v7 = 0;
    sub_10007B7D8(*(a1 + 8));
    sub_10010B240(&v7, &v6);
    sub_10000A1EC(&v6);
    if (v7)
    {
      LODWORD(v6) = 0;
      ctu::cf::assign(&v6, v7, v4);
      v3 = v6;
    }

    else
    {
      v3 = *(a1 + 16);
    }

    *(a1 + 17) = v3;
    sub_100029A48(&v7);
  }

  else
  {
    return *(a1 + 17);
  }

  return v3;
}

void sub_101344548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

void sub_101344578(uint64_t a1)
{
  v1 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Teardown requested", v2, 2u);
  }
}

void sub_1013445E4(uint64_t a1, __int16 a2)
{
  *(a1 + 320) = a2 | 0x100;
  if ((sub_10134463C(a1) & 1) == 0)
  {
    v3 = *(a1 + 336);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    if (v3)
    {

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_10134463C(uint64_t a1)
{
  if (*(a1 + 321) == 1)
  {
    v2 = sub_1013444AC(a1 + 296, 0);
    if (v2 == 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }

    v4 = *(a1 + 321) ^ 1 | (v3 != *(a1 + 320));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1013446A4(uint64_t a1, unsigned int a2)
{
  *(a1 + 18) = 1;
  *(a1 + 17) = a2;
  v2 = *(a1 + 8);
  v8 = 0;
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v3)
  {
    v8 = v3;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = 0;
  sub_100029A48(&v8);
  v5 = sub_10079CC40(v2);
  sub_100029A48(&v7);
  return v5;
}

void sub_101344740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101344774(uint64_t a1, void *a2)
{
  if (sub_101344894(a1) >= 0x100u)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_101344894(uint64_t a1)
{
  v2 = sub_100E415B0(a1);
  if (v2)
  {
    v2 = sub_1013448D8(a1 + 352, 0);
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

uint64_t sub_1013448D8(uint64_t a1, char a2)
{
  if (*(a1 + 18) != 1 || (a2 & 1) != 0)
  {
    *(a1 + 18) = 1;
    v7 = 0;
    sub_10007B7D8(*(a1 + 8));
    sub_10010B240(&v7, &v6);
    sub_10000A1EC(&v6);
    if (v7)
    {
      LODWORD(v6) = 0;
      ctu::cf::assign(&v6, v7, v4);
      v3 = v6;
    }

    else
    {
      v3 = *(a1 + 16);
    }

    *(a1 + 17) = v3;
    sub_100029A48(&v7);
  }

  else
  {
    return *(a1 + 17);
  }

  return v3;
}

void sub_101344974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

void sub_101344998(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 280);
  if (v4)
  {
    v5 = *(a1 + 288);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Trying to get EED key", buf, 2u);
    }

    v7 = atomic_load(byte_101FCA930);
    if ((v7 & 1) == 0)
    {
      atomic_store(1u, byte_101FCA930);
      v9 = *(a1 + 24);
      v11 = *(a1 + 16);
      v12 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = sub_100032AC8((a1 + 8));
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I EED key fetch is now in progress", buf, 2u);
      }

      operator new();
    }

    v8 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Previous EED key fetch is still in progress and seems to be stuck. Skip fetching EED key.", buf, 2u);
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_10134515C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::exception_ptr a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, std::mutex *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1013452FC(uint64_t a1)
{
  sub_101646E5C(a1);
  v2 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 273) == 1 && *(a1 + 88))
    {
      v3 = "false";
      if (*(a1 + 152) && *(a1 + 168))
      {
        v3 = "true";
      }
    }

    else
    {
      v3 = "false";
    }

    v21 = 136315138;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Ready: %s", &v21, 0xCu);
  }

  v4 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1013444AC(a1 + 296, 0);
    if (v5 == 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    if (v6 > 2)
    {
      v7 = "???";
    }

    else
    {
      v7 = off_101F30B08[v6];
    }

    v21 = 136315138;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [d] Notify options: %s", &v21, 0xCu);
  }

  v8 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_10134463C(a1);
    v10 = "false";
    if (v9)
    {
      v10 = "true";
    }

    v21 = 136315138;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [d] Need to sync notify option: %s", &v21, 0xCu);
  }

  if (*(a1 + 328))
  {
    v11 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      isExpired = AutoStartTimer::isExpired(*(a1 + 328));
      v13 = "false";
      if (isExpired)
      {
        v13 = "true";
      }

      v21 = 136315138;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [d] Notify option timer exists. isExpired: %s", &v21, 0xCu);
    }
  }

  v14 = sub_101344894(a1);
  v15 = v14;
  if (v14 >= 0x100u)
  {
    v16 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_100976958(v15);
      v21 = 136315138;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [d] Mock Mode Type: %s", &v21, 0xCu);
    }
  }

  v18 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 344);
    if (v19 > 3)
    {
      v20 = "???";
    }

    else
    {
      v20 = off_101F30B20[v19];
    }

    v21 = 136315138;
    v22 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [d] (Em Env) User incapacitated: %s", &v21, 0xCu);
  }
}

void *sub_10134567C(void *a1)
{
  *a1 = off_101F30808;
  sub_101018D74(a1 + 45);
  v2 = a1[42];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_101018D74(a1 + 38);
  v3 = a1[36];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return sub_101647298(a1);
}

void sub_101345724(void *a1)
{
  sub_10134567C(a1);

  operator delete();
}

void sub_10134577C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F30960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013457D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v5.__vftable = 0;
      v3 = *(v1 + 16);
      std::exception_ptr::~exception_ptr(&v5);
      v1 = *(a1 + 24);
      if (!v3 && *(v1 + 8) >= 1)
      {
        v7.__cat_ = std::future_category();
        *&v7.__val_ = 4;
        std::future_error::future_error(&v5, v7);
        sub_100AE85C8(&v5);
        v4.__ptr_ = &v6;
        std::__assoc_sub_state::set_exception(v1, v4);
        std::exception_ptr::~exception_ptr(&v6);
        std::future_error::~future_error(&v5);
        v1 = *(a1 + 24);
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v1 + 16))(v1);
    }
  }
}

void sub_1013458B4(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_101345920(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1013459A0(uint64_t a1)
{
  if (*(a1 + 136))
  {
  }

  v2 = *(*a1 + 8);

  return v2(a1);
}

uint64_t *sub_101345A04(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    ctu::OsLogLogger::~OsLogLogger((v1 + 16));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_101345A60(id *a1)
{
  v10[0] = a1;
  v10[1] = 0;
  v2 = CLGetEEDCloakingKey();
  v3 = 0;
  v4 = v3;
  v5 = **a1;
  if (!v2 || v3)
  {
    if (!v5)
    {
      sub_100AE88D8(3u);
    }

    std::mutex::lock((v5 + 24));
    if ((*(v5 + 136) & 1) != 0 || (v11.__ptr_ = 0, v7 = *(v5 + 16), std::exception_ptr::~exception_ptr(&v11), v7))
    {
      sub_100AE88D8(2u);
    }

    *(v5 + 144) = 0;
  }

  else
  {
    if (!v5)
    {
      sub_100AE88D8(3u);
    }

    std::mutex::lock((v5 + 24));
    if ((*(v5 + 136) & 1) != 0 || (v11.__ptr_ = 0, v6 = *(v5 + 16), std::exception_ptr::~exception_ptr(&v11), v6))
    {
      sub_100AE88D8(2u);
    }

    *(v5 + 144) = v2;
  }

  *(v5 + 136) |= 5u;
  std::condition_variable::notify_all((v5 + 88));
  std::mutex::unlock((v5 + 24));
  atomic_store(0, byte_101FCA930);
  v8 = sub_100032AC8(a1 + 2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11.__ptr_) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I EED key fetch is now complete", &v11, 2u);
  }

  return sub_101345A04(v10);
}

void sub_101345C24(uint64_t a1)
{
  sub_101018D74((a1 + 8));

  operator delete();
}

uint64_t sub_101345C70(uint64_t a1, unsigned int a2)
{
  *(a1 + 18) = 1;
  *(a1 + 17) = a2;
  v2 = *(a1 + 8);
  v8 = 0;
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v3)
  {
    v8 = v3;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = 0;
  sub_100029A48(&v8);
  v5 = sub_10079CC40(v2);
  sub_100029A48(&v7);
  return v5;
}

void sub_101345D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

void sub_101345D40(uint64_t a1)
{
  sub_101018D74((a1 + 8));

  operator delete();
}

void sub_101345DAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F30AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101345E7C(void *a1, char **a2, char **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EEC0;
  v4 = *a2;
  v5 = *a3;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  sub_1000DCF88(a1 + 3, v4, v5, v5 - v4);
  return a1;
}

unint64_t sub_101345EEC@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v13 = result;
  v2 = *result;
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  if (v2)
  {
    v16 = begin();
    v4 = end();
    while (1)
    {
      result = v16;
      if (v16 == v4)
      {
        return result;
      }

      v5 = operator*();
      v15 = 0;
      sub_100010024(&theDict, v13);
      if (v5 > 7)
      {
        switch(v5)
        {
          case 8:
            v6 = "gsm";
            break;
          case 16:
            v6 = "scdma";
            break;
          case 32:
            v6 = "nr";
            break;
          default:
            goto LABEL_15;
        }
      }

      else
      {
        switch(v5)
        {
          case 1:
            v6 = "umts";
            break;
          case 2:
            v6 = "cdma";
            break;
          case 4:
            v6 = "lte";
            break;
          default:
LABEL_15:
            v6 = "unknown";
            break;
        }
      }

      v17[0] = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
      Value = CFDictionaryGetValue(theDict, v17[0]);
      v8 = Value;
      if (Value && (v9 = CFGetTypeID(Value), v9 == CFDictionaryGetTypeID()))
      {
        v15 = v8;
        CFRetain(v8);
      }

      else
      {
        v15 = 0;
      }

      sub_100005978(v17);
      sub_10001021C(&theDict);
      if (v15)
      {
        CFDictionaryGetValue(v15, @"Version");
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        ctu::cf::assign();
        v10 = *v3;
        if (!*v3)
        {
LABEL_29:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v11 = v10;
            v12 = *(v10 + 32);
            if (v12 <= v5)
            {
              break;
            }

            v10 = *v11;
            if (!*v11)
            {
              goto LABEL_29;
            }
          }

          if (v12 >= v5)
          {
            break;
          }

          v10 = v11[1];
          if (!v10)
          {
            goto LABEL_29;
          }
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }
      }

      sub_10001021C(&v15);
      operator++();
    }
  }

  return result;
}

uint64_t sub_101346228(capabilities::ct *a1)
{
  v1 = capabilities::ct::supportsLASDGSMDatabase(a1);
  if (v1)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = capabilities::ct::supportsLASDUMTSDatabase(v1);
  v4 = v2 | v3;
  v5 = capabilities::ct::supportsCapabilityC2KDevice(v3);
  if (v5)
  {
    v4 |= 2u;
  }

  v6 = capabilities::ct::supportsCapabilityTDSCDMADevice(v5);
  if (v6)
  {
    v7 = 20;
  }

  else
  {
    v7 = 4;
  }

  v8 = v4 | v7;
  if (capabilities::ct::supports5G(v6))
  {
    return v8 | 0x20;
  }

  else
  {
    return v8;
  }
}

const void **sub_101346294@<X0>(const void **result@<X0>, void *a2@<X8>)
{
  if (result[2])
  {
    v3 = result;
    v17 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = v17;
      v17 = Mutable;
      v18 = v5;
      sub_1000296E0(&v18);
    }

    v8 = *v3;
    v6 = v3 + 1;
    v7 = v8;
    if (v8 != v6)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9 > 7)
        {
          switch(v9)
          {
            case 8:
              v10 = "gsm";
              break;
            case 16:
              v10 = "scdma";
              break;
            case 32:
              v10 = "nr";
              break;
            default:
              goto LABEL_16;
          }
        }

        else
        {
          switch(v9)
          {
            case 1:
              v10 = "umts";
              break;
            case 2:
              v10 = "cdma";
              break;
            case 4:
              v10 = "lte";
              break;
            default:
LABEL_16:
              v10 = "unknown";
              break;
          }
        }

        v11 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
        v12 = (v7 + 5);
        v18 = v11;
        if (*(v7 + 63) < 0)
        {
          v12 = *v12;
        }

        v16 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x8000100u);
        sub_1001768B8(v17, v18, v16);
        sub_100005978(&v16);
        sub_100005978(&v18);
        v13 = v7[1];
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
            v14 = v7[2];
            v15 = *v14 == v7;
            v7 = v14;
          }

          while (!v15);
        }

        v7 = v14;
      }

      while (v14 != v6);
    }

    sub_100010180(a2, &v17);
    return sub_1000296E0(&v17);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_101346484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1013464BC@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  if (v2)
  {
    v4 = result;
    v13 = begin();
    v5 = end();
    while (1)
    {
      result = v13;
      if (v13 == v5)
      {
        return result;
      }

      v6 = operator*();
      v7 = v6;
      if (v6 > 7)
      {
        if (v6 == 8)
        {
          v8 = "gsm";
          goto LABEL_18;
        }

        if (v6 != 16)
        {
          if (v6 == 32)
          {
            v8 = "nr";
            goto LABEL_18;
          }

          goto LABEL_15;
        }

        v8 = "scdma";
      }

      else
      {
        if (v6 == 1)
        {
          v8 = "umts";
          goto LABEL_18;
        }

        if (v6 != 2)
        {
          if (v6 == 4)
          {
            v8 = "lte";
            goto LABEL_18;
          }

LABEL_15:
          v8 = "unknown";
          goto LABEL_18;
        }

        v8 = "cdma";
      }

LABEL_18:
      v12 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
      if (CFDictionaryGetValue(*v4, v12))
      {
        __p = 0;
        v15 = 0uLL;
        ctu::cf::assign();
        v16[0] = v15;
        *(v16 + 7) = *(&v15 + 7);
        v9 = *v3;
        if (!*v3)
        {
LABEL_25:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v10 = v9;
            v11 = *(v9 + 32);
            if (v11 <= v7)
            {
              break;
            }

            v9 = *v10;
            if (!*v10)
            {
              goto LABEL_25;
            }
          }

          if (v11 >= v7)
          {
            break;
          }

          v9 = v10[1];
          if (!v9)
          {
            goto LABEL_25;
          }
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p);
        }
      }

      sub_100005978(&v12);
      operator++();
    }
  }

  return result;
}

void sub_1013468F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = NanoRegistryObserver;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_101346A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101346B18;
  v7[3] = &unk_101F0F6C0;
  v7[4] = v4;
  v8 = v3;
  v5 = *(v4 + 8);
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_101346C28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 didEnterCompatibilityState_sync:?];
}

void sub_101346DE8(_Unwind_Exception *a1)
{
  sub_100004A34(v3);

  _Unwind_Resume(a1);
}

void sub_101346ECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 didDeviceUnpair_sync:?];
}

void sub_1013470A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1013471E4(uint64_t a1)
{
  sub_100020850();
  v2 = qword_101FCA938;
  if (os_log_type_enabled(qword_101FCA938, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) valueForProperty:NRDevicePropertyName];
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I propertyDidChange (%@) for %@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v7 = *(a1 + 40);
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 notifyDevicesUpdated:v6];
}

void sub_101347C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t object, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_100004A34(v42);
  *(v43 - 240) = &a38;
  sub_10032DC68((v43 - 240));

  _Unwind_Resume(a1);
}

void sub_101347D98(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v7 = xpc_string_create(v3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v9 = 0uLL;
  v10 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v5 = 0;
  v6[0] = a1;
  v6[1] = __p;
  sub_10000F688(v6, &v7, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v7);
}

void sub_101347E70(_Unwind_Exception *a1)
{
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101347E9C(Registry **a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v4 = *(a4 + 95);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a4 + 80);
  }

  if (!v4 || xpc_get_type(*a3) != &_xpc_type_dictionary)
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
  *&v29 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v29);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  std::mutex::unlock(v12);
  v27 = v19;
  v28 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v18);
  }

  if (v19 && (sub_10057BD14(a2, &v27, carrier_space::kCBAuthorizationRequestRequiresICCIDKey, 0) & 1) != 0)
  {
    if (*(a4 + 95) >= 0)
    {
      v20 = (a4 + 72);
    }

    else
    {
      v20 = *(a4 + 72);
    }

    v25 = xpc_string_create(v20);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    v29 = 0uLL;
    v30 = 0;
    ctu::cf::assign();
    *__p = v29;
    v23 = v30;
    v24[0] = a3;
    v21 = __p;
    if (v30 < 0)
    {
      v21 = v29;
    }

    v24[1] = v21;
    sub_10000F688(v24, &v25, &object);
    xpc_release(object);
    object = 0;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v25);
    v25 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  return v9;
}

void sub_1013480AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v23);
  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1013480F0(Registry **a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  v5 = *a1;
  if (!v5)
  {
    *a3 = xpc_null_create();
    return;
  }

  v68 = 0;
  v69 = 0;
  ServiceMap = Registry::getServiceMap(v5);
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
  *&v70 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v70);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  std::mutex::unlock(v8);
  v68 = v15;
  v69 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
    v15 = v68;
  }

  if (v15)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v63 = 0uLL;
    sub_101348A58(&v63, &v65);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    v16 = HIBYTE(v67);
    if (v67 < 0)
    {
      v16 = v66;
    }

    if (!v16)
    {
      *a3 = xpc_null_create();
LABEL_96:
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v65);
      }

      goto LABEL_98;
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v58 = 0uLL;
    sub_101348A58(&v58, &v60);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    v17 = HIBYTE(v62);
    if (v62 < 0)
    {
      v17 = v61;
    }

    if (!v17)
    {
      *a3 = xpc_null_create();
LABEL_94:
      if (SHIBYTE(v62) < 0)
      {
        operator delete(v60);
      }

      goto LABEL_96;
    }

    v55 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    __p = 0uLL;
    sub_101348A58(&__p, &v55);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

    v18 = HIBYTE(v57);
    if (v57 < 0)
    {
      v18 = v56;
    }

    if (!v18)
    {
      *a3 = xpc_null_create();
      goto LABEL_92;
    }

    *a3 = 0;
    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = v19;
    if (v19)
    {
      *a3 = v19;
    }

    else
    {
      v20 = xpc_null_create();
      *a3 = v20;
      if (!v20)
      {
        v21 = xpc_null_create();
        v20 = 0;
        goto LABEL_39;
      }
    }

    if (xpc_get_type(v20) == &_xpc_type_dictionary)
    {
      xpc_retain(v20);
      goto LABEL_40;
    }

    v21 = xpc_null_create();
LABEL_39:
    *a3 = v21;
LABEL_40:
    xpc_release(v20);
    if (v67 >= 0)
    {
      v22 = &v65;
    }

    else
    {
      v22 = v65;
    }

    v51 = xpc_string_create(v22);
    if (!v51)
    {
      v51 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v23 = string;
    if (v71 < 0)
    {
      v23 = string[0];
    }

    v34[0] = a3;
    v34[1] = v23;
    sub_10000F688(v34, &v51, &object);
    xpc_release(object);
    object = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v51);
    v51 = 0;
    if (v62 >= 0)
    {
      v24 = &v60;
    }

    else
    {
      v24 = v60;
    }

    v47 = xpc_string_create(v24);
    if (!v47)
    {
      v47 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v25 = string;
    if (v71 < 0)
    {
      v25 = string[0];
    }

    v34[0] = a3;
    v34[1] = v25;
    sub_10000F688(v34, &v47, &v48);
    xpc_release(v48);
    v48 = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v47);
    v47 = 0;
    if (v57 >= 0)
    {
      v26 = &v55;
    }

    else
    {
      v26 = v55;
    }

    v45 = xpc_string_create(v26);
    if (!v45)
    {
      v45 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v27 = string;
    if (v71 < 0)
    {
      v27 = string[0];
    }

    v34[0] = a3;
    v34[1] = v27;
    sub_10000F688(v34, &v45, &v46);
    xpc_release(v46);
    v46 = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v45);
    v45 = 0;
    sub_101348B24(a1, a2, v36);
    ctu::cf_to_xpc(v36[0], v28);
    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v29 = string;
    if (v71 < 0)
    {
      v29 = string[0];
    }

    v34[0] = a3;
    v34[1] = v29;
    sub_10000F688(v34, &v43, &v44);
    xpc_release(v44);
    v44 = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v43);
    v43 = 0;
    sub_100005978(v36);
    v30 = sub_10057BD14(a2, &v68, carrier_space::kCBSupportsStateParameterKey, 0);
    v41 = xpc_BOOL_create(v30);
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v31 = string;
    if (v71 < 0)
    {
      v31 = string[0];
    }

    v34[0] = a3;
    v34[1] = v31;
    sub_10000F688(v34, &v41, &v42);
    xpc_release(v42);
    v42 = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v41);
    v41 = 0;
    string[0] = 0;
    string[1] = 0;
    v50 = 0;
    v40 = 0;
    v39 = 0uLL;
    sub_101348A58(&v39, string);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v50) < 0)
    {
      if (!string[1])
      {
LABEL_91:
        operator delete(string[0]);
LABEL_92:
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v55);
        }

        goto LABEL_94;
      }

      v32 = string[0];
    }

    else
    {
      if (!HIBYTE(v50))
      {
        goto LABEL_92;
      }

      v32 = string;
    }

    v37 = xpc_string_create(v32);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *v34 = v70;
    v35 = v71;
    v36[0] = a3;
    v33 = v34;
    if (v71 < 0)
    {
      v33 = v34[0];
    }

    v36[1] = v33;
    sub_10000F688(v36, &v37, &v38);
    xpc_release(v38);
    v38 = 0;
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    xpc_release(v37);
    v37 = 0;
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  *a3 = xpc_null_create();
LABEL_98:
  if (v69)
  {
    sub_100004A34(v69);
  }
}