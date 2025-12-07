void sub_10031F26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_10002B644(v27 - 176);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id *sub_10031F3F4(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

uint64_t sub_10031F42C(uint64_t a1)
{
  sub_100287028(a1 + 56);
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10031F4D0(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a1 + 64))
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = std::__shared_weak_count::lock(v9);
      if (v11 && *(a1 + 72))
      {
        v12 = sub_100032AC8((v10 + 40));
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = (a1 + 88);
          if (*(a1 + 111) < 0)
          {
            v13 = *v13;
          }

          *buf = 136315394;
          *&buf[4] = v13;
          *&buf[12] = 1024;
          *&buf[14] = a2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I received response for request: %s, error %d", buf, 0x12u);
        }

        v14 = *(a1 + 112);
        if (v14)
        {
          if ((*(*v14 + 24))(v14))
          {
            v15 = sub_100032AC8((v10 + 40));
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I response has already timed out", buf, 2u);
            }

LABEL_23:
            sub_100004A34(v11);
            goto LABEL_24;
          }

          (*(**(a1 + 112) + 16))(*(a1 + 112));
        }

        *buf = v8;
        sub_1003212A4(&buf[8], a1 + 40);
        v20 = sub_100032AC8((a1 + 128));
        operator new();
      }
    }

    else
    {
      v11 = 0;
    }

    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cu.message");
    v17 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10176B5AC(v17, v18, v19);
    }

    if (v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = sCTOsLogDefault;
    if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "no response callback", buf, 2u);
    }
  }

LABEL_24:
}

void sub_10031F7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_10031F848(uint64_t a1, uint64_t a2)
{
  sub_1003212A4(a1 + 40, a2 + 40);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
  }

  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 128);
  *(a1 + 128) = result;
  return result;
}

void sub_10031F8DC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_100287028(v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_10031F8FC(uint64_t a1)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return sub_100287028(a1 + 40);
}

void sub_10031F96C(uint64_t a1, __int128 **a2, uint64_t a3)
{
  sub_100004AA0(__dst, (a1 + 8));
  v8 = __dst[0];
  v7 = __dst[1];
  if (__dst[1])
  {
    atomic_fetch_add_explicit(__dst[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    *&v6 = 136315138;
    v17 = v6;
    do
    {
      __dst[1] = 0;
      v19 = 0;
      __dst[0] = 0;
      if (*(v9 + 23) < 0)
      {
        sub_100005F2C(__dst, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v19 = *(v9 + 2);
        *__dst = v11;
      }

      v12 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = __dst;
        if (v19 < 0)
        {
          v13 = __dst[0];
        }

        *buf = v17;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I registering for request: %s", buf, 0xCu);
      }

      v14 = **(a1 + 64);
      if (v19 >= 0)
      {
        v15 = __dst;
      }

      else
      {
        v15 = __dst[0];
      }

      v16 = [NSString stringWithUTF8String:v15, v17];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3321888768;
      v20[2] = sub_10031FC6C;
      v20[3] = &unk_101E41BA0;
      v20[4] = a1;
      v20[5] = v8;
      v21 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v19) < 0)
      {
        sub_100005F2C(&__p, __dst[0], __dst[1]);
      }

      else
      {
        __p = *__dst;
        v23 = v19;
      }

      sub_100321CD4(v24, a3);
      [v14 registerRequestID:v16 options:0 handler:v20];

      sub_100321C54(v24);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(__dst[0]);
      }

      v9 = (v9 + 24);
    }

    while (v9 != v10);
  }

  sub_10031EB5C(a1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_10031FBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031FC6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = std::__shared_weak_count::lock(v10);
    if (v12 && *(a1 + 40))
    {
      v13 = sub_100032AC8((v11 + 40));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v14 = *v14;
        }

        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I received request: %s", buf, 0xCu);
      }

      v19 = v8;
      *buf = 0;
      if (v8)
      {
        CFRetain(v8);
      }

      v15 = *(a1 + 104);
      if (!v15)
      {
        sub_100022DB4();
      }

      (*(*v15 + 48))(buf);
      sub_10001021C(&v19);
      v16 = *buf;
      if (v9)
      {
        (*(v9 + 2))(v9, 0, 0, v16);
      }

      sub_10001021C(buf);
LABEL_20:
      sub_100004A34(v12);
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176B5EC(a1, v17, v18);
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 4294960582, 0, 0);
  }

  if (v12)
  {
    goto LABEL_20;
  }

LABEL_21:
}

void sub_10031FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_10001021C(va);
  sub_100004A34(v8);

  _Unwind_Resume(a1);
}

uint64_t sub_10031FEBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  return sub_100321CD4(a1 + 80, a2 + 80);
}

void sub_10031FF2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031FF5C(uint64_t a1)
{
  sub_100321C54(a1 + 80);
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

void sub_10031FFB8(uint64_t a1, __int128 **a2, uint64_t a3)
{
  sub_100004AA0(__dst, (a1 + 8));
  v8 = __dst[0];
  v7 = __dst[1];
  if (__dst[1])
  {
    atomic_fetch_add_explicit(__dst[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    *&v6 = 136315138;
    v17 = v6;
    do
    {
      __dst[1] = 0;
      v19 = 0;
      __dst[0] = 0;
      if (*(v9 + 23) < 0)
      {
        sub_100005F2C(__dst, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v19 = *(v9 + 2);
        *__dst = v11;
      }

      v12 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = __dst;
        if (v19 < 0)
        {
          v13 = __dst[0];
        }

        *buf = v17;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I registering for request: %s", buf, 0xCu);
      }

      v14 = **(a1 + 64);
      if (v19 >= 0)
      {
        v15 = __dst;
      }

      else
      {
        v15 = __dst[0];
      }

      v16 = [NSString stringWithUTF8String:v15, v17];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3321888768;
      v20[2] = sub_1003202B8;
      v20[3] = &unk_101E41BD0;
      v20[4] = a1;
      v20[5] = v8;
      v21 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v19) < 0)
      {
        sub_100005F2C(&__p, __dst[0], __dst[1]);
      }

      else
      {
        __p = *__dst;
        v23 = v19;
      }

      sub_100322174(v24, a3);
      [v14 registerRequestID:v16 options:0 handler:v20];

      sub_100287FF4(v24);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(__dst[0]);
      }

      v9 = (v9 + 24);
    }

    while (v9 != v10);
  }

  sub_10031EB5C(a1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_10032023C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003202B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = std::__shared_weak_count::lock(v10);
    if (v12 && *(a1 + 40))
    {
      v13 = sub_100032AC8((v11 + 40));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v14 = *v14;
        }

        *buf = 136315138;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I received request: %s", buf, 0xCu);
      }

      __p[3] = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      objc_retainBlock(v9);
      if (*(a1 + 79) < 0)
      {
        sub_100005F2C(__p, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        *__p = *(a1 + 56);
        __p[2] = *(a1 + 72);
      }

      __p[7] = 0;
      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10176B5EC(a1, v15, v16);
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 4294960582, 0, 0);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_100320544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  operator delete(v7);
  sub_1003205D0(va);
  sub_10001021C(va1);
  sub_100004A34(v6);

  _Unwind_Resume(a1);
}

uint64_t sub_1003205D0(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10032060C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  return sub_100322174(a1 + 80, a2 + 80);
}

