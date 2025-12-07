void sub_100727724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, const void *a36, uint64_t a37, uint64_t a38, const void *a39, uint64_t a40, uint64_t a41, const void *a42)
{
  sub_100005978((v43 - 184));
  if (*(v43 - 137) < 0)
  {
    operator delete(*(v43 - 160));
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

  sub_100005978(&a27);
  sub_100005978(&a26);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_100005978(&a37);
  sub_100005978(&a36);
  sub_100005978(&a40);
  sub_100005978(&a39);
  sub_1000296E0(&a42);
  if (*(v42 + 16) == 1)
  {
    sub_10001021C(v42);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100727910(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, const void **a6)
{
  v10 = *a1;
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(v10 + 64));
  v12 = ServiceMap;
  v14 = v13;
  if (v13 < 0)
  {
    v15 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
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
  v18 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (v18)
  {
    v20 = v18[3];
    v19 = v18[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v21 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v12);
  v19 = 0;
  v21 = 1;
LABEL_9:
  (*(*v20 + 80))(&v38, v20, *(v10 + 80), a4, a2, 0, 0);
  sub_100060DE8(&cf, &v38);
  sub_10000A1EC(&v38);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (!cf)
  {
    v31 = 0;
    goto LABEL_32;
  }

  v38 = 0;
  v22 = Registry::getServiceMap(*(v10 + 64));
  v23 = v22;
  if (v13 < 0)
  {
    v24 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v13 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(v22);
  *buf = v13;
  v27 = sub_100009510(&v23[1].__m_.__sig, buf);
  if (!v27)
  {
    v29 = 0;
    goto LABEL_20;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
LABEL_20:
    std::mutex::unlock(v23);
    v28 = 0;
    v30 = 1;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v23);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
LABEL_21:
  (*(*v29 + 80))(&v37, v29, *(v10 + 80), a4, a3, 0, 0);
  sub_100060DE8(&v38, &v37);
  sub_10000A1EC(&v37);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  v31 = v38 != 0;
  if (v38)
  {
    v32 = **(v10 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = asString();
      v34 = asString();
      *buf = 136315394;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Extracted GRI info of format %s from %s", buf, 0x16u);
    }

    *buf = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    *&buf[8] = v38;
    if (v38)
    {
      CFRetain(v38);
    }

    buf[16] = a5;
    sub_1007297CC(a6, buf);
    sub_100005978(&buf[8]);
    sub_100005978(buf);
  }

  sub_100005978(&v38);
LABEL_32:
  sub_100005978(&cf);
  return v31;
}

void sub_100727C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100727D14(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"kGRIBundleDir");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v36 = v7;
  v8 = CFDictionaryGetValue(*(a1 + 88), @"kGRIFileName");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v35 = v11;
  v12 = CFDictionaryGetValue(*(a1 + 88), @"kGRIFileVersion");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    v14 = v13 == CFStringGetTypeID();
  }

  else
  {
    v14 = 0;
  }

  v15 = CFDictionaryGetValue(*(a1 + 88), @"kGRIFileBundleID");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFStringGetTypeID())
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v34 = v18;
  v19 = CFDictionaryGetValue(*(a1 + 88), @"kGRIFileBundleVersion");
  if (v19)
  {
    v20 = CFGetTypeID(v19);
    v21 = v20 == CFStringGetTypeID();
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v11 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  if ((v23 & v14) == 1 && v18 && v21)
  {
    *buf = 0;
    v32 = 0;
    v33 = 0;
    sub_1000481D4(buf);
    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    sub_1000481D4(v29);
    __p[0] = 0;
    __p[1] = 0;
    v28 = 0;
    sub_1000481D4(__p);
    v24 = *(a1 + 80);
    v25 = *(a1 + 96);
    sub_1000224C8(v37, a2);
    sub_100722690(a1 + 16, v24, 6, buf, v29, __p, v25);
    sub_10000FF50(v37);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v26 = **(a1 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I The contents of GRI file config dictionary is not correct", buf, 2u);
    }
  }
}

void sub_100727F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_10000FF50(&a31);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100728000(uint64_t a1)
{
  v2 = (a1 + 88);
  if (*(a1 + 88))
  {
    cf = 0;
    FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
    sub_100720BA4(a1, FileConfigurationKeyNameForType, buf);
    sub_100010180(&cf, buf);
    sub_10000A1EC(buf);
    v4 = *(a1 + 8);
    if (cf)
    {
      v33 = cf;
      CFRetain(cf);
      sub_1007221F8(v4, "Cached GRI file configuration", &v33);
      sub_10001021C(&v33);
      v5 = *(a1 + 8);
      sub_100010024(&v32, v2);
      sub_1007221F8(v5, "Intended GRI file configuration", &v32);
      sub_10001021C(&v32);
      if (CFEqual(cf, *v2))
      {
        v6 = **(a1 + 8);
        v7 = 0;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Cached GRI file configuration is same as the one intended to be pushed, bailing out", buf, 2u);
          v7 = 0;
        }

        goto LABEL_11;
      }

      Value = CFDictionaryGetValue(cf, @"kGRIFileBundleID");
      v12 = CFDictionaryGetValue(*v2, @"kGRIFileBundleID");
      if (!Value || !v12 || CFEqual(Value, v12))
      {
        v13 = **(a1 + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Cached GRI file configuration is different than the one intended, checking the version number", buf, 2u);
        }

        v14 = CFDictionaryGetValue(cf, @"kGRIFileVersion");
        v15 = v14;
        if (v14)
        {
          v16 = CFGetTypeID(v14);
          if (v16 != CFStringGetTypeID())
          {
            v15 = 0;
          }
        }

        v17 = CFDictionaryGetValue(*v2, @"kGRIFileVersion");
        v18 = v17;
        if (v17)
        {
          v19 = CFGetTypeID(v17);
          if (v19 == CFStringGetTypeID())
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        __p[0] = v20;
        v21 = _CompareBundleVersionStrings(v20, v15);
        v22 = **(a1 + 8);
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        v7 = v21 == 1;
        if (v21 == 1)
        {
          if (v23)
          {
            sub_1000481D4(buf);
            v24 = v36 >= 0 ? buf : *buf;
            *v37 = 136446210;
            *&v37[4] = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Newer GRI file is available with version %{public}s, need GRI push", v37, 0xCu);
            if (SHIBYTE(v36) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        else if (v23)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Baseband already has the newest version, no need GRI file push", buf, 2u);
        }

        goto LABEL_11;
      }

      v25 = **(a1 + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        v36 = 0;
        ctu::cf::assign();
        v38 = v36;
        *v37 = *buf;
        v26 = SHIBYTE(v36);
        v27 = *buf;
        memset(buf, 0, sizeof(buf));
        v36 = 0;
        ctu::cf::assign();
        v28 = v37;
        if (v26 < 0)
        {
          v28 = v27;
        }

        *__p = *buf;
        v31 = v36;
        v29 = __p;
        if (v36 < 0)
        {
          v29 = *buf;
        }

        *v39 = 136446466;
        v40 = v28;
        v41 = 2082;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I GRI bundle ID mismatch between cached (%{public}s) and intended (%{public}s)", v39, 0x16u);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(*v37);
        }
      }
    }

    else
    {
      v9 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I No cached GRI file configuration", buf, 2u);
      }
    }

    v7 = 1;
LABEL_11:
    sub_10001021C(&cf);
    return v7;
  }

  v8 = **(a1 + 8);
  v7 = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No GRI file config present", buf, 2u);
    return 0;
  }

  return v7;
}

void sub_10072848C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  sub_10001021C(&a18);
  _Unwind_Resume(a1);
}

void sub_100728530(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"EnableIMSISwitch");
  v4 = Value;
  v7 = 0;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v7, v4, v6);
    }
  }

  sub_1000224C8(v8, a2);
  v9 = 0;
  operator new();
}

void sub_100728678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10000FF50(va1);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007286A4(uint64_t a1)
{
  cf1 = 0;
  FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
  sub_100720BA4(a1, FileConfigurationKeyNameForType, &v8);
  sub_10002FE1C(&cf1, &v8);
  sub_10000A1EC(&v8);
  if (!cf1)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v3 = CFEqual(cf1, *(a1 + 88));
  v4 = **(a1 + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached IMSI Switch configuration is different than the one intended, checking the version number", &v8, 2u);
    }

    goto LABEL_8;
  }

  if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached IMSI Switch configuration is same as the one intended to be pushed, bailing out", &v8, 2u);
  }

  v6 = 0;
LABEL_9:
  sub_100045C8C(&cf1);
  return v6;
}

void sub_10072879C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void sub_1007287C0(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"AllowsMultiplePDNConnectionsToSameAPN");
  v4 = Value;
  v7 = 0;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v7, v4, v6);
    }
  }

  sub_1000224C8(v8, a2);
  v9 = 0;
  operator new();
}

void sub_100728908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10000FF50(va1);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100728934(uint64_t a1)
{
  cf1 = 0;
  FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
  sub_100720BA4(a1, FileConfigurationKeyNameForType, &v8);
  sub_10002FE1C(&cf1, &v8);
  sub_10000A1EC(&v8);
  if (!cf1)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v3 = CFEqual(cf1, *(a1 + 88));
  v4 = **(a1 + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached Multi PDN configuration is different than the one intended, checking the version number", &v8, 2u);
    }

    goto LABEL_8;
  }

  if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached Multi PDN configuration is same as the one intended to be pushed, bailing out", &v8, 2u);
  }

  v6 = 0;
LABEL_9:
  sub_100045C8C(&cf1);
  return v6;
}

void sub_100728A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

const void **sub_100728A50@<X0>(void *a1@<X8>)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    cf = Mutable;
    v5 = 0;
    sub_1000296E0(&v5);
    v3 = cf;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v5 = v3;
    if (v3)
    {
      CFRetain(v3);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v5 = 0;
  }

  v6 = 0;
  sub_100722348(a1, &v5);
  sub_1000296E0(&v5);
  return sub_1000296E0(&cf);
}

void sub_100728B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  sub_1000296E0(va);
  if (*(v3 + 16) == 1)
  {
    sub_10001021C(v3);
  }

  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

void sub_100728B38(uint64_t a1, uint64_t a2)
{
  sub_1000224C8(v2, a2);
  v2[7] = 0;
  operator new();
}

void sub_100728C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002B644(va);
  sub_10000FF50(v11 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100728C74(uint64_t a1)
{
  v2 = BasebandSettings::triggerAttachApnBundleCheck(*(a1 + 48));
  if ((v2 & 1) == 0)
  {
    v3 = **(a1 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Cached ATTACH_APN configuration is same as the one intended to be pushed, bailing out", v5, 2u);
    }
  }

  return v2;
}

const void **sub_100728CF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  value = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v4 = ServiceMap;
  if (v5 < 0)
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
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  CarrierSettingsInterface::CopyValueFromActiveBundleForKeyWithDefault(&theDict, v11, @"EnableIMSISwitch", kCFBooleanFalse);
  sub_10002FE1C(&value, &theDict);
  sub_10000A1EC(&theDict);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v15 = 0;
    sub_1000296E0(&v15);
    Mutable = theDict;
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, @"EnableIMSISwitch", value);
    Mutable = theDict;
  }

  v15 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  v16 = 0;
  sub_100722348(a2, &v15);
  sub_1000296E0(&v15);
  sub_1000296E0(&theDict);
  return sub_100045C8C(&value);
}

void sub_100728EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, const void *a12)
{
  sub_1000296E0(&a9);
  sub_1000296E0(&a11);
  sub_100045C8C(&a12);
  if (*(v12 + 16) == 1)
  {
    sub_10001021C(v12);
  }

  _Unwind_Resume(a1);
}

const void **sub_100728F14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  value = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v4 = ServiceMap;
  if (v5 < 0)
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
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  CarrierSettingsInterface::CopyValueFromActiveBundleForKeyWithDefault(&theDict, v11, @"AllowsMultiplePDNConnectionsToSameAPN", kCFBooleanFalse);
  sub_10002FE1C(&value, &theDict);
  sub_10000A1EC(&theDict);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v15 = 0;
    sub_1000296E0(&v15);
    Mutable = theDict;
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, @"AllowsMultiplePDNConnectionsToSameAPN", value);
    Mutable = theDict;
  }

  v15 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  v16 = 0;
  sub_100722348(a2, &v15);
  sub_1000296E0(&v15);
  sub_1000296E0(&theDict);
  return sub_100045C8C(&value);
}

void sub_1007290C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, const void *a12)
{
  sub_1000296E0(&a9);
  sub_1000296E0(&a11);
  sub_100045C8C(&a12);
  if (*(v12 + 16) == 1)
  {
    sub_10001021C(v12);
  }

  _Unwind_Resume(a1);
}

void sub_100729130(void (***a1)(void, _BYTE *), uint64_t a2)
{
  sub_1000224C8(v3, a2);
  v3[4] = a1;
  v3[8] = 0;
  operator new();
}

void sub_100729230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10000FF50(va);
  sub_10000FF50(&a9);
  _Unwind_Resume(a1);
}

