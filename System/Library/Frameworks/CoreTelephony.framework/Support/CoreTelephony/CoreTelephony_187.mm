void CellBroadcastConfig::sendCmasNotification_sync(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v62[0] = 0;
  v62[1] = 0;
  v63 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 240));
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
  *&buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &buf);
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
  (*(*v12 + 152))(v62, v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = (a1 + 40);
  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v62;
    if (v63 < 0)
    {
      v16 = v62[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Bundle path the cell broadcast resources: %{public}s", &buf, 0xCu);
  }

  v61 = 0;
  copyBundleIdentifier();
  v17 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    v53 = v62;
    if (v63 < 0)
    {
      v53 = v62[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v53;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get bundle identifier for bundle at %{public}s", &buf, 0xCu);
  }

  v59 = 0;
  value = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (SHIBYTE(v63) < 0)
  {
    sub_100005F2C(__dst, v62[0], v62[1]);
  }

  else
  {
    *__dst = *v62;
    v58 = v63;
  }

  if (SHIBYTE(v58) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v68 = v58;
  }

  key = 0;
  if (SHIBYTE(v68) < 0)
  {
    sub_100005F2C(&buf, __p[0], __p[1]);
  }

  else
  {
    buf = *__p;
    v70 = v68;
  }

  v65 = 0;
  if (ctu::cf::convert_copy())
  {
    v18 = key;
    key = v65;
    cf = v18;
    sub_100005978(&cf);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(buf);
  }

  v59 = key;
  key = 0;
  sub_100005978(&key);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst[0]);
  }

  CFArrayAppendValue(value, v59);
  v65 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v20 = v65;
  v65 = Mutable;
  *&buf = v20;
  sub_1000296E0(&buf);
  v21 = v65;
  cf = 0;
  __p[0] = 0;
  if (ctu::cf::convert_copy(__p, "kLoadBundle", 0x8000100, kCFAllocatorDefault, v22))
  {
    v23 = cf;
    cf = __p[0];
    *&buf = v23;
    sub_100005978(&buf);
  }

  key = cf;
  cf = 0;
  sub_100005978(&cf);
  CFDictionarySetValue(v21, key, value);
  sub_100005978(&key);
  v24 = Registry::getServiceMap(*(a1 + 240));
  v25 = v24;
  if (v26 < 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v24);
  *&buf = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &buf);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
  v33 = 1;
LABEL_43:
  v34 = (*(*v32 + 80))(v32);
  v35 = &kCFBooleanFalse;
  if (v34)
  {
    v35 = &kCFBooleanTrue;
  }

  CFDictionarySetValue(*a2, @"PhoneCallIsActive", *v35);
  cf = 0;
  v36 = Registry::getServiceMap(*(a1 + 240));
  v37 = v36;
  if (v38 < 0)
  {
    v39 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
    v40 = 5381;
    do
    {
      v38 = v40;
      v41 = *v39++;
      v40 = (33 * v40) ^ v41;
    }

    while (v41);
  }

  std::mutex::lock(v36);
  *&buf = v38;
  v42 = sub_100009510(&v37[1].__m_.__sig, &buf);
  if (v42)
  {
    v44 = v42[3];
    v43 = v42[4];
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v37);
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v43);
      v45 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v44 = 0;
  }

  std::mutex::unlock(v37);
  v43 = 0;
  v45 = 1;
LABEL_53:
  (*(*v44 + 56))(&cf, v44, kCellBroadcastLocalizationTable, *a2, 1);
  if ((v45 & 1) == 0)
  {
    sub_100004A34(v43);
  }

  key = 0;
  ctu::cf_to_xpc(cf, v46);
  v47 = buf;
  key = buf;
  if (buf && xpc_get_type(buf) == &_xpc_type_dictionary)
  {
    xpc_retain(v47);
  }

  else
  {
    key = xpc_null_create();
  }

  xpc_release(buf);
  ctu::cf_to_xpc(v65, v48);
  v49 = buf;
  object = buf;
  if (buf && xpc_get_type(buf) == &_xpc_type_dictionary)
  {
    xpc_retain(v49);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc_release(buf);
  v50 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&buf, &key);
    if (v70 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = p_buf;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Cell Broadcast message notification: %s", __p, 0xCu);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(buf);
    }

    v50 = *v14;
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&buf, &object);
    v52 = v70 >= 0 ? &buf : buf;
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Cell Broadcast message additional: %s", __p, 0xCu);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(buf);
    }
  }

  *&buf = key;
  if (key)
  {
    xpc_retain(key);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  __p[0] = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  sub_10002A37C(21, &buf, __p);
  xpc_release(__p[0]);
  xpc_release(buf);
  v55 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v54 = v65;
  if (v65)
  {
    CFRetain(v65);
  }

  sub_1013CE2B0(&v55, &v54, v14);
  sub_1000296E0(&v54);
  sub_10001021C(&v55);
  *&buf = key;
  if (key)
  {
    xpc_retain(key);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  __p[0] = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  sub_10002A37C(20, &buf, __p);
  xpc_release(__p[0]);
  xpc_release(buf);
  xpc_release(object);
  xpc_release(key);
  sub_10001021C(&cf);
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  sub_1000296E0(&v65);
  sub_100005978(&v59);
  sub_1000279DC(&value);
  sub_100005978(&v61);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }
}

void sub_1015CE860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, const void *a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, xpc_object_t a32, char a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_100005978(&a32);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1000279DC(&a24);
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1015CEA5C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1015D75A0;
  v9[3] = &unk_101F54140;
  v9[4] = a1 + 8;
  v9[5] = &v6;
  v10 = v9;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1015D75F0;
    v14 = &unk_101F54180;
    v15 = &v17;
    v16 = &v10;
    v17 = 0;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1015D75B4;
    v14 = &unk_101F54160;
    v15 = &v17;
    v16 = &v10;
    v17 = 0;
    dispatch_sync(v3, &block);
  }

  return v17;
}

__CFArray *CellBroadcastConfig::copyCurrentActiveCMASConfiguration_sync(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v7 = v6;
  if (a3)
  {
    theArray = sub_1015C8114(a1, a2, a3);
    if (theArray)
    {
      theDict = sub_1015C6100(a1, a2);
      Count = CFArrayGetCount(theArray);
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Count >= 1)
      {
        for (i = 0; Count != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v11 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v12 = CFGetTypeID(ValueAtIndex);
            if (v12 == CFDictionaryGetTypeID())
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

          Value = CFDictionaryGetValue(v13, @"AlertType");
          v15 = Value;
          if (Value && (v16 = CFGetTypeID(Value), v16 == CFStringGetTypeID()))
          {
            v40 = 0;
            if (theDict)
            {
              v17 = CFDictionaryGetValue(theDict, v15);
              v18 = v17;
              if (!v17 || (v19 = CFGetTypeID(v17), v19 != CFDictionaryGetTypeID()))
              {
                v28 = *v7;
                if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v44 = v15;
                  v29 = v28;
                  v30 = "Invalid content for: [%{public}@]";
                  goto LABEL_33;
                }

                continue;
              }

              if (CFDictionaryContainsKey(v18, @"UseMMI"))
              {
                v20 = CFDictionaryGetValue(v18, @"UseMMI");
                v21 = v20;
                buf[0] = 0;
                if (v20)
                {
                  v22 = CFGetTypeID(v20);
                  if (v22 == CFBooleanGetTypeID())
                  {
                    ctu::cf::assign(buf, v21, v23);
                  }
                }

                if (buf[0] == 1)
                {
                  v24 = sub_1015C6210(a1);
                  v25 = *v7;
                  v26 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
                  if (!v24)
                  {
                    if (!v26)
                    {
                      continue;
                    }

                    *buf = 138543362;
                    v44 = v15;
                    v34 = v25;
                    v35 = "#I Removing MMI alert type: [%{public}@]";
                    goto LABEL_36;
                  }

                  if (v26)
                  {
                    *buf = 138543362;
                    v44 = v15;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I MMI Alert allowed: [%{public}@]", buf, 0xCu);
                  }
                }
              }
            }

            if (CellBroadcastConfig::getCellBroadcastSettingForAlertType_sync(a1, a2, v15, &v40))
            {
              if (v40 == 1)
              {
                CFArrayAppendValue(Mutable, v13);
              }

              else
              {
                v33 = *v7;
                if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v44 = v15;
                  v34 = v33;
                  v35 = "#I Alert disabled by user: [%{public}@]";
LABEL_36:
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
                }
              }
            }

            else
            {
              v31 = *v7;
              if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v44 = v15;
                v29 = v31;
                v30 = "Failed to get current setting for alert type %{public}@";
LABEL_33:
                v32 = 12;
LABEL_38:
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v30, buf, v32);
              }
            }
          }

          else
          {
            v27 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v29 = v27;
              v30 = "Alert type was not found in the dictionary";
              v32 = 2;
              goto LABEL_38;
            }
          }
        }
      }

      sub_10001021C(&theDict);
      v36 = Mutable;
    }

    else
    {
      v36 = 0;
    }

    sub_100010250(&theArray);
  }

  else
  {
    v37 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Invalid protocol section identifier", buf, 2u);
    }

    return 0;
  }

  return v36;
}

void sub_1015CEFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1015CF018(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1015D762C;
  v5[3] = &unk_101F541A0;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A74C;
    v10 = &unk_101F53EC0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000597F0;
    v10 = &unk_101F53EA0;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1015CF144(const void **a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  *a1 = 0;
  v10 = (*(**(a2 + 48) + 16))(*(a2 + 48), a3);
  v11 = v10;
  if (a4)
  {
    v12 = CellBroadcastConfig::copyCurrentActiveCMASConfiguration_sync(a2, a3, a4);
    theArray = v12;
    if (v12)
    {
      Count = CFArrayGetCount(v12);
      if (Count >= 1)
      {
        v14 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
          v16 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v17 = CFGetTypeID(ValueAtIndex);
            if (v17 != CFDictionaryGetTypeID())
            {
              v16 = 0;
            }
          }

          v20 = 0;
          (*(a5 + 16))(a5, v16, &v20);
          if (v20 == 1)
          {
            break;
          }

          if (Count == ++v14)
          {
            goto LABEL_16;
          }
        }

        *buf = v16;
        sub_1002A2218(a1, buf);
      }
    }

    else
    {
      v19 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = a4;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I There is no active configuration for %{public}@", buf, 0xCu);
      }
    }

LABEL_16:
    sub_100010250(&theArray);
  }

  else
  {
    v18 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid protocol section identifier", buf, 2u);
    }
  }
}

void sub_1015CF32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100010250(va);
  sub_10001021C(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1015CF360(uint64_t a1, CFDictionaryRef theDict, _BYTE *a3)
{
  Value = CFDictionaryGetValue(theDict, @"FromServiceID");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 != CFNumberGetTypeID())
    {
      v7 = 0;
    }
  }

  v9 = CFDictionaryGetValue(theDict, @"ToServiceID");
  v11 = v9;
  if (v9)
  {
    v12 = CFGetTypeID(v9);
    if (v12 != CFNumberGetTypeID())
    {
      v11 = 0;
    }
  }

  v17 = 0;
  ctu::cf::assign(&v17, v7, v10);
  v13 = v17;
  v18 = 0;
  result = ctu::cf::assign(&v18, v11, v14);
  v16 = *(a1 + 32);
  if (v16 >= v13 && v16 <= v18)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1015CF444(uint64_t a1, CFDictionaryRef theDict, _BYTE *a3)
{
  Value = CFDictionaryGetValue(theDict, @"Category");
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFNumberGetTypeID())
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  result = ctu::cf::assign(&v11, v9, v6);
  if (*(a1 + 32) == v11)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1015CF4D4(uint64_t a1, int a2, int a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1015D7638;
  v9[3] = &unk_101F541C0;
  v9[4] = a1 + 8;
  v9[5] = &v6;
  v10 = v9;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10006A74C;
    v14 = &unk_101F53EC0;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1000597F0;
    v14 = &unk_101F53EA0;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v3, &block);
  }

  return v17 & 1;
}

void sub_1015CF608(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1015D7648;
  block[3] = &unk_101F541E0;
  block[4] = a1 + 8;
  block[5] = &v6;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    dispatch_sync(v4, block);
  }
}

uint64_t sub_1015CF6C8(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1015D7808;
  v7[3] = &unk_101F54200;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A74C;
    v12 = &unk_101F53EC0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000597F0;
    v12 = &unk_101F53EA0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_1015CF7FC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
      v6 = *(a1 + 208);
      *(a1 + 208) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      Registry::getTimerService(&v9, *(a1 + 240));
      sub_10000501C(v7, "CMAS metric submission timer");
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *__p = *v7;
      v11 = v8;
      v7[0] = 0;
      v7[1] = 0;
      v8 = 0;
      v12 = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015CFD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (*(v26 + 95) < 0)
  {
    operator delete(*(v26 + 72));
  }

  if (*(v26 + 23) < 0)
  {
    operator delete(*v26);
  }

  sub_1015D1B04(&a25);
  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

void sub_1015CFE18(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 240));
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

      goto LABEL_11;
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
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get analytics interface...", buf, 2u);
    }

    goto LABEL_67;
  }

LABEL_11:
  v59 = 0;
  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = v15;
  if (v15)
  {
    v59 = v15;
  }

  else
  {
    v16 = xpc_null_create();
    v59 = v16;
    if (!v16)
    {
      v17 = xpc_null_create();
      v16 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v16) == &_xpc_type_dictionary)
  {
    xpc_retain(v16);
    goto LABEL_19;
  }

  v17 = xpc_null_create();
LABEL_18:
  v59 = v17;
