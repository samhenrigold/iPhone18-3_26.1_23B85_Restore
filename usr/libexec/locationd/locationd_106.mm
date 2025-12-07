uint64_t sub_1007ABD84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_1003C9040(a1, a2, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void sub_1007ABE00(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007ABE00(a1, *a2);
    sub_1007ABE00(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_1007ABE60(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    sub_100008080(v4);
  }

  operator delete(a2);
  return v3;
}

id sub_1007ABEA0(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 136);
  sub_10006032C(__p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 hasValueForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:{"stringWithUTF8String:", v5), v3}];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1007ABF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ABF6C(uint64_t a1)
{
  sub_1007ABFBC((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void **sub_1007ABFBC(void **a1)
{
  sub_1007ABFF8(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1007ABFF8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1007AC040(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1007AC0C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024707E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1007AC13C(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 136);
  sub_100E24D0C(__p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 hasValueForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:{"stringWithUTF8String:", v5), v3}];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1007AC1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AC208(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1000184F4(a1, a2);
  v23 = v5;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    objc_msgSend_cppClientKey(v5);
  }

  else
  {
    *buf = 0;
    *v25 = 0;
    *&v25[8] = 0;
  }

  v16 = buf;
  v6 = sub_10005AD2C((a1 + 1000), buf, &unk_101C66300, &v16);
  if ((v25[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = &v22;
  v7 = sub_10005AFCC(v6 + 10, &v22, &unk_101C66300, buf);
  v8 = v7[4];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0 || (v10 = v7[3]) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *v25 = 2082;
      *&v25[2] = "";
      *&v25[10] = 2082;
      *&v25[12] = "24CLTranscriptSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      v26 = 2114;
      v27 = v23;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating persistent subscription due to demand, type:%{public, location:escape_only}s, clientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v21 = sub_100018FC8(a1, v23, &xmmword_101CE6CD8);
    if (v23)
    {
      objc_msgSend_cppClientKey(v23);
    }

    else
    {
      v19 = 0uLL;
      v20 = 0;
    }

    sub_1001D2AE8(__p);
    sub_1000603E0(buf, &v19, __p, v22);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    sub_1007AC818();
  }

  if (!v11)
  {
    *a3 = 0;
    a3[1] = 0;
    if (qword_1025D47A0 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager.h", 383, "getOrCreatePersistentSubscriptionForClient");
      __break(1u);
LABEL_33:
      sub_10192D4D0();
    }
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v11;
  a3[1] = v9;
  sub_100008080(v9);
}

void sub_1007AC75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100008080(v29);
  if (*(v28 + 8))
  {
    sub_100008080(*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

void *sub_1007AC8BC(void *a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102470838;
  sub_1007AC9B4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1007AC938(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007AC9B4(uint64_t a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244(v11, *a5, *(a5 + 8));
  }

  else
  {
    *v11 = *a5;
    v12 = *(a5 + 16);
  }

  if (*(a5 + 47) < 0)
  {
    sub_100007244(__p, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    *__p = *(a5 + 24);
    v14 = *(a5 + 40);
  }

  v15 = *(a5 + 48);
  sub_100D9FBA8(a1, v7, v8, v9, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return a1;
}

void sub_1007ACA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007ACAC0(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 136);
  sub_100F3B404(__p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 hasValueForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:{"stringWithUTF8String:", v5), v3}];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1007ACB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACB8C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACC18(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACCA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACD30(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACDBC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACE48(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACED4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACF60(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACFEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD078(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD104(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD190(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD21C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD2A8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AD334(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v3 = *sub_1000F2B3C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1007AD3D8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD464(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD4F0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD57C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD608(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD694(uint64_t result)
{
  if (*(result + 24))
  {
    sub_1007AD6F0(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_1007AD6F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1007ABF6C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_1007AD734(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
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

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v3)
      {
        if (sub_10004FCC4(v12[2], *a2))
        {
          return v12;
        }
      }

      else
      {
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
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1007AD848(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1007AC040(&v6, v3);
  }

  return v2;
}

uint64_t sub_1007AD900(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102470888;
  sub_1000350D0((a1 + 24), a2);
  *(a1 + 208) = *(a2 + 184);
  return a1;
}

void sub_1007AD988(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1007ADABC(void *a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024708F8;
  sub_1007ADBB4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1007ADB38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024708F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007ADBB4(uint64_t a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244(v11, *a5, *(a5 + 8));
  }

  else
  {
    *v11 = *a5;
    v12 = *(a5 + 16);
  }

  if (*(a5 + 47) < 0)
  {
    sub_100007244(__p, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    *__p = *(a5 + 24);
    v14 = *(a5 + 40);
  }

  v15 = *(a5 + 48);
  sub_100F3B200(a1, v7, v8, v9, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return a1;
}

void sub_1007ADC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1007ADCC0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100007070(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_1007ADF38();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1007ADF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ADFDC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007ADFF8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1007AE070(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **sub_1007AE070(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100007070(a1, a2);
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
    sub_1007AE2D0();
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

  if (!sub_100019DF4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1007AE2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AE374(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1007AE390(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_1000F2B3C(a1, &v6, a2);
  if (!result)
  {
    sub_1007AE428();
  }

  return result;
}

void sub_1007AE4C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1007AE4E4(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_1000F2B3C(a1, &v7, a2);
  if (!v5)
  {
    sub_1007AE58C();
  }

  return v5;
}

char **sub_1007AE62C(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007AE678(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1007AE678(uint64_t a1)
{
  sub_100114ED0((a1 + 24), 0);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1007AE6CC(uint64_t a1)
{
  *a1 = off_102470948;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_1007AE73C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_100039BE8(result);

    operator delete();
  }

  return result;
}

void sub_1007AE7A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1007AE8A8(void *a1, void *a2, void **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102470AA0;
  v4 = a1 + 3;
  if (*a2)
  {
    v5 = *a2 + 112;
  }

  else
  {
    v5 = 0;
  }

  sub_100BA1094(v4, v5, *a3);
  return a1;
}

void sub_1007AE938(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007AE998(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007AE998(a1, *a2);
    sub_1007AE998(a1, a2[1]);
    sub_1007AE678((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_1007AE9F4(uint64_t a1)
{
  sub_1007AD6F0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1007AEA30(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007AEA30(a1, *a2);
    sub_1007AEA30(a1, a2[1]);
    sub_1007554A8((a2 + 4));

    operator delete(a2);
  }
}

void sub_1007AEA8C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1003C9518(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1007AEAE8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1003C9040(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t sub_1007AEB60(char *a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_1000F2B3C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_1007AEC28(uint64_t **a1, char *a2)
{
  v3 = sub_10045EF04(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  sub_1007AE678((v4 + 4));
  operator delete(v4);
  return 1;
}

void *sub_1007AED28(void *a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102470AF0;
  sub_1007AEE20((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1007AEDA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007AEE20(uint64_t a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244(v11, *a5, *(a5 + 8));
  }

  else
  {
    *v11 = *a5;
    v12 = *(a5 + 16);
  }

  if (*(a5 + 47) < 0)
  {
    sub_100007244(__p, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    *__p = *(a5 + 24);
    v14 = *(a5 + 40);
  }

  v15 = *(a5 + 48);
  sub_100E23618(a1, v7, v8, v9, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return a1;
}

void sub_1007AEF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007AEF2C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1007AEF8C(a1);
}

id sub_1007AEF8C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101935E78();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D8E5 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193626C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101935E78();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D8E5 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936364();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_1007AF26C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_100039BE8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1007AF2E4@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v3 - 68) = a2;
  *(v2 + 14) = result;
  return result;
}

void sub_1007AF2FC(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, v7, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x26u);
}

BOOL sub_1007AF32C()
{
  v1 = off_1025D47A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void *sub_1007AF34C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_10000EC00(va, a2);
}

NSArray *sub_1007AF364()
{
  sub_10000EC00(&v2, "com.apple.findmy.people");
  sub_10000EC00(&v4, "com.apple.findmy.devices");
  sub_10000EC00(v5, "com.apple.findmy.items");
  sub_1007ABD84(qword_102659E68, &v2, 3);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v5[i + 2]) < 0)
    {
      operator delete(v5[i]);
    }
  }

  __cxa_atexit(sub_10076CBC4, qword_102659E68, dword_100000000);
  v2 = 10;
  qword_102659E98 = 0;
  unk_102659EA0 = 0;
  qword_102659E90 = 0;
  sub_1006DFE88(&qword_102659E90, &v2, v3, 1uLL);
  __cxa_atexit(sub_10076CBC8, &qword_102659E90, dword_100000000);
  v2 = @"LocationTimeStarted";
  v3[0] = @"SignificantTimeStarted";
  v3[1] = @"RangeTimeStarted";
  v4 = @"BeaconRegionTimeStarted";
  result = [NSArray arrayWithObjects:&v2 count:4];
  qword_102659EA8 = result;
  return result;
}

void sub_1007AF504(_Unwind_Exception *exception_object)
{
  v3 = (v1 + 71);
  v4 = -72;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_1007AF568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_102470B40;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_101C8D980;
  *(a1 + 80) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = a2;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 121) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 175) = 0;
  *(a1 + 184) = xmmword_101C8D990;
  sub_10065DB6C(a1 + 200, a3);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v4 = objc_alloc_init(MADownloadOptions);
  *(a1 + 232) = v4;
  [v4 setDiscretionary:0];
  [*(a1 + 232) setAllowsCellularAccess:1];
  [*(a1 + 232) setAllowsExpensiveAccess:1];
  [*(a1 + 232) setRequiresPowerPluggedIn:0];
  v9 = 0;
  sub_10001CAF4(&v7);
  v5 = sub_1004FBB50(v7, "MADownloadTimeout", &v9, 0xFFFFFFFFLL);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v5)
  {
    [*(a1 + 232) setTimeoutIntervalForResource:v9];
  }

  *(a1 + 240) = [objc_msgSend(*(a1 + 48) "vendor")];
  return a1;
}

void sub_1007AF6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  sub_10065DC04(v11 + 200);
  if (*(v11 + 103) < 0)
  {
    operator delete(*v13);
  }

  if (*(v11 + 31) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007AF714(uint64_t a1)
{
  *a1 = off_102470B40;

  *(a1 + 232) = 0;
  [*(a1 + 144) invalidate];

  *(a1 + 144) = 0;
  [*(a1 + 152) invalidate];

  *(a1 + 152) = 0;
  *(a1 + 240) = 0;
  sub_10065DC04(a1 + 200);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1007AF7C8(void *a1)
{
  if (!a1)
  {
LABEL_10:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v2 = [a1 state];
  if (v2 >= 7)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67240451;
      v6[1] = [a1 state];
      v7 = 2113;
      v8 = [a1 attributes];
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#CLMA,isAssetOnDisk,asset has unexpected state,%{public}d,attributes,%{private}@", v6, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101936470(a1);
    }

    goto LABEL_10;
  }

  v3 = 0x6Cu >> v2;
  return v3 & 1;
}

uint64_t sub_1007AF8E8(void *a1)
{
  if (!a1)
  {
LABEL_10:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v2 = [a1 state];
  if (v2 >= 7)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67240451;
      v6[1] = [a1 state];
      v7 = 2113;
      v8 = [a1 attributes];
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#CLMA,isAssetPreInstalled,asset has unexpected state,%{public}d,attributes,%{private}@", v6, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101936580(a1);
    }

    goto LABEL_10;
  }

  v3 = 0x60u >> v2;
  return v3 & 1;
}

void *sub_1007AFA08(void *result)
{
  if (result)
  {
    v1 = result;
    result = sub_1007AF7C8(result);
    if (result)
    {
      return (sub_1007AF8E8(v1) ^ 1);
    }
  }

  return result;
}

uint64_t sub_1007AFA44(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    result = [objc_msgSend(result "attributes")];
    if (result)
    {
      v4 = result;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return [a3 isEqualToString:v4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
          if (result)
          {
            v5 = result;
            v6 = MEMORY[0];
            do
            {
              for (i = 0; i != v5; i = i + 1)
              {
                if (MEMORY[0] != v6)
                {
                  objc_enumerationMutation(v4);
                }

                v8 = *(8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([a3 isEqualToString:v8])
                  {
                    return 1;
                  }
                }

                else
                {
                  if (qword_1025D4870 != -1)
                  {
                    sub_101936790();
                  }

                  v9 = qword_1025D4878;
                  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                  {
                    v10 = objc_opt_class();
                    v11 = [NSStringFromClass(v10) UTF8String];
                    *buf = 136446210;
                    v17 = v11;
                    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#CLMA,hasAttribute,unexpected attribute type in array,%{public}s", buf, 0xCu);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_1019367B8(&v14, v8, &v15);
                  }
                }
              }

              v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
              result = 0;
            }

            while (v5);
          }
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_10193645C();
          }

          v12 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            *buf = 136446210;
            v17 = [NSStringFromClass(v13) UTF8String];
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#CLMA,hasAttribute,unexpected attribute type,%{public}s", buf, 0xCu);
          }

          result = sub_10000A100(121, 0);
          if (result)
          {
            sub_101936690();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1007AFD4C(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = [a1 attributes];
  v2 = [v1 objectForKey:ASAttributeContentVersion];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  return [v2 intValue];
}

uint64_t sub_1007AFD94(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = [a1 attributes];
  v2 = [v1 objectForKey:ASAttributeCompatibilityVersion];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  return [v2 intValue];
}

void sub_1007AFDDC(__int128 *a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1007AFEA8;
  v3[3] = &unk_102470B90;
  if (*(a1 + 23) < 0)
  {
    sub_100007244(&__p, *a1, *(a1 + 1));
  }

  else
  {
    __p = *a1;
    v5 = *(a1 + 2);
  }

  [a2 enumerateKeysAndObjectsUsingBlock:v3];
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }
}

void sub_1007AFE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AFEA8(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v7 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      *buf = 136446467;
      *&buf[4] = v7;
      *&buf[12] = 2081;
      *&buf[14] = [a2 UTF8String];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "%{public}s%{private}s dict", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019368F4(a1, a2);
    }

    if (*(a1 + 55) >= 0)
    {
      v8 = *(a1 + 55);
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = buf;
    sub_100070148(buf, v8 + 3);
    if (buf[23] < 0)
    {
      v9 = *buf;
    }

    if (v8)
    {
      v12 = *(a1 + 32);
      v11 = (a1 + 32);
      v10 = v12;
      if (v11[23] >= 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      memmove(v9, v13, v8);
    }

    *&v9[v8] = 2105376;
    if ((buf[23] & 0x80000000) != 0)
    {
      sub_100007244(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v21 = *&buf[16];
    }

    sub_1007AFDDC(__p, a3);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v15 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v15 = *v15;
      }

      *buf = 136446723;
      *&buf[4] = v15;
      *&buf[12] = 2081;
      *&buf[14] = [a2 UTF8String];
      *&buf[22] = 2113;
      v29 = a3;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "%{public}s%{private}s = %{private}@", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v16 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v16 = *v16;
      }

      v17 = qword_1025D4878;
      v22 = 136446723;
      v23 = v16;
      v24 = 2081;
      v25 = [a2 UTF8String];
      v26 = 2113;
      v27 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v17, 2, "%{public}s%{private}s = %{private}@", &v22, 32);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLMobileAsset::printDict(std::string, NSDictionary *)_block_invoke", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }
}

void sub_1007B0218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007B0254(uint64_t a1)
{
  sub_10001CAF4(buf);
  sub_10001CB4C(*buf, "MACatalogDownloadOnStartup", (a1 + 176), 0xFFFFFFFFLL);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  sub_1004FBADC(*buf, "MACatalogDownloadInterval", (a1 + 184));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  sub_1004FBADC(*buf, "MAAgressiveCatalogDownloadInterval", (a1 + 192));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) UTF8String];
    v4 = *(a1 + 176);
    v5 = *(a1 + 184);
    v6 = *(a1 + 192);
    *buf = 136381443;
    *&buf[4] = v3;
    *&buf[12] = 1026;
    *&buf[14] = v4;
    *&buf[18] = 2050;
    *&buf[20] = v5;
    *&buf[28] = 2050;
    *&buf[30] = v6;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog update check settings,downloadOnStatup,%{public}d,interval,%{public}lld,agressiveInterval,%{public}lld", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v27 = qword_1025D4878;
    v28 = [*(a1 + 56) UTF8String];
    v29 = *(a1 + 176);
    v30 = *(a1 + 184);
    v31 = *(a1 + 192);
    *v43 = 136381443;
    *&v43[4] = v28;
    *&v43[12] = 1026;
    *&v43[14] = v29;
    *&v43[18] = 2050;
    *&v43[20] = v30;
    *&v43[28] = 2050;
    *&v43[30] = v31;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v27, 0, "#CLMA,%{private}s,catalog update check settings,downloadOnStatup,%{public}d,interval,%{public}lld,agressiveInterval,%{public}lld", v43, 38);
    v33 = v32;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::init()", "%s\n", v32);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  sub_10001CAF4(buf);
  sub_1004FBADC(*buf, "MAFirstPurgeCheckDelay", (a1 + 32));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  sub_1004FBADC(*buf, "MAPurgeCheckInterval", (a1 + 40));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v7 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 56) UTF8String];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 136381187;
    *&buf[4] = v8;
    *&buf[12] = 2050;
    *&buf[14] = v9;
    *&buf[22] = 2050;
    *&buf[24] = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge check settings,delay,%{public}lld,interval,%{public}lld", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v34 = qword_1025D4878;
    v35 = [*(a1 + 56) UTF8String];
    v36 = *(a1 + 32);
    v37 = *(a1 + 40);
    *v43 = 136381187;
    *&v43[4] = v35;
    *&v43[12] = 2050;
    *&v43[14] = v36;
    *&v43[22] = 2050;
    *&v43[24] = v37;
    LODWORD(v40) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v34, 0, "#CLMA,%{private}s,asset purge check settings,delay,%{public}lld,interval,%{public}lld", v43, v40);
    v39 = v38;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::init()", "%s\n", v38);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  sub_10000EC00(buf, "com.apple.locationd.MACatalogDownload.");
  v11 = [*(a1 + 56) UTF8String];
  v12 = strlen(v11);
  v13 = std::string::append(buf, v11, v12);
  v15 = v13->__r_.__value_.__r.__words[0];
  *v43 = v13->__r_.__value_.__l.__size_;
  *&v43[7] = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v17 = *v43;
  *(a1 + 80) = v15;
  *(a1 + 88) = v17;
  *(a1 + 95) = *&v43[7];
  *(a1 + 103) = v16;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_1007B0904(a1, v14);
  v18 = [objc_msgSend(*(a1 + 48) "silo")];
  *(a1 + 144) = v18;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1007B1380;
  v42[3] = &unk_102449A78;
  v42[4] = a1;
  [v18 setHandler:v42];
  (*(*a1 + 56))(a1, 1);
  if (*(a1 + 176) == 1)
  {
    sub_1007B1A1C(a1);
  }

  else
  {
    sub_1007B1640(a1);
  }

  sub_10000EC00(buf, "com.apple.locationd.AssetPurge.");
  v19 = [*(a1 + 56) UTF8String];
  v20 = strlen(v19);
  v21 = std::string::append(buf, v19, v20);
  v22 = v21->__r_.__value_.__r.__words[0];
  *v43 = v21->__r_.__value_.__l.__size_;
  *&v43[7] = *(&v21->__r_.__value_.__r.__words[1] + 7);
  v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v24 = *v43;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24;
  *(a1 + 23) = *&v43[7];
  *(a1 + 31) = v23;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_1007B1E84(a1);
  v25 = [objc_msgSend(*(a1 + 48) "silo")];
  *(a1 + 152) = v25;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1007B2178;
  v41[3] = &unk_102449A78;
  v41[4] = a1;
  [v25 setHandler:v41];
  return [*(a1 + 152) setNextFireDelay:600.0];
}

void sub_1007B08B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, std::__shared_weak_count *a28, int a29, __int16 a30, char a31, char a32)
{
  if (a28)
  {
    sub_100008080(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B0904(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000206B4(a1, a2);
  (*(*v3 + 936))(v3);
  v4 = sub_10004FD18();
  v6 = sub_1000206B4(v4, v5);
  v7 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v7 = *v7;
  }

  if (sub_100185B50(v6, [NSString stringWithUTF8String:v7], v56))
  {
    v8 = sub_100023B78(v56, @"kLastAttemptedCatalogDownloadKey", (a1 + 104));
    if ((v8 & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v9 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v60 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last attempted catalog download", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v29 = qword_1025D4878;
        v30 = [*(a1 + 56) UTF8String];
        v57 = 136380675;
        v58 = v30;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v29, 16, "#CLMA,%{private}s,cache did not contain time of last attempted catalog download", &v57, 12);
        v32 = v31;
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    if (sub_100023B78(v56, @"kLastSuccessfulCatalogDownloadKey", (a1 + 112)))
    {
      v11 = v8 ^ 1;
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v14 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v15 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v60 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last successful catalog download", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v33 = qword_1025D4878;
        v34 = [*(a1 + 56) UTF8String];
        v57 = 136380675;
        v58 = v34;
        LODWORD(v53) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v33, 16, "#CLMA,%{private}s,cache did not contain time of last successful catalog download", &v57, v53);
        v36 = v35;
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v35);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      v11 = 1;
    }

    if ((sub_100023B78(v56, @"kLastAttemptedAssetDownloadKey", (a1 + 120)) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v16 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v60 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last attempted asset download", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v37 = qword_1025D4878;
        v38 = [*(a1 + 56) UTF8String];
        v57 = 136380675;
        v58 = v38;
        LODWORD(v53) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v37, 16, "#CLMA,%{private}s,cache did not contain time of last attempted asset download", &v57, v53);
        v40 = v39;
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v39);
        if (v40 != buf)
        {
          free(v40);
        }
      }

      v11 = 1;
    }

    if ((sub_100023B78(v56, @"kLastSuccessfulAssetDownloadKey", (a1 + 128)) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v18 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v60 = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last successful asset download", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v41 = qword_1025D4878;
        v42 = [*(a1 + 56) UTF8String];
        v57 = 136380675;
        v58 = v42;
        LODWORD(v53) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 16, "#CLMA,%{private}s,cache did not contain time of last successful asset download", &v57, v53);
        v44 = v43;
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v43);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      v11 = 1;
    }

    if ((sub_100023B78(v56, @"kLastDownloadNotTriggeredKey", (a1 + 160)) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v20 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v21 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v60 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last download not triggered AWD", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v45 = qword_1025D4878;
        v46 = [*(a1 + 56) UTF8String];
        v57 = 136380675;
        v58 = v46;
        LODWORD(v53) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v45, 16, "#CLMA,%{private}s,cache did not contain time of last download not triggered AWD", &v57, v53);
        v48 = v47;
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v47);
        if (v48 != buf)
        {
          free(v48);
        }
      }

      v11 = 1;
    }

    if ((sub_100023B78(v56, @"kLastVersionReportingAwdKey", (a1 + 168)) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v22 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v23 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v60 = v23;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last version reporting AWD", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v49 = qword_1025D4878;
        v50 = [*(a1 + 56) UTF8String];
        v57 = 136380675;
        v58 = v50;
        LODWORD(v53) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 16, "#CLMA,%{private}s,cache did not contain time of last version reporting AWD", &v57, v53);
        v52 = v51;
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v51);
        if (v52 != buf)
        {
          free(v52);
        }
      }

      v11 = 1;
    }

    sub_10000EC00(__p, "loaded");
    sub_1007B2524(a1, __p);
    if ((v55 & 0x80000000) == 0)
    {
      if (!v11)
      {
        return sub_100005DA4();
      }

      goto LABEL_56;
    }

    operator delete(__p[0]);
    if (v11)
    {
LABEL_56:
      sub_1007B23B8(a1);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v12 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 56) UTF8String];
      *buf = 136380675;
      v60 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,no download stats available", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936A1C(buf);
      v25 = qword_1025D4878;
      v26 = [*(a1 + 56) UTF8String];
      v57 = 136380675;
      v58 = v26;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 0, "#CLMA,%{private}s,no download stats available", &v57, 12);
      v28 = v27;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    sub_1007B23B8(a1);
  }

  return sub_100005DA4();
}

id sub_1007B1380(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(v1 + 56) UTF8String];
    v14 = 136380675;
    v15 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,agressive download check timer fired", &v14, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936A60();
  }

  if (*(v1 + 136) == 1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v1 + 56) UTF8String];
      v14 = 136380675;
      v15 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,agressive download already scheduled", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936D30();
    }

LABEL_22:
    v9 = *(v1 + 144);
    v10 = 1.79769313e308;
    return [v9 setNextFireDelay:v10];
  }

  v6 = *(v1 + 192);
  if (CFAbsoluteTimeGetCurrent() - *(v1 + 112) > v6)
  {
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(v1 + 56) UTF8String];
      v14 = 136380675;
      v15 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,time to switch to agressive downloads", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936C40();
    }

    sub_1007B1640(v1);
    goto LABEL_22;
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v11 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(v1 + 56) UTF8String];
    v14 = 136380675;
    v15 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,not time to switch to agressive downloads", &v14, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936B50();
  }

  v9 = *(v1 + 144);
  v10 = (*(v1 + 184) / 2);
  return [v9 setNextFireDelay:v10];
}

id sub_1007B1640(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = v2 / 2;
  if (*(a1 + 104) == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v4 = *(a1 + 104) + (3 * v2 / 4);
    Current = CFAbsoluteTimeGetCurrent();
    v6 = (v4 - Current) & ~((v4 - Current) >> 63);
  }

  v7 = *(a1 + 192);
  *(a1 + 136) = CFAbsoluteTimeGetCurrent() - *(a1 + 112) > v7;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v8, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION_DOWNLOAD);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, (*(a1 + 136) & 1) == 0);
  xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_DELAY, v6);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_GRACE_PERIOD, v3);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v9 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 56) UTF8String];
    v11 = *(a1 + 136);
    *buf = 136381443;
    v30 = v10;
    v31 = 1026;
    v32 = v11;
    v33 = 2050;
    v34 = v6;
    v35 = 2050;
    v36 = v3;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,registering catalog download activity,agressiveDownload,%{public}d,delay,%{public}lld,gracePeriod,%{public}lld", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v15 = qword_1025D4878;
    v16 = [*(a1 + 56) UTF8String];
    v17 = *(a1 + 136);
    v21 = 136381443;
    v22 = v16;
    v23 = 1026;
    v24 = v17;
    v25 = 2050;
    v26 = v6;
    v27 = 2050;
    v28 = v3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 0, "#CLMA,%{private}s,registering catalog download activity,agressiveDownload,%{public}d,delay,%{public}lld,gracePeriod,%{public}lld", &v21, 38);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::registerCatalogDownloadActivity()", "%s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v12 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v12 = *v12;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1007B266C;
  handler[3] = &unk_102470BC0;
  handler[4] = a1;
  xpc_activity_register(v12, v8, handler);
  xpc_release(v8);
  v13 = (v6 + v3);
  if (*(a1 + 136))
  {
    v13 = 1.79769313e308;
  }

  return [*(a1 + 144) setNextFireDelay:v13];
}

void sub_1007B1A1C(uint64_t a1)
{
  if ((*(a1 + 177) & 1) == 0)
  {
    *(a1 + 177) = 1;
    v21 = 0;
    v22 = &v21;
    v23 = 0x14812000000;
    v24 = sub_1000474F4;
    v25 = sub_100048458;
    v26 = &unk_10238AE8B;
    v28 = 0xBFF0000000000000;
    *v29 = 0u;
    v30 = 0u;
    v31 = 0;
    v32 = -1;
    v33 = -2;
    v34 = -1;
    v35 = -1;
    v36 = -1;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v41 = -1;
    v42 = -1;
    v40 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v48 = -1;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = -1;
    v54 = -1;
    v55 = 0;
    __p = 0;
    v57 = 0;
    v59 = -1;
    v60 = -1;
    v58 = 0;
    v61 = 0;
    v27 = 1;
    Current = CFAbsoluteTimeGetCurrent();
    v3 = v22;
    v22[7] = Current;
    if (*(v3 + 87) < 0)
    {
      *(v3 + 9) = 19;
      v4 = *(v3 + 8);
    }

    else
    {
      v4 = (v3 + 8);
      *(v3 + 87) = 19;
    }

    strcpy(v4, "com.apple.locationd");
    v5 = v22;
    *(v22 + 23) = *(a1 + 72);
    v6 = v5[7];
    if (v6 > 0.0)
    {
      v7 = *(a1 + 104);
      if (v7 > 0.0)
      {
        *(v5 + 29) = llround((v6 - v7) / 86400.0);
      }
    }

    if (v6 > 0.0)
    {
      v8 = *(a1 + 112);
      if (v8 > 0.0)
      {
        *(v5 + 30) = llround((v6 - v8) / 86400.0);
      }
    }

    *(v5 + 132) = *(a1 + 136);
    v9 = [*(a1 + 232) description];
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 56) UTF8String];
      v12 = [v9 UTF8String];
      *buf = 136380931;
      v67 = v11;
      v68 = 2081;
      v69 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,starting catalog download with options,%{private}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936A1C(buf);
      v15 = qword_1025D4878;
      v16 = [*(a1 + 56) UTF8String];
      v17 = [v9 UTF8String];
      v62 = 136380931;
      v63 = v16;
      v64 = 2081;
      v65 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v15, 0, "#CLMA,%{private}s,starting catalog download with options,%{private}s", &v62, 22);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadCatalog()", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v13 = *(a1 + 64);
    v14 = *(a1 + 232);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1007B285C;
    v20[3] = &unk_102470C10;
    v20[4] = &v21;
    v20[5] = a1;
    [MAAsset startCatalogDownload:v13 options:v14 then:v20];
    *(a1 + 104) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(a1);
    _Block_object_dispose(&v21, 8);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v38);
    }

    if (SBYTE7(v30) < 0)
    {
      operator delete(v29[0]);
    }
  }
}

void sub_1007B1E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  sub_1007B65A0(v17 + 48);
  _Unwind_Resume(a1);
}

void sub_1007B1E84(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, *(a1 + 40));
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, *(a1 + 32));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, *(a1 + 40) / 2);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 56) UTF8String];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 136381443;
    v24 = v4;
    v25 = 2050;
    v26 = v5;
    v27 = 2050;
    v28 = v6 / 2;
    v29 = 2050;
    v30 = v6;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,registering asset purge activity,delay,%{public}lld,gracePeriod,%{public}lld,interval,%{public}lld", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v8 = qword_1025D4878;
    v9 = [*(a1 + 56) UTF8String];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v15 = 136381443;
    v16 = v9;
    v17 = 2050;
    v18 = v10;
    v19 = 2050;
    v20 = v11 / 2;
    v21 = 2050;
    v22 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v8, 0, "#CLMA,%{private}s,registering asset purge activity,delay,%{public}lld,gracePeriod,%{public}lld,interval,%{public}lld", &v15, 42);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::registerAssetPurgeActivity()", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v7 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v7 = *v7;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1007B50FC;
  handler[3] = &unk_102470BC0;
  handler[4] = a1;
  xpc_activity_register(v7, v2, handler);
  xpc_release(v2);
}

