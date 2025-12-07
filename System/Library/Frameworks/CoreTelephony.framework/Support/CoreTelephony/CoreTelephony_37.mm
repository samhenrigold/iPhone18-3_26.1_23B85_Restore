uint64_t sub_100251230@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  *a2 = *(result + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1002513D8(uint64_t a1, NSObject **a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  *a1 = off_101E360F0;
  v14 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v24, kCtLoggingSystemName, "cp.tr.ctr");
  sub_100251808(v14, a2, &v24);
  ctu::OsLogContext::~OsLogContext(&v24);
  *a1 = off_101E35E20;
  *(a1 + 48) = *a4;
  v15 = a4[1];
  *(a1 + 56) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *a3;
  v16 = a3[1];
  *(a1 + 72) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = *a5;
  v17 = a5[1];
  *(a1 + 88) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = *a6;
  v18 = a6[1];
  *(a1 + 136) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 168) = 0uLL;
  *(a1 + 152) = 0;
  *(a1 + 145) = 0;
  *(a1 + 160) = 1;
  *(a1 + 216) = 0uLL;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0;
  *(a1 + 400) = 0;
  *(a1 + 184) = 0uLL;
  *(a1 + 200) = 0uLL;
  *(a1 + 232) = 0uLL;
  *(a1 + 248) = 0;
  *(a1 + 320) = 0uLL;
  *(a1 + 336) = 0uLL;
  *(a1 + 345) = 0uLL;
  *(a1 + 392) = a1 + 400;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 520) = 0;
  *(a1 + 552) = 0;
  sub_10000501C(&__p, "CellularPlanTransferFlowController");
  v19 = *(a1 + 24);
  v21 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  ctu::RestModule::RestModule();
  if (v21)
  {
    dispatch_release(v21);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 600) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 608) = a1 + 616;
  *(a1 + 632) = 0;
  *(a1 + 634) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = a1 + 704;
  *(a1 + 776) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 768) = a1 + 776;
  *(a1 + 792) = 0;
  *(a1 + 816) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 849) = 0u;
  *(a1 + 928) = a1 + 936;
  *(a1 + 960) = 0u;
  *(a1 + 952) = a1 + 960;
  *(a1 + 984) = 0u;
  *(a1 + 976) = a1 + 984;
  *(a1 + 1040) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = a1 + 1040;
  *(a1 + 1056) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1064) = a1 + 1072;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = a7;
  *(a1 + 1121) = 0;
  return a1;
}

void sub_1002516C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10002B644(v20 + 360);
  sub_10027B1C8(v20 + 280);
  sub_100285554(v20 + 248);
  sub_100009970(v20 + 224, *(v18 + 400));
  if (*(v18 + 384) == 1 && *(v18 + 383) < 0)
  {
    operator delete(*(v18 + 360));
  }

  a18 = v20 + 160;
  sub_10027B228(&a18);
  sub_10000FF50(v18 + 296);
  sub_1002854D4(v20 + 88);
  v22 = *(v18 + 248);
  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_10027B2AC(&a18);
  a18 = v20 + 24;
  sub_10027B3D0(&a18);
  a18 = v20;
  sub_10027B454(&a18);
  v23 = *(v18 + 136);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v18 + 120);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v18 + 104);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v18 + 88);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(v18 + 72);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(v18 + 56);
  if (v28)
  {
    sub_100004A34(v28);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544(v19);
  _Unwind_Resume(a1);
}

void *sub_100251808(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100251870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100251898(uint64_t a1)
{
  *a1 = off_101E35E20;
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I destructor tr.ctr : %p", buf, 0xCu);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = *(a1 + 328);
        v9 = *(a1 + 336);
        while (v8 != v9)
        {
          if (*(v8 + 908) == 1)
          {
            v10 = *(v8 + 274);
            v11 = *(v8 + 282);
            if (*(v8 + 343) < 0)
            {
              sub_100005F2C(__dst, *(v8 + 320), *(v8 + 328));
            }

            else
            {
              *__dst = *(v8 + 320);
              v31 = *(v8 + 336);
            }

            v12 = *(v8 + 584);
            v13 = *(v8 + 592);
            if (*(v8 + 695) < 0)
            {
              sub_100005F2C(__p, *(v8 + 672), *(v8 + 680));
            }

            else
            {
              *__p = *(v8 + 672);
              v29 = *(v8 + 688);
            }

            (*(*v7 + 24))(v7, v10, v11, __dst, v12, v13, __p, 3);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v31) < 0)
            {
              operator delete(__dst[0]);
            }
          }

          v8 += 1072;
        }

        sub_100251DA8(a1);
      }

      sub_100004A34(v6);
    }
  }

  v14 = *(a1 + 1112);
  *(a1 + 1112) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_1002855D4((a1 + 1104), 0);
  sub_10027B4D8(a1 + 1064, *(a1 + 1072));
  sub_1000DD0AC(a1 + 1032, *(a1 + 1040));
  v15 = *(a1 + 1016);
  *(a1 + 1016) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 1008);
  *(a1 + 1008) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 1000);
  *(a1 + 1000) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  sub_100009970(a1 + 976, *(a1 + 984));
  sub_1002472DC(a1 + 952, *(a1 + 960));
  sub_1000CFC30(a1 + 928, *(a1 + 936));
  *buf = a1 + 904;
  sub_10005C284(buf);
  if (*(a1 + 888) == 1)
  {
    sub_100009970(a1 + 864, *(a1 + 872));
  }

  v18 = *(a1 + 856);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  if (*(a1 + 816) == 1 && *(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
  }

  sub_100077CD4(a1 + 768, *(a1 + 776));
  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  if (*(a1 + 743) < 0)
  {
    operator delete(*(a1 + 720));
  }

  sub_1001704B0(a1 + 696, *(a1 + 704));
  *buf = a1 + 664;
  sub_1000B2AF8(buf);
  *buf = a1 + 640;
  sub_100112048(buf);
  sub_100045B14(a1 + 608, *(a1 + 616));
  sub_10027B148(a1 + 576);
  v19 = *(a1 + 568);
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_10002B644(a1 + 528);
  if (*(a1 + 520) == 1)
  {
    sub_10001021C((a1 + 512));
    sub_100005978((a1 + 504));
    if (*(a1 + 503) < 0)
    {
      operator delete(*(a1 + 480));
    }

    if (*(a1 + 479) < 0)
    {
      operator delete(*(a1 + 456));
    }
  }

  sub_100285554(a1 + 416);
  sub_100009970(a1 + 392, *(a1 + 400));
  if (*(a1 + 384) == 1 && *(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  *buf = a1 + 328;
  sub_10027B228(buf);
  sub_10000FF50(a1 + 296);
  sub_1002854D4(a1 + 256);
  v20 = *(a1 + 248);
  if (v20)
  {
    sub_100004A34(v20);
  }

  *buf = a1 + 216;
  sub_10027B2AC(buf);
  *buf = a1 + 192;
  sub_10027B3D0(buf);
  *buf = a1 + 168;
  sub_10027B454(buf);
  v21 = *(a1 + 136);
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = *(a1 + 120);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(a1 + 104);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(a1 + 72);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(a1 + 56);
  if (v26)
  {
    sub_100004A34(v26);
  }

  ctu::OsLogLogger::~OsLogLogger(v2);
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_100251D98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100251DA8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100649C64(*(a1 + 144));
    v4 = *(a1 + 145);
    v5 = *(a1 + 146);
    *buf = 136315650;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *v22 = v4;
    *&v22[4] = 1024;
    *v23 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I List source: (%s), Local transfer: (%{BOOL}d), QR Code transfer: (%{BOOL}d)", buf, 0x18u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 150);
    v7 = *(a1 + 440) != 0;
    v8 = *(a1 + 151);
    v9 = *(a1 + 153);
    v10 = *(a1 + 154);
    v11 = *(a1 + 155);
    v12 = *(a1 + 896);
    *buf = 67110656;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = v7;
    *v22 = 1024;
    *&v22[2] = v8;
    *v23 = 1024;
    *&v23[2] = v9;
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    v28 = 1024;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Plan data available: (%{BOOL}d), Transfer ongoing: (%{BOOL}d), Awaiting CUMessage resp: (%{BOOL}d), Awaiting push: (%{BOOL}d), Awaiting TSS: (%{BOOL}d), Awaiting TSS webservice: (%{BOOL}d), Denylist Uploaded: (%{BOOL}d)", buf, 0x2Cu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 128207979 * ((*(a1 + 336) - *(a1 + 328)) >> 4);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Target ent data map size: %d", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 1121);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I last transfer plan : %{BOOL}d", buf, 8u);
  }

  v15 = *(a1 + 328);
  for (i = *(a1 + 336); v15 != i; v15 += 1072)
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_10031A10C(v15, buf);
      if (v23[3] >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      *v19 = 136315138;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s", v19, 0xCu);
      if ((v23[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void sub_100252070(uint64_t a1)
{
  sub_100251898(a1);

  operator delete();
}

void sub_1002520A8(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4, void *a5, const std::string *a6, uint64_t a7, const std::string *a8, uint64_t a9, uint64_t a10, const std::string **a11, char a12)
{
  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Target Transfer Controller init. %p", buf, 0xCu);
  }

  (***(a1 + 48))(buf);
  Registry::createRestModuleOneTimeUseConnection(&v33, *buf);
  ctu::RestModule::connect();
  if (v34)
  {
    sub_100004A34(v34);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((a1 + 640) != a2)
  {
    sub_100169D44((a1 + 640), *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  }

  if ((a1 + 664) != a3)
  {
    sub_100169790((a1 + 664), *a3, a3[1], 0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3));
  }

  *(a1 + 147) = a4;
  if (a1 + 696 != a7)
  {
    sub_1001707A0((a1 + 696), *a7, (a7 + 8));
  }

  std::string::operator=((a1 + 720), a8);
  if ((a1 + 768) != a5)
  {
    sub_1002856BC((a1 + 768), *a5, a5 + 1);
  }

  sub_10012BF3C((a1 + 792), a6);
  (***(a1 + 48))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v22 = ServiceMap;
  if (v23 < 0)
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

  std::mutex::lock(ServiceMap);
  __p[0] = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, __p);
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
      goto LABEL_23;
    }
  }

  else
  {
    v29 = 0;
  }

  std::mutex::unlock(v22);
  v28 = 0;
  v30 = 1;
LABEL_23:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v29)
  {
    (*(*v29 + 256))(buf, v29);
    v31 = (a1 + 824);
    if (*(a1 + 847) < 0)
    {
      operator delete(*v31);
    }

    *v31 = *buf;
    *(a1 + 840) = v37;
  }

  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  sub_100252688((a1 + 576), a1 + 560);
  sub_100004AA0(buf, (a1 + 8));
  v32 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v32);
  }

  sub_10000501C(__p, "/cc/events/pending_install_plan_push_notification_received");
  operator new();
}

void sub_1002525DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100252688(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100285A2C(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1002526EC(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/internet_reachability_interface");
  v5[0] = off_101E36548;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002527A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002527CC(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/ethernet_status");
  v5[0] = off_101E365C8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100252880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002528AC(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/internet_status");
  v5[0] = off_101E36648;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100252960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10025298C(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v12 = sub_100649C38(1);
  sub_10000501C(&v18, v12);
  sub_100252BF4((a1 + 640), __p, v13, v14);
  sub_10092144C(a2, a3, a4, __p, a5, &v17);
  v21 = a1;
  sub_100004AA0(&v19, (a1 + 8));
  v15 = v20;
  v22 = v19;
  v23 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
  }

  sub_1000224C8(v24, a6);
  v24[7] = 0;
  operator new();
}

void sub_100252B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  sub_100287028(v27 - 104);
  sub_100252C44(&a25);
  sub_10001021C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100252BF4@<X0>(uint64_t *result@<X0>, void *a2@<X8>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    while (v4[1] != 2)
    {
      v4 += 22;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }
  }

  if (v4 != v5 && v4[3] == 3)
  {
    return sub_100922314((v4 + 4), a3, a4);
  }

LABEL_8:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_100252C44(uint64_t a1)
{
  sub_10000FF50(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100252C7C(uint64_t a1, const void **a2)
{
  v15 = 0;
  v16 = 0;
  (***(a1 + 48))(&v11);
  Registry::getNotificationSenderFactory(&v13, v11);
  v4 = v13;
  (***(a1 + 48))(&v7);
  Registry::getTimerService(&v9, v7);
  (*(*v4 + 168))(&v15, v4, &v9, a1 + 24);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v5 = v15;
  if (v15)
  {
    sub_100010024(&v6, a2);
    (*(*v5 + 40))(v5, &v6);
    sub_10001021C(&v6);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176652C();
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_100252E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

const void **sub_100252E70(void *a1, __int16 a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x100) != 0 && a2 - 1 > 1)
  {
    if (a3)
    {
      goto LABEL_18;
    }

    v8 = *(a4 + 343);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a4 + 328);
    }

    if (!v8)
    {
LABEL_18:
      v15 = a1[5];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Local transfer or no profile details", buf, 2u);
      }

      v16 = *(a5 + 24);
      if (!v16)
      {
        sub_100022DB4();
      }

      return (*(*v16 + 48))(v16);
    }

    else
    {
      v9 = *(a4 + 712);
      if (v9)
      {
        v24 = 0x400000000000000;
        *__p = *"19.0";
        v10 = sub_100927A9C(__p);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }

        if (v9 >= v10)
        {
          v22 = 0;
          sub_100930308(1, &v22);
          sub_100010024(&v21, &v22);
          sub_100252C7C(a1, &v21);
          sub_10001021C(&v21);
          v17 = a1[5];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Wifi required for transfer.", buf, 2u);
          }

          sub_10025329C(a1, 0);
          v18 = sub_100649C38(12);
          sub_10000501C(buf, v18);
          sub_100921DBC((a4 + 320), &v19);
          v25 = a1;
          sub_1002306AC(a1 + 1, &v26);
          sub_10009CF40(&v27, a5);
          sub_10025351C(v28, &v25);
        }
      }

      v11 = a1[5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Source pre-Luck. No need to show wifi alert.", buf, 2u);
      }

      return sub_100253254(a5);
    }
  }

  else
  {
    v13 = *(a5 + 24);
    if (!v13)
    {
      sub_100022DB4();
    }

    v14 = *(*v13 + 48);

    return v14();
  }
}

void sub_1002531B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  sub_100287028(v30 - 88);
  sub_1002535AC(&a28);
  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100253254(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10025329C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240))
  {
    *(a1 + 160) = a2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "hide";
      if (a2)
      {
        v5 = "show";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending request to %s prox card on source", buf, 0xCu);
    }

    cf = 0;
    sub_10092EA84(a2, &cf);
    v6 = *(a1 + 240);
    v7 = sub_100649C38(11);
    sub_10000501C(buf, v7);
    v11 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v10 = 0;
    v13[0] = off_101E37D68;
    v13[3] = v13;
    (*(*v6 + 16))(v6, buf, &v11, a1 + 24, &v10, v13);
    sub_100287028(v13);
    sub_10001021C(&v11);
    if (v15 < 0)
    {
      operator delete(*buf);
    }

    *buf = 0;
    sub_10092EC30(a2, buf);
    v9 = *buf;
    if (*buf)
    {
      CFRetain(*buf);
    }

    sub_100252C7C(a1, &v9);
    sub_10001021C(&v9);
    sub_10001021C(buf);
    sub_10001021C(&cf);
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No change to prox card required in Manatee flow.", buf, 2u);
    }
  }
}

void sub_1002534A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002535AC(uint64_t a1)
{
  sub_10002B644(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

BOOL sub_1002535E4(uint64_t a1)
{
  v3 = 0;
  v4[0] = 0;
  v4[1] = 0;
  (*(**(a1 + 48) + 1048))(&v3);
  v1 = v4 != sub_100007A6C(&v3, byte_101FBA110);
  sub_100009970(&v3, v4[0]);
  return v1;
}

void sub_10025369C(void *a1)
{
  if (a1[30])
  {
    v2 = sub_100649C38(14);
    sub_10000501C(&buf, v2);
    sub_100922038(2, &v21);
    v20 = 5;
    sub_100004AA0(&v22, a1 + 1);
    v3 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v24 = 0;
    operator new();
  }

  if (a1[44] == a1[42])
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101766560();
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
    sub_100BE2338(&v22);
    BYTE4(v23) |= 1u;
    LODWORD(v23) = 2;
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[44];
      v6 = (v5 + 320);
      if (*(v5 + 343) < 0)
      {
        v6 = *v6;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending continue transfer without wifi req, iccid: %s", &buf, 0xCu);
    }

    v7 = a1[44];
    if (*(v7 + 695) < 0)
    {
      sub_100005F2C(__dst, *(v7 + 672), *(v7 + 680));
      v7 = a1[44];
    }

    else
    {
      *__dst = *(v7 + 672);
      v19 = *(v7 + 688);
    }

    if (*(v7 + 343) < 0)
    {
      sub_100005F2C(v16, *(v7 + 320), *(v7 + 328));
      v7 = a1[44];
    }

    else
    {
      *v16 = *(v7 + 320);
      v17 = *(v7 + 336);
    }

    v8 = *(v7 + 584);
    v9 = *(v7 + 592);
    v10 = sub_100649C38(14);
    sub_10000501C(v14, v10);
    buf = 0uLL;
    v26 = 0;
    PB::Writer::Writer(&buf);
    (*(v22 + 24))(&v22, &buf);
    __p = 0;
    v12 = 0;
    v13 = 0;
    sub_10018A52C(&__p, *(&buf + 1), buf, buf - *(&buf + 1));
    PB::Writer::~Writer(&buf);
    sub_100253ADC(a1, __dst, v16, v8, v9, v14, &__p);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    PB::Base::~Base(&v22);
  }
}

void sub_1002539EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  PB::Base::~Base(&a35);
  _Unwind_Resume(a1);
}

