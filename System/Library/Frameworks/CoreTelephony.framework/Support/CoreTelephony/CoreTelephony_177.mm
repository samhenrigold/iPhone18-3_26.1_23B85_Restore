void sub_1014FF078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014FF144(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [v10 set_sourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.BrandedCalling"];
  [v10 setHTTPShouldSetCookies:0];
  [v10 setHTTPCookieAcceptPolicy:1];
  [v10 setHTTPCookieStorage:0];
  v24 = [NSOperationQueue alloc];
  [v24 setMaxConcurrentOperationCount:1];
  v11 = [BrandedCallingSessionDelegate alloc];
  v12 = [NSString alloc];
  if (*(a4 + 23) >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  v14 = [v12 initWithCString:v13 encoding:4];
  [(BrandedCallingSessionDelegate *)v11 setPublicKeyHash:v14];

  v15 = [NSURLSession sessionWithConfiguration:v10 delegate:v11 delegateQueue:v24];
  v16 = [NSMutableURLRequest alloc];
  v17 = [NSString alloc];
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  v19 = [v17 initWithCString:v18 encoding:4];
  v20 = [NSURL URLWithString:v19];
  v21 = [v16 initWithURL:v20];

  [v21 _setPrivacyProxyFailClosed:1];
  [v21 setAllHTTPHeaderFields:&off_101F92F28];
  __dst[0] = 0;
  __dst[1] = 0;
  v26 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v26 = *(a3 + 16);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3321888768;
  v27[2] = sub_1014FF4F0;
  v27[3] = &unk_101F45FD8;
  v27[4] = a1;
  sub_100383190(v28, a5);
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&__p, __dst[0], __dst[1]);
  }

  else
  {
    __p = *__dst;
    v30 = v26;
  }

  v22 = [v15 dataTaskWithRequest:v21 completionHandler:v27];
  v23 = qword_101FCACD0;
  qword_101FCACD0 = v22;

  *(a1 + 16) = 0;
  [qword_101FCACD0 resume];
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  sub_100383110(v28);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1014FF42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100383110(v34 + 40);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1014FF4F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v8;
  v12 = [v11 statusCode];
  v13 = *(v10 + 8);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v7 && !v9 && v12 == 200)
  {
    if (v14)
    {
      *__p = 134217984;
      *&__p[4] = [v7 length];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Retrieved %lu bytes", __p, 0xCu);
    }

    v15 = v7;
    v16 = [v7 bytes];
    if ([v7 length] >= 0x12 && *v16 == 66 && v16[1] == 77)
    {
      v17 = +[NSFileManager defaultManager];
      v18 = [[NSString alloc] initWithCString:"/var/wireless/Library/Images" encoding:4];
      v19 = [NSURL fileURLWithPath:v18];

      v20 = [v19 absoluteString];
      v21 = [v17 fileExistsAtPath:v20];

      if ((v21 & 1) == 0)
      {
        [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:0];
      }

      v22 = [[NSString alloc] initWithCString:"/var/wireless/Library/Images" encoding:4];
      v23 = [NSURL URLWithString:v22];

      v24 = [NSString alloc];
      v25 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v25 = *v25;
      }

      v26 = [v24 initWithCString:v25 encoding:4];
      v27 = [v23 URLByAppendingPathComponent:v26];

      v28 = [v27 path];
      [v17 createFileAtPath:v28 contents:v7 attributes:0];

      v29 = [v27 path];
      v30 = v29;
      sub_10000501C(__p, [v29 UTF8String]);
      sub_1014FF99C(*(a1 + 64), __p, 0);
      if (v37 < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_27;
    }

    v33 = *(v10 + 8);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#E BMP file format verification failed", __p, 2u);
    }

    sub_10000501C(__p, "/stock");
    sub_1014FF99C(*(a1 + 64), __p, 3);
  }

  else
  {
    if (v14)
    {
      *__p = 134218242;
      *&__p[4] = v12;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Response error from server, HTTP Status: %ld, %@", __p, 0x16u);
    }

    v31 = *(v10 + 16);
    sub_10000501C(__p, "/stock");
    if (v31)
    {
      v32 = 4;
    }

    else
    {
      v32 = 5;
    }

    sub_1014FF99C(*(a1 + 64), __p, v32);
  }

  if (v37 < 0)
  {
    operator delete(*__p);
  }

LABEL_27:
}

void sub_1014FF8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014FF99C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, a2, &v4);
}

void *sub_1014FF9EC(uint64_t a1, uint64_t a2)
{
  result = sub_100383190(a1 + 40, a2 + 40);
  if (*(a2 + 95) < 0)
  {
    return sub_100005F2C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_1014FFA58(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_100383110(a1 + 40);
}

id sub_1014FFA9C(uint64_t a1)
{
  result = [qword_101FCACD0 state];
  if (!result)
  {
    *(a1 + 16) = 1;
    v3 = *(a1 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E Image fetching timed out", v4, 2u);
    }

    return [qword_101FCACD0 cancel];
  }

  return result;
}

void sub_1014FFB20(uint64_t a1, _BYTE *__s)
{
  v4 = __s[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (__s[23])
    {
      v5 = __s;
      v6 = __s[23];
      goto LABEL_6;
    }

LABEL_21:
    v13 = *(a1 + 8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "#E File path URL is empty";
    v15 = v13;
    v16 = 2;
    goto LABEL_44;
  }

  v6 = *(__s + 1);
  if (!v6)
  {
    goto LABEL_21;
  }

  v5 = *__s;
LABEL_6:
  if (v6 >= 28)
  {
    v7 = &v5[v6];
    v8 = v5;
    do
    {
      v9 = memchr(v8, 47, v6 - 27);
      if (!v9)
      {
        break;
      }

      if (*v9 == 0x7269772F7261762FLL && *(v9 + 1) == 0x694C2F7373656C65 && *(v9 + 2) == 0x6D492F7972617262 && *(v9 + 6) == 1936025441)
      {
        if (v9 == v7 || v9 - v5 == -1)
        {
          break;
        }

        v17 = +[NSFileManager defaultManager];
        v18 = *(a1 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if (__s[23] >= 0)
          {
            v19 = __s;
          }

          else
          {
            v19 = *__s;
          }

          *buf = 136315138;
          v29 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Deleting %s file", buf, 0xCu);
        }

        if (__s[23] >= 0)
        {
          v20 = __s;
        }

        else
        {
          v20 = *__s;
        }

        v21 = [NSString stringWithCString:v20 encoding:4];
        v27 = 0;
        [v17 removeItemAtPath:v21 error:&v27];
        v22 = v27;

        if (v22)
        {
          v23 = *(a1 + 8);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            if (__s[23] >= 0)
            {
              v24 = __s;
            }

            else
            {
              v24 = *__s;
            }

            *buf = 136315394;
            v29 = v24;
            v30 = 2112;
            v31 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Failed to remove a file %s, error: %@", buf, 0x16u);
          }
        }

        return;
      }

      v8 = v9 + 1;
      v6 = v7 - v8;
    }

    while (v7 - v8 >= 28);
  }

  v25 = *(a1 + 8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *__s;
    if (v4 >= 0)
    {
      v26 = __s;
    }

    *buf = 136315138;
    v29 = v26;
    v14 = "#E Cannot remove files from invalid directory %s";
    v15 = v25;
    v16 = 12;
LABEL_44:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
  }
}

BOOL sub_1014FFE3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    v5 = *(a1 + 8);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v6 = "#E Not a valid URL";
    v7 = &v9;
    goto LABEL_10;
  }

  if (sub_10068BFF8(a2, "https://"))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v8 = 0;
    v6 = "#E URL doesnt starts with https";
    v7 = &v8;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    return 0;
  }

  return result;
}

void sub_1014FFF0C(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  BrandedCallingHelperInterface::~BrandedCallingHelperInterface(a1);
}

void sub_1014FFF48(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  BrandedCallingHelperInterface::~BrandedCallingHelperInterface(a1);

  operator delete();
}

void sub_101500020(DisallowedNumbersInterface *this)
{
  *this = off_101F46060;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DisallowedNumbersInterface::~DisallowedNumbersInterface(this);
}

void sub_10150007C(DisallowedNumbersInterface *this)
{
  *this = off_101F46060;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DisallowedNumbersInterface::~DisallowedNumbersInterface(this);

  operator delete();
}

void sub_101500154(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101500190(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015001C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015001F8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101500238(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  *a1 = off_101F46118;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v6 = [NSString stringWithUTF8String:a3];
  v7 = [[NEConfiguration alloc] initWithName:v6 grade:2];
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  v9 = [*(a1 + 16) pathController];

  if (v9)
  {
    v10 = [*(a1 + 16) pathController];
    [v10 setEnabled:a4];
  }

  else
  {
    sub_101500348(a1, a4);
  }

  return a1;
}

void sub_101500348(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NEPathController);
  [*(a1 + 16) setPathController:?];

  v5 = [*(a1 + 16) pathController];
  [v5 setEnabled:a2];
}

void sub_1015003DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *a1 = off_101F46118;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;

  NEConfigurationFacadeInterface::~NEConfigurationFacadeInterface(a1);
}

void sub_101500444(uint64_t a1)
{
  sub_1015003DC(a1);

  operator delete();
}

void sub_101500548(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v10 = **(a1 + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v15 = 0;
    v11 = "Missing NE configuration";
    v12 = &v15;
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_15;
  }

  v5 = [v4 name];

  if (!v5)
  {
    v10 = **(a1 + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v14 = 0;
    v11 = "Missing NE configuration's name";
    v12 = &v14;
    goto LABEL_14;
  }

  v6 = [*(a1 + 16) name];
  v7 = [v6 UTF8String];

  if (!v7)
  {
    v10 = **(a1 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v11 = "Invalid NE configuration's name";
      v12 = &v13;
      goto LABEL_14;
    }

LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v8;
  if (v8)
  {
    memmove(a2, v7, v8);
  }

  *(a2 + v9) = 0;
}

uint64_t sub_1015006FC(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v1 = [*(a1 + 16) identifier];
  [v1 getUUIDBytes:v3];

  return v3[0];
}

id sub_101500788(uint64_t a1)
{
  v1 = [*(a1 + 16) pathController];
  v2 = [v1 isEnabled];

  return v2;
}

void sub_1015007D4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) pathController];
  [v3 setEnabled:a2];
}

id sub_10150083C(uint64_t a1)
{
  v2 = [*(a1 + 16) pathController];
  if (v2)
  {
    v3 = [*(a1 + 16) pathController];
    v4 = [v3 hasNonDefaultRules];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1015008C0(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v6 = [NSString stringWithUTF8String:a2];
  v5 = [*(a1 + 16) pathController];
  v8 = [v5 copyPathRuleBySigningIdentifier:v6];

  if (v8)
  {
    sub_100021014(&v7, &v8);
  }

  *a3 = 0;
  a3[1] = 0;
}

id sub_1015009A0(uint64_t a1, uint64_t **a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v3 = [NSString stringWithUTF8String:a2];
  v4 = [*(a1 + 16) pathController];
  v5 = [v4 removePathRuleBySigningIdentifier:v3];

  return v5;
}

void sub_101500A30(uint64_t a1, uint64_t *a2)
{
  v10 = [NSMutableArray arrayWithCapacity:(a2[1] - *a2) >> 4];
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (*v4)
      {
        if (v6)
        {
          v7 = *(v4 + 8);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v8 = v6[1];
          [v10 addObject:v8];

          if (v7)
          {
            sub_100004A34(v7);
          }
        }
      }

      v4 += 16;
    }

    while (v4 != v5);
  }

  v9 = [*(a1 + 16) pathController];
  [v9 setPathRules:v10];
}

void sub_101500BA4(uint64_t a1, int a2)
{
  v2 = a2;
  v3 = [*(a1 + 16) pathController];
  [v3 setCellularFallbackFlags:v2];
}