id sub_1007B2178(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(v1 + 56) UTF8String];
    v5 = 136380675;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,periodic AWD timer fired", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936E20();
  }

  return sub_1007B225C(v1);
}

id sub_1007B225C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_10001CAF4(&v14);
  v16 = 0;
  v3 = sub_1004FB7DC(v14, "DownloadNotTriggeredPeriod", &v16, 0xFFFFFFFFLL);
  LODWORD(v4) = v16;
  v5 = v4;
  if (v15)
  {
    sub_100008080(v15);
  }

  v6 = vabdd_f64(Current, *(a1 + 112));
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 604800.0;
  }

  if (v6 > v7 && vabdd_f64(Current, *(a1 + 160)) > v7)
  {
    sub_1007B5C2C(a1);
    *(a1 + 160) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(a1);
  }

  sub_10001CAF4(&v14);
  v16 = 0;
  v8 = sub_1004FB7DC(v14, "VersionReportingPeriod", &v16, 0xFFFFFFFFLL);
  LODWORD(v9) = v16;
  v10 = v9;
  if (v15)
  {
    sub_100008080(v15);
  }

  v11 = vabdd_f64(Current, *(a1 + 168));
  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 604800.0;
  }

  if (v11 > v12)
  {
    sub_1007B6288(a1);
    *(a1 + 168) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(a1);
  }

  return [*(a1 + 152) setNextFireDelay:86400.0];
}

void sub_1007B239C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B23B8(char *a1)
{
  sub_10004FD18();
  sub_100116DD4(v12, @"kLastAttemptedCatalogDownloadKey", a1 + 104);
  sub_100116DD4(v12, @"kLastSuccessfulCatalogDownloadKey", a1 + 112);
  sub_100116DD4(v12, @"kLastAttemptedAssetDownloadKey", a1 + 120);
  sub_100116DD4(v12, @"kLastSuccessfulAssetDownloadKey", a1 + 128);
  sub_100116DD4(v12, @"kLastDownloadNotTriggeredKey", a1 + 160);
  v2 = sub_100116DD4(v12, @"kLastVersionReportingAwdKey", a1 + 168);
  v4 = sub_1000206B4(v2, v3);
  v5 = a1 + 80;
  if (a1[103] < 0)
  {
    v5 = *v5;
  }

  v6 = sub_1004FD4EC(v4, [NSString stringWithUTF8String:v5], v12);
  v8 = sub_1000206B4(v6, v7);
  (*(*v8 + 944))(v8);
  sub_10000EC00(__p, "wrote");
  sub_1007B2524(a1, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_100005DA4();
}

void sub_1007B24F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005DA4();
  _Unwind_Resume(a1);
}