void sub_100729260(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

uint64_t sub_100729298(uint64_t a1)
{
  *a1 = off_101E766A8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return sub_1007207D4(a1);
}

void sub_1007292F8(uint64_t a1)
{
  *a1 = off_101E766A8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_1007207D4(a1);

  operator delete();
}

void sub_100729370(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

void sub_1007293AC(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

uint64_t sub_1007293EC(uint64_t a1)
{
  *a1 = off_101E767C8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return sub_1007207D4(a1);
}

void sub_10072944C(uint64_t a1)
{
  *a1 = off_101E767C8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_1007207D4(a1);

  operator delete();
}

void sub_1007294C4(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

void sub_100729500(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

void sub_10072953C(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

uint64_t sub_100729574(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1007295C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = **(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = *a3;
    v8 = 136315394;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s = %@", &v8, 0x16u);
  }
}

void sub_100729694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v8 = 0uLL;
  v9 = 0;
  ctu::cf::assign();
  v7 = 0;
  *__p = 0uLL;
  v5 = *(v4 + 16);
  *&v8 = a3;
  v5(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10072970C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100729758(uint64_t a1, uint64_t a2)
{
  sub_100010180(&v6, a2);
  if (&v6 != a1)
  {
    v4 = *a1;
    *a1 = v6;
    v6 = 0;
    v7 = v4;
    sub_10001021C(&v7);
  }

  sub_10001021C(&v6);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

const void **sub_1007297CC(const void **result, uint64_t a2)
{
  v3 = result;
  if (result != a2)
  {
    v4 = *result;
    *result = 0;
    v6 = v4;
    *result = *a2;
    *a2 = 0;
    sub_100005978(&v6);
    v5 = v3[1];
    v3[1] = 0;
    v6 = v5;
    v3[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    result = sub_100005978(&v6);
  }

  *(v3 + 16) = *(a2 + 16);
  return result;
}

uint64_t **sub_100729848(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_1007298C8(a1, v4, a2, a2);
      a2 += 16;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1007298C8(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, _OWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_1004FC98C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_1007299D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E76AB0;
  a2[1] = v2;
  return result;
}

const void **sub_100729A00@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  sub_10072084C(*(a1 + 8), *a2, &v5);
  sub_100060DE8(a3, &v5);
  return sub_10000A1EC(&v5);
}

void sub_100729A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100729A60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100729AAC(uint64_t a1)
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

uint64_t sub_100729B9C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E76B40;
  a2[1] = v2;
  return result;
}

const void **sub_100729BC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  ServiceMap = Registry::getServiceMap(*(v5 + 64));
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
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
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
  (*(*v14 + 80))(&v17, v14, *(v5 + 80), 4, v4, 0, 0);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  sub_100060DE8(a3, &v17);
  return sub_10000A1EC(&v17);
}

uint64_t sub_100729D34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100729D80(void *a1)
{
  *a1 = off_101E76BC0;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_100729DC4(void *a1)
{
  *a1 = off_101E76BC0;
  sub_10000FF50((a1 + 1));

  operator delete();
}

void sub_100729ED4(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100729F1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100729F68(void *a1)
{
  *a1 = off_101E76C40;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_100729FAC(void *a1)
{
  *a1 = off_101E76C40;
  sub_10000FF50((a1 + 1));

  operator delete();
}

void sub_10072A0BC(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10072A104(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10072A150(void *a1)
{
  *a1 = off_101E76CC0;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_10072A194(void *a1)
{
  *a1 = off_101E76CC0;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_10072A274(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E76CC0;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_10072A2AC(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

void sub_10072A3B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10072A3BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10072A408(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10000FF50(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10072A450(uint64_t a1)
{
  v2 = a1;
  sub_10000FFD0(a1, 1);
  return sub_10072A408(&v2);
}

void sub_10072A488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10072A408(va);
  _Unwind_Resume(a1);
}

void *sub_10072A49C(void *a1)
{
  *a1 = off_101E76D40;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_10072A4E0(void *a1)
{
  *a1 = off_101E76D40;
  sub_10000FF50((a1 + 1));

  operator delete();
}

uint64_t sub_10072A5C4(uint64_t a1, void *a2)
{
  *a2 = off_101E76D40;
  result = sub_1000224C8((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_10072A620(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10072A668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10072A6B4(uint64_t a1, void *a2, __int128 *a3, char *a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, a4);
  sub_10072A7C0(a1 + 8, &v12);
  ctu::OsLogContext::~OsLogContext(&v12);
  *a1 = &off_101E76DC0;
  v9 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v10;
  }

  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = a5;
  *(a1 + 160) = 0;
  return a1;
}

void sub_10072A790(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10072A838(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10072A7C0(uint64_t a1, const OsLogContext *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogLogger::OsLogLogger(v4, a2);
  ctu::OsLogLogger::OsLogLogger((a1 + 24), v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  return a1;
}

void sub_10072A810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  v5 = *(v3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10072A838(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10072A870(uint64_t a1)
{
  *a1 = &off_101E76DC0;
  v2 = *(a1 + 160);
  if (v2 && ((*(*v2 + 16))(v2), v3 = *(a1 + 160), *(a1 + 160) = 0, v3))
  {
    (*(*v3 + 8))(v3);
    v4 = *(a1 + 160);
    *(a1 + 160) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    *(a1 + 160) = 0;
  }

  v8 = (a1 + 128);
  sub_1000212F4(&v8);
  v8 = (a1 + 104);
  sub_1000212F4(&v8);
  v8 = (a1 + 80);
  sub_10072C288(&v8);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_10072A9B4(uint64_t a1)
{
  sub_10072A870(a1);

  operator delete();
}

void *sub_10072AA04(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_10072AA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_10072AA70(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
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

void sub_10072AAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_10072AB14(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  if (*(a2 + 63) < 0)
  {
    return sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  return result;
}

void sub_10072AB70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10072AB90(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void sub_10072ABD0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = *a2;
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' expiration will be checked in %lld seconds", buf, 0x16u);
  }

  sub_100004AA0(buf, (a1 + 8));
  v7 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  Registry::getTimerService(&v13, *(a1 + 40));
  v17 = 1852795252;
  v16 = *"n expiration";
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = 0x6F69747265737361;
  *&buf[8] = v16;
  *&buf[16] = v17;
  buf[20] = 0;
  v19 = 20;
  ctu::TimerService::createOneShotTimerImpl();
  if (v19 < 0)
  {
    operator delete(*buf);
  }

  v8 = v15;
  v15 = 0;
  v9 = *(a1 + 160);
  *(a1 + 160) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  v11 = *(a1 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v12 = *v12;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' expiration timer created", buf, 0xCu);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_10072AE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (*(v18 - 41) < 0)
  {
    operator delete(*(v18 - 64));
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10072AEE0(void *a1)
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
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 0x40000000;
        v6[2] = sub_10072AFA0;
        v6[3] = &unk_101E76E50;
        v6[4] = v3;
        os_unfair_lock_lock(v3 + 6);
        sub_10072AFA0(v6);
        os_unfair_lock_unlock(v3 + 6);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10072AFA8(uint64_t a1)
{
  Registry::getTimerService(buf, *(a1 + 40));
  v2 = (***buf)(*buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' expiration timer fired", buf, 0xCu);
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v5 == v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    i = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      if (*(v5 + 40))
      {
        ++v7;
      }

      else
      {
        ++v8;
        v11 = *(v5 + 4) + 1000000000 * *(a1 + 152);
        v15 = v11 <= v2;
        v12 = v11 - v2;
        if (v15)
        {
          v16 = *(a1 + 32);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = a1 + 56;
            if (*(a1 + 79) < 0)
            {
              v17 = *(a1 + 56);
            }

            v18 = v5;
            if (*(v5 + 23) < 0)
            {
              v18 = *v5;
            }

            *buf = 136315394;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            *&buf[14] = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' by %s expired, closing related xpc connection", buf, 0x16u);
          }

          sub_10072B3FC(&v28, v5);
          ++v9;
        }

        else
        {
          v13 = v12 / 1000000000;
          v14 = v12 / 1000000000 + 1;
          if (!v10 || (v10 != v14 ? (v15 = v10 <= v13) : (v15 = 1), !v15))
          {
            v10 = v14;
          }
        }
      }

      v5 += 3;
    }

    while (v5 != v6);
    v19 = v28;
    v20 = v29;
    for (i = v10; v19 != v20; v19 += 48)
    {
      v21 = *(v19 + 24);
      object = v21;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        object = xpc_null_create();
      }

      sub_100019728(a1, &object, 1);
      xpc_release(object);
      object = 0;
      *(v19 + 40) = 1;
    }
  }

  v22 = *(a1 + 32);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v23 = *v23;
    }

    v24 = *(a1 + 152);
    v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 4);
    *buf = 136316674;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = v24;
    v33 = 2048;
    v34 = v10;
    v35 = 1024;
    v36 = v7;
    v37 = 1024;
    v38 = v8;
    v39 = 1024;
    v40 = v9;
    v41 = 2048;
    v42 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' expiration timer fired result: fExpirationTimeout=%lld nextTimeout=%lld expired=%u unexpired=%u newExpired=%d fAssertions.size(): %lu", buf, 0x3Cu);
  }

  if (*(a1 + 152) && v10)
  {
    sub_10072ABD0(a1, &i);
  }

  else
  {
    v26 = *(a1 + 160);
    *(a1 + 160) = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  *buf = &v28;
  sub_10072C288(buf);
}

void sub_10072B364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18)
{
  a17 = &a13;
  sub_10072C288(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10072B3D0(uint64_t result, uint64_t a2)
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

void sub_10072B3EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10072B3FC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10072C3C8(a1, a2);
  }

  else
  {
    sub_10072C330(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10072B43C(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

xpc_object_t sub_10072B480(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    *(a1 + 40) = result;
  }

  if (*(a2 + 71) < 0)
  {
    return sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  return result;
}

void sub_10072B50C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void sub_10072B54C(os_unfair_lock_s *a1, void **a2, uint64_t a3, char a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v8 = sub_10072B668;
  v9 = &unk_101E76ED0;
  v14 = a4;
  v6 = *a2;
  v10 = a1;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v13 = *(a3 + 16);
  }

  os_unfair_lock_lock(a1 + 6);
  v8(v7);
  os_unfair_lock_unlock(a1 + 6);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
}

void sub_10072B668(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
    {
      v3 = *(v2 + 80);
      v4 = *(v2 + 88);
      if (v3 != v4)
      {
        while (!xpc_equal(*(v3 + 24), *(a1 + 40)))
        {
          v3 += 48;
          if (v3 == v4)
          {
            v3 = v4;
            break;
          }
        }

        v4 = *(v2 + 88);
      }

      if (v3 != v4)
      {
        sub_10072C598(&v10, (v3 + 48), v4, v3);
        sub_10072C2DC(v2 + 80, v5);
      }

      v6 = *(v2 + 32);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = (v2 + 56);
        if (*(v2 + 79) < 0)
        {
          v7 = *v7;
        }

        v8 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v8 = *v8;
        }

        v9 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 88) - *(v2 + 80)) >> 4);
        v10 = 136315650;
        v11 = v7;
        v12 = 2080;
        v13 = v8;
        v14 = 2048;
        v15 = v9;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Assertion '%s' by %s added failed; total assertion count is now %zu", &v10, 0x20u);
      }

      if (*(v2 + 80) == *(v2 + 88))
      {
        (*(*v2 + 16))(v2);
      }
    }
  }
}

void sub_10072B818(os_unfair_lock_s *a1, void **a2, __int128 *a3, uint64_t *a4)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v10 = sub_10072B958;
  v11 = &unk_101E76F00;
  v7 = *a2;
  v12 = a1;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v15 = *(a3 + 2);
  }

  v8 = a4[1];
  v16 = *a4;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock(a1 + 6);
  v10(v9);
  os_unfair_lock_unlock(a1 + 6);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
}

void sub_10072B958(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
  {
    v5 = *(a1 + 80);
    v14 = *(a1 + 72);
    v15 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 40))(v3, v2, a1 + 48, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    if (v3[10] == v3[11])
    {
      sub_10007C8E8(v3, 1);
    }

    if (*(a1 + 71) < 0)
    {
      sub_100005F2C(__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *__p = *(a1 + 48);
      v13 = *(a1 + 64);
    }

    sub_10007CAD4(v3, __p, 1);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    Registry::getTimerService(&v6, v3[5]);
    v8 = (**v6)();
    sub_10007CD30(__dst, (a1 + 48), v2, &v8);
    sub_10007CE20(v3 + 10, __dst);
    xpc_release(object);
    object = 0;
    if (v10 < 0)
    {
      operator delete(__dst[0]);
    }

    if (v7)
    {
      sub_100004A34(v7);
    }

    if (v3[19] && !v3[20])
    {
      sub_10072ABD0(v3, v3 + 19);
    }
  }

  else if (v3[10] == v3[11])
  {
    v4 = *(*v3 + 16);

    v4(v3);
  }
}

void sub_10072BB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10072B43C(&a13);
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_10072BBBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    *(a1 + 40) = result;
  }

  if (*(a2 + 71) < 0)
  {
    result = sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10072BC60(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

xpc_object_t sub_10072BCAC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10072BD1C(os_unfair_lock_s *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_10072BDE0;
  v2[3] = &unk_101E76F60;
  v2[4] = a1;
  v3 = v2;
  return sub_10072BD90(a1 + 2, &v3);
}

uint64_t sub_10072BD90(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 4);
  v4 = (*(*a2 + 16))();
  os_unfair_lock_unlock(a1 + 4);
  return v4;
}

void sub_10072BDF4(os_unfair_lock_s *a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 0x40000000;
  v1[2] = sub_10072BECC;
  v1[3] = &unk_101E76F80;
  v1[4] = a1;
  v2 = v1;
  sub_10072BE68(a1 + 2, &v2);
}

void sub_10072BE68(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 4);
  (*(*a2 + 16))();

  os_unfair_lock_unlock(a1 + 4);
}

uint64_t sub_10072BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_1005DD980(a2, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 4));
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  while (v5 != v6)
  {
    result = sub_100005308(a2, v5);
    v5 += 3;
  }

  return result;
}

void sub_10072BF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void sub_10072BF80(os_unfair_lock_s *a1@<X0>, NSObject **a2@<X1>, void **a3@<X2>, _OWORD *a4@<X8>)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_10072C0C0;
  v9[3] = &unk_101E76FA0;
  v7 = *a2;
  v9[4] = a1;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  v12 = v9;
  sub_10072C05C(a1 + 2, &v12);
  *a4 = v13;
  v13 = 0uLL;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_10072C05C(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 4);
  (*(*a2 + 16))();

  os_unfair_lock_unlock(a1 + 4);
}

void sub_10072C1D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10072C1EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void sub_10072C234(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void sub_10072C288(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10072C2DC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10072C2DC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1000A25D8(a1, i))
  {
    i -= 48;
  }

  *(a1 + 8) = a2;
}

xpc_object_t sub_10072C330(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 3);
  *(v4 + 24) = v6;
  if (v6)
  {
    result = xpc_retain(v6);
  }

  else
  {
    result = xpc_null_create();
    *(v4 + 24) = result;
  }

  v8 = *(a2 + 4);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 32) = v8;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_10072C3C8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1000A24BC(a1, v6);
  }

  v7 = 48 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *(a2 + 3);
  *(v7 + 24) = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *(v7 + 24) = xpc_null_create();
  }

  v10 = *(a2 + 4);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 32) = v10;
  *&v19 = v19 + 48;
  v11 = *(a1 + 8);
  v12 = v18 + *a1 - v11;
  sub_1000A2514(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1000A2630(&v17);
  return v16;
}

void sub_10072C530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000A2630(va);
  _Unwind_Resume(a1);
}

void sub_10072C544(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_1000A25D8(v5, v3);
    }

    while (v3 != v4);
  }
}

__int128 *sub_10072C598(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      *(v5 + 23) = 0;
      *v5 = 0;
      v8 = *(v5 + 3);
      *(v5 + 3) = xpc_null_create();
      v9 = *(a4 + 24);
      *(a4 + 24) = v8;
      xpc_release(v9);
      v10 = *(v5 + 4);
      *(a4 + 40) = *(v5 + 40);
      *(a4 + 32) = v10;
      v5 += 3;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10072C664(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E77078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10072C6B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    dispatch_release(v3);
  }
}

NSObject **sub_10072C710(NSObject **a1, NSObject **a2, NSObject **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

void sub_10072C75C(uint64_t a1, NSObject **a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v9 = a3;
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "lazuli.chatbot.mdl");
  sub_10072CACC(a1, a2, &__p);
  ctu::OsLogContext::~OsLogContext(&__p);
  v18[0] = off_101E2B528;
  v18[1] = sub_10072CB58;
  v18[3] = v18;
  sub_10072CB84((a1 + 40), a4, v18);
  sub_1000A8744(v18);
  *(a1 + 48) = v9;
  if (*(a6 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a6 + 56), *(a6 + 64));
  }

  else
  {
    v12 = *(a6 + 56);
    *(a1 + 72) = *(a6 + 72);
    *(a1 + 56) = v12;
  }

  *(a1 + 80) = *a4;
  v13 = a4[1];
  *(a1 + 88) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = *a5;
  v14 = a5[1];
  *(a1 + 104) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v15 = a4[1];
  v17[0] = *a4;
  v17[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "ChatBots");
  sub_100B2FB1C(v9, v17, a6 + 32, &__p, 0, 0);
}

void sub_10072C9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = v17[5];
  v17[5] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19, a2, a3, a4, a5, a6, a7, a8);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 4));
  sub_1000C0544(v17);
  _Unwind_Resume(a1);
}

void *sub_10072CACC(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10072CB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

const char *sub_10072CB58(int a1)
{
  v1 = "lazuli.chatbot.mdl.?";
  if (a1 == 2)
  {
    v1 = "lazuli.chatbot.mdl.2";
  }

  if (a1 == 1)
  {
    return "lazuli.chatbot.mdl.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_10072CB84(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_10072CCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

void sub_10072CD4C(uint64_t a1)
{
  v2 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v3 = *v3;
    }

    v4 = "without";
    if (*(a1 + 152))
    {
      v4 = "with";
    }

    *buf = 136446466;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting chatbot search for: [%{public}s] %s auth parameters", buf, 0x16u);
  }

  memset(&v33, 0, sizeof(v33));
  sub_10072D450(a1 + 216, &v33);
  memset(buf, 0, 32);
  v5 = *(a1 + 112);
  if (*(a1 + 239) < 0)
  {
    sub_100005F2C(&__dst, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    __dst = *(a1 + 216);
    v29 = *(a1 + 232);
  }

  sub_100732108(&v30, &__dst);
  sub_10000501C(&__p, "etag");
  sub_10072D970(v5, buf, &v30, &__p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst);
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v6 = *(a1 + 88);
  v25[0] = *(a1 + 80);
  v25[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10006F264(&v23, (a1 + 128));
  sub_10006F264(&v21, buf);
  sub_10072DA38(v25, a1 + 216, &v23, &v33, &v21, &v30);
  if (v22 == 1 && SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v24 == 1 && SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  v19 = 0;
  v20 = 0;
  ctu::Http::HttpRequest::create();
  v7 = *(a1 + 184);
  *(a1 + 176) = __p;
  v8 = (a1 + 176);
  __p = 0uLL;
  if (v7)
  {
    sub_100004A34(v7);
    if (*(&__p + 1))
    {
      sub_100004A34(*(&__p + 1));
    }
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*v8)
  {
    sub_100A99478(*(a1 + 48), (a1 + 80), (a1 + 176));
    (*(**v8 + 96))(30.0);
    (*(**v8 + 208))(*v8, 1);
    (*(**(a1 + 176) + 8))(*(a1 + 176), *(a1 + 16));
    (*(**v8 + 200))(*v8, 75);
    sub_100004AA0(&__p, a1);
    v9 = __p;
    if (*(&__p + 1))
    {
      atomic_fetch_add_explicit((*(&__p + 1) + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v9 + 1));
    }

    v10 = *(a1 + 176);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1174405120;
    v16[2] = sub_10072E00C;
    v16[3] = &unk_101E770C8;
    v16[4] = a1;
    v17 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v18, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = v33;
    }

    (*(*v10 + 16))(v10, v16);
    v12 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    __p = 0uLL;
    v27 = 0;
    sub_100A95200(v12, &v30, &v33, 0, &__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    v13 = *v8;
    v14[1] = 0;
    v15 = 0;
    v14[0] = 0;
    (*(*v13 + 40))(v13, v14);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    sub_10072F354(a1);
  }

  v11 = *(a1 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid web request", &__p, 2u);
  }

  sub_1000DD0AC(&v30, v31);
  if (buf[24] == 1 && buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_10072D2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_weak(v52);
  }

  sub_1000DD0AC(v53 - 144, *(v53 - 136));
  if (*(v53 - 72) == 1 && *(v53 - 73) < 0)
  {
    operator delete(*(v53 - 96));
  }

  if (*(v53 - 97) < 0)
  {
    operator delete(*(v53 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10072D450@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v50 = 0u;
  sub_10000C320(&v50);
  v4 = *(a1 + 256);
  for (i = *(a1 + 264); v4 != i; v4 += 24)
  {
    v6 = sub_10000C030(&v51, "&hl=", 4);
    v7 = *(v4 + 23);
    if (v7 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = *v4;
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 23);
    }

    else
    {
      v9 = *(v4 + 8);
    }

    sub_10000C030(v6, v8, v9);
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_100A97768(a1, &v47);
  std::operator+<char>();
  v10 = std::string::append(&v40, "/bot?id=", 8uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v49 >= 0)
  {
    v12 = &v47;
  }

  else
  {
    v12 = v47;
  }

  if (v49 >= 0)
  {
    v13 = HIBYTE(v49);
  }

  else
  {
    v13 = v48;
  }

  v14 = std::string::append(&v41, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v42, "&ho=", 4uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = *(a1 + 183);
  if (v18 >= 0)
  {
    v19 = (a1 + 160);
  }

  else
  {
    v19 = *(a1 + 160);
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 183);
  }

  else
  {
    v20 = *(a1 + 168);
  }

  v21 = std::string::append(&v43, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v25 = *(a1 + 184);
  v24 = a1 + 184;
  v23 = v25;
  v26 = *(v24 + 23);
  if (v26 >= 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = v23;
  }

  if (v26 >= 0)
  {
    v28 = *(v24 + 23);
  }

  else
  {
    v28 = *(v24 + 8);
  }

  v29 = std::string::append(&v44, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  sub_100061574(&v50, __p);
  if ((v39 & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v32 = v39;
  }

  else
  {
    v32 = __p[1];
  }

  v33 = std::string::append(&v45, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v46, "&v=3", 4uLL);
  *a2 = *v35;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  *&v51 = v36;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[1]);
  }

  std::locale::~locale(v52);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10072D880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a65 < 0)
  {
    operator delete(a62);
  }

  sub_10068C9D8(&a66);
  _Unwind_Resume(a1);
}

void sub_10072D970(os_log_t *a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  object = 0;
  v7 = 0;
  sub_100B310C4(a1, a3, a4, &object);
  if (v7 == 1)
  {
    v5 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v5 = xpc_null_create();
    }

    sub_1007355B0(&v5, a2);
    xpc_release(v5);
    v5 = 0;
    if (v7)
    {
      xpc_release(object);
    }
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }
}

void sub_10072DA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, ...)
{
  va_start(va, object);
  xpc_release(object);
  sub_1001A8028(va);
  _Unwind_Resume(a1);
}

const void **sub_10072DA38@<X0>(Registry **a1@<X0>, uint64_t a2@<X1>, const std::string *a3@<X2>, uint64_t a4@<X3>, const std::string *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  *(a6 + 8) = 0;
  *a6 = a6 + 8;
  v11 = *(a2 + 208);
  sub_10000501C(&__p, "X-3GPP-Intended-Identity");
  __str.__r_.__value_.__r.__words[0] = &__p;
  v12 = sub_100416DA4(a6, &__p, &unk_101802C98, &__str);
  std::string::operator=((v12 + 56), v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10000501C(&__p, "User-Agent");
  __str.__r_.__value_.__r.__words[0] = &__p;
  v13 = sub_100416DA4(a6, &__p, &unk_101802C98, &__str);
  if (*(v13 + 79) < 0)
  {
    *(v13 + 64) = 8;
    v14 = *(v13 + 56);
  }

  else
  {
    v14 = (v13 + 56);
    *(v13 + 79) = 8;
  }

  strcpy(v14, "3gpp-gba");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a3[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_10000501C(&__p, "Authorization");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v15 = sub_100416DA4(a6, &__p, &unk_101802C98, &__str);
    std::string::operator=((v15 + 56), a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = a1[1];
    v40 = *a1;
    v41 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A94AFC(&v40, &__p);
    sub_10000501C(&__str, "Date");
    v36.__r_.__value_.__r.__words[0] = &__str;
    v17 = sub_100416DA4(a6, &__str, &unk_101802C98, &v36);
    v18 = v17;
    if (*(v17 + 79) < 0)
    {
      operator delete(*(v17 + 56));
    }

    *(v18 + 56) = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v41)
    {
      sub_100004A34(v41);
    }

    sub_10000501C(&__p, "Accept");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v19 = sub_100416DA4(a6, &__p, &unk_101802C98, &__str);
    if (*(v19 + 79) < 0)
    {
      *(v19 + 64) = 3;
      v20 = *(v19 + 56);
    }

    else
    {
      v20 = (v19 + 56);
      *(v19 + 79) = 3;
    }

    *v20 = 2764586;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  anURL = 0;
  v21 = *(a4 + 23);
  if (v21 >= 0)
  {
    v22 = a4;
  }

  else
  {
    v22 = *a4;
  }

  if (v21 >= 0)
  {
    v23 = *(a4 + 23);
  }

  else
  {
    v23 = *(a4 + 8);
  }

  v24 = CFURLCreateWithBytes(kCFAllocatorDefault, v22, v23, 0x8000100u, 0);
  v37 = 0;
  anURL = v24;
  if (v24)
  {
    v25 = CFURLCopyHostName(v24);
    v26 = v37;
    v37 = v25;
    __p.__r_.__value_.__r.__words[0] = v26;
    sub_100005978(&__p.__r_.__value_.__l.__data_);
    v27 = CFURLGetPortNumber(anURL);
    if (v37)
    {
      v28 = v27;
      memset(&__str, 0, sizeof(__str));
      memset(&__p, 0, sizeof(__p));
      ctu::cf::assign();
      __str = __p;
      if (v28 != -1)
      {
        std::to_string(&v36, v28);
        v29 = std::string::insert(&v36, 0, ":", 1uLL);
        v30 = *&v29->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
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

        std::string::append(&__str, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }
      }

      sub_10000501C(&__p, "Host");
      v36.__r_.__value_.__r.__words[0] = &__p;
      v33 = sub_100416DA4(a6, &__p, &unk_101802C98, &v36);
      std::string::operator=((v33 + 56), &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  if (a5[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_10000501C(&__p, "If-None-Match");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v34 = sub_100416DA4(a6, &__p, &unk_101802C98, &__str);
    std::string::operator=((v34 + 56), a5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_100005978(&v37);
  return sub_1002030AC(&anURL);
}

void sub_10072DED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_100005978(&a16);
  sub_1002030AC(&a17);
  sub_1000DD0AC(v32, *(v32 + 8));
  _Unwind_Resume(a1);
}

void sub_10072E00C(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 208);
        if (v8)
        {
          *(v5 + 208) = 0;
          (*(*v8 + 8))(v8);
        }

        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          v12[0] = v9;
          v12[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10072E134(v5, (a1 + 7), v12);
          if (v10)
          {
            sub_100004A34(v10);
          }
        }

        else
        {
          v11 = *(v5 + 32);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid response received", buf, 2u);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10072E114(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10072E134(uint64_t a1, const std::string *a2, void *a3)
{
  v6 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  v7 = a3[1];
  v63 = *a3;
  v64 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A96920(v6, &v63, a2);
  if (v64)
  {
    sub_100004A34(v64);
  }

  v8 = (*(**a3 + 24))();
  v9 = (*(**a3 + 32))();
  (*(**a3 + 48))(&v60);
  v10 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v62;
    if ((v62 & 0x80u) != 0)
    {
      v11 = v61;
    }

    *buf = 67109632;
    v80 = v8;
    v81 = 2048;
    v82 = v9;
    v83 = 2048;
    v84 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received HTTP response: %d, client error: %ld, body length: %zu", buf, 0x1Cu);
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = *(a1 + 96);
      if (v14)
      {
        if (v8 > 400)
        {
          if (v8 == 404)
          {
            v20 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              sub_10177C6BC();
            }

            goto LABEL_29;
          }

          if (v8 == 401 && ((*(**(a1 + 160) + 8))(*(a1 + 160), *(a1 + 48)) & 1) == 0)
          {
            v21 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Received 401 response. Starting GBA auth...", buf, 2u);
            }

            v22 = a3[1];
            v59[0] = *a3;
            v59[1] = v22;
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_1007305F4(a1, a2, v59);
            if (v22)
            {
              sub_100004A34(v22);
            }

            goto LABEL_110;
          }
        }

        else
        {
          if (v8 == 200)
          {
            bzero(buf, 0x348uLL);
            if (v9)
            {
              goto LABEL_31;
            }

            v23 = v62;
            if ((v62 & 0x80u) != 0)
            {
              v23 = v61;
            }

            if (!v23)
            {
LABEL_31:
              v19 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
              if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
              {
                sub_10177C6F0();
              }

              sub_1006FB24C(v71, (a1 + 216));
              v74 = 0;
              v73 = 0;
              v75 = 0;
              sub_1007321B4(&v73, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
              v76 = 2;
              v77 = 1;
              v78[0] = 0;
              v78[688] = 0;
              sub_100731394(buf, v71);
              sub_100732330(v71);
            }

            else
            {
              (*(**a3 + 56))(&v57);
              bzero(__p, 0x2B8uLL);
              v24 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
              sub_1007E248C((a1 + 80), v24, &v60, __p);
              v25 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                if (v56)
                {
                  v26 = "OK";
                }

                else
                {
                  v26 = "Failed";
                }

                *v71 = 136315138;
                *&v71[4] = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I JSON parsing status: %s", v71, 0xCu);
              }

              sub_10000501C(v71, "Cache-Control");
              v27 = sub_10038F068(&v57, v71);
              if (SHIBYTE(v72) < 0)
              {
                operator delete(*v71);
              }

              if (&v58 != v27)
              {
                v67 = 0u;
                v68 = 0u;
                *&v65[0].__locale_ = 0u;
                v66 = 0u;
                sub_1001C7FB0(v65, ".*max-age.*?(\\d+).*", 0);
              }

              v28 = 86400;
              memset(v71, 0, sizeof(v71));
              v72 = 0;
              sub_10000501C(v65, "Cache-Control");
              v29 = sub_100732A58(&v57, v65);
              if (*(v29 + 23) < 0)
              {
                sub_100005F2C(v71, *v29, *(v29 + 8));
              }

              else
              {
                v30 = *v29;
                v72 = *(v29 + 16);
                *v71 = v30;
              }

              if (SBYTE7(v66) < 0)
              {
                operator delete(v65[0].__locale_);
              }

              sub_10000501C(v65, "Date");
              v31 = sub_100732A58(&v57, v65);
              sub_10000501C(&v69, "%a, %d %b %Y %H:%M:%S %Z");
              v32 = sub_100A94FE4(v31, &v69);
              if (v70 < 0)
              {
                operator delete(v69.__vftable);
              }

              if (SBYTE7(v66) < 0)
              {
                operator delete(v65[0].__locale_);
              }

              sub_10000501C(v65, "Expires");
              v33 = sub_100732A58(&v57, v65);
              sub_10000501C(&v69, "%a, %d %b %Y %H:%M:%S %Z");
              v34 = sub_100A94FE4(v33, &v69);
              if (v70 < 0)
              {
                operator delete(v69.__vftable);
              }

              if (SBYTE7(v66) < 0)
              {
                operator delete(v65[0].__locale_);
              }

              v35 = v34 - v32;
              if (v34 <= v32 || v35 >= 86400)
              {
                v38 = 0;
                v37 = 0;
                v36 = 1;
              }

              else
              {
                v36 = 0;
                v37 = v35 & 0xFFFFFFFFFFFFFF00;
                v38 = v35;
              }

              if (SHIBYTE(v72) < 0)
              {
                operator delete(*v71);
              }

              if (!v36)
              {
                v28 = v37 | v38;
              }

              memset(v71, 0, sizeof(v71));
              v72 = 0;
              sub_10000501C(v65, "Etag");
              v39 = sub_100732A58(&v57, v65);
              if (*(v39 + 23) < 0)
              {
                sub_100005F2C(v71, *v39, *(v39 + 8));
              }

              else
              {
                v40 = *v39;
                v72 = *(v39 + 16);
                *v71 = v40;
              }

              if (SBYTE7(v66) < 0)
              {
                operator delete(v65[0].__locale_);
              }

              if (SHIBYTE(v72) < 0)
              {
                sub_100005F2C(v43, *v71, *&v71[8]);
                v45 = 1;
                if (SHIBYTE(v72) < 0)
                {
                  operator delete(*v71);
                }
              }

              else
              {
                *v43 = *v71;
                v44 = v72;
                v45 = 1;
              }

              sub_100730D6C(a1, a1 + 216, &v60, v28, v43);
              if (v45 == 1 && SHIBYTE(v44) < 0)
              {
                operator delete(v43[0]);
              }

              sub_1006FB24C(v71, (a1 + 216));
              v74 = 0;
              v73 = 0;
              v75 = 0;
              sub_1007321B4(&v73, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
              LOBYTE(v76) = 0;
              v77 = 0;
              sub_100732A9C(v78, __p);
              sub_100731394(buf, v71);
              sub_100732330(v71);
              if (v56 == 1)
              {
                if (v55 == 1 && v54 < 0)
                {
                  operator delete(v53);
                }

                if (v52 < 0)
                {
                  operator delete(v51);
                }

                if (v50 < 0)
                {
                  operator delete(v49);
                }

                if (v48[24] == 1)
                {
                  *v71 = v48;
                  sub_100191E28(v71);
                }

                sub_1006FA044(__p);
              }

              sub_1000DD0AC(&v57, v58);
            }

            (*(*v14 + 88))(v14, *(a1 + 48), buf);
            goto LABEL_109;
          }

          if (v8 == 304)
          {
            v15 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Searching complete with response: 304", buf, 2u);
            }

            bzero(buf, 0x348uLL);
            sub_1006FB24C(buf, (a1 + 216));
            v86 = 0;
            v85 = 0;
            v87 = 0;
            sub_1007321B4(&v85, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
            LOBYTE(v88) = 0;
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v16 = *(a1 + 112);
            if (*(a1 + 239) < 0)
            {
              sub_100005F2C(v41, *(a1 + 216), *(a1 + 224));
            }

            else
            {
              *v41 = *(a1 + 216);
              v42 = *(a1 + 232);
            }

            sub_100732108(v71, v41);
            sub_10000501C(__p, "etag");
            sub_100B31008(v16, v71, __p);
            if (v47 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v72) < 0)
            {
              operator delete(*v71);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(v41[0]);
            }

            (*(*v14 + 88))(v14, *(a1 + 48), buf);
            goto LABEL_109;
          }
        }

        v18 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10177C724(v8, v18);
        }

LABEL_29:
        bzero(buf, 0x348uLL);
        sub_1006FB24C(buf, (a1 + 216));
        v86 = 0;
        v85 = 0;
        v87 = 0;
        sub_1007321B4(&v85, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
        v88 = 3;
        v89 = 1;
        v90 = 0;
        v91 = 0;
        (*(*v14 + 88))(v14, *(a1 + 48), buf);
LABEL_109:
        sub_100732330(buf);
        sub_10073006C(a1);
LABEL_110:
        sub_100004A34(v13);
        goto LABEL_111;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_10177C79C();
  }

  if (v13)
  {
    goto LABEL_110;
  }

LABEL_111:
  if (v62 < 0)
  {
    operator delete(v60);
  }
}

void sub_10072EF58(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v18;
    operator delete(v18);
  }

  sub_1001C3924(&STACK[0x380]);
  sub_1006F9FAC(va);
  sub_1000DD0AC(&STACK[0x2F8], STACK[0x300]);
  sub_100732330(&STACK[0x740]);
  sub_100004A34(v16);
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  _Unwind_Resume(a1);
}

char *sub_10072F284(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_10072F2E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10072F300(uint64_t a1)
{
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

void sub_10072F354(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 208) = 0;
    (*(*v2 + 8))(v2);
  }

  Registry::getTimerService(&v6, *(a1 + 80));
  sub_10000501C(v4, "Operation timeout timer");
  sub_100004AA0(&v9, a1);
  v3 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  *__p = *v4;
  v8 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v11 = 0;
  operator new();
}

void sub_10072F560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_10002B644(&a24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10072F5CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v5 = *v5;
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Starting Web search: [%{public}s] (with auth)", &buf, 0xCu);
  }

  buf = 0u;
  v38 = 0u;
  v6 = *(a1 + 112);
  if (*(a1 + 239) < 0)
  {
    sub_100005F2C(&__dst, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    __dst = *(a1 + 216);
    v35 = *(a1 + 232);
  }

  sub_100732108(&v36, &__dst);
  sub_10000501C(&v31, "etag");
  sub_10072D970(v6, &buf, &v36, &v31);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
  }

  memset(&v36, 0, sizeof(v36));
  sub_10072D450(a1 + 216, &v36);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v7 = *(a1 + 88);
  v30[0] = *(a1 + 80);
  v30[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  v29 = 1;
  sub_10006F264(&__p, &buf);
  sub_10072DA38(v30, a1 + 216, &v28, &v36, &__p, &v31);
  if (v27 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v29 == 1 && SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  if (!*(a1 + 176))
  {
    v14 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    *v20 = 0;
    v15 = "#I No previous request...";
    goto LABEL_43;
  }

  v8 = *(a1 + 184);
  v24 = *(a1 + 176);
  v25 = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  ctu::Http::HttpRequest::create();
  v9 = *(a1 + 200);
  *(a1 + 192) = *v20;
  v10 = (a1 + 192);
  memset(v20, 0, sizeof(v20));
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (*v10)
  {
    sub_100A99478(*(a1 + 48), (a1 + 80), (a1 + 192));
    (*(**v10 + 96))(30.0);
    (*(**v10 + 208))(*v10, 1);
    (*(**(a1 + 192) + 8))(*(a1 + 192), *(a1 + 16));
    sub_100004AA0(v20, a1);
    v12 = *v20;
    v11 = *&v20[8];
    if (*&v20[8])
    {
      atomic_fetch_add_explicit((*&v20[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
    }

    v13 = *(a1 + 192);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1174405120;
    v22[2] = sub_10072FD14;
    v22[3] = &unk_101E770F8;
    v22[4] = a1;
    v22[5] = v12;
    v22[6] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v23, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = v36;
    }

    (*(*v13 + 16))(v13, v22);
    v16 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    sub_100A95200(v16, &v31, &v36, 0, v20);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*v20);
    }

    v17 = *v10;
    v18[1] = 0;
    v19 = 0;
    v18[0] = 0;
    (*(*v17 + 40))(v17, v18);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    sub_10072F354(a1);
  }

  v14 = *(a1 + 32);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    v15 = "#I Invalid web request";
LABEL_43:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v20, 2u);
  }

LABEL_50:
  sub_1000DD0AC(&v31, v32);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
  {
    operator delete(buf);
  }
}

void sub_10072FB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_weak(v51);
  }

  sub_1000DD0AC(v52 - 168, *(v52 - 160));
  if (*(v52 - 97) < 0)
  {
    operator delete(*(v52 - 120));
  }

  if (*(v52 - 72) == 1 && *(v52 - 73) < 0)
  {
    operator delete(*(v52 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_10072FD14(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 208);
        if (v8)
        {
          *(v5 + 208) = 0;
          (*(*v8 + 8))(v8);
        }

        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          v12[0] = v9;
          v12[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10072E134(v5, (a1 + 7), v12);
          if (v10)
          {
            sub_100004A34(v10);
          }
        }

        else
        {
          v11 = *(v5 + 32);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid response received", buf, 2u);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10072FE1C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10072FE3C(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 208) = 0;
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 176))
  {
    v3 = *(a1 + 184);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 96);
      if (v6)
      {
        v7 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          sub_10177C7D0();
        }

        sub_10073006C(a1);
        bzero(__dst, 0x348uLL);
        sub_1006FB24C(__dst, (a1 + 216));
        memset(v10, 0, sizeof(v10));
        sub_1007321B4(v10, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
        v11 = 2;
        v12 = 1;
        v13 = 0;
        v14 = 0;
        (*(*v6 + 88))(v6, *(a1 + 48), __dst);
        sub_100732330(__dst);
        goto LABEL_15;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_10177C804();
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

LABEL_15:
  sub_100004A34(v5);
}

void sub_100730024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100732330(va);
  sub_100004A34(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_10073006C(uint64_t a1)
{
  (***(a1 + 160))(*(a1 + 160), *(a1 + 48));
  v2 = *(a1 + 184);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 200);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  result = *(a1 + 208);
  *(a1 + 208) = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void sub_100730120(uint64_t a1, int a2, void **a3, uint64_t a4)
{
  v8 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v9 = *v9;
    }

    v10 = CSIBOOLAsString(a2);
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    *buf = 136446978;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 2082;
    v21 = v11;
    v22 = 2112;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I GBA Auth status for:[%{public}s] : [%s][%{public}s], lifetime:%@", buf, 0x2Au);
  }

  if (a2)
  {
    *buf = a1;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&buf[8], *a3, a3[1]);
    }

    else
    {
      *&buf[8] = *a3;
      v21 = a3[2];
    }

    v19[0] = 0;
    v19[1] = 0;
    sub_100004AA0(v19, a1);
    operator new();
  }

  v12 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I GBA auth failure", buf, 2u);
  }

  if (*(a1 + 152) == 1)
  {
    v13 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Resetting existing auth parameters and trying again.", buf, 2u);
    }

    if (*(a1 + 152) == 1)
    {
      if (*(a1 + 151) < 0)
      {
        operator delete(*(a1 + 128));
      }

      *(a1 + 152) = 0;
    }

    (***(a1 + 160))(*(a1 + 160), *(a1 + 48));
    sub_10072CD4C(a1);
  }

  else
  {
    v14 = *(a1 + 104);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = v15;
        v17 = *(a1 + 96);
        if (v17)
        {
          v18 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            sub_10177C7D0();
          }

          bzero(buf, 0x348uLL);
          sub_1006FB24C(buf, (a1 + 216));
          memset(v24, 0, sizeof(v24));
          sub_1007321B4(v24, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
          v25 = 2;
          v26 = 1;
          v27 = 0;
          v28 = 0;
          (*(*v17 + 88))(v17, *(a1 + 48), buf);
          sub_100732330(buf);
        }

        sub_100004A34(v16);
      }
    }
  }
}

void sub_1007305A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100732330(va);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1007305F4(uint64_t a1, const std::string *a2, void *a3)
{
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v6 = *(a1 + 88);
  v50 = *(a1 + 80);
  v51 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v46 = 0;
  v48 = 0;
  v44 = 0uLL;
  v45 = 0uLL;
  v42 = 0uLL;
  v43 = 0uLL;
  *__str = 0uLL;
  memset(v41, 0, sizeof(v41));
  HIDWORD(v43) = 3;
  memset(v47, 0, sizeof(v47));
  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  PersonalityIdFromSlotId();
  ServiceMap = Registry::getServiceMap(v50);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *&v54 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v54);
  if (!v15)
  {
    v17 = 0;
LABEL_13:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
LABEL_11:
    v52[0] = 0;
    sub_100732424(&v52[8], __str);
    goto LABEL_33;
  }

LABEL_14:
  (**v17)(&v54, v17, v55);
  v19 = v54;
  v54 = 0uLL;
  v20 = __str[1];
  *__str = v19;
  if (v20)
  {
    sub_100004A34(v20);
    if (*(&v54 + 1))
    {
      sub_100004A34(*(&v54 + 1));
    }
  }

  std::string::operator=(v41, (a1 + 448));
  if (&v41[24] != (a1 + 424))
  {
    sub_100008234(&v41[24], *(a1 + 424), *(a1 + 432), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 432) - *(a1 + 424)) >> 3));
  }

  if (*(a1 + 496) == 1)
  {
    *&v54 = kCTDataConnectionServiceTypeInternet;
    sub_10021D11C(v47, &v54);
  }

  std::string::operator=(&v47[1], __str[0]);
  v21 = Registry::getServiceMap(v50);
  v22 = v21;
  if ((v23 & 0x8000000000000000) != 0)
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

  std::mutex::lock(v21);
  v57[0] = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, v57);
  if (v27)
  {
    v28 = v27[3];
    v29 = v27[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  std::mutex::unlock(v22);
  *&v54 = v28;
  *(&v54 + 1) = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v29);
  }

  BYTE4(v44) = sub_100A99CD0(&v54);
  if (*(&v54 + 1))
  {
    sub_100004A34(*(&v54 + 1));
  }

  HIDWORD(v43) = 0;
  std::string::operator=(&v42, a2);
  LOWORD(v48) = (*(*v8 + 80))(v8);
  LODWORD(v44) = 8080;
  v52[0] = 1;
  sub_100732424(&v52[8], __str);
LABEL_33:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

  sub_1004F389C(__str);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v51)
  {
    sub_100004A34(v51);
  }

  if (v52[0])
  {
    v30 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__str[0]) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I GBA auth will be started...", __str, 2u);
    }

    goto LABEL_54;
  }

  v31 = *(a1 + 104);
  if (!v31)
  {
    v32 = 0;
    goto LABEL_51;
  }

  v32 = std::__shared_weak_count::lock(v31);
  if (!v32 || (v33 = *(a1 + 96)) == 0)
  {
LABEL_51:
    v35 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      sub_10177C86C();
      if (!v32)
      {
        goto LABEL_54;
      }
    }

    else if (!v32)
    {
LABEL_54:
      v36 = *(a1 + 160);
      v37 = *(a1 + 48);
      (*(**a3 + 56))(__str);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 0x40000000;
      v39[2] = sub_100730D64;
      v39[3] = &unk_101E77128;
      v39[4] = a1;
      (*(*v36 + 16))(v36, v37, &v52[8], __str, v39);
      sub_1000DD0AC(__str, __str[1]->__r_.__value_.__r.__words);
      return sub_1004F389C(&v52[8]);
    }

    sub_100004A34(v32);
    goto LABEL_54;
  }

  v34 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
  {
    sub_10177C838();
  }

  bzero(__str, 0x348uLL);
  sub_1006FB24C(__str, (a1 + 216));
  v43 = 0uLL;
  *&v44 = 0;
  sub_1007321B4(&v43, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
  DWORD2(v44) = 3;
  BYTE12(v44) = 1;
  LOBYTE(v45) = 0;
  v49 = 0;
  (*(*v33 + 88))(v33, *(a1 + 48), __str);
  sub_10073006C(a1);
  sub_100732330(__str);
  sub_100004A34(v32);
  return sub_1004F389C(&v52[8]);
}