LABEL_19:
  xpc_release(v16);
  if (*(a2 + 23) >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  if (*(a2 + 124))
  {
    v53 = xpc_int64_create(*(a2 + 124));
    if (!v53)
    {
      v53 = xpc_null_create();
    }

    *buf = &v59;
    v56 = "InternetPath";
    sub_10000F688(buf, &v53, &v54);
    xpc_release(v54);
    v54 = 0;
    xpc_release(v53);
    v53 = 0;
    if (!v18)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v57 = xpc_int64_create(*(a1 + 508));
    if (!v57)
    {
      v57 = xpc_null_create();
    }

    *buf = &v59;
    v56 = "InternetPath";
    sub_10000F688(buf, &v57, &v58);
    xpc_release(v58);
    v58 = 0;
    xpc_release(v57);
    v57 = 0;
    if (!v18)
    {
      goto LABEL_45;
    }
  }

  v19 = sub_1000D3314(&v50, a2);
  v51 = xpc_int64_create(v19);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  *buf = &v59;
  v56 = "Body";
  sub_10000F688(buf, &v51, &v52);
  xpc_release(v52);
  v52 = 0;
  xpc_release(v51);
  v51 = 0;
  object = xpc_int64_create(*(a2 + 24));
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = &v59;
  v56 = "RAT";
  sub_10000F688(buf, &object, &v49);
  xpc_release(v49);
  v49 = 0;
  xpc_release(object);
  object = 0;
  v46 = xpc_int64_create(*(a2 + 28));
  if (!v46)
  {
    v46 = xpc_null_create();
  }

  *buf = &v59;
  v56 = "MessageType";
  sub_10000F688(buf, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
  v44 = xpc_int64_create(*(a2 + 32));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  *buf = &v59;
  v56 = "Channel";
  sub_10000F688(buf, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  v42 = xpc_int64_create(*(a2 + 48));
  if (!v42)
  {
    v42 = xpc_null_create();
  }

  *buf = &v59;
  v56 = "Language";
  sub_10000F688(buf, &v42, &v43);
  xpc_release(v43);
  v43 = 0;
  xpc_release(v42);
  v42 = 0;
  v40 = xpc_int64_create(*(a2 + 56));
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  *buf = &v59;
  v56 = "TriggerType";
  sub_10000F688(buf, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  v38 = xpc_int64_create(*(a2 + 64));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  *buf = &v59;
  v56 = "GeofencingDuration";
  sub_10000F688(buf, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
LABEL_45:
  v20 = *(a2 + 95);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 80);
  }

  if (v20)
  {
    v21 = sub_1000D3314(&v50, (a2 + 72));
    v36 = xpc_int64_create(v21);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    *buf = &v59;
    v56 = "CmamText";
    sub_10000F688(buf, &v36, &v37);
    xpc_release(v37);
    v37 = 0;
    xpc_release(v36);
    v36 = 0;
    v22 = sub_1000D3314(&v50, (a2 + 96));
    v34 = xpc_int64_create(v22);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    *buf = &v59;
    v56 = "CmamLongText";
    sub_10000F688(buf, &v34, &v35);
    xpc_release(v35);
    v35 = 0;
    xpc_release(v34);
    v34 = 0;
    v32 = xpc_int64_create(*(a2 + 120));
    if (!v32)
    {
      v32 = xpc_null_create();
    }

    *buf = &v59;
    v56 = "WeaHandlingType";
    sub_10000F688(buf, &v32, &v33);
    xpc_release(v33);
    v33 = 0;
    xpc_release(v32);
    v32 = 0;
    v23 = *(a2 + 136);
    if (v23)
    {
      v24 = *(a2 + 40);
      if (v24)
      {
        v30 = xpc_int64_create(v24 - v23);
        if (!v30)
        {
          v30 = xpc_null_create();
        }

        *buf = &v59;
        v56 = "WeaLatencyAfterAppleSafetyAlertReception";
        sub_10000F688(buf, &v30, &v31);
        xpc_release(v31);
        v31 = 0;
        xpc_release(v30);
        v30 = 0;
      }
    }

    else
    {
      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Invalid latency timestamp", buf, 2u);
      }

      *buf = &v59;
      v56 = "WeaLatencyAfterAppleSafetyAlertReception";
      sub_100E3F0C8(buf, &v29);
      xpc_release(v29);
      v29 = 0;
    }
  }

  v28 = v59;
  if (v59)
  {
    xpc_retain(v59);
  }

  else
  {
    v28 = xpc_null_create();
  }

  (*(*v12 + 16))(v12, "commCenterEmergencyAlerts", &v28);
  xpc_release(v28);
  v28 = 0;
  if (*(a1 + 224) == *(a1 + 216))
  {
    v26 = *(a1 + 208);
    if (v26)
    {
      (*(*v26 + 16))(v26);
      v27 = *(a1 + 208);
      *(a1 + 208) = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }
  }

  xpc_release(v59);
LABEL_67:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1015D0574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(*(v12 - 72));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void CellBroadcastConfig::addAppleSafetyAlertMetric_sync(uint64_t a1, uint64_t a2)
{
  memset(__p, 0, sizeof(__p));
  v23 = 0;
  v24 = 0;
  *v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  DWORD2(v17) = 11;
  LODWORD(v19) = 30;
  DWORD2(v19) = 3;
  v5 = *(a1 + 216);
  v6 = *(a1 + 224);
  v4 = (a1 + 216);
  *&__p[13] = 0u;
  *buf = a2;
  v26 = v16;
  if (v5 != v6)
  {
    while ((sub_1015D1B54(buf, v5) & 1) == 0)
    {
      v5 += 144;
      if (v5 == v6)
      {
        v5 = v6;
        goto LABEL_17;
      }
    }
  }

  if (v5 != v6)
  {
    for (i = v5 + 144; i != v6; i += 144)
    {
      if ((sub_1015D1B54(buf, i) & 1) == 0)
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v8 = *i;
        *(v5 + 16) = *(i + 16);
        *v5 = v8;
        *(i + 23) = 0;
        *i = 0;
        v9 = *(i + 56);
        v10 = *(i + 40);
        *(v5 + 24) = *(i + 24);
        *(v5 + 40) = v10;
        *(v5 + 56) = v9;
        if (*(v5 + 95) < 0)
        {
          operator delete(*(v5 + 72));
        }

        v11 = *(i + 72);
        *(v5 + 88) = *(i + 88);
        *(v5 + 72) = v11;
        *(i + 95) = 0;
        *(i + 72) = 0;
        if (*(v5 + 119) < 0)
        {
          operator delete(*(v5 + 96));
        }

        v12 = *(i + 96);
        *(v5 + 112) = *(i + 112);
        *(v5 + 96) = v12;
        *(i + 119) = 0;
        *(i + 96) = 0;
        v13 = *(i + 120);
        *(v5 + 136) = *(i + 136);
        *(v5 + 120) = v13;
        v5 += 144;
      }
    }
  }

LABEL_17:
  sub_1015D0994(v4, v5, *(a1 + 224));
  std::string::operator=(&v20[1], (a2 + 40));
  std::string::operator=(__p, (a2 + 16));
  *&__p[24] = *(a2 + 236);
  v14 = *(a1 + 240);
  v15 = *(a1 + 248);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = sub_1015D0AF0(v14);
  if (v15)
  {
    sub_100004A34(v15);
  }

  __p[28] = *(a1 + 508);
  if (!*(&v18 + 1))
  {
    sub_1015CF7FC(a1, v16);
  }

  sub_1015CFE18(a1, v16);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SBYTE7(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1015D0964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1015D0B98(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D0994(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v20 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = *a1 + a3;
      v9 = *a1 + a2;
      do
      {
        v10 = v9 + v7;
        if (*(v9 + v7 + 23) < 0)
        {
          operator delete(*v10);
        }

        v11 = v8 + v7;
        v12 = *(v8 + v7);
        *(v10 + 16) = *(v8 + v7 + 16);
        *v10 = v12;
        *(v11 + 23) = 0;
        *v11 = 0;
        v13 = *(v8 + v7 + 56);
        v14 = *(v8 + v7 + 40);
        *(v10 + 24) = *(v8 + v7 + 24);
        *(v10 + 40) = v14;
        *(v10 + 56) = v13;
        if (*(v10 + 95) < 0)
        {
          operator delete(*(v10 + 72));
        }

        v15 = v8 + v7;
        v16 = *(v11 + 72);
        *(v10 + 88) = *(v11 + 88);
        *(v10 + 72) = v16;
        *(v8 + v7 + 95) = 0;
        *(v11 + 72) = 0;
        v17 = v9 + v7;
        if (*(v9 + v7 + 119) < 0)
        {
          operator delete(*(v17 + 96));
        }

        v18 = *(v15 + 96);
        *(v17 + 112) = *(v15 + 112);
        *(v17 + 96) = v18;
        *(v15 + 119) = 0;
        *(v15 + 96) = 0;
        v19 = *(v15 + 120);
        *(v17 + 136) = *(v15 + 136);
        *(v17 + 120) = v19;
        v8 += 144;
        v9 += 144;
      }

      while (v8 + v7 != v5);
      v5 = a1[1];
      v20 = v9 - v6;
    }

    while (v5 != v20)
    {
      v5 -= 144;
      sub_1015D1A58(v5);
    }

    a1[1] = v20;
  }

  return a2;
}

uint64_t sub_1015D0AF0(Registry *a1)
{
  v3 = 0;
  v4 = 0;
  Registry::getTimerService(&v3, a1);
  if (v3)
  {
    v1 = (**v3)(v3) / 1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1;
}

void sub_1015D0B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015D0B98(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_1015D0BEC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v19 = 0;
  v20 = 0;
  CellBroadcastConfig::getEnhancedDeliverySwitchState_sync(a1, &v20, &v19);
  v17 = 0;
  v18 = 0;
  Registry::getMobileHelper(&v17, *(a1 + 240));
  v6 = v17;
  if (v17)
  {
    if (v20)
    {
      *buf = 0;
      *v14 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v20, @"EnhancedDeliveryPref");
      (*(*v6 + 16))(&v15, v6, kCommCenterSharedSettingsBundleId, *v14);
      sub_10002FE1C(buf, &v15);
      sub_10000A1EC(&v15);
      sub_100005978(v14);
      LOBYTE(v15) = 0;
      ctu::cf::assign(&v15, *buf, v7);
      *a3 = v15;
      v15 = CFStringCreateWithFormat(0, 0, @"%@%@", @"CellBroadcastSetting", v20);
      if (!v15)
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not get emergency alert preferences key", v14, 2u);
        }
      }

      *v14 = 0;
      (*(*v17 + 16))(&v13);
      sub_10002FE1C(v14, &v13);
      sub_10000A1EC(&v13);
      if (*v14)
      {
        LOBYTE(v13) = 0;
        ctu::cf::assign(&v13, *v14, v9);
        *a2 = v13;
      }

      sub_100045C8C(v14);
      sub_100005978(&v15);
      sub_100045C8C(buf);
    }

    else
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not get root key for CellBroadcast preferences", buf, 2u);
      }

      *a2 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not get mobileHelper in onCellBroadcastSettingsSynced_sync", buf, 2u);
    }
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_10001021C(&v19);
  return sub_100005978(&v20);
}

void sub_1015D0E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, const void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_100045C8C(&a13);
  sub_100005978(&a14);
  sub_100045C8C(&a15);
  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10001021C((v18 - 64));
  sub_100005978((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1015D0F2C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I CellBroadcast handling bundle change", buf, 2u);
  }

  v5 = *a2;
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  if (a2[31] < 0)
  {
    sub_100005F2C(__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *__p = *(a2 + 8);
    v32 = *(a2 + 3);
  }

  if (!v5)
  {
    v25 = *(a1 + 40);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v26 = "Trying to handle operator bundle change, but no change detected";
    goto LABEL_56;
  }

  if (v5 != 255)
  {
    goto LABEL_11;
  }

  v6 = HIBYTE(v32);
  if (v32 < 0)
  {
    v6 = __p[1];
  }

  if (v6)
  {
LABEL_11:
    theDict = 0;
    CellBroadcastConfig::getEarthquakeAlertsConfiguration_sync(a1, &theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"EnhancedDeliveryAvailability");
      v8 = Value;
      if (Value)
      {
        v9 = CFGetTypeID(Value);
        if (v9 != CFBooleanGetTypeID())
        {
          v8 = 0;
        }
      }

      v10 = CFDictionaryGetValue(theDict, @"AppleSafetyAlertsAvailability");
      v11 = v10;
      if (v10)
      {
        v12 = CFGetTypeID(v10);
        if (v12 == CFBooleanGetTypeID())
        {
          if (v8)
          {
            if ((*(a1 + 72) & 1) == 0)
            {
              v13 = *(a1 + 40);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Initializing Enhanced Delivery availability", buf, 2u);
              }

              *(a1 + 64) = v8;
              *(a1 + 72) = 1;
            }

            if ((*(a1 + 88) & 1) == 0)
            {
              v14 = *(a1 + 40);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Initializing Safety Alerts availability", buf, 2u);
              }

              *(a1 + 80) = v11;
              *(a1 + 88) = 1;
            }

            v29 = 0;
            sub_1015D0BEC(a1, &v29 + 1, &v29);
            v15 = *(a1 + 40);
            if ((*(a1 + 99) & 1) == 0)
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Initializing Emergency Alerts preference", buf, 2u);
                v15 = *(a1 + 40);
              }

              *(a1 + 98) = HIBYTE(v29) | 0x100;
            }

            if ((*(a1 + 97) & 1) == 0)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Initializing Enhanced Delivery preference", buf, 2u);
                v15 = *(a1 + 40);
              }

              *(a1 + 96) = v29 | 0x100;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I CellBroadcast availability and prefs variables initialized", buf, 2u);
            }

            v16 = *(a1 + 72);
            v17 = *(a1 + 64);
            if (v16 != 1 || v8 != v17 || *(a1 + 88) != 1 || v11 != *(a1 + 80))
            {
              v18 = *(a1 + 40);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                if (!v16 || (v19 = CFBooleanGetValue(v17), v20 = CFBooleanGetValue(v8), (*(a1 + 88) & 1) == 0))
                {
                  sub_1000D1644();
                }

                v21 = v20;
                v22 = CFBooleanGetValue(*(a1 + 80));
                v23 = CFBooleanGetValue(v11);
                *buf = 67109888;
                v34 = v19;
                v35 = 1024;
                v36 = v21;
                v37 = 1024;
                v38 = v22;
                v39 = 1024;
                v40 = v23;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Dispatching Darwin notification due to bundle change [%d -> %d], [%d -> %d]", buf, 0x1Au);
              }

              *(a1 + 64) = v8;
              *(a1 + 72) = 1;
              *(a1 + 80) = v11;
              *(a1 + 88) = 1;
              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
              CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCTSMSCellBroadcastConfigChangedNotification", 0, 0, 0);
            }

            goto LABEL_50;
          }
        }
      }

      v27 = *(a1 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v28 = "Earthquake Alerts configuration dictionary is incomplete";
LABEL_58:
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
      }
    }

    else
    {
      v27 = *(a1 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v28 = "Failed to get Earthquake Alerts configuration";
        goto LABEL_58;
      }
    }

LABEL_50:
    sub_10001021C(&theDict);
    goto LABEL_51;
  }

  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v26 = "Empty bundle ID";
LABEL_56:
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
  }

LABEL_51:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1015D1430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015D1470(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping State of CellBroadcastConfig", buf, 2u);
    v2 = *(a1 + 40);
  }

  v3 = *(a1 + 72);
  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    Value = CFBooleanGetValue(*(a1 + 64));
    *buf = 67109120;
    *&buf[4] = Value;
    v6 = "#I Earthquake Alerts delivery availability %d";
    v7 = v2;
    v8 = 8;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    *buf = 0;
    v6 = "#I Earthquake Alerts delivery availability not set";
    v7 = v2;
    v8 = 2;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_9:
  v9 = *(a1 + 88);
  v10 = *(a1 + 40);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 == 1)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = CFBooleanGetValue(*(a1 + 80));
    *buf = 67109120;
    *&buf[4] = v12;
    v13 = "#I Earthquake Alerts availability %d";
    v14 = v10;
    v15 = 8;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    *buf = 0;
    v13 = "#I Earthquake Alerts availability not set";
    v14 = v10;
    v15 = 2;
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_15:
  v16 = *(a1 + 99);
  v17 = *(a1 + 40);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16 == 1)
  {
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 98);
    *buf = 67109120;
    *&buf[4] = v19;
    v20 = "#I Emergency Alerts pref %d";
    v21 = v17;
    v22 = 8;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v20 = "#I Emergency Alerts pref not set";
    v21 = v17;
    v22 = 2;
  }

  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_21:
  v23 = *(a1 + 97);
  v24 = *(a1 + 40);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23 == 1)
  {
    if (!v25)
    {
      goto LABEL_27;
    }

    v26 = *(a1 + 96);
    *buf = 67109120;
    *&buf[4] = v26;
    v27 = "#I Enhanced Delivery pref %d";
    v28 = v24;
    v29 = 8;
  }

  else
  {
    if (!v25)
    {
      goto LABEL_27;
    }

    *buf = 0;
    v27 = "#I Enhanced Delivery pref not set";
    v28 = v24;
    v29 = 2;
  }

  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
LABEL_27:
  v30 = *(a1 + 160);
  v31 = *(a1 + 152);
  if (v30 == v31)
  {
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Earthquake Alerts list empty", buf, 2u);
    }
  }

  else
  {
    do
    {
      memset(v44, 0, sizeof(v44));
      *buf = &off_101EF3240;
      v43 = *(v31 + 8);
      if (*(v31 + 39) < 0)
      {
        sub_100005F2C(v44, *(v31 + 16), *(v31 + 24));
      }

      else
      {
        v32 = *(v31 + 16);
        *&v44[1] = *(v31 + 32);
        v44[0] = v32;
      }

      if (*(v31 + 63) < 0)
      {
        sub_100005F2C(&v44[1] + 8, *(v31 + 40), *(v31 + 48));
      }

      else
      {
        v33 = *(v31 + 40);
        *(&v44[2] + 1) = *(v31 + 56);
        *(&v44[1] + 8) = v33;
      }

      v34 = *(a1 + 40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (v44[2] >= 0)
        {
          v35 = &v44[1] + 8;
        }

        else
        {
          v35 = *(&v44[1] + 1);
        }

        if ((SBYTE7(v44[1]) & 0x80u) == 0)
        {
          v36 = v44;
        }

        else
        {
          v36 = *&v44[0];
        }

        *v38 = 136446466;
        v39 = v35;
        v40 = 2082;
        v41 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Stored Earthquake Alert: %{public}s, %{public}s", v38, 0x16u);
      }

      *buf = &off_101EF3240;
      if (SHIBYTE(v44[2]) < 0)
      {
        operator delete(*(&v44[1] + 1));
      }

      if (SBYTE7(v44[1]) < 0)
      {
        operator delete(*&v44[0]);
      }

      v31 += 64;
    }

    while (v31 != v30);
  }
}

void sub_1015D18D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015D18F8(uint64_t a1)
{
  sub_1015D1F6C(a1);

  operator delete();
}