void sub_100253ADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  if (a1[30])
  {
    goto LABEL_2;
  }

  v12 = a1[9];
  if (!v12)
  {
    goto LABEL_2;
  }

  v15 = std::__shared_weak_count::lock(v12);
  if (!v15)
  {
    goto LABEL_2;
  }

  v16 = v15;
  v17 = a1[8];
  if (!v17)
  {
    sub_100004A34(v15);
LABEL_2:
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    memset(__dst, 0, sizeof(__dst));
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst[0] = *a2;
      *&__dst[1] = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst[1] + 8, *a3, *(a3 + 8));
    }

    else
    {
      *(&__dst[1] + 8) = *a3;
      *(&__dst[2] + 1) = *(a3 + 16);
    }

    v38 = 0uLL;
    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(&v39, *a6, *(a6 + 1));
    }

    else
    {
      v39 = *a6;
      *&v40 = *(a6 + 2);
    }

    *(&v40 + 1) = 0;
    v41 = 0uLL;
    sub_100034C50(&v40 + 1, *a7, *(a7 + 8), *(a7 + 8) - *a7);
    LOBYTE(v42) = 0;
    cf = 0;
    sub_10092E208(__dst, &cf);
    v25 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v24 = 45;
    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(v18, *a6, *(a6 + 1));
    }

    else
    {
      *v18 = *a6;
      v19 = *(a6 + 2);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v20, *a3, *(a3 + 8));
    }

    else
    {
      *v20 = *a3;
      v21 = *(a3 + 16);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v23 = *(a2 + 16);
    }

    v36 = 0;
    operator new();
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v34, *a2, *(a2 + 8));
  }

  else
  {
    *v34 = *a2;
    v35 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v32, *a3, *(a3 + 8));
  }

  else
  {
    *v32 = *a3;
    v33 = *(a3 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(v30, *a6, *(a6 + 1));
  }

  else
  {
    *v30 = *a6;
    v31 = *(a6 + 2);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_100034C50(&v27, *a7, *(a7 + 8), *(a7 + 8) - *a7);
  (*(*v17 + 32))(v17, v34, v32, a4, a5, v30, &v27);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  sub_100004A34(v16);
}

void sub_100253F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

void sub_100254084()
{
  if (*(v0 - 121) < 0)
  {
    operator delete(*(v0 - 144));
  }

  if (*(v0 - 161) < 0)
  {
    operator delete(*(v0 - 184));
  }

  if (*(v0 - 185) < 0)
  {
    operator delete(*(v0 - 208));
  }

  JUMPOUT(0x10025407CLL);
}

void sub_1002540BC(uint64_t a1, __int128 *a2, unsigned __int8 *a3, char a4, const void **a5, unsigned __int8 *a6, const void **a7, unsigned __int8 *a8, unsigned int *a9, uint64_t *a10)
{
  if (a8[1] == 1)
  {
    sub_100319F10(*a10, *a8);
  }

  if (*(a9 + 4) == 1)
  {
    sub_100319F28(*a10, *a9);
  }

  if ((*(a1 + 160) & 1) == 0)
  {
    sub_10025329C(a1, 1);
  }

  v17 = *a3;
  v18 = *a6;
  sub_10005C7A4(&v39, a5);
  sub_100010024(&v38, a7);
  sub_100254358(a1, a2, v17, v18, &v39, &v38);
  sub_10001021C(&v38);
  sub_100005978(&v39);
  v31[0] = a4;
  v31[1] = *a6;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v32, *a2, *(a2 + 1));
  }

  else
  {
    v32 = *a2;
    v33 = *(a2 + 2);
  }

  sub_1002549A0(a1, a2, &__p);
  sub_10005C7A4(&v36, a5);
  sub_100010024(&v37, a7);
  sub_100254AA0(a1 + 448, v31);
  sub_10001021C(&v37);
  sub_100005978(&v36);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  v19 = *(a1 + 352);
  v20 = *(v19 + 343);
  if (v20 >= 0)
  {
    v21 = *(v19 + 343);
  }

  else
  {
    v21 = *(v19 + 328);
  }

  v22 = *(a2 + 23);
  v23 = v22;
  v24 = *(a2 + 1);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 1);
  }

  if (v21 == v22 && ((v25 = (v19 + 320), v26 = *(v19 + 320), v20 >= 0) ? (v27 = v25) : (v27 = v26), v23 >= 0 ? (v28 = a2) : (v28 = *a2), !memcmp(v27, v28, v21)))
  {
    sub_100254C38(a1);
    sub_100254E74(a1);
  }

  else
  {
    if (v23 < 0)
    {
      sub_100005F2C(v29, *a2, v24);
    }

    else
    {
      *v29 = *a2;
      v30 = *(a2 + 2);
    }

    sub_100255D0C(a1, v29);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }
}

void sub_100254300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100254358(uint64_t a1, const void **a2, uint64_t a3, unsigned int a4, const void **a5, const void **a6)
{
  v58 = a3;
  if ((*(a1 + 384) & 1) == 0)
  {
    *(a1 + 156) = a3;
    v8 = *(a1 + 72);
    if (v8)
    {
      v13 = std::__shared_weak_count::lock(v8);
      if (v13)
      {
        v14 = *(a1 + 64);
        if (v14)
        {
          *v56 = 0u;
          v57 = 0u;
          memset(&v55, 0, sizeof(v55));
          __p[0] = 0;
          __p[1] = 0;
          v54 = 0;
          memset(&v52, 0, sizeof(v52));
          memset(&v51, 0, sizeof(v51));
          v15 = sub_10025CD10((a1 + 328), a2);
          v18 = v15;
          v44 = v13;
          if (*(a1 + 336) != v15)
          {
            v19 = *(v15 + 647);
            if (v19 < 0)
            {
              v19 = *(v15 + 632);
            }

            if (v19)
            {
              sub_1001696A4(v56, (v15 + 624));
            }

            v59 = *(v18 + 274);
            sub_100922314(&v59, v16, v17);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *buf;
            v54 = *&buf[16];
            std::string::operator=(&v55, (v18 + 344));
            std::string::operator=(&v52, (v18 + 416));
            if (*(v18 + 1024) == 1)
            {
              std::string::operator=(&v51, (v18 + 1000));
            }
          }

          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v41 = sub_10064A0D0(a3);
            if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v55;
            }

            else
            {
              v21 = v55.__r_.__value_.__r.__words[0];
            }

            v22 = *a2;
            if (*(a2 + 23) >= 0)
            {
              v22 = a2;
            }

            if (BYTE8(v57) == 1)
            {
              v39 = v22;
              v40 = v21;
              sub_10000501C(&v50, " -> ");
              if ((BYTE8(v57) & 1) == 0)
              {
                sub_1000D1644();
              }

              if ((SBYTE7(v57) & 0x80u) == 0)
              {
                v23 = v56;
              }

              else
              {
                v23 = v56[0];
              }

              if ((SBYTE7(v57) & 0x80u) == 0)
              {
                v24 = BYTE7(v57);
              }

              else
              {
                v24 = v56[1];
              }

              v25 = std::string::append(&v50, v23, v24);
              v26 = *&v25->__r_.__value_.__l.__data_;
              v60 = v25->__r_.__value_.__r.__words[2];
              v59 = v26;
              v25->__r_.__value_.__l.__size_ = 0;
              v25->__r_.__value_.__r.__words[2] = 0;
              v25->__r_.__value_.__r.__words[0] = 0;
              v27 = &v59;
              if (v60 < 0)
              {
                v27 = v59;
              }

              *buf = 136315906;
              *&buf[4] = v41;
              *&buf[12] = 2080;
              *&buf[14] = v40;
              *&buf[22] = 2080;
              v62 = v39;
              v63 = 2080;
              v64 = v27;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I update pending plan state %s: [IMEI:%s ICCID:%s]%s", buf, 0x2Au);
              if (SHIBYTE(v60) < 0)
              {
                operator delete(v59);
              }

              if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *buf = 136315906;
              *&buf[4] = v41;
              *&buf[12] = 2080;
              *&buf[14] = v21;
              *&buf[22] = 2080;
              v62 = v22;
              v63 = 2080;
              v64 = "";
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I update pending plan state %s: [IMEI:%s ICCID:%s]%s", buf, 0x2Au);
            }
          }

          (*(*v14 + 64))(v14, &v55, __p, a2, a3, v56);
          v42 = v18;
          v28 = *(a1 + 904);
          v29 = *(a1 + 912);
          v43 = a4;
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(__dst, *a2, a2[1]);
          }

          else
          {
            *__dst = *a2;
            v49 = a2[2];
          }

          v30 = HIBYTE(v49);
          if (v28 == v29)
          {
LABEL_57:
            v38 = 0;
          }

          else
          {
            if (SHIBYTE(v49) >= 0)
            {
              v31 = HIBYTE(v49);
            }

            else
            {
              v31 = __dst[1];
            }

            if (SHIBYTE(v49) >= 0)
            {
              v32 = __dst;
            }

            else
            {
              v32 = __dst[0];
            }

            v33 = v28 + 432;
            while (1)
            {
              v34 = *(v33 + 23);
              v35 = v34;
              if ((v34 & 0x80u) != 0)
              {
                v34 = *(v33 + 8);
              }

              if (v31 == v34)
              {
                v36 = v35 >= 0 ? v33 : *v33;
                if (!memcmp(v32, v36, v31))
                {
                  break;
                }
              }

              v37 = v33 + 848;
              v33 += 1280;
              if (v37 == v29)
              {
                goto LABEL_57;
              }
            }

            v38 = 1;
          }

          if (v30 < 0)
          {
            operator delete(__dst[0]);
          }

          v13 = v44;
          if (a3 == 11 && *(a1 + 336) != v42)
          {
            buf[0] = 1;
            sub_100261ECC(a1, buf, &v58, v42, v38, *(v42 + 700));
          }

          sub_10005C7A4(&v47, a5);
          sub_100010024(&v46, a6);
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&v45, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
          }

          else
          {
            v45 = v52;
          }

          sub_10026C910(a1, a2, a3, v43, &v47, &v46, &v45, &v51);
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          sub_10001021C(&v46);
          sub_100005978(&v47);
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (BYTE8(v57) == 1 && SBYTE7(v57) < 0)
          {
            operator delete(v56[0]);
          }

          goto LABEL_80;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766594();
    }

LABEL_80:
    if (v13)
    {
      sub_100004A34(v13);
    }
  }
}

void sub_1002548C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a57 == 1 && a56 < 0)
  {
    operator delete(a51);
  }

  sub_100004A34(a14);
  _Unwind_Resume(a1);
}

void *sub_1002549A0@<X0>(void *result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 41);
  v5 = *(result + 42);
  if (v4 != v5)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = v4 + 320;
    while (1)
    {
      v10 = *(v9 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 8);
      }

      if (v10 == v7)
      {
        v12 = v11 >= 0 ? v9 : *v9;
        result = memcmp(v12, v8, v7);
        if (!result)
        {
          break;
        }
      }

      v13 = v9 + 752;
      v9 += 1072;
      if (v13 == v5)
      {
        goto LABEL_22;
      }
    }

    v4 = v9 - 320;
  }

  if (v4 == v5)
  {
LABEL_22:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else if (*(v4 + 439) < 0)
  {
    v15 = *(v4 + 416);
    v16 = *(v4 + 424);

    return sub_100005F2C(a3, v15, v16);
  }

  else
  {
    v14 = *(v4 + 416);
    *(a3 + 16) = *(v4 + 432);
    *a3 = v14;
  }

  return result;
}

uint64_t sub_100254AA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = (a2 + 8);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v6 = *v5;
    *(a1 + 24) = *(v5 + 2);
    *(a1 + 8) = v6;
    *(a2 + 31) = 0;
    *(a2 + 8) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
    if (a1 != a2)
    {
      v8 = *(a1 + 56);
      *(a1 + 56) = 0;
      v13 = v8;
      *(a1 + 56) = *(a2 + 56);
      *(a2 + 56) = 0;
      sub_100005978(&v13);
      v9 = *(a1 + 64);
      *(a1 + 64) = 0;
      v13 = v9;
      *(a1 + 64) = *(a2 + 64);
      *(a2 + 64) = 0;
      sub_10001021C(&v13);
    }
  }

  else
  {
    v10 = *v5;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v10;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *v5 = 0;
    v11 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v11;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a1 + 72) = 1;
  }

  return a1;
}

uint64_t sub_100254BE4(uint64_t a1)
{
  sub_10001021C((a1 + 64));
  sub_100005978((a1 + 56));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100254C38(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (*(a1 + 328) == v1)
  {
    return;
  }

  v3 = *(a1 + 352);
  if (v3 == v1)
  {
    return;
  }

  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  sub_100260070(v3 + 320, __p);
  sub_100319F44(*(a1 + 352));
  (***(a1 + 48))(&v19);
  ServiceMap = Registry::getServiceMap(v19);
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
  v23 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v23);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_11:
  (*(*v12 + 88))(v12, __p);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  v14 = *(a1 + 352);
  v15 = *(a1 + 336);
  if (v14 + 1072 == v15)
  {
    v17 = *(a1 + 352);
  }

  else
  {
    v16 = *(a1 + 352);
    do
    {
      v17 = v16 + 1072;
      sub_10026A694(v16, (v16 + 1072));
      v18 = v16 + 2144;
      v16 += 1072;
    }

    while (v18 != v15);
    v15 = *(a1 + 336);
  }

  while (v15 != v17)
  {
    v15 -= 1072;
    sub_10027C3B4(v15);
  }

  *(a1 + 336) = v17;
  *(a1 + 352) = v14;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100254E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100254E74(uint64_t a1)
{
  if (*(a1 + 384) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Preflight ongoing, dont trigger", buf, 2u);
    }

    return;
  }

  v3 = *(a1 + 336);
  v4 = *(a1 + 352);
  if (v4 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 1066);
  }

  if (*(a1 + 147) != 1 || (v5) && *(a1 + 520) == 1)
  {
    v6 = *(a1 + 449);
    v7 = *(a1 + 504);
    if (v7 && CFStringGetLength(v7) >= 1)
    {
      if (*(a1 + 352) != *(a1 + 336))
      {
        v71 = 0;
        v72 = 0;
        sub_100254358(a1, (a1 + 456), 6, v6, &v72, &v71);
        sub_10001021C(&v71);
        sub_100005978(&v72);
      }

      if (v6)
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Delay error websheet handling", buf, 2u);
        }
      }

      else
      {
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        (***(a1 + 48))(&v69);
        Registry::getNotificationSenderFactory(buf, v69);
        v17 = *buf;
        (***(a1 + 48))(&v65);
        Registry::getTimerService(&v67, v65);
        (*(*v17 + 168))(&__p, v17, &v67, a1 + 24);
        if (v68)
        {
          sub_100004A34(v68);
        }

        if (v66)
        {
          sub_100004A34(v66);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v70)
        {
          sub_100004A34(v70);
        }

        v69 = 0;
        v70 = 0;
        (***(a1 + 48))(buf);
        ServiceMap = Registry::getServiceMap(*buf);
        sub_100295C34(&v69, ServiceMap);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        memset(buf, 0, sizeof(buf));
        if (*(a1 + 503) < 0)
        {
          sub_100005F2C(buf, *(a1 + 480), *(a1 + 488));
        }

        else
        {
          *buf = *(a1 + 480);
          *&buf[16] = *(a1 + 496);
        }

        v65 = 0;
        sub_100010024(&v65, (a1 + 512));
        size = __p.__r_.__value_.__l.__size_;
        v64 = *&__p.__r_.__value_.__l.__data_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v70;
        v63[0] = v69;
        v63[1] = v70;
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10005C7A4(&v62, (a1 + 504));
        sub_100010024(&v61, &v65);
        v28 = *(a1 + 146);
        v29 = *(a1 + 24);
        v60 = v29;
        if (v29)
        {
          dispatch_retain(v29);
        }

        v30 = *(a1 + 72);
        v59[0] = *(a1 + 64);
        v59[1] = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10026CEDC(&v64, v63, (a1 + 456), buf, &v62, &v61, 0, v28, &v60, v59);
        if (v30)
        {
          std::__shared_weak_count::__release_weak(v30);
        }

        if (v29)
        {
          dispatch_release(v29);
        }

        sub_10001021C(&v61);
        sub_100005978(&v62);
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (size)
        {
          sub_100004A34(size);
        }

        sub_10001021C(&v65);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v70)
        {
          sub_100004A34(v70);
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          sub_100004A34(__p.__r_.__value_.__l.__size_);
        }
      }
    }

    v31 = *(a1 + 448);
    sub_10025C4D4(a1 + 448);
    if (*(a1 + 440))
    {
      sub_10025B4DC(a1 + 416, v31, v6);
      sub_10028C948(a1 + 416);
    }

    if (*(a1 + 328) == *(a1 + 336))
    {
      sub_100259FCC(a1);
    }

    return;
  }

  if (v4 == v3)
  {
    if (*(a1 + 440))
    {
      if (*(a1 + 520) == 1)
      {
        sub_10025B4DC(a1 + 416, *(a1 + 448), *(a1 + 449));
        sub_10025C4D4(a1 + 448);
      }

      else
      {
        sub_10025B4DC(a1 + 416, 1, 0);
      }

      sub_10028C948(a1 + 416);
      if (*(a1 + 328) != *(a1 + 336))
      {
        return;
      }
    }

    else if (*(a1 + 328) != v3)
    {
      return;
    }

    sub_100259FCC(a1);
  }

  else
  {
    v9 = *(a1 + 144);
    if ((v9 - 3) >= 2 && v9 != 1)
    {
      if (v9 == 2)
      {
        v10 = *(v4 + 191);
        if (v10 < 0)
        {
          v10 = *(v4 + 176);
        }

        if (v10)
        {
          v53 = 0;
          v54 = 0;
          sub_100254358(a1, (v4 + 320), 4, 0, &v54, &v53);
          sub_10001021C(&v53);
          sub_100005978(&v54);
          memset(buf, 0, sizeof(buf));
          sub_100260070(v4 + 320, buf);
          memset(&__p, 0, sizeof(__p));
          v11 = sub_10026AB6C(a1, *(a1 + 352));
          v12 = (*(**(a1 + 48) + 32))(*(a1 + 48));
          sub_100930AFC((a1 + 768), (a1 + 664), (a1 + 640), v11, v12, *(a1 + 145), &__p);
          v13 = sub_1009314B8((a1 + 768), &__p.__r_.__value_.__l.__data_);
          if (v13)
          {
            (*(**(a1 + 48) + 312))(*(a1 + 48), buf, v13);
          }

          (***(a1 + 48))(&v65);
          sub_10014F618(v65, &v69);
          v51 = 2;
          (*(*v69 + 80))(v69, buf, &v51);
          if (v70)
          {
            sub_100004A34(v70);
          }

          if (v66)
          {
            sub_100004A34(v66);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v19 = *(v4 + 273);
          if ((v19 & 0xFE) == 2)
          {
            v20 = *(a1 + 40);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = sub_100649BB4(v19);
              v22 = sub_10064A100(*(v4 + 272));
              *buf = 136315394;
              *&buf[4] = v21;
              *&buf[12] = 2080;
              *&buf[14] = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Abort due to consent in prox flow : %s, error: %s", buf, 0x16u);
              v19 = *(v4 + 273);
            }

            if (v19 == 3)
            {
              v23 = 4;
            }

            else
            {
              v23 = 3;
            }

            sub_100319F10(v4, v23);
            if (*(v4 + 273) == 3)
            {
              v24 = 45;
            }

            else
            {
              v24 = 72;
            }

            if (*(v4 + 272) == 10)
            {
              sub_100319F10(v4, 12);
              sub_100319F28(v4, 70073);
              v24 = 70;
            }

            if ((*(a1 + 520) & 1) == 0)
            {
              buf[0] = 1;
              buf[1] = v24;
              if (*(v4 + 343) < 0)
              {
                sub_100005F2C(&buf[8], *(v4 + 320), *(v4 + 328));
              }

              else
              {
                *&buf[8] = *(v4 + 320);
                v74 = *(v4 + 336);
              }

              sub_1002549A0(a1, (v4 + 320), v75);
              v75[3] = 0;
              v75[4] = 0;
              sub_100254AA0(a1 + 448, buf);
              sub_100254BE4(buf);
            }

            v57 = 0;
            v58 = 0;
            sub_100254358(a1, (v4 + 320), 11, v24, &v58, &v57);
            sub_10001021C(&v57);
            sub_100005978(&v58);
            if (*(v4 + 343) < 0)
            {
              sub_100005F2C(v55, *(v4 + 320), *(v4 + 328));
            }

            else
            {
              *v55 = *(v4 + 320);
              v56 = *(v4 + 336);
            }

            sub_100255D0C(a1, v55);
            if (SHIBYTE(v56) < 0)
            {
              operator delete(v55[0]);
            }

            sub_100254E74(a1);
          }

          else
          {

            sub_10026D814(a1, v4 + 320);
          }
        }
      }

      return;
    }

    if ((*(a1 + 146) & 1) != 0 || *(a1 + 148) == 1)
    {
      *(v4 + 908) = 1;
      v50 = 257;
      sub_10026E010(a1, (v4 + 320), &v50);
      return;
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = *(a1 + 64);
        if (v16)
        {
          *(v4 + 908) = 1;
          v47 = 0;
          v48 = 0;
          sub_100254358(a1, (v4 + 320), 2, 0, &v48, &v47);
          sub_10001021C(&v47);
          sub_100005978(&v48);
          if (*(v4 + 319) < 0)
          {
            sub_100005F2C(__dst, *(v4 + 296), *(v4 + 304));
          }

          else
          {
            *__dst = *(v4 + 296);
            v46 = *(v4 + 312);
          }

          v32 = *(v4 + 274);
          v33 = *(v4 + 282);
          if (*(v4 + 343) < 0)
          {
            sub_100005F2C(v43, *(v4 + 320), *(v4 + 328));
          }

          else
          {
            *v43 = *(v4 + 320);
            v44 = *(v4 + 336);
          }

          memset(v42, 0, sizeof(v42));
          sub_10004EFD0(v42, *(v4 + 720), *(v4 + 728), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 728) - *(v4 + 720)) >> 3));
          v34 = *(v4 + 584);
          v35 = *(v4 + 592);
          if (*(v4 + 623) < 0)
          {
            sub_100005F2C(v40, *(v4 + 600), *(v4 + 608));
          }

          else
          {
            *v40 = *(v4 + 600);
            v41 = *(v4 + 616);
          }

          if (*(v4 + 695) < 0)
          {
            sub_100005F2C(v38, *(v4 + 672), *(v4 + 680));
          }

          else
          {
            *v38 = *(v4 + 672);
            v39 = *(v4 + 688);
          }

          if (*(v4 + 671) < 0)
          {
            sub_100005F2C(v36, *(v4 + 648), *(v4 + 656));
          }

          else
          {
            *v36 = *(v4 + 648);
            v37 = *(v4 + 664);
          }

          (*(*v16 + 16))(v16, __dst, v32, v33, v43, v42, v34, v35, v40, v38, v36);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          if (SHIBYTE(v39) < 0)
          {
            operator delete(v38[0]);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[0]);
          }

          *buf = v42;
          sub_1000087B4(buf);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43[0]);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(__dst[0]);
          }

