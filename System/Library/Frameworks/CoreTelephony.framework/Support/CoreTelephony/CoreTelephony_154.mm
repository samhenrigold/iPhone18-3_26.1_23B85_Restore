void sub_10134883C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, xpc_object_t object, uint64_t a23, xpc_object_t a24, uint64_t a25, xpc_object_t a26, uint64_t a27, xpc_object_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, xpc_object_t a36, uint64_t a37, char a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v51 - 65) < 0)
  {
    operator delete(*(v51 - 88));
  }

  xpc_release(v50);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_10134A104(v49);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v51 - 153) < 0)
  {
    operator delete(*(v51 - 176));
  }

  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  v53 = *(v51 - 96);
  if (v53)
  {
    sub_100004A34(v53);
  }

  _Unwind_Resume(a1);
}

const void **sub_101348A58@<X0>(__int128 *a1@<X3>, uint64_t a2@<X8>)
{
  v5 = 0;
  carrier_space::getCarrierSpaceValueForKey();
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  return sub_10000A1EC(&v5);
}

const void **sub_101348B24@<X0>(Registry **a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v17 = @"Carrier";
  CFRetain(@"Carrier");
  ServiceMap = Registry::getServiceMap(*a1);
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
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    sub_10005C7A4(a3, &v17);
    if (v15)
    {
      return sub_100005978(&v17);
    }

    goto LABEL_12;
  }

LABEL_11:
  (*(*v14 + 96))(&v18, v14, a2, 1, @"CarrierName", v17, 0);
  sub_100060DE8(a3, &v18);
  sub_10000A1EC(&v18);
  if ((v15 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v13);
  }

  return sub_100005978(&v17);
}

void sub_101348C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a10);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

const void **sub_101348CD8@<X0>(Registry **a1@<X0>, uint64_t a2@<X1>, CFStringRef *a3@<X8>)
{
  v19 = 0;
  sub_101348B24(a1, a2, &v19);
  v18 = CFStringCreateWithFormat(0, 0, @"Touch ID to Change this %@ Plan", v19);
  ServiceMap = Registry::getServiceMap(*a1);
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
  cf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &cf);
  if (!v11)
  {
    std::mutex::unlock(v6);
    goto LABEL_9;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v6);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    if (!v13)
    {
      *a3 = v18;
      v18 = 0;
LABEL_15:
      sub_100004A34(v12);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  std::mutex::unlock(v6);
  if (!v13)
  {
LABEL_9:
    *a3 = v18;
    v18 = 0;
    goto LABEL_16;
  }

LABEL_11:
  cf = 0;
  (*(*v13 + 40))(&cf, v13, kCBMessageLocalizationTable, @"TOUCH_ID_AUTH_TITLE", v18);
  if (cf)
  {
    v17 = cf;
    CFRetain(cf);
    v14 = sub_10082F9E8(@"%@", &v17);
    sub_100005978(&v17);
    *a3 = CFStringCreateWithFormat(0, 0, v14, v19, v14, v17);
    sub_100005978(&v16);
  }

  else
  {
    *a3 = v18;
    v18 = 0;
  }

  sub_100005978(&cf);
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_100005978(&v18);
  return sub_100005978(&v19);
}

void sub_101348EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  sub_100005978(va);
  sub_100005978(va3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

BOOL sub_101348F28(int a1)
{
  v1 = &byte_101958B8B;
  v2 = 4;
  while (*v1 != a1)
  {
    ++v1;
    if (!--v2)
    {
      v1 = "14WebPushFactory";
      return v1 != "14WebPushFactory";
    }
  }

  return v1 != "14WebPushFactory";
}

const void **sub_101348F70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  propertyList = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = propertyList;
    propertyList = Mutable;
    v30 = v5;
    sub_1000296E0(&v30);
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 != v7)
  {
    v22 = 0;
    v23 = 0;
    v21 = 0;
    sub_100034C50(&v21, v6, v7, v7 - v6);
    v28 = 0;
    v29 = 0;
    __p = 0;
    sub_100034C50(&__p, v21, v22, v22 - v21);
    v26 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_100034C50(&v30, __p, v28, v28 - __p);
    v33 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v26;
      v26 = v33;
      v34 = v8;
      sub_10002D760(&v34);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    v24 = v26;
    v26 = 0;
    sub_10002D760(&v26);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    sub_100DA3358(propertyList, @"kAccessTokenKey", v24);
    sub_10002D760(&v24);
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  if (v9 != v10)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    sub_100034C50(&v18, v9, v10, v10 - v9);
    v28 = 0;
    v29 = 0;
    __p = 0;
    sub_100034C50(&__p, v18, v19, v19 - v18);
    v26 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_100034C50(&v30, __p, v28, v28 - __p);
    v33 = 0;
    if (ctu::cf::convert_copy())
    {
      v11 = v26;
      v26 = v33;
      v34 = v11;
      sub_10002D760(&v34);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    v12 = v26;
    v24 = v26;
    v26 = 0;
    sub_10002D760(&v26);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    sub_100DA3358(propertyList, @"kRefreshTokenKey", v12);
    sub_10002D760(&v24);
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    sub_10040CE7C(propertyList, @"kExpiresAtKey", v13);
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v30 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1000DCF88(a2, BytePtr, &BytePtr[Length], Length);
  sub_10002D760(&v30);
  return sub_1000296E0(&propertyList);
}

void sub_101349224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22)
{
  sub_10002D760(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a17);
  _Unwind_Resume(a1);
}

const void **sub_101349318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = 0;
  data = 0;
  v15 = 0;
  v16 = 0;
  sub_100034C50(&v15, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_100034C50(&__p, v15, v16, v16 - v15);
  v19 = 0;
  v23 = 0uLL;
  v24 = 0;
  sub_100034C50(&v23, __p, v21, v21 - __p);
  v25 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v19;
    v19 = v25;
    v26 = v3;
    sub_10002D760(&v26);
  }

  if (v23)
  {
    *(&v23 + 1) = v23;
    operator delete(v23);
  }

  data = v19;
  v19 = 0;
  sub_10002D760(&v19);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  __p = 0;
  *&v23 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
  sub_100138C38(&__p, &v23);
  v4 = __p;
  if (__p)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    if (CFDictionaryGetValue(v4, @"kAccessTokenKey"))
    {
      v23 = 0uLL;
      v24 = 0;
      ctu::cf::assign();
      v5 = v23;
      v6 = v24;
      v7 = *a2;
      if (*a2)
      {
        *(a2 + 8) = v7;
        v13 = v5;
        operator delete(v7);
        v5 = v13;
      }

      *a2 = v5;
      *(a2 + 16) = v6;
    }

    if (CFDictionaryGetValue(__p, @"kRefreshTokenKey"))
    {
      v23 = 0uLL;
      v24 = 0;
      ctu::cf::assign();
      v8 = v23;
      v9 = v24;
      v10 = *(a2 + 24);
      if (v10)
      {
        *(a2 + 32) = v10;
        v14 = v8;
        operator delete(v10);
        v8 = v14;
      }

      *(a2 + 24) = v8;
      *(a2 + 40) = v9;
    }

    Value = CFDictionaryGetValue(__p, @"kExpiresAtKey");
    if (Value)
    {
      *&v23 = Value;
      sub_100D1A30C((a2 + 48), &v23);
    }
  }

  else
  {
    *(a2 + 42) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  sub_10001021C(&__p);
  return sub_10002D760(&data);
}

void sub_10134951C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19)
{
  sub_100D176E4(v19);
  sub_10001021C(&__p);
  sub_10002D760(&a14);
  _Unwind_Resume(a1);
}

void sub_1013495C0(Registry **a1@<X0>, void *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
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
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
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
  v14 = v11;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  if (v11)
  {
    __p = 0uLL;
    v13 = 0;
    sub_101348A58(&__p, a2);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1013496EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101349718(Registry **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = 0;
  ctu::ns::AutoPool::AutoPool(&v19);
  v6 = +[NSMutableArray array];
  [v6 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%@", @"grant_type", @"refresh_token"}];
  [v6 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%@", @"refresh_token", objc_msgSend([NSString alloc], "initWithBytes:length:encoding:", *(a2 + 24), *(a2 + 32) - *(a2 + 24), 4))}];
  v17 = 0;
  v18 = 0;
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
  *&v20 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v20);
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
  v17 = v15;
  v18 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  *&v20 = 0;
  carrier_space::getCarrierSpaceValueForKey();
  sub_100060DE8(&v20, &v16);
  sub_10000A1EC(&v16);
  if (v20)
  {
    [v6 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%@", @"scope", v20)}];
  }

  sub_100005978(&v20);
  [objc_msgSend(objc_msgSend(v6 componentsJoinedByString:{@"&", "stringByAddingPercentEncodingWithAllowedCharacters:", +[NSCharacterSet URLQueryAllowedCharacterSet](NSCharacterSet, "URLQueryAllowedCharacterSet")), "dataUsingEncoding:", 4}];
  v20 = 0uLL;
  v21 = 0;
  ctu::cf::assign();
  *a3 = v20;
  *(a3 + 16) = v21;
  if (v18)
  {
    sub_100004A34(v18);
  }

  ctu::ns::AutoPool::~AutoPool(&v19);
}

void sub_101349968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  ctu::ns::AutoPool::~AutoPool(&a14);
  _Unwind_Resume(a1);
}

void sub_1013499DC(uint64_t ***a1@<X8>)
{
  sub_10134A138(v2, off_101F30B68, &off_101F30B70);
  sub_1000DF684(a1, v2, 1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_101349A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D6F38(va);
  _Unwind_Resume(a1);
}

const void **sub_101349A98@<X0>(const void **result@<X0>, Registry **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  if (v6 == v7)
  {
    *(a4 + 42) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return result;
  }

  v8 = result;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  sub_100034C50(&v33, v6, v7, v7 - v6);
  v39 = 0;
  v40 = 0;
  v38 = 0;
  sub_100034C50(&v38, v33, v34, v34 - v33);
  v37 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v44 = 0;
  sub_100034C50(__p, v38, v39, v39 - v38);
  v41 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v37;
    v37 = v41;
    v42 = v9;
    sub_10002D760(&v42);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v36 = v37;
  v37 = 0;
  sub_10002D760(&v37);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (!v36)
  {
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not convert refresh token response to data blob", __p, 2u);
    }

    *(a4 + 42) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return sub_10002D760(&v36);
  }

  v38 = 0;
  ctu::ns::AutoPool::AutoPool(&v38);
  v42 = 0;
  v10 = [NSJSONSerialization JSONObjectWithData:v36 options:0 error:&v42];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = [v10 objectForKeyedSubscript:@"error"];
  if (!v11)
  {
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    v14 = [v10 objectForKeyedSubscript:@"access_token"];
    if (v14)
    {
      [v14 dataUsingEncoding:4];
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      ctu::cf::assign();
      v15 = v44;
      *a4 = *__p;
      *(a4 + 16) = v15;
    }

    v16 = [v10 objectForKeyedSubscript:@"refresh_token"];
    if (v16)
    {
      [v16 dataUsingEncoding:4];
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      ctu::cf::assign();
      v17 = v44;
      *(a4 + 24) = *__p;
      *(a4 + 40) = v17;
    }

    v18 = [v10 objectForKeyedSubscript:@"expires_in"];
    if (!v18)
    {
      goto LABEL_16;
    }

    ServiceMap = Registry::getServiceMap(*a2);
    v20 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
    __p[0] = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, __p);
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
        goto LABEL_35;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
LABEL_35:
    v29 = (*(*v27 + 96))(v27);
    v30 = CFDateCreate(0, v29 + [v18 integerValue]);
    v31 = *(a4 + 48);
    *(a4 + 48) = v30;
    __p[0] = v31;
    sub_1003EC530(__p);
    if ((v28 & 1) == 0)
    {
      sub_100004A34(v26);
    }

    goto LABEL_16;
  }

  v12 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    v32 = [v11 UTF8String];
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v32;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Refresh token response contains error: %s", __p, 0xCu);
  }

LABEL_15:
  *(a4 + 42) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
LABEL_16:
  ctu::ns::AutoPool::~AutoPool(&v38);
  return sub_10002D760(&v36);
}

void sub_101349EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10134A030@<X0>(CFDateRef *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
  StringWithDate = CFDateFormatterCreateStringWithDate(kCFAllocatorDefault, v6, *a1);
  v7 = 0uLL;
  v8 = 0;
  ctu::cf::assign();
  *a2 = 0uLL;
  *(a2 + 16) = v8;
  sub_100005978(&StringWithDate);
  return sub_1009524A8(&v6);
}

void sub_10134A0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  sub_1009524A8(&a11);
  _Unwind_Resume(a1);
}

xpc_object_t *sub_10134A104(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void *sub_10134A138(void *a1, char **a2, char **a3)
{
  v5 = sub_10000501C(a1, *a2);
  sub_10000501C(v5 + 3, *a3);
  return a1;
}

void sub_10134A174(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10134A194()
{
  TMKXPCServer.shutdown()();

  operator delete();
}

id sub_10134A1CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = [[APSConnection alloc] initWithEnvironmentName:v6 namedDelegatePort:v7 queue:*a4];

  return v8;
}

void sub_10134A294(unsigned __int8 *a1, os_log_t *a2)
{
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*a1);
    v5 = CSIBOOLAsString(a1[1]);
    v6 = CSIBOOLAsString(a1[2]);
    v7 = 136315650;
    v8 = v4;
    v9 = 2080;
    v10 = v5;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fResetInProgress = %s, fServiceProvisioningInProgress = %s, fPendingToProcessSim = %s", &v7, 0x20u);
  }
}

void sub_10134A36C(uint64_t a1, int a2, os_log_t *a3)
{
  v4 = *(a1 + 2);
  *a1 = 0;
  *(a1 + 2) = 0;
  if (a2)
  {
    if (v4)
    {
      v5 = *a3;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Retaining pending SIM info event to process", v6, 2u);
      }

      *(a1 + 2) = v4;
    }
  }

  else
  {
    *a1 = 1;
  }
}

uint64_t sub_10134A3FC(void *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5)
{
  v5 = a1[3];
  if (a1[4])
  {
    memset(buf, 0, sizeof(buf));
    v24 = 0;
    if (a3 == 6)
    {
      sub_10000501C(buf, "gri");
    }

    else if (a3)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(buf, *a2, *(a2 + 8));
      }

      else
      {
        *buf = *a2;
        v24 = *(a2 + 16);
      }
    }

    else
    {
      sub_10000501C(buf, "pri");
    }

    v11 = a1[2];
    if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      sub_100013CC4();
    }

    v14 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    v15 = a1[4];
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&__dst, *buf, *&buf[8]);
    }

    else
    {
      __dst = *buf;
      v35 = v24;
    }

    *v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_10016FB64(v20, &__dst, &v36, 1uLL);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_10134A824;
    aBlock[3] = &unk_101F30C18;
    aBlock[4] = a1;
    aBlock[5] = v12;
    v27 = v14;
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v28 = v5;
    sub_10134B520(v29, a5);
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&__p, *buf, *&buf[8]);
    }

    else
    {
      __p = *buf;
      v31 = v24;
    }

    v16 = a4[1];
    v32 = *a4;
    v33 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = _Block_copy(aBlock);
    v10 = (**v15)(v15, v20, &v19, 10);
    if (v19)
    {
      _Block_release(v19);
    }

    v25 = v20;
    sub_1000087B4(&v25);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
      if (v10)
      {
LABEL_30:
        if (v33)
        {
          sub_100004A34(v33);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }

        sub_10134B4A0(v29);
        if (v27)
        {
          std::__shared_weak_count::__release_weak(v27);
        }

        std::__shared_weak_count::__release_weak(v14);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*buf);
        }

        return v10;
      }
    }

    else if (v10)
    {
      goto LABEL_30;
    }

    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Queuing file failed", v20, 2u);
    }

    goto LABEL_30;
  }

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create write session", buf, 2u);
  }

  return 0;
}