void sub_1007B2524(uint64_t a1, void ***a2)
{
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 56) UTF8String];
    v6 = a2;
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
    }

    v7 = *(a1 + 104);
    v8 = *(a1 + 112);
    v9 = *(a1 + 120);
    v10 = *(a1 + 128);
    v11 = *(a1 + 160);
    v12 = *(a1 + 168);
    v13 = 136382467;
    v14 = v5;
    v15 = 2082;
    v16 = v6;
    v17 = 2050;
    v18 = v7;
    v19 = 2050;
    v20 = v8;
    v21 = 2050;
    v22 = v9;
    v23 = 2050;
    v24 = v10;
    v25 = 2050;
    v26 = v11;
    v27 = 2050;
    v28 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,%{public}s,catalog download stats cache,lastAttemptedCatalogDownload,%{public}.1f,lastSuccessfulCatalogDownload,%{public}.1f,lastAttemptedAssetDownload,%{public}.1f,lastSuccessfulAssetDownload,%{public}.1f,lastDownloadNotTriggeredAwd,%{public}.1f,lastVersionReportingAwd,%{public}.1f", &v13, 0x52u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936F10(a1, a2);
  }
}

void sub_1007B266C(uint64_t a1, xpc_activity_t activity)
{
  v2 = *(a1 + 32);
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v2 + 56) UTF8String];
      *buf = 136380675;
      v12 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog download activity handler triggered", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937168();
    }

    v6 = [objc_msgSend(*(v2 + 48) "silo")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007B2854;
    block[3] = &unk_102449A78;
    block[4] = v2;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = state;
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(v2 + 56) UTF8String];
      *buf = 136380931;
      v12 = v9;
      v13 = 1026;
      v14 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog download activity handler triggered with unexpected state %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937074();
    }
  }
}

void sub_1007B285C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [objc_msgSend(*(v4 + 48) "silo")];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007B290C;
  v7[3] = &unk_102470BE8;
  v7[4] = *(a1 + 32);
  v7[5] = v4;
  v7[6] = a2;
  *&v7[7] = Current;
  dispatch_async(v6, v7);
}

void sub_1007B290C(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  *(v4 + 177) = 0;
  *(*(*(a1 + 32) + 8) + 108) = v2;
  *(*(*(a1 + 32) + 8) + 112) = vcvtpd_s64_f64(*(a1 + 56) - *(*(*(a1 + 32) + 8) + 56));
  if (v2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(v4 + 56) UTF8String];
      v7 = *v3;
      *buf = 136380931;
      *&buf[4] = v6;
      *&buf[12] = 1026;
      *v51 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog download failed with error %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937258(v4, v3);
    }

    *(*(*(a1 + 32) + 8) + 88) = 2;
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(v4 + 56) UTF8String];
      *buf = 136380675;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog download succeeded", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193736C(v4);
    }

    *(*(*(a1 + 32) + 8) + 88) = 1;
    *(v4 + 112) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(v4);
    (*(*v4 + 56))(v4, 2);
  }

  v10 = *(a1 + 32);
  v11 = *(*(v10 + 8) + 112);
  *buf = 147;
  *&buf[8] = v11;
  v56[0] = 0;
  v12 = *(*(v10 + 8) + 116);
  v56[2] = 148;
  v56[4] = v12;
  v56[10] = 0;
  v13 = *(*(v10 + 8) + 120);
  v56[12] = 149;
  v56[14] = v13;
  v56[20] = 0;
  LOBYTE(v13) = *(*(v10 + 8) + 132);
  v56[22] = 150;
  v57 = v13;
  v58 = 7;
  v14 = *(*(v10 + 8) + 108);
  v59 = 151;
  v60 = v14;
  v61 = 0;
  LODWORD(v10) = *(*(v10 + 8) + 92);
  v62 = 152;
  v63 = v10;
  v64 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  sub_1007B6614(&v36, buf, &v65, 6uLL);
  for (i = 208; i != -32; i -= 40)
  {
    sub_10008F96C(&buf[i]);
  }

  v16 = *(v4 + 240);
  memset(v35, 0, sizeof(v35));
  sub_1007B68E0(v35, v36, v37, 0xCCCCCCCCCCCCCCCDLL * ((v37 - v36) >> 3));
  [v16 setMeasurements:sub_1007B2EC4(v35)];
  *buf = v35;
  sub_1007B6858(buf);
  v17 = *(v4 + 240);
  if (byte_102637887 < 0)
  {
    sub_100007244(__p, xmmword_102637870, *(&xmmword_102637870 + 1));
  }

  else
  {
    *__p = xmmword_102637870;
    v34 = unk_102637880;
  }

  [v17 submitEvent:sub_1007B2F90(__p)];
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v18 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 8);
    v20 = *(v19 + 116);
    v21 = *(v19 + 120);
    v22 = *(v19 + 132);
    v24 = *(v19 + 108);
    v23 = *(v19 + 112);
    LODWORD(v19) = *(v19 + 92);
    *buf = 67241472;
    *&buf[4] = v23;
    *&buf[8] = 1026;
    *&buf[10] = v20;
    *v51 = 1026;
    *&v51[2] = v21;
    v52 = 1026;
    v53 = v22;
    v54 = 1026;
    v55 = v24;
    LOWORD(v56[0]) = 1026;
    *(v56 + 2) = v19;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#CLMA,#careport,CatalogDownload,MACatalogDownloadDuration,%{public}d,MACatalogDownloadDaysSinceLastAttempt,%{public}d,MACatalogDownloadDaysSinceLastSuccess,%{public}d,MACatalogDownloadAggressiveCriteriaUsed,%{public}d,MACatalogDownloadResult,%{public}d,MACatalogDownloadAssetType,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936A1C(buf);
    v25 = *(*(a1 + 32) + 8);
    v26 = *(v25 + 116);
    v27 = *(v25 + 120);
    v28 = *(v25 + 132);
    v30 = *(v25 + 108);
    v29 = *(v25 + 112);
    LODWORD(v25) = *(v25 + 92);
    v39[0] = 67241472;
    v39[1] = v29;
    v40 = 1026;
    v41 = v26;
    v42 = 1026;
    v43 = v27;
    v44 = 1026;
    v45 = v28;
    v46 = 1026;
    v47 = v30;
    v48 = 1026;
    v49 = v25;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#CLMA,#careport,CatalogDownload,MACatalogDownloadDuration,%{public}d,MACatalogDownloadDaysSinceLastAttempt,%{public}d,MACatalogDownloadDaysSinceLastSuccess,%{public}d,MACatalogDownloadAggressiveCriteriaUsed,%{public}d,MACatalogDownloadResult,%{public}d,MACatalogDownloadAssetType,%{public}d", v39, 38);
    v32 = v31;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadCatalog()_block_invoke", "%s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  sub_1007B1640(v4);
  *buf = &v36;
  sub_1007B6858(buf);
}

void sub_1007B2E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30)
{
  a30 = &a21;
  sub_1007B6858(&a30);
  _Unwind_Resume(a1);
}

id sub_1007B2EC4(uint64_t *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1007B6A08;
  v3[3] = &unk_102470D80;
  memset(v4, 0, sizeof(v4));
  sub_1007B68E0(v4, *a1, a1[1], 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
  v1 = [v3 copy];
  v5 = v4;
  sub_1007B6858(&v5);
  return v1;
}

void sub_1007B2F78(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_1007B6858((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_1007B2F90(__int128 *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1007B6A84;
  v3[3] = &unk_102470DB0;
  if (*(a1 + 23) < 0)
  {
    sub_100007244(&__p, *a1, *(a1 + 1));
  }

  else
  {
    __p = *a1;
    v5 = *(a1 + 2);
  }

  v1 = [v3 copy];
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_1007B3044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B3060(uint64_t a1, unint64_t a2)
{
  if (a2 < 7)
  {
    return dword_101C8D9B0[a2];
  }

  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67240192;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#CLMA,assetStatePrecedence,asset has unexpected state,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_10193746C(a2);
    return 0;
  }

  return result;
}

id sub_1007B3158(uint64_t a1, void *a2, unint64_t a3, _DWORD *a4)
{
  v5 = a3;
  v6 = a2;
  if (a3 > 9 || ((1 << a3) & 0x205) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v40 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [*(a1 + 56) UTF8String];
      *buf = 136381187;
      v63 = v41;
      v64 = 1026;
      *v65 = v5;
      *&v65[4] = 2113;
      *&v65[6] = [v6 queryParams];
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset query failed with error %{public}d,queryParams,%{private}@", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v43 = qword_1025D4878;
      v44 = [*(a1 + 56) UTF8String];
      v56 = 136381187;
      v57 = v44;
      v58 = 1026;
      *v59 = v5;
      *&v59[4] = 2113;
      *&v59[6] = [v6 queryParams];
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v43, 0, "#CLMA,%{private}s,asset query failed with error %{public}d,queryParams,%{private}@", &v56, 28);
      v46 = v45;
      sub_100152C7C("Generic", 1, 0, 2, "MAAsset *CLMobileAsset::getLatestVersionFromQuery(MAAssetQuery *, MAQueryResult, QueryFailureReason &)", "%s\n", v45);
      if (v46 != buf)
      {
        free(v46);
      }
    }

    v31 = 0;
    *a4 = 1;
    return v31;
  }

  obj = [a2 results];
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = v7;
  v48 = v6;
  v49 = a4;
  v55 = 0;
  v9 = MEMORY[0];
  v53 = ASAttributeContentVersion;
  v54 = -1;
  v10 = -1;
  v11 = -1;
  do
  {
    v12 = 0;
    v50 = v10;
    v13 = v10 + 1;
    do
    {
      if (MEMORY[0] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(8 * v12);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v15 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 56) UTF8String];
        v17 = [v14 assetId];
        v18 = [v14 state];
        v19 = [v14 attributes];
        *buf = 136381443;
        v63 = v16;
        v64 = 2113;
        *v65 = v17;
        *&v65[8] = 1025;
        *&v65[10] = v18;
        v66 = 2113;
        v67 = v19;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_101936790();
        }

        v22 = qword_1025D4878;
        v23 = [*(a1 + 56) UTF8String];
        v24 = [v14 assetId];
        v25 = [v14 state];
        v26 = [v14 attributes];
        v56 = 136381443;
        v57 = v23;
        v58 = 2113;
        *v59 = v24;
        *&v59[8] = 1025;
        *&v59[10] = v25;
        v60 = 2113;
        v61 = v26;
        LODWORD(v47) = 38;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v22, 0, "#CLMA,%{private}s,assetID,%{private}@,state,%{private}d,attributes,%{private}@", &v56, v47);
        v28 = v27;
        sub_100152C7C("Generic", 1, 0, 2, "MAAsset *CLMobileAsset::getLatestVersionFromQuery(MAAssetQuery *, MAQueryResult, QueryFailureReason &)", "%s\n", v27);
        if (v28 != buf)
        {
          free(v28);
        }

        if (!v14)
        {
LABEL_21:
          v21 = -1;
          goto LABEL_22;
        }
      }

      else if (!v14)
      {
        goto LABEL_21;
      }

      v20 = [objc_msgSend(v14 "attributes")];
      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = [v20 intValue];
LABEL_22:
      if (v21 > v11 || v21 == v11 && (v29 = [v14 state], v30 = sub_1007B3060(v29, v29), v30 > sub_1007B3060(v30, v55)))
      {
        v54 = v13;
        v55 = [v14 state];
        v11 = v21;
      }

      v12 = v12 + 1;
      ++v13;
    }

    while (v8 != v12);
    v10 = v50 + v8;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
  }

  while (v8);
  v6 = v48;
  a4 = v49;
  if (v11 != -1)
  {
    *v49 = 0;
    v31 = [objc_msgSend(v48 "results")];
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v32 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [*(a1 + 56) UTF8String];
      v34 = [v31 assetId];
      v35 = [v31 state];
      v36 = [v31 attributes];
      *buf = 136381443;
      v63 = v33;
      v64 = 2113;
      *v65 = v34;
      *&v65[8] = 1025;
      *&v65[10] = v35;
      v66 = 2113;
      v67 = v36;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,found latest asset for query,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193756C((a1 + 56), v31);
    }

    return v31;
  }

LABEL_35:
  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v37 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [*(a1 + 56) UTF8String];
    v39 = [v6 queryParams];
    *buf = 136380931;
    v63 = v38;
    v64 = 2113;
    *v65 = v39;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,failed to find a suitable asset in the query results,queryParams,%{private}@", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019376A0();
  }

  v31 = 0;
  *a4 = 2;
  return v31;
}

void sub_1007B3858(id *a1, void *a2)
{
  if (a2 && (v4 = [a2 attributes], (v5 = objc_msgSend(v4, "objectForKey:", ASAttributeContentVersion)) != 0))
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = -1;
  }

  if (sub_1007AF7C8(a2))
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a1[7] UTF8String];
      *buf = 136381187;
      v86 = v8;
      v87 = 1026;
      v88 = v6;
      v89 = 2113;
      v90 = [a2 attributes];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset is already downloaded,version,%{public}d,attributes,%{private}@", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v23 = qword_1025D4878;
      v24 = [a1[7] UTF8String];
      *v47 = 136381187;
      *&v47[4] = v24;
      *&v47[12] = 1026;
      *&v47[14] = v6;
      *&v47[18] = 2113;
      *&v47[20] = [a2 attributes];
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v23, 0, "#CLMA,%{private}s,asset is already downloaded,version,%{public}d,attributes,%{private}@", v47, 28);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    (*(*a1 + 9))(a1, a2);
  }

  else
  {
    *v47 = 0;
    *&v47[8] = v47;
    *&v47[16] = 0x14812000000;
    *&v47[24] = sub_1000474F4;
    v48 = sub_100048458;
    v49 = &unk_10238AE8B;
    v51 = 0xBFF0000000000000;
    v52 = 0u;
    v53 = 0u;
    v55 = -1;
    v54 = 0;
    v56 = -2;
    v57 = -1;
    v58 = -1;
    v59 = -1;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v64 = -1;
    v65 = -1;
    v63 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = -1;
    v71 = -1;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = -1;
    v77 = -1;
    v78 = 0;
    __p = 0;
    v80 = 0;
    v82 = -1;
    v83 = -1;
    v81 = 0;
    v84 = 0;
    v50 = 1;
    Current = CFAbsoluteTimeGetCurrent();
    v10 = *&v47[8];
    *(*&v47[8] + 56) = Current;
    if (*(v10 + 87) < 0)
    {
      *(v10 + 72) = 19;
      v11 = *(v10 + 64);
    }

    else
    {
      v11 = (v10 + 64);
      *(v10 + 87) = 19;
    }

    strcpy(v11, "com.apple.locationd");
    v12 = *&v47[8];
    *(*&v47[8] + 92) = *(a1 + 18);
    v13 = *(v12 + 56);
    if (v13 > 0.0)
    {
      v14 = *(a1 + 15);
      if (v14 > 0.0)
      {
        *(v12 + 124) = llround((v13 - v14) / 86400.0);
      }
    }

    if (v13 > 0.0)
    {
      v15 = *(a1 + 16);
      if (v15 > 0.0)
      {
        *(v12 + 128) = llround((v13 - v15) / 86400.0);
      }
    }

    (*(*a1 + 4))(a1, a2, v12 + 48);
    v38 = -1;
    (*(*a1 + 6))(a1, a2, &v38);
    v16 = [a1[29] description];
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v17 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [a1[7] UTF8String];
      v19 = [v16 UTF8String];
      v20 = [a2 attributes];
      *buf = 136381443;
      v86 = v18;
      v87 = 1026;
      v88 = v6;
      v89 = 2081;
      v90 = v19;
      v91 = 2113;
      v92 = v20;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,preparing to download asset,version,%{public}d,options,%{private}s,attributes,%{private}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936A1C(buf);
      v27 = qword_1025D4878;
      v28 = [a1[7] UTF8String];
      v29 = [v16 UTF8String];
      v30 = [a2 attributes];
      v39 = 136381443;
      v40 = v28;
      v41 = 1026;
      v42 = v6;
      v43 = 2081;
      v44 = v29;
      v45 = 2113;
      v46 = v30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v27, 0, "#CLMA,%{private}s,preparing to download asset,version,%{public}d,options,%{private}s,attributes,%{private}@", &v39, 38);
      v32 = v31;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)", "%s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1007B3FC8;
    v36[3] = &unk_102470C38;
    v37 = v6;
    v36[4] = a2;
    v36[5] = a1;
    [a2 attachProgressCallBack:v36];
    v21 = a2;
    *(a1 + 178) = 1;
    v22 = a1[29];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1007B4228;
    v33[3] = &unk_102470C88;
    v33[5] = v47;
    v33[6] = a1;
    v33[4] = a2;
    v34 = v6;
    v35 = v38;
    [a2 startDownload:v22 then:v33];
    *(a1 + 15) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(a1);
    _Block_object_dispose(v47, 8);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v73);
    }

    if (SHIBYTE(v69) < 0)
    {
      operator delete(v67);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v61);
    }

    if (SBYTE7(v53) < 0)
    {
      operator delete(v52);
    }
  }
}

void sub_1007B3F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  _Block_object_dispose(&a33, 8);
  sub_1007B65A0(&a39);
  _Unwind_Resume(a1);
}