LABEL_136:
          sub_100004A34(v15);
          return;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1017665C8(v4, (v4 + 320), v25);
    }

    v51 = 11;
    sub_100260418(a1, buf);
    v49 = 56;
    __p.__r_.__value_.__r.__words[0] = 0;
    LOWORD(v65) = 256;
    LODWORD(v69) = 70009;
    BYTE4(v69) = 1;
    sub_1002540BC(a1, (v4 + 320), &v51, 0, buf, &v49, &__p.__r_.__value_.__l.__data_, &v65, &v69, (a1 + 352));
    sub_10001021C(&__p.__r_.__value_.__l.__data_);
    sub_100005978(buf);
    if (v15)
    {
      goto LABEL_136;
    }
  }
}

void sub_100255A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  *(v46 - 144) = &a30;
  sub_1000087B4((v46 - 144));
  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  sub_100004A34(v45);
  _Unwind_Resume(a1);
}

void sub_100255D0C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 336);
  if (*(a1 + 328) == v2)
  {
    return;
  }

  v5 = sub_10025CD10((a1 + 328), a2);
  if (v2 == v5)
  {
    return;
  }

  v6 = v5;
  sub_100319F44(v5);
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  sub_100260070(a2, __p);
  (***(a1 + 48))(&v35);
  ServiceMap = Registry::getServiceMap(v35);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
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
  v39 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v39);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
LABEL_10:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
LABEL_11:
  (*(*v15 + 88))(v15, __p);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  v17 = *(a1 + 336);
  v18 = *(a1 + 352);
  if (v18 == v17)
  {
    if (v6 + 1072 != v17)
    {
      do
      {
        v30 = v6 + 1072;
        sub_10026A694(v6, (v6 + 1072));
        v31 = v6 + 2144;
        v6 += 1072;
      }

      while (v31 != v17);
      v17 = *(a1 + 336);
      v6 = v30;
    }

    while (v17 != v6)
    {
      v17 -= 1072;
      sub_10027C3B4(v17);
    }

    *(a1 + 336) = v6;
  }

  else
  {
    v19 = (v18 + 320);
    v20 = *(v18 + 343);
    v21 = v20;
    v22 = *(v18 + 328);
    if ((v20 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    v24 = *(a2 + 23);
    v25 = v24;
    if (v24 < 0)
    {
      v24 = a2[1];
    }

    if (v23 == v24 && (v21 >= 0 ? (v26 = v19) : (v26 = *v19), v25 >= 0 ? (v27 = a2) : (v27 = *a2), !memcmp(v26, v27, v23)))
    {
      if (v6 + 1072 == v17)
      {
        v33 = v6;
      }

      else
      {
        v32 = v6;
        do
        {
          v33 = v32 + 1072;
          sub_10026A694(v32, (v32 + 1072));
          v34 = v32 + 2144;
          v32 += 1072;
        }

        while (v34 != v17);
        v17 = *(a1 + 336);
      }

      while (v17 != v33)
      {
        v17 -= 1072;
        sub_10027C3B4(v17);
      }

      *(a1 + 336) = v33;
    }

    else
    {
      if (v6 + 1072 != v17)
      {
        do
        {
          v28 = v6 + 1072;
          sub_10026A694(v6, (v6 + 1072));
          v29 = v6 + 2144;
          v6 += 1072;
        }

        while (v29 != v17);
        v17 = *(a1 + 336);
        v6 = v28;
      }

      while (v17 != v6)
      {
        v17 -= 1072;
        sub_10027C3B4(v17);
      }

      *(a1 + 336) = v6;
      v6 = sub_10025CD10((a1 + 328), v19);
    }

    *(a1 + 352) = v6;
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100256034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100256080(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  *(a1 + 144) = 2;
  *(a1 + 149) = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I start transfer session on target. proximity. %p", buf, 0xCu);
  }

  v8 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(a1 + 248);
    *(a1 + 240) = v8;
    *(a1 + 248) = v9;
    if (v10)
    {
      sub_100004A34(v10);
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I fetching transfer plan list from source device", buf, 2u);
    }

    if (*(a1 + 848))
    {
      v12 = sub_100649C38(3);
      sub_10000501C(buf, v12);
      memset(v18, 0, sizeof(v18));
      sub_10016FB64(v18, buf, &v20, 1uLL);
      sub_100004AA0(&v16, (a1 + 8));
      v13 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
      }

      v21 = 0;
      operator new();
    }

    buf[0] = 56;
    v15 = *(a4 + 24);
    if (!v15)
    {
      sub_100022DB4();
    }

    (*(*v15 + 48))(v15, buf);
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766640();
    }
  }

  else
  {
    buf[0] = 6;
    v14 = *(a4 + 24);
    if (!v14)
    {
      sub_100022DB4();
    }

    (*(*v14 + 48))(v14, buf);
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766674();
    }
  }
}

void sub_1002565E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100256700(uint64_t a1, uint64_t a2, __int128 **a3, std::string **a4, uint64_t a5)
{
  if (*(a1 + 144) == 2)
  {
    if (*(a1 + 240))
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v10 = a3[1];
      if (*a3 != v10)
      {
        v11 = 0;
        v12 = *a3 + 40;
        do
        {
          if (v11 >= v25)
          {
            v11 = sub_1000053A0(&v23, v12);
          }

          else
          {
            if (*(v12 + 23) < 0)
            {
              sub_100005F2C(v11, *v12, *(v12 + 8));
            }

            else
            {
              v13 = *v12;
              *(v11 + 16) = *(v12 + 16);
              *v11 = v13;
            }

            v11 += 24;
          }

          v24 = v11;
          v14 = v12 + 120;
          v12 += 160;
        }

        while (v14 != v10);
      }

      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fetching transfer plan information from source device", buf, 2u);
      }

      *(a1 + 151) = 1;
      memset(&__p, 0, sizeof(__p));
      bzero(buf, 0x430uLL);
      v36 = 4;
      v47 = 0;
      v48 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v66 = 0;
      v69 = 0;
      v70 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v51 = 0u;
      memset(v52, 0, sizeof(v52));
      v49 = 0u;
      v50 = 0u;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0;
      v63 = 0u;
      v64 = 0;
      v65 = 0;
      v68 = 0;
      v67 = 0;
      v73 = 0;
      v72 = 0;
      v16 = *a3;
      v17 = a3[1] - *a3;
      v71 = 0u;
      if (v17 == 160)
      {
        *v28 = 0uLL;
        if (sub_100256EF0(a1, a2, buf, v16, a4, v28, (a1 + 824)))
        {
          std::string::operator=(&__p, v52);
        }
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v20 = (*(**(a1 + 48) + 32))(*(a1 + 48));
        sub_100930AFC((a1 + 768), (a1 + 664), (a1 + 640), 0, v20, *(a1 + 145), v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = *v28;
      }

      if (sub_1002535E4(a1))
      {
        memset(v33, 0, sizeof(v33));
        v32 = 0u;
        v31 = 0u;
        v30 = 0u;
        v29 = 0u;
        memset(&v28[8], 0, 48);
        *v28 = a1;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&v28[8], *a2, *(a2 + 8));
        }

        else
        {
          *&v28[8] = *a2;
          *&v28[24] = *(a2 + 16);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v28[32], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v28[32] = __p;
        }

        v29 = 0uLL;
        *&v30 = 0;
        sub_10004EFD0(&v29, v23, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3));
        *(&v30 + 1) = 0;
        v31 = 0uLL;
        sub_10004EFD0(&v30 + 8, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
        sub_100004AA0(&v26, (a1 + 8));
        v21 = *(&v26 + 1);
        v32 = v26;
        if (*(&v26 + 1))
        {
          atomic_fetch_add_explicit((*(&v26 + 1) + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v21);
        }

        sub_10000FED0(v33, a5);
        sub_100257334(v27, v28);
        v27[22] = 0;
        operator new();
      }

      sub_1000224C8(v34, a5);
      sub_10025298C(a1, a2, &v23, a4, &__p, v34);
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017666A8();
    }

    sub_10000FFD0(a5, 0);
  }

  else
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Skip for non proximity flow", buf, 2u);
    }

    sub_10000FFD0(a5, 1);
  }
}

void sub_100256DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v65);
  sub_1002574B4(&a22);
  sub_1002574B4(&a45);
  sub_10027C3B4(&a65);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a65 = &a16;
  sub_1000087B4(&a65);
  _Unwind_Resume(a1);
}

BOOL sub_100256EF0(uint64_t a1, const std::string *a2, unint64_t a3, __int128 *a4, std::string **a5, _OWORD *a6, const std::string *a7)
{
  v12 = *(a1 + 168);
  v11 = *(a1 + 176);
  sub_100922314((a4 + 24), a2, a3);
  v13 = &v36;
  if (*(a4 + 63) < 0)
  {
    sub_100005F2C(&v36, *(a4 + 5), *(a4 + 6));
  }

  else
  {
    v36 = *(a4 + 40);
    v37 = *(a4 + 7);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&__p, *a4, *(a4 + 1));
  }

  else
  {
    __p = *a4;
    v39 = *(a4 + 2);
  }

  if (v12 == v11)
  {
    v11 = v12;
  }

  else
  {
    if (v37 >= 0)
    {
      v14 = HIBYTE(v37);
    }

    else
    {
      v14 = *(&v36 + 1);
    }

    if (v37 < 0)
    {
      v13 = v36;
    }

    v15 = v12 + 24;
    while (1)
    {
      v16 = *(v15 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v15 + 8);
      }

      if (v16 == v14)
      {
        v18 = v17 >= 0 ? v15 : *v15;
        if (!memcmp(v18, v13, v14))
        {
          break;
        }
      }

      v19 = v15 + 648;
      v15 += 672;
      if (v19 == v11)
      {
        goto LABEL_25;
      }
    }

    v11 = v15 - 24;
  }

LABEL_25:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  v20 = *(a1 + 176);
  if (v11 == v20)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017666DC();
    }
  }

  else
  {
    sub_10064B544(v11, v42);
    sub_10026A694(a3, v42);
    sub_10027C3B4(v42);
    std::string::operator=((a3 + 296), a2);
    std::string::operator=((a3 + 344), a4);
    *(a3 + 274) = *(a4 + 24);
    std::string::operator=((a3 + 320), (a4 + 40));
    if (*(a1 + 1120) == 5)
    {
      *&v42[0].__r_.__value_.__l.__data_ = 0uLL;
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v11;
        if (*(v11 + 23) < 0)
        {
          v22 = *v11;
        }

        *buf = 136315138;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Set SourceEID for CrossPlatform transfer case %s", buf, 0xCu);
      }

      if (sub_1009222A0(v11, v42))
      {
        *(a3 + 274) = *&v42[0].__r_.__value_.__l.__data_;
      }
    }

    *(a3 + 584) = *a6;
    std::string::operator=((a3 + 600), a7);
    v23 = sub_10026AB6C(a1, a3);
    v24 = (*(**(a1 + 48) + 32))(*(a1 + 48));
    sub_100930AFC((a1 + 768), (a1 + 664), (a1 + 640), v23, v24, *(a1 + 145), v42);
    v26 = (a3 + 648);
    if (*(a3 + 671) < 0)
    {
      operator delete(*v26);
    }

    *v26 = *&v42[0].__r_.__value_.__l.__data_;
    *(a3 + 664) = *(&v42[0].__r_.__value_.__l + 2);
    CodingUtility::generateUUID(v25);
    v27 = (a3 + 672);
    if (*(a3 + 695) < 0)
    {
      operator delete(*v27);
    }

    *v27 = *&v42[0].__r_.__value_.__l.__data_;
    *(a3 + 688) = *(&v42[0].__r_.__value_.__l + 2);
    if ((a3 + 720) != a5)
    {
      sub_100008234((a3 + 720), *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
    }

    if (*(a1 + 147) == 1)
    {
      v28 = *(a1 + 72);
      if (v28)
      {
        v29 = std::__shared_weak_count::lock(v28);
      }

      else
      {
        v29 = 0;
      }

      if (*(a1 + 634) == 1 && sub_10026ABF8(a1, a3))
      {
        *(a3 + 1066) = 1;
      }

      if (v29)
      {
        sub_100004A34(v29);
      }
    }
  }

  return v11 != v20;
}