void sub_10134A75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42)
{
  sub_10134B4A0(v43 + 64);
  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  a22 = &a11;
  sub_1000087B4(&a22);
  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  std::__shared_weak_count::__release_weak(v42);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10134A824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = a3;
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      if (v8)
      {
        if (v5)
        {
          v9 = **(a1 + 56);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v21 = hsfiler::support::to_string();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Queuing file status: %s", buf, 0xCu);
          }

          if (v5 != 1)
          {
            sub_10134AAD8(*(a1 + 88), 1);
          }
        }

        else
        {
          v10 = *(a1 + 128);
          v15 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            v8 = *(a1 + 40);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_10134AB28;
          aBlock[3] = &unk_101F30BE8;
          v11 = *(a1 + 48);
          aBlock[4] = v8;
          v17 = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = *(a1 + 56);
          sub_10134B520(v19, a1 + 64);
          v14 = _Block_copy(aBlock);
          v12 = HSFilerWriteSession::writeWithStream();
          if (v14)
          {
            _Block_release(v14);
          }

          if (v15)
          {
            sub_100004A34(v15);
          }

          if ((v12 & 1) == 0)
          {
            v13 = **(a1 + 56);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Writing file failed", buf, 2u);
            }

            sub_10134AAD8(*(a1 + 88), 1);
          }

          sub_10134B4A0(v19);
          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10134AA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_10134B4A0(v18 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_10134AAD8(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void sub_10134AB28(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 32) && a3 != 1)
      {
        if (a3)
        {
          v10 = 1;
        }

        else
        {
          v8 = **(a1 + 48);
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          v10 = 0;
          if (v9)
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Writing file was successful", v11, 2u);
            v10 = 0;
          }
        }

        sub_10134AAD8(*(a1 + 80), v10);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10134ABF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10134B520(a1 + 56, a2 + 56);
}

void sub_10134AC3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10134AC54(uint64_t a1)
{
  sub_10134B4A0(a1 + 56);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *sub_10134ACA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_10134B520(a1 + 64, a2 + 64);
  if (*(a2 + 119) < 0)
  {
    result = sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
  }

  v7 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10134AD28(_Unwind_Exception *a1)
{
  sub_10134B4A0(v1 + 64);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10134AD50(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10134B4A0(a1 + 64);
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_10134ADB8@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::supportsHiSpeedFiler(a1);
  if (result)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *sub_10134AE58(void *a1, uint64_t a2)
{
  v3 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "hs.filer");
  ctu::OsLogLogger::OsLogLogger(&v6, &v8);
  ctu::OsLogLogger::OsLogLogger(v3, &v6);
  ctu::OsLogLogger::~OsLogLogger(&v6);
  ctu::OsLogContext::~OsLogContext(&v8);
  v7[0] = off_101E2B528;
  v7[1] = sub_1000A82D8;
  v7[3] = v7;
  a1[2] = 0;
  if ((capabilities::ct::supportsGemini(v4) & 1) == 0)
  {
    operator new();
  }

  if (!a1[2])
  {
    operator new();
  }

  sub_1000A8744(v7);
  *a1 = off_101F30C58;
  return a1;
}

void sub_10134B064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000A8744(va);
  operator delete();
}

void sub_10134B110(void *a1)
{
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  HiSpeedFilerFactoryInterface::~HiSpeedFilerFactoryInterface(a1);
}

void sub_10134B180(void *a1)
{
  sub_10134B110(a1);

  operator delete();
}

void sub_10134B3BC(HiSpeedFilerWriteSessionInterface *this)
{
  *this = off_101F30BD0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  HiSpeedFilerWriteSessionInterface::~HiSpeedFilerWriteSessionInterface(this);
}

void sub_10134B424(HiSpeedFilerWriteSessionInterface *this)
{
  *this = off_101F30BD0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  HiSpeedFilerWriteSessionInterface::~HiSpeedFilerWriteSessionInterface(this);

  operator delete();
}

uint64_t sub_10134B4A0(uint64_t a1)
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

uint64_t sub_10134B520(uint64_t a1, uint64_t a2)
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

void sub_10134B620(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10134B65C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134B694(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10134B6C4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10134B72C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134B764(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10134B794(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10134BA00(ctu::DispatchTimerService *a1)
{
  ctu::DispatchTimerService::~DispatchTimerService(a1);

  operator delete();
}

void sub_10134BA3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134BA90(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10134BAD0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t *sub_10134BAFC(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a1;
  v5 = v2;
  (*(**v2 + 56))(*v2, a2);
  sub_10024BAAC(&v5);
  return sub_1000049E0(&v4);
}

void sub_10134BB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10134BB7C(capabilities::ct *a1@<X0>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v4 = capabilities::ct::supportsPhoneNumberRegistration(a1);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    operator new();
  }
}

void sub_10134C30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v6);
  ctu::OsLogContext::~OsLogContext(va1);
  JUMPOUT(0x10134C2E4);
}

void sub_10134C33C(void *a1, dispatch_object_t object)
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

void sub_10134C43C(void *a1, int a2, int a3, char a4)
{
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

uint64_t sub_10134C540(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a3;
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = &v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_101350A00;
  v8[3] = &unk_101F31298;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A440;
    v13 = &unk_101F312D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594E4;
    v13 = &unk_101F312B8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

const void **sub_10134C67C(uint64_t a1, CFTypeRef cf)
{
  v4 = CFCopyDescription(cf);
  v5 = 0uLL;
  v6 = 0;
  ctu::cf::assign();
  *a1 = 0uLL;
  *(a1 + 16) = v6;
  return sub_100005978(&v4);
}

void sub_10134C6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10134C6FC(uint64_t a1, PersonalityInfo **a2)
{
  *valuePtr = 2048;
  if (!IsTelephonyRunningExtended(valuePtr))
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Radio Module is not present, Phone number registration is not supported", valuePtr, 2u);
    }

    goto LABEL_16;
  }

  v4 = *a2;
  if (*(*a2 + 49) - 1 < 2)
  {
    goto LABEL_16;
  }

  if ((*(v4 + 48) & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v57 = PersonalityInfo::logPrefix(v4);
      v58 = *a2 + 24;
      v59 = *(*a2 + 47);
      v60 = v59;
      if ((v59 & 0x80u) != 0)
      {
        v59 = *(*a2 + 4);
      }

      if (v60 < 0)
      {
        v58 = *(*a2 + 3);
      }

      if (!v59)
      {
        v58 = "<invalid>";
      }

      *valuePtr = 136315394;
      *&valuePtr[4] = v57;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = v58;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s, calculatePhoneNumberRegistrationSupportStatus called on non-active persona %s", valuePtr, 0x16u);
      v4 = *a2;
    }
  }

  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 13));
  if (*(*a2 + 96) & 1) != 0 || (*(*a2 + 62))
  {
LABEL_16:
    v19 = 1;
    goto LABEL_17;
  }

  v7 = v6;
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
  *valuePtr = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, valuePtr);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
    goto LABEL_47;
  }

LABEL_46:
  v40 = PersonalityInfo::iccid(*a2);
  if (((*(*v16 + 104))(v16, v40) & 1) == 0)
  {
    v51 = *v7;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I MDM does not allow PNR for line", valuePtr, 2u);
    }

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    v19 = 2;
    goto LABEL_17;
  }

LABEL_47:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  *valuePtr = 0;
  *&valuePtr[8] = 0;
  v41 = Registry::getServiceMap(*(a1 + 56));
  v42 = v41;
  if (v43 < 0)
  {
    v44 = (v43 & 0x7FFFFFFFFFFFFFFFLL);
    v45 = 5381;
    do
    {
      v43 = v45;
      v46 = *v44++;
      v45 = (33 * v45) ^ v46;
    }

    while (v46);
  }

  std::mutex::lock(v41);
  *buf = v43;
  v47 = sub_100009510(&v42[1].__m_.__sig, buf);
  if (v47)
  {
    v49 = v47[3];
    v48 = v47[4];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v42);
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v48);
      v50 = 0;
      goto LABEL_62;
    }
  }

  else
  {
    v49 = 0;
  }

  std::mutex::unlock(v42);
  v48 = 0;
  v50 = 1;
LABEL_62:
  (**v49)(valuePtr, v49, *a2 + 24);
  if ((v50 & 1) == 0)
  {
    sub_100004A34(v48);
  }

  if (*valuePtr && (*(**valuePtr + 80))(*valuePtr, 1))
  {
    v52 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Carrier Supports PNR over entitlements", buf, 2u);
    }

    v53 = 0;
    v19 = 0;
  }

  else
  {
    v19 = 2;
    v53 = 1;
  }

  v54 = *&valuePtr[8];
  if (*&valuePtr[8])
  {
    sub_100004A34(*&valuePtr[8]);
  }

  if (v53)
  {
    if (capabilities::ct::supportsPhoneNumberRegistration(v54))
    {
      v55 = sub_100837FF8((a1 + 40), (a1 + 56), *a2 + 24);
      *valuePtr = v55;
      if (v55)
      {
        if (CFStringGetLength(v55) > 0)
        {
          v19 = 0;
LABEL_90:
          sub_100005978(valuePtr);
          goto LABEL_17;
        }

        v61 = *v7;
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
LABEL_89:
          v19 = 1;
          goto LABEL_90;
        }

        *buf = 0;
        v62 = "Gateway address is not valid?";
      }

      else
      {
        v61 = *v7;
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_89;
        }

        *buf = 0;
        v62 = "Failed to find gateway address";
      }

      _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v62, buf, 2u);
      goto LABEL_89;
    }

    v56 = *v7;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Device does not support PNR", valuePtr, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
  v20 = sub_100007A6C(a1 + 136, *a2 + 24);
  v21 = (a1 + 144);
  if (a1 + 144 != v20 && *(v20 + 56) == v19)
  {
    v22 = 0;
    return v22 | (v19 << 8);
  }

  v23 = *a2;
  v24 = *v21;
  if (!*v21)
  {
    goto LABEL_26;
  }

  while (1)
  {
    while (1)
    {
      v25 = v24;
      if ((sub_1000068BC(v23 + 3, v24 + 32) & 0x80) == 0)
      {
        break;
      }

      v24 = *v25;
      v21 = v25;
      if (!*v25)
      {
        goto LABEL_26;
      }
    }

    if ((sub_1000068BC(v25 + 4, v23 + 24) & 0x80) == 0)
    {
      break;
    }

    v21 = (v25 + 8);
    v24 = *(v25 + 1);
    if (!v24)
    {
      goto LABEL_26;
    }
  }

  if (!*v21)
  {
LABEL_26:
    operator new();
  }

  (*v21)[56] = v19;
  v26 = Registry::getServiceMap(*(a1 + 56));
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
  *valuePtr = v28;
  v32 = sub_100009510(&v27[1].__m_.__sig, valuePtr);
  if (!v32)
  {
    v34 = 0;
    goto LABEL_34;
  }

  v34 = v32[3];
  v33 = v32[4];
  if (!v33)
  {
LABEL_34:
    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
    goto LABEL_35;
  }

  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v27);
  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v33);
  v35 = 0;
LABEL_35:
  v36 = *a2;
  *buf = 0;
  *valuePtr = v19;
  v37 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, valuePtr);
  if (v37)
  {
    *buf = v37;
    *valuePtr = 0;
    sub_100029A48(valuePtr);
    v38 = *buf;
  }

  else
  {
    v38 = 0;
  }

  v63 = v38;
  *buf = 0;
  sub_100029A48(buf);
  (*(*v34 + 16))(v34, v36 + 24, @"PNRStatus", v38, @"PNRCtrl", 0, 2, 0);
  sub_100029A48(&v63);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  v22 = 1;
  return v22 | (v19 << 8);
}

void sub_10134CED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10134CF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101351AA8;
  v7[3] = &unk_101F31358;
  v7[4] = a1 + 8;
  v7[5] = v6;
  v8 = v7;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1013503E4;
    v12 = &unk_101F31278;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1013503A8;
    v12 = &unk_101F31258;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }

  return v15;
}

uint64_t sub_10134D098(uint64_t a1, PersonalityInfo **a2, uint64_t a3)
{
  v135 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(*a2 + 13));
  v5 = *v135;
  if (os_log_type_enabled(*v135, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Issuing phone number registration request", buf, 2u);
  }

  v148 = 0uLL;
  v149 = 0;
  *&v168 = a3;
  *(&v168 + 1) = "kSmsToken";
  sub_100006354(&v168, object);
  memset(buf, 0, 24);
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  v147 = 0;
  *&v168 = 0;
  *buf = a3;
  *&buf[8] = "kPhoneNumberRegistrationEmbedded";
  sub_100006354(buf, &v168);
  if (xpc_get_type(v168) != &_xpc_type_null)
  {
    ctu::xpc_to_cf(v168, v6);
    sub_100060DE8(object, v150);
    *buf = v147;
    v147 = object[0];
    object[0] = 0;
    sub_100005978(buf);
    sub_100005978(object);
    sub_10000A1EC(v150);
  }

  xpc_release(v168);
  v7 = HIBYTE(v149);
  if (SHIBYTE(v149) < 0)
  {
    v7 = *(&v148 + 1);
  }

  v132 = v7;
  v8 = v147;
  v145[0] = 0;
  v145[1] = 0;
  v146 = 0;
  *&v168 = a3;
  *(&v168 + 1) = "kSmsSessionToken";
  sub_100006354(&v168, object);
  memset(buf, 0, 24);
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  xarray = 0;
  *buf = a3;
  *&buf[8] = "kPhoneNumberRegistrationMechanisms";
  sub_100015504(buf, &xarray);
  v9 = *a2;
  v10 = *(a1 + 56);
  v136 = (a1 + 56);
  *buf = 0;
  *&buf[8] = 0;
  ServiceMap = Registry::getServiceMap(v10);
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
  *&v168 = v14;
  v18 = sub_100009510(&v12[1].__m_.__sig, &v168);
  v134 = a1;
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
      goto LABEL_19;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v12);
  v19 = 0;
  v21 = 1;
LABEL_19:
  v22 = v135;
  (**v20)(buf, v20, (v9 + 24));
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (*buf)
  {
    v23 = (*(**buf + 72))(*buf, 1);
  }

  else
  {
    v23 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v24 = *a2;
  v133 = v8;
  if (*(*a2 + 49))
  {
    v25 = 0;
    v26 = 0;
    goto LABEL_44;
  }

  v27 = *v136;
  *buf = 0;
  *&buf[8] = 0;
  v28 = Registry::getServiceMap(v27);
  v29 = v28;
  v30 = v13;
  if (v13 < 0)
  {
    v31 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v32 = 5381;
    do
    {
      v30 = v32;
      v33 = *v31++;
      v32 = (33 * v32) ^ v33;
    }

    while (v33);
  }

  std::mutex::lock(v28);
  *&v168 = v30;
  v34 = sub_100009510(&v29[1].__m_.__sig, &v168);
  if (!v34)
  {
    v36 = 0;
    goto LABEL_35;
  }

  v36 = v34[3];
  v35 = v34[4];
  if (!v35)
  {
LABEL_35:
    std::mutex::unlock(v29);
    v35 = 0;
    v37 = 1;
    goto LABEL_36;
  }

  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v29);
  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = v135;
  sub_100004A34(v35);
  v37 = 0;
LABEL_36:
  (**v36)(buf, v36, (v24 + 24));
  if ((v37 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  if (*buf)
  {
    v26 = (*(**buf + 72))(*buf, 14);
  }

  else
  {
    v26 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v25 = *(*a2 + 49) == 0;
LABEL_44:
  v38 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    v39 = CSIBOOLAsString(v23);
    *buf = 136315138;
    *&buf[4] = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Can use entitlement getPhoneNumber: %s", buf, 0xCu);
    v38 = *v22;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v40 = CSIBOOLAsString(v26);
    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Can use entitlement RCSToken: %s", buf, 0xCu);
    v38 = *v22;
  }

  v41 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (v41)
  {
    v42 = CSIBOOLAsString(v25);
    *buf = 136315138;
    *&buf[4] = v42;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Can use entitlement SMS: %s", buf, 0xCu);
  }

  if (*(*a2 + 49) != 3 || (capabilities::euicc::supportsPartialActive(v41) & v23 & 1) != 0)
  {
    *buf = a3;
    *&buf[8] = "kSmsPhoneNumberRegistrationAttemptCount";
    sub_100006354(buf, &v168);
    v44 = xpc::dyn_cast_or_default(&v168, 0, v43);
    xpc_release(v168);
    if (v44 < 3)
    {
      v45 = v23;
    }

    else
    {
      v45 = 0;
    }

    if (v44 >= 5)
    {
      v25 = 0;
    }

    v142[0] = 0;
    v142[1] = 0;
    v143 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v141 = 0;
    if (xpc_get_type(xarray) == &_xpc_type_array)
    {
      if (v45)
      {
        if (xpc_get_type(xarray) == &_xpc_type_array && (count = xpc_array_get_count(xarray)) != 0)
        {
          v66 = 0;
          LOBYTE(v45) = 1;
          do
          {
            *&v168 = 0;
            *buf = &xarray;
            *&buf[8] = v66;
            sub_10003EAD4(buf, &v168);
            if (xpc_get_type(v168) == &_xpc_type_dictionary)
            {
              *buf = &v168;
              *&buf[8] = "kPhoneNumberRegistrationMechanismType";
              sub_100006354(buf, object);
              v69 = xpc::dyn_cast_or_default(object, 0, v68);
              xpc_release(object[0]);
              if (v69 == 2)
              {
                v70 = *(v134 + 40);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I Can use sms less PNR mechanism", buf, 2u);
                }

                v67 = 1;
              }

              else
              {
                v67 = 0;
              }
            }

            else
            {
              v67 = 4;
            }

            xpc_release(v168);
            if ((v67 | 4) != 4)
            {
              break;
            }

            LOBYTE(v45) = ++v66 < count;
          }

          while (count != v66);
        }

        else
        {
          LOBYTE(v45) = 0;
        }
      }

      if (v25)
      {
        if (xpc_get_type(xarray) == &_xpc_type_array && (v71 = xpc_array_get_count(xarray)) != 0)
        {
          v72 = 0;
          LOBYTE(v25) = 1;
          do
          {
            v150[0] = 0;
            *buf = &xarray;
            *&buf[8] = v72;
            sub_10003EAD4(buf, v150);
            if (xpc_get_type(v150[0]) == &_xpc_type_dictionary)
            {
              *buf = v150;
              *&buf[8] = "kPhoneNumberRegistrationMechanismType";
              sub_100006354(buf, &v168);
              v75 = xpc::dyn_cast_or_default(&v168, 0, v74);
              xpc_release(v168);
              if (v75 == 1)
              {
                object[0] = v150;
                object[1] = "kPhoneNumberRegistrationDestinationAddress";
                sub_100006354(object, v155);
                memset(buf, 0, 24);
                xpc::dyn_cast_or_default();
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                if (SHIBYTE(v141) < 0)
                {
                  operator delete(__p[0]);
                }

                *__p = v168;
                v141 = v169;
                BYTE7(v169) = 0;
                LOBYTE(v168) = 0;
                xpc_release(v155[0]);
                object[0] = v150;
                object[1] = "kPhoneNumberRegistrationServiceCenterAddress";
                sub_100006354(object, v155);
                memset(buf, 0, 24);
                xpc::dyn_cast_or_default();
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                if (SHIBYTE(v143) < 0)
                {
                  operator delete(v142[0]);
                }

                *v142 = v168;
                v143 = v169;
                BYTE7(v169) = 0;
                LOBYTE(v168) = 0;
                xpc_release(v155[0]);
                v76 = *(v134 + 40);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  v77 = __p;
                  if (v141 < 0)
                  {
                    v77 = __p[0];
                  }

                  v78 = v142;
                  if (v143 < 0)
                  {
                    v78 = v142[0];
                  }

                  *buf = 136315394;
                  *&buf[4] = v77;
                  *&buf[12] = 2080;
                  *&buf[14] = v78;
                  _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I Can use sms PNR mechanism. Destination address: %s service center address: %s", buf, 0x16u);
                }

                v73 = 1;
              }

              else
              {
                v73 = 0;
              }
            }

            else
            {
              v73 = 4;
            }

            xpc_release(v150[0]);
            if ((v73 | 4) != 4)
            {
              break;
            }

            LOBYTE(v25) = ++v72 < v71;
          }

          while (v71 != v72);
        }

        else
        {
          LOBYTE(v25) = 0;
        }
      }

      if (v26)
      {
        for (i = 0; ; ++i)
        {
          if (xpc_get_type(xarray) == &_xpc_type_array)
          {
            v47 = xpc_array_get_count(xarray);
          }

          else
          {
            v47 = 0;
          }

          if (i >= v47)
          {
            v26 = 0;
            v22 = v135;
            goto LABEL_134;
          }

          *&v168 = 0;
          *buf = &xarray;
          *&buf[8] = i;
          sub_10003EAD4(buf, &v168);
          if (xpc_get_type(v168) == &_xpc_type_dictionary)
          {
            *buf = &v168;
            *&buf[8] = "kPhoneNumberRegistrationMechanismType";
            sub_100006354(buf, object);
            v49 = xpc::dyn_cast_or_default(object, 0, v48);
            xpc_release(object[0]);
            if (v49 == 3)
            {
              break;
            }
          }

          xpc_release(v168);
        }

        v79 = *(v134 + 40);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I Can use RCS token PNR mechanism", buf, 2u);
        }

        xpc_release(v168);
        v22 = v135;
        v26 = 1;
      }
    }

LABEL_134:
    v80 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v44;
      *&buf[8] = 1024;
      *&buf[10] = 3;
      *&buf[14] = 1024;
      *&buf[16] = 5;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "#I Attempt: %d, max http attempts allowed: %d, max attempts allowed: %d", buf, 0x14u);
    }

    sub_10119D984(*(*a2 + 13), v44, v45 & 1, v25);
    if (v133)
    {
      v81 = v26;
    }

    else
    {
      v81 = 0;
    }

    if (v81 == 1)
    {
      v82 = *v22;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Issuing phone number registration request over ENT (RCSToken)", buf, 2u);
      }

      v83 = *(*a2 + 13);
      v84 = v147;
      v155[0] = 0;
      v155[1] = 0;
      v85 = Registry::getServiceMap(*v136);
      v86 = v85;
      if (v13 < 0)
      {
        v87 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
        v88 = 5381;
        do
        {
          v13 = v88;
          v89 = *v87++;
          v88 = (33 * v88) ^ v89;
        }

        while (v89);
      }

      std::mutex::lock(v85);
      *buf = v13;
      v90 = sub_100009510(&v86[1].__m_.__sig, buf);
      if (v90)
      {
        v92 = v90[3];
        v91 = v90[4];
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v86);
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v91);
          v93 = 0;