double sub_101500C2C@<D0>(CCPreferences *a1@<X0>, _OWORD *a2@<X8>)
{
  CCPreferences::create(a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_101500C64(SubscriberTrackerFactoryInterface *this)
{
  *this = off_101F46218;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  SubscriberTrackerFactoryInterface::~SubscriberTrackerFactoryInterface(this);
}

void sub_101500CC0(SubscriberTrackerFactoryInterface *this)
{
  *this = off_101F46218;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  SubscriberTrackerFactoryInterface::~SubscriberTrackerFactoryInterface(this);

  operator delete();
}

const char *sub_101500D30(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101F46248[a1];
  }
}

void *sub_101501EA8(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_101F46288;
  v8 = [StewieCLLocationManager alloc];
  v9 = sub_100032AC8(a2);
  a1[1] = [(StewieCLLocationManager *)v8 initWithQueue:v9 locationDataCallback:a3 authorizationChangedCallback:a4];

  return a1;
}

void sub_101501FAC(uint64_t a1)
{

  operator delete();
}

void **sub_10150206C(void **a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F462F0;
  sub_101502184(a1 + 3, *a2, *a3);
  return a1;
}

void sub_1015020F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F462F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101502144(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void **sub_101502184(void **a1, int a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    v5 = [CLEmergencyClientEnablementAssertion newAssertionForBundlePath:@"/System/Library/LocationBundles/Bifrost.bundle" withReason:@"Emergency STW Telephony"];
    v6 = *a1;
    *a1 = v5;
  }

  if (a3)
  {
    v7 = [CLEmergencyClientEnablementAssertion newAssertionForBundlePath:@"/System/Library/LocationBundles/CompassCalibration.bundle" withReason:@"Emergency STW Telephony"];
    v8 = a1[1];
    a1[1] = v7;
  }

  return a1;
}

void *sub_1015022A8(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F46340;
  sub_101501EA8(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_101502324(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F46340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101502444(EmergencyCallManagerFactoryInterface *this)
{
  *this = off_101F46390;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  EmergencyCallManagerFactoryInterface::~EmergencyCallManagerFactoryInterface(this);
}

void sub_1015024A0(EmergencyCallManagerFactoryInterface *this)
{
  *this = off_101F46390;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  EmergencyCallManagerFactoryInterface::~EmergencyCallManagerFactoryInterface(this);

  operator delete();
}

void sub_101502510(void *a1)
{
  sub_100004AA0(&v5, a1);
  v2 = v5;
  v1 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1174405120;
  v3[2] = sub_101502600;
  v3[3] = &unk_101F463C8;
  v3[4] = v2;
  v4 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0(524308, v3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1015025DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
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

void sub_101502600(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, v4);
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_101502714(uint64_t result, uint64_t a2)
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

void sub_101502730(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_101502740(wis::MetricFactory *a1, uint64_t a2)
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

void sub_10150286C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015028EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 24) |= 1u;
  *(a2 + 16) = v2;
  return result;
}

uint64_t *sub_101502904(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = (*(**(*v1 + 72) + 32))(*(*v1 + 72));
  if ((v2 & 0x100) != 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1015028EC;
    v6[3] = &unk_101F463F8;
    v7 = v2 & 1;
    sub_101502740(0x80014, v6);
  }

  sub_10024BAAC(&v5);
  return sub_1000049E0(&v4);
}

void sub_1015029CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_10024BAAC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015029E8(uint64_t a1)
{
  sub_101502B50(v2, a1);
  MobileInstallationWaitForSystemAppMigrationWithCompletion();
  return sub_100D68D94(v2);
}

void sub_101502A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100D68D94(va);
  _Unwind_Resume(a1);
}

void sub_101502AB8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 56);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v4);
}

uint64_t sub_101502B50(uint64_t a1, uint64_t a2)
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

void CellularPolicyInterface::create(uint64_t a1)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v17 = *a1;
  v18 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10115CBC4(&v17, &v19);
  ServiceMap = Registry::getServiceMap(v4);
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
  v11 = v19;
  if (v19)
  {
    v12 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v21 = v11;
    *(&v21 + 1) = v12;
    v22 = v7;
    sub_100145BF0(&v6[1].__m_.__sig, &v22, &v22, &v21);
    v14 = v13;
    if (*(&v21 + 1))
    {
      sub_100004A34(*(&v21 + 1));
    }

    std::mutex::unlock(v6);
    if ((v14 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "The given type is already in the map!");
    }
  }

  else
  {
    v21 = 0uLL;
    v22 = v7;
    sub_100145EC4(&v6[1].__m_.__sig, &v22);
    std::mutex::unlock(v6);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  v16 = *(a1 + 8);
  v19 = *a1;
  v20 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_101502E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  __cxa_free_exception(v16);
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_101502EF4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F46458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101502F90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F464A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10150300C(id **a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = **a1;
    if (v3 && (v6 = v3, [v3 planLabel], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 = v6, v4))
    {
      v5 = [v6 planLabel];
      sub_10000501C(a2, [v5 UTF8String]);

      v3 = v6;
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1015030E0(id **a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = **a1;
    if (v3 && (v7 = v3, [v3 planLabel], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 = v7, v4))
    {
      v5 = [v7 planLabel];
      v6 = v5;
      *a2 = v5;
      if (v5)
      {
        CFRetain(v5);
      }

      v3 = v7;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1015031A4(id **a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = **a1;
    if (v3 && (v6 = v3, [v3 planId], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 = v6, v4))
    {
      v5 = [v6 planId];
      sub_10000501C(a2, [v5 UTF8String]);

      v3 = v6;
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t RegistrationController::setRatSelection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1015033D0;
  v10[3] = &unk_101F464E8;
  v10[4] = a1;
  v11[4] = a2;
  sub_100014110(v11, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_100013C9C;
  v6[3] = &unk_101F46840;
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

  return sub_100014380(v11);
}

void sub_1015033C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1015033D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v11 = 0;
  SimSlot = RatSelectionType::getSimSlot((a1 + 72));
  RegistrationController::getModel_sync(v2, SimSlot, &v10);
  if (v10)
  {
    v8 = v10;
    v9 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = RegistrationController::setRatSelection_sync(v2, &v8, (a1 + 72));
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x2300000001;
    }
  }

  else
  {
    v5 = 0x1600000001;
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      RatSelectionType::getSimSlot((a1 + 72));
      v7 = subscriber::asString();
      *buf = 136315138;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT selection", buf, 0xCu);
    }
  }

  sub_100022FB0(a1 + 40, v5);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_101503518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RegistrationController::getRatSelection(uint64_t a1, int a2, uint64_t a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1015036A0;
  v10[3] = &unk_101F46518;
  v10[4] = a1;
  v11[8] = a2;
  sub_101509ADC(v11, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_100013C9C;
  v6[3] = &unk_101F46840;
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

  return sub_10062FB08(v11);
}

void sub_101503694(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1015036A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v8 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 72), &v7);
  if (v7)
  {
    *buf = (*(*v7 + 600))(v7);
    Selection = RatSelectionType::getSelection(buf);
    PreferredSelection = RatSelectionType::getPreferredSelection(buf);
    sub_101412678(a1 + 40, Selection, PreferredSelection);
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT selection query", buf, 0xCu);
    }

    sub_101412678(a1 + 40, 0, 0);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1015037DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getDisplayStatus(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101503A04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationController::isForcedRegisteredHome(RegistrationController *this)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101503B8C;
  v4[3] = &unk_101F46578;
  v4[4] = this;
  v5 = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_101509DF4;
  v6[3] = &unk_101F46870;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10006A5A8;
    v11 = &unk_101F468B0;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10005964C;
    v11 = &unk_101F46890;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v1, &block);
  }

  return v14 & 1;
}

uint64_t sub_101503B8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 1;
  v2 = sub_100007DEC(v1 + 64, &v4);
  return (*(**v2 + 88))(*v2);
}

void RegistrationController::getRegistrationCauseCode(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1001063CC(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_101503D28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::getMobileCountryCode(uint64_t a1@<X0>, int a2@<W1>, MCC *a3@<X8>)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_101509FB8;
  v8[3] = &unk_101F468D0;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v3 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    MCC::MCC(a3);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150A178;
    v13 = &unk_101F46910;
    v14 = v4;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    MCC::MCC(a3);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150A100;
    v13 = &unk_101F468F0;
    v14 = v5;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }
}

void RegistrationController::getMobileNetworkCode(uint64_t a1@<X0>, int a2@<W1>, MNC *a3@<X8>)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10150A1F0;
  v8[3] = &unk_101F46930;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v3 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    MNC::MNC(a3);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150A3B0;
    v13 = &unk_101F46970;
    v14 = v4;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0uLL;
    *(a3 + 1) = 0uLL;
    MNC::MNC(a3);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150A338;
    v13 = &unk_101F46950;
    v14 = v5;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }
}

void RegistrationController::getLastKnownMobileCountryCode(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10002CAC8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_101504138(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::getServingPlmn(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10001C168(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_101504290(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::getRadioAccessTechnology(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10150449C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getOperatorName(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10150A9C8;
  v7[3] = &unk_101F46990;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150AB00;
    v12 = &unk_101F469D0;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100040EF8;
    v12 = &unk_101F469B0;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void RegistrationController::getOperatorShortName(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10001C168(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_101504724(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::isDataAttached(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1000224C8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10150487C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::isVoiceServiceAvailable(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1000224C8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1015049D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::isEmergencyCallBackMode(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void RegistrationController::needNextNetworkTimeUpdate(RegistrationController *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_101504BEC;
  v3[3] = &unk_101F46598;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

uint64_t sub_101504BEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Setting Baseband to active Network Time mode, need the next update", v4, 2u);
  }

  return (*(**(v1 + 88) + 176))(*(v1 + 88));
}

void RegistrationController::updateImsStatus(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void RegistrationController::sendIMSRegStart(uint64_t a1, int a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void RegistrationController::update5GStandaloneInfo(uint64_t a1, int a2, char a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

uint64_t RegistrationController::isEmergencyOverImsEnabled(uint64_t a1, int a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1015050C8;
  v5[3] = &unk_101F465D0;
  v5[4] = a1;
  v6 = a2;
  v7 = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_101509DF4;
  v8[3] = &unk_101F46870;
  v8[4] = a1 + 8;
  v8[5] = &v7;
  v9 = v8;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A5A8;
    v13 = &unk_101F468B0;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10005964C;
    v13 = &unk_101F46890;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v2, &block);
  }

  return v16 & 1;
}

uint64_t sub_1015050C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v24 = 0;
  v25 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 40), &v24);
  v3 = v24;
  if (v24)
  {
    *buf = *off_101F465B8;
    *&buf[16] = @"CheckIMSPrefForEmergency";
    memset(__p, 0, sizeof(__p));
    sub_10005B328(__p, buf, &v27, 3uLL);
    cf = 0;
    (*(**(v2 + 248) + 104))(&cf);
    v4 = cf;
    if (cf)
    {
      buf[0] = 0;
      v5 = CFGetTypeID(cf);
      if (v5 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v4, v6);
      }

      v7 = buf[0] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    v10 = (*(*v3 + 712))(v3, 7);
    v11 = *v3;
    if (v10 == 1)
    {
      v12 = (*(v11 + 720))(v3, 7);
    }

    else
    {
      if ((*(v11 + 712))(v3, 10) != 1)
      {
        v13 = 0;
        v14 = 0;
        goto LABEL_16;
      }

      v12 = (*(*v3 + 720))(v3, 10);
    }

    v13 = v12 == 1;
    v14 = 1;
LABEL_16:
    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asStringBool(v14);
      v17 = asStringBool(v13);
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I IMS bearer support state (%s) and access barred state (%s)", buf, 0x16u);
    }

    if (!v13 && v14 && ((v7 & 1) != 0 || (*(*v3 + 616))(v3)))
    {
      v20 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 40));
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Emergency Over IMS is allowed", buf, 2u);
      }

      v9 = 1;
    }

    else
    {
      v18 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 40));
      v9 = 0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "IMS pref check required, value known and doesn't have Voice support";
        if (v13)
        {
          v19 = "access barred";
        }

        if (!v14)
        {
          v19 = "bearer not supported";
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Emergency Over IMS is not allowed since %s", buf, 0xCu);
        v9 = 0;
      }
    }

    sub_10000A1EC(&cf);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_32;
  }

  v8 = *(v2 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v22 = subscriber::asString();
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v22;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not find model %s for emergency over IMS enabled query", __p, 0xCu);
  }

  v9 = 0;
LABEL_32:
  if (v25)
  {
    sub_100004A34(v25);
  }

  return v9;
}

void sub_101505540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_10000A1EC(&a10);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationController::getRAT(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10150B378;
  v7[3] = &unk_101F46A50;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150B4E4;
    v12 = &unk_101F46A90;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150B4A8;
    v12 = &unk_101F46A70;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

uint64_t RegistrationController::isLimitedService(uint64_t a1, int a2, int a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10150583C;
  v6[3] = &unk_101F465F0;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  v9 = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_101509DF4;
  v10[3] = &unk_101F46870;
  v10[4] = a1 + 8;
  v10[5] = &v9;
  v11 = v10;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10006A5A8;
    v15 = &unk_101F468B0;
    v16 = &v18;
    v17 = &v11;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10005964C;
    v15 = &unk_101F46890;
    v16 = &v18;
    v17 = &v11;
    dispatch_sync(v3, &block);
  }

  return v18 & 1;
}

uint64_t sub_10150583C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  RegistrationController::getModel_sync(v3, *(a1 + 40), &v8);
  v4 = v8;
  if (v8)
  {
    v1 = (*(*v8 + 688))(v8, *(a1 + 44));
  }

  else
  {
    v5 = *(v3 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      *buf = 136315138;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find model %s for PS limited service query", buf, 0xCu);
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  return (v4 != 0) & v1;
}

void sub_101505960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RegistrationController::setCdmaRoamingSwitchSetting(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 216);
  v4 = &_mh_execute_header;
  if (!a3)
  {
    v4 = 0;
  }

  v6[0] = off_101F46AC0;
  v6[1] = a1;
  v7 = v4 | a2;
  v8 = v6;
  *(&v7 + 5) = 0;
  HIBYTE(v7) = 0;
  (*(*v3 + 72))(v3, a2, v6);
  return sub_100959FE0(v6);
}

void sub_101505A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100959FE0(va);
  _Unwind_Resume(a1);
}

void RegistrationController::resetNetworkSettings(RegistrationController *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void RegistrationController::setServiceProvisioned(RegistrationController *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101505C8C;
  v4[3] = &unk_101F46610;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 1);
  v3 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

uint64_t sub_101505C8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 40));
    v12 = 136315138;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Got Service Provisioned event, provisioned: %s", &v12, 0xCu);
  }

  if (*(a1 + 40) == 1)
  {
    RegistrationController::sendGetServingSystemReq_sync(v2);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  result = (*(**(v2 + 344) + 176))(*(v2 + 344), 1, v5 & 1);
  v7 = *(v2 + 64);
  v8 = (v2 + 72);
  if (v7 != v8)
  {
    do
    {
      result = (*(*v7[5] + 784))();
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t RegistrationController::getEnableOnlyHomeNetwork(RegistrationController *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_101505F18;
  v5[3] = &unk_101F46638;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10150BB50;
  block[3] = &unk_101F46B60;
  block[4] = this + 8;
  block[5] = &v10;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void RegistrationController::setEnableOnlyHomeNetwork(RegistrationController *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10150603C;
  v4[3] = &unk_101F46658;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 1);
  v3 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

const void **sub_10150603C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1 && (RoamingInterface::isInHomeCountry(*(v2 + 216)) & 1) == 0)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bringing down data since we are switching to home only N/W and we are currently roaming", buf, 2u);
    }

    v4 = *(v2 + 216);
    v11[0] = off_101F46B90;
    v11[3] = v11;
    (*(*v4 + 56))(v4, 1, 0, v11);
    sub_100014380(v11);
    (*(**(v2 + 264) + 480))(*(v2 + 264), 0, 0);
    (*(**(v2 + 264) + 336))(*(v2 + 264), 3, 6, 1);
    *buf = 1;
    v5 = sub_100007DEC(v2 + 64, buf);
    v7 = *v5;
    v6 = v5[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 504))(v7, 0);
    v9[0] = v7;
    v9[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RegistrationController::reevaluateDataMode_sync(v2, v9);
    if (v6)
    {
      sub_100004A34(v6);
      sub_100004A34(v6);
    }
  }

  RegistrationController::setEnableOnlyHomeNetwork_sync(v2, *(a1 + 40));
  return RegistrationController::sendEnableOnlyHomeNetwork_sync(v2);
}

void sub_101506268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    sub_100004A34(v12);
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getEriVersion(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1015064A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationController::toggleProvisioningMode(RegistrationController *this, uint64_t a2)
{
  v4 = *(this + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = "off";
    if (a2)
    {
      v6 = "on";
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Turning %s provisioning mode", buf, 0xCu);
  }

  if (!capabilities::ct::supportsCambioModeQuery(v5))
  {
    return (*(*this + 328))(this, a2);
  }

  v7 = *(this + 11);
  v9[0] = off_101F46C10;
  v9[1] = a2;
  v9[2] = this;
  v9[3] = v9;
  (*(*v7 + 144))(v7, v9);
  return sub_10000FF50(v9);
}

uint64_t RegistrationController::prepareForServiceProvisioning(RegistrationController *this)
{
  result = capabilities::ct::supportsCambioModeQuery(this);
  if (result)
  {
    v3 = *(this + 11);
    v4[0] = off_101F46CB0;
    v4[1] = this;
    v4[3] = v4;
    (*(*v3 + 144))(v3, v4);
    return sub_10000FF50(v4);
  }

  return result;
}

void sub_101506710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void RegistrationController::sendPSRegistrationRequest(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101506834;
  v4[3] = &unk_101F46678;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

uint64_t sub_101506834(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(**(v2 + 104) + 48))(*(v2 + 104));
  v4 = *(a1 + 40);
  v5 = v3 == 6;
  v6 = *(**(v2 + 88) + 152);
  v7 = *(v2 + 88);

  return v6(v7, v4, v5);
}

void RegistrationController::sendDataRoamingSetting(capabilities::ct *a1, int a2, char a3)
{
  if (capabilities::ct::supportsSystemSelectionDataRoaming(a1))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_1015069F0;
    v7[3] = &unk_101F46698;
    v7[4] = a1;
    v8 = a2;
    v9 = a3;
    v12 = 0;
    v13 = 0;
    sub_100004AA0(&v12, a1 + 1);
    v6 = *(a1 + 3);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_100013C9C;
    block[3] = &unk_101F46840;
    block[5] = v12;
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v7;
    dispatch_async(v6, block);
    if (v11)
    {
      sub_100004A34(v11);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }
}

void RegistrationController::send5GEnabledSetting(uint64_t a1, int a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_101506B3C;
  v5[3] = &unk_101F466B8;
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void RegistrationController::send3GEnabledSetting(uint64_t a1, int a2, char a3, NSObject **a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_101506C94;
  v7[3] = &unk_101F466D8;
  v9 = a2;
  v10 = a3;
  v5 = *a4;
  v7[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v13 = 0;
  v14 = 0;
  sub_100004AA0(&v13, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v13;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_101506C94(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  RegistrationController::send3GEnabledSettingFromPreference_sync(v3, v1, v2, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_101506D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::send2GEnabledSetting(uint64_t a1, int a2, char a3, NSObject **a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_101506E78;
  v7[3] = &unk_101F46708;
  v9 = a2;
  v10 = a3;
  v5 = *a4;
  v7[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v13 = 0;
  v14 = 0;
  sub_100004AA0(&v13, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v13;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_101506E78(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  RegistrationController::send2GEnabledSettingFromPreference_sync(v3, v1, v2, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_101506EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::sendLTEEnabledSetting(uint64_t a1, int a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10150702C;
  v5[3] = &unk_101F46738;
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void RegistrationController::enableEmergencyCallBackMode(RegistrationController *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101507150;
  v4[3] = &unk_101F46758;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 1);
  v3 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
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

void RegistrationController::automaticallySelectNetwork(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100014110(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1015072A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t RegistrationController::fetchNetworkList(uint64_t a1, int a2, uint64_t a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_101507410;
  v10[3] = &unk_101F46778;
  v10[4] = a1;
  v11[8] = a2;
  sub_100014110(v11, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_100013C9C;
  v6[3] = &unk_101F46840;
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

  return sub_100014380(v11);
}

void sub_101507404(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101507410(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 72);
  sub_100014110(v4, a1 + 40);
  RegistrationController::fetchNetworkList_sync(v1, v2, v4);
  return sub_100014380(v4);
}

void sub_101507490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100014380(va);
  _Unwind_Resume(a1);
}

void RegistrationController::getSelectedNetwork(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1015076A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkList(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1015078B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkSelectionMode(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101507AC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkSelectionState(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101507CD0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkSelectionInfo(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  v6 = a2;
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      v8 = v7;
      (*(*v4 + 24))(v4, v7);
    }

    else
    {
      v8 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v8 = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101507EE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void RegistrationController::getNetworkNeedsReselect(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1000224C8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10150803C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::selectNetwork(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  v6[4] = a1;
  v7 = a2;
  sub_100014110(&v8, a4);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v10 = *(a3 + 2);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

uint64_t RegistrationController::isNetworkSelectionMenuEnabled(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10150DFEC;
  v7[3] = &unk_101F46D40;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A5A8;
    v12 = &unk_101F468B0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10005964C;
    v12 = &unk_101F46890;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void RegistrationController::isNetworkSelectionMenuEnabled(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  sub_1000224C8(v6, a3);
  v6[8] = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_101508494(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1015084AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 232);
  if (v4 && ((*(*v4 + 72))(v4, a2) & 1) != 0)
  {
    return 1;
  }

  v6 = *(a1 + 184);
  if (!v6)
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NAISelector not configured for network selection menu enabled query", &v11, 2u);
    }

    return 0;
  }

  v11 = 0;
  v12 = 0;
  (*(*v6 + 16))(&v11);
  v7 = v11;
  if (v11)
  {
    v5 = (*(*v11 + 96))(v11);
  }

  else
  {
    v5 = 0;
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (!v7)
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Neither network selection or NAI is available", &v11, 2u);
    }

    return 0;
  }

  return v5;
}

void sub_10150867C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getEncryptionStatus(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10150E0BC(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1015087D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrationController::getNRDisableStatus_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v12 = 0uLL;
  NRDisableStatus::NRDisableStatus(&v12, 1, 1);
  v5 = *(a1 + 928);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 928;
  do
  {
    if (*(v5 + 28) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < a2));
  }

  while (v5);
  if (v6 != a1 + 928 && *(v6 + 28) <= a2)
  {
    v12 = *(v6 + 32);
  }

  else
  {
LABEL_8:
    v7 = *v4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not find NR disable status", &v10, 2u);
    }
  }

  if (!RegistrationController::supports5GNSA_sync(a1) && ((NRDisableStatus::isSADisabledWithReason() & 1) != 0 || NRDisableStatus::isSADisabledWithReason()))
  {
    BYTE8(v12) = 1;
    HIDWORD(v12) |= 0x80000000;
  }

  v10 = 0;
  v11 = 0;
  RegistrationController::getModel_sync(a1, a2, &v10);
  if (v10)
  {
    v8 = (*(*v10 + 824))(v10);
    if ((v8 & 0x100) != 0 && (v8 & 1) == 0)
    {
      LOBYTE(v12) = 1;
      DWORD1(v12) |= 0x40000000u;
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v12;
}

void sub_101508994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getNRStatus_sync(uint64_t a1@<X0>, int a2@<W1>, NRStatus *a3@<X8>)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v18[0] = RegistrationController::getNRDisableStatus_sync(a1, a2);
  v18[1] = v7;
  if (capabilities::ct::supports5G(v18[0]))
  {
    v16 = 0;
    v17 = 0;
    RegistrationController::getModel_sync(a1, a2, &v16);
    v8 = v16;
    if (!v16)
    {
      v14 = *v6;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find model when checking NR status", buf, 2u);
      }

      goto LABEL_14;
    }

    if (RegistrationController::supports5GNSA_sync(a1))
    {
      if (NRDisableStatus::isSADisabledWithReason())
      {
        v9 = *v6;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = "#I 5G Standalone disabled by baseband due to VoLTE off. Remove switch";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        }
      }

      else
      {
        if (((*(*v8 + 840))(v8) & 0x100) != 0)
        {
          v13 = (*(*v8 + 816))(v8);
          if (NRDisableStatus::isSADisabledWithReasonMask(v18))
          {
            v15 = *v6;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v20 = HIDWORD(v18[0]);
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone disabled by baseband with reason 0x%x", buf, 8u);
            }

            LOBYTE(v6) = 0;
          }

          else
          {
            LODWORD(v6) = (v13 >> 8) & 1;
          }

          goto LABEL_15;
        }

        v9 = *v6;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = "#I 5G Standalone support not yet known. Remove switch";
          goto LABEL_13;
        }
      }
    }

    else
    {
      v9 = *v6;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "#I Carrier only supports 5G Standalone. Remove switch";
        goto LABEL_13;
      }
    }

LABEL_14:
    LOBYTE(v6) = 0;
    LOBYTE(v13) = 0;
LABEL_15:
    if (v17)
    {
      sub_100004A34(v17);
    }

    goto LABEL_17;
  }

  v11 = *v6;
  v12 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
  LOBYTE(v6) = 0;
  LOBYTE(v13) = 0;
  if (v12)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I 5G not supported when querying NR status", &v16, 2u);
    LOBYTE(v6) = 0;
    LOBYTE(v13) = 0;
  }

LABEL_17:
  NRStatus::NRStatus(a3, v13 & 1, v6, v18);
}

void sub_101508CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::getNRStatus(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10150E320;
  v7[3] = &unk_101F46D60;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v4 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    NRDisableStatus::NRDisableStatus(&block, 1, 1);
    NRStatus::NRStatus(a3, 0, 0, &block);
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150E384;
    v12 = &unk_101F46DA0;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    NRDisableStatus::NRDisableStatus(&block, 1, 1);
    NRStatus::NRStatus(a3, 0, 0, &block);
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10150E330;
    v12 = &unk_101F46D80;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v4, &block);
  }
}

uint64_t RegistrationController::getSupports5GStandalone(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a3;
  v6[1] = a1;
  v6[2] = &v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10150E3D8;
  v8[3] = &unk_101F46DC0;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150E6E4;
    v13 = &unk_101F46E00;
    v14 = &v16;
    v15 = &v9;
    v16 = 0;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10150E6A8;
    v13 = &unk_101F46DE0;
    v14 = &v16;
    v15 = &v9;
    v16 = 0;
    dispatch_sync(v3, &block);
  }

  return v16;
}

uint64_t RegistrationController::setSupports5GStandalone(uint64_t a1, int a2, char a3)
{
  v8 = a2;
  v7 = a3;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10150E720;
  v9[3] = &unk_101F46E20;
  v9[4] = a1 + 8;
  v9[5] = v6;
  v10 = v9;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10150E6E4;
    v14 = &unk_101F46E00;
    v15 = &v17;
    v16 = &v10;
    v17 = 0;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10150E6A8;
    v14 = &unk_101F46DE0;
    v15 = &v17;
    v16 = &v10;
    v17 = 0;
    dispatch_sync(v3, &block);
  }

  return v17;
}

void RegistrationController::setGeoMccs(uint64_t a1, int a2, uint64_t a3, int a4, __int16 a5)
{
  memset(__p, 0, sizeof(__p));
  sub_1001B964C(__p, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
  v9 = a4;
  v10 = a5;
  v11[0] = 0;
  v11[1] = 0;
  sub_100004AA0(v11, (a1 + 8));
  operator new();
}

void RegistrationController::getImsAndVoNRStateForBaseband(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100EBBFD4(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1015093F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void RegistrationController::updateVoNRStateForSlot(uint64_t a1, int a2, int a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void RegistrationController::setSatelliteSystemConfig(uint64_t a1, int a2, __int16 a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void RegistrationController::updateDynamicVoNRForSlot(capabilities::ct *a1, int a2, char a3)
{
  if (capabilities::ct::supportsVoNR(a1))
  {
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, a1 + 1);
    operator new();
  }
}

uint64_t sub_1015096DC(uint64_t a1)
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

uint64_t sub_10150975C(uint64_t a1)
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

uint64_t sub_1015097DC(uint64_t a1)
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

uint64_t sub_10150985C(uint64_t a1)
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

uint64_t sub_1015098DC(uint64_t a1)
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

uint64_t sub_10150995C(uint64_t a1)
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

uint64_t sub_1015099DC(uint64_t a1)
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

uint64_t sub_101509A5C(uint64_t a1)
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

uint64_t sub_101509ADC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_101509B74(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v17 = 0;
  v18 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v17);
  v3 = v17;
  if (v17)
  {
    v4 = (*(*v17 + 80))(v17);
    v5 = (*(*v3 + 112))(v3);
    v6 = (*(*v3 + 88))(v3);
    v7 = (*(*v3 + 928))(v3);
    v8 = 0x100000000000000;
    if (!v7)
    {
      v8 = 0;
    }

    v9 = &_mh_execute_header;
    if (!v5)
    {
      v9 = 0;
    }

    v10 = 0x1000000000000;
    if (!v6)
    {
      v10 = 0;
    }

    v11 = v4;
    if (v6)
    {
      v11 = 4;
    }

    sub_1014125EC(v1 + 16, v10 | v9 | v11 | v8);
  }

  else
  {
    v12 = *(v2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = subscriber::asString();
      *buf = 136315138;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not find model %s for registration display status query", buf, 0xCu);
    }

    sub_1014125EC(v1 + 16, 0);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_101509DA4(&v16);
  return sub_1000049E0(&v15);
}

void sub_101509D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_101509DA4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101509DA4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1015096DC(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_101509E08(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    v3 = (*(*v9 + 304))(v9);
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for cause code query", buf, 0xCu);
    }

    v3 = 0;
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_100106378(v1 + 16, v3);
  sub_101509F68(&v8);
  return sub_1000049E0(&v7);
}

void sub_101509F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_101509F68(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101509F68(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1000FF0B4(v1 + 16);
    operator delete();
  }

  return a1;
}

void sub_101509FB8(uint64_t a1@<X0>, MCC *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v8 = 0uLL;
  RegistrationController::getModel_sync(v4, **(v3 + 8), &v8);
  v5 = v8;
  if (v8)
  {
    (*(*v8 + 432))(v8);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (!v5)
  {
    v6 = *(v4 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      LODWORD(v8) = 136315138;
      *(&v8 + 4) = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for MCC query", &v8, 0xCu);
    }

    MCC::MCC(a2);
  }
}

void sub_10150A100(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v1);
  MCC::operator=();
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void sub_10150A15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10150A178(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v1);
  MCC::operator=();
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void sub_10150A1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10150A1F0(uint64_t a1@<X0>, MNC *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v8 = 0uLL;
  RegistrationController::getModel_sync(v4, **(v3 + 8), &v8);
  v5 = v8;
  if (v8)
  {
    (*(*v8 + 440))(v8);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (!v5)
  {
    v6 = *(v4 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      LODWORD(v8) = 136315138;
      *(&v8 + 4) = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for MNC query", &v8, 0xCu);
    }

    MNC::MNC(a2);
  }
}

void sub_10150A338(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v1);
  MCC::operator=();
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void sub_10150A394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10150A3B0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v1);
  MCC::operator=();
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

void sub_10150A40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10150A428(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v14 = 0;
  v15 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v14);
  if (v14)
  {
    (*(*v14 + 448))(v11);
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }

    (*(*v3 + 48))(v3, v11);
    if (v12 < 0)
    {
      v4 = v11;
LABEL_10:
      operator delete(v4[1]);
    }
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = subscriber::asString();
      *buf = 136315138;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find model %s for last known MCC query", buf, 0xCu);
    }

    MCC::MCC(v13);
    v6 = *(v1 + 40);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, v13);
    if ((v13[31] & 0x80000000) != 0)
    {
      v4 = v13;
      goto LABEL_10;
    }
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  sub_10002CC30(&v10);
  return sub_1000049E0(&v9);
}

void sub_10150A5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v26 = *(v24 - 56);
  if (v26)
  {
    sub_100004A34(v26);
  }

  sub_10002CC30(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150A634(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    (*(*v9 + 464))(&buf);
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for serving PLMN query", &buf, 0xCu);
    }

    buf = 0uLL;
    v12 = 0;
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }
  }

  (*(*v3 + 48))(v3, &buf);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(buf);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10002BA48(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10002BA48(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150A824(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    v3 = (*(*v9 + 472))(v9);
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT query", buf, 0xCu);
    }

    v3 = 11;
  }

  sub_101412888(v1 + 16, v3);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10150A978(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10150A978(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150A978(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10150975C(v1 + 16);
    operator delete();
  }

  return a1;
}

void sub_10150A9C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v8 = 0uLL;
  RegistrationController::getModel_sync(v4, *(v3 + 8), &v8);
  v5 = v8;
  if (v8)
  {
    (*(*v8 + 320))(v8);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  if (!v5)
  {
    v6 = *(v4 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      LODWORD(v8) = 136315138;
      *(&v8 + 4) = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for operator name query", &v8, 0xCu);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_10150AAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10150AB00(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

uint64_t *sub_10150AB64(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    (*(*v9 + 336))(&buf);
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for operator short name query", &buf, 0xCu);
    }

    buf = 0uLL;
    v12 = 0;
    v3 = *(v1 + 40);
    if (!v3)
    {
      sub_100022DB4();
    }
  }

  (*(*v3 + 48))(v3, &buf);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(buf);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10002BA48(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150AD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10002BA48(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150AD54(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v9);
  if (v9)
  {
    v3 = (*(*v9 + 160))(v9);
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for data attached query", buf, 0xCu);
    }

    v3 = 0;
  }

  sub_10000FFD0(v1 + 16, v3);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_100EDCE18(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150AE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150AEA0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v10 = 0;
  v11 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v10);
  v3 = v10;
  if (v10)
  {
    if ((*(*v10 + 152))(v10) & 1) != 0 || ((*(*v3 + 248))(v3))
    {
      v4 = 1;
    }

    else
    {
      v4 = (*(*v3 + 216))(v3);
    }
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = subscriber::asString();
      *buf = 136315138;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find model %s for voice service available query", buf, 0xCu);
    }

    v4 = 0;
  }

  sub_10000FFD0(v1 + 16, v4);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100EDCE18(&v9);
  return sub_1000049E0(&v8);
}

void sub_10150B02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10150B058(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_10150B094(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = (*(**(*v1 + 104) + 88))(*(*v1 + 104));
  object = xpc_BOOL_create(v2);
  if (!object)
  {
    object = xpc_null_create();
  }

  v6[0] = v1[1];
  v6[1] = "kRegistrationEmergencyCallBackMode";
  sub_10000F688(v6, &object, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(object);
  sub_100E0B28C(&v5);
  return sub_1000049E0(&v4);
}

void sub_10150B154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100E0B28C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10150B170(unsigned int **a1)
{
  v2 = a1;
  v1 = *a1;
  (*(**(**a1 + 88) + 184))(*(**a1 + 88), v1[2], v1[3], v1[4], v1[5], v1[6], *(**a1 + 1520));
  operator delete();
}

void sub_10150B224(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 88) + 192))(*(**a1 + 88), *(*a1 + 8));
  operator delete();
}

void sub_10150B2CC(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 88) + 200))(*(**a1 + 88), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

uint64_t sub_10150B378(uint64_t a1)
{
  v1 = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  v2 = *v1;
  RegistrationController::getModel_sync(*v1, **(v1 + 8), &v7);
  if (v7)
  {
    v3 = (*(*v7 + 472))(v7);
  }

  else
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = subscriber::asString();
      *buf = 136315138;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT query", buf, 0xCu);
    }

    v3 = 11;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v3;
}

void sub_10150B48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10150B4A8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10150B4E4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

__n128 sub_10150B59C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F46AC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  return result;
}

void sub_10150B5D4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10150B794;
  v6[3] = &unk_101F46B20;
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v6[4] = v4;
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_1001B964C(&__p, v3, v2, (v2 - v3) >> 1);
  v14 = 0;
  v15 = 0;
  sub_100004AA0(&v14, (v4 + 8));
  v5 = *(v4 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v14;
  v13 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    operator delete(v3);
  }
}

void sub_10150B730(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10150B748(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10150B7D0(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Resetting Voice Roaming preference as network settings have been reset", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 136));
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
        goto LABEL_9;
      }

LABEL_14:
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
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_9:
  v14 = *(v2 + 40);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v15)
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not erase Voice Roaming preference", buf, 2u);
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v13 & 1) == 0)
  {
LABEL_16:
    sub_100004A34(v11);
  }

LABEL_17:
  if (capabilities::ct::supports5G(v15))
  {
    v16 = *(v2 + 64);
    if (v16 != (v2 + 72))
    {
      do
      {
        v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v16 + 8));
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Resetting 5G Standalone enabled to carrier default", buf, 2u);
        }

        (*(*v16[5] + 848))(v16[5]);
        RegistrationController::update5GSACapabilityRestProperty_sync(v2, *(v16 + 8));
        v18 = v16[1];
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
            v19 = v16[2];
            v20 = *v19 == v16;
            v16 = v19;
          }

          while (!v20);
        }

        v16 = v19;
      }

      while (v19 != (v2 + 72));
    }
  }

  v21 = *(v2 + 232);
  if (v21)
  {
    (*(*v21 + 88))(v21);
  }

  sub_1000FF844(&v24);
  return sub_1000049E0(&v23);
}

void sub_10150BB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10150BBF0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F46BF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10150BC3C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  *buf = 0;
  v12 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), buf);
  v3 = *buf;
  if (*buf)
  {
    (*(**buf + 672))(&v9, *buf);
    v4 = (*(*v9 + 64))(v9);
    sub_101412B50(v1 + 16, v4 | &_mh_execute_header);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (!v3)
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not get model for ERI version query", buf, 2u);
    }

    sub_101412B50(v1 + 16, 0);
  }

  sub_10150BDE4(&v8);
  return sub_1000049E0(&v7);
}

void sub_10150BDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10150BDE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150BDE4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1011CA280(v1 + 16);
    operator delete();
  }

  return a1;
}