void sub_10032067C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003206AC(uint64_t a1)
{
  sub_100287FF4(a1 + 80);
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

void sub_100320708(uint64_t a1, __int128 *a2, void **a3, id *a4, void **a5, uint64_t a6)
{
  v13[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  __p[3] = *a3;
  *a3 = 0;
  v11 = *a4;
  v12 = *a5;
  __p[4] = v11;
  __p[5] = v12;
  sub_10032220C(&v15, a6);
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (a1 + 8));
  operator new();
}

void sub_100320924(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100320938(unint64_t a1, __int128 **a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = 0uLL;
  sub_10004EFD0(v6 + 8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_100322464(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100320AC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100320AD8(unint64_t a1, __int128 **a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = 0uLL;
  sub_10004EFD0(v6 + 8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  sub_100322658(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100320C64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100320C78(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_100320D6C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_100320DE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E41CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100320EE0(void *a1, void *a2, __int128 *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E41D28;
  sub_100320FD8(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_100320F5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E41D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100320FD8(void *a1, void *a2, __int128 *a3, uint64_t a4)
{
  v5 = *a3;
  *a3 = 0uLL;
  *v7 = *a4;
  v8 = v5;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_10031E774(a1, a2, &v8, v7);
  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  *a1 = &off_101E41D78;
  return a1;
}

void sub_100321058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_100321080(uint64_t a1)
{
  sub_10031E8DC(a1);

  operator delete();
}

uint64_t *sub_1003210B8(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10031E9BC(*v1);
  sub_10024BAAC(&v4);
  return sub_1000049E0(&v3);
}

void sub_1003210FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100321118(void *a1, const char *a2, dispatch_qos_class_t qos_class, id *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v10 = *a4;
  sub_1003211C8(a1, a2, v7, &v10);
  v8 = v10;
  v10 = 0;

  return a1;
}

void *sub_1003211C8(void *a1, const char *a2, void *a3, id *a4)
{
  v8 = *a4;
  v9 = a3;
  if (v8)
  {
    v10 = v8;
    v11 = dispatch_queue_create_with_target_V2(a2, v9, v10);

    v12 = v11;
  }

  else
  {
    v13 = dispatch_queue_create(a2, v9);

    v12 = v13;
    v10 = v12;
  }

  *a1 = 0;
  a1[1] = 0;
  v14 = v12;
  a1[2] = v14;
  a1[3] = *a4;

  return a1;
}

uint64_t sub_1003212A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10032133C(uint64_t a1)
{
  *a1 = off_101E41DD0;
  sub_100287028(a1 + 64);
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1003213B0(uint64_t a1)
{
  *a1 = off_101E41DD0;
  sub_100287028(a1 + 64);
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10032150C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10032154C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E41DD0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = *(a1 + 56);
  return sub_1003212A4(a2 + 64, a1 + 64);
}

void sub_1003215F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100321630(uint64_t a1)
{
  sub_100287028(a1 + 64);
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1003216A0(uint64_t a1)
{
  sub_100287028(a1 + 64);
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10032170C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && *(a1 + 16))
    {
      v5 = sub_100032AC8((v3 + 40));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1 + 32;
        if (*(a1 + 55) < 0)
        {
          v6 = *(a1 + 32);
        }

        *buf = 136315138;
        v12[0] = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I response timed out for request: %s", buf, 0xCu);
      }

      sub_1003212A4(buf, a1 + 64);
      v7 = sub_100032AC8((a1 + 56));
      operator new();
    }
  }

  else
  {
    v4 = 0;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cu.message");
  v8 = *(v12 + 4);
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10176B5AC(v8, v9, v10);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1003218D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032190C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100321958(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100287028(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1003219A0(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  sub_100321A00(a1, 1);
  sub_10001021C(&v3);
  return sub_100321958(&v2);
}

void sub_1003219E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  sub_10001021C(&a10);
  sub_100321958(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100321A00(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_100321ABC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176B678(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100321AD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100321B10(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100321B40(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id **sub_100321B80(id **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100287028((v1 + 1));

    operator delete();
  }

  return a1;
}

id **sub_100321BD8(id *a1)
{
  v4 = a1;
  v2 = a1 + 1;
  v1 = *a1;
  v5 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  sub_100321A00(v2, 0);
  sub_10001021C(&v5);
  return sub_100321B80(&v4);
}

void sub_100321C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9, const void *a10)
{
  sub_10001021C(&a10);
  sub_100321B80(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100321C54(uint64_t a1)
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

uint64_t sub_100321CD4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100321D6C(uint64_t a1)
{
  *a1 = off_101E41EC8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100321DC4(uint64_t a1)
{
  *a1 = off_101E41EC8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

id sub_100321EE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E41EC8;
  result = objc_retainBlock(*(a1 + 8));
  *(a2 + 8) = result;
  if (*(a1 + 39) < 0)
  {
    return sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  v5 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 16) = v5;
  return result;
}

void sub_100321F78(char *a1)
{
  sub_100322130((a1 + 8));

  operator delete(a1);
}

const void **sub_100321FB4(uint64_t a1, void **a2)
{
  v3 = *a2;
  v11 = *a2;
  *a2 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = a1 + 16;
    if (*(a1 + 39) < 0)
    {
      v4 = *(a1 + 16);
    }

    *buf = 136315138;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "sending response: %s", buf, 0xCu);
  }

  v5 = v3;
  v6 = *(a1 + 8);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0, v5);
  }

  else
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      sub_10176B69C(v7, v8, v9);
    }
  }

  return sub_10001021C(&v11);
}

void sub_1003220C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003220E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E41F28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100322130(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *a1;
}

uint64_t sub_100322174(uint64_t a1, uint64_t a2)
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

uint64_t sub_10032220C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10032228C(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v11 = *(v1 + 24);
    *__p = v3;
  }

  sub_100010024(&v9, (v1 + 32));
  v4 = *(v1 + 40);
  v8 = v4;
  sub_1003212A4(v12, v1 + 56);
  sub_10031EC88(v2, __p, &v9, &v8, (v1 + 48), v12);
  sub_100287028(v12);

  sub_10001021C(&v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003223E8(&v7);
  return sub_1000049E0(&v6);
}

void sub_100322390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1003223E8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003223E8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100287028(v1 + 56);
    v2 = *(v1 + 40);
    *(v1 + 40) = 0;

    sub_10001021C((v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100322464(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003224E4(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  memset(v6, 0, sizeof(v6));
  sub_10004EFD0(v6, *(v1 + 8), *(v1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 16) - *(v1 + 8)) >> 3));
  sub_100321CD4(v8, v1 + 32);
  sub_10031F96C(v2, v6, v8);
  sub_100321C54(v8);
  v7 = v6;
  sub_1000087B4(&v7);
  sub_1003225F0(&v5);
  return sub_1000049E0(&v4);
}

void sub_1003225AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  va_copy(va3, va2);
  v8 = va_arg(va3, void);
  v10 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  va_copy(va4, va3);
  v12 = va_arg(va4, void **);
  sub_100321C54(va4);
  va_copy(v12, va2);
  sub_1000087B4(va3);
  sub_1003225F0(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003225F0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100321C54(v1 + 32);
    v2 = (v1 + 8);
    sub_1000087B4(&v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_100322658(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003226D8(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  memset(v6, 0, sizeof(v6));
  sub_10004EFD0(v6, *(v1 + 8), *(v1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 16) - *(v1 + 8)) >> 3));
  sub_100322174(v8, v1 + 32);
  sub_10031FFB8(v2, v6, v8);
  sub_100287FF4(v8);
  v7 = v6;
  sub_1000087B4(&v7);
  sub_1003227E4(&v5);
  return sub_1000049E0(&v4);
}

void sub_1003227A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  va_copy(va3, va2);
  v8 = va_arg(va3, void);
  v10 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  va_copy(va4, va3);
  v12 = va_arg(va4, void **);
  sub_100287FF4(va4);
  va_copy(v12, va2);
  sub_1000087B4(va3);
  sub_1003227E4(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003227E4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100287FF4(v1 + 32);
    v2 = (v1 + 8);
    sub_1000087B4(&v2);
    operator delete();
  }

  return a1;
}

void sub_10032284C(id ***a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = sub_100032AC8(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I invalidating session upon client request", buf, 2u);
  }

  sub_10031EBEC(v1);
  operator delete();
}

BOOL sub_100322918()
{
  v3 = @"VerifyBundles";
  CFRetain(@"VerifyBundles");
  v2 = @"VerifyBundles";
  CFRetain(@"VerifyBundles");
  v0 = sub_1003229A0(&v2);
  sub_100005978(&v2);
  sub_100005978(&v3);
  return v0;
}

void sub_10032297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

BOOL sub_1003229A0(CFStringRef *a1)
{
  if (!*a1 || !sub_1000B1374() && !sub_1001883A0())
  {
    return 0;
  }

  BOOLean = 0;
  v4 = CFPreferencesCopyValue(*a1, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_10017A3BC(&BOOLean, &v4);
  if (BOOLean)
  {
    v2 = CFBooleanGetValue(BOOLean) == 0;
  }

  else
  {
    v2 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v2;
}

void sub_100322A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

BOOL sub_100322A60()
{
  v3 = @"VerifyAPN";
  CFRetain(@"VerifyAPN");
  v2 = @"VerifyAPN";
  CFRetain(@"VerifyAPN");
  v0 = sub_1003229A0(&v2);
  sub_100005978(&v2);
  sub_100005978(&v3);
  return v0;
}

void sub_100322AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_100322AE8(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_100322BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100322C48(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 24);
  v37 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v35 = 0;
  v36 = 0;
  (*(*v2 + 416))(&v38, v2, &v37, &v35);
  v4 = v38;
  v38 = 0uLL;
  v5 = *(a1 + 80);
  *(a1 + 72) = v4;
  if (v5)
  {
    sub_100004A34(v5);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  if (v37)
  {
    dispatch_release(v37);
  }

  v6 = *(a1 + 88);
  v7 = *(a1 + 24);
  v34 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  sub_100004AA0(&v30, (a1 + 8));
  if (v30)
  {
    v8 = v30 + 48;
  }

  else
  {
    v8 = 0;
  }

  v32 = v8;
  v33 = v31;
  v30 = 0;
  v31 = 0;
  (*(*v6 + 552))(&v38, v6, &v34, &v32, 0);
  v9 = v38;
  v38 = 0uLL;
  v10 = *(a1 + 128);
  *(a1 + 120) = v9;
  if (v10)
  {
    sub_100004A34(v10);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v34)
  {
    dispatch_release(v34);
  }

  v11 = *(a1 + 88);
  v12 = *(a1 + 24);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  sub_100004AA0(&v30, (a1 + 8));
  if (v30)
  {
    v13 = v30 + 48;
  }

  else
  {
    v13 = 0;
  }

  v32 = v13;
  v33 = v31;
  v30 = 0;
  v31 = 0;
  (*(*v11 + 552))(&v38, v11, &object, &v32, 2);
  v14 = v38;
  v38 = 0uLL;
  v15 = *(a1 + 144);
  *(a1 + 136) = v14;
  if (v15)
  {
    sub_100004A34(v15);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v16 = *(a1 + 88);
  v17 = *(a1 + 24);
  v28 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  sub_100004AA0(&v32, (a1 + 8));
  if (v32)
  {
    v18 = v32 + 56;
  }

  else
  {
    v18 = 0;
  }

  v26 = v18;
  v27 = v33;
  v32 = 0;
  v33 = 0;
  (*(*v16 + 520))(&v38, v16, &v28, &v26);
  v19 = v38;
  v38 = 0uLL;
  v20 = *(a1 + 176);
  *(a1 + 168) = v19;
  if (v20)
  {
    sub_100004A34(v20);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v28)
  {
    dispatch_release(v28);
  }

  v21 = *(a1 + 88);
  v22 = *(a1 + 24);
  v25 = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  (*(*v21 + 792))(&v38, v21, &v25);
  v23 = v38;
  v38 = 0uLL;
  v24 = *(a1 + 208);
  *(a1 + 200) = v23;
  if (v24)
  {
    sub_100004A34(v24);
    if (*(&v38 + 1))
    {
      sub_100004A34(*(&v38 + 1));
    }
  }

  if (v25)
  {
    dispatch_release(v25);
  }
}

void sub_100322FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100323060()
{
  v1 = *(v0 - 48);
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (!*(v0 - 40))
  {
    JUMPOUT(0x100323058);
  }

  JUMPOUT(0x100323054);
}

uint64_t sub_10032307C(uint64_t a1, NSObject **a2, uint64_t *a3, void *a4)
{
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, "cp.ctr.watch");
  sub_100323404((a1 + 8), a2, &v15);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = off_101E41F48;
  *(a1 + 48) = off_101E42110;
  *(a1 + 56) = off_101E421B0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = off_101E42228;
  v8 = *a3;
  *(a1 + 88) = *a3;
  v9 = a3[1];
  *(a1 + 96) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *a3;
  }

  (*(*v8 + 696))(v8);
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = *a4;
  v10 = a4[1];
  *(a1 + 160) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 232) = 0uLL;
  *(a1 + 241) = 0uLL;
  *(a1 + 200) = 0uLL;
  *(a1 + 216) = 0uLL;
  *(a1 + 168) = 0uLL;
  *(a1 + 184) = 0uLL;
  sub_10000501C(&__p, "CellularPlanControllerWatch");
  v12 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 296) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 304) = 255;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 640) = a1 + 648;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  return a1;
}

void sub_1003232FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
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

  sub_100112048(&a18);
  v21 = v18[28];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v18[26];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v18[24];
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = v18[22];
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = v18[20];
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = v18[18];
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = v18[16];
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = v18[14];
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = v18[12];
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = v18[10];
  if (v30)
  {
    sub_100004A34(v30);
  }

  CellularPlanSubscriptionControllerDelegate::~CellularPlanSubscriptionControllerDelegate(v19);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v18 + 1);
  _Unwind_Resume(a1);
}

void *sub_100323404(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10032346C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_100323490(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CellularPlanController initialized", buf, 2u);
  }

  (*(**(a1 + 72) + 24))(*(a1 + 72));
  (***(a1 + 88))(buf);
  Registry::createRestModuleOneTimeUseConnection(&v5, *buf);
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10032388C(a1 + 368, a1 + 264);
  sub_10032396C(a1 + 392, a1 + 264);
  *buf = sub_100323A4C;
  v4 = 0;
  sub_10032C8C0(a1 + 280, a1 + 264, a1, buf);
}

void sub_10032383C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v14);
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10032388C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/imeis");
  v5[0] = off_101E42780;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100323940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10032396C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/meid");
  v5[0] = off_101E42800;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100323A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100323A4C(uint64_t a1)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  (*(**(a1 + 168) + 32))(&__p);
  v2 = HIBYTE(v19);
  v3 = HIBYTE(v19);
  if (v19 < 0)
  {
    v2 = v18;
  }

  if (v2)
  {
    v4 = *(a1 + 280);
    v5 = *(a1 + 288);
    if (v4 != v5)
    {
      v6 = v4 + 72;
      do
      {
        if (v19 >= 0)
        {
          v7 = HIBYTE(v19);
        }

        else
        {
          v7 = v18;
        }

        v8 = *(v6 + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(v6 + 8);
        }

        if (v7 == v8)
        {
          v10 = v19 >= 0 ? &__p : __p;
          v11 = v9 >= 0 ? v6 : *v6;
          if (!memcmp(v10, v11, v7))
          {
            v12 = *(a1 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v16 = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I iccid match selection", &v16, 2u);
            }

            v13 = *(a1 + 200);
            isSimReady = subscriber::isSimReady();
            (*(*v13 + 48))(v13, isSimReady);
          }
        }

        v15 = v6 + 96;
        v6 += 168;
      }

      while (v15 != v5);
      v3 = HIBYTE(v19);
    }
  }

  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100323BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100323BF4(uint64_t result)
{
  if (*(result + 304) - 1 <= 2)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I cb change", v5, 2u);
    }

    return (*(**(v3 + 200) + 56))(*(v3 + 200));
  }

  return result;
}

float sub_100323C94(uint64_t a1)
{
  v2 = *(a1 + 664);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 68) == 2;
      v9 = 67109120;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fBasebandOnlineAssertion state : %d", &v9, 8u);
    }
  }

  if (*(a1 + 680))
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I probe in progress", &v9, 2u);
    }
  }

  if (*(a1 + 256) == 1)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 257);
      v9 = 16777472;
      LOBYTE(v10) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fPendingInstallStatus: %hhu", &v9, 5u);
    }
  }

  return result;
}