void *sub_1015D1930(void *a1)
{
  sub_10000FF50((a1 + 7));
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    ctu::OsLogLogger::~OsLogLogger(v4);
    operator delete();
  }

  v5 = a1[2];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void sub_1015D19D4(void ***a1)
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
        v4 -= 144;
        sub_1015D1A58(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1015D1A58(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **sub_1015D1AC0(const void **a1, const void **a2)
{
  v4 = sub_10005C7A4(a1, a2);
  sub_10005C7A4(v4 + 1, a2 + 1);
  sub_10005C7A4(a1 + 2, a2 + 2);
  return a1;
}

uint64_t sub_1015D1B04(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_1015D1A58(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1015D1B54(void *a1, uint64_t a2)
{
  v4 = *a1;
  if (*(*a1 + 63) < 0)
  {
    sub_100005F2C(&__dst, *(v4 + 40), *(v4 + 48));
    v4 = *a1;
  }

  else
  {
    __dst = *(v4 + 40);
    v15 = *(v4 + 56);
  }

  if (*(v4 + 39) < 0)
  {
    sub_100005F2C(&v16, *(v4 + 16), *(v4 + 24));
  }

  else
  {
    v5 = *(v4 + 16);
    v17[0] = *(v4 + 32);
    v16 = v5;
  }

  sub_10011C9B0(v13, &__dst, 2);
  v6 = sub_100DAB6A0(a2, v13);
  sub_100009970(v13, v13[1]);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v17[i]) < 0)
    {
      operator delete(v17[i - 2]);
    }
  }

  if (v6)
  {
    v8 = a1[1];
    std::string::operator=(v8, a2);
    v9 = *(a2 + 24);
    v10 = *(a2 + 40);
    *(v8 + 56) = *(a2 + 56);
    *(v8 + 40) = v10;
    *(v8 + 24) = v9;
    std::string::operator=((v8 + 72), (a2 + 72));
    std::string::operator=((v8 + 96), (a2 + 96));
    v11 = *(a2 + 120);
    *(v8 + 136) = *(a2 + 136);
    *(v8 + 120) = v11;
  }

  return v6;
}

void sub_1015D1CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015D1D34(void *a1, uint64_t a2)
{
  (*(***a1 + 192))(__p);
  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(&__dst, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    __dst = *(a2 + 72);
    v15 = *(a2 + 88);
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(&v16, *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v16 = *(a2 + 96);
    v17[0] = *(a2 + 112);
  }

  sub_10011C9B0(v11, &__dst, 2);
  v4 = sub_100DAB6A0(__p, v11);
  sub_100009970(v11, v11[1]);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v17[i]) < 0)
    {
      operator delete(v17[i - 2]);
    }
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (!v4)
    {
      return v4;
    }

    goto LABEL_15;
  }

  operator delete(__p[0]);
  if (v4)
  {
LABEL_15:
    v6 = a1[1];
    std::string::operator=(v6, a2);
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    *(v6 + 56) = *(a2 + 56);
    *(v6 + 40) = v8;
    *(v6 + 24) = v7;
    std::string::operator=((v6 + 72), (a2 + 72));
    std::string::operator=((v6 + 96), (a2 + 96));
    v9 = *(a2 + 120);
    *(v6 + 136) = *(a2 + 136);
    *(v6 + 120) = v9;
  }

  return v4;
}

void sub_1015D1EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015D1F6C(uint64_t a1)
{
  *a1 = &off_101F537B0;
  v2 = *(a1 + 552);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(a1 + 520, *(a1 + 528));
  sub_1000D6F38(a1 + 456);
  sub_1002FECBC(a1 + 384);
  v3 = *(a1 + 376);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10000FF50(a1 + 336);
  v4 = *(a1 + 328);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v6)
  {
    ctu::OsLogLogger::~OsLogLogger(v6);
    operator delete();
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 272);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 248);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v15 = (a1 + 216);
  sub_1015D19D4(&v15);
  v11 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 200);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 184);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v15 = (a1 + 152);
  sub_100F3252C(&v15);
  v15 = (a1 + 128);
  sub_100F33058(&v15);
  NotifySubscription::~NotifySubscription((a1 + 104));
  v14 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  CellBroadcastConfigInterface::~CellBroadcastConfigInterface(a1);
}

void sub_1015D216C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015D21C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015D2200(uint64_t result)
{
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

void sub_1015D222C(ServiceManager::Service *this)
{
  *this = off_101F53B28;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1015D2288(ServiceManager::Service *this)
{
  *this = off_101F53B28;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1015D2308@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1015D2348(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (v2 + 8));
  operator new();
}

void sub_1015D2454(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v4 = *(a1 + 8);
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  global_queue = dispatch_get_global_queue(2, 0);
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v7);
      v8 = *a3;
      if (v8)
      {
        dispatch_retain(v8);
        dispatch_group_enter(v8);
      }

      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015D2580(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(v1);
  _Unwind_Resume(a1);
}

void sub_1015D25A8(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (v3 + 8));
  operator new();
}

void sub_1015D26B8(ServiceManager::Service *this)
{
  *this = off_101F53B28;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1015D2714(ServiceManager::Service *this)
{
  *this = off_101F53B28;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void sub_1015D2798(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping CellBroadcastConfig", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v3, *(v1 + 240));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1002F8600(v1 + 384, v1 + 544);
  sub_10000501C(__p, "/cc/props/localized_language");
  *buf = off_101F53B90;
  v8 = v1 + 456;
  v9 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/ringer_state");
  *buf = off_101F53C10;
  v8 = v1 + 504;
  v9 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1002526EC(v1 + 508, v1 + 544);
  sub_10000501C(__p, "/cc/props/airplane_mode_user_preference");
  operator new();
}

void sub_1015D2CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_100004A34(a25);
  }

  sub_100004A34(v25);
  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D2DD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53B90;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015D2E0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015D2EC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F53C10;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_1015D2EF4(uint64_t a1, xpc_object_t *a2)
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

uint64_t sub_1015D2F90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015D3058(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F53C90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015D3090(void *a1, xpc_object_t *a2)
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

uint64_t sub_1015D3188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015D3250(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F53D10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015D3288(void *a1)
{
  v5 = 255;
  *v6 = 0u;
  v7 = 0u;
  *__p_8 = 0u;
  v9 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, &v5);
  if (SHIBYTE(__p_8[1]) < 0)
  {
    operator delete(*(&v7 + 1));
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

uint64_t sub_1015D335C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015D3424(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F53D90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015D345C(void *a1)
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

uint64_t sub_1015D34A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015D34F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (!v2)
  {
    return;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *v1;
  if (v5)
  {
    v6 = *(v5 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I CellBroadcast settings synced to watch", buf, 2u);
    }

    v14 = 0;
    sub_1015D0BEC(v5, &v14 + 1, &v14);
    if (*(v5 + 99) != 1 || (*(v5 + 97) & 1) == 0)
    {
      v11 = *(v5 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CellBroadcast preferences were not initialized", buf, 2u);
        v11 = *(v5 + 40);
      }

      *(v5 + 98) = HIBYTE(v14) | 0x100;
      *(v5 + 96) = v14 | 0x100;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 0;
      goto LABEL_17;
    }

    v7 = HIBYTE(v14);
    v8 = *(v5 + 98);
    if (HIBYTE(v14) != v8)
    {
      v11 = *(v5 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v16 = v8;
        v17 = 1024;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I EmergencyAlertsPref synced: %d -> %d", buf, 0xEu);
        v13 = *(v5 + 97);
        v11 = *(v5 + 40);
      }

      else
      {
        v13 = 1;
      }

      *(v5 + 98) = v7 | 0x100;
      v9 = v14;
      v10 = *(v5 + 96);
      if ((v13 & 1) != 0 && v14 == v10)
      {
        goto LABEL_31;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:
        *(v5 + 96) = v9 | 0x100;
LABEL_31:
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 0;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Dispatching Darwin notification due to synced preferences change", buf, 2u);
LABEL_18:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCTSMSCellBroadcastConfigChangedNotification", 0, 0, 0);
        goto LABEL_19;
      }

      if ((v13 & 1) == 0)
      {
        sub_1000D1644();
      }

LABEL_29:
      *buf = 67109376;
      v16 = v10;
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I EnhancedDeliveryPref synced: %d -> %d", buf, 0xEu);
      v11 = *(v5 + 40);
      goto LABEL_30;
    }

    v9 = v14;
    v10 = *(v5 + 96);
    if (v14 != v10)
    {
      v11 = *(v5 + 40);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

LABEL_19:

  sub_100004A34(v4);
}

uint64_t sub_1015D3828(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015D3844(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1015D3874(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F53E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015D38C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *sub_1015D38DC(uint64_t *a1)
{
  v1 = a1;
  v43 = *a1;
  v44 = a1;
  subscriber::makeSimSlotRange();
  v3 = v56;
  v2 = v57;
  if (v56 == v57)
  {
    return sub_1010B3274(&v44);
  }

  v4 = v58;
  do
  {
    if (v58(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v57);
  v41 = v57;
  if (v3 == v57)
  {
    return sub_1010B3274(&v44);
  }

  v38 = v1;
  do
  {
    v5 = v1[2];
    if (!v5)
    {
      return sub_1010B3274(&v44);
    }

    v6 = *v3;
    v7 = std::__shared_weak_count::lock(v5);
    if (!v7)
    {
      return sub_1010B3274(&v44);
    }

    v8 = v7;
    if (!v1[1])
    {
      goto LABEL_71;
    }

    v55 = 0;
    v55 = sub_1015C6100(v43, v6);
    v9 = (*(**(v43 + 48) + 16))(*(v43 + 48), v6);
    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Performing CMAS settings data migration", &buf, 2u);
    }

    if (!v55)
    {
      v36 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I There are no alert types in operator bundle, no settings to migrate", &buf, 2u);
      }

      sub_10001021C(&v55);
LABEL_71:
      sub_100004A34(v8);
      return sub_1010B3274(&v44);
    }

    ServiceMap = Registry::getServiceMap(*(v43 + 240));
    v12 = ServiceMap;
    if ((v13 & 0x8000000000000000) != 0)
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
    buf.__r_.__value_.__r.__words[0] = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, &buf);
    v42 = v6;
    if (!v17)
    {
      v18 = 0;
LABEL_22:
      std::mutex::unlock(v12);
      v20 = 0;
      v21 = 1;
      if (!v18)
      {
LABEL_19:
        v22 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Missing CSIPersistentPropertiesInterface", &buf, 2u);
        }

        goto LABEL_61;
      }

      goto LABEL_23;
    }

    v18 = v17[3];
    v19 = v17[4];
    if (!v19)
    {
      goto LABEL_22;
    }

    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v12);
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = v19;
    sub_100004A34(v19);
    v21 = 0;
    if (!v18)
    {
      goto LABEL_19;
    }

LABEL_23:
    v39 = v20;
    v40 = v8;
    (*(*v18 + 112))(v18);
    Count = CFDictionaryGetCount(v55);
    keys = 0;
    v53 = 0;
    v54 = 0;
    buf.__r_.__value_.__r.__words[0] = 0;
    sub_1002C40F0(&keys, Count, &buf);
    values = 0;
    v50 = 0;
    v51 = 0;
    buf.__r_.__value_.__r.__words[0] = 0;
    sub_1002C40F0(&values, Count, &buf);
    CFDictionaryGetKeysAndValues(v55, keys, values);
    v24 = keys;
    v25 = v53;
    while (v24 != v25)
    {
      v26 = *v24;
      if (!*v24)
      {
        goto LABEL_56;
      }

      v27 = CFGetTypeID(*v24);
      if (v27 != CFStringGetTypeID())
      {
        goto LABEL_56;
      }

      v48 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v47 = 0;
      memset(&buf, 0, sizeof(buf));
      ctu::cf::assign();
      v45 = buf;
      v28 = std::string::insert(&v45, 0, "CellBroadcastSetting:", 0x15uLL);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v47 = v28->__r_.__value_.__r.__words[2];
      *__p = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if ((*(*v18 + 32))(v18, __p, &v48))
      {
        v30 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v31 = __p;
          if (v47 < 0)
          {
            v31 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Migrating legacy key %s", &buf, 0xCu);
        }

        memset(&buf, 0, sizeof(buf));
        ctu::cf::assign();
        v45 = buf;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v45.__r_.__value_.__l.__size_ != 5)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
LABEL_53:
            sub_1015C707C(v43, v42, v26, v48);
            (*(*v18 + 96))(v18, __p);
            goto LABEL_54;
          }

          v34 = *v45.__r_.__value_.__l.__data_ != 1700949313 || *(v45.__r_.__value_.__r.__words[0] + 4) != 114;
          operator delete(v45.__r_.__value_.__l.__data_);
          if (v34)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) != 5)
          {
            goto LABEL_53;
          }

          if (LODWORD(v45.__r_.__value_.__l.__data_) != 1700949313 || v45.__r_.__value_.__s.__data_[4] != 114)
          {
            goto LABEL_53;
          }
        }

        v35 = *v9;
        v26 = @"AMBER";
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Migrating settings with correct capitalization", &buf, 2u);
        }

        goto LABEL_53;
      }

LABEL_54:
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_56:
      ++v24;
    }

    if (values)
    {
      v50 = values;
      operator delete(values);
    }

    v20 = v39;
    v8 = v40;
    if (keys)
    {
      v53 = keys;
      operator delete(keys);
    }

LABEL_61:
    if ((v21 & 1) == 0)
    {
      sub_100004A34(v20);
    }

    sub_10001021C(&v55);
    sub_100004A34(v8);
    v1 = v38;
    if (!v18)
    {
      break;
    }

    do
    {
      ++v3;
    }

    while (v3 != v2 && (v4(*v3) & 1) == 0);
  }

  while (v3 != v41);
  return sub_1010B3274(&v44);
}

uint64_t *sub_1015D3FEC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down CellBroadcastConfig", buf, 2u);
  }

  NotifySubscription::cancel((v2 + 104));
  ctu::RestModule::disconnect((v2 + 544));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1015D4078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1015D40A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = sub_1015C6100(*v3, v5);
  theDict = v6;
  if (!v6)
  {
    *a2 = 0;
    return sub_10001021C(&theDict);
  }

  Count = CFDictionaryGetCount(v6);
  keys = 0;
  v40 = 0;
  v41 = 0;
  values = 0;
  sub_1002C40F0(&keys, Count, &values);
  values = 0;
  v37 = 0;
  v38 = 0;
  *buf = 0;
  sub_1002C40F0(&values, Count, buf);
  CFDictionaryGetKeysAndValues(theDict, keys, values);
  v32 = v5;
  v8 = sub_1015C6210(v4);
  value = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      v10 = keys[i];
      if (v10)
      {
        v11 = CFGetTypeID(keys[i]);
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

      MutableCopy = 0;
      v13 = values[i];
      if (v13)
      {
        v14 = CFGetTypeID(values[i]);
        if (v14 == CFDictionaryGetTypeID())
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v15);
      v16 = CFDictionaryGetValue(MutableCopy, @"UseMMI");
      v17 = v16;
      buf[0] = 0;
      if (v16)
      {
        v18 = CFGetTypeID(v16);
        if (v18 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(buf, v17, v19);
        }
      }

      if (buf[0] == 1)
      {
        if ((v8 & 1) == 0)
        {
          v20 = *(v4 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Alert type removed from notification: [%{public}@]", buf, 0xCu);
          }

          goto LABEL_21;
        }

        CFDictionarySetValue(MutableCopy, @"UserConfigurable", kCFBooleanTrue);
      }

      CFDictionaryRemoveValue(MutableCopy, @"UseMMI");
      CFDictionarySetValue(value, v12, MutableCopy);
LABEL_21:
      sub_1000296E0(&MutableCopy);
    }
  }

  MutableCopy = 0;
  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(MutableCopy, @"AlertTypes", value);
  v33 = 0;
  sub_1015C5B00(buf, *(v4 + 368), v32, @"SwitchGroupTitle", 0);
  sub_100060DE8(&v33, buf);
  sub_10000A1EC(buf);
  if (v33)
  {
    CFDictionarySetValue(MutableCopy, @"SwitchGroupTitle", v33);
  }

  ServiceMap = Registry::getServiceMap(*(v4 + 240));
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
  *buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, buf);
  if (!v27)
  {
    v29 = 0;
    goto LABEL_35;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
LABEL_35:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    goto LABEL_36;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
LABEL_36:
  (*(*v29 + 56))(v29, kCellBroadcastLocalizationTable, MutableCopy, 1);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  sub_100005978(&v33);
  sub_1000296E0(&MutableCopy);
  sub_1000296E0(&value);
  if (values)
  {
    v37 = values;
    operator delete(values);
  }

  if (keys)
  {
    v40 = keys;
    operator delete(keys);
  }

  return sub_10001021C(&theDict);
}

void sub_1015D44F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, const void *a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, const void *a24)
{
  sub_100005978(&a15);
  sub_1000296E0(&a16);
  sub_1000296E0(&a17);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  sub_10001021C(&a24);
  _Unwind_Resume(a1);
}

const void **sub_1015D45B8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

