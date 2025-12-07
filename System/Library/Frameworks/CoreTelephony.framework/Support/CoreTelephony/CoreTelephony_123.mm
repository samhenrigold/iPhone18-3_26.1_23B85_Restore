void sub_10080F3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10080F410(void *a1)
{
  *a1 = &off_101E86610;
  v2 = a1[37];
  if (v2)
  {
    a1[38] = v2;
    operator delete(v2);
  }

  v3 = a1[34];
  if (v3)
  {
    a1[35] = v3;
    operator delete(v3);
  }

  return sub_1007F8954(a1);
}

void sub_10080F480(uint64_t a1)
{
  *a1 = &off_101E86610;
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
    operator delete(v3);
  }

  *a1 = &off_101E2DE48;
  v4 = (a1 + 168);
  sub_1000087B4(&v4);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v4 = (a1 + 88);
  sub_1000087B4(&v4);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = off_101EA6458;
  sub_10018D34C(a1 + 16);
  operator delete();
}

uint64_t *sub_10080F604(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100034CCC(v6, v10);
    }

    sub_1000CE3D4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

const void **sub_10080F7B4@<X0>(uint64_t *__return_ptr a1@<X8>, unint64_t propertyList@<X1>, unint64_t cf@<X2>, const void **result@<X0>)
{
  if (!(propertyList | cf))
  {
    *a1 = 0;
    return result;
  }

  v6 = propertyList;
  if (cf)
  {
    if (propertyList)
    {
      v7 = result;
      v16 = 0;
      *buf = CFPropertyListCreateDeepCopy(0, propertyList, 1uLL);
      sub_10081057C(&v16, buf);
      if (v16)
      {
        if (DataUtils::deepMergeDictionary(v16, cf, v8))
        {
          sub_100010180(a1, &v16);
          return sub_1000296E0(&v16);
        }

        v10 = v7[6];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PersonalityInfo::logPrefix(*v7[10]);
          *buf = 136315394;
          *&buf[4] = v13;
          v18 = 2080;
          v19 = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sdeepMergeDictionary failed to merge", buf, 0x16u);
          v10 = v7[6];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = PersonalityInfo::logPrefix(*v7[10]);
          *buf = 136315650;
          *&buf[4] = v14;
          v18 = 2080;
          v19 = " ";
          v20 = 2112;
          v21 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sorig: %@", buf, 0x20u);
          v10 = v7[6];
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
LABEL_25:
          sub_1000101E4(a1, v6);
          return sub_1000296E0(&v16);
        }
      }

      else
      {
        v10 = v7[6];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(*v7[10]);
          *buf = 136315394;
          *&buf[4] = v11;
          v18 = 2080;
          v19 = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sCFPropertyListCreateDeepCopy failed to copy", buf, 0x16u);
          v10 = v7[6];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = PersonalityInfo::logPrefix(*v7[10]);
          *buf = 136315650;
          *&buf[4] = v12;
          v18 = 2080;
          v19 = " ";
          v20 = 2112;
          v21 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sorig: %@", buf, 0x20u);
          v10 = v7[6];
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }
      }

      v15 = PersonalityInfo::logPrefix(*v7[10]);
      *buf = 136315650;
      *&buf[4] = v15;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = cf;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%soverlay: %@", buf, 0x20u);
      goto LABEL_25;
    }

    v9 = a1;
    propertyList = cf;
  }

  else
  {
    v9 = a1;
  }

  return sub_1000101E4(v9, propertyList);
}

void sub_10080FB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080FBC8(uint64_t a1, void *a2, int a3, NSObject **a4, uint64_t *a5, void *a6, uint64_t a7, char *a8)
{
  *a1 = off_101EC7F48;
  *(a1 + 8) = off_101E43EF0;
  ctu::OsLogContext::OsLogContext(&v20, kCtLoggingSystemName, a8);
  sub_10080FD58((a1 + 16), a4, &v20);
  ctu::OsLogContext::~OsLogContext(&v20);
  *a1 = off_101E866C8;
  *(a1 + 8) = off_101E86798;
  v15 = a2[1];
  *(a1 + 56) = *a2;
  *(a1 + 64) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = a3;
  v16 = a6[1];
  *(a1 + 80) = *a6;
  *(a1 + 88) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *a5;
  v17 = a5[1];
  *(a1 + 96) = a7;
  *(a1 + 104) = v18;
  *(a1 + 112) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_10080FD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_10080FD58(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10080FDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_10080FDE4(void *a1)
{
  v1 = a1[13];
  v2 = a1[10];
  v3 = *v2;
  v4 = *(*v2 + 56);
  sub_100004AA0(&v11, a1 + 2);
  v5 = v12;
  if (v12)
  {
    v6 = v11;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
    v9 = 0;
    v10 = 0;
    v7 = std::__shared_weak_count::lock(v5);
    v8 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = v6;
      v10 = v7;
      std::__shared_weak_count::__release_weak(v5);
      sub_100004A34(v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_1005D1AAC(v1, v4, v3 + 24, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_10080FEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080FEE4(uint64_t a1)
{
  *a1 = off_101E866C8;
  *(a1 + 8) = off_101E86798;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  TMKXPCServer.shutdown()();

  TMKXPCServer.shutdown()();
}

uint64_t sub_10080FFF8(uint64_t a1)
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
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  isWatch = GestaltUtilityInterface::isWatch(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return isWatch;
}

void sub_1008100E0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100810104(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstart processing iCloud data", &v4, 0x16u);
  }

  *(a1 + 168) = 0;
}

uint64_t sub_1008101C4(uint64_t a1)
{
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;
  v3 = *(a1 + 48);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 80));
      v9 = 136315394;
      v10 = v5;
      v11 = 2080;
      v12 = " ";
      v6 = "#I %s%sfinished processing iCloud data - service evaluation required";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x16u);
    }
  }

  else if (v4)
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = 136315394;
    v10 = v7;
    v11 = 2080;
    v12 = " ";
    v6 = "#I %s%sfinished processing iCloud data - no changes detected";
    goto LABEL_6;
  }

  return (*(*(a1 + 8) + 104))(a1 + 8, 0, v2);
}

const void **sub_100810310(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = (*(*a1 + 176))(a1);
    (*(*a1 + 184))(a1, (v10 + 1));
    (*(*a1 + 160))(a1);
  }

  v11 = *(a1 + 104);
  v12 = (*(*a1 + 176))(a1);

  return sub_1005D550C(v11, a2, a3, v12, (a1 + 120), a4, a5);
}

void sub_10081043C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = sub_10034462C(*(a1 + 72));
    v5 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v5 = *v5;
    }

    v6 = (*(*a1 + 176))(a1);
    v7 = 136316162;
    v8 = v3;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v4;
    v13 = 2080;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fDevType: %s, PhoneNumber: %s, fLastICloudVer: %u", &v7, 0x30u);
  }
}

void *sub_10081057C(void *a1, CFTypeRef *a2)
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

void sub_1008105E8(void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  operator new();
}

void sub_1008106D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10081071C(uint64_t a1)
{
  sub_100004AA0(v6, (a1 + 8));
  v2 = v6[0];
  if (*(&v6[0] + 1))
  {
    atomic_fetch_add_explicit((*(&v6[0] + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v2 + 1));
  }

  sub_100004AA0(v4, (a1 + 8));
  v3 = *(a1 + 24);
  v4[2] = v3;
  v4[3] = a1;
  v5 = v2;
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  dispatch_retain(v3);
  memset(v6, 0, 32);
  v7 = v3;
  v8 = a1;
  v9 = v2;
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v10 = v3;
    v11 = a1;
    v12 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v14 = v3;
    v16 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v19 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v22 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  else
  {
    dispatch_retain(v3);
    v10 = v3;
    v11 = a1;
    v12 = v2;
    dispatch_retain(v3);
    v14 = v3;
    v16 = v2;
    dispatch_retain(v3);
    v19 = v2;
    dispatch_retain(v3);
    v22 = v2;
  }

  v15 = a1;
  v13 = 0;
  v17 = v3;
  v18 = a1;
  v20 = v3;
  v21 = a1;
  dispatch_retain(v3);
  v23 = v3;
  v24 = a1;
  v25 = v2;
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v28 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  else
  {
    dispatch_retain(v3);
    v28 = v2;
  }

  v26 = v3;
  v27 = a1;
  dispatch_retain(v3);
  operator new();
}

void sub_100810D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35)
{
  sub_100818048(&a35);
  sub_100222BDC(&a31);
  sub_100222BDC(&a27);
  sub_100818048((v35 + 24));
  a35 = &a19;
  sub_1001018AC(&a35);
  sub_100222BDC(&a15);
  sub_10004F058(a1);
}

void *sub_100810E4C(void *a1, void *a2, void *a3, NSObject **a4, void *a5)
{
  ctu::OsLogContext::OsLogContext(&v14, kCtLoggingSystemName, "ent.psh");
  sub_100810F84(a1 + 1, a4, &v14);
  ctu::OsLogContext::~OsLogContext(&v14);
  *a1 = off_101E86928;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  a1[8] = *a3;
  a1[9] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  a1[10] = *a5;
  a1[11] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  a1[13] = 0;
  a1[12] = a1 + 13;
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  return a1;
}

void sub_100810F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  push::PushMessageListenerInterface::~PushMessageListenerInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_100810F84(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100810FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_100811010(void **a1)
{
  *a1 = off_101E86928;
  v5 = a1 + 15;
  sub_1008141E0(&v5);
  sub_10081502C((a1 + 12), a1[13]);
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
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
  push::PushMessageListenerInterface::~PushMessageListenerInterface(a1);
}

void sub_1008110B0(void **a1)
{
  sub_100811010(a1);

  operator delete();
}

uint64_t sub_1008110E8(uint64_t a1, CFStringRef **a2)
{
  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  memset(v100, 0, sizeof(v100));
  *v98 = 0u;
  sub_10000C320(v98);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v114 = *buf;
      v115 = *&buf[16];
      if ((buf[23] & 0x80u) == 0)
      {
        v6 = &v114;
      }

      else
      {
        v6 = v114;
      }

      if ((buf[23] & 0x80u) == 0)
      {
        v7 = HIBYTE(v115);
      }

      else
      {
        v7 = *(&v114 + 1);
      }

      v8 = sub_10000C030(&v99, v6, v7);
      sub_10000C030(v8, "; ", 2);
      if (SHIBYTE(v115) < 0)
      {
        operator delete(v114);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 64));
    sub_10006EE70(&v99 + 8, &v114);
    v11 = v115 >= 0 ? &v114 : v114;
    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v117 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sRestart Push Listener with: %s", buf, 0x20u);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(v114);
    }
  }

  sub_100004AA0(buf, (a1 + 8));
  v12 = *&buf[8];
  v78 = *buf;
  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  v96 = 0uLL;
  for (i = 0; v13 != v14; v13 += 2)
  {
    v15 = *a2;
    v16 = a2[1];
    while (v15 != v16)
    {
      if (CFStringCompare(*v13, *v15, 0) == kCFCompareEqualTo)
      {
        v22 = *(&v96 + 1);
        if (*(&v96 + 1) >= i)
        {
          v23 = sub_100814290(&v96, v13);
        }

        else
        {
          sub_10005C7A4(*(&v96 + 1), v13);
          sub_10002D728((v22 + 8), v13 + 1);
          v23 = v22 + 16;
        }

        *(&v96 + 1) = v23;
        goto LABEL_38;
      }

      ++v15;
    }

    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(**(a1 + 64));
      v19 = *v13;
      *buf = 136315650;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2114;
      v117 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sgeneral topic: unregistering (%{public}@)", buf, 0x20u);
    }

    pthread_mutex_lock(&stru_101FB18D0);
    v20 = off_101FB1910;
    if (!off_101FB1910)
    {
      sub_100BE5C08(buf);
    }

    v21 = *(&off_101FB1910 + 1);
    if (*(&off_101FB1910 + 1))
    {
      atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_101FB18D0);
    sub_10005C7A4(&v95, v13);
    v93 = v78;
    v94 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100BE6ED8(v20, &v95, &v93);
    if (v94)
    {
      sub_100004A34(v94);
    }

    sub_100005978(&v95);
    if (v21)
    {
      sub_100004A34(v21);
    }