void sub_1007B3FC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(v4 + 56) UTF8String];
    v7 = *(a1 + 48);
    v8 = [a2 totalWritten];
    v9 = [a2 totalExpected];
    v10 = [*(a1 + 32) attributes];
    *buf = 136381699;
    v30 = v6;
    v31 = 1026;
    v32 = v7;
    v33 = 2050;
    v34 = v8;
    v35 = 2050;
    v36 = v9;
    v37 = 2113;
    v38 = v10;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#CLMA,%{private}s,download progress for asset,version,%{public}d,totalWritten,%{public}lld,totalExpected,%{public}lld,attributes,%{private}@", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v11 = qword_1025D4878;
    v12 = [*(v4 + 56) UTF8String];
    v13 = *(a1 + 48);
    v14 = [a2 totalWritten];
    v15 = [a2 totalExpected];
    v16 = [*(a1 + 32) attributes];
    v19 = 136381699;
    v20 = v12;
    v21 = 1026;
    v22 = v13;
    v23 = 2050;
    v24 = v14;
    v25 = 2050;
    v26 = v15;
    v27 = 2113;
    v28 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v11, 2, "#CLMA,%{private}s,download progress for asset,version,%{public}d,totalWritten,%{public}lld,totalExpected,%{public}lld,attributes,%{private}@", &v19, 48);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)_block_invoke", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

void sub_1007B4228(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [objc_msgSend(*(v4 + 48) "silo")];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007B42DC;
  v8[3] = &unk_102470C60;
  v10 = v4;
  v11 = a2;
  v9 = *(a1 + 32);
  v7 = *(a1 + 56);
  v12 = Current;
  v13 = v7;
  dispatch_async(v6, v8);
}

void sub_1007B42DC(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v2 + 178) = 0;
  v3 = *(a1 + 56);
  *(*(*(a1 + 40) + 8) + 108) = v3;
  *(*(*(a1 + 40) + 8) + 112) = vcvtpd_s64_f64(*(a1 + 64) - *(*(*(a1 + 40) + 8) + 56));
  if (v3)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v2 + 56) UTF8String];
      v6 = *(a1 + 72);
      v7 = *(a1 + 56);
      v8 = [*(a1 + 32) attributes];
      *buf = 136381443;
      *&buf[4] = v5;
      *&buf[12] = 1026;
      *v65 = v6;
      *&v65[4] = 1025;
      *v66 = v7;
      *&v66[4] = 2113;
      *&v66[6] = v8;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset download failed,version,%{public}d,result,%{private}d,attributes,%{private}@", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v43 = qword_1025D4878;
      v44 = [*(v2 + 56) UTF8String];
      v45 = *(a1 + 72);
      v46 = *(a1 + 56);
      v47 = [*(a1 + 32) attributes];
      v59 = 136381443;
      *__p = v44;
      *&__p[8] = 1026;
      *&__p[10] = v45;
      *&__p[14] = 1025;
      *&__p[16] = v46;
      *&__p[20] = 2113;
      *&__p[22] = v47;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v43, 0, "#CLMA,%{private}s,asset download failed,version,%{public}d,result,%{private}d,attributes,%{private}@", &v59, 34);
      v49 = v48;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)_block_invoke", "%s\n", v48);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    *(*(*(a1 + 40) + 8) + 88) = 4;
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(v2 + 56) UTF8String];
      v11 = *(a1 + 72);
      v12 = [objc_msgSend(objc_msgSend(*(a1 + 32) "getLocalUrl")];
      v13 = [*(a1 + 32) attributes];
      *buf = 136381443;
      *&buf[4] = v10;
      *&buf[12] = 1026;
      *v65 = v11;
      *&v65[4] = 2081;
      *v66 = v12;
      *&v66[8] = 2113;
      *&v66[10] = v13;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset download completed successfully,version,%{public}d,URL,%{private}s,attributes,%{private}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019377A0(v2, a1);
    }

    *(*(*(a1 + 40) + 8) + 88) = 3;
    *(v2 + 128) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(v2);
    if ([*(a1 + 32) refreshState])
    {
      (*(*v2 + 72))(v2, *(a1 + 32));
    }
  }

  sub_1007B4B24(*(*(*(a1 + 40) + 8) + 104), *(*(*(a1 + 40) + 8) + 100), v57);
  v14 = *(a1 + 40);
  v15 = *(*(v14 + 8) + 112);
  *buf = 153;
  *&buf[8] = v15;
  *&v66[12] = 0;
  v16 = *(*(v14 + 8) + 124);
  LODWORD(v68) = 154;
  v69 = v16;
  v70 = 0;
  v17 = *(*(v14 + 8) + 128);
  v71 = 155;
  v72 = v17;
  v73 = 0;
  v18 = *(*(v14 + 8) + 108);
  v74 = 156;
  v75 = v18;
  v76 = 0;
  LOBYTE(v14) = *(*(v14 + 8) + 133);
  v77 = 157;
  v78 = v14;
  v19 = *(a1 + 76);
  v79 = 7;
  v80 = 158;
  v81 = v19;
  v82 = 0;
  v59 = 159;
  if (SHIBYTE(v58) < 0)
  {
    sub_100007244(&__p[4], v57[0], v57[1]);
    v20 = v59;
  }

  else
  {
    *&__p[4] = *v57;
    *&__p[20] = v58;
    v20 = 159;
  }

  v83 = v20;
  v84 = *&__p[4];
  v85 = *&__p[20];
  memset(&__p[4], 0, 24);
  v86 = 6;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  sub_1007B6614(&v54, buf, &v87, 7uLL);
  for (i = 248; i != -32; i -= 40)
  {
    sub_10008F96C(&buf[i]);
  }

  if ((__p[27] & 0x80000000) != 0)
  {
    operator delete(*&__p[4]);
  }

  v22 = *(v2 + 240);
  memset(v53, 0, sizeof(v53));
  sub_1007B68E0(v53, v54, v55, 0xCCCCCCCCCCCCCCCDLL * ((v55 - v54) >> 3));
  [v22 setMeasurements:sub_1007B2EC4(v53)];
  *buf = v53;
  sub_1007B6858(buf);
  v23 = *(v2 + 240);
  if (byte_10263789F < 0)
  {
    sub_100007244(__dst, xmmword_102637888, *(&xmmword_102637888 + 1));
  }

  else
  {
    *__dst = xmmword_102637888;
    v52 = unk_102637898;
  }

  [v23 submitEvent:sub_1007B2F90(__dst)];
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__dst[0]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v24 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 124);
    v27 = *(v25 + 128);
    v29 = *(v25 + 108);
    v28 = *(v25 + 112);
    v30 = *(v25 + 133);
    v31 = *(a1 + 76);
    v32 = v57;
    if (v58 < 0)
    {
      v32 = v57[0];
    }

    *buf = 67241730;
    *&buf[4] = v28;
    *&buf[8] = 1026;
    *&buf[10] = v26;
    *v65 = 1026;
    *&v65[2] = v27;
    *v66 = 1026;
    *&v66[2] = v29;
    *&v66[6] = 1026;
    *&v66[8] = v30;
    *&v66[12] = 1026;
    *&v66[14] = v31;
    v67 = 2082;
    v68 = v32;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#CLMA,#careport,AssetDownload,MAAssetDownloadDuration,%{public}d,MAAssetDownloadDaysSinceLastAttempt,%{public}d,MAAssetDownloadDaysSinceLastSuccess,%{public}d,MAAssetDownloadResult,%{public}d,MAAssetDownloadGenericAssetUsed,%{public}d,MAAssetDownloadAssetComponent,%{public}d,MAAssetDownloadAssetVersion,%{public}s", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936A1C(buf);
    v33 = *(*(a1 + 40) + 8);
    v34 = *(v33 + 124);
    v35 = *(v33 + 128);
    v37 = *(v33 + 108);
    v36 = *(v33 + 112);
    v38 = *(v33 + 133);
    v39 = *(a1 + 76);
    v40 = v57;
    if (v58 < 0)
    {
      v40 = v57[0];
    }

    v59 = 67241730;
    *__p = v36;
    *&__p[4] = 1026;
    *&__p[6] = v34;
    *&__p[10] = 1026;
    *&__p[12] = v35;
    *&__p[16] = 1026;
    *&__p[18] = v37;
    *&__p[22] = 1026;
    *&__p[24] = v38;
    *&__p[28] = 1026;
    v61 = v39;
    v62 = 2082;
    v63 = v40;
    LODWORD(v50) = 48;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#CLMA,#careport,AssetDownload,MAAssetDownloadDuration,%{public}d,MAAssetDownloadDaysSinceLastAttempt,%{public}d,MAAssetDownloadDaysSinceLastSuccess,%{public}d,MAAssetDownloadResult,%{public}d,MAAssetDownloadGenericAssetUsed,%{public}d,MAAssetDownloadAssetComponent,%{public}d,MAAssetDownloadAssetVersion,%{public}s", &v59, v50);
    v42 = v41;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)_block_invoke", "%s\n", v41);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  *buf = &v54;
  sub_1007B6858(buf);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }
}

void sub_1007B4A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char *a38)
{
  a38 = &a20;
  sub_1007B6858(&a38);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007B4B24(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (((a2 | a1) & 0x80000000) == 0)
  {
    std::to_string(&v13, a1);
    v5 = std::string::append(&v13, ".", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, a2);
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

    v9 = std::string::append(&v14, p_p, size);
    v10 = v9->__r_.__value_.__l.__size_;
    *a3 = v9->__r_.__value_.__r.__words[0];
    *(a3 + 8) = v10;
    *(a3 + 15) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    LOBYTE(v10) = *(&v9->__r_.__value_.__s + 23);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a3 + 23) = v10;
    if (v11 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1007B4C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007B4C68(uint64_t a1, void *a2)
{
  result = sub_1007AFA08(a2);
  if (result)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 56) UTF8String];
      *buf = 136380931;
      v10 = v6;
      v11 = 2113;
      v12 = [a2 attributes];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#CLMA,%{private}s,purging asset,attributes,%{private}@", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019378FC();
    }

    v7 = a2;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1007B4DD0;
    v8[3] = &unk_102470CB0;
    v8[4] = a2;
    v8[5] = a1;
    return [a2 purge:v8];
  }

  return result;
}

void sub_1007B4DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = a2;
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(v3 + 56) UTF8String];
      v7 = [*(a1 + 32) assetId];
      v8 = [*(a1 + 32) state];
      v9 = [*(a1 + 32) attributes];
      *buf = 136381699;
      v33 = v6;
      v34 = 1026;
      *v35 = v4;
      *&v35[4] = 2113;
      *&v35[6] = v7;
      v36 = 1025;
      LODWORD(v37[0]) = v8;
      WORD2(v37[0]) = 2113;
      *(v37 + 6) = v9;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,asset purge failed,error,%{public}d,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v10 = qword_1025D4878;
      v11 = [*(v3 + 56) UTF8String];
      v12 = [*(a1 + 32) assetId];
      v13 = [*(a1 + 32) state];
      v14 = [*(a1 + 32) attributes];
      v22 = 136381699;
      v23 = v11;
      v24 = 1026;
      v25 = v4;
      v26 = 2113;
      v27 = v12;
      v28 = 1025;
      v29 = v13;
      v30 = 2113;
      v31 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 16, "#CLMA,%{private}s,asset purge failed,error,%{public}d,assetID,%{private}@,state,%{private}d,attributes,%{private}@", &v22, 44);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::purgeAsset(MAAsset *)_block_invoke", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v17 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v18 = [*(v3 + 56) UTF8String];
      v19 = [*(a1 + 32) assetId];
      v20 = [*(a1 + 32) state];
      v21 = [*(a1 + 32) attributes];
      *buf = 136381443;
      v33 = v18;
      v34 = 2113;
      *v35 = v19;
      *&v35[8] = 1025;
      *&v35[10] = v20;
      v36 = 2113;
      v37[0] = v21;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#CLMA,%{private}s,asset purge succeeded,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937A04(v3, a1);
    }
  }
}

void sub_1007B50FC(uint64_t a1, xpc_activity_t activity)
{
  v2 = *(a1 + 32);
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v2 + 56) UTF8String];
      *buf = 136380675;
      v12 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge activity handler triggered", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937C34();
    }

    v6 = [objc_msgSend(*(v2 + 48) "silo")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007B52E4;
    block[3] = &unk_102449A78;
    block[4] = v2;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = state;
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(v2 + 56) UTF8String];
      *buf = 136380931;
      v12 = v9;
      v13 = 1026;
      v14 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge activity handler triggered with unexpected state %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937B40();
    }
  }
}

void sub_1007B52EC(uint64_t a1)
{
  if (*(a1 + 178) == 1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 56) UTF8String];
      *buf = 136380675;
      v7 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge aborted due to an asset download in progress", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937D24();
    }
  }

  else
  {
    v4 = [[MAAssetQuery alloc] initWithType:*(a1 + 64)];
    [v4 returnTypes:1];
    [v4 setDoNotBlockBeforeFirstUnlock:1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1007B5454;
    v5[3] = &unk_102470CB0;
    v5[4] = v4;
    v5[5] = a1;
    [v4 queryMetaData:v5];
  }
}

void sub_1007B5454(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = [objc_msgSend(*(v4 + 48) "silo")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007B54F0;
  block[3] = &unk_1024700D0;
  block[5] = v4;
  block[6] = a2;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

void sub_1007B54F0(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = v2 > 9;
  v5 = (1 << v2) & 0x205;
  if (v4 || v5 == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v41 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [*(v3 + 56) UTF8String];
      v43 = *(a1 + 48);
      v44 = [*(a1 + 32) queryParams];
      *buf = 136381187;
      v61 = v42;
      v62 = 1026;
      *v63 = v43;
      *&v63[4] = 2113;
      *&v63[6] = v44;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge query failed with error %{public}d,queryParams,%{private}@", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v45 = qword_1025D4878;
      v46 = [*(v3 + 56) UTF8String];
      v47 = *(a1 + 48);
      v48 = [*(a1 + 32) queryParams];
      v54 = 136381187;
      v55 = v46;
      v56 = 1026;
      *v57 = v47;
      *&v57[4] = 2113;
      *&v57[6] = v48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v45, 0, "#CLMA,%{private}s,asset purge query failed with error %{public}d,queryParams,%{private}@", &v54, 28);
      v50 = v49;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::queryForAssetsToPurge()_block_invoke", "%s\n", v49);
      if (v50 != buf)
      {
        free(v50);
      }
    }
  }

  else if (*(v3 + 178) == 1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(v3 + 56) UTF8String];
      *buf = 136380675;
      v61 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge query aborted due to an asset download in progress", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937E14();
    }
  }

  else
  {
    obj = [*(a1 + 32) results];
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
    if (v9)
    {
      v10 = v9;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v12 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v13 = MEMORY[0];
      do
      {
        v14 = 0;
        do
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(8 * v14);
          if ((*(*v3 + 64))(v3, v15) && sub_1007AFA08(v15))
          {
            if (p_info[270] != -1)
            {
              sub_101936790();
            }

            v16 = v12[271];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [*(v3 + 56) UTF8String];
              v18 = [v15 assetId];
              v19 = [v15 state];
              v20 = [v15 attributes];
              *buf = 136381443;
              v61 = v17;
              v62 = 2113;
              *v63 = v18;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              *&v63[8] = 1025;
              *&v63[10] = v19;
              v12 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v64 = 2113;
              v65 = v20;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,attempting to purge asset,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (p_info[270] != -1)
              {
                sub_101936790();
              }

              v33 = v12[271];
              v34 = [*(v3 + 56) UTF8String];
              v35 = [v15 assetId];
              v36 = [v15 state];
              v37 = [v15 attributes];
              v54 = 136381443;
              v55 = v34;
              v56 = 2113;
              *v57 = v35;
              *&v57[8] = 1025;
              *&v57[10] = v36;
              v58 = 2113;
              v59 = v37;
              LODWORD(v51) = 38;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v33, 0, "#CLMA,%{private}s,attempting to purge asset,assetID,%{private}@,state,%{private}d,attributes,%{private}@", &v54, v51);
              v39 = v38;
              sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::queryForAssetsToPurge()_block_invoke", "%s\n", v38);
              if (v39 != buf)
              {
                free(v39);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              v12 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            sub_1007B4C68(v3, v15);
          }

          else
          {
            if (p_info[270] != -1)
            {
              sub_101936790();
            }

            v21 = v12[271];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [*(v3 + 56) UTF8String];
              v23 = [v15 assetId];
              v24 = [v15 state];
              v25 = [v15 attributes];
              *buf = 136381443;
              v61 = v22;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v62 = 2113;
              *v63 = v23;
              v12 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              *&v63[8] = 1025;
              *&v63[10] = v24;
              v64 = 2113;
              v65 = v25;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,not purging asset,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (p_info[270] != -1)
              {
                sub_101936790();
              }

              v26 = v12[271];
              v27 = [*(v3 + 56) UTF8String];
              v28 = [v15 assetId];
              v29 = [v15 state];
              v30 = [v15 attributes];
              v54 = 136381443;
              v55 = v27;
              v56 = 2113;
              *v57 = v28;
              *&v57[8] = 1025;
              *&v57[10] = v29;
              v58 = 2113;
              v59 = v30;
              LODWORD(v51) = 38;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 0, "#CLMA,%{private}s,not purging asset,assetID,%{private}@,state,%{private}d,attributes,%{private}@", &v54, v51);
              v32 = v31;
              sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::queryForAssetsToPurge()_block_invoke", "%s\n", v31);
              if (v32 != buf)
              {
                free(v32);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              v12 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }
          }

          v14 = v14 + 1;
        }

        while (v10 != v14);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        v10 = v40;
      }

      while (v40);
    }
  }
}