const void **sub_1015D4630(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

uint64_t sub_1015D46BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1[1];
  *v3 = 0;
  subscriber::makeSimSlotRange();
  v4 = v7;
  if (v7 == v8)
  {
    goto LABEL_12;
  }

  do
  {
    if (v9(*v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != v8);
  if (v4 == v8)
  {
LABEL_12:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (sub_1015C683C(v2, *v4, v3))
      {
        v5 = 1;
        if (*v3)
        {
          break;
        }
      }

      do
      {
        ++v4;
      }

      while (v4 != v8 && (v9(*v4) & 1) == 0);
    }

    while (v4 != v8);
  }

  return v5 & 1;
}

uint64_t sub_1015D4798(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v14 = *(v1 + 8);
  subscriber::makeSimSlotRange();
  v3 = v16;
  if (v16 == v17)
  {
    goto LABEL_24;
  }

  do
  {
    if (v18(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v17);
  if (v3 == v17)
  {
LABEL_24:
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = &kCFBooleanTrue;
    if (!v14)
    {
      v5 = &kCFBooleanFalse;
    }

    v6 = *v5;
    v15 = kCommCenterSharedSettingsBundleId;
    do
    {
      v7 = (*(**(v2 + 48) + 16))(*(v2 + 48), *v3);
      v20 = 0;
      v21 = 0;
      Registry::getMobileHelper(&v20, *(v2 + 240));
      if (v20)
      {
        v8 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CSIBOOLAsString(v14);
          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Saving the auto read out preference: %s to the persistent store", buf, 0xCu);
        }

        *buf = 0;
        sub_100045C8C(buf);
        v19 = v6;
        *buf = 0;
        sub_100045C8C(buf);
        v10 = (*(*v20 + 24))(v20, v15, @"AutoReadOutPref", v6);
        if ((v10 & 1) == 0)
        {
          v11 = *v7;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to save auto read out preferences", buf, 2u);
          }
        }

        sub_100045C8C(&v19);
      }

      else
      {
        v12 = *(v2 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Mobile helper interface is absent", buf, 2u);
        }

        v10 = 0;
      }

      if (v21)
      {
        sub_100004A34(v21);
      }

      do
      {
        ++v3;
      }

      while (v3 != v17 && (v18(*v3) & 1) == 0);
      v4 |= v10;
    }

    while (v3 != v17);
  }

  return v4 & 1;
}

void sub_1015D4A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1015D4AA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  sub_100010024(&theDict, (v3 + 8));
  *v60 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = *v60;
    *v60 = Mutable;
    *buf = v6;
    sub_1000296E0(buf);
  }

  if (!theDict)
  {
    v15 = *(v4 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Empty settings dict", buf, 2u);
    }

    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict, @"AlertType");
  v8 = Value;
  if (!Value || (v9 = CFGetTypeID(Value), v9 != CFStringGetTypeID()))
  {
    v14 = *(v4 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Empty alert name", buf, 2u);
    }

LABEL_13:
    sub_100010180(a2, v60);
    goto LABEL_75;
  }

  v59 = 0;
  v67 = 0;
  sub_1015C78A0(&v67, v4, v8, @"EnableAlwaysDeliverByDefault");
  if (v67)
  {
    v66 = 0;
    v10 = CFDictionaryGetValue(v67, @"EnableAlwaysDeliverByDefault");
    v11 = v10;
    if (v10)
    {
      v12 = CFGetTypeID(v10);
      if (v12 == CFBooleanGetTypeID())
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

    v66 = v13;
    v63 = 0;
    v64 = 0;
    Registry::getMobileHelper(&v63, *(v4 + 240));
    v17 = v63;
    if (v63)
    {
      cf = 0;
      v62 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v8, @"AlwaysDeliverPref");
      (*(*v17 + 16))(buf, v17, kCommCenterSharedSettingsBundleId, v62);
      sub_10002FE1C(&cf, buf);
      sub_10000A1EC(buf);
      sub_100005978(&v62);
      v18 = cf;
      if (cf)
      {
        v59 = cf;
        CFRetain(cf);
        v19 = *(v4 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOBYTE(v62) = 0;
          ctu::cf::assign(&v62, v18, v20);
          v21 = "disabled";
          if (v62)
          {
            v21 = "enable";
          }

          *buf = 138543618;
          *&buf[4] = v8;
          v69 = 2080;
          v70 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Custom preference read for %{public}@ - [Always Deliver: %s]", buf, 0x16u);
        }
      }

      else
      {
        v23 = *(v4 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOBYTE(v62) = 0;
          ctu::cf::assign(&v62, v66, v24);
          v25 = "disabled";
          if (v62)
          {
            v25 = "enable";
          }

          *buf = 138543618;
          *&buf[4] = v8;
          v69 = 2080;
          v70 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Custom preference read from bundle for %{public}@ - [Always Deliver: %s]", buf, 0x16u);
        }

        v59 = v66;
        v66 = 0;
      }

      sub_100045C8C(&cf);
    }

    else
    {
      v22 = *(v4 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to get MobileHelper using bundle config for Always deliver", buf, 2u);
      }

      v59 = v66;
      v66 = 0;
    }

    if (v64)
    {
      sub_100004A34(v64);
    }

    sub_100045C8C(&v66);
  }

  else
  {
    v16 = *(v4 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v8;
      v69 = 2112;
      v70 = @"EnableAlwaysDeliverByDefault";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Missing key for %{public}@ - %@", buf, 0x16u);
    }

    v59 = 0;
  }

  sub_10001021C(&v67);
  if (v59)
  {
    sub_1002E0298(*v60, @"AlwaysDeliverPref", v59);
  }

  v58 = 0;
  *buf = 0;
  sub_100045C8C(buf);
  v67 = kCFBooleanFalse;
  *buf = 0;
  sub_100045C8C(buf);
  v66 = 0;
  sub_1015C78A0(&v66, v4, v8, @"EnableEnhancedDelivery");
  if (!v66)
  {
    v45 = *(v4 + 40);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *buf = 0;
    v46 = "Missing bundle dict";
    v47 = v45;
    v48 = 2;
LABEL_68:
    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v46, buf, v48);
    goto LABEL_71;
  }

  v26 = CFDictionaryGetValue(v66, @"EnableEnhancedDelivery");
  v27 = v26;
  buf[0] = 0;
  if (v26)
  {
    v28 = CFGetTypeID(v26);
    if (v28 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v27, v29);
    }
  }

  if ((buf[0] & 1) == 0)
  {
    v49 = *(v4 + 40);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *buf = 138412290;
    *&buf[4] = @"EnableAlwaysDeliverByDefault";
    v46 = "Feature disabled from bundle: %@";
    goto LABEL_67;
  }

  v30 = CFDictionaryGetValue(v66, @"AlertType");
  v31 = v30;
  if (!v30 || (v32 = CFGetTypeID(v30), v32 != CFDictionaryGetTypeID()))
  {
    v49 = *(v4 + 40);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *buf = 138412290;
    *&buf[4] = @"AlertType";
    v46 = "Missing bundle config: EnhancedDelivery.%@";
LABEL_67:
    v47 = v49;
    v48 = 12;
    goto LABEL_68;
  }

  v33 = CFDictionaryGetValue(v31, @"UserConfigurable");
  v34 = v33;
  buf[0] = 0;
  if (v33)
  {
    v35 = CFGetTypeID(v33);
    if (v35 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v34, v36);
    }
  }

  if (buf[0])
  {
    cf = 0;
    v37 = CFDictionaryGetValue(v31, @"EnabledByDefault");
    v38 = v37;
    if (v37 && (v39 = CFGetTypeID(v37), v39 == CFBooleanGetTypeID()))
    {
      cf = v38;
      CFRetain(v38);
      if (cf)
      {
        v63 = 0;
        v64 = 0;
        Registry::getMobileHelper(&v63, *(v4 + 240));
        v40 = v63;
        if (v63)
        {
          v62 = 0;
          v61 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v8, @"EnhancedDeliveryPref");
          (*(*v40 + 16))(buf, v40, kCommCenterSharedSettingsBundleId, v61);
          sub_10002FE1C(&v62, buf);
          sub_10000A1EC(buf);
          sub_100005978(&v61);
          v41 = v62;
          if (v62)
          {
            v58 = v62;
            CFRetain(v62);
            v42 = *(v4 + 40);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              LOBYTE(v61) = 0;
              ctu::cf::assign(&v61, v41, v43);
              v44 = "disabled";
              if (v61)
              {
                v44 = "enable";
              }

              *buf = 138543618;
              *&buf[4] = v8;
              v69 = 2080;
              v70 = v44;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Custom preference read for %{public}@ - [Enhanced delivery: %s]", buf, 0x16u);
            }
          }

          else
          {
            v54 = *(v4 + 40);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              LOBYTE(v61) = 0;
              ctu::cf::assign(&v61, cf, v55);
              v56 = "disabled";
              if (v61)
              {
                v56 = "enable";
              }

              *buf = 138543618;
              *&buf[4] = v8;
              v69 = 2080;
              v70 = v56;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I Custom preference read from bundle for %{public}@ - [Enhanced delivery: %s]", buf, 0x16u);
            }

            v58 = cf;
            cf = 0;
          }

          sub_100045C8C(&v62);
        }

        else
        {
          v53 = *(v4 + 40);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to get MobileHelper using bundle config for enhanced delivery", buf, 2u);
          }

          v58 = v67;
          v67 = 0;
        }

        if (v64)
        {
          sub_100004A34(v64);
        }

LABEL_80:
        sub_100045C8C(&cf);
        goto LABEL_72;
      }
    }

    else
    {
      cf = 0;
    }

    v52 = *(v4 + 40);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"EnabledByDefault";
      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Missing bundle config: EnhancedDelivery.%@", buf, 0xCu);
    }

    v58 = v67;
    v67 = 0;
    goto LABEL_80;
  }

  v50 = *(v4 + 40);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Enhanced delivery not user configurable", buf, 2u);
  }

LABEL_71:
  v58 = v67;
  v67 = 0;
LABEL_72:
  sub_10001021C(&v66);
  sub_100045C8C(&v67);
  if (v58)
  {
    sub_1002E0298(*v60, @"EnhancedDeliveryPref", v58);
  }

  sub_100010180(a2, v60);
  sub_100045C8C(&v58);
  sub_100045C8C(&v59);
LABEL_75:
  sub_1000296E0(v60);
  return sub_10001021C(&theDict);
}

void sub_1015D54A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va6, a7);
  va_start(va5, a7);
  va_start(va4, a7);
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v13 = va_arg(va3, const void *);
  v15 = va_arg(va3, void);
  va_copy(va4, va3);
  v16 = va_arg(va4, const void *);
  v18 = va_arg(va4, void);
  v19 = va_arg(va4, std::__shared_weak_count *);
  va_copy(va5, va4);
  v20 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v22 = va_arg(va6, const void *);
  sub_100045C8C(va3);
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_100045C8C(va4);
  sub_10001021C(va5);
  sub_100045C8C(va6);
  sub_100045C8C(va1);
  sub_1000296E0(va2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D5600(uint64_t a1)
{
  v1 = **(a1 + 40);
  subscriber::makeSimSlotRange();
  v2 = *v36;
  v3 = v37;
  if (*v36 != v37)
  {
    v4 = v38;
    do
    {
      if (v38(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v37);
    v5 = v37;
    if (v2 != v37)
    {
      v26 = v37;
      v27 = v1;
      while (1)
      {
        v6 = *v2;
        theDict = 0;
        sub_1015C5A74(&keys, *(v1 + 368), v6);
        sub_100010180(&theDict, &keys);
        sub_10000A1EC(&keys);
        if (!theDict)
        {
          goto LABEL_21;
        }

        v34 = 0;
        keys = CFDictionaryGetValue(theDict, @"AlertConfigurations");
        sub_100010180(&v34, &keys);
        if (!v34)
        {
          break;
        }

        Count = CFDictionaryGetCount(v34);
        keys = 0;
        v32 = 0;
        v33 = 0;
        values = 0;
        sub_1002C40F0(&keys, Count, &values);
        values = 0;
        v29 = 0;
        v30 = 0;
        *buf = 0;
        sub_1002C40F0(&values, Count, buf);
        CFDictionaryGetKeysAndValues(v34, keys, values);
        if (Count < 1)
        {
          v9 = 0;
        }

        else
        {
          v8 = 0;
          v9 = 1;
          while (1)
          {
            v10 = values[v8];
            if (v10)
            {
              v11 = CFGetTypeID(values[v8]);
              v12 = v11 == CFDictionaryGetTypeID() ? v10 : 0;
            }

            else
            {
              v12 = 0;
            }

            Value = CFDictionaryGetValue(v12, @"OverrideAccessibilityVibrationSetting");
            v14 = Value;
            if (Value)
            {
              v15 = CFGetTypeID(Value);
              if (v15 == CFBooleanGetTypeID())
              {
                break;
              }
            }

            v9 = ++v8 < Count;
            if (Count == v8)
            {
              v5 = v26;
              goto LABEL_25;
            }
          }

          buf[0] = 0;
          ctu::cf::assign(buf, v14, v16);
          v17 = buf[0];
          v18 = *(v27 + 40);
          v5 = v26;
          v25 = buf[0];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = CSIBOOLAsString(v17);
            v20 = subscriber::asString();
            *buf = 136315394;
            *&buf[4] = v19;
            v40 = 2080;
            v41 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Override accessibility vibration setting %s [slot:%s]", buf, 0x16u);
          }
        }

LABEL_25:
        if (values)
        {
          v29 = values;
          operator delete(values);
        }

        if (keys)
        {
          v32 = keys;
          operator delete(keys);
        }

        sub_10001021C(&v34);
        sub_10001021C(&theDict);
        if (v9)
        {
          v23 = v25;
          return v23 & 1;
        }

        v1 = v27;
        do
        {
LABEL_31:
          ++v2;
        }

        while (v2 != v3 && (v4(*v2) & 1) == 0);
        if (v2 == v5)
        {
          goto LABEL_34;
        }
      }

      sub_10001021C(&v34);
LABEL_21:
      sub_10001021C(&theDict);
      goto LABEL_31;
    }
  }

LABEL_34:
  v21 = *(v1 + 40);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  v23 = 0;
  if (v22)
  {
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Override accessibility vibration setting: false", v36, 2u);
    v23 = 0;
  }

  return v23 & 1;
}

void sub_1015D5950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_10001021C(&a21);
  sub_10001021C(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D59CC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  sub_100010024(&theDict, v1[1]);
  if (theDict)
  {
    v42 = 0;
    *buf = CFDictionaryGetValue(theDict, @"AlertType");
    sub_100060DE8(&v42, buf);
    if (!v42)
    {
      v9 = *(v2 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Empty alert name", buf, 2u);
      }

      v8 = 0;
      goto LABEL_60;
    }

    v40 = 0;
    v41 = 0;
    Registry::getMobileHelper(&v40, *(v2 + 240));
    if (!v40)
    {
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get MobileHelper", buf, 2u);
      }

      v8 = 0;
      goto LABEL_58;
    }

    Value = CFDictionaryGetValue(theDict, @"AlwaysDeliverPref");
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFBooleanGetTypeID())
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v11 = CFDictionaryGetValue(theDict, @"EnhancedDeliveryPref");
    v12 = v11;
    if (v11)
    {
      v13 = CFGetTypeID(v11);
      if (v13 != CFBooleanGetTypeID())
      {
        v12 = 0;
      }

      v39 = 0;
      if (!v6)
      {
        if (v12)
        {
          v14 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v42, @"EnhancedDeliveryPref");
          *buf = v39;
          v39 = v14;
          v46 = 0;
          sub_100005978(buf);
          sub_100005978(&v46);
          v46 = 0;
          v15 = kCommCenterSharedSettingsBundleId;
          (*(*v40 + 16))(buf);
          sub_10002FE1C(&v46, buf);
          sub_10000A1EC(buf);
          if (((*(*v40 + 24))(v40, v15, v39, v12) & 1) == 0)
          {
            v28 = *(v2 + 40);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to store custom preference", buf, 2u);
            }

            sub_100045C8C(&v46);
            goto LABEL_56;
          }

          if (v46)
          {
            if (v46 == v12)
            {
LABEL_44:
              v30 = *(v2 + 40);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v42;
                v33 = v39;
                v43 = 0;
                ctu::cf::assign(&v43, v12, v31);
                *buf = 138543874;
                if (v43)
                {
                  v34 = "enabled";
                }

                else
                {
                  v34 = "disabled";
                }

                *&buf[4] = v32;
                *&buf[12] = 2112;
                *&buf[14] = v33;
                *&buf[22] = 2080;
                v45 = v34;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Stored custom preference for %{public}@ - [%@: %s]", buf, 0x20u);
              }

              sub_100045C8C(&v46);
LABEL_50:
              if (v39)
              {
                v35 = *(v2 + 192);
                if (v35)
                {
                  v46 = v39;
                  memset(buf, 0, sizeof(buf));
                  sub_10005B328(buf, &v46, &v47, 1uLL);
                  (*(*v35 + 16))(v35, v15, buf);
                  if (*buf)
                  {
                    *&buf[8] = *buf;
                    operator delete(*buf);
                  }
                }

                v8 = 1;
                goto LABEL_57;
              }

              goto LABEL_55;
            }

            v16 = *(v2 + 40);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v17 = "#I Dispatching Darwin notification for Enhanced Delivery preference change";
LABEL_42:
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
            }
          }

          else
          {
            v16 = *(v2 + 40);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v17 = "#I Dispatching Darwin notification for Enhanced Delivery initial change";
              goto LABEL_42;
            }
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCTSMSCellBroadcastConfigChangedNotification", 0, 0, 0);
          goto LABEL_44;
        }

