void sub_1003BED58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1003BEDBC(uint64_t a1)
{
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

void sub_1003BEE08(void *a1, const void **a2, uint64_t a3)
{
  *__p = 0u;
  v9 = 0u;
  *v7 = 0u;
  sub_100010024(&v6, a2);
  sub_1003BE020(a1, &v6, v7);
  sub_10001021C(&v6);
  v5 = HIBYTE(__p[0]);
  if (SHIBYTE(__p[0]) < 0)
  {
    v5 = v7[1];
  }

  sub_10025B4DC(a3, v5 != 0, 0);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_1003BEEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000D6F38(va);
  _Unwind_Resume(a1);
}

void sub_1003BEECC(void *a1, uint64_t **a2, uint64_t a3)
{
  memset(__p, 0, 32);
  *v16 = 0u;
  sub_1003BF220(a1, v16);
  v6 = HIBYTE(__p[3]);
  if (SHIBYTE(__p[3]) < 0)
  {
    v6 = __p[2];
  }

  if (v6)
  {
    v7 = HIBYTE(__p[0]);
    if (SHIBYTE(__p[0]) < 0)
    {
      v7 = v16[1];
    }

    if (v7)
    {
      v8 = *a2;
      v9 = a2[1];
      v15[0] = v8;
      v15[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = sub_1003BF3E4(a1, v15);
      if (v9)
      {
        sub_100004A34(v9);
      }

      if (v10)
      {
        if (SHIBYTE(__p[0]) < 0)
        {
          sub_100005F2C(v11, v16[0], v16[1]);
        }

        else
        {
          *v11 = *v16;
          v12 = __p[0];
        }

        if (SHIBYTE(__p[3]) < 0)
        {
          sub_100005F2C(v13, __p[1], __p[2]);
        }

        else
        {
          *v13 = *&__p[1];
          v14 = __p[3];
        }

        __p[4] = a1;
        if (SHIBYTE(__p[0]) < 0)
        {
          sub_100005F2C(&v18, v16[0], v16[1]);
        }

        else
        {
          v18 = *v16;
          v19 = __p[0];
        }

        if (SHIBYTE(__p[3]) < 0)
        {
          sub_100005F2C(&v20, __p[1], __p[2]);
        }

        else
        {
          v20 = *&__p[1];
          v21 = __p[3];
        }

        sub_1003C06F0(v22, a3);
        v22[7] = 0;
        operator new();
      }
    }
  }

  sub_100186828(a3, 71);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1003BF190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1000D6F38(&a9);
  sub_1000D6F38(&a20);
  _Unwind_Resume(a1);
}

void sub_1003BF220(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [NSMutableData dataWithLength:3];
  if (SecRandomCopyBytes(kSecRandomDefault, 3uLL, [v4 mutableBytes]))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F29C();
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v5 = [v4 base64EncodedStringWithOptions:1];
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    sub_10000501C(__p, [v5 UTF8String]);
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];

    sub_10000501C(a2, [v7 UTF8String]);
    if (SHIBYTE(v9) < 0)
    {
      sub_100005F2C((a2 + 24), __p[0], __p[1]);
    }

    else
    {
      *(a2 + 24) = *__p;
      *(a2 + 40) = v9;
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003BF378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1003BF3E4(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v12 = *a2;
    v13 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(&v15, (a1 + 8));
    v5 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
      v6 = std::__shared_weak_count::lock(v5);
      v7 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v11 = v6;
        std::__shared_weak_count::__release_weak(v5);
        sub_100004A34(v7);
      }

      else
      {
        v11 = 0;
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v11 = 0;
    }

    sub_10031E46C(&v12, &v14);
    v8 = v14;
    v14 = 0uLL;
    v9 = *(a1 + 96);
    *(a1 + 88) = v8;
    if (v9)
    {
      sub_100004A34(v9);
      if (*(&v14 + 1))
      {
        sub_100004A34(*(&v14 + 1));
      }
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176F2D0();
  }

  return v3 != 0;
}

void sub_1003BF538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1003BF564(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[11])
  {
    if ((*(a2 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(a2 + 32))
      {
        goto LABEL_16;
      }
    }

    else if (!*(a2 + 47))
    {
LABEL_16:
      if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
      {
        sub_10176F304();
      }

      return sub_10000FFD0(a3, 0);
    }

    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(a2 + 8))
      {
        goto LABEL_16;
      }
    }

    else if (!*(a2 + 23))
    {
      goto LABEL_16;
    }

    *v12 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = *v12;
      *v12 = Mutable;
      __p[0] = v8;
      sub_1000296E0(__p);
    }

    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      *__p = *(a2 + 24);
      v14 = *(a2 + 40);
    }

    sub_1003C1788(*v12, @"kDeviceIdentifier", __p, kCFAllocatorDefault);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v14 = *(a2 + 16);
    }

    sub_1003C1788(*v12, @"kPreSharedKey", __p, kCFAllocatorDefault);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = sub_100649C38(15);
    sub_10000501C(__p, v9);
    sub_100010180(&v11, v12);
    v17 = a1;
    sub_1000224C8(&v18, a3);
    sub_100004AA0(&v15, a1 + 1);
    v10 = v16;
    v19[0] = v15;
    v19[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v20 = 0;
    operator new();
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10176F338();
  }

  return sub_10000FFD0(a3, 0);
}

void sub_1003BF878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_100287028(v20 - 88);
  sub_1003BFE98(&a20);
  sub_10001021C(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BF8F8(uint64_t a1)
{
  sub_10028ED7C(a1 + 56);
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

BOOL sub_1003BF944(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v9[0] = *a2;
  v9[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1003BF3E4(a1, v9);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v4)
  {
    v5 = sub_100649C38(15);
    sub_10000501C(v13, v5);
    memset(v8, 0, sizeof(v8));
    sub_10016FB64(v8, v13, &v14, 1uLL);
    sub_100004AA0(&v10, a1 + 1);
    v6 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
    }

    v12 = 0;
    operator new();
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10176F36C();
  }

  return v4;
}

BOOL sub_1003BFB74(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = +[NSDate date];
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2 + 3;
      if (*(a2 + 47) < 0)
      {
        v7 = *v7;
      }

      v8 = a2;
      if (*(a2 + 23) < 0)
      {
        v8 = *a2;
      }

      v17 = 136315650;
      v18 = v7;
      v19 = 2080;
      v20 = v8;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Caching reconnection credentials: deviceIdentifier: %s psk:%s timestamp:%@", &v17, 0x20u);
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = a2 + 3;
    if (*(a2 + 47) < 0)
    {
      v10 = *v10;
    }

    v11 = [NSString stringWithUTF8String:v10];
    v12 = [NSString stringWithUTF8String:"kDeviceIdentifier"];
    [v9 setObject:v11 forKey:v12];

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v13 = [NSString stringWithUTF8String:a2];
    v14 = [NSString stringWithUTF8String:"kPreSharedKey"];
    [v9 setObject:v13 forKey:v14];

    v15 = [NSString stringWithUTF8String:"kTimestamp"];
    [v9 setObject:v5 forKey:v15];

    (*(**(a1 + 72) + 16))(*(a1 + 72), @"AutoReconnectionCredentials", v9, @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(**(a1 + 72) + 48))(*(a1 + 72), @"com.apple.commcenter.device_specific_nobackup", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1004627DC(a1, 86400);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176F3A0();
  }

  return v3 != 0;
}

uint64_t sub_1003BFE98(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10000FF50(a1 + 8);
  return a1;
}

void sub_1003BFED0(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

Class sub_1003BFFB4(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_101FBA308)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_1003C01E4;
    v7[4] = &unk_101E26008;
    v7[5] = v7;
    v8 = off_101E48938;
    v9 = 0;
    qword_101FBA308 = _sl_dlopen();
  }

  if (!qword_101FBA308)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreBluetoothLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"ReconnectionManager.m" lineNumber:22 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CBDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getCBDeviceClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"ReconnectionManager.m" lineNumber:23 description:{@"Unable to find class %s", "CBDevice"}];

LABEL_10:
    __break(1u);
  }

  qword_101FBA300 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1003C01E4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_101FBA308 = result;
  return result;
}

char *sub_1003C0258(char *__dst, __int128 *a2, __int128 *a3, id *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  *(__dst + 6) = *a4;
  return __dst;
}

void sub_1003C02EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C0388(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176F3D4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C03A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003C03DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1003C040C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1003C044C(ServiceManager::Service *this)
{
  *this = off_101E489D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1003C04A8(ServiceManager::Service *this)
{
  *this = off_101E489D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1003C0528@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1003C0568(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  sub_1003BDE0C(v2);
  if (v3)
  {
    dispatch_group_leave(v3);

    dispatch_release(v3);
  }
}

void sub_1003C05D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C06A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C06F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003C0770(uint64_t a1)
{
  *a1 = off_101E48AD8;
  sub_10028ED7C(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1003C07D4(uint64_t a1)
{
  *a1 = off_101E48AD8;
  sub_10028ED7C(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_1003C0914(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C0950(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E48AD8;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v6;
  }

  return sub_100293290(a2 + 64, a1 + 64);
}

void sub_1003C09F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C0A1C(uint64_t a1)
{
  sub_10028ED7C(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_1003C0A7C(uint64_t a1)
{
  sub_10028ED7C(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

uint64_t sub_1003C0AD8(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v4 = a1 + 64;
    goto LABEL_15;
  }

  v3 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(v8, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v8 = *(a1 + 16);
    v9 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v11 = *(a1 + 56);
  }

  v5 = sub_1003BFB74(v3, v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
    v4 = a1 + 64;
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_15:
    v6 = 71;
    return sub_100186828(v4, v6);
  }

  v4 = a1 + 64;
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_13:
  v6 = 0;
  return sub_100186828(v4, v6);
}

void sub_1003C0BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C0BE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003C0C30(void *a1)
{
  *a1 = off_101E48B58;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003C0C7C(void *a1)
{
  *a1 = off_101E48B58;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003C0D5C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E48B58;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003C0D9C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003C0DAC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003C0DEC(void *a1, uint64_t a2, const void **a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v13, *a2, *(a2 + 8));
  }

  else
  {
    *v13 = *a2;
    v14 = *(a2 + 16);
  }

  sub_1000636AC(v17, a4);
  v7 = a1[1];
  cf = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v9 = cf;
    cf = Mutable;
    v18 = v9;
    sub_1000296E0(&v18);
  }

  v10 = a1[3];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11 && a1[2])
    {
      v18 = v7;
      if (SHIBYTE(v14) < 0)
      {
        sub_100005F2C(&__p, v13[0], v13[1]);
      }

      else
      {
        __p = *v13;
        v20 = v14;
      }

      sub_100010024(v21, a3);
      v21[1] = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_100063614(&v22, v17);
      v16[0] = 0;
      v16[1] = 0;
      sub_100004AA0(v16, v7 + 1);
      operator new();
    }
  }

  else
  {
    v11 = 0;
  }

  ctu::OsLogContext::OsLogContext(&v18, kCtLoggingSystemName, "recon.mgr");
  v12 = __p;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10176F3F8(v13, v12);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_1000296E0(&cf);
  sub_10006372C(v17);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_1003C10D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100004A34(v31);
  sub_1000296E0(&a16);
  sub_10006372C(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003C1168(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1003C11B4(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = *(v1 + 32);
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received: [%s], payload: [%@]", buf, 0x16u);
  }

  v6 = sub_100649C38(15);
  v7 = (v1 + 8);
  v8 = strlen(v6);
  v9 = *(v1 + 31);
  if (v9 < 0)
  {
    if (v8 != *(v1 + 16))
    {
      goto LABEL_12;
    }

    if (v8 == -1)
    {
      sub_10013C334();
    }

    v7 = *v7;
  }

  else if (v8 != v9)
  {
LABEL_12:
    sub_1003C16CC(*(v1 + 40), @"kResult", 0, kCFAllocatorDefault);
    sub_100010180(buf, (v1 + 40));
    v10 = *(v1 + 72);
    if (!v10)
    {
      sub_100022DB4();
    }

LABEL_13:
    v11 = buf;
    (*(*v10 + 48))(v10, buf);
    goto LABEL_14;
  }

  if (memcmp(v7, v6, v8))
  {
    goto LABEL_12;
  }

  v13 = *(v1 + 32);
  if (!v13 || !CFDictionaryContainsKey(v13, @"kDeviceIdentifier") || !CFDictionaryContainsKey(*(v1 + 32), @"kPreSharedKey"))
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F304();
    }

    sub_1003C16CC(*(v1 + 40), @"kResult", 0, kCFAllocatorDefault);
    sub_100010180(buf, (v1 + 40));
    v10 = *(v1 + 72);
    if (!v10)
    {
      sub_100022DB4();
    }

    goto LABEL_13;
  }

  CFDictionaryGetValue(*(v1 + 32), @"kDeviceIdentifier");
  CFDictionaryGetValue(*(v1 + 32), @"kPreSharedKey");
  ctu::cf::assign();
  memset(buf, 0, sizeof(buf));
  v18 = 0uLL;
  v19 = 0;
  ctu::cf::assign();
  __p = 0uLL;
  v22 = 0;
  v14 = sub_1003BFB74(v2, buf);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v14)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F480();
    }

    sub_1003C16CC(*(v1 + 40), @"kResult", 1, kCFAllocatorDefault);
    sub_100010180(&v18, (v1 + 40));
    v15 = *(v1 + 72);
    if (!v15)
    {
      sub_100022DB4();
    }
  }

  else
  {
    sub_1003C16CC(*(v1 + 40), @"kResult", 0, kCFAllocatorDefault);
    sub_100010180(&v18, (v1 + 40));
    v15 = *(v1 + 72);
    if (!v15)
    {
      sub_100022DB4();
    }
  }

  v11 = &v18;
  (*(*v15 + 48))(v15, &v18);
LABEL_14:
  sub_10001021C(v11);
  sub_1003C165C(&v17);
  return sub_1000049E0(&v16);
}

void sub_1003C15B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_10001021C(&__p);
  sub_1003C165C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003C165C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10006372C(v1 + 48);
    sub_1000296E0((v1 + 40));
    sub_10001021C((v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1003C16CC(__CFDictionary *a1, CFTypeRef cf, int a3, CFAllocatorRef allocator)
{
  v13 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
  v12 = v8;
  if (cf)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  sub_100DA3324(&v12);
  sub_100DA3324(&v13);
  return v10;
}

void sub_1003C1764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100DA3324(va);
  sub_100DA3324(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C1788(__CFDictionary *a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v10 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  value = 0;
  ctu::cf::convert_copy();
  v9 = 0;
  if (cf)
  {
    v6 = value == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    CFDictionaryAddValue(a1, cf, 0);
  }

  sub_100DA3324(&v9);
  sub_100DA3324(&v10);
  return v7;
}

void sub_1003C1828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100DA3324(va);
  sub_100DA3324(va1);
  _Unwind_Resume(a1);
}

void *sub_1003C184C(void *a1)
{
  *a1 = off_101E48BD8;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_1003C18A0(void *a1)
{
  *a1 = off_101E48BD8;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1003C19A8(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101E48BD8;
  a2[1] = v4;
  result = sub_1000224C8((a2 + 2), (a1 + 2));
  v6 = a1[7];
  a2[6] = a1[6];
  a2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003C1A18(char *a1)
{
  sub_1003C1C7C((a1 + 8));

  operator delete(a1);
}

const void **sub_1003C1A54(void *a1, unsigned __int8 *a2, CFDictionaryRef *a3)
{
  v4 = *a2;
  v5 = *a3;
  theDict = *a3;
  *a3 = 0;
  v6 = a1[7];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v7 = a1[1];
  v8 = std::__shared_weak_count::lock(v6);
  if (!v8 || !a1[6])
  {
LABEL_8:
    sub_10000FFD0((a1 + 2), 0);
    if (!v8)
    {
      return sub_10001021C(&theDict);
    }

    goto LABEL_19;
  }

  if (v4)
  {
    if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F51C();
    }
  }

  else
  {
    if (v5 && CFDictionaryContainsKey(v5, @"kResult"))
    {
      Value = CFDictionaryGetValue(theDict, @"kResult");
      v11 = Value;
      if (Value)
      {
        v12 = CFGetTypeID(Value);
        if (v12 == CFNumberGetTypeID())
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v19 = 0;
      ctu::cf::assign(&v19, v13, v10);
      v15 = v19;
      v16 = *(v7 + 40);
      if (v19)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Other device successfully saved the credentials", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10176F4B4();
      }

      sub_10000FFD0((a1 + 2), v15 != 0);
      goto LABEL_19;
    }

    if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176F4E8();
    }
  }

  sub_10000FFD0((a1 + 2), 0);
LABEL_19:
  sub_100004A34(v8);
  return sub_10001021C(&theDict);
}

void sub_1003C1C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100004A34(v3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C1C30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C1C7C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_10000FF50(a1 + 8);
}

uint64_t sub_1003C1D48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003C1D94(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  if (*(v1 + 88))
  {
    v2 = *(v1 + 96);
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    if (v2)
    {
      sub_100004A34(v2);
    }
  }

  operator delete();
}

void sub_1003C1DFC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_1003C1ED8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E48CF8;
  sub_1009BC8A4((a1 + 3));
  return a1;
}

void sub_1003C1F54(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E48CF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1003C1FE0(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 336)) = a2[1];
  *(result + *(*result - 56)) = a2[2];
  v5 = a3[1];
  result[1] = *a3;
  result[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[3] = a4;
  return result;
}

uint64_t *sub_1003C20D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 336)) = a2[1];
  *(a1 + *(*a1 - 56)) = a2[2];
  v4 = a1[2];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

uint64_t sub_1003C21E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 240))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1003C221C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + *(*a1 - 280) + 24);
  if (result)
  {
    return (*(*result + 240))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1003C228C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

uint64_t sub_1003C22C4(void *a1)
{
  result = *(a1 + *(*a1 - 320) + 24);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

void sub_1003C2318(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *DataConnectionAgentCarrierSpace::DataConnectionAgentCarrierSpace(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, id *a5, void *a6)
{
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DataConnectionAgent::DataConnectionAgent(a1, off_101E48FC8, &v9, a3, "DATA.agent.carrierspace", a4, a5, a6);
  if (v10)
  {
    sub_100004A34(v10);
  }

  *a1 = off_101E48DC0;
  a1[3] = off_101E48ED8;
  a1[13] = off_101E48FA8;
  a1[40] = 0;
  a1[41] = 0;
  a1[39] = 0;
  return a1;
}

void sub_1003C2424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  PersonalitySpecific::~PersonalitySpecific(v10);
  _Unwind_Resume(a1);
}

void DataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace(DataConnectionAgentCarrierSpace *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 56)) = a2[8];
  *(this + 3) = a2[9];
  *(this + 13) = off_101E48FA8;
  v5 = *(this + 39);
  if (v5)
  {
    *(this + 39) = 0;
  }

  v6 = *(this + 40);
  if (v6)
  {
    *(this + 40) = 0;
  }

  v7 = *(this + 41);
  if (v7)
  {
    *(this + 41) = 0;

    v7 = *(this + 41);
  }

  DataConnectionAgent::~DataConnectionAgent(this, a2 + 1);
}

void DataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace(DataConnectionAgentCarrierSpace *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void non-virtual thunk toDataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace(DataConnectionAgentCarrierSpace *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  DataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace((this - 24));
}

{
  DataConnectionAgentCarrierSpace::~DataConnectionAgentCarrierSpace((this - 104));
}

void DataConnectionAgentCarrierSpace::unsetPolicyOverride(DataConnectionAgentCarrierSpace *this)
{
  v2 = *(this + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    UUID = DataConnectionAgent::getUUID(this);
    if (*(UUID + 23) >= 0)
    {
      v4 = UUID;
    }

    else
    {
      v4 = *UUID;
    }

    v9 = 136446210;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s: unsetPolicyOverride", &v9, 0xCu);
  }

  v5 = *(this + 39);
  if (v5)
  {
    *(this + 39) = 0;
  }

  v6 = *(this + 40);
  if (v6)
  {
    *(this + 40) = 0;
  }

  v7 = *(this + 41);
  if (v7)
  {
    *(this + 41) = 0;

    v8 = *(this + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I unregistered fallback policy", &v9, 2u);
    }
  }
}

void entitlements::ControllerImpl::ControllerImpl(uint64_t a1, void *a2, NSObject **a3, uint64_t *a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, a5);
  sub_1001303E4((a1 + 8), a3, &buf);
  ctu::OsLogContext::~OsLogContext(&buf);
  *(a1 + 56) = 0;
  *a1 = off_101E493F8;
  *(a1 + 48) = off_101E49688;
  *(a1 + 64) = *a2;
  v9 = a2[1];
  *(a1 + 72) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  v10 = *a4;
  *(a1 + 88) = *a4;
  v11 = a4[1];
  *(a1 + 96) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a1 + 88);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v12 = *(v10 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003A09FC();
}

void sub_1003C2D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t a17, dispatch_object_t object, dispatch_object_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_1003EDEF8(v29 + 2232);
  std::mutex::~mutex((v29 + 2168));
  sub_1003E9830(v29 + 1776);
  sub_10006DCAC(v29 + 1744, *(v29 + 1752));
  v37 = *(v29 + 1728);
  *(v29 + 1728) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *v34;
  *v34 = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  if (*(v29 + 1704) == 1)
  {
    a28 = v29 + 1680;
    sub_1003E9950(&a28);
  }

  sub_1002B73A8(v29 + 1656, *(v29 + 1664));
  sub_10006DCAC(v29 + 1632, *(v29 + 1640));
  sub_1001A8E08(v29 + 1608, *(v29 + 1616));
  sub_1002B7314(v29 + 1584, *(v29 + 1592));
  sub_100077CD4(v29 + 1552, *(v29 + 1560));
  v39 = *(v29 + 1544);
  if (v39)
  {
    sub_100004A34(v39);
  }

  if (*(v29 + 1528) == 1)
  {
    sub_100220C2C(v29 + 1072);
  }

  sub_1003C3054(v29 + 960);
  std::mutex::~mutex((v29 + 880));
  v40 = *(v29 + 872);
  if (v40)
  {
    sub_100004A34(v40);
  }

  if (*(v29 + 856) == 1)
  {
    v41 = *(v29 + 832);
    if (v41)
    {
      *(v29 + 840) = v41;
      operator delete(v41);
    }
  }

  sub_1003E9B08(v33);
  sub_1003E9B8C(v32);
  sub_1003E9C10(v31);
  sub_1003E9C94(v30);
  sub_1003E9D18(v35);
  sub_1003E9D9C(a10);
  sub_1003E9E5C(a11);
  sub_1003E9F1C(a12);
  sub_1003E9FDC(a13);
  sub_1003EA060(a14);
  sub_1003EA0E4(a15);
  sub_1003EA168(a16);
  sub_1003C3054(v29 + 416);
  sub_1003C30B4((v29 + 312));
  sub_1003C30B4((v29 + 208));
  v42 = *(v29 + 176);
  *(v29 + 176) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(v29 + 168);
  if (v43)
  {
    sub_100004A34(v43);
  }

  v44 = *(v29 + 152);
  if (v44)
  {
    sub_100004A34(v44);
  }

  v45 = *(v29 + 136);
  if (v45)
  {
    sub_100004A34(v45);
  }

  sub_1000212F4(&a28);
  v46 = *(v29 + 96);
  if (v46)
  {
    sub_100004A34(v46);
  }

  v47 = *(v29 + 72);
  if (v47)
  {
    sub_100004A34(v47);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v29 + 40));
  sub_1000C0544((v29 + 8));
  _Unwind_Resume(a1);
}