uint64_t sub_100323DE4(uint64_t result)
{
  if (*(result + 424) == 2)
  {
    v1 = result;
    v2 = *(result + 184);
    if (!v2)
    {
      (*(**(v1 + 88) + 840))(&v15);
      v3 = v15;
      v15 = 0uLL;
      v4 = *(v1 + 224);
      *(v1 + 216) = v3;
      if (v4)
      {
        sub_100004A34(v4);
        if (*(&v15 + 1))
        {
          sub_100004A34(*(&v15 + 1));
        }
      }

      v5 = *(v1 + 88);
      v6 = *(v1 + 24);
      object = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      sub_100004AA0(&v10, (v1 + 8));
      if (v10)
      {
        v7 = v10 + 64;
      }

      else
      {
        v7 = 0;
      }

      v12 = v7;
      v13 = v11;
      v10 = 0;
      v11 = 0;
      (*(*v5 + 424))(&v15, v5, &object, &v12);
      v8 = v15;
      v15 = 0uLL;
      v9 = *(v1 + 192);
      *(v1 + 184) = v8;
      if (v9)
      {
        sub_100004A34(v9);
        if (*(&v15 + 1))
        {
          sub_100004A34(*(&v15 + 1));
        }
      }

      if (v13)
      {
        sub_100004A34(v13);
      }

      if (v11)
      {
        sub_100004A34(v11);
      }

      if (object)
      {
        dispatch_release(object);
      }

      (*(**(v1 + 184) + 16))(*(v1 + 184));
      v2 = *(v1 + 184);
    }

    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_100323F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100323FBC(uint64_t result, uint64_t a2)
{
  if (*(result + 680))
  {
    v3 = result;
    v4 = sub_100326328(result + 640);
    result = sub_100326328(a2);
    if (v4 != result)
    {
      v5 = *(**(v3 + 680) + 16);

      return v5();
    }
  }

  return result;
}

uint64_t sub_100324054(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    v3 = 0;
    (*(*result + 72))(result, 1, 0, v2);
    return sub_1000DEFB0(v2);
  }

  return result;
}

void sub_1003240E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000DEFB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003240FC(uint64_t a1)
{
  (*(**(a1 + 168) + 24))(*(a1 + 168));

  return ctu::RestModule::disconnect((a1 + 264));
}

void sub_100324158(uint64_t a1, int a2, uint64_t *a3)
{
  if (!a2)
  {
    goto LABEL_85;
  }

  (***(a1 + 88))(&v53);
  ServiceMap = Registry::getServiceMap(v53.__r_.__value_.__l.__data_);
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
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_10:
  if (v53.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v53.__r_.__value_.__l.__size_);
  }

  if (!v13)
  {
    goto LABEL_83;
  }

  v55 = 0u;
  *v56 = 0u;
  v57 = 0u;
  memset(&v53, 0, sizeof(v53));
  HIBYTE(v54[2]) = 22;
  strcpy(v54, "com.apple.NanoSettings");
  LOBYTE(v55) = 1;
  v15 = *a3;
  v16 = *(*a3 + 95);
  if (v16 < 0)
  {
    v16 = *(v15 + 80);
  }

  v17 = v16 == 0;
  v18 = 72;
  if (v17)
  {
    v18 = 0;
  }

  std::string::operator=(&v53, (v15 + v18));
  v19 = kCBMessageLocalizationTable;
  (*(*v13 + 40))(&__dst, v13, kCBMessageLocalizationTable, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_TITLE", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_TITLE");
  *buf = *(&v55 + 1);
  *(&v55 + 1) = __dst;
  *&__dst = 0;
  sub_100005978(buf);
  sub_100005978(&__dst);
  v52 = 0;
  v20 = (a1 + 528);
  if (*(a1 + 551) < 0)
  {
    v21 = *(a1 + 536);
    if (v21)
    {
      sub_100005F2C(__p, *v20, v21);
      goto LABEL_22;
    }

LABEL_24:
    v52 = @"iPhone";
    *buf = 0;
    sub_100005978(buf);
    goto LABEL_37;
  }

  if (!*(a1 + 551))
  {
    goto LABEL_24;
  }

  *__p = *v20;
  v50 = *(a1 + 544);
LABEL_22:
  if (SHIBYTE(v50) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v60 = v50;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    v64 = v60;
  }

  v61 = 0;
  if (ctu::cf::convert_copy())
  {
    v22 = v58;
    v58 = v61;
    v62 = v22;
    sub_100005978(&v62);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(*buf);
  }

  v51 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__dst);
  }

  v23 = v51;
  *buf = v52;
  v51 = 0;
  v52 = v23;
  sub_100005978(buf);
  sub_100005978(&v51);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_37:
  if ((*(*a3 + 71) & 0x8000000000000000) != 0)
  {
    if (*(*a3 + 56))
    {
      goto LABEL_39;
    }

LABEL_42:
    *&__dst = 0;
    (*(*v13 + 40))(&__dst, v13, v19, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_WATCH_NO_CARRIER_%@", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_WATCH_NO_CARRIER_%@");
    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", __dst, 0, v52);
    v26 = v56[0];
    v56[0] = StringWithValidatedFormat;
    *buf = v26;
    sub_100005978(buf);
    p_dst = &__dst;
    goto LABEL_59;
  }

  if (!*(*a3 + 71))
  {
    goto LABEL_42;
  }

LABEL_39:
  v51 = 0;
  (*(*v13 + 40))(&v51, v13, v19, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_WATCH_%@_%@", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_WATCH_%@_%@");
  v48 = 0;
  v24 = *a3;
  if (*(*a3 + 71) < 0)
  {
    sub_100005F2C(v46, *(v24 + 48), *(v24 + 56));
  }

  else
  {
    *v46 = *(v24 + 48);
    v47 = *(v24 + 64);
  }

  if (SHIBYTE(v47) < 0)
  {
    sub_100005F2C(&__dst, v46[0], v46[1]);
  }

  else
  {
    __dst = *v46;
    v60 = v47;
  }

  v58 = 0;
  if (SHIBYTE(v60) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    v64 = v60;
  }

  v61 = 0;
  if (ctu::cf::convert_copy())
  {
    v28 = v58;
    v58 = v61;
    v62 = v28;
    sub_100005978(&v62);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(*buf);
  }

  v48 = v58;
  v58 = 0;
  sub_100005978(&v58);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  v29 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", v51, 0, v48, v52);
  v30 = v56[0];
  v56[0] = v29;
  *buf = v30;
  sub_100005978(buf);
  sub_100005978(&v48);
  p_dst = &v51;
LABEL_59:
  sub_100005978(p_dst);
  (***(a1 + 88))(buf);
  v31 = Registry::getServiceMap(*buf);
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
  *&__dst = v33;
  v37 = sub_100009510(&v32[1].__m_.__sig, &__dst);
  if (!v37)
  {
    v39 = 0;
    goto LABEL_66;
  }

  v39 = v37[3];
  v38 = v37[4];
  if (!v38)
  {
LABEL_66:
    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
    goto LABEL_67;
  }

  atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v32);
  atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v38);
  v40 = 0;
LABEL_67:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v39)
  {
    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = &v53;
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v53.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Posting notification for (%s)", buf, 0xCu);
    }

    (*(*v39 + 16))(v39, &v53);
  }

  if ((v40 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  sub_100005978(&v52);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  sub_100005978(v56);
  sub_100005978(&v55 + 1);
  if (SHIBYTE(v54[2]) < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

LABEL_83:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

LABEL_85:
  v43 = *(a1 + 424);
  if (v43 == 2)
  {
    v45 = *(a1 + 232);
    if (*(a1 + 240) == v45)
    {
      sub_1002030E0();
    }

    (*(**(a1 + 136) + 72))(*(a1 + 136), v45 + 16, a3);
  }

  else if (v43 == 1)
  {
    v44 = *(a1 + 232);
    if (*(a1 + 240) == v44)
    {
      sub_1002030E0();
    }

    (*(**(a1 + 120) + 72))(*(a1 + 120), v44 + 16, a3);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B6E0();
  }
}

void sub_100324968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, const void *a26, __int16 a27, char a28, char a29, uint64_t a30)
{
  sub_100005978((v32 - 168));
  if (*(v32 - 137) < 0)
  {
    operator delete(*(v32 - 160));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a25);
  sub_100005978(&a26);
  sub_10051D34C(&a27);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(a1);
}

void sub_100324C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100324C9C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (!v8)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B77C();
    }

    v55[0] = 2;
    LOBYTE(v56) = 1;
    v14 = *(a6 + 24);
    if (!v14)
    {
      sub_100022DB4();
    }

    (*(*v14 + 48))(v14, v55);
    if (v55[0] != 1)
    {
      return;
    }

    v13 = v56;
    if (!v56)
    {
      return;
    }

    v57 = v56;
LABEL_76:
    operator delete(v13);
    return;
  }

  v9 = *(a1 + 232);
  if (*(a1 + 240) == v9 || *(v9 + 12) != 3)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B748();
    }

    v52[0] = 2;
    LOBYTE(v53) = 12;
    v12 = *(a6 + 24);
    if (!v12)
    {
      sub_100022DB4();
    }

    (*(*v12 + 48))(v12, v52);
    if (v52[0] != 1)
    {
      return;
    }

    v13 = v53;
    if (!v53)
    {
      return;
    }

    v54 = v53;
    goto LABEL_76;
  }

  if (!*(a1 + 184))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B714();
    }

    v49[0] = 2;
    LOBYTE(v50) = 11;
    v15 = *(a6 + 24);
    if (!v15)
    {
      sub_100022DB4();
    }

    (*(*v15 + 48))(v15, v49);
    if (v49[0] != 1)
    {
      return;
    }

    v13 = v50;
    if (!v50)
    {
      return;
    }

    v51 = v50;
    goto LABEL_76;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_10032B294(buf, "kSessionId", a3);
  sub_10032EB10(v44, buf, 1);
  if (v65 < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
  }

  if (*(a4 + 23) < 0)
  {
    v16 = *(a4 + 1);
    if (v16)
    {
      *buf = "kTokenID";
      sub_100005F2C(&v63, *a4, v16);
LABEL_34:
      sub_10032EE70(v44);
    }
  }

  else if (*(a4 + 23))
  {
    v63 = *a4;
    v11 = *(a4 + 2);
    *buf = "kTokenID";
    v64 = v11;
    goto LABEL_34;
  }

  if (*(a1 + 391) < 0)
  {
    v18 = *(a1 + 376);
    if (v18)
    {
      *buf = "kIMEI";
      sub_100005F2C(&v63, *(a1 + 368), v18);
LABEL_40:
      sub_10032EE70(v44);
    }
  }

  else if (*(a1 + 391))
  {
    v63 = *(a1 + 368);
    v17 = *(a1 + 384);
    *buf = "kIMEI";
    v64 = v17;
    goto LABEL_40;
  }

  if (*(a1 + 416) == 1)
  {
    v19 = (a1 + 392);
    if (*(a1 + 415) < 0)
    {
      v21 = *(a1 + 400);
      if (v21)
      {
        *buf = "kMEID";
        sub_100005F2C(&v63, *v19, v21);
LABEL_47:
        sub_10032EE70(v44);
      }
    }

    else if (*(a1 + 415))
    {
      v63 = *v19;
      v20 = *(a1 + 408);
      *buf = "kMEID";
      v64 = v20;
      goto LABEL_47;
    }
  }

  (***(a1 + 88))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v23 = ServiceMap;
  if (v24 < 0)
  {
    v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v24 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v24;
  v28 = sub_100009510(&v23[1].__m_.__sig, __p);
  if (v28)
  {
    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      v31 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v30 = 0;
  }

  std::mutex::unlock(v23);
  v29 = 0;
  v31 = 1;
LABEL_56:
  if (v63)
  {
    sub_100004A34(v63);
  }

  if (v30)
  {
    (*(*v30 + 208))(__p, v30);
    v63 = *__p;
    *buf = "kProductType";
    v64 = v59;
    __p[0] = 0;
    __p[1] = 0;
    v59 = 0;
    sub_10032EE70(v44);
  }

  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  if ((*(**(a1 + 216) + 16))(*(a1 + 216), v44, &v46))
  {
    v32 = *(a1 + 232);
    if (*(a1 + 240) == v32)
    {
      sub_1002030E0();
    }

    v33 = *(a1 + 72);
    v34 = *(v32 + 16);
    v35 = *(v32 + 24);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    sub_100034C50(&v38, v46, v47, v47 - v46);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 1174405120;
    v60[2] = sub_100325918;
    v60[3] = &unk_101E422D0;
    v60[4] = a1;
    sub_100112D40(v61, a6);
    (*(*v33 + 56))(v33, v34, v35, &v38, v60);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    sub_1000E1214(v61);
  }

  else
  {
    v36 = *(a1 + 40);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E Failed to encode device metadata", buf, 2u);
    }

    v41[0] = 2;
    LOBYTE(v42) = 3;
    v37 = *(a6 + 24);
    if (!v37)
    {
      sub_100022DB4();
    }

    (*(*v37 + 48))(v37, v41);
    if (v41[0] == 1 && v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    v41[0] = 0;
  }

  sub_10018D34C(v44);
  v13 = v46;
  if (v46)
  {
    v47 = v46;
    goto LABEL_76;
  }
}