void sub_1007B5C2C(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) UTF8String];
    v4 = *(a1 + 112);
    *buf = 136380931;
    *&buf[4] = v3;
    *&buf[12] = 2050;
    v69 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,reporting catalog download not triggered event,lastSuccessfulCatalogDownload,%{public}.1f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101937F04(a1);
  }

  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v27 = -1;
  v28 = -2;
  v29 = -1;
  v30 = -1;
  v31 = -1;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = -1;
  v37 = -1;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v42 = -1;
  v43 = -1;
  v41 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = -1;
  v49 = -1;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = -1;
  v55 = -1;
  v56 = 0;
  v23 = 1;
  Current = CFAbsoluteTimeGetCurrent();
  HIBYTE(v25[2]) = 19;
  strcpy(v25, "com.apple.locationd");
  v5 = *(a1 + 72);
  LODWORD(v25[3]) = 5;
  HIDWORD(v25[3]) = v5;
  if (Current > 0.0)
  {
    v6 = *(a1 + 104);
    if (v6 > 0.0)
    {
      HIDWORD(v29) = llround((Current - v6) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v7 = *(a1 + 112);
    if (v7 > 0.0)
    {
      LODWORD(v30) = llround((Current - v7) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v8 = *(a1 + 120);
    if (v8 > 0.0)
    {
      HIDWORD(v30) = llround((Current - v8) / 86400.0);
    }
  }

  if (Current <= 0.0 || (v9 = *(a1 + 128), v9 <= 0.0))
  {
    v10 = v31;
  }

  else
  {
    v10 = llround((Current - v9) / 86400.0);
    v31 = v10;
  }

  LOBYTE(v32) = *(a1 + 136);
  *buf = 162;
  *&buf[8] = HIDWORD(v30);
  v73[0] = 0;
  v73[2] = 163;
  v73[4] = v10;
  v73[10] = 0;
  v73[12] = 164;
  v73[14] = HIDWORD(v29);
  v73[20] = 0;
  v73[22] = 165;
  v73[24] = v30;
  v73[30] = 0;
  v73[32] = 160;
  v74 = v32;
  v75 = 7;
  v76 = 161;
  v77 = v5;
  v78 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_1007B6614(&v20, buf, &v79, 6uLL);
  for (i = 208; i != -32; i -= 40)
  {
    sub_10008F96C(&buf[i]);
  }

  v12 = *(a1 + 240);
  memset(v19, 0, sizeof(v19));
  sub_1007B68E0(v19, v20, v21, 0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3));
  [v12 setMeasurements:sub_1007B2EC4(v19)];
  *buf = v19;
  sub_1007B6858(buf);
  v13 = *(a1 + 240);
  if (byte_1026378B7 < 0)
  {
    sub_100007244(__p, xmmword_1026378A0, *(&xmmword_1026378A0 + 1));
  }

  else
  {
    *__p = xmmword_1026378A0;
    v18 = unk_1026378B0;
  }

  [v13 submitEvent:sub_1007B2F90(__p)];
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v14 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241472;
    *&buf[4] = HIDWORD(v30);
    *&buf[8] = 1026;
    *&buf[10] = v31;
    LOWORD(v69) = 1026;
    *(&v69 + 2) = HIDWORD(v29);
    HIWORD(v69) = 1026;
    v70 = v30;
    v71 = 1026;
    v72 = v32;
    LOWORD(v73[0]) = 1026;
    *(v73 + 2) = HIDWORD(v25[3]);
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#CLMA,#careport,DownloadNotTriggered,MADownloadNotTriggeredDaysSinceLastAssetDownloadAttempt,%{public}d,MADownloadNotTriggeredDaysSinceLastAssetDownloadSuccess,%{public}d,MADownloadNotTriggeredDaysSinceLastCatalogDownloadAttempt,%{public}d,MADownloadNotTriggeredDaysSinceLastCatalogDownloadSuccess,%{public}d,MADownloadNotTriggeredAggressiveCriteriaUsed,%{public}d,MADownloadNotTriggeredAssetType,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936A1C(buf);
    v57[0] = 67241472;
    v57[1] = HIDWORD(v30);
    v58 = 1026;
    v59 = v31;
    v60 = 1026;
    v61 = HIDWORD(v29);
    v62 = 1026;
    v63 = v30;
    v64 = 1026;
    v65 = v32;
    v66 = 1026;
    v67 = HIDWORD(v25[3]);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#CLMA,#careport,DownloadNotTriggered,MADownloadNotTriggeredDaysSinceLastAssetDownloadAttempt,%{public}d,MADownloadNotTriggeredDaysSinceLastAssetDownloadSuccess,%{public}d,MADownloadNotTriggeredDaysSinceLastCatalogDownloadAttempt,%{public}d,MADownloadNotTriggeredDaysSinceLastCatalogDownloadSuccess,%{public}d,MADownloadNotTriggeredAggressiveCriteriaUsed,%{public}d,MADownloadNotTriggeredAssetType,%{public}d", v57, 38);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::reportDownloadNotTriggeredAwd()", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *buf = &v20;
  sub_1007B6858(buf);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v25[2]) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_1007B6204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char *a61)
{
  a61 = &a17;
  sub_1007B6858(&a61);
  sub_1007B65A0(&a20);
  _Unwind_Resume(a1);
}

void sub_1007B6288(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) UTF8String];
    v10 = 136380675;
    *v11 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,reporting asset version info", &v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938014(a1);
  }

  *&v11[4] = 0xBFF0000000000000;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v14 = -1;
  v15 = -2;
  v16 = -1;
  v17 = -1;
  v18 = -1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = -1;
  v24 = -1;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v29 = -1;
  v30 = -1;
  v28 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = -1;
  v36 = -1;
  v37 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  v41 = -1;
  v42 = -1;
  v43 = 0;
  LOBYTE(v10) = 1;
  Current = CFAbsoluteTimeGetCurrent();
  *&v11[4] = Current;
  HIBYTE(v12[2]) = 19;
  strcpy(v12, "com.apple.locationd");
  v5 = *(a1 + 72);
  LODWORD(v12[3]) = 6;
  HIDWORD(v12[3]) = v5;
  if (Current > 0.0)
  {
    v6 = *(a1 + 104);
    if (v6 > 0.0)
    {
      HIDWORD(v16) = llround((Current - v6) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v7 = *(a1 + 112);
    if (v7 > 0.0)
    {
      LODWORD(v17) = llround((Current - v7) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v8 = *(a1 + 120);
    if (v8 > 0.0)
    {
      HIDWORD(v17) = llround((Current - v8) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v9 = *(a1 + 128);
    if (v9 > 0.0)
    {
      v18 = llround((Current - v9) / 86400.0);
    }
  }

  (*(*a1 + 40))(a1, &v10);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

uint64_t sub_1007B65A0(uint64_t a1)
{
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t *sub_1007B6614(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007B669C(result, a4);
  }

  return result;
}

void sub_1007B667C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1007B6858(&a9);
  _Unwind_Resume(a1);
}

void sub_1007B669C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1007B66E8(a1, a2);
  }

  sub_10028C64C();
}

void sub_1007B66E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1007B6740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_10008852C(a4 + v7 + 8, a2 + v7 + 8);
      v7 += 40;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1007B67B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      sub_10008F96C(v5);
      v5 -= 40;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

float sub_1007B6828(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

double sub_1007B6838(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void sub_1007B6858(void ***a1)
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
        v6 = v4 - 40;
        sub_10008F96C((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_1007B68E0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007B669C(result, a4);
  }

  return result;
}

void sub_1007B6948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1007B6858(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B6968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_10008852C(a4 + v7 + 8, a2 + v7 + 8);
      v7 += 40;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1007B69DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      sub_10008F96C(v5);
      v5 -= 40;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007B6A08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1007B68E0(a2, *(a1 + 32), *(a1 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 40) - *(a1 + 32)) >> 3));
}

uint64_t *sub_1007B6A30(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  return sub_1007B68E0(v2, *(a2 + 32), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
}

char *sub_1007B6A84@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[55] < 0)
  {
    return sub_100007244(a2, *(result + 4), *(result + 5));
  }

  *a2 = *(result + 2);
  *(a2 + 16) = *(result + 6);
  return result;
}

_BYTE *sub_1007B6AAC(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100007244(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_1007B6AD8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

uint64_t sub_1007B6AEC(uint64_t result, float a2)
{
  *(v6 - 112) = a2;
  *(v5 + 4) = v2;
  *(v6 - 100) = 2113;
  *(v5 + 14) = v3;
  *(v6 - 90) = 1025;
  *(v6 - 88) = v4;
  *(v6 - 84) = 2113;
  *(v5 + 30) = result;
  return result;
}

uint64_t sub_1007B6B24(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2113;
  *(v3 + 14) = result;
  return result;
}

uint64_t sub_1007B6B48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(v3 - 64) = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_1007B6B54(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    getpid();
    proc_disable_cpumon();
    operator new();
  }

  sub_101938114();
}

void sub_1007B6D24(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_1007B6B54(a1);
}

uint64_t sub_1007B6D54(uint64_t a1)
{
  v1 = a1 + 16;
  if (!*(a1 + 16))
  {
    sub_1019383E8();
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(v1 + 8 * v3);
    (*(*v6 + 16))(v6);
    v7 = *(v1 + 8 * v3);
    *(v7 + 20) = 1;
    if (!*(a1 + 8 * v3))
    {
      sub_10053700C(v7);
      operator delete();
    }

    *(a1 + 8 * v3) = 0;
    *(v1 + 8 * v3) = 0;
    (*(*v6 + 24))(v6);
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  v8 = getpid();

  return _proc_set_cpumon_defaults(v8);
}

uint64_t sub_1007B6E88(uint64_t a1, float a2)
{
  if (qword_1025D42D0 != -1)
  {
    sub_101938568();
  }

  v4 = qword_1025D42D8;
  if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "dutyCycle,%f", &v12, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193857C(a2);
  }

  v6 = *(a1 + 16);
  v5 = a1 + 16;
  if (!v6)
  {
    sub_1019386B4();
  }

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = *(v5 + 8 * v7);
    (*(*v10 + 16))(v10);
    *(*(v5 + 8 * v7) + 16) = a2;
    result = (*(*v10 + 24))(v10);
    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  return result;
}

void sub_1007B6FF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1007B7004(uint64_t a1)
{
  v2 = malloc_type_malloc(0x9007uLL, 0x80040B8603338uLL);
  v3 = (v2 + 4103) & 0xFFFFFFFFFFFFF000;
  *(v3 - 8) = v2;
  v4 = malloc_type_malloc(0x77uLL, 0x80040B8603338uLL);
  v5 = ((v4 + 71) & 0xFFFFFFFFFFFFFFC0);
  *(v5 - 1) = v4;
  v6 = malloc_type_malloc(0x9007uLL, 0x80040B8603338uLL);
  v7 = ((v6 + 4103) & 0xFFFFFFFFFFFFF000);
  *&v7[-1].f64[1] = v6;
  v8 = malloc_type_malloc(0x247uLL, 0x80040B8603338uLL);
  v9 = 0;
  v10 = (v8 + 71) & 0xFFFFFFFFFFFFFFC0;
  *(v10 - 8) = v8;
  v11 = (v3 | 0x20);
  *&v12 = 0x5A5A5A5A5A5A5A5ALL;
  *(&v12 + 1) = 0x5A5A5A5A5A5A5A5ALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    *(v11 - 2) = v12;
    *(v11 - 1) = v13;
    *v11 = v13;
    v11[1] = v12;
    v11 += 4;
    v9 += 8;
  }

  while (v9 < 0xFF9);
  *v5 = xmmword_101C8D9D0;
  v5[1] = xmmword_101C8D9E0;
  v5[2] = xmmword_101C8D9F0;
  while (1)
  {
    (*(*a1 + 16))(a1);
    v14 = *(a1 + 20);
    if (v14)
    {
      v15 = 2;
      v16 = 0.0;
    }

    else
    {
      v15 = 0;
      v16 = fminf(fmaxf(*(a1 + 16), 0.01), 1.0);
    }

    (*(*a1 + 24))(a1);
    if ((v14 & 1) == 0)
    {
      v17 = sub_1000137E0();
      sub_100377E00(v3, v5, v7, v10, 4096, (v16 * 30000.0));
      v18 = sub_1000137E0();
      usleep(((v18 - v17) * (1.0 - v16) * 1000000.0 / v16));
      v15 = 0;
    }

    if (v15)
    {
      if (v3)
      {
        free(*(v3 - 8));
      }

      free(*(v5 - 1));
      if (v7)
      {
        free(*&v7[-1].f64[1]);
      }

      if (v10)
      {
        free(*(v10 - 8));
      }

      sub_10053700C(a1);
      operator delete();
    }
  }
}

unsigned __int16 *sub_1007B72A0(uint64_t a1, int *a2, uint64_t *a3)
{
  if (qword_1025D45A0 != -1)
  {
    sub_101938834();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *(a3 + 2);
    v10 = a3[25];
    v13[0] = 67109888;
    v13[1] = v7;
    v14 = 2048;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Activity notification %d startTime %f activity %u workoutType %lu", v13, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938848(a2, a3);
  }

  sub_1007B7418((a1 + 64), a3);
  result = sub_100726B38((a1 + 60872), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

void *sub_1007B7418(unsigned __int16 *a1, const void *a2)
{
  v3 = *(a1 + 1);
  v4 = *a1 + a1[1];
  if (v4 < v3)
  {
    v3 = 0;
  }

  result = memcpy(&a1[152 * (v4 - v3) + 4], a2, 0x130uLL);
  v6 = a1[1];
  v7 = *(a1 + 1);
  if (v7 <= v6)
  {
    v8 = *a1 + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *a1 = v8 - v7;
  }

  else
  {
    a1[1] = v6 + 1;
  }

  return result;
}

void sub_1007B749C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (qword_1025D45A0 != -1)
  {
    sub_101938834();
  }

  v7 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v5;
    *buf = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "fActiveRefCount %d, leech %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193897C(v5, v3);
  }

  if (!v6 && *v5 == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_101938A98();
    }

    v9 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "creating activity dispatcher", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101938AC0();
    }

    if (*(a1 + 48))
    {
      operator new();
    }
  }
}

void sub_1007B76DC(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_101938BA4(qword_1025D45A0 == -1);
    }

    if (qword_1025D45A0 != -1)
    {
      sub_101938834();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "removing activity delegate", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101938D6C();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(*v5 + 216))(v5);
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_101938A98();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "detaching activity client", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938E4C();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

double sub_1007B7854(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 304 * (v3 - v4) + 72);
  }

  return result;
}

void sub_1007B7898(void *a1)
{
  sub_1007B795C(a1);

  operator delete();
}

void sub_1007B78F0(uint64_t a1)
{
  sub_1007B795C((a1 - 8));

  operator delete();
}

void *sub_1007B795C(void *a1)
{
  *a1 = &off_102470E10;
  a1[1] = off_102470E78;
  if (qword_1025D45A0 != -1)
  {
    sub_101938834();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream activity destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938F2C(buf);
    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "factory stream activity destroyed", v7, 2);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactoryActivity::~CMDataProviderFactoryActivity()", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100008080(v3);
  }

  a1[1] = off_10244FCF8;
  sub_1001FB750(a1 + 3);
  return a1;
}

void sub_1007B7B28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_1007B7BA0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102470F08;
  sub_1007B7C98((a1 + 3), a2);
  return a1;
}