void sub_1003C302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a24)
  {
    JUMPOUT(0x1003C2FE8);
  }

  JUMPOUT(0x1003C2FE4);
}

void sub_1003C303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x1003C3024);
}

uint64_t sub_1003C3054(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    sub_10006DCAC(a1 + 80, *(a1 + 88));
    sub_10006EC28(a1 + 56, *(a1 + 64));
    sub_10006DCAC(a1 + 32, *(a1 + 40));
    sub_10006DCAC(a1 + 8, *(a1 + 16));
  }

  return a1;
}

void **sub_1003C30B4(void **a1)
{
  sub_10006DCAC((a1 + 10), a1[11]);
  sub_10006EC28((a1 + 7), a1[8]);
  sub_10006DCAC((a1 + 4), a1[5]);
  sub_10006DCAC((a1 + 1), a1[2]);
  return a1;
}

void entitlements::ControllerImpl::~ControllerImpl(entitlements::ControllerImpl *this)
{
  *this = off_101E493F8;
  *(this + 6) = off_101E49688;
  ctu::RestModule::disconnect((this + 1536));
  sub_1003EDEF8(this + 2232);
  std::mutex::~mutex((this + 2168));
  sub_1003E9830(this + 1776);
  sub_10006DCAC(this + 1744, *(this + 219));
  v2 = *(this + 216);
  *(this + 216) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 214);
  *(this + 214) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 1704) == 1)
  {
    v13 = (this + 1680);
    sub_1003E9950(&v13);
  }

  sub_1002B73A8(this + 1656, *(this + 208));
  sub_10006DCAC(this + 1632, *(this + 205));
  sub_1001A8E08(this + 1608, *(this + 202));
  sub_1002B7314(this + 1584, *(this + 199));
  sub_100077CD4(this + 1552, *(this + 195));
  v4 = *(this + 193);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(this + 1528) == 1)
  {
    sub_100220C2C(this + 1072);
  }

  if (*(this + 1064) == 1)
  {
    sub_10006DCAC(this + 1040, *(this + 131));
    sub_10006EC28(this + 1016, *(this + 128));
    sub_10006DCAC(this + 992, *(this + 125));
    sub_10006DCAC(this + 968, *(this + 122));
  }

  std::mutex::~mutex((this + 880));
  v5 = *(this + 109);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (*(this + 856) == 1)
  {
    v6 = *(this + 104);
    if (v6)
    {
      *(this + 105) = v6;
      operator delete(v6);
    }
  }

  sub_1003E9B08(this + 100);
  sub_1003E9B8C(this + 97);
  sub_1003E9C10(this + 94);
  sub_1003E9C94(this + 91);
  sub_1003E9D18(this + 88);
  sub_1003E9D9C(this + 85);
  sub_1003E9E5C(this + 82);
  sub_1003E9F1C(this + 79);
  sub_1003E9FDC(this + 76);
  sub_1003EA060(this + 73);
  sub_1003EA0E4(this + 70);
  sub_1003EA168(this + 67);
  if (*(this + 520) == 1)
  {
    sub_10006DCAC(this + 496, *(this + 63));
    sub_10006EC28(this + 472, *(this + 60));
    sub_10006DCAC(this + 448, *(this + 57));
    sub_10006DCAC(this + 424, *(this + 54));
  }

  sub_10006DCAC(this + 392, *(this + 50));
  sub_10006EC28(this + 368, *(this + 47));
  sub_10006DCAC(this + 344, *(this + 44));
  sub_10006DCAC(this + 320, *(this + 41));
  sub_10006DCAC(this + 288, *(this + 37));
  sub_10006EC28(this + 264, *(this + 34));
  sub_10006DCAC(this + 240, *(this + 31));
  sub_10006DCAC(this + 216, *(this + 28));
  v7 = *(this + 22);
  *(this + 22) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 21);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 19);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 17);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v13 = (this + 104);
  sub_1000212F4(&v13);
  v11 = *(this + 12);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(this + 9);
  if (v12)
  {
    sub_100004A34(v12);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  entitlements::ControllerImpl::~ControllerImpl(this);

  operator delete();
}

void non-virtual thunk toentitlements::ControllerImpl::~ControllerImpl(entitlements::ControllerImpl *this)
{
  entitlements::ControllerImpl::~ControllerImpl((this - 48));
}

{
  entitlements::ControllerImpl::~ControllerImpl((this - 48));

  operator delete();
}

void entitlements::ControllerImpl::initialize(entitlements::ControllerImpl *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void entitlements::ControllerImpl::start(entitlements::ControllerImpl *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void entitlements::ControllerImpl::init_sync(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    buf = 136315394;
    *buf_4 = v3;
    *&buf_4[8] = 2080;
    *&buf_4[10] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sInitializing Carrier Entitlements Controller", &buf, 0x16u);
  }

  sub_100004AA0(&buf, this + 1);
  v4 = *&buf_4[4];
  if (*&buf_4[4])
  {
    atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  sub_10000501C(__p, "/cc/events/p_associated_uri_changed");
  operator new();
}

void sub_1003C4AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  sub_10001021C(&a9);
  sub_10000A1EC((v26 + 16));
  sub_10000A1EC((v26 + 8));
  sub_100029A48(&a10);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::initializeLimitedUseSim_sync(entitlements::ControllerImpl *this)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v42 = 0;
  v2 = PersonalityInfo::iccid(***(this + 11));
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v42 = *(v2 + 16);
    *__dst = v3;
  }

  if (*(***(this + 11) + 61) == 1)
  {
    *&__str.__r_.__value_.__l.__data_ = 0uLL;
    ServiceMap = Registry::getServiceMap(*(this + 8));
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
    *&v43 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v43);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    std::mutex::unlock(v5);
    __str.__r_.__value_.__r.__words[0] = v12;
    __str.__r_.__value_.__l.__size_ = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v12 = __str.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      sub_1003CA2CC(this, &__str, __dst);
    }

    v22 = *(this + 5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10176F63C(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    size = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__l.__size_)
    {
LABEL_32:
      sub_100004A34(size);
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v13 = Registry::getServiceMap(*(this + 8));
    v14 = v13;
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

    std::mutex::lock(v13);
    *&v43 = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, &v43);
    if (v19)
    {
      v21 = v19[3];
      v20 = v19[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    std::mutex::unlock(v14);
    v39 = v21;
    v40 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v21 = v39;
    }

    if (v21)
    {
      sub_1003CA43C(this, &v39, __dst);
    }

    v30 = *(this + 5);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10176F604(v30, v31, v32, v33, v34, v35, v36, v37);
    }

    size = v40;
    if (v40)
    {
      goto LABEL_32;
    }
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1003C5324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_10000A1EC(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::start_sync(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sStarting Carrier Entitlements Controller", buf, 0x16u);
  }

  if (!*(***(this + 11) + 49))
  {
    ServiceMap = Registry::getServiceMap(*(this + 8));
    v5 = ServiceMap;
    v6 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v7 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
LABEL_16:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          return;
        }

LABEL_13:
        sub_100004AA0(buf, this + 1);
        v14 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v14);
        }

        v15 = 0;
        operator new();
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
      goto LABEL_16;
    }

    goto LABEL_13;
  }
}

void sub_1003C569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1003F2928(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::reset_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v75 = sub_1000710B0(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________   Reset called with reason:%s", buf, 0x20u);
  }

  if (*(a1 + 80) == 1 && (a2 == 3 || *(a1 + 112) == *(a1 + 104)))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s(re)instantiating Entitlements Command Driver", buf, 0x16u);
    }

    sub_100021348((a1 + 104));
    std::mutex::lock((a1 + 2168));
    sub_100A7F9EC(buf, (a1 + 64), *(a1 + 88));
    v8 = *(a1 + 88);
    sub_1000FA138((v8 + 520));
    v9 = *buf;
    *(v8 + 520) = *buf;
    v10 = *&buf[8];
    *(v8 + 528) = *&buf[8];
    memset(buf, 0, sizeof(buf));
    if (a1 + 2112 != v8 + 520)
    {
      sub_1003EA1EC((a1 + 2112), v9, v10, (v10 - v9) >> 4);
    }

    v72 = buf;
    sub_1000212F4(&v72);
    v11 = (*(a1 + 2120) - *(a1 + 2112)) >> 4;
    LOBYTE(v72) = 0;
    sub_1003EA3EC(buf, v11, &v72);
    v12 = *(a1 + 2136);
    if (v12)
    {
      operator delete(v12);
      *(a1 + 2136) = 0;
      *(a1 + 2144) = 0;
      *(a1 + 2152) = 0;
    }

    *(a1 + 2136) = *buf;
    *(a1 + 2144) = *&buf[8];
    std::mutex::unlock((a1 + 2168));
    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }

  if (*(a1 + 80) == 1)
  {
    v13 = *(a1 + 88);
    v14 = *(v13 + 528);
    v15 = *(v13 + 520);
    if (v14 == v15 || (sub_100A83694(*v15) & 1) == 0)
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v17 = ServiceMap;
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

      std::mutex::lock(ServiceMap);
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
          goto LABEL_24;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v17);
      v23 = 0;
      v25 = 1;
LABEL_24:
      (*(*v24 + 32))(v24, ***(a1 + 88) + 24, 1);
      if ((v25 & 1) == 0)
      {
        sub_100004A34(v23);
      }
    }
  }

  entitlements::ControllerImpl::stopShorterTimer_sync(a1);
  v27 = *(a1 + 104);
  v26 = *(a1 + 112);
  v28 = *(a1 + 40);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v26 == v27)
  {
    if (v29)
    {
      v35 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sNo valid configuration", buf, 0x16u);
    }

    *buf = 0;
    entitlements::ControllerImpl::setSupportedEntitlementTypes(a1, buf);
    entitlements::ControllerImpl::setSupportedTaskTypes(a1);
    entitlements::ControllerImpl::stopUpdateTimer_sync(a1);
  }

  else
  {
    if (v29)
    {
      v30 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sConfiguration present", buf, 0x16u);
    }

    *buf = 0;
    v31 = *(a1 + 88);
    v32 = *(v31 + 520);
    v33 = *(v31 + 528);
    while (v32 != v33)
    {
      v34 = sub_1008374DC(*v32);
      *buf |= v34;
      v32 += 2;
    }

    entitlements::ControllerImpl::setSupportedEntitlementTypes(a1, buf);
    entitlements::ControllerImpl::setSupportedTaskTypes(a1);
  }

  *buf = a1 + 528;
  *&buf[8] = 0;
  sub_1001E9F04(buf, 2uLL);
  v36 = *(a1 + 104);
  v37 = *(a1 + 112);
  while (v36 != v37)
  {
    (***v36)(buf);
    *(a1 + 528) |= sub_100A80CBC(*buf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v36 += 2;
  }

  entitlements::ControllerImpl::invalidateResults_sync(a1, a2, 3);
  if (a2 == 1)
  {
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = PersonalityInfo::logPrefix(***(a1 + 88));
      v41 = sub_1000710B0(1u);
      *buf = 136315650;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v75 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sFlush all data because of %s", buf, 0x20u);
    }

    std::mutex::lock((a1 + 2168));
    if (*(a1 + 1967) < 0)
    {
      **(a1 + 1944) = 0;
      *(a1 + 1952) = 0;
    }

    else
    {
      *(a1 + 1944) = 0;
      *(a1 + 1967) = 0;
    }

    if (*(a1 + 1991) < 0)
    {
      **(a1 + 1968) = 0;
      *(a1 + 1976) = 0;
    }

    else
    {
      *(a1 + 1968) = 0;
      *(a1 + 1991) = 0;
    }

    sub_1003C6C9C(a1 + 1992);
    *(a1 + 2105) = 0;
    std::mutex::unlock((a1 + 2168));
    v42 = *(a1 + 88);
    if (*(v42 + 376) == 1)
    {
      if (*(v42 + 375) < 0)
      {
        operator delete(*(v42 + 352));
      }

      *(v42 + 376) = 0;
    }

    v43 = Registry::getServiceMap(*(a1 + 64));
    v44 = v43;
    v46 = v45;
    if (v45 < 0)
    {
      v47 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
      v48 = 5381;
      do
      {
        v46 = v48;
        v49 = *v47++;
        v48 = (33 * v48) ^ v49;
      }

      while (v49);
    }

    std::mutex::lock(v43);
    *buf = v46;
    v50 = sub_100009510(&v44[1].__m_.__sig, buf);
    if (v50)
    {
      v52 = v50[3];
      v51 = v50[4];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v44);
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v51);
        v53 = 0;
        goto LABEL_68;
      }
    }

    else
    {
      v52 = 0;
    }

    std::mutex::unlock(v44);
    v51 = 0;
    v53 = 1;