void sub_100325738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  sub_10018D34C(&a18);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100325918(uint64_t a1, char **a2)
{
  v3 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_100325AC4;
  v10[3] = &unk_101E422A0;
  sub_100112D40(v11, a1 + 40);
  sub_1001121A4(v12, a2);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v3 + 8));
  v4 = *(v3 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10032F1F0;
  v6[3] = &unk_101E42C48;
  v6[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[4] = v10;
  dispatch_async(v4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v12[0] == 1 && __p)
  {
    v14 = __p;
    operator delete(__p);
  }

  v12[0] = 0;
  return sub_1000E1214(v11);
}

void sub_100325A98(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100325AC4(uint64_t a1)
{
  sub_1001121A4(v3, (a1 + 64));
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v3);
  if (v3[0] == 1)
  {
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

void sub_100325B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 1)
  {
    sub_10176B7B0(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100325BBC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }
  }

  *(a1 + 64) = 0;

  return sub_1000E1214(a1 + 32);
}

void sub_100325C30(uint64_t a1, __int128 **a2)
{
  v3 = *(a1 + 232);
  v4 = *a2;
  v5 = a2[1];
  v8 = a1;
  sub_100F11B6C(&v9, v3);
  if (v4 != v5)
  {
    while ((sub_10032B304(&v8, v4) & 1) == 0)
    {
      v4 = (v4 + 312);
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_11;
      }
    }

    if (v4 != v5)
    {
      for (i = (v4 + 312); i != v5; i = (i + 312))
      {
        if ((sub_10032B304(&v8, i) & 1) == 0)
        {
          sub_1000DE324(v4, i);
          v4 = (v4 + 312);
        }
      }
    }
  }

LABEL_11:
  sub_100325D70(a2, v4, a2[1]);
  if (v12[24] == 1)
  {
    v7 = v12;
    sub_100112120(&v7);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }
}

void sub_100325D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100325DE8(va);
  _Unwind_Resume(a1);
}

__int128 *sub_100325D70(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      sub_1000DE324(v7, v4);
      v4 = (v4 + 312);
      v7 += 312;
    }

    sub_1000DDCAC(a1, v7);
  }

  return a2;
}

uint64_t sub_100325DE8(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v3 = (a1 + 64);
    sub_100112120(&v3);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_100325E50(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100325F5C;
  v4[3] = &unk_101E42328;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_100325F5C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I sim connectivity probe", buf, 2u);
  }

  (*(**(v2 + 168) + 32))(buf);
  if (SHIBYTE(v27) < 0)
  {
    v8 = *&buf[8];
    operator delete(*buf);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (HIBYTE(v27))
  {
LABEL_5:
    v4 = *(v2 + 760);
    v5 = *(v2 + 768);
    if (v4 >= v5)
    {
      v10 = *(v2 + 752);
      v11 = (v4 - v10) >> 3;
      if ((v11 + 1) >> 61)
      {
        sub_1000CE3D4();
      }

      v12 = v5 - v10;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      v29 = v2 + 752;
      if (v14)
      {
        sub_1000B318C(v2 + 752, v14);
      }

      v15 = (8 * v11);
      *buf = 0;
      *&buf[8] = v15;
      v28 = 0;
      sub_10032B6D8(v15, (a1 + 32));
      v27 = v15 + 1;
      sub_10032B710((v2 + 752), buf);
      v7 = *(v2 + 760);
      result = sub_10032B7E8(buf);
    }

    else
    {
      result = sub_10032B6D8(*(v2 + 760), (a1 + 32));
      v7 = v4 + 8;
    }

    *(v2 + 760) = v7;
    if (!*(v2 + 680))
    {
      v16 = *(v2 + 88);
      v17 = *(v2 + 24);
      object = v17;
      if (v17)
      {
        dispatch_retain(v17);
      }

      v18 = sub_100326328(v2 + 640);
      (*(*v16 + 704))(buf, v16, &object, v18);
      v19 = *buf;
      memset(buf, 0, sizeof(buf));
      v20 = *(v2 + 688);
      *(v2 + 680) = v19;
      if (v20)
      {
        sub_100004A34(v20);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      if (object)
      {
        dispatch_release(object);
      }

      sub_10000501C(buf, "/cc/assertions/baseband_online");
      ctu::rest::AssertionHandle::create();
      if (SHIBYTE(v27) < 0)
      {
        operator delete(*buf);
      }

      v21 = v24;
      v24 = 0uLL;
      v22 = *(v2 + 672);
      *(v2 + 664) = v21;
      if (v22)
      {
        sub_100004A34(v22);
        if (*(&v24 + 1))
        {
          sub_100004A34(*(&v24 + 1));
        }
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_100326374;
      aBlock[3] = &unk_101E42300;
      aBlock[4] = v2;
      v28 = 0;
      *buf = off_101E3EF10;
      *&buf[8] = _Block_copy(aBlock);
      v28 = buf;
      ctu::rest::AssertionHandle::setHandler_impl();
      return sub_10000FF50(buf);
    }

    return result;
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Subscription not active", buf, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100326328(uint64_t a1)
{
  v3 = *(a1 + 8);
  v1 = a1 + 8;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = v1;
  do
  {
    if (*(v2 + 28) >= 1)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < 1));
  }

  while (v2);
  if (v4 != v1 && *(v4 + 28) <= 1)
  {
    return ConnectionAvailabilityContainer::available();
  }

  else
  {
    return 0;
  }
}

void sub_100326374(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I bb online granted: %d", buf, 8u);
  }

  if (a2)
  {
    v5 = *(v3 + 680);
    v6[0] = off_101E42C88;
    v6[1] = v3;
    v6[3] = v6;
    (**v5)(v5, v6);
    sub_10000FF50(v6);
  }
}

uint64_t sub_10032648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v10[0] = a2;
  v10[1] = a3;
  v6 = *(a1 + 168);
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
  }

  else
  {
    v7 = 0;
  }

  v9[0] = off_101E42D08;
  v9[1] = v7;
  v9[3] = v9;
  (*(*v6 + 72))(v6, v10, a4, v9);
  return sub_100113648(v9);
}

void sub_100326560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10032658C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_1003265C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v6 = *(a1 + 168);
  v10[0] = a2;
  v10[1] = a3;
  v11 = 1;
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
  }

  else
  {
    v7 = 0;
  }

  v9[0] = off_101E42D98;
  v9[1] = v7;
  v9[3] = v9;
  (*(*v6 + 80))(v6, v10, a4, v9);
  return sub_100113648(v9);
}

void sub_1003266A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1003266D0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t sub_10032670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v14[0] = a2;
  v14[1] = a3;
  v10 = *(a1 + 168);
  if (aBlock)
  {
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = 0;
  }

  v13[0] = off_101E42E18;
  v13[1] = v11;
  v13[3] = v13;
  (*(*v10 + 88))(v10, v14, a4, a5, a6, v13);
  return sub_10000FF50(v13);
}

void sub_1003267F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100326824(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100326898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a2;
  v26 = a3;
  v6 = a1[29];
  if (a1[30] == v6)
  {
    sub_1002030E0();
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v25 == v10 && v26 == v9)
  {
    v18 = 0;
    v19 = 0;
    v13 = *a4;
    v12 = *(a4 + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v13;
    v17 = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100326AE4;
    aBlock[3] = &unk_101E42350;
    aBlock[4] = a5;
    v18 = _Block_copy(aBlock);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_100326AF4;
    v14[3] = &unk_101E42378;
    v14[4] = a6;
    v14[5] = a1;
    v19 = _Block_copy(v14);
    sub_100326D04(a1 + 87, &v16);
    sub_100326DD4(a1);
    if (v19)
    {
      _Block_release(v19);
    }

    if (v18)
    {
      _Block_release(v18);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  else
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10176B7DC();
    }

    v20 = 258;
    v21[0] = 0;
    (*(a6 + 16))(a6, &v20, v21);
    if (v21[0] == 1)
    {
      if (v24[24] == 1)
      {
        v16 = v24;
        sub_100112120(&v16);
      }

      if (v23 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_100326A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100326AF4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (__PAIR64__(a2[1], *a2) == 0x600000002)
  {
    *(v6 + 256) = 257;
  }

  else if (*(v6 + 256) == 1)
  {
    *(v6 + 256) = 0;
  }

  if (*a3 == 1 && *(a3 + 88) == 1)
  {
    v7 = *(a3 + 64);
    v8 = *(a3 + 72);
    while (v7 != v8)
    {
      if ((*(**(v6 + 168) + 64))(*(v6 + 168), v7 + 16))
      {
        if ((*a3 & 1) == 0)
        {
          sub_10176B810();
        }

        v9 = *(a3 + 64);
        v10 = *(a3 + 72);
        while (v9 != v10)
        {
          *(v9 + 90) = (*(**(v6 + 168) + 64))(*(v6 + 168), v9 + 16);
          v9 += 216;
        }

        break;
      }

      v7 += 216;
    }
  }

  v11 = *(a1 + 32);
  v12 = 0;
  if (*a2 - 1 <= 1)
  {
    v12 = *a2;
  }

  v14[0] = 0;
  if (*a3 == 1)
  {
    sub_100F11B6C(&v15, a3 + 8);
    v14[0] = 1;
  }

  (*(v11 + 16))(v11, &v12, v14);
  if (v14[0] == 1)
  {
    if (v18[24] == 1)
    {
      v13 = v18;
      sub_100112120(&v13);
    }

    if (v17 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100326CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10016A858(va);
  _Unwind_Resume(a1);
}

void *sub_100326D04(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10032FBA4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8));
  v9 = a2[1];
  v10 = (v8 + 32 * (v7 & 0x7F));
  *v10 = *a2;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a2[2];
  if (v11)
  {
    v11 = _Block_copy(v11);
  }

  v10[2] = v11;
  result = a2[3];
  if (result)
  {
    result = _Block_copy(result);
  }

  v10[3] = result;
  ++a1[5];
  return result;
}

void sub_100326DD4(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Profile install already in progress", buf, 2u);
    }
  }

  else
  {
    v26 = 0u;
    *aBlock = 0u;
    while (1)
    {
      if (!*(a1 + 736))
      {
        goto LABEL_53;
      }

      sub_10032A774(&v26, (*(*(a1 + 704) + ((*(a1 + 728) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 728) & 0x7FLL)));
      if (*(v26 + 104) - *(v26 + 96) != 24)
      {
        break;
      }

      VinylInfo::findProfile();
      if ((v30 & 1) == 0)
      {
        break;
      }

      sub_100E3A5D4(buf);
      if (aBlock[1])
      {
        buf[0] = 1;
        sub_10032A810(&aBlock[1], buf, *(a1 + 232));
      }

      sub_10032A8FC((a1 + 696));
    }

    if (!*(a1 + 736))
    {
LABEL_53:
      *(a1 + 744) = 0;
      goto LABEL_54;
    }

    *(a1 + 744) = 1;
    sub_100004AA0(buf, (a1 + 8));
    v4 = *buf;
    v3 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v5 = *(a1 + 232);
    if (*(a1 + 240) == v5)
    {
      sub_1002030E0();
    }

    v6 = *(a1 + 72);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v9 = v26;
    v25 = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1174405120;
    v19[2] = sub_10032A990;
    v19[3] = &unk_101E425C8;
    v19[4] = a1;
    v19[5] = v4;
    v20 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v9;
    v22 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = aBlock[0];
    if (aBlock[0])
    {
      v10 = _Block_copy(aBlock[0]);
    }

    v23 = v10;
    v11 = aBlock[1];
    if (aBlock[1])
    {
      v11 = _Block_copy(aBlock[1]);
    }

    v24 = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1174405120;
    v14[2] = sub_10032AE08;
    v14[3] = &unk_101E425F8;
    v14[4] = a1;
    v14[5] = v4;
    v15 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v12 = aBlock[0];
    if (aBlock[0])
    {
      v12 = _Block_copy(aBlock[0]);
    }

    v17 = v12;
    v13 = aBlock[1];
    if (aBlock[1])
    {
      v13 = _Block_copy(aBlock[1]);
    }

    v18 = v13;
    (*(*v6 + 40))(v6, v7, v8, &v25, v19, v14);
    if (*(&v25 + 1))
    {
      sub_100004A34(*(&v25 + 1));
    }

    if (v18)
    {
      _Block_release(v18);
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (*(&v16 + 1))
    {
      sub_100004A34(*(&v16 + 1));
    }

    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    if (v24)
    {
      _Block_release(v24);
    }

    if (v23)
    {
      _Block_release(v23);
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

LABEL_54:
    if (aBlock[1])
    {
      _Block_release(aBlock[1]);
    }

    if (aBlock[0])
    {
      _Block_release(aBlock[0]);
    }

    if (*(&v26 + 1))
    {
      sub_100004A34(*(&v26 + 1));
    }
  }
}

void sub_10032719C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100327240(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

uint64_t sub_100327298(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1 && (*(a1 + 744) & 1) != 0)
  {
    v5 = *(a1 + 184);
    if (v5)
    {
      v6 = *(*(*(a1 + 704) + ((*(a1 + 728) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 728) & 0x7FLL));
      if (*(v6 + 104) - *(v6 + 96) == 24)
      {
        (*(*v5 + 80))(v5);
      }
    }
  }

  v7 = *(**(a1 + 72) + 48);

  return v7();
}

uint64_t sub_100327390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 72);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100327420;
  v7[3] = &unk_101E423A0;
  v7[4] = a5;
  return (*(*v5 + 136))(v5, a2, a3, a4, v7);
}

uint64_t sub_100327420(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 32);
  if (*a2 == 1)
  {
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3 & 1);
}

uint64_t sub_10032744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100327420;
  v7[3] = &unk_101E423A0;
  v7[4] = a5;
  return (*(*v5 + 136))(v5, a2, a3, a4, v7);
}

uint64_t sub_1003274DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 72);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10032756C;
  v7[3] = &unk_101E423C8;
  v7[4] = a5;
  return (*(*v5 + 144))(v5, a2, a3, a4, v7);
}