void sub_1007B7C1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007B7C98(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007B7D0C(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  return a1;
}

void sub_1007B7CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007B7D0C(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *a1 = &off_102470E10;
  *(a1 + 8) = off_102470E78;
  v2 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *&result = 0xC800000000;
  *(a1 + 64) = 0xC800000000;
  *(a1 + 60872) = 0xC800000000;
  return result;
}

__n128 sub_1007B7DEC(uint64_t a1, uint64_t a2)
{
  *a2 = off_102470F58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007B7E24(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1007B7E6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007B7EB8(uint64_t a1)
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

uint64_t sub_1007B7F38(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v6 = a5;
  v8 = a3;
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102456270;
  sub_1003FFA38((a1 + 8));
  *v12 = &off_1024562B8;
  *a1 = off_102471590;
  *(a1 + 72) = off_102471638;
  sub_101052EEC(a1 + 72, a2, v8, a1, a6, a4, v6, 0);
  *a1 = off_102471590;
  *(a1 + 176) = 0u;
  *(a1 + 72) = off_102471638;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 4;
  *(a1 + 368) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 376) = 12000;
  *(a1 + 384) = off_102456270;
  sub_1003FFA38((a1 + 392));
  *(a1 + 392) = &off_1024562B8;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  v13 = *(a1 + 112);
  v17 = a1 + 112;
  (*(v13 + 16))(a1 + 112);
  v18 = 256;
  if ((v8 & 1) == 0)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100007244(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_101053788(a1 + 72, __p);
  }

  *(a1 + 232) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_1007B8340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1017EC98C(&a19);
  *a11 = v29;
  sub_1003FFCFC(v30);
  sub_100106180(v28);
  sub_1010532A4(v27);
  *v25 = a12;
  sub_1003FFCFC(v26);
  _Unwind_Resume(a1);
}

void *sub_1007B83E8(void *a1)
{
  *a1 = off_102471590;
  v2 = a1 + 9;
  a1[9] = off_102471638;
  sub_1007BD834(a1, 0, 0);
  a1[48] = off_102456270;
  sub_1003FFCFC(a1 + 49);
  sub_100106180(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_1007B84C0(void *a1)
{
  sub_1007B83E8(a1);

  operator delete();
}

void sub_1007B84F8(uint64_t a1)
{
  sub_1007B83E8((a1 - 72));

  operator delete();
}

uint64_t sub_1007B855C(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v5 = a1;
  if (!sub_100099160(a1 + 72))
  {
    goto LABEL_28;
  }

  sub_100144CA0((v5 + 488), &v31);
  memset(out, 0, 37);
  uuid_unparse((a2 + 64), out);
  v6 = sub_100008880(v31);
  if (sub_1001A3BD4(v6, 1, *(a2 + 8)) && (v7 = sub_100008880(v31), sub_100073700(v7, 2, *(a2 + 16))) && (v8 = sub_100008880(v31), sub_100073700(v8, 3, *(a2 + 20))) && (v9 = sub_100008880(v31), sub_1001A3BD4(v9, 4, *(a2 + 24))) && (v10 = sub_100008880(v31), sub_1001A3BD4(v10, 5, *(a2 + 40))) && (v11 = sub_100008880(v31), sub_1001A3BD4(v11, 6, *(a2 + 56))) && (v12 = sub_100008880(v31), sub_10003DDD8(v12, 7, out)) && (v13 = sub_100008880(v31), sub_1001A3BD4(v13, 8, *(a2 + 80))) && (v14 = sub_100008880(v31), sub_1001A3BD4(v14, 9, *(a2 + 48))) && (v15 = sub_100008880(v31), sub_1001452C8(v15, 10, *(a2 + 96))) && (v16 = sub_100008880(v31), sub_1001452C8(v16, 11, *(a2 + 100))) && (v17 = sub_100008880(v31), sub_1001452C8(v17, 12, *(a2 + 104))) && (v18 = sub_100008880(v31), sub_1001452C8(v18, 13, *(a2 + 108))) && (v19 = sub_100008880(v31), sub_1001A3BD4(v19, 14, *(a2 + 32))) && (v20 = sub_100008880(v31), sub_1001A3BD4(v20, 15, *(a2 + 112))) && (v21 = sub_100008880(v31), sub_1001A3BD4(v21, 16, *(a2 + 88))) && (v22 = sub_100008880(v31), sub_1001A3BD4(v22, 17, *(a2 + 120))) && (v23 = sub_100008880(v31), sub_1001A3BD4(v23, 18, *(a2 + 128))) && (v24 = sub_100008880(v31), sub_1001452C8(v24, 19, *(a2 + 136))) && (v25 = sub_100008880(v31), sub_1001A3BD4(v25, 20, *(a2 + 144))) && (v26 = sub_100008880(v31), sub_1000728E4(v26, 21, a3)))
  {
    v5 = *(v5 + 80);
    v27 = sub_100008880(v31);
    LOBYTE(v5) = sub_1001A3DEC(v5, v27);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v31;
  v31 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  if (v28)
  {
LABEL_28:
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

void sub_1007B884C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B8870(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a1 + 112;
  v6 = *(a1 + 112);
  v8 = a1 + 72;
  v36[1] = a1 + 112;
  (*(v6 + 16))(a1 + 112);
  v37 = 256;
  if (sub_100099160(v8))
  {
    sub_100144CA0((a1 + 504), v36);
    v9 = sub_100008880(v36[0]);
    if (sub_100073700(v9, 1, a2))
    {
      v10 = sub_100008880(v36[0]);
      if (sqlite3_step(v10) == 100)
      {
        v11 = sub_100008880(v36[0]);
        *a3 = sqlite3_column_int(v11, 0);
        v12 = sub_100008880(v36[0]);
        *(a3 + 8) = sqlite3_column_double(v12, 1);
        v13 = sub_100008880(v36[0]);
        *(a3 + 16) = sqlite3_column_int(v13, 2);
        v14 = sub_100008880(v36[0]);
        *(a3 + 20) = sqlite3_column_int(v14, 3);
        v15 = sub_100008880(v36[0]);
        *(a3 + 24) = sqlite3_column_double(v15, 4);
        v16 = sub_100008880(v36[0]);
        *(a3 + 40) = sqlite3_column_double(v16, 5);
        v17 = sub_100008880(v36[0]);
        *(a3 + 56) = sqlite3_column_double(v17, 6);
        v18 = sub_100008880(v36[0]);
        v19 = sqlite3_column_text(v18, 7);
        uuid_parse(v19, (a3 + 64));
        v20 = sub_100008880(v36[0]);
        *(a3 + 80) = sqlite3_column_double(v20, 8);
        v21 = sub_100008880(v36[0]);
        *(a3 + 48) = sqlite3_column_double(v21, 9);
        v22 = sub_100008880(v36[0]);
        *(a3 + 96) = sqlite3_column_int(v22, 10);
        v23 = sub_100008880(v36[0]);
        *(a3 + 100) = sqlite3_column_int(v23, 11);
        v24 = sub_100008880(v36[0]);
        *(a3 + 104) = sqlite3_column_int(v24, 12);
        v25 = sub_100008880(v36[0]);
        *(a3 + 108) = sqlite3_column_int(v25, 13);
        v26 = sub_100008880(v36[0]);
        *(a3 + 32) = sqlite3_column_double(v26, 14);
        v27 = sub_100008880(v36[0]);
        *(a3 + 112) = sqlite3_column_double(v27, 15);
        v28 = sub_100008880(v36[0]);
        *(a3 + 88) = sqlite3_column_double(v28, 16);
        v29 = sub_100008880(v36[0]);
        *(a3 + 120) = sqlite3_column_double(v29, 17);
        v30 = sub_100008880(v36[0]);
        *(a3 + 128) = sqlite3_column_double(v30, 18);
        v31 = sub_100008880(v36[0]);
        *(a3 + 136) = sqlite3_column_int(v31, 19);
        v32 = sub_100008880(v36[0]);
        *(a3 + 144) = sqlite3_column_double(v32, 20);
      }
    }

    v33 = v36[0];
    v36[0] = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = 100;
  }

  else
  {
    v34 = 109;
  }

  (*(*v7 + 24))(v7);
  return v34;
}

void sub_1007B8B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B8B78(uint64_t *a1)
{
  result = sub_100023B68(a1[10]);
  if (result)
  {
    sub_1007B8C0C(a1);
    sub_100608EC8(a1[10], "VO2MaxRetrocomputeHistory", &off_102471140, &off_1025D8600, 0);
    a1[63] = sub_100614C1C(a1[10], "SELECT * FROM VO2MaxRetrocomputeHistory WHERE algVersion = ? LIMIT 1");
    a1[64] = v3;
    a1[59] = sub_100614C1C(a1[10], "INSERT INTO VO2MaxRetrocomputeHistory (startTime, algVersion, status, firstSampleDate, lastSampleDate, lastSessionTimestamp, lastSessionId, meanDelta, lastSampleDatePrevAlg, numUpdatedEstimates, numNewEstimates, numLostEstimates, numLostEstimatesAfterLastSession, firstSummaryDate, lastTimestampToHealthKit, meanPercentileDelta, highPercentileMaxDelta, estimateVariabilityDelta, unavailableReasons, availableStartTime) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    a1[60] = v4;
    result = sub_100614C1C(a1[10], "UPDATE VO2MaxRetrocomputeHistory SET startTime = ?, algVersion =?, status = ?, firstSampleDate = ?, lastSampleDate = ?, lastSessionTimestamp = ?, lastSessionId = ?, meanDelta = ?, lastSampleDatePrevAlg = ?, numUpdatedEstimates = ?, numNewEstimates = ?, numLostEstimates = ?, numLostEstimatesAfterLastSession = ?, firstSummaryDate = ?, lastTimestampToHealthKit = ?, meanPercentileDelta = ?, highPercentileMaxDelta = ?, estimateVariabilityDelta = ?, unavailableReasons = ?, availableStartTime = ? WHERE id = ?");
    a1[61] = result;
    a1[62] = v5;
  }

  return result;
}

uint64_t sub_1007B8C0C(uint64_t a1)
{
  result = sub_10060A6D8(*(a1 + 80), "VO2MaxRetrocomputeHistory");
  if (result)
  {
    v3 = "startTime";
    v4 = 5;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100611268(*(a1 + 80), "VO2MaxRetrocomputeHistory", "startTime", &v3);
  }

  return result;
}

void sub_1007B913C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a61);
  _Unwind_Resume(a1);
}

void sub_1007B91E4(uint64_t a1)
{
  if (sub_100099160(a1 + 72))
  {
    sub_1000388D8(*(a1 + 80), "DELETE FROM VO2MaxRetrocomputeHistory");
  }

  if (qword_1025D4450 != -1)
  {
    sub_101938FDC();
  }

  v2 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[VO2MaxRetrocomputeHistory] Database inaccessible, unable to delete records.", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938FF0();
  }
}

void sub_1007B9308(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B9328(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 472), &v27);
    memset(out, 0, 37);
    uuid_unparse((a2 + 64), out);
    v5 = sub_100008880(v27);
    if (sub_1001A3BD4(v5, 1, *(a2 + 8)))
    {
      v6 = sub_100008880(v27);
      if (sub_100073700(v6, 2, *(a2 + 16)))
      {
        v7 = sub_100008880(v27);
        if (sub_100073700(v7, 3, *(a2 + 20)))
        {
          v8 = sub_100008880(v27);
          if (sub_1001A3BD4(v8, 4, *(a2 + 24)))
          {
            v9 = sub_100008880(v27);
            if (sub_1001A3BD4(v9, 5, *(a2 + 40)))
            {
              v10 = sub_100008880(v27);
              if (sub_1001A3BD4(v10, 6, *(a2 + 56)))
              {
                v11 = sub_100008880(v27);
                if (sub_10003DDD8(v11, 7, out))
                {
                  v12 = sub_100008880(v27);
                  if (sub_1001A3BD4(v12, 8, *(a2 + 80)))
                  {
                    v13 = sub_100008880(v27);
                    if (sub_1001A3BD4(v13, 9, *(a2 + 48)))
                    {
                      v14 = sub_100008880(v27);
                      if (sub_1001452C8(v14, 10, *(a2 + 96)))
                      {
                        v15 = sub_100008880(v27);
                        if (sub_1001452C8(v15, 11, *(a2 + 100)))
                        {
                          v16 = sub_100008880(v27);
                          if (sub_1001452C8(v16, 12, *(a2 + 104)))
                          {
                            v17 = sub_100008880(v27);
                            if (sub_1001452C8(v17, 13, *(a2 + 108)))
                            {
                              v18 = sub_100008880(v27);
                              if (sub_1001A3BD4(v18, 14, *(a2 + 32)))
                              {
                                v19 = sub_100008880(v27);
                                if (sub_1001A3BD4(v19, 15, *(a2 + 112)))
                                {
                                  v20 = sub_100008880(v27);
                                  if (sub_1001A3BD4(v20, 16, *(a2 + 88)))
                                  {
                                    v21 = sub_100008880(v27);
                                    if (sub_1001A3BD4(v21, 17, *(a2 + 120)))
                                    {
                                      v22 = sub_100008880(v27);
                                      if (sub_1001A3BD4(v22, 18, *(a2 + 128)))
                                      {
                                        v23 = sub_100008880(v27);
                                        if (sub_1001452C8(v23, 19, *(a2 + 136)))
                                        {
                                          v24 = sub_100008880(v27);
                                          if (sub_1001A3BD4(v24, 20, *(a2 + 144)))
                                          {
                                            v25 = *(a1 + 80);
                                            v26 = sub_100008880(v27);
                                            sub_1001A3DEC(v25, v26);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_1007B95D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B95FC(uint64_t a1, char *a2, const char **a3, const char **a4)
{
  if (!sub_10060A9FC(*(a1 + 80), a2))
  {
    if (qword_1025D4200 != -1)
    {
      sub_1019390F4();
    }

    v6 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Notice %{public}s needs autoincrement migration", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101939108(a2);
    }

    __p = 0;
    v28 = 0uLL;
    sub_10000EC00(buf, a2);
    v7 = std::string::append(buf, "AutoIncr", 8uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_10000EC00(buf, a2);
    v9 = std::string::append(buf, "Index", 5uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v24 = v9->__r_.__value_.__r.__words[2];
    *v23 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_100144A84(*(a1 + 80));
    if (v28 >= 0)
    {
      v11 = HIBYTE(v28);
    }

    else
    {
      v11 = v28;
    }

    v12 = buf;
    sub_100070148(buf, v11 + 21);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      if (v28 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(v12, p_p, v11);
    }

    strcpy(v12 + v11, "DROP TABLE IF EXISTS ");
    if (v26 >= 0)
    {
      v14 = &v25;
    }

    else
    {
      v14 = v25;
    }

    if (v26 >= 0)
    {
      v15 = HIBYTE(v26);
    }

    else
    {
      v15 = *(&v25 + 1);
    }

    v16 = std::string::append(buf, v14, v15);
    v17 = v16->__r_.__value_.__r.__words[0];
    v30.__r_.__value_.__r.__words[0] = v16->__r_.__value_.__l.__size_;
    *(v30.__r_.__value_.__r.__words + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
    v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }

    __p = v17;
    *&v28 = v30.__r_.__value_.__r.__words[0];
    *(&v28 + 7) = *(v30.__r_.__value_.__r.__words + 7);
    HIBYTE(v28) = v18;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
      v18 = HIBYTE(v28);
      v17 = __p;
    }

    if (v18 >= 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = v17;
    }

    sub_1000388D8(*(a1 + 80), v19);
  }

  v20 = *(a1 + 80);
  if (*(v20 + 88) <= 0)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = *(v20 + 88);
  }

  sub_1001B16EC(v20, v21);
  return 0;
}

void sub_1007BA6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007BA9C0(uint64_t *a1, void *a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getAllRecords", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 528, "getAllRecords");
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    a2[1] = *a2;
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "SELECT * from ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v7 = BYTE7(v16);
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " ORDER BY id ASC", 16);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1007BB078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (v36)
  {
    (*(*v36 + 8))(v36, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BB100(void *a1, uint64_t a2, double a3, double a4)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v21) & 0x80000000) == 0)
  {
    if (BYTE3(v21))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getEntriesByTimeRange", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 607, "getEntriesByTimeRange");
    __break(1u);
  }

  v11 = *v19;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160((a1 + 9)))
  {
    sub_10003848C(buf);
    v5 = sub_100038730(&v19[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((SBYTE7(v17) & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((SBYTE7(v17) & 0x80u) == 0)
    {
      v7 = BYTE7(v17);
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
    if (SBYTE7(v17) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((SBYTE7(v17) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return 2;
}

void sub_1007BB7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BB884(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v13 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_1007BDA80(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_1019390F4();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v17 = 2082;
    v18 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Database is already opened., name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a1 + 216))
  {
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 216);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101938F98(buf);
      v10 = *(a1 + 216);
      v14 = 134349056;
      v15 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", &v14, 12);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::setDatabaseAccessible() [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  (*(*v13 + 24))(v13);
  return 1;
}

void sub_1007BBF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1007BBF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  result = *(a3 + 96);
  v8 = *(a3 + 112);
  v9 = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 112) = v8;
  *(a2 + 128) = v9;
  *(a2 + 96) = result;
  return result;
}

id *sub_1007BBFD0(uint64_t a1, uint64_t a2, char a3)
{
  v36 = os_transaction_create();
  v37 = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(&v36);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v46 = 0;
  v47 = 0.0;
  v48 = 4;
  v54 = 0;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v51 = 0u;
  v6 = (*(*a1 + 104))(a1, &v46);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101938F98(buf);
        LOWORD(v38) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "Failed to insert record due to failure from reading the most recent entry.", &v38, 2, v36, v37);
        v16 = v15;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 8);
    v8 = v47;
    v9 = v7 - v47;
    if (v7 - v47 < 0.0)
    {
      v9 = -(v7 - v47);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 8);
        *buf = 134349312;
        v43 = v47;
        v44 = 2050;
        v45 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101938F98(buf);
        v28 = *(a2 + 8);
        v38 = 134349312;
        v39 = v47;
        v40 = 2050;
        v41 = v28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", &v38, 22, v36, v37);
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 8);
      v8 = v47;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101938F70();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 8);
          *buf = 134217984;
          v43 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101938F98(buf);
          v31 = *(a2 + 8);
          v38 = 134217984;
          v39 = v31;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", COERCE_DOUBLE(&v38));
          v33 = v32;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v32);
          if (v33 != buf)
          {
            free(v33);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v17 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }

      v18 = v7 - v8 - v17;
      v19 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v43 = v18;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101938F98(buf);
        v38 = 134217984;
        v39 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", COERCE_DOUBLE(&v38));
        v35 = v34;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v34);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      (*(*a1 + 96))(a1, v18);
    }

    (*(*a1 + 144))(a1, &v46, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v20 = *(a2 + 16);
  *(a1 + 224) = *a2;
  *(a1 + 240) = v20;
  v21 = *(a2 + 32);
  v22 = *(a2 + 48);
  v23 = *(a2 + 80);
  *(a1 + 288) = *(a2 + 64);
  *(a1 + 304) = v23;
  *(a1 + 256) = v21;
  *(a1 + 272) = v22;
  v24 = *(a2 + 96);
  v25 = *(a2 + 112);
  v26 = *(a2 + 128);
  *(a1 + 368) = *(a2 + 144);
  *(a1 + 336) = v25;
  *(a1 + 352) = v26;
  *(a1 + 320) = v24;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(&v36);
}

void sub_1007BC73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

BOOL sub_1007BC770(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 560, "deleteRecordsAfterInsertUL");
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "DELETE FROM ", 12);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ?", 20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1007BCCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

BOOL sub_1007BCD24(void *a1, double a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v19) & 0x80000000) == 0)
  {
    if (BYTE3(v19))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v12 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 577, "shiftRecordsByUL");
    __break(1u);
  }

  v10 = *v17;
  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    sub_10003848C(buf);
    v4 = sub_100038730(&v17[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
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

    v7 = sub_100038730(v4, v5, v6);
    sub_100038730(v7, " SET startTime = startTime + ?", 30);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[10];
    sub_100073518(buf, __p);
    if ((v15 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    sub_1000388D8(v8, v9);
  }

  return result;
}

void sub_1007BD244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BD298(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v19) & 0x80000000) == 0)
  {
    if (BYTE3(v19))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v12 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 592, "getMostRecentRecordUL");
    __break(1u);
  }

  v10 = *v17;
  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160((a1 + 9)))
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v17[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v15 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v5 = v15;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v15 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return 2;
}

void sub_1007BD7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

void sub_1007BD834(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_1019390F4();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193928C(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019393D4(a1);
    }
  }

  *(a1 + 456) = a2;
  v10 = *(a1 + 464);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 464) = _Block_copy(a3);
  }
}

void sub_1007BDAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007BDB48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_1007BDBD8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1007BE1F4(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_1007BE2DC(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1007BE3CC(result, prime);
    }
  }
}

void sub_1007BE3CC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1001D0818();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1007BE5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10014E5FC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007BE6B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10014E5FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007BE6D0(uint64_t a1, uint64_t a2)
{
  sub_1000FB724(&v9, a2);
  sub_1001039FC(*a1);
  v3 = *a1;
  *(v3 + 8) = 0;
  *(v3 + 96) = 0;
  v4 = v16;
  if (v16 == 1)
  {
    *(v3 + 8) = v9;
    v5 = v11;
    *(v3 + 16) = *__p;
    *(v3 + 32) = v5;
    __p[1] = 0;
    v11 = 0;
    __p[0] = 0;
    v6 = v15;
    v7 = v12;
    v8 = v13;
    *(v3 + 72) = v14;
    *(v3 + 56) = v8;
    *(v3 + 40) = v7;
    *(v3 + 88) = v6;
    *(v3 + 96) = 1;
    v4 = v16;
  }

  **a1 = *(a1 + 8);
  if ((v4 & 1) != 0 && SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007BE788(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_1000B96B4(&v3);
  }
}

uint64_t *sub_1007BE7D4(uint64_t *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_100731D80(a1 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t *sub_1007BE820(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6F96F96F96F96F97 * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0x1A41A41A41A41A4)
    {
      v9 = 0x6F96F96F96F96F97 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xD20D20D20D20D2)
      {
        v11 = 0x1A41A41A41A41A4;
      }

      else
      {
        v11 = v10;
      }

      sub_10031EC64(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6F96F96F96F96F97 * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t sub_1007BE994(uint64_t a1)
{
  sub_100107AE0(a1 + 3120);
  sub_1001054D8(a1 + 816);
  sub_1001039FC(a1);
  return a1;
}

uint64_t sub_1007BE9D0(uint64_t a1)
{
  v2 = *(a1 + 6536);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_100107AE0(a1 + 3120);
  sub_1001054D8(a1 + 816);
  sub_1001039FC(a1);
  return a1;
}

void sub_1007BEA18()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

id sub_1007BECC4(id a1, SEL a2, id a3, id a4)
{
  if (!a4)
  {
    return 0;
  }

  if ([objc_msgSend(a3 "departureDate")] == -1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v20 = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2113;
      v25 = a3;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Malformed visit, visit:%{private, location:escape_only}@}", &v20, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v19 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v20 = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2113;
      v25 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Malformed visit", "{msg%{public}.0s:#slv Malformed visit, visit:%{private, location:escape_only}@}", &v20, 0x1Cu);
    }

    return 0;
  }

  v6 = [a4 compare:{objc_msgSend(a3, "departureDate")}];
  v7 = [a4 compare:{objc_msgSend(a3, "arrivalDate")}];
  v8 = 0;
  if ([a3 hasArrivalDate] && v7 == -1)
  {
    v8 = [a3 arrivalDate];
  }

  v9 = 0;
  if ([a3 hasDepartureDate] && v6 == -1)
  {
    v9 = [a3 departureDate];
  }

  if (!(v8 | v9))
  {
    return 0;
  }

  v10 = [CLVisit alloc];
  [a3 coordinate];
  v12 = v11;
  v14 = v13;
  [a3 horizontalAccuracy];
  v16 = [v10 initWithCoordinate:v8 horizontalAccuracy:v9 arrivalDate:objc_msgSend(a3 departureDate:"detectionDate") detectionDate:objc_msgSend(a3 placeInference:{"_placeInference"), v12, v14, v15}];

  return v16;
}

void sub_1007BF700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007BF780(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v6 = *a2;
  sub_1000350D0(v7, a3);
  v21 = *(a3 + 184);
  [a4 onClientManagerNotification:v6 data:v7];
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

id sub_1007BF860(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007C3B24;
  v3[3] = &unk_102447418;
  v3[4] = v1;
  return [objc_msgSend(objc_msgSend(v1 "universe")];
}

id sub_1007BF8E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007C3B2C;
  v3[3] = &unk_102447418;
  v3[4] = v1;
  return [objc_msgSend(objc_msgSend(v1 "universe")];
}

id sub_1007BF968(uint64_t a1)
{
  [*(a1 + 32) setArmed:1];
  v2 = *(a1 + 32);

  return [v2 checkForMonitoring];
}

BOOL sub_1007C04D8(id a1, id a2, NSDictionary *a3)
{
  [objc_msgSend(a2 detectionDate];
  v5 = v4;
  if (v4 <= -15.0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 68289283;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2113;
      v12 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Dropping old visit, visit:%{private, location:escape_only}@}", v8, 0x1Cu);
    }
  }

  return v5 > -15.0;
}

void sub_1007C0B58(uint64_t a1)
{
  v2 = [*(a1 + 32) keyForClient:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    if ([*(a1 + 32) isClientWithKeyInterested:v2])
    {
      v4 = [*(a1 + 32) authorizationDateForClientWithKey:v3];
      v5 = [CLVisit _visitWithVisit:*(a1 + 48) authDate:v4];
      if (v5)
      {
        v6 = v5;
        if (qword_1025D47A0 != -1)
        {
          sub_101939528();
        }

        v7 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v3 UTF8String];
          [v4 timeIntervalSinceReferenceDate];
          v20 = 68289795;
          v21 = 2082;
          v22 = "";
          v23 = 2082;
          v24 = v8;
          v25 = 2050;
          v26 = v9;
          v27 = 2113;
          v28 = v6;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Delivering visit to client, key:%{public, location:escape_only}s, authDate_s:%{public}.09f, mangled:%{private, location:escape_only}@}", &v20, 0x30u);
        }

        [*(a1 + 40) onSignificantLocationVisit:v6];
        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_101939528();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v3 UTF8String];
        [v4 timeIntervalSinceReferenceDate];
        v20 = 68289538;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = v18;
        v25 = 2050;
        v26 = v19;
        v13 = "{msg%{public}.0s:#slv Client not authorized for visit, key:%{public, location:escape_only}s, authDate_s:%{public}.09f}";
        v14 = v17;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 38;
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101939528();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v20 = 68289282;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = [v3 UTF8String];
        v13 = "{msg%{public}.0s:#slv Not delivering visit to client... not interested, key:%{public, location:escape_only}s}";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEBUG;
        v16 = 28;
LABEL_24:
        _os_log_impl(dword_100000000, v14, v15, v13, &v20, v16);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v20 = 68289026;
      v21 = 2082;
      v22 = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Cannot deliver a visit to a client without a key}", &v20, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v20 = 68289026;
      v21 = 2082;
      v22 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Cannot deliver a visit to a client without a key", "{msg%{public}.0s:#slv Cannot deliver a visit to a client without a key}", &v20, 0x12u);
    }
  }
}

void sub_1007C150C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007C1AD0(uint64_t a1, uint64_t a2)
{
  v3 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:*(a1 + 32)];

  return sub_10077769C(a2, v3, 0);
}

id sub_1007C1B20(uint64_t a1)
{
  v3 = 0;
  result = [*(a1 + 32) interestForClientKey:objc_msgSend(*(a1 + 40) outInterest:{"UTF8String"), &v3}];
  if (v3 == 2)
  {
    sub_1004FA8B8([*(a1 + 32) clientInterest], objc_msgSend(*(a1 + 40), "UTF8String"), 0xFFFFFFFFLL);
    sub_1004FA8B8([*(a1 + 32) clientAuthDate], objc_msgSend(*(a1 + 40), "UTF8String"), 0xFFFFFFFFLL);
    return [*(a1 + 32) flushAll];
  }

  return result;
}

void sub_1007C1DEC(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101939528();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 68289283;
    *&buf[4] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2113;
    v9 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Sending out visit, visit:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  [objc_msgSend(*(a1 + 40) "recentVisits")];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "universe")];
  memset(v4, 0, sizeof(v4));
  sub_1004FAFA0([*(a1 + 40) clientInterest], v4);
}

void sub_1007C2238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a14;
  sub_1001E56E8(&a17);
  _Unwind_Resume(a1);
}

void sub_1007C29C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void **a39)
{
  sub_100039BE8(&a13);
  a39 = &a36;
  sub_1001E56E8(&a39);
  _Unwind_Resume(a1);
}

void *sub_1007C3B34(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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
      v7 = v4[4];
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

uint64_t sub_1007C3C8C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100ED8FC0(a1, a2, a3, a4);
  *v5 = off_102471790;
  *(v5 + 304) = "";
  *(v5 + 312) = 0;
  nullsub_34();
  *(a1 + 320) = v6;
  return a1;
}

uint64_t sub_1007C3D00(uint64_t a1, size_t *a2, int *a3)
{
  sub_100EDBA64(a1, &v76);
  v6 = (a1 + 8);
  v7 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v7 = v6->__r_.__value_.__r.__words[0];
  }

  if (sub_100021690(v7))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = a1 + 8;
      if (*(a1 + 31) < 0)
      {
        v9 = v6->__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v83 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: mmapTile, prefer local file name because it exists, %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1019398B4();
      }

      v47 = a1 + 8;
      if (*(a1 + 31) < 0)
      {
        v47 = v6->__r_.__value_.__r.__words[0];
      }

      v78 = 136315138;
      v79 = v47;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TILE: mmapTile, prefer local file name because it exists, %s", &v78);
      v49 = v48;
      sub_100152C7C("Generic", 1, 0, 2, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v48);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    std::string::operator=(&v76, v6);
  }

  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v76;
  }

  else
  {
    v10 = v76.__r_.__value_.__r.__words[0];
  }

  v11 = open(v10, 0);
  *a3 = v11;
  if (v11 < 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v23 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v76;
      }

      else
      {
        v24 = v76.__r_.__value_.__r.__words[0];
      }

      v25 = *__error();
      v26 = __error();
      v27 = strerror(*v26);
      *buf = 136315650;
      v83 = v24;
      v84 = 1024;
      *v85 = v25;
      *&v85[4] = 2080;
      *&v85[6] = v27;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "TILE: mmapTile, can't open, %s, errno, %d, %s", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_58;
    }

    sub_1019398DC(buf);
    v28 = qword_1025D48A8;
    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v76;
    }

    else
    {
      v29 = v76.__r_.__value_.__r.__words[0];
    }

    v30 = *__error();
    v31 = __error();
    v32 = strerror(*v31);
    v78 = 136315650;
    v79 = v29;
    v80 = 1024;
    *v81 = v30;
    *&v81[4] = 2080;
    *&v81[6] = v32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 17, "TILE: mmapTile, can't open, %s, errno, %d, %s", &v78, 28, v75);
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v33);
    goto LABEL_84;
  }

  if (fstat(v11, &v77) == -1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v35 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v76;
      }

      else
      {
        v36 = v76.__r_.__value_.__r.__words[0];
      }

      v37 = *__error();
      v38 = __error();
      v39 = strerror(*v38);
      *buf = 136315650;
      v83 = v36;
      v84 = 1024;
      *v85 = v37;
      *&v85[4] = 2080;
      *&v85[6] = v39;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "TILE: can't stat, %s, errno, %d, %s", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_58;
    }

    sub_1019398DC(buf);
    v50 = qword_1025D48A8;
    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v76;
    }

    else
    {
      v51 = v76.__r_.__value_.__r.__words[0];
    }

    v52 = *__error();
    v53 = __error();
    v54 = strerror(*v53);
    v78 = 136315650;
    v79 = v51;
    v80 = 1024;
    *v81 = v52;
    *&v81[4] = 2080;
    *&v81[6] = v54;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v50, 17, "TILE: can't stat, %s, errno, %d, %s", &v78, 28, v75);
    v34 = v55;
    sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v55);