void sub_1002572E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100257334(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10004EFD0((a1 + 56), *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_10004EFD0((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 112);
  *(a1 + 112) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(a1 + 120, a2 + 120);
  return a1;
}

void sub_10025744C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v11 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002574B4(uint64_t a1)
{
  sub_10000FF50(a1 + 120);
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v4 = (a1 + 80);
  sub_1000087B4(&v4);
  v4 = (a1 + 56);
  sub_1000087B4(&v4);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100257534(uint64_t a1, NSObject **a2)
{
  v126[1] = 0;
  v126[0] = 0;
  v125 = v126;
  v124 = 0;
  v123 = 0;
  v122 = &v123;
  memset(v121, 0, sizeof(v121));
  sub_1002584E0(a1, v121);
  v119 = 0;
  memset(&v120, 0, sizeof(v120));
  v117 = 0;
  v118 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v111 = 0;
  *v112 = 0;
  v113 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  sub_100288F04(v103, a1 + 768);
  sub_100934714(v103, &v105);
  sub_100077CD4(v103, v104);
  if (*(a1 + 147) == 1)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 80);
        if (v7)
        {
          memset(__p, 0, 24);
          (*(*v7 + 512))(__p);
          v8 = HIBYTE(__p[2]);
          v9 = HIBYTE(__p[2]);
          if (SHIBYTE(__p[2]) < 0)
          {
            v8 = __p[1];
          }

          if (v8)
          {
            sub_100073EE8(&v105, __p, __p);
            v9 = HIBYTE(__p[2]);
          }

          if (v9 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_100004A34(v6);
      }
    }
  }

  v101 = 0u;
  v102 = 0u;
  v100 = 0u;
  v10 = *(a1 + 56);
  v98 = *(a1 + 48);
  v99 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100B28DBC(&v100, (a1 + 40), &v98, a2, (a1 + 744));
  if (v99)
  {
    sub_100004A34(v99);
  }

  v11 = *(a1 + 192);
  v12 = *(a1 + 200);
  if (v11 != v12)
  {
    v13 = 0uLL;
    v81 = *(a1 + 200);
    while (1)
    {
      v148 = 0;
      v147 = v13;
      v146 = v13;
      v145 = v13;
      v144 = v13;
      v143 = v13;
      v142 = v13;
      v140 = v13;
      v141 = v13;
      v138 = v13;
      v139 = v13;
      v137[13] = v13;
      v137[14] = v13;
      v137[11] = v13;
      v137[12] = v13;
      v137[9] = v13;
      v137[10] = v13;
      v137[7] = v13;
      v137[8] = v13;
      v137[5] = v13;
      v137[6] = v13;
      v137[3] = v13;
      v137[4] = v13;
      v137[1] = v13;
      v137[2] = v13;
      v137[0] = v13;
      *&__str_16[32] = 0;
      *__str_16 = v13;
      *&__str_16[16] = v13;
      __str = v13;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      sub_100074920(v94, &v105);
      memset(__p, 0, 24);
      memset(v93, 0, sizeof(v93));
      v14 = sub_10092DB68((a1 + 40), v11 + 24, v94, __p, v93, &v95, v137, &__str);
      *v92 = v93;
      sub_1000087B4(v92);
      *v92 = __p;
      sub_10027B2AC(v92);
      sub_100009970(v94, v94[1]);
      if (v14)
      {
        break;
      }

LABEL_141:
      __p[0] = &v95;
      sub_10027B454(__p);
      if ((__str_16[7] & 0x80000000) != 0)
      {
        operator delete(__str);
      }

      sub_100111C2C(v137);
      v11 += 56;
      v13 = 0uLL;
      if (v11 == v12)
      {
        goto LABEL_144;
      }
    }

    v15 = *(v11 + 32);
    if (v15 != *(v11 + 24))
    {
      memset(v92, 0, sizeof(v92));
      PB::Reader::Reader(v92, *(v11 + 24), v15 - *(v11 + 24));
      v132 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_1006E0F18(__p);
      sub_1006E1534(__p, v92);
      if (v109 >= v110)
      {
        v16 = sub_10027C664(&v108, __p);
      }

      else
      {
        v16 = sub_1006E12FC(v109, __p) + 64;
      }

      v109 = v16;
      sub_1006E1008(__p);
    }

    v89 = 0;
    v90 = 0;
    v91 = 0;
    memset(v92, 0, 24);
    sub_1003163A0(v137, v92);
    v149 = 0uLL;
    v150 = 0;
    sub_100316428(v137, &v149, v17, v18);
    v128 = 0;
    v127 = 0;
    v129 = 0;
    sub_1003162E0(v137, &v127);
    v19 = *(a1 + 216);
    v20 = *(a1 + 224);
    if (v19 != v20)
    {
      v21 = v19 + 95;
      do
      {
        if (sub_10016FA58(v92, v21 - 71) || sub_10016FA58(&v149, v21 - 47))
        {
          if (sub_10016FA58(&v127, v21 - 23))
          {
            sub_1003165A4(v137, (v21 - 23));
          }

          else
          {
            if (*(v21 - 48) < 0)
            {
              sub_100005F2C(__p, *(v21 - 71), *(v21 - 63));
            }

            else
            {
              v22 = *(v21 - 71);
              __p[2] = *(v21 - 55);
              *__p = v22;
            }

            if (*(v21 - 24) < 0)
            {
              sub_100005F2C(&__p[3], *(v21 - 47), *(v21 - 39));
            }

            else
            {
              v23 = *(v21 - 47);
              __p[5] = *(v21 - 31);
              *&__p[3] = v23;
            }

            if (*v21 < 0)
            {
              sub_100005F2C(&v132, *(v21 - 23), *(v21 - 15));
            }

            else
            {
              v24 = *(v21 - 23);
              v133 = *(v21 - 7);
              v132 = v24;
            }

            v25 = v90;
            if (v90 >= v91)
            {
              v90 = sub_10027C8C4(&v89, __p);
              if (SHIBYTE(v133) < 0)
              {
                operator delete(v132);
              }
            }

            else
            {
              v26 = *__p;
              v90[2] = __p[2];
              *v25 = v26;
              memset(__p, 0, 24);
              v27 = __p[5];
              *(v25 + 3) = *&__p[3];
              v25[5] = v27;
              memset(&__p[3], 0, 24);
              v28 = v132;
              v25[8] = v133;
              *(v25 + 3) = v28;
              v133 = 0;
              v132 = 0uLL;
              v90 = v25 + 9;
            }

            if (SHIBYTE(__p[5]) < 0)
            {
              operator delete(__p[3]);
            }

            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v29 = v21 + 105;
        v21 += 200;
      }

      while (v29 != v20);
    }

    sub_100009970(&v127, v128);
    sub_100009970(&v149, *(&v149 + 1));
    sub_100009970(v92, *&v92[8]);
    sub_10027CD10(&v111, *v112, v89, v90, 0x8E38E38E38E38E39 * ((v90 - v89) >> 3));
    __p[1] = 0;
    __p[0] = 0;
    if (*&__str_16[24] != 0)
    {
      v30 = __str_16[7];
      if (__str_16[7] < 0)
      {
        v30 = *(&__str + 1);
      }

      if (v30)
      {
        __p[0] = &__str_16[24];
        v31 = sub_100289074(&v125, &__str_16[24], &unk_101802C98, __p);
        std::string::operator=(v31 + 2, &__str);
      }
    }

    if (sub_100B28EF8(&v100, &v95))
    {
      goto LABEL_140;
    }

    v33 = v95;
    v32 = v96;
    v34 = *(a1 + 848);
    if (*(v34 + 167) < 0)
    {
      sub_100005F2C(__dst, *(v34 + 144), *(v34 + 152));
    }

    else
    {
      *__dst = *(v34 + 144);
      v88 = *(v34 + 160);
    }

    v35 = HIBYTE(v88);
    if (v33 == v32)
    {
LABEL_73:
      v43 = 0;
      if (v35 < 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v88 >= 0)
      {
        v36 = HIBYTE(v88);
      }

      else
      {
        v36 = __dst[1];
      }

      if (v88 >= 0)
      {
        v37 = __dst;
      }

      else
      {
        v37 = __dst[0];
      }

      v38 = v33 + 360;
      while (1)
      {
        v39 = *(v38 + 23);
        v40 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v39 = *(v38 + 8);
        }

        if (v39 != v36)
        {
          break;
        }

        v41 = v40 >= 0 ? v38 : *v38;
        if (memcmp(v41, v37, v36))
        {
          break;
        }

        v42 = v38 + 312;
        v38 += 672;
        if (v42 == v32)
        {
          goto LABEL_73;
        }
      }

      v43 = 1;
      if (v35 < 0)
      {
LABEL_86:
        operator delete(__dst[0]);
        if (!v43)
        {
          goto LABEL_87;
        }

        goto LABEL_75;
      }
    }

    if (!v43)
    {
LABEL_87:
      if ((sub_100B29538(&v100, &v95, *(v11 + 48)) & 1) == 0)
      {
        sub_100005308(&v120, v11);
        if (v142 >= 0)
        {
          v55 = HIBYTE(v142);
        }

        else
        {
          v55 = v142;
        }

        memset(v92, 0, 24);
        sub_1000677C4(v92, v55 + 1);
        if (v92[23] >= 0)
        {
          v56 = v92;
        }

        else
        {
          v56 = *v92;
        }

        if (v55)
        {
          if (v142 >= 0)
          {
            v57 = &v141 + 8;
          }

          else
          {
            v57 = *(&v141 + 1);
          }

          memmove(v56, v57, v55);
        }

        *&v56[v55] = 58;
        if (v139 >= 0)
        {
          v58 = &v138 + 8;
        }

        else
        {
          v58 = *(&v138 + 1);
        }

        if (v139 >= 0)
        {
          v59 = HIBYTE(v139);
        }

        else
        {
          v59 = v139;
        }

        v60 = std::string::append(v92, v58, v59);
        v61 = v60->__r_.__value_.__r.__words[0];
        *&v149 = v60->__r_.__value_.__l.__size_;
        *(&v149 + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
        v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        v63 = v118;
        if (v118 >= v119)
        {
          v65 = 0xAAAAAAAAAAAAAAABLL * ((v118 - v117) >> 3);
          v66 = v65 + 1;
          if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000CE3D4();
          }

          if (0x5555555555555556 * ((v119 - v117) >> 3) > v66)
          {
            v66 = 0x5555555555555556 * ((v119 - v117) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v119 - v117) >> 3) >= 0x555555555555555)
          {
            v67 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v67 = v66;
          }

          __p[4] = &v117;
          if (v67)
          {
            sub_100005348(&v117, v67);
          }

          v69 = 8 * ((v118 - v117) >> 3);
          *v69 = v61;
          *(v69 + 8) = v149;
          *(v69 + 15) = *(&v149 + 7);
          *(v69 + 23) = v62;
          v64 = 24 * v65 + 24;
          v70 = (24 * v65 - (v118 - v117));
          memcpy(v70, v117, v118 - v117);
          v71 = v117;
          v72 = v119;
          v117 = v70;
          v118 = v64;
          v119 = 0;
          __p[2] = v71;
          __p[3] = v72;
          __p[1] = v71;
          __p[0] = v71;
          sub_1000054E0(__p);
        }

        else
        {
          *v118 = v61;
          *(v63 + 1) = v149;
          *(v63 + 15) = *(&v149 + 7);
          v63[23] = v62;
          v64 = (v63 + 24);
        }

        v118 = v64;
        goto LABEL_138;
      }

      if (*(a1 + 144) != 1 || (*(a1 + 145) & 1) != 0 || *(a1 + 888) != 1 || (sub_100074920(v86, (a1 + 864)), v52 = sub_100B299D0(&v100, &v95, v86), sub_100009970(v86, v86[1]), v52))
      {
        v148 = *(v11 + 48);
        sub_1003172E0(v137, &v84, v50, v51);
        sub_1002816F8(a1 + 168, *(a1 + 176), v84, v85, 0xCF3CF3CF3CF3CF3DLL * ((v85 - v84) >> 5));
        __p[0] = &v84;
        sub_10027B454(__p);
        v53 = v115;
        if (v115 >= v116)
        {
          v68 = sub_10027D444(&v114, &__str);
        }

        else
        {
          if ((__str_16[7] & 0x80000000) != 0)
          {
            sub_100005F2C(v115, __str, *(&__str + 1));
          }

          else
          {
            v54 = __str;
            *(v115 + 2) = *__str_16;
            *v53 = v54;
          }

          v73 = *&__str_16[8];
          *(v53 + 40) = *&__str_16[24];
          *(v53 + 24) = v73;
          v68 = (v53 + 56);
        }

        v115 = v68;
        memset(v92, 0, 24);
        sub_1003162A0(v137, v92);
        v149 = 0uLL;
        v150 = 0;
        sub_1003162E0(v137, &v149);
        v74 = v149;
        if (v149 != (&v149 + 8))
        {
          do
          {
            sub_100174FC8(&v122, v74 + 4, (v74 + 4), v92);
            v75 = v74[1];
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
                v76 = v74[2];
                v77 = *v76 == v74;
                v74 = v76;
              }

              while (!v77);
            }

            v74 = v76;
          }

          while (v76 != (&v149 + 8));
        }

        v79 = v95;
        v78 = v96;
        while (v79 != v78)
        {
          bzero(__p, 0x2A0uLL);
          sub_10027D7F4(__p, v79);
          v127 = &__p[3];
          v80 = sub_100173F08((a1 + 1032), &__p[3], &unk_101802C98, &v127, &v130);
          std::string::operator=((v80 + 7), v134);
          sub_10027DF50(__p);
          v79 += 42;
        }

        sub_100009970(&v149, *(&v149 + 1));
LABEL_138:
        if ((v92[23] & 0x80000000) != 0)
        {
          operator delete(*v92);
        }
      }

LABEL_140:
      __p[0] = &v89;
      sub_10027E114(__p);
      v12 = v81;
      goto LABEL_141;
    }

LABEL_75:
    v44 = *(a1 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 848);
      v46 = (v45 + 144);
      if (*(v45 + 167) < 0)
      {
        v46 = *v46;
      }

      v47 = &v141 + 8;
      if (v142 < 0)
      {
        v47 = *(&v141 + 1);
      }

      v48 = &v138 + 8;
      if (v139 < 0)
      {
        v48 = *(&v138 + 1);
      }

      v49 = &v143;
      if (SBYTE7(v144) < 0)
      {
        v49 = v143;
      }

      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v46;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v47;
      HIWORD(__p[2]) = 2080;
      __p[3] = v48;
      LOWORD(__p[4]) = 2082;
      *(&__p[4] + 2) = v49;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I filter out non %s record. S/N:%s, name:%s, model:%{public}s", __p, 0x2Au);
    }

    goto LABEL_140;
  }

LABEL_144:
  sub_10000501C(v82, "Manatee_DownloadData_");
  sub_10092B3FC((a1 + 40), v82, &v108);
  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  sub_100258598(a1, &v120, &v117, &v111);
  if (v124)
  {
    sub_100258D38(a1 + 560, &v122);
  }

  sub_100258E10(a1 + 576, &v125);
  if (v101)
  {
    sub_100004A34(v101);
  }

  sub_100009970(&v105, v106);
  __p[0] = &v108;
  sub_10027E1BC(__p);
  __p[0] = &v111;
  sub_10027E114(__p);
  __p[0] = &v114;
  sub_10027E27C(__p);
  __p[0] = &v117;
  sub_1000087B4(__p);
  __p[0] = &v120;
  sub_1000087B4(__p);
  __p[0] = v121;
  sub_1000087B4(__p);
  sub_1000DD0AC(&v122, v123);
  sub_100045B14(&v125, v126[0]);
}

void sub_100258210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char *a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  sub_100004A34(v66);
  sub_100009970(&a58, a59);
  STACK[0x560] = &a61;
  sub_10027E1BC(&STACK[0x560]);
  STACK[0x560] = &a64;
  sub_10027E114(&STACK[0x560]);
  STACK[0x560] = &a65;
  sub_10027E27C(&STACK[0x560]);
  STACK[0x560] = &a66;
  sub_1000087B4(&STACK[0x560]);
  STACK[0x560] = &STACK[0x200];
  sub_1000087B4(&STACK[0x560]);
  STACK[0x560] = &STACK[0x218];
  sub_1000087B4(&STACK[0x560]);
  sub_1000DD0AC(&STACK[0x230], STACK[0x238]);
  sub_100045B14(&STACK[0x248], STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_1002584E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 88);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(a1 + 80);
  if (!v7)
  {
    sub_100004A34(v6);
LABEL_8:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  (*(*v7 + 72))(v7);

  sub_100004A34(v6);
}

void sub_100258598(uint64_t a1, std::string *a2, std::string **a3, uint64_t *a4)
{
  if (*(a1 + 112))
  {
    v7 = a2->__r_.__value_.__r.__words[0];
    size = a2->__r_.__value_.__l.__size_;
    if (v7 != size)
    {
      memset(&v21, 0, sizeof(v21));
      if (&v21 != a2)
      {
        sub_100008234(&v21, v7, size, 0xAAAAAAAAAAAAAAABLL * ((size - v7) >> 3));
      }

      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000D1184(&__p, *a3, a3[1], "\n\t", 2uLL);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I delete record from :\n\t%s", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *buf = 0uLL;
      __p.__r_.__value_.__r.__words[0] = "CellularPlanTransferFlowController";
      sub_1001048A4();
    }

    v11 = a4[1];
    v12 = *a4;
    if (*a4 != v11)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = "\n\t";
        *&buf[8] = 2;
        sub_100296C5C(v12, &v21);
        __p = v21;
        for (i = v12 + 72; i != v11; i += 72)
        {
          sub_100074CFC(buf, &v21);
          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &v21;
          }

          else
          {
            v15 = v21.__r_.__value_.__r.__words[0];
          }

          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v16 = v21.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v15, v16);
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }

          sub_100296C5C(i, &v21);
          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v21;
          }

          else
          {
            v17 = v21.__r_.__value_.__r.__words[0];
          }

          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v18 = v21.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v17, v18);
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }
        }

        v19 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v21.__r_.__value_.__l.__data_) = 136315138;
        *(v21.__r_.__value_.__r.__words + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I deleting dangling blocklist items:\n\t%s", &v21, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v21.__r_.__value_.__r.__words[0] = "CellularPlanTransferFlowController";
      sub_1001048A4();
    }
  }
}