uint64_t sub_10032756C(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 32);
  if (*a2 == 1)
  {
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3 & 1);
}

uint64_t sub_100327598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10032756C;
  v7[3] = &unk_101E423C8;
  v7[4] = a5;
  return (*(*v5 + 144))(v5, a2, a3, a4, v7);
}

void sub_100327628(uint64_t a1, uint64_t a2, uint64_t *a3, _WORD *a4)
{
  if (*a2)
  {
    v7 = *(a1 + 232);
    for (i = *(a1 + 240); v7 != i; v7 += 88)
    {
      if ((*a2 & 1) == 0)
      {
        sub_101761304();
      }

      if (*(v7 + 16) == *(a2 + 1) && *(v7 + 24) == *(a2 + 9))
      {
        v11 = a3[1];
        if (v11 >= a3[2])
        {
          v12 = sub_10032B838(a3, v7);
        }

        else
        {
          sub_100F11B6C(a3[1], v7);
          v12 = v11 + 88;
          a3[1] = v11 + 88;
        }

        a3[1] = v12;
      }
    }
  }

  else if ((a1 + 232) != a3)
  {
    sub_100169D44(a3, *(a1 + 232), *(a1 + 240), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 240) - *(a1 + 232)) >> 3));
  }

  *a4 = *(a1 + 256);
}

uint64_t sub_100327734(NSObject **a1)
{
  v2 = capabilities::ct::allowChinaWSKUWatchesToProvisionROWPlans(a1);
  if (!v2)
  {
    return 3;
  }

  v3 = capabilities::ct::basebandGlobalSKU(v2);
  v4 = a1[5];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I China sku allowed to support Global (All) carriers", buf, 2u);
    }

    return 8;
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I China sku allowed to support RoW carriers", v7, 2u);
    }

    return 5;
  }
}

uint64_t sub_1003277EC(NSObject **a1)
{
  v2 = capabilities::ct::disallowROWWSKUWatchesToProvisionChinaPlans(a1);
  if (!v2)
  {
    return 5;
  }

  v3 = capabilities::ct::basebandGlobalSKU(v2);
  v4 = a1[5];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Global sku not allowed to provision China carriers", buf, 2u);
    }

    return 9;
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ROW sku not allowed to provision China carriers", v7, 2u);
    }

    return 6;
  }
}

void sub_1003278A4(uint64_t a1, uint64_t a2)
{
  v52 = 0;
  *v50 = 0u;
  v51 = 0u;
  *v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  *v44 = 0u;
  v45 = 0u;
  (***(a1 + 88))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  theData = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &theData);
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
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v12)
  {
    theData = 0;
    (*(*v12 + 176))(&theData, v12);
    if (theData)
    {
      if (CFDataGetLength(theData) == 16)
      {
        BytePtr = CFDataGetBytePtr(theData);
        v15 = BytePtr;
        v16 = BytePtr[8];
        if (v16 > 0x4D)
        {
          if (v16 != 82)
          {
            if (v16 == 78 && BytePtr[9] == 65 && !BytePtr[10] && !BytePtr[11])
            {
              v17 = 1;
              goto LABEL_46;
            }

            goto LABEL_47;
          }

          if (!BytePtr[9] && !BytePtr[10] && !BytePtr[11])
          {
            v26 = sub_1003277EC(a1);
            goto LABEL_42;
          }
        }

        else
        {
          if (v16 != 67)
          {
            if (v16 == 69 && BytePtr[9] == 85 && !BytePtr[10] && !BytePtr[11])
            {
              v17 = 2;
LABEL_46:
              BYTE8(v49) = v17;
              goto LABEL_50;
            }

            goto LABEL_47;
          }

          v25 = BytePtr[9];
          if (v25 == 77)
          {
            if (BytePtr[10] == 67 && BytePtr[11] == 67)
            {
              v17 = 4;
              goto LABEL_46;
            }
          }

          else if (v25 == 85 && !BytePtr[10] && !BytePtr[11])
          {
            v26 = sub_100327734(a1);
LABEL_42:
            BYTE8(v49) = v26;
            goto LABEL_50;
          }
        }

LABEL_47:
        v27 = *(a1 + 40);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v28 = v15[9];
        v29 = v15[10];
        v30 = v15[11];
        *buf = 67109888;
        *&buf[4] = v16;
        *&buf[8] = 1024;
        *&buf[10] = v28;
        *&buf[14] = 1024;
        *&buf[16] = v29;
        *&buf[20] = 1024;
        *&buf[22] = v30;
        v20 = "#I Invalid sku data [0x%x][0x%x][0x%x][0x%x]";
        v21 = v27;
        v22 = 26;
LABEL_49:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        goto LABEL_50;
      }

      v23 = *(a1 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        Length = CFDataGetLength(theData);
        *buf = 134217984;
        *&buf[4] = Length;
        v20 = "#I Invalid sku data length: %lu";
        v21 = v23;
        v22 = 12;
        goto LABEL_49;
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "#E no sku data";
        v21 = v19;
        v22 = 2;
        goto LABEL_49;
      }
    }

LABEL_50:
    sub_10002D760(&theData);
    goto LABEL_51;
  }

  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E no gestaltutility", buf, 2u);
  }

LABEL_51:
  if ((*(a1 + 391) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 376))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (*(a1 + 391))
  {
LABEL_55:
    sub_10016C728(&v45 + 8, (a1 + 368));
  }

LABEL_56:
  if (*(a1 + 416) == 1)
  {
    buf[0] = 0;
    if (*(a1 + 415) < 0)
    {
      sub_100005F2C(&buf[8], *(a1 + 392), *(a1 + 400));
    }

    else
    {
      *&buf[8] = *(a1 + 392);
      *&buf[24] = *(a1 + 408);
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  buf[0] = v31;
  sub_10016E3EC(&v47 + 8, buf);
  if (buf[0] == 1 && (buf[31] & 0x80000000) != 0)
  {
    operator delete(*&buf[8]);
  }

  HIDWORD(v51) = (*(**(a1 + 88) + 8))(*(a1 + 88));
  BYTE8(v51) = 1;
  HIDWORD(v52) = (*(**(a1 + 88) + 16))(*(a1 + 88));
  LOBYTE(v52) = 1;
  sub_10027E51C(__dst, v44);
  (*(a2 + 16))(a2, __dst);
  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v38 == 1)
  {
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v38 = 0;
  }

  if (v35 == 1)
  {
    if (v37 < 0)
    {
      operator delete(v36);
    }

    v35 = 0;
  }

  if ((v34 & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  operator delete(__dst[0]);
  if ((v13 & 1) == 0)
  {
LABEL_77:
    sub_100004A34(v11);
  }

LABEL_78:
  if (SBYTE7(v51) < 0)
  {
    operator delete(v50[0]);
  }

  if (BYTE8(v47) == 1)
  {
    if (SBYTE7(v49) < 0)
    {
      operator delete(v48[0]);
    }

    BYTE8(v47) = 0;
  }

  if (BYTE8(v45) == 1)
  {
    if (SBYTE7(v47) < 0)
    {
      operator delete(v46[0]);
    }

    BYTE8(v45) = 0;
  }

  if (SBYTE7(v45) < 0)
  {
    operator delete(v44[0]);
  }
}

void sub_100327E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_10002D760(&a9);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  sub_10027E6B0(va);
  _Unwind_Resume(a1);
}

void sub_100327F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  (*(**(a1 + 168) + 104))(*(a1 + 168), a2);
  if (a3)
  {
    memset(v9, 0, sizeof(v9));
    v7 = *(a4 + 24);
    if (!v7)
    {
      sub_100022DB4();
    }

    (*(*v7 + 48))(v7, v9);
    v10 = v9;
    sub_10016BF8C(&v10);
  }

  else
  {
    v8 = *(a1 + 168);
    sub_10032FD78(v11, a4);
    (*(*v8 + 120))(v8, v11);
    sub_10032FE10(v11);
  }
}

void sub_100328058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10032FE10(va);
  _Unwind_Resume(a1);
}

void sub_100328094(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    v6 = a1[29];
    if (v6 == a1[30])
    {
      v12 = a1[5];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No vinyl info available", buf, 2u);
        v4 = *(a4 + 24);
        v29[0] = 2;
        v30 = 0;
        if (!v4)
        {
          sub_100022DB4();
        }
      }

      else
      {
        v29[0] = 2;
        v30 = 0;
      }

      (*(*v4 + 48))(v4, v29);
      if (v29[0] == 1)
      {
        if (v44 < 0)
        {
          operator delete(v43);
        }

        if (v42 < 0)
        {
          operator delete(v41);
        }

        if (v40 < 0)
        {
          operator delete(v39);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        if (v36 < 0)
        {
          operator delete(v35);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          v11 = v31;
          goto LABEL_41;
        }
      }
    }

    else
    {
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (*a2 == v8 && a2[1] == v7)
      {
        sub_10032FE90(v46, a4);
        v47 = 0;
        operator new();
      }

      v10 = a1[5];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CSN mismatched", buf, 2u);
        v4 = *(a4 + 24);
        v13[0] = 2;
        v14 = 12;
        if (!v4)
        {
          sub_100022DB4();
        }
      }

      else
      {
        v13[0] = 2;
        v14 = 12;
      }

      (*(*v4 + 48))(v4, v13);
      if (v13[0] == 1)
      {
        if (v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        if (v16 < 0)
        {
          v11 = v15;
LABEL_41:
          operator delete(v11);
        }
      }
    }
  }
}

void sub_100328400(_Unwind_Exception *a1)
{
  sub_1003305D8(v1 - 88);
  sub_10032B980(v1 - 120);
  _Unwind_Resume(a1);
}

void sub_10032845C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 184))
  {
    sub_100330658(v6, a2);
    v7 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B714();
  }

  memset(v4, 0, sizeof(v4));
  v3 = *(a2 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, v4);
  v5 = v4;
  sub_1000DC8D4(&v5);
}

void sub_1003285C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000DEFB0(v11 - 56);
  sub_10032BA00(va);
  _Unwind_Resume(a1);
}