__n128 sub_10150BEA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F46C10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10150BED8(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10150C040;
  v5[3] = &unk_101F46C70;
  v5[4] = v3;
  v6 = *(a1 + 8);
  v7 = v2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (v3 + 8));
  v4 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

uint64_t sub_10150BFF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10150C040(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == *(a1 + 41))
  {
    v4 = v2[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (v3)
      {
        v5 = "true";
      }

      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2080;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current provisioning state %x matches requested %s, ignoring it", v7, 0x12u);
    }
  }

  else
  {
    v6 = *(*v2 + 328);

    v6();
  }
}

uint64_t sub_10150C1DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F46CB0;
  a2[1] = v2;
  return result;
}

void sub_10150C208(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10150C368;
  v5[3] = &unk_101F46D10;
  v5[4] = v3;
  v6 = v2;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (v3 + 8));
  v4 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C9C;
  block[3] = &unk_101F46840;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

uint64_t sub_10150C31C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10150C39C(int **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  (*(**(*v1 + 232) + 96))(*(*v1 + 232), v1[2]);
  v8 = 0;
  v9 = 0;
  RegistrationController::getModel_sync(v2, v1[2], &v8);
  if (v8)
  {
    v3 = v9;
    v7[0] = v8;
    v7[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RegistrationController::reevaluateNetworkScan_sync(v2, v7);
    if (v3)
    {
      sub_100004A34(v3);
LABEL_7:
      sub_100004A34(v3);
    }
  }

  else
  {
    v3 = v9;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  sub_100022FB0((v1 + 4), 0);
  sub_10150C4B4(&v6);
  return sub_1000049E0(&v5);
}

void sub_10150C47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_100004A34(v9);
    sub_100004A34(v9);
  }

  sub_10150C4B4(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150C4B4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100014380(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10150C504(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3 && (*(*v3 + 72))(v3, *(v1 + 8)))
  {
    (*(**(v2 + 232) + 56))(&buf);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

LABEL_31:
    (*(*v4 + 48))(v4, &buf);
    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*(&v32 + 1));
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if (SBYTE7(v29) < 0)
    {
      operator delete(buf);
    }

    goto LABEL_53;
  }

  v5 = *(v2 + 184);
  if (!v5)
  {
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NAISelector not configured for selected network query", &buf, 2u);
    }

    NetworkListOperator::NetworkListOperator(&buf);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    goto LABEL_31;
  }

  v26 = 0;
  v27 = 0;
  (*(*v5 + 16))(&v26);
  if (v26)
  {
    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    (*(*v26 + 40))(v26, v24, v22);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    buf = 0u;
    v29 = 0u;
    NetworkListOperator::NetworkListOperator(&buf);
    NetworkListOperator::setName();
    NetworkListOperator::decodeKey();
    sub_100F4B020(__dst, &buf);
    v6 = *(v1 + 40);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, __dst);
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
      operator delete(__dst[0]);
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*(&v32 + 1));
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if (SBYTE7(v29) < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    v7 = v24[0];
  }

  else
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Request for selected network not supported", &buf, 2u);
    }

    NetworkListOperator::NetworkListOperator(&buf);
    v10 = *(v1 + 40);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, &buf);
    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*(&v32 + 1));
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if ((SBYTE7(v29) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    v7 = buf;
  }

  operator delete(v7);
LABEL_51:
  if (v27)
  {
    sub_100004A34(v27);
  }

LABEL_53:
  sub_10150CA10(&v13);
  return sub_1000049E0(&v12);
}