void sub_100258BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100258D38(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_100289118(a2, &v5);
  sub_10000501C(&__p, "/cc/events/iccid_to_ids_device_id_updated");
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

void sub_100258DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_100258E10(uint64_t a1, void *a2)
{
  if ((a1 + 32) != a2)
  {
    sub_10028943C((a1 + 32), *a2, a2 + 1);
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void sub_100258E94(uint64_t a1, char a2, uint64_t a3)
{
  *(a1 + 149) = a2;
  v19 = 0;
  v20 = 0;
  (***(a1 + 48))(&v17);
  Registry::getTimerService(&v19, v17);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v5 = v19;
  if (v19)
  {
    sub_10000501C(__p, "Transfer bootstrap Timeout");
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_10025918C;
    v12[3] = &unk_101E35FB0;
    v12[4] = a1;
    aBlock = _Block_copy(v12);
    sub_100D23364(v5, __p, 0, 60000000, &object, &aBlock);
    v7 = v17;
    v17 = 0;
    v8 = *(a1 + 1000);
    *(a1 + 1000) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v17;
      v17 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 144) = 1;
    if (*(a1 + 896) == 1 && *(a1 + 897) == 1)
    {
      sub_1002595B0(a1);
    }

    LOBYTE(v17) = 0;
    v10 = *(a3 + 24);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v17);
      goto LABEL_24;
    }

LABEL_27:
    sub_100022DB4();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766744();
  }

  LOBYTE(v17) = 56;
  v11 = *(a3 + 24);
  if (!v11)
  {
    goto LABEL_27;
  }

  (*(*v11 + 48))(v11, &v17);
LABEL_24:
  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_100259128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
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

  v23 = *(v21 - 40);
  if (v23)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025918C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766778();
  }

  *(v1 + 896) = 0;
  if (*(v1 + 280))
  {
    v36 = 0;
    sub_100259554(v1 + 256, &v36, 0, 5);
    sub_100010250(&v36);
    sub_1002897E8(v1 + 256);
  }

  sub_10016DBD4(v1 + 528);
  v25 = 0u;
  v27 = 0x400000000000000;
  v26 = 0u;
  *&v28[8] = 0u;
  v30 = 0;
  v31 = 0;
  v32 = 318767104;
  v35 = 0u;
  v34 = 0u;
  HIBYTE(v25) = 8;
  v24 = 0x72616C756C6C6543;
  LODWORD(v26) = 1296651109;
  v28[23] = 21;
  qmemcpy(v28, "Transfer plan listing", 21);
  strcpy(&v29[15], "i");
  *(v1 + 144) = 0;
  *v29 = *"1 min timer expired";
  v33 = 23;
  (***(v1 + 48))(&v22);
  ServiceMap = Registry::getServiceMap(v22);
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
  v37 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v37);
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
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_13:
  sub_100D9EC48(__dst, &v24);
  v39 = 0;
  (*(*v10 + 16))(v10, __dst, v38);
  sub_10010DF14(v38);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  operator delete(__dst[0]);
  if ((v11 & 1) == 0)
  {
LABEL_23:
    sub_100004A34(v9);
  }

LABEL_24:
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (SBYTE7(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(*v29);
  }

  if ((v28[23] & 0x80000000) != 0)
  {
    operator delete(*v28);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }
}

uint64_t sub_100259554(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, &v7, &v6);
}

void sub_1002595B0(uint64_t a1)
{
  if ((*(a1 + 1024) & 1) == 0)
  {
    *(a1 + 1024) = 1;
    if (*(a1 + 112))
    {
      dispatch_group_create();
      operator new();
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017667AC();
    }
  }
}

void sub_100259B00()
{
  if (!v0)
  {
    JUMPOUT(0x100259AF0);
  }

  JUMPOUT(0x100259AE8);
}

void sub_100259B0C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017667E0();
  }
}

void sub_100259B48(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766814();
  }
}

void sub_100259B84(uint64_t a1)
{
  *(a1 + 896) = 1;
  if (*(a1 + 897) == 1)
  {
    sub_1002595B0(a1);
  }
}

void sub_100259BA0(uint64_t a1, int a2)
{
  if (*(a1 + 897) != a2)
  {
    *(a1 + 897) = a2;
    if (*(a1 + 896) == 1 && a2 != 0)
    {
      sub_1002595B0(a1);
    }
  }
}

void *sub_100259BC8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[7];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[6];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_100259C28(uint64_t a1, uint64_t a2)
{
  (***(a1 + 48))(&v19);
  ServiceMap = Registry::getServiceMap(v19);
  v5 = ServiceMap;
  v6 = "30AKRemoteDeviceServiceInterface";
  if (("30AKRemoteDeviceServiceInterface" & 0x8000000000000000) != 0)
  {
    v7 = ("30AKRemoteDeviceServiceInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v12)
  {
    v21 = a1;
    sub_100004AA0(&v19, (a1 + 8));
    v14 = v20;
    v22 = v19;
    v23 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
    }

    sub_100295CF8(v24, a2);
    v24[7] = 0;
    operator new();
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v15 = *(a2 + 24);
  if (!v15)
  {
    sub_100022DB4();
  }

  (*(*v15 + 48))(v15, &v16);
  sub_10028B908(&v16, v17[0]);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_100259EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_100296578(va1);
  sub_10026C1F4(va);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100259F3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void *sub_100259F84(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_100259FCC(uint64_t a1)
{
  if (*(a1 + 1121))
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(a1 + 64);
        if (v4)
        {
          (*(*v4 + 88))(v4);
LABEL_12:
          sub_100004A34(v3);
          return;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766848();
    }

    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I not all selected plans are executed, wait.", v6, 2u);
    }
  }
}

void sub_10025A0C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle update requested.", buf, 2u);
  }

  if ((*(a1 + 149) & 1) == 0)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle update not required", buf, 2u);
    }

    v16 = *(a2 + 24);
    if (!v16)
    {
      sub_100022DB4();
    }

    (*(*v16 + 48))(v16);
    return;
  }

  (***(a1 + 48))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v6 = ServiceMap;
  if (v7 < 0)
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
  *&v31 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v31);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
LABEL_15:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
LABEL_16:
  isIPad = GestaltUtilityInterface::isIPad(v13);
  if (isIPad)
  {
    v18 = capabilities::ct::defaultVinylCardTypeToGSMA(isIPad);
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if ((v18 & 1) == 0)
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle update not required for non GSMA iPad", buf, 2u);
      }

      v20 = *(a2 + 24);
      if (!v20)
      {
        sub_100022DB4();
      }

      (*(*v20 + 48))(v20);
      return;
    }
  }

  else
  {
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    v22 = std::__shared_weak_count::lock(v21);
    if (v22)
    {
      v23 = *(a1 + 64);
      if (v23)
      {
        if (!(*(*v23 + 224))(v23) || *(a1 + 632) != 2)
        {
          memset(v28, 0, 24);
          sub_1009330A8((a1 + 168), v28);
          *&v31 = a1;
          sub_100004AA0(buf, (a1 + 8));
          v27 = *&buf[8];
          *(&v31 + 1) = *buf;
          v32 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v27);
          }

          sub_10009CF40(v33, a2);
          v30 = 0;
          rest::write_rest_value();
          sub_10000501C(&__p, "/cc/requests/transfer_carrier_bundle_update");
          v28[3] = v30;
          v30 = xpc_null_create();
          *buf = v31;
          v35 = v32;
          *(&v31 + 1) = 0;
          v32 = 0;
          sub_10010BE30(v36, v33);
          v36[7] = 0;
          operator new();
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle update not available over bootstrap", buf, 2u);
        }

        v25 = *(a2 + 24);
        if (!v25)
        {
          sub_100022DB4();
        }

        (*(*v25 + 48))(v25);
LABEL_48:
        sub_100004A34(v22);
        return;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176687C();
  }

  v26 = *(a2 + 24);
  if (!v26)
  {
    sub_100022DB4();
  }

  (*(*v26 + 48))(v26);
  if (v22)
  {
    goto LABEL_48;
  }
}

void sub_10025A618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025A714(uint64_t a1)
{
  if ((*(a1 + 1120) | 4) == 7)
  {
    v2 = *(a1 + 168);
    if (v2 != *(a1 + 176))
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v10 = 0;
      if (*(v2 + 239) < 0)
      {
        sub_100005F2C(__dst, *(v2 + 216), *(v2 + 224));
      }

      else
      {
        *__dst = *(v2 + 216);
        v10 = *(v2 + 232);
      }

      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = *(a1 + 80);
          if (v6)
          {
            if (SHIBYTE(v10) < 0)
            {
              sub_100005F2C(__p, __dst[0], __dst[1]);
            }

            else
            {
              *__p = *__dst;
              v8 = v10;
            }

            (*(*v6 + 520))(v6, __p);
            if (SHIBYTE(v8) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_100004A34(v5);
        }
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }
}

void sub_10025A828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100004A34(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10025A864(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 888) == 1)
  {
    v3 = *(a2 + 24);
    if (!v3)
    {
      sub_100022DB4();
    }

    v4 = *(*v3 + 48);

    v4();
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_100288F04(v20, a1 + 768);
    sub_100934714(v20, &v21);
    sub_100077CD4(v20, v20[1]);
    v6 = *(a1 + 192);
    v7 = *(a1 + 200);
    if (v6 == v7)
    {
      goto LABEL_29;
    }

    v8 = 0;
    do
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(v29, 0, sizeof(v29));
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      __p = 0u;
      memset(v19, 0, sizeof(v19));
      sub_100074920(v18, &v21);
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      v9 = sub_10092DB68((a1 + 40), v6 + 24, v18, v17, v16, v19, v29, &__p);
      v24 = v16;
      sub_1000087B4(&v24);
      v24 = v17;
      sub_10027B2AC(&v24);
      sub_100009970(v18, v18[1]);
      if (v9)
      {
        v10 = v31 >= 0 ? HIBYTE(v31) : v31;
        if (!v10)
        {
          goto LABEL_23;
        }

        v11 = *(a1 + 767);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(a1 + 752);
        }

        if (v10 != v11 || (v31 >= 0 ? (v13 = &v30 + 8) : (v13 = *(&v30 + 1)), v12 >= 0 ? (v14 = (a1 + 744)) : (v14 = *(a1 + 744)), memcmp(v13, v14, v10)))
        {
LABEL_23:
          ++v8;
        }
      }

      v17[0] = v19;
      sub_10027B454(v17);
      if (SBYTE7(v26) < 0)
      {
        operator delete(__p);
      }

      sub_100111C2C(v29);
      v6 += 56;
    }

    while (v6 != v7);
    if (!v8)
    {
LABEL_29:
      v15 = *(a2 + 24);
      if (!v15)
      {
        sub_100022DB4();
      }

      (*(*v15 + 48))(v15);
    }

    else
    {
      sub_10025ABF0((a1 + 528), a2);
    }

    sub_100009970(&v21, v22);
  }
}

void *sub_10025ABF0(void *a1, uint64_t a2)
{
  sub_10009CF40(v4, a2);
  sub_10028C630(v4, a1);
  sub_10002B644(v4);
  return a1;
}

void sub_10025AC64(uint64_t a1)
{
  *(a1 + 144) = 257;
  memset(&v18, 0, sizeof(v18));
  if (*(a1 + 816) == 1)
  {
    if ((*(a1 + 815) & 0x8000000000000000) == 0)
    {
      if (!*(a1 + 815))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (*(a1 + 800))
    {
LABEL_6:
      std::string::operator=(&v18, (a1 + 792));
    }
  }

LABEL_7:
  *(&v16 + 1) = 0;
  v17 = 0;
  *&v16 = &v16 + 8;
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 80);
      if (v5)
      {
        (*(*v5 + 232))(&v34);
        sub_100009970(&v16, *(&v16 + 1));
        v6 = *(&v34 + 1);
        v16 = v34;
        v17 = v35;
        if (v35)
        {
          *(*(&v34 + 1) + 16) = &v16 + 8;
          *&v34 = &v34 + 8;
          *(&v34 + 1) = 0;
          *&v35 = 0;
          v6 = 0;
        }

        else
        {
          *&v16 = &v16 + 8;
        }

        sub_100009970(&v34, v6);
      }

      sub_100004A34(v4);
    }
  }

  v7 = sub_100932AC8(*(a1 + 632), *(a1 + 688), *(a1 + 633));
  v82 = 0;
  v81 = 0u;
  v80 = 0u;
  *v79 = 0u;
  v78 = 0u;
  *v77 = 0u;
  *v76 = 0u;
  v75 = 0u;
  *v74 = 0u;
  *v73 = 0u;
  v71 = 0u;
  memset(v72, 0, sizeof(v72));
  v69 = 0u;
  *v70 = 0u;
  v67 = 0u;
  *v68 = 0u;
  v65 = 0u;
  *v66 = 0u;
  v63 = 0u;
  *v64 = 0u;
  v61 = 0u;
  *v62 = 0u;
  *v60 = 0u;
  v34 = 0uLL;
  *&v35 = 0;
  v20[1] = 0;
  *&v21 = 0;
  v20[0] = &v20[1];
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  sub_100928A9C(v60, (a1 + 720), (a1 + 48), (a1 + 40), &v34, (a1 + 664), a1 + 768, &v18, v20, (a1 + 848), &v16, &v13, v7 | 0x100);
  sub_10016A798(&v13, v14);
  sub_10028C89C(v20, v20[1]);
  v20[0] = &v34;
  sub_100112048(v20);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
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
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v33 = 0;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v29 = 0u;
  *__p = 0u;
  v27 = 0u;
  *v28 = 0u;
  v25 = 0u;
  *v26 = 0u;
  v23 = 0u;
  *v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  *v20 = 0u;
  sub_10027E420(v20, v60);
  LOBYTE(v33) = 1;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  sub_100315E40(&v34, (a1 + 40), v20, v73, &v13, v12);
  v19 = v12;
  sub_1000087B4(&v19);
  v12[0] = &v13;
  sub_10027B2AC(v12);
  sub_1003172E0(&v34, &v10, v8, v9);
  sub_1002816F8(a1 + 168, *(a1 + 176), v10, v11, 0xCF3CF3CF3CF3CF3DLL * ((v11 - v10) >> 5));
  v13 = &v10;
  sub_10027B454(&v13);
  if (v33 == 1)
  {
    v13 = v32 + 1;
    sub_100112048(&v13);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[1]);
    }

    if (SBYTE7(v29) < 0)
    {
      operator delete(v28[0]);
    }

    if (BYTE8(v25) == 1)
    {
      if (SBYTE7(v27) < 0)
      {
        operator delete(v26[0]);
      }

      BYTE8(v25) = 0;
    }

    if (BYTE8(v23) == 1)
    {
      if (SBYTE7(v25) < 0)
      {
        operator delete(v24[0]);
      }

      BYTE8(v23) = 0;
    }

    if (SBYTE7(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (LOBYTE(v20[0]) == 1 && SHIBYTE(v21) < 0)
    {
      operator delete(v20[1]);
    }
  }

  sub_100111C2C(&v34);
  *&v34 = &v81;
  sub_100111D64(&v34);
  if (SBYTE7(v80) < 0)
  {
    operator delete(v79[0]);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[1]);
  }

  if (SHIBYTE(v77[0]) < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74[1]);
  }

  if (SHIBYTE(v74[0]) < 0)
  {
    operator delete(v73[0]);
  }

  *&v34 = v72 + 8;
  sub_100112048(&v34);
  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70[1]);
  }

  if (SBYTE7(v69) < 0)
  {
    operator delete(v68[0]);
  }

  if (BYTE8(v65) == 1)
  {
    if (SBYTE7(v67) < 0)
    {
      operator delete(v66[0]);
    }

    BYTE8(v65) = 0;
  }

  if (BYTE8(v63) == 1)
  {
    if (SBYTE7(v65) < 0)
    {
      operator delete(v64[0]);
    }

    BYTE8(v63) = 0;
  }

  if (SBYTE7(v63) < 0)
  {
    operator delete(v62[0]);
  }

  if (LOBYTE(v60[0]) == 1 && SHIBYTE(v61) < 0)
  {
    operator delete(v60[1]);
  }

  sub_100009970(&v16, *(&v16 + 1));
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_10025B17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100004A34(v30);
  sub_100009970(&a22, a23);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10025B254(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I session invalidated", v4, 2u);
  }

  v3 = *(a1 + 248);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 151) == 1)
  {
    *(a1 + 150) = 1;
    sub_10064BEE8(a1 + 1056, 3);
    sub_10064BF04(a1 + 1056, 70003);
    sub_10025B320(a1);
    if (*(a1 + 440))
    {
      sub_10025B4DC(a1 + 416, 0, 56);
      sub_10028C948(a1 + 416);
    }
  }
}

void sub_10025B320(uint64_t a1)
{
  v2 = *(a1 + 1000);
  *(a1 + 1000) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 320))
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Clear cached transfer available plans callback", v5, 2u);
    }

    v7[0] = *(a1 + 288);
    sub_1000224C8(v8, a1 + 296);
    sub_10025BC84(a1, v7);
    sub_10000FF50(v8);
    sub_10027E938(a1 + 296);
  }

  if (*(a1 + 280))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Clear cached transfer plans list callback", v5, 2u);
    }

    sub_10028CC38(v6, a1 + 256);
    sub_10025B8CC(a1, v6);
    sub_1002854D4(v6);
    sub_1002897E8(a1 + 256);
  }

  if (*(a1 + 384) == 1)
  {
    if (*(a1 + 383) < 0)
    {
      operator delete(*(a1 + 360));
    }

    *(a1 + 384) = 0;
  }
}

void sub_10025B4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002854D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025B4DC(uint64_t a1, char a2, char a3)
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

void sub_10025B538(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I start transfer session on target. card data. %p", buf, 0xCu);
  }

  v9 = *(a1 + 168);
  *(a1 + 144) = a3;
  *(a1 + 146) = a3 == 3;
  *(a1 + 148) = a3 == 4;
    ;
  }

  *(a1 + 176) = v9;
  sub_1003172E0(a2, &v11, v7, v8);
  sub_1002816F8(a1 + 168, *(a1 + 176), v11, v12, 0xCF3CF3CF3CF3CF3DLL * ((v12 - v11) >> 5));
  *buf = &v11;
  sub_10027B454(buf);
}

void sub_10025B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  a13 = &a10;
  sub_10027B454(&a13);
  _Unwind_Resume(a1);
}

const void **sub_10025B698(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Get transfer plans list request", buf, 2u);
  }

  if (*(a1 + 144) == 2)
  {
    if (!*(a1 + 240))
    {
      v8 = 0;
      sub_100259554(a2, &v8, 0, 5);
      v5 = &v8;
      return sub_100010250(v5);
    }
  }

  else if (!*(a1 + 144))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017668B0();
    }

    v9 = 0;
    sub_100259554(a2, &v9, 0, 5);
    v5 = &v9;
    return sub_100010250(v5);
  }

  if (*(a1 + 150))
  {
    sub_10028CC38(v11, a2);
    sub_10025B8CC(a1, v11);
    return sub_1002854D4(v11);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer Plan Listing callback cached", buf, 2u);
    }

    return sub_10025B858((a1 + 256), a2);
  }
}