void sub_100730C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10067AA50(va);
  sub_100004A34(v13);
  sub_1004F389C(v14 | 8);
  _Unwind_Resume(a1);
}

void sub_100730D6C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v10 = *(a1 + 112);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v17 = *(a2 + 16);
  }

  sub_100732108(v18, __dst);
  sub_10000501C(__p, "render_info");
  sub_100730F98(v10, v18, __p, a3, a4, 1);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a5 + 24) == 1)
  {
    v11 = *(a1 + 112);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v12, *a2, *(a2 + 8));
    }

    else
    {
      *v12 = *a2;
      v13 = *(a2 + 16);
    }

    sub_100732108(v18, v12);
    sub_10000501C(__p, "etag");
    if ((*(a5 + 24) & 1) == 0)
    {
      sub_1000D1644();
    }

    sub_100730F98(v11, v18, __p, a5, a4, 1);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_100730F98(uint64_t a1, const void ***a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6)
{
  v6 = a6;
  v32 = 0;
  sub_100B307AC(a1, a2, &v32);
  if (xpc_get_type(v32) != &_xpc_type_dictionary)
  {
    v22 = 0;
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (v12)
    {
      v22 = v12;
    }

    else
    {
      v13 = xpc_null_create();
      v22 = v13;
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
      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(v18, *a4, *(a4 + 8));
      }

      else
      {
        *v18 = *a4;
        v19 = *(a4 + 16);
      }

      sub_100735C00(a1, v18, a5, v6, &v20);
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        v25 = *(a3 + 16);
      }

      v16 = __p;
      if (v25 < 0)
      {
        v16 = __p[0];
      }

      v26 = &v22;
      v27 = v16;
      sub_100DAE90C(&v26, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v20);
      v20 = 0;
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      v17 = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        v17 = xpc_null_create();
      }

      sub_100B30120(a1, a2, &v17);
      xpc_release(v17);
      v17 = 0;
      xpc_release(v22);
      goto LABEL_42;
    }

    v14 = xpc_null_create();