LABEL_55:
        v36 = *(v2 + 40);
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }

        *buf = 138543362;
        *&buf[4] = v42;
        v25 = "No valid custom preference for %{public}@";
        v26 = v36;
        v27 = 12;
        goto LABEL_63;
      }
    }

    else
    {
      v39 = 0;
      if (!v6)
      {
        goto LABEL_55;
      }
    }

    v18 = CFStringCreateWithFormat(0, 0, @"%@%@%@", @"CellBroadcastSetting", v42, @"AlwaysDeliverPref");
    *buf = v39;
    v39 = v18;
    v46 = 0;
    sub_100005978(buf);
    sub_100005978(&v46);
    v15 = kCommCenterSharedSettingsBundleId;
    v19 = (*(*v40 + 24))(v40, kCommCenterSharedSettingsBundleId, v39, v6);
    v20 = *(v2 + 40);
    if ((v19 & 1) == 0)
    {
      if (!os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
LABEL_56:
        v8 = 0;
LABEL_57:
        sub_100005978(&v39);
LABEL_58:
        if (v41)
        {
          sub_100004A34(v41);
        }

LABEL_60:
        sub_100005978(&v42);
        goto LABEL_61;
      }

      *buf = 0;
      v25 = "Failed to store custom preference";
      v26 = v20;
      v27 = 2;
LABEL_63:
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
      goto LABEL_56;
    }

    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v22 = v42;
      v23 = v39;
      LOBYTE(v46) = 0;
      ctu::cf::assign(&v46, v6, v21);
      *buf = 138543874;
      if (v46)
      {
        v24 = "enabled";
      }

      else
      {
        v24 = "disabled";
      }

      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      *&buf[22] = 2080;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Stored custom preference for %{public}@ - [%@: %s]", buf, 0x20u);
    }

    goto LABEL_50;
  }

  v7 = *(v2 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Empty settings dict", buf, 2u);
  }

  v8 = 0;
LABEL_61:
  sub_10001021C(&theDict);
  return v8;
}

void sub_1015D6080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16, const void *a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_100045C8C((v20 - 64));
  sub_100005978(&a14);
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100005978(&a17);
  sub_10001021C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D611C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), v3);
  *v4 = 0;
  v6 = sub_1015C6100(v2, v3);
  theDict = v6;
  if (v6)
  {
    Count = CFDictionaryGetCount(v6);
    v21 = 0;
    keys = 0;
    v19 = 0;
    v20 = 0;
    values = 0;
    sub_1002C40F0(&keys, Count, &values);
    values = 0;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    sub_1002C40F0(&values, Count, &v14);
    CFDictionaryGetKeysAndValues(theDict, keys, values);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v9 = keys[i];
        if (v9)
        {
          v10 = CFGetTypeID(keys[i]);
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

        if (CellBroadcastConfig::getCellBroadcastSettingForAlertType_sync(v2, v3, v11, &v21))
        {
          *v4 |= v21;
        }
      }
    }

    if (values)
    {
      v16 = values;
      operator delete(values);
    }

    if (keys)
    {
      v19 = keys;
      operator delete(keys);
    }
  }

  else
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(keys) = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No Alert types found", &keys, 2u);
    }
  }

  sub_10001021C(&theDict);
  return 1;
}

void sub_1015D62DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  sub_10001021C(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D6340(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  v3 = **v1;
  v5 = *(v2 + 22);
  v4 = *(v2 + 23);
  v12 = v5;
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v7 + 3);
  v11[0] = *v7;
  *(v11 + 12) = v8;
  v9 = sub_100DAB070(v3, &v12, v6, v11, *v1[4]);
  if (v13)
  {
    sub_100004A34(v13);
  }

  return v9;
}

void sub_1015D63C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015D641C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 1);
  v3 = *v1;
  v16 = 0;
  v17 = 0;
  Registry::getMobileHelper(&v16, *(v2 + 240));
  if (v16)
  {
    v4 = &kCFBooleanTrue;
    if (!v3)
    {
      v4 = &kCFBooleanFalse;
    }

    v5 = *v4;
    *buf = 0;
    sub_100045C8C(buf);
    v15 = v5;
    *buf = 0;
    sub_100045C8C(buf);
    v6 = (*(*v16 + 24))(v16, kCommCenterSharedSettingsBundleId, @"CellBroadcastMMIPref", v5);
    v7 = *(v2 + 40);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = CSIBOOLAsString(v3);
        *buf = 136315138;
        *&buf[4] = v9;
        v10 = "#I MMI preference saved successfully value:[%s]";
        v11 = v7;
        v12 = 12;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }

    else if (v8)
    {
      *buf = 0;
      v10 = "#I MMI preference save error";
      v11 = v7;
      v12 = 2;
      goto LABEL_12;
    }

    sub_100045C8C(&v15);
    goto LABEL_14;
  }

  v13 = *(v2 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MobileHelperInterface is absent", buf, 2u);
  }

  v6 = 0;
LABEL_14:
  if (v17)
  {
    sub_100004A34(v17);
  }

  return v6;
}

void sub_1015D65F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100045C8C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1015D6620(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 16);
  v7[0] = *(v1 + 8);
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  sub_1015CA3D4(v2, v7);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10032EAB4(&v6);
  return sub_1000049E0(&v5);
}

void sub_1015D668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10032EAB4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1015D66B4(void **a1)
{
  v1 = (*a1)[2];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1015D7070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, xpc_object_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, xpc_object_t object, char a34)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t *sub_1015D7370(uint64_t *a1)
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

__n128 sub_1015D743C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F540D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1015D7470(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(*(**(*(a1 + 8) + 48) + 16))(*(*(a1 + 8) + 48), *(a1 + 16));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "is not";
    if (v2)
    {
      v4 = "is";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband online assertion %s granted", &v5, 0xCu);
  }
}

uint64_t sub_1015D7554(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015D75B4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1015D75F0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1015D7648(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 2);
  v5 = v1[2];
  v4 = v1[3];
  v6 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), v3);
  result = sub_1015C635C(v2);
  if (result)
  {
    *type = 0;
    sub_1015C5B00(buf, *(v2 + 368), v3, @"DataThrottleOnMessageReceive", 0);
    sub_10002FE1C(type, buf);
    sub_10000A1EC(buf);
    if (*type)
    {
      buf[0] = 0;
      ctu::cf::assign(buf, *type, v8);
      *v5 = buf[0];
      *buf = 0;
      sub_1015C5B00(&v11, *(v2 + 368), v3, @"DataThrottleTimeout", 0);
      sub_10010B240(buf, &v11);
      sub_10000A1EC(&v11);
      if (*buf)
      {
        LODWORD(v11) = 0;
        ctu::cf::assign(&v11, *buf, v9);
        *v4 = v11;
      }

      sub_100029A48(buf);
    }

    else
    {
      v10 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No throttling key specified, assuming not enabled", buf, 2u);
      }

      *v5 = 0;
    }

    return sub_100045C8C(type);
  }

  else
  {
    *v5 = 0;
  }

  return result;
}

void sub_1015D77C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_100029A48(va);
  sub_100045C8C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D7808(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[2];
  v3 = *(*v1 + 368);
  v8 = 0;
  sub_1015C5B00(&v7, v3, v2, @"IgnoreInvalidLengthPage", kCFBooleanFalse);
  sub_10002FE1C(&v8, &v7);
  sub_10000A1EC(&v7);
  LOBYTE(v7) = 0;
  ctu::cf::assign(&v7, v8, v4);
  v5 = v7;
  sub_100045C8C(&v8);
  return v5;
}

void sub_1015D7890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void *sub_1015D78B4(void *a1)
{
  *a1 = off_101F54230;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1015D7900(void *a1)
{
  *a1 = off_101F54230;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1015D79E0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F54230;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015D7A20(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1015D7A30(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1015D7A70(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (v1 + 8));
  operator new();
}

uint64_t sub_1015D7B64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015D7BB0(void **a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = v1[2];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*v1)
      {
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v3[28] - v3[27];
          v8 = 0x8E38E38E38E38E39 * (v7 >> 4);
          if (v7 == 144)
          {
            v9 = "";
          }

          else
          {
            v9 = "s";
          }

          *buf = 134218242;
          v16 = v8;
          v17 = 2080;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting %lu metric%s now.", buf, 0x16u);
        }

        v10 = v3[27];
        v11 = v3[28];
        if (v10 != v11)
        {
          do
          {
            sub_1015CFE18(v3, v10);
            v10 += 144;
          }

          while (v10 != v11);
          v10 = v3[27];
          v11 = v3[28];
        }

        while (v11 != v10)
        {
          v11 -= 144;
          sub_1015D1A58(v11);
        }

        v3[28] = v10;
      }

      sub_100004A34(v5);
    }
  }

  sub_100EE477C(&v14);
  return sub_1000049E0(&v13);
}

void sub_1015D7D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100EE477C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D7D3C()
{
  if (qword_101FCAE10 != -1)
  {
    dispatch_once(&qword_101FCAE10, &stru_101F542F0);
  }

  return qword_101FCAE08;
}

uint64_t sub_1015D7DBC()
{
  if (qword_101FCAE20 != -1)
  {
    dispatch_once(&qword_101FCAE20, &stru_101F54330);
  }

  return qword_101FCAE18;
}

void sub_1015D7EF8(uint64_t **a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = (a2 + 1);
  subscriber::makeSimSlotRange();
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      if (v6(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    if (v2 != v5)
    {
      sub_100DA38EC(&v3);
    }
  }
}

void sub_1015D80AC(NetworkNameFactoryInterface *this)
{
  *this = off_101F543A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  NetworkNameFactoryInterface::~NetworkNameFactoryInterface(this);
}

void sub_1015D8108(NetworkNameFactoryInterface *this)
{
  *this = off_101F543A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  NetworkNameFactoryInterface::~NetworkNameFactoryInterface(this);

  operator delete();
}

void sub_1015D821C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
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

void *sub_1015D8244(void *a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "pp.cb");
  sub_1015D8338(a1 + 1, a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101F543E0;
  v6 = a2[1];
  a1[6] = *a2;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = 0;
  a1[9] = 0;
  a1[8] = a1 + 9;
  return a1;
}

void sub_1015D8314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  CarrierBundleMatchProxyInterface::~CarrierBundleMatchProxyInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_1015D8338(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1015D83A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_1015D83C4(uint64_t a1)
{
  *a1 = off_101F543E0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (!v10)
  {
LABEL_14:
    if (v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_10:
  if (*(a1 + 80))
  {
    sub_100714E00(v14, a1 + 64);
    (*(*v10 + 88))(v10, v14);
    sub_10070C9CC(v14, v14[1]);
    if (v11)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_100004A34(v9);
    goto LABEL_16;
  }

  v12 = *(a1 + 40);
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_14;
  }

  *buf = 0;
  _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Empty matching results", buf, 2u);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_10070C9CC(a1 + 64, *(a1 + 72));
  v13 = *(a1 + 56);
  if (v13)
  {
    sub_100004A34(v13);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  CarrierBundleMatchProxyInterface::~CarrierBundleMatchProxyInterface(a1);
}

void sub_1015D8598(uint64_t a1)
{
  sub_1015D83C4(a1);

  operator delete();
}

void sub_1015D85D0(void *a1, int a2, uint64_t a3)
{
  sub_100049564(&v6, a3);
  v7 = *(a3 + 200);
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

void sub_1015D8880(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1015D8954);
  __cxa_rethrow();
}

void sub_1015D88C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015D8914(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015D8954(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015D8980(uint64_t a1)
{
  sub_10001021C((a1 + 224));
  sub_10001021C((a1 + 216));

  return sub_1000490A0(a1);
}

uint64_t *sub_1015D89C4(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(*v1 + 72);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *(v1 + 8);
  v5 = *v1 + 72;
  do
  {
    if (*(v3 + 32) >= v4)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v4));
  }

  while (v3);
  if (v5 == *v1 + 72 || v4 < *(v5 + 32))
  {
LABEL_8:
    ServiceMap = Registry::getServiceMap(*(v2 + 48));
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
LABEL_14:
          v16 = *(v2 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get CarrierBundleInterface", buf, 2u);
          }

          if ((v15 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          goto LABEL_25;
        }

LABEL_18:
        v17 = *(v2 + 16);
        *buf = *(v2 + 8);
        if (v17)
        {
          *&buf[8] = std::__shared_weak_count::lock(v17);
          if (*&buf[8])
          {
            v23 = *(v1 + 8);
            sub_100049564(&v24, v1 + 16);
            v25 = *(v1 + 216);
            v26 = 0;
            operator new();
          }
        }

        else
        {
          *&buf[8] = 0;
        }

        sub_100013CC4();
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
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v18 = *(v2 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Already have match result for %s", buf, 0xCu);
  }

LABEL_25:
  sub_1015D8DE8(&v21);
  return sub_1000049E0(&v20);
}

void sub_1015D8D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a12)
{
  sub_1010752D4(v13 - 104);
  sub_1015D8E38(&a12);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_1015D8DE8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015D8DE8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1000490A0(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_1015D8E38(uint64_t a1)
{
  sub_1000490A0(a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void *sub_1015D8E70(void *a1)
{
  *a1 = off_101F54510;
  sub_1000490A0((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1015D8EC0(void *a1)
{
  *a1 = off_101F54510;
  sub_1000490A0((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1015D8FC0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D8FE0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101F54510;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  result = sub_100049564(a2 + 32, a1 + 32);
  *(a2 + 232) = *(a1 + 232);
  return result;
}

void sub_1015D9054(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015D9074(char *a1)
{
  sub_1015D9374((a1 + 8));

  operator delete(a1);
}

void sub_1015D90B0(uint64_t a1, const void **a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100049564(&v7, a1 + 32);
  v8 = *(a1 + 232);
  v9 = *a2;
  sub_100010024(&v10, a2 + 1);
  sub_100010024(&v10 + 1, a2 + 2);
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

void sub_1015D930C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015D9328(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F54580))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015D9374(uint64_t a1)
{
  sub_1000490A0(a1 + 24);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t *sub_1015D93C0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  sub_100049564(&v10, v1 + 24);
  v11 = *(v1 + 224);
  v12 = *(v1 + 232);
  sub_100010024(&v13, (v1 + 240));
  sub_100010024(&v14, (v1 + 248));
  v3 = *(v2 + 72);
  if (!v3)
  {
LABEL_9:
    operator new();
  }

  v4 = *(v1 + 16);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v6 <= v4)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_9;
      }
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  sub_10001021C(&v14);
  sub_10001021C(&v13);
  sub_1000490A0(&v10);
  sub_1015D95E4(&v9);
  return sub_1000049E0(&v8);
}

void sub_1015D95B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_1015D8980(va2);
  sub_1015D95E4(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015D95E4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10001021C((v1 + 248));
    sub_10001021C((v1 + 240));
    sub_1000490A0(v1 + 24);
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1015D9650@<X0>(void *a2@<X8>)
{
  v22 = 0;
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
  *__p = 0u;
  v11 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v7 = 0u;
  sub_10000C320(&v7);
  sub_10000C030(&v8, "[", 1);
  v3 = std::ostream::operator<<();
  sub_10000C030(v3, " ,", 2);
  v4 = std::ostream::operator<<();
  sub_10000C030(v4, "]", 1);
  sub_100061574(&v7, a2);
  *&v8 = v5;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

ctu::OsLogLogger *sub_1015D9850(ctu::OsLogLogger *a1)
{
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "wea");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(a1, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  return a1;
}

BOOL sub_1015D98CC(os_log_t *a1, const char *a2)
{
  v19[0] = 0;
  v19[1] = 0;
  ctu::TextConverter::TextConverter(v19);
  ctu::TextConverter::pushConversion();
  v4 = a2[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a2;
    a2 = *a2;
    v4 = *(v5 + 1);
  }

  ctu::TextConverter::setSource(v19, a2, v4);
  SourceAvailableCount = ctu::TextConverter::getSourceAvailableCount(v19);
  if (SourceAvailableCount)
  {
    if (ctu::TextConverter::getSourceAvailableCount(v19) > 3)
    {
      Code = ctu::TextConverter::nextCode(v19);
      v8 = ctu::TextConverter::nextCode(v19);
      v9 = ctu::TextConverter::nextCode(v19);
      v10 = ctu::TextConverter::nextCode(v19);
      v11 = v8 | (Code << 8);
      v12 = *a1;
      v13 = v10 | (v9 << 8);
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CSIBOOLAsString(0);
        buf = 67109634;
        *buf_4 = v11;
        *&buf_4[4] = 1024;
        *&buf_4[6] = v13;
        *v22 = 2080;
        *&v22[2] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Wham MessageId : %u Serial : %u combined: %s", &buf, 0x18u);
      }

      operator new();
    }

    v15 = *a1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      SourceCount = ctu::TextConverter::getSourceCount(v19);
      v18 = CSIBOOLAsString(0);
      buf = 134218242;
      *buf_4 = SourceCount;
      *&buf_4[8] = 2080;
      *v22 = v18;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to decode Active Alert tuple. Only %zu bytes left isCommon: %s", &buf, 0x16u);
    }
  }

  ctu::TextConverter::~TextConverter(v19);
  return SourceAvailableCount == 0;
}

void sub_1015D9BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::TextConverter::~TextConverter(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015D9C40(os_log_t *a1, char *__s)
{
  v4 = strlen(__s);
  if (!v4)
  {
    v8 = *a1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Empty Wham data..", buf, 2u);
    }

    return 1;
  }

  v5 = v4;
  v31[0] = 0;
  v31[1] = 0;
  ctu::TextConverter::TextConverter(v31);
  memset(&__dst, 0, sizeof(__dst));
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  ctu::TextConverter::pushConversion();
  do
  {
    while (1)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__dst.__r_.__value_.__l.__size_ <= 2)
        {
          v9 = 1;
          goto LABEL_75;
        }

        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) <= 2u)
        {
          v9 = 1;
          goto LABEL_76;
        }

        p_dst = &__dst;
      }

      ctu::TextConverter::setSource(v31, p_dst, v5);
      Code = ctu::TextConverter::nextCode(v31);
      v12 = (8 * (Code & 0xF)) | (ctu::TextConverter::nextCode(v31) >> 5);
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (size < v12)
      {
        v24 = *a1;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Not enough bytes left to resize. Decode failure.", buf, 2u);
        }

        goto LABEL_69;
      }

      if (ctu::TextConverter::getSourceAvailableCount(v31) < v12)
      {
        v25 = *a1;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          SourceAvailableCount = ctu::TextConverter::getSourceAvailableCount(v31);
          *buf = 134218240;
          *&buf[4] = SourceAvailableCount;
          *&buf[12] = 1024;
          *&buf[14] = v12;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "TLV parsing failed. %zu bytes available for parsing, but length indicates %u", buf, 0x12u);
        }

LABEL_69:
        v9 = 0;
        goto LABEL_71;
      }

      memset(&v29, 0, sizeof(v29));
      std::string::basic_string(&v29, &__dst, 4uLL, 2 * v12 - 4, buf);
      v14 = Code >> 4;
      v15 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "Unknown TLV";
        if ((v14 - 1) <= 3)
        {
          v16 = off_101F545E0[v14 - 1];
        }

        v17 = &v29;
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v29.__r_.__value_.__r.__words[0];
        }

        if (!v12)
        {
          v17 = "";
        }

        *buf = 136315650;
        *&buf[4] = v16;
        *&buf[12] = 1024;
        *&buf[14] = v12;
        *&buf[18] = 2080;
        *&buf[20] = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Wham TLV [%s] of length [%u] : %s", buf, 0x1Cu);
      }

      if (v12)
      {
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__p, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v29;
        }

        switch(v14)
        {
          case 4:
            v19 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid TLV in Wham parsing.", buf, 2u);
            }

            v20 = 0;
            goto LABEL_51;
          case 2:
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              *buf = __p;
              goto LABEL_49;
            }

            break;
          case 1:
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              *buf = __p;
LABEL_49:
              v20 = sub_1015D98CC(a1, buf);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

LABEL_51:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if (v20)
                {
LABEL_56:
                  std::string::erase(&__dst, 0, (2 * v12));
                  goto LABEL_57;
                }
              }

              else if (v20)
              {
                goto LABEL_56;
              }

              v22 = *a1;
              if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
              {
                v23 = "Unknown TLV";
                if ((v14 - 1) <= 3)
                {
                  v23 = off_101F545E0[v14 - 1];
                }

                *buf = 136315138;
                *&buf[4] = v23;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Wham TLV [%s] decode failure", buf, 0xCu);
              }

              goto LABEL_56;
            }

            break;
          default:
            v21 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unhandled TLV in Wham parsing.", buf, 2u);
            }

            v20 = 1;
            goto LABEL_51;
        }

        sub_100005F2C(buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        goto LABEL_49;
      }

      v18 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Wham decoding complete", buf, 2u);
      }