LABEL_154:
          (*(*v92 + 8))(v155, v92, v83);
          if ((v93 & 1) == 0)
          {
            sub_100004A34(v91);
          }

          v154[0] = 0;
          *object = 0u;
          v153 = 0u;
          LODWORD(object[0]) = 1;
          *buf = v84;
          sub_10021D11C(v154, buf);
          v169 = 0u;
          v170 = 0u;
          v168 = 0u;
          sub_1003D27A0(&v169 + 1, object);
          *v158 = 0u;
          *v159 = 0u;
          *v157 = 0u;
          memset(buf, 0, sizeof(buf));
          buf[3] = 1;
          v160 = 0;
          (*(*v155[0] + 480))();
          v151 = 0;
          memset(v150, 0, sizeof(v150));
          LOBYTE(v150[0]) = 1;
          if (SHIBYTE(v149) < 0)
          {
            sub_100005F2C(&v150[1], v148, *(&v148 + 1));
          }

          else
          {
            *&v150[1] = v148;
            v150[3] = v149;
          }

          LODWORD(v151) = 0;
          (***(v134 + 104))(*(v134 + 104), v83, v150);
          if (SHIBYTE(v150[3]) < 0)
          {
            operator delete(v150[1]);
          }

          if (v160 == 1 && SHIBYTE(v159[1]) < 0)
          {
            operator delete(v158[1]);
          }

          if (LOBYTE(v158[0]) == 1 && SHIBYTE(v157[1]) < 0)
          {
            operator delete(*&buf[24]);
          }

          *buf = &v169 + 8;
          sub_1003EC564(buf);
          if (v168)
          {
            *(&v168 + 1) = v168;
            operator delete(v168);
          }

          sub_100005978(v154);
          *buf = &object[1];
          sub_1000087B4(buf);
          if (v155[1])
          {
            sub_100004A34(v155[1]);
          }

          v64 = 257;
          goto LABEL_189;
        }
      }

      else
      {
        v92 = 0;
      }

      std::mutex::unlock(v86);
      v91 = 0;
      v93 = 1;
      goto LABEL_154;
    }

    v94 = sub_1004437AC(@"kCTAutomaticSMS");
    v95 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
    {
      v96 = CSIBOOLAsString(v25);
      v97 = CSIBOOLAsString(v94);
      *buf = 136315394;
      *&buf[4] = v96;
      *&buf[12] = 2080;
      *&buf[14] = v97;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#I Sms ok :- %s Automatic sms disallowed :- %s", buf, 0x16u);
    }

    if ((v132 == 0 || !v25) | v94 & 1)
    {
      v64 = 0;
LABEL_189:
      if (SHIBYTE(v141) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v143) < 0)
      {
        operator delete(v142[0]);
      }

      goto LABEL_193;
    }

    v98 = *v22;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "#I Issuing phone number registration request over SMS", buf, 2u);
    }

    v99 = *(*a2 + 13);
    if (SHIBYTE(v143) < 0)
    {
      sub_100005F2C(__dst, v142[0], v142[1]);
    }

    else
    {
      *__dst = *v142;
      *&__dst[16] = v143;
    }

    if (SHIBYTE(v141) < 0)
    {
      sub_100005F2C(v138, __p[0], __p[1]);
    }

    else
    {
      *v138 = *__p;
      *&v138[16] = v141;
    }

    v100 = (*(**(v134 + 48) + 16))(*(v134 + 48), v99);
    v101 = __dst[23];
    if (__dst[23] < 0)
    {
      v101 = *&__dst[8];
    }

    if (v101)
    {
LABEL_208:
      v117 = v138[23];
      v118 = v138[23];
      v119 = *&v138[8];
      if (v138[23] >= 0)
      {
        v120 = v138[23];
      }

      else
      {
        v120 = *&v138[8];
      }

      if (!v120)
      {
        object[0] = 0;
        PersonalityIdFromSlotId();
        object[0] = sub_100837FF8((v134 + 40), v136, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        memset(buf, 0, 24);
        ctu::cf::assign();
        v121 = *buf;
        *&v168 = *&buf[8];
        *(&v168 + 7) = *&buf[15];
        v122 = buf[23];
        if ((v138[23] & 0x80000000) != 0)
        {
          operator delete(*v138);
        }

        *v138 = v121;
        *&v138[8] = v168;
        *&v138[15] = *(&v168 + 7);
        v138[23] = v122;
        v123 = *v100;
        if (os_log_type_enabled(*v100, OS_LOG_TYPE_DEFAULT))
        {
          v124 = v138;
          if (v122 < 0)
          {
            v124 = v121;
          }

          *buf = 136315138;
          *&buf[4] = v124;
          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I Found destination address %s in carrier bundle", buf, 0xCu);
        }

        sub_100005978(object);
        v117 = v138[23];
        v119 = *&v138[8];
        v118 = v138[23];
      }

      if (v118 < 0)
      {
        v117 = v119;
      }

      if (v117)
      {
        v169 = 0u;
        v170 = 0u;
        v168 = 0u;
        sub_10164F640(*(v134 + 72), v99, &v168);
        if (*(&v170 + 1))
        {
          sub_10164E62C(*(v134 + 72), v99);
          v125 = sub_10164E674(*(v134 + 72), v99);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 0x40000000;
          *&buf[16] = sub_10119D93C;
          *&buf[24] = &unk_101F16B10;
          v157[0] = __PAIR64__(v99, v125);
          sub_10119D790(0x800EA, buf);
        }

        v126 = *v100;
        if (os_log_type_enabled(*v100, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I PNR request cookies:", buf, 2u);
        }

        v127 = *(&v170 + 1);
        if (*(&v170 + 1))
        {
          v128 = 0;
          do
          {
            v129 = *v100;
            if (os_log_type_enabled(*v100, OS_LOG_TYPE_DEFAULT))
            {
              v130 = *(*(&v168 + 1) + 8 * ((v128 + v170) / 0xAA)) + 24 * ((v128 + v170) % 0xAA);
              if (*(v130 + 23) < 0)
              {
                v130 = *v130;
              }

              *buf = 134218242;
              *&buf[4] = v128;
              *&buf[12] = 2082;
              *&buf[14] = v130;
              _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "#I Cookie %zu = %{public}s", buf, 0x16u);
              v127 = *(&v170 + 1);
            }

            ++v128;
          }

          while (v128 < v127);
        }

        object[0] = 0;
        object[1] = 0;
        *&v153 = 0;
        sub_10164EDA0(*(v134 + 72), v136, &v148, v145, v99, object);
        v150[0] = 0;
        v150[1] = 0;
        if ((v138[23] & 0x80000000) != 0)
        {
          sub_100005F2C(buf, *v138, *&v138[8]);
        }

        else
        {
          *buf = *v138;
          *&buf[16] = *&v138[16];
        }

        *&buf[24] = v99;
        if (SBYTE7(v153) < 0)
        {
          sub_100005F2C(v157, object[0], object[1]);
        }

        else
        {
          *v157 = *object;
          v158[0] = v153;
        }

        LODWORD(v158[1]) = 3;
        if ((__dst[23] & 0x80000000) != 0)
        {
          sub_100005F2C(v159, *__dst, *&__dst[8]);
        }

        else
        {
          *v159 = *__dst;
          v160 = *&__dst[16];
        }

        v161 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 9;
        v166 = 0;
        v167 = 0;
        sub_1001F7C1C();
      }

      v131 = *v100;
      if (os_log_type_enabled(*v100, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Destination address for PNR SMS is empty", buf, 2u);
      }

      v64 = 1;
      if ((v138[23] & 0x80000000) != 0)
      {
        operator delete(*v138);
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      goto LABEL_189;
    }

    v102 = Registry::getServiceMap(*v136);
    v103 = v102;
    if (v104 < 0)
    {
      v105 = (v104 & 0x7FFFFFFFFFFFFFFFLL);
      v106 = 5381;
      do
      {
        v104 = v106;
        v107 = *v105++;
        v106 = (33 * v106) ^ v107;
      }

      while (v107);
    }

    std::mutex::lock(v102);
    *buf = v104;
    v108 = sub_100009510(&v103[1].__m_.__sig, buf);
    if (v108)
    {
      v110 = v108[3];
      v109 = v108[4];
      if (v109)
      {
        atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v103);
        atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v109);
        v111 = 0;
LABEL_200:
        (*(*v110 + 96))(object, v110, v99, 1, @"PhoneNumberRegistrationServiceCenter", 0, 0);
        memset(buf, 0, 24);
        ctu::cf::assign();
        v113 = *buf;
        *&v168 = *&buf[8];
        *(&v168 + 7) = *&buf[15];
        v114 = buf[23];
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        *__dst = v113;
        *&__dst[8] = v168;
        *&__dst[15] = *(&v168 + 7);
        __dst[23] = v114;
        sub_10000A1EC(object);
        if ((v111 & 1) == 0)
        {
          sub_100004A34(v109);
        }

        v115 = *v100;
        if (os_log_type_enabled(*v100, OS_LOG_TYPE_DEFAULT))
        {
          v116 = __dst;
          if (__dst[23] < 0)
          {
            v116 = *__dst;
          }

          *buf = 136315138;
          *&buf[4] = v116;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "#I Found service center address %s in carrier bundle", buf, 0xCu);
        }

        goto LABEL_208;
      }
    }

    else
    {
      v110 = 0;
    }

    std::mutex::unlock(v103);
    v109 = 0;
    v111 = 1;
    goto LABEL_200;
  }

  v50 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    v51 = *a2 + 24;
    v52 = *(*a2 + 47);
    v53 = v52;
    if ((v52 & 0x80u) != 0)
    {
      v52 = *(*a2 + 4);
    }

    if (v53 < 0)
    {
      v51 = *(*a2 + 3);
    }

    if (!v52)
    {
      v51 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Cannot issuePNR in limited use state (%s)", buf, 0xCu);
  }

  v54 = Registry::getServiceMap(*v136);
  v55 = v54;
  v56 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v57 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v58 = 5381;
    do
    {
      v56 = v58;
      v59 = *v57++;
      v58 = (33 * v58) ^ v59;
    }

    while (v59);
  }

  std::mutex::lock(v54);
  *buf = v56;
  v60 = sub_100009510(&v55[1].__m_.__sig, buf);
  if (v60)
  {
    v62 = v60[3];
    v61 = v60[4];
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v55);
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v61);
      v63 = 0;
      if (!v62)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  else
  {
    v62 = 0;
  }

  std::mutex::unlock(v55);
  v61 = 0;
  v63 = 1;
  if (v62)
  {
LABEL_91:
    (*(*v62 + 1136))(v62, *a2 + 24);
  }

LABEL_92:
  if ((v63 & 1) == 0)
  {
    sub_100004A34(v61);
  }

  v64 = 0;
LABEL_193:
  xpc_release(xarray);
  if (SHIBYTE(v146) < 0)
  {
    operator delete(v145[0]);
  }

  sub_100005978(&v147);
  if (SHIBYTE(v149) < 0)
  {
    operator delete(v148);
  }

  return v64;
}

void sub_10134EE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, xpc_object_t object, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, const void *a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, xpc_object_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  sub_100641DD4((v69 - 160));
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  xpc_release(object);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  sub_100005978(&a54);
  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

void sub_10134F408(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_10134F508(void *a1, __int128 *a2, char a3)
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

  v7 = a3;
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

void sub_10134F66C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I =====DumpState for PhoneNumberRegistrationController======", buf, 2u);
  }

  subscriber::makeSimSlotRange();
  v3 = v22;
  if (v22 != v23)
  {
    do
    {
      if (v24(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v23);
    while (v3 != v23)
    {
      v4 = *v3;
      v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Slot: %s PNR request cookies:", buf, 0xCu);
      }

      v30 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_10164F640(*(a1 + 72), v4, buf);
      if (*(&v30 + 1))
      {
        v7 = 0;
        do
        {
          v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(*&buf[8] + 8 * ((v7 + v30) / 0xAA)) + 24 * ((v7 + v30) % 0xAA);
            if (*(v9 + 23) < 0)
            {
              v9 = *v9;
            }

            *v25 = 134218242;
            v26 = v7;
            v27 = 2080;
            v28 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Cookie %zu = %s", v25, 0x16u);
          }

          ++v7;
        }

        while (v7 < *(&v30 + 1));
      }

      sub_100641DD4(buf);
      do
      {
        ++v3;
      }

      while (v3 != v23 && (v24(*v3) & 1) == 0);
    }
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 152);
    *buf = 134217984;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I PNR support status cache: %zu elements", buf, 0xCu);
  }

  v12 = *(a1 + 136);
  if (v12 != (a1 + 144))
  {
    do
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v12[4];
        v15 = *(v12 + 55);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = v12[5];
        }

        if (v16 >= 0)
        {
          v14 = (v12 + 4);
        }

        if (v15)
        {
          v17 = v14;
        }

        else
        {
          v17 = "<invalid>";
        }

        v18 = asString();
        *buf = 136315394;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I  | %s: %s", buf, 0x16u);
      }

      v19 = v12[1];
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
          v20 = v12[2];
          v21 = *v20 == v12;
          v12 = v20;
        }

        while (!v21);
      }

      v12 = v20;
    }

    while (v20 != (a1 + 144));
  }
}

void sub_10134FA68(uint64_t a1)
{
  sub_10134FAA0(a1);

  operator delete();
}

uint64_t sub_10134FAA0(uint64_t a1)
{
  *a1 = off_101F30F38;
  sub_1010DD940(*(a1 + 144));
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  PhoneNumberRegistrationControllerInterface::~PhoneNumberRegistrationControllerInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10134FB70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134FBC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10134FC04(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10134FC30(ServiceManager::Service *this)
{
  *this = off_101F310B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10134FC8C(ServiceManager::Service *this)
{
  *this = off_101F310B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_10134FD0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10134FD50(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10134C33C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10134C33C(v4, 0);
}

void sub_10134FDF4(uint64_t a1, int a2, ServiceStage *this)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 8);
    ServiceStage::holdOffStage(&group[1], this);
    v4 = *(v3 + 16);
    if (v4)
    {
      if (std::__shared_weak_count::lock(v4))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }
}

void sub_10134FF38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134FF78(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10134FFB8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10006DCAC(result + 64, *(result + 72));
    sub_101350034(v1 + 40, *(v1 + 48));
    sub_100077CD4(v1 + 16, *(v1 + 24));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_101350034(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_101350034(a1, *a2);
    sub_101350034(a1, a2[1]);
    sub_100641DD4(a2 + 5);

    operator delete(a2);
  }
}

uint64_t *sub_101350090(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 120));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_1013500D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1013500F4(uint64_t *a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 56));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/events/dump_state");
  operator new();
}

void sub_101350208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1000062D4(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1013502DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F311E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101350314(void *a1)
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

uint64_t sub_10135035C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013503A8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1013503E4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_101350420(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_101350498(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v1 + 3);
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Handling phone number registration send %x", buf, 8u);
  }

  v6 = *(v2 + 72);
  if (!v6)
  {
LABEL_44:
    operator delete();
  }

  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  sub_10164E744(v6, *(v1 + 3), v26);
  v7 = HIBYTE(v27);
  if (v27 < 0)
  {
    v7 = v26[1];
  }

  if (!v7)
  {
    v10 = *v3;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v1 + 3);
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E Token for message id %x not found", buf, 8u);
    }

    goto LABEL_42;
  }

  memset(buf, 0, 24);
  ctu::cf::assign();
  *v24 = *buf;
  v25 = *&buf[16];
  memset(buf, 0, 24);
  ctu::cf::assign();
  *__p = *buf;
  v23 = *&buf[16];
  v21 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v21 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v21 = v9;
    if (!v9)
    {
      v12 = xpc_null_create();
      v9 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
LABEL_17:
    xpc_release(v9);
    v19 = xpc_BOOL_create(*(v1 + 16));
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    v13 = v24;
    if (v25 < 0)
    {
      v13 = v24[0];
    }

    *buf = &v21;
    *&buf[8] = v13;
    sub_10000F688(buf, &v19, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v19);
    v19 = 0;
    if (v27 >= 0)
    {
      v14 = v26;
    }

    else
    {
      v14 = v26[0];
    }

    v17 = xpc_string_create(v14);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    v15 = __p;
    if (v23 < 0)
    {
      v15 = __p[0];
    }

    *buf = &v21;
    *&buf[8] = v15;
    sub_10000F688(buf, &v17, &v18);
    xpc_release(v18);
    v18 = 0;
    xpc_release(v17);
    v17 = 0;
    if (*(v1 + 2) == 1)
    {
      *buf = v21;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v16 = xpc_null_create();
      sub_10002A37C(90, buf, &v16);
      xpc_release(v16);
      xpc_release(*buf);
    }

    v29 = 0;
    memset(buf, 0, sizeof(buf));
    buf[0] = *(v1 + 16);
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(&buf[8], v26[0], v26[1]);
    }

    else
    {
      *&buf[8] = *v26;
      *&buf[24] = v27;
    }

    LODWORD(v29) = 0;
    (***(v2 + 104))(*(v2 + 104), *(v1 + 2), buf);
    if (buf[31] < 0)
    {
      operator delete(*&buf[8]);
    }

    xpc_release(v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

LABEL_42:
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    goto LABEL_44;
  }

  v12 = xpc_null_create();
LABEL_16:
  v21 = v12;
  goto LABEL_17;
}

void sub_1013508D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  xpc_release(object);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