void sub_10150C96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  v44 = *(v42 - 184);
  if (v44)
  {
    sub_100004A34(v44);
  }

  sub_10150CA10(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150CA10(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1015097DC(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10150CA60(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3 && (*(*v3 + 72))(v3, *(v1 + 8)))
  {
    (*(**(v2 + 232) + 64))(buf);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

LABEL_30:
    (*(*v4 + 48))(v4, buf);
    v29 = buf;
    sub_100F4B580(&v29);
    goto LABEL_35;
  }

  v5 = *(v2 + 184);
  if (!v5)
  {
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NAISelector not configured for network list query", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    *&v17 = 0;
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    goto LABEL_30;
  }

  v32 = 0;
  v33 = 0;
  (*(*v5 + 16))(&v32);
  if (v32)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v6 = (*(*v32 + 24))(v32);
    if (v6)
    {
      v7 = 0;
      do
      {
        v27[0] = 0;
        v27[1] = 0;
        v28 = 0;
        v25[0] = 0;
        v25[1] = 0;
        v26 = 0;
        (*(*v32 + 32))(v32, v7, v27, v25);
        v24 = 0;
        *__p = 0u;
        v23 = 0u;
        *v20 = 0u;
        v21 = 0u;
        *v18 = 0u;
        v19 = 0u;
        *buf = 0u;
        v17 = 0u;
        NetworkListOperator::NetworkListOperator(buf);
        NetworkListOperator::setName();
        NetworkListOperator::decodeKey();
        v8 = v30;
        if (v30 >= v31)
        {
          v9 = sub_100F4AEF0(&v29, buf);
        }

        else
        {
          sub_100F4B020(v30, buf);
          v9 = v8 + 136;
        }

        v30 = v9;
        if (SBYTE7(v23) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20[1]);
        }

        if (SHIBYTE(v19) < 0)
        {
          operator delete(v18[1]);
        }

        if (SBYTE7(v17) < 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27[0]);
        }

        v7 = (v7 + 1);
      }

      while (v6 != v7);
    }

    memset(buf, 0, sizeof(buf));
    *&v17 = 0;
    sub_100F4B410(buf, v29, v30, 0xF0F0F0F0F0F0F0F1 * ((v30 - v29) >> 3));
    v10 = *(v1 + 40);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, buf);
    v27[0] = buf;
    sub_100F4B580(v27);
    v27[0] = &v29;
    sub_100F4B580(v27);
  }

  else
  {
    v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Request for network list not supported", buf, 2u);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

LABEL_35:
  sub_10150CF64(&v15);
  return sub_1000049E0(&v14);
}