LABEL_57:
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_70;
      }
    }

    operator delete(v29.__r_.__value_.__l.__data_);
  }

  while (v12);
LABEL_70:
  v9 = 1;
LABEL_71:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_75:
  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_76:
  ctu::TextConverter::~TextConverter(v31);
  return v9;
}

void sub_1015DA23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  ctu::TextConverter::~TextConverter(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_1015DA2D8(uint64_t a1)
{
  v34 = 0;
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
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  sub_10000C320(&v19);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  for (i = a1; v2 != v3; v2 += 2)
  {
    v5 = *v2;
    v4 = v2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      sub_10000C030(&v20, "[", 1);
      v6 = std::ostream::operator<<();
      sub_10000C030(v6, "-", 1);
      v7 = std::ostream::operator<<();
      v8 = sub_10000C030(v7, "] ", 2);
      v9 = sub_10000C030(v8, " combined: ", 11);
      v10 = CSIBOOLAsString(*(v5 + 4));
      v11 = strlen(v10);
      sub_10000C030(v9, v10, v11);
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  v12 = *a1;
  if (os_log_type_enabled(*i, OS_LOG_TYPE_DEFAULT))
  {
    sub_100061574(&v19, __p);
    v13 = v18 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Wham: %s", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *&v20 = v14;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1015DA5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10068C9D8(va);
  _Unwind_Resume(a1);
}

void sub_1015DA628(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000210A8(a1, a2);
  }

  sub_1015DA664();
}

uint64_t sub_1015DA67C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t *sub_1015DA6B4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1015DA628(result, a4);
  }

  return result;
}

void sub_1015DA71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1015DA73C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v8;
  v7[3] = 1;
  v8 = a4;
  v7[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v9 = v4;
  }

  sub_1015DA67C(v7);
  return v4;
}

void sub_1015DA7E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F545A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015DB3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_10001021C(&a12);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DB584(void *a1, Registry *this)
{
  ServiceMap = Registry::getServiceMap(this);
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
  v12 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v12);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  std::mutex::unlock(v4);
  *a1 = v11;
  a1[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

void sub_1015DC0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_10001021C(&a12);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DCC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, char a12, int a13, const void *a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27)
{
  sub_10001021C(&a14);
  if (a27)
  {
    sub_100004A34(a27);
  }

  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DD284(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1015DD6D4(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1015DDD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DE188(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1015DE48C(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1015DEA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DF0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015DF61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1015DFC8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1015DFD24(uint64_t a1)
{

  operator delete();
}

id sub_1015DFDD8(uint64_t a1, void *a2)
{
  *a2 = off_101F54610;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1015DFE28(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1015DFE7C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F54680))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015DFEFC(uint64_t a1)
{

  operator delete();
}

id sub_1015DFFC4(uint64_t a1, void *a2)
{
  *a2 = off_101F546A0;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1015E001C(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1015E0058(id *a1)
{

  operator delete(a1);
}

void sub_1015E009C(uint64_t a1, const char *a2, uint64_t *a3)
{
  if (*a2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      objc_msgSend_getLogContext(v5);
      v6 = *(&v12 + 1);
    }

    else
    {
      v6 = 0;
      v12 = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "device list:\n%@", &v12, 0xCu);
    }

    (*(*(a1 + 16) + 16))();
  }

  else
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      objc_msgSend_getLogContext(v7);
      v8 = *(&v12 + 1);
    }

    else
    {
      v8 = 0;
      v12 = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device list is not ready yet", &v12, 2u);
    }

    v10 = *(a1 + 16);
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0, v12];
    (*(v10 + 16))(v10, 0, v11);
  }
}

uint64_t sub_1015E0254(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F54700))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015E02D4(uint64_t a1)
{

  operator delete();
}

id sub_1015E039C(uint64_t a1, void *a2)
{
  *a2 = off_101F54720;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1015E03F4(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1015E0430(id *a1)
{

  operator delete(a1);
}

void sub_1015E0474(uint64_t a1, const char *a2, uint64_t *a3)
{
  if (*a2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      objc_msgSend_getLogContext(v5);
      v6 = *(&v12 + 1);
    }

    else
    {
      v6 = 0;
      v12 = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "device info:\n%@", &v12, 0xCu);
    }

    (*(*(a1 + 16) + 16))();
  }

  else
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      objc_msgSend_getLogContext(v7);
      v8 = *(&v12 + 1);
    }

    else
    {
      v8 = 0;
      v12 = 0uLL;
    }

    ctu::OsLogContext::~OsLogContext(&v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device info is not ready yet", &v12, 2u);
    }

    v10 = *(a1 + 16);
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0, v12];
    (*(v10 + 16))(v10, 0, v11);
  }
}

uint64_t sub_1015E062C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F54780))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015E0850(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1015E0958(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1015E0970(void *a1)
{
  *a1 = off_101F547A0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_1015E09CC(void *a1)
{
  *a1 = off_101F547A0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();

  operator delete();
}

void sub_1015E0AF4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015E0B90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015E0C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F548E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015E0CC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015E0D64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015E0DE8(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    a2[1] = 0;
    a2 = *a2;
  }

  else
  {
    *(a2 + 23) = 0;
  }

  *a2 = 0;
  return 1;
}

uint64_t IMSCallCommandDriver::IMSCallCommandDriver(uint64_t a1, uint64_t a2, void *a3, dispatch_object_t *a4, uint64_t a5, uint64_t a6)
{
  object = *a4;
  *a4 = 0;
  CallCommandDriver::CallCommandDriver();
  v9 = object;
  if (object)
  {
    dispatch_release(object);
  }

  v13[0] = off_101E2B528;
  v13[1] = sub_1000A8594;
  v13[3] = v13;
  *(a1 + 120) = 0;
  if ((capabilities::ct::supportsGemini(v9) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 120))
  {
    operator new();
  }

  sub_1000A8744(v13);
  *a1 = off_101F54A60;
  *(a1 + 8) = off_101F54C78;
  *(a1 + 128) = 2;
  *(a1 + 136) = *a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  sub_1000BA174(a1 + 192);
  *(a1 + 632) = 0;
  *(a1 + 634) = 0;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 656) = a1 + 664;
  *(a1 + 680) = 0;
  *(a1 + 688) = a1 + 688;
  *(a1 + 696) = a1 + 688;
  *(a1 + 704) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 712) = a1 + 720;
  *(a1 + 744) = 0u;
  *(a1 + 736) = a1 + 744;
  *(a1 + 760) = 0;
  sub_100AE91C4((a1 + 768), &rest::kDefaultBundles);
  *(a1 + 800) = 0u;
  *(a1 + 792) = a1 + 800;
  *(a1 + 816) = *a3;
  v10 = a3[1];
  *(a1 + 824) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 840) = 0uLL;
  *(a1 + 832) = a1 + 840;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0uLL;
  sub_100109304((a1 + 888), &rest::kDefaultRegistrationStatuses);
  return a1;
}

void sub_1015E120C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000A8744(va);
  operator delete();
}

void sub_1015E1398(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1015E1388);
}

void sub_1015E13AC(uint64_t a1)
{
  *a1 = off_101F54A60;
  v2 = (a1 + 8);
  *(a1 + 8) = off_101F54C78;
  sub_10006DCAC(a1 + 888, *(a1 + 896));
  v9 = (a1 + 864);
  sub_1000B2AF8(&v9);
  sub_10006DCAC(a1 + 832, *(a1 + 840));
  v3 = *(a1 + 824);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100077CD4(a1 + 792, *(a1 + 800));
  sub_10032D3A4(a1 + 768, *(a1 + 776));
  sub_1001A904C(a1 + 736, *(a1 + 744));
  sub_100009970(a1 + 712, *(a1 + 720));
  sub_1000FEFCC((a1 + 688));
  sub_100DE3E98(*(a1 + 664));
  v4 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1000BFE80(a1 + 192);
  v5 = *(a1 + 176);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  CallCommandDriver::~CallCommandDriver(v2);
  IMSCallCommandDriverInterface::~IMSCallCommandDriverInterface(a1);
}

void sub_1015E152C(uint64_t a1)
{
  sub_1015E13AC(a1);

  operator delete();
}

void sub_1015E1564(uint64_t a1)
{
  sub_1015E13AC(a1 - 8);

  operator delete();
}

const void **sub_1015E15A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = (*(**(a1 + 120) + 16))(*(a1 + 120), *(a3 + 16));
  v12 = (*(**(a1 + 136) + 416))();
  if (v12)
  {
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Filling the optional emergency parameters", &buf, 2u);
    }

    if (a5)
    {
      sub_1015E2114(a1, a2, a5, a6, a3);
    }

    else
    {
      v14 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "StackConfig is NULL, cannot fill config with emergency params", &buf, 2u);
      }
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *&buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &buf);
  if (!v21)
  {
    std::mutex::unlock(v16);
    goto LABEL_16;
  }

  v22 = v21[3];
  v23 = v21[4];
  if (!v23)
  {
    std::mutex::unlock(v16);
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_16:
    v24 = 0;
    goto LABEL_32;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  if (!v22)
  {
    v24 = 0;
LABEL_31:
    sub_100004A34(v23);
    goto LABEL_32;
  }

LABEL_18:
  buf = 0uLL;
  *&v75 = 0;
  PersonalityIdFromSlotIdEx(&buf);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  (*(*v22 + 40))(&__p, v22, &buf);
  if (__p.__r_.__value_.__r.__words[0])
  {
    cf.__r_.__value_.__r.__words[0] = 0;
    (*(*__p.__r_.__value_.__l.__data_ + 40))(&cf);
    v25 = cf.__r_.__value_.__r.__words[0];
    __str.__r_.__value_.__s.__data_[0] = 0;
    if (cf.__r_.__value_.__r.__words[0] && (v26 = CFGetTypeID(cf.__r_.__value_.__l.__data_), v26 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&__str, v25, v27);
      v24 = __str.__r_.__value_.__s.__data_[0];
    }

    else
    {
      v24 = 0;
    }

    sub_10000A1EC(&cf.__r_.__value_.__l.__data_);
  }

  else
  {
    v28 = *(a1 + 48);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v62 = BYTE7(v75);
      if (SBYTE7(v75) < 0)
      {
        v62 = *(&buf + 1);
      }

      p_buf = &buf;
      if (SBYTE7(v75) < 0)
      {
        p_buf = buf;
      }

      if (v62)
      {
        v64 = p_buf;
      }

      else
      {
        v64 = "<invalid>";
      }

      LODWORD(cf.__r_.__value_.__l.__data_) = 136315138;
      *(cf.__r_.__value_.__r.__words + 4) = v64;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "IMS config not found for pid %s", &cf, 0xCu);
    }

    v24 = 0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_100004A34(__p.__r_.__value_.__l.__size_);
  }

  if (SBYTE7(v75) < 0)
  {
    operator delete(buf);
  }

  if (v23)
  {
    goto LABEL_31;
  }

LABEL_32:
  v29 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    DWORD1(buf) = v12;
    WORD4(buf) = 1024;
    *(&buf + 10) = v24 & 1;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Setting the CLIR setting.. sendEmParams: %d ignoreRestrictionFlags: %d", &buf, 0xEu);
  }

  if ((v12 & v24 & 1) == 0)
  {
    v38 = CallCommandDriver::computeClirValue_sync((a1 + 8), a3);
    v39 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v40 = asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I CLIR setting evaluated to %s", &buf, 0xCu);
    }

    if ((v38 - 2) < 2)
    {
      (*(**a4 + 64))(*a4, 0, 0);
      v41 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Not setting the CLIR setting for call to be dialed", &buf, 2u);
      }
    }

    else if (v38)
    {
      if (v38 == 1)
      {
        (*(**a4 + 64))(*a4, 1, 1);
      }
    }

    else
    {
      (*(**a4 + 64))(*a4, 1, 0);
    }
  }

  v31 = *a4;
  v30 = a4[1];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = (*(**(a1 + 120) + 16))(*(a1 + 120), *(a3 + 16));
  v33 = *(a3 + 167);
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(a3 + 152);
  }

  if (v33)
  {
    std::string::operator=((a2 + 8), (a3 + 144));
  }

  if (v31)
  {
    v34 = (*(**(a1 + 136) + 344))(*(a1 + 136), a3);
    v35 = *v32;
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (v36)
      {
        LOWORD(buf) = 0;
        v37 = 2;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Starting call with RTT mode enabled", &buf, 2u);
      }

      else
      {
        v37 = 2;
      }
    }

    else
    {
      if (v36)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Starting call with RTT mode disabled", &buf, 2u);
      }

      v37 = 0;
    }

    (*(*v31 + 40))(v31, v37);
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  buf = 0u;
  sub_1000BA174(&buf);
  sub_1000BA468(&v70, a3);
  sub_1001DB8CC(&v70, &__p);
  v42 = sub_1015E42AC(a1, &__p, &buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1000475BC(&v70);
  v43 = &buf;
  if (!v42)
  {
    v43 = a3;
  }

  v44 = *(v43 + 16);
  (*(**a4 + 48))(*a4, v44 == 1);
  v45 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v46 = "Disabled";
    if (v44 == 1)
    {
      v46 = "Enabled";
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Setting relay mode to %s", &__p, 0xCu);
  }

  if (*(a1 + 184) == 1)
  {
    v68 = 0;
    v69 = 0;
    memset(&__p, 0, sizeof(__p));
    memset(&cf, 0, sizeof(cf));
    memset(&__str, 0, sizeof(__str));
    memset(&v66, 0, sizeof(v66));
    *(a1 + 184) = 0;
    v47 = Registry::getServiceMap(*(a1 + 56));
    v48 = v47;
    if (v49 < 0)
    {
      v50 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
      v51 = 5381;
      do
      {
        v49 = v51;
        v52 = *v50++;
        v51 = (33 * v51) ^ v52;
      }

      while (v52);
    }

    std::mutex::lock(v47);
    *v71 = v49;
    v53 = sub_100009510(&v48[1].__m_.__sig, v71);
    v54 = v11;
    if (v53)
    {
      v56 = v53[3];
      v55 = v53[4];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v48);
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v55);
        v57 = 0;
LABEL_77:
        (*(*v56 + 24))(v56, &v69, &v68, &__p, &cf, &__str, &v66);
        if ((v57 & 1) == 0)
        {
          sub_100004A34(v55);
        }

        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v59 = *v54;
          if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
          {
            *v71 = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Filling the optional short code parameters", v71, 2u);
          }

          *(a2 + 32) = 1;
          v60 = v68;
          *(a2 + 64) = v69;
          *(a2 + 72) = v60;
          std::string::operator=((a2 + 112), &__p);
          std::string::operator=((a2 + 136), &cf);
          std::string::operator=((a2 + 160), &__str);
          std::string::operator=((a2 + 184), &v66);
        }

        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(cf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return sub_1000BFE80(&buf);
      }
    }

    else
    {
      v56 = 0;
    }

    std::mutex::unlock(v48);
    v55 = 0;
    v57 = 1;
    goto LABEL_77;
  }

  return sub_1000BFE80(&buf);
}