BOOL sub_101350A00(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  sub_100010024(&theDict, v1[1]);
  v3 = *v1[2];
  ct_green_tea_logger_create_static();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  v5 = CTGreenTeaOsLogHandle;
  if (CTGreenTeaOsLogHandle && os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got PNR response SMS", &buf, 2u);
  }

  v6 = (*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10134C67C(&buf, theDict);
    v8 = (SBYTE7(v81) & 0x80u) == 0 ? &buf : buf;
    *valuePtr = 136315138;
    *&valuePtr[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Incoming response description: (#pnr) %s ", valuePtr, 0xCu);
    if (SBYTE7(v81) < 0)
    {
      operator delete(buf);
    }
  }

  CFDictionaryGetValue(theDict, kCTPhoneNumberRegistrationVersionKey);
  buf = 0uLL;
  *&v81 = 0;
  ctu::cf::assign();
  v73 = buf;
  v74 = v81;
  if (sub_10164F6E8(*(v2 + 72), &v73))
  {
    v71 = 0uLL;
    v72 = 0;
    CFDictionaryGetValue(theDict, kCTPhoneNumberRegistrationCookieKey);
    buf = 0uLL;
    *&v81 = 0;
    ctu::cf::assign();
    v71 = buf;
    v72 = v81;
    v9 = *(&buf + 1);
    if ((SBYTE7(v81) & 0x80u) == 0)
    {
      v9 = BYTE7(v81);
    }

    if (!v9 || (sub_10164E80C(*(v2 + 72), &v71, v3) & 1) == 0)
    {
      v27 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v28 = &v71;
        if (v72 < 0)
        {
          v28 = v71;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Response cookie %s doesn't match any stored cookies:", &buf, 0xCu);
      }

      v81 = 0u;
      v82 = 0u;
      buf = 0u;
      v59 = v3;
      sub_10164F640(*(v2 + 72), v3, &buf);
      v29 = *(&v82 + 1);
      if (*(&v82 + 1))
      {
        v30 = 0;
        do
        {
          v31 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(*(&buf + 1) + 8 * ((v30 + v82) / 0xAA)) + 24 * ((v30 + v82) % 0xAA);
            if (*(v32 + 23) < 0)
            {
              v32 = *v32;
            }

            *valuePtr = 134218242;
            *&valuePtr[4] = v30;
            *&valuePtr[12] = 2082;
            *&valuePtr[14] = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#E Cookie %zu = %{public}s", valuePtr, 0x16u);
            v29 = *(&v82 + 1);
          }

          ++v30;
        }

        while (v30 < v29);
      }

      sub_100641DD4(&buf);
      v25 = 0;
      v26 = 2;
      LODWORD(v3) = v59;
      goto LABEL_140;
    }

    v69[0] = 0;
    v69[1] = 0;
    v70 = 0;
    v10 = kCTPhoneNumberRegistrationSignatureKey;
    CFDictionaryGetValue(theDict, kCTPhoneNumberRegistrationSignatureKey);
    buf = 0uLL;
    *&v81 = 0;
    ctu::cf::assign();
    *v69 = buf;
    v70 = v81;
    v11 = *(&buf + 1);
    if ((SBYTE7(v81) & 0x80u) == 0)
    {
      v11 = BYTE7(v81);
    }

    if (!v11)
    {
      v33 = *v6;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#E Signature is empty", &buf, 2u);
      }

      v25 = 0;
      v26 = 4;
      goto LABEL_138;
    }

    v67[0] = 0;
    v67[1] = 0;
    v68 = 0;
    CFDictionaryGetValue(theDict, kCTPhoneNumberRegistrationNumberKey);
    buf = 0uLL;
    *&v81 = 0;
    ctu::cf::assign();
    *v67 = buf;
    v68 = v81;
    v12 = *(&buf + 1);
    if ((SBYTE7(v81) & 0x80u) == 0)
    {
      v12 = BYTE7(v81);
    }

    if (!v12)
    {
      v34 = *v6;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#E Incoming response has empty phone number", &buf, 2u);
      }

      v25 = 0;
      v26 = 5;
      goto LABEL_136;
    }

    v65 = 0;
    v66 = 0;
    v64 = 0;
    ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
    *&buf = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, &buf);
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
LABEL_52:
        (*(*v21 + 8))(&v64, v21, v3);
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        if (v64 && isReal())
        {
          *valuePtr = 0;
          *&valuePtr[8] = 0;
          v35 = Registry::getServiceMap(*(v2 + 56));
          sub_1013519A8(valuePtr, v35);
          v36 = *valuePtr;
          if (*valuePtr)
          {
            CSIPhoneNumber::CSIPhoneNumber();
            (*(*v36 + 312))(v36, &v64, &buf);
            sub_10034F8E8(&buf);
          }

          if (*&valuePtr[8])
          {
            sub_100004A34(*&valuePtr[8]);
          }

          v89 = 0;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          __src = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          buf = 0u;
          v37 = Registry::getServiceMap(*(v2 + 56));
          sub_1005A589C(valuePtr, v37);
          (*(**valuePtr + 192))(&buf);
          if (*&valuePtr[8])
          {
            sub_100004A34(*&valuePtr[8]);
          }

          v38 = BYTE7(v84);
          if (SBYTE7(v84) < 0)
          {
            v38 = *(&__src + 1);
          }

          if (v38)
          {
            if (SBYTE7(v84) < 0)
            {
              sub_100005F2C(__dst, __src, *(&__src + 1));
            }

            else
            {
              *__dst = __src;
              v62 = v84;
            }

            if (SHIBYTE(v62) < 0)
            {
              sub_100005F2C(&__p, __dst[0], __dst[1]);
            }

            else
            {
              __p = *__dst;
              v77 = v62;
            }

            v75 = 0;
            if (SHIBYTE(v77) < 0)
            {
              sub_100005F2C(valuePtr, __p, *(&__p + 1));
            }

            else
            {
              *valuePtr = __p;
              *&valuePtr[16] = v77;
            }

            value = 0;
            if (ctu::cf::convert_copy())
            {
              v39 = v75;
              v75 = value;
              *v79 = v39;
              sub_100005978(v79);
            }

            if ((valuePtr[23] & 0x80000000) != 0)
            {
              operator delete(*valuePtr);
            }

            object = v75;
            v75 = 0;
            sub_100005978(&v75);
            if (SHIBYTE(v77) < 0)
            {
              operator delete(__p);
            }

            *valuePtr = v66;
            v66 = object;
            object = 0;
            sub_100005978(valuePtr);
            sub_100005978(&object);
            if (SHIBYTE(v62) < 0)
            {
              operator delete(__dst[0]);
            }
          }

          sub_100FB0A00(&buf);
        }

        __p = 0uLL;
        ctu::TextConverter::TextConverter(&__p);
        if (v70 >= 0)
        {
          v40 = v69;
        }

        else
        {
          v40 = v69[0];
        }

        if (v70 >= 0)
        {
          v41 = HIBYTE(v70);
        }

        else
        {
          v41 = v69[1];
        }

        ctu::TextConverter::setSource(&__p, v40, v41);
        ctu::TextConverter::pushConversion();
        buf = 0uLL;
        *&v81 = 0;
        ctu::TextConverter::readChars(&__p, 0x7FFFFFFFuLL);
        value = 0;
        if ((SBYTE7(v81) & 0x80u) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        if ((SBYTE7(v81) & 0x80u) == 0)
        {
          v43 = BYTE7(v81);
        }

        else
        {
          v43 = *(&buf + 1);
        }

        value = CFDataCreate(kCFAllocatorDefault, p_buf, v43);
        if (value)
        {
          v75 = 0;
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
          v75 = MutableCopy;
          v25 = MutableCopy != 0;
          if (MutableCopy)
          {
            CFDictionarySetValue(MutableCopy, v10, value);
            CFDictionarySetValue(v75, kCTPhoneNumberRegistrationResponseStatusKey, kCTPhoneNumberRegistrationResponseStatusSuccess);
            if (v66)
            {
              CFDictionarySetValue(v75, kCTPhoneNumberRegistrationResponseLabelID, v66);
            }

            v45 = v75;
            *v79 = 0;
            *valuePtr = 1;
            v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, valuePtr);
            v47 = kCTPhoneNumberRegistrationMechanismKey;
            if (v46)
            {
              v48 = *v79;
              *v79 = v46;
              *valuePtr = v48;
              sub_100029A48(valuePtr);
            }

            object = *v79;
            *v79 = 0;
            sub_100029A48(v79);
            CFDictionarySetValue(v45, v47, object);
            sub_100029A48(&object);
            v49 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
            {
              sub_10134C67C(valuePtr, v75);
              v51 = valuePtr[23] >= 0 ? valuePtr : *valuePtr;
              *v79 = 136315138;
              *&v79[4] = v51;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Modified response description: %s", v79, 0xCu);
              if ((valuePtr[23] & 0x80000000) != 0)
              {
                operator delete(*valuePtr);
              }
            }

            object = 0;
            ctu::cf_to_xpc(v75, v50);
            v52 = *valuePtr;
            object = *valuePtr;
            if (*valuePtr && xpc_get_type(*valuePtr) == &_xpc_type_dictionary)
            {
              xpc_retain(v52);
            }

            else
            {
              object = xpc_null_create();
            }

            xpc_release(*valuePtr);
            if (v3 == 1)
            {
              v55 = *v6;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                sub_10134C67C(valuePtr, v75);
                v56 = valuePtr[23] >= 0 ? valuePtr : *valuePtr;
                *v79 = 136315138;
                *&v79[4] = v56;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I Modified response description: %s", v79, 0xCu);
                if ((valuePtr[23] & 0x80000000) != 0)
                {
                  operator delete(*valuePtr);
                }
              }

              *valuePtr = object;
              if (object)
              {
                xpc_retain(object);
              }

              else
              {
                *valuePtr = xpc_null_create();
              }

              *v79 = xpc_null_create();
              sub_10002A37C(83, valuePtr, v79);
              xpc_release(*v79);
              xpc_release(*valuePtr);
            }

            v57 = *(v2 + 40);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Issuing PNR Response received", valuePtr, 2u);
            }

            (*(**(v2 + 104) + 16))(*(v2 + 104), v3, &object);
            xpc_release(object);
          }

          else
          {
            v54 = *v6;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#E Failed to convert response from immutable -> mutable", valuePtr, 2u);
            }
          }

          sub_1000296E0(&v75);
        }

        else
        {
          v53 = *v6;
          v25 = 0;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#E Failed to convert signature byte blob to CFData", valuePtr, 2u);
            v25 = 0;
          }
        }

        sub_10002D760(&value);
        if (SBYTE7(v81) < 0)
        {
          operator delete(buf);
        }

        ctu::TextConverter::~TextConverter(&__p);
        if (v65)
        {
          sub_100004A34(v65);
        }

        sub_100005978(&v66);
        v26 = 0;
LABEL_136:
        if (SHIBYTE(v68) < 0)
        {
          operator delete(v67[0]);
        }

LABEL_138:
        if (SHIBYTE(v70) < 0)
        {
          operator delete(v69[0]);
        }

LABEL_140:
        if (SHIBYTE(v72) < 0)
        {
          operator delete(v71);
        }

        goto LABEL_142;
      }
    }

    else
    {
      v21 = 0;
    }

    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_52;
  }

  v23 = *v6;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = &v73;
    if (v74 < 0)
    {
      v24 = v73;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Response version %s doesn't match", &buf, 0xCu);
  }

  v25 = 0;
  v26 = 3;
LABEL_142:
  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  *&v81 = sub_10119D738;
  *(&v81 + 1) = &unk_101F16AF0;
  LODWORD(v82) = v3;
  BYTE4(v82) = v26;
  sub_10119D58C(0x800E1, &buf);
  sub_10001021C(&theDict);
  return v25;
}

void sub_101351744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, xpc_object_t object, uint64_t a23, std::__shared_weak_count *a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, const void *a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, xpc_object_t a61, uint64_t a62, void *a63)
{
  sub_100005978(&a53);
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100FB0A00(&a63);
  if (a24)
  {
    sub_100004A34(a24);
  }

  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_10001021C(&a14);
  _Unwind_Resume(a1);
}

void sub_1013519A8(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
{
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

uint64_t sub_101351A6C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_101351AA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = **(v1 + 16);
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = sub_10134D098(v2, v3, &object);
  xpc_release(object);
  return v5;
}

uint64_t *sub_101351B34(uint64_t **a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *v1;
  v5 = v1[1];
  v3 = (v1 + 1);
  v4 = v5;
  if (*(v5 + 48))
  {
    v6 = sub_10134C6FC(v2, v3);
    if (v6)
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(*v3);
        v9 = *v3 + 24;
        v10 = *v9;
        v11 = *(*v3 + 47);
        v12 = *(*v3 + 4);
        v13 = asStringBool(v6 < 0x100u);
        if ((v11 & 0x80u) == 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        if ((v11 & 0x80u) == 0)
        {
          v15 = v9;
        }

        else
        {
          v15 = v10;
        }

        *buf = 136315650;
        *&buf[4] = v8;
        v26 = 2080;
        if (!v14)
        {
          v15 = "<invalid>";
        }

        v27 = v15;
        v28 = 2080;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s updatePNRSupport for %s to %s", buf, 0x20u);
      }

      v16 = *(v2 + 104);
      PersonalityInfo::uuid(buf, *v3);
      (*(*v16 + 40))(v16, *buf, v6 < 0x100u);
      sub_1000475BC(buf);
    }
  }

  else
  {
    v17 = *(v2 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(v4);
      v19 = *v3 + 24;
      v20 = *(*v3 + 47);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(*v3 + 4);
      }

      if (v21 < 0)
      {
        v19 = *(*v3 + 3);
      }

      if (!v20)
      {
        v19 = "<invalid>";
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v26 = 2080;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s updatePNRSupport for %s called on non-active persona", buf, 0x16u);
    }
  }

  sub_1000049E0(&v24);
  return sub_1000049E0(&v23);
}

void sub_101351D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  sub_1000475BC(&a11);
  sub_1000049E0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101351D94(uint64_t *a1)
{
  v1 = *a1;
  v61 = a1;
  v62 = v1;
  v2 = *v1;
  v64 = 0;
  v65 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v9)
  {
    v10 = v9[3];
    v11 = v9[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v12 = 1;
LABEL_9:
  v13 = v1 + 8;
  (**v10)(&v64, v10, v1 + 8);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = v64;
  v15 = *(v2 + 40);
  if (v64)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(v14);
      v17 = v64 + 24;
      v18 = *(v64 + 3);
      v19 = *(v64 + 47);
      v20 = *(v64 + 4);
      v21 = asStringBool(*(v1 + 32));
      if ((v19 & 0x80u) == 0)
      {
        v22 = v19;
      }

      else
      {
        v22 = v20;
      }

      if ((v19 & 0x80u) == 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = v18;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v68 = 2080;
      if (!v22)
      {
        v23 = "<invalid>";
      }

      v69 = v23;
      v70 = 2080;
      v71 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s forgetPNRSupport for %s to %s", buf, 0x20u);
    }

    v24 = sub_100007A6C(v2 + 136, (v1 + 8));
    if (v2 + 144 != v24)
    {
      v25 = v24;
      v26 = *(v24 + 8);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        v32 = v24;
        do
        {
          v27 = v32[2];
          v33 = *v27 == v32;
          v32 = v27;
        }

        while (!v33);
      }

      if (*(v2 + 136) == v24)
      {
        *(v2 + 136) = v27;
      }

      v34 = *(v2 + 144);
      --*(v2 + 152);
      sub_100018288(v34, v25);
      if (*(v25 + 55) < 0)
      {
        operator delete(*(v25 + 32));
      }

      operator delete(v25);
    }

    v35 = *(v2 + 56);
    if (*(v1 + 32) == 1)
    {
      v36 = Registry::getServiceMap(v35);
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
      *buf = v38;
      v42 = sub_100009510(&v37[1].__m_.__sig, buf);
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
LABEL_59:
          (*(*v44 + 32))(v44, v13, @"PNRStatus", @"PNRCtrl", 0, 2);
          if ((v45 & 1) == 0)
          {
            sub_100004A34(v43);
          }

          v56 = *(v2 + 104);
          PersonalityInfo::uuid(buf, v64);
          (*(*v56 + 40))(v56, *buf, 0);
          sub_1000475BC(buf);
          goto LABEL_69;
        }
      }

      else
      {
        v44 = 0;
      }

      std::mutex::unlock(v37);
      v43 = 0;
      v45 = 1;
      goto LABEL_59;
    }

    v46 = Registry::getServiceMap(v35);
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
    *buf = v48;
    v52 = sub_100009510(&v47[1].__m_.__sig, buf);
    if (v52)
    {
      v54 = v52[3];
      v53 = v52[4];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v47);
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v53);
        v55 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      v54 = 0;
    }

    std::mutex::unlock(v47);
    v53 = 0;
    v55 = 1;
LABEL_64:
    v57 = v64;
    v66 = 0;
    *buf = 1;
    v58 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
    if (v58)
    {
      v66 = v58;
      *buf = 0;
      sub_100029A48(buf);
      v59 = v66;
    }

    else
    {
      v59 = 0;
    }

    v66 = 0;
    sub_100029A48(&v66);
    (*(*v54 + 16))(v54, v57 + 24, @"PNRStatus", v59, @"PNRCtrl", 0, 2, 0, v61, v62, v59);
    sub_100029A48(&v63);
    if ((v55 & 1) == 0)
    {
      sub_100004A34(v53);
    }

    goto LABEL_69;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v28 = *(v1 + 31);
    v29 = (v28 & 0x80u) != 0;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(v1 + 16);
    }

    if (v29)
    {
      v30 = *(v1 + 8);
    }

    else
    {
      v30 = (v1 + 8);
    }

    if (v28)
    {
      v31 = v30;
    }

    else
    {
      v31 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing info of %s to forgetPNRSupport", buf, 0xCu);
  }

LABEL_69:
  if (v65)
  {
    sub_100004A34(v65);
  }

  sub_1003023A8(&v62);
  return sub_1000049E0(&v61);
}

void sub_101352340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, const void *a15)
{
  sub_1000475BC(&a15);
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_1003023A8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void stewie::StewieConnectionAssistant::create(void *a2@<X1>, void *a3@<X2>, uint64_t *a8@<X8>)
{
  if (!*a2)
  {
    sub_1000208E8();
    v9 = qword_101FCA948;
    if (!os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v10 = "timerService must be provided";
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_7;
  }

  if (*a3)
  {
    operator new();
  }

  sub_1000208E8();
  v9 = qword_101FCA948;
  if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v10 = "sbServices must be provided";
    goto LABEL_9;
  }

LABEL_7:
  *a8 = 0;
  a8[1] = 0;
}

uint64_t sub_101352B74(uint64_t a1)
{
  *a1 = off_101F31388;
  *(a1 + 48) = off_101F31490;
  v2 = *(a1 + 856);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 792);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 776);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 760) == 1)
  {
    sub_1013542A4((a1 + 720));
  }

  if (*(a1 + 624) == 1)
  {
    v5 = *(a1 + 616);
    if (v5)
    {
      sub_100004A34(v5);
    }

    if (*(a1 + 520) == 1)
    {
      sub_1000475BC((a1 + 464));
    }

    if (*(a1 + 407) < 0)
    {
      operator delete(*(a1 + 384));
    }

    v6 = *(a1 + 368);
    *(a1 + 368) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  sub_10135C5A4((a1 + 328), 0);
  v7 = *(a1 + 320);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 304);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 288);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10135C558((a1 + 216), 0);
  v11 = *(a1 + 208);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 152);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 136);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(a1 + 120);
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = *(a1 + 112);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(a1 + 96);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    sub_100004A34(v19);
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    sub_100004A34(v20);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101352D64(uint64_t a1)
{
  sub_101352B74(a1);

  operator delete();
}

void sub_101352D9C(uint64_t a1)
{
  sub_101352B74(a1 - 48);

  operator delete();
}

void sub_101352DD8(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100976680(*a2);
    *buf = 136315138;
    *v27 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I requestStewie: reason = %s", buf, 0xCu);
  }

  if (*(a2 + 48) == 1)
  {
    v6 = a1[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 42);
      if (*(a2 + 43))
      {
        v8 = "true";
      }

      else
      {
        v8 = "false";
      }

      if (*(a2 + 46))
      {
        v9 = *(a2 + 44);
      }

      else
      {
        v9 = 0;
      }

      v10 = sub_1009762C8(v9);
      *buf = 67109634;
      *v27 = v7;
      *&v27[4] = 2080;
      *&v27[6] = v8;
      *&v27[14] = 2080;
      *&v27[16] = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I conversationID = %hhu, committed = %s, fromService = %s", buf, 0x1Cu);
    }
  }

  if (*(a2 + 88) == 1)
  {
    v11 = a1[5];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a2 + 56);
      sub_100E253C8(a2 + 64, &__p);
      v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v14 = __p.__r_.__value_.__r.__words[0];
      if (*(a2 + 82))
      {
        v15 = *(a2 + 80);
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_1009762C8(v15);
      p_p = &__p;
      *buf = 67109634;
      if (v13 < 0)
      {
        p_p = v14;
      }

      *v27 = v12;
      *&v27[4] = 2082;
      *&v27[6] = p_p;
      *&v27[14] = 2080;
      *&v27[16] = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I conversationID = %hhu, providerId = %{public}s, fromService = %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 4) == 1)
  {
    v18 = a1[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (a2 + 8);
      if (*(a2 + 31) < 0)
      {
        v19 = *(a2 + 8);
      }

      if (!*(a2 + 32))
      {
        v19 = "<none>";
      }

      *buf = 136446210;
      *v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Request for offer, reason: %{public}s", buf, 0xCu);
    }

    if (*(a2 + 32) == 1)
    {
      __p.__r_.__value_.__r.__words[0] = *(a2 + 16);
      *(__p.__r_.__value_.__r.__words + 7) = *(a2 + 23);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
    }

    *&v27[3] = *(a2 + 40);
    *&v27[19] = *(a2 + 56);
    v28 = *(a2 + 72);
    v29 = *(a2 + 88);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v21 = a1[2];
    if (v21)
    {
      if (std::__shared_weak_count::lock(v21))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  v20 = (a2 + 40);
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 32) == 1)
    {
      __p.__r_.__value_.__r.__words[0] = *(a2 + 16);
      *(__p.__r_.__value_.__r.__words + 7) = *(a2 + 23);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
    }

    v22 = *(a2 + 56);
    *&v27[3] = *v20;
    *&v27[19] = v22;
    v28 = *(a2 + 72);
    v29 = *(a2 + 88);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    v23 = a1[2];
    if (v23 && std::__shared_weak_count::lock(v23))
    {
      operator new();
    }

    sub_100013CC4();
  }

  if (*(a2 + 32) == 1)
  {
    __p.__r_.__value_.__r.__words[0] = *(a2 + 16);
    *(__p.__r_.__value_.__r.__words + 7) = *(a2 + 23);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
  }

  v24 = *(a2 + 56);
  *&v27[3] = *v20;
  *&v27[19] = v24;
  v28 = *(a2 + 72);
  v29 = *(a2 + 88);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v25 = a1[2];
  if (v25 && std::__shared_weak_count::lock(v25))
  {
    operator new();
  }

  sub_100013CC4();
}