LABEL_38:
    ;
  }

  v24 = *a2;
  v25 = a2[1];
  if (*a2 != v25)
  {
    do
    {
      v26 = *(a1 + 120);
      v27 = *(a1 + 128);
      while (v26 != v27)
      {
        if (CFStringCompare(*v26, *v24, 0) == kCFCompareEqualTo)
        {
          goto LABEL_56;
        }

        v26 += 2;
      }

      sub_10005C7A4(buf, v24);
      *&buf[8] = 0;
      sub_100812048(&v96, buf);
      sub_10002D760(&buf[8]);
      sub_100005978(buf);
      v28 = *(a1 + 40);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = PersonalityInfo::logPrefix(**(a1 + 64));
        v30 = *v24;
        *buf = 136315650;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2114;
        v117 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sgeneral topic: register new (%{public}@)", buf, 0x20u);
      }

      pthread_mutex_lock(&stru_101FB18D0);
      v31 = off_101FB1910;
      if (!off_101FB1910)
      {
        sub_100BE5C08(buf);
      }

      v32 = *(&off_101FB1910 + 1);
      if (*(&off_101FB1910 + 1))
      {
        atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_101FB18D0);
      sub_10005C7A4(&v92, v24);
      v90 = v78;
      v91 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100BE67E0(v31, &v92, &v90);
      if (v91)
      {
        sub_100004A34(v91);
      }

      sub_100005978(&v92);
      if (v32)
      {
        sub_100004A34(v32);
      }

LABEL_56:
      ++v24;
    }

    while (v24 != v25);
  }

  v33 = v96;
  v96 = *(a1 + 120);
  *(a1 + 120) = v33;
  v34 = i;
  i = *(a1 + 136);
  v35 = *(a1 + 96);
  *(a1 + 136) = v34;
  __src = 0;
  v88 = 0;
  v89 = 0;
  v36 = (a1 + 104);
  if (v35 == (a1 + 104))
  {
    goto LABEL_130;
  }

  v77 = 0;
  do
  {
    theString1 = 0;
    sub_1008120A8(a1, *(v35 + 8), &theString1);
    v37 = v35[5];
    v38 = !v37 || !theString1 || CFStringCompare(theString1, v37, 0) != kCFCompareEqualTo;
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = PersonalityInfo::logPrefix(**(a1 + 64));
      v114 = 0uLL;
      v115 = 0;
      ctu::cf::assign();
      *v84 = v114;
      v85 = v115;
      if (v115 >= 0)
      {
        v41 = v84;
      }

      else
      {
        v41 = v84[0];
      }

      v114 = 0uLL;
      v115 = 0;
      ctu::cf::assign();
      v83 = v115;
      *__p = v114;
      v42 = SHIBYTE(v115);
      v43 = v114;
      v44 = asStringBool(v38);
      *buf = 136316162;
      v45 = __p;
      if (v42 < 0)
      {
        v45 = v43;
      }

      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v117 = v41;
      v118 = 2080;
      v119 = v45;
      v120 = 2080;
      v121 = v44;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%stopic: newTopic:'%s' vs old:'%s' -> isTopicDifferent= %s", buf, 0x34u);
      if (SHIBYTE(v83) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v85) < 0)
      {
        operator delete(v84[0]);
      }
    }

    v46 = v35[5];
    if (v38)
    {
      if (!v46)
      {
        goto LABEL_108;
      }

      v47 = *(a1 + 40);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = PersonalityInfo::logPrefix(**(a1 + 64));
        v49 = sub_1013E5CD0(*(v35 + 8));
        v114 = 0uLL;
        v115 = 0;
        ctu::cf::assign();
        *v84 = v114;
        v85 = v115;
        v50 = v114;
        if (v115 >= 0)
        {
          v50 = v84;
        }

        *buf = 136315906;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v117 = v49;
        v118 = 2082;
        v119 = v50;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s%stopic: unsubscribing %s (%{public}s)", buf, 0x2Au);
        if (SHIBYTE(v85) < 0)
        {
          operator delete(v84[0]);
        }
      }

      pthread_mutex_lock(&stru_101FB18D0);
      v51 = off_101FB1910;
      if (!off_101FB1910)
      {
        sub_100BE5C08(buf);
      }

      v52 = *(&off_101FB1910 + 1);
      if (*(&off_101FB1910 + 1))
      {
        atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_101FB18D0);
      sub_10005C7A4(&v81, v35 + 5);
      v79 = v78;
      v80 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100BE6ED8(v51, &v81, &v79);
      if (v80)
      {
        sub_100004A34(v80);
      }

      sub_100005978(&v81);
      if (v52)
      {
        sub_100004A34(v52);
      }

      v53 = v88;
      if (v88 >= v89)
      {
        v55 = __src;
        v56 = v88 - __src;
        v57 = (v88 - __src) >> 2;
        v58 = v57 + 1;
        if ((v57 + 1) >> 62)
        {
          sub_1000CE3D4();
        }

        v59 = v89 - __src;
        if ((v89 - __src) >> 1 > v58)
        {
          v58 = v59 >> 1;
        }

        v60 = v59 >= 0x7FFFFFFFFFFFFFFCLL;
        v61 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v60)
        {
          v61 = v58;
        }

        if (v61)
        {
          sub_100016740(&__src, v61);
        }

        *(4 * v57) = *(v35 + 8);
        v54 = 4 * v57 + 4;
        memcpy(0, v55, v56);
        v62 = __src;
        __src = 0;
        v88 = v54;
        v89 = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *v88 = *(v35 + 8);
        v54 = (v53 + 4);
      }

      v88 = v54;
      v46 = v35[5];
    }

    if (v46 && theString1 && CFStringCompare(theString1, v46, 0) == kCFCompareEqualTo)
    {
      v63 = *(a1 + 40);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315394;
        *&buf[4] = v64;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%stopic: same one - still need re-subscription", buf, 0x16u);
      }

      *(v35 + 32) = 0;
      v77 = 1;
    }

LABEL_108:
    sub_100005978(&theString1);
    v65 = v35[1];
    if (v65)
    {
      do
      {
        v66 = v65;
        v65 = *v65;
      }

      while (v65);
    }

    else
    {
      do
      {
        v66 = v35[2];
        v67 = *v66 == v35;
        v35 = v66;
      }

      while (!v67);
    }

    v35 = v66;
  }

  while (v66 != v36);
  v69 = __src;
  v68 = v88;
  while (v69 != v68)
  {
    v70 = *v36;
    if (*v36)
    {
      v71 = *v69;
      v72 = a1 + 104;
      do
      {
        if (*(v70 + 32) >= v71)
        {
          v72 = v70;
        }

        v70 = *(v70 + 8 * (*(v70 + 32) < v71));
      }

      while (v70);
      if (v72 != v36 && v71 >= *(v72 + 32))
      {
        v73 = *(v72 + 72);
        v74 = *(v72 + 80);
        while (v73 != v74)
        {
          sub_10000FFD0(v73, 0);
          v73 += 32;
        }

        sub_100818098(a1 + 96, v69);
      }
    }

    ++v69;
  }

  if (v77)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }

LABEL_130:
  if (__src)
  {
    v88 = __src;
    operator delete(__src);
  }

  *buf = &v96;
  sub_1008141E0(buf);
  if (v12)
  {
    sub_100004A34(v12);
  }

  *&v99 = v75;
  if (SHIBYTE(v102) < 0)
  {
    operator delete(*(&v101 + 1));
  }

  std::locale::~locale(v100);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100811DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100812048(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1008145CC(a1, a2);
  }

  else
  {
    *v3 = 0;
    *v3 = *a2;
    *a2 = 0;
    v3[1] = 0;
    v3[1] = a2[1];
    a2[1] = 0;
    result = v3 + 2;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1008120A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = *(a1 + 80);
  if (!v9)
  {
    sub_100004A34(v8);
LABEL_8:
    *a3 = 0;
    return;
  }

  (*(*v9 + 328))(v9, a2);

  sub_100004A34(v8);
}

void sub_10081216C(uint64_t a1)
{
  v2 = 0;
  atomic_compare_exchange_strong(byte_101FBAC78, &v2, 1u);
  v3 = v2 == 0;
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315394;
      *&buf[4] = v6;
      v45 = 2080;
      v46 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sshowing reg-loc-update alert", buf, 0x16u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
LABEL_14:
    v43 = 0;
    v18 = kAlertDialogLocalizationTable;
    (*(*v15 + 40))(&v43, v15, kAlertDialogLocalizationTable, @"OK", @"OK");
    value = 0;
    v19 = Registry::getServiceMap(*(a1 + 48));
    v20 = v19;
    if (v21 < 0)
    {
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v21 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(v19);
    *buf = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, buf);
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        v28 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
LABEL_22:
    v29 = (*(*v27 + 72))(v27);
    if ((v28 & 1) == 0)
    {
      sub_100004A34(v26);
    }

    if (v29)
    {
      (*(*v15 + 40))(&v41, v15, v18, @"WLAN_CALLING", @"WLAN Calling");
    }

    else
    {
      (*(*v15 + 40))(&v41, v15, v18, @"WIFI_CALLING", @"Wi-Fi Calling");
    }

    v30 = v41;
    *buf = value;
    v41 = 0;
    value = v30;
    sub_100005978(buf);
    sub_100005978(&v41);
    v41 = 0;
    (*(*v15 + 40))(&v41, v15, v18, @"EMERGENCY_ADDRESS_UPDATED", @"Emergency Address Updated");
    theDict = CFDictionaryCreateMutable(0, 5, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertHeaderKey, value);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertMessageKey, v41);
    CFDictionaryAddValue(theDict, kCFUserNotificationDefaultButtonTitleKey, v43);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    CFDictionaryAddValue(theDict, SBUserNotificationDismissOnLock, kCFBooleanTrue);
    error = 0;
    v31 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, theDict);
    v32 = v31;
    if (error || !v31)
    {
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315394;
        *&buf[4] = v36;
        v45 = 2080;
        v46 = " ";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not create showRegLocUpdatePopup notification (1)", buf, 0x16u);
      }

      if (!v32)
      {
        goto LABEL_38;
      }
    }

    else
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v31, sub_10081283C, 0);
      if (RunLoopSource)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
        CFRelease(RunLoopSource);
        goto LABEL_39;
      }

      v37 = *(a1 + 40);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315394;
        *&buf[4] = v38;
        v45 = 2080;
        v46 = " ";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not create showRegLocUpdatePopup notification (2)", buf, 0x16u);
      }
    }

    CFRelease(v32);
LABEL_38:
    atomic_exchange(byte_101FBAC78, 0);
LABEL_39:
    sub_1000296E0(&theDict);
    sub_100005978(&v41);
    sub_100005978(&value);
    sub_100005978(&v43);
    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    return;
  }

  if (v5)
  {
    v17 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v17;
    v45 = 2080;
    v46 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sduplicated reg-loc-update alert suppressed", buf, 0x16u);
  }
}

void sub_10081279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  sub_1000296E0(va);
  sub_100005978(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081283C(__CFUserNotification *a1)
{
  result = CFUserNotificationCancel(a1);
  atomic_exchange(byte_101FBAC78, 0);
  return result;
}

void sub_100812860(uint64_t a1, const void **a2, const void **a3)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_10005C7A4(&v7, a2);
  sub_100010024(&v7 + 1, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  operator new();
}

void sub_1008129D4(uint64_t a1, const void **a2, const void **a3)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_10002D728(&v7, a2);
  sub_10005C7A4(&v7 + 1, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  operator new();
}

void sub_100812B48(uint64_t a1@<X0>, CFStringRef *a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  if (v4 == v5)
  {
    goto LABEL_7;
  }

  while (CFStringCompare(*v4, *a2, 0))
  {
    v4 += 16;
    if (v4 == v5)
    {
      goto LABEL_7;
    }
  }

  if (!*(v4 + 8))
  {
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    ctu::cf::assign();
    ctu::base64::encode();
  }
}

void sub_100812BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100812C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 88);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && *(a1 + 80))
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315650;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v32 = sub_1013E5CD0(a2);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%ssubscribeForPushNotificationIfNeeded %s", buf, 0x20u);
      }

      v10 = *(a1 + 104);
      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = a1 + 104;
      do
      {
        if (*(v10 + 32) >= a2)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < a2));
      }

      while (v10);
      if (v11 != a1 + 104 && *(v11 + 32) <= a2)
      {
        if (*(v11 + 48))
        {
          if ((*(v11 + 64) & 1) == 0 && (*(v11 + 65) & 1) == 0)
          {
            sub_100813224(a1);
          }

          sub_10000FFD0(a3, 1);
        }

        else
        {
          sub_1008131D0((v11 + 72), a3);
        }
      }

      else
      {
LABEL_13:
        v29 = 0;
        sub_1008120A8(a1, a2, &v29);
        v12 = *(a1 + 40);
        if (v29)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = PersonalityInfo::logPrefix(**(a1 + 64));
            v14 = sub_1013E5CD0(a2);
            *buf = 136315906;
            *&buf[4] = v13;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v32 = v14;
            v33 = 2114;
            v34[0] = v29;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%ssubscribing topic %s (%{public}@)", buf, 0x2Au);
          }

          v28 = 0;
          *v26 = 0u;
          v27 = 0u;
          *cf = 0u;
          sub_100222570(cf, &v29);
          sub_1008131D0(&v27, a3);
          *buf = a2;
          *&buf[8] = cf[0];
          if (cf[0])
          {
            CFRetain(cf[0]);
          }

          *&buf[16] = cf[1];
          if (cf[1])
          {
            CFRetain(cf[1]);
          }

          v32 = v26[0];
          if (v26[0])
          {
            CFRetain(v26[0]);
          }

          v33 = v26[1];
          *(&v34[1] + 6) = 0;
          *(&v34[2] + 6) = 0;
          *(v34 + 6) = 0;
          sub_1008148BC((v34 + 6), v27, *(&v27 + 1), (*(&v27 + 1) - v27) >> 5);
          sub_10081C3AC(a1 + 96, buf, buf);
          v30 = (v34 + 6);
          sub_100814A04(&v30);
          sub_10002D760(&v32);
          sub_10002D760(&buf[16]);
          sub_100005978(&buf[8]);
          sub_100004AA0(buf, (a1 + 8));
          v16 = *buf;
          v15 = *&buf[8];
          pthread_mutex_lock(&stru_101FB18D0);
          v17 = off_101FB1910;
          if (!off_101FB1910)
          {
            sub_100BE5C08(buf);
          }

          v18 = *(&off_101FB1910 + 1);
          if (*(&off_101FB1910 + 1))
          {
            atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&stru_101FB18D0);
          v24 = v29;
          if (v29)
          {
            CFRetain(v29);
          }

          v22 = v16;
          v23 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_100BE67E0(v17, &v24, &v22);
          if (v23)
          {
            sub_100004A34(v23);
          }

          sub_100005978(&v24);
          if (v18)
          {
            sub_100004A34(v18);
          }

          if (v15)
          {
            sub_100004A34(v15);
          }

          *buf = &v27;
          sub_100814A04(buf);
          sub_10002D760(v26);
          sub_10002D760(&cf[1]);
          sub_100005978(cf);
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v20 = PersonalityInfo::logPrefix(**(a1 + 64));
            v21 = sub_1013E5CD0(a2);
            sub_101780BFC(v20, v21, buf, v12);
          }

          sub_10000FFD0(a3, 0);
        }

        sub_100005978(&v29);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v19 = PersonalityInfo::logPrefix(**(a1 + 64));
    sub_101780C64(v19, buf);
  }

  sub_10000FFD0(a3, 0);
