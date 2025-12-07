void sub_1007FE8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, xpc_object_t a39, char a40, uint64_t a41)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007FE9F4(uint64_t a1)
{
  sub_10000FF50(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void WebPushControllerImpl::subscribe_sync(uint64_t a1, uint64_t a2, void *a3, char a4, const void **a5)
{
  v29 = 0uLL;
  v30 = 0;
  std::operator+<char>();
  v9 = sub_10031B7D4((a1 + 144), &v29);
  v10 = v9;
  if (v9)
  {
    v11 = v9[6];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v10[5];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = a5[1];
    if (v14 && (v15 = std::__shared_weak_count::lock(v14)) != 0)
    {
      v16 = v13 == *a5;
      sub_100004A34(v15);
      if (!v12)
      {
LABEL_17:
        if (!v16)
        {
          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = &v29;
            if (v30 < 0)
            {
              v18 = v29;
            }

            *__p = 136446210;
            *&__p[4] = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Updating webpush listener for %{public}s", __p, 0xCu);
          }

          v20 = *a5;
          v19 = a5[1];
          if (v19)
          {
            atomic_fetch_add_explicit(v19 + 2, 1uLL, memory_order_relaxed);
          }

          v21 = v10[6];
          v10[5] = v20;
          v10[6] = v19;
          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = v13 == 0;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    sub_100004A34(v12);
    goto LABEL_17;
  }

  sub_100800528(__p, &v29, a5);
  sub_1008022D0((a1 + 144), __p, __p);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if (v32 < 0)
  {
    operator delete(*__p);
  }

LABEL_26:
  if (a4)
  {
    if (*(a1 + 224) == 1)
    {
      WebPushControllerImpl::enableTopicsFromListeners_sync(a1);
    }
  }

  else
  {
    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = &v29;
      if (v30 < 0)
      {
        v23 = v29;
      }

      *__p = 136446210;
      *&__p[4] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Subscribing to webpush topic: %{public}s", __p, 0xCu);
    }

    v24 = [APSURLTokenInfo alloc];
    if (v30 >= 0)
    {
      v25 = &v29;
    }

    else
    {
      v25 = v29;
    }

    v26 = [NSString stringWithUTF8String:v25];
    v27 = [NSData dataWithBytes:*a3 length:a3[1] - *a3];
    v28 = [v24 initWithTopic:v26 vapidPublicKey:v27];

    [*(a1 + 136) requestURLTokenForInfo:v28];
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_1007FED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WebPushControllerImpl::enableTopicsFromListeners_sync(WebPushControllerImpl *this)
{
  v2 = (this + 160);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    sub_100005308(&v6, v2 + 1);
  }

  if (v7 == v6)
  {
    [*(this + 17) _setEnabledTopics:0];
  }

  else
  {
    WebPushControllerImpl::clearIgnoredTopics_sync(this);
    v3 = sub_1007FBEB4(&v6);
    if (v3)
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 count];
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Enabling %zu webpush topics from listeners", buf, 0xCu);
      }

      [*(this + 17) _setEnabledTopics:v3];
    }
  }

  *buf = &v6;
  sub_1000087B4(buf);
}

void sub_1007FEE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000087B4(&a13);
  _Unwind_Resume(a1);
}

void WebPushControllerImpl::unsubscribe_sync(uint64_t a1, uint64_t a2, void *a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  std::operator+<char>();
  if (sub_10031B7D4((a1 + 144), __p))
  {
    sub_1008025B4((a1 + 144), __p);
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __p;
      if (v14 < 0)
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Unsubscribing from webpush topic: %{public}s", buf, 0xCu);
    }

    v7 = [APSURLTokenInfo alloc];
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = [NSString stringWithUTF8String:v8];
    v10 = [NSData dataWithBytes:*a3 length:a3[1] - *a3];
    v11 = [v7 initWithTopic:v9 vapidPublicKey:v10];

    [*(a1 + 136) invalidateURLTokenForInfo:v11];
    WebPushControllerImpl::enableTopicsFromListeners_sync(a1);
  }

  else
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1017803A4(__p, v12);
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007FF08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::clearIgnoredTopics_sync(WebPushControllerImpl *this)
{
  v2 = [*(this + 17) ignoredTopics];
  if (v2)
  {
    v3 = [*(this + 17) ignoredTopics];
    v4 = [v3 count];

    if (v4)
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(this + 17) ignoredTopics];
        v7 = 134217984;
        v8 = [v6 count];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Clearing %zu ignored webpush topics", &v7, 0xCu);
      }

      [*(this + 17) _setIgnoredTopics:0];
    }
  }
}

void WebPushControllerImpl::ignoreAllTopics_sync(WebPushControllerImpl *this)
{
  v2 = [*(this + 17) enabledTopics];
  if (v2 && ([*(this + 17) enabledTopics], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v2, v4))
  {
    v5 = [*(this + 17) enabledTopics];
    [*(this + 17) _setEnabledTopics:0];
    v6 = [*(this + 17) ignoredTopics];

    if (v6)
    {
      v7 = [*(this + 17) ignoredTopics];
      v8 = [NSMutableArray arrayWithArray:v7];

      [v8 addObjectsFromArray:v5];
      [*(this + 17) _setIgnoredTopics:v8];
    }

    else
    {
      [*(this + 17) _setIgnoredTopics:v5];
    }

    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(this + 17) ignoredTopics];
      v12 = 134217984;
      v13 = [v11 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Migrated %lu webpush topics [enabled->ignored]", &v12, 0xCu);
    }
  }

  else
  {
    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I No webpush topics are enabled", &v12, 2u);
    }
  }
}

void sub_1007FF3D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handleWebPushMessage(uint64_t a1, __int128 *a2, const void **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  sub_100010024(&v6, a3);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void WebPushControllerImpl::processMessagePayload(uint64_t a1@<X0>, CFDictionaryRef *a2@<X2>, xpc_object_t *a3@<X8>)
{
  if (*a2)
  {
    v46 = 0;
    v47 = 0;
    (*(**(a1 + 96) + 40))(&v46);
    if (!v46)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017805CC();
      }

      *a3 = xpc_null_create();
      goto LABEL_53;
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    (*(*v46 + 40))(&v43);
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = v44 - v43;
      *&buf[8] = 2098;
      *&buf[10] = v43;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Push: ua_publickey: %{public}.*P", buf, 0x12u);
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    (*(*v46 + 48))(&v40);
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v41 - v40;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Push: ua_privatekey: length %zu", buf, 0xCu);
    }

    memset(buf, 0, 32);
    (*(**(a1 + 96) + 64))(buf);
    v8 = *(a1 + 40);
    if (buf[24])
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v48) = 134217984;
        *(&v48 + 4) = *&buf[8] - *buf;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Push: ua_secret: length %zu", &v48, 0xCu);
      }

      Value = CFDictionaryGetValue(*a2, @"as_publickey");
      v10 = Value;
      if (Value)
      {
        v11 = CFGetTypeID(Value);
        if (v11 == CFStringGetTypeID())
        {
          v12 = *(a1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v48) = 138412290;
            *(&v48 + 4) = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Push: as_publickey: %@", &v48, 0xCu);
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          v13 = *(a1 + 96);
          v48 = 0uLL;
          *&v49 = 0;
          ctu::cf::assign();
          *__p = v48;
          v36 = v49;
          (*(*v13 + 16))(&v37, v13, __p);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(__p[0]);
          }

          v14 = CFDictionaryGetValue(*a2, @"as_salt");
          v15 = v14;
          if (!v14 || (v16 = CFGetTypeID(v14), v16 != CFStringGetTypeID()))
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101780564();
            }

            *a3 = xpc_null_create();
            goto LABEL_95;
          }

          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v48) = 138412290;
            *(&v48 + 4) = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Push: as_salt: %@", &v48, 0xCu);
          }

          __p[0] = 0;
          __p[1] = 0;
          v36 = 0;
          v18 = *(a1 + 96);
          v48 = 0uLL;
          *&v49 = 0;
          ctu::cf::assign();
          *v33 = v48;
          v34 = v49;
          (*(*v18 + 16))(__p, v18, v33);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33[0]);
          }

          v19 = CFDictionaryGetValue(*a2, @"payload");
          if (!v19 || (v20 = CFGetTypeID(v19), v20 != CFStringGetTypeID()))
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101780530();
            }

            *a3 = xpc_null_create();
            goto LABEL_93;
          }

          v33[0] = 0;
          v33[1] = 0;
          v34 = 0;
          v21 = *(a1 + 96);
          v48 = 0uLL;
          *&v49 = 0;
          ctu::cf::assign();
          *v31 = v48;
          v32 = v49;
          (*(*v21 + 16))(v33, v21, v31);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }

          v22 = CFDictionaryGetValue(*a2, @"content_encoding");
          v23 = v22;
          if (!v22 || (v24 = CFGetTypeID(v22), v24 != CFStringGetTypeID()))
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_1017804FC();
            }

            *a3 = xpc_null_create();
            goto LABEL_91;
          }

          v25 = *(a1 + 40);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v48) = 138412290;
            *(&v48 + 4) = v23;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Push: content_encoding: %@", &v48, 0xCu);
          }

          v31[0] = 0;
          v31[1] = 0;
          v32 = 0;
          if (CFEqual(v23, @"aesgcm"))
          {
            v48 = 0u;
            v49 = 0u;
            if ((buf[24] & 1) == 0)
            {
              sub_1000D1644();
            }

            (*(**(a1 + 96) + 88))(&v48);
            v26 = BYTE8(v49);
            if (BYTE8(v49))
            {
LABEL_68:
              sub_1001E0090(&v29, v48, *(&v48 + 1), *(&v48 + 1) - v48);
              if (SHIBYTE(v32) < 0)
              {
                operator delete(v31[0]);
              }

              *v31 = v29;
              v32 = v30;
              goto LABEL_80;
            }

            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101780460();
            }
          }

          else
          {
            if (!CFEqual(v23, @"aes128gcm"))
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_1017804C8();
              }

              *a3 = xpc_null_create();
              goto LABEL_89;
            }

            v48 = 0u;
            v49 = 0u;
            if ((buf[24] & 1) == 0)
            {
              sub_1000D1644();
            }

            (*(**(a1 + 96) + 80))(&v48);
            v26 = BYTE8(v49);
            if (BYTE8(v49))
            {
              goto LABEL_68;
            }

            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101780494();
            }
          }

          *a3 = xpc_null_create();
LABEL_80:
          if (BYTE8(v49) == 1 && v48)
          {
            *(&v48 + 1) = v48;
            operator delete(v48);
          }

          if (v26)
          {
            v27 = *(a1 + 40);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v31;
              if (v32 < 0)
              {
                v28 = v31[0];
              }

              LODWORD(v48) = 136446210;
              *(&v48 + 4) = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Push: decrypted payload: %{public}s", &v48, 0xCu);
            }

            WebPushControllerImpl::parseJSONPayload(a1, v31, a3);
          }

LABEL_89:
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }

LABEL_91:
          if (v33[0])
          {
            v33[1] = v33[0];
            operator delete(v33[0]);
          }

LABEL_93:
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

LABEL_95:
          if (v37)
          {
            v38 = v37;
            operator delete(v37);
          }

          goto LABEL_46;
        }
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101780598();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10178042C();
    }

    *a3 = xpc_null_create();
LABEL_46:
    if (buf[24] == 1 && *buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

LABEL_53:
    if (v47)
    {
      sub_100004A34(v47);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101780600();
  }

  *a3 = xpc_null_create();
}

void sub_1007FFEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void WebPushControllerImpl::parseJSONPayload(uint64_t a1@<X0>, uint64_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [v6 dataUsingEncoding:4];
  if (v7)
  {
    v18 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v18];
    v9 = v18;
    if (v9)
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 localizedDescription];
        sub_101780634(v11, buf, v10);
      }

LABEL_17:
      *a3 = xpc_null_create();
LABEL_18:

      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10178068C();
      }

      goto LABEL_17;
    }

    *a3 = 0;
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (v12)
    {
      *a3 = v12;
    }

    else
    {
      v13 = xpc_null_create();
      *a3 = v13;
      if (!v13)
      {
        v14 = xpc_null_create();
        v13 = 0;
        goto LABEL_25;
      }
    }

    if (xpc_get_type(v13) == &_xpc_type_dictionary)
    {
      xpc_retain(v13);
LABEL_26:
      xpc_release(v13);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3321888768;
      v16[2] = sub_100800368;
      v16[3] = &unk_101E82060;
      v15 = *a3;
      object = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        object = xpc_null_create();
      }

      [v8 enumerateKeysAndObjectsUsingBlock:v16];
      xpc_release(object);
      object = 0;
      goto LABEL_18;
    }

    v14 = xpc_null_create();