LABEL_68:
    v54 = kCarrierEntitlementsWalletDomain;
    (*(*v52 + 32))(v52, ***(a1 + 88) + 24, @"p_associated_uri", kCarrierEntitlementsWalletDomain, 0, 4);
    if ((v53 & 1) == 0)
    {
      sub_100004A34(v51);
    }

    v55 = Registry::getServiceMap(*(a1 + 64));
    v56 = v55;
    if (v45 < 0)
    {
      v57 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
      v58 = 5381;
      do
      {
        v45 = v58;
        v59 = *v57++;
        v58 = (33 * v58) ^ v59;
      }

      while (v59);
    }

    std::mutex::lock(v55);
    *buf = v45;
    v60 = sub_100009510(&v56[1].__m_.__sig, buf);
    if (v60)
    {
      v62 = v60[3];
      v61 = v60[4];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v56);
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v61);
        v63 = 0;
LABEL_78:
        (*(*v62 + 32))(v62, ***(a1 + 88) + 24, @"signature", v54, 0, 4);
        if ((v63 & 1) == 0)
        {
          sub_100004A34(v61);
        }

        v38 = 0;
        *(a1 + 1725) = 0;
        goto LABEL_81;
      }
    }

    else
    {
      v62 = 0;
    }

    std::mutex::unlock(v56);
    v61 = 0;
    v63 = 1;
    goto LABEL_78;
  }

  if (a2 == 2)
  {
    if (*(a1 + 80) != 1)
    {
      v38 = 0;
      goto LABEL_84;
    }

    v38 = 1;
  }

  else
  {
    v38 = 0;
    if (a2 != 3)
    {
      goto LABEL_84;
    }
  }

LABEL_81:
  *(a1 + 1720) = 0;
  v64 = *(a1 + 1712);
  *(a1 + 1712) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  *(a1 + 1724) = 0;
LABEL_84:
  entitlements::ControllerImpl::readPhoneNumberSignatureFromKeychain_sync(buf, a1);
  *(a1 + 1725) = *buf != 0;
  sub_10001021C(buf);
  if (*(a1 + 112) != *(a1 + 104))
  {
    if (*(a1 + 80) == 1)
    {
      entitlements::ControllerImpl::createUpdateTimer_sync(a1);
      entitlements::ControllerImpl::readServiceToken_sync(a1);
      entitlements::ControllerImpl::readSubscriberId_sync(a1);
      entitlements::ControllerImpl::readUniqueId_sync(a1);
      entitlements::ControllerImpl::readPAssociatedUri_sync(a1);
      entitlements::ControllerImpl::readPLMNPriorityInfoFromCache(a1);
      if ((a2 | 2) == 3 || v38)
      {
        entitlements::ControllerImpl::handleRemoteDevicesChanged(a1);
        entitlements::ControllerImpl::readAuthorizationTokens(a1);
        memset(buf, 0, sizeof(buf));
        v65 = *(a1 + 104);
        v66 = *(a1 + 112);
        while (v65 != v66)
        {
          (*(**v65 + 344))(*v65, a2);
          theString2[0] = 0;
          (***v65)(&v72);
          sub_100A838B4(v72, theString2);
          if (v73)
          {
            sub_100004A34(v73);
          }

          if (theString2[0])
          {
            v67 = *buf;
            v68 = *&buf[8];
            while (v67 != v68)
            {
              if (CFStringCompare(*v67, theString2[0], 0) == kCFCompareEqualTo)
              {
                goto LABEL_97;
              }

              ++v67;
            }

            sub_10021B890(buf, theString2);
          }

LABEL_97:
          sub_100005978(theString2);
          v65 += 2;
        }

        sub_1008110E8(*(a1 + 864), buf);
        entitlements::ControllerImpl::checkReadImsi(a1, 1);
        entitlements::ControllerImpl::handleWifiAvailable_sync(a1, (a1 + 1768), 1);
        v72 = buf;
        sub_100222314(&v72);
      }
    }

    v69 = *(a1 + 104);
    v70 = *(a1 + 112);
    if (v69 != v70)
    {
      do
      {
        (*(**v69 + 16))(*v69, a2);
        v69 += 2;
      }

      while (v69 != v70);
      v69 = *(a1 + 104);
      v70 = *(a1 + 112);
    }

    while (v69 != v70)
    {
      (*(**v69 + 352))(*v69);
      v69 += 2;
    }
  }

  entitlements::ControllerImpl::updateAndSchedule_sync(a1, a2);
  sub_1003CA228(*(a1 + 88), 0);
}

void sub_1003C63A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char a13)
{
  a11 = &a13;
  sub_1000212F4(&a11);
  std::mutex::unlock((v13 + 2168));
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::createCommandDriver_sync(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v15 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = a1[12];
  v13 = a1[11];
  v14 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v6, a1 + 1);
  if (v6)
  {
    v5 = v6 + 48;
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;
  v9 = v7;
  v6 = 0;
  v7 = 0;
  entitlements::CEHTTPDriver::create();
}

void sub_1003C65A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  v22 = *(v20 - 40);
  if (v22)
  {
    dispatch_release(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::stopShorterTimer_sync(uint64_t this)
{
  *(this + 184) = 0;
  v1 = *(this + 176);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 88));
      v5 = 136315394;
      v6 = v4;
      v7 = 2080;
      v8 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sStopping shorter timer", &v5, 0x16u);
      v1 = *(v2 + 176);
    }

    (*(*v1 + 16))(v1);
    this = *(v2 + 176);
    *(v2 + 176) = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }
  }

  return this;
}

void entitlements::ControllerImpl::setSupportedEntitlementTypes(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = PersonalityInfo::logPrefix(***(a1 + 88));
    sub_100072374(a2, __p);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v14 = v6;
    v15 = 2080;
    v16 = " ";
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssettings SupportedEntitlementTypes to %s", buf, 0x20u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *a2 & 0xFFFFFFFFFFFFEBFFLL;
  *(a1 + 192) = *a2;
  *(a1 + 200) = v8;
  v9 = capabilities::ct::supportsSIMProvisioningAsSignupDestination(v5);
  v10 = *(a1 + 200);
  if (!v9)
  {
    v10 &= 0xFFFFFFFFFFAEB7FFLL;
  }

  *(a1 + 200) = v10 & 0xFFFFFFFFFFAEF7FFLL;
  std::mutex::lock((a1 + 2168));
  *(a1 + 1880) = *a2;
  std::mutex::unlock((a1 + 2168));
}

void entitlements::ControllerImpl::setSupportedTaskTypes(entitlements::ControllerImpl *this)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(this + 13);
    for (i = *(this + 14); v4 != i; v3 |= v7)
    {
      v6 = *v4;
      v4 += 2;
      if (sub_1009C1740(v6, v2))
      {
        v7 = 1 << v2;
      }

      else
      {
        v7 = 0;
      }
    }

    ++v2;
  }

  while (v2 != 15);
  v8 = *(this + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(this + 11));
    v10 = 0;
    v15 = 0xF00000000000000;
    strcpy(__p, "000000000000000");
    v11 = 14;
    do
    {
      if ((v3 >> v10))
      {
        if (v15 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *(v12 + v11) = 49;
      }

      ++v10;
      --v11;
    }

    while (v10 != 15);
    v13 = __p;
    if (v15 < 0)
    {
      v13 = __p[0];
    }

    *buf = 136315650;
    v17 = v9;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%ssettings fSupportedTaskTypes to %s", buf, 0x20u);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::mutex::lock((this + 2168));
  *(this + 236) = v3;
  std::mutex::unlock((this + 2168));
}

void entitlements::ControllerImpl::stopUpdateTimer_sync(entitlements::ControllerImpl *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(this + 11));
      v6 = 136315394;
      v7 = v4;
      v8 = 2080;
      v9 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sStopping update timer", &v6, 0x16u);
      v1 = *(this + 20);
    }

    sub_100430948(v1);
    v5 = *(this + 21);
    *(this + 20) = 0;
    *(this + 21) = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }
  }
}

void entitlements::ControllerImpl::invalidateResults_sync(uint64_t a1, signed int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 88));
    v10 = 136315650;
    v11 = v7;
    v12 = 2080;
    v13 = " ";
    v14 = 2080;
    v15 = sub_1000710B0(a2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sInvalidating Entitlements State with reason %s", &v10, 0x20u);
  }

  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 == 7)
      {
        goto LABEL_13;
      }

      if (a2 != 8)
      {
        goto LABEL_16;
      }
    }

LABEL_14:
    v8 = a2 == 5;
    v9 = a1 + 312;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    a3 = 3;
LABEL_13:
    entitlements::ControllerImpl::invalidateEntitlementsCache_sync(a1, a3);
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (*(a1 + 80))
  {
    goto LABEL_16;
  }

  v9 = a1 + 312;
  v8 = 0;
LABEL_15:
  sub_100A38E58(v9, v8);
LABEL_16:
  entitlements::ControllerImpl::recalculateEntitlements_sync(a1, 0, *(a1 + 80));
}

void sub_1003C6C9C(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    if (*(result + 88) == 1)
    {
      v4[0] = (result + 64);
      sub_1003EA960(v4);
    }

    if (*(result + 56) == 1)
    {
      v4[0] = (result + 32);
      sub_1003EA960(v4);
    }

    if (*(result + 24) == 1)
    {
      v4[0] = result;
      sub_1003EA960(v4);
    }

    *(result + 96) = 0;
  }
}

const void **entitlements::ControllerImpl::readPhoneNumberSignatureFromKeychain_sync@<X0>(uint64_t *__return_ptr a1@<X8>, Registry **this@<X0>)
{
  data = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  (*(*v12 + 24))(&v16, v12, **this[11] + 24, @"signature", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_1001B1A54(&data, &v16);
  sub_10000A1EC(&v16);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = data;
  if (data)
  {
    *a1 = 0;
    v18 = CFPropertyListCreateWithData(0, v14, 0, 0, 0);
    sub_100138C38(a1, &v18);
  }

  else
  {
    *a1 = 0;
  }

  return sub_10002D760(&data);
}

void sub_1003C6EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::createUpdateTimer_sync(entitlements::ControllerImpl *this)
{
  v14 = 0;
  v13 = &v14;
  *buf = off_101E4A730;
  *&buf[8] = this;
  *&buf[16] = &v13;
  v16 = buf;
  sub_1000700B8(buf);
  sub_100072048(buf);
  v2 = *(this + 11);
  v3 = **v2;
  if (*(v3 + 49) == 1)
  {
    v14 = 1;
    goto LABEL_4;
  }

  if (v14)
  {
LABEL_4:
    v4 = *(v2 + 528);
    v5 = *(v2 + 520);
    if (v4 != v5)
    {
      v6 = sub_100A820CC(*v5);
      v13 = v6;
      v7 = *(this + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315650;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2048;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sConfigured update period %ld minutes", buf, 0x20u);
      }

      v9 = **(this + 11);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = sub_1003CC620;
      v12[3] = &unk_101E496D0;
      v12[4] = this;
      sub_10042FDFC(this + 64, this + 24, "CarrierEntitlementsController", "ent.ctl", v9, &v13, 0, 1, v12);
    }

    return;
  }

  v10 = *(this + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(v3);
    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sNo supported entitlement requires periodic update; will not use an update timer", buf, 0x16u);
  }

  entitlements::ControllerImpl::stopUpdateTimer_sync(this);
}

void sub_1003C7170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::readServiceToken_sync(PersonalityInfo ****this)
{
  v15 = 0;
  *__p = 0u;
  v14 = 0u;
  entitlements::ControllerImpl::copyCurrentServiceToken(__p, this);
  v2 = BYTE7(v14);
  if (SBYTE7(v14) < 0)
  {
    v2 = __p[1];
  }

  if (v2)
  {
    v3 = this[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**this[11]);
      v5 = __p;
      if (SBYTE7(v14) < 0)
      {
        v5 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = v4;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sFound Service Token %s", buf, 0x20u);
    }

    v7 = this[13];
    v6 = this[14];
    while (v7 != v6)
    {
      v8 = *v7;
      buf[0] = 0;
      LOBYTE(v20) = 0;
      (*(*v8 + 33))(v8, __p, buf, &v14 + 8);
      if (v20 == 1 && SHIBYTE(v19) < 0)
      {
        operator delete(*buf);
      }

      v7 += 2;
    }
  }

  else
  {
    v9 = this[13];
    v10 = this[14];
    while (v9 != v10)
    {
      (*(**v9 + 37))(*v9, 0);
      v9 += 2;
    }

    v11 = this[5];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(**this[11]);
      *buf = 136315394;
      *&buf[4] = v12;
      v17 = 2080;
      v18 = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sNo service token stored in keychain", buf, 0x16u);
    }
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003C73D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::readSubscriberId_sync(entitlements::ControllerImpl *this)
{
  memset(&__p, 0, sizeof(__p));
  entitlements::ControllerImpl::copyCurrentEntitlementSubscriberId(&__p, this);
  v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  size = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  if (v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(this + 11));
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v30 = v7;
      v31 = 2080;
      v32 = " ";
      v33 = 2080;
      v34 = p_p;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sFound Subscriber ID %s", buf, 0x20u);
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      size = __p.__r_.__value_.__l.__size_;
      v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    v9 = *(this + 11);
    if (v3 >= 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = size;
    }

    v11 = *(v9 + 407);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v9 + 392);
    }

    if (v10 == v11)
    {
      if (v3 >= 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      if (v12 >= 0)
      {
        v14 = (v9 + 384);
      }

      else
      {
        v14 = *(v9 + 384);
      }

      v15 = memcmp(v13, v14, v10);
      v16 = *(this + 5);
      if (!v15)
      {
        if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
        {
          v17 = PersonalityInfo::logPrefix(**v9);
          *buf = 136315394;
          v30 = v17;
          v31 = 2080;
          v32 = " ";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sSubscriber ID update ignored - no change", buf, 0x16u);
        }

LABEL_40:
        v27 = *(this + 13);
        v26 = *(this + 14);
        while (v27 != v26)
        {
          (*(**v27 + 272))(*v27, &__p);
          v27 += 2;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v16 = *(this + 5);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = PersonalityInfo::logPrefix(**v9);
      v23 = *(this + 11);
      v24 = (v23 + 384);
      if (*(v23 + 407) < 0)
      {
        v24 = v24->__r_.__value_.__r.__words[0];
      }

      v25 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v30 = v22;
      v31 = 2080;
      v32 = " ";
      v33 = 2080;
      v34 = v24;
      v35 = 2080;
      v36 = v25;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sChanging Subscriber ID from %s to %s", buf, 0x2Au);
      v9 = *(this + 11);
    }

    std::string::operator=((v9 + 384), &__p);
    sub_1003CA228(*(this + 11), 0);
    goto LABEL_40;
  }

  v18 = *(this + 13);
  v19 = *(this + 14);
  while (v18 != v19)
  {
    (*(**v18 + 304))(*v18, 0);
    v18 += 2;
  }

  v20 = *(this + 5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    v30 = v21;
    v31 = 2080;
    v32 = " ";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sNo Subscriber ID stored in keychain", buf, 0x16u);
  }

LABEL_29:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1003C77D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::readUniqueId_sync(const void **this)
{
  v1 = this;
  v2 = this[11];
  if ((*(v2 + 431) & 0x8000000000000000) != 0)
  {
    if (v2[52])
    {
      goto LABEL_21;
    }
  }

  else if (*(v2 + 431))
  {
    goto LABEL_21;
  }

  entitlements::ControllerImpl::copyCurrentEntitlementUniqueIdInfo(buf, this);
  v3 = v1[11];
  v4 = v3 + 408;
  if (v3[431] < 0)
  {
    operator delete(*v4);
  }

  *v4 = *buf;
  *(v4 + 2) = *&buf[16];
  v5 = v1[11];
  if ((*(v5 + 431) & 0x8000000000000000) != 0)
  {
    if (v5[52])
    {
LABEL_9:
      v6 = v1[5];
      this = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (this)
      {
        v7 = PersonalityInfo::logPrefix(**v5);
        v8 = v1[11];
        v9 = (v8 + 408);
        if (v8[431] < 0)
        {
          v9 = v9->isa;
        }

        *buf = 136315650;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v64 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sFound Real UniqueID %s", buf, 0x20u);
      }

      goto LABEL_21;
    }
  }

  else if (*(v5 + 431))
  {
    goto LABEL_9;
  }

  v62 = CFUUIDCreate(0);
  v61 = CFUUIDCreateString(0, v62);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v10 = *buf;
  *v67 = *&buf[8];
  *&v67[7] = *&buf[15];
  v11 = buf[23];
  v12 = v1[11];
  if (v12[431] < 0)
  {
    operator delete(*(v12 + 51));
  }

  v13 = *v67;
  *(v12 + 51) = v10;
  *(v12 + 52) = v13;
  *(v12 + 423) = *&v67[7];
  v12[431] = v11;
  v14 = v1[5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**v1[11]);
    v16 = v1[11];
    v17 = (v16 + 408);
    if (v16[431] < 0)
    {
      v17 = v17->isa;
    }

    *buf = 136315650;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v64 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sGenerated new Real Unique ID %s", buf, 0x20u);
  }

  entitlements::ControllerImpl::saveEntitlementUniqueIdInfo(v1, v61);
  sub_100005978(&v61);
  this = sub_1000475BC(&v62);
LABEL_21:
  v18 = v1[11];
  if ((*(v18 + 431) & 0x8000000000000000) != 0)
  {
    if (!v18[52])
    {
      goto LABEL_74;
    }
  }

  else if (!*(v18 + 431))
  {
    goto LABEL_74;
  }

  v60 = 0;
  if (capabilities::ct::supportsHydra(this))
  {
    if (*(v1 + 80) != 1)
    {
      goto LABEL_30;
    }

    v19 = (*(*v1 + 12))(v1, 8, @"SendAliasIMEIInAuthentication") | 0x100;
  }

  else
  {
    v19 = 256;
  }

  v60 = v19;
LABEL_30:
  v20 = v1[11];
  v21 = *v20->__r_.__value_.__l.__data_;
  v22 = *(v21 + 49);
  if (v22 <= 1)
  {
    if (*(v21 + 49))
    {
      if (v22 == 1)
      {
        std::string::operator=(&v20[18], v20 + 17);
      }
    }

    else
    {
      entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(v1, *(v21 + 52), &v60);
    }

    goto LABEL_74;
  }

  if (v22 == 2)
  {
    v61 = 0;
    ServiceMap = Registry::getServiceMap(v1[8]);
    v24 = ServiceMap;
    if (v25 < 0)
    {
      v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
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
    *buf = v25;
    v29 = sub_100009510(&v24[1].__m_.__sig, buf);
    if (v29)
    {
      v31 = v29[3];
      v30 = v29[4];
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v24);
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v30);
        v32 = 0;
LABEL_46:
        (*(*v31 + 24))(&cf, v31, **v1[11] + 24, kTransferTargetSlot, kCarrierEntitlementsWalletDomain, 0, 1);
        *v67 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v62 = 0;
        *buf = 0;
        sub_10010B240(buf, v67);
        if (*buf)
        {
          sub_1003F510C(&v62, buf);
        }

        sub_100029A48(buf);
        v61 = v62;
        v62 = 0;
        sub_100029A48(&v62);
        sub_10000A1EC(v67);
        sub_10000A1EC(&cf);
        if ((v32 & 1) == 0)
        {
          sub_100004A34(v30);
        }

        v33 = v61;
        if (v61)
        {
          v34 = v1[5];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v36 = PersonalityInfo::logPrefix(**v1[11]);
            *buf = 136315650;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2112;
            v64 = v61;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%starget slot ID is %@, trying to get IMEI/unique-id", buf, 0x20u);
            v33 = v61;
          }

          *buf = 0;
          ctu::cf::assign(buf, v33, v35);
          entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(v1, *buf, &v60);
        }

        sub_100029A48(&v61);
        v20 = v1[11];
        goto LABEL_57;
      }
    }

    else
    {
      v31 = 0;
    }

    std::mutex::unlock(v24);
    v30 = 0;
    v32 = 1;
    goto LABEL_46;
  }

  if (v22 != 3)
  {
    goto LABEL_74;
  }