LABEL_45:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1008130CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  pthread_mutex_unlock(&stru_101FB18D0);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_100814ADC(va);
  sub_100005978(va1);
  if (v9)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1008131D0(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1008146EC(a1, a2);
  }

  else
  {
    sub_1000224C8(a1[1], a2);
    result = v3 + 32;
    a1[1] = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_100813224(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v2 = *(a1 + 96);
  v3 = (a1 + 104);
  if (v2 == (a1 + 104))
  {
    goto LABEL_42;
  }

  do
  {
    if (v2[6] && (*(v2 + 64) != 1 || v2[7]) && (*(v2 + 65) & 1) == 0)
    {
      v24 = 0;
      memset(buf, 0, sizeof(buf));
      *buf = *(v2 + 8);
      v21 = 0uLL;
      v22 = 0;
      ctu::cf::assign();
      *__p = v21;
      v15 = v22;
      ctu::base64::encode();
      if (v24 == 1)
      {
        if (buf[63] < 0)
        {
          operator delete(*&buf[40]);
        }

        *&buf[40] = v16;
        *&buf[56] = v17;
        HIBYTE(v17) = 0;
        LOBYTE(v16) = 0;
      }

      else
      {
        *&buf[40] = v16;
        *&buf[56] = v17;
        v17 = 0;
        v16 = 0uLL;
        LOBYTE(v24) = 1;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v2[7])
      {
        v21 = 0uLL;
        v22 = 0;
        ctu::cf::assign();
        *__p = v21;
        v15 = v22;
        ctu::base64::encode();
        if (buf[32] == 1)
        {
          if (buf[31] < 0)
          {
            operator delete(*&buf[8]);
          }

          *&buf[8] = v16;
          *&buf[24] = v17;
          HIBYTE(v17) = 0;
          LOBYTE(v16) = 0;
        }

        else
        {
          *&buf[8] = v16;
          *&buf[24] = v17;
          v17 = 0;
          v16 = 0uLL;
          buf[32] = 1;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else if (buf[32] == 1)
      {
        if (buf[31] < 0)
        {
          operator delete(*&buf[8]);
        }

        buf[32] = 0;
      }

      sub_1003FAD5C(&v18, buf);
      *(v2 + 65) = 1;
      if (v24 == 1 && buf[63] < 0)
      {
        operator delete(*&buf[40]);
      }

      if (buf[32] == 1 && buf[31] < 0)
      {
        operator delete(*&buf[8]);
      }
    }

    v4 = v2[1];
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
        v5 = v2[2];
        v6 = *v5 == v2;
        v2 = v5;
      }

      while (!v6);
    }

    v2 = v5;
  }

  while (v5 != v3);
  if (v19 == v18)
  {
LABEL_42:
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315394;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sNo push notifications to ask for", buf, 0x16u);
    }
  }

  else
  {
    v7 = *(a1 + 88);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(a1 + 80);
        if (v9)
        {
          memset(v13, 0, sizeof(v13));
          sub_1003FB24C(v13, v18, v19, 0x8E38E38E38E38E39 * ((v19 - v18) >> 3));
          (*(*v9 + 368))(v9, v13);
          *buf = v13;
          sub_1003EAC3C(buf);
LABEL_48:
          sub_100004A34(v8);
          goto LABEL_49;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v12 = PersonalityInfo::logPrefix(**(a1 + 64));
      sub_101780CB4(v12, buf);
    }

    if (v8)
    {
      goto LABEL_48;
    }
  }

LABEL_49:
  *&v21 = &v18;
  sub_1003EAC3C(&v21);
}

void sub_10081360C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v26 - 128) = v25;
  sub_1003EAC3C((v26 - 128));
  sub_100004A34(v24);
  *(v26 - 128) = &a20;
  sub_1003EAC3C((v26 - 128));
  _Unwind_Resume(a1);
}

void sub_1008136A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 3)
  {
    v4 = *(*a4 + 24);
    if (v4)
    {
      v7 = *v4;
      v6 = v4 + 1;
      v5 = v7;
      if (v7 != v6)
      {
        v9 = (a1 + 104);
        do
        {
          v10 = *v9;
          if (!*v9)
          {
            goto LABEL_29;
          }

          v11 = *(v5 + 7);
          v12 = v9;
          do
          {
            if (*(v10 + 32) >= v11)
            {
              v12 = v10;
            }

            v10 = *(v10 + 8 * (*(v10 + 32) < v11));
          }

          while (v10);
          if (v12 == v9 || v11 < *(v12 + 8))
          {
            goto LABEL_29;
          }

          *(v12 + 65) = 0;
          v13 = *(v5 + 8);
          if (v13 == 1)
          {
            v19 = *(a1 + 40);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = PersonalityInfo::logPrefix(**(a1 + 64));
              v21 = sub_1013E5CD0(*(v12 + 8));
              *buf = 136315650;
              *&buf[4] = v20;
              v34 = 2080;
              v35 = " ";
              v36 = 2080;
              v37 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sPush notification '%s' not allowed", buf, 0x20u);
            }

            v22 = v12[9];
            v23 = v12[10];
            while (v22 != v23)
            {
              sub_10000FFD0(v22, 0);
              v22 += 32;
            }
          }

          else
          {
            if (v13 == 2)
            {
              *(v12 + 64) = 1;
              v32 = 0;
              v14 = v12 + 7;
              if (v12 + 7 != &v32)
              {
                v15 = *v14;
                v32 = 0;
                *buf = v15;
                *v14 = 0;
                sub_10002D760(buf);
              }

              sub_10002D760(&v32);
              v16 = *(a1 + 40);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = PersonalityInfo::logPrefix(**(a1 + 64));
                v18 = sub_1013E5CD0(*(v12 + 8));
                *buf = 136315650;
                *&buf[4] = v17;
                v34 = 2080;
                v35 = " ";
                v36 = 2080;
                v37 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sSubscribed on Push Notification '%s'", buf, 0x20u);
              }

              goto LABEL_29;
            }

            v24 = *(a1 + 40);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = PersonalityInfo::logPrefix(**(a1 + 64));
              v26 = sub_100A38E08(*(v5 + 8));
              *buf = 136315650;
              *&buf[4] = v25;
              v34 = 2080;
              v35 = " ";
              v36 = 2080;
              v37 = v26;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#W %s%sInvalid EnablePushNotification result code: %s", buf, 0x20u);
            }

            v27 = v12[9];
            v28 = v12[10];
            while (v27 != v28)
            {
              sub_10000FFD0(v27, 0);
              v27 += 32;
            }
          }

          sub_100818108((a1 + 96), v12);
LABEL_29:
          v29 = v5[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v5[2];
              v31 = *v30 == v5;
              v5 = v30;
            }

            while (!v31);
          }

          v5 = v30;
        }

        while (v30 != v6);
      }
    }
  }
}

void sub_1008139BC(uint64_t a1, void **a2, double a3)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      if (*(a1 + 80))
      {
        v22 = *(a1 + 80);
        v24 = v7;
        v23 = *a2;
        v33[0] = 0;
        v33[1] = 0;
        v32 = v33;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = [objc_msgSend(v23 objectForKey:{@"entitlement-update", "objectForKey:", @"trigger-actions"}];
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v9)
        {
          v10 = *v29;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v28 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                __dst[0] = 0;
                __dst[1] = 0;
                v27 = 0;
                v13 = [v12 cStringUsingEncoding:4];
                v14 = strlen(v13);
                if (v14 >= 0x7FFFFFFFFFFFFFF8)
                {
                  sub_1000A2378();
                }

                v15 = v14;
                if (v14 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v27) = v14;
                if (v14)
                {
                  memmove(__dst, v13, v14);
                }

                *(__dst + v15) = 0;
                v16 = sub_100A3E2C0(__dst);
                if (v16 == 4)
                {
                  v17 = *(a1 + 40);
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    v18 = PersonalityInfo::logPrefix(**(a1 + 64));
                    v19 = __dst;
                    if (v27 < 0)
                    {
                      v19 = __dst[0];
                    }

                    *buf = 136315650;
                    v35 = v18;
                    v36 = 2080;
                    v37 = " ";
                    v38 = 2082;
                    v39 = v19;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sUnrecognized VVM trigger: %{public}s", buf, 0x20u);
                  }
                }

                else
                {
                  sub_100A3E65C(&v32, v16);
                }

                if (SHIBYTE(v27) < 0)
                {
                  operator delete(__dst[0]);
                }
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v9);
        }

        v20 = [v23 objectForKey:@"requires-entitlements"];
        if (v20)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v20 BOOLValue];
          }

          else
          {
            v20 = 0;
          }
        }

        sub_100814B88(v25, &v32);
        [[NSDate dateWithTimeIntervalSinceReferenceDate:?]];
        (*(*v22 + 504))(v22, v25, v21, v20);
        sub_10006DCAC(v25, v25[1]);
        sub_10006DCAC(&v32, v33[0]);
        v7 = v24;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100813DB8(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 80);
      if (v6)
      {
        sub_10005C7A4(&v9, a2);
        v7 = PersonalityInfo::iccid(**(a1 + 64));
        (*(*v6 + 512))(v6, &v9, v7);
        sub_100005978(&v9);
LABEL_9:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I invalid CarrierEntitlementsController to handle GeofenceDataUpdate push notification", buf, 2u);
  }

  if (v5)
  {
    goto LABEL_9;
  }
}

void sub_100813EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  sub_100004A34(v3);
  _Unwind_Resume(a1);
}

void sub_100813ECC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(v1 + 64));
    *buf = 136315394;
    v26 = v3;
    v27 = 2080;
    v28 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | == CarrierEntitlementsPushListener", buf, 0x16u);
  }

  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(v1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(**(v1 + 64));
        v9 = *v4;
        v10 = "exist";
        if (!v4[1])
        {
          v10 = "none";
        }

        *buf = 136316162;
        v26 = v8;
        v27 = 2080;
        v28 = " ";
        v29 = 2048;
        v30 = v6;
        v31 = 2114;
        v32 = v9;
        v33 = 2080;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s | %zu. general topic: (%{public}@), token:%s", buf, 0x34u);
        ++v6;
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  v11 = *(v1 + 96);
  v12 = (v1 + 104);
  if (v11 != (v1 + 104))
  {
    do
    {
      v13 = *(v1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v24 = PersonalityInfo::logPrefix(**(v1 + 64));
        v14 = sub_1013E5CD0(*(v11 + 8));
        v15 = v11[5];
        if (v11[6])
        {
          v16 = "exist";
        }

        else
        {
          v16 = "none";
        }

        v17 = v1;
        if (v11[7])
        {
          v18 = "exist";
        }

        else
        {
          v18 = "none";
        }

        v19 = asStringBool(*(v11 + 64));
        v20 = asStringBool(*(v11 + 65));
        *buf = 136317186;
        v26 = v24;
        v27 = 2080;
        v28 = " ";
        v29 = 2048;
        v30 = v6;
        v31 = 2080;
        v32 = v14;
        v33 = 2114;
        v34 = v15;
        v35 = 2080;
        v36 = v16;
        v37 = 2080;
        v38 = v18;
        v1 = v17;
        v39 = 2080;
        v40 = v19;
        v41 = 2080;
        v42 = v20;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s | %zu. type:%s topic:%{public}@, token:%s, oldToken:%s, subscribed:%s inEntitlementCall:%s", buf, 0x5Cu);
        ++v6;
      }

      v21 = v11[1];
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
          v22 = v11[2];
          v23 = *v22 == v11;
          v11 = v22;
        }

        while (!v23);
      }

      v11 = v22;
    }

    while (v22 != v12);
  }
}

void sub_1008141E0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100814234(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

const void **sub_100814234(const void **result, const void **a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 2;
      sub_10002D760(v4 - 1);
      result = sub_100005978(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  v3[1] = a2;
  return result;
}

uint64_t sub_100814290(const void ***a1, const void **a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1008143A8(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  sub_10005C7A4((16 * v2), a2);
  sub_10002D728((16 * v2 + 8), a2 + 1);
  v16 = (16 * v2 + 16);
  v8 = a1[1];
  v9 = (16 * v2 + *a1 - v8);
  sub_1008143F0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100814534(&v14);
  return v13;
}

void sub_100814394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100814534(va);
  _Unwind_Resume(a1);
}

void sub_1008143A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1008143F0(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v11 = a4;
  v9 = 0;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *a4 = *v6;
      *v6 = 0;
      a4[1] = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    v11 = a4;
    LOBYTE(v9) = 1;
    while (v5 != a3)
    {
      sub_10002D760(v5 + 1);
      sub_100005978(v5);
      v5 += 2;
    }
  }

  return sub_1008144AC(v8);
}

uint64_t sub_1008144AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1008144E4(a1);
  }

  return a1;
}