void *sub_10025B858(void *a1, uint64_t a2)
{
  sub_10028CC38(v4, a2);
  sub_10028C9CC(v4, a1);
  sub_1002854D4(v4);
  return a1;
}

void sub_10025B8CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 159) != 1)
  {
    v7 = a1;
    sub_100004AA0(&v5, (a1 + 8));
    v3 = v6;
    v8 = v5;
    v9 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    sub_10028CC38(v10, a2);
    v10[7] = 0;
    operator new();
  }

  v4 = 0;
  sub_100259554(a2, &v4, 0, 63);
  sub_100010250(&v4);
}

void sub_10025BA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_10002B644(v15 - 72);
  sub_1002656E8(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10025BA88(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10025BADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (*(a1 + 144) != 2)
  {
    if (!*(a1 + 144))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017668E4();
      }

      return sub_10000FFD0(a3, 0);
    }

    goto LABEL_7;
  }

  if (*(a1 + 240))
  {
LABEL_7:
    if (*(a1 + 150))
    {
      v9[0] = sub_100649E80(a2);
      v7 = v9;
      sub_1000224C8(&v10, a3);
      sub_10025BC84(a1, v9);
    }

    else
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Transfer Plan Available callback cached", buf, 2u);
      }

      buf[0] = sub_100649E80(v4);
      v7 = buf;
      sub_1000224C8(&v12, a3);
      sub_10027E890((a1 + 288), buf);
    }

    return sub_10000FF50((v7 + 8));
  }

  return sub_10000FFD0(a3, 0);
}

uint64_t sub_10025BC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  if (v2 == v3)
  {
LABEL_9:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v4 = *(v2 + 294);
      v5 = v4 > 0x12 || ((1 << v4) & 0x50041) == 0;
      if (v5 && v4 - 128 >= 3)
      {
        break;
      }

      v2 += 672;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    v6 = 1;
  }

  return sub_10000FFD0(a2 + 8, v6);
}

void sub_10025BCE4(uint64_t a1, uint64_t a2, __int128 **a3, char a4, __int128 **a5, __int128 *a6, char a7, uint64_t a8)
{
  v8 = a1;
  v9 = *a3;
  v45 = a3[1];
  if (*a3 != v45)
  {
    p_p = &__p;
    do
    {
      buf = 0uLL;
      v73 = 0;
      sub_100922314((v9 + 24), a2, a3);
      v12 = *(v8 + 168);
      v11 = *(v8 + 176);
      sub_10027E9BC(__dst, v9);
      if (SHIBYTE(v73) < 0)
      {
        sub_100005F2C(&__p, buf, *(&buf + 1));
      }

      else
      {
        __p = buf;
        v71 = v73;
      }

      v13 = HIBYTE(v71);
      if (v12 != v11)
      {
        if ((v61 & 0x80u) == 0)
        {
          v14 = v61;
        }

        else
        {
          v14 = v60[1];
        }

        if ((v61 & 0x80u) == 0)
        {
          v15 = v60;
        }

        else
        {
          v15 = v60[0];
        }

        if (v71 >= 0)
        {
          v16 = HIBYTE(v71);
        }

        else
        {
          v16 = *(&__p + 1);
        }

        if (v71 < 0)
        {
          p_p = __p;
        }

        if ((v59 & 0x80u) == 0)
        {
          v17 = v59;
        }

        else
        {
          v17 = __dst[1];
        }

        if ((v59 & 0x80u) == 0)
        {
          v18 = __dst;
        }

        else
        {
          v18 = __dst[0];
        }

        while (1)
        {
          v19 = *(v12 + 47);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v12 + 32);
          }

          if (v19 == v14)
          {
            v21 = v20 >= 0 ? (v12 + 24) : *(v12 + 24);
            if (!memcmp(v21, v15, v14))
            {
              v22 = *(v12 + 23);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = *(v12 + 8);
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? v12 : *v12;
                if (!memcmp(v24, p_p, v16))
                {
                  break;
                }
              }

              v25 = *(v12 + 239);
              v26 = v25;
              if ((v25 & 0x80u) != 0)
              {
                v25 = *(v12 + 224);
              }

              if (v25 == v17)
              {
                v27 = v26 >= 0 ? (v12 + 216) : *(v12 + 216);
                if (!memcmp(v27, v18, v17))
                {
                  break;
                }
              }
            }
          }

          v12 += 672;
          if (v12 == v11)
          {
            v12 = v11;
            break;
          }
        }

        p_p = &__p;
        v8 = a1;
      }

      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (v69 < 0)
      {
        operator delete(v68);
      }

      if (v67 < 0)
      {
        operator delete(v66);
      }

      if (v65 < 0)
      {
        operator delete(v64);
      }

      if (v63 < 0)
      {
        operator delete(v62);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (v59 < 0)
      {
        operator delete(__dst[0]);
      }

      if (v12 != *(v8 + 176))
      {
        *(v12 + 294) = 0;
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(buf);
      }

      v9 += 10;
    }

    while (v9 != v45);
  }

  sub_10025C4D4(v8 + 448);
  v28 = a3[1];
  if (*a3 != v28)
  {
    v29 = *a3 + 40;
    do
    {
      v30 = *(v8 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v29;
        if (*(v29 + 23) < 0)
        {
          v31 = *v29;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I plan(%s) is scheduled to transfer", &buf, 0xCu);
      }

      v32 = v29 + 120;
      v29 += 160;
    }

    while (v32 != v28);
  }

  *(v8 + 1121) = a4;
  v33 = *(v8 + 144);
  if ((v33 - 3) < 2)
  {
    goto LABEL_77;
  }

  if (*(v8 + 144))
  {
    if (v33 != 1)
    {
LABEL_81:
      buf = 0uLL;
      v73 = 0;
      sub_10025C538(v8, a3, a6, &buf);
      if (buf != *(&buf + 1))
      {
        v34 = *a3;
        v35 = a3[1];
        if (*a3 != v35)
        {
          do
          {
            sub_10025C600(v8, v34 + 40);
            v34 += 10;
          }

          while (v34 != v35);
        }

        sub_10025C7C4((v8 + 416), a8);
        v48 = v8;
        sub_100004AA0(&p_buf, (v8 + 8));
        v36 = v47;
        v49 = p_buf;
        v50 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v36);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v51, *a2, *(a2 + 8));
        }

        else
        {
          *v51 = *a2;
          v51[2] = *(a2 + 16);
        }

        v52 = 0uLL;
        v53 = 0;
        sub_10027EB58(&v52, buf, SDWORD2(buf), 0xCCCCCCCCCCCCCCCDLL * ((*(&buf + 1) - buf) >> 5));
        memset(v54, 0, sizeof(v54));
        sub_10004EFD0(v54, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
        v55 = *a6;
        v56 = a7;
        v57 = 0;
        operator new();
      }

      sub_10025B4DC(a8, 1, 0);
      sub_100259FCC(v8);
      p_buf = &buf;
      sub_10027EE48(&p_buf);
      return;
    }

LABEL_77:
    if (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 5) >= 2)
    {
      if (os_log_type_enabled(*(v8 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101766918();
      }

      sub_10025B4DC(a8, 0, 6);
      return;
    }

    goto LABEL_81;
  }

  if (os_log_type_enabled(*(v8 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017668E4();
  }

  sub_10025B4DC(a8, 0, 56);
}

void sub_10025C360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  v50 = v47[3];
  if (v50)
  {
    std::__shared_weak_count::__release_weak(v50);
  }

  operator delete(v47);
  sub_10025C838(&a25);
  a24 = v48 - 128;
  sub_10027EE48(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_10025C450(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10025C4D4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    sub_10001021C((a1 + 64));
    sub_100005978((a1 + 56));
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 72) = 0;
  }
}

uint64_t sub_10025C538@<X0>(uint64_t result@<X0>, __int128 **a2@<X1>, _OWORD *a3@<X2>, char **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = result;
    do
    {
      result = sub_10026B260(v7, v4, a3);
      if ((result & 1) == 0)
      {
        v9 = a4[1];
        if (v9 >= a4[2])
        {
          result = sub_100282610(a4, v4);
        }

        else
        {
          sub_10027E9BC(a4[1], v4);
          result = (v9 + 160);
        }

        a4[1] = result;
      }

      v4 += 10;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_10025C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_10027EE48(&a10);
  _Unwind_Resume(a1);
}

void sub_10025C600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 904);
  v4 = *(a1 + 912);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v19 = *(a2 + 16);
  }

  v5 = HIBYTE(v19);
  if (v3 == v4)
  {
    v4 = v3;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v19 >= 0)
    {
      v6 = HIBYTE(v19);
    }

    else
    {
      v6 = __p[1];
    }

    if (v19 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v3 + 432;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 848;
      v8 += 1280;
      if (v12 == v4)
      {
        goto LABEL_22;
      }
    }

    v4 = v8 - 432;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v4 != *(a1 + 912) && *(v4 + 1) == 6)
  {
    (***(a1 + 48))(&v14);
    ServiceMap = Registry::getServiceMap(v14);
    sub_100295C34(&v16, ServiceMap);
    if (v16)
    {
      (*(*v16 + 24))(v16, 4);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }

    if (v15)
    {
      sub_100004A34(v15);
    }
  }
}

void sub_10025C798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void *sub_10025C7C4(void *a1, uint64_t a2)
{
  sub_10028CCD0(v4, a2);
  sub_10028CD68(v4, a1);
  sub_100285554(v4);
  return a1;
}

uint64_t sub_10025C838(uint64_t a1)
{
  v4 = (a1 + 72);
  sub_1000087B4(&v4);
  v4 = (a1 + 48);
  sub_10027EE48(&v4);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10025C8A0(void *a1, uint64_t a2)
{
  v2 = a1[42];
  v3 = a1[44];
  if (v3 == v2 || a1[41] == v2)
  {
    return 1;
  }

  v6[0] = off_101E36E68;
  v6[3] = v6;
  v4 = sub_10025C968(a1, a2, v3 + 320, v6);
  sub_10028ED7C(v6);
  return v4;
}

void sub_10025C954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10028ED7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Cancelling ongoing transfer", buf, 2u);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 64);
      if (v10)
      {
        v11 = sub_10025CD10((a1 + 328), a3);
        if (*(a1 + 336) == v11)
        {
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_1017669F0();
          }

          buf[0] = 56;
          v13 = *(a4 + 24);
          if (v13)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v11;
          if (*(a1 + 352) == v11)
          {
            if ((*(v11 + 908) & 1) == 0 && (*(v11 + 909) & 1) == 0 && (*(v11 + 910) & 1) == 0 && *(a1 + 156) != 6)
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_1017669BC();
              }

              buf[0] = 5;
              sub_10028785C(a4);
              goto LABEL_20;
            }

            v16 = *(v11 + 274);
            v17 = *(v11 + 282);
            if (*(a3 + 23) < 0)
            {
              sub_100005F2C(__dst, *a3, *(a3 + 8));
            }

            else
            {
              *__dst = *a3;
              v25 = *(a3 + 16);
            }

            v18 = *(v12 + 584);
            v19 = *(v12 + 592);
            if (*(v12 + 695) < 0)
            {
              sub_100005F2C(__p, *(v12 + 672), *(v12 + 680));
            }

            else
            {
              *__p = *(v12 + 672);
              v23 = *(v12 + 688);
            }

            (*(*v10 + 24))(v10, v16, v17, __dst, v18, v19, __p, 3);
            if (SHIBYTE(v23) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v25) < 0)
            {
              operator delete(__dst[0]);
            }

            buf[0] = 0;
            v20 = *(a4 + 24);
            if (v20)
            {
              (*(*v20 + 48))(v20, buf);
              v15 = 1;
              goto LABEL_37;
            }
          }

          else
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10176694C();
            }

            buf[0] = 56;
            v13 = *(a4 + 24);
            if (v13)
            {
LABEL_19:
              (*(*v13 + 48))(v13, buf);
LABEL_20:
              v15 = 0;
LABEL_37:
              sub_100004A34(v9);
              return v15;
            }
          }
        }

        sub_100022DB4();
      }
    }
  }

  else
  {
    v9 = 0;
  }

  buf[0] = 56;
  v14 = *(a4 + 24);
  if (!v14)
  {
    sub_100022DB4();
  }

  (*(*v14 + 48))(v14, buf);
  v15 = 0;
  if (v9)
  {
    goto LABEL_37;
  }

  return v15;
}

void sub_10025CCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_10025CD10(void *a1, const void **a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return *a1;
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  for (i = *a1 + 320; ; i += 1072)
  {
    v7 = *(i + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(i + 8);
    }

    if (v7 == v4)
    {
      v9 = v8 >= 0 ? i : *i;
      if (!memcmp(v9, v5, v4))
      {
        break;
      }
    }

    v10 = i + 752;
    if (v10 == v2)
    {
      return v2;
    }
  }

  return i - 320;
}

void sub_10025CDB8(std::string::size_type a1, void **a2)
{
  if (*(a2 + 24) == 1)
  {
    sub_10025D834(a1, a2);
  }

  else if (!*(a2 + 24))
  {
    sub_10025CDD4(a1, a2);
  }
}

void sub_10025CDD4(std::string::size_type a1, void **a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__str, *a2, a2[1]);
  }

  else
  {
    __str = *a2;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size < 0x15)
  {
    v7 = 0;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    std::string::basic_string(&v48, &__str, 0, 0x14uLL, &v44);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v48.__r_.__value_.__l.__size_ == 20 && *v48.__r_.__value_.__l.__data_ == 0x72616C756C6C6543 && *(v48.__r_.__value_.__r.__words[0] + 8) == 0x6E6172546E616C50 && *(v48.__r_.__value_.__r.__words[0] + 16) == 1919247987;
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    else
    {
      v7 = SHIBYTE(v48.__r_.__value_.__r.__words[2]) == 20 && v48.__r_.__value_.__r.__words[0] == 0x72616C756C6C6543 && v48.__r_.__value_.__l.__size_ == 0x6E6172546E616C50 && LODWORD(v48.__r_.__value_.__r.__words[2]) == 1919247987;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_35:
      operator delete(__str.__r_.__value_.__l.__data_);
      if (!v7)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (!v7)
  {
    return;
  }

LABEL_36:
  v10 = *(a1 + 336);
  if (*(a1 + 328) == v10 || (v11 = *(a1 + 352), v11 == v10))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766AC8();
    }
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    v14 = *(v11 + 343);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 328);
    }

    if (v13 == v14 + 21)
    {
      if (v14)
      {
        if (v12 >= 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = *a2;
        }

        v17 = v16 + 21;
        if (v15 >= 0)
        {
          v18 = (v11 + 320);
        }

        else
        {
          v18 = *(v11 + 320);
        }

        while (1)
        {
          v20 = *v17++;
          v19 = v20;
          v21 = *v18++;
          if (v19 != v21)
          {
            break;
          }

          if (!--v14)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
LABEL_53:
        v22 = *(v11 + 191);
        if (v22 < 0)
        {
          v22 = *(v11 + 176);
        }

        if (!v22)
        {
          goto LABEL_74;
        }

        v23 = *(v11 + 167);
        if (v23 < 0)
        {
          v23 = *(v11 + 152);
        }

        if (v23)
        {
          theDict = 0;
          sub_10025DF80(a1, v11, &theDict);
          v24 = *(a1 + 40);
          if (theDict)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v48.__r_.__value_.__l.__data_) = 136315394;
              *(v48.__r_.__value_.__r.__words + 4) = "";
              WORD2(v48.__r_.__value_.__r.__words[1]) = 2080;
              *(&v48.__r_.__value_.__r.__words[1] + 6) = "";
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sEntitlement+Push Dictionary :", &v48, 0x16u);
            }

            v48.__r_.__value_.__r.__words[0] = off_101E36EF8;
            v48.__r_.__value_.__l.__size_ = a1;
            v49 = &v48;
            logger::CFTypeRefLogger();
            sub_100007E44(&v48);
            (***(a1 + 48))(&v44);
            sub_10014F618(v44, &v48);
            (*(*v48.__r_.__value_.__l.__data_ + 104))(v48.__r_.__value_.__r.__words[0], a2, theDict);
            if (v48.__r_.__value_.__l.__size_)
            {
              sub_100004A34(v48.__r_.__value_.__l.__size_);
            }

            if (*(&v44 + 1))
            {
              sub_100004A34(*(&v44 + 1));
            }

            v25 = *(v11 + 167);
            if (v25 < 0)
            {
              v25 = *(v11 + 152);
            }

            if (v25)
            {
              v32 = 0;
              Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements");
              sub_1000101E4(&v32, Value);
              memset(&v48, 0, sizeof(v48));
              (***(a1 + 48))(&v44);
              sub_100010024(&v41, &v32);
              if (*(v11 + 23) < 0)
              {
                sub_100005F2C(__dst, *v11, *(v11 + 8));
              }

              else
              {
                v27 = *v11;
                v40 = *(v11 + 16);
                *__dst = v27;
              }

              if (*(v11 + 47) < 0)
              {
                sub_100005F2C(v37, *(v11 + 24), *(v11 + 32));
              }

              else
              {
                *v37 = *(v11 + 24);
                v38 = *(v11 + 40);
              }

              if (*(v11 + 167) < 0)
              {
                sub_100005F2C(__p, *(v11 + 144), *(v11 + 152));
              }

              else
              {
                *__p = *(v11 + 144);
                v36 = *(v11 + 160);
              }

              sub_10025E170(&v41, &v48);
              if (SHIBYTE(v36) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v38) < 0)
              {
                operator delete(v37[0]);
              }

              if (SHIBYTE(v40) < 0)
              {
                operator delete(__dst[0]);
              }

              sub_10001021C(&v41);
              if (*(&v44 + 1))
              {
                sub_100004A34(*(&v44 + 1));
              }

              (*(**(a1 + 48) + 296))(*(a1 + 48), a2, &v48);
              if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v48.__r_.__value_.__l.__data_);
              }

              sub_10001021C(&v32);
            }

            v30 = *(v11 + 191);
            if (v30 < 0)
            {
              v30 = *(v11 + 176);
            }

            if (v30)
            {
              if (*(a1 + 1120) != 5)
              {
                goto LABEL_110;
              }

              (***(a1 + 48))(&v48);
              v34 = *&v48.__r_.__value_.__l.__data_;
              *&v48.__r_.__value_.__l.__data_ = 0uLL;
              v31 = sub_1009347B8(&v34);
              if (*(&v34 + 1))
              {
                sub_100004A34(*(&v34 + 1));
              }

              if (v48.__r_.__value_.__l.__size_)
              {
                sub_100004A34(v48.__r_.__value_.__l.__size_);
              }

              if (v31)
              {
                (***(a1 + 48))(&v44);
                *&v48.__r_.__value_.__l.__data_ = v44;
                v44 = 0uLL;
                v32 = 1;
                v33 = 1;
                CarrierEntitlements::setServiceToken();
              }

              else
              {
LABEL_110:
                (***(a1 + 48))(&v44);
                *&v48.__r_.__value_.__l.__data_ = v44;
                v44 = 0uLL;
                LOBYTE(v32) = 0;
                v33 = 0;
                CarrierEntitlements::setServiceToken();
              }

              if (v48.__r_.__value_.__l.__size_)
              {
                sub_100004A34(v48.__r_.__value_.__l.__size_);
              }

              if (*(&v44 + 1))
              {
                sub_100004A34(*(&v44 + 1));
              }
            }

            (***(a1 + 48))(&v44);
            sub_10014F618(v44, &v48);
            (*(*v48.__r_.__value_.__l.__data_ + 96))(v48.__r_.__value_.__r.__words[0], a2, 1);
            if (v48.__r_.__value_.__l.__size_)
            {
              sub_100004A34(v48.__r_.__value_.__l.__size_);
            }

            if (*(&v44 + 1))
            {
              sub_100004A34(*(&v44 + 1));
            }
          }

          else
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_101766A60();
            }

            v46 = 11;
            v48.__r_.__value_.__r.__words[0] = 0;
            v43 = 56;
            *&v44 = 0;
            v42 = 256;
            LODWORD(v32) = 70015;
            BYTE4(v32) = 1;
            sub_1002540BC(a1, (v11 + 320), &v46, 0, &v48.__r_.__value_.__l.__data_, &v43, &v44, &v42, &v32, (a1 + 352));
            sub_10001021C(&v44);
            sub_100005978(&v48.__r_.__value_.__l.__data_);
            if (*(a1 + 384) == 1)
            {
              sub_10064BEE8(a1 + 1056, 1);
              v48.__r_.__value_.__r.__words[0] = a1 + 360;
              v29 = sub_10028EDFC((a1 + 1064), (a1 + 360), &unk_101802C98, &v48, &v44);
              *(v29 + 21) = 70015;
              *(v29 + 88) = 1;
              sub_10025DD78(a1);
              sub_10025DE4C(a1);
            }
          }

          sub_10001021C(&theDict);
        }

        else
        {
LABEL_74:
          LOBYTE(v42) = 11;
          v48.__r_.__value_.__r.__words[0] = 0;
          v46 = 56;
          *&v44 = 0;
          LOWORD(theDict) = 256;
          LODWORD(v32) = 70017;
          BYTE4(v32) = 1;
          sub_1002540BC(a1, (v11 + 320), &v42, 0, &v48.__r_.__value_.__l.__data_, &v46, &v44, &theDict, &v32, (a1 + 352));
          sub_10001021C(&v44);
          sub_100005978(&v48.__r_.__value_.__l.__data_);
          if (*(a1 + 384) == 1)
          {
            sub_10064BEE8(a1 + 1056, 1);
            v48.__r_.__value_.__r.__words[0] = a1 + 360;
            v28 = sub_10028EDFC((a1 + 1064), (a1 + 360), &unk_101802C98, &v48, &v44);
            *(v28 + 21) = 70017;
            *(v28 + 88) = 1;
            sub_10025DD78(a1);
            sub_10025DE4C(a1);
          }

          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101766A94();
          }
        }
      }
    }
  }
}