LABEL_57:
  v37 = SHIBYTE(v20[18].__r_.__value_.__r.__words[2]);
  if (v37 < 0)
  {
    if (v20[18].__r_.__value_.__l.__size_)
    {
LABEL_59:
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_60;
      }

LABEL_68:
      if (v20[18].__r_.__value_.__l.__size_)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else if (*(&v20[18].__r_.__value_.__s + 23))
  {
    goto LABEL_59;
  }

  v38 = v1[5];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = PersonalityInfo::logPrefix(*v20->__r_.__value_.__l.__data_);
    v40 = subscriber::asString();
    v41 = v1[11];
    v42 = v41 + 432;
    if (v41[455] < 0)
    {
      v42 = *v42;
    }

    *buf = 136315906;
    *&buf[4] = v39;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v64 = v40;
    v65 = 2080;
    v66 = v42;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s%sno IMEI yet, read from slot %s: %s", buf, 0x2Au);
  }

  entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(v1, 2, &v60);
  v20 = v1[11];
  LOBYTE(v37) = *(&v20[18].__r_.__value_.__s + 23);
  if ((v37 & 0x80) != 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  if (v37)
  {
    goto LABEL_74;
  }

LABEL_69:
  v43 = v1[5];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = PersonalityInfo::logPrefix(*v20->__r_.__value_.__l.__data_);
    v45 = subscriber::asString();
    v46 = v1[11];
    v47 = v46 + 432;
    if (v46[455] < 0)
    {
      v47 = *v47;
    }

    *buf = 136315906;
    *&buf[4] = v44;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v64 = v45;
    v65 = 2080;
    v66 = v47;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sno IMEI yet, read from slot %s: %s", buf, 0x2Au);
  }

  entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(v1, 1, &v60);
LABEL_74:
  std::mutex::lock((v1 + 271));
  std::string::operator=(v1 + 79, v1[11] + 18);
  std::string::operator=(v1 + 80, v1[11] + 17);
  std::mutex::unlock((v1 + 271));
  v48 = v1[11];
  if ((*(v48 + 455) & 0x8000000000000000) != 0)
  {
    if (!v48[55])
    {
      goto LABEL_88;
    }
  }

  else if (!*(v48 + 455))
  {
    goto LABEL_88;
  }

  v49 = Registry::getServiceMap(v1[8]);
  v50 = v49;
  if (v51 < 0)
  {
    v52 = (v51 & 0x7FFFFFFFFFFFFFFFLL);
    v53 = 5381;
    do
    {
      v51 = v53;
      v54 = *v52++;
      v53 = (33 * v53) ^ v54;
    }

    while (v54);
  }

  std::mutex::lock(v49);
  *buf = v51;
  v55 = sub_100009510(&v50[1].__m_.__sig, buf);
  if (v55)
  {
    v56 = v55[3];
    v57 = v55[4];
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v50);
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v57);
      v58 = 0;
      goto LABEL_86;
    }
  }

  else
  {
    v56 = 0;
  }

  std::mutex::unlock(v50);
  v57 = 0;
  v58 = 1;
LABEL_86:
  (*(*v56 + 48))(v56);
  if ((v58 & 1) == 0)
  {
    sub_100004A34(v57);
  }

LABEL_88:
  sub_1003CA228(v1[11], 0);
}

void entitlements::ControllerImpl::readPAssociatedUri_sync(entitlements::ControllerImpl *this)
{
  if ((*(*(this + 11) + 376) & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    entitlements::ControllerImpl::getCurrentPAssociatedUri(&__p, this);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_1001696A4((*(this + 11) + 352), &__p);
      sub_1003CA228(*(this + 11), 0);
      v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v3 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1003C8168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **entitlements::ControllerImpl::readPLMNPriorityInfoFromCache(entitlements::ControllerImpl *this)
{
  v18 = 0;
  ServiceMap = Registry::getServiceMap(*(this + 8));
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
  *&v22 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v22);
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
  (*(*v10 + 24))(buf, v10, ***(this + 11) + 24, @"kPLMNPriorityInfoCacheKey", kCarrierEntitlementsWalletDomain, 0, 2);
  sub_100010180(&v18, buf);
  sub_10000A1EC(buf);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v18)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    sub_100A3FA5C(v18, &v22);
    std::mutex::lock((this + 2168));
    if (*(this + 2088) == 1 && (sub_100A3F5FC(&v22, this + 1992) & 1) != 0)
    {
      v12 = *(this + 5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315394;
        *&buf[4] = v13;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sAlready has a copy of stored PLMN priority info, ignoring", buf, 0x16u);
      }
    }

    else
    {
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315394;
        *&buf[4] = v15;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sPLMN priority info retrieved from storage successfully, sending preferred networks changed event", buf, 0x16u);
      }

      sub_1003CAB60(this + 1992, &v22);
      sub_1003CAC30(this + 1536, (***(this + 11) + 52));
    }

    std::mutex::unlock((this + 2168));
    if (BYTE8(v27) == 1)
    {
      *buf = &v26;
      sub_1003EA960(buf);
    }

    if (BYTE8(v25) == 1)
    {
      *buf = &v24;
      sub_1003EA960(buf);
    }

    if (BYTE8(v23) == 1)
    {
      *buf = &v22;
      sub_1003EA960(buf);
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    v16 = PersonalityInfo::logPrefix(***(this + 11));
    sub_10176F674(v16, &v22);
  }

  return sub_10001021C(&v18);
}

void sub_1003C84E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::mutex::unlock((v3 + 2168));
  sub_1003EAA2C(va1);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::ControllerImpl::handleRemoteDevicesChanged(uint64_t this)
{
  if (*(this + 1704) == 1)
  {
    v1 = this;
    v2 = *(this + 1680);
    v3 = *(this + 1688);
    if (v2 == v3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v4 |= sub_100808894(v2);
        v5 |= sub_10080893C(v2);
        v2 += 112;
      }

      while (v2 != v3);
    }

    v6 = *(v1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(v1 + 88));
      v8 = "do NOT ";
      v10 = 136315906;
      v11 = v7;
      if (v4)
      {
        v9 = "";
      }

      else
      {
        v9 = "do NOT ";
      }

      v13 = " ";
      v12 = 2080;
      v14 = 2080;
      if (v5)
      {
        v8 = "";
      }

      v15 = v9;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%schecking remote device list - %shave cellular iPad, %shave VisionPro", &v10, 0x2Au);
    }

    if (v4)
    {
      entitlements::ControllerImpl::startTrackingEntitlement(v1, 16);
    }

    (*(*v1 + 320))(v1, 16);
    if (v5)
    {
      entitlements::ControllerImpl::startTrackingEntitlement(v1, 20);
    }

    return (*(*v1 + 320))(v1, 20);
  }

  return this;
}

const void **entitlements::ControllerImpl::readAuthorizationTokens(entitlements::ControllerImpl *this)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*(this + 8));
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
  keys[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, keys);
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
  (*(*v10 + 24))(&values, v10, ***(this + 11) + 24, @"authorization-tokens", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100010180(&theDict, &values);
  sub_10000A1EC(&values);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (theDict)
  {
    v63 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = v63;
      v63 = Mutable;
      keys[0] = v13;
      sub_1000296E0(keys);
    }

    Count = CFDictionaryGetCount(theDict);
    if (Count)
    {
      memset(keys, 0, 24);
      sub_100222418(keys, Count);
      values = 0;
      v61 = 0;
      v62 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(theDict, keys[0], values);
      v15 = keys[0];
      if (keys[1] != keys[0])
      {
        v16 = 0;
        do
        {
          v17 = values[v16];
          if (v17)
          {
            v18 = CFGetTypeID(values[v16]);
            if (v18 == CFDictionaryGetTypeID())
            {
              allocator = 0;
              Value = CFDictionaryGetValue(v17, @"value");
              v20 = Value;
              if (Value)
              {
                v21 = CFGetTypeID(Value);
                if (v21 == CFArrayGetTypeID())
                {
                  v22 = CFArrayGetCount(v20);
                  if (v22)
                  {
                    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
                    v24 = allocator;
                    allocator = MutableCopy;
                    v65 = v24;
                    sub_1000296E0(&v65);
                    CFDictionaryRemoveValue(allocator, @"value");
                    v58 = 0;
                    v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                    if (v25)
                    {
                      v26 = v58;
                      v58 = v25;
                      v65 = v26;
                      sub_1000279DC(&v65);
                    }

                    for (i = 0; i != v22; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
                      v29 = ValueAtIndex;
                      if (ValueAtIndex)
                      {
                        v30 = CFGetTypeID(ValueAtIndex);
                        if (v30 == CFStringGetTypeID())
                        {
                          v57 = 0;
                          v31 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          if (v31)
                          {
                            v32 = v57;
                            v57 = v31;
                            v65 = v32;
                            sub_1000296E0(&v65);
                          }

                          CFDictionarySetValue(v57, @"value", v29);
                          CFArrayAppendValue(v58, v57);
                          sub_1000296E0(&v57);
                        }
                      }
                    }

                    CFDictionarySetValue(allocator, @"collection", v58);
                    sub_1000279DC(&v58);
                  }
                }

                else
                {
                  v33 = CFGetTypeID(v20);
                  if (v33 == CFNullGetTypeID())
                  {
                    v34 = CFDictionaryCreateMutableCopy(0, 0, v17);
                    v35 = allocator;
                    allocator = v34;
                    v65 = v35;
                    sub_1000296E0(&v65);
                    CFDictionaryRemoveValue(allocator, @"value");
                    CFDictionarySetValue(allocator, @"collection", kCFNull);
                  }
                }
              }

              v36 = keys[0][v16];
              v37 = sub_1013E5D20(0);
              if (CFStringCompare(v36, v37, 0) == kCFCompareEqualTo)
              {
                v38 = allocator;
                if (!allocator)
                {
                  v39 = CFDictionaryCreateMutableCopy(0, 0, v17);
                  v40 = allocator;
                  allocator = v39;
                  v65 = v40;
                  sub_1000296E0(&v65);
                  v38 = allocator;
                }

                CFDictionaryRemoveValue(v38, @"scheduled-ts");
              }

              if (allocator)
              {
                v41 = allocator;
              }

              else
              {
                v41 = v17;
              }

              CFDictionarySetValue(v63, keys[0][v16], v41);
              sub_1000296E0(&allocator);
            }
          }

          ++v16;
          v15 = keys[0];
        }

        while (v16 < keys[1] - keys[0]);
      }

      if (values)
      {
        v61 = values;
        operator delete(values);
        v15 = keys[0];
      }

      if (v15)
      {
        keys[1] = v15;
        operator delete(v15);
      }
    }

    std::mutex::lock((this + 2168));
    sub_100010180(&values, &v63);
    v42 = (this + 2096);
    if ((this + 2096) != &values)
    {
      keys[0] = *v42;
      *v42 = values;
      values = 0;
      sub_10001021C(keys);
    }

    sub_10001021C(&values);
    std::mutex::unlock((this + 2168));
    v43 = *(this + 5);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = PersonalityInfo::logPrefix(***(this + 11));
      v45 = CFDictionaryGetCount(v63);
      LODWORD(keys[0]) = 136315650;
      *(keys + 4) = v44;
      WORD2(keys[1]) = 2080;
      *(&keys[1] + 6) = " ";
      HIWORD(keys[2]) = 2048;
      keys[3] = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sAuthorization tokens (%zu) retrieved from keychain successfully", keys, 0x20u);
    }

    sub_1000296E0(&v63);
  }

  v46 = Registry::getServiceMap(*(this + 8));
  v47 = v46;
  if (v48 < 0)
  {
    v49 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
    v50 = 5381;
    do
    {
      v48 = v50;
      v51 = *v49++;
      v50 = (33 * v50) ^ v51;
    }

    while (v51);
  }

  std::mutex::lock(v46);
  keys[0] = v48;
  v52 = sub_100009510(&v47[1].__m_.__sig, keys);
  if (v52)
  {
    v53 = v52[3];
    v54 = v52[4];
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v47);
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v54);
      v55 = 0;
      goto LABEL_60;
    }
  }

  else
  {
    v53 = 0;
  }

  std::mutex::unlock(v47);
  v54 = 0;
  v55 = 1;
LABEL_60:
  (*(*v53 + 48))(v53);
  if ((v55 & 1) == 0)
  {
    sub_100004A34(v54);
  }

  return sub_10001021C(&theDict);
}