LABEL_25:
    v22 = v14;
    goto LABEL_26;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v29 = *(a4 + 16);
  }

  sub_100735C00(a1, __dst, a5, v6, &v30);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v25 = *(a3 + 16);
  }

  v15 = __p;
  if (v25 < 0)
  {
    v15 = __p[0];
  }

  v26 = &v32;
  v27 = v15;
  sub_100DAE90C(&v26, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v30);
  v30 = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst[0]);
  }

  object = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_100B30120(a1, a2, &object);
  xpc_release(object);
  object = 0;
LABEL_42:
  xpc_release(v32);
}

void sub_1007312A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object, uint64_t a19, xpc_object_t a20, xpc_object_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  xpc_release(*(v33 - 104));
  *(v33 - 104) = 0;
  if (a33 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v33 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_100731394(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 48);
  sub_10055D990(a1 + 56, (a2 + 56));
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 88) = v6;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  sub_1007342E4(a1 + 112);
  *(a1 + 112) = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v7 = *(a2 + 34);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 136) = v7;
  sub_100734324(a1 + 144, (a2 + 9));
  return a1;
}

void sub_10073148C(void *a1, uint64_t a2)
{
  sub_100735130(&v3, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, a1);
  operator new();
}

void sub_100731594(uint64_t a1@<X0>, __int128 *a2@<X1>, BOOL *a3@<X8>)
{
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v22 = *(a2 + 2);
  }

  sub_100732108(v23, &__dst);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst);
  }

  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  sub_10000501C(v19, "render_info");
  v17 = 0u;
  v18 = 0u;
  sub_10072D970(*(a1 + 112), &v17, v23, v19);
  if (BYTE8(v18))
  {
    v5 = sub_100B30BE8(*(a1 + 112), v23, v19);
    bzero(v7, 0x2B8uLL);
    if ((BYTE8(v18) & 1) == 0)
    {
      sub_1000D1644();
    }

    v6 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    sub_1007E248C((a1 + 80), v6, &v17, v7);
    *a3 = (v5 & 0x100) != 0 && (v5 & 1) == 0;
    sub_100732A9C(a3 + 8, v7);
    if (v16 == 1)
    {
      if (v15 == 1 && v14 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v11);
      }

      if (v10 < 0)
      {
        operator delete(v9);
      }

      if (v8[24] == 1)
      {
        v25 = v8;
        sub_100191E28(&v25);
      }

      sub_1006FA044(v7);
    }

    if ((BYTE8(v18) & 1) != 0 && SBYTE7(v18) < 0)
    {
      operator delete(v17);
    }
  }

  else
  {
    *a3 = 0;
    a3[8] = 0;
    a3[696] = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_1007317B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1006F9FAC(va);
  if (*(v3 - 136) == 1 && *(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  if (*(v3 - 97) < 0)
  {
    operator delete(*(v3 - 120));
  }

  if (*(v3 - 41) < 0)
  {
    operator delete(*(v3 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100731840(uint64_t a1, __int128 *a2)
{
  v4 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
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

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Adding operation ID: %{public}s", &v7, 0xCu);
  }

  return sub_100731930((a1 + 328), a2);
}

uint64_t sub_100731930(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100735390(a1, a2);
  }

  else
  {
    sub_100735330(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_10073197C(uint64_t a1)
{
  v2 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 152) == 1)
    {
      v3 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v3 = *v3;
      }
    }

    else
    {
      v3 = "(null)";
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Auth parameters: %{public}s", buf, 0xCu);
  }

  v4 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 160))
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    if (*(a1 + 176))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(a1 + 192))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    *buf = 136446722;
    *&buf[4] = v5;
    v15 = 2082;
    v16 = v6;
    v17 = 2082;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I GBA helper: %{public}s, Web-req: %{public}s, Web-req auth: %{public}s", buf, 0x20u);
  }

  v8 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 208))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Timeout timer: %{public}s", buf, 0xCu);
  }

  v10 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_100731C54(a1 + 216, buf);
    if (v17 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    v12 = 136446210;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Search param: %{public}s", &v12, 0xCu);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }
  }
}