void sub_10025D6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, std::__shared_weak_count *a39, const void *a40)
{
  v42 = *(v40 - 120);
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (a39)
  {
    sub_100004A34(a39);
  }

  sub_10001021C(&a40);
  _Unwind_Resume(a1);
}

void sub_10025D834(uint64_t a1, void **a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__str, *a2, a2[1]);
  }

  else
  {
    __str = *a2;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size < 0x15)
  {
    v7 = 0;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_35;
    }

LABEL_19:
    if (!v7)
    {
      return;
    }

    goto LABEL_36;
  }

  std::string::basic_string(&v41, &__str, 0, 0x14uLL, &buf);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = v41.__r_.__value_.__l.__size_ == 20 && *v41.__r_.__value_.__l.__data_ == 0x72616C756C6C6543 && *(v41.__r_.__value_.__r.__words[0] + 8) == 0x6E6172546E616C50 && *(v41.__r_.__value_.__r.__words[0] + 16) == 1919247987;
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  else
  {
    v7 = SHIBYTE(v41.__r_.__value_.__r.__words[2]) == 20 && v41.__r_.__value_.__r.__words[0] == 0x72616C756C6C6543 && v41.__r_.__value_.__l.__size_ == 0x6E6172546E616C50 && LODWORD(v41.__r_.__value_.__r.__words[2]) == 1919247987;
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_35:
  operator delete(__str.__r_.__value_.__l.__data_);
  if (!v7)
  {
    return;
  }

LABEL_36:
  v10 = *(a1 + 336);
  if (*(a1 + 328) == v10 || (v11 = *(a1 + 352), v11 == v10))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766AC8();
    }
  }

  else
  {
    v12 = (v11 + 320);
    memset(&v41, 0, sizeof(v41));
    sub_100260070(v11 + 320, &v41);
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = a2[1];
    }

    v15 = *(v11 + 343);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v11 + 328);
    }

    if (v14 == (v15 + 21))
    {
      if (v15)
      {
        if (v13 >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        v18 = v17 + 21;
        if (v16 >= 0)
        {
          v19 = (v11 + 320);
        }

        else
        {
          v19 = *v12;
        }

        while (1)
        {
          v21 = *v18++;
          v20 = v21;
          v22 = *v19++;
          if (v20 != v22)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
LABEL_53:
        if (*(a1 + 384) == 1)
        {
          v23 = *(a1 + 40);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Triggering preflight entitlements", &buf, 2u);
          }

          sub_1002601A8(a1);
        }

        else
        {
          v24 = *(a1 + 352);
          v25 = *(v24 + 191);
          if (v25 < 0)
          {
            v25 = *(v24 + 176);
          }

          if (v25)
          {
            v26 = *(v24 + 167);
            if (v26 < 0)
            {
              v26 = *(v24 + 152);
            }

            if (v26)
            {
              if (v16 < 0)
              {
                sub_100005F2C(__p, *v12, *(v11 + 328));
              }

              else
              {
                *__p = *v12;
                v32 = *(v11 + 336);
              }

              v27 = a1;
              sub_1002306AC((a1 + 8), &v28);
              if (*(v11 + 343) < 0)
              {
                sub_100005F2C(&v29, *(v11 + 320), *(v11 + 328));
              }

              else
              {
                v29 = *v12;
                v30 = *(v11 + 336);
              }

              sub_100260C40(v42, &v27);
            }
          }

          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101766A94();
          }

          v39 = 11;
          sub_100260418(a1, &buf);
          v37 = 56;
          v36 = 0;
          v35 = 256;
          v33 = 70018;
          v34 = 1;
          sub_1002540BC(a1, (v11 + 320), &v39, 0, &buf, &v37, &v36, &v35, &v33, (a1 + 352));
          sub_10001021C(&v36);
          sub_100005978(&buf);
        }
      }
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10025DCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_10025DD78(uint64_t a1)
{
  if (*(a1 + 384) == 1)
  {
    v2 = (a1 + 360);
    if (*(a1 + 383) < 0)
    {
      sub_100005F2C(__p, *(a1 + 360), *(a1 + 368));
    }

    else
    {
      *__p = *&v2->__r_.__value_.__l.__data_;
      v5 = *(a1 + 376);
    }

    sub_100255D0C(a1, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 384) == 1)
    {
      if (*(a1 + 383) < 0)
      {
        operator delete(v2->__r_.__value_.__l.__data_);
      }

      *(a1 + 384) = 0;
    }

    v3 = *(a1 + 352);
    if (v3 != *(a1 + 336))
    {
      sub_1001696A4(v2, (v3 + 320));
    }
  }
}

void sub_10025DE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025DE4C(const std::string *a1)
{
  if (a1[16].__r_.__value_.__s.__data_[0])
  {
    memset(&__p, 0, sizeof(__p));
    std::string::operator=(&__p, a1 + 15);
    p_p = &__p;
    *(sub_10028EDFC(&a1[44].__r_.__value_.__l.__size_, &__p, &unk_101802C98, &p_p, &v4) + 82) = 1;
    if (!sub_1002760A0(a1))
    {
      if (os_log_type_enabled(a1[1].__r_.__value_.__r.__words[2], OS_LOG_TYPE_ERROR))
      {
        sub_101766AFC();
      }

      sub_10025DD78(a1);
      sub_10025DE4C(a1);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v2 = a1[1].__r_.__value_.__r.__words[2];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I No Preflight Iccid", &__p, 2u);
    }

    a1[6].__r_.__value_.__s.__data_[6] = 1;
    sub_100254C38(a1);
    sub_10025B320(a1);
  }
}

void sub_10025DF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10025DF80@<X0>(const void **result@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v4 = *(a2 + 343);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 328);
  }

  if (v4)
  {
    v6 = result;
    v7 = (a2 + 320);
    if (sub_10016FA58((result + 116), (a2 + 320)))
    {
      v8 = sub_1000E20F0((v6 + 116), v7);

      return sub_100010024(a3, v8);
    }

    else
    {
      v12 = 0;
      (*(*v6[6] + 216))(&v12);
      if (v12)
      {
        *buf = v7;
        v9 = sub_1002965F8(v6 + 116, v7, &unk_101802C98, buf, &v13);
        sub_1000676D4(v9 + 7, &v12);
        *a3 = v12;
        v12 = 0;
      }

      else
      {
        v10 = v6[5];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 343) >= 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = *(a2 + 320);
          }

          *buf = 136315138;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I failed loading CB for ICCID: [%s]", buf, 0xCu);
        }

        *a3 = 0;
      }

      return sub_10001021C(&v12);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_10025E170(CFDictionaryRef *a1@<X1>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a1)
  {
    Value = CFDictionaryGetValue(*a1, @"Authentication");
    theDict = Value;
    if (Value)
    {
      CFRetain(Value);
      CFDictionaryGetValue(theDict, @"Username");
      memset(buf, 0, sizeof(buf));
      *&v13 = 0;
      ctu::cf::assign();
      v10 = 0;
      __s = 0u;
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_101766D78();
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(__s);
      }
    }

    else
    {
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
      v6 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_101766DAC();
      }
    }

    sub_10001021C(&theDict);
  }

  else
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
    v7 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_101766DE0();
    }
  }
}

void sub_10025E9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 + 23);
  sub_10001021C(&a19);
  if (v33 < 0)
  {
    operator delete(*v31);
  }

  _Unwind_Resume(a1);
}

void sub_10025EB50(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 148) == 1)
  {

    sub_10025F1D0(a1, a2);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    (***(a1 + 48))(&v25);
    Registry::getTimerService(&v23, v25);
    if (*(&v25 + 1))
    {
      sub_100004A34(*(&v25 + 1));
    }

    if (v23)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&__dst, *a2, *(a2 + 1));
      }

      else
      {
        __dst = *a2;
      }

      sub_10025F9D8(a1, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 352);
      if (*(v4 + 23) < 0)
      {
        sub_100005F2C(v20, *v4, *(v4 + 1));
        v4 = *(a1 + 352);
      }

      else
      {
        v5 = *v4;
        v21 = *(v4 + 2);
        *v20 = v5;
      }

      if (*(v4 + 47) < 0)
      {
        sub_100005F2C(v18, *(v4 + 3), *(v4 + 4));
        v4 = *(a1 + 352);
      }

      else
      {
        *v18 = *(v4 + 24);
        v19 = *(v4 + 5);
      }

      if (*(v4 + 71) < 0)
      {
        sub_100005F2C(v16, *(v4 + 6), *(v4 + 7));
        v4 = *(a1 + 352);
      }

      else
      {
        *v16 = v4[3];
        v17 = *(v4 + 8);
      }

      if (*(v4 + 95) < 0)
      {
        sub_100005F2C(v14, *(v4 + 9), *(v4 + 10));
      }

      else
      {
        *v14 = *(v4 + 72);
        v15 = *(v4 + 11);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 1));
      }

      else
      {
        *__p = *a2;
        v13 = *(a2 + 2);
      }

      sub_10025FDE4(a1, v20, v18, v16, v14, __p);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      sub_10000501C(v10, "send.tss.after.delete");
      *v7 = a1;
      sub_100004AA0(&v25, (a1 + 8));
      v6 = *(&v25 + 1);
      *&v7[8] = v25;
      if (*(&v25 + 1))
      {
        atomic_fetch_add_explicit((*(&v25 + 1) + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v6);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v8, *a2, *(a2 + 1));
      }

      else
      {
        *v8 = *a2;
        v9 = *(a2 + 2);
      }

      v29 = *v10;
      v30 = v11;
      v10[0] = 0;
      v10[1] = 0;
      v11 = 0;
      v25 = *v7;
      v26 = *&v7[16];
      if (SHIBYTE(v9) < 0)
      {
        sub_100005F2C(&v27, v8[0], v8[1]);
      }

      else
      {
        v27 = *v8;
        v28 = v9;
      }

      v31 = 0;
      operator new();
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766E14();
    }

    if (v24)
    {
      sub_100004A34(v24);
    }
  }
}

void sub_10025F07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  v58 = v55[3];
  if (v58)
  {
    std::__shared_weak_count::__release_weak(v58);
  }

  operator delete(v55);
  sub_100260030(v56 - 176);
  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  sub_100260030(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  v59 = *(v56 - 184);
  if (v59)
  {
    sub_100004A34(v59);
  }

  _Unwind_Resume(a1);
}

void sub_10025F1D0(uint64_t a1, __int128 *a2)
{
  v26 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) != v26)
  {
    v24 = 0uLL;
    v25 = 0;
    sub_100260070(a2, &v24);
    v23 = 0uLL;
    (***(a1 + 48))(&v28);
    ServiceMap = Registry::getServiceMap(v28);
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
    v27 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v27);
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
LABEL_12:
        (**v12)(&v23, v12, &v24);
        if ((v13 & 1) == 0)
        {
          sub_100004A34(v11);
        }

        if (v29)
        {
          sub_100004A34(v29);
        }

        if (v23)
        {
          v14 = *(a1 + 88);
          if (v14)
          {
            v15 = std::__shared_weak_count::lock(v14);
            if (v15 && *(a1 + 80))
            {
              sub_100004AA0(&v28, (a1 + 8));
              v16 = v29;
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v16);
              }

              if (*(a2 + 23) < 0)
              {
                sub_100005F2C(__p, *a2, *(a2 + 1));
              }

              else
              {
                *__p = *a2;
                __p[2] = *(a2 + 2);
              }

              v30 = 0;
              operator new();
            }
          }

          else
          {
            v15 = 0;
          }

          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101766E48();
          }

          v22 = 11;
          sub_100260418(a1, &v28);
          v21 = 56;
          v27 = 0;
          v20 = 256;
          v18 = 70009;
          v19 = 1;
          sub_1002540BC(a1, a2, &v22, 0, &v28, &v21, &v27, &v20, &v18, &v26);
          sub_10001021C(&v27);
          sub_100005978(&v28);
          if (v15)
          {
            sub_100004A34(v15);
          }
        }

        else
        {
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101766E7C();
          }

          v22 = 11;
          sub_100260418(a1, &v28);
          v21 = 56;
          v27 = 0;
          v20 = 256;
          v18 = 70014;
          v19 = 1;
          sub_1002540BC(a1, a2, &v22, 0, &v28, &v21, &v27, &v20, &v18, &v26);
          sub_10001021C(&v27);
          sub_100005978(&v28);
        }

        if (*(&v23 + 1))
        {
          sub_100004A34(*(&v23 + 1));
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24);
        }

        return;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766EB0();
  }
}

void sub_10025F838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (*(v37 + 71) < 0)
  {
    operator delete(*(v37 + 48));
  }

  v40 = *(v37 + 40);
  if (v40)
  {
    sub_100004A34(v40);
  }

  v41 = *(v37 + 24);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  operator delete(v37);
  sub_100272ABC(&a11);
  sub_100004A34(v36);
  if (a36)
  {
    sub_100004A34(a36);
  }

  if (*(v38 - 161) < 0)
  {
    operator delete(*(v38 - 184));
  }

  _Unwind_Resume(a1);
}

void sub_10025F9D8(void *a1, std::string *a2)
{
  v4 = sub_10025CD10(a1 + 41, &a2->__r_.__value_.__l.__data_);
  if (a1[42] == v4)
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101766F20();
    }

    LOWORD(v22[0]) = 14337;
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v22[1], a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      *&v22[1] = *&a2->__r_.__value_.__l.__data_;
      v22[3] = a2->__r_.__value_.__r.__words[2];
    }

    sub_1002549A0(a1, &a2->__r_.__value_.__l.__data_, &v23);
    v25 = 0;
    v26 = 0;
    sub_100254AA0((a1 + 56), v22);
    sub_10001021C(&v26);
    sub_100005978(&v25);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v22[3]) < 0)
    {
      operator delete(v22[1]);
    }

    v20 = 0;
    v21 = 0;
    sub_100254358(a1, &a2->__r_.__value_.__l.__data_, 11, 0x38u, &v21, &v20);
    sub_10001021C(&v20);
    sub_100005978(&v21);
    sub_100254C38(a1);
    sub_100254E74(a1);
  }

  else
  {
    v5 = v4;
    memset(v22, 0, sizeof(v22));
    sub_1009CEC2C(v22);
    sub_10027F75C(v22);
    std::string::operator=(v22[2], a2);
    v6 = a1[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = a2->__r_.__value_.__r.__words[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I sending delete profile request for iccid: %s", &buf, 0xCu);
    }

    if (*(v5 + 695) < 0)
    {
      sub_100005F2C(__dst, *(v5 + 672), *(v5 + 680));
    }

    else
    {
      *__dst = *(v5 + 672);
      v19 = *(v5 + 688);
    }

    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(v16, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      *v16 = *&a2->__r_.__value_.__l.__data_;
      v17 = a2->__r_.__value_.__r.__words[2];
    }

    v8 = *(v5 + 584);
    v9 = *(v5 + 592);
    v10 = sub_100649C38(9);
    sub_10000501C(v14, v10);
    buf = 0uLL;
    v28 = 0;
    PB::Writer::Writer(&buf);
    (*(v22[0] + 3))(v22, &buf);
    __p = 0;
    v12 = 0;
    v13 = 0;
    sub_10018A52C(&__p, *(&buf + 1), buf, buf - *(&buf + 1));
    PB::Writer::~Writer(&buf);
    sub_100253ADC(a1, __dst, v16, v8, v9, v14, &__p);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    sub_1009CECC8(v22);
  }
}