LABEL_25:
    *a3 = v14;
    goto LABEL_26;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017806C0();
  }

  *a3 = xpc_null_create();
LABEL_19:
}

void sub_1008002E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100800368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  sub_1007FBD98(v6, v12);
  if (v13 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v12[0];
  }

  object = xpc_string_create(v7);
  if (!object)
  {
    object = xpc_null_create();
  }

  sub_1007FBD98(v5, __p);
  if (v10 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v11[0] = a1 + 32;
  v11[1] = v8;
  sub_10000F688(v11, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  object = 0;
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_100800470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  xpc_release(v21);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_1008004AC(uint64_t a1, uint64_t a2)
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

void sub_10080051C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_100800528(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = a3[1];
  __dst[3] = *a3;
  __dst[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

uint64_t sub_100800594(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100800670(void *a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E821F0;
  sub_100800768((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1008006EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E821F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100800768(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  WebPushControllerImpl::WebPushControllerImpl(a1, &object, a3, a4);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1008007D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080086C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1017806F4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100800888(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1008008C0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1008008F0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100800930(ServiceManager::Service *this)
{
  *this = off_101E822B8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10080098C(ServiceManager::Service *this)
{
  *this = off_101E822B8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_100800A28(uint64_t a1)
{
  sub_100800A64(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100800A64(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1007676EC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_100800B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100800C34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E82338;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100800C6C(void *a1)
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

uint64_t sub_100800CB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100800D00(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E823B8;
  v5[1] = v3;
  v5[3] = v5;
  sub_100300158(v5, a1);
  sub_1002FED80(v5);
  return a1;
}

uint64_t sub_100800E04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E823B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100800E38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100800E84(uint64_t *a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/lazuli_push_enabled_idsbag");
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

void sub_100800F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_100800FEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E82438;
  a2[1] = v2;
  return result;
}

void sub_100801018(uint64_t a1)
{
  sub_100004AA0(&v2, (*(a1 + 8) + 8));
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  operator new();
}

void sub_1008010EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080111C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100801168(void *a1)
{
  *a1 = off_101E824A8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1008011B4(void *a1)
{
  *a1 = off_101E824A8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100801294(uint64_t result, uint64_t a2)
{
  *a2 = off_101E824A8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1008012D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1008012E4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100801324(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v9) = 136315138;
          *(&v9 + 4) = asStringBool(v4);
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I IDS Server Bag RCSPush enabled: %s", &v9, 0xCu);
        }

        *&v9 = 1;
        *(&v9 + 1) = v5 + 184;
        *(v5 + 216) = v4;
        sub_100801474(&v9);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_100801428(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100801474(uint64_t a1)
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

void sub_1008014DC(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1008015AC(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(v1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2);
  sub_100801650(&v5);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
    sub_1002B78C4(&v4, v3);
  }
}

void sub_100801628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100801650(va);
  v10 = a9;
  a9 = 0;
  if (v10)
  {
    sub_1002B78C4(&a9, v10);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100801650(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10002B644(v2);
    operator delete();
  }

  return a1;
}

void sub_100801698(void *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I bootstrapping...", buf, 2u);
  }

  WebPushControllerImpl::bootstrap_sync(*(v2 + 48));
}

void sub_10080171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100801738(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100801738(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10080178C(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (v1[1])
      {
        v5 = *(v3 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I starting...", buf, 2u);
        }

        WebPushControllerImpl::startup_sync(*(v3 + 48));
      }

      sub_100004A34(v4);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_10080183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100801860(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I shutting down...", buf, 2u);
  }

  WebPushControllerImpl::shutdown_sync(*(v2 + 48));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1008018E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100801900(uint64_t *a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(**a1 + 48);
  v4 = *(*a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 88);
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_100801994(uint64_t a1)
{
  v3 = a1;
  v1 = *(**a1 + 48);
  v2 = *(v1 + 88);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t *sub_1008019F8(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *(v1 + 31);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(v1 + 16);
  }

  v4 = *(*v1 + 48);
  if (v3 >= 0)
  {
    v5 = (v1 + 8);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = "<invalid>";
  }

  sub_10000501C(__p, v6);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v12 = *(v1 + 64);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  WebPushControllerImpl::subscribe_sync(v4, __p, (v1 + 32), v7, &v12);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100801AF8(&v11);
  return sub_1000049E0(&v10);
}

void sub_100801AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  sub_101760E98(&a16);
  sub_100801AF8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100801AF8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 32);
    if (v3)
    {
      *(v1 + 40) = v3;
      operator delete(v3);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100801B6C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 31);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(v1 + 16);
  }

  v4 = *(*v1 + 48);
  if (v3 >= 0)
  {
    v5 = (v1 + 8);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = "<invalid>";
  }

  sub_10000501C(__p, v6);
  WebPushControllerImpl::unsubscribe_sync(v4, __p, (v1 + 32));
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100801C3C(&v9);
  return sub_1000049E0(&v8);
}

void sub_100801C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100801C3C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100801C3C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      *(v1 + 40) = v2;
      operator delete(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void sub_100801CA4(uint64_t a1)
{
  v1 = a1;
  WebPushControllerImpl::ignoreAllTopics_sync(*(**a1 + 48));
  operator delete();
}

void *sub_100801D9C(void *a1, char **a2, NSObject **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E82538;
  sub_1001049FC((a1 + 3), a2, a3);
  return a1;
}

void sub_100801E18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E82538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100801E6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_100801E80(void *a1)
{
  *a1 = off_101E82588;
  sub_10000FF50((a1 + 6));
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_100801EDC(void *a1)
{
  *a1 = off_101E82588;
  sub_10000FF50((a1 + 6));
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void sub_100801FF8(_Unwind_Exception *a1)
{
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100802024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E82588;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8(a2 + 48, a1 + 48);
}

void sub_1008020A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008020CC(uint64_t a1)
{
  sub_10000FF50(a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_100802124(void *a1)
{
  sub_10000FF50((a1 + 6));
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(a1);
}

void sub_100802178(void *a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v11 = 0;
  rest::GetIdsServerBagResult::GetIdsServerBagResult(&v11);
  rest::read_rest_value(&v11, &object, v3);
  v4 = a1[5];
  if (v4)
  {
    v5 = v11;
    v6 = a1[3];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = *(v6 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Check PushEnabled called", buf, 2u);
        }

        sub_10000FFD0((a1 + 6), v5 == 0);
      }

      sub_100004A34(v8);
    }
  }

  xpc_release(object);
}

void sub_100802254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  sub_100004A34(v9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_100802284(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_1008022D0(void *a1, uint64_t *a2, uint64_t a3)
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
    operator new();
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

void sub_100802554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100802568(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100802568(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007676EC(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_1008025B4(void *a1, uint64_t *a2)
{
  result = sub_10031B7D4(a1, a2);
  if (result)
  {
    sub_100120C90(a1, result, v4);
    sub_100802568(v4);
    return 1;
  }

  return result;
}

void sub_100802600(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 8);
    *buf = 67109120;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received APNS connection status: %u", buf, 8u);
  }

  v5 = *(v1 + 8);
  *(v2 + 224) = v5;
  if (v5 == 1)
  {
    WebPushControllerImpl::dumpState_sync(v2);
    if (*(v2 + 216) == 1)
    {
      WebPushControllerImpl::enableTopicsFromListeners_sync(v2);
    }

    else
    {
      WebPushControllerImpl::ignoreAllTopics_sync(v2);
    }

    v6 = *(v2 + 88);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(v2 + 80);
        if (v9)
        {
          (*(*v9 + 16))(v9, *(v1 + 8));
        }

        sub_100004A34(v8);
      }
    }
  }

  operator delete();
}

uint64_t *sub_100802788(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = (v1 + 8);
  v3 = *v1;
  v4 = sub_10031B7D4((*v1 + 144), (v1 + 8));
  v5 = v4;
  if (v4)
  {
    v6 = v4[6];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v5[5];
        if (v8)
        {
          object = 0;
          (*(*v8 + 16))(__p, v8);
          sub_100010024(&v27, (v1 + 32));
          WebPushControllerImpl::processMessagePayload(v3, &v27, &object);
          sub_10001021C(&v27);
          if (SBYTE7(v33) < 0)
          {
            operator delete(__p[0]);
          }

          v49 = 0;
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
          __src = 0u;
          v33 = 0u;
          v34 = 0u;
          *__p = 0u;
          sub_10000C320(__p);
          if (object)
          {
            sub_100D96E64(&object, __dst);
          }

          else
          {
            sub_10000501C(__dst, "empty");
          }

          if ((v26 & 0x80u) == 0)
          {
            v11 = __dst;
          }

          else
          {
            v11 = __dst[0];
          }

          if ((v26 & 0x80u) == 0)
          {
            v12 = v26;
          }

          else
          {
            v12 = __dst[1];
          }

          v13 = sub_10000C030(&v33, v11, v12);
          std::ios_base::getloc((v13 + *(*v13 - 24)));
          v14 = std::locale::use_facet(v29, &std::ctype<char>::id);
          (v14->__vftable[2].~facet_0)(v14, 10);
          std::locale::~locale(v29);
          std::ostream::put();
          std::ostream::flush();
          if (v26 < 0)
          {
            operator delete(__dst[0]);
          }

          v15 = *(v3 + 40);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_45;
          }

          v16 = (v1 + 8);
          if (*(v1 + 31) < 0)
          {
            v16 = *v2;
          }

          if ((BYTE8(v39) & 0x10) != 0)
          {
            v18 = v39;
            if (v39 < *(&__src + 1))
            {
              *&v39 = *(&__src + 1);
              v18 = *(&__src + 1);
            }

            v19 = __src;
          }

          else
          {
            if ((BYTE8(v39) & 8) == 0)
            {
              v17 = 0;
              v26 = 0;
LABEL_41:
              *(__dst + v17) = 0;
              v20 = __dst;
              if ((v26 & 0x80u) != 0)
              {
                v20 = __dst[0];
              }

              *v29 = 136446466;
              *&v29[4] = v16;
              v30 = 2082;
              v31 = v20;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Decrypted APNS webpush payload for %{public}s: %{public}s", v29, 0x16u);
              if (v26 < 0)
              {
                operator delete(__dst[0]);
              }

LABEL_45:
              *&v33 = v21;
              if (SHIBYTE(v38) < 0)
              {
                operator delete(*(&v37 + 1));
              }

              std::locale::~locale(&v34);
              std::iostream::~basic_iostream();
              std::ios::~ios();
              __p[0] = object;
              if (object)
              {
                xpc_retain(object);
              }

              else
              {
                __p[0] = xpc_null_create();
              }

              (*(*v8 + 24))(v8, v2, __p);
              xpc_release(__p[0]);
              __p[0] = 0;
              xpc_release(object);
LABEL_51:
              sub_100004A34(v7);
              goto LABEL_52;
            }

            v19 = *(&v34 + 1);
            v18 = *(&v35 + 1);
          }

          v17 = v18 - v19;
          if ((v18 - v19) >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_1000A2378();
          }

          if (v17 >= 0x17)
          {
            operator new();
          }

          v26 = v18 - v19;
          if (v17)
          {
            memmove(__dst, v19, v17);
          }

          goto LABEL_41;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = *(v3 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (v1 + 8);
      if (*(v1 + 31) < 0)
      {
        v10 = *v2;
      }

      LODWORD(__p[0]) = 136446210;
      *(__p + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Removing expired delegate for %{public}s", __p, 0xCu);
    }

    sub_1008025B4((v3 + 144), (v1 + 8));
    WebPushControllerImpl::enableTopicsFromListeners_sync(v3);
    if (v7)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  sub_10043A15C(&v24);
  return sub_1000049E0(&v23);
}

void sub_100802D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, xpc_object_t object, std::locale a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t __p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  std::ios::~ios();
  xpc_release(object);
  sub_100004A34(v43);
  sub_10043A15C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100802E04(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v3 = (v1 + 8);
  v2 = *v1;
  v4 = sub_10031B7D4((*v1 + 144), (v1 + 8));
  v5 = v4;
  if (v4)
  {
    v6 = v4[6];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v5[5];
        if (v8)
        {
          v9 = *(v2 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v1 + 8;
            if (*(v1 + 31) < 0)
            {
              v10 = *v3;
            }

            *buf = 136446210;
            v18 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received APNS webpush URL update for %{public}s", buf, 0xCu);
          }

          (*(*v8 + 32))(v8, v1 + 8, v1 + 32);
          v11 = *(v2 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Force topic repopulation after URLToken generation to avoid missed web-pushes", buf, 2u);
          }

          [*(v2 + 136) _setEnabledTopics:{0, v15, v16}];
          WebPushControllerImpl::enableTopicsFromListeners_sync(v2);
LABEL_18:
          sub_100004A34(v7);
          goto LABEL_19;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v12 = *(v2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v1 + 8;
      if (*(v1 + 31) < 0)
      {
        v13 = *v3;
      }

      *buf = 136446210;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Removing expired delegate for %{public}s", buf, 0xCu);
    }

    sub_1008025B4((v2 + 144), (v1 + 8));
    WebPushControllerImpl::enableTopicsFromListeners_sync(v2);
    if (v7)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  sub_10036FBEC(&v16);
  return sub_1000049E0(&v15);
}

void sub_10080300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100803044(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = (v1 + 8);
  v3 = *v1;
  v4 = sub_10031B7D4((*v1 + 144), (v1 + 8));
  v5 = v4;
  if (v4)
  {
    v6 = v4[6];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v5[5];
        if (v8)
        {
          v9 = *(v3 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v1 + 8;
            if (*(v1 + 31) < 0)
            {
              v10 = *v2;
            }

            *buf = 136446210;
            v17 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received APNS webpush URL error for %{public}s", buf, 0xCu);
          }

          (*(*v8 + 40))(v8, v1 + 8, v1 + 32, *(v1 + 56));
LABEL_16:
          sub_100004A34(v7);
          goto LABEL_17;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = *(v3 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v1 + 8;
      if (*(v1 + 31) < 0)
      {
        v12 = *v2;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Removing expired delegate for %{public}s", buf, 0xCu);
    }

    sub_1008025B4((v3 + 144), (v1 + 8));
    WebPushControllerImpl::enableTopicsFromListeners_sync(v3);
    if (v7)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  sub_100803238(&v15);
  return sub_1000049E0(&v14);
}

void sub_100803200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100803238(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100803238(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void sub_1008032A0(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Public token updated. This does not affect active URL tokens. No action required", buf, 2u);
  }

  operator delete();
}

void sub_10080332C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100803354(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_1008033FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100803438(uint64_t a1)
{
  sub_100803734(a1);
  sub_100004AA0(&v6, (a1 + 8));
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1174405120;
  v4[2] = sub_100803804;
  v4[3] = &unk_101E82638;
  v4[4] = a1;
  v4[5] = v3;
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0(524481, v4);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100803518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080353C(uint64_t a1, NSObject **a2)
{
  ctu::OsLogContext::OsLogContext(&v5, kCtLoggingSystemName, "xpc.tracker");
  sub_1008035F0((a1 + 8), a2, &v5);
  ctu::OsLogContext::~OsLogContext(&v5);
  *a1 = off_101E82608;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 136) = 1065353216;
  return a1;
}

void *sub_1008035F0(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100803658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_10080367C(uint64_t a1)
{
  *a1 = off_101E82608;
  sub_100804838(a1 + 104);
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 48);
  sub_10001E200(&v4);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1008036FC(uint64_t a1)
{
  sub_10080367C(a1);

  operator delete();
}

void sub_100803734(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 97) = v2;
  v3 = *(a1 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      return;
    }

    goto LABEL_5;
  }

  v4[0] = 67109376;
  v4[1] = v2;
  v5 = 1024;
  v6 = v2;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Tracker gathering stats = %d (queriable=%d)", v4, 0xEu);
  if ((*(a1 + 97) & 1) == 0)
  {
LABEL_5:
    sub_100804924(a1 + 104);
  }
}

void sub_100803804(void *a1)
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
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_100803940;
        v7[3] = &unk_101E82618;
        v7[4] = v3;
        v10 = 0;
        v11 = 0;
        sub_100004AA0(&v10, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1008048E8;
        block[3] = &unk_101E827E0;
        block[5] = v10;
        v9 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100803948(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100804120;
  v7[3] = &unk_101E82670;
  v7[4] = &v8;
  v7[5] = a1;
  v2 = sub_10001BEF4(0x800C1, v7);
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(v2);
    v5 = CSIBOOLAsString(*(a1 + 97));
    v6 = v9[3];
    *buf = 136315650;
    v13 = v4;
    v14 = 2080;
    v15 = v5;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Full report submitted=%s; gathered=%s; sent=%zu", buf, 0x20u);
  }

  sub_100804924(a1 + 104);
  _Block_object_dispose(&v8, 8);
}

void sub_100803AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100803AC4(uint64_t result, uint64_t a2)
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

void sub_100803AE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100803AF0(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v3 = *a2 + 4;
    do
    {
      v4 = *(v3 - 4) == 524481;
      v5 = *(v3 - 4) == 524481 || v3 == v2;
      v3 += 4;
    }

    while (!v5);
  }

  *(a1 + 96) = v4;
  sub_100803734(a1);
}

void sub_100803B30(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  if (v3 != v2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v36.__r_.__value_.__r.__words[0] = ",";
      v36.__r_.__value_.__l.__size_ = 1;
      sub_100804980(v3, &__p);
      v37 = __p;
      for (i = v3 + 32; i != v2; i += 32)
      {
        sub_100074CFC(&v36.__r_.__value_.__l.__data_, &__p);
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

        std::string::append(&v37, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100804980(i, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &__p;
        }

        else
        {
          v8 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v9 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v37, v8, v9);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v10 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v37.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Pending requests: %s", &__p, 0xCu);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }
  }

  v11 = *(a1 + 80);
  v12 = *(a1 + 72);
  if (v12 != v11)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v36.__r_.__value_.__r.__words[0] = ",";
      v36.__r_.__value_.__l.__size_ = 1;
      memset(&v37, 0, sizeof(v37));
      sub_100804ABC(v12, &__p);
      v37 = __p;
      for (j = v12 + 2; j != v11; j += 2)
      {
        sub_100074CFC(&v36.__r_.__value_.__l.__data_, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &__p;
        }

        else
        {
          v15 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v16 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v37, v15, v16);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100804ABC(j, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &__p;
        }

        else
        {
          v17 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v37, v17, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v19 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v37.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Pending notifications: %s", &__p, 0xCu);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }
  }

  v20 = *(a1 + 128);
  v21 = *(a1 + 40);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Stats:", &__p, 2u);
    }

    for (k = *(a1 + 120); k; k = *k)
    {
      v24 = *(a1 + 40);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = k + 2;
        if (*(k + 39) < 0)
        {
          v25 = *v25;
        }

        sub_1000D1184(&v36, k[5], k[6], ",", 1uLL);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v36;
        }

        else
        {
          v26 = v36.__r_.__value_.__r.__words[0];
        }

        v28 = k[8];
        v27 = k[9];
        v38[0] = ",";
        v38[1] = 1;
        memset(&v35, 0, sizeof(v35));
        if (v28 != v27)
        {
          std::to_string(&v37, *v28);
          v35 = v37;
          while (++v28 != v27)
          {
            sub_100074CFC(v38, &v37);
            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v37;
            }

            else
            {
              v29 = v37.__r_.__value_.__r.__words[0];
            }

            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v30 = v37.__r_.__value_.__l.__size_;
            }

            std::string::append(&v35, v29, v30);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }

            std::to_string(&v37, *v28);
            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v37;
            }

            else
            {
              v31 = v37.__r_.__value_.__r.__words[0];
            }

            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v37.__r_.__value_.__l.__size_;
            }

            std::string::append(&v35, v31, v32);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }
          }
        }

        v33 = &v35;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = v35.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__r_.__value_.__r.__words + 4) = v25;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v26;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
        v40 = v33;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I  - %s: requests=[%s], events=[%s]", &__p, 0x20u);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else if (v22)
  {
    if (*(a1 + 97))
    {
      v34 = "empty";
    }

    else
    {
      v34 = "disabled";
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Stats: %s", &__p, 0xCu);
  }
}

void sub_10080407C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100804120(std::string *result, int *a2)
{
  v2 = *(result[1].__r_.__value_.__r.__words[2] + 120);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = v2[5];
      v6 = v2[6];
      while (v5 != v6)
      {
        ++*(*(v4[1].__r_.__value_.__l.__size_ + 8) + 24);
        v7 = a2[7];
        v8 = a2[6];
        if (v8 >= v7)
        {
          if (v7 == a2[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v7 + 1);
            v7 = a2[7];
          }

          a2[7] = v7 + 1;
          sub_10001C830();
        }

        v9 = *(a2 + 2);
        a2[6] = v8 + 1;
        v10 = *(v9 + 8 * v8);
        *(v10 + 44) |= 1u;
        v11 = *(v10 + 8);
        if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v11, (v2 + 2));
        *(v10 + 44) |= 4u;
        v12 = *(v10 + 24);
        if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = std::string::operator=(v12, v5++);
      }

      v13 = v2[8];
      v14 = v2[9];
      while (v13 != v14)
      {
        ++*(*(v4[1].__r_.__value_.__l.__size_ + 8) + 24);
        v15 = a2[7];
        v16 = a2[6];
        if (v16 >= v15)
        {
          if (v15 == a2[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v15 + 1);
            v15 = a2[7];
          }

          a2[7] = v15 + 1;
          sub_10001C830();
        }

        v17 = *(a2 + 2);
        a2[6] = v16 + 1;
        v18 = *(v17 + 8 * v16);
        *(v18 + 44) |= 1u;
        v19 = *(v18 + 8);
        if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v19, (v2 + 2));
        v20 = sub_10000FD6C(*v13);
        *(v18 + 44) |= 8u;
        v21 = *(v18 + 32);
        if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = sub_100016890(v21, v20);
        ++v13;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void **sub_100804394(const void ***a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
    v5 = a1[1];
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a1);
    do
    {
      v7 = &v5[3 * (v6 >> 1)];
      v8 = sub_1000068BC(v7, a2);
      if (v8 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v8 < 0)
      {
        v5 = (v7 + 3);
      }
    }

    while (v6);
    v4 = a1[1];
  }

  if (v4 == v5)
  {
    goto LABEL_25;
  }

  v9 = *(v5 + 23);
  if (v9 >= 0)
  {
    v10 = *(v5 + 23);
  }

  else
  {
    v10 = v5[1];
  }

  v11 = *(a2 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (v10 != v11 || (v9 >= 0 ? (v13 = v5) : (v13 = *v5), v12 >= 0 ? (v14 = a2) : (v14 = *a2), result = memcmp(v13, v14, v10), result))
  {
LABEL_25:

    return sub_100804EB0(a1, v5, a2);
  }

  return result;
}

char *sub_1008044C0(char *result, int *a2)
{
  v3 = *result;
  v4 = *(result + 1);
  if (v4 == *result)
  {
    v3 = *(result + 1);
  }

  else
  {
    v5 = &v4[-*result] >> 2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[4 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 4;
      v5 += ~(v5 >> 1);
      if (v9 < *a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  if (v4 == v3 || *v3 != *a2)
  {
    return sub_1008055D0(result, v3, a2);
  }

  return result;
}

char *sub_100804528(uint64_t a1, _DWORD *a2, char **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004BE98C(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), *a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_100804620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100804634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100804738(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10080480C);
  __cxa_rethrow();
}

void sub_100804778(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1008047CC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080480C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100804838(uint64_t a1)
{
  sub_100804874(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100804874(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = *(v2 + 8);
      if (v4)
      {
        *(v2 + 9) = v4;
        operator delete(v4);
      }

      v5 = (v2 + 40);
      sub_1000087B4(&v5);
      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1008048F8(uint64_t result, uint64_t a2)
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

void sub_100804914(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100804924(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100804874(a1, *(a1 + 16));
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

void sub_100804980(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&__p, *a1);
  sub_100804A5C(&v12, ":", &__p);
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  v10 = std::string::append(&v12, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100804A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100804A5C@<Q0>(std::string *__return_ptr a1@<X8>, char *__s@<X1>, std::string *a3@<X0>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a3, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_100804ABC(int *a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v9, *a1);
  v4 = std::string::append(&v9, ":", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = sub_10000FD6C(a1[1]);
  v7 = strlen(v6);
  v8 = std::string::append(&v10, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_100804B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100804BAC(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_1000D3314(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100022D3C(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_100804E3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 64);
    if (v3)
    {
      *(a2 + 72) = v3;
      operator delete(v3);
    }

    v4 = (a2 + 40);
    sub_1000087B4(&v4);
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void **sub_100804EB0(void *a1, void **a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v10 = a2 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v25 = a1;
    if (v13)
    {
      sub_100005348(a1, v13);
    }

    *&v23 = 0;
    *(&v23 + 1) = 8 * (v10 >> 3);
    v24 = *(&v23 + 1);
    sub_1008050A4(&v23, a3);
    v14 = *(&v23 + 1);
    memcpy(v24, v4, a1[1] - v4);
    v15 = *a1;
    v16 = *(&v23 + 1);
    *&v24 = v24 + a1[1] - v4;
    a1[1] = v4;
    v17 = v4 - v15;
    v18 = (v16 - (v4 - v15));
    memcpy(v18, v15, v17);
    v19 = *a1;
    *a1 = v18;
    v20 = a1[2];
    *(a1 + 1) = v24;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    *&v23 = v19;
    *(&v23 + 1) = v19;
    sub_1000054E0(&v23);
    return v14;
  }

  else if (a2 == v6)
  {
    sub_10016B2AC(a1, a3);
  }

  else
  {
    v23 = 0uLL;
    *&v24 = 0;
    *(&v24 + 1) = a1;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v23, *a3, *(a3 + 8));
      v6 = a1[1];
    }

    else
    {
      v23 = *a3;
      *&v24 = *(a3 + 16);
    }

    sub_1001E2D70(a1, v4, v6, (v4 + 3));
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v21 = v23;
    v4[2] = v24;
    *v4 = v21;
  }

  return v4;
}

void sub_100805078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_1008050A4(unint64_t *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = result[4];
      v15[4] = v3[4];
      sub_100005348(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    result = sub_10080520C(v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    v3[1] += 8 * v7;
    v3[2] = v8;
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(v4, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v14;
  }

  v3[2] += 24;
  return result;
}

__int128 *sub_10080520C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

const void **sub_100805280(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000D3314(a1, a2);
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
    sub_100805504();
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

  if (!sub_100022D3C(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1008054E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_100804E3C(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008055B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100804E3C(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1008055D0(void *a1, char *__src, int *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = (&v5[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_1000CE3D4();
    }

    v12 = &__src[-v10];
    v13 = v6 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      sub_100016740(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    sub_10080578C(&v24, a3);
    v16 = v25;
    memcpy(v26, v3, a1[1] - v3);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v3;
    a1[1] = v3;
    v19 = v3 - v17;
    v20 = (v18 - (v3 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else
  {
    v7 = *a3;
    if (__src == v5)
    {
      *v5 = v7;
      a1[1] = v5 + 4;
    }

    else
    {
      v8 = __src + 4;
      if (v5 < 4)
      {
        v9 = a1[1];
      }

      else
      {
        *v5 = *(v5 - 1);
        v9 = v5 + 4;
      }

      a1[1] = v9;
      if (v5 != v8)
      {
        memmove(__src + 4, __src, v5 - v8);
      }

      *v3 = v7;
    }
  }

  return v3;
}

void sub_100805754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080578C(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      sub_100016740(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 4);
}

void *sub_10080588C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject **a6, char *a7)
{
  v13 = *a6;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  sub_10073BF14(a1, &off_101E83220, a2, a3, a4, a5, &object, a7, 2000);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E82848;
  a1[3] = off_101E82D68;
  return a1;
}

void sub_100805980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  PersonalitySpecific::~PersonalitySpecific(v10);
  _Unwind_Resume(a1);
}

void sub_1008059A0(uint64_t a1)
{
  sub_10073EB3C(a1, &off_101E83220);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1008059D0(uint64_t a1)
{
  sub_10073EB3C(a1 - 24, &off_101E83220);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_100805A04(uint64_t a1)
{
  sub_10073EB3C(a1, &off_101E83220);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void sub_100805A5C(Registry **a1, int a2)
{
  if (!a2)
  {
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
    v14 = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
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
LABEL_12:
          if ((v12 & 1) == 0)
          {
            sub_100004A34(v10);
          }

          return;
        }

LABEL_11:
        v13 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 1024))(v11, v13, 1);
        goto LABEL_12;
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
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void sub_100805B88(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100805BA0(Registry **a1, int a2)
{
  if (!a2)
  {
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
    v15 = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
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
LABEL_12:
          if ((v12 & 1) == 0)
          {
            sub_100004A34(v10);
          }

          return;
        }

LABEL_11:
        v13 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 1024))(v11, v13, 0);
        v14 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 192))(v11, v14, 27, 0);
        goto LABEL_12;
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
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void sub_100805D08(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100805D20(Registry **a1, int a2)
{
  if (!a2)
  {
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
    v15 = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
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
LABEL_12:
          if ((v12 & 1) == 0)
          {
            sub_100004A34(v10);
          }

          return;
        }

LABEL_11:
        v13 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 1024))(v11, v13, 0);
        v14 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 192))(v11, v14, 28, 0);
        goto LABEL_12;
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
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void sub_100805E88(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100805EB8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(result + 24))
    {

      return sub_100805F94(result, a2);
    }

    else
    {
      (*(*a2 + 24))(a2);
      (*(*a2 + 40))(a2);
      v3 = *(*a2 + 8);

      return v3(a2);
    }
  }

  return result;
}

uint64_t sub_100805F94(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1008060C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007F3D5C(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10080611C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1008061B4(uint64_t a1, uint64_t a2)
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

const char *sub_100806234(char *a1)
{
  v16 = a1;
  if (!a1)
  {
    return "";
  }

  v2 = sub_10080636C(a1);
  v3 = sub_100806458(v2, &v16);
  if (sub_10080636C(v3) + 8 != v3)
  {
    return v3[5];
  }

  v5 = strncmp("com.apple.", a1, 0xAuLL);
  if (!v5)
  {
    v15 = a1 + 10;
    v14 = sub_10080636C(v5);
    v3 = sub_100806458(v14, &v15);
    v5 = sub_10080636C(v3);
    if ((v5 + 8) != v3)
    {
      return v3[5];
    }
  }

  v6 = sub_10080636C(v5);
  v7 = v6 + 1;
  v8 = *v6;
  if (*v6 == v6 + 1)
  {
    return "";
  }

  v9 = strlen(a1);
  v4 = "";
  while (strncmp(v8[4], a1, v9))
  {
    v10 = v8[1];
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
        v11 = v8[2];
        v12 = *v11 == v8;
        v8 = v11;
      }

      while (!v12);
    }

    v8 = v11;
    if (v11 == v7)
    {
      return v4;
    }
  }

  return v8[5];
}

void *sub_10080636C(uint64_t a1)
{
  __chkstk_darwin(a1);
  if ((atomic_load_explicit(&qword_101FBAC20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAC20))
  {
    memcpy(__dst, off_101E847F8, sizeof(__dst));
    v2[0] = __dst;
    v2[1] = 396;
    sub_1008066B8(&unk_101FBAC08, v2);
    __cxa_guard_release(&qword_101FBAC20);
  }

  return &unk_101FBAC08;
}

uint64_t sub_100806458(uint64_t a1, char **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1008068E4((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_100806850(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_1008064DC(void ***a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    v3 = a1[1];
  }

  if (!v3 || ((v5 = sub_1008065C4(), *(a1 + 23) >= 0) ? (v6 = a1) : (v6 = *a1), __p[0] = v6, v7 = sub_100806458(v5, __p), sub_1008065C4() + 8 == v7))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v8 = sub_100806234(v7[5]);
    sub_10000501C(__p, v8);
    v9 = HIBYTE(v12);
    v10 = SHIBYTE(v12);
    if (v12 < 0)
    {
      v9 = __p[1];
    }

    if (v9)
    {
      *a2 = *__p;
      *(a2 + 16) = v12;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void *sub_1008065C4()
{
  if ((atomic_load_explicit(&qword_101FBAC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAC40))
  {
    v2[0] = "com.apple.iCloudDriveApp";
    v2[1] = "bird";
    v2[2] = "com.apple.CTCarrierSpaceAuth";
    v2[3] = "CommCenter";
    v2[4] = "com.apple.datausage.telephony.ims";
    v2[5] = "CommCenter";
    v1[0] = v2;
    v1[1] = 3;
    sub_1008066B8(&unk_101FBAC28, v1);
    __cxa_guard_release(&qword_101FBAC40);
  }

  return &unk_101FBAC28;
}

uint64_t **sub_1008066B8(uint64_t **a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  a1[1] = 0;
  v5 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (v3)
  {
    v6 = &v4[2 * v3];
    do
    {
      v7 = a1[1];
      if (*a1 == v5)
      {
        v9 = v5;
      }

      else
      {
        v8 = v5;
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = v7[1];
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (v10);
        }

        v11 = sub_1008068E4(v9 + 4, v4);
        v7 = *v5;
        if (!v11)
        {
          if (!v7)
          {
            goto LABEL_21;
          }

          v12 = v5;
          while (1)
          {
            while (1)
            {
              v13 = v7;
              if (!sub_100806850(v4, v7 + 4))
              {
                break;
              }

              v7 = *v13;
              v12 = v13;
              if (!*v13)
              {
                goto LABEL_21;
              }
            }

            if (!sub_1008068E4(v13 + 4, v4))
            {
              goto LABEL_20;
            }

            v12 = v13 + 1;
            v7 = v13[1];
            if (!v7)
            {
              goto LABEL_21;
            }
          }
        }
      }

      if (!v7)
      {
        goto LABEL_21;
      }

      v12 = v9 + 1;
LABEL_20:
      if (!*v12)
      {
LABEL_21:
        operator new();
      }

      v4 += 2;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t sub_100806850(char **a1, char **a2)
{
  sub_10000501C(v7, *a1);
  sub_10000501C(__p, *a2);
  v3 = sub_1000068BC(v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return (v3 >> 7) & 1;
}

void sub_1008068C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008068E4(char **a1, char **a2)
{
  sub_10000501C(v7, *a1);
  sub_10000501C(__p, *a2);
  v3 = sub_1000068BC(v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return (v3 >> 7) & 1;
}

void sub_10080695C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100806978(uint64_t a1)
{
  *a1 = &off_101E860C8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_1008069AC(PB::Base *this)
{
  *this = &off_101E860C8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  PB::Base::~Base(this);
}

void sub_100806B50(PB::Base *a1)
{
  sub_1008069AC(a1);

  operator delete();
}

uint64_t sub_100806B88(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "genericTransferPayload");
  }

  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "profileStatusInfo");
  }

  v7 = a1[3];
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "purchasePlanInfo");
  }

  v8 = a1[4];
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "transferConsent");
  }

  v9 = a1[5];
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "transferProfile");
  }

  v10 = a1[6];
  if (v10)
  {
    (*(*v10 + 32))(v10, this, "updateSubscriptionInfo");
  }

  v11 = a1[7];
  if (v11)
  {
    (*(*v11 + 32))(v11, this, "vinylInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100806D54(void *a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v6 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_45;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v16 |= (v21 & 0x7F) << v14;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v18;
          ++v19;
          ++v20;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_22;
          }
        }

        v9 = (v4 & 1) != 0 ? 0 : v16;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v22 = v9 >> 3;
      if ((v9 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            operator new();
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          operator new();
        }

        if (v22 == 7)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 4)
        {
          operator new();
        }

        if (v22 == 5)
        {
          operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v9 & 7, 0) & 1) == 0)
      {
        v24 = 0;
        return v24 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_45:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_1008071E4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4, 1u);
  }

  v5 = v3[5];
  if (v5)
  {
    result = PB::Writer::writeSubmessage(this, v5, 2u);
  }

  v6 = v3[6];
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6, 3u);
  }

  v7 = v3[2];
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7, 4u);
  }

  v8 = v3[3];
  if (v8)
  {
    result = PB::Writer::writeSubmessage(this, v8, 5u);
  }

  v9 = v3[4];
  if (v9)
  {
    result = PB::Writer::writeSubmessage(this, v9, 6u);
  }

  v10 = v3[1];
  if (v10)
  {

    return PB::Writer::writeSubmessage(this, v10, 7u);
  }

  return result;
}

void *sub_1008072AC(void *result)
{
  if (!result[7])
  {
    operator new();
  }

  return result;
}

void *sub_10080733C(void *result)
{
  if (!result[5])
  {
    operator new();
  }

  return result;
}

void *sub_1008073CC(void *result)
{
  if (!result[6])
  {
    operator new();
  }

  return result;
}

void *sub_10080745C(void *result)
{
  if (!result[2])
  {
    operator new();
  }

  return result;
}

void *sub_1008074EC(void *result)
{
  if (!result[3])
  {
    operator new();
  }

  return result;
}

void *sub_10080757C(void *result)
{
  if (!result[4])
  {
    operator new();
  }

  return result;
}

void *sub_10080760C(void *result)
{
  if (!result[1])
  {
    operator new();
  }

  return result;
}

void sub_10080769C(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v23 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v23 = v5;
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
  v23 = v6;
LABEL_9:
  xpc_release(v5);
  v21 = xpc_BOOL_create(*a1);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "trusted";
  sub_10000F688(&v19, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  if (*(a1 + 31) >= 0)
  {
    v7 = (a1 + 8);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "name";
  sub_10000F688(&v19, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  if (*(a1 + 55) >= 0)
  {
    v8 = (a1 + 32);
  }

  else
  {
    v8 = *(a1 + 32);
  }

  v15 = xpc_string_create(v8);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "model";
  sub_10000F688(&v19, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  if (*(a1 + 79) >= 0)
  {
    v9 = (a1 + 56);
  }

  else
  {
    v9 = *(a1 + 56);
  }

  v13 = xpc_string_create(v9);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "serial_number";
  sub_10000F688(&v19, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_double_create(*(a1 + 80));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "last_updated_date";
  sub_10000F688(&v19, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v23;
  *a2 = v23;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v23);
}

void sub_100807990(uint64_t a1, void **a2)
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
    v15 = "trusted";
    sub_100006354(&__p, v12);
    *a1 = xpc::dyn_cast_or_default(v12, 0, v5);
    xpc_release(v12[0]);
    p_object = &object;
    v9 = "name";
    sub_100006354(&p_object, &v10);
    __p = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *v12;
    *(a1 + 24) = v13;
    xpc_release(v10);
    p_object = &object;
    v9 = "model";
    sub_100006354(&p_object, &v10);
    __p = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = *v12;
    *(a1 + 48) = v13;
    xpc_release(v10);
    p_object = &object;
    v9 = "serial_number";
    sub_100006354(&p_object, &v10);
    __p = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *v12;
    *(a1 + 72) = v13;
    xpc_release(v10);
    __p = &object;
    v15 = "last_updated_date";
    sub_100006354(&__p, v12);
    xpc::dyn_cast_or_default(v12, v6, 0.0);
    *(a1 + 80) = v7;
    xpc_release(v12[0]);
  }

  else
  {
    *a1 = 0;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
  }

  xpc_release(object);
}

void sub_100807C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_100807CF4(uint64_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v31 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v31 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v31 = v5;
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
  v31 = v6;
LABEL_9:
  xpc_release(v5);
  if (a1[1] != *a1)
  {
    v7 = xpc_array_create(0, 0);
    if (v7 || (v7 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v7) == &_xpc_type_array)
      {
        xpc_retain(v7);
        v8 = v7;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      v7 = 0;
    }

    xpc_release(v7);
    v9 = *a1;
    v10 = a1[1];
    while (v9 != v10)
    {
      if (*(v9 + 23) >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v9;
      }

      v12 = xpc_string_create(v11);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_array_append_value(v8, v12);
      xpc_release(v12);
      v9 += 24;
    }

    v29 = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v29 = xpc_null_create();
    }

    v27 = &v31;
    v28 = "imeis";
    sub_1000609CC(&v27, &v29, &v30);
    xpc_release(v30);
    v30 = 0;
    xpc_release(v29);
    v29 = 0;
    xpc_release(v8);
  }

  v25 = xpc_BOOL_create(*(a1 + 24));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "trusted";
  sub_10000F688(&v27, &v25, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v25 = 0;
  if (*(a1 + 55) >= 0)
  {
    v13 = (a1 + 4);
  }

  else
  {
    v13 = a1[4];
  }

  v23 = xpc_string_create(v13);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "name";
  sub_10000F688(&v27, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  if (*(a1 + 79) >= 0)
  {
    v14 = (a1 + 7);
  }

  else
  {
    v14 = a1[7];
  }

  v21 = xpc_string_create(v14);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "model";
  sub_10000F688(&v27, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  if (*(a1 + 103) >= 0)
  {
    v15 = (a1 + 10);
  }

  else
  {
    v15 = a1[10];
  }

  v19 = xpc_string_create(v15);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "serial_number";
  sub_10000F688(&v27, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v17 = xpc_double_create(*(a1 + 13));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "last_updated_date";
  sub_10000F688(&v27, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v31;
  *a2 = v31;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v31);
}

void sub_100808138(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  xpc_release(*(v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100808168(uint64_t a1, xpc_object_t *a2)
{
  v40 = *a2;
  if (v40 && xpc_get_type(v40) == &_xpc_type_dictionary)
  {
    xpc_retain(v40);
    v3 = v40;
  }

  else
  {
    v3 = xpc_null_create();
    v40 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    sub_100008764(a1);
    object = 0;
    __p = &v40;
    v33 = "imeis";
    sub_100015504(&__p, &object);
    __p = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      __p = xpc_null_create();
    }

    sub_100008EA4(&v29, &__p, 0);
    xpc_release(__p);
    __p = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      __p = xpc_null_create();
    }

    if (xpc_get_type(object) == &_xpc_type_array)
    {
      count = xpc_array_get_count(object);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v28, &__p, count);
    xpc_release(__p);
    for (i = v30; i != v28[1] || v29 != v28[0]; i = ++v30)
    {
      v27[0] = &v29;
      v27[1] = i;
      *(v42 + 7) = 0;
      v42[0] = 0;
      sub_100008EF0(v27, &v26);
      __p = 0;
      v33 = 0;
      v34 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }

      v7 = *v41;
      v42[0] = *&v41[8];
      *(v42 + 7) = *&v41[15];
      v8 = v41[23];
      xpc_release(v26);
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v9 >= v10)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000CE3D4();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        *&v36 = a1;
        if (v16)
        {
          sub_100005348(a1, v16);
        }

        v17 = 24 * v13;
        v18 = v42[0];
        *v17 = v7;
        *(v17 + 8) = v18;
        *(v17 + 15) = *(v42 + 7);
        *(v17 + 23) = v8;
        v12 = 24 * v13 + 24;
        v19 = *(a1 + 8) - *a1;
        v20 = v17 - v19;
        memcpy((v17 - v19), *a1, v19);
        v21 = *a1;
        *a1 = v20;
        *(a1 + 8) = v12;
        v22 = *(a1 + 16);
        *(a1 + 16) = 0;
        v34 = v21;
        v35 = v22;
        __p = v21;
        v33 = v21;
        sub_1000054E0(&__p);
      }

      else
      {
        v11 = v42[0];
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 15) = *(v42 + 7);
        *(v9 + 23) = v8;
        v12 = v9 + 24;
      }

      *(a1 + 8) = v12;
    }

    xpc_release(v28[0]);
    xpc_release(v29);
    __p = &v40;
    v33 = "trusted";
    sub_100006354(&__p, v41);
    *(a1 + 24) = xpc::dyn_cast_or_default(v41, 0, v23);
    xpc_release(*v41);
    v29 = &v40;
    v30 = "name";
    sub_100006354(&v29, v28);
    __p = 0;
    v33 = 0;
    v34 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = *v41;
    *(a1 + 48) = *&v41[16];
    xpc_release(v28[0]);
    v29 = &v40;
    v30 = "model";
    sub_100006354(&v29, v28);
    __p = 0;
    v33 = 0;
    v34 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *v41;
    *(a1 + 72) = *&v41[16];
    xpc_release(v28[0]);
    v29 = &v40;
    v30 = "serial_number";
    sub_100006354(&v29, v28);
    __p = 0;
    v33 = 0;
    v34 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 80) = *v41;
    *(a1 + 96) = *&v41[16];
    xpc_release(v28[0]);
    __p = &v40;
    v33 = "last_updated_date";
    sub_100006354(&__p, v41);
    xpc::dyn_cast_or_default(v41, v24, 0.0);
    *(a1 + 104) = v25;
    xpc_release(*v41);
    xpc_release(object);
  }

  else
  {
    LOBYTE(v35) = 0;
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    v38 = 0u;
    v39 = 0u;
    sub_100071A6C(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v33 = 0;
    v34 = 0;
    __p = 0;
    *(a1 + 24) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    BYTE7(v37[0]) = 0;
    LOBYTE(v36) = 0;
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *(v37 + 8);
    *(a1 + 72) = *(&v37[1] + 1);
    HIBYTE(v37[1]) = 0;
    BYTE8(v37[0]) = 0;
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 80) = v38;
    v4 = v39;
    BYTE7(v39) = 0;
    LOBYTE(v38) = 0;
    *(a1 + 96) = v4;
    *(a1 + 104) = 0;
    *v41 = &__p;
    sub_1000087B4(v41);
  }

  xpc_release(v40);
}

void sub_100808700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

BOOL sub_100808894(uint64_t a1)
{
  if (*(a1 + 8) == *a1)
  {
    return 0;
  }

  v1 = *(a1 + 79);
  if (v1 < 0)
  {
    v2 = *(a1 + 56);
    v1 = *(a1 + 64);
  }

  else
  {
    v2 = (a1 + 56);
  }

  v4 = &v2[v1];
  if (v1 >= 4)
  {
    v5 = v2;
    do
    {
      v6 = memchr(v5, 105, v1 - 3);
      if (!v6)
      {
        break;
      }

      if (*v6 == 1684099177)
      {
        return v6 != v4 && v6 - v2 != -1;
      }

      v5 = v6 + 1;
      v1 = v4 - v5;
    }

    while (v4 - v5 > 3);
  }

  v6 = v4;
  return v6 != v4 && v6 - v2 != -1;
}

BOOL sub_10080893C(uint64_t a1)
{
  v1 = *(a1 + 79);
  if (v1 < 0)
  {
    v2 = *(a1 + 56);
    v1 = *(a1 + 64);
  }

  else
  {
    v2 = (a1 + 56);
  }

  v3 = &v2[v1];
  if (v1 >= 13)
  {
    v4 = v2;
    do
    {
      v5 = memchr(v4, 82, v1 - 12);
      if (!v5)
      {
        break;
      }

      if (*v5 == 0x447974696C616552 && *(v5 + 5) == 0x6563697665447974)
      {
        return v5 != v3 && v5 - v2 != -1;
      }

      v4 = v5 + 1;
      v1 = v3 - v4;
    }

    while (v3 - v4 > 12);
  }

  v5 = v3;
  return v5 != v3 && v5 - v2 != -1;
}

void sub_1008089EC()
{
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_100808AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100808AE0(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    theDict = 0;
    v19 = 0;
    sub_100010024(&theDict, a2);
    v19 = a1;
    Value = CFDictionaryGetValue(theDict, @"PRIVersion_Major");
    v4 = Value;
    if (Value && (v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()) && (v20 = 0, ctu::cf::assign(&v20, v4, v6), *(a1 + 24) = v20, v7 = CFDictionaryGetValue(theDict, @"PRIVersion_Minor"), (v8 = v7) != 0) && (v9 = CFGetTypeID(v7), v9 == CFNumberGetTypeID()) && (v20 = 0, ctu::cf::assign(&v20, v8, v10), *(a1 + 28) = v20, v11 = CFDictionaryGetValue(theDict, @"PRIVersion_ReleaseNo"), (v12 = v11) != 0) && (v13 = CFGetTypeID(v11), v13 == CFNumberGetTypeID()))
    {
      v20 = 0;
      ctu::cf::assign(&v20, v12, v14);
      *(a1 + 32) = v20;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v16 = *a1;
    v15 = 0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(theDict) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N Invalid activation info dictionary", &theDict, 2u);
      return 0;
    }
  }

  return v15;
}

void sub_100808C80()
{
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_100808D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100808D50(NSObject **a1, std::string::size_type a2)
{
  ctu::split_any();
  v4 = *a1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 134218242;
    *(__str.__r_.__value_.__r.__words + 4) = 0;
    WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
    *(&__str.__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Expected to find 3 tokens in cached PRI version string. Found %ld instead: %s", &__str, 0x16u);
  }

  return 0;
}

void sub_100808F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, __int128 __p, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(exception_object);
    v22 = *v18;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v17 + 23) < 0)
      {
        v17 = *v17;
      }

      v23 = (*(*v21 + 16))(v21);
      LODWORD(__p) = 136315394;
      *(&__p + 4) = v17;
      WORD6(__p) = 2080;
      *(&__p + 14) = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#N Could not convert PRI version string (%s) into integers: %s", &__p, 0x16u);
    }

    __cxa_end_catch();
    JUMPOUT(0x100808EC8);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100809010(uint64_t a1)
{
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "set.bb.pri");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(a1, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

void sub_10080908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void sub_1008090B0(ctu::OsLogLogger *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

void sub_10080913C(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1008091D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1008091E8(va);
  _Unwind_Resume(a1);
}

ctu::OsLogLogger **sub_1008091E8(ctu::OsLogLogger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1008090B0(v2);
    operator delete();
  }

  return a1;
}

void sub_100809234(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

ctu::OsLogLogger *sub_10080926C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1008090B0(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1008092B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1008093D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_1008093EC(void *a1)
{
  *a1 = off_101E45F68;
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "call");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101E86190;
  return a1;
}

void sub_10080949C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_1008094D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v24 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v24 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v24 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_14;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_15;
  }

  v10 = xpc_null_create();
LABEL_14:
  v24 = v10;
LABEL_15:
  xpc_release(v9);
  switch(a2)
  {
    case 1:
      if (CallInfo::operator BOOL())
      {
        sub_100373498(a3, &v20);
        *&buf = &v24;
        *(&buf + 1) = "kCTCallProcessing";
        sub_100DAE90C(&buf, &v20, &v21);
        xpc_release(v21);
        v21 = 0;
        xpc_release(v20);
        v20 = 0;
      }

      else
      {
        v12 = *(a1 + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = sub_10000FD6C(1);
          sub_101780718(v13, &buf, v12);
        }
      }

      break;
    case 3:
      if (CallInfo::operator BOOL())
      {
        sub_100373498(a3, &v18);
        *&buf = &v24;
        *(&buf + 1) = "kCTCallProcessing";
        sub_100DAE90C(&buf, &v18, &v19);
        xpc_release(v19);
        v19 = 0;
        xpc_release(v18);
        v18 = 0;
      }

      break;
    case 2:
      if (CallInfo::operator BOOL())
      {
        sub_100373498(a3, &v22);
        *&buf = &v24;
        *(&buf + 1) = "kCTCallProcessing";
        sub_100DAE90C(&buf, &v22, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v22);
        v22 = 0;
      }

      else
      {
        v14 = *(a1 + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = sub_10000FD6C(2);
          sub_101780718(v15, &buf, v14);
        }
      }

      break;
    default:
      v11 = *(a1 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = sub_10000FD6C(a2);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s does not need any extra info. Sending.", &buf, 0xCu);
      }

      break;
  }

  v17 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v17 = xpc_null_create();
  }

  v16 = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    v16 = xpc_null_create();
  }

  sub_10002A37C(a2, &v17, &v16);
  xpc_release(v16);
  xpc_release(v17);
  xpc_release(v24);
  xpc_release(v7);
}

void sub_100809838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v18);
  _Unwind_Resume(a1);
}

const void **sub_1008098F0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = CallInfo::kDefaultCallId;
  v7 = 0x100000001;
  v8 = 9;
  sub_10000501C(v9, kCallerIdDefaultValue);
  v10 = 1;
  v11 = 1;
  v12 = 0x200000004;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10000501C(v16, "");
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_10000501C(v20, "");
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0u;
  memset(v27, 0, 25);
  memset(&v27[28], 0, 64);
  v27[92] = 1;
  v27[96] = 0;
  v27[100] = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *(v28 + 3) = 0;
  v28[0] = 0;
  *(v29 + 3) = 0;
  v29[0] = 0;
  (*(*a1 + 16))(a1, a2, &v5);
  return sub_1000BFE80(&v5);
}

void sub_100809ACC(uint64_t a1, uint64_t a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
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
  v12 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v12 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_14;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    goto LABEL_15;
  }

  v7 = xpc_null_create();
LABEL_14:
  v12 = v7;
LABEL_15:
  xpc_release(v6);
  if (CallInfo::operator BOOL())
  {
    sub_100373498(a2, &v10);
    v9[0] = &v12;
    v9[1] = "kCTCallProcessing";
    sub_100DAE90C(v9, &v10, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v10);
    v10 = 0;
  }

  v9[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v9[0] = xpc_null_create();
  }

  v8 = v12;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    v8 = xpc_null_create();
  }

  sub_10002A37C(3, v9, &v8);
  xpc_release(v8);
  xpc_release(v9[0]);
  xpc_release(v12);
  xpc_release(v4);
}

void sub_100809CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a14);
  xpc_release(v14);
  _Unwind_Resume(a1);
}

void sub_100809D10(uint64_t a1, void *a2)
{
  v28 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v28 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v28 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v28 = v5;
LABEL_9:
  xpc_release(v4);
  v8 = *a2;
  v6 = a2 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      v32 = 0;
      memset(v31, 0, sizeof(v31));
      *&v31[0] = v7[4];
      sub_10080A550(v31 + 8, (v7 + 5));
      __p[0] = 0;
      __p[1] = 0;
      v27 = 0;
      ctu::cf::assign();
      *v29 = 0u;
      v30 = 0u;
      sub_10080A550(v29, v31 + 8);
      LOBYTE(v22) = 0;
      v9 = sub_10080A654(v29);
      if (v9)
      {
        v24 = xpc_BOOL_create(*v9);
        if (!v24)
        {
          v24 = xpc_null_create();
        }

        if (v27 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v22 = &v28;
        v23 = v10;
        sub_10000F688(&v22, &v24, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v24);
        v24 = 0;
      }

      else
      {
        LOBYTE(v22) = 0;
        v11 = sub_10080A6A0(v29);
        if (v11)
        {
          v20 = xpc_int64_create(*v11);
          if (!v20)
          {
            v20 = xpc_null_create();
          }

          if (v27 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v22 = &v28;
          v23 = v12;
          sub_10000F688(&v22, &v20, &v21);
          xpc_release(v21);
          v21 = 0;
          xpc_release(v20);
          v20 = 0;
        }

        else
        {
          LOBYTE(v22) = 0;
          v13 = sub_10080A6F4(v29);
          if (v13)
          {
            if (*(v13 + 23) < 0)
            {
              v13 = *v13;
            }

            v18 = xpc_string_create(v13);
            if (!v18)
            {
              v18 = xpc_null_create();
            }

            if (v27 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            v22 = &v28;
            v23 = v14;
            sub_10000F688(&v22, &v18, &v19);
            xpc_release(v19);
            v19 = 0;
            xpc_release(v18);
            v18 = 0;
          }
        }
      }

      sub_10080A5FC(v29);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      sub_10080A5FC(v31 + 8);
      v15 = v7[1];
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
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v7 = v16;
    }

    while (v16 != v6);
  }

  *&v31[0] = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    *&v31[0] = xpc_null_create();
  }

  v29[0] = xpc_null_create();
  sub_10002A37C(94, v31, v29);
  xpc_release(v29[0]);
  xpc_release(*&v31[0]);
  xpc_release(v28);
}

void sub_10080A034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, xpc_object_t a23, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10080A100(uint64_t a1)
{
  v2 = sub_100B051A4();
  if (v2)
  {
    sub_100B051E4(v2);
    (*(*a1 + 48))(a1);
  }

  sub_10097D724();
}

void sub_10080A170(uint64_t a1, BOOL a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v13 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v13 = v5;
LABEL_9:
  xpc_release(v4);
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  ctu::cf::assign();
  v9 = xpc_BOOL_create(a2);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v6 = __p;
  if (v12 < 0)
  {
    v6 = __p[0];
  }

  v8[0] = &v13;
  v8[1] = v6;
  sub_10000F688(v8, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  v8[0] = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v8[0] = xpc_null_create();
  }

  v7 = xpc_null_create();
  sub_10002A37C(126, v8, &v7);
  xpc_release(v7);
  xpc_release(v8[0]);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v13);
}

void sub_10080A2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  xpc_release(object);
  xpc_release(a11);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v20 - 24));
  _Unwind_Resume(a1);
}

void sub_10080A36C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_10080A3B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  TMKXPCServer.shutdown()();

  operator delete();
}

void sub_10080A430(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E86260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10080A4AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_10080A4F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  TMKXPCServer.shutdown()();

  operator delete();
}

uint64_t sub_10080A550(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      *(a1 + 8) = *v2;
      break;
    case 1:
      *(a1 + 8) = *v2;
      break;
    case 2:
      if (*(a2 + 31) < 0)
      {
        sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v5 = *v2;
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 8) = v5;
      }

      break;
    default:
      sub_100100ED4();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_10080A5FC(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      sub_100100ED4();
    }

    if (*(a1 + 31) < 0)
    {
      v2 = *(a1 + 8);

      operator delete(v2);
    }
  }
}

_DWORD *sub_10080A654(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0;
      break;
    default:
      sub_100100ED4();
  }

  return result;
}

int *sub_10080A6A0(int *a1)
{
  v1 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 2:
      return v1;
    case 1:
      v1 = a1 + 2;
      break;
    default:
      sub_100100ED4();
  }

  return v1;
}

int *sub_10080A6F4(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 != 2)
  {
    sub_100100ED4();
  }

  return a1 + 2;
}

void *sub_10080A808(void *a1, void *a2)
{
  v3 = a2;
  ctu::OsLogContext::OsLogContext(&v5, kCtLoggingSystemName, "cp.ids.sub");
  ctu::OsLogLogger::OsLogLogger(v6, &v5);
  ctu::OsLogLogger::OsLogLogger((a1 + 1), v6);
  ctu::OsLogLogger::~OsLogLogger(v6);
  ctu::OsLogContext::~OsLogContext(&v5);
  *a1 = off_101E86330;
  a1[2] = v3;
  return a1;
}

void sub_10080A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  CellularPlanIDSSubscriptionSelectorInterface::~CellularPlanIDSSubscriptionSelectorInterface(v3);

  _Unwind_Resume(a1);
}

uint64_t sub_10080A900(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10080A9D4;
  v4[3] = &unk_101E86350;
  v4[4] = a1;
  sub_1002F67CC(v5, a2);
  [v2 requestSelectedSubscriptionsWithCompletion:v4];
  return sub_1002F31C8(v5);
}

void sub_10080A9D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v20 = v6;
  v21 = v5;
  if (!v5 || v6)
  {
    v18 = *(v7 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101780760(v20, v18);
    }

    v17 = *(a1 + 64);
    if (!v17)
    {
LABEL_18:
      sub_100022DB4();
    }
  }

  else
  {
    v19 = a1;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if (v12)
          {
            v13 = [*(*(&v26 + 1) + 8 * i) labelID];
            v14 = [v13 length] == 0;

            if (!v14)
            {
              v15 = [v12 labelID];
              v16 = v15;
              [v15 UTF8String];
              sub_100072D94(&v30);
            }

            if (os_log_type_enabled(*(v7 + 8), OS_LOG_TYPE_ERROR))
            {
              sub_1017807D8(&v22, v23);
            }
          }

          else if (os_log_type_enabled(*(v7 + 8), OS_LOG_TYPE_ERROR))
          {
            sub_101780814(&v24, v25);
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v9);
    }

    v17 = *(v19 + 64);
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  (*(*v17 + 48))(v17, &v30);
  sub_100009970(&v30, v31[0]);
}

void sub_10080AC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27)
{
  sub_100009970(&a26, a27);

  _Unwind_Resume(a1);
}

void sub_10080ACA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = v6 + 4;
      if (*(v6 + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = [NSString stringWithUTF8String:v7];
      v9 = [IDSPhoneSubscription phoneSubscriptionWithLabelID:v8];

      v10 = *(a1 + 16);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10080AF20;
      v28[3] = &unk_101E86388;
      v30 = a1;
      v11 = v9;
      v29 = v11;
      [v10 selectSubscription:v11 withCompletion:v28];

      v12 = v6[1];
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
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v5);
  }

  v17 = *a3;
  v15 = a3 + 1;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      v18 = v16 + 4;
      if (*(v16 + 55) < 0)
      {
        v18 = *v18;
      }

      v19 = [NSString stringWithUTF8String:v18];
      v20 = [IDSPhoneSubscription phoneSubscriptionWithLabelID:v19];

      v21 = *(a1 + 16);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10080AF94;
      v25[3] = &unk_101E86388;
      v27 = a1;
      v22 = v20;
      v26 = v22;
      [v21 unselectSubscription:v22 withCompletion:v25];

      v23 = v16[1];
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
          v24 = v16[2];
          v14 = *v24 == v16;
          v16 = v24;
        }

        while (!v14);
      }

      v16 = v24;
    }

    while (v24 != v15);
  }
}

void sub_10080AF20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(*(*(a1 + 40) + 8), OS_LOG_TYPE_ERROR))
  {
    sub_101780850();
  }
}

void sub_10080AF94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(*(*(a1 + 40) + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1017808C8();
  }
}

void sub_10080B008(id *a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  CellularPlanIDSSubscriptionSelectorInterface::~CellularPlanIDSSubscriptionSelectorInterface(a1);
}

void sub_10080B04C(id *a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  CellularPlanIDSSubscriptionSelectorInterface::~CellularPlanIDSSubscriptionSelectorInterface(a1);

  operator delete();
}

void sub_10080B10C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101780940(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080B128(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10080B160(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10080B190(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10080B1D0(_BOOL8 result, uint64_t a2, char a3)
{
  if (*(result + 32) == 1)
  {
    if (*(result + 136))
    {
      v7 = v3;
      v8 = v4;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 0x40000000;
      v5[2] = sub_10080B40C;
      v5[3] = &unk_101E86468;
      v5[4] = result;
      v6 = a3;
      return sub_10080B260(0x800F7, v5);
    }
  }

  return result;
}

BOOL sub_10080B260(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_10080B38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080B40C(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(v4 + 120);
  v6 = (v4 + 128);
  if (v5 != (v4 + 128))
  {
    do
    {
      v7 = *(v5 + 32);
      if (v7 <= 0xA)
      {
        v8 = dword_10183FF6C[v7];
        result = awd::metrics::CommCenterFileType_IsValid(v8, a2);
        if ((result & 1) == 0)
        {
          sub_101780964();
        }

        v9 = a2[18];
        if (v9 == a2[19])
        {
          result = sub_10080B50C(a2 + 16, v9 + 1);
          v9 = a2[18];
        }

        v10 = *(a2 + 8);
        a2[18] = v9 + 1;
        *(v10 + 4 * v9) = v8;
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }

  v14 = *(v3 + 40);
  if (v14 < 3)
  {
    result = awd::metrics::CommCenterFilePushReason_IsValid(v14, a2);
    if ((result & 1) == 0)
    {
      sub_101780990();
    }

    a2[22] |= 0x10u;
    a2[20] = v14;
  }

  return result;
}

_DWORD *sub_10080B50C(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

void sub_10080B5BC(const char *a1@<X0>, void *a2@<X8>)
{
  v18 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
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
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  if (xpc_get_type(v18) == &_xpc_type_dictionary)
  {
    v16 = xpc_string_create("com.apple.commcenter.root-helper-xpc");
    if (!v16)
    {
      v16 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServiceXPCName;
    sub_10000F688(&v14, &v16, &v17);
    xpc_release(v17);
    v17 = 0;
    xpc_release(v16);
    v16 = 0;
    v12 = xpc_string_create("CommCenterRootHelperNotification");
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServiceNotificationName;
    sub_10000F688(&v14, &v12, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v12);
    v12 = 0;
    v10 = xpc_string_create("CommCenterRootHelperServer");
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServerHostName;
    sub_10000F688(&v14, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
    v8 = xpc_string_create(a1);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kClientHostName;
    sub_10000F688(&v14, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
    v8 = 0;
  }

  *a2 = 0;
  a2[1] = 0;
  v7 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v7 = xpc_null_create();
  }

  TelephonyXPC::Client::create();
  xpc_release(v7);
  xpc_release(v18);
}

void sub_10080B870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, xpc_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  xpc_release(object);
  xpc_release(*(v11 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_10080B8BC(uint64_t *a1, BOOL a2)
{
  v22 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v22 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v22 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v22 = v5;
LABEL_9:
  xpc_release(v4);
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v21 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_17;
  }

  v8 = xpc_null_create();
LABEL_16:
  v21 = v8;
LABEL_17:
  xpc_release(v7);
  v18 = 0;
  v17 = 3760250881;
  v19 = 0;
  v20 = 0;
  v15 = xpc_BOOL_create(a2);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  __p[0] = &v22;
  __p[1] = "Allowed";
  sub_10000F688(__p, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  sub_10000501C(__p, "SetUltraConstrainedDefaultAllowed");
  v12 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v12 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v17, __p);
      sub_1017809BC();
    }

    v9 = 0x500000000;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  xpc_release(v21);
  xpc_release(v22);
  return v9 | v10;
}

uint64_t sub_10080BBE4(uint64_t *a1, int a2)
{
  v22 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v22 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v22 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v22 = v5;
LABEL_9:
  xpc_release(v4);
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v21 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_17;
  }

  v8 = xpc_null_create();
LABEL_16:
  v21 = v8;
LABEL_17:
  xpc_release(v7);
  v18 = 0;
  v17 = 3760250881;
  v19 = 0;
  v20 = 0;
  v15 = xpc_int64_create(a2);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  __p[0] = &v22;
  __p[1] = "TcpHeuristicsFlags";
  sub_10000F688(__p, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  sub_10000501C(__p, "SetTcpLinkHeuristicsFlags");
  v12 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v12 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v17, __p);
      sub_101780A28();
    }

    v9 = 0x500000000;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  xpc_release(v21);
  xpc_release(v22);
  return v9 | v10;
}

uint64_t sub_10080BF0C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10080C0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  sub_10000FF50(va);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_10080C108(Registry **a1, uint64_t a2)
{
  v2 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(buf, v2, LogGroupName);
  v4 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device supports SIM OTA provisioning over BIP", buf, 2u);
  }

  v10 = 0;
  v11 = 0;
  sGetSubscriberSimInterface();
  if (v10)
  {
    v8 = 0;
    v9 = 0;
    sub_10080CCF4();
  }

  v5 = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(buf, v2, v5);
  v6 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No subscriber interface to send SIM reprovision", buf, 2u);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10080C620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, char a22)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  sub_100004A34(v22);
  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(a1);
}

void sub_10080C70C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(v6, v3, LogGroupName);
  v5 = v7;
  ctu::OsLogContext::~OsLogContext(v6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sent SIM reprovision: %d", v6, 8u);
  }
}

uint64_t sub_10080C7D8(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if (v3 < 0)
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
  *&v15 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v15);
  if (!v7)
  {
    std::mutex::unlock(v2);
    goto LABEL_9;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    std::mutex::unlock(v2);
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  if (!v9)
  {
    v10 = 0;
LABEL_17:
    sub_100004A34(v8);
    goto LABEL_18;
  }

LABEL_11:
  v15 = 0uLL;
  sub_100419790(v9, &v15);
  if (v15)
  {
    v10 = (*(*v15 + 96))(v15);
  }

  else
  {
    v10 = 0;
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  if (v8)
  {
    goto LABEL_17;
  }

LABEL_18:
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, LogGroupName);
  v12 = *(&v15 + 1);
  ctu::OsLogContext::~OsLogContext(&v15);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = "false";
    if (v10)
    {
      v13 = "true";
    }

    LODWORD(v15) = 136315138;
    *(&v15 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Supports OTA %s", &v15, 0xCu);
  }

  return v10;
}

void sub_10080C9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10080CA14(void *a1)
{
  *a1 = off_101E864D8;
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_10080CA60(void *a1)
{
  *a1 = off_101E864D8;
  v1 = a1[1];
  if (v1)
  {
    dispatch_release(v1);
  }

  operator delete();
}

void sub_10080CB34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E864D8;
  a2[1] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void sub_10080CB60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void sub_10080CB70(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t sub_10080CBB0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&v9, v4, LogGroupName);
  v6 = *&v10[4];
  ctu::OsLogContext::~OsLogContext(&v9);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = "failed";
    if (v3)
    {
      v7 = "complete";
    }

    v9 = 136315138;
    *v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CSIM reset %s", &v9, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 8));
}

uint64_t sub_10080CCA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080CD60(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E3EEC0;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_100034C50((a1 + 24), *a2, *(a2 + 8), *(a2 + 8) - *a2);
  return a1;
}

uint64_t sub_10080CDD4()
{
  v1 = 0x15F14430000000A0;
  v2 = 16868198;
  qmemcpy(v3, "CI1", sizeof(v3));
  qword_101FBAC50 = 0;
  unk_101FBAC58 = 0;
  qword_101FBAC48 = 0;
  sub_1000DCF88(&qword_101FBAC48, &v1, &v4, 15);
  return __cxa_atexit(sub_10080BF0C, &qword_101FBAC48, &_mh_execute_header);
}

uint64_t sub_10080CE94(uint64_t a1, os_log_t *a2, CFDictionaryRef *a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    *v11 = 0u;
    v12 = 0u;
    *buf = 0u;
    (*(*v4 + 48))(buf);
    __dst[0] = 0;
    __dst[1] = 0;
    v9 = 0;
    if (SHIBYTE(v11[0]) < 0)
    {
      sub_100005F2C(__dst, *buf, *&buf[8]);
    }

    else
    {
      *__dst = *buf;
      v9 = v11[0];
    }

    v6 = HIBYTE(v9);
    if (SHIBYTE(v9) < 0)
    {
      v6 = __dst[1];
    }

    if (v6)
    {
      sub_100808C80();
    }

    if ((HIBYTE(v9) & 0x80) != 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }

    if (SHIBYTE(v11[0]) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v5 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Invalid PRI versions functor", buf, 2u);
    }
  }

  return 0;
}

void sub_10080D3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_1000D6F38(&a27);
  _Unwind_Resume(a1);
}

double sub_10080D480(uint64_t a1)
{
  *a1 = &off_101E86558;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_10080D4B0(PB::Base *this)
{
  *this = &off_101E86558;
  v4 = *(this + 5);
  v2 = (this + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    sub_100140988(this + 32, v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    sub_100140988(this + 24, v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    sub_100140988(this + 16, v7);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    sub_100140988(this + 8, v8);
  }

  PB::Base::~Base(this);
}

void sub_10080D564(PB::Base *a1)
{
  sub_10080D4B0(a1);

  operator delete();
}

uint64_t *sub_10080D59C(uint64_t *a1, void *a2)
{
  *a1 = &off_101E86558;
  *(a1 + 1) = 0u;
  *(a1 + 3) = 0u;
  a1[5] = 0;
  if (a2[3])
  {
    operator new();
  }

  if (a2[4])
  {
    operator new();
  }

  if (a2[5])
  {
    operator new();
  }

  if (a2[1])
  {
    operator new();
  }

  if (a2[2])
  {
    operator new();
  }

  return a1;
}

uint64_t sub_10080D828(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (a1[1])
  {
    PB::TextFormatter::format();
  }

  if (a1[2])
  {
    PB::TextFormatter::format();
  }

  if (a1[3])
  {
    PB::TextFormatter::format();
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  if (a1[5])
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10080D8E4(uint64_t *a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v6 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_40;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v16 |= (v21 & 0x7F) << v14;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v18;
          ++v19;
          ++v20;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_22;
          }
        }

        v9 = (v4 & 1) != 0 ? 0 : v16;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v22 = v9 >> 3;
      if ((v9 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v9 & 7, 0) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_40:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void *sub_10080DC20(void *result, uint64_t a2)
{
  v2 = result;
  if (result[3])
  {
    result = PB::Writer::write();
  }

  if (v2[4])
  {
    result = PB::Writer::write();
  }

  if (v2[5])
  {
    result = PB::Writer::write();
  }

  if (v2[1])
  {
    result = PB::Writer::write();
  }

  if (v2[2])
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_10080DCC8(uint64_t a1, os_log_t *a2)
{
  v3 = sub_10018A6D0(a1, a2);
  *v3 = &off_101E86610;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 328) = 2;
  sub_10018A964(v3);
  *(a1 + 254) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 280) = *(a1 + 272);
  *(a1 + 304) = *(a1 + 296);
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  if (os_log_type_enabled(**(a1 + 8), OS_LOG_TYPE_DEBUG))
  {
    v4 = (*(*a1 + 32))(a1);
    sub_101780A94(v4, &v6);
  }

  return a1;
}

uint64_t sub_10080DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10018A758(a1, a2);
  *v4 = &off_101E86610;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 272) = 0u;
  *(v4 + 192) = *(a2 + 192);
  *(v4 + 208) = *(a2 + 208);
  v5 = *(a2 + 230);
  *(v4 + 224) = *(a2 + 224);
  *(v4 + 230) = v5;
  *(v4 + 238) = *(a2 + 238);
  *(v4 + 254) = *(a2 + 254);
  if (v4 != a2)
  {
    sub_1001122C4((a1 + 272), *(a2 + 272), *(a2 + 280), *(a2 + 280) - *(a2 + 272));
    sub_1001122C4((a1 + 296), *(a2 + 296), *(a2 + 304), *(a2 + 304) - *(a2 + 296));
  }

  *(a1 + 324) = *(a2 + 324);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (os_log_type_enabled(**(a1 + 8), OS_LOG_TYPE_DEBUG))
  {
    v6 = (*(*a1 + 32))(a1);
    sub_101780AE4(v6, &v8);
  }

  return a1;
}

double sub_10080DF94(uint64_t a1)
{
  sub_10018A964(a1);
  result = 0.0;
  *(a1 + 254) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 280) = *(a1 + 272);
  *(a1 + 304) = *(a1 + 296);
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  return result;
}

uint64_t sub_10080DFE0(uint64_t a1, uint64_t *a2)
{
  *(a1 + 192) = 0u;
  *(a1 + 304) = *(a1 + 296);
  *(a1 + 320) = 0;
  *(a1 + 208) = 0u;
  ctu::base64::decode();
  v4 = **(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = (*(*a1 + 32))(a1);
    sub_101780B34(v5, a2, buf, v4);
  }

  return 0;
}

void sub_10080E1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080E214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 320);
  if (v3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v5 = *(a1 + 304) - *(a1 + 296);
    if (v5 == -32)
    {
      v6 = 0;
    }

    else
    {
      sub_10018D3CC(&v13, v5 + 32);
      v6 = v13;
    }

    *v6 = *(a1 + 192);
    *(v13 + 1) = *(a1 + 208);
    v7 = *(a1 + 296);
    v8 = *(a1 + 304);
    if (v8 != v7)
    {
      memmove(v13 + 32, v7, v8 - v7);
    }

    ctu::base64::encode();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    v9 = v13;
    *(a2 + 16) = v12;
    if (v9)
    {
      v14 = v9;
      operator delete(v9);
    }
  }

  else if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  return v3;
}

void sub_10080E308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080E328(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10018D3CC(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

uint64_t sub_10080E350(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 321);
  if (v2 == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_1000DCF88(&v8, (a1 + 224), (a1 + 238), 14);
    ctu::base64::encode();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v6;
    v4 = v8;
    *(a2 + 16) = v7;
    if (v4)
    {
      v9 = v4;
      operator delete(v4);
    }
  }

  return v2;
}

void sub_10080E3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080E3FC(uint64_t a1, void *a2, int a3)
{
  sub_10018AE94(a1, a2, a3);
  if (a3 && *(a1 + 321) == 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    if (sub_10080E350(a1, &v30))
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      v18 = 0u;
      v19 = 0u;
      *__p = 0u;
      memset(v16, 0, sizeof(v16));
      v15 = 0u;
      sub_10000D518(&v15);
      LOBYTE(v13) = 34;
      v6 = sub_10000C030(&v15, &v13, 1);
      if (v32 >= 0)
      {
        v7 = &v30;
      }

      else
      {
        v7 = v30;
      }

      if (v32 >= 0)
      {
        v8 = HIBYTE(v32);
      }

      else
      {
        v8 = v31;
      }

      v9 = sub_10000C030(v6, v7, v8);
      LOBYTE(v13) = 34;
      sub_10000C030(v9, &v13, 1);
      sub_10000D684(&v15, &v13);
      v34 = "auts";
      v10 = sub_10018D844(a2, "auts", &unk_101802C98, &v34, &v33);
      v11 = v10;
      if (*(v10 + 63) < 0)
      {
        operator delete(v10[5]);
      }

      *(v11 + 5) = v13;
      v11[7] = v14;
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[1]);
      }

      std::locale::~locale(v16);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v30);
    }
  }

  return 1;
}

void sub_10080E644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100D50834(&a16);
  if (*(v16 - 49) < 0)
  {
    operator delete(*(v16 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10080E698(uint64_t a1, std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (std::string::compare(this, 0, 3uLL, "AKA"))
    {
      return 0;
    }

    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      if (this->__r_.__value_.__l.__size_ < 7)
      {
        return 0;
      }

      v6 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v6 = this;
      if (HIBYTE(this->__r_.__value_.__r.__words[2]) < 7u)
      {
        return 0;
      }
    }

    *(a1 + 328) = v6->__r_.__value_.__s.__data_[4] - 48;
    std::string::basic_string(&v7, this, 6uLL, 0xFFFFFFFFFFFFFFFFLL, &v8);
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    *(a1 + 136) = v7;
  }

  else
  {
    *(a1 + 328) = 2;
    if (*(a1 + 159) < 0)
    {
      **(a1 + 136) = 0;
      *(a1 + 144) = 0;
    }

    else
    {
      *(a1 + 136) = 0;
      *(a1 + 159) = 0;
    }
  }

  return 1;
}

uint64_t sub_10080E7A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((*(result + 159) & 0x8000000000000000) != 0)
  {
    if (*(result + 144))
    {
      goto LABEL_3;
    }

LABEL_15:
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    return result;
  }

  if (!*(result + 159))
  {
    goto LABEL_15;
  }

LABEL_3:
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = 0u;
  sub_10000D518(&v11);
  sub_10000C030(&v11, "AKAv", 4);
  v4 = std::ostream::operator<<();
  LOBYTE(v9) = 45;
  v5 = sub_10000C030(v4, &v9, 1);
  v6 = *(v3 + 159);
  if (v6 >= 0)
  {
    v7 = v3 + 136;
  }

  else
  {
    v7 = *(v3 + 136);
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 159);
  }

  else
  {
    v8 = *(v3 + 144);
  }

  sub_10000C030(v5, v7, v8);
  sub_10000D684(&v11, &v9);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10080E9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10080EA00(uint64_t *result, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - v3 - 17) >= 0xFFFFFFFFFFFFFFF3)
  {
    v6 = result;
    result += 34;
    if (result != a2)
    {
      result = sub_1001122C4(result, v3, v4, v4 - v3);
    }

    *(v6 + 321) = 256;
  }

  return result;
}

__n128 sub_10080EA58(uint64_t a1, __n128 **a2)
{
  v2 = *a2;
  if ((a2[1] - *a2) >= 0x10)
  {
    result = *v2;
    *(a1 + 238) = *v2;
    *(a1 + 323) = 1;
  }

  return result;
}

__n128 sub_10080EA7C(uint64_t a1, __n128 **a2)
{
  v2 = *a2;
  if ((a2[1] - *a2) >= 0x10)
  {
    result = *v2;
    *(a1 + 254) = *v2;
    *(a1 + 324) = 1;
  }

  return result;
}

uint64_t sub_10080EAD0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1[1];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = ((*a1)[4])(a1);
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    *buf = 136316162;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    *&buf[22] = 2080;
    *&buf[24] = v13;
    *v41 = 2080;
    *&v41[2] = v14;
    *&v41[10] = 2080;
    *&v41[12] = v15;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#D %s%scomputeResponse, '%s', '%s', '%s'", buf, 0x34u);
  }

  if (*(a1 + 321) == 1)
  {
    buf[0] = 0;
    return sub_10018CA14(a1, a2, a3, a4, buf, 0);
  }

  if (*(a1 + 322) != 1)
  {
    return 0;
  }

  if (*(a1 + 82) == 1)
  {
    return sub_10018CA14(a1, a2, a3, a4, a1[34], (a1[35] - a1[34]));
  }

  if (*(a1 + 324) != 1 || *(a1 + 323) != 1)
  {
    return 0;
  }

  memset(&v35, 0, sizeof(v35));
  if (*(a1 + 159) < 0)
  {
    sub_100005F2C(&v35, a1[17], a1[18]);
  }

  else
  {
    v35 = *(a1 + 17);
  }

  size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::operator=(&v35, "MD5");
  }

  *v41 = 0u;
  memset(buf, 0, sizeof(buf));
  v17 = sub_1004C8AA0(buf, a1[1]);
  v18 = sub_1004C8B18(v17, &v35);
  if (v18)
  {
    memset(__dst, 0, 24);
    sub_10080E328(__dst, a1[35] - a1[34] + 32);
    v19 = a1[34];
    v20 = a1[35];
    v21 = __dst[0];
    if (v20 == v19)
    {
      v22 = a1[34];
    }

    else
    {
      memmove(__dst[0], v19, v20 - v19);
      v19 = a1[34];
      v22 = a1[35];
      v21 = __dst[0];
    }

    v24 = v22 - v19;
    *&v21[v24] = *(a1 + 254);
    *(__dst[0] + v24 + 16) = *(a1 + 238);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (byte_101FBAC77 >= 0)
    {
      v25 = &qword_101FBAC60;
    }

    else
    {
      v25 = qword_101FBAC60;
    }

    if (byte_101FBAC77 >= 0)
    {
      v26 = byte_101FBAC77;
    }

    else
    {
      v26 = unk_101FBAC68;
    }

    if ((*(*v18 + 4))(v18, __dst[0], __dst[1] - __dst[0], v25, v26, &v32))
    {
      __p = 0;
      v37 = 0;
      v38 = 0;
      ctu::base64::encode();
      if (v38 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v38 >= 0)
      {
        v28 = HIBYTE(v38);
      }

      else
      {
        v28 = v37;
      }

      v10 = sub_10018CA14(a1, a2, a3, a4, p_p, v28);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      if (os_log_type_enabled(*a1[1], OS_LOG_TYPE_ERROR))
      {
        v29 = ((*a1)[4])(a1);
        sub_101780BAC(v29, &__p);
      }

      v10 = 0;
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }
  }

  else
  {
    v23 = *a1[1];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v30 = ((*a1)[4])(a1);
      v31 = &v35;
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v35.__r_.__value_.__r.__words[0];
      }

      LODWORD(__dst[0]) = 136315650;
      *(__dst + 4) = v30;
      WORD2(__dst[1]) = 2080;
      *(&__dst[1] + 6) = ", ";
      HIWORD(__dst[2]) = 2080;
      __dst[3] = v31;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#E %s%sInvalid Authorization header: unsupported algorithm '%s'", __dst, 0x20u);
    }

    v10 = 0;
  }

  sub_1004C8B14(buf);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_10080EF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  sub_1004C8B14(v28 - 112);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void *sub_10080F004(_BYTE *a1, void *a2)
{
  sub_100A36848(a1, a2);
  if (a1[322] == 1)
  {
    v4 = sub_10000C030(a2, "  RES: ", 7);
    ctu::hex();
    v5 = (v30 & 0x80u) == 0 ? &__p : __p;
    v6 = (v30 & 0x80u) == 0 ? v30 : v29;
    v7 = sub_10000C030(v4, v5, v6);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v31, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[323] == 1)
  {
    v9 = sub_10000C030(a2, "  CK: ", 6);
    ctu::hex((a1 + 238), 0x10, v10);
    v11 = (v30 & 0x80u) == 0 ? &__p : __p;
    v12 = (v30 & 0x80u) == 0 ? v30 : v29;
    v13 = sub_10000C030(v9, v11, v12);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v31, &std::ctype<char>::id);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[324] == 1)
  {
    v15 = sub_10000C030(a2, "  IK: ", 6);
    ctu::hex((a1 + 254), 0x10, v16);
    v17 = (v30 & 0x80u) == 0 ? &__p : __p;
    v18 = (v30 & 0x80u) == 0 ? v30 : v29;
    v19 = sub_10000C030(v15, v17, v18);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v31, &std::ctype<char>::id);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[321] == 1)
  {
    v21 = sub_10000C030(a2, "  AUTS: ", 8);
    ctu::hex((a1 + 224), 0xE, v22);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v24 = v30;
    }

    else
    {
      v24 = v29;
    }

    v25 = sub_10000C030(v21, p_p, v24);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v31, &std::ctype<char>::id);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  return a2;
}