void sub_1003C8DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, const void *a16, void *__p, uint64_t a18, uint64_t a19, const void *a20, const void *a21, uint64_t a22, void *a23, uint64_t a24)
{
  sub_1000296E0(&a16);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_1000296E0(&a20);
  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

uint64_t entitlements::ControllerImpl::checkReadImsi(entitlements::ControllerImpl *this, int a2)
{
  memset(&__dst, 0, sizeof(__dst));
  v4 = *(this + 11);
  if (*(v4 + 87) < 0)
  {
    sub_100005F2C(&__dst, *(v4 + 64), *(v4 + 72));
  }

  else
  {
    __dst = *(v4 + 64);
  }

  if (a2)
  {
    v5 = *(this + 11);
    if (*(v5 + 87) < 0)
    {
      **(v5 + 64) = 0;
      *(v5 + 72) = 0;
    }

    else
    {
      *(v5 + 64) = 0;
      *(v5 + 87) = 0;
    }
  }

  v6 = *(this + 11);
  v7 = *(v6 + 87);
  if (v7 < 0)
  {
    v7 = *(v6 + 72);
  }

  if (!v7 && *(this + 80) == 1)
  {
    if (*(**v6 + 49) == 3)
    {
      memset(&__str, 0, sizeof(__str));
      entitlements::ControllerImpl::getLastUsedImsi(&__str, this);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::operator=((*(this + 11) + 64), &__str);
      }

      v9 = *(this + 5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(***(this + 11));
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v36 = 2080;
        v37 = p_str;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sIMSI for limited use SIM: (%s)", buf, 0x20u);
      }

      v12 = *(this + 11);
      v13 = *(v12 + 87);
      if (v13 < 0)
      {
        v13 = *(v12 + 72);
      }

      if (!v13)
      {
        entitlements::ControllerImpl::initializeLimitedUseSim_sync(this);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      sGetSubscriberSimInterface();
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315394;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sGiven IMSI is empty, will wait for real one", buf, 0x16u);
      }
    }
  }

  if ((*(this + 80) & 1) == 0)
  {
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315394;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sSkipped reading IMSI - personality is not active", buf, 0x16u);
    }
  }

  v18 = *(this + 11);
  v19 = *(v18 + 87);
  if (v19 < 0)
  {
    if (!*(v18 + 72))
    {
LABEL_57:
      v29 = 0;
      goto LABEL_58;
    }
  }

  else if (!*(v18 + 87))
  {
    goto LABEL_57;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = __dst.__r_.__value_.__l.__size_;
  }

  if (!v20)
  {
    goto LABEL_57;
  }

  v21 = *(v18 + 72);
  if (v19 >= 0)
  {
    v21 = *(v18 + 87);
  }

  if (v20 == v21)
  {
    v22 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
    v23 = v19 >= 0 ? (v18 + 64) : *(v18 + 64);
    if (!memcmp(v22, v23, v20))
    {
      goto LABEL_57;
    }
  }

  v24 = *(this + 5);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = PersonalityInfo::logPrefix(**v18);
    p_dst = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    v27 = *(this + 11);
    v28 = (v27 + 64);
    if (*(v27 + 87) < 0)
    {
      v28 = *v28;
    }

    *buf = 136315906;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v36 = 2080;
    v37 = p_dst;
    v38 = 2080;
    v39 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sIMSI changed %s -> %s", buf, 0x2Au);
    v18 = *(this + 11);
  }

  v29 = 1;
LABEL_58:
  sub_1003CA228(v18, 0);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v29;
}

void sub_1003C9E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, const void *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_100005978((v46 - 168));
  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_100045C8C(&a24);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_100005978(&a31);
  if (a40)
  {
    sub_100004A34(a40);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::handleWifiAvailable_sync(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = *a2;
  v6 = v5 == 1 || *(a1 + 1769) == 1;
  v7 = *(a1 + 1768);
  if (v7 != v5 || a3 != 0)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(a1 + 88));
      v16 = 136315906;
      v17 = v10;
      v18 = 2080;
      v19 = " ";
      v20 = 2080;
      v21 = asString();
      v22 = 2080;
      v23 = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sWifi availability is changing from %s to %s", &v16, 0x2Au);
      v7 = *(a1 + 1768);
    }

    v11 = v7 == 1 || *(a1 + 1769) == 1;
    if ((v6 != v11 || a3) && entitlements::ControllerImpl::canReachServerOnInternet(a1, 15))
    {
      v12 = *(a1 + 104);
      for (i = *(a1 + 112); v12 != i; v12 += 2)
      {
        v14 = *v12;
        v15 = v12[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        entitlements::CEHTTPDriver::handleWifiAvailable(v14, v11);
        if (v15)
        {
          sub_100004A34(v15);
        }
      }

      if (v11)
      {
        if ((a3 & 1) == 0)
        {
          entitlements::ControllerImpl::updateAndSchedule_sync(a1, 4);
        }
      }
    }
  }
}

void sub_1003CA228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 544);
  for (i = *(a1 + 552); v2 != i; v2 += 2)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        if (*v2)
        {
          (***v2)(*v2, a2);
        }

        sub_100004A34(v7);
      }
    }
  }
}

void sub_1003CA2CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_100004AA0(&v4, (a1 + 8));
  v3 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  operator new();
}

void sub_1003CA400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003F35D0(va);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

void sub_1003CA43C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_100004AA0(&v4, (a1 + 8));
  v3 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  operator new();
}

void sub_1003CA584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003F48FC(va);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::readUniqueId(entitlements::ControllerImpl *this@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::mutex::lock((this + 2168));
  std::string::operator=(a2, this + 79);
  std::mutex::unlock((this + 2168));
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::mutex::lock((this + 2168));
    if ((*(this + 2104) & 1) == 0)
    {
      *(this + 2104) = 1;
      std::mutex::unlock((this + 2168));
      sub_100004AA0(buf, this + 1);
      v5 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v5);
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_100004AA0(buf, this + 1);
      operator new();
    }

    std::mutex::unlock((this + 2168));
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = PersonalityInfo::logPrefix(***(this + 11));
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = 2080;
    v11 = v8;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#D %s%sUniqueid: %s", buf, 0x20u);
  }
}

void sub_1003CA7E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::getUniqueDeviceAccountID(entitlements::ControllerImpl *this@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::mutex::lock((this + 2168));
  std::string::operator=(a2, this + 80);

  std::mutex::unlock((this + 2168));
}

void sub_1003CA890(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 2168));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getPhoneNumberSignature(entitlements::ControllerImpl *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1003F4A2C;
  v5[3] = &unk_101E4A640;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1003F505C;
    v10 = &unk_101E4A700;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1003F4FE4;
    v10 = &unk_101E4A6E0;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

const void **entitlements::ControllerImpl::savePhoneNumberSignatureToKeychain_sync(const void **this, const __CFDictionary *a2)
{
  if (!a2)
  {
    return this;
  }

  v2 = this;
  Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  ServiceMap = Registry::getServiceMap(v2[8]);
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_10:
  (*(*v11 + 16))(v11, **v2[11] + 24, @"signature", Data, kCarrierEntitlementsWalletDomain, 0, 4, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  *(v2 + 1725) = 1;
  return sub_10002D760(&Data);
}

void sub_1003CAB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  if ((v9 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_10002D760(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003CAB60(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  if (*(a1 + 96) == 1)
  {
    sub_1003EC234(a1, a2);
    sub_1003EC234(v4, a2 + 32);
    sub_1003EC234(a1 + 64, a2 + 64);
  }

  else
  {
    sub_1003EA5B8(a1, a2);
    sub_1003EA5B8(v4, a2 + 32);
    sub_1003EA5B8((a1 + 64), a2 + 64);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1003CABEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 56) == 1)
  {
    sub_1003EA960(&a10);
  }

  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1003EA960(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CAC30(uint64_t a1, unsigned int *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/preferred_networks_changed");
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

void sub_1003CACD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::getCurrentPAssociatedUri@<X0>(uint64_t *__return_ptr a1@<X8>, Registry **this@<X0>)
{
  v16 = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  *&v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
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
  (*(*v12 + 24))(&v15, v12, **this[11] + 24, @"p_associated_uri", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100060DE8(&v16, &v15);
  sub_10000A1EC(&v15);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *a1 = v17;
  a1[2] = v18;
  return sub_100005978(&v16);
}

void sub_1003CAE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::copyCurrentServiceToken(uint64_t *__return_ptr a1@<X8>, Registry **this@<X0>)
{
  memset(&cf[2], 0, 7);
  memset(cf, 0, 15);
  ServiceMap = Registry::getServiceMap(this[8]);
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
  v30 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v30);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_8:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_9:
  (*(*v12 + 24))(cf, v12, **this[11] + 24, kServiceTokensCacheKey, kCarrierEntitlementsWalletDomain, 0, 4);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (!cf[0])
  {
    goto LABEL_26;
  }

  v14 = CFGetTypeID(cf[0]);
  if (v14 == CFStringGetTypeID())
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    ctu::cf::assign();
    v15 = 0;
    LOBYTE(v16) = 0;
    v17 = 0;
    v18 = v30;
    v19 = v31;
    LODWORD(cf[2]) = v32;
    *(&cf[2] + 3) = *(&v32 + 3);
    v20 = HIBYTE(v32);
    goto LABEL_14;
  }

  v22 = CFGetTypeID(cf[0]);
  if (v22 != CFDictionaryGetTypeID())
  {
LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(cf[0], kServiceTokenValue);
  v18 = Value;
  if (Value)
  {
    v24 = CFGetTypeID(Value);
    if (v24 != CFStringGetTypeID())
    {
      v18 = 0;
    }
  }

  v25 = CFDictionaryGetValue(cf[0], kServiceTokenType);
  v26 = v25;
  if (!v25)
  {
    v16 = 0;
    if (v18)
    {
      goto LABEL_33;
    }

LABEL_27:
    v19 = 0;
    v20 = 0;
    v17 = 0;
    LOBYTE(v16) = 0;
    v15 = 0;
    goto LABEL_28;
  }

  v27 = CFGetTypeID(v25);
  if (v27 == CFNumberGetTypeID())
  {
    v16 = v26;
  }

  else
  {
    v16 = 0;
  }

  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_33:
  v30 = 0;
  v31 = 0;
  v32 = 0;
  ctu::cf::assign();
  v18 = v30;
  v19 = v31;
  LODWORD(cf[2]) = v32;
  *(&cf[2] + 3) = *(&v32 + 3);
  v20 = HIBYTE(v32);
  if (v16)
  {
    v30 = 0;
    ctu::cf::assign(&v30, v16, v28);
    v17 = v30;
    v15 = v30 >> 8;
    LOBYTE(v16) = 1;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

LABEL_14:
  if (v20 < 0)
  {
    sub_100005F2C(a1, v18, v19);
    v21 = 1;
    goto LABEL_29;
  }

LABEL_28:
  v21 = 0;
  *a1 = v18;
  a1[1] = v19;
  *(a1 + 4) = cf[2];
  *(a1 + 19) = *(&cf[2] + 3);
  *(a1 + 23) = v20;
LABEL_29:
  a1[3] = v17 | (v15 << 8);
  *(a1 + 32) = v16;
  *(a1 + 33) = cf[1];
  *(a1 + 9) = *(&cf[1] + 3);
  sub_10000A1EC(cf);
  if (v21)
  {
    operator delete(v18);
  }
}

void sub_1003CB220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10000A1EC(&a9);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::copyCurrentEntitlementSubscriberId@<X0>(uint64_t *__return_ptr a1@<X8>, Registry **this@<X0>)
{
  v16 = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  *&v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
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
  (*(*v12 + 24))(&v15, v12, **this[11] + 24, kEntitlementsSubscriberIDCacheKey, kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100060DE8(&v16, &v15);
  sub_10000A1EC(&v15);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *a1 = v17;
  a1[2] = v18;
  return sub_100005978(&v16);
}

void sub_1003CB41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::readAuthTokenForDriver@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  (*(*a1 + 616))(&v7);
  sub_1001B1A54(&v6, &v7);
  sub_10000A1EC(&v7);
  if (v6)
  {
    v7 = 0uLL;
    v8 = 0;
    ctu::cf::assign();
    v3 = v8;
    *a2 = v7;
    *(a2 + 16) = v3;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v4;
  return sub_10002D760(&v6);
}

void sub_1003CB528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_10002D760(&a10);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::saveAuthTokenForDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (v5 == 1)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_100034C50(&v8, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    v14 = 0;
    v15 = 0;
    v13 = 0;
    sub_100034C50(&v13, v8, v9, v9 - v8);
    v12 = 0;
    __p = 0;
    v17 = 0;
    v18 = 0;
    sub_100034C50(&__p, v13, v14, v14 - v13);
    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v12;
      v12 = v19;
      v20 = v6;
      sub_10002D760(&v20);
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v7 = v12;
    v11 = v12;
    v12 = 0;
    sub_10002D760(&v12);
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*a1 + 624))(a1, a2, @"auth-token", v7, 4);
  if (v5)
  {
    sub_10002D760(&v11);
    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }
  }
}

void sub_1003CB6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_10002D760(&a15);
  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::readGbaAuthForDriver@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  (*(*a1 + 616))(&v7);
  sub_100060DE8(&v6, &v7);
  sub_10000A1EC(&v7);
  if (v6)
  {
    v7 = 0;
    v8 = 0uLL;
    ctu::cf::assign();
    *&v9[7] = *(&v8 + 7);
    *v9 = v8;
    v3 = HIBYTE(v8);
    v4 = v8;
    *a2 = v7;
    *(a2 + 8) = v4;
    *(a2 + 15) = *&v9[7];
    *(a2 + 23) = v3;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return sub_100005978(&v6);
}

void sub_1003CB828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::saveGbaAuthForDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  if (v5 == 1)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v8, *a3, *(a3 + 8));
    }

    else
    {
      *v8 = *a3;
      v9 = *(a3 + 16);
    }

    if (SHIBYTE(v9) < 0)
    {
      sub_100005F2C(__dst, v8[0], v8[1]);
    }

    else
    {
      *__dst = *v8;
      v13 = v9;
    }

    v11 = 0;
    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v15 = v13;
    }

    v16 = 0;
    if (ctu::cf::convert_copy())
    {
      v7 = v11;
      v11 = v16;
      v17 = v7;
      sub_100005978(&v17);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v11;
    v10 = v11;
    v11 = 0;
    sub_100005978(&v11);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*a1 + 624))(a1, a2, @"gba_auth", v6, 4);
  if (v5)
  {
    sub_100005978(&v10);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1003CBA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::readValueForDriver(uint64_t a1, void (****a2)(void **__return_ptr), void *a3, uint64_t a4)
{
  v24 = 0;
  (***a2)(&v22);
  v8 = v22[7];
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v8 > 1)
  {
    (***a2)(&v22);
    v9 = CFStringCreateWithFormat(0, 0, @"%@%zu", a3, v22[7]);
    v10 = v24;
    v24 = v9;
    v25 = v10;
    sub_100005978(&v25);
    if (v23)
    {
      sub_100004A34(v23);
    }
  }

  else
  {
    v22 = a3;
    sub_10021D11C(&v24, &v22);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  v22 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v22);
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
      v20 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_15:
  (*(*v19 + 24))(v19, ***(a1 + 88) + 24, v24, kCarrierEntitlementsWalletDomain, 0, a4);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  return sub_100005978(&v24);
}

void sub_1003CBC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    sub_100004A34(a9);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::saveValueForDriver(uint64_t a1, void (****a2)(void **__return_ptr), void *a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  (***a2)(&v24);
  v10 = v24[7];
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v10 > 1)
  {
    (***a2)(&v24);
    v11 = CFStringCreateWithFormat(0, 0, @"%@%zu", a3, v24[7]);
    v12 = v26;
    v26 = v11;
    v27 = v12;
    sub_100005978(&v27);
    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  else
  {
    v24 = a3;
    sub_10021D11C(&v26, &v24);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  v24 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v24);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
LABEL_15:
  (*(*v21 + 16))(v21, ***(a1 + 88) + 24, v26, a4, kCarrierEntitlementsWalletDomain, 0, a5, 0);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  return sub_100005978(&v26);
}

void sub_1003CBEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    sub_100004A34(a9);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::readUniqueIdAndAliasIdFromBB(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = *(a1 + 88);
  if ((*(v6 + 63) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 48))
    {
      goto LABEL_6;
    }
  }

  else if (*(v6 + 63))
  {
    goto LABEL_6;
  }

  sGetSubscriberSimInterface();
  v6 = *(a1 + 88);
LABEL_6:
  if ((*(v6 + 39) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 24))
    {
      goto LABEL_18;
    }
  }

  else if (*(v6 + 39))
  {
    goto LABEL_18;
  }

  v7 = *(a1 + 1560);
  if (v7)
  {
    v8 = a1 + 1560;
    do
    {
      if (*(v7 + 32) >= v4)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < v4));
    }

    while (v7);
    if (v8 != a1 + 1560 && *(v8 + 32) <= v4)
    {
      std::string::operator=((v6 + 16), (v8 + 40));
      v6 = *(a1 + 88);
    }
  }

LABEL_18:
  if ((*(v6 + 455) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 440))
    {
      goto LABEL_26;
    }
  }

  else if (*(v6 + 455))
  {
    goto LABEL_26;
  }

  std::string::operator=((v6 + 432), (v6 + 16));
  v9 = *(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  v6 = *(a1 + 88);
  if (v10)
  {
    v11 = PersonalityInfo::logPrefix(**v6);
    v12 = subscriber::asString();
    v13 = *(a1 + 88);
    v14 = (v13 + 432);
    if (*(v13 + 455) < 0)
    {
      v14 = *v14;
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315906;
    *(__str.__r_.__value_.__r.__words + 4) = v11;
    WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
    *(&__str.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(__str.__r_.__value_.__r.__words[2]) = 2080;
    v24 = v12;
    v25 = 2080;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sUnique ID for slot %s from BB is %s", &__str, 0x2Au);
    v6 = *(a1 + 88);
  }

LABEL_26:
  if (*(v6 + 479) < 0)
  {
    **(v6 + 456) = 0;
    *(v6 + 464) = 0;
  }

  else
  {
    *(v6 + 456) = 0;
    *(v6 + 479) = 0;
  }

  if (a3[1])
  {
    if (*a3 == 1)
    {
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(***(a1 + 88));
        LODWORD(__str.__r_.__value_.__l.__data_) = 136315394;
        *(__str.__r_.__value_.__r.__words + 4) = v16;
        WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = " ";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%salias ID is requried in getAuthentication", &__str, 0x16u);
      }

      v17 = *(a1 + 1552);
      v18 = (a1 + 1560);
      if (v17 != (a1 + 1560))
      {
        while (!subscriber::isValidSimSlot() || *(v17 + 8) == v4)
        {
          v19 = v17[1];
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
              v20 = v17[2];
              v21 = *v20 == v17;
              v17 = v20;
            }

            while (!v21);
          }

          v17 = v20;
          if (v20 == v18)
          {
            goto LABEL_48;
          }
        }
      }

      if (v17 != v18)
      {
        std::string::operator=((*(a1 + 88) + 456), (v17 + 5));
      }
    }
  }

  else
  {
    v22 = *(a1 + 88);
    if (*(v22 + 455) < 0)
    {
      **(v22 + 432) = 0;
      *(v22 + 440) = 0;
    }

    else
    {
      *(v22 + 432) = 0;
      *(v22 + 455) = 0;
    }
  }