void sub_10135357C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1013535C8(void *a1, __int16 a2, unsigned int a3)
{
  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = sub_1009766A4(a3);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I exitStewie: reason = %s", buf, 0xCu);
  }

  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101353734(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101353744(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_10135D5F0(&v5, a2);
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

void sub_101353874(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101353884(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_10135D784(&v5, a2);
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

void sub_1013539B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1013539C4(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_10135D918(&v5, a2);
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

void sub_101353AF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101353B04(void *a1, int a2)
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

void sub_101353BF4(void *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  if (*a2)
  {
    v6 = *a3;
    if (*a3)
    {
      v8 = a1[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v4 + 32);
        v10 = *(v4 + 72);
        v11 = *(v4 + 8);
        v12 = v6[2];
        v19 = v6[1];
        v13 = v6[4];
        v14 = (*(*a1 + 240))(a1);
        buf[0] = 134219777;
        *&buf[1] = v9;
        v21 = 1024;
        v22 = v10;
        v23 = 2048;
        v24 = v11;
        v25 = 2048;
        v26 = (v11 * 1000000000.0);
        v27 = 2049;
        v28 = v12;
        v29 = 2049;
        v30 = v19;
        v31 = 2049;
        v32 = v13;
        v33 = 2048;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I updateTimeAndLocation - [time: %llu, leap second: %d, timestamp: %f (%llu ns)] and [lat: %{private}f, lng: %{private}f, alt: %{private}f] received at: %llu ns (continuous time)", buf, 0x4Eu);
      }

      v15 = a2[1];
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = a3[1];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = a1[2];
      if (v17)
      {
        if (std::__shared_weak_count::lock(v17))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  v18 = a1[5];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "updateTimeAndLocation - null timeFreqData or locationData received", buf, 2u);
  }
}

void sub_101353EBC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_101353ECC(void *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleStewieTxDeferTime - stewieTxDeferTime: %llu", buf, 0xCu);
  }

  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10135402C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10135403C(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (*(a1 + 624) != 1)
  {
    return;
  }

  v4 = *(a1 + 360);
  v5 = v4 == 1 && (*(a1 + 336) & 0xFFFFFFFE) == 2;
  v6 = *(a1 + 848);
  if (!v6)
  {
    if (*(a1 + 885) == 1 && (v9 = *(a1 + 216)) != 0 && (*(v9 + 184) & 1) != 0)
    {
      if (!v5)
      {
        if (a2 && *(a1 + 544) == 1 && *(a1 + 536) == 1 && *(a1 + 883) != 4)
        {
          if (*(a1 + 576) == 1)
          {
            v13 = *(a1 + 568) + 1;
          }

          else
          {
            v13 = 1;
            *(a1 + 576) = 1;
          }

          isExpired = 0;
          *(a1 + 568) = v13;
          *(a1 + 560) = 0;
          if ((v4 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_9;
        }

        goto LABEL_27;
      }

      if (!a2 || *(a1 + 576) != 1 || (v10 = *(a1 + 560) + 1, *(a1 + 560) = v10, v10 < 8))
      {
LABEL_27:
        isExpired = 0;
        if (!v4)
        {
          goto LABEL_28;
        }

LABEL_9:
        if (*(a1 + 336) == 3)
        {
          v8 = isExpired;
        }

        else
        {
          v8 = 1;
        }

        goto LABEL_29;
      }
    }

    else if (*(a1 + 576) != 1)
    {
      goto LABEL_27;
    }

    isExpired = 0;
    *(a1 + 576) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_9;
  }

  if (*(a1 + 576) == 1)
  {
    *(a1 + 576) = 0;
  }

  isExpired = AutoStartTimer::isExpired(v6);
  if (*(a1 + 360))
  {
    goto LABEL_9;
  }

LABEL_28:
  v8 = 1;
LABEL_29:
  if (*(a1 + 576) == 1 && *(a1 + 568) > 0x14uLL)
  {
    isExpired = v8;
  }

  if (isExpired != *(a1 + 552))
  {
    *(a1 + 552) = isExpired;
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "kLow";
      if (!isExpired)
      {
        v12 = "kUnknown";
      }

      v14 = 136315138;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Visibility level changed to: %s", &v14, 0xCu);
    }
  }
}

void sub_101354258(void *a1, void *a2)
{
  sub_100004AA0(v4, a2);
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }
}

void *sub_1013542A4(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_101354310(void *a1, int a2, char a3)
{
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

void sub_101354408(void *a1, uint64_t a2, int a3)
{
  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I handleStewieStateChanged", v7, 2u);
  }

  *v7 = *a2;
  *&v7[14] = *(a2 + 14);
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101354558(void *a1, char a2)
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

void sub_101354648(void *a1, __int128 *a2)
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

void sub_101354738(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    v2 = a2[1];
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

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

  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I updateProvisioningData - not provisioned", buf, 2u);
  }
}

void sub_10135489C(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_10135499C(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I stopTargetDataTracking", buf, 2u);
  }

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

void sub_101354AB8(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_101354BD4(void *a1, _OWORD *a2)
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

void sub_101354CD4(void *a1, int *a2)
{
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
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

void sub_101354DE4(void *a1, char a2)
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

void sub_101354ED4(void *a1, char a2, uint64_t a3)
{
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

void sub_101354FCC(void *a1, uint64_t a2)
{
  sub_1000BA468(&v5, a2);
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
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

void sub_1013550FC(void *a1, _BYTE *a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    if (a2[1])
    {
      v6 = v5;
    }

    else
    {
      v6 = "<none>";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleAreGPSSatsVisibleChanged: areGpsSatsVisible = %s", buf, 0xCu);
  }

  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10135528C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10135529C(void *a1, char a2)
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

BOOL sub_10135538C(uint64_t a1, uint64_t a2, int a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100976680(*a2);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I requestAssistantApp_sync: reason = %s", &buf, 0xCu);
  }

  buf = 0uLL;
  v93 = 0;
  p_buf = 0;
  v90 = 0;
  v91 = 0;
  sub_10000501C(&p_buf, "reason=");
  v86 = 0;
  v87 = 0;
  v88 = 0;
  sub_10000501C(&v86, "conversationId=");
  v83 = 0;
  v84 = 0;
  v85 = 0;
  sub_10000501C(&v83, "action=");
  v80 = 0;
  v81 = 0;
  v82 = 0;
  sub_10000501C(&v80, "providerId=");
  v77 = 0;
  v78 = 0;
  v79 = 0;
  sub_10000501C(&v77, "fromService=");
  v75[0] = 0;
  v75[1] = 0;
  v76 = 0;
  sub_10000501C(v75, "offerKind=");
  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  sub_10000501C(v73, "emergencyOrRoadsideSessionInitiatedBy=");
  v71[0] = 0;
  v71[1] = 0;
  v72 = 0;
  sub_10000501C(v71, "request");
  if (*(a2 + 4) == 1)
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      v9 = 0;
      goto LABEL_220;
    }

    LOWORD(__p[0]) = 0;
    v35 = "SOSBuddy is not interested in learning about offer requests";
LABEL_238:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v35, __p, 2u);
    goto LABEL_5;
  }

  v10 = *a2;
  if (*a2 > 4)
  {
    if (v10 > 7)
    {
      switch(v10)
      {
        case 8:
          if (v91 >= 0)
          {
            v36 = HIBYTE(v91);
          }

          else
          {
            v36 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v37 = __p;
          sub_1000677C4(__p, v36 + 9);
          if (v70 < 0)
          {
            v37 = __p[0];
          }

          if (v36)
          {
            if (v91 >= 0)
            {
              v38 = &p_buf;
            }

            else
            {
              v38 = p_buf;
            }

            memmove(v37, v38, v36);
          }

          strcpy(v37 + v36, "Messaging");
          sub_1000D1054(&buf, __p);
          break;
        case 9:
          if (v91 >= 0)
          {
            v29 = HIBYTE(v91);
          }

          else
          {
            v29 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v30 = __p;
          sub_1000677C4(__p, v29 + 12);
          if (v70 < 0)
          {
            v30 = __p[0];
          }

          if (v29)
          {
            if (v91 >= 0)
            {
              v31 = &p_buf;
            }

            else
            {
              v31 = p_buf;
            }

            memmove(v30, v31, v29);
          }

          strcpy(v30 + v29, "IMessageLite");
          sub_1000D1054(&buf, __p);
          break;
        case 10:
          if (v91 >= 0)
          {
            v17 = HIBYTE(v91);
          }

          else
          {
            v17 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v18 = __p;
          sub_1000677C4(__p, v17 + 6);
          if (v70 < 0)
          {
            v18 = __p[0];
          }

          if (v17)
          {
            if (v91 >= 0)
            {
              v19 = &p_buf;
            }

            else
            {
              v19 = p_buf;
            }

            memmove(v18, v19, v17);
          }

          strcpy(v18 + v17, "SatSms");
          sub_1000D1054(&buf, __p);
          break;
        default:
          goto LABEL_123;
      }
    }

    else
    {
      switch(v10)
      {
        case 5:
          v8 = *(a1 + 40);
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_5;
          }

          LOWORD(__p[0]) = 0;
          v35 = "SOSBuddy is not interested in learning about kTryOut";
          goto LABEL_238;
        case 6:
          if (v91 >= 0)
          {
            v26 = HIBYTE(v91);
          }

          else
          {
            v26 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v27 = __p;
          sub_1000677C4(__p, v26 + 6);
          if (v70 < 0)
          {
            v27 = __p[0];
          }

          if (v26)
          {
            if (v91 >= 0)
            {
              v28 = &p_buf;
            }

            else
            {
              v28 = p_buf;
            }

            memmove(v27, v28, v26);
          }

          strcpy(v27 + v26, "FindMy");
          sub_1000D1054(&buf, __p);
          break;
        case 7:
          if (v91 >= 0)
          {
            v11 = HIBYTE(v91);
          }

          else
          {
            v11 = v90;
          }

          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v12 = __p;
          sub_1000677C4(__p, v11 + 8);
          if (v70 < 0)
          {
            v12 = __p[0];
          }

          if (v11)
          {
            if (v91 >= 0)
            {
              v13 = &p_buf;
            }

            else
            {
              v13 = p_buf;
            }

            memmove(v12, v13, v11);
          }

          strcpy(v12 + v11, "Roadside");
          sub_1000D1054(&buf, __p);
          break;
        default:
          goto LABEL_123;
      }
    }

    goto LABEL_121;
  }

  if (v10 > 1)
  {
    switch(v10)
    {
      case 2:
        if (v91 >= 0)
        {
          v32 = HIBYTE(v91);
        }

        else
        {
          v32 = v90;
        }

        __p[1] = 0;
        v70 = 0;
        __p[0] = 0;
        v33 = __p;
        sub_1000677C4(__p, v32 + 13);
        if (v70 < 0)
        {
          v33 = __p[0];
        }

        if (v32)
        {
          if (v91 >= 0)
          {
            v34 = &p_buf;
          }

          else
          {
            v34 = p_buf;
          }

          memmove(v33, v34, v32);
        }

        strcpy(v33 + v32, "EmergencyText");
        sub_1000D1054(&buf, __p);
        break;
      case 3:
        if (v91 >= 0)
        {
          v23 = HIBYTE(v91);
        }

        else
        {
          v23 = v90;
        }

        __p[1] = 0;
        v70 = 0;
        __p[0] = 0;
        v24 = __p;
        sub_1000677C4(__p, v23 + 22);
        if (v70 < 0)
        {
          v24 = __p[0];
        }

        if (v23)
        {
          if (v91 >= 0)
          {
            v25 = &p_buf;
          }

          else
          {
            v25 = p_buf;
          }

          memmove(v24, v25, v23);
        }

        strcpy(v24 + v23, "EmergencyFallDetection");
        sub_1000D1054(&buf, __p);
        break;
      case 4:
        if (v91 >= 0)
        {
          v14 = HIBYTE(v91);
        }

        else
        {
          v14 = v90;
        }

        __p[1] = 0;
        v70 = 0;
        __p[0] = 0;
        v15 = __p;
        sub_1000677C4(__p, v14 + 14);
        if (v70 < 0)
        {
          v15 = __p[0];
        }

        if (v14)
        {
          if (v91 >= 0)
          {
            v16 = &p_buf;
          }

          else
          {
            v16 = p_buf;
          }

          memmove(v15, v16, v14);
        }

        strcpy(v15 + v14, "EmergencyKappa");
        sub_1000D1054(&buf, __p);
        break;
      default:
        goto LABEL_123;
    }

    goto LABEL_121;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    if (v91 >= 0)
    {
      v20 = HIBYTE(v91);
    }

    else
    {
      v20 = v90;
    }

    __p[1] = 0;
    v70 = 0;
    __p[0] = 0;
    v21 = __p;
    sub_1000677C4(__p, v20 + 13);
    if (v70 < 0)
    {
      v21 = __p[0];
    }

    if (v20)
    {
      if (v91 >= 0)
      {
        v22 = &p_buf;
      }

      else
      {
        v22 = p_buf;
      }

      memmove(v21, v22, v20);
    }

    strcpy(v21 + v20, "EmergencyCall");
    sub_1000D1054(&buf, __p);
LABEL_121:
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_123:
  if (*(a2 + 48) == 1)
  {
    std::to_string(&v68, *(a2 + 42));
    if (v88 >= 0)
    {
      v39 = &v86;
    }

    else
    {
      v39 = v86;
    }

    if (v88 >= 0)
    {
      v40 = HIBYTE(v88);
    }

    else
    {
      v40 = v87;
    }

    v41 = std::string::insert(&v68, 0, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v70 = v41->__r_.__value_.__r.__words[2];
    *__p = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 43))
    {
      v43 = "resumeConversation";
    }

    else
    {
      v43 = "startConversation";
    }

    sub_10000501C(&v68, v43);
    if (v85 >= 0)
    {
      v44 = &v83;
    }

    else
    {
      v44 = v83;
    }

    if (v85 >= 0)
    {
      v45 = HIBYTE(v85);
    }

    else
    {
      v45 = v84;
    }

    v46 = std::string::insert(&v68, 0, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v70 = v46->__r_.__value_.__r.__words[2];
    *__p = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 46) == 1 && *(a2 + 44) == 8)
    {
      if (v79 >= 0)
      {
        v48 = HIBYTE(v79);
      }

      else
      {
        v48 = v78;
      }

      __p[1] = 0;
      v70 = 0;
      __p[0] = 0;
      v49 = __p;
      sub_1000677C4(__p, v48 + 8);
      if (v70 < 0)
      {
        v49 = __p[0];
      }

      if (v48)
      {
        if (v79 >= 0)
        {
          v50 = &v77;
        }

        else
        {
          v50 = v77;
        }

        memmove(v49, v50, v48);
      }

      strcpy(v49 + v48, "Roadside");
      sub_1000D1054(&buf, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(a2 + 88) == 1)
  {
    std::to_string(&v68, *(a2 + 56));
    if (v88 >= 0)
    {
      v51 = &v86;
    }

    else
    {
      v51 = v86;
    }

    if (v88 >= 0)
    {
      v52 = HIBYTE(v88);
    }

    else
    {
      v52 = v87;
    }

    v53 = std::string::insert(&v68, 0, v51, v52);
    v54 = *&v53->__r_.__value_.__l.__data_;
    v70 = v53->__r_.__value_.__r.__words[2];
    *__p = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 57))
    {
      v55 = "resumeConversation";
    }

    else
    {
      v55 = "startConversation";
    }

    sub_10000501C(&v68, v55);
    if (v85 >= 0)
    {
      v56 = &v83;
    }

    else
    {
      v56 = v83;
    }

    if (v85 >= 0)
    {
      v57 = HIBYTE(v85);
    }

    else
    {
      v57 = v84;
    }

    v58 = std::string::insert(&v68, 0, v56, v57);
    v59 = *&v58->__r_.__value_.__l.__data_;
    v70 = v58->__r_.__value_.__r.__words[2];
    *__p = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 72) == 1)
    {
      std::to_string(&v68, *(a2 + 64));
      if (v82 >= 0)
      {
        v60 = &v80;
      }

      else
      {
        v60 = v80;
      }

      if (v82 >= 0)
      {
        v61 = HIBYTE(v82);
      }

      else
      {
        v61 = v81;
      }

      v62 = std::string::insert(&v68, 0, v60, v61);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v70 = v62->__r_.__value_.__r.__words[2];
      *__p = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      sub_1000D1054(&buf, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }
    }

    if (*(a2 + 82) == 1 && *(a2 + 80) == 1)
    {
      if (v79 >= 0)
      {
        v64 = HIBYTE(v79);
      }

      else
      {
        v64 = v78;
      }

      __p[1] = 0;
      v70 = 0;
      __p[0] = 0;
      v65 = __p;
      sub_1000677C4(__p, v64 + 9);
      if (v70 < 0)
      {
        v65 = __p[0];
      }

      if (v64)
      {
        if (v79 >= 0)
        {
          v66 = &v77;
        }

        else
        {
          v66 = v77;
        }

        memmove(v65, v66, v64);
      }

      strcpy(v65 + v64, "Emergency");
      sub_1000D1054(&buf, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(a2 + 40) == 1 && (sub_10000501C(__p, "launchDemo"), sub_1000D1054(&buf, __p), SHIBYTE(v70) < 0))
  {
    operator delete(__p[0]);
    if (a3)
    {
LABEL_213:
      sub_10000501C(__p, "relaunch");
      sub_1000D1054(&buf, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (a3)
  {
    goto LABEL_213;
  }

  if (*(a1 + 624) == 1)
  {
    sub_100168A48(v73, (a1 + 384), __p);
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_101356260((a1 + 72), v71, &buf);
LABEL_220:
  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71[0]);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[0]);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(p_buf);
  }

  p_buf = &buf;
  sub_1000087B4(&p_buf);
  return v9;
}

void sub_1013560A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (*(v52 - 129) < 0)
  {
    operator delete(*(v52 - 152));
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (*(v52 - 81) < 0)
  {
    operator delete(*(v52 - 104));
  }

  *(v52 - 104) = v52 - 80;
  sub_1000087B4((v52 - 104));
  _Unwind_Resume(a1);
}

BOOL sub_101356260(uint64_t *a1, std::string::size_type a2, std::string **a3)
{
  sub_1000208E8();
  v6 = qword_101FCA948;
  if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I launchAssistantApp(%s)", &buf, 0xCu);
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    memset(&buf, 0, sizeof(buf));
    std::operator+<char>();
    v9 = a3[1];
    if (*a3 != v9)
    {
      sub_1000D1184(&v20, *a3, v9, "&", 1uLL);
      v10 = std::string::insert(&v20, 0, "?", 1uLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v22 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      if (v22 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if (v22 >= 0)
      {
        v13 = HIBYTE(v22);
      }

      else
      {
        v13 = __p[1];
      }

      std::string::append(&buf, v12, v13);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }

    __p[0] = 0x400000001;
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("stw.ca.ui", v14);
    v16 = *a1;
    object = v15;
    v23[0] = off_101F31948;
    v23[3] = v23;
    (*(*v16 + 24))(v16, &buf, __p, &object, v23);
    sub_10000FF50(v23);
    if (object)
    {
      dispatch_release(object);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_1000208E8();
    v17 = qword_101FCA948;
    if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "assistant app command must be specified", &buf, 2u);
    }
  }

  return v8 != 0;
}

void sub_101356500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v23 - 57) < 0)
  {
    operator delete(*(v23 - 80));
  }

  _Unwind_Resume(exception_object);
}

BOOL stewie::StewieConnectionAssistant::presentAlertInAssistantApp(uint64_t *a1, unsigned int *a2)
{
  sub_1000208E8();
  v4 = qword_101FCA948;
  if (os_log_type_enabled(qword_101FCA948, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    if (v5 > 2)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_101F31AA8[v5];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I presentAlertInAssistantApp: %s", &buf, 0xCu);
  }

  buf = 0uLL;
  v31 = 0;
  p_buf = 0;
  v28 = 0;
  v29 = 0;
  sub_10000501C(&p_buf, "alertKind=");
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10000501C(&v24, "requestedProviderId=");
  v7 = *a2;
  if (!*a2)
  {
    v19 = 0;
    goto LABEL_48;
  }

  if (v7 == 1)
  {
    if (v29 >= 0)
    {
      v12 = HIBYTE(v29);
    }

    else
    {
      v12 = v28;
    }

    __p[1] = 0;
    v23 = 0;
    __p[0] = 0;
    v13 = __p;
    sub_1000677C4(__p, v12 + 19);
    if (v23 < 0)
    {
      v13 = __p[0];
    }

    if (v12)
    {
      if (v29 >= 0)
      {
        v14 = &p_buf;
      }

      else
      {
        v14 = p_buf;
      }

      memmove(v13, v14, v12);
    }

    strcpy(v13 + v12, "EmergencyToRoadside");
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a2 + 16) != 1)
    {
      goto LABEL_45;
    }

    std::to_string(&v21, *(a2 + 1));
    if (v26 >= 0)
    {
      v15 = &v24;
    }

    else
    {
      v15 = v24;
    }

    if (v26 >= 0)
    {
      v16 = HIBYTE(v26);
    }

    else
    {
      v16 = v25;
    }

    v17 = std::string::insert(&v21, 0, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v23 = v17->__r_.__value_.__r.__words[2];
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    sub_1000D1054(&buf, __p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v11 = v21.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_45;
    }

    if (v29 >= 0)
    {
      v8 = HIBYTE(v29);
    }

    else
    {
      v8 = v28;
    }

    __p[1] = 0;
    v23 = 0;
    __p[0] = 0;
    v9 = __p;
    sub_1000677C4(__p, v8 + 19);
    if (v23 < 0)
    {
      v9 = __p[0];
    }

    if (v8)
    {
      if (v29 >= 0)
      {
        v10 = &p_buf;
      }

      else
      {
        v10 = p_buf;
      }

      memmove(v9, v10, v8);
    }

    strcpy(v9 + v8, "RoadsideToEmergency");
    sub_1000D1054(&buf, __p);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v11 = __p[0];
  }

  operator delete(v11);
LABEL_45:
  sub_10000501C(__p, "alert");
  v19 = sub_101356260(a1, __p, &buf);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_48:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(p_buf);
  }

  p_buf = &buf;
  sub_1000087B4(&p_buf);
  return v19;
}

void sub_1013568D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  a29 = (v34 - 64);
  sub_1000087B4(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_101356974(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  sub_10016A270(a1 + 8, (a2 + 2));
  v5 = *(a2 + 10);
  v6 = *(a2 + 14);
  v7 = *(a2 + 18);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = *(a2 + 6);
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  return a1;
}

uint64_t sub_101356A00(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

unint64_t sub_101356A50()
{
  mach_continuous_time();
  TMConvertTicksToSeconds();
  return (v0 * 1000000000.0);
}

unint64_t sub_101356A7C()
{
  mach_continuous_time();
  TMConvertTicksToSeconds();
  return (v0 * 1000000000.0);
}

void sub_101356AA8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 328);
  if (v2)
  {
    *v81 = 0;
    stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v2, v81);
    if (*v81)
    {
      v3 = *(a1 + 216);
      if (v3)
      {
        v4 = *(a1 + 328);
        if (*(v4 + 72) == 1)
        {
          v5 = *(v4 + 48);
          v6 = *(v4 + 64);
        }

        else
        {
          v5 = 0uLL;
          v6 = 0;
        }

        *v63 = v5;
        *&v63[16] = v6;
        if (*(v4 + 40) == 1)
        {
          v7 = *(v4 + 24);
        }

        else
        {
          v7 = 0;
        }

        stewie::ConnectionAssistantTargetDataSource::updateGPSData(v3, v63, v7, v81);
      }

      sub_101357970(a1);
      if (*(a1 + 624) == 1 && *(a1 + 600) == 1 && *(a1 + 592) < *v81)
      {
        *(a1 + 600) = 0;
      }
    }
  }

  v8 = *(a1 + 176);
  if (!v8)
  {
    v8 = (*(*a1 + 240))(a1);
    *(a1 + 176) = v8;
  }

  *(a1 + 176) = v8 + 1;
  dispatch_assert_queue_V2(*(a1 + 24));
  v77 = 0u;
  memset(v76, 0, sizeof(v76));
  v78 = 0;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  memset(v71, 0, sizeof(v71));
  v70 = 0u;
  v69 = 0u;
  *__p = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  *&v63[24] = 0u;
  *v63 = *(a1 + 176);
  *&v63[8] = *(a1 + 865);
  *&v63[22] = *(a1 + 879);
  BYTE8(v77) = 0;
  memset(&v76[7], 0, 25);
  BYTE2(v78) = *(a1 + 887);
  HIDWORD(v78) = *(a1 + 888);
  memset(&v79, 0, sizeof(v79));
  v9 = *(a1 + 216);
  if (!v9)
  {
    goto LABEL_69;
  }

  if (*(v9 + 184) == 1)
  {
    *&v63[32] = *(v9 + 152);
    v64 = vdivq_f64(vmulq_f64(*(v9 + 160), vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
    LOBYTE(v65) = 1;
  }

  if (*(v9 + 240) != 1 || !*(v9 + 200) || !*(v9 + 208))
  {
LABEL_69:
    if (*(a1 + 624) == 1)
    {
      if (*(a1 + 552))
      {
        DWORD2(v65) = *(a1 + 552);
        BYTE12(v65) = 1;
      }

      v35 = *(a1 + 848);
      if (v35)
      {
        LOBYTE(v35) = *(a1 + 864);
      }

      LOBYTE(v66) = v35 & 1;
      if (*(a1 + 600) == 1)
      {
        v36 = *(a1 + 328);
        if (v36)
        {
          v37 = 315964800;
          if (*(v36 + 40))
          {
            v38 = *(v36 + 24);
            v39 = *(a1 + 584) / 0x3B9ACA00uLL - v38;
            v37 = 315964800 - v38;
          }

          else
          {
            v39 = *(a1 + 584) / 0x3B9ACA00uLL;
          }

          v36 = 1000000 * v39 + 315964800000000;
          v40 = 1000000 * (v37 + *(a1 + 592) / 0x3B9ACA00uLL);
        }

        else
        {
          v40 = 0;
        }

        *&v70 = v36;
        *(&v70 + 1) = v40;
        LOBYTE(v71[0]) = 1;
      }

      if ((*(a1 + 360) & 1) == 0)
      {
        goto LABEL_127;
      }

      memset(__src, 0, sizeof(__src));
      if (*(a1 + 520) == 1)
      {
        v41 = *(a1 + 328);
        if (v41)
        {
          v80 = 0;
          stewie::ConnectionAssistantGPSDataSource::currentGPSTime(v41, &v80);
          v42 = *(a1 + 512);
          if (v42)
          {
            if (v42 + 2000000000 < v80)
            {
              goto LABEL_107;
            }

            v43 = 1;
            v44 = 100;
          }

          else
          {
            v45 = *(a1 + 496);
            if (v45 && (v46 = *(a1 + 504)) != 0)
            {
              v47 = (v80 / 0x3B9ACA00 - v45 / 0x3B9ACA00);
              if (v80 / 0x3B9ACA00 <= v45 / 0x3B9ACA00)
              {
                v47 = 0.0;
              }

              v44 = llround(fmin(v47 / v46, 0.85) * 100.0);
              v43 = 1;
            }

            else
            {
              v44 = 0;
              v43 = 0;
            }
          }

          sub_1000BA468(v81, (a1 + 464));
          v48 = *(a1 + 328);
          if (v48)
          {
            v49 = 315964800;
            if (*(v48 + 40) == 1)
            {
              v49 = 315964800 - *(v48 + 24);
            }

            v50 = 1000000 * (v49 + *(a1 + 496) / 0x3B9ACA00uLL);
          }

          else
          {
            v50 = 0;
          }

          *&v81[8] = v50;
          v81[16] = 1;
          v51 = *(a1 + 504);
          if (v51)
          {
            *&v81[24] = *(a1 + 504);
            LOBYTE(v51) = 1;
          }

          else
          {
            v81[24] = 0;
          }

          v81[28] = v51;
          *&v81[32] = v44 | (v43 << 8);
          *&v81[36] = sub_101357EFC(*(a1 + 472));
          if (BYTE8(__src[2]) == 1)
          {
            sub_1000475BC(__src);
          }

          *&__src[0] = *v81;
          *v81 = 0;
          *(__src + 8) = *&v81[8];
          *(&__src[1] + 8) = *&v81[24];
          BYTE8(__src[2]) = 1;
          sub_1000475BC(v81);
        }
      }
    }

    else
    {
      if (*(a1 + 360) != 1)
      {
        goto LABEL_132;
      }

      memset(__src, 0, sizeof(__src));
    }

LABEL_107:
    v52 = *(a1 + 336);
    switch(v52)
    {
      case 3:
        *v81 = 3;
        v52 = 2;
        break;
      case 2:
        *v81 = 2;
        break;
      case 1:
        *v81 = 2;
        v52 = 1;
        break;
      default:
        v52 = 0;
        *v81 = 1;
        break;
    }

    v53 = *(a1 + 340);
    *&v81[4] = v52;
    *&v81[8] = v53;
    *&v81[12] = *(a1 + 344);
    v81[16] = *(a1 + 348);
    *&v81[20] = *(a1 + 352);
    v81[24] = *(a1 + 356);
    v81[32] = 0;
    v84 = 0;
    v54 = BYTE8(__src[2]);
    if (BYTE8(__src[2]) == 1)
    {
      *&v81[32] = *&__src[0];
      if (*&__src[0])
      {
        CFRetain(*&__src[0]);
      }

      v82 = *(__src + 8);
      v83 = *(&__src[1] + 8);
      v84 = 1;
    }

    if (BYTE8(v74) == 1 && v74 == 1)
    {
      sub_1000475BC(&v71[5]);
    }

    *&v71[1] = *v81;
    *(&v71[2] + 1) = *&v81[9];
    LOBYTE(v71[5]) = 0;
    LOBYTE(v74) = 0;
    if (v54)
    {
      v71[5] = *&v81[32];
      *&v81[32] = 0;
      v72 = v82;
      v73 = v83;
      LOBYTE(v74) = 1;
      BYTE8(v74) = 1;
      sub_1000475BC(&v81[32]);
    }

    else
    {
      BYTE8(v74) = 1;
    }

    if (BYTE8(__src[2]) == 1)
    {
      sub_1000475BC(__src);
    }

    if ((*(a1 + 624) & 1) == 0)
    {
LABEL_132:
      std::string::operator=(&v76[5], (a1 + 256));
      v58 = *(a1 + 312);
      v57 = *(a1 + 320);
      if (v57)
      {
        atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
      }

      v59 = v76[9];
      v76[8] = v58;
      v76[9] = v57;
      if (v59)
      {
        sub_100004A34(v59);
      }

      if ((*(a1 + 624) & 1) == 0)
      {
        if (*(a1 + 656) == 1)
        {
          v60 = *(a1 + 640);
          v61 = *(a1 + 648);
          LODWORD(v76[10]) = *(a1 + 632);
          v76[11] = v60;
          LOWORD(v77) = v61;
          BYTE8(v77) = 1;
        }

        if (*(a1 + 664) == 1)
        {
          LOWORD(v78) = 257;
        }
      }

      operator new();
    }

LABEL_127:
    if (*(a1 + 420) == 1)
    {
      v55 = *(a1 + 412);
      LODWORD(v75) = *(a1 + 408);
      DWORD1(v75) = v55;
      BYTE8(v75) = *(a1 + 416);
      BYTE12(v75) = 1;
    }

    if (*(a1 + 456) == 1)
    {
      v56 = *(a1 + 424);
      *&v81[6] = *(a1 + 432);
      v81[14] = *(a1 + 440);
      *(__src + 7) = *(a1 + 448);
      BYTE9(__src[0]) = *(a1 + 450);
      LOWORD(v76[0]) = v56;
      *(v76 + 2) = *v81;
      *(&v76[1] + 1) = *&v81[7];
      *(&v76[3] + 1) = WORD4(__src[0]);
      *(&v76[2] + 1) = *&__src[0];
      LOBYTE(v76[4]) = 1;
    }

    std::string::operator=(&v79, (a1 + 384));
    goto LABEL_132;
  }

  memset(v81, 0, 24);
  v10 = *(v9 + 224);
  if (*(v9 + 216) == 1)
  {
    if (v10)
    {
      v11 = *(v9 + 232);
      if (v10 < v11)
      {
        v12 = *(a1 + 328);
        if (v12)
        {
          v13 = 315964800;
          if (*(v12 + 40))
          {
            v14 = *(v12 + 24);
            v15 = v10 / 0x3B9ACA00 - v14;
            v13 = 315964800 - v14;
          }

          else
          {
            v15 = v10 / 0x3B9ACA00;
          }

          *&__src[0] = 1000000 * v15 + 315964800000000;
          v26 = 1000000 * (v13 + v11 / 0x3B9ACA00);
        }

        else
        {
          v26 = 0;
          *&__src[0] = 0;
        }

LABEL_49:
        *(&__src[0] + 1) = v26;
        sub_10135B2E4(v81, __src, &__src[1], 2uLL);
        goto LABEL_55;
      }

      if (!v11)
      {
        v24 = *(a1 + 328);
        if (v24)
        {
          v25 = 315964800;
          if (*(v24 + 40) == 1)
          {
            v25 = 315964800 - *(v24 + 24);
          }

          v23 = 1000000 * (v25 + v10 / 0x3B9ACA00);
        }

        else
        {
          v23 = 0;
        }

LABEL_54:
        *&__src[0] = v23;
        sub_10135B2E4(v81, __src, __src + 8, 1uLL);
      }
    }
  }

  else
  {
    v16 = *(v9 + 232);
    if (v10)
    {
      if (!v16 || v16 >= v10)
      {
        goto LABEL_55;
      }

      v17 = *(a1 + 328);
      if (v17)
      {
        v18 = 315964800;
        if (*(v17 + 40))
        {
          v19 = *(v17 + 24);
          v20 = v16 / 0x3B9ACA00 - v19;
          v18 = 315964800 - v19;
        }

        else
        {
          v20 = v16 / 0x3B9ACA00;
        }

        *&__src[0] = 1000000 * v20 + 315964800000000;
        v26 = 1000000 * (v18 + v10 / 0x3B9ACA00);
      }

      else
      {
        v26 = 0;
        *&__src[0] = 0;
      }

      goto LABEL_49;
    }

    if (v16)
    {
      v21 = *(a1 + 328);
      if (v21)
      {
        v22 = 315964800;
        if (*(v21 + 40) == 1)
        {
          v22 = 315964800 - *(v21 + 24);
        }

        v23 = 1000000 * (v22 + *(v9 + 232) / 0x3B9ACA00uLL);
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_54;
    }
  }

LABEL_55:
  v27 = *(a1 + 328);
  if (v27)
  {
    v28 = 315964800;
    if (*(v27 + 40))
    {
      v29 = *(v27 + 24);
      v30 = *(v9 + 200) / 0x3B9ACA00uLL - v29;
      v28 = 315964800 - v29;
    }

    else
    {
      v30 = *(v9 + 200) / 0x3B9ACA00uLL;
    }

    v31 = 1000000 * v30 + 315964800000000;
    v32 = 1000000 * (v28 + *(v9 + 208) / 0x3B9ACA00uLL);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = *(v9 + 216);
  v34 = *v81;
  v62 = v33;
  if (*&v81[8] != *v81)
  {
    if (((*&v81[8] - *v81) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1000CE3D4();
  }

  if (BYTE8(v69) == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(&v66 + 1) = v31;
  *&v67 = v32;
  BYTE8(v67) = v62;
  __p[0] = 0;
  __p[1] = 0;
  *&v69 = 0;
  BYTE8(v69) = 1;
  if (v34)
  {
    operator delete(v34);
  }

  goto LABEL_69;
}

void sub_101357900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 - 240);
  if (v7)
  {
    operator delete(v7);
  }

  sub_101357E70(va);
  _Unwind_Resume(a1);
}

void sub_101357970(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 216);
  if (v2)
  {
    if (*(v2 + 304) == 1 && (v3 = *(v2 + 256)) != 0 && *(v2 + 264) && *(v2 + 272))
    {
      v4 = *(a1 + 200);
      if (!v4 || *v4 != v3)
      {
        v5 = *(a1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v14 = v3;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Service plot was changed, caching version %llu in CA", buf, 0xCu);
          v2 = *(a1 + 216);
        }

        dispatch_assert_queue_V2(*(a1 + 24));
        if (!*(v2 + 256) || !*(v2 + 264) || !*(v2 + 272))
        {
          v6 = *(a1 + 40);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid service plot was supplied to buildServicePlot_sync, proceeding anyway", buf, 2u);
          }
        }

        v8 = *(v2 + 280);
        v7 = *(v2 + 288);
        if (v7 != v8)
        {
          v9 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
          if (!(v9 >> 59))
          {
            sub_10135B40C(v9);
          }

          sub_1000CE3D4();
        }

        operator new();
      }
    }

    else if (*(a1 + 200))
    {
      v10 = *(a1 + 208);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      if (v10)
      {
        sub_100004A34(v10);
      }

      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Service plot was reset, resetting CA cached service plot too", buf, 2u);
      }
    }
  }

  else
  {
    v12 = *(a1 + 208);
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    if (v12)
    {

      sub_100004A34(v12);
    }
  }
}

void sub_101357E48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101357E70(uint64_t a1)
{
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  v2 = *(a1 + 336);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 240) == 1 && *(a1 + 232) == 1)
  {
    sub_1000475BC((a1 + 192));
  }

  if (*(a1 + 128) == 1)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      *(a1 + 112) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_101357EFC(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return dword_10195A240[a1 - 1];
  }
}

__n128 sub_101357F20(const void **a1, uint64_t a2)
{
  if (*(a1 + 56) == 1)
  {
    a1 = sub_1000475BC(a1);
    *(a1 + 56) = 0;
  }

  v3 = sub_1000BA468(a1, a2);
  result = *(a2 + 8);
  v3[3] = *(a2 + 24);
  *(v3 + 1) = result;
  v3[4] = *(a2 + 32);
  *(v3 + 10) = *(a2 + 40);
  v3[6] = *(a2 + 48);
  *(v3 + 56) = 1;
  return result;
}

void sub_101357F8C(void *a1)
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

void sub_10135806C(uint64_t a1)
{
  v1 = a1;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ***********************************", buf, 2u);
    v2 = *v3;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] * StewieConnectionAssistant state *", buf, 2u);
    v2 = *v3;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ***********************************", buf, 2u);
  }

  v4 = *(v1 + 104);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = *v3;
    v7 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v8 = *v4;
      v9 = v4[1];
      v10 = v4[2];
      v11 = v4[3];
      *buf = 67109888;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      LOWORD(v279) = 1024;
      *(&v279 + 2) = v10;
      HIWORD(v279) = 1024;
      *v280 = v11;
      v12 = "#I [d] (CAConfig) Model vector: [x: %d|%d, y: %d|%d]";
      v13 = v6;
      v14 = 26;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      *buf = 0;
      v12 = "#I [d] (CAConfig) Model vector is not defined";
      v13 = v6;
      v14 = 2;
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
  }

LABEL_14:
  v15 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v1 + 240) * 180.0 / 3.14159265;
    *buf = 134217984;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] Service threshold: %.2f", buf, 0xCu);
    v15 = *(v1 + 40);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v1 + 248) * 180.0 / 3.14159265;
    *buf = 134217984;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] Anchor service threshold: %.2f", buf, 0xCu);
    v15 = *(v1 + 40);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = (v1 + 256);
    if (*(v1 + 279) < 0)
    {
      v18 = *v18;
    }

    *buf = 136446210;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] iso3166Alpha3CountryCode: %{public}s", buf, 0xCu);
    v15 = *v3;
  }

  v19 = *(v1 + 280);
  v20 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_39;
    }

    *buf = 0;
    v30 = "#I [d] TargetGen2ToGen1Mapping not set";
    goto LABEL_38;
  }

  if (v20)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] TargetGen2ToGen1Mapping: [", buf, 2u);
    v19 = *(v1 + 280);
  }

  v23 = *v19;
  v21 = v19 + 1;
  v22 = v23;
  if (v23 != v21)
  {
    do
    {
      v24 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v22 + 7);
        v26 = *(v22 + 8);
        *buf = 67109376;
        *&buf[4] = v25;
        *&buf[8] = 1024;
        *&buf[10] = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I [d] TargetGen2ToGen1Mapping     %d -> %d", buf, 0xEu);
      }

      v27 = v22[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v22[2];
          v29 = *v28 == v22;
          v22 = v28;
        }

        while (!v29);
      }

      v22 = v28;
    }

    while (v28 != v21);
  }

  v15 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v30 = "#I [d] TargetGen2ToGen1Mapping ]";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
  }