void sub_10150CEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 - 56);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10150CF64(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150CF64(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10150985C(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10150CFB4(unsigned int **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3 && (*(*v3 + 72))(v3, v1[2]))
  {
    v4 = (*(**(v2 + 232) + 40))(*(v2 + 232), v1[2]);
  }

  else
  {
    v5 = *(v2 + 184);
    if (v5)
    {
      *buf = 0;
      v11 = 0;
      (*(*v5 + 16))(buf);
      if ((*(**buf + 96))(*buf))
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      if (v11)
      {
        sub_100004A34(v11);
      }
    }

    else
    {
      v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v4 = 2;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "NAISelector not configured for network selection mode query", buf, 2u);
      }

      else
      {
        v4 = 2;
      }
    }
  }

  sub_101412BB0((v1 + 4), v4);
  sub_10150D190(&v9);
  return sub_1000049E0(&v8);
}

void sub_10150D160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10150D190(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150D190(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1015098DC(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10150D1E0(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  *buf = 0;
  v18 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), buf);
  v3 = *buf;
  if (*buf)
  {
    v4 = *(v2 + 232);
    if (v4 && (*(*v4 + 72))(v4, *(v1 + 8)))
    {
      v5 = *(v2 + 232);
      v6 = *(v1 + 8);
      (*(*v3 + 464))(&__p, v3);
      v7 = (*(*v5 + 104))(v5, v6, &__p);
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v8 = *(v2 + 184);
      if (v8)
      {
        __p = 0;
        v15 = 0;
        (*(*v8 + 16))(&__p);
        if ((*(*__p + 96))(__p))
        {
          v7 = (*(*__p + 64))(__p);
        }

        else
        {
          v7 = 0;
        }

        if (v15)
        {
          sub_100004A34(v15);
        }
      }

      else
      {
        v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p) = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "NAISelector not configured for network selection state query", &__p, 2u);
        }

        v7 = 0;
      }
    }

    sub_101412C10(v1 + 16, v7);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (!v3)
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not get model for network selection state query", buf, 2u);
    }

    sub_101412C10(v1 + 16, 0);
  }

  sub_10150D514(&v13);
  return sub_1000049E0(&v12);
}

void sub_10150D4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_10150D514(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150D514(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10150995C(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10150D564(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v36 = 0u;
  memset(v37, 0, 24);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  NetworkListOperator::NetworkListOperator(&v30);
  v28 = 0;
  v29 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v28);
  v3 = v28;
  if (v28)
  {
    v4 = *(v2 + 232);
    if (v4 && (*(*v4 + 72))(v4, *(v1 + 8)))
    {
      v5 = *(v2 + 232);
      v6 = *(v1 + 8);
      (*(*v3 + 464))(__p, v3);
      v7 = (*(*v5 + 104))(v5, v6, __p);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      v8 = (*(**(v2 + 232) + 40))(*(v2 + 232), *(v1 + 8));
      (*(**(v2 + 232) + 56))(buf);
      if (SBYTE7(v31) < 0)
      {
        operator delete(v30);
      }

      v30 = *buf;
      *&v31 = v17;
      HIBYTE(v17) = 0;
      buf[0] = 0;
      DWORD2(v31) = v18;
      MCC::operator=();
      MCC::operator=();
      if (SBYTE7(v37[0]) < 0)
      {
        operator delete(v36);
      }

      v36 = *v23;
      *&v37[0] = v24;
      HIBYTE(v24) = 0;
      LOBYTE(v23[0]) = 0;
      *(v37 + 8) = v25;
      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      (*(**(v2 + 184) + 16))(&v14);
      if ((*(*v14 + 96))(v14))
      {
        v7 = (*(*v14 + 64))(v14);
        memset(buf, 0, sizeof(buf));
        v17 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v27 = 0;
        (*(*v14 + 40))(v14, buf, __p);
        NetworkListOperator::setName();
        NetworkListOperator::decodeKey();
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(*buf);
        }

        v8 = 1;
      }

      else
      {
        v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v8 = 2;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Neither manual selection or NAI is supported", buf, 2u);
          v7 = 0;
        }

        else
        {
          v7 = 0;
          v8 = 2;
        }
      }

      if (v15)
      {
        sub_100004A34(v15);
      }
    }
  }

  else
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = 2;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get model for network selection info query", buf, 2u);
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 2;
    }
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_100F4B020(buf, &v30);
  sub_101412CFC(v1 + 16, v7, v8);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*buf);
  }

  if (SBYTE7(v37[0]) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(*(&v34 + 1));
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(*(&v32 + 1));
  }

  if (SBYTE7(v31) < 0)
  {
    operator delete(v30);
  }

  sub_10150DB3C(&v13);
  return sub_1000049E0(&v12);
}

void sub_10150DA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    sub_100004A34(a40);
  }

  sub_100F4B3AC(v40 - 192);
  sub_10150DB3C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150DB3C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1015099DC(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10150DB8C(unsigned int **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3 && (*(*v3 + 72))(v3, v1[2]))
  {
    v4 = (*(**(v2 + 232) + 128))(*(v2 + 232), v1[2]);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v4 = 0;
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Network selection is not enabled, assuming reselection is not needed", buf, 2u);
      v4 = 0;
    }
  }

  sub_10000FFD0((v1 + 4), v4);
  sub_100EDCE18(&v9);
  return sub_1000049E0(&v8);
}

void sub_10150DCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100EDCE18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150DCC8(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  v4 = sub_1015084AC(v2, *(v1 + 8));
  v5 = *v3;
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = (v1 + 48);
      if (*(v1 + 71) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Selecting network with code %s", buf, 0xCu);
    }

    v8 = *(v2 + 232);
    v9 = *(v1 + 8);
    if (v8)
    {
      v10 = (*(*v8 + 72))(v8, *(v1 + 8));
      v9 = *(v1 + 8);
      v11 = v1 + 48;
      v12 = *(v1 + 71);
      if (v10)
      {
        v13 = *(v2 + 232);
        if (v12 < 0)
        {
          sub_100005F2C(buf, *(v1 + 48), *(v1 + 56));
        }

        else
        {
          *buf = *v11;
          v20 = *(v1 + 64);
        }

        (*(*v13 + 112))(v13, v9, buf);
LABEL_20:
        if (SHIBYTE(v20) < 0)
        {
          operator delete(*buf);
        }

        v14 = 0;
        goto LABEL_23;
      }

      v15 = *(v2 + 264);
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = *(v2 + 264);
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
        v11 = v1 + 48;
LABEL_15:
        *buf = *v11;
        v20 = *(v11 + 16);
LABEL_17:
        (*(*v15 + 376))(v15, v9, buf, "due NAI selection");
        goto LABEL_20;
      }
    }

    sub_100005F2C(buf, *(v1 + 48), *(v1 + 56));
    goto LABEL_17;
  }

  v14 = 0x2D00000001;
  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Network selection is not supported", buf, 2u);
  }

LABEL_23:
  sub_100022FB0(v1 + 16, v14);
  sub_10150DF8C(&v18);
  return sub_1000049E0(&v17);
}

void sub_10150DF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10150DF8C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150DF8C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    sub_100014380(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10150DFFC(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = sub_1015084AC(*v1, *(v1 + 40));
  sub_10000FFD0(v1 + 8, v2);
  sub_10150E06C(&v5);
  return sub_1000049E0(&v4);
}

void sub_10150E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10150E06C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150E06C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_10150E0BC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10150E13C(int **a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), v1[2]);
  if (capabilities::ct::supportsSecurityStatus(v3))
  {
    v14 = 0;
    v15 = 0;
    RegistrationController::getModel_sync(v2, v1[2], &v14);
    if (v14)
    {
      v4 = (*(*v14 + 792))(v14);
      v5 = std::generic_category();
      v6 = 0;
      v7 = v4;
    }

    else
    {
      v9 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not find model when getting encryption status", buf, 2u);
      }

      v6 = 22;
      v5 = std::generic_category();
      v7 = 0;
    }

    sub_101412F38((v1 + 4), v7, v6, v5);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else
  {
    v8 = std::generic_category();
    sub_101412F38((v1 + 4), 0, 45, v8);
  }

  sub_10150E2D0(&v12);
  return sub_1000049E0(&v11);
}