uint64_t sub_100731C54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  *v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  sub_10000C320(&v41);
  v4 = sub_10000C030(&v42, "[destination: ", 14);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = sub_10000C030(v4, v6, v7);
  v9 = sub_10000C030(v8, ", fqdn root: ", 13);
  v10 = *(a1 + 159);
  if (v10 >= 0)
  {
    v11 = a1 + 136;
  }

  else
  {
    v11 = *(a1 + 136);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 159);
  }

  else
  {
    v12 = *(a1 + 144);
  }

  v13 = sub_10000C030(v9, v11, v12);
  v14 = sub_10000C030(v13, ", mcc: ", 7);
  v15 = *(a1 + 183);
  if (v15 >= 0)
  {
    v16 = a1 + 160;
  }

  else
  {
    v16 = *(a1 + 160);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 183);
  }

  else
  {
    v17 = *(a1 + 168);
  }

  v18 = sub_10000C030(v14, v16, v17);
  v19 = sub_10000C030(v18, ", mnc: ", 7);
  v20 = *(a1 + 207);
  if (v20 >= 0)
  {
    v21 = a1 + 184;
  }

  else
  {
    v21 = *(a1 + 184);
  }

  if (v20 >= 0)
  {
    v22 = *(a1 + 207);
  }

  else
  {
    v22 = *(a1 + 192);
  }

  v23 = sub_10000C030(v19, v21, v22);
  v24 = sub_10000C030(v23, ", impus: ", 9);
  sub_1000D1184(&v40, *(a1 + 208), *(a1 + 216), ",", 1uLL);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v40;
  }

  else
  {
    v25 = v40.__r_.__value_.__r.__words[0];
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  v27 = sub_10000C030(v24, v25, size);
  v28 = sub_10000C030(v27, ", impi: ", 8);
  v29 = *(a1 + 255);
  if (v29 >= 0)
  {
    v30 = a1 + 232;
  }

  else
  {
    v30 = *(a1 + 232);
  }

  if (v29 >= 0)
  {
    v31 = *(a1 + 255);
  }

  else
  {
    v31 = *(a1 + 240);
  }

  v32 = sub_10000C030(v28, v30, v31);
  v33 = sub_10000C030(v32, ", languages: ", 13);
  sub_1000D1184(&__p, *(a1 + 256), *(a1 + 264), ",", 1uLL);
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
    v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = __p.__r_.__value_.__l.__size_;
  }

  v36 = sub_10000C030(v33, p_p, v35);
  sub_10000C030(v36, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  sub_100061574(&v41, a2);
  *&v42 = v37;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[1]);
  }

  std::locale::~locale(v43);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100731FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100732020(uint64_t a1)
{
  v3 = (a1 + 256);
  sub_1000087B4(&v3);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v3 = (a1 + 208);
  sub_1000087B4(&v3);
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = (a1 + 112);
  sub_10005AAF8(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
  }

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

void *sub_100732108(void *__dst, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  if (SHIBYTE(v5) < 0)
  {
    sub_100005F2C(__dst, __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *__dst = *__p;
    __dst[2] = v5;
  }

  return __dst;
}

void sub_100732198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007321B4(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10008E2D0(result, a4);
  }

  return result;
}

void sub_10073221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10005AAF8(&a9);
  _Unwind_Resume(a1);
}

char *sub_10073223C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1007322F8(v9);
  return v4;
}

uint64_t sub_1007322F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000D46BC(a1);
  }

  return a1;
}