void sub_10032860C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100328718;
  v3[3] = &unk_101E423E8;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_100328744(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100330994;
  v5[3] = &unk_101E42F98;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    a2[12] = 0u;
    a2[13] = 0u;
    a2[10] = 0u;
    a2[11] = 0u;
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100330B98;
    v10 = &unk_101E42FD8;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    a2[12] = 0u;
    a2[13] = 0u;
    a2[10] = 0u;
    a2[11] = 0u;
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1003309A0;
    v10 = &unk_101E42FB8;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_100328898(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100330BEC(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1003289C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

std::string *sub_1003289DC@<X0>(std::string *result@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = result[9].__r_.__value_.__r.__words[2];
  if (result[10].__r_.__value_.__r.__words[0] != v4)
  {
    v5 = result;
    *a3 = *(v4 + 4);
    ctu::hex((v4 + 16), 0x10, a2);
    v6 = v5[9].__r_.__value_.__r.__words[2];
    data = v5[10].__r_.__value_.__l.__data_;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
    if (data == v6)
    {
      sub_1002030E0();
    }

    return std::string::operator=((a3 + 128), (v6 + 32));
  }

  return result;
}

void sub_100328A94(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100328BA0;
  v3[3] = &unk_101E42408;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_100328BCC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v9 = a1;
  sub_100004AA0(&v7, (a1 + 8));
  v6 = v8;
  v10 = v7;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
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

  sub_1000224C8(&v13, a3);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  operator new();
}

void sub_100328DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    v23 = *(v21 + 16);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100328E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100328F80;
  v9[3] = &unk_101E42430;
  v9[5] = a1;
  v10 = 0;
  if (*a2 == 1)
  {
    v11 = *(a2 + 1);
    v10 = 1;
  }

  v9[4] = a3;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v9;
  dispatch_async(v4, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_100328F74(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100328F80(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  if (*(a1 + 48) == 1)
  {
    v11 = *(a1 + 49);
    v10 = 1;
  }

  sub_100327628(v2, &v10, &v6, &v5);
  v3 = *(a1 + 32);
  memset(v4, 0, sizeof(v4));
  sub_10027E628(v4, v6, v7, 0x2E8BA2E8BA2E8BA3 * ((v7 - v6) >> 3));
  (*(v3 + 16))(v3, v4);
  v9 = v4;
  sub_100112048(&v9);
  v9 = &v6;
  sub_100112048(&v9);
}

void sub_100329074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_100112048(&a16);
  a16 = &a13;
  sub_100112048(&a16);
  _Unwind_Resume(a1);
}

__n128 sub_1003290A8(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    result = *(a2 + 49);
    *(a1 + 49) = result;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t sub_1003290C8(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  return result;
}

uint64_t sub_1003290DC(uint64_t a1, _OWORD *a2, __int128 *a3, uint64_t a4)
{
  v18 = *a2;
  memset(v9, 0, sizeof(v9));
  sub_10004ECBC(v9, a3);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1174405120;
  v14[2] = sub_1003292C0;
  v14[3] = &unk_101E42548;
  v14[5] = a1;
  v17 = v18;
  sub_10004ECBC(v15, v9);
  v16 = a2;
  v14[4] = a4;
  v12 = 0;
  v13 = 0;
  sub_100004AA0(&v12, (a1 + 8));
  v7 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v12;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v14;
  dispatch_async(v7, block);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_100F118F0(v15);
  return sub_100F118F0(v9);
}

void sub_100329294(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003292C0(void *a1)
{
  v1 = *(a1[5] + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I debug fetch profile - auto consent", buf, 2u);
  }

  sub_100330F44();
}

void sub_1003293FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100329414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100329528;
  v4[3] = &unk_101E424A0;
  v4[4] = v2;
  v4[5] = a2;
  v4[6] = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (v2 + 8));
  v3 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_100329528(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  if ((*(v3 + 91) & 1) != 0 || *(v3 + 92) == 1)
  {
    return sub_100327298(result, **(a1 + 48), *(*(a1 + 48) + 8), 1);
  }

  return result;
}

void sub_100329568(uint64_t a1, unsigned __int8 *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1174405120;
  v4[2] = sub_100329694;
  v4[3] = &unk_101E424E8;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = 0;
  if (*a2 - 1 <= 1)
  {
    v5 = *a2;
  }

  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v2 + 8));
  v3 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
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

uint64_t sub_100329694(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  if (*(a1 + 40) - 1 <= 1)
  {
    v4 = *(a1 + 40);
  }

  return (*(v2 + 16))(v2, &v4);
}

uint64_t sub_1003296E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 - 1) <= 1)
  {
    *(result + 40) = v2;
    *(result + 41) = *(a2 + 41);
  }

  return result;
}

void sub_100329728(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    _Block_copy(aBlock);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100329820(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
    if (aBlock)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __p = *a2;
    v7 = *(a2 + 2);
    if (aBlock)
    {
LABEL_3:
      v5 = _Block_copy(aBlock);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  aBlocka = v5;
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (a1 + 8));
  operator new();
}

void sub_100329994(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    _Block_copy(aBlock);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100329A8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 72);
  v7 = *a2;
  v8 = a2[1];
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v13 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v11 = *(a4 + 16);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_100329BF8;
  v9[3] = &unk_101E42578;
  v9[4] = a1;
  (*(*v6 + 88))(v6, v7, v8, __dst, __p, v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_100329BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100329BF8(uint64_t result, _BYTE *a2)
{
  if (*a2 == 2)
  {
    v3 = *(*(result + 32) + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176B83C(a2, v3);
    }
  }
}

void sub_100329C58(uint64_t result, uint64_t *a2)
{
  v5 = *(result + 232);
  v4 = (result + 232);
  v6 = *a2;
  v7 = a2[1];
  if (v7 - *a2 != *(result + 240) - v5)
  {
LABEL_5:
    if (v4 != a2)
    {
      sub_100169D44(v4, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
    }

    v8 = *(result + 424);
    if (v8 == 2)
    {
      v11 = *(result + 136);
      memset(v12, 0, sizeof(v12));
      v10 = v12;
      sub_10027E628(v12, *(result + 232), *(result + 240), 0x2E8BA2E8BA2E8BA3 * ((*(result + 240) - *(result + 232)) >> 3));
      (*(*v11 + 24))(v11, v12, result + 256);
    }

    else
    {
      if (v8 != 1)
      {
        if (os_log_type_enabled(*(result + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10176B8CC();
        }

        goto LABEL_14;
      }

      v9 = *(result + 120);
      memset(v13, 0, sizeof(v13));
      v10 = v13;
      sub_10027E628(v13, *(result + 232), *(result + 240), 0x2E8BA2E8BA2E8BA3 * ((*(result + 240) - *(result + 232)) >> 3));
      (*(*v9 + 24))(v9, v13, result + 256);
    }

    v14 = v10;
    sub_100112048(&v14);
LABEL_14:
    (*(**(result + 152) + 16))(*(result + 152));
    sub_100329E68(result + 264);
    return;
  }

  while (v6 != v7)
  {
    if (!VinylInfo::operator==())
    {
      goto LABEL_5;
    }

    v6 += 88;
    v5 += 88;
  }
}

void sub_100329E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100112048(va);
  _Unwind_Resume(a1);
}

void sub_100329E68(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/events/cellular_plan_info_changed");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_100329ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100329F10(uint64_t a1)
{
  (*(**(a1 + 152) + 16))(*(a1 + 152));

  sub_100329E68(a1 + 264);
}

void sub_100329F6C(uint64_t a1)
{
  (*(**(a1 + 96) + 16))(*(a1 + 96));

  sub_100329E68(a1 + 208);
}

void sub_10032A0B8(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (*(a3 + 23))
    {
      v5 = *(a1 + 72);
      v6 = *a2;
      v7 = a2[1];
      __dst = *a3;
      v21 = *(a3 + 2);
      goto LABEL_6;
    }

LABEL_8:
    v8 = *(a1 + 72);
    v9 = *a2;
    v10 = a2[1];
    v18[0] = 0;
    v18[1] = 0;
    v16[1] = 0;
    v17 = v18;
    v15 = v16;
    v16[0] = 0;
    sub_100112F20(v22, a4);
    (*(*v8 + 64))(v8, v9, v10, &v17, &v15, v22);
    sub_100112FB8(v22);
    sub_100009970(&v15, v16[0]);
    sub_100009970(&v17, v18[0]);
    return;
  }

  if (!*(a3 + 1))
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 72);
  v6 = *a2;
  v7 = a2[1];
  sub_100005F2C(&__dst, *a3, *(a3 + 1));
LABEL_6:
  sub_10011C9B0(v13, &__dst, 1);
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  sub_100112F20(v19, a4);
  (*(*v5 + 64))(v5, v6, v7, v13, &v11, v19);
  sub_100112FB8(v19);
  sub_100009970(&v11, v12[0]);
  sub_100009970(v13, v14);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst);
  }
}

uint64_t sub_10032A31C(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v6 = *(a1 + 72);
  v7 = *a2;
  v8 = a2[1];
  v12 = *a3;
  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, *(a3 + 2), *(a3 + 3));
  }

  else
  {
    __p = a3[1];
    v14 = *(a3 + 4);
  }

  v15 = *(a3 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_10032A49C;
  v10[3] = &unk_101E42598;
  sub_1001135B0(v11, a4);
  (*(*v6 + 72))(v6, v7, v8, &v12, v10);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  return sub_100113648(v11);
}

uint64_t sub_10032A49C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  if (*a2 - 1 <= 1)
  {
    v4 = *a2;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_10032A528(void *a1, void *a2, uint64_t *a3)
{
  v4 = a1[29];
  if (a1[30] == v4 || (v5 = *a3) == 0)
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10176B900();
    }
  }

  else
  {
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (*a2 == v7 && a2[1] == v6)
    {
      v12 = 0;
      aBlock = 0;
      v9 = a3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = v5;
      v11 = v9;
      sub_100326D04(a1 + 87, &v10);
      sub_100326DD4(a1);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v12)
      {
        _Block_release(v12);
      }

      if (v11)
      {
        sub_100004A34(v11);
      }
    }

    else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10176B7DC();
    }
  }
}

void sub_10032A634(uint64_t result, uint64_t a2, void *a3)
{
  if (*a3 == a3[1])
  {
    return;
  }

  v3 = *(result + 424);
  if (v3 == 2)
  {
    v4 = *(result + 136);
    goto LABEL_6;
  }

  if (v3 == 1)
  {
    v4 = *(result + 120);
LABEL_6:
    v5 = *(*v4 + 56);

    v5();
    return;
  }

  if (os_log_type_enabled(*(result + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B934();
  }
}

void sub_10032A6E0(uint64_t a1)
{
  v2 = *(a1 + 424);
  if (v2 == 2)
  {
    v3 = *(a1 + 136);
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 120);
LABEL_5:
    v4 = *(*v3 + 80);

    v4();
    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B968();
  }
}

void *sub_10032A774(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1];
  *a1 = v5;
  a1[1] = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a2[2];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = a1[2];
  a1[2] = v7;
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = a2[3];
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  v10 = a1[3];
  a1[3] = v9;
  if (v10)
  {
    _Block_release(v10);
  }

  return a1;
}