void sub_10150E2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10150E2D0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150E2D0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_101509A5C(v1 + 16);
    operator delete();
  }

  return a1;
}

__n128 sub_10150E330(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  result = v4;
  v2[1].n128_u32[0] = v5;
  *v2 = result;
  return result;
}

__n128 sub_10150E384(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  result = v4;
  v2[1].n128_u32[0] = v5;
  *v2 = result;
  return result;
}

uint64_t sub_10150E3D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  **v1 = 0;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), **(v1 + 16));
  v18 = 0;
  v19 = 0;
  Model_sync = RegistrationController::getModel_sync(v2, **(v1 + 16), &v18);
  v5 = v18;
  if (!v18)
  {
    v13 = *v3;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find model when checking 5G Standalone support", v17, 2u);
    }

    v12 = 0x1600000000;
    goto LABEL_21;
  }

  if ((capabilities::ct::supports5G(Model_sync) & 1) == 0 || ((*(*v5 + 816))(v5) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!RegistrationController::supports5GNSA_sync(v2))
  {
    v14 = (*(*v5 + 840))(v5);
    **v1 = v14 & ((v14 & 0x100) >> 8);
    goto LABEL_20;
  }

  v6 = *(v2 + 928);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v2 + 928;
  v8 = **(v1 + 16);
  v9 = v2 + 928;
  do
  {
    if (*(v6 + 28) >= v8)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < v8));
  }

  while (v6);
  if (v9 == v7 || v8 < *(v9 + 28))
  {
    goto LABEL_12;
  }

  if (NRDisableStatus::isSADisabledWithReason())
  {
LABEL_20:
    v12 = 0x2D00000000;
LABEL_21:
    v15 = 1;
    goto LABEL_22;
  }

  if (NRDisableStatus::isSADisabledWithReason() & 1) != 0 || (NRDisableStatus::isSADisabledWithReason() & 1) != 0 || (NRDisableStatus::isSADisabledWithReason())
  {
    v12 = 0;
    v15 = 0;
    goto LABEL_22;
  }

  v5 = v18;
LABEL_12:
  v10 = (*(*v5 + 840))(v5);
  if ((v10 & 0x100) == 0)
  {
    v11 = *v3;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone support not yet known", v17, 2u);
    }

    v12 = 0x2300000000;
    goto LABEL_21;
  }

  v12 = 0;
  v15 = 0;
  **v1 = v10;
LABEL_22:
  if (v19)
  {
    sub_100004A34(v19);
  }

  return v15 | v12;
}

void sub_10150E680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10150E6A8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10150E6E4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10150E720(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), **(v1 + 8));
  v15 = 0;
  v16 = 0;
  Model_sync = RegistrationController::getModel_sync(v2, **(v1 + 8), &v15);
  v5 = v15;
  if (v15)
  {
    if (capabilities::ct::supports5G(Model_sync) & 1) != 0 && ((*(*v5 + 816))(v5))
    {
      v6 = *(v2 + 116);
      if (!v6)
      {
        goto LABEL_11;
      }

      v7 = **(v1 + 8);
      v8 = (v2 + 928);
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 == (v2 + 928) || v7 < *(v8 + 7))
      {
        goto LABEL_11;
      }

      if ((NRDisableStatus::isSADisabledWithReason() & 1) == 0 && (NRDisableStatus::isSADisabledWithReason() & 1) == 0 && (NRDisableStatus::isSADisabledWithReason() & 1) == 0 && (NRDisableStatus::isSADisabledWithReason() & 1) == 0)
      {
        v5 = v15;
LABEL_11:
        (*(*v5 + 808))(v5, **(v1 + 16));
        v9 = **(v1 + 8);
        v10 = **(v1 + 16);
        *buf = _NSConcreteStackBlock;
        v18 = 0x40000000;
        v19 = sub_100F7FAE4;
        v20 = &unk_101EF75F0;
        v21 = v2;
        v23 = v10;
        v22 = v9;
        sub_100F7F938(0x8012B, buf);
        RegistrationController::send5GStandaloneEnabledSettingFromPreference_sync(v2, **(v1 + 8), 1);
        RegistrationController::update5GSACapabilityRestProperty_sync(v2, **(v1 + 8));
        v11 = 0;
        v12 = 0;
        goto LABEL_21;
      }
    }

    v11 = 0x2D00000000;
  }

  else
  {
    v13 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find model when setting 5G Standalone support", buf, 2u);
    }

    v11 = 0x1600000000;
  }

  v12 = 1;
LABEL_21:
  if (v16)
  {
    sub_100004A34(v16);
  }

  return v12 | v11;
}

void sub_10150E9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10150E9C8(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  (*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  (*(**(v2 + 88) + 280))(*(v2 + 88), *(v1 + 8), v1 + 16, *(v1 + 40), *(v1 + 44));
  sub_10150EA90(&v5);
  return sub_1000049E0(&v4);
}

void sub_10150EA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10150EA90(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150EA90(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      *(v1 + 24) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10150EAE8(unsigned int **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  (*(**(*v1 + 48) + 16))(*(*v1 + 48), v1[2]);
  ImsStateForBaseband_sync = RegistrationController::getImsStateForBaseband_sync(v2, v1[2]);
  VoNRStateForBaseband_sync = RegistrationController::getVoNRStateForBaseband_sync(v2, v1[2]);
  sub_1014126F0((v1 + 4), ImsStateForBaseband_sync, VoNRStateForBaseband_sync);
  sub_10150EBA4(&v7);
  return sub_1000049E0(&v6);
}

void sub_10150EB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10150EBA4(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10150EBA4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100EBC06C(v1 + 16);
    operator delete();
  }

  return a1;
}

void sub_10150EBF4(unsigned int **a1)
{
  v1 = a1;
  RegistrationController::updateVoNRStateForSlot_sync(*(*a1 + 1), **a1, (*a1)[1]);
  operator delete();
}

void sub_10150EC78(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 88) + 288))(*(**a1 + 88), *(*a1 + 8), *a1 + 12);
  operator delete();
}

void sub_10150ED2C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  v18 = 0;
  v19 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 2), &v18);
  v4 = v18;
  if (v18)
  {
    VoNRStateForBaseband_sync = RegistrationController::getVoNRStateForBaseband_sync(v2, *(v1 + 2));
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString();
      *buf = 136315138;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Current VoNR support state = %s", buf, 0xCu);
    }

    v8 = *(*v4 + 960);
    if (*(v1 + 12) == 1)
    {
      if ((v8(v4) & 1) == 0)
      {
        v9 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Enabling dynamic VoNR for emergency mode. No change to VoNR is allowed when dynamic VoNR is ON", buf, 2u);
        }

        (*(*v4 + 968))(v4, 1);
      }

      if (VoNRStateForBaseband_sync != 1)
      {
        v10 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I VoNR state was not kFullSupport. Sending VoNR = on to BB!", buf, 2u);
        }

        VoNRStateForBaseband_sync = 1;
LABEL_13:
        RegistrationController::updateVoNRStateForSlot_sync(v2, *(v1 + 2), VoNRStateForBaseband_sync);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v14 = v8(v4);
    v15 = *v3;
    if (v14)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Dynamic VoNR was enabled. Resetting it...", buf, 2u);
      }

      (*(*v4 + 968))(v4, 0);
      if (VoNRStateForBaseband_sync != 1)
      {
        v16 = *v3;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = asString();
          *buf = 136315138;
          v21 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I User intended VoNR support state was not 'ON', reporting VoNR state as %s to baseband", buf, 0xCu);
        }

        goto LABEL_13;
      }

LABEL_23:
      if (v19)
      {
        sub_100004A34(v19);
      }

      operator delete();
    }

    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v12 = "Trying to disable dynamic VoNR but it was not enabled";
    v13 = v15;
  }

  else
  {
    v11 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v12 = "Did not find Registration Model!";
    v13 = v11;
  }

  _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, 2u);
  goto LABEL_23;
}

void sub_10150F0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void STK_Controller::create(uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

uint64_t sub_10150F918(uint64_t a1)
{
  *a1 = off_101F470D8;
  v2 = (a1 + 56);
  *(a1 + 56) = off_101F471F8;
  v3 = *(a1 + 328);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1000FEFCC((a1 + 296));
  sub_1002B73A8(a1 + 272, *(a1 + 280));
  sub_1008F08B0(a1 + 248, *(a1 + 256));
  sub_100359978(a1 + 224, *(a1 + 232));
  sub_10006DCAC(a1 + 200, *(a1 + 208));
  sub_1000D6F38(a1 + 152);
  v4 = *(a1 + 136);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100D92208(*(a1 + 112));
  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    sub_100004A34(v7);
  }

  STKStateModelDelegateInterface::~STKStateModelDelegateInterface(v2);
  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  STK_Interface::~STK_Interface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10150FA7C(uint64_t a1)
{
  sub_10150F918(a1);

  operator delete();
}

void sub_10150FAB4(uint64_t a1)
{
  sub_10150F918(a1 - 56);

  operator delete();
}

void sub_10150FAF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v14 = 0;
  v15 = 0;
  STK_Controller::getStateModel_sync(a1, v2, &v14);
  v5 = v14;
  v6 = *v4;
  v7 = *v4;
  if (v14)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I There has been a SIM Refresh, sending out Idle Text Wipe event", buf, 2u);
    }

    v10 = 0;
    v9[1] = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v8 = *v5;
    *buf = 12;
    (*(v8 + 40))(v5, buf);
    sub_100D38A2C(buf);
    SetupIdleText::~SetupIdleText(v9);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find state model upon SIM refresh event", buf, 2u);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10150FCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, int a17)
{
  sub_100D38A2C(&a17);
  SetupIdleText::~SetupIdleText(&a9);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10150FCE4(uint64_t a1, const void **a2)
{
  v3 = (a1 + 152);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a1 + 175);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 160);
  }

  if (v5 != v6 || (v4 >= 0 ? (v8 = a2) : (v8 = *a2), v7 >= 0 ? (v9 = v3) : (v9 = *v3), result = memcmp(v8, v9, v5), result))
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v3;
      if (v7 < 0)
      {
        v12 = *v3;
      }

      *buf = 136446210;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Language has changed to %{public}s", buf, 0xCu);
      LOBYTE(v7) = *(a1 + 175);
    }

    if ((v7 & 0x80) != 0)
    {
      v3 = *v3;
    }

    sub_10000501C(__p, v3);
    (*(*a1 + 120))(a1, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    result = *(a1 + 320);
    if (result)
    {
      return (*(*result + 24))(result, a1 + 176);
    }
  }

  return result;
}

void sub_10150FE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10150FE90(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 216))
  {
    v4 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v5 = *(a1 + 200);
    while (1)
    {
      v6 = *(v4 + 7) == *(v5 + 7) && *(v4 + 8) == *(v5 + 8);
      if (!v6)
      {
        break;
      }

      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v6 = *v4 == v8;
          v8 = v4;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v4 == a2 + 1)
      {
        return;
      }
    }
  }

  sub_101510A20(a1);
  v11 = *(a1 + 104);
  if (v11 != (a1 + 112))
  {
    v12 = a2 + 1;
    v13 = (a1 + 208);
    do
    {
      v14 = *v12;
        ;
      }

        ;
      }

      v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), i);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = asString();
        v19 = asString();
        *buf = 136315394;
        v23 = v18;
        v24 = 2080;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I RAT has changed from %s to %s", buf, 0x16u);
      }

      v20 = v11[1];
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
          v21 = v11[2];
          v6 = *v21 == v11;
          v11 = v21;
        }

        while (!v6);
      }

      v11 = v21;
    }

    while (v21 != (a1 + 112));
  }
}

void sub_101510138(uint64_t a1, uint64_t a2)
{
  sub_101510A20(a1);
  v4 = *(a1 + 224);
  if (v4 != (a1 + 232))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v4 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if ((BasicSimInfo::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
      if (v10 == (a1 + 232))
      {
        return;
      }
    }

    v7 = *(v4 + 8);
LABEL_12:
    sub_101515B28(a1, v7, (v4 + 5));
    goto LABEL_13;
  }
}