LABEL_84:
    if (v34 != buf)
    {
      free(v34);
    }

LABEL_58:
    v12 = 0;
    *a2 = 0;
    goto LABEL_59;
  }

  *a2 = 0;
  v12 = mmap(0, v77.st_size, 1, 2, *a3, 0);
  st_size = v77.st_size;
  v14 = fstat(*a3, &v77);
  v15 = v14 != -1;
  if (v14 == -1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101939920();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v76;
      }

      else
      {
        v17 = v76.__r_.__value_.__r.__words[0];
      }

      v18 = *__error();
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136446722;
      v83 = v17;
      v84 = 1026;
      *v85 = v18;
      *&v85[4] = 2082;
      *&v85[6] = v20;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "TILE: can't stat, %{public}s, errno, %{public}d, %{public}s", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101939948(buf);
      v59 = qword_1025D4628;
      v60 = (v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v76 : v76.__r_.__value_.__r.__words[0];
      v61 = *__error();
      v62 = __error();
      v63 = strerror(*v62);
      v78 = 136446722;
      v79 = v60;
      v80 = 1026;
      *v81 = v61;
      *&v81[4] = 2082;
      *&v81[6] = v63;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v59, 17, "TILE: can't stat, %{public}s, errno, %{public}d, %{public}s", &v78, 28);
      v65 = v64;
      sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v64);
      if (v65 != buf)
      {
        free(v65);
      }
    }
  }

  if (st_size != v77.st_size)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101939920();
    }

    v21 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      v22 = &v76;
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v76.__r_.__value_.__r.__words[0];
      }

      *buf = 136446722;
      v83 = v22;
      v84 = 2050;
      *v85 = st_size;
      *&v85[8] = 2050;
      *&v85[10] = v77.st_size;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "TILE: mmap file size changed, %{public}s, size before mmap, %{public}ld, size after mmap, %{public}lld", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101939948(buf);
      v56 = &v76;
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = v76.__r_.__value_.__r.__words[0];
      }

      v78 = 136446722;
      v79 = v56;
      v80 = 2050;
      *v81 = st_size;
      *&v81[8] = 2050;
      *&v81[10] = v77.st_size;
      LODWORD(v74) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 17, "TILE: mmap file size changed, %{public}s, size before mmap, %{public}ld, size after mmap, %{public}lld", &v78, v74);
      v58 = v57;
      sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v57);
      if (v58 != buf)
      {
        free(v58);
      }
    }

    v15 = 0;
  }

  *a2 = v77.st_size;
  if (v12 == -1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v41 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v76;
      }

      else
      {
        v42 = v76.__r_.__value_.__r.__words[0];
      }

      v43 = v77.st_size;
      v44 = *__error();
      v45 = __error();
      v46 = strerror(*v45);
      *buf = 136315906;
      v83 = v42;
      v84 = 2048;
      *v85 = v43;
      *&v85[8] = 1024;
      *&v85[10] = v44;
      *&v85[14] = 2080;
      *&v85[16] = v46;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "TILE: mmap failed, %s, size, %lld, errno, %d, %s", buf, 0x26u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019398DC(buf);
      v66 = qword_1025D48A8;
      v67 = (v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v76 : v76.__r_.__value_.__r.__words[0];
      v68 = v77.st_size;
      v69 = *__error();
      v70 = __error();
      v71 = strerror(*v70);
      v78 = 136315906;
      v79 = v67;
      v80 = 2048;
      *v81 = v68;
      *&v81[8] = 1024;
      *&v81[10] = v69;
      *&v81[14] = 2080;
      *&v81[16] = v71;
      LODWORD(v74) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v66, 17, "TILE: mmap failed, %s, size, %lld, errno, %d, %s", &v78, v74, v75, v76.__r_.__value_.__l.__data_);
      v73 = v72;
      sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v72);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    v12 = -1;
  }

  else if (v15)
  {
    goto LABEL_62;
  }