void sub_10025FD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1009CECC8(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_10025FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t ***a6)
{
  theDict = 0;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766FD0();
    }

    goto LABEL_15;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766F9C();
    }

    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"DelayTimeForTSSAfterDeletion"))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) < 0)
      {
        a6 = *a6;
      }

      *buf = 136315138;
      v18[0] = a6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I DelayTimeForTSSAfterDeletion not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_15:
    v10 = 10;
    goto LABEL_16;
  }

  v9 = CFDictionaryGetValue(Value, @"DelayTimeForTSSAfterDeletion");
  v10 = v9;
  *buf = 0;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v10, v12);
      v10 = *buf;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) < 0)
    {
      a6 = *a6;
    }

    *buf = 67109378;
    LODWORD(v18[0]) = v10;
    WORD2(v18[0]) = 2080;
    *(v18 + 6) = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I DelayTimeForTSSAfterDeletion is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v10;
}

void sub_10026000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100260030(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100260070(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000501C(&v11, "CellularPlanTransfer");
  std::string::push_back(&v11, 58);
  v12 = v11;
  memset(&v11, 0, sizeof(v11));
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = std::string::append(&v12, v5, v6);
  v9 = v7->__r_.__value_.__r.__words[0];
  size = v7->__r_.__value_.__l.__size_;
  v13[0] = v7->__r_.__value_.__r.__words[2];
  *(v13 + 3) = *(&v7->__r_.__value_.__r.__words[2] + 3);
  v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    sub_100005F2C(a2, v9, size);
    operator delete(v9);
  }

  else
  {
    *a2 = v9;
    *(a2 + 8) = size;
    *(a2 + 16) = v13[0];
    *(a2 + 19) = *(v13 + 3);
    *(a2 + 23) = v10;
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_100260164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1002601A8(const std::string *a1)
{
  if (a1[16].__r_.__value_.__s.__data_[0])
  {
    v2 = a1[14].__r_.__value_.__r.__words[2];
    if (v2 != a1[14].__r_.__value_.__r.__words[0])
    {
      if (*(v2 + 343) < 0)
      {
        sub_100005F2C(__p, *(v2 + 320), *(v2 + 328));
      }

      else
      {
        *__p = *(v2 + 320);
        v6 = *(v2 + 336);
      }

      sub_100004AA0(buf, &a1->__r_.__value_.__l.__size_);
      v4 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v4);
      }

      v9 = 0;
      operator new();
    }

    sub_10025DD78(a1);

    sub_10025DE4C(a1);
  }

  else
  {
    v3 = a1[1].__r_.__value_.__r.__words[2];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I No Preflight Iccid", buf, 2u);
    }

    sub_10025DD78(a1);
    sub_10025DE4C(a1);
  }
}

void sub_1002603D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_10000FF50(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100260418(uint64_t a1@<X0>, CFStringRef *a2@<X8>)
{
  if (*(a1 + 147) == 1 || *(a1 + 352) == *(a1 + 336))
  {
    *a2 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    (*(**(a1 + 48) + 816))(__p);
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *a2 = CFStringCreateWithCString(kCFAllocatorDefault, v3, 0x8000100u);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1002604F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026050C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  sub_100260070(a2, v43);
  v41 = 0;
  v42 = 0;
  (***(a1 + 48))(&buf);
  ServiceMap = Registry::getServiceMap(buf);
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
  __str[0].__r_.__value_.__r.__words[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __str);
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
  (**v14)(&v41, v14, v43);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (!v41)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766E7C();
    }

    goto LABEL_31;
  }

  v16 = sub_10025CD10((a1 + 328), a2);
  v17 = *(a1 + 40);
  if (*(a1 + 336) == v16)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767004();
    }

LABEL_31:
    v23 = 0;
    goto LABEL_72;
  }

  v18 = v16;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
  {
    v19 = a2;
    if (*(a2 + 23) < 0)
    {
      v19 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [req][ta] perform TransferAuthorization request from target side. source iccid : %s", &buf, 0xCu);
  }

  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  buf = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(__str, 0, sizeof(__str));
  sub_100269D70(a1, __str, *(a1 + 352));
  v20 = sub_10026F640(&v53 + 8, __str);
  WORD2(v53) = 257;
  *(&v63 + 1) = sub_1009325CC(v20);
  LOBYTE(v64) = 1;
  sub_100004AA0(&v27, (a1 + 8));
  v21 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v21 + 1));
  }

  v27 = 0u;
  *v28 = 0u;
  *v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  WORD1(v27) = 257;
  DWORD1(v27) = 15;
  BYTE8(v27) = 1;
  HIDWORD(v27) = 1;
  LOBYTE(v28[0]) = 1;
  v32 = 0;
  sub_10026F6EC(a1, 1);
  sub_10000501C(__p, "TransferAuthRequestTime");
  v50[1] = COERCE_VOID_FASTCALL_INT64void_CHARvoidvoid_(CFAbsoluteTimeGetCurrent());
  v50[0] = sub_1002983F8;
  sub_100261328(a1, a2, __p, v50);
  sub_100176638(v50);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10026AEDC(a1, a2);
  v22 = v41;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 1174405120;
  v45[2] = sub_10026FADC;
  v45[3] = &unk_101E36040;
  v45[4] = a1;
  v46 = v21;
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v47, *a2, *(a2 + 1));
  }

  else
  {
    v47 = *a2;
    v48 = *(a2 + 2);
  }

  sub_1000224C8(v49, a3);
  v49[4] = v18;
  v50[0] = v45;
  (*(*v22 + 208))(v22, 8, &v27, &buf, a1 + 24, v50);
  sub_10000FF50(v49);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (*(&v46 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v46 + 1));
  }

  if (v32 == 1 && SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  if (LOBYTE(v30[0]) == 1 && SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }

  if (v40 == 1 && SHIBYTE(v39) < 0)
  {
    operator delete(*(&v38 + 1));
  }

  if (v38 == 1 && SHIBYTE(v37) < 0)
  {
    operator delete(*(&v36 + 1));
  }

  if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
  {
    operator delete(v34);
  }

  *&v27 = &__str[1];
  sub_10016C644(&v27);
  if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str[0].__r_.__value_.__l.__data_);
  }

  if (v63 == 1)
  {
    if (BYTE8(v62) == 1 && SBYTE7(v62) < 0)
    {
      operator delete(v61);
    }

    if (BYTE8(v60) == 1 && SBYTE7(v60) < 0)
    {
      operator delete(v59);
    }

    if (v58 == 1 && SHIBYTE(v57) < 0)
    {
      operator delete(*(&v56 + 1));
    }

    __str[0].__r_.__value_.__r.__words[0] = &v55;
    sub_10016C644(__str);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(*(&v53 + 1));
    }
  }

  if (BYTE8(v52) == 1 && SBYTE7(v52) < 0)
  {
    operator delete(buf);
  }

  v23 = 1;
LABEL_72:
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  return v23;
}

void sub_100260B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a59)
  {
    std::__shared_weak_count::__release_weak(a59);
  }

  sub_100270CFC(&a13);
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  sub_100270D58(&a25);
  sub_100270DF8(&a65);
  if (a46)
  {
    sub_100004A34(a46);
  }

  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100260CEC(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_100260D0C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767080();
  }
}

void sub_100260D48(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 640) != a2)
  {
    sub_100169D44((a1 + 640), *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  }

  v3 = *(a1 + 328);
  v4 = *(a1 + 336);
  if (v3 == v4)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I No plan awaiting transfer", v16, 2u);
    }
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    *v16 = v17;
    do
    {
      v5 = (v3 + 624);
      if (sIsProfileInstalled())
      {
        v6 = *(a1 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v3 + 320;
          if (*(v3 + 343) < 0)
          {
            v7 = *(v3 + 320);
          }

          if (*(v3 + 647) < 0)
          {
            v5 = *v5;
          }

          *buf = 136315394;
          v19 = v7;
          v20 = 2080;
          v21 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I profile [%s -> %s] already installed, removing it from cached list", buf, 0x16u);
        }

        *(a1 + 153) = 0;
        sub_100005BA0(v16, (v3 + 320), v3 + 320);
      }

      v3 += 1072;
    }

    while (v3 != v4);
    v8 = *v16;
    if (*v16 != v17)
    {
      do
      {
        if (*(v8 + 55) < 0)
        {
          sub_100005F2C(__p, v8[4], v8[5]);
        }

        else
        {
          *__p = *(v8 + 2);
          v15 = v8[6];
        }

        sub_100255D0C(a1, __p);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        v9 = v8[1];
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

        v8 = v10;
      }

      while (v10 != v17);
    }

    if (*(a1 + 328) == *(a1 + 336))
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I All transfer plans handled", buf, 2u);
      }

      sub_100259FCC(a1);
    }

    sub_100009970(v16, v17[0]);
  }
}

const void **sub_100261028(const void **result, const void **a2, int a3)
{
  *(result + 153) = a3;
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    sub_100254358(result, a2, 8, 0, &v4, &v3);
    sub_10001021C(&v3);
    return sub_100005978(&v4);
  }

  return result;
}

void sub_10026107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_100261098(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 664);
  if (v2 != a2)
  {
    sub_100169790(v2, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  }
}

void sub_1002610E0(void *a1, const std::string *a2)
{
  v2 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v2 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = a1[42];
    v7 = a1[44];
    if (v7 == v6 || a1[41] == v6)
    {
      if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
      {
        sub_1017670B4();
      }
    }

    else
    {
      if (*(v7 + 856) != 1)
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 855);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v7 + 840);
      }

      if (size != v8 || (v2 >= 0 ? (v10 = a2) : (v10 = a2->__r_.__value_.__r.__words[0]), v9 >= 0 ? (v11 = (v7 + 832)) : (v11 = *(v7 + 832)), memcmp(v10, v11, size)))
      {
LABEL_18:
        v12 = a1[5];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = a2->__r_.__value_.__r.__words[0];
          if (v2 >= 0)
          {
            v13 = a2;
          }

          v14 = v7 + 320;
          if (*(v7 + 343) < 0)
          {
            v14 = *(v7 + 320);
          }

          *buf = 136315394;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I update alt smdp with websheet result. smdp: %s, iccid: [%s]", buf, 0x16u);
        }

        sub_1001696A4((v7 + 832), a2);
        sub_10000501C(__p, "AltSmdpFqdn");
        *buf = 0;
        *&buf[8] = 0;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf[8], a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
        }

        else
        {
          *&buf[8] = *&a2->__r_.__value_.__l.__data_;
          v18 = a2->__r_.__value_.__r.__words[2];
        }

        *buf = sub_100280258;
        sub_100261328(a1, v7 + 320, __p, buf);
        sub_100176638(buf);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1002612F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100261328(void *a1, uint64_t a2, __int128 *a3, void (**a4)(uint64_t, void, char *, void, void))
{
  v5 = a1[11];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[10];
      if (v10)
      {
        sub_100282A30(__p, a3, a4);
        memset(v11, 0, sizeof(v11));
        sub_1001762DC(v11, __p, &v16, 1uLL);
        (*(*v10 + 120))(v10, a2, v11);
        v12 = v11;
        sub_100176578(&v12);
        sub_100176638(&v15);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_10:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_101767128();
  }

  if (v9)
  {
    goto LABEL_10;
  }
}

void sub_100261470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void **);
  sub_100176578(va);
  sub_1001765FC(va1);
  sub_100004A34(v7);
  _Unwind_Resume(a1);
}

void sub_1002614B0(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 336);
  v4 = *(result + 352);
  if (v4 == v3 || *(result + 328) == v3)
  {
    if (os_log_type_enabled(*(result + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176715C();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    if (*(v4 + 856) != 1)
    {
      goto LABEL_14;
    }

    v5 = (v4 + 832);
    if ((*(v4 + 855) & 0x80000000) == 0)
    {
      if (*(v4 + 855))
      {
        v6 = *v5;
        a2[2] = *(v4 + 848);
        *a2 = v6;
        return;
      }

      goto LABEL_14;
    }

    v7 = *(v4 + 840);
    if (!v7)
    {
LABEL_14:

      sub_100261590(result, a2);
      return;
    }

    v8 = *v5;

    sub_100005F2C(a2, v8, v7);
  }
}

void sub_100261590(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 352) == *(a1 + 336))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766AC8();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = *(**(a1 + 48) + 808);

    v3();
  }
}

void sub_100261644(uint64_t a1@<X0>, uint64_t ***a2@<X1>, const std::string *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v12 = *(a5 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a5 + 8);
  }

  if (v12)
  {
    sub_1002610E0(a1, a5);
  }

  else
  {
    sub_1002614B0(a1, buf);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = *buf;
    *(a5 + 16) = *&buf[16];
  }

  v13 = *(a1 + 336);
  v14 = *(a1 + 352);
  if (v14 != v13 && *(a1 + 328) != v13)
  {
    v50 = 0;
    __dst[1] = 0;
    v49 = 0;
    __dst[0] = 0;
    v15 = *(a2 + 23);
    if (v15 < 0)
    {
      v15 = a2[1];
    }

    v16 = (v14 + 320);
    if (v15)
    {
      v16 = a2;
    }

    if (*(v16 + 23) < 0)
    {
      sub_100005F2C(__dst, *v16, v16[1]);
    }

    else
    {
      *__dst = *v16;
      v49 = v16[2];
    }

    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a6;
      v20 = SHIBYTE(v49);
      v21 = __dst[0];
      v22 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      v23 = a3->__r_.__value_.__r.__words[0];
      v24 = sub_100649E24(v7);
      if (v22 >= 0)
      {
        v25 = a3;
      }

      else
      {
        v25 = v23;
      }

      *buf = 136315650;
      v26 = __dst;
      if (v20 < 0)
      {
        v26 = v21;
      }

      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      *&buf[22] = 2080;
      v54 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I websheet result for iccid: [%s]. target iccid: [%s], state: %s", buf, 0x20u);
      a6 = v19;
    }

    sub_100261C64(a1, __dst, a3);
    if (v7 == 1)
    {
      v27 = 7;
      v50 = 7;
    }

    else if (v7 == 4)
    {
      v50 = 9;
      v52 = 0;
      sub_100261D1C(a1, 2, 4, v51);
      sub_10028ED7C(v51);
      v27 = 9;
    }

    else
    {
      v27 = 8;
      v50 = 8;
      *(a1 + 153) = 1;
    }

    v46 = 0;
    v47 = 0;
    sub_100254358(a1, __dst, v27, 0, &v47, &v46);
    sub_10001021C(&v46);
    sub_100005978(&v47);
    v28 = *(a1 + 904);
    v29 = *(a1 + 912);
    if (SHIBYTE(v49) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v45 = v49;
    }

    v30 = HIBYTE(v45);
    if (v28 == v29)
    {
LABEL_52:
      v38 = 0;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (SHIBYTE(v45) >= 0)
      {
        v31 = HIBYTE(v45);
      }

      else
      {
        v31 = __p[1];
      }

      if (SHIBYTE(v45) >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      v33 = v28 + 432;
      while (1)
      {
        v34 = *(v33 + 23);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(v33 + 8);
        }

        if (v31 == v34)
        {
          v36 = v35 >= 0 ? v33 : *v33;
          if (!memcmp(v32, v36, v31))
          {
            break;
          }
        }

        v37 = v33 + 848;
        v33 += 1280;
        if (v37 == v29)
        {
          goto LABEL_52;
        }
      }

      v38 = 1;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_54;
      }
    }

    operator delete(__p[0]);
LABEL_54:
    v39 = sub_10025CD10((a1 + 328), __dst);
    if (*(a1 + 336) != v39)
    {
      v40 = v39;
      buf[0] = 2;
      sub_100261ECC(a1, buf, &v50, v39, v38, *(v39 + 700));
      if (v7 == 4 || v7 == 1)
      {
        sub_10000501C(&v43, "TransferSimServiceResponse");
        *buf = 0;
        *&buf[8] = 0;
        sub_10028FAA8(buf, v40 + 744);
      }
    }

    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(a6, *a5, *(a5 + 8));
    }

    else
    {
      *a6 = *a5;
      *(a6 + 16) = *(a5 + 16);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__dst[0]);
    }

    return;
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = a3;
    }

    else
    {
      v41 = a3->__r_.__value_.__r.__words[0];
    }

    v42 = sub_100649E24(v7);
    *buf = 136315650;
    *&buf[4] = a2;
    *&buf[12] = 2080;
    *&buf[14] = v41;
    *&buf[22] = 2080;
    v54 = v42;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "websheet callback. source iccid: %s, target iccid: %s, state: %s. no ongoing transfer plan.", buf, 0x20u);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(a6, *a5, *(a5 + 8));
  }

  else
  {
    *a6 = *a5;
    *(a6 + 16) = *(a5 + 16);
  }
}

void sub_100261BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  sub_10028ED7C(&a37);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100261C64(void *a1, const void **a2, const std::string *a3)
{
  v4 = a1[42];
  if (a1[41] == v4)
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101767200();
    }
  }

  else
  {
    v6 = sub_10025CD10(a1 + 41, a2);
    if (v4 == v6)
    {
      if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
      {
        sub_101767190();
      }
    }

    else
    {
      v7 = (v6 + 624);

      std::string::operator=(v7, a3);
    }
  }
}