void sub_101510210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  v3 = (a1 + 256);
  if (v2 != (a1 + 256))
  {
    v5 = (a2 + 8);
    v35 = a1 + 280;
    while (1)
    {
      v39 = 0;
      v40 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
        break;
      }

      v14 = v12[3];
      v13 = v12[4];
      if (!v13)
      {
        goto LABEL_10;
      }

      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
LABEL_11:
      (**v14)(&v39, v14, (v2 + 32));
      if ((v15 & 1) == 0)
      {
        sub_100004A34(v13);
      }

      if (v39 && !*(v39 + 49))
      {
        v20 = *(v39 + 52);
        v21 = *v5;
        if (!*v5)
        {
          goto LABEL_34;
        }

        v22 = v5;
        do
        {
          v23 = sub_1000068BC((v21 + 32), v2 + 32);
          if ((v23 & 0x80u) == 0)
          {
            v22 = v21;
          }

          v21 = *(v21 + ((v23 >> 4) & 8));
        }

        while (v21);
        if (v22 == v5 || (sub_1000068BC(v2 + 4, v22 + 32) & 0x80) != 0)
        {
LABEL_34:
          v22 = v5;
        }

        v24 = (*(**(a1 + 48) + 16))(*(a1 + 48), v20);
        v25 = v24;
        if (v5 == v22 || (v27 = *(v2 + 7), v26 = *(v2 + 8), v29 = v22 + 56, v28 = *(v22 + 7), v26 - v27 != v29[1] - v28))
        {
LABEL_40:
          if (*(a1 + 288) && capabilities::ct::supportsSTKSendIMSRegEvent(v24))
          {
            v30 = sub_100007A6C(a1 + 272, (v39 + 24));
            if (v35 == v30 || *(v30 + 176) == *(v30 + 184))
            {
              v34 = *v25;
              if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I impu absent in ims_info_ready", buf, 2u);
              }
            }

            else
            {
              *buf = 0;
              v37 = 0;
              v38 = 0;
              v32 = *(v2 + 7);
              v31 = *(v2 + 8);
              while (v32 != v31)
              {
                if (*(v32 + 24) == 2)
                {
                  sub_100005308(buf, v32);
                }

                v32 += 32;
              }

              (*(*a1 + 136))(a1, v20, buf, 200, 0);
              v41 = buf;
              sub_1000087B4(&v41);
            }
          }

          v16 = 0;
        }

        else
        {
          while (v27 != v26)
          {
            v24 = sub_100C1C784(v27, v28);
            if (!v24)
            {
              goto LABEL_40;
            }

            v27 += 32;
            v28 += 4;
          }

          v33 = *v25;
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I No change in IMS reg identities", buf, 2u);
          }

          v16 = 1;
        }
      }

      else
      {
        v16 = 3;
      }

      if (v40)
      {
        sub_100004A34(v40);
      }

      if (v16 == 3 || !v16)
      {
        v17 = *(v2 + 1);
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
            v18 = *(v2 + 2);
            v19 = *v18 == v2;
            v2 = v18;
          }

          while (!v19);
        }

        v2 = v18;
        if (v18 != v3)
        {
          continue;
        }
      }

      return;
    }

    v14 = 0;
LABEL_10:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_11;
  }
}

void sub_1015105BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void **a16)
{
  a16 = &a11;
  sub_1000087B4(&a16);
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(a1);
}

void sub_101510600()
{
  if (v0)
  {
    JUMPOUT(0x1015105F4);
  }

  JUMPOUT(0x1015105ECLL);
}

void sub_10151060C(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

uint64_t STK_Controller::createSTKSimSlotInfo_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

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
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    v6 = *(v5 + 44);
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  return v6 | (a2 << 32);
}

unint64_t sub_10151074C(uint64_t a1, unint64_t a2)
{
  result = HIDWORD(a2);
  if (!HIDWORD(a2))
  {
    v4 = *(a1 + 224);
    v5 = (a1 + 232);
    if (v4 != v5)
    {
      while (*(v4 + 11) != a2)
      {
        v6 = v4[1];
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
            v7 = v4[2];
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
        if (v7 == v5)
        {
          return 0;
        }
      }
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 8);
    }
  }

  return result;
}

uint64_t STK_Controller::shouldAllowSTK_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = *(a1 + 232);
  if (v5)
  {
    v6 = a1 + 232;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v6 != a1 + 232 && *(v6 + 32) <= a2)
    {
      v22 = *(v6 + 56);
      v21 = *(v6 + 64);
      while (v22 != v21)
      {
        if ((*v22 - 3) <= 1)
        {
          v23 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v25) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I The SIM is a 1x SIM, handling STK", &v25, 2u);
          }

          return 1;
        }

        ++v22;
      }
    }
  }

  v9 = *(a1 + 208);
  v8 = a1 + 208;
  v7 = v9;
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = v8;
  do
  {
    if (*(v7 + 28) >= a2)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 28) < a2));
  }

  while (v7);
  if (v10 == v8)
  {
LABEL_30:
    v11 = 1;
    goto LABEL_31;
  }

  v11 = 1;
  if (*(v10 + 28) > a2)
  {
LABEL_31:
    v19 = 1;
    return v19 | v11;
  }

  v12 = *(v10 + 32);
  v11 = v12 - 6 < 0xFFFFFFFD && v12 != 8;
  if (v12 <= 8 && ((1 << v12) & 0x138) != 0)
  {
    v14 = *v4;
    if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v25) = 0;
    v15 = "#I The device is on CDMA mode, STK is not valid in this state. Suppressing STK events";
    v16 = v14;
    v17 = 2;
    goto LABEL_24;
  }

  v24 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = asString();
    v15 = "#I Handling STK API as current RAT is %s";
    v16 = v24;
    v17 = 12;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v25, v17);
  }

LABEL_25:
  if (v12 > 8 || ((1 << v12) & 0x138) == 0)
  {
    goto LABEL_31;
  }

  v19 = 0;
  return v19 | v11;
}

uint64_t sub_101510A20(uint64_t result)
{
  v1 = *(result + 104);
  v2 = (result + 112);
  if (v1 != (result + 112))
  {
    v3 = result;
    do
    {
      v4 = v1[5];
      shouldAllowSTK_sync = STK_Controller::shouldAllowSTK_sync(v3, *(v1 + 8));
      result = (*(*v4 + 80))(v4, shouldAllowSTK_sync);
      v6 = v1[1];
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
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }

  return result;
}

uint64_t STK_Controller::validateState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v17 = 0;
  v18 = 0;
  STK_Controller::getStateModel_sync(a1, v4, &v17);
  if (v17)
  {
    (*(*v17 + 152))(buf);
    v7 = *buf ^ (*buf >> 31);
    if (v7 >= 0x1A)
    {
      sub_100100ED4();
    }

    v8 = dword_101982008[v7];
    v9 = sub_100D38A2C(buf);
    if (v8 == v3)
    {
      if (*(a1 + 144) != 2 || (capabilities::ct::defaultVinylCardTypeToGSMA(v9) & 1) != 0)
      {
        v10 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        v15 = asString();
        *buf = 136315394;
        v20 = v14;
        v21 = 2080;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Current state's command %s does not match with given %s", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v12 = asString();
      *buf = 136315138;
      v20 = v12;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not find state model when validating state: %s", buf, 0xCu);
    }
  }

  v10 = 0;
LABEL_12:
  if (v18)
  {
    sub_100004A34(v18);
  }

  return v10;
}

void sub_101510CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t STK_Controller::getStateModel_sync@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 112);
  result = a1 + 112;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = result;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 != result && *(v6 + 32) <= a2)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    *a3 = v8;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_101510D58(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t STK_Controller::getCurrentAccessTechnology_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 208);
  v2 = a1 + 208;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v5 == v2)
  {
    return 0;
  }

  if (*(v5 + 28) > a2)
  {
    return 0;
  }

  v6 = *(v5 + 32);
  if (v6 > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_101981FDC[v6];
  }
}

void sub_101510E80(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

uint64_t sub_101510F94(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = a3[4];
  v6 = *(a1 + 88);
  v7 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v7);
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = a3[2];
  v12 = a3[3];
  if (v5 == -1)
  {
    v17 = a3[5];
    v18 = *(*v6 + 40);

    return v18(v6, STKSimSlotInfo_sync, v9, v10, v11, v12, v17);
  }

  else
  {
    v13 = a3[4];
    v14 = a3[5];
    v15 = *(*v6 + 48);

    return v15(v6, STKSimSlotInfo_sync, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_10151109C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v7 = *(a1 + 88);
  v8 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v8);
  v10 = *a3;
  v11 = *(a3 + 4);
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[5];
  v15 = *(*v7 + 64);

  return v15(v7, STKSimSlotInfo_sync, v10, v11, v12, v13, a4, v14);
}

uint64_t sub_101511158(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 88);
  v10 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v10);
  return (*(*v9 + 56))(v9, STKSimSlotInfo_sync, *a3, *(a3 + 4), a3[2], a3[3], a4, a5, a3[5]);
}

uint64_t sub_101511224(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v9 = 0;
  v5 = *(a1 + 88);
  v6 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v6);
  return (*(*v5 + 160))(v5, STKSimSlotInfo_sync, 0, &v9, *a3, *(a3 + 4), a3[2], a3[3], a3[5]);
}

uint64_t sub_1015112E4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v10 = 0;
  v9 = a3[3] < 2;
  v5 = *(a1 + 88);
  v6 = (*(**a2 + 32))();
  STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v6);
  return (*(*v5 + 160))(v5, STKSimSlotInfo_sync, &v9, &v10, *a3, *(a3 + 4), a3[2], a3[3], a3[5]);
}

void *sub_1015113B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(**a2 + 56))(v12);
  if (v13)
  {
    SetupMenu::~SetupMenu(v12);
    v9 = *(a1 + 88);
    v10 = (*(**a2 + 32))();
    STKSimSlotInfo_sync = STK_Controller::createSTKSimSlotInfo_sync(a1, v10);
    return (*(*v9 + 72))(v9, STKSimSlotInfo_sync, a3, a4);
  }

  return result;
}

uint64_t sub_1015114A8(uint64_t a1)
{
  v2 = sub_1009FC5C8();
  if ((v2 & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Terminal is busy: No clients registered for STK notifications", v5, 2u);
    }
  }

  return v2 ^ 1u;
}