LABEL_59:
  close(*a3);
  *a3 = -1;
  if (v12 != -1)
  {
    munmap(v12, *a2);
  }

  v12 = 0;
  *a2 = 0;
LABEL_62:
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1007C47AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C480C(int a1, void *a2, size_t a3, int a4)
{
  if ((a4 & 0x80000000) == 0)
  {
    close(a4);
  }

  if (a2)
  {

    munmap(a2, a3);
  }
}

uint64_t sub_1007C4864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007C3D00(a1, (a2 + 24), (a2 + 32));
  *(a2 + 40) = v4;
  if (v4)
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v5)
  {
    *(&v8.__r_.__value_.__r.__words[1] + 4) = 0;
    *(v8.__r_.__value_.__r.__words + 4) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = -1;
    *(a2 + 36) = *&v8.__r_.__value_.__l.__data_;
    *(a2 + 52) = v8.__r_.__value_.__r.__words[2];
  }

  else
  {
    *(a2 + 48) = 0;
    sub_100EDBA64(a1, &v8);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v8;
  }

  return v6;
}

uint64_t sub_1007C4960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
    }

    munmap(v2, v4);
    *(&v7 + 4) = 0;
    HIDWORD(v7) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = -1;
    *(a2 + 36) = v7;
    *(a2 + 52) = 0;
  }

  return 1;
}

uint64_t sub_1007C4A1C(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a2 + 6;
  v4 = a2[6];
  v7 = a2 + 3;
  v6 = a2[3];
  if (v4 >= v6)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 43962;
  }

  else if (v6 >= v4 + 12)
  {
    sub_100C3DBA0(a2[5] + v4, a3, 0);
    a2[6] += a3[1] + a3[2] + 12;
    return 1;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10193998C();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v10 = *v7;
      v11 = *v5;
      v14 = 134218496;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      v18 = 1024;
      v19 = 12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "TILE: corrupt header, fileGetNextSection, size, %zd, readto, %lld, %d", &v14, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019399A0(v7, v5);
    }

    sub_100EE06F4(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1007C4BA8(uint64_t a1, FILE *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 40);
  v121 = v6;
  (*(*v6 + 16))(v6);
  v122 = 256;
  v7 = a3[2];
  v116 = a3;
  *(v5 + 304) = *a3;
  *(v5 + 320) = v7;
  *(v5 + 296) = 1;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v9 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a3;
    v12 = *(a3 + 8);
    v13 = *(a3 + 9);
    *buf = 136315906;
    v146[0] = v11;
    LOWORD(v146[1]) = 1024;
    *(&v146[1] + 2) = v12;
    HIWORD(v146[1]) = 1024;
    LODWORD(v146[2]) = v13;
    WORD2(v146[2]) = 2048;
    *(&v146[2] + 6) = sub_10018D3FC((a3 + 2));
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "TILE: traverseTileFile, start, message, %s, isHeadersOnly, %d, isBinarySearch, %d, macAddressToSearch, %012llx", buf, 0x22u);
    v9 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019398DC(buf);
    v93 = qword_1025D48A8;
    v94 = *a3;
    v95 = *(a3 + 8);
    v96 = *(a3 + 9);
    LODWORD(v144[0]) = 136315906;
    *(v144 + 4) = v94;
    WORD6(v144[0]) = 1024;
    *(v144 + 14) = v95;
    WORD1(v144[1]) = 1024;
    DWORD1(v144[1]) = v96;
    WORD4(v144[1]) = 2048;
    *(&v144[1] + 10) = sub_10018D3FC((a3 + 2));
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v93, 2, "TILE: traverseTileFile, start, message, %s, isHeadersOnly, %d, isBinarySearch, %d, macAddressToSearch, %012llx", v144, 34, v110, v112);
    v98 = v97;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v97);
    v9 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (v98 != buf)
    {
      free(v98);
    }
  }

  if (!a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v18 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "TILE: traverseTileFile, can't open tile", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_19;
    }

    sub_1019398DC(buf);
    LOWORD(v144[0]) = 0;
    LODWORD(v109) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "TILE: traverseTileFile, can't open tile", v144, v109);
    v17 = v99;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v99);
    goto LABEL_100;
  }

  if (feof(a2))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v15 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "TILE: traverseTileFile, file is empty", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_19;
    }

    sub_1019398DC(buf);
    LOWORD(v144[0]) = 0;
    LODWORD(v109) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "TILE: traverseTileFile, file is empty", v144, v109);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v16);
LABEL_100:
    if (v17 != buf)
    {
      free(v17);
    }

LABEL_19:
    v19 = 0;
    goto LABEL_61;
  }

  *(v144 + 4) = 192;
  LODWORD(v144[0]) = 109498;
  HIDWORD(v144[0]) = 381;
  memset(&v144[1], 0, 28);
  *(&v144[2] + 12) = vdup_n_s32(0xC47A0000);
  DWORD1(v144[3]) = -998637568;
  memset(&v144[3] + 8, 0, 148);
  LODWORD(v133) = 306106;
  *(&v133 + 4) = 176;
  HIDWORD(v133) = 381;
  *&v143[16] = 0;
  *&v143[20] = 0;
  v134 = 0u;
  v135 = 0u;
  v114 = v6;
  if (*(v5 + 296) != 1)
  {
LABEL_55:
    v19 = 1;
    goto LABEL_56;
  }

  *&v14 = 136316674;
  v111 = v14;
  while (1)
  {
    if (feof(a2))
    {
      goto LABEL_55;
    }

    v119 = 0;
    v120 = 0;
    __ptr = 0;
    v118 = 0;
    v20 = fread(&__ptr, 1uLL, 0xCuLL, a2);
    sub_100C3DBA0(&__ptr, &v119, 0);
    v21 = v20 == 12;
    v19 = v20 != 12;
    if (!v21)
    {
      goto LABEL_56;
    }

    if (p_info[276] != -1)
    {
      sub_1019398B4();
    }

    v22 = v9[277];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      HIDWORD(v115) = v19;
      v23 = a2;
      v24 = v5;
      v25 = p_info;
      v26 = v9;
      v27 = *v116;
      v28 = v119;
      v29 = WORD1(v119);
      v31 = HIDWORD(v119);
      v30 = v120;
      v32 = sub_100ED73B4(WORD1(v119));
      *buf = v111;
      v146[0] = v27;
      LOWORD(v146[1]) = 2048;
      *(&v146[1] + 2) = 12;
      WORD1(v146[2]) = 1024;
      HIDWORD(v146[2]) = v28;
      LOWORD(v146[3]) = 1024;
      *(&v146[3] + 2) = v29;
      HIWORD(v146[3]) = 1024;
      LODWORD(v146[4]) = v30;
      WORD2(v146[4]) = 1024;
      *(&v146[4] + 6) = v31;
      WORD1(v146[5]) = 2080;
      *(&v146[5] + 4) = v32;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "TILE: thisSection, message, %s, readBytes, %lu, section, signature, 0x%x, sectionId, %d, sizeBytes, %d, headerSizeBytes, %d, name, %s", buf, 0x38u);
      v6 = v114;
      v9 = v26;
      p_info = v25;
      v5 = v24;
      a2 = v23;
      v19 = HIDWORD(v115);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019398DC(buf);
      v62 = v19;
      v63 = p_info;
      v64 = v9[277];
      v65 = *v116;
      v66 = v119;
      v67 = WORD1(v119);
      v69 = HIDWORD(v119);
      v68 = v120;
      v70 = sub_100ED73B4(WORD1(v119));
      v123 = v111;
      *v124 = v65;
      *&v124[8] = 2048;
      *&v125 = 12;
      WORD4(v125) = 1024;
      *(&v125 + 10) = v66;
      HIWORD(v125) = 1024;
      v126 = v67;
      v127 = 1024;
      v128 = v68;
      v129 = 1024;
      v130 = v69;
      v131 = 2080;
      v132 = v70;
      LODWORD(v109) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v64, 2, "TILE: thisSection, message, %s, readBytes, %lu, section, signature, 0x%x, sectionId, %d, sizeBytes, %d, headerSizeBytes, %d, name, %s", &v123, v109, v111, DWORD2(v111), v113, v114, v115);
      v72 = v71;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v71);
      v6 = v114;
      v9 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = v63;
      if (v72 != buf)
      {
        free(v72);
      }

      v19 = v62;
    }

    if (v119 != 43962)
    {
      break;
    }

    v33 = HIDWORD(v119);
    v34 = HIDWORD(v119) + 12;
    v35 = v34 + v120;
    if (v35 > 0x640000B)
    {
      if (p_info[276] != -1)
      {
        sub_1019398B4();
      }

      v83 = v9[277];
      if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v146[0] = v35;
        LOWORD(v146[1]) = 2048;
        *(&v146[1] + 2) = 104857612;
        _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_FAULT, "TILE: invalid tile file, bad allocation size, totalBytesInSection, %lu, maxAllocationSize, %lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019398DC(buf);
        v79 = v9;
        v84 = v9[277];
        v123 = 134218240;
        *v124 = v35;
        *&v124[8] = 2048;
        *&v125 = 104857612;
        LODWORD(v109) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v84, 17, "TILE: invalid tile file, bad allocation size, totalBytesInSection, %lu, maxAllocationSize, %lu", &v123, v109);
        v82 = v85;
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v85);
        goto LABEL_74;
      }

      goto LABEL_56;
    }

    v36 = malloc_type_malloc(HIDWORD(v119) + 12, 0x100004077774924uLL);
    v37 = v36;
    if (!v36)
    {
      if (p_info[276] != -1)
      {
        sub_1019398B4();
      }

      v86 = v9[277];
      if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v146[0] = v34;
        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_FAULT, "TILE: failed to allocate memory for, %lu", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019398DC(buf);
        v87 = v9[277];
        v123 = 134217984;
        *v124 = v34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v87, 17, "TILE: failed to allocate memory for, %lu", &v123);
        v89 = v88;
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v88);
        if (v89 != buf)
        {
          free(v89);
        }

        v6 = v114;
      }

      goto LABEL_56;
    }

    v38 = fread(v36 + 12, 1uLL, v33, a2);
    if (v38 != v33)
    {
      v90 = v38;
      if (p_info[276] != -1)
      {
        sub_1019398B4();
      }

      v91 = v9[277];
      if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v146[0] = v90;
        LOWORD(v146[1]) = 2048;
        *(&v146[1] + 2) = v33;
        _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_FAULT, "TILE: failed to read pSectionH, %lu, %lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019398DC(buf);
        v103 = v9[277];
        v123 = 134218240;
        *v124 = v90;
        *&v124[8] = 2048;
        *&v125 = v33;
        LODWORD(v109) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v103, 17, "TILE: failed to read pSectionH, %lu, %lu", &v123, v109);
        v105 = v104;
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v104);
        if (v105 != buf)
        {
          free(v105);
        }

        v6 = v114;
      }

      free(v37);
      goto LABEL_96;
    }

    v39 = __ptr;
    *(v37 + 2) = v118;
    *v37 = v39;
    if (p_info[276] != -1)
    {
      sub_1019398B4();
    }

    v40 = v9[277];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      LODWORD(v146[0]) = v119;
      WORD2(v146[0]) = 1024;
      *(v146 + 6) = WORD1(v119);
      WORD1(v146[1]) = 1024;
      HIDWORD(v146[1]) = HIDWORD(v119);
      LOWORD(v146[2]) = 1024;
      *(&v146[2] + 2) = v120;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "TILE: section, signature, 0x%x, sectionId, %d, headerSizeBytes, %u, sizeBytes, %u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019398DC(buf);
      v73 = v9[277];
      v123 = 67109888;
      *v124 = v119;
      *&v124[4] = 1024;
      *&v124[6] = WORD1(v119);
      LOWORD(v125) = 1024;
      *(&v125 + 2) = HIDWORD(v119);
      WORD3(v125) = 1024;
      DWORD2(v125) = v120;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v73, 2, "TILE: section, signature, 0x%x, sectionId, %d, headerSizeBytes, %u, sizeBytes, %u", &v123, 26, v111, DWORD2(v111));
      v75 = v74;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v74);
      if (v75 != buf)
      {
        free(v75);
      }
    }

    v41 = ftell(a2);
    (*(*v5 + 112))(v5, a2, &v119, v37, v116);
    switch(WORD1(v119))
    {
      case 1u:
        v144[0] = *v37;
        v52 = *(v37 + 1);
        v53 = *(v37 + 2);
        v54 = *(v37 + 4);
        v144[3] = *(v37 + 3);
        v144[4] = v54;
        v144[1] = v52;
        v144[2] = v53;
        v55 = *(v37 + 5);
        v56 = *(v37 + 6);
        v57 = *(v37 + 8);
        v144[7] = *(v37 + 7);
        v144[8] = v57;
        v144[5] = v55;
        v144[6] = v56;
        v58 = *(v37 + 9);
        v59 = *(v37 + 10);
        v60 = *(v37 + 11);
        *(&v144[11] + 12) = *(v37 + 188);
        v144[10] = v59;
        v144[11] = v60;
        v144[9] = v58;
        *&v61 = sub_100C3DBA4(v144, v144, 0);
        (*(*v5 + 120))(v5, v144, v61);
        break;
      case 4u:
        v43 = *v37;
        v44 = *(v37 + 1);
        v45 = *(v37 + 3);
        v135 = *(v37 + 2);
        v136 = v45;
        v134 = v44;
        v133 = v43;
        v46 = *(v37 + 4);
        v47 = *(v37 + 5);
        v48 = *(v37 + 7);
        v139 = *(v37 + 6);
        v140 = v48;
        v137 = v46;
        v138 = v47;
        v49 = *(v37 + 8);
        v50 = *(v37 + 9);
        v51 = *(v37 + 10);
        *&v143[12] = *(v37 + 172);
        v142 = v50;
        *v143 = v51;
        v141 = v49;
        sub_100C3DC54(&v133, &v133, 0);
        (*(*v5 + 128))(v5, &v133);
        break;
      case 5u:
        v146[0] = 184;
        *buf = 371642;
        LODWORD(v146[1]) = 381;
        memset(&v146[1] + 4, 0, 32);
        memset(&v146[21] + 4, 0, 20);
        *&v42 = sub_100ED73D8(v37, buf, 0);
        (*(*v5 + 168))(v5, buf, v42);
        break;
      default:
        goto LABEL_47;
    }

    if (*(v116 + 8) == 1)
    {
      *(v5 + 296) = 0;
    }

LABEL_47:
    free(v37);
    if (fseek(a2, v41 + v120, 0))
    {
      if (p_info[276] != -1)
      {
        sub_1019398B4();
      }

      v92 = v9[277];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v146[0] = v41;
        LOWORD(v146[1]) = 1024;
        *(&v146[1] + 2) = v120;
        _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_FAULT, "TILE: ERROR: failed to fseek to, currentFileOffset, %lu, %u", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019398DC(buf);
        v106 = v9[277];
        v123 = 134218240;
        *v124 = v41;
        *&v124[8] = 1024;
        LODWORD(v125) = v120;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v106, 17, "TILE: ERROR: failed to fseek to, currentFileOffset, %lu, %u", &v123, 18);
        v108 = v107;
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v107);
        if (v108 != buf)
        {
          free(v108);
        }

        v6 = v114;
      }

LABEL_96:
      v19 = 0;
      goto LABEL_56;
    }

    if ((*(v5 + 296) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  if (p_info[276] != -1)
  {
    sub_1019398B4();
  }

  v78 = v9[277];
  if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
  {
    *buf = 134218752;
    v146[0] = 12;
    LOWORD(v146[1]) = 1024;
    *(&v146[1] + 2) = v119;
    HIWORD(v146[1]) = 1024;
    LODWORD(v146[2]) = WORD1(v119);
    WORD2(v146[2]) = 1024;
    *(&v146[2] + 6) = v120;
    _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_FAULT, "TILE: Invalid section signature, readBytes, %lu, section, signature, 0x%x, sectionId, %d, sizeBytes, %d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019398DC(buf);
    v79 = v9;
    v80 = v9[277];
    v123 = 134218752;
    *v124 = 12;
    *&v124[8] = 1024;
    LODWORD(v125) = v119;
    WORD2(v125) = 1024;
    *(&v125 + 6) = WORD1(v119);
    WORD5(v125) = 1024;
    HIDWORD(v125) = v120;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v80, 17, "TILE: Invalid section signature, readBytes, %lu, section, signature, 0x%x, sectionId, %d, sizeBytes, %d", &v123, 30, v111, DWORD2(v111));
    v82 = v81;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v81);
LABEL_74:
    if (v82 != buf)
    {
      free(v82);
    }

    v6 = v114;
    v9 = v79;
  }

LABEL_56:
  *(v5 + 296) = 0;
  if (p_info[276] != -1)
  {
    sub_1019398B4();
  }

  v76 = v9[277];
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEBUG, "TILE: traverseTileFile, done", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019398DC(buf);
    v100 = v9[277];
    LOWORD(v123) = 0;
    LODWORD(v109) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v100, 2, "TILE: traverseTileFile, done", &v123, v109);
    v102 = v101;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v101);
    if (v102 != buf)
    {
      free(v102);
    }

    v6 = v114;
  }

LABEL_61:
  (*(*v6 + 24))(v6);
  return v19;
}