LABEL_39:
  v31 = *(v1 + 296);
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  else
  {
    v32 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I [d] AnchorStorage not set", buf, 2u);
    }
  }

  v33 = *(v1 + 624);
  v34 = *(v1 + 40);
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (v33 != 1)
  {
    if (!v35)
    {
      goto LABEL_175;
    }

    *buf = 0;
    v42 = "#I [d] State: On is not set";
    goto LABEL_174;
  }

  if (v35)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] State: On", buf, 2u);
    v34 = *v3;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v36 = sub_100976680(*(v1 + 376));
    *buf = 136315138;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] lastRequestReason: %s", buf, 0xCu);
    v34 = *(v1 + 40);
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v37 = (v1 + 384);
    if (*(v1 + 407) < 0)
    {
      v37 = *v37;
    }

    *buf = 136446210;
    *&buf[4] = v37;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] emergencyOrRoadsideSessionInitiatedBy: %{public}s", buf, 0xCu);
    v34 = *v3;
  }

  v38 = *(v1 + 420);
  v39 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (v38 != 1)
  {
    if (!v39)
    {
      goto LABEL_75;
    }

    *buf = 0;
    v43 = "#I [d] (Conversation) Conversation not set";
    v44 = v34;
    v45 = 2;
    goto LABEL_74;
  }

  if (v39)
  {
    v40 = *(v1 + 408);
    if (v40 > 4)
    {
      v41 = "???";
    }

    else
    {
      v41 = off_101F31B38[v40];
    }

    *buf = 136315138;
    *&buf[4] = v41;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] (Conversation) requestReason: %s", buf, 0xCu);
    v34 = *v3;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(v1 + 412);
    *buf = 67109120;
    *&buf[4] = v46;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] (Conversation) conversationID: %hhu", buf, 8u);
    v34 = *(v1 + 40);
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 413))
    {
      v47 = "true";
    }

    else
    {
      v47 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v47;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] (Conversation) committed: %s", buf, 0xCu);
    v34 = *(v1 + 40);
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 416) == 1)
    {
      v48 = sub_1009762C8(*(v1 + 414));
    }

    else
    {
      v48 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v48;
    v43 = "#I [d] (Conversation) fromService: %{public}s";
    v44 = v34;
    v45 = 12;
LABEL_74:
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
  }