LABEL_48:
  sub_1003CA228(*(a1 + 88), 0);
}

void sub_1003CC2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **entitlements::ControllerImpl::copyCurrentEntitlementUniqueIdInfo@<X0>(uint64_t *__return_ptr a1@<X8>, Registry **this@<X0>)
{
  v16 = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  *&v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
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
  (*(*v12 + 24))(&v15, v12, **this[11] + 24, @"unique_dev_id", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100060DE8(&v16, &v15);
  sub_10000A1EC(&v15);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *a1 = v17;
  a1[2] = v18;
  return sub_100005978(&v16);
}

void sub_1003CC470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::saveEntitlementUniqueIdInfo(Registry **this, const __CFString *a2)
{
  ServiceMap = Registry::getServiceMap(this[8]);
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
  v14 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
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
  (*(*v12 + 16))(v12, **this[11] + 24, @"unique_dev_id", a2, kCarrierEntitlementsWalletDomain, 0, 4, @"entitlementsUniqueID");
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1003CC604(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::handleUpdateTimer_sync(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    v10 = v3;
    v11 = 2080;
    v12 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sEntitlements Timer expired, updating entitlements", buf, 0x16u);
  }

  sub_1003CC7D0(this + 312);
  v4 = *(this + 13);
  v5 = *(this + 14);
  while (v4 != v5)
  {
    (*(**v4 + 256))(*v4);
    v4 += 2;
  }

  entitlements::ControllerImpl::invalidateResults_sync(this, 5, 3);
  entitlements::ControllerImpl::updateAndSchedule_sync(this, 5);
  v6 = ***(this + 11);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v8 = *(v6 + 40);
  }

  sub_100819B14(&event::entitlements::refreshEntitlementCache, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CC7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CC7D0(uint64_t result)
{
  v1 = *(result + 80);
  if (v1 != (result + 88))
  {
    do
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        *(v1 + 8) = v2 - 1;
      }

      v3 = v1[1];
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
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != (result + 88));
  }

  return result;
}

void entitlements::ControllerImpl::setEntitlement(uint64_t a1, int a2, uint64_t *a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::getProvisioning(uint64_t a1, int a2, uint64_t *a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::setProvisioning(uint64_t a1, int a2, uint64_t a3)
{
  sub_1003EAAA8(&v4, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1003CCD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::enablePushNotification(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::disablePushNotification(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_1003CD1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100270CFC(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::queryVVMAccountStatus(uint64_t a1, void *a2)
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

void entitlements::ControllerImpl::updatePushToken(uint64_t a1, __int128 *a2, const void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v6 = *(a2 + 2);
  }

  sub_10005C7A4(&v7, a3);
  v8[0] = 0;
  v8[1] = 0;
  sub_100004AA0(v8, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::updatePushToken_sync(uint64_t a1, uint64_t a2, CFStringRef *a3, uint64_t a4)
{
  if ((*(*a1 + 72))(a1, 3))
  {
    v8 = *(a1 + 104);
    for (i = *(a1 + 112); v8 != i; v8 += 2)
    {
      if (sub_1009C1740(*v8, 3u) && ((*(**v8 + 376))(*v8, 12, 0) & 1) == 0)
      {
        theString2 = 0;
        (***v8)(buf);
        sub_100A838B4(*buf, &theString2);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (!*a3 || theString2 && CFStringCompare(*a3, theString2, 0) == kCFCompareEqualTo)
        {
          v13 = 0;
          if (*(***(a1 + 88) + 49))
          {
            v10 = *(***(a1 + 88) + 49) == 3;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            v15 = buf;
            *buf = 0;
            sub_100070B94(a1, &v15);
            v13 = *buf;
          }

          (*(**v8 + 192))(*v8, a2, &v13, a4);
        }

        sub_100005978(&theString2);
      }
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdatePushToken is not supported", buf, 0x16u);
    }
  }
}

void sub_1003CD6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getSIMStatusWithCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5, NSObject **a6, void **a7)
{
  v7 = *(a3 + 3);
  v8 = a1;
  v9 = v7;
  v10 = a2;
  sub_10006F1C0();
}

void sub_1003CD960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CD97C(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(a1 + 208) == 1)
  {
    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }

    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }
  }

  v6 = (a1 + 120);
  sub_1000087B4(&v6);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_1003CDE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CDFF8(void *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10004F058(a1);
}

void entitlements::ControllerImpl::getSigningKeysWithCallback(uint64_t a1, int a2, uint64_t a3, __int128 **a4, NSObject **a5, uint64_t a6)
{
  v6 = *(a3 + 3);
  v7 = a1;
  v8 = v6;
  v9 = a2;
  sub_10006F1C0();
}

void sub_1003CE22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void entitlements::ControllerImpl::getBlindSignaturesWithCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, NSObject **a5, uint64_t a6)
{
  v6 = *(a3 + 3);
  v7 = a1;
  v8 = v6;
  v9 = a2;
  sub_10006F1C0();
}

void sub_1003CE498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void entitlements::ControllerImpl::enableServiceWithCallback(uint64_t a1, int a2, uint64_t a3, __int128 *a4, NSObject **a5, uint64_t a6)
{
  v6 = *(a3 + 3);
  v7 = a1;
  v8 = v6;
  v9 = a2;
  sub_10006F1C0();
}

void sub_1003CE7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, dispatch_object_t object)
{
  if (a2)
  {
    if (*(v33 + 55) < 0)
    {
      operator delete(*(v33 + 32));
    }

    v35 = *(v33 + 24);
    if (v35)
    {
      sub_100004A34(v35);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CEBFC(void *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10004F058(a1);
}

void entitlements::ControllerImpl::getAuthTokenWithCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v6 = a1;
  v7 = a2;
  sub_10006F1C0();
}

void sub_1003CEDDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void entitlements::ControllerImpl::handleIDSTrustToken_sync(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    ctu::parse_hex();
    ctu::base64::encode();
    *__p = *buf;
    v27 = *&buf[16];
    if ((atomic_load_explicit(&qword_101FBA340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA340))
    {
      sub_1000CE0A8(buf);
      qword_101FBA338 = *buf;
      __cxa_guard_release(&qword_101FBA340);
    }

    v7 = qword_101FBA338;
    if (qword_101FBA338)
    {
      v8 = v27 >= 0 ? __p : __p[0];
      v9 = v27 >= 0 ? HIBYTE(v27) : __p[1];
      memset(buf, 0, sizeof(buf));
      sub_1001E0D88(buf, v8, &v9[v8], v9);
      sub_1009A2010(v7, "", buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    sub_100004AA0(buf, (a1 + 8));
    v11 = *buf;
    v10 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v12 = *a3;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1174405120;
    v21[2] = sub_1003CF258;
    v21[3] = &unk_101E49720;
    v21[4] = a1;
    v21[5] = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *buf = v21;
    (*(*a1 + 184))(a1, a2, v12, __p, a1 + 24, buf);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#W %s%s[2] GetIDSTrustToken failed", buf, 0x16u);
    }

    v15 = (a1 + 800);
    v16 = *(a1 + 808);
    if (v16 != (a1 + 800))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003EC074(buf, (v16 + 2));
        v17 = *buf;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1174405120;
        v18[2] = sub_1003CF768;
        v18[3] = &unk_101E49750;
        sub_1003EC074(&object, buf);
        dispatch_async(v17, v18);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v16 = v16[1];
      }

      while (v16 != v15);
    }

    sub_1003E9B08(v15);
  }
}

void sub_1003CF1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_101FBA340);
  if (__p)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_1003CF258(void *a1, uint64_t a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = *(v7 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(***(v7 + 88));
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v11;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s[3] Received Carrier Auth Token", &buf, 0x16u);
          v10 = *(v7 + 40);
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = PersonalityInfo::logPrefix(***(v7 + 88));
          v13 = *(v7 + 816);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = v12;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v26 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sfAuthTokenConsumers size %zu", &buf, 0x20u);
        }

        memset(&buf, 0, sizeof(buf));
        if (a3)
        {
          v14 = *(*a2 + 24);
          if (v14)
          {
            std::string::operator=(&buf, v14);
          }
        }

        v15 = (v7 + 800);
        for (i = *(v7 + 808); i != v15; i = i[1])
        {
          v23 = 0;
          v24 = 0;
          sub_1003EC074(&v23, (i + 2));
          v17 = v23;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1174405120;
          v18[2] = sub_1003CF574;
          v18[3] = &unk_101E496F0;
          sub_1003EC074(&object, &v23);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = buf;
          }

          v22 = a3;
          dispatch_async(v17, v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v24)
          {
            _Block_release(v24);
          }

          if (v23)
          {
            dispatch_release(v23);
          }
        }

        sub_1003E9B08(v15);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1003CF514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void sub_1003CF588(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  (*(v4 + 16))(v4, __p, *a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CF610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003CF62C(uint64_t a1, uint64_t a2)
{
  result = sub_1003EC074((a1 + 32), a2 + 32);
  if (*(a2 + 71) < 0)
  {
    return sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_1003CF698(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003CF6D8(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t sub_1003CF73C(uint64_t result, uint64_t a2)
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

void sub_1003CF758(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003CF768(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v2 = 0;
  sub_1003CF7D4((a1 + 40), __p);
  if (SHIBYTE(v2) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CF7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CF7D4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  (*(v2 + 16))();
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CF838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003CF860(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void entitlements::ControllerImpl::transferSIMServiceWithCallback(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, NSObject **a5, void **a6)
{
  v58 = *(a3 + 3);
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sTransferSIMService request: {", buf, 0x16u);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 24) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[3] & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(a4 + 23) >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sAuthToken: %s", buf, 0x20u);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 241) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 241) & 1) == 0)
    {
      sub_1000D1644();
    }

    v13 = *(a4 + 240);
    *buf = 136315650;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1026;
    *&buf[24] = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sIsWebviewRequested: %{public}d", buf, 0x1Cu);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 272) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[34] & 1) == 0)
    {
      sub_1000D1644();
    }

    v15 = a4 + 31;
    if (*(a4 + 271) < 0)
    {
      v15 = a4[31];
    }

    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2082;
    *&buf[24] = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sTransferFlowType: %{public}s", buf, 0x20u);
    v8 = *(a1 + 40);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sTarget: {", buf, 0x16u);
    v8 = *(a1 + 40);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v17;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sIccidStates: [", buf, 0x16u);
  }

  v19 = a4[14];
  for (i = a4[15]; v19 != i; v19 += 96)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    *__p = 0u;
    memset(buf, 0, sizeof(buf));
    if (*(v19 + 23) < 0)
    {
      sub_100005F2C(buf, *v19, *(v19 + 8));
    }

    else
    {
      v20 = *v19;
      *&buf[16] = *(v19 + 16);
      *buf = v20;
    }

    sub_10006F264(&buf[24], (v19 + 24));
    sub_10006F264(&__p[1], (v19 + 56));
    WORD4(v64) = *(v19 + 88);
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = PersonalityInfo::logPrefix(***(a1 + 88));
      v65[0] = 136315394;
      *&v65[1] = v22;
      v66 = 2080;
      v67 = " ";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s{", v65, 0x16u);
      v21 = *(a1 + 40);
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = PersonalityInfo::logPrefix(***(a1 + 88));
      v24 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v24 = *buf;
      }

      v65[0] = 136315650;
      *&v65[1] = v23;
      v66 = 2080;
      v67 = " ";
      v68 = 2080;
      v69 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%siccid: %s", v65, 0x20u);
      v21 = *(a1 + 40);
    }

    if (LOBYTE(__p[0]) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((__p[0] & 1) == 0)
      {
        sub_1000D1644();
      }

      if (v61 >= 0)
      {
        v26 = &buf[24];
      }

      else
      {
        v26 = *&buf[24];
      }

      v65[0] = 136315650;
      *&v65[1] = v25;
      v66 = 2080;
      v67 = " ";
      v68 = 2082;
      v69 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%simei: %{public}s", v65, 0x20u);
      v21 = *(a1 + 40);
    }

    if (v64 == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((v64 & 1) == 0)
      {
        sub_1000D1644();
      }

      if (v63 >= 0)
      {
        v28 = &__p[1];
      }

      else
      {
        v28 = __p[1];
      }

      v65[0] = 136315650;
      *&v65[1] = v27;
      v66 = 2080;
      v67 = " ";
      v68 = 2082;
      v69 = v28;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%smeid: %{public}s", v65, 0x20u);
      v21 = *(a1 + 40);
    }

    if (BYTE9(v64) == 1 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v29 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((BYTE9(v64) & 1) == 0)
      {
        sub_1000D1644();
      }

      v65[0] = 136315650;
      *&v65[1] = v29;
      v66 = 2080;
      v67 = " ";
      v68 = 1026;
      LODWORD(v69) = BYTE8(v64);
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sprofileRelease: %{public}d", v65, 0x1Cu);
      v21 = *(a1 + 40);
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v30 = PersonalityInfo::logPrefix(***(a1 + 88));
      v65[0] = 136315394;
      *&v65[1] = v30;
      v66 = 2080;
      v67 = " ";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s}", v65, 0x16u);
    }

    if (v64 == 1 && SHIBYTE(v63) < 0)
    {
      operator delete(__p[1]);
    }

    if (LOBYTE(__p[0]) == 1 && SHIBYTE(v61) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v31 = *(a1 + 40);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v32;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s]", buf, 0x16u);
    v31 = *(a1 + 40);
  }

  if (*(a4 + 160) == 1 && os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[20] & 1) == 0)
    {
      sub_1000D1644();
    }

    v34 = a4 + 17;
    if (*(a4 + 159) < 0)
    {
      v34 = a4[17];
    }

    *buf = 136315650;
    *&buf[4] = v33;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2082;
    *&buf[24] = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sDeviceType: %{public}s", buf, 0x20u);
    v31 = *(a1 + 40);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v35 = PersonalityInfo::logPrefix(***(a1 + 88));
    v36 = a4 + 11;
    if (*(a4 + 111) < 0)
    {
      v36 = a4[11];
    }

    *buf = 136315650;
    *&buf[4] = v35;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2082;
    *&buf[24] = v36;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%seid: %{public}s", buf, 0x20u);
    v31 = *(a1 + 40);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v37 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v37;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
    v31 = *(a1 + 40);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v38 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v38;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sSource: {", buf, 0x16u);
    v31 = *(a1 + 40);
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v39 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v39;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sIccidStates: [", buf, 0x16u);
  }

  v41 = a4[4];
  for (j = a4[5]; v41 != j; v41 += 96)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    *__p = 0u;
    memset(buf, 0, sizeof(buf));
    if (*(v41 + 23) < 0)
    {
      sub_100005F2C(buf, *v41, *(v41 + 8));
    }

    else
    {
      v42 = *v41;
      *&buf[16] = *(v41 + 16);
      *buf = v42;
    }

    sub_10006F264(&buf[24], (v41 + 24));
    sub_10006F264(&__p[1], (v41 + 56));
    WORD4(v64) = *(v41 + 88);
    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = PersonalityInfo::logPrefix(***(a1 + 88));
      v65[0] = 136315394;
      *&v65[1] = v44;
      v66 = 2080;
      v67 = " ";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%s{", v65, 0x16u);
      v43 = *(a1 + 40);
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(***(a1 + 88));
      v46 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v46 = *buf;
      }

      v65[0] = 136315650;
      *&v65[1] = v45;
      v66 = 2080;
      v67 = " ";
      v68 = 2080;
      v69 = v46;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%siccid: %s", v65, 0x20u);
      v43 = *(a1 + 40);
    }

    if (LOBYTE(__p[0]) == 1 && os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v47 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((__p[0] & 1) == 0)
      {
        sub_1000D1644();
      }

      if (v61 >= 0)
      {
        v48 = &buf[24];
      }

      else
      {
        v48 = *&buf[24];
      }

      v65[0] = 136315650;
      *&v65[1] = v47;
      v66 = 2080;
      v67 = " ";
      v68 = 2082;
      v69 = v48;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%simei: %{public}s", v65, 0x20u);
      v43 = *(a1 + 40);
    }

    if (v64 == 1 && os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v49 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((v64 & 1) == 0)
      {
        sub_1000D1644();
      }

      if (v63 >= 0)
      {
        v50 = &__p[1];
      }

      else
      {
        v50 = __p[1];
      }

      v65[0] = 136315650;
      *&v65[1] = v49;
      v66 = 2080;
      v67 = " ";
      v68 = 2082;
      v69 = v50;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%smeid: %{public}s", v65, 0x20u);
      v43 = *(a1 + 40);
    }

    if (BYTE9(v64) == 1 && os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v51 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((BYTE9(v64) & 1) == 0)
      {
        sub_1000D1644();
      }

      v65[0] = 136315650;
      *&v65[1] = v51;
      v66 = 2080;
      v67 = " ";
      v68 = 1026;
      LODWORD(v69) = BYTE8(v64);
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sprofileRelease: %{public}d", v65, 0x1Cu);
      v43 = *(a1 + 40);
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v52 = PersonalityInfo::logPrefix(***(a1 + 88));
      v65[0] = 136315394;
      *&v65[1] = v52;
      v66 = 2080;
      v67 = " ";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%s}", v65, 0x16u);
    }

    if (v64 == 1 && SHIBYTE(v63) < 0)
    {
      operator delete(__p[1]);
    }

    if (LOBYTE(__p[0]) == 1 && SHIBYTE(v61) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v53 = *(a1 + 40);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v54;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s%s]", buf, 0x16u);
    v53 = *(a1 + 40);
  }

  if (*(a4 + 80) == 1 && os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v55 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[10] & 1) == 0)
    {
      sub_1000D1644();
    }

    v56 = a4 + 7;
    if (*(a4 + 79) < 0)
    {
      v56 = a4[7];
    }

    *buf = 136315650;
    *&buf[4] = v55;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2082;
    *&buf[24] = v56;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s%seid: %{public}s", buf, 0x20u);
    v53 = *(a1 + 40);
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v57 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v57;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
  }

  *buf = a1;
  buf[8] = v58;
  *&buf[12] = a2;
  sub_10006F1C0();
}

void sub_1003D0940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::transferAuthorizationWithCallback(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, NSObject **a5, void **a6)
{
  v47 = *(a3 + 3);
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sTransferAuthorization request: {", buf, 0x16u);
    v8 = *(a1 + 40);
  }

  v50 = a4;
  if (*(a4 + 24) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[3] & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(a4 + 23) >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sAuthToken: %s", buf, 0x20u);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 33) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 33) & 1) == 0)
    {
      sub_1000D1644();
    }

    v13 = *(a4 + 32);
    *buf = 136315650;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1024;
    *&buf[24] = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieveOTP: %d", buf, 0x1Cu);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 35) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 35) & 1) == 0)
    {
      sub_1000D1644();
    }

    v15 = *(a4 + 34);
    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1024;
    *&buf[24] = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieveTermsAndCondition: %d", buf, 0x1Cu);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 37) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 37) & 1) == 0)
    {
      sub_1000D1644();
    }

    v17 = *(a4 + 36);
    *buf = 136315650;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1026;
    *&buf[24] = v17;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieveTransferType: %{public}d", buf, 0x1Cu);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 39) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((*(a4 + 39) & 1) == 0)
    {
      sub_1000D1644();
    }

    v19 = *(a4 + 38);
    *buf = 136315650;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1026;
    *&buf[24] = v19;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieveToken: %{public}d", buf, 0x1Cu);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 208) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[26] & 1) == 0)
    {
      sub_1000D1644();
    }

    v21 = a4[25];
    *buf = 136315650;
    *&buf[4] = v20;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2050;
    *&buf[24] = v21;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSupportedCapabilities: %{public}llu", buf, 0x20u);
    v8 = *(a1 + 40);
  }

  if (*(a4 + 240) == 1 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = PersonalityInfo::logPrefix(***(a1 + 88));
    if ((a4[30] & 1) == 0)
    {
      sub_1000D1644();
    }

    v23 = a4[29];
    *buf = 136315650;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2050;
    *&buf[24] = v23;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrierCharacteristics: %{public}llu", buf, 0x20u);
    v8 = *(a1 + 40);
  }

  v49 = a4 + 5;
  if (*(a4 + 192) == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sTarget: {", buf, 0x16u);
      v8 = *(a1 + 40);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sIccidStates: [", buf, 0x16u);
    }

    if ((a4[24] & 1) == 0)
    {
      sub_1000D1644();
    }

    v27 = a4[8];
    for (i = a4[9]; v27 != i; v27 += 96)
    {
      *v54 = 0u;
      v55 = 0u;
      *v52 = 0u;
      *__p = 0u;
      memset(buf, 0, sizeof(buf));
      if (*(v27 + 23) < 0)
      {
        sub_100005F2C(buf, *v27, *(v27 + 8));
      }

      else
      {
        v28 = *v27;
        *&buf[16] = *(v27 + 16);
        *buf = v28;
      }

      sub_10006F264(&buf[24], (v27 + 24));
      sub_10006F264(&__p[1], (v27 + 56));
      WORD4(v55) = *(v27 + 88);
      v29 = *(a1 + 40);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = PersonalityInfo::logPrefix(***(a1 + 88));
        v56[0] = 136315394;
        *&v56[1] = v30;
        v57 = 2080;
        v58 = " ";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%s{", v56, 0x16u);
        v29 = *(a1 + 40);
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = PersonalityInfo::logPrefix(***(a1 + 88));
        v32 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          v32 = *buf;
        }

        v56[0] = 136315650;
        *&v56[1] = v31;
        v57 = 2080;
        v58 = " ";
        v59 = 2080;
        v60 = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%siccid: %s", v56, 0x20u);
        v29 = *(a1 + 40);
      }

      if (LOBYTE(__p[0]) == 1 && os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v33 = PersonalityInfo::logPrefix(***(a1 + 88));
        if ((__p[0] & 1) == 0)
        {
          sub_1000D1644();
        }

        if (SHIBYTE(v52[1]) >= 0)
        {
          v34 = &buf[24];
        }

        else
        {
          v34 = *&buf[24];
        }

        v56[0] = 136315650;
        *&v56[1] = v33;
        v57 = 2080;
        v58 = " ";
        v59 = 2082;
        v60 = v34;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%simei: %{public}s", v56, 0x20u);
        v29 = *(a1 + 40);
      }

      if (v55 == 1 && os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v35 = PersonalityInfo::logPrefix(***(a1 + 88));
        if ((v55 & 1) == 0)
        {
          sub_1000D1644();
        }

        if (SHIBYTE(v54[1]) >= 0)
        {
          v36 = &__p[1];
        }

        else
        {
          v36 = __p[1];
        }

        v56[0] = 136315650;
        *&v56[1] = v35;
        v57 = 2080;
        v58 = " ";
        v59 = 2082;
        v60 = v36;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%smeid: %{public}s", v56, 0x20u);
        v29 = *(a1 + 40);
      }

      if (BYTE9(v55) == 1 && os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v37 = PersonalityInfo::logPrefix(***(a1 + 88));
        if ((BYTE9(v55) & 1) == 0)
        {
          sub_1000D1644();
        }

        v56[0] = 136315650;
        *&v56[1] = v37;
        v57 = 2080;
        v58 = " ";
        v59 = 1026;
        LODWORD(v60) = BYTE8(v55);
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sprofileRelease: %{public}d", v56, 0x1Cu);
        v29 = *(a1 + 40);
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v38 = PersonalityInfo::logPrefix(***(a1 + 88));
        v56[0] = 136315394;
        *&v56[1] = v38;
        v57 = 2080;
        v58 = " ";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%s}", v56, 0x16u);
      }

      if (v55 == 1 && SHIBYTE(v54[1]) < 0)
      {
        operator delete(__p[1]);
      }

      if (LOBYTE(__p[0]) == 1 && SHIBYTE(v52[1]) < 0)
      {
        operator delete(*&buf[24]);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v40;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s]", buf, 0x16u);
    }

    if ((v50[24] & 1) == 0)
    {
      sub_1000D1644();
    }

    v8 = *(a1 + 40);
    if (*(v50 + 112) == 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v41 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((v50[24] & 1) == 0)
      {
        sub_1000D1644();
      }

      if ((v50[14] & 1) == 0)
      {
        sub_1000D1644();
      }

      v42 = v50 + 11;
      if (*(v50 + 111) < 0)
      {
        v42 = v50[11];
      }

      *buf = 136315650;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2082;
      *&buf[24] = v42;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sDeviceType: %{public}s", buf, 0x20u);
      v8 = *(a1 + 40);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v43 = PersonalityInfo::logPrefix(***(a1 + 88));
      if ((v50[24] & 1) == 0)
      {
        sub_1000D1644();
      }

      v44 = v49;
      if (*(v50 + 63) < 0)
      {
        v44 = v50[5];
      }

      *buf = 136315650;
      *&buf[4] = v43;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2082;
      *&buf[24] = v44;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%seid: %{public}s", buf, 0x20u);
      v8 = *(a1 + 40);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v45;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
      v8 = *(a1 + 40);
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v46 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v46;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s}", buf, 0x16u);
  }

  *buf = a1;
  buf[8] = v47;
  *&buf[12] = a2;
  sub_10006F1C0();
}

void entitlements::ControllerImpl::resetPreferredRoamingNetworks(entitlements::ControllerImpl *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void entitlements::ControllerImpl::getPreferredRoamingNetworks(entitlements::ControllerImpl *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

uint64_t entitlements::ControllerImpl::getPLMNPriorityInfo(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 2168));
  v4 = *(a1 + 2088);
  if (v4 == 1)
  {
    sub_1003EC234(a2, a1 + 1992);
    sub_1003EC234(a2 + 32, a1 + 2024);
    sub_1003EC234(a2 + 64, a1 + 2056);
  }

  else
  {
    sub_100A3F578(a2);
  }

  std::mutex::unlock((a1 + 2168));
  return v4;
}

void entitlements::ControllerImpl::getPSDeviceList(entitlements::ControllerImpl *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void entitlements::ControllerImpl::getCarrierSpaceUpdates(uint64_t a1, const void **a2)
{
  sub_100010024(&v4 + 1, a2);
  sub_100060E84(&v5, a2 + 1);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::updateAccountWithFeatureOrService(uint64_t a1, const void **a2)
{
  sub_100010024(&v4 + 1, a2);
  sub_100060E84(&v5, a2 + 1);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::handleVVMPushNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v5 = a2[2];
  v6[0] = v4;
  v6[1] = v5;
  if (v5)
  {
    *(v4 + 16) = v6;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  v6[2] = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::queryPrefetchableAuthorizationTokens(uint64_t a1, char a2, uint64_t a3)
{
  *&v3[39] = *a3;
  v3[47] = *(a3 + 8);
  *v3 = 0;
  *&v3[8] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1003D2234(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003D2244(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_1003EC564(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1003D243C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::fetchAuthorizationTokens_sync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*a2 + 3);
  v21 = 0;
  v22 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 14, &v21);
  v7 = v21;
  if (v21)
  {
    v27 = 0u;
    memset(__p, 0, sizeof(__p));
    v8 = *a3;
    v9 = a3[1];
    if (v9 != *a3)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if ((*(a1 + 528) >> *(v8 + v10)))
        {
          sub_1001FDFFC(__p, (v8 + v10));
          v8 = *a3;
          v9 = a3[1];
        }

        ++v11;
        v10 += 4;
      }

      while (v11 < (v9 - v8) >> 2);
    }

    v12 = a3[3];
    v13 = a3[4];
    if (v13 != v12)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if ((*(a1 + 528) >> *(v12 + v14)))
        {
          sub_1003D27A0(&__p[3], v12 + v14);
          v12 = a3[3];
          v13 = a3[4];
        }

        ++v15;
        v14 += 40;
      }

      while (v15 < 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 3));
    }

    if (__p[1] == __p[0] && v27 == __p[3])
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = PersonalityInfo::logPrefix(***(a1 + 88));
        *buf = 136315394;
        *&buf[4] = v20;
        v24 = 2080;
        v25 = " ";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%sno tokens for getAuthorizationTokens - bailing out", buf, 0x16u);
      }
    }

    else if (((*(*v7 + 376))(v7, 21, v6) & 1) == 0)
    {
      (*(*v7 + 216))(v7, a2, __p);
    }

    *buf = &__p[3];
    sub_1003EC564(buf);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(***(a1 + 88));
      v18 = sub_1000714D8(14);
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = v17;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = " ";
      HIWORD(__p[2]) = 2080;
      __p[3] = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", __p, 0x20u);
    }
  }

  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_1003D2764(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1003D2244(va);
  if (a9)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003D27A0(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003EC9E0(a1, a2);
  }

  else
  {
    sub_1003EC960(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void entitlements::ControllerImpl::dropAuthorizationTokens(uint64_t a1, uint64_t *a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::dropAuthorizationTokensIfNeeded_sync(uint64_t a1, uint64_t a2)
{
  v48 = 0;
  v49 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 0, &v48);
  if (v48)
  {
    if ((*(a1 + 528) & 3) == 0)
    {
      goto LABEL_51;
    }

    theDict = 0;
    std::mutex::lock((a1 + 2168));
    sub_1000676D4(&theDict, (a1 + 2096));
    std::mutex::unlock((a1 + 2168));
    if (!theDict)
    {
      goto LABEL_50;
    }

    v44 = (a1 + 2096);
    v4 = 0;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    v5 = 1;
    do
    {
      v6 = v5;
      if ((*(a1 + 528) & (1 << v4)) != 0 && (*(a2 + 8) != 1 || (*a2 & (1 << v4)) != 0))
      {
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = PersonalityInfo::logPrefix(***(a1 + 88));
          v9 = sub_1013E5CF4(v4);
          *buf = 136315650;
          *&buf[4] = v8;
          v51 = 2080;
          v52 = " ";
          v53 = 2080;
          v54 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sDropped authorization token %s", buf, 0x20u);
        }

        v10 = sub_1013E5D20(v4);
        CFDictionaryRemoveValue(MutableCopy, v10);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    if (!CFDictionaryGetCount(MutableCopy))
    {
      v11 = MutableCopy;
      MutableCopy = 0;
      *buf = v11;
      sub_1000296E0(buf);
    }

    v12 = *(a1 + 64);
    if (MutableCopy)
    {
      ServiceMap = Registry::getServiceMap(v12);
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
      if (v19)
      {
        v21 = v19[3];
        v20 = v19[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v14);
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v20);
          v22 = 0;
LABEL_31:
          (*(*v21 + 16))(v21, ***(a1 + 88) + 24, @"authorization-tokens", MutableCopy, kCarrierEntitlementsWalletDomain, 0, 4, 0);
          goto LABEL_35;
        }
      }

      else
      {
        v21 = 0;
      }

      std::mutex::unlock(v14);
      v20 = 0;
      v22 = 1;
      goto LABEL_31;
    }

    v26 = Registry::getServiceMap(v12);
    v27 = v26;
    if (v28 < 0)
    {
      v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v28 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v26);
    *buf = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, buf);
    if (v32)
    {
      v33 = v32[3];
      v20 = v32[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v27);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
        v22 = 0;
LABEL_34:
        (*(*v33 + 32))(v33, ***(a1 + 88) + 24, @"authorization-tokens", kCarrierEntitlementsWalletDomain, 0, 4);
LABEL_35:
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        std::mutex::lock((a1 + 2168));
        sub_100010180(&v45, &MutableCopy);
        if (v44 != &v45)
        {
          *buf = *v44;
          *v44 = v45;
          v45 = 0;
          sub_10001021C(buf);
        }

        sub_10001021C(&v45);
        std::mutex::unlock((a1 + 2168));
        v34 = Registry::getServiceMap(*(a1 + 64));
        v35 = v34;
        if (v36 < 0)
        {
          v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
          v38 = 5381;
          do
          {
            v36 = v38;
            v39 = *v37++;
            v38 = (33 * v38) ^ v39;
          }

          while (v39);
        }

        std::mutex::lock(v34);
        *buf = v36;
        v40 = sub_100009510(&v35[1].__m_.__sig, buf);
        if (v40)
        {
          v41 = v40[3];
          v42 = v40[4];
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v35);
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v42);
            v43 = 0;
LABEL_47:
            (*(*v41 + 48))(v41);
            if ((v43 & 1) == 0)
            {
              sub_100004A34(v42);
            }

            sub_1000296E0(&MutableCopy);
LABEL_50:
            sub_10001021C(&theDict);
            goto LABEL_51;
          }
        }

        else
        {
          v41 = 0;
        }

        std::mutex::unlock(v35);
        v42 = 0;
        v43 = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v27);
    v20 = 0;
    v22 = 1;
    goto LABEL_34;
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = PersonalityInfo::logPrefix(***(a1 + 88));
    v25 = sub_1000714D8(0);
    *buf = 136315650;
    *&buf[4] = v24;
    v51 = 2080;
    v52 = " ";
    v53 = 2080;
    v54 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
  }