void sub_1015E1FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, std::__shared_weak_count *a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a37)
  {
    sub_100004A34(a37);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (v48)
  {
    sub_100004A34(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015E2114(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v179 = *(a5 + 108);
  v184 = (a1 + 56);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *v201 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v201);
  v15 = a3;
  if (v14)
  {
    v16 = v14[4];
    v182 = v14[3];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = a3;
      sub_100004A34(v16);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v182 = 0;
  }

  std::mutex::unlock(v9);
  v16 = 0;
  v17 = 1;
LABEL_9:
  v178 = a5;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  (*(**a4 + 248))(&v192);
  v177 = v17;
  v18 = v182;
  v19 = (*(**a4 + 256))(*a4);
  v20 = (*(**(a1 + 120) + 16))(*(a1 + 120), v19);
  *(v15 + 724) = subscriber::simSlotAsInstance();
  if (*(v178 + 52) == 2)
  {
    v21 = (*(**(a1 + 136) + 408))(*(a1 + 136), v19);
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(*v182 + 288))(v182, v19);
  *(v15 + 320) = sd::IMSSubscriberConfigInterface::shouldUseAPMediaStack(v21, v22, 0, v23) ^ 1;
  memset(&__str, 0, sizeof(__str));
  (*(*v182 + 56))(&__str, v182);
  std::string::operator=((v15 + 248), &__str);
  v24 = Registry::getServiceMap(*v184);
  v25 = v24;
  v27 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v28 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v24);
  *v201 = v27;
  v31 = sub_100009510(&v25[1].__m_.__sig, v201);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v182;
      sub_100004A34(v32);
      v34 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v25);
  v32 = 0;
  v34 = 1;
LABEL_20:
  v35 = (*(*v33 + 96))(v33);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if (v35)
  {
    PersonalityIdFromSlotIdEx(&buf);
    sub_10000501C(__p, "");
    (*(*v18 + 112))(v201, v18, &buf, __p);
    sub_100071A6C(a3 + 296);
    *(a3 + 296) = *v201;
    *(a3 + 312) = *&v201[16];
    memset(v201, 0, 24);
    v187[0] = v201;
    sub_1000087B4(v187);
    if (SHIBYTE(v190) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      v36 = buf.__r_.__value_.__r.__words[0];
LABEL_127:
      operator delete(v36);
      goto LABEL_128;
    }

    goto LABEL_128;
  }

  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v202 = 0u;
  memset(v201, 0, sizeof(v201));
  LODWORD(v195[0]) = -1;
  __p[0] = 0;
  __p[1] = 0;
  v190 = 0;
  v187[0] = 0;
  v187[1] = 0;
  v188 = 0;
  v37 = Registry::getServiceMap(*v184);
  v38 = v37;
  v39 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v40 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v41 = 5381;
    do
    {
      v39 = v41;
      v42 = *v40++;
      v41 = (33 * v41) ^ v42;
    }

    while (v42);
  }

  std::mutex::lock(v37);
  buf.__r_.__value_.__r.__words[0] = v39;
  v43 = sub_100009510(&v38[1].__m_.__sig, &buf);
  if (v43)
  {
    v45 = v43[3];
    v44 = v43[4];
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v38);
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v182;
      sub_100004A34(v44);
      v46 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v45 = 0;
  }

  std::mutex::unlock(v38);
  v44 = 0;
  v46 = 1;
LABEL_35:
  (*(*v45 + 112))(v45, v195, __p, v187);
  if ((v46 & 1) == 0)
  {
    sub_100004A34(v44);
  }

  *&v185.__r_.__value_.__l.__data_ = 0uLL;
  PersonalityIdFromSlotIdEx(&buf);
  (*(*v18 + 48))(&v185, v18, &buf);
  v47 = a3;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::string::operator=(v201, (v185.__r_.__value_.__r.__words[0] + 72));
  v48 = v185.__r_.__value_.__r.__words[0];
  if (&v201[24] != (v185.__r_.__value_.__r.__words[0] + 120))
  {
    sub_100008234(&v201[24], *(v185.__r_.__value_.__r.__words[0] + 120), *(v185.__r_.__value_.__r.__words[0] + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v185.__r_.__value_.__r.__words[0] + 128) - *(v185.__r_.__value_.__r.__words[0] + 120)) >> 3));
    v48 = v185.__r_.__value_.__r.__words[0];
  }

  std::string::operator=(&v203, v48 + 6);
  if ((&v204 + 8) != (v185.__r_.__value_.__r.__words[0] + 168))
  {
    sub_100008234(&v204 + 1, *(v185.__r_.__value_.__r.__words[0] + 168), *(v185.__r_.__value_.__r.__words[0] + 176), 0xAAAAAAAAAAAAAAABLL * ((*(v185.__r_.__value_.__r.__words[0] + 176) - *(v185.__r_.__value_.__r.__words[0] + 168)) >> 3));
  }

  sub_100008234(&v206, v187[0], v187[1], 0xAAAAAAAAAAAAAAABLL * ((v187[1] - v187[0]) >> 3));
  v50 = *(&v206 + 1);
  v49 = v206;
  v51 = (a3 + 504);
  if (v206 == *(&v206 + 1))
  {
    if (v51 == (&v204 + 8))
    {
      goto LABEL_49;
    }

    v49 = *(&v204 + 1);
    v50 = v205;
    goto LABEL_48;
  }

  if (v51 != &v206)
  {
LABEL_48:
    sub_100008234(v51, v49, v50, 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3));
  }

LABEL_49:
  v52 = (a3 + 456);
  std::string::operator=((a3 + 456), &v203);
  v53 = (a3 + 432);
  std::string::operator=((a3 + 432), v201);
  if ((a3 + 480) != &v201[24])
  {
    sub_100008234((a3 + 480), *&v201[24], v202, 0xAAAAAAAAAAAAAAABLL * ((v202 - *&v201[24]) >> 3));
  }

  v54 = v185.__r_.__value_.__r.__words[0];
  *(a3 + 552) = *(v185.__r_.__value_.__r.__words[0] + 192) != 2;
  *(a3 + 328) = v195[0];
  std::string::operator=((a3 + 384), v54 + 4);
  memset(&v186, 0, sizeof(v186));
  sub_100005308(&v186, __p);
  if ((a3 + 296) != &v186)
  {
    sub_100008234((a3 + 296), v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v186.__r_.__value_.__l.__size_ - v186.__r_.__value_.__r.__words[0]) >> 3));
  }

  if (v20)
  {
    v55 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 479) < 0)
      {
        v52 = *v52;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v52;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: DOMAIN - %s", &buf, 0x16u);
      v55 = *v20;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 455) < 0)
      {
        v53 = *v53;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v53;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Private Identity - %s", &buf, 0x16u);
      v55 = *v20;
    }

    v47 = a3;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 488) - *(a3 + 480)) >> 3);
      if (*(v185.__r_.__value_.__r.__words[0] + 192) == 2)
      {
        v57 = "I";
      }

      else
      {
        v57 = "U";
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v56;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      *v198 = v57;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Num public identities - %lu (%sSIM)", &buf, 0x20u);
    }
  }

  v175 = a2;
  v59 = *(v47 + 480);
  for (i = *(v47 + 488); v59 != i; v59 = (v59 + 24))
  {
    memset(&buf, 0, sizeof(buf));
    if (*(v59 + 23) < 0)
    {
      sub_100005F2C(&buf, *v59, *(v59 + 1));
    }

    else
    {
      v60 = *v59;
      buf.__r_.__value_.__r.__words[2] = *(v59 + 2);
      *&buf.__r_.__value_.__l.__data_ = v60;
    }

    if (v20)
    {
      v61 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v196 = 136315394;
        *&v196[4] = "fillConfigWithEmergencyParams";
        *&v196[12] = 2080;
        *&v196[14] = p_buf;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Public Identity - %s", v196, 0x16u);
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (v20)
  {
    v63 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v64 = 0xAAAAAAAAAAAAAAABLL * ((*(v185.__r_.__value_.__r.__words[0] + 176) - *(v185.__r_.__value_.__r.__words[0] + 168)) >> 3);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Num PCSCFs [SIM] - %lu", &buf, 0x16u);
    }
  }

  v66 = *(v185.__r_.__value_.__r.__words[0] + 168);
  for (j = *(v185.__r_.__value_.__r.__words[0] + 176); v66 != j; v66 = (v66 + 24))
  {
    memset(&buf, 0, sizeof(buf));
    if (*(v66 + 23) < 0)
    {
      sub_100005F2C(&buf, *v66, *(v66 + 1));
    }

    else
    {
      v67 = *v66;
      buf.__r_.__value_.__r.__words[2] = *(v66 + 2);
      *&buf.__r_.__value_.__l.__data_ = v67;
    }

    if (v20)
    {
      v68 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v69 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v69 = buf.__r_.__value_.__r.__words[0];
        }

        *v196 = 136315394;
        *&v196[4] = "fillConfigWithEmergencyParams";
        *&v196[12] = 2080;
        *&v196[14] = v69;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: PCSCF [SIM] - %s", v196, 0x16u);
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (v20)
  {
    v70 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 0xAAAAAAAAAAAAAAABLL * ((*(&v206 + 1) - v206) >> 3);
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Num PCSCFs [PCO] - %lu", &buf, 0x16u);
    }
  }

  v71 = *(&v206 + 1);
  for (k = v206; k != v71; k = (k + 24))
  {
    memset(&buf, 0, sizeof(buf));
    if (*(k + 23) < 0)
    {
      sub_100005F2C(&buf, *k, *(k + 1));
    }

    else
    {
      v73 = *k;
      buf.__r_.__value_.__r.__words[2] = *(k + 2);
      *&buf.__r_.__value_.__l.__data_ = v73;
    }

    if (v20)
    {
      v74 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v75 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v75 = buf.__r_.__value_.__r.__words[0];
        }

        *v196 = 136315394;
        *&v196[4] = "fillConfigWithEmergencyParams";
        *&v196[12] = 2080;
        *&v196[14] = v75;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: PCSCF [PCO] - %s", v196, 0x16u);
      }
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  a2 = v175;
  v18 = v182;
  if (v20)
  {
    v76 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      if (v190 >= 0)
      {
        v77 = __p;
      }

      else
      {
        v77 = __p[0];
      }

      v78 = (v185.__r_.__value_.__r.__words[0] + 96);
      if (*(v185.__r_.__value_.__r.__words[0] + 119) < 0)
      {
        v78 = *v78;
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
      *(buf.__r_.__value_.__r.__words + 4) = "fillConfigWithEmergencyParams";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v77;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
      *v198 = v195[0];
      *&v198[4] = 2080;
      *&v198[6] = v78;
      v199 = 2080;
      v200 = p_str;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: network interface: %s, app ID: %d, mdn: %s, country: %s", &buf, 0x30u);
    }
  }

  buf.__r_.__value_.__r.__words[0] = &v186;
  sub_1000087B4(&buf);
  if (v185.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v185.__r_.__value_.__l.__size_);
  }

  buf.__r_.__value_.__r.__words[0] = v187;
  sub_1000087B4(&buf);
  if (SHIBYTE(v190) < 0)
  {
    operator delete(__p[0]);
  }

  buf.__r_.__value_.__r.__words[0] = &v206;
  sub_1000087B4(&buf);
  buf.__r_.__value_.__r.__words[0] = &v204 + 8;
  sub_1000087B4(&buf);
  if (SBYTE7(v204) < 0)
  {
    operator delete(v203);
  }

  buf.__r_.__value_.__r.__words[0] = &v201[24];
  sub_1000087B4(&buf);
  if ((v201[23] & 0x80000000) != 0)
  {
    v36 = *v201;
    goto LABEL_127;
  }

LABEL_128:
  __p[0] = 0;
  __p[1] = 0;
  v190 = 0;
  v187[0] = 0;
  v187[1] = 0;
  v188 = 0;
  v80 = Registry::getServiceMap(*v184);
  v81 = v80;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v82 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v83 = 5381;
    do
    {
      v26 = v83;
      v84 = *v82++;
      v83 = (33 * v83) ^ v84;
    }

    while (v84);
  }

  std::mutex::lock(v80);
  *v201 = v26;
  v85 = sub_100009510(&v81[1].__m_.__sig, v201);
  if (v85)
  {
    v87 = v85[3];
    v86 = v85[4];
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v81);
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v182;
      sub_100004A34(v86);
      v88 = 0;
      goto LABEL_136;
    }
  }

  else
  {
    v87 = 0;
  }

  std::mutex::unlock(v81);
  v86 = 0;
  v88 = 1;
LABEL_136:
  v89 = (*(*v87 + 88))(v87);
  if ((v88 & 1) == 0)
  {
    sub_100004A34(v86);
  }

  if (v89)
  {
    (*(*v18 + 120))(v201, v18);
    v90 = a3;
    if (SHIBYTE(v190) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v201;
    v190 = *&v201[16];
    PersonalityIdFromSlotIdEx(&buf);
    (*(*v18 + 128))(v201, v18, &buf);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(v187[0]);
    }

    *v187 = *v201;
    v188 = *&v201[16];
    v201[23] = 0;
    v201[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    PersonalityIdFromSlotIdEx(v201);
    (*(*v18 + 176))(&buf, v18, v201);
    if ((v201[23] & 0x80000000) != 0)
    {
      operator delete(*v201);
    }

    PersonalityIdFromSlotId();
    (*(*v18 + 192))(&v186, v18, v201);
    if ((v201[23] & 0x80000000) != 0)
    {
      operator delete(*v201);
    }

    if (v20)
    {
      v91 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v92 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v92 = buf.__r_.__value_.__r.__words[0];
        }

        v93 = &v186;
        if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v93 = v186.__r_.__value_.__r.__words[0];
        }

        *v201 = 136315650;
        *&v201[4] = "fillConfigWithEmergencyParams";
        *&v201[12] = 2080;
        *&v201[14] = v92;
        *&v201[22] = 2080;
        *&v201[24] = v93;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Last Access Type = %s, Last Access Info = %s", v201, 0x20u);
      }
    }

    ims::AccessNetwork::set();
    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    PersonalityIdFromSlotId();
    v90 = a3;
    (*(*v18 + 176))(v201, v18, &buf);
    if (SHIBYTE(v190) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v201;
    v190 = *&v201[16];
    v201[23] = 0;
    v201[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    PersonalityIdFromSlotId();
    (*(*v18 + 192))(v201, v18, &buf);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(v187[0]);
    }

    *v187 = *v201;
    v188 = *&v201[16];
    v201[23] = 0;
    v201[0] = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  ims::AccessNetwork::set();
  if (v20)
  {
    v94 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v95 = __p;
      if (v190 < 0)
      {
        v95 = __p[0];
      }

      v96 = v187;
      if (v188 < 0)
      {
        v96 = v187[0];
      }

      *v201 = 136315650;
      *&v201[4] = "fillConfigWithEmergencyParams";
      *&v201[12] = 2080;
      *&v201[14] = v95;
      *&v201[22] = 2080;
      *&v201[24] = v96;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: Access Type = %s, Access Info = %s", v201, 0x20u);
    }
  }

  v97 = Registry::getServiceMap(*v184);
  v98 = v97;
  if (v99 < 0)
  {
    v100 = (v99 & 0x7FFFFFFFFFFFFFFFLL);
    v101 = 5381;
    do
    {
      v99 = v101;
      v102 = *v100++;
      v101 = (33 * v101) ^ v102;
    }

    while (v102);
  }

  std::mutex::lock(v97);
  *v201 = v99;
  v103 = sub_100009510(&v98[1].__m_.__sig, v201);
  if (!v103)
  {
    v104 = 0;
    goto LABEL_181;
  }

  v104 = v103[3];
  v105 = v103[4];
  if (!v105)
  {
LABEL_181:
    std::mutex::unlock(v98);
    v176 = 0;
    v180 = 1;
    goto LABEL_182;
  }

  atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v98);
  atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = v182;
  v90 = a3;
  v176 = v105;
  sub_100004A34(v105);
  v180 = 0;