LABEL_75:
  v49 = *(v1 + 456);
  v50 = *(v1 + 40);
  v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
  if (v49 != 1)
  {
    if (!v51)
    {
      goto LABEL_95;
    }

    *buf = 0;
    v54 = "#I [d] (RoadsideConversation) roadsideConversationState not set";
    v55 = v50;
    v56 = 2;
    goto LABEL_94;
  }

  if (v51)
  {
    v52 = *(v1 + 424);
    *buf = 67109120;
    *&buf[4] = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I [d] (RoadsideConversation) conversationID: %hhu", buf, 8u);
    v50 = *(v1 + 40);
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 440) == 1)
    {
      std::to_string(buf, *(v1 + 432));
      if (v280[1] >= 0)
      {
        v53 = buf;
      }

      else
      {
        v53 = *buf;
      }

      LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
      *(v277.__r_.__value_.__r.__words + 4) = v53;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I [d] (RoadsideConversation) providerId: %{public}s", &v277, 0xCu);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
      *(v277.__r_.__value_.__r.__words + 4) = "<none>";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I [d] (RoadsideConversation) providerId: %{public}s", &v277, 0xCu);
    }

    v50 = *v3;
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 450) == 1)
    {
      v57 = sub_1009762C8(*(v1 + 448));
    }

    else
    {
      v57 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v57;
    v54 = "#I [d] (RoadsideConversation) fromService: %{public}s";
    v55 = v50;
    v56 = 12;
LABEL_94:
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
  }

LABEL_95:
  v58 = *(v1 + 520);
  v59 = *(v1 + 40);
  v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
  if (v58 != 1)
  {
    if (!v60)
    {
      goto LABEL_128;
    }

    *buf = 0;
    v66 = "#I [d] (Transmission) Progress not set";
    v67 = v59;
    v68 = 2;
    goto LABEL_127;
  }

  if (v60)
  {
    stewie::dumpToString((v1 + 464), buf);
    if (v280[1] >= 0)
    {
      v61 = buf;
    }

    else
    {
      v61 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136380675;
    *(v277.__r_.__value_.__r.__words + 4) = v61;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) MessageID: %{private}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v59 = *v3;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    std::to_string(buf, *(v1 + 472));
    if (v280[1] >= 0)
    {
      v62 = buf;
    }

    else
    {
      v62 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v62;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) MessageType: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v59 = *v3;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v63 = sub_10097665C(*(v1 + 476));
    *buf = 136315138;
    *&buf[4] = v63;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) TransportType: %s", buf, 0xCu);
    v59 = *(v1 + 40);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(v1 + 480);
    if (v64 > 3)
    {
      v65 = "???";
    }

    else
    {
      v65 = off_101F31AC0[v64];
    }

    *buf = 136315138;
    *&buf[4] = v65;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) StatusType: %s", buf, 0xCu);
    v59 = *v3;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v69 = *(v1 + 488);
    *buf = 134217984;
    *&buf[4] = v69;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) (Message) MessageSizeInBytes: %zu", buf, 0xCu);
    v59 = *(v1 + 40);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v70 = *(v1 + 496) / 0x3B9ACA00uLL;
    *buf = 134217984;
    *&buf[4] = v70;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) sentAt (GPS time, seconds): %llu", buf, 0xCu);
    v59 = *(v1 + 40);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v71 = *(v1 + 504);
    *buf = 67109120;
    *&buf[4] = v71;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (Transmission) estimatedTimeToSendSeconds: %u", buf, 8u);
    v59 = *(v1 + 40);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v72 = *(v1 + 512) / 0x3B9ACA00uLL;
    *buf = 134217984;
    *&buf[4] = v72;
    v66 = "#I [d] (Transmission) deliveredAt (GPS time, seconds): %llu";
    v67 = v59;
    v68 = 12;
LABEL_127:
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v66, buf, v68);
  }

LABEL_128:
  v73 = *(v1 + 544);
  v74 = *(v1 + 40);
  v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
  if (v73 != 1)
  {
    if (!v75)
    {
      goto LABEL_146;
    }

    *buf = 0;
    v80 = "#I [d] (DeviceOrientationData) deviceOrientationData not set";
    v81 = v74;
    v82 = 2;
    goto LABEL_145;
  }

  if (v75)
  {
    v76 = *(v1 + 528);
    *buf = 134217984;
    *&buf[4] = v76;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I [d] (DeviceOrientationData) fTimeStamp: %llu", buf, 0xCu);
    v74 = *(v1 + 40);
  }

  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 536))
    {
      v77 = "true";
    }

    else
    {
      v77 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v77;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I [d] (DeviceOrientationData) fTargetLocked: %s", buf, 0xCu);
    v74 = *(v1 + 40);
  }

  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 537))
    {
      v78 = "true";
    }

    else
    {
      v78 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v78;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I [d] (DeviceOrientationData) fIsDeviceStationary: %s", buf, 0xCu);
    v74 = *(v1 + 40);
  }

  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v79 = *(v1 + 540);
    *buf = 67109120;
    *&buf[4] = v79;
    v80 = "#I [d] (DeviceOrientationData) fX: %d";
    v81 = v74;
    v82 = 8;
LABEL_145:
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, v80, buf, v82);
  }

LABEL_146:
  v83 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v84 = *(v1 + 552);
    if (v84 > 3)
    {
      v85 = "???";
    }

    else
    {
      v85 = off_101F31AE0[v84];
    }

    *buf = 136315138;
    *&buf[4] = v85;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I [d] visibilityLevel: %s", buf, 0xCu);
    v83 = *v3;
  }

  v86 = *(v1 + 576);
  v87 = os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);
  if (v86 != 1)
  {
    if (!v87)
    {
      goto LABEL_159;
    }

    *buf = 0;
    v90 = "#I [d] (VisibilityTicks) visibilityTicks not set";
    v91 = v83;
    v92 = 2;
    goto LABEL_158;
  }

  if (v87)
  {
    v88 = *(v1 + 568);
    *buf = 134217984;
    *&buf[4] = v88;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I [d] (VisibilityTicks) numTicksElapsedWaitingForSync: %llu", buf, 0xCu);
    v83 = *(v1 + 40);
  }

  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v89 = *(v1 + 560);
    *buf = 134217984;
    *&buf[4] = v89;
    v90 = "#I [d] (VisibilityTicks) numTicksElapsedWaitingToResetVisibility: %llu";
    v91 = v83;
    v92 = 12;
LABEL_158:
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, v90, buf, v92);
  }

LABEL_159:
  v93 = *(v1 + 600);
  v94 = *(v1 + 40);
  v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
  if (v93 != 1)
  {
    if (!v95)
    {
      goto LABEL_167;
    }

    *buf = 0;
    v98 = "#I [d] (TxDeferInterval) txDeferInterval not set";
    v99 = v94;
    v100 = 2;
    goto LABEL_166;
  }

  if (v95)
  {
    v96 = *(v1 + 584) / 0x3B9ACA00uLL;
    *buf = 134217984;
    *&buf[4] = v96;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#I [d] (TxDeferInterval) startsAt (GPS time, seconds): %llu", buf, 0xCu);
    v94 = *(v1 + 40);
  }

  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    v97 = *(v1 + 592) / 0x3B9ACA00uLL;
    *buf = 134217984;
    *&buf[4] = v97;
    v98 = "#I [d] (TxDeferInterval) endsAt (GPS time, seconds): %llu";
    v99 = v94;
    v100 = 12;
LABEL_166:
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, v98, buf, v100);
  }

LABEL_167:
  v101 = *(v1 + 608);
  v34 = *(v1 + 40);
  v102 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  if (!v101)
  {
    if (!v102)
    {
      goto LABEL_175;
    }

    *buf = 0;
    v42 = "#I [d] (TargetServiceSchedule) targetServiceSchedule not set";
    goto LABEL_174;
  }

  if (v102)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [d] (TargetServiceSchedule) targetServiceSchedule {", buf, 2u);
  }

  (*(*v101 + 24))(v101, v3);
  v34 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v42 = "#I [d] (TargetServiceSchedule) }";
LABEL_174:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
  }

LABEL_175:
  v103 = *(v1 + 656);
  v104 = *(v1 + 40);
  v105 = os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT);
  if (v103 == 1)
  {
    if (v105)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I [d] State: Off", buf, 2u);
      v104 = *v3;
    }

    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v106 = sub_1009766A4(*(v1 + 632));
      *buf = 136315138;
      *&buf[4] = v106;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I [d] (Off) exitReason: %s", buf, 0xCu);
      v104 = *(v1 + 40);
    }

    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v107 = *(v1 + 648);
      sub_10097642C(*(v1 + 648), buf);
      v108 = v280[1] >= 0 ? buf : *buf;
      LODWORD(v277.__r_.__value_.__l.__data_) = 67109378;
      HIDWORD(v277.__r_.__value_.__r.__words[0]) = v107;
      LOWORD(v277.__r_.__value_.__r.__words[1]) = 2080;
      *(&v277.__r_.__value_.__r.__words[1] + 2) = v108;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I [d] (Off) wasActiveservices: { [Mask: %u] %s }", &v277, 0x12u);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v105)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I [d] State: Off is not set", buf, 2u);
  }

  v109 = *(v1 + 40);
  if (*(v1 + 664) == 1 && os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] State: TryOut mode offer pending", buf, 2u);
    v109 = *v3;
  }

  if (*(v1 + 680) == 1 && os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] State: Assistant app is on", buf, 2u);
    v109 = *v3;
  }

  if (*(v1 + 712) == 1)
  {
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] State: Assistant app is off", buf, 2u);
      v109 = *v3;
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = *(v1 + 704);
      *buf = 67109120;
      *&buf[4] = v110;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Assistant App Off) fReopenRequestsSent: %u", buf, 8u);
      v109 = *(v1 + 40);
    }
  }

  v111 = *(v1 + 360);
  v112 = os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT);
  if (v111 == 1)
  {
    if (v112)
    {
      v113 = sub_1009766EC(*(v1 + 336));
      *buf = 136315138;
      *&buf[4] = v113;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) connectionStatus: %s", buf, 0xCu);
      v109 = *(v1 + 40);
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v114 = sub_100976710(*(v1 + 340));
      *buf = 136315138;
      *&buf[4] = v114;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) registrationStatus: %s", buf, 0xCu);
      v109 = *(v1 + 40);
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 348) == 1)
      {
        v115 = sub_100976734(*(v1 + 344));
      }

      else
      {
        v115 = "<none>";
      }

      *buf = 136315138;
      *&buf[4] = v115;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) congestionStatus: %s", buf, 0xCu);
      v109 = *v3;
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 356) == 1)
      {
        std::to_string(buf, *(v1 + 352));
      }

      else
      {
        sub_10000501C(buf, "<none>");
      }

      v116 = buf;
      if (v280[1] < 0)
      {
        v116 = *buf;
      }

      LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
      *(v277.__r_.__value_.__r.__words + 4) = v116;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) rssi: %{public}s", &v277, 0xCu);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v112)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I [d] (Connection) Connection not set", buf, 2u);
  }

  v117 = *(v1 + 184);
  v118 = *(v1 + 40);
  v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
  if (!v117)
  {
    if (!v119)
    {
      goto LABEL_413;
    }

    *buf = 0;
    v129 = "#I [d] (CAState) CAState not set";
    goto LABEL_411;
  }

  if (v119)
  {
    v120 = *v117;
    *buf = 134217984;
    *&buf[4] = v120;
    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) Version: %llu", buf, 0xCu);
    v117 = *(v1 + 184);
    v118 = *(v1 + 40);
  }

  v121 = *(v117 + 56);
  v122 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
  if (v121 != 1)
  {
    if (!v122)
    {
      goto LABEL_234;
    }

    *buf = 0;
    v126 = "#I [d] (CAState) (Target) Target not set";
    v127 = v118;
    v128 = 2;
    goto LABEL_233;
  }

  if (v122)
  {
    v123 = *(v117 + 8);
    *buf = 67109120;
    *&buf[4] = v123;
    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Target) ID: %u", buf, 8u);
    v118 = *v3;
  }

  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    v124 = v117[5];
    *buf = 134217984;
    *&buf[4] = v124;
    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Target) X: %.1f", buf, 0xCu);
    v118 = *v3;
  }

  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    v125 = v117[6];
    *buf = 134217984;
    *&buf[4] = v125;
    v126 = "#I [d] (CAState) (Target) Y: %.1f";
    v127 = v118;
    v128 = 12;
LABEL_233:
    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, v126, buf, v128);
  }

LABEL_234:
  v130 = *(v1 + 184);
  v131 = *(v130 + 68);
  v132 = *(v1 + 40);
  v133 = os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT);
  if (v131 == 1)
  {
    if (!v133)
    {
      goto LABEL_243;
    }

    v134 = *(v130 + 64);
    if (v134 > 3)
    {
      v135 = "???";
    }

    else
    {
      v135 = off_101F31AE0[v134];
    }

    *buf = 136315138;
    *&buf[4] = v135;
    v136 = "#I [d] (CAState) (Visibility) aggregateVisibility: %s";
    v137 = v132;
    v138 = 12;
  }

  else
  {
    if (!v133)
    {
      goto LABEL_243;
    }

    *buf = 0;
    v136 = "#I [d] (CAState) (Visibility) Visibility not set";
    v137 = v132;
    v138 = 2;
  }

  _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, v136, buf, v138);