uint64_t sub_100732330(uint64_t a1)
{
  if (*(a1 + 832) == 1)
  {
    if (*(a1 + 824) == 1 && *(a1 + 823) < 0)
    {
      operator delete(*(a1 + 800));
    }

    if (*(a1 + 799) < 0)
    {
      operator delete(*(a1 + 776));
    }

    if (*(a1 + 775) < 0)
    {
      operator delete(*(a1 + 752));
    }

    if (*(a1 + 736) == 1)
    {
      v3 = (a1 + 712);
      sub_100191E28(&v3);
    }

    sub_1006FA044(a1 + 144);
  }

  v3 = (a1 + 112);
  sub_10005AAF8(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
  }

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

uint64_t sub_100732424(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    sub_100005F2C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_10004EFD0((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  sub_10006F264((a1 + 64), (a2 + 64));
  if (*(a2 + 119) < 0)
  {
    sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
  }

  v7 = *(a2 + 120);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 120) = v7;
  sub_10006F264((a1 + 136), (a2 + 136));
  sub_10005C7A4((a1 + 168), (a2 + 168));
  if (*(a2 + 199) < 0)
  {
    sub_100005F2C((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v8 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v8;
  }

  *(a1 + 200) = *(a2 + 200);
  return a1;
}

void sub_100732554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978((v3 + 168));
  if (*(v3 + 160) == 1 && *(v3 + 159) < 0)
  {
    operator delete(*(v3 + 136));
  }

  if (*(v3 + 119) < 0)
  {
    operator delete(*(v3 + 96));
  }

  if (*(v3 + 88) == 1 && *(v3 + 87) < 0)
  {
    operator delete(*(v3 + 64));
  }

  sub_1000087B4(va);
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void *sub_100732600@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) <= a2)
  {
    v3 = result + 3;
  }

  else
  {
    v3 = (*result + 24 * a2);
  }

  if (*(v3 + 16) == 1)
  {
    return sub_1001CD6B4(a3, *v3, v3[1], v3[1] - *v3);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

uint64_t sub_100732654(unsigned __int8 **a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v18[3] = v2;
  v18[4] = v3;
  v18[0] = 0;
  v7 = *v5;
  if (v7 == 45 || v7 == 43)
  {
    *a1 = ++v5;
  }

  v13[0] = 0;
  v14 = 1;
  v15 = v18;
  v16 = v5;
  v17 = v4;
  v8 = sub_1007326F8(v13);
  v9 = v18[0];
  if (v18[0] >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v18[0] < 0x8000000000000001)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (v7 == 45)
  {
    v9 = -v18[0];
    result = v11;
  }

  else
  {
    result = v10;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1007326F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  *(a1 + 32) = v1 - 1;
  v3 = *(a1 + 16);
  *v3 = 0;
  if (v2 <= v1 - 1)
  {
    v4 = *(v1 - 1);
    if ((v4 - 58) >= 0xF6u)
    {
      *v3 = (v4 - 48);
      *(a1 + 32) = v1 - 2;
      v30.__locale_ = 0;
      std::locale::locale(&v30);
      v7 = std::locale::classic();
      if (std::locale::operator==(&v30, v7))
      {
        v5 = sub_1007329A4(a1);
LABEL_39:
        std::locale::~locale(&v30);
        return v5;
      }

      v8 = std::locale::use_facet(&v30, &std::numpunct<char>::id);
      (v8->__vftable[1].__on_zero_shared)(&__p);
      v9 = v29;
      if ((v29 & 0x8000000000000000) != 0)
      {
        v9 = v28;
        if (!v28)
        {
          goto LABEL_36;
        }

        p_p = __p;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (*p_p >= 1)
      {
        v11 = (v8->__vftable[1].~facet_0)(v8);
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        if (v13 >= v12)
        {
          v14 = 0;
          v15 = __p;
          if (v29 >= 0)
          {
            v15 = &__p;
          }

          v16 = *v15 - 1;
          do
          {
            if (v16)
            {
              v17 = *(a1 + 8);
              v18 = *a1 | (v17 > 0x1999999999999999);
              *a1 = v18;
              v19 = 10 * v17;
              *(a1 + 8) = v19;
              v20 = *v13;
              if ((v20 - 58) < 0xF6u)
              {
                goto LABEL_41;
              }

              v21 = v20 - 48;
              v22 = v19 * (v20 - 48);
              if (v21)
              {
                if (v18)
                {
                  goto LABEL_41;
                }

                if (!is_mul_ok(v21, v19))
                {
                  goto LABEL_41;
                }

                v23 = *(a1 + 16);
                v24 = *v23;
                if (__CFADD__(v22, *v23))
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v23 = *(a1 + 16);
                v24 = *v23;
              }

              *v23 = v24 + v22;
              --v16;
            }

            else
            {
              if (*v13 != v11)
              {
                goto LABEL_36;
              }

              if (v13 == v12)
              {
LABEL_41:
                v5 = 0;
                goto LABEL_37;
              }

              if (v9 - 1 > v14)
              {
                ++v14;
              }

              if (v29 >= 0)
              {
                v25 = &__p;
              }

              else
              {
                v25 = __p;
              }

              v16 = v25[v14];
            }

            *(a1 + 32) = --v13;
          }

          while (v13 >= v12);
        }

        v5 = 1;
        goto LABEL_37;
      }

LABEL_36:
      v5 = sub_1007329A4(a1);
LABEL_37:
      if (v29 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_39;
    }
  }

  return 0;
}

void sub_100732970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1007329A4(char *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 4);
  if (v2 < v1)
  {
    return 1;
  }

  v4 = *a1;
  while (1)
  {
    v5 = *(a1 + 1);
    v4 |= v5 > 0x1999999999999999;
    *a1 = v4 & 1;
    v6 = 10 * v5;
    *(a1 + 1) = 10 * v5;
    v7 = *v2;
    if ((v7 - 58) < 0xF6u)
    {
      break;
    }

    v8 = v7 - 48;
    v9 = v6 * (v7 - 48);
    if (v8)
    {
      if (v4)
      {
        return 0;
      }

      if (!is_mul_ok(v8, v6))
      {
        return 0;
      }

      v10 = *(a1 + 2);
      v11 = *v10;
      if (__CFADD__(v9, *v10))
      {
        return 0;
      }
    }

    else
    {
      v10 = *(a1 + 2);
      v11 = *v10;
    }

    *v10 = v11 + v9;
    *(a1 + 4) = --v2;
    if (v2 < v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100732A58(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *sub_1000DFA58(a1, &v4, a2);
  if (!v2)
  {
    sub_1000A58E4("map::at:  key not found");
  }

  return v2 + 56;
}

_BYTE *sub_100732A9C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[688] = 0;
  if (*(a2 + 688) == 1)
  {
    sub_100732B04(a1, a2);
    a1[688] = 1;
  }

  return a1;
}

void sub_100732AE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 688) == 1)
  {
    sub_10073425C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100732B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100732C24(a1, a2);
  sub_100734148(v4 + 71, a2 + 568);
  *(a1 + 600) = *(a2 + 600);
  if (*(a2 + 631) < 0)
  {
    sub_100005F2C((a1 + 608), *(a2 + 608), *(a2 + 616));
  }

  else
  {
    v5 = *(a2 + 608);
    *(a1 + 624) = *(a2 + 624);
    *(a1 + 608) = v5;
  }

  v6 = (a1 + 632);
  if (*(a2 + 655) < 0)
  {
    sub_100005F2C(v6, *(a2 + 632), *(a2 + 640));
  }

  else
  {
    v7 = *(a2 + 632);
    *(a1 + 648) = *(a2 + 648);
    *v6 = v7;
  }

  sub_10073420C(a1 + 656, (a2 + 656));
  return a1;
}

void sub_100732BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 631) < 0)
  {
    operator delete(*v4);
  }

  if (*(v3 + 592) == 1)
  {
    sub_100191E28(va);
  }

  sub_1006FA044(v3);
  _Unwind_Resume(a1);
}

_BYTE *sub_100732C24(_BYTE *a1, uint64_t a2)
{
  v4 = sub_100732DE8(a1, a2);
  sub_10006F264(v4 + 280, (a2 + 280));
  sub_10006F264(a1 + 312, (a2 + 312));
  sub_10006F264(a1 + 344, (a2 + 344));
  sub_10006F264(a1 + 376, (a2 + 376));
  sub_10006F264(a1 + 408, (a2 + 408));
  sub_10006F264(a1 + 440, (a2 + 440));
  sub_10006F264(a1 + 472, (a2 + 472));
  sub_10006F264(a1 + 504, (a2 + 504));
  sub_100733EB4(a1 + 67, a2 + 536);
  return a1;
}

void sub_100732CBC(_Unwind_Exception *a1)
{
  if (*(v1 + 528) == 1 && *(v1 + 527) < 0)
  {
    operator delete(*(v1 + 504));
  }

  if (*(v1 + 496) == 1 && *(v1 + 495) < 0)
  {
    operator delete(*(v1 + 472));
  }

  if (*(v1 + 464) == 1 && *(v1 + 463) < 0)
  {
    operator delete(*(v1 + 440));
  }

  if (*(v1 + 432) == 1 && *(v1 + 431) < 0)
  {
    operator delete(*(v1 + 408));
  }

  if (*(v1 + 400) == 1 && *(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  if (*(v1 + 368) == 1 && *(v1 + 367) < 0)
  {
    operator delete(*(v1 + 344));
  }

  if (*(v1 + 336) == 1 && *(v1 + 335) < 0)
  {
    operator delete(*(v1 + 312));
  }

  sub_1007340F4(v1);
  _Unwind_Resume(a1);
}

void sub_100732DCC()
{
  if (*(v0 + 272) == 1)
  {
    sub_1006FA180(v0);
  }

  JUMPOUT(0x100732DC4);
}

char *sub_100732DE8(char *a1, uint64_t a2)
{
  *a1 = 0;
  a1[272] = 0;
  if (*(a2 + 272) == 1)
  {
    sub_100732E50(a1, a2);
    a1[272] = 1;
  }

  return a1;
}

void sub_100732E30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 272) == 1)
  {
    sub_1006FA180(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100732E50(char *a1, __int128 *a2)
{
  v4 = sub_100732F80(a1, a2);
  sub_100733394(v4 + 13, a2 + 104);
  sub_100733870(a1 + 17, a2 + 136);
  sub_100733B38(a1 + 168, a2 + 168);
  sub_100733BA0(a1 + 208, (a2 + 13));
  sub_100733BFC(a1 + 30, (a2 + 15));
  return a1;
}

void sub_100732EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 232) == 1)
  {
    sub_1000087B4(va);
  }

  if (*(v3 + 200) == 1 && *(v3 + 192) == 1 && *(v3 + 191) < 0)
  {
    operator delete(*(v3 + 168));
  }

  if (*(v3 + 160) == 1)
  {
    sub_1006FA290(va);
  }

  if (*(v3 + 128) == 1)
  {
    sub_1006FA34C(va);
  }

  sub_100733E3C(v3);
  _Unwind_Resume(a1);
}

char *sub_100732F80(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[96] = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v5 = *(a2 + 24);
      *(__dst + 5) = *(a2 + 5);
      *(__dst + 24) = v5;
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v6 = a2[3];
      *(__dst + 8) = *(a2 + 8);
      *(__dst + 3) = v6;
    }

    *(__dst + 9) = 0;
    *(__dst + 10) = 0;
    *(__dst + 11) = 0;
    sub_1007330C4(__dst + 9, *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
    __dst[96] = 1;
  }

  return __dst;
}

void sub_100733064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 96) == 1)
  {
    sub_100733328(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007330C4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10073314C(result, a4);
  }

  return result;
}

void sub_10073312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006FA290(&a9);
  _Unwind_Resume(a1);
}

void sub_10073314C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100733198(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100733198(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1007331F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10006F264(v4, v6);
      *(v4 + 32) = *(v6 + 32);
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_100733298(v8);
  return v4;
}

uint64_t sub_100733298(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007332D0(a1);
  }

  return a1;
}