const void **sub_1008144E4(const void **result)
{
  v1 = *result[2];
  v2 = *result[1];
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 2;
      sub_10002D760(v1 - 1);
      result = sub_100005978(v3);
      v1 = v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_100814534(uint64_t a1)
{
  sub_10081456C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_10081456C(const void **result, const void **a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = v2 - 2;
      v4[2] = v2 - 2;
      sub_10002D760(v2 - 1);
      result = sub_100005978(v5);
      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1008145CC(uint64_t a1, const void **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000CE3D4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_1008143A8(a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  *v8 = *a2;
  *a2 = 0;
  v8[1] = 0;
  v8[1] = a2[1];
  a2[1] = 0;
  *&v17 = 16 * v2 + 16;
  v9 = *(a1 + 8);
  v10 = (16 * v2 + *a1 - v9);
  sub_1008143F0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100814534(&v15);
  return v14;
}

void sub_1008146D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100814534(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1008146EC(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000DEC00(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_1000224C8(32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  sub_1008147FC(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10081486C(&v14);
  return v13;
}

void sub_1008147E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10081486C(va);
  _Unwind_Resume(a1);
}

void sub_1008147FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_10000FED0(a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_10000FF50(v6);
      v6 += 32;
    }
  }
}

uint64_t sub_10081486C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_10000FF50(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_1008148BC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100814944(result, a4);
  }

  return result;
}

void sub_100814924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_100814A04(&a9);
  _Unwind_Resume(a1);
}

void sub_100814944(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1000DEC00(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_100814980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1000224C8(a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1008149E0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = sub_10000FF50(v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100814A04(void ***a1)
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
        v4 = sub_10000FF50(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100814A88(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_100814A04(&v3);
  sub_10002D760((a1 + 24));
  sub_10002D760((a1 + 16));
  sub_100005978((a1 + 8));
  return a1;
}

const void **sub_100814ADC(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_100814A04(&v3);
  sub_10002D760((a1 + 16));
  sub_10002D760((a1 + 8));
  return sub_100005978(a1);
}

uint64_t sub_100814B2C(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_100814B88(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100814BE0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100814BE0(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100814C68(v5, (v5 + 8), v4 + 25, v4 + 25);
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

uint64_t sub_100814C68(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_100814D04(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_100814D04(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 25) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 25);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_100814F2C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100815000);
  __cxa_rethrow();
}

void sub_100814F6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100814FC0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100815000(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10081502C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10081502C(a1, *a2);
    sub_10081502C(a1, a2[1]);
    sub_100815098(a1, (a2 + 4));

    operator delete(a2);
  }
}

const void **sub_100815098(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 40);
  sub_100814A04(&v4);
  sub_10002D760((a2 + 24));
  sub_10002D760((a2 + 16));
  return sub_100005978((a2 + 8));
}

void sub_1008150E8(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10081522C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_100815288(void **a1)
{
  sub_10081670C(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_1008152C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_1008153C0(a1, v5);
}

void sub_100815390(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008153C0(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_1008154BC(a1, x1_0);
}

void sub_1008154A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100815554(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1004068F0(a1, a2, 1, 2);
}

void sub_100815678(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E86A68;
  operator new();
}

void sub_100815788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_1008157F0(uint64_t a1)
{
  sub_100815B9C(a1);

  operator delete();
}

uint64_t sub_100815828(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_100815C14(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1008158D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100815904(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100815930(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_10081595C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1008159B4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100815A20(&v2, a2);
}

void sub_100815A90(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100815AB8(v1);
  __cxa_rethrow();
}

uint64_t sub_100815AB8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10081670C((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100815B2C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10081670C((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100815B9C(uint64_t a1)
{
  *a1 = off_101E86A68;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_100815C14(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100406B94(result + 4); ; i += 6)
    {
      result = sub_100406B94(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_100815CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_100815D1C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100815D88(&v2, a2);
}

void sub_100815DF8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_100815E3C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void (***sub_100815E84(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100816654(v4, result);
    sub_100816654(v3, a2);
    sub_100816654(a2, v4);
    return sub_10081670C(v4);
  }

  return result;
}

uint64_t sub_100815F00(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN12entitlements31CarrierEntitlementsPushListener9init_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN12entitlements31CarrierEntitlementsPushListener9init_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100815FFC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E86B90;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100816198(v9, v16, __p, v5, v15);
}

void sub_100816150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_10081670C(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100816360(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = *a1[6];
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100406E10(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_10081670C(v7);
    operator delete();
  }

  v8 = a1[5];
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = a1[6];
  if (result)
  {
    operator delete();
  }

  v10 = a1[7];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_10081645C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100816474(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN12entitlements31CarrierEntitlementsPushListener9init_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN12entitlements31CarrierEntitlementsPushListener9init_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100816558(uint64_t *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v9 = *a1;
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      v12 = v10;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1008136A4(v9, v11, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_100816624(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100816654(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1008166E8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_10081670C(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void *sub_10081675C(void *a1)
{
  *a1 = off_101E86BC0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1008167A8(void *a1)
{
  *a1 = off_101E86BC0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_100816814(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_1008168C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100816968(void *a1)
{
  *a1 = off_101E86C10;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1008169B4(void *a1)
{
  *a1 = off_101E86C10;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_100816A8C(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100816BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_100816C2C(void **a1)
{
  sub_100818048(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_100816C6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_100816D64(a1, v5);
}

void sub_100816D34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100816D64(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_100816E60(a1, x1_0);
}

void sub_100816E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100816EF8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1004081DC(a1, a2, 1, 2);
}

void sub_10081701C(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E86C50;
  operator new();
}

void sub_10081712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_100817194(uint64_t a1)
{
  sub_100817540(a1);

  operator delete();
}

uint64_t sub_1008171CC(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1008175B8(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_100817278(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008172A8(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1008172D4(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_100817300@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_100817358(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1008173C4(&v2, a2);
}

void sub_100817434(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10081745C(v1);
  __cxa_rethrow();
}

uint64_t sub_10081745C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100818048((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1008174D0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100818048((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100817540(uint64_t a1)
{
  *a1 = off_101E86C50;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1008175B8(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100408480(result + 4); ; i += 6)
    {
      result = sub_100408480(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1008176A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1008176C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10081772C(&v2, a2);
}

void sub_10081779C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1008177E0(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void (***sub_100817828(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100817F90(v4, result);
    sub_100817F90(v3, a2);
    sub_100817F90(a2, v4);
    return sub_100818048(v4);
  }

  return result;
}

uint64_t sub_1008178A4(uint64_t result, _WORD *a2, int a3)
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
      sub_100222BDC(result);
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
  if (result != ("N3ctu12DispatchSlotIZN12entitlements31CarrierEntitlementsPushListener9init_syncEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN12entitlements31CarrierEntitlementsPushListener9init_syncEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1008179A0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E86D78;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100817B3C(v9, v16, __p, v5, v15);
}

void sub_100817AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100818048(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100817D04(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = *a1[6];
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1004086FC(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_100818048(v7);
    operator delete();
  }

  v8 = a1[5];
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = a1[6];
  if (result)
  {
    operator delete();
  }

  v10 = a1[7];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_100817E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100817E18(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN12entitlements31CarrierEntitlementsPushListener9init_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN12entitlements31CarrierEntitlementsPushListener9init_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100817EFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      if (*(a1 + 8) && v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v5);
      }

      sub_100004A34(v8);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

uint64_t sub_100817F90(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_100818024(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100818048(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100818098(uint64_t a1, int *a2)
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

  sub_100818108(a1, v4);
  return 1;
}

uint64_t *sub_100818108(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_1000194D8(a1, a2);
  sub_100815098(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_100818154(uint64_t **a1)
{
  v4 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(v1 + 64));
    *buf = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sresending Tokens to carrier because of personality activated", buf, 0x16u);
  }

  sub_100813224(v1);
  operator delete();
}

uint64_t *sub_10081826C(uint64_t **a1)
{
  v1 = *a1;
  v95 = a1;
  v96 = v1;
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

      v6 = *(v3 + 88);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 80);
          if (v8)
          {
            v111 = 0;
            ctu::ns::AutoPool::AutoPool(&v111);
            v9 = (v1 + 3);
            if (!v1[3])
            {
LABEL_32:
              v23 = *(v3 + 40);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = PersonalityInfo::logPrefix(**(v3 + 64));
                *buf = 136315394;
                *&buf[4] = v24;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                v25 = "#W %s%sIgnoring push message due to topic mismatch";
LABEL_98:
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
              }

LABEL_99:
              ctu::ns::AutoPool::~AutoPool(&v111);
LABEL_19:
              sub_100004A34(v7);
              goto LABEL_20;
            }

            v10 = *(v3 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = PersonalityInfo::logPrefix(**(v3 + 64));
              v12 = *v9;
              *buf = 136315650;
              *&buf[4] = v11;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v123 = 2114;
              v124 = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sIncoming topic: (%{public}@)", buf, 0x20u);
            }

            v13 = *(v3 + 120);
            v14 = *(v3 + 128);
            while (v13 != v14)
            {
              if (*v13 && CFStringCompare(*v9, *v13, 0) == kCFCompareEqualTo)
              {
                goto LABEL_34;
              }

              v13 += 2;
            }

            v18 = *(v3 + 96);
            if (v18 == (v3 + 104))
            {
              goto LABEL_32;
            }

            while (1)
            {
              v19 = v18[5];
              if (v19)
              {
                if (*(v18 + 64) == 1 && CFStringCompare(*v9, v19, 0) == kCFCompareEqualTo)
                {
                  break;
                }
              }

              v20 = v18[1];
              if (v20)
              {
                do
                {
                  v21 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                do
                {
                  v21 = v18[2];
                  v22 = *v21 == v18;
                  v18 = v21;
                }

                while (!v22);
              }

              v18 = v21;
              if (v21 == (v3 + 104))
              {
                goto LABEL_32;
              }
            }

LABEL_34:
            v28 = v1[4];
            v26 = (v1 + 4);
            v27 = v28;
            v29 = *(v3 + 40);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = PersonalityInfo::logPrefix(**(v3 + 64));
              *buf = 136315394;
              *&buf[4] = v30;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sGot push message", buf, 0x16u);
            }

            if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v31 = [v27 objectForKey:@"entitlement-update"];
              if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v32 = *(v3 + 40);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = PersonalityInfo::logPrefix(**(v3 + 64));
                  *buf = 136315650;
                  *&buf[4] = v33;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  v123 = 2112;
                  v124 = @"entitlement-update";
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%s%@", buf, 0x20u);
                }

                *buf = off_101E86DA8;
                *&buf[8] = v3;
                v124 = buf;
                logger::CFTypeRefLogger();
                sub_100007E44(buf);
                v34 = [v31 objectForKey:@"timestamp"];
                if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (sub_10081992C(v34))
                  {
                    v36 = v35;
                    v37 = [v31 objectForKey:@"trigger-actions"];
                    v109 = 0u;
                    v110 = 0u;
                    v107 = 0u;
                    v108 = 0u;
                    v94 = [v37 countByEnumeratingWithState:&v107 objects:buf count:16];
                    v82 = v36;
                    if (v94)
                    {
                      v90 = 0;
                      obj = v37;
                      v83 = 0;
                      v84 = 0;
                      v85 = 0;
                      v86 = 0;
                      v87 = 0;
                      v88 = 0;
                      v89 = 0;
                      v92 = 0;
                      v93 = *v108;
                      while (2)
                      {
                        for (i = 0; i != v94; i = i + 1)
                        {
                          if (*v108 != v93)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v39 = *(*(&v107 + 1) + 8 * i);
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v48 = *(v3 + 40);
                            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                            {
                              v49 = PersonalityInfo::logPrefix(**(v3 + 64));
                              *__dst = 136315394;
                              *&__dst[4] = v49;
                              *&__dst[12] = 2080;
                              *&__dst[14] = " ";
                              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#W %s%sOne of the update trigger actions has an invalid type", __dst, 0x16u);
                            }

                            goto LABEL_105;
                          }

                          if ([v39 isEqualToString:@"prepaid-data-usage-alert"])
                          {
                            v92 = 1;
                          }

                          else if ([v39 isEqualToString:@"entitlements-changed"])
                          {
                            HIDWORD(v90) = 1;
                          }

                          else if ([v39 isEqualToString:@"reg-loc-update"])
                          {
                            LOBYTE(v90) = 1;
                          }

                          else if ([v39 isEqualToString:@"service-token-invalidated"])
                          {
                            HIDWORD(v89) = 1;
                          }

                          else if ([v39 isEqualToString:@"provisioning-changed"])
                          {
                            LODWORD(v89) = 1;
                          }

                          else if ([v39 isEqualToString:@"multi-sim-signup-changed"])
                          {
                            BYTE4(v88) = 1;
                          }

                          else if ([v39 isEqualToString:@"multi-sim-profile-released"])
                          {
                            LOBYTE(v88) = 1;
                          }

                          else if ([v39 isEqualToString:@"multi-sim-provisioning-failed"])
                          {
                            BYTE4(v87) = 1;
                          }

                          else if ([v39 isEqualToString:@"sa-watch-signup-changed"])
                          {
                            LOBYTE(v87) = 1;
                          }

                          else if ([v39 isEqualToString:@"sa-watch-profile-released"])
                          {
                            BYTE4(v86) = 1;
                          }

                          else if ([v39 isEqualToString:@"sa-watch-provisioning-failed"])
                          {
                            LOBYTE(v86) = 1;
                          }

                          else if ([v39 isEqualToString:@"preferred-networks-updated"])
                          {
                            BYTE4(v85) = 1;
                          }

                          else if ([v39 isEqualToString:@"device-list-updated"])
                          {
                            LOBYTE(v85) = 1;
                          }

                          else if (([v39 isEqualToString:@"esim-profile-released"] & 1) == 0)
                          {
                            if ([v39 isEqualToString:@"authorization-token-updated"])
                            {
                              BYTE4(v84) = 1;
                            }

                            else if ([v39 isEqualToString:@"geofence-data-updated"])
                            {
                              LOBYTE(v84) = 1;
                            }

                            else if ([v39 isEqualToString:@"msisdn-changed"])
                            {
                              v83 = 1;
                            }

                            else
                            {
                              v81 = *(v3 + 40);
                              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                              {
                                v80 = PersonalityInfo::logPrefix(**(v3 + 64));
                                v40 = [v39 UTF8String];
                                *__dst = 136315650;
                                *&__dst[4] = v80;
                                *&__dst[12] = 2080;
                                *&__dst[14] = " ";
                                *&__dst[22] = 2082;
                                v118 = v40;
                                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I %s%sOne of the update trigger actions is not recognized: %{public}s", __dst, 0x20u);
                              }
                            }
                          }
                        }

                        v94 = [obj countByEnumeratingWithState:&v107 objects:buf count:16];
                        if (v94)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    else
                    {
                      v83 = 0;
                      v84 = 0;
                      v85 = 0;
                      v86 = 0;
                      v87 = 0;
                      v88 = 0;
                      v89 = 0;
                      v90 = 0;
                      v92 = 0;
                    }

LABEL_105:
                    v50 = *(v3 + 40);
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      v51 = PersonalityInfo::logPrefix(**(v3 + 64));
                      *__dst = 136315394;
                      *&__dst[4] = v51;
                      *&__dst[12] = 2080;
                      *&__dst[14] = " ";
                      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s%sPush message format is valid", __dst, 0x16u);
                    }

                    (*(*v8 + 384))(v8, 7);
                    if (v84)
                    {
                      sub_10005C7A4(&v106, v9);
                      sub_100010024(&v105, v26);
                      sub_100813DB8(v3, &v106);
                      sub_10001021C(&v105);
                      sub_100005978(&v106);
                    }

                    if ((v84 & 0x100000000) != 0)
                    {
                      __dst[0] = 0;
                      __dst[8] = 0;
                      (*(*v8 + 464))(v8, 1, __dst);
                    }

                    theString2 = 0;
                    sub_1008120A8(v3, 2, &theString2);
                    if (theString2 && *v9 && CFStringCompare(*v9, theString2, 0) == kCFCompareEqualTo)
                    {
                      sub_100010024(&v103, v26);
                      sub_1008139BC(v3, &v103, v82);
                      sub_10001021C(&v103);
                    }

                    v102 = 0;
                    sub_1008120A8(v3, 5, &v102);
                    if (v102 && *v9 && CFStringCompare(*v9, v102, 0) == kCFCompareEqualTo)
                    {
                      *__dst = v31;
                      CFRetain(v31);
                      v52 = **(v3 + 64);
                      if (*(v52 + 47) < 0)
                      {
                        sub_100005F2C(__p, *(v52 + 24), *(v52 + 32));
                      }

                      else
                      {
                        *__p = *(v52 + 24);
                        v101 = *(v52 + 40);
                      }

                      sub_100010024(&v99, __dst);
                      sub_100819A28(event::entitlements::carrier_space_updated, __p, &v99);
                      sub_10001021C(&v99);
                      if (SHIBYTE(v101) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      sub_10001021C(__dst);
                    }

                    if (v92)
                    {
                      *__dst = 0;
                      *&__dst[8] = 0;
                      sub_10006C5D0(__dst);
                      if (*__dst)
                      {
                        (*(**__dst + 96))(*__dst, v82);
                      }

                      if (*&__dst[8])
                      {
                        sub_100004A34(*&__dst[8]);
                      }
                    }

                    if ((HIDWORD(v90) | HIDWORD(v89) | v89))
                    {
                      v53 = *(v3 + 40);
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                      {
                        v54 = PersonalityInfo::logPrefix(**(v3 + 64));
                        *__dst = 136315394;
                        *&__dst[4] = v54;
                        *&__dst[12] = 2080;
                        *&__dst[14] = " ";
                        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s%sTriggering entitlements check", __dst, 0x16u);
                      }

                      __dst[8] = 0;
                      __dst[12] = 0;
                      __dst[16] = 0;
                      LOBYTE(v118) = 0;
                      v119 = 0;
                      v120 = 0;
                      v121 = 0;
                      *__dst = 0;
                      __dst[4] = 0;
                      v97[0] = 0;
                      (*(*v8 + 304))(v8, __dst, v97);
                      sub_100270CFC(__dst);
                      v55 = **(v3 + 64);
                      if (*(v55 + 47) < 0)
                      {
                        sub_100005F2C(__dst, *(v55 + 24), *(v55 + 32));
                      }

                      else
                      {
                        *__dst = *(v55 + 24);
                        *&__dst[16] = *(v55 + 40);
                      }

                      sub_100819B14(&event::entitlements::refreshEntitlementCache, __dst);
                      if ((__dst[23] & 0x80000000) != 0)
                      {
                        operator delete(*__dst);
                      }
                    }

                    if (v90)
                    {
                      sub_10081216C(v3);
                    }

                    else if ((v89 & 1) == 0)
                    {
LABEL_145:
                      if ((v88 & 0x100000000) != 0)
                      {
                        v57 = *(v3 + 40);
                        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                        {
                          v58 = PersonalityInfo::logPrefix(**(v3 + 64));
                          *v116 = 136315394;
                          *&v116[4] = v58;
                          *&v116[12] = 2080;
                          *&v116[14] = " ";
                          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived Multi-SIM signup changed push!!", v116, 0x16u);
                        }

                        *v116 = 0;
                        *&v116[8] = 0;
                        v59 = sub_10006C5D0(v116);
                        if (*v116)
                        {
                          (*(**v116 + 104))(*v116, **(v3 + 64) + 24, 1, v59);
                        }

                        if (*&v116[8])
                        {
                          sub_100004A34(*&v116[8]);
                        }
                      }

                      if (v88)
                      {
                        v60 = *(v3 + 40);
                        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                        {
                          v61 = PersonalityInfo::logPrefix(**(v3 + 64));
                          *v116 = 136315394;
                          *&v116[4] = v61;
                          *&v116[12] = 2080;
                          *&v116[14] = " ";
                          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived Multi-SIM profile released push!!", v116, 0x16u);
                        }

                        *v116 = 0;
                        *&v116[8] = 0;
                        v62 = sub_10006C5D0(v116);
                        if (*v116)
                        {
                          (*(**v116 + 112))(*v116, **(v3 + 64) + 24, 1, v62);
                        }

                        if (*&v116[8])
                        {
                          sub_100004A34(*&v116[8]);
                        }
                      }

                      if ((v87 & 0x100000000) != 0)
                      {
                        v63 = *(v3 + 40);
                        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                        {
                          v64 = PersonalityInfo::logPrefix(**(v3 + 64));
                          *v116 = 136315394;
                          *&v116[4] = v64;
                          *&v116[12] = 2080;
                          *&v116[14] = " ";
                          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived Multi-SIM provisioning failed push!!", v116, 0x16u);
                        }

                        *v116 = 0;
                        *&v116[8] = 0;
                        v65 = sub_10006C5D0(v116);
                        if (*v116)
                        {
                          (*(**v116 + 120))(*v116, **(v3 + 64) + 24, 1, v65);
                        }

                        if (*&v116[8])
                        {
                          sub_100004A34(*&v116[8]);
                        }
                      }

                      if (v87)
                      {
                        v66 = *(v3 + 40);
                        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                        {
                          v67 = PersonalityInfo::logPrefix(**(v3 + 64));
                          *v116 = 136315394;
                          *&v116[4] = v67;
                          *&v116[12] = 2080;
                          *&v116[14] = " ";
                          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived SA-Watch signup changed push!!", v116, 0x16u);
                        }

                        *v116 = 0;
                        *&v116[8] = 0;
                        v68 = sub_10006C5D0(v116);
                        if (*v116)
                        {
                          (*(**v116 + 104))(*v116, **(v3 + 64) + 24, 2, v68);
                        }

                        if (*&v116[8])
                        {
                          sub_100004A34(*&v116[8]);
                        }
                      }

                      if ((v86 & 0x100000000) != 0)
                      {
                        v69 = *(v3 + 40);
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                        {
                          v70 = PersonalityInfo::logPrefix(**(v3 + 64));
                          *v116 = 136315394;
                          *&v116[4] = v70;
                          *&v116[12] = 2080;
                          *&v116[14] = " ";
                          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived SA-Watch profile released push!!", v116, 0x16u);
                        }

                        *v116 = 0;
                        *&v116[8] = 0;
                        v71 = sub_10006C5D0(v116);
                        if (*v116)
                        {
                          (*(**v116 + 112))(*v116, **(v3 + 64) + 24, 2, v71);
                        }

                        if (*&v116[8])
                        {
                          sub_100004A34(*&v116[8]);
                        }
                      }

                      if (v86)
                      {
                        v72 = *(v3 + 40);
                        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                        {
                          v73 = PersonalityInfo::logPrefix(**(v3 + 64));
                          *v116 = 136315394;
                          *&v116[4] = v73;
                          *&v116[12] = 2080;
                          *&v116[14] = " ";
                          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived SA-Watch provisioning failed!!", v116, 0x16u);
                        }

                        *v116 = 0;
                        *&v116[8] = 0;
                        v74 = sub_10006C5D0(v116);
                        if (*v116)
                        {
                          (*(**v116 + 120))(*v116, **(v3 + 64) + 24, 2, v74);
                        }

                        if (*&v116[8])
                        {
                          sub_100004A34(*&v116[8]);
                        }
                      }

                      if ((v85 & 0x100000000) != 0)
                      {
                        v75 = *(v3 + 40);
                        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                        {
                          v76 = PersonalityInfo::logPrefix(**(v3 + 64));
                          *v116 = 136315394;
                          *&v116[4] = v76;
                          *&v116[12] = 2080;
                          *&v116[14] = " ";
                          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived preferred roaming networks updated push!! Triggering retrieval.", v116, 0x16u);
                        }

                        (*(*v8 + 424))(v8);
                      }

                      if (v85)
                      {
                        v77 = **(v3 + 64);
                        if (*(v77 + 47) < 0)
                        {
                          sub_100005F2C(v116, *(v77 + 24), *(v77 + 32));
                        }

                        else
                        {
                          *v116 = *(v77 + 24);
                          *&v116[16] = *(v77 + 40);
                        }

                        sub_100819B14(&event::entitlements::refresh_ps_device_list, v116);
                        if ((v116[23] & 0x80000000) != 0)
                        {
                          operator delete(*v116);
                        }
                      }

                      if (v83)
                      {
                        v78 = *(v3 + 40);
                        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                        {
                          v79 = PersonalityInfo::logPrefix(**(v3 + 64));
                          *v112 = 136315394;
                          v113 = v79;
                          v114 = 2080;
                          v115 = " ";
                          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I %s%sMSISDN reported to be changed", v112, 0x16u);
                        }

                        (*(*v8 + 528))(v8);
                      }

                      sub_100005978(&v102);
                      sub_100005978(&theString2);
                      goto LABEL_99;
                    }

                    v56 = **(v3 + 64);
                    if (*(v56 + 47) < 0)
                    {
                      sub_100005F2C(v97, *(v56 + 24), *(v56 + 32));
                    }

                    else
                    {
                      *v97 = *(v56 + 24);
                      v98 = *(v56 + 40);
                    }

                    sub_100819B14(&event::entitlements::psas_refresh_requested, v97);
                    if (SHIBYTE(v98) < 0)
                    {
                      operator delete(v97[0]);
                    }

                    goto LABEL_145;
                  }

                  v41 = *(v3 + 40);
                  if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_96:
                    v23 = *(v3 + 40);
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      v46 = PersonalityInfo::logPrefix(**(v3 + 64));
                      *buf = 136315394;
                      *&buf[4] = v46;
                      *&buf[12] = 2080;
                      *&buf[14] = " ";
                      v25 = "#I %s%sUnexpected Push Message Format";
                      goto LABEL_98;
                    }

                    goto LABEL_99;
                  }

                  v47 = PersonalityInfo::logPrefix(**(v3 + 64));
                  *buf = 136315394;
                  *&buf[4] = v47;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  v43 = "#W %s%sTimestamp date format is invalid";
                }

                else
                {
                  v41 = *(v3 + 40);
                  if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_96;
                  }

                  v45 = PersonalityInfo::logPrefix(**(v3 + 64));
                  *buf = 136315394;
                  *&buf[4] = v45;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  v43 = "#W %s%sEntitlements update has missing timestamp or invalid type";
                }
              }

              else
              {
                v41 = *(v3 + 40);
                if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_96;
                }

                v44 = PersonalityInfo::logPrefix(**(v3 + 64));
                *buf = 136315394;
                *&buf[4] = v44;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                v43 = "#W %s%spush message has missing entitlements update or invalid type";
              }
            }

            else
            {
              v41 = *(v3 + 40);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_96;
              }

              v42 = PersonalityInfo::logPrefix(**(v3 + 64));
              *buf = 136315394;
              *&buf[4] = v42;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v43 = "#I %s%spush message is not a dictionary";
            }

            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v43, buf, 0x16u);
            goto LABEL_96;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v15 = *(v3 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(v3 + 64));
        *buf = 136315394;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%sCarrier Entitlements controller is missing", buf, 0x16u);
      }

      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

LABEL_21:
  sub_10018A0A4(&v96);
  return sub_1000049E0(&v95);
}

void sub_100819734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  ctu::ns::AutoPool::~AutoPool(&a50);
  if (v51)
  {
    sub_100004A34(v51);
  }

  sub_100004A34(v50);
  sub_10018A0A4(&a28);
  sub_1000049E0(&a27);
  _Unwind_Resume(a1);
}

BOOL sub_10081992C(uint64_t a1)
{
  v7 = 0;
  ctu::ns::AutoPool::AutoPool(&v7);
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setLocale:{objc_msgSend([NSLocale alloc], "initWithLocaleIdentifier:", @"en_US_POSIX"}];
  [v2 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ssz"];
  [v2 setTimeZone:{+[NSTimeZone timeZoneForSecondsFromGMT:](NSTimeZone, "timeZoneForSecondsFromGMT:", 0)}];
  v3 = [v2 dateFromString:a1];
  v5 = 0;
  if (v3)
  {
    [v3 timeIntervalSinceReferenceDate];
    if (v4 != 0.0)
    {
      v5 = 1;
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v7);
  return v5;
}

void sub_100819A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

const void **sub_100819A28(uint64_t a1, uint64_t a2, const void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  sub_100010024(&v8, a3);
  sub_100819D78((a1 + 24), __p, &v8);
  sub_10001021C(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100010024(&v7, a3);
  sub_100819F84(a1, a2, &v7);
  return sub_10001021C(&v7);
}

atomic_uint **sub_100819B14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  sub_10081AFCC((a1 + 24), __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = sub_100350EE0((a1 + 8));
  return sub_10081B1B4(v4, a2);
}

void sub_100819B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100819C20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E86DA8;
  a2[1] = v2;
  return result;
}

void sub_100819C4C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 64));
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

uint64_t sub_100819D2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100819D78(uint64_t *a1, uint64_t a2, void *a3)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  sub_10000D518(&v14);
  v5 = *(a2 + 23);
  v6 = (v5 & 0x80u) != 0;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v6)
  {
    v7 = *a2;
  }

  else
  {
    v7 = a2;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = "<invalid>";
  }

  v9 = strlen(v8);
  v10 = sub_10000C030(&v14, v8, v9);
  sub_10000C030(v10, ", ", 2);
  std::ostream::operator<<();
  sub_10006EE70(&v14 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[1]);
  }

  std::locale::~locale(v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100819F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

const void **sub_100819F84(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = sub_100819FFC((a1 + 8));
  sub_100010024(&v7, a3);
  sub_10081A040(v5, a2, &v7);
  return sub_10001021C(&v7);
}

void sub_100819FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100819FFC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10081A040(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = 0uLL;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v6);
  v7 = a1[1];
  if (v7)
  {
    if (atomic_load_explicit((v7 + 8), memory_order_acquire) == 1)
    {
      sub_10081A2B4(a1, &v29, 0, 1);
    }

    v8 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v8 = *a1;
  }

  v10 = v26;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  v28[0] = v10;
  sub_10004A724(v28 + 1);
  sub_10004A704(*(&v40 + 1));
  sub_10004A6B0(&v29);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v44 = 0;
  v45 = 10;
  v46 = &v29 + 8;
  v47 = 0;
  v48 = a2;
  v49 = a3;
  v50 = 0;
  v51 = 0;
  v11 = sub_1004F4AC4(&v26);
  v25[0] = &v29;
  v25[1] = a1;
  v25[2] = sub_1004F5148(v11);
  v12 = sub_1004F4AC4(&v26);
  v13 = sub_10004AA88((v12 + 16));
  v14 = sub_1004F4AC4(&v26);
  v15 = *(sub_1004F5148(v14) + 8);
  v16 = sub_1004F4AC4(&v26);
  *&v23 = v15;
  *(&v23 + 1) = sub_1004F5148(v16);
  *&v24 = &v29;
  *(&v24 + 1) = *(&v23 + 1);
  sub_10081A7E4(&v23);
  v17 = sub_1004F4AC4(&v26);
  v18 = sub_1004F5148(v17);
  v19 = sub_1004F4AC4(&v26);
  *&v21 = v18;
  *(&v21 + 1) = sub_1004F5148(v19);
  *&v22 = &v29;
  *(&v22 + 1) = *(&v21 + 1);
  sub_10081A7E4(&v21);
  v28[0] = v23;
  v28[1] = v24;
  v27[0] = v21;
  v27[1] = v22;
  sub_10081A558(v13, v28, v27);
  sub_10081ABAC(v25);
  sub_10081AED4(&v29);
  return sub_10004A724(&v26 + 1);
}

void sub_10081A260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_10081A2B4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_1004F4AC4(a1);
  v10 = sub_1004F5148(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1004F4AC4(a1);
    v11 = *(sub_1004F5148(v12) + 8);
  }

  v14 = v11;
  return sub_10081A34C(a1, a2, v6, &v14, v5);
}

uint64_t *sub_10081A34C(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1004F4AC4(a1);
  result = sub_1004F5148(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10081A464(v10 + 2);
        sub_10081A4A8(v15, a2);
        v10 = v22;
      }

      if (*(sub_10081A464(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1004F4AC4(a1);
        v18 = sub_1004F5148(v17);
        v19 = sub_10081A464(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_1004F4AC4(a1);
      result = sub_1004F5148(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_10081A464(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_10081A4A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10081A514(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_10081A514(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_10081A558(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10081A5E0(a2);
    *a2 = *(*a2 + 8);
    sub_10081A7E4(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10081A5E0(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10081A680((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

const void **sub_10081A680(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10081A464(a2);
  v4 = sub_10081A514((v3 + 32));
  return sub_10081A6D0(&v6, (v4 + 24), a1);
}

const void **sub_10081A6D0(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  sub_100010024(&v6, a3[1]);
  sub_10081A730(a2, v4, &v6);
  return sub_10001021C(&v6);
}

void sub_10081A71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **sub_10081A730(void *a1, uint64_t a2, const void **a3)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v3 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a3;
  *a3 = 0;
  v3(a1 + 1, a2, &v5);
  return sub_10001021C(&v5);
}

void sub_10081A7E4(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_10081AA44((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_10081A464((*result + 16));
      sub_10081AA88(v4, &v14, (result[2] + 8));
      v5 = sub_10081A464((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_10081A464((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1002AA390(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_10081AA44((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_10081AA08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081AA44(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10081AA88(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_10081A514(result + 4); ; i += 6)
    {
      result = sub_10081A514(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_10081AB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_10081ABAC(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_10081ABF0(a1[1], a1[2]);
  }

  return a1;
}

void sub_10081ABF0(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1004F4AC4(a1);
  if (sub_1004F5148(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1004F4AC4(a1);
    v8 = *(sub_1004F5148(v7) + 8);
    sub_10081A34C(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_10081AD90(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1004F4FB0(&v2, a2);
}

uint64_t sub_10081ADF0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_10081AED4(uint64_t a1)
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

void sub_10081AFAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081AFCC(uint64_t *a1, uint64_t a2)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  sub_10000D518(&v12);
  v4 = *(a2 + 23);
  v5 = (v4 & 0x80u) != 0;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v5)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = "<invalid>";
  }

  v8 = strlen(v7);
  sub_10000C030(&v12, v7, v8);
  sub_10006EE70(&v12 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10081B19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_10081B1B4(uint64_t *a1, uint64_t a2)
{
  v24 = 0uLL;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v27, v4);
  v5 = a1[1];
  if (v5)
  {
    if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 1)
    {
      sub_1003514D4(a1, &v27, 0, 1);
    }

    v6 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = *a1;
  }

  v8 = v24;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v26[0] = v8;
  sub_10004A724(v26 + 1);
  sub_10004A704(*(&v38 + 1));
  sub_10004A6B0(&v27);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v42 = 0;
  v43 = 10;
  v44 = &v27 + 8;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = a2;
  v9 = sub_1003511B0(&v24);
  v23[0] = &v27;
  v23[1] = a1;
  v23[2] = sub_10022BA14(v9);
  v10 = sub_1003511B0(&v24);
  v11 = sub_10004AA88((v10 + 16));
  v12 = sub_1003511B0(&v24);
  v13 = *(sub_10022BA14(v12) + 8);
  v14 = sub_1003511B0(&v24);
  *&v21 = v13;
  *(&v21 + 1) = sub_10022BA14(v14);
  *&v22 = &v27;
  *(&v22 + 1) = *(&v21 + 1);
  sub_10081B594(&v21);
  v15 = sub_1003511B0(&v24);
  v16 = sub_10022BA14(v15);
  v17 = sub_1003511B0(&v24);
  *&v19 = v16;
  *(&v19 + 1) = sub_10022BA14(v17);
  *&v20 = &v27;
  *(&v20 + 1) = *(&v19 + 1);
  sub_10081B594(&v19);
  v26[0] = v21;
  v26[1] = v22;
  v25[0] = v19;
  v25[1] = v20;
  sub_10081B424(v11, v26, v25);
  sub_10081B95C(v23);
  sub_10081BB40(&v27);
  return sub_10004A724(&v24 + 1);
}

void sub_10081B3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_10081B424(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10081B4AC(a2);
    *a2 = *(*a2 + 8);
    sub_10081B594(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10081B4AC(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10081B54C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_10081B54C(uint64_t a1, uint64_t *a2)
{
  v2 = sub_10022AF48(a2);
  v3 = (sub_1003517A4((v2 + 32)) + 24);

  return sub_100351E6C(v3);
}

void sub_10081B594(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_10081B7F4((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_10022AF48((*result + 16));
      sub_10081B838(v4, &v14, (result[2] + 8));
      v5 = sub_10022AF48((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_10022AF48((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1000821A0(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_10081B7F4((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1000821A0(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_10081B7B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081B7F4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10081B838(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1003517A4(result + 4); ; i += 6)
    {
      result = sub_1003517A4(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_10081B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_10081B95C(void *a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_10081B9A0(a1[1], a1[2]);
  }

  return a1;
}

void sub_10081B9A0(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1003511B0(a1);
  if (sub_10022BA14(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1003511B0(a1);
    v8 = *(sub_10022BA14(v7) + 8);
    sub_1003513BC(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_10081BB40(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 288), v4);
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

void sub_10081BC18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10081BC38(uint64_t **a1)
{
  v1 = *a1;
  v56 = a1;
  v57 = v1;
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
LABEL_69:
        sub_100004A34(v5);
        goto LABEL_70;
      }

      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PersonalityInfo::logPrefix(**(v3 + 64));
        v8 = v1[4];
        *buf = 136315650;
        *&buf[4] = v7;
        v60 = 2080;
        v61 = " ";
        v62 = 2114;
        v63 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived token update for topic: (%{public}@)", buf, 0x20u);
      }

      v9 = (v1 + 4);
      if (!v1[4] || (v10 = (v1 + 3), !v1[3]))
      {
        v17 = *(v3 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = PersonalityInfo::logPrefix(**(v3 + 64));
          v19 = v1[4];
          if (v1[3])
          {
            v20 = "";
          }

          else
          {
            v20 = "not ";
          }

          *buf = 136315906;
          *&buf[4] = v18;
          v60 = 2080;
          v61 = " ";
          v62 = 2114;
          v63 = v19;
          v64 = 2080;
          v65 = v20;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#E %s%shandleTokenUpdate with invalid params: topic:(%{public}@), token %sprovided", buf, 0x2Au);
        }

        goto LABEL_69;
      }

      v11 = *(v3 + 120);
      v12 = *(v3 + 128);
      if (v11 == v12)
      {
LABEL_13:
        v16 = 0;
LABEL_36:
        v33 = *(v3 + 96);
        if (v33 != (v3 + 104))
        {
          v34 = 0;
          do
          {
            if (CFStringCompare(*v9, v33[5], 0) == kCFCompareEqualTo)
            {
              v35 = *(v3 + 40);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = PersonalityInfo::logPrefix(**(v3 + 64));
                v37 = *v9;
                v38 = sub_1013E5CD0(*(v33 + 8));
                *buf = 136315906;
                *&buf[4] = v36;
                v60 = 2080;
                v61 = " ";
                v62 = 2114;
                v63 = v37;
                v64 = 2080;
                v65 = v38;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sFound topic (%{public}@) as %s in the list of 'additionals'", buf, 0x2Au);
              }

              v39 = v33[6];
              if (!v39 || !CFEqual(*v10, v39))
              {
                if (!v33[7])
                {
                  *buf = 0;
                  sub_10002D728(buf, v33 + 6);
                  v40 = v33[7];
                  v33[7] = *buf;
                  *buf = v40;
                  sub_10002D760(buf);
                }

                sub_1005C11CC(v33 + 6, v10);
                v34 = 1;
              }

              v41 = v33[9];
              v42 = v33[10];
              if (v42 != v41)
              {
                do
                {
                  sub_10000FFD0(v41, 1);
                  v41 += 32;
                }

                while (v41 != v42);
                v44 = v33[9];
                  ;
                }

                v33[10] = v44;
              }

              v45 = *(v3 + 40);
              v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
              if (v34)
              {
                if (v46)
                {
                  v47 = PersonalityInfo::logPrefix(**(v3 + 64));
                  v48 = *v9;
                  *buf = 136315650;
                  *&buf[4] = v47;
                  v60 = 2080;
                  v61 = " ";
                  v62 = 2114;
                  v63 = v48;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to update carrier with new token for topic (%{public}@)", buf, 0x20u);
                }

                sub_100813224(v3);
                v34 = 1;
              }

              else
              {
                if (v46)
                {
                  v49 = PersonalityInfo::logPrefix(**(v3 + 64));
                  *buf = 136315394;
                  *&buf[4] = v49;
                  v60 = 2080;
                  v61 = " ";
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%sToken still the same - nothing to do", buf, 0x16u);
                }

                v34 = 0;
              }

              v16 = 1;
            }

            v50 = v33[1];
            if (v50)
            {
              do
              {
                v51 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v51 = v33[2];
                v52 = *v51 == v33;
                v33 = v51;
              }

              while (!v52);
            }

            v33 = v51;
          }

          while (v51 != (v3 + 104));
        }

        if ((v16 & 1) == 0)
        {
          v53 = *(v3 + 40);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = PersonalityInfo::logPrefix(**(v3 + 64));
            sub_101780D04(v54, v9, buf, v53);
          }
        }

        goto LABEL_69;
      }

      v13 = v11 + 1;
      while (1)
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (CFStringCompare(*v9, v14, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }

        v15 = v13 + 1;
        v13 += 2;
        if (v15 == v12)
        {
          goto LABEL_13;
        }
      }

      v21 = *(v3 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = PersonalityInfo::logPrefix(**(v3 + 64));
        v23 = *v9;
        *buf = 136315650;
        *&buf[4] = v22;
        v60 = 2080;
        v61 = " ";
        v62 = 2114;
        v63 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sFound general topic (%{public}@)", buf, 0x20u);
      }

      if (*v13)
      {
        v24 = CFEqual(*v13, *v10);
        v25 = *(v3 + 40);
        if (v24)
        {
          if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_DEFAULT))
          {
            v26 = PersonalityInfo::logPrefix(**(v3 + 64));
            *buf = 136315394;
            *&buf[4] = v26;
            v60 = 2080;
            v61 = " ";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sToken still the same - nothing to do", buf, 0x16u);
          }

LABEL_35:
          v16 = 1;
          goto LABEL_36;
        }
      }

      else
      {
        v25 = *(v3 + 40);
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = PersonalityInfo::logPrefix(**(v3 + 64));
        v28 = *v9;
        *buf = 136315650;
        *&buf[4] = v27;
        v60 = 2080;
        v61 = " ";
        v62 = 2114;
        v63 = v28;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to update carrier with new token for topic (%{public}@)", buf, 0x20u);
      }

      sub_1005C11CC(v13, v10);
      v29 = *(v3 + 88);
      if (v29)
      {
        v30 = std::__shared_weak_count::lock(v29);
        if (v30)
        {
          v31 = v30;
          v32 = *(v3 + 80);
          if (v32)
          {
            sub_10005C7A4(&v58, v9);
            sub_100812B48(v3, &v58, buf);
            (*(*v32 + 344))(v32, buf, v9);
            if (SHIBYTE(v62) < 0)
            {
              operator delete(*buf);
            }

            sub_100005978(&v58);
          }

          sub_100004A34(v31);
        }
      }

      goto LABEL_35;
    }
  }

LABEL_70:
  sub_10018A4C8(&v57);
  return sub_1000049E0(&v56);
}

void sub_10081C320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a18);
  sub_100004A34(v25);
  sub_100004A34(v24);
  sub_10018A4C8(&a17);
  sub_1000049E0(&a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_10081C3AC(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_10081C468();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_10081C4E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10081C564(v3, v2);
  _Unwind_Resume(a1);
}

__n128 sub_10081C500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = 0;
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = 0;
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  result = *(a3 + 40);
  *(a2 + 40) = result;
  *(a2 + 56) = *(a3 + 56);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

void sub_10081C564(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100815098(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_10081C5C4()
{
  if ((byte_101FB1920 & 1) == 0)
  {
    byte_101FB1920 = 1;
    return __cxa_atexit(sub_1001897A0, &stru_101FB18D0, &_mh_execute_header);
  }

  return result;
}

const void **asString@<X0>(const __CFURL *a1@<X0>, void *a2@<X8>)
{
  v4 = 0;
  copyURLAsString(a1);
  sub_10082F9B4(a2);
  return sub_100005978(&v4);
}

void sub_10081C648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void copyDirectoryContentsInString(os_log_t *a1@<X0>, Registry **a2@<X1>, int a4@<W3>, void *a5@<X8>)
{
  v38 = 0;
  v39 = 0;
  Registry::getFileSystemInterface(&v38, *a2);
  memset(buf, 0, sizeof(buf));
  *&v43 = 0;
  ctu::cf::assign();
  *v36 = *buf;
  v37 = v43;
  v33 = &v33;
  v34 = &v33;
  capacity = 0;
  if ((*(*v38 + 96))(v38, v36, &v33, 1))
  {
    v9 = *a1;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      *a5 = 0;
      goto LABEL_69;
    }

    v10 = v36;
    if (v37 < 0)
    {
      v10 = v36[0];
    }

    *buf = 136446210;
    *&buf[4] = v10;
    v11 = "#N Failed to get contents of directory at path: %{public}s";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
    goto LABEL_7;
  }

  if (!capacity)
  {
    v9 = *a1;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v27 = v36;
    if (v37 < 0)
    {
      v27 = v36[0];
    }

    *buf = 136446210;
    *&buf[4] = v27;
    v11 = "#N Directory at path: %{public}s is empty";
    goto LABEL_6;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, capacity, &kCFTypeArrayCallBacks);
  theArray = Mutable;
  v13 = v34;
  if (v34 != &v33)
  {
    while (1)
    {
      v14 = v13 + 2;
      if (*(v13 + 39) < 0)
      {
        sub_100005F2C(__p, v13[2], v13[3]);
      }

      else
      {
        *__p = *v14;
        v31 = v13[4];
      }

      *buf = 0;
      if (ctu::cf::convert_copy())
      {
        v15 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, *buf, kCFURLPOSIXPathStyle, 0);
        CFRelease(*buf);
      }

      else
      {
        if (*buf)
        {
          CFRelease(*buf);
        }

        v15 = 0;
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      v29 = v15;
      if (!v15)
      {
        v16 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v13 + 39) < 0)
          {
            v14 = *v14;
          }

          *buf = 136446210;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N Failed to get the url from string %{public}s", buf, 0xCu);
        }

        goto LABEL_37;
      }

      v28 = 0;
      v28 = CFCopyDescription(v15);
      if (sub_100AB10BC(a2, v29))
      {
        if (!a4 || sub_100322918())
        {
          goto LABEL_24;
        }

        if ((*(*v38 + 88))(v38, v13 + 2))
        {
          v53 = 0;
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
          *buf = 0u;
          sub_100BE9B38(buf, a2);
          sub_100BEA064(buf, (v13 + 2));
          if ((sub_100BB0D70((v13 + 2), 0, 0) & 1) == 0)
          {
            v24 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v13 + 39) < 0)
              {
                v14 = *v14;
              }

              *v40 = 136446210;
              v41 = v14;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#N Verification is failing for the bundle: %{public}s", v40, 0xCu);
            }

            sub_100BED01C(buf);
            sub_100BE9E54(buf);
            goto LABEL_36;
          }

          if (sub_100BEB3DC(buf) && (sub_100BEB64C(buf) & 1) == 0)
          {
            v25 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v13 + 39) < 0)
              {
                v14 = *v14;
              }

              *v40 = 136446210;
              v41 = v14;
              v21 = v25;
              v22 = "#N Not a valid Unknown bundle: %{public}s. Removing it.";
LABEL_62:
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, v40, 0xCu);
            }

LABEL_63:
            sub_100BED01C(buf);
          }

          else if (sub_100BEB6E8(buf) && (sub_100BEB820(buf) & 1) == 0)
          {
            v20 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v13 + 39) < 0)
              {
                v14 = *v14;
              }

              *v40 = 136446210;
              v41 = v14;
              v21 = v20;
              v22 = "#N Not a valid Default bundle: %{public}s. Removing it.";
              goto LABEL_62;
            }

            goto LABEL_63;
          }

          sub_100BE9E54(buf);
LABEL_24:
          *buf = 0;
          copyFileName(buf, v29);
          if (*buf)
          {
            CFArrayAppendValue(theArray, *buf);
          }

          sub_100005978(buf);
          goto LABEL_36;
        }

        v23 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v13 + 39) < 0)
          {
            v14 = *v14;
          }

          *buf = 136446210;
          *&buf[4] = v14;
          v18 = v23;
          v19 = "#N Scanning for directory contents, bundle %{public}s is not present";
LABEL_35:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
        }
      }

      else
      {
        v17 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v13 + 39) < 0)
          {
            v14 = *v14;
          }

          *buf = 136446210;
          *&buf[4] = v14;
          v18 = v17;
          v19 = "#N Not a valid bundle %{public}s";
          goto LABEL_35;
        }
      }

LABEL_36:
      sub_100005978(&v28);
LABEL_37:
      sub_1002030AC(&v29);
      v13 = v13[1];
      if (v13 == &v33)
      {
        Mutable = theArray;
        break;
      }
    }
  }

  if (!CFArrayGetCount(Mutable))
  {
    v26 = *a1;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#N Failed to create the directory contents in string format", buf, 2u);
    }
  }

  sub_10002A7D8(a5, &theArray);
  sub_1000279DC(&theArray);
LABEL_69:
  sub_10042E114(&v33);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (v39)
  {
    sub_100004A34(v39);
  }
}

void sub_10081CCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_100005978(&a11);
  sub_1002030AC(&a12);
  sub_1000279DC(&a20);
  sub_10042E114(&a21);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a32)
  {
    sub_100004A34(a32);
  }

  _Unwind_Resume(a1);
}

const void **copyFileName@<X0>(CFStringRef *__return_ptr a1@<X8>, const void **result@<X0>)
{
  *a1 = 0;
  if (result)
  {
    *a1 = CFURLCopyLastPathComponent(result);
    v2 = 0;
    return sub_100005978(&v2);
  }

  return result;
}

void *copyFileName@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = 0;
  return sub_100060E4C(a2, v2);
}

uint64_t getCarrierBundleIDForSimSlot(int a1)
{
  v1 = &kCarrier2BundleId;
  if (a1 != 2)
  {
    v1 = &kCarrier1BundleId;
  }

  return *v1;
}

uint64_t getOperatorBundleIDForSimSlot(int a1)
{
  v1 = &kOperator2BundleId;
  if (a1 != 2)
  {
    v1 = &kOperator1BundleId;
  }

  return *v1;
}

uint64_t getCarrierCountryBundleIDForSimSlot(int a1)
{
  v1 = &kCarrier2CountryBundleId;
  if (a1 != 2)
  {
    v1 = &kCarrier1CountryBundleId;
  }

  return *v1;
}

uint64_t getOperatorCountryBundleIDForSimSlot(int a1)
{
  v1 = &kOperator2CountryBundleId;
  if (a1 != 2)
  {
    v1 = &kOperator1CountryBundleId;
  }

  return *v1;
}

void getCarrierBundleLegacyLocation(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  if (a1 > 2)
  {
    if ((a1 - 5) >= 2)
    {
      if (a1 == 3)
      {
        sub_1000167D4(&__dst, "CarrierBootstrap.bundle", 0x17uLL);
      }

      else if (a1 == 4)
      {
        *(&__dst.__r_.__value_.__s + 23) = 21;
        strcpy(&__dst, "CarrierDefault.bundle");
      }

      goto LABEL_15;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  switch(a1)
  {
    case 0:
      goto LABEL_11;
    case 1:
      *(&__dst.__r_.__value_.__s + 23) = 21;
      strcpy(&__dst, "Carrier1Bundle.bundle");
      if (a2 == 2)
      {
        qmemcpy(&__dst, "Carrier2Bundle.bundle", 21);
      }

      break;
    case 2:
      strcpy(&__dst, "Operator1Bundle.bundle");
      *(&__dst.__r_.__value_.__s + 23) = 22;
      if (a2 == 2)
      {
        qmemcpy(&__dst, "Operator2Bundle.bundle", 22);
      }

      break;
  }

LABEL_15:
  v4 = sub_100357A48();
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_10000501C(__p, v4);
  ctu::path_join_impl();
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (SHIBYTE(v6) < 0)
  {
    sub_100005F2C(a3, __p[0], __p[1]);
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v6;
  }

  ctu::path_join_impl();
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_10081D034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getCountryBundleLinksDir(void *a1@<X8>)
{
  getCountryBundleDir(__p);
  if (v4 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_10000501C(a1, v2);
  ctu::path_join_impl();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10081D0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getBundlePrefsFilePath(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  getSimSlotBundlePrefsDomain(a2, a1, __p);
  if (v13 >= 0)
  {
    v5 = HIBYTE(v13);
  }

  else
  {
    v5 = __p[1];
  }

  if (!v5)
  {
    *a3 = *__p;
    *(a3 + 16) = v13;
    return;
  }

  if ((v3 - 5) > 1u)
  {
    getCarrierBundlePreferencesDir(&__dst);
  }

  else
  {
    getCountryBundlePreferencesDir(&__dst);
  }

  v6 = *&__dst.__r_.__value_.__l.__data_;
  v11[0] = __dst.__r_.__value_.__r.__words[2];
  *(v11 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
  v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  memset(&__dst, 0, sizeof(__dst));
  if (v7 < 0)
  {
    sub_100005F2C(&__dst, v6, *(&v6 + 1));
  }

  else
  {
    *&__dst.__r_.__value_.__l.__data_ = v6;
    LODWORD(__dst.__r_.__value_.__r.__words[2]) = v11[0];
    *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v11 + 3);
    *(&__dst.__r_.__value_.__s + 23) = v7;
  }

  ctu::path_join_impl();
  v8 = strlen(kPlistExtension);
  v9 = std::string::append(&__dst, kPlistExtension, v8);
  *a3 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v6);
LABEL_14:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10081D2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v22);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void getSimSlotBundlePrefsDomain(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
LABEL_15:
        sub_1000481D4(v7);
        *a3 = *v7;
        *(a3 + 16) = *&v7[16];
        return;
      case 5:
        memset(v8, 0, 15);
        if (a1 != 2 && a1 != 1)
        {
          goto LABEL_21;
        }

        break;
      case 6:
        memset(v8, 0, 15);
        if (a1 != 2 && a1 != 1)
        {
          goto LABEL_21;
        }

        break;
      default:
        return;
    }

    goto LABEL_22;
  }

  if (a2 == 1)
  {
    memset(v8, 0, 15);
    if (a1 != 2 && a1 != 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    sub_1000481D4(v7);
    v8[0] = *&v7[8];
    v4 = *v7;
    *(v8 + 7) = *&v7[15];
    v5 = v7[23];
    goto LABEL_23;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return;
    }

    goto LABEL_15;
  }

  memset(v8, 0, 15);
  if (a1 == 2 || a1 == 1)
  {
    goto LABEL_22;
  }

LABEL_21:
  v4 = 0;
  v5 = 0;
LABEL_23:
  v6 = v8[0];
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 15) = *(v8 + 7);
  *(a3 + 23) = v5;
}

void getCountryBundlePreferencesDir(void *a1@<X8>)
{
  getCountryBundleDir(__p);
  if (v4 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_10000501C(a1, v2);
  ctu::path_join_impl();
  ctu::path_join_impl();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10081D588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getCarrierBundlePreferencesDir(void *a1@<X8>)
{
  getCarrierBundleDir(__p);
  if (v4 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_10000501C(a1, v2);
  ctu::path_join_impl();
  ctu::path_join_impl();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10081D640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getCarrierBundlePrefsLegacyFilePath(char a1@<W0>, int a2@<W1>, std::string *a3@<X8>)
{
  if ((a1 - 5) > 1u)
  {
    getSimSlotBundlePrefsDomain(a2, a1, &v9);
    v10 = v9;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v5 = sub_100357A48();
      memset(&v9, 0, sizeof(v9));
      sub_10000501C(&v9, v5);
      ctu::path_join_impl();
      ctu::path_join_impl();
      a3->__r_.__value_.__r.__words[0] = 0;
      a3->__r_.__value_.__l.__size_ = 0;
      a3->__r_.__value_.__r.__words[2] = 0;
      memset(&__p, 0, sizeof(__p));
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v9;
      }

      ctu::path_join_impl();
      v6 = strlen(kPlistExtension);
      v7 = std::string::append(&__p, kPlistExtension, v6);
      *a3 = *v7;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a3 = v10;
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = 0uLL;
    a3->__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_10081D808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void getCarrierNameForSimSlot(Registry **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v17 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v17);
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
        goto LABEL_7;
      }

LABEL_11:
      (*(*v15 + 80))(&v17, v15, a2, 1, @"CarrierName", *a3, 0);
      sub_100060DE8(a4, &v17);
      sub_10000A1EC(&v17);
      if (v16)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (v15)
  {
    goto LABEL_11;
  }

LABEL_7:
  *a4 = *a3;
  *a3 = 0;
  if ((v16 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v14);
  }
}

void sub_10081D9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

double getUserBundlePrefsDomain@<D0>(int a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1 == 2 || a1 == 1)
  {
    sub_1000481D4(&v4);
    result = *&v4;
    *a2 = v4;
    a2[2] = v5;
  }

  return result;
}

double getUserBundlePrefsFilePath@<D0>(int a1@<W0>, std::string *a2@<X8>)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  getUserBundlePrefsDomain(a1, v10);
  if (v11 >= 0)
  {
    v3 = HIBYTE(v11);
  }

  else
  {
    v3 = v10[1];
  }

  if (v3)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    getCarrierBundlePreferencesDir(&__p);
    v9 = __p;
    memset(&__p, 0, sizeof(__p));
    ctu::path_join_impl();
    v4 = strlen(kPlistExtension);
    v5 = std::string::append(&v9, kPlistExtension, v4);
    v6 = *&v5->__r_.__value_.__l.__data_;
    *a2 = *v5;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    *&v6 = v10[0];
    *&a2->__r_.__value_.__l.__data_ = *v10;
    a2->__r_.__value_.__r.__words[2] = v11;
  }

  return *&v6;
}

void sub_10081DB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void getUserBundlePrefsLegacyFilePath(int a1@<W0>, std::string *a2@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  getUserBundlePrefsDomain(a1, v9);
  if (v10 >= 0)
  {
    v3 = HIBYTE(v10);
  }

  else
  {
    v3 = v9[1];
  }

  if (v3)
  {
    v4 = sub_100357A48();
    memset(&v8, 0, sizeof(v8));
    sub_10000501C(&v8, v4);
    ctu::path_join_impl();
    ctu::path_join_impl();
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    memset(&__p, 0, sizeof(__p));
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v8;
    }

    ctu::path_join_impl();
    v5 = strlen(kPlistExtension);
    v6 = std::string::append(&__p, kPlistExtension, v5);
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

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v9;
    a2->__r_.__value_.__r.__words[2] = v10;
  }
}

void sub_10081DD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void getUserBundleLocation(int a1@<W0>, void *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        goto LABEL_3;
      case 1:
        HIBYTE(v5[2]) = 21;
        qmemcpy(v5, "Carrier Bundle.bundle", 21);
        break;
      case 2:
        HIBYTE(v5[2]) = 22;
        qmemcpy(v5, "Operator Bundle.bundle", 22);
        break;
    }
  }

  else if ((a1 - 3) < 4)
  {
LABEL_3:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  getCarrierBundleLinksDir(__p);
  *a2 = *__p;
  a2[2] = v4;
  __p[1] = 0;
  v4 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5[2]) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10081DE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void getUserBundleLegacyLocation(int a1@<W0>, void *a2@<X8>)
{
  memset(__p, 0, sizeof(__p));
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        goto LABEL_3;
      case 1:
        HIBYTE(__p[2]) = 21;
        qmemcpy(__p, "Carrier Bundle.bundle", 21);
        break;
      case 2:
        HIBYTE(__p[2]) = 22;
        qmemcpy(__p, "Operator Bundle.bundle", 22);
        break;
    }
  }

  else if ((a1 - 3) < 4)
  {
LABEL_3:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = sub_100357A48();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_10000501C(a2, v3);
  ctu::path_join_impl();
  ctu::path_join_impl();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10081DFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **generateUUIDForIPCC@<X0>(void *a1@<X8>)
{
  v4 = CFUUIDCreate(kCFAllocatorDefault);
  v3 = CFUUIDCreateString(kCFAllocatorDefault, v4);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = 0uLL;
  v6 = 0;
  ctu::cf::assign();
  *a1 = 0uLL;
  a1[2] = v6;
  sub_100005978(&v3);
  return sub_1000475BC(&v4);
}

void sub_10081E070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  sub_1000475BC(&a11);
  _Unwind_Resume(a1);
}

uint64_t getCountryBundleDir@<X0>(void *a1@<X8>)
{
  v2 = sub_100357A48();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_10000501C(a1, v2);
  ctu::path_join_impl();
  return ctu::path_join_impl();
}

void sub_10081E0F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void getGSMAOverlayKey(std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(v2, 0, sizeof(v2));
  ctu::tokenize();
  v3 = v2;
  sub_1000087B4(&v3);
}

void sub_10081E258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000087B4(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void getCarrierIdentifier(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v22 = 0uLL;
  v23 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  sub_10081E64C(v9, a1, 8);
  while (1)
  {
    v3 = sub_10081E7D0(v9, &v22, 0x2Du);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_100005308(&v24, &v22);
  }

  v4 = v24;
  if ((-1431655765 * ((v25 - v24) >> 3)) >= 1)
  {
    v5 = 0;
    while (v5 != 2)
    {
      if (v5 == 1)
      {
        sub_10000501C(__p, "_");
        sub_10081E9C8(&v8, &v4[1], __p);
        if (*(a2 + 95) < 0)
        {
          operator delete(*(a2 + 72));
        }

        *(a2 + 72) = v8;
LABEL_20:
        *(&v8.__r_.__value_.__s + 23) = 0;
        v8.__r_.__value_.__s.__data_[0] = 0;
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_22;
      }

      if (!v5)
      {
        std::string::basic_string(&v8, v4, 0, 3uLL, __p);
        if (*(a2 + 47) < 0)
        {
          operator delete(*(a2 + 24));
        }

        *(a2 + 24) = v8;
        std::string::basic_string(&v8, v24, 3uLL, 0xFFFFFFFFFFFFFFFFLL, __p);
        if (*(a2 + 71) < 0)
        {
          operator delete(*(a2 + 48));
        }

        *(a2 + 48) = v8;
      }

LABEL_22:
      ++v5;
      v4 = v24;
      if (v5 >= (-1431655765 * ((v25 - v24) >> 3)))
      {
        goto LABEL_23;
      }
    }

    sub_10000501C(__p, "_");
    sub_10081E9C8(&v8, &v4[2], __p);
    if (*(a2 + 119) < 0)
    {
      operator delete(*(a2 + 96));
    }

    *(a2 + 96) = v8;
    goto LABEL_20;
  }

LABEL_23:
  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  std::locale::~locale(&v9[1] + 1);
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  *&v9[0] = &v24;
  sub_1000087B4(v9);
}

void sub_10081E5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a18 = v19 - 72;
  sub_1000087B4(&a18);
  sub_10016C520(v18);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_10081E64C(void (__cdecl ***a1)(std::istringstream *__hidden this), const std::string *a2, int a3))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v7;
  *(*(v7 - 3) + a1) = v6;
  a1[1] = 0;
  v8 = (*(*a1 - 3) + a1);
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  sub_10081F130((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_10081E7A8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10081E938(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x10081E8F8);
  }

  __cxa_rethrow();
}

std::string *sub_10081E9C8@<X0>(std::string *__return_ptr a1@<X8>, std::string *__str@<X0>, char *a3@<X1>)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v7 = a3[23];
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = a3[23];
  }

  else
  {
    v9 = *(a3 + 1);
  }

  if (v9)
  {
    if (size >= v9)
    {
      v12 = v6 + size;
      v13 = *v8;
      v14 = v6;
      do
      {
        v15 = size - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v14, v13, v15 + 1);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        if (!memcmp(v16, v8, v9))
        {
          if (v17 != v12)
          {
            v11 = v17 - v6;
            if (v17 - v6 != -1)
            {
              return std::string::basic_string(a1, __str, v11 + 1, 0xFFFFFFFFFFFFFFFFLL, &v18);
            }
          }

          break;
        }

        v14 = (v17 + 1);
        size = v12 - (v17 + 1);
      }

      while (size >= v9);
    }

    return sub_10000501C(a1, "");
  }

  else
  {
    v11 = 0;
    return std::string::basic_string(a1, __str, v11 + 1, 0xFFFFFFFFFFFFFFFFLL, &v18);
  }
}

void getCarrierInformation(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v34 = 0uLL;
  v35 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_10081E64C(v21, a1, 8);
  while (1)
  {
    v3 = sub_10081E7D0(v21, &v34, 0x5Fu);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_100005308(&v36, &v34);
  }

  v4 = v36;
  if ((-1431655765 * ((v37 - v36) >> 3)) >= 1)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        v6 = &v4[v5];
        v7 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
        v8 = v6;
        size = v7;
        if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
        {
          v8 = v6->__r_.__value_.__r.__words[0];
          size = v6->__r_.__value_.__l.__size_;
        }

        if (size >= 4)
        {
          v10 = v8 + size;
          v11 = v8;
          do
          {
            v12 = memchr(v11, 71, size - 3);
            if (!v12)
            {
              break;
            }

            if (*v12 == 826558791)
            {
              if (v12 != v10 && v12 - v8 != -1)
              {
                sub_10000501C(__p, "-");
                sub_10081E9C8(&v20, &v4[v5], __p);
                if (*(a2 + 95) < 0)
                {
                  operator delete(*(a2 + 72));
                }

                *(a2 + 72) = v20;
                *(&v20.__r_.__value_.__s + 23) = 0;
                v20.__r_.__value_.__s.__data_[0] = 0;
                if (v19 < 0)
                {
                  operator delete(__p[0]);
                }

                v4 = v36;
                v7 = HIBYTE(v36[v5].__r_.__value_.__r.__words[2]);
              }

              break;
            }

            v11 = (v12 + 1);
            size = v10 - v11;
          }

          while (v10 - v11 >= 4);
        }

        v13 = &v4[v5];
        v14 = v13;
        if ((v7 & 0x80) != 0)
        {
          v14 = v13->__r_.__value_.__r.__words[0];
          v7 = v13->__r_.__value_.__l.__size_;
        }

        if (v7 >= 4)
        {
          v15 = v14 + v7;
          v16 = v14;
          do
          {
            v17 = memchr(v16, 71, v7 - 3);
            if (!v17)
            {
              break;
            }

            if (*v17 == 843336007)
            {
              if (v17 != v15 && v17 - v14 != -1)
              {
                sub_10000501C(__p, "-");
                sub_10081E9C8(&v20, v13, __p);
                if (*(a2 + 119) < 0)
                {
                  operator delete(*(a2 + 96));
                }

                *(a2 + 96) = v20;
                *(&v20.__r_.__value_.__s + 23) = 0;
                v20.__r_.__value_.__s.__data_[0] = 0;
                if (v19 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              break;
            }

            v16 = (v17 + 1);
            v7 = v15 - v16;
          }

          while (v15 - v16 >= 4);
        }
      }

      else
      {
        std::string::basic_string(&v20, v4, 0, 3uLL, __p);
        if (*(a2 + 47) < 0)
        {
          operator delete(*(a2 + 24));
        }

        *(a2 + 24) = v20;
        std::string::basic_string(&v20, v36, 3uLL, 0xFFFFFFFFFFFFFFFFLL, __p);
        if (*(a2 + 71) < 0)
        {
          operator delete(*(a2 + 48));
        }

        *(a2 + 48) = v20;
      }

      ++v5;
      v4 = v36;
    }

    while (v5 < (-1431655765 * ((v37 - v36) >> 3)));
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  std::locale::~locale(&v21[1] + 1);
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  *&v21[0] = &v36;
  sub_1000087B4(v21);
}

void sub_10081EF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a18 = v19 - 112;
  sub_1000087B4(&a18);
  sub_10016C520(v18);
  _Unwind_Resume(a1);
}

uint64_t checkFilePresentUsingMobileHelper(os_log_t *a1, Registry **a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  Registry::getMobileHelper(&v10, *a2);
  if (!v10)
  {
    v8 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_101780D74(v8);
    }

    goto LABEL_11;
  }

  if (!(*(*v10 + 160))(v10, a3))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v5 = *a1;
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

    *buf = 136315138;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I File: %s existing using mobile helper. Check permissions of this path", buf, 0xCu);
  }

  v7 = 1;
LABEL_12:
  if (v11)
  {
    sub_100004A34(v11);
  }

  return v7;
}

void sub_10081F110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081F130(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_10000BD98(a1);
  return a1;
}

void sub_10081F1DC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_10081F204(uint64_t a1, uint64_t a2, NSObject **a3)
{
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v4 = 0uLL;
  sub_10081F294(&v4);
}

void sub_10081F27C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10081F294(void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_10081F340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081F368(uint64_t a1, void *a2, int a3, NSObject **a4)
{
  v24 = *a4;
  if (v24)
  {
    dispatch_retain(v24);
  }

  sub_1002A4AC4(a1, a3, &v24);
  if (v24)
  {
    dispatch_release(v24);
  }

  *a1 = off_101E86E30;
  v8 = sub_1002A4990(a1);
  v9 = sub_1002A49AC(2, v8);
  ctu::OsLogContext::OsLogContext(&v18, kCtLoggingSystemName, v9);
  sub_10081F658((a1 + 24), a4, &v18);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = off_101E86E30;
  *(a1 + 64) = *a2;
  v10 = a2[1];
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = sub_1002A4990(a1);
  v12 = sub_1002A49AC(2, v11);
  sub_10000501C(&__p, v12);
  v13 = *a4;
  v21 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *(a1 + 48);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v15 = sub_1002A4990(a1);
  v16 = sub_1002A49AC(2, v15);
  sub_10000501C(&v18, v16);
  PersonalitiesTracker::PersonalitiesTracker();
  if (v19 < 0)
  {
    operator delete(v18.var0);
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 850045863;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  return a1;
}

void sub_10081F564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, dispatch_object_t object, dispatch_object_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100359978(v25, *(v23 + 104));
  v27 = *(v23 + 88);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v23 + 72);
  if (v28)
  {
    sub_100004A34(v28);
  }

  ctu::OsLogLogger::~OsLogLogger((v23 + 56));
  sub_1000C0544(v24);
  sub_1002A493C(v23);
  _Unwind_Resume(a1);
}

const char *sub_10081F628(uint64_t a1)
{
  v1 = sub_1002A4990(a1);

  return sub_1002A49AC(2, v1);
}

void *sub_10081F658(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10081F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_10081F6E4(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 24));
  operator new();
}

void sub_10081F7D8(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 24));
  operator new();
}

void sub_10081F8B4(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 24));
  operator new();
}

void sub_10081F9A8(uint64_t a1, uint64_t a2)
{
  Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 64));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10081FB5C(a1 + 96, a1 + 80);
  v5[0] = sub_10081FC3C;
  v5[1] = 0;
  sub_100822B60(a1 + 80, a1, v5);
}

void sub_10081FB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100249B60(&a12);
  sub_100249BE0(va);
  sub_100249C60(v15 - 72);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_10081FB5C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/sims_in_use");
  v5[0] = off_101E86FC8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081FC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10081FC3C(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = sub_1002A4990(a1);
  if (v4 == v5)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      v7 = *a2;
      v8 = a1 + 104;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 != a1 + 104 && v7 >= *(v8 + 32))
      {
        v9 = capabilities::ct::supportsSIMAPNSingleFile(v5);
        v10 = (*(v8 + 104) - 3) < 3 ? 1 : v9;
        v11 = v10 ? 35 : 34;
        if (a2[1] == v11)
        {
          v12 = *(a2 + 1);
          v13 = *(a2 + 2);
          v14 = (a2 + 2);
          if (v12 == v13 && *(a1 + 120) == 1)
          {
            v15 = *(a1 + 56);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16[0] = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Ignore SIM APNs update with no data while radio is down", v16, 2u);
            }
          }

          else
          {

            sub_1008213A0(a1, v14);
          }
        }
      }
    }
  }
}

void sub_10081FD6C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/radio_state");
  v5[0] = off_101E870C8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081FE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10081FE4C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 24));
  operator new();
}

void sub_10081FF28(std::mutex *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a3;
  std::mutex::lock(a1 + 5);
  v10 = *a4;
  v11 = a4[1];
  v12[0] = v10;
  v12[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10081FFE8(a1, a2, v6, v12, a5);
  if (v11)
  {
    sub_100004A34(v11);
  }

  std::mutex::unlock(a1 + 5);
}