LABEL_243:
  v139 = *(v1 + 184);
  v140 = *(v139 + 128);
  v141 = *(v1 + 40);
  v142 = os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT);
  if (v140 != 1)
  {
    if (!v142)
    {
      goto LABEL_279;
    }

    *buf = 0;
    v151 = "#I [d] (CAState) (ServiceIntervals) ServiceIntervals not set";
    goto LABEL_278;
  }

  if (v142)
  {
    std::to_string(buf, *(v139 + 80));
    if (v280[1] >= 0)
    {
      v143 = buf;
    }

    else
    {
      v143 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v143;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals) startsAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v141 = *v3;
  }

  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    std::to_string(buf, *(v139 + 88));
    if (v280[1] >= 0)
    {
      v144 = buf;
    }

    else
    {
      v144 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v144;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals) endsAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v141 = *v3;
  }

  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v139 + 96))
    {
      v145 = "true";
    }

    else
    {
      v145 = "false";
    }

    *buf = 136446210;
    *&buf[4] = v145;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals) atStart: %{public}s", buf, 0xCu);
  }

  v146 = *(v139 + 104);
  v147 = *(v139 + 112);
  if (v146 != v147)
  {
    v148 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals) changesAt: [", buf, 2u);
      v146 = *(v139 + 104);
      v147 = *(v139 + 112);
    }

    for (; v146 != v147; ++v146)
    {
      v149 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        std::to_string(buf, *v146);
        v150 = v280[1] >= 0 ? buf : *buf;
        LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
        *(v277.__r_.__value_.__r.__words + 4) = v150;
        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ServiceIntervals)     %{public}s", &v277, 0xCu);
        if ((v280[1] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    v141 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v151 = "#I [d] (CAState) (ServiceIntervals) ]";
LABEL_278:
      _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, v151, buf, 2u);
    }
  }

LABEL_279:
  v152 = *(v1 + 184);
  v153 = *(v152 + 240);
  v154 = *(v1 + 40);
  v155 = os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT);
  if (v153 != 1)
  {
    if (!v155)
    {
      goto LABEL_349;
    }

    *buf = 0;
    v158 = "#I [d] (CAState) (Connection) connectionState not set";
LABEL_321:
    v167 = v154;
    v168 = 2;
LABEL_348:
    _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, v158, buf, v168);
    goto LABEL_349;
  }

  if (v155)
  {
    v156 = *(v152 + 160);
    if (v156 > 3)
    {
      v157 = "???";
    }

    else
    {
      v157 = off_101F31B00[v156];
    }

    *buf = 136446210;
    *&buf[4] = v157;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) connectionStatus: %{public}s", buf, 0xCu);
    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v159 = *(v152 + 164);
    if (v159 > 2)
    {
      v160 = "???";
    }

    else
    {
      v160 = off_101F31B20[v159];
    }

    *buf = 136446210;
    *&buf[4] = v160;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) syncStatus: %{public}s", buf, 0xCu);
    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v161 = sub_100976710(*(v152 + 168));
    *buf = 136446210;
    *&buf[4] = v161;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) registrationStatus: %{public}s", buf, 0xCu);
    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 176) == 1)
    {
      v162 = sub_100976734(*(v152 + 172));
    }

    else
    {
      v162 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v162;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) congestionStatus: %{public}s", buf, 0xCu);
    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 184) == 1)
    {
      std::to_string(buf, *(v152 + 180));
    }

    else
    {
      sub_10000501C(buf, "<none>");
    }

    v163 = buf;
    if (v280[1] < 0)
    {
      v163 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v163;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) rssi: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  v164 = *(v152 + 232);
  v165 = os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT);
  if (v164 != 1)
  {
    if (!v165)
    {
      goto LABEL_349;
    }

    *buf = 0;
    v158 = "#I [d] (CAState) (Connection) (TransmissionProgress) TransmissionProgress not set";
    goto LABEL_321;
  }

  if (v165)
  {
    stewie::dumpToString((v152 + 192), buf);
    if (v280[1] >= 0)
    {
      v166 = buf;
    }

    else
    {
      v166 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v166;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) (TransmissionProgress) messageId: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 208) == 1)
    {
      std::to_string(buf, *(v152 + 200));
    }

    else
    {
      sub_10000501C(buf, "<none>");
    }

    v169 = buf;
    if (v280[1] < 0)
    {
      v169 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v169;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) (TransmissionProgress) startedAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 220) == 1)
    {
      std::to_string(buf, *(v152 + 216));
    }

    else
    {
      sub_10000501C(buf, "<none>");
    }

    v170 = buf;
    if (v280[1] < 0)
    {
      v170 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v170;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) (TransmissionProgress) estimatedDurationSeconds: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v152 + 225) == 1)
    {
      std::to_string(buf, *(v152 + 224));
    }

    else
    {
      sub_10000501C(buf, "<none>");
    }

    v171 = buf;
    if (v280[1] < 0)
    {
      v171 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v171;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Connection) (TransmissionProgress) progressPercents: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v154 = *v3;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v172 = stewie::asString(*(v152 + 228));
    *buf = 136446210;
    *&buf[4] = v172;
    v158 = "#I [d] (CAState) (Connection) (TransmissionProgress) payloadType: %{public}s";
    v167 = v154;
    v168 = 12;
    goto LABEL_348;
  }

LABEL_349:
  v173 = *(v1 + 184);
  v174 = *(v173 + 260);
  v175 = *(v1 + 40);
  v176 = os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT);
  if (v174 != 1)
  {
    if (!v176)
    {
      goto LABEL_370;
    }

    *buf = 0;
    v179 = "#I [d] (CAState) (Conversation) conversationState not set";
    v180 = v175;
    v181 = 2;
    goto LABEL_369;
  }

  if (v176)
  {
    v177 = *(v173 + 248);
    if (v177 > 4)
    {
      v178 = "???";
    }

    else
    {
      v178 = off_101F31B38[v177];
    }

    *buf = 136446210;
    *&buf[4] = v178;
    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Conversation) requestReason: %{public}s", buf, 0xCu);
    v175 = *v3;
  }

  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    v182 = *(v173 + 252);
    *buf = 67109120;
    *&buf[4] = v182;
    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Conversation) conversationId: %hhu", buf, 8u);
    v175 = *v3;
  }

  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v173 + 253))
    {
      v183 = "true";
    }

    else
    {
      v183 = "false";
    }

    *buf = 136446210;
    *&buf[4] = v183;
    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (Conversation) committed: %{public}s", buf, 0xCu);
    v175 = *v3;
  }

  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v173 + 256) == 1)
    {
      v184 = sub_1009762C8(*(v173 + 254));
    }

    else
    {
      v184 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v184;
    v179 = "#I [d] (CAState) (Conversation) fromService: %{public}s";
    v180 = v175;
    v181 = 12;
LABEL_369:
    _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, v179, buf, v181);
  }

LABEL_370:
  v185 = *(v1 + 184);
  v186 = *(v185 + 296);
  v187 = *(v1 + 40);
  v188 = os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT);
  if (v186 == 1)
  {
    if (v188)
    {
      v189 = *(v185 + 264);
      *buf = 67109120;
      *&buf[4] = v189;
      _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (RoadsideConversation) conversationId: %hhu", buf, 8u);
      v187 = *v3;
    }

    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      sub_100E253C8(v185 + 272, buf);
      if (v280[1] >= 0)
      {
        v190 = buf;
      }

      else
      {
        v190 = *buf;
      }

      LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
      *(v277.__r_.__value_.__r.__words + 4) = v190;
      _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (RoadsideConversation) providerId: %{public}s", &v277, 0xCu);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v187 = *v3;
    }

    if (!os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_388;
    }

    if (*(v185 + 290) == 1)
    {
      v191 = sub_1009762C8(*(v185 + 288));
    }

    else
    {
      v191 = "<none>";
    }

    *buf = 136446210;
    *&buf[4] = v191;
    v192 = "#I [d] (CAState) (RoadsideConversation) fromService: %{public}s";
    v193 = v187;
    v194 = 12;
    goto LABEL_387;
  }

  if (v188)
  {
    *buf = 0;
    v192 = "#I [d] (CAState) (RoadsideConversation) roadsideConversationState not set";
    v193 = v187;
    v194 = 2;
LABEL_387:
    _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, v192, buf, v194);
  }

LABEL_388:
  v195 = *(v1 + 40);
  v196 = os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT);
  v197 = *(v1 + 184);
  if (v196)
  {
    v198 = (v197 + 384);
    if (*(v197 + 407) < 0)
    {
      v198 = *v198;
    }

    *buf = 136446210;
    *&buf[4] = v198;
    _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) emergencyOrRoadsideSessionInitiatedBy: %{public}s", buf, 0xCu);
    v197 = *(v1 + 184);
    v195 = *(v1 + 40);
  }

  v199 = *(v197 + 368);
  v200 = os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT);
  if (v199 == 1)
  {
    if (v200)
    {
      v201 = sub_1009766A4(*(v197 + 344));
      *buf = 136446210;
      *&buf[4] = v201;
      _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ConnectionClosed) exitReason: %{public}s", buf, 0xCu);
      v195 = *v3;
    }

    if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
    {
      v202 = *(v197 + 360);
      sub_10097642C(v202, buf);
      v203 = v280[1] >= 0 ? buf : *buf;
      LODWORD(v277.__r_.__value_.__l.__data_) = 67109378;
      HIDWORD(v277.__r_.__value_.__r.__words[0]) = v202;
      LOWORD(v277.__r_.__value_.__r.__words[1]) = 2080;
      *(&v277.__r_.__value_.__r.__words[1] + 2) = v203;
      _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ConnectionClosed) wasActiveservices: { [Mask: %u] %s }", &v277, 0x12u);
      if ((v280[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v200)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "#I [d] (CAState) (ConnectionClosed) connectionClosedState not set", buf, 2u);
  }

  v204 = *(v1 + 184);
  v205 = *(v204 + 377);
  v118 = *(v1 + 40);
  v206 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
  if (v205 == 1)
  {
    if (!v206)
    {
      goto LABEL_413;
    }

    if (*(v204 + 376))
    {
      v207 = "true";
    }

    else
    {
      v207 = "false";
    }

    *buf = 136446210;
    *&buf[4] = v207;
    v129 = "#I [d] (CAState) (TryOut) tryOutOfferPending: %{public}s";
    v208 = v118;
    v209 = 12;
    goto LABEL_412;
  }

  if (!v206)
  {
    goto LABEL_413;
  }

  *buf = 0;
  v129 = "#I [d] (CAState) (TryOut) tryOutState not set";
LABEL_411:
  v208 = v118;
  v209 = 2;
LABEL_412:
  _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, v129, buf, v209);
LABEL_413:
  v210 = *(v1 + 200);
  v211 = *(v1 + 40);
  v212 = os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT);
  if (!v210)
  {
    if (!v212)
    {
      goto LABEL_451;
    }

    *buf = 0;
    v229 = "#I [d] (CAServicePlot) ServicePlot not set";
    v230 = v211;
    v231 = 2;
    goto LABEL_450;
  }

  if (v212)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) ServicePlot is valid, all times are GPS times", buf, 2u);
    v211 = *v3;
  }

  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
  {
    v213 = *v210;
    *buf = 134217984;
    *&buf[4] = v213;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) version: %llu", buf, 0xCu);
    v211 = *v3;
  }

  v275 = v210;
  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
  {
    std::to_string(buf, v210[1]);
    if (v280[1] >= 0)
    {
      v214 = buf;
    }

    else
    {
      v214 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v214;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) startsAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v211 = *v3;
  }

  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
  {
    std::to_string(buf, v210[2]);
    if (v280[1] >= 0)
    {
      v215 = buf;
    }

    else
    {
      v215 = *buf;
    }

    LODWORD(v277.__r_.__value_.__l.__data_) = 136446210;
    *(v277.__r_.__value_.__r.__words + 4) = v215;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) endsAt: %{public}s", &v277, 0xCu);
    if ((v280[1] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v211 = *v3;
  }

  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) readings [", buf, 2u);
  }

  v216 = v210[3];
  for (i = v210[4]; v216 != i; v216 += 32)
  {
    v218 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      std::to_string(&v277, *v216);
      v219 = v1;
      v220 = v3;
      v221 = SHIBYTE(v277.__r_.__value_.__r.__words[2]);
      v222 = v277.__r_.__value_.__r.__words[0];
      std::to_string(&v276, *(v216 + 8));
      v223 = &v277;
      if (v221 < 0)
      {
        v223 = v222;
      }

      v224 = &v276;
      if ((v276.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v224 = v276.__r_.__value_.__r.__words[0];
      }

      v225 = *(v216 + 16) * 180.0 / 3.14159265;
      v226 = *(v216 + 24) * 180.0;
      *buf = 136446979;
      *&buf[4] = v223;
      *&buf[12] = 2082;
      v279 = v224;
      *v280 = 2049;
      *&v280[2] = v225;
      v281 = 2049;
      v282 = v226 / 3.14159265;
      _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEFAULT, "#I [d] (CAServicePlot) readings - at: %{public}s, targetID: %{public}s, heading: %{private}.2f, service: %{private}.2f", buf, 0x2Au);
      if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v276.__r_.__value_.__l.__data_);
      }

      v3 = v220;
      if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v277.__r_.__value_.__l.__data_);
      }

      v1 = v219;
    }
  }

  v227 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v228 = (v275[4] - v275[3]) >> 5;
    *buf = 134217984;
    *&buf[4] = v228;
    v229 = "#I [d] (CAServicePlot) readings ] %zu readings";
    v230 = v227;
    v231 = 12;
LABEL_450:
    _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, v229, buf, v231);
  }

LABEL_451:
  v232 = *(v1 + 760);
  v233 = *(v1 + 40);
  v234 = os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT);
  if (v232 != 1)
  {
    if (!v234)
    {
      goto LABEL_472;
    }

    *buf = 0;
    v239 = "#I [d] Offer not set";
    v240 = v233;
    v241 = 2;
    goto LABEL_471;
  }

  if (v234)
  {
    if (*(v1 + 736))
    {
      v235 = "true";
    }

    else
    {
      v235 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v235;
    _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "#I [d] Offer requested: %s", buf, 0xCu);
    v233 = *(v1 + 40);
  }

  if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
  {
    v236 = *(v1 + 720);
    if (v236)
    {
      isExpired = AutoStartTimer::isExpired(v236);
      v238 = "running";
      if (isExpired)
      {
        v238 = "expired";
      }
    }

    else
    {
      v238 = "off";
    }

    *buf = 136315138;
    *&buf[4] = v238;
    _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "#I [d] Offer tracker: %s", buf, 0xCu);
    v233 = *v3;
  }

  if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 744))
    {
      v242 = "true";
    }

    else
    {
      v242 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v242;
    v239 = "#I [d] Offer is presented: %s";
    v240 = v233;
    v241 = 12;
LABEL_471:
    _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, v239, buf, v241);
  }

LABEL_472:
  v243 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v244 = *(v1 + 768);
    if (v244)
    {
      v245 = AutoStartTimer::isExpired(v244);
      v246 = "running";
      if (v245)
      {
        v246 = "expired";
      }
    }

    else
    {
      v246 = "off";
    }

    *buf = 136315138;
    *&buf[4] = v246;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Declined offer tracker: %s", buf, 0xCu);
    v243 = *v3;
  }

  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
  {
    v247 = *(v1 + 808);
    v248 = *(v1 + 816);
    *buf = 134218240;
    *&buf[4] = v247;
    *&buf[12] = 2048;
    v279 = v248;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Offer since last metric report: presented - %llu, accepted - %llu", buf, 0x16u);
    v243 = *(v1 + 40);
  }

  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 784))
    {
      v249 = "true";
    }

    else
    {
      v249 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v249;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Instant offer is presented: %s", buf, 0xCu);
    v243 = *(v1 + 40);
  }

  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
  {
    v250 = *(v1 + 824);
    v251 = *(v1 + 832);
    *buf = 134218240;
    *&buf[4] = v250;
    *&buf[12] = 2048;
    v279 = v251;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Instant offer since last metric report: presented - %llu, accepted - %llu", buf, 0x16u);
    v243 = *(v1 + 40);
  }

  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 840))
    {
      v252 = "true";
    }

    else
    {
      v252 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v252;
    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I [d] Messaging was used at least once this time off grid: %s", buf, 0xCu);
    v243 = *(v1 + 40);
  }

  v253 = *(v1 + 842);
  v254 = os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT);
  if (v253 == 1)
  {
    if (!v254)
    {
      goto LABEL_502;
    }

    if (*(v1 + 841))
    {
      v255 = "on";
    }

    else
    {
      v255 = "off";
    }

    *buf = 136315138;
    *&buf[4] = v255;
    v256 = "#I [d] OffTheGrid mode: %s";
    v257 = v243;
    v258 = 12;
  }

  else
  {
    if (!v254)
    {
      goto LABEL_502;
    }

    *buf = 0;
    v256 = "#I [d] OffTheGrid mode: not fetched yet";
    v257 = v243;
    v258 = 2;
  }

  _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, v256, buf, v258);
LABEL_502:
  v259 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 843))
    {
      v260 = "yes";
    }

    else
    {
      v260 = "no";
    }

    *buf = 136315138;
    *&buf[4] = v260;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Display is active: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 844))
    {
      v261 = "yes";
    }

    else
    {
      v261 = "no";
    }

    *buf = 136315138;
    *&buf[4] = v261;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Coversheet is active: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 845))
    {
      v262 = "yes";
    }

    else
    {
      v262 = "no";
    }

    *buf = 136315138;
    *&buf[4] = v262;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Suppress banner: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 800))
    {
      v263 = "true";
    }

    else
    {
      v263 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v263;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d]] Last instant offer source connection assistant: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 847) == 1)
    {
      if (*(v1 + 846))
      {
        v264 = "true";
      }

      else
      {
        v264 = "false";
      }
    }

    else
    {
      v264 = "<none>";
    }

    *buf = 136315138;
    *&buf[4] = v264;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] GPS Satellites are visible: %s", buf, 0xCu);
    v259 = *v3;
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    v265 = *(v1 + 848);
    if (v265)
    {
      v266 = AutoStartTimer::isExpired(v265);
      v267 = "running";
      if (v266)
      {
        v267 = "expired";
      }
    }

    else
    {
      v267 = "off";
    }

    *buf = 136315138;
    *&buf[4] = v267;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] GPS acquisition tracker: %s", buf, 0xCu);
    v259 = *v3;
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 864))
    {
      v268 = "true";
    }

    else
    {
      v268 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v268;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Surface GPS acquisition status to user: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 887))
    {
      v269 = "true";
    }

    else
    {
      v269 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v269;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Is emergency voice call capable: %s", buf, 0xCu);
    v259 = *(v1 + 40);
  }

  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
  {
    v270 = sub_100976934(*(v1 + 888));
    *buf = 136315138;
    *&buf[4] = v270;
    _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "#I [d] Stewie internet interface: %s", buf, 0xCu);
  }

  v271 = *(v1 + 216);
  if (v271)
  {
    stewie::ConnectionAssistantTargetDataSource::handleDumpState(v271);
  }

  else
  {
    v272 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v272, OS_LOG_TYPE_DEFAULT, "#I [d] TargetDataSource not set", buf, 2u);
    }
  }

  v273 = *(v1 + 328);
  if (v273)
  {
    stewie::ConnectionAssistantGPSDataSource::handleDumpState(v273);
  }

  else
  {
    v274 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v274, OS_LOG_TYPE_DEFAULT, "#I [d] GPSDataSource not set", buf, 2u);
    }
  }
}