void sub_10151152C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101511580(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015115C0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1015115EC(ServiceManager::Service *this)
{
  *this = off_101F47390;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101511648(ServiceManager::Service *this)
{
  *this = off_101F47390;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1015116C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10151170C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    sub_10151060C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10151060C(v4, 0);
}

void sub_10151179C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

void sub_101511878(uint64_t a1, int a2, ServiceStage *this)
{
  if (a2 == 3)
  {
    v3 = *(a1 + 8);
    ServiceStage::holdOffStage(&group[1], this);
    v5[0] = 0;
    v5[1] = 0;
    sub_100004AA0(v5, (v3 + 8));
    operator new();
  }
}

void sub_1015119B4(uint64_t **a1)
{
  v2 = a1;
  v1 = *(**a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101511E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object, uint64_t a20, std::__shared_weak_count *a21, dispatch_object_t a22, uint64_t a23, uint64_t a24)
{
  sub_100D92208(a15);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  operator delete();
}

void sub_101511F14(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F47450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101511F90(STKCommandDriverDelegateInterface *this)
{
  *this = off_101F47510;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  STKCommandDriverDelegateInterface::~STKCommandDriverDelegateInterface(this);
}

void sub_101511FEC(STKCommandDriverDelegateInterface *this)
{
  *this = off_101F47510;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  STKCommandDriverDelegateInterface::~STKCommandDriverDelegateInterface(this);

  operator delete();
}

uint64_t sub_10151205C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 8);
  if (v7)
  {
    v11 = *(a1 + 8);
    v12 = a2;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_1015160B0;
    v13[3] = &unk_101F478F0;
    v13[4] = v7 + 8;
    v13[5] = &v11;
    v14 = v13;
    v8 = *(v7 + 24);
    if (*(v7 + 32))
    {
      v21 = 0;
      block = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_1015160C0;
      v18 = &unk_101F47930;
      v19 = &v21;
      v20 = &v14;
      dispatch_async_and_wait(v8, &block);
    }

    else
    {
      v21 = 0;
      block = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_1000B1AF4;
      v18 = &unk_101F47910;
      v19 = &v21;
      v20 = &v14;
      dispatch_sync(v8, &block);
    }

    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  sub_100004A34(v6);
  return v9;
}

void sub_1015121DC(uint64_t a1, uint64_t a2, unsigned int *a3)
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
        sub_100D448D4(v10, a3);
        v11 = v8;
        v12 = a2;
        sub_100D448D4(&v13, v10);
        v9[0] = 0;
        v9[1] = 0;
        sub_100004AA0(v9, (v8 + 8));
        operator new();
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1015133A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_100D2F09C(&a13);
    ModelBase::~ModelBase(v14);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015134E8(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v8[0] = 0;
        v8[1] = 0;
        sub_100004AA0(v8, (v7 + 8));
        operator new();
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_101513628(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7)
    {
      v11 = *(a1 + 8);
      v12 = a2;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = sub_101516414;
      v13[3] = &unk_101F47950;
      v13[4] = v7 + 8;
      v13[5] = &v11;
      v14 = v13;
      v8 = *(v7 + 24);
      if (*(v7 + 32))
      {
        v21 = 0;
        block = _NSConcreteStackBlock;
        v16 = 0x40000000;
        v17 = sub_10006A5E4;
        v18 = &unk_101F47990;
        v19 = &v21;
        v20 = &v14;
        dispatch_async_and_wait(v8, &block);
      }

      else
      {
        v21 = 0;
        block = _NSConcreteStackBlock;
        v16 = 0x40000000;
        v17 = sub_100059688;
        v18 = &unk_101F47970;
        v19 = &v21;
        v20 = &v14;
        dispatch_sync(v8, &block);
      }

      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    sub_100004A34(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1015137A8(STKCommandDriverDelegateInterface *this)
{
  *this = off_101F47510;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  STKCommandDriverDelegateInterface::~STKCommandDriverDelegateInterface(this);
}

void sub_101513804(STKCommandDriverDelegateInterface *this)
{
  *this = off_101F47510;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  STKCommandDriverDelegateInterface::~STKCommandDriverDelegateInterface(this);

  operator delete();
}

uint64_t sub_101513874(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void *sub_1015138C0(void *a1)
{
  *a1 = off_101F47570;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151390C(void *a1)
{
  *a1 = off_101F47570;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_101513978(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_101513A28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101513ACC(void *a1)
{
  *a1 = off_101F475C0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101513B18(void *a1)
{
  *a1 = off_101F475C0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101513C60(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F47600;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_101513C8C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_101513D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101513DF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F47680;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101513E28(void *a1)
{
  v2 = a1[1];
  v3 = *v2;
  v9 = *(v2 + 2);
  *v8 = v3;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  v4 = *(v2 + 24);
  v11 = *(v2 + 5);
  *__p = v4;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 3) = 0;
  read_rest_value();
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

uint64_t sub_101513F08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101513FD0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F47700;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101514008(void *a1, xpc_object_t *a2)
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

  sub_100109E38(v3, a2);
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

uint64_t sub_1015140E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015141A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F47780;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015141E0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15, &v18);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_1015143A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1015143EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015144B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F47800;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015144EC(void *a1, xpc_object_t *a2)
{
  v2 = a1;
  v3 = a1[1];
  v5 = v3 + 1;
  v4 = v3[1];
  v36 = *v3;
  v37 = v4;
  if (v3[2])
  {
    v4[2] = &v37;
    *v3 = v5;
    *v5 = 0;
    v3[2] = 0;
  }

  else
  {
    v36 = &v37;
  }

  v6 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  sub_1008F08B0(v3, v3[1]);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v5;
  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    object[0] = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v44, object, 0);
    xpc_release(object[0]);
    object[0] = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v35 = v6;
    if (xpc_get_type(v6) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v6);
    }

    else
    {
      count = 0;
    }

    v34 = v2;
    sub_100008EA4(v43, object, count);
    xpc_release(object[0]);
    for (i = v45; ; i = ++v45)
    {
      if (i == v43[1] && v44 == v43[0])
      {
        xpc_release(v43[0]);
        xpc_release(v44);
        v2 = v34;
        v6 = v35;
        goto LABEL_81;
      }

      v42 = 0;
      object[0] = &v44;
      object[1] = i;
      sub_10003EAD4(object, &v42);
      if (xpc_get_type(v42) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_79:
      xpc_release(v42);
    }

    *__p = 0u;
    v41 = 0u;
    *object = 0u;
    v9 = v42;
    if (v42)
    {
      xpc_retain(v42);
      v48 = v9;
    }

    else
    {
      v9 = xpc_null_create();
      v48 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_29;
      }
    }

    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      xpc_retain(v9);
      v10 = v9;
LABEL_30:
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v53 = &v48;
        v54 = "first";
        sub_100006354(&v53, &v51);
        read_rest_value();
        xpc_release(v51);
        v46[0] = &v48;
        v46[1] = "second";
        sub_100006354(v46, &v47);
        v11 = v47;
        if (v47 && xpc_get_type(v47) == &_xpc_type_array)
        {
          xpc_retain(v11);
        }

        else
        {
          v11 = xpc_null_create();
        }

        v12 = __p[1];
        v13 = v41;
        while (v13 != v12)
        {
          v14 = *(v13 - 9);
          v13 -= 4;
          if (v14 < 0)
          {
            operator delete(*v13);
          }
        }

        *&v41 = v12;
        if (xpc_get_type(v11) == &_xpc_type_array)
        {
          v53 = v11;
          if (v11)
          {
            xpc_retain(v11);
          }

          else
          {
            v53 = xpc_null_create();
          }

          sub_100008EA4(&v51, &v53, 0);
          xpc_release(v53);
          v53 = v11;
          if (v11)
          {
            xpc_retain(v11);
          }

          else
          {
            v53 = xpc_null_create();
          }

          if (xpc_get_type(v11) == &_xpc_type_array)
          {
            v15 = xpc_array_get_count(v11);
          }

          else
          {
            v15 = 0;
          }

          sub_100008EA4(v50, &v53, v15);
          xpc_release(v53);
          for (j = v52; j != v50[1] || v51 != v50[0]; j = ++v52)
          {
            v49[0] = &v51;
            v49[1] = j;
            v17 = v41;
            if (v41 >= *(&v41 + 1))
            {
              v19 = (v41 - __p[1]) >> 5;
              v20 = v19 + 1;
              if ((v19 + 1) >> 59)
              {
                sub_1000CE3D4();
              }

              v21 = *(&v41 + 1) - __p[1];
              if ((*(&v41 + 1) - __p[1]) >> 4 > v20)
              {
                v20 = v21 >> 4;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFE0)
              {
                v22 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v22 = v20;
              }

              if (v22)
              {
                sub_1008F1114(&__p[1], v22);
              }

              v23 = (32 * v19);
              *v23 = 0u;
              v23[1] = 0u;
              v25 = __p[1];
              v24 = v41;
              v26 = __p[1] + 32 * v19 - v41;
              v57 = v23 + __p[1] - v41;
              v58 = v57;
              v53 = &__p[1];
              v54 = &v57;
              v55 = &v58;
              v56 = 0;
              v27 = __p[1];
              v28 = v57;
              if (v41 == __p[1])
              {
                LOBYTE(v56) = 1;
              }

              else
              {
                do
                {
                  v29 = *v27;
                  *(v28 + 2) = v27[2];
                  *v28 = v29;
                  v27[1] = 0;
                  v27[2] = 0;
                  *v27 = 0;
                  *(v28 + 6) = *(v27 + 6);
                  v27 += 4;
                  v28 += 32;
                }

                while (v27 != v24);
                v58 = v28;
                LOBYTE(v56) = 1;
                do
                {
                  if (*(v25 + 23) < 0)
                  {
                    operator delete(*v25);
                  }

                  v25 += 4;
                }

                while (v25 != v24);
              }

              v18 = v23 + 2;
              sub_1008F10DC(&v53);
              v30 = __p[1];
              __p[1] = v26;
              v41 = (v23 + 2);
              if (v30)
              {
                operator delete(v30);
              }
            }

            else
            {
              *v41 = 0u;
              *(v17 + 16) = 0u;
              v18 = (v17 + 32);
            }

            *&v41 = v18;
            sub_100008EF0(v49, &v53);
            sub_100C1C56C((v18 - 2), &v53);
            xpc_release(v53);
          }

          xpc_release(v50[0]);
          xpc_release(v51);
        }

        xpc_release(v11);
        xpc_release(v47);
        v10 = v48;
      }

      xpc_release(v10);
      xpc_release(v9);
      v51 = 0;
      if (!*sub_100005C2C(v3, &v51, object))
      {
        operator new();
      }

      v53 = &__p[1];
      sub_10003CA58(&v53);
      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(object[0]);
      }

      goto LABEL_79;
    }

    v10 = xpc_null_create();
LABEL_29:
    v48 = v10;
    goto LABEL_30;
  }

LABEL_81:
  xpc_release(v6);
  v31 = v2[3];
  v32 = v2[4];
  v33 = (v2[2] + (v32 >> 1));
  if (v32)
  {
    v31 = *(*v33 + v31);
  }

  v31(v33, &v36);
  sub_1008F08B0(&v36, v37);
}

void sub_101514BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, xpc_object_t a22, uint64_t a23, xpc_object_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t a28, xpc_object_t a29)
{
  xpc_release(object);
  object = 0;
  xpc_release(a24);
  xpc_release(a10);
  sub_1008F08B0(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_101514D6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101514E28(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F47880;
  a2[1] = v2;
  return result;
}

uint64_t sub_101514E5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101514EA8(void **a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = v2[11];
  if (v4)
  {
    v5 = v1[1];
    *buf = v5;
    if (v5)
    {
      dispatch_retain(v5);
      if (*buf)
      {
        dispatch_group_enter(*buf);
      }
    }

    (*(*v4 + 32))(v4, buf);
    if (*buf)
    {
      dispatch_group_leave(*buf);
      if (*buf)
      {
        dispatch_release(*buf);
      }
    }
  }

  v6 = v2[13];
  if (v6 != v2 + 14)
  {
    do
    {
      v7 = v6[5];
      v8 = v1[1];
      group = v8;
      if (v8)
      {
        dispatch_retain(v8);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      (*(*v7 + 24))(v7, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v2 + 14);
  }

  ctu::RestModule::disconnect((v2 + 16));
  v12 = (v2 + 37);
  for (i = v2[38]; i != v12; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC(v12);
  sub_1000FF844(&v16);
  return sub_1000049E0(&v15);
}

void sub_101515078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t a12, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_1015150D4(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", &buf, 2u);
  }

  aBlock[6] = 0;
  v10 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_101513874;
  aBlock[3] = &unk_101F47540;
  aBlock[4] = v2 + 8;
  aBlock[5] = sub_10150FAF0;
  v10 = _Block_copy(aBlock);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      sub_1008F4138(v11, &v10, *(v2 + 24));
      sub_1008F4180(&buf, v11);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10151581C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, dispatch_group_t group, uint64_t a31)
{
  sub_1000062D4(&group);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101515994(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  v3 = *(v1 + 88);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  (*(**(v1 + 80) + 24))(buf);
  v4 = *buf;
  memset(buf, 0, sizeof(buf));
  v5 = *(v1 + 328);
  *(v1 + 320) = v4;
  if (v5)
  {
    sub_100004A34(v5);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  (*(**(v1 + 320) + 16))(*(v1 + 320));
  v6 = *(v1 + 320);
  if (v6)
  {
    (*(*v6 + 24))(v6, v1 + 176);
  }

  operator delete();
}

void sub_101515B28(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13 = 0;
  v14 = 0;
  STK_Controller::getStateModel_sync(a1, a2, &v13);
  v7 = v13;
  if (v13)
  {
    v8 = *(a3 + 8);
    if (v8 == 8 || v8 == 1)
    {
      v10 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = subscriber::asString();
        *buf = 136315138;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I SIM state has changed to %s, resetting state", buf, 0xCu);
      }

      (*(*v7 + 144))(v7);
    }
  }

  else
  {
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not find state model when evaluating SIM state", buf, 2u);
    }
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_101515CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101515CC8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = sub_10151074C(v2, (*a1)[1]);
  v4 = *(v1 + 4);
  v5 = *(v1 + 20);
  if (v4 == 2)
  {
    v17 = (*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    *buf = 0uLL;
    STK_Controller::getStateModel_sync(v2, v3, buf);
    v13 = *buf;
    v14 = *v17;
    v18 = *v17;
    if (*buf)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "failed";
        if (v5)
        {
          v19 = "succeeded";
        }

        *v21 = 136315138;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Terminal Response sent to baseband %s", v21, 0xCu);
      }

      goto LABEL_21;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      v20 = "Could not find state model upon terminal response completion";
      goto LABEL_35;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = "not ready";
          if (v5)
          {
            v7 = "ready";
          }

          *buf = 136315138;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Command Driver is %s resetting the state machine", buf, 0xCu);
        }

        v8 = *(v2 + 104);
        if (v8 != (v2 + 112))
        {
          do
          {
            (*(*v8[5] + 144))(v8[5]);
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

          while (v10 != (v2 + 112));
        }
      }

      goto LABEL_33;
    }

    v12 = (*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    *buf = 0uLL;
    STK_Controller::getStateModel_sync(v2, v3, buf);
    v13 = *buf;
    v14 = *v12;
    v15 = *v12;
    if (*buf)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "failed";
        if (v5)
        {
          v16 = "succeeded";
        }

        *v21 = 136315138;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Event Confirmation sent to baseband %s", v21, 0xCu);
      }

LABEL_21:
      (*(*v13 + 128))(v13, v5);
      goto LABEL_31;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      v20 = "Could not find state model upon event confirmation completion";
LABEL_35:
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v20, v21, 2u);
    }
  }

LABEL_31:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_33:
  operator delete();
}