void sub_1007332D0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = v1;
    v1 -= 5;
    if (*(v3 - 16) == 1 && *(v3 - 17) < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_100733328(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_1006FA290(&v3);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

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

uint64_t *sub_100733394(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1007333F0(a1, a2);
  return a1;
}

void sub_1007333CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1006FA34C(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007333F0(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100733450(result, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *sub_100733450(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007334D8(result, a4);
  }

  return result;
}

void sub_1007334B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006FA34C(&a9);
  _Unwind_Resume(a1);
}

void sub_1007334D8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_100733524(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100733524(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

char *sub_10073357C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 8;
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 8);
      sub_100733634(v4 + 8, v6);
      *(v4 + 18) = *(v6 + 64);
      v4 = v12 + 80;
      v12 += 80;
      v6 += 80;
    }

    while (v7 + 80 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1007337B0(v9);
  return v4;
}

char *sub_100733634(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[56] = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    sub_1007336E4(__dst + 24, a2 + 24);
    __dst[56] = 1;
  }

  return __dst;
}

void sub_1007336AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    sub_100733760(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1007336E4(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    sub_100034C50(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_100733740(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_101760EC4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100733760(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007337B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007337FC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1007337FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 16) == 1)
      {
        if (*(v6 - 24) == 1)
        {
          v7 = *(v6 - 48);
          if (v7)
          {
            *(v6 - 40) = v7;
            operator delete(v7);
          }
        }

        if (*(v6 - 49) < 0)
        {
          operator delete(*(v6 - 72));
        }
      }

      v6 -= 80;
    }

    while (v6 != a5);
  }
}

uint64_t *sub_100733870(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1007338CC(a1, a2);
  return a1;
}

void sub_1007338A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1006FA290(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007338CC(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10073392C(result, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *sub_10073392C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007339B4(result, a4);
  }

  return result;
}

void sub_100733994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006FA290(&a9);
  _Unwind_Resume(a1);
}

void sub_1007339B4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100733A00(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100733A00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100733A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10006F264(v4, v6);
      *(v4 + 32) = *(v6 + 32);
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_100733B00(v8);
  return v4;
}

uint64_t sub_100733B00(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007332D0(a1);
  }

  return a1;
}

_BYTE *sub_100733B38(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_10006F264(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_100733B80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_1017618D0(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100733BA0(char *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  sub_1002219CC(a1, a2);
  return a1;
}

void sub_100733BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1000087B4(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100733BFC(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100733C58(a1, a2);
  return a1;
}

void sub_100733C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1001C6984(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100733C58(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100733CB8(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *sub_100733CB8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100190468(result, a4);
  }

  return result;
}

void sub_100733D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6984(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100733D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100733DF0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1000DD108(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100733E3C(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    sub_1006FA290(&v3);
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t *sub_100733EB4(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100733F10(a1, a2);
  return a1;
}

void sub_100733EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1001C6984(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100733F10(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100733F70(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *sub_100733F70(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100190468(result, a4);
  }

  return result;
}

void sub_100733FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6984(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100733FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1007340A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1000DD108(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007340F4(uint64_t a1)
{
  if (*(a1 + 304) == 1 && *(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 272) == 1)
  {
    sub_1006FA180(a1);
  }

  return a1;
}

uint64_t *sub_100734148(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1007341A4(a1, a2);
  return a1;
}

void sub_100734180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_100191E28(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007341A4(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100191BAC(result, *a2, *(a2 + 8), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_10073420C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_10073423C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073425C(uint64_t a1)
{
  if (*(a1 + 680) == 1 && *(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 592) == 1)
  {
    v3 = (a1 + 568);
    sub_100191E28(&v3);
  }

  return sub_1006FA044(a1);
}

void sub_1007342E4(uint64_t a1)
{
  if (*a1)
  {
    sub_10005C234(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100734324(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 688) == *(a2 + 688))
  {
    if (*(a1 + 688))
    {
      sub_10073454C(a1, a2);
      sub_100734D90(a1 + 568, (a2 + 568));
      *(a1 + 600) = *(a2 + 600);
      v4 = (a1 + 608);
      if (*(a1 + 631) < 0)
      {
        operator delete(*v4);
      }

      v5 = *(a2 + 608);
      *(a1 + 624) = *(a2 + 624);
      *v4 = v5;
      *(a2 + 631) = 0;
      *(a2 + 608) = 0;
      v6 = (a1 + 632);
      if (*(a1 + 655) < 0)
      {
        operator delete(*v6);
      }

      v7 = *(a2 + 632);
      *(a1 + 648) = *(a2 + 648);
      *v6 = v7;
      *(a2 + 655) = 0;
      *(a2 + 632) = 0;
      sub_10016A270(a1 + 656, (a2 + 656));
    }
  }

  else
  {
    if (*(a1 + 688))
    {
      if (*(a1 + 680) == 1 && *(a1 + 679) < 0)
      {
        operator delete(*(a1 + 656));
      }

      if (*(a1 + 655) < 0)
      {
        operator delete(*(a1 + 632));
      }

      if (*(a1 + 631) < 0)
      {
        operator delete(*(a1 + 608));
      }

      if (*(a1 + 592) == 1)
      {
        v12 = (a1 + 568);
        sub_100191E28(&v12);
      }

      sub_1006FA044(a1);
      v8 = 0;
    }

    else
    {
      sub_100734EA0(a1, a2);
      *(a1 + 568) = 0;
      *(a1 + 592) = 0;
      if (*(a2 + 592) == 1)
      {
        *(a1 + 584) = 0;
        *(a1 + 568) = 0u;
        *(a1 + 568) = *(a2 + 568);
        *(a1 + 576) = *(a2 + 576);
        *(a2 + 584) = 0;
        *(a2 + 568) = 0u;
        *(a1 + 592) = 1;
      }

      *(a1 + 600) = *(a2 + 600);
      v9 = *(a2 + 608);
      *(a1 + 624) = *(a2 + 624);
      *(a1 + 608) = v9;
      *(a2 + 624) = 0;
      *(a2 + 616) = 0;
      *(a2 + 608) = 0;
      v10 = *(a2 + 632);
      *(a1 + 648) = *(a2 + 648);
      *(a1 + 632) = v10;
      *(a2 + 648) = 0;
      *(a2 + 640) = 0;
      *(a2 + 632) = 0;
      *(a1 + 656) = 0;
      *(a1 + 680) = 0;
      v8 = 1;
      if (*(a2 + 680) == 1)
      {
        v11 = *(a2 + 656);
        *(a1 + 672) = *(a2 + 672);
        *(a1 + 656) = v11;
        *(a2 + 672) = 0;
        *(a2 + 664) = 0;
        *(a2 + 656) = 0;
        *(a1 + 680) = 1;
      }
    }

    *(a1 + 688) = v8;
  }
}

uint64_t sub_10073454C(uint64_t a1, uint64_t a2)
{
  sub_10073460C(a1, a2);
  sub_10016A270(a1 + 280, (a2 + 280));
  sub_10016A270(a1 + 312, (a2 + 312));
  sub_10016A270(a1 + 344, (a2 + 344));
  sub_10016A270(a1 + 376, (a2 + 376));
  sub_10016A270(a1 + 408, (a2 + 408));
  sub_10016A270(a1 + 440, (a2 + 440));
  sub_10016A270(a1 + 472, (a2 + 472));
  sub_10016A270(a1 + 504, (a2 + 504));
  sub_100734C64(a1 + 536, (a2 + 536));
  return a1;
}

void sub_10073460C(uint64_t result, __n128 *a2)
{
  if (*(result + 272) == a2[17].n128_u8[0])
  {
    if (*(result + 272))
    {

      sub_100734664(result, a2);
    }
  }

  else if (*(result + 272))
  {
    *(sub_1006FA180(result) + 272) = 0;
  }

  else
  {

    sub_1007346E4(result, a2);
  }
}

uint64_t sub_100734664(uint64_t a1, __n128 *a2)
{
  sub_100734860(a1, a2);
  sub_100734A38(a1 + 104, (a2 + 104));
  sub_100734B1C(a1 + 136, (a2 + 136));
  sub_100734BC0(a1 + 168, (a2 + 168));
  sub_10055D990(a1 + 208, a2 + 13);
  sub_100734C64(a1 + 240, a2 + 15);
  return a1;
}

void sub_1007346E4(uint64_t a1, uint64_t a2)
{
  sub_100734D08(a1, a2);
  *(v3 + 104) = 0;
  *(v3 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    *(v3 + 104) = *(a2 + 104);
    *(v3 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(v3 + 128) = 1;
  }

  *(v3 + 136) = 0;
  *(v3 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    *(v3 + 136) = 0;
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 152) = *(a2 + 152);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(v3 + 160) = 1;
  }

  *(v3 + 168) = 0;
  *(v3 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    *(v3 + 192) = 0;
    if (*(a2 + 192) == 1)
    {
      v4 = *(a2 + 168);
      *(v3 + 184) = *(a2 + 184);
      *(v3 + 168) = v4;
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      *(a2 + 168) = 0;
      *(v3 + 192) = 1;
    }

    *(v3 + 200) = 1;
  }

  *(v3 + 208) = 0;
  *(v3 + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    *(v3 + 208) = 0;
    *(v3 + 216) = 0;
    *(v3 + 224) = 0;
    *(v3 + 208) = *(a2 + 208);
    *(v3 + 224) = *(a2 + 224);
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(v3 + 232) = 1;
  }

  *(v3 + 240) = 0;
  *(v3 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    *(v3 + 240) = 0;
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
    *(v3 + 240) = *(a2 + 240);
    *(v3 + 256) = *(a2 + 256);
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(v3 + 264) = 1;
  }

  *(v3 + 272) = 1;
}

__n128 sub_100734860(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      v6 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v6;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      sub_1007349F8(a1 + 72);
      result = *(a2 + 72);
      *(a1 + 72) = result;
      *(a1 + 88) = *(a2 + 11);
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
    }
  }

  else if (*(a1 + 96))
  {
    v11 = (a1 + 72);
    sub_1006FA290(&v11);
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 96) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v10 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v10;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = *(a2 + 72);
    *(a1 + 72) = result;
    *(a1 + 88) = *(a2 + 11);
    *(a2 + 72) = 0uLL;
    *(a2 + 11) = 0;
    *(a1 + 96) = 1;
  }

  return result;
}

void sub_1007349F8(uint64_t a1)
{
  if (*a1)
  {
    sub_1006FA2E4(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

__n128 sub_100734A38(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100734ADC(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1006FA34C(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_100734ADC(uint64_t *a1)
{
  if (*a1)
  {
    sub_1006FA3A0(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__n128 sub_100734B1C(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1007349F8(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1006FA290(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_100734BC0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 32) == a2[2].n128_u8[0])
  {
    if (*(a1 + 32))
    {
      sub_10016A270(a1, a2);
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v3 = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 24) = 0;
      v3 = 1;
      if (a2[1].n128_u8[8] == 1)
      {
        v4 = *a2;
        *(a1 + 16) = a2[1].n128_u64[0];
        *a1 = v4;
        *(a2 + 8) = 0uLL;
        a2->n128_u64[0] = 0;
        *(a1 + 24) = 1;
      }
    }

    *(a1 + 32) = v3;
  }
}

__n128 sub_100734C64(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1001C71E8(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1001C6984(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

__n128 sub_100734D08(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v4 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v4;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = *(a2 + 72);
    *(a1 + 72) = result;
    *(a1 + 88) = *(a2 + 11);
    *(a2 + 72) = 0uLL;
    *(a2 + 11) = 0;
    *(a1 + 96) = 1;
  }

  return result;
}

__n128 sub_100734D90(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100734E34(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100191E28(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_100734E34(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 248;
        sub_100191D80((v3 - 240));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double sub_100734EA0(_BYTE *a1, uint64_t a2)
{
  v3 = sub_1007350EC(a1, a2);
  v3[280] = 0;
  v3[304] = 0;
  if (*(a2 + 304) == 1)
  {
    v4 = *(a2 + 280);
    *(v3 + 37) = *(a2 + 296);
    *(v3 + 280) = v4;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0;
    *(a2 + 280) = 0;
    v3[304] = 1;
  }

  v3[312] = 0;
  v3[336] = 0;
  if (*(a2 + 336) == 1)
  {
    v4 = *(a2 + 312);
    *(v3 + 41) = *(a2 + 328);
    *(v3 + 312) = v4;
    *(a2 + 320) = 0;
    *(a2 + 328) = 0;
    *(a2 + 312) = 0;
    v3[336] = 1;
  }

  v3[344] = 0;
  v3[368] = 0;
  if (*(a2 + 368) == 1)
  {
    v4 = *(a2 + 344);
    *(v3 + 45) = *(a2 + 360);
    *(v3 + 344) = v4;
    *(a2 + 352) = 0;
    *(a2 + 360) = 0;
    *(a2 + 344) = 0;
    v3[368] = 1;
  }

  v3[376] = 0;
  v3[400] = 0;
  if (*(a2 + 400) == 1)
  {
    v4 = *(a2 + 376);
    *(v3 + 49) = *(a2 + 392);
    *(v3 + 376) = v4;
    *(a2 + 384) = 0;
    *(a2 + 392) = 0;
    *(a2 + 376) = 0;
    v3[400] = 1;
  }

  v3[408] = 0;
  v3[432] = 0;
  if (*(a2 + 432) == 1)
  {
    v4 = *(a2 + 408);
    *(v3 + 53) = *(a2 + 424);
    *(v3 + 408) = v4;
    *(a2 + 416) = 0;
    *(a2 + 424) = 0;
    *(a2 + 408) = 0;
    v3[432] = 1;
  }

  v3[440] = 0;
  v3[464] = 0;
  if (*(a2 + 464) == 1)
  {
    v4 = *(a2 + 440);
    *(v3 + 57) = *(a2 + 456);
    *(v3 + 440) = v4;
    *(a2 + 448) = 0;
    *(a2 + 456) = 0;
    *(a2 + 440) = 0;
    v3[464] = 1;
  }

  v3[472] = 0;
  v3[496] = 0;
  if (*(a2 + 496) == 1)
  {
    v4 = *(a2 + 472);
    *(v3 + 61) = *(a2 + 488);
    *(v3 + 472) = v4;
    *(a2 + 480) = 0;
    *(a2 + 488) = 0;
    *(a2 + 472) = 0;
    v3[496] = 1;
  }

  v3[504] = 0;
  v3[528] = 0;
  if (*(a2 + 528) == 1)
  {
    v4 = *(a2 + 504);
    *(v3 + 65) = *(a2 + 520);
    *(v3 + 504) = v4;
    *(a2 + 520) = 0;
    *(a2 + 504) = 0;
    *(a2 + 512) = 0;
    v3[528] = 1;
  }

  v3[536] = 0;
  v3[560] = 0;
  if (*(a2 + 560) == 1)
  {
    *(v3 + 69) = 0;
    *&v4 = 0;
    *(v3 + 536) = 0u;
    *(v3 + 67) = *(a2 + 536);
    *(v3 + 34) = *(a2 + 544);
    *(a2 + 552) = 0;
    *(a2 + 536) = 0u;
    v3[560] = 1;
  }

  return *&v4;
}

_BYTE *sub_1007350EC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[272] = 0;
  if (*(a2 + 272) == 1)
  {
    sub_1007346E4(a1, a2);
  }

  return a1;
}

uint64_t sub_100735130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FB24C(a1, a2);
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  sub_1007321B4(v4 + 14, *(a2 + 112), *(a2 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 120) - *(a2 + 112)) >> 3));
  if (*(a2 + 159) < 0)
  {
    sub_100005F2C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v5 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v5;
  }

  if (*(a2 + 183) < 0)
  {
    sub_100005F2C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v6 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v6;
  }

  if (*(a2 + 207) < 0)
  {
    sub_100005F2C((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v7 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v7;
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  sub_10004EFD0((a1 + 208), *(a2 + 208), *(a2 + 216), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
  if (*(a2 + 255) < 0)
  {
    sub_100005F2C((a1 + 232), *(a2 + 232), *(a2 + 240));
  }

  else
  {
    v8 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = v8;
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  sub_10004EFD0((a1 + 256), *(a2 + 256), *(a2 + 264), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 264) - *(a2 + 256)) >> 3));
  *(a1 + 280) = *(a2 + 280);
  return a1;
}

void sub_100735294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  if (*(v3 + 207) < 0)
  {
    operator delete(*(v3 + 184));
  }

  if (*(v3 + 183) < 0)
  {
    operator delete(*(v3 + 160));
  }

  if (*(v3 + 159) < 0)
  {
    operator delete(*(v3 + 136));
  }

  sub_10005AAF8(va);
  sub_10067AA50(v3);
  _Unwind_Resume(a1);
}

void *sub_100735330(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100735390(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_100005348(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = 24 * v2;
  v18 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
    v7 = v17;
    v9 = v18;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    v9 = 24 * v2;
  }

  *&v18 = v9 + 24;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  sub_1007354E0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000054E0(&v16);
  return v15;
}

void sub_1007354CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000054E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007354E0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      a4 += 24;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 = (v6 + 24);
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 24);
    }
  }

  return sub_1007322F8(v9);
}

void sub_1007355B0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v11 = 0uLL;
  v12 = 0;
  sub_100B2FB0C(v7);
  if (v8 >= 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = v7[0];
  }

  v9[0] = a1;
  v9[1] = v4;
  sub_100006354(v9, &object);
  xpc::dyn_cast_or_default();
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  v5 = HIBYTE(v12);
  v6 = SHIBYTE(v12);
  if (v12 < 0)
  {
    v5 = *(&v11 + 1);
  }

  if (v5)
  {
    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v6 < 0)
    {
      operator delete(v11);
    }
  }
}

void sub_1007356A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void *sub_1007356EC(void *a1)
{
  *a1 = off_101E77198;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100735738(void *a1)
{
  *a1 = off_101E77198;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100735818(uint64_t result, uint64_t a2)
{
  *a2 = off_101E77198;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100735858(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100735868(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007358A8(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        v5 = (*(**(v3 + 40) + 16))(*(v3 + 40), *(v3 + 48));
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          sub_10177C8A0();
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, v3);
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_100735A14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100735A60(uint64_t **a1)
{
  v1 = **a1;
  sub_10072FE3C(v1);
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

uint64_t *sub_100735B14(void **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v4 = *v1;
  v2 = (v1 + 1);
  v3 = v4;
  sub_1001696A4((v4 + 128), v2);
  v5 = *(v4 + 104);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + 96);
      if (v8)
      {
        if ((*(v3 + 152) & 1) == 0)
        {
          sub_1000D1644();
        }

        (*(*v8 + 96))(v8, *(v3 + 48), v3 + 128);
      }

      sub_100004A34(v7);
    }
  }

  sub_10072F5CC(v3, v2);
  sub_1000EF424(&v11);
  return sub_1000049E0(&v10);
}

void sub_100735BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100735C00(uint64_t a1@<X0>, const char *a2@<X1>, int64_t a3@<X2>, char a4@<W3>, void **a5@<X8>)
{
  *a5 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    *a5 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_9;
  }

  v12 = xpc_null_create();
LABEL_8:
  *a5 = v12;
LABEL_9:
  xpc_release(v11);
  v13 = *a5;
  v14 = __p;
  sub_100B2FAEC(__p);
  if (v30 < 0)
  {
    v14 = __p[0];
  }

  v15 = *(a1 + 32);
  object[1] = *(a1 + 24);
  v28 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = sub_100A94378();
  xpc_dictionary_set_int64(v13, v14, v16);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
    if (a4)
    {
      goto LABEL_17;
    }
  }

  else if (a4)
  {
LABEL_17:
    v26 = xpc_int64_create(a3);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    sub_100B2FAFC(__p);
    if (v30 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    v24 = a5;
    v25 = v17;
    sub_10000F688(&v24, &v26, object);
    xpc_release(object[0]);
    object[0] = 0;
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v26);
    v26 = 0;
    goto LABEL_35;
  }

  if (*(a1 + 112) == 1)
  {
    v22 = xpc_int64_create(*(a1 + 104));
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    sub_100B2FAFC(__p);
    if (v30 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v24 = a5;
    v25 = v18;
    sub_10000F688(&v24, &v22, &v23);
    xpc_release(v23);
    v23 = 0;
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v22);
    v22 = 0;
  }

LABEL_35:
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v20 = xpc_string_create(a2);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  sub_100B2FB0C(__p);
  if (v30 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  v24 = a5;
  v25 = v19;
  sub_10000F688(&v24, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v20);
}

void sub_100735ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  xpc_release(v26);
  sub_100DC3ED0(v25);
  _Unwind_Resume(a1);
}

uint64_t *sub_100735F84(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_100736040(*v1 + 216, (v1 + 1));
  sub_10072CD4C(v2);
  sub_100735FF0(&v5);
  return sub_1000049E0(&v4);
}

void sub_100735FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100735FF0(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100735FF0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100732020(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_100736040(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  *(a1 + 48) = *(a2 + 48);
  sub_100220FC4(a1 + 56, a2 + 56);
  std::string::operator=((a1 + 88), (a2 + 88));
  if (a1 == a2)
  {
    std::string::operator=((a1 + 136), (a2 + 136));
    std::string::operator=((a1 + 160), (a2 + 160));
    std::string::operator=((a1 + 184), (a2 + 184));
    std::string::operator=((a1 + 232), (a2 + 232));
  }

  else
  {
    sub_100736164((a1 + 112), *(a2 + 112), *(a2 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 120) - *(a2 + 112)) >> 3));
    std::string::operator=((a1 + 136), (a2 + 136));
    std::string::operator=((a1 + 160), (a2 + 160));
    std::string::operator=((a1 + 184), (a2 + 184));
    sub_100008234((a1 + 208), *(a2 + 208), *(a2 + 216), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
    std::string::operator=((a1 + 232), (a2 + 232));
    sub_100008234((a1 + 256), *(a2 + 256), *(a2 + 264), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 264) - *(a2 + 256)) >> 3));
  }

  *(a1 + 280) = *(a2 + 280);
  return a1;
}

void sub_100736164(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1007342E4(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10008E2D0(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_10073223C(a1, (v6 + v12), a3, v11);
  }
}

BOOL sub_100736304(uint64_t a1, uint64_t a2)
{
  v3 = [NSDictionary typecast:a2];
  if (v3)
  {
    sub_100736710(a1, @"transferType", v3);
    sub_1007367B8((a1 + 1), @"pendingTransferStatus", v3);
    sub_1004561CC((a1 + 24), @"mcc", v3);
    sub_1004561CC((a1 + 48), @"mnc", v3);
    sub_1004561CC((a1 + 72), @"gid1", v3);
    sub_1004561CC((a1 + 96), @"gid2", v3);
    sub_1004561CC((a1 + 120), @"sourceDeviceDisplayName", v3);
    sub_1004561CC((a1 + 144), @"planLabelText", v3);
    sub_1004561CC((a1 + 168), @"planLabelTag", v3);
    sub_1004561CC((a1 + 192), @"sourceImei", v3);
    sub_1004561CC((a1 + 216), @"sourceEid", v3);
    sub_1004561CC((a1 + 240), @"carrierName", v3);
    sub_1004561CC((a1 + 264), @"phoneNumber", v3);
    sub_1004561CC((a1 + 288), @"countryCode", v3);
    sub_100736860((a1 + 8), @"isActiveOnSource", v3);
    sub_100736860((a1 + 9), @"isLocalTransfer", v3);
    sub_100736908((a1 + 4), @"sourceInstance", v3);
    sub_1004561CC((a1 + 312), @"transferToken", v3);
    sub_1004561CC((a1 + 336), @"transferTokenExpiration", v3);
    sub_1004561CC((a1 + 360), @"carrierTransferData", v3);
    sub_1004561CC((a1 + 384), @"imsi", v3);
    sub_1004561CC((a1 + 432), @"sourceIccid", v3);
    sub_1004561CC((a1 + 456), @"expectedTargetIccid", v3);
    sub_1004561CC((a1 + 480), @"expectedTargetIccidHash", v3);
    sub_1004561CC((a1 + 504), @"altSmdpFqdn", v3);
    sub_1007369B0(a1 + 528, @"transferSimServiceResponse", v3);
    sub_100736A58(a1 + 688, @"transferSimServiceWebServiceResponse", v3);
    sub_1004561CC((a1 + 856), @"WebsheetResponse", v3);
    sub_100736B00((a1 + 880), @"UnusableIccid", v3);
    sub_100736860((a1 + 11), @"transferStatusReport", v3);
    sub_100736860((a1 + 12), @"isQRCodeTransfer", v3);
    sub_100736860((a1 + 1224), @"isProvisioningMonitorModeExhausted", v3);
    sub_100736860((a1 + 1225), @"IsTransferUsingRecoveryWithoutExplicitIccidMapping", v3);
    sub_100736860((a1 + 15), @"isCrossPlatformTransfer", v3);
    sub_100736860((a1 + 1226), @"IsRetryMonitorModeExhausted", v3);
    sub_100736860((a1 + 16), @"IsSourcePlanDeleted", v3);
    sub_100736860((a1 + 17), @"isCarrierSignupPlan", v3);
    sub_1004561CC((a1 + 192), @"sourceImei", v3);
    sub_100736BA8(a1 + 914, @"sourceCsn", v3);
    sub_1004561CC((a1 + 936), @"sourceDeviceType", v3);
    sub_1004561CC((a1 + 960), @"sourceDisplayName", v3);
    sub_1004561CC((a1 + 408), @"carrierCanonicalID", v3);
    sub_100736860((a1 + 19), @"isUseDs", v3);
    v4 = *(a1 + 455);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a1 + 440);
    }

    if (v4)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 479);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 464);
    }

    if (v5)
    {
LABEL_8:
      v6 = 1;
    }

    else
    {
      v8 = *(a1 + 263);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a1 + 248);
      }

      v6 = v8 != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100736710(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100737E20(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1007367B8(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100737EAC(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100736860(BOOL *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100737F38(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100736908(_DWORD *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100737FCC(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_1007369B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100738058(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_100736A58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100738218(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100736B00(std::string *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_1007383C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100736BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_1007384A8(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100736C50(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  sub_1007373F0(a1, @"transferType", v3);
  sub_100737484((a1 + 1), @"pendingTransferStatus", v3);
  v4 = v3;
  v5 = *(a1 + 47);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 32);
  }

  if (v5)
  {
    sub_100737750((a1 + 24), @"mcc", v4);
  }

  v6 = v4;
  v7 = *(a1 + 71);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 56);
  }

  if (v7)
  {
    sub_100737750((a1 + 48), @"mnc", v6);
  }

  v8 = v6;
  v9 = *(a1 + 95);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 80);
  }

  if (v9)
  {
    sub_100737750((a1 + 72), @"gid1", v8);
  }

  v10 = v8;
  v11 = *(a1 + 119);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 104);
  }

  if (v11)
  {
    sub_100737750((a1 + 96), @"gid2", v10);
  }

  v12 = v10;
  v13 = *(a1 + 143);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 128);
  }

  if (v13)
  {
    sub_100737750((a1 + 120), @"sourceDeviceDisplayName", v12);
  }

  v14 = v12;
  v15 = *(a1 + 167);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a1 + 152);
  }

  if (v15)
  {
    sub_100737750((a1 + 144), @"planLabelText", v14);
  }

  v16 = v14;
  v17 = *(a1 + 191);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a1 + 176);
  }

  if (v17)
  {
    sub_100737750((a1 + 168), @"planLabelTag", v16);
  }

  v18 = v16;
  v19 = *(a1 + 215);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a1 + 200);
  }

  if (v19)
  {
    sub_100737750((a1 + 192), @"sourceImei", v18);
  }

  v20 = v18;
  v21 = *(a1 + 239);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a1 + 224);
  }

  if (v21)
  {
    sub_100737750((a1 + 216), @"sourceEid", v20);
  }

  v22 = v20;
  v23 = *(a1 + 263);
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a1 + 248);
  }

  if (v23)
  {
    sub_100737750((a1 + 240), @"carrierName", v22);
  }

  v24 = v22;
  v25 = *(a1 + 287);
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a1 + 272);
  }

  if (v25)
  {
    sub_100737750((a1 + 264), @"phoneNumber", v24);
  }

  v26 = v24;
  v27 = *(a1 + 311);
  if ((v27 & 0x80u) != 0)
  {
    v27 = *(a1 + 296);
  }

  if (v27)
  {
    sub_100737750((a1 + 288), @"countryCode", v26);
  }

  if (*(a1 + 8))
  {
    v29 = &__kCFBooleanTrue;
  }

  else
  {
    v29 = &__kCFBooleanFalse;
  }

  codec::setItem(v29, @"isActiveOnSource", v26, v28);
  if (*(a1 + 9))
  {
    v31 = &__kCFBooleanTrue;
  }

  else
  {
    v31 = &__kCFBooleanFalse;
  }

  codec::setItem(v31, @"isLocalTransfer", v26, v30);
  sub_100737518((a1 + 4), @"sourceInstance", v26);
  v32 = v26;
  v33 = *(a1 + 335);
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(a1 + 320);
  }

  if (v33)
  {
    sub_100737750((a1 + 312), @"transferToken", v32);
  }

  v34 = v32;
  v35 = *(a1 + 359);
  if ((v35 & 0x80u) != 0)
  {
    v35 = *(a1 + 344);
  }

  if (v35)
  {
    sub_100737750((a1 + 336), @"transferTokenExpiration", v34);
  }

  v36 = v34;
  v37 = *(a1 + 383);
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(a1 + 368);
  }

  if (v37)
  {
    sub_100737750((a1 + 360), @"carrierTransferData", v36);
  }

  v38 = v36;
  v39 = *(a1 + 407);
  if ((v39 & 0x80u) != 0)
  {
    v39 = *(a1 + 392);
  }

  if (v39)
  {
    sub_100737750((a1 + 384), @"imsi", v38);
  }

  v40 = v38;
  v41 = *(a1 + 455);
  if ((v41 & 0x80u) != 0)
  {
    v41 = *(a1 + 440);
  }

  if (v41)
  {
    sub_100737750((a1 + 432), @"sourceIccid", v40);
  }

  v42 = v40;
  v43 = *(a1 + 479);
  if ((v43 & 0x80u) != 0)
  {
    v43 = *(a1 + 464);
  }

  if (v43)
  {
    sub_100737750((a1 + 456), @"expectedTargetIccid", v42);
  }

  v44 = v42;
  v45 = *(a1 + 503);
  if ((v45 & 0x80u) != 0)
  {
    v45 = *(a1 + 488);
  }

  if (v45)
  {
    sub_100737750((a1 + 480), @"expectedTargetIccidHash", v44);
  }

  v46 = v44;
  v47 = *(a1 + 527);
  if ((v47 & 0x80u) != 0)
  {
    v47 = *(a1 + 512);
  }

  if (v47)
  {
    sub_100737750((a1 + 504), @"altSmdpFqdn", v46);
  }

  sub_1007375AC(a1 + 528, @"transferSimServiceResponse", v46);
  sub_100737638(a1 + 688, @"transferSimServiceWebServiceResponse", v46);
  v48 = v46;
  v49 = *(a1 + 879);
  if ((v49 & 0x80u) != 0)
  {
    v49 = *(a1 + 864);
  }

  if (v49)
  {
    sub_100737750((a1 + 856), @"WebsheetResponse", v48);
  }

  sub_1007376C4((a1 + 880), @"UnusableIccid", v48);
  if (*(a1 + 11))
  {
    v51 = &__kCFBooleanTrue;
  }

  else
  {
    v51 = &__kCFBooleanFalse;
  }

  codec::setItem(v51, @"transferStatusReport", v48, v50);
  if (*(a1 + 12))
  {
    v53 = &__kCFBooleanTrue;
  }

  else
  {
    v53 = &__kCFBooleanFalse;
  }

  codec::setItem(v53, @"isQRCodeTransfer", v48, v52);
  if (*(a1 + 1224))
  {
    v55 = &__kCFBooleanTrue;
  }

  else
  {
    v55 = &__kCFBooleanFalse;
  }

  codec::setItem(v55, @"isProvisioningMonitorModeExhausted", v48, v54);
  if (*(a1 + 1225))
  {
    v57 = &__kCFBooleanTrue;
  }

  else
  {
    v57 = &__kCFBooleanFalse;
  }

  codec::setItem(v57, @"IsTransferUsingRecoveryWithoutExplicitIccidMapping", v48, v56);
  if (*(a1 + 15))
  {
    v59 = &__kCFBooleanTrue;
  }

  else
  {
    v59 = &__kCFBooleanFalse;
  }

  codec::setItem(v59, @"isCrossPlatformTransfer", v48, v58);
  if (*(a1 + 1226))
  {
    v61 = &__kCFBooleanTrue;
  }

  else
  {
    v61 = &__kCFBooleanFalse;
  }

  codec::setItem(v61, @"IsRetryMonitorModeExhausted", v48, v60);
  if (*(a1 + 16))
  {
    v63 = &__kCFBooleanTrue;
  }

  else
  {
    v63 = &__kCFBooleanFalse;
  }

  codec::setItem(v63, @"IsSourcePlanDeleted", v48, v62);
  if (*(a1 + 17))
  {
    v65 = &__kCFBooleanTrue;
  }

  else
  {
    v65 = &__kCFBooleanFalse;
  }

  codec::setItem(v65, @"isCarrierSignupPlan", v48, v64);
  sub_100737750((a1 + 192), @"sourceImei", v48);
  sub_1007377F0(a1 + 914, @"sourceCsn", v48);
  sub_100737750((a1 + 936), @"sourceDeviceType", v48);
  sub_100737750((a1 + 960), @"sourceDisplayName", v48);
  v66 = v48;
  v67 = *(a1 + 431);
  if ((v67 & 0x80u) != 0)
  {
    v67 = *(a1 + 416);
  }

  if (v67)
  {
    sub_100737750((a1 + 408), @"carrierCanonicalID", v66);
  }

  if (*(a1 + 19))
  {
    v69 = &__kCFBooleanTrue;
  }

  else
  {
    v69 = &__kCFBooleanFalse;
  }

  codec::setItem(v69, @"isUseDs", v66, v68);

  return v66;
}