void sub_10032A810(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v3 = *a1;
  v4[0] = 1;
  v4[1] = *a2;
  sub_100F11B6C(&v7, a3);
  v6[0] = 1;
  (*(v3 + 16))(v3, v4, v6);
  if (v6[0] == 1)
  {
    if (v10[24] == 1)
    {
      v5 = v10;
      sub_100112120(&v5);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_10032A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10016A858(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10032A8FC(int64x2_t *a1)
{
  v2 = (*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  v3 = v2[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = v2[2];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = v2[1];
  if (v5)
  {
    sub_100004A34(v5);
  }

  a1[2] = vaddq_s64(a1[2], xmmword_1017CD970);

  return sub_100331AC4(a1, 1);
}

void sub_10032A990(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v10 = v8;
  v4 = *(a1 + 48);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 64);
  v12 = *(a1 + 56);
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  aBlock = v6;
  v7 = *(a1 + 80);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v15 = v7;
  v16[0] = 0;
  if (*a2 == 1)
  {
    sub_100F11F00(&v17, a2 + 8);
    v18 = 0;
    v19 = 0uLL;
    sub_100034C50(&v18, *(a2 + 224), *(a2 + 232), *(a2 + 232) - *(a2 + 224));
    v16[0] = 1;
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (v8 + 8));
  operator new();
}

void sub_10032ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_100E3A5D4(v18 + 64);
  sub_100327240((v17 + 24));
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _Unwind_Resume(a1);
}

void *sub_10032AD1C(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[8];
  a1[7] = a2[7];
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[9];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  a1[9] = v6;
  result = a2[10];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[10] = result;
  return result;
}

void sub_10032AD98(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10032AE08(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  v9 = *(a1 + 32);
  v11 = v9;
  v5 = *(a1 + 48);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  if (*a3 == 1)
  {
    sub_100F11B6C(&v14, (a3 + 8));
    v13 = 1;
  }

  v6 = *(a1 + 64);
  v15 = *(a1 + 56);
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v8 = *(a1 + 80);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v18 = v8;
  v19 = 0;
  if (*a2 - 1 <= 1)
  {
    v19 = *a2;
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_100004AA0(v10, (v9 + 8));
  operator new();
}

void sub_10032B0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032B0E8(uint64_t a1)
{
  *(a1 + 152) = 0;
  v2 = *(a1 + 144);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 112) == 1)
    {
      v7 = (a1 + 88);
      sub_100112120(&v7);
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10032B190(uint64_t a1)
{
  sub_10032BB00(a1);

  operator delete();
}

void sub_10032B1D0(uint64_t a1)
{
  sub_10032BB00(a1 - 48);

  operator delete();
}

void sub_10032B214(uint64_t a1)
{
  sub_10032BB00(a1 - 56);

  operator delete();
}

void sub_10032B258(uint64_t a1)
{
  sub_10032BB00(a1 - 64);

  operator delete();
}

uint64_t sub_10032B294(uint64_t a1, char *a2, __int128 *a3)
{
  sub_10000501C(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_10032B2E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032B304(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 120) != 1)
  {
    v5 = *(a2 + 95);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 80);
    }

    if (!v5)
    {
      return 0;
    }

    v6 = (a2 + 72);
    if (*(a1 + 88) == 1)
    {
      v7 = a1[8];
      for (i = a1[9]; v7 != i; v7 += 216)
      {
        if ((*(v7 + 39) & 0x8000000000000000) != 0)
        {
          if (*(v7 + 24))
          {
LABEL_14:
            __p[0] = 0;
            __p[1] = 0;
            v48 = 0;
            sub_10092CDF4(v7 + 16, __p);
            v9 = HIBYTE(v48);
            v10 = HIBYTE(v48);
            v11 = __p[1];
            if (v48 >= 0)
            {
              v12 = (__p + HIBYTE(v48));
            }

            else
            {
              v12 = (__p[0] + __p[1]);
            }

            if (v48 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            if (v13 != v12)
            {
              do
              {
                *v13 = __tolower(*v13);
                v13 = (v13 + 1);
              }

              while (v13 != v12);
              v9 = HIBYTE(v48);
              v11 = __p[1];
              v10 = HIBYTE(v48);
            }

            v14 = *(a2 + 95);
            if (v14 >= 0)
            {
              v15 = *(a2 + 95);
            }

            else
            {
              v15 = *(a2 + 80);
            }

            if (v10 < 0)
            {
              v9 = v11;
            }

            if (v15 == v9)
            {
              if (v14 >= 0)
              {
                v16 = (a2 + 72);
              }

              else
              {
                v16 = *v6;
              }

              if (v10 >= 0)
              {
                v17 = __p;
              }

              else
              {
                v17 = __p[0];
              }

              v18 = memcmp(v16, v17, v15) != 0;
              if (v10 < 0)
              {
LABEL_38:
                operator delete(__p[0]);
              }
            }

            else
            {
              v18 = 1;
              if (v10 < 0)
              {
                goto LABEL_38;
              }
            }

            if (!v18)
            {
              return 1;
            }
          }
        }

        else if (*(v7 + 39))
        {
          goto LABEL_14;
        }
      }
    }

    v19 = *(v2 + 704);
    if (*(v2 + 712) == v19)
    {
      return 0;
    }

    v20 = *(v2 + 728);
    v21 = (v19 + 8 * (v20 >> 7));
    v22 = *v21;
    v23 = *v21 + 32 * (v20 & 0x7F);
    v24 = *(v19 + (((*(v2 + 736) + v20) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v2 + 736) + v20) & 0x7F);
    if (v23 == v24)
    {
      return 0;
    }

    while (*(*v23 + 104) - *(*v23 + 96) != 24)
    {
LABEL_89:
      v23 += 32;
      if (v23 - v22 == 4096)
      {
        v43 = v21[1];
        ++v21;
        v22 = v43;
        v23 = v43;
      }

      if (v23 == v24)
      {
        return 0;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v48 = 0;
    v25 = *(*v23 + 96);
    if (*(v25 + 23) < 0)
    {
      sub_100005F2C(__p, *v25, *(v25 + 1));
    }

    else
    {
      v26 = *v25;
      v48 = *(v25 + 2);
      *__p = v26;
    }

    v27 = *(a2 + 95);
    if (v27 >= 0)
    {
      v28 = *(a2 + 95);
    }

    else
    {
      v28 = *(a2 + 80);
    }

    v29 = HIBYTE(v48);
    v30 = HIBYTE(v48);
    if (v48 < 0)
    {
      v29 = __p[1];
    }

    if (v28 == v29)
    {
      v31 = v27 >= 0 ? (a2 + 72) : *v6;
      v32 = v48 >= 0 ? __p : __p[0];
      if (!memcmp(v31, v32, v28))
      {
        v42 = 0;
        if ((v30 & 0x80) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    sub_10092CDF4(__p, &v44);
    v33 = HIBYTE(v46);
    v34 = HIBYTE(v46);
    v35 = v45;
    if (v46 >= 0)
    {
      v36 = &v44 + HIBYTE(v46);
    }

    else
    {
      v36 = v44 + v45;
    }

    if (v46 >= 0)
    {
      v37 = &v44;
    }

    else
    {
      v37 = v44;
    }

    if (v37 != v36)
    {
      do
      {
        *v37 = __tolower(*v37);
        ++v37;
      }

      while (v37 != v36);
      v33 = HIBYTE(v46);
      v35 = v45;
      v34 = HIBYTE(v46);
    }

    v38 = *(a2 + 95);
    if (v38 >= 0)
    {
      v39 = *(a2 + 95);
    }

    else
    {
      v39 = *(a2 + 80);
    }

    if (v34 < 0)
    {
      v33 = v35;
    }

    if (v39 == v33)
    {
      if (v38 >= 0)
      {
        v40 = (a2 + 72);
      }

      else
      {
        v40 = *v6;
      }

      if (v34 >= 0)
      {
        v41 = &v44;
      }

      else
      {
        v41 = v44;
      }

      v42 = memcmp(v40, v41, v39) != 0;
      if ((v34 & 0x80) == 0)
      {
LABEL_85:
        if ((v48 & 0x8000000000000000) == 0)
        {
LABEL_87:
          if (!v42)
          {
            return 1;
          }

          v22 = *v21;
          goto LABEL_89;
        }

LABEL_86:
        operator delete(__p[0]);
        goto LABEL_87;
      }
    }

    else
    {
      v42 = 1;
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_85;
      }
    }

    operator delete(v44);
    goto LABEL_85;
  }

  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B99C();
  }

  return 1;
}

void sub_10032B6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10032B6D8(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void sub_10032B710(const void ***result, void *a2)
{
  v4 = *result;
  v5 = result[1];
  v6 = (a2[1] + *result - v5);
  if (v5 != *result)
  {
    v7 = *result;
    v8 = (a2[1] + *result - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      sub_10032B7C4(v4++);
    }

    while (v4 != v5);
    v4 = *result;
  }

  a2[1] = v6;
  *result = v6;
  result[1] = v4;
  a2[1] = v4;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_10032B7C4(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_10032B7E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_10032B7C4((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10032B838(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10011DBFC(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_100F11B6C(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = a1[1];
  v8 = 88 * v2 + *a1 - v7;
  sub_10011DC58(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10011DD24(&v13);
  return v12;
}

void sub_10032B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10011DD24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10032B980(uint64_t a1)
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

uint64_t sub_10032BA00(uint64_t a1)
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

uint64_t sub_10032BA80(uint64_t a1)
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

uint64_t sub_10032BB00(uint64_t a1)
{
  *a1 = off_101E41F48;
  *(a1 + 48) = off_101E42110;
  *(a1 + 56) = off_101E421B0;
  v2 = (a1 + 64);
  *(a1 + 64) = off_101E42228;
  v17 = (a1 + 752);
  sub_10032BCFC(&v17);
  sub_10032BD80((a1 + 696));
  v3 = *(a1 + 688);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 672);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10006DCAC(a1 + 640, *(a1 + 648));
  sub_100DB14E0(a1 + 424);
  if (*(a1 + 416) == 1 && *(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  sub_1000EFBF0(a1 + 304);
  v17 = (a1 + 280);
  sub_1000B2AF8(&v17);
  v5 = *(a1 + 272);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v17 = (a1 + 232);
  sub_100112048(&v17);
  v6 = *(a1 + 224);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 208);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 160);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 144);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 128);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    sub_100004A34(v15);
  }

  CellularPlanSubscriptionControllerDelegate::~CellularPlanSubscriptionControllerDelegate(v2);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10032BCFC(const void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_10032B7C4(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10032BD80(void *a1)
{
  sub_10032BDD8(a1);
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  return sub_10001BD44(a1);
}

void sub_10032BDD8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 3);
        if (v9)
        {
          _Block_release(v9);
        }

        v10 = *(v7 + 2);
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v7 + 1);
        if (v11)
        {
          sub_100004A34(v11);
        }

        v7 += 32;
        if (v7 - *v6 == 4096)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v13 = v3 - v2;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v2);
      v14 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v13 = (v14 - v2) >> 3;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v15 = 64;
  }

  else
  {
    if (v13 != 2)
    {
      return;
    }

    v15 = 128;
  }

  a1[4] = v15;
}

void sub_10032BF84(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10032C058);
  __cxa_rethrow();
}

void sub_10032BFC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10032C018(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032C058(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10032C0F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E42780;
  a2[1] = v2;
  return result;
}

void sub_10032C120(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_10032C208(&v4, a2);
  sub_100288F04(v3, &v4);
  sub_10032C4B0(v2, v3);
  sub_100077CD4(v3, v3[1]);
  sub_100077CD4(&v4, v5[0]);
}

void sub_10032C190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_100077CD4(&a9, a10);
  sub_100077CD4(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10032C1BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032C208(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100077CD4(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        *object = 0u;
        v8 = 0u;
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10032C4F4(object, &v6);
        xpc_release(v6);
        sub_10032C6EC(a1, object, object);
        if (SHIBYTE(v8) < 0)
        {
          operator delete(object[1]);
        }
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_10032C40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

std::string *sub_10032C4B0(std::string *result, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = a2 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      if (*(v3 + 32) >= 1)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < 1));
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= 1)
    {
      return std::string::operator=(result, (v5 + 40));
    }
  }

  return result;
}

void sub_10032C4F4(uint64_t a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    v4 = object;
  }

  else
  {
    v4 = xpc_null_create();
    object = v4;
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    __p = &object;
    v13 = "first";
    sub_100006354(&__p, v10);
    type = xpc_get_type(v10[0]);
    if (type == &_xpc_type_string)
    {
      LODWORD(v7[0]) = *a1;
      ctu::rest::detail::read_enum_string_value(v7, v10, v6);
      *a1 = v7[0];
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(v10, 0, v6);
    }

    xpc_release(v10[0]);
    v7[0] = &object;
    v7[1] = "second";
    sub_100006354(v7, &v8);
    __p = 0;
    v13 = 0;
    v14 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *v10;
    *(a1 + 24) = v11;
    xpc_release(v8);
  }

  xpc_release(object);
}

void sub_10032C688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_10032C6EC(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
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

uint64_t sub_10032C840(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E42800;
  a2[1] = v2;
  return result;
}

uint64_t sub_10032C874(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032C9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032CA5C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42880;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032CA9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032CAE8(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10032CC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032CD00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032CD40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032CD8C(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a1;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  sub_10032CF1C(&v16, a2);
  v11 = 0;
  LOWORD(v11) = *v3;
  v4 = *(v3 + 24);
  *v12 = *(v3 + 8);
  v13 = v4;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  v5 = *(v3 + 32);
  v15 = *(v3 + 48);
  *__p = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  v9 = v16;
  v10[0] = v17;
  v10[1] = v18;
  if (v18)
  {
    v17[2] = v10;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v9 = v10;
  }

  sub_101156868(v3, &v9);
  sub_10032D3A4(&v9, v10[0]);
  if (rest::operator!=())
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = (a1[1] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  sub_10032D3A4(&v16, v17);
}

void sub_10032CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  sub_10032D3A4(va, v7);
  sub_1000EFBF0(va1);
  sub_10032D3A4(v3 - 56, *(v3 - 48));
  _Unwind_Resume(a1);
}

void sub_10032CF1C(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10032D3A4(a1, a1[1]);
  *a1 = a1 + 1;
  a1[2] = 0;
  a1[1] = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v13, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v12, object, count);
    xpc_release(object[0]);
    for (i = v14; i != v12[1] || v13 != v12[0]; i = ++v14)
    {
      v11 = 0;
      object[0] = &v13;
      object[1] = i;
      sub_10003EAD4(object, &v11);
      if (xpc_get_type(v11) == &_xpc_type_dictionary)
      {
        *object = xmmword_1017F2920;
        v8 = 0u;
        v9 = 0u;
        v10 = 0u;
        v6 = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10032D1F0(object, &v6);
        xpc_release(v6);
        sub_10032D458(a1, object, object);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(*(&v9 + 1));
        }

        if (SBYTE7(v9) < 0)
        {
          operator delete(v8);
        }
      }

      xpc_release(v11);
    }

    xpc_release(v12[0]);
    xpc_release(v13);
  }

  xpc_release(v3);
}

void sub_10032D154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v14 - 64));
  xpc_release(v13);
  _Unwind_Resume(a1);
}

void sub_10032D1F0(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10032D350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_10032D3A4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10032D3A4(a1, *a2);
    sub_10032D3A4(a1, a2[1]);
    sub_10032D400((a2 + 4));

    operator delete(a2);
  }
}

void sub_10032D400(uint64_t a1)
{
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

uint64_t *sub_10032D458(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
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

uint64_t sub_10032D574(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10032D400(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10032D69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032D74C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032D784(void *a1)
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

uint64_t sub_10032D7CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032D904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032D9B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42A00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032D9F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032DA40(uint64_t *a1, rest::PairedDeviceInfoList *a2, const xpc::object *a3)
{
  v4 = *a1;
  v26 = 0uLL;
  v27 = 0;
  rest::read_rest_value(&v26, a2, a3);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  memset(v20, 0, sizeof(v20));
  *&v18[16] = 0u;
  v19 = 0u;
  *v18 = 0u;
  v18[0] = *v4;
  v5 = *(v4 + 24);
  *&v18[8] = *(v4 + 8);
  *&v18[24] = v5;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  v6 = *(v4 + 48);
  v19 = *(v4 + 32);
  *&v20[0] = v6;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  v7 = *(v4 + 56);
  *(&v20[1] + 1) = *(v4 + 72);
  *(v20 + 8) = v7;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  v8 = *(v4 + 80);
  *&v22[0] = *(v4 + 96);
  v21 = v8;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  v9 = *(v4 + 104);
  *(&v22[1] + 1) = *(v4 + 120);
  *(v22 + 8) = v9;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  v10 = *(v4 + 128);
  *&v24[0] = *(v4 + 144);
  v23 = v10;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  v11 = *(v4 + 152);
  *(&v24[1] + 1) = *(v4 + 168);
  *(v24 + 8) = v11;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  LOWORD(v24[2]) = *(v4 + 176);
  v12 = *(v4 + 184);
  *(&v24[3] + 1) = *(v4 + 200);
  *(&v24[2] + 8) = v12;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  LOBYTE(v25) = *(v4 + 208);
  v16 = v26;
  v17 = v27;
  v26 = 0uLL;
  v27 = 0;
  sub_101058BEC(v4, &v16);
  v28 = &v16;
  sub_10032DC68(&v28);
  if (rest::operator!=())
  {
    v13 = a1[2];
    v14 = a1[3];
    v15 = (a1[1] + (v14 >> 1));
    if (v14)
    {
      v13 = *(*v15 + v13);
    }

    v13(v15);
  }

  sub_100DB14E0(v18);
  *v18 = &v26;
  sub_10032DC68(v18);
}

void sub_10032DC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 - 40) = v13;
  sub_10032DC68((v14 - 40));
  sub_100DB14E0(&a13);
  a13 = v14 - 64;
  sub_10032DC68(&a13);
  _Unwind_Resume(a1);
}

void sub_10032DC68(void ***a1)
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
        v4 = sub_100DB14E0(v4 - 216);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10032DDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032DE88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42A80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10032DEC0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032DFE4(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10032DF98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032DFE4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v28, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v27, object, count);
    xpc_release(object[0]);
    for (i = v29; i != v27[1] || v28 != v27[0]; i = ++v29)
    {
      v26 = 0;
      object[0] = &v28;
      object[1] = i;
      sub_10003EAD4(object, &v26);
      if (xpc_get_type(v26) == &_xpc_type_dictionary)
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        *object = 0u;
        v8 = 0u;
        ConnectionAvailabilityContainer::ConnectionAvailabilityContainer((object + 4));
        v6 = v26;
        if (v26)
        {
          xpc_retain(v26);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10032E2AC(object, &v6);
        xpc_release(v6);
        sub_10032E460(a1, object, object);
      }

      xpc_release(v26);
    }

    xpc_release(v27[0]);
    xpc_release(v28);
  }

  xpc_release(v3);
}

void sub_10032E21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 80));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_10032E2AC(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    read_rest_value((a1 + 1), &object);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10032E40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_10032E460(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
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

void sub_10032E618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032E6C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42B00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032E700(void *a1)
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

uint64_t sub_10032E748(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032E794(std::mutex *this, uint64_t *a2)
{
  v4 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v5 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t sub_10032E8CC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E42B80;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 24) = 0u;
  v2 = (a1 + 24);
  v2[15] = 0u;
  v2[16] = 0u;
  v2[17] = 0u;
  sub_100F11798(v2);
  return a1;
}

void sub_10032E990(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E42B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10032E9F0(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (*(*v1 + 240) == v3)
  {
    sub_1002030E0();
  }

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = v1[2];
  v10[0] = v1[1];
  v10[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100326898(v2, v4, v5, v10, &stru_101E42BE0, &stru_101E42C20);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10032EAB4(&v9);
  return sub_1000049E0(&v8);
}

void sub_10032EA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10032EAB4(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10032EAB4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_10032EB10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_10032EB8C(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **sub_10032EB8C(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1000D3314(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_10032EDF4();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100022D3C(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_10032EDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10018D7F8(va);
  _Unwind_Resume(a1);
}

void sub_10032EE70(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_10032EEE8();
}

void sub_10032EED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10018D7F8(va);
  _Unwind_Resume(a1);
}

const void **sub_10032EF8C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1000D3314(a1, (a2 + 16));
  *(v2 + 8) = v4;
  v5 = sub_10032EFF0(a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  sub_10032F13C(a1, v2);
  return v2;
}

const void **sub_10032EFF0(uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (sub_100022D3C(a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_10011CF40(a1, v18);
  }

  return 0;
}

uint64_t *sub_10032F13C(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t sub_10032F200(uint64_t result, uint64_t a2)
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

void sub_10032F21C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10032F29C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E42C88;
  a2[1] = v2;
  return result;
}

void sub_10032F2C8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I sim connectivity probe finished : %d", v9, 8u);
  }

  v5 = v3[94];
  v6 = v3[95];
  if (v5 != v6)
  {
    do
    {
      (*(*v5++ + 2))();
    }

    while (v5 != v6);
    v6 = v3[95];
    v5 = v3[94];
  }

  while (v6 != v5)
  {
    sub_10032B7C4(--v6);
  }

  v3[95] = v5;
  v7 = v3[86];
  v3[85] = 0;
  v3[86] = 0;
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = v3[84];
  v3[83] = 0;
  v3[84] = 0;
  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_10032F3F8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E42CE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10032F444(void *a1)
{
  *a1 = off_101E42D08;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10032F494(void *a1)
{
  *a1 = off_101E42D08;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_10032F574(uint64_t a1, void *a2)
{
  *a2 = off_101E42D08;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_10032F5CC(const void **a1)
{
  sub_10032F6AC(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10032F608(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 - 1 >= 2)
  {
    v3 = *(a1 + 8);
    v5 = 0;
  }

  else
  {
    v2 = a2[1];
    v3 = *(a1 + 8);
    LOBYTE(v5) = *a2;
    HIBYTE(v5) = v2;
  }

  return (*(v3 + 16))(v3, &v5);
}

uint64_t sub_10032F660(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032F6AC(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void *sub_10032F6D0(void *a1)
{
  *a1 = off_101E42D98;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10032F720(void *a1)
{
  *a1 = off_101E42D98;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_10032F800(uint64_t a1, void *a2)
{
  *a2 = off_101E42D98;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_10032F858(const void **a1)
{
  sub_10032F938(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10032F894(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 - 1 >= 2)
  {
    v3 = *(a1 + 8);
    v5 = 0;
  }

  else
  {
    v2 = a2[1];
    v3 = *(a1 + 8);
    LOBYTE(v5) = *a2;
    HIBYTE(v5) = v2;
  }

  return (*(v3 + 16))(v3, &v5);
}

uint64_t sub_10032F8EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032F938(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void *sub_10032F95C(void *a1)
{
  *a1 = off_101E42E18;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10032F9AC(void *a1)
{
  *a1 = off_101E42E18;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_10032FA8C(uint64_t a1, void *a2)
{
  *a2 = off_101E42E18;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_10032FAE4(const void **a1)
{
  sub_10032FB80(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10032FB34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032FB80(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_10032FBA4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1000FB8B8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100129284(a1, &v9);
}

void sub_10032FD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10032FD78(uint64_t a1, uint64_t a2)
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

uint64_t sub_10032FE10(uint64_t a1)
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

uint64_t sub_10032FE90(uint64_t a1, uint64_t a2)
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

void *sub_10032FF28(void *a1)
{
  *a1 = off_101E42E98;
  sub_10032B980((a1 + 1));
  return a1;
}

void sub_10032FF6C(void *a1)
{
  *a1 = off_101E42E98;
  sub_10032B980((a1 + 1));

  operator delete();
}

void sub_10033007C(void *a1)
{
  sub_10032B980(a1 + 8);

  operator delete(a1);
}

void sub_1003300B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1003304F8(v7, a2);
  if (v22 == 1)
  {
    v37[0] = 0;
    sub_100330430(v37, v7);
    v4 = *(a1 + 32);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, v37);
    if (v37[0] == 1)
    {
      if (v50 < 0)
      {
        operator delete(v49);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }

      if (v44 < 0)
      {
        operator delete(v43);
      }

      if (v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 < 0)
      {
        operator delete(v39);
      }

      if ((v38[23] & 0x80000000) != 0)
      {
        v5 = v38;
LABEL_34:
        operator delete(*v5);
      }
    }
  }

  else
  {
    v23[0] = 2;
    v23[8] = 3;
    v6 = *(a1 + 32);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, v23, v3);
    if (v23[0] == 1)
    {
      if (v36 < 0)
      {
        operator delete(__p);
      }

      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if ((v24[23] & 0x80000000) != 0)
      {
        v5 = v24;
        goto LABEL_34;
      }
    }
  }

  if (v22 == 1)
  {
    if (v21 < 0)
    {
      operator delete(v20);
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

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }
  }
}

void sub_100330310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 232) == 1)
  {
    sub_10011289C(v38 - 224);
  }

  if (a34 == 1)
  {
    sub_10011289C(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100330364(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003303B0(uint64_t a1, uint64_t a2)
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

std::string *sub_100330430(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    *(a1 + 8) = *a2;
    std::string::operator=((a1 + 16), (a2 + 8));
    std::string::operator=((a1 + 40), (a2 + 32));
    *(a1 + 64) = *(a2 + 56);
    std::string::operator=((a1 + 72), (a2 + 64));
    std::string::operator=((a1 + 96), (a2 + 88));
    std::string::operator=((a1 + 120), (a2 + 112));
    std::string::operator=((a1 + 144), (a2 + 136));
    result = std::string::operator=((a1 + 168), (a2 + 160));
    *(a1 + 192) = *(a2 + 184);
  }

  else
  {
    *a1 = 1;
    v5 = a1 + 8;

    return sub_10016A078(v5, a2);
  }

  return result;
}

__n128 sub_1003304F8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    *a1 = *a2;
    v2 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v2;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v3 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v3;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = *(a2 + 56);
    v4 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v4;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 88) = 0;
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v7 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v7;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    result = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = result;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = 1;
  }

  return result;
}