LABEL_182:
  v106 = (*(*v104 + 440))(v104, v19);
  v107 = (*(*v104 + 448))(v104, v19, v106);
  v108 = v107;
  v109 = *(a1 + 896);
  if (!v109)
  {
    goto LABEL_189;
  }

  v110 = a1 + 896;
  do
  {
    if (*(v109 + 28) >= v19)
    {
      v110 = v109;
    }

    v109 = *(v109 + 8 * (*(v109 + 28) < v19));
  }

  while (v109);
  if (v110 != a1 + 896 && *(v110 + 28) <= v19)
  {
    v111 = *(v110 + 32);
    if (!v20)
    {
      goto LABEL_192;
    }
  }

  else
  {
LABEL_189:
    v111 = 0;
    if (!v20)
    {
      goto LABEL_192;
    }
  }

  v112 = *v20;
  v107 = os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT);
  if (v107)
  {
    v113 = CSIBOOLAsString(v108);
    v114 = asString();
    *v201 = 136315650;
    *&v201[4] = "fillConfigWithEmergencyParams";
    *&v201[12] = 2080;
    *&v201[14] = v113;
    *&v201[22] = 2080;
    *&v201[24] = v114;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I %s: IMS Emergency Reg Info: isLimitedService = %s, regStatus = %s", v201, 0x20u);
  }

LABEL_192:
  *(v90 + 556) = v111 == 5;
  *(v90 + 557) = v108;
  v115 = capabilities::ct::supportsVoiceCall(v107);
  *(v90 + 712) = v115;
  if (v115)
  {
    memset(v201, 0, 24);
    sub_10000501C(v201, "");
    v116 = *(a1 + 800);
    if (!v116)
    {
      goto LABEL_200;
    }

    v117 = a1 + 800;
    do
    {
      if (*(v116 + 32) >= v19)
      {
        v117 = v116;
      }

      v116 = *(v116 + 8 * (*(v116 + 32) < v19));
    }

    while (v116);
    if (v117 != a1 + 800 && v19 >= *(v117 + 32))
    {
      std::string::operator=(v201, (v117 + 40));
      v155 = *v20;
      v119 = v178;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v156 = v201;
        if (v201[23] < 0)
        {
          v156 = *v201;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v156;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "#I Device ID found: %s", &buf, 0xCu);
      }
    }

    else
    {
LABEL_200:
      v118 = *v20;
      v119 = v178;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "No device ID found for the sim!", &buf, 2u);
      }
    }

    std::string::operator=((v90 + 616), v201);
    goto LABEL_230;
  }

  memset(v201, 0, 24);
  v120 = Registry::getServiceMap(*v184);
  v119 = v178;
  v121 = v120;
  if ((v122 & 0x8000000000000000) != 0)
  {
    v123 = (v122 & 0x7FFFFFFFFFFFFFFFLL);
    v124 = 5381;
    do
    {
      v122 = v124;
      v125 = *v123++;
      v124 = (33 * v124) ^ v125;
    }

    while (v125);
  }

  std::mutex::lock(v120);
  buf.__r_.__value_.__r.__words[0] = v122;
  v126 = sub_100009510(&v121[1].__m_.__sig, &buf);
  if (v126)
  {
    v128 = v126[3];
    v127 = v126[4];
    if (v127)
    {
      atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v121);
      atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v182;
      sub_100004A34(v127);
      v129 = 0;
      goto LABEL_213;
    }
  }

  else
  {
    v128 = 0;
  }

  std::mutex::unlock(v121);
  v127 = 0;
  v129 = 1;
LABEL_213:
  (*(*v128 + 160))(v201, v128);
  if ((v129 & 1) == 0)
  {
    sub_100004A34(v127);
  }

  *&v186.__r_.__value_.__l.__data_ = 0uLL;
  v130 = Registry::getServiceMap(*v184);
  v131 = v130;
  if ((v132 & 0x8000000000000000) != 0)
  {
    v133 = (v132 & 0x7FFFFFFFFFFFFFFFLL);
    v134 = 5381;
    do
    {
      v132 = v134;
      v135 = *v133++;
      v134 = (33 * v134) ^ v135;
    }

    while (v135);
  }

  std::mutex::lock(v130);
  buf.__r_.__value_.__r.__words[0] = v132;
  v136 = sub_100009510(&v131[1].__m_.__sig, &buf);
  v137 = a2;
  if (!v136)
  {
    v139 = 0;
    goto LABEL_222;
  }

  v139 = v136[3];
  v138 = v136[4];
  if (!v138)
  {
LABEL_222:
    std::mutex::unlock(v131);
    v138 = 0;
    v140 = 1;
    goto LABEL_223;
  }

  atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v131);
  atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = v182;
  sub_100004A34(v138);
  v140 = 0;
LABEL_223:
  (**v139)(&v186, v139, v201);
  a2 = v137;
  if ((v140 & 1) == 0)
  {
    sub_100004A34(v138);
  }

  v90 = a3;
  if (v186.__r_.__value_.__r.__words[0])
  {
    memset(&buf, 0, sizeof(buf));
    (*(*v186.__r_.__value_.__l.__data_ + 120))(&buf);
    std::string::operator=((a3 + 616), &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (v186.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v186.__r_.__value_.__l.__size_);
  }

LABEL_230:
  if ((v201[23] & 0x80000000) != 0)
  {
    operator delete(*v201);
  }

  memset(&v186, 0, sizeof(v186));
  sub_10000501C(&v186, "");
  memset(v196, 0, 24);
  sub_10000501C(v196, "");
  (*(*v18 + 88))(v18, &v192, &v186, v196);
  std::string::operator=((v90 + 640), &v186);
  v141 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    v142 = HIBYTE(v194);
    if (v194 < 0)
    {
      v142 = v193;
    }

    v143 = &v192;
    if (v194 < 0)
    {
      v143 = v192;
    }

    if (v142)
    {
      v144 = v143;
    }

    else
    {
      v144 = "<invalid>";
    }

    v145 = &v186;
    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v145 = v186.__r_.__value_.__r.__words[0];
    }

    v146 = v196;
    if ((v196[23] & 0x80u) != 0)
    {
      v146 = *v196;
    }

    *v201 = 136315650;
    *&v201[4] = v144;
    *&v201[12] = 2080;
    *&v201[14] = v145;
    *&v201[22] = 2080;
    *&v201[24] = v146;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I Address ref Id associated with %s: %s with expiry %s", v201, 0x20u);
  }

  memset(&v185, 0, sizeof(v185));
  (*(*v18 + 144))(&v185, v18, &v192);
  v147 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    v148 = &v185;
    if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v148 = v185.__r_.__value_.__r.__words[0];
    }

    v149 = HIBYTE(v194);
    if (v194 < 0)
    {
      v149 = v193;
    }

    v150 = &v192;
    if (v194 < 0)
    {
      v150 = v192;
    }

    if (v149)
    {
      v151 = v150;
    }

    else
    {
      v151 = "<invalid>";
    }

    *v201 = 136315394;
    *&v201[4] = v148;
    *&v201[12] = 2080;
    *&v201[14] = v151;
    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "#I IMSI based Identity = %s for PID: %s", v201, 0x16u);
  }

  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v185.__r_.__value_.__l.__size_)
    {
      goto LABEL_261;
    }

    goto LABEL_260;
  }

  if (*(&v185.__r_.__value_.__s + 23))
  {
LABEL_260:
    std::string::operator=((a2 + 40), &v185);
  }

LABEL_261:
  v152 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *v201 = 67109376;
    *&v201[4] = v179 & 0x1F;
    *&v201[8] = 1024;
    *&v201[10] = v179;
    _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I Emergency Services Category Value masked off: %d for %d.", v201, 0xEu);
  }

  if (v179)
  {
    v154 = 2;
  }

  else if ((v179 & 2) != 0)
  {
    v154 = 3;
  }

  else if ((v179 & 4) != 0)
  {
    v154 = 4;
  }

  else if ((v179 & 8) != 0)
  {
    v154 = 5;
  }

  else if ((v179 & 0x10) != 0)
  {
    v154 = 6;
  }

  else
  {
    v153 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *v201 = 67109120;
      *&v201[4] = v179;
      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "#I No IMS emergency category found for %d, defaulting to kNone", v201, 8u);
    }

    v154 = 1;
  }

  v157 = *v20;
  if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *v201 = 67109376;
    *&v201[4] = v179;
    *&v201[8] = 1024;
    *&v201[10] = v154;
    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "#I Emergency category is %d converted to ims category: %d", v201, 0xEu);
  }

  *(a2 + 208) = v154;
  v158 = *(v119 + 135);
  v159 = v158;
  if ((v158 & 0x80u) != 0)
  {
    v158 = *(v119 + 120);
  }

  if (v158)
  {
    v160 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      v161 = *(v119 + 112);
      if (v159 >= 0)
      {
        v161 = v119 + 112;
      }

      *v201 = 136315138;
      *&v201[4] = v161;
      _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I Emergency category URN: %s", v201, 0xCu);
    }

    memset(v201, 0, 24);
    sub_10000501C(v201, "urn:service:sos");
    v162 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v119 + 135) >= 0)
      {
        v163 = v119 + 112;
      }

      else
      {
        v163 = *(v119 + 112);
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v163;
      _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "#I Extended Emergency Category: %s", &buf, 0xCu);
    }

    v164 = *(v119 + 135);
    if ((v164 & 0x80u) != 0)
    {
      v164 = *(v119 + 120);
    }

    if (v164)
    {
      if (v201[23] >= 0)
      {
        v165 = v201[23];
      }

      else
      {
        v165 = *&v201[8];
      }

      memset(&buf, 0, sizeof(buf));
      v166 = &buf;
      sub_1000677C4(&buf, v165 + 1);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v166 = buf.__r_.__value_.__r.__words[0];
      }

      if (v165)
      {
        if (v201[23] >= 0)
        {
          v167 = v201;
        }

        else
        {
          v167 = *v201;
        }

        memmove(v166, v167, v165);
      }

      *(&v166->__r_.__value_.__l.__data_ + v165) = 46;
      v168 = *(v119 + 135);
      if (v168 >= 0)
      {
        v169 = (v119 + 112);
      }

      else
      {
        v169 = *(v119 + 112);
      }

      if (v168 >= 0)
      {
        v170 = *(v119 + 135);
      }

      else
      {
        v170 = *(v119 + 120);
      }

      v171 = std::string::append(&buf, v169, v170);
      v172 = v171->__r_.__value_.__r.__words[0];
      v195[0] = v171->__r_.__value_.__l.__size_;
      *(v195 + 7) = *(&v171->__r_.__value_.__r.__words[1] + 7);
      v173 = HIBYTE(v171->__r_.__value_.__r.__words[2]);
      v171->__r_.__value_.__l.__size_ = 0;
      v171->__r_.__value_.__r.__words[2] = 0;
      v171->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if ((v201[23] & 0x80000000) != 0)
      {
        operator delete(*v201);
      }
    }

    else
    {
      v172 = *v201;
      v195[0] = *&v201[8];
      *(v195 + 7) = *&v201[15];
      v173 = v201[23];
    }

    if (*(a2 + 239) < 0)
    {
      operator delete(*(a2 + 216));
    }

    v174 = v195[0];
    *(a2 + 216) = v172;
    *(a2 + 224) = v174;
    *(a2 + 231) = *(v195 + 7);
    *(a2 + 239) = v173;
  }

  *(a2 + 272) = CallInfo::isSuspicious380Redirect(v119);
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  if (v196[23] < 0)
  {
    operator delete(*v196);
  }

  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  if ((v180 & 1) == 0)
  {
    sub_100004A34(v176);
  }

  if (SHIBYTE(v188) < 0)
  {
    operator delete(v187[0]);
  }

  if (SHIBYTE(v190) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v194) < 0)
  {
    operator delete(v192);
    if (v177)
    {
      return;
    }
  }

  else if (v177)
  {
    return;
  }

  sub_100004A34(v16);
}

void sub_1015E3F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, int a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v55 - 201) < 0)
  {
    operator delete(*(v55 - 224));
  }

  if ((a18 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if ((a15 & 1) == 0)
  {
    sub_100004A34(v54);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1015E42AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v16 = *(a2 + 16);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v20 = v16;
  }

  v18 = 0;
  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    v24 = v20;
  }

  v21 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v18;
    v18 = v21;
    v22 = v6;
    sub_100005978(&v22);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(*buf);
  }

  v7 = v18;
  v17 = v18;
  v18 = 0;
  sub_100005978(&v18);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = CFUUIDCreateFromString(kCFAllocatorDefault, v7);
  __p[0] = v8;
  v9 = *(a1 + 136);
  v14 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v10 = (*(*v9 + 272))(v9, &v14, a3);
  sub_1000475BC(&v14);
  if ((v10 & 1) == 0)
  {
    v11 = *(a1 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received notification with unknown UUID: %s", buf, 0xCu);
    }
  }

  sub_1000475BC(__p);
  sub_100005978(&v17);
  return v10;
}

void sub_1015E44F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1015E4584(uint64_t result, uint64_t a2)
{
  v2 = *(result + 768);
  v3 = (result + 776);
  if (v2 != (result + 776))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
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

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    sub_1015F26D0(result, v7, v2 + 40);
    goto LABEL_13;
  }
}

void sub_1015E4654(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  v39 = 0;
  sub_1015E4B14(&v38, a1, a2);
  v4 = v38;
  if (v38)
  {
    v36 = 0;
    v37 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
    *&buf = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &buf);
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
LABEL_20:
        (*(*v13 + 24))(&v36, v13, a2);
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        v20 = v36;
        if (v36)
        {
          buf = 0uLL;
          v45 = 0;
          sub_1015E4C64(&buf, a2, 0);
          __p[0] = 0;
          __p[1] = 0;
          v35 = 0;
          sub_1015E4C64(__p, a2, 1);
          v21 = *(a1 + 48);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a2 + 23);
            v23 = (v22 & 0x80u) != 0;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(a2 + 8);
            }

            if (v23)
            {
              v24 = *a2;
            }

            else
            {
              v24 = a2;
            }

            if (v22)
            {
              v25 = v24;
            }

            else
            {
              v25 = "<invalid>";
            }

            *v40 = 136315138;
            v41 = v25;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Setting call and default IMS delegates for %s", v40, 0xCu);
            v21 = *(a1 + 48);
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            p_buf = &buf;
            if (v45 < 0)
            {
              p_buf = buf;
            }

            v27 = __p;
            if (v35 < 0)
            {
              v27 = __p[0];
            }

            *v40 = 136315394;
            v41 = p_buf;
            v42 = 2080;
            v43 = v27;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Call Manager Delegate: %s, Call Delegate: %s.", v40, 0x16u);
          }

          v28 = v39;
          v32 = v4 + 8;
          v33 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v20 + 160))(v20, &buf, &v32, *(a1 + 32));
          if (v33)
          {
            sub_100004A34(v33);
          }

          v30 = v4;
          v31 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v20 + 168))(v20, __p, &v30, *(a1 + 32));
          if (v31)
          {
            sub_100004A34(v31);
          }

          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(buf);
          }
        }

        else
        {
          v29 = *(a1 + 48);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to set delegate: call client is NULL!!", &buf, 2u);
          }
        }

        if (v37)
        {
          sub_100004A34(v37);
        }

        goto LABEL_55;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_20;
  }

  v15 = *(a1 + 48);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a2 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v17)
    {
      v18 = *a2;
    }

    else
    {
      v18 = a2;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v19;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IMSCallCommandDriver::setDelegatesOnIMSClientHandle: No Model found for PID: %s", &buf, 0xCu);
  }

LABEL_55:
  if (v39)
  {
    sub_100004A34(v39);
  }
}

void sub_1015E4A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015E4B14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 664);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a2 + 664;
  v8 = a2 + 664;
  do
  {
    v9 = sub_1000068BC((v6 + 32), a3);
    if ((v9 & 0x80u) == 0)
    {
      v8 = v6;
    }

    v6 = *(v6 + ((v9 >> 4) & 8));
  }

  while (v6);
  if (v8 == v7 || (sub_1000068BC(a3, (v8 + 32)) & 0x80) != 0)
  {
LABEL_10:
    v11 = *(a2 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a3 + 23);
      v13 = (v12 & 0x80u) != 0;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a3 + 8);
      }

      if (v13)
      {
        v14 = *a3;
      }

      else
      {
        v14 = a3;
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = "<invalid>";
      }

      v16 = 136315138;
      v17 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "IMSCallCommandDriver::getIMSCallModelForPersonalityID: Model not found for PID %s", &v16, 0xCu);
    }

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v10 = *(v8 + 64);
    *a1 = *(v8 + 56);
    a1[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }
}