LABEL_51:
  if (v49)
  {
    sub_100004A34(v49);
  }
}

void sub_1003D2E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  sub_1000296E0(&a15);
  sub_10001021C(&a16);
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getWiFiPseudonym(entitlements::ControllerImpl *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 2168));
  v4 = *(this + 262);
  if (v4 && (*(this + 528) & 1) != 0 && (v5 = sub_1013E5D20(0), Value = CFDictionaryGetValue(v4, v5), (v7 = Value) != 0) && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()) && (v9 = CFDictionaryGetValue(v7, @"collection"), (v10 = v9) != 0) && (v11 = CFGetTypeID(v9), v11 == CFArrayGetTypeID()) && CFArrayGetCount(v10) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v10, 0), (v13 = ValueAtIndex) != 0) && (v14 = CFGetTypeID(ValueAtIndex), v14 == CFDictionaryGetTypeID()) && (v15 = CFDictionaryGetValue(v13, @"value"), (v16 = v15) != 0) && (v17 = CFGetTypeID(v15), v17 == CFStringGetTypeID()))
  {
    sub_100060E4C(a2, v16);
  }

  else
  {
    *a2 = 0;
  }

  std::mutex::unlock((this + 2168));
}

void entitlements::ControllerImpl::getCollectedAuthorizationTokens(entitlements::ControllerImpl *this@<X0>, void *a2@<X8>)
{
  v3 = a2;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  std::mutex::lock((this + 2168));
  v42 = this;
  if (*(this + 262))
  {
    v4 = 0;
    v47 = 0;
    v41 = v3;
    do
    {
      if ((*(v42 + 66) >> v4))
      {
        v5 = *(v42 + 262);
        v6 = sub_1013E5D20(v4);
        Value = CFDictionaryGetValue(v5, v6);
        v8 = Value;
        if (Value)
        {
          v9 = CFGetTypeID(Value);
          if (v9 == CFDictionaryGetTypeID())
          {
            v45 = 0uLL;
            v46 = 0;
            v10 = CFDictionaryGetValue(v8, @"collection");
            v11 = v10;
            if (v10)
            {
              v12 = CFGetTypeID(v10);
              if (v12 == CFArrayGetTypeID())
              {
                Count = CFArrayGetCount(v11);
                if (Count)
                {
                  for (i = 0; i != Count; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
                    v16 = ValueAtIndex;
                    if (ValueAtIndex)
                    {
                      v17 = CFGetTypeID(ValueAtIndex);
                      if (v17 == CFDictionaryGetTypeID())
                      {
                        v18 = CFDictionaryGetValue(v16, @"value");
                        if (v18)
                        {
                          v19 = CFGetTypeID(v18);
                          if (v19 == CFStringGetTypeID())
                          {
                            v44 = 0u;
                            memset(__p, 0, sizeof(__p));
                            v48 = 0;
                            v49 = 0uLL;
                            ctu::cf::assign();
                            v20 = v48;
                            v52[0] = v49;
                            *(v52 + 7) = *(&v49 + 7);
                            v21 = HIBYTE(v49);
                            if (SHIBYTE(__p[2]) < 0)
                            {
                              operator delete(__p[0]);
                            }

                            __p[0] = v20;
                            __p[1] = v52[0];
                            *(&__p[1] + 7) = *(v52 + 7);
                            HIBYTE(__p[2]) = v21;
                            v22 = CFDictionaryGetValue(v16, @"devices");
                            v23 = v22;
                            if (v22)
                            {
                              v24 = CFGetTypeID(v22);
                              if (v24 == CFArrayGetTypeID())
                              {
                                v25 = CFArrayGetCount(v23);
                                if (v25)
                                {
                                  for (j = 0; j != v25; ++j)
                                  {
                                    v27 = CFArrayGetValueAtIndex(v23, j);
                                    if (v27)
                                    {
                                      v28 = CFGetTypeID(v27);
                                      if (v28 == CFStringGetTypeID())
                                      {
                                        v48 = 0;
                                        v49 = 0uLL;
                                        ctu::cf::assign();
                                        v52[0] = v49;
                                        *(v52 + 7) = *(&v49 + 7);
                                        v29 = HIBYTE(v49);
                                        v30 = v44;
                                        if (v44 >= *(&v44 + 1))
                                        {
                                          v32 = 0xAAAAAAAAAAAAAAABLL * ((v44 - __p[3]) >> 3);
                                          v33 = v32 + 1;
                                          if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
                                          {
                                            sub_1000CE3D4();
                                          }

                                          if (0x5555555555555556 * ((*(&v44 + 1) - __p[3]) >> 3) > v33)
                                          {
                                            v33 = 0x5555555555555556 * ((*(&v44 + 1) - __p[3]) >> 3);
                                          }

                                          if (0xAAAAAAAAAAAAAAABLL * ((*(&v44 + 1) - __p[3]) >> 3) >= 0x555555555555555)
                                          {
                                            v34 = 0xAAAAAAAAAAAAAAALL;
                                          }

                                          else
                                          {
                                            v34 = v33;
                                          }

                                          v51 = &__p[3];
                                          if (v34)
                                          {
                                            sub_100005348(&__p[3], v34);
                                          }

                                          v35 = 8 * ((v44 - __p[3]) >> 3);
                                          *v35 = v48;
                                          *(v35 + 8) = v52[0];
                                          *(v35 + 15) = *(v52 + 7);
                                          *(v35 + 23) = v29;
                                          v31 = 24 * v32 + 24;
                                          v36 = (v35 - (v44 - __p[3]));
                                          memcpy(v36, __p[3], v44 - __p[3]);
                                          v37 = __p[3];
                                          v38 = *(&v44 + 1);
                                          __p[3] = v36;
                                          v44 = v31;
                                          *(&v49 + 1) = v37;
                                          v50 = v38;
                                          v48 = v37;
                                          *&v49 = v37;
                                          sub_1000054E0(&v48);
                                          v3 = v41;
                                        }

                                        else
                                        {
                                          *v44 = v48;
                                          *(v30 + 8) = v52[0];
                                          *(v30 + 15) = *(v52 + 7);
                                          *(v30 + 23) = v29;
                                          v31 = v30 + 24;
                                        }

                                        *&v44 = v31;
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            sub_1003D3594(&v45, __p);
                            v48 = &__p[3];
                            sub_1000087B4(&v48);
                            if (SHIBYTE(__p[2]) < 0)
                            {
                              operator delete(__p[0]);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v48 = &v47;
            v39 = sub_1001AB974(v3, &v47, &unk_101802C98, &v48);
            sub_1003ED028(v39 + 5);
            *(v39 + 5) = v45;
            v39[7] = v46;
            v46 = 0;
            v45 = 0uLL;
            __p[0] = &v45;
            sub_1003ED090(__p);
          }
        }
      }

      v40 = v47;
      v4 = ++v47;
    }

    while (v40 < 1);
  }

  std::mutex::unlock((v42 + 2168));
}

void sub_1003D34E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_1003ECFDC(&a13);
  a13 = &a19;
  sub_1003ED090(&a13);
  std::mutex::unlock((a12 + 2168));
  sub_100402614(a10, *(a10 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1003D3594(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003ECD00(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void entitlements::ControllerImpl::handleGeofenceDataUpdatePushMessage(uint64_t a1, const void **a2, uint64_t a3)
{
  sub_10005C7A4(&v5 + 1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  v8[0] = 0;
  v8[1] = 0;
  sub_100004AA0(v8, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::registerGeofenceDataUpdateCallback(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100402800(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1003D38CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t entitlements::ControllerImpl::canReachServerOnInternet(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v2 = *(a1 + 112);
  if (a2 == 15)
  {
    if (v3 != v2)
    {
      v4 = v3 + 2;
      do
      {
        (***(v4 - 2))(&v10);
        v5 = sub_100A81C8C(v10);
        if (v11)
        {
          sub_100004A34(v11);
        }

        result = (v5 >> 1) & 1;
        if ((v5 & 2) != 0)
        {
          break;
        }

        v7 = v4 == v2;
        v4 += 2;
      }

      while (!v7);
      return result;
    }

    return 0;
  }

  if (v3 == v2)
  {
    return 0;
  }

  v8 = a2;
  while (!sub_1009C1740(*v3, v8))
  {
    v3 += 2;
    if (v3 == v2)
    {
      return 0;
    }
  }

  (***v3)(&v10);
  v9 = (sub_100A81C8C(v10) >> 1) & 1;
  if (v11)
  {
    sub_100004A34(v11);
  }

  return v9;
}

void sub_1003D3A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::handleEthernetUpdated_sync(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1769) == v2)
  {
    return;
  }

  v4 = *(a1 + 1768);
  v5 = *(a1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  v7 = v4;
  if (v6)
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    v16 = 136315906;
    v17 = v8;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = asString();
    v22 = 2080;
    v23 = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sEthernet availability is changing from %s to %s", &v16, 0x2Au);
    v7 = *(a1 + 1768);
  }

  if (v7 == 1)
  {
    if (v4 == 1 || v2 == 1)
    {
      return;
    }

    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 1769) == 1;
    v11 = v4 != 1 && v2 != 1;
    if ((v11 ^ v9))
    {
      return;
    }
  }

  if (entitlements::ControllerImpl::canReachServerOnInternet(a1, 15))
  {
    v12 = *(a1 + 104);
    for (i = *(a1 + 112); v12 != i; v12 += 2)
    {
      v14 = *v12;
      v15 = v12[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      entitlements::CEHTTPDriver::handleWifiAvailable(v14, v9);
      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    if (v9)
    {
      entitlements::ControllerImpl::updateAndSchedule_sync(a1, 4);
    }
  }
}

void entitlements::ControllerImpl::handleAirplaneModeChanged_sync(uint64_t result, int a2)
{
  if (a2 == 2 && *(result + 1736) != 2)
  {
    v3 = *(result + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(result + 88));
      v5 = 136315394;
      v6 = v4;
      v7 = 2080;
      v8 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sAPM is turned OFF, reattempt whatever needed", &v5, 0x16u);
    }

    entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(result, 4);
  }
}

void entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  while (v4 != v5)
  {
    (*(**v4 + 344))(*v4, a2);
    v6 = *v4;
    v4 += 2;
    (*(*v6 + 352))();
  }

  entitlements::ControllerImpl::updateAndSchedule_sync(a1, a2);
}

void entitlements::ControllerImpl::handleDataAttached_sync(entitlements::ControllerImpl *this)
{
  v1 = ***(this + 11);
  if (!*(v1 + 49))
  {
    v2 = *(this + 219);
    if (v2)
    {
      v3 = *(v1 + 52);
      v4 = this + 1752;
      do
      {
        if (*(v2 + 7) >= v3)
        {
          v4 = v2;
        }

        v2 = *&v2[8 * (*(v2 + 7) < v3)];
      }

      while (v2);
      if (v4 != this + 1752 && v3 >= *(v4 + 7) && v4[32] == 1)
      {
        entitlements::ControllerImpl::updateAndSchedule_sync(this, 4);
      }
    }
  }
}

void entitlements::ControllerImpl::handleTransportAvailabilityChange(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7 && *a2)
    {
      (***a2)(v33);
      v8 = *(*v33 + 56);
      if (*&v33[8])
      {
        sub_100004A34(*&v33[8]);
      }

      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(***(a1 + 88));
        v11 = asStringBool(a3);
        *v33 = 136315906;
        *&v33[4] = v10;
        *&v33[12] = 2080;
        *&v33[14] = " ";
        v34 = 2048;
        v35 = v8;
        v36 = 2080;
        v37 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sTransport availability for driver %zu changed to %s", v33, 0x2Au);
      }

      std::mutex::lock((a1 + 2168));
      v12 = *(a1 + 2120);
      v13 = *(a1 + 2112);
      v14 = v12 - v13;
      if (v12 != v13)
      {
        v15 = 0;
        v16 = v14 >> 4;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        while (*(*v13 + 56) != v8)
        {
          ++v15;
          v13 += 16;
          if (v16 == v15)
          {
            goto LABEL_21;
          }
        }

        v19 = *(a1 + 2136);
        v20 = v15 >> 6;
        v21 = 1 << v15;
        if (a3)
        {
          v22 = *(v19 + 8 * v20) | v21;
        }

        else
        {
          v22 = *(v19 + 8 * v20) & ~v21;
        }

        *(v19 + 8 * v20) = v22;
      }

LABEL_21:
      std::mutex::unlock((a1 + 2168));
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v24 = ServiceMap;
      if (v25 < 0)
      {
        v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
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
      *v33 = v25;
      v29 = sub_100009510(&v24[1].__m_.__sig, v33);
      if (v29)
      {
        v31 = v29[3];
        v30 = v29[4];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v24);
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v30);
          v32 = 0;
          goto LABEL_29;
        }
      }

      else
      {
        v31 = 0;
      }

      std::mutex::unlock(v24);
      v30 = 0;
      v32 = 1;
LABEL_29:
      (*(*v31 + 48))(v31);
      if ((v32 & 1) == 0)
      {
        sub_100004A34(v30);
      }

      goto LABEL_31;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(***(a1 + 88));
    *v33 = 136315394;
    *&v33[4] = v18;
    *&v33[12] = 2080;
    *&v33[14] = " ";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sdriver is already gone - ignoring any responses", v33, 0x16u);
  }

LABEL_31:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003D4120(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::invalidateEntitlementsCache_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v6 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    v9 = v5;
    v10 = 2080;
    *v11 = " ";
    *&v11[8] = 2080;
    v12 = sub_100A38E08(v2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sinvalidate entitlement cache with %s", buf, 0x20u);
  }

  sub_10006EA88(buf, 0);
  sub_1003D78E4(a1 + 416, buf);
  sub_10006DCAC(v15, v15[1]);
  sub_10006EC28(v14, v14[1]);
  sub_10006DCAC(v13, v13[1]);
  sub_10006DCAC(&v9 + 4, *&v11[2]);
  v7[0] = off_101E4B000;
  v7[1] = a1;
  v7[2] = &v6;
  v7[3] = v7;
  sub_1000700B8(v7);
  sub_100072048(v7);
  entitlements::ControllerImpl::saveEntitlements_sync(a1, a1 + 416);
}

void sub_1003D42EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::recalculateEntitlements_sync(entitlements::ControllerImpl *this, int a2, char a3)
{
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  sub_10006EA88(&v79, 0);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v63 = 0u;
  sub_10000C320(&v63);
  v62 = 0;
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
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v47 = 0u;
  sub_10000C320(&v47);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
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
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  sub_10000C320(&v31);
  v30 = 0;
  v29 = 0;
  if (*(this + 80) & 1) != 0 || *(this + 14) != *(this + 13) || (a3)
  {
    if (!*(***(this + 11) + 49) || *(***(this + 11) + 49) == 3)
    {
      if ((*(this + 520) & 1) == 0)
      {
        entitlements::ControllerImpl::readEntitlementsCache_sync(this);
      }

      entitlements::ControllerImpl::recalculateEntitlementsDetailed_sync(this, &v79, &v63, &v47, &v31, &v30 + 4, &v30, &v29);
    }

    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(this + 11));
      v8 = HIDWORD(v30);
      sub_10006EE70(&v64 + 8, v27);
      v22 = a2;
      if (v28 >= 0)
      {
        v9 = v27;
      }

      else
      {
        v9 = v27[0];
      }

      v10 = v30;
      sub_10006EE70(&v48 + 8, v25);
      v11 = v26;
      v12 = v25[0];
      v13 = v29;
      sub_10006EE70(&v32 + 8, __p);
      v14 = v25;
      if (v11 < 0)
      {
        v14 = v12;
      }

      if (v24 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136316930;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 1024;
      v88 = v8;
      v89 = 2080;
      v90 = v9;
      v91 = 1024;
      v92 = v10;
      v93 = 2080;
      v94 = v14;
      v95 = 1024;
      v96 = v13;
      v97 = 2080;
      v98 = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%srecalculated: Known 0x%X [%s], Cached 0x%X [%s], Inactive 0x%X [%s]", buf, 0x46u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = v22;
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    *(this + 208) = v79;
    if ((this + 208) != &v79)
    {
      sub_10006EAC4(this + 27, *(&v79 + 1), &v80);
      sub_10006FCD8(this + 30, v81, &v81 + 1);
      sub_10006FB64(this + 33, *(&v82 + 1), &v83);
      sub_10006FA00(this + 36, v84, &v84 + 1);
    }

    std::mutex::lock((this + 2168));
    *(this + 1776) = *(this + 208);
    sub_10006EAC4(this + 223, *(this + 27), this + 28);
    sub_10006FCD8(this + 226, *(this + 30), this + 31);
    sub_10006FB64(this + 229, *(this + 33), this + 68);
    sub_10006FA00(this + 232, *(this + 36), this + 37);
    std::mutex::unlock((this + 2168));
    if (*(this + 14) != *(this + 13))
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      v86[0] = off_101E4AF00;
      v86[1] = this;
      v86[2] = buf;
      v86[3] = v86;
      *buf = &buf[8];
      sub_1000700B8(v86);
      sub_100072048(v86);
      v16 = *(this + 13);
      v17 = *(this + 14);
      while (v16 != v17)
      {
        (*(**v16 + 368))(*v16, buf);
        v16 += 2;
      }

      sub_100077CD4(buf, *&buf[8]);
    }

    if (*(this + 520) == 1 && (sub_1003D6DC0(this + 52, this + 26) | a2) == 1)
    {
      sub_1003D7CDC(this + 416, this + 208);
      entitlements::ControllerImpl::saveEntitlements_sync(this, this + 208);
    }

    entitlements::ControllerImpl::generateNotification_sync(this);
  }

  v21 = v19;
  *&v32 = v19;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(*(&v34 + 1));
  }

  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v47 = v18;
  *(&v47 + *(v18 - 3)) = v20;
  *&v48 = v21;
  if (SHIBYTE(v51) < 0)
  {
    operator delete(*(&v50 + 1));
  }

  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v63 = v18;
  *(&v63 + *(v18 - 3)) = v20;
  *&v64 = v21;
  if (SHIBYTE(v67) < 0)
  {
    operator delete(*(&v66 + 1));
  }

  std::locale::~locale(v65);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  sub_10006DCAC(&v84, *(&v84 + 1));
  sub_10006EC28(&v82 + 8, v83);
  sub_10006DCAC(&v81, *(&v81 + 1));
  sub_10006DCAC(&v79 + 8, v80);
}