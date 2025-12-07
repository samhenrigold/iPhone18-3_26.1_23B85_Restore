void sub_100472AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1004865C4(va);
  sub_1004865C4(va1);
  _Unwind_Resume(a1);
}

const void **sub_100472AD4@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  cf2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ip%d", (*(a1 + 120) + 1));
  if (!cf2)
  {
    return sub_100005978(&cf2);
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
  v25 = NetworkServiceEntity;
  if (!NetworkServiceEntity)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101771918();
    }

    goto LABEL_34;
  }

  values = NetworkServiceEntity;
  v5 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  v23 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017718E4();
    }

    goto LABEL_33;
  }

  v6 = SCDynamicStoreCopyMultiple(0, 0, v5);
  theDict = v6;
  if (!v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017718B0();
    }

    goto LABEL_32;
  }

  Count = CFDictionaryGetCount(v6);
  v8 = Count;
  if (Count < 1)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Found no interfaces", buf, 2u);
    }

    goto LABEL_32;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *buf = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  if (Count < 0x11)
  {
    Typed = buf;
    v10 = v27;
  }

  else
  {
    Typed = CFAllocatorAllocateTyped();
    v10 = CFAllocatorAllocateTyped();
  }

  CFDictionaryGetKeysAndValues(theDict, Typed, v10);
  ptr = Typed;
  v12 = 0;
  while (1)
  {
    v13 = CFGetTypeID(v10[v12]);
    if (v13 != CFDictionaryGetTypeID())
    {
      goto LABEL_25;
    }

    Value = CFDictionaryGetValue(v10[v12], kSCPropNetInterfaceType);
    if (!Value)
    {
      goto LABEL_25;
    }

    if (!CFEqual(Value, @"com.apple.CommCenter"))
    {
      goto LABEL_25;
    }

    v15 = CFDictionaryGetValue(v10[v12], kSCPropNetInterfaceDeviceName);
    if (!v15 || !CFEqual(v15, cf2))
    {
      goto LABEL_25;
    }

    theArray = 0;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, ptr[v12], @"/");
    theArray = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings)
    {
      break;
    }

    sub_100010250(&theArray);
LABEL_25:
    if (v8 == ++v12)
    {
      goto LABEL_26;
    }
  }

  if (CFArrayGetCount(ArrayBySeparatingStrings) == 5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 3);
    sub_10021D11C(a2, &ValueAtIndex);
  }

  sub_100010250(&theArray);
LABEL_26:
  if (!*a2)
  {
    v19 = theDict;
    if (theDict)
    {
      CFRetain(theDict);
    }

    sub_100472F48(a1, "serviceID: if dict: ", &v19);
    sub_10001021C(&v19);
  }

  if (ptr != buf)
  {
    CFAllocatorDeallocate(kCFAllocatorDefault, ptr);
    CFAllocatorDeallocate(kCFAllocatorDefault, v10);
  }

LABEL_32:
  sub_10001021C(&theDict);
LABEL_33:
  sub_100010250(&v23);
LABEL_34:
  sub_100005978(&v25);
  return sub_100005978(&cf2);
}

void sub_100472EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va4, a9);
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v13 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v15 = va_arg(va3, const void *);
  v17 = va_arg(va3, void);
  va_copy(va4, va3);
  v18 = va_arg(va4, const void *);
  sub_100010250(va);
  sub_10001021C(va1);
  sub_100010250(va2);
  sub_100005978(va3);
  sub_100005978(va4);
  sub_100005978(v9);
  _Unwind_Resume(a1);
}

void sub_100472F48(uint64_t a1, const char *a2, const __CFDictionary **a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = "";
  }

  v5 = *a3;
  if (!*a3)
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v12 = v4;
    v9 = "#I %s: {null};";
    goto LABEL_11;
  }

  context = a1;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: {", buf, 0xCu);
    v5 = *a3;
  }

  CFDictionaryApplyFunction(v5, sub_100486C7C, &context);
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = v4;
    v9 = "#I }; <<== %s";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
  }
}

void sub_1004730B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_100473238(a1, &v14);
  if (v14)
  {
    v4 = v15;
    *a2 = v14;
    a2[1] = v4;
    v14 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (!v11)
  {
    std::mutex::unlock(v6);
    goto LABEL_11;
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
      sub_100004A34(v12);
LABEL_11:
      *a2 = 0;
      a2[1] = 0;
      goto LABEL_15;
    }
  }

  else
  {
    std::mutex::unlock(v6);
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  (*(*v13 + 64))(v13, *(a1 + 120));
  if (v12)
  {
    sub_100004A34(v12);
  }

LABEL_15:
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_100473208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100473238(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 768);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 760);
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    sub_100004A34(v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1004732EC(uint64_t a1@<X0>, uint64_t a2@<X1>, CIPFamily *a3@<X8>)
{
  v5 = *(a1 + 768);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7 || (v8 = *(a1 + 760)) == 0)
  {
LABEL_6:
    CIPFamily::CIPFamily(a3);
    if (!v7)
    {
      return;
    }

    goto LABEL_7;
  }

  (*(*v8 + 48))(v8, a2);
LABEL_7:

  sub_100004A34(v7);
}

uint64_t sub_1004733BC(uint64_t a1)
{
  v2 = *(a1 + 768);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 760);
  if (v5)
  {
    v6 = (*(*v5 + 104))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_100473450(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Writing Service Entry after SCDynamicStore restart at object: %p", &v3, 0xCu);
  }

  sub_1004734F4(a1);
}

void sub_1004734F4(uint64_t a1)
{
  sub_100004AA0(&v2 + 1, (a1 + 8));
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100473608(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I revive: trying to reset important stuff", buf, 2u);
  }

  if (!*(a1 + 792))
  {
    v18 = 0;
    sub_100473880(a1, &v18);
    sub_100005978(&v18);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100473998;
    aBlock[3] = &unk_101E4E8A8;
    aBlock[4] = a1;
    v3 = _Block_copy(aBlock);
    Registry::getTimerService(buf, *(a1 + 48));
    v4 = *buf;
    sub_10000501C(__p, "ConfigdRestartTimeout");
    v5 = *(a1 + 24);
    object = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    if (v3)
    {
      v6 = _Block_copy(v3);
    }

    else
    {
      v6 = 0;
    }

    v10 = v6;
    sub_100D23364(v4, __p, 0, 5000000, &object, &v10);
    v7 = v16;
    v16 = 0;
    v8 = *(a1 + 792);
    *(a1 + 792) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v16;
      v16 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (v10)
    {
      _Block_release(v10);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      sub_100004A34(v15);
    }

    if (v3)
    {
      _Block_release(v3);
    }
  }
}

void sub_100473808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, dispatch_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_100473880(void *a1, const void **a2)
{
  v4 = *a2;
  v6 = (a1 + 16);
  result = a1[16];
  if (v4)
  {
    if (result && CFEqual(result, v4))
    {
      return 0;
    }

LABEL_6:
    sub_100222570(v6, a2);
    v7[0] = 0;
    v7[1] = 0;
    sub_100004AA0(v7, a1 + 1);
    operator new();
  }

  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_100473998(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[99];
  if (v2)
  {
    v1[99] = 0;
    (*(*v2 + 8))(v2);
  }

  if (!v1[10])
  {
    sub_100473C84(v1);
    sub_100473D14(v1);
  }

  sub_100473DEC(v1, &v5);
  sub_100005978(&v5);
  v4 = 0;
  v3 = v1;
  sub_100004AA0(&v3 + 1, v1 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  operator new();
}

void sub_100473C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  sub_10001021C(&a11);
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_100473C84(void *a1)
{
  v4.version = 0;
  v4.info = a1;
  memset(&v4.retain, 0, 24);
  v2 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:SCDisconnectCallBack", 0, &v4);
  v3 = a1[10];
  a1[10] = v2;
  v5 = v3;
  sub_10048662C(&v5);
  if (!a1[10] && os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177194C();
  }
}

void sub_100473D14(uint64_t a1)
{
  v2 = SCDynamicStoreSetDisconnectCallBack();
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Disconnect Callback for Dynamic Store registered successfully!", v4, 2u);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101771980();
  }

  if (SCDynamicStoreSetDispatchQueue(*(a1 + 80), *(a1 + 24)) != 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017719B4();
  }
}

const void **sub_100473DEC@<X0>(void *a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  sub_100472AD4(a1, a2);
  sub_10005C7A4(&v5, a2);
  sub_100473880(a1, &v5);
  return sub_100005978(&v5);
}

void sub_100473E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  sub_100005978(v3);
  _Unwind_Resume(a1);
}

void sub_100473E5C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 680);
  sub_100004AA0(&v6 + 1, (a1 + 8));
  v7 = a2;
  sub_1000224C8(v8, a3);
  v8[8] = v5;
  operator new();
}

void sub_100473F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100473FBC(uint64_t a1, uint64_t *a2, uint64_t a3, const void **a4, CSIPacketAddress **a5)
{
  v7 = a3;
  v10 = *a4;
  v11 = *(a1 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I notifySystemConfigOfSettings: family %s", buf, 0xCu);
    }

    sub_100010024(&v62, a4);
    sub_100472F48(a1, "notifySystemConfigOfSettings: ip dict: special dict", &v62);
    sub_10001021C(&v62);
  }

  else if (v12)
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I notifySystemConfigOfSettings for %s", buf, 0xCu);
  }

  serviceID = 0;
  sub_100473DEC(a1, &serviceID);
  if (serviceID)
  {
    keysToSet = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!keysToSet)
    {
      v18 = 0;
LABEL_72:
      sub_1000296E0(&keysToSet);
      goto LABEL_73;
    }

    value = 0;
    theDict = 0;
    v13 = *a4;
    if (v7 == 1)
    {
      if (v13)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13);
        v15 = theDict;
        theDict = MutableCopy;
        *buf = v15;
        v16 = sub_1000296E0(buf);
LABEL_23:
        if (capabilities::ct::supportsGemini(v16))
        {
          *buf = 0uLL;
          sub_10047DFB8(a1, buf);
          v29 = *(a1 + 120);
          v30 = subscriber::simSlotAsInstance();
          v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cellular WAN: pdp_ip%d: SIM %u", v29, v30);
          v32 = value;
          value = v31;
          v63 = v32;
          sub_100005978(&v63);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }
        }

        else
        {
          v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cellular WAN: pdp_ip%d", *(a1 + 120));
          v34 = value;
          value = v33;
          *buf = v34;
          sub_100005978(buf);
        }

        v28 = &kSCEntNetIPv4;
        goto LABEL_28;
      }

      sub_10048001C(a1, &v63);
      *buf = theDict;
      theDict = v63;
      v63 = 0;
      sub_1000296E0(buf);
      v16 = sub_1000296E0(&v63);
      if (theDict)
      {
        goto LABEL_23;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771A84();
      }

      goto LABEL_51;
    }

    if (v13)
    {
      v19 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13);
      v20 = theDict;
      theDict = v19;
      *buf = v20;
      v21 = sub_1000296E0(buf);
    }

    else
    {
      v40 = *(a1 + 88);
      if (!v40)
      {
        v44 = *(a1 + 40);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#N IPv6 dictionary for SC is not ready yet, bailing out", buf, 2u);
        }

        goto LABEL_51;
      }

      v41 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v40);
      v42 = theDict;
      theDict = v41;
      *buf = v42;
      v21 = sub_1000296E0(buf);
      if (!theDict)
      {
LABEL_51:
        v18 = 0;
LABEL_71:
        sub_100005978(&value);
        sub_1000296E0(&theDict);
        goto LABEL_72;
      }
    }

    if (capabilities::ct::supportsGemini(v21))
    {
      *buf = 0uLL;
      sub_10047DFB8(a1, buf);
      v22 = *(a1 + 120);
      v23 = subscriber::simSlotAsInstance();
      v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cellular WAN: pdp_ip%d: SIM %u: ipv6", v22, v23);
      v25 = value;
      value = v24;
      v63 = v25;
      sub_100005978(&v63);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    else
    {
      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cellular WAN: pdp_ip%d: ipv6", *(a1 + 120));
      v27 = value;
      value = v26;
      *buf = v27;
      sub_100005978(buf);
    }

    v28 = &kSCEntNetIPv6;
LABEL_28:
    v35 = *v28;
    if (theDict && value)
    {
      CFDictionarySetValue(theDict, @"NetworkSignature", value);
    }

    v63 = 0;
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, v35);
    v63 = NetworkServiceEntity;
    if (!NetworkServiceEntity)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771A50();
      }

      v18 = 0;
      goto LABEL_70;
    }

    CFDictionarySetValue(keysToSet, NetworkServiceEntity, theDict);
    v37 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:notifySystemConfigOfSettings", 0, 0);
    store = v37;
    if (!v37)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771A1C();
      }

      goto LABEL_68;
    }

    if (*a4)
    {
      goto LABEL_34;
    }

    if (v7 == 1)
    {
      v43 = 296;
    }

    else
    {
      if (v7 != 2)
      {
        v49 = *(a1 + 40);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#E no IP model available: family=%u", buf, 8u);
        }

        goto LABEL_68;
      }

      v43 = 488;
    }

    v45 = *a2;
    v46 = a2[1];
    v55[0] = v45;
    v55[1] = v46;
    v56 = 0;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = serviceID;
    v54 = v37;
    CFRetain(v37);
    sub_10047ADAC(a1, v55, a1 + v43, a5, v47, &v54, &v56);
    sub_10048662C(&v54);
    if (v46)
    {
      sub_100004A34(v46);
    }

    if (v56)
    {
      v48 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, kSCEntNetDNS);
      *buf = v48;
      if (v48)
      {
        CFDictionarySetValue(keysToSet, v48, v56);
        sub_100005978(buf);
        sub_10001021C(&v56);
LABEL_34:
        sub_100010180(&v53, &keysToSet);
        sub_100472F48(a1, "notifySystemConfigOfSettings: ip dict", &v53);
        sub_10001021C(&v53);
        v38 = SCDynamicStoreSetMultiple(store, keysToSet, 0, 0);
        v18 = v38 != 0;
        v39 = *(a1 + 40);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v38 != 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I SCDynamicStoreSetMultiple() result %u", buf, 8u);
        }

        goto LABEL_69;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017719E8();
      }

      sub_100005978(buf);
    }

    else
    {
      v50 = *(a1 + 40);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = asString();
        *buf = 136315138;
        *&buf[4] = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#E Failed to create SCD Dict for DNS for %s, bailing out", buf, 0xCu);
      }
    }

    sub_10001021C(&v56);
LABEL_68:
    v18 = 0;
LABEL_69:
    sub_10048662C(&store);
LABEL_70:
    sub_100005978(&v63);
    goto LABEL_71;
  }

  v17 = *(a1 + 40);
  v18 = 0;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N not setting IP address or DNS", buf, 2u);
    v18 = 0;
  }

LABEL_73:
  sub_100005978(&serviceID);
  return v18;
}

void sub_100474730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va6, a13);
  va_start(va5, a13);
  va_start(va4, a13);
  va_start(va3, a13);
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v16 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v18 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v20 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v22 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v24 = va_arg(va6, const void *);
  v26 = va_arg(va6, void);
  sub_10001021C(va);
  sub_10048662C(va1);
  sub_100005978(va6);
  sub_100005978(va2);
  sub_1000296E0(va3);
  sub_1000296E0(va4);
  sub_100005978(va5);
  _Unwind_Resume(a1);
}

uint64_t sub_100474838(uint64_t a1, void *a2, NSObject **a3, NSObject **a4, NSObject **a5, uint64_t a6)
{
  v6 = a6;
  PDPManagerInterface::PDPManagerInterface(a1);
  if (v6 > 9)
  {
    v12 = "DATA.pkt:N:";
  }

  else
  {
    v12 = off_101E4EEA8[v6];
  }

  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, v12);
  sub_100474B34((a1 + 8), a3, &v23);
  ctu::OsLogContext::~OsLogContext(&v23);
  *a1 = off_101E4E8D8;
  v13 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a4;
  *(a1 + 64) = *a4;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *a5;
  *(a1 + 72) = *a5;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = v6;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 140) = 257;
  *(a1 + 144) = 850045863;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 850045863;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 276) = 0u;
  v16 = *a3;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = sub_100474BC0(v6, 1);
  sub_100485900(a1 + 296, &object, v17);
  if (object)
  {
    dispatch_release(object);
  }

  v18 = *a3;
  v21 = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v19 = sub_100474BC0(v6, 2);
  sub_100485900(a1 + 488, &v21, v19);
  if (v21)
  {
    dispatch_release(v21);
  }

  *(a1 + 680) = 0xFFFFFFFF00000000;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = a1 + 744;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 1450;
  *(a1 + 780) = 0;
  *(a1 + 782) = 0;
  *(a1 + 800) = 0;
  *(a1 + 784) = 0u;
  return a1;
}

void sub_100474A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, char a11)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_100485A6C((v12 + 27));
  std::mutex::~mutex(v17);
  std::mutex::~mutex(v16);
  sub_100005978(v15);
  sub_100010250(v14);
  sub_100010250(v12 + 3);
  sub_10001021C(v13);
  sub_10001021C(v12 + 1);
  sub_10048662C(v12);
  v19 = v11[9];
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = v11[8];
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = v11[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v11 + 5));
  sub_1000C0544(v11 + 1);
  PDPManagerInterface::~PDPManagerInterface(v11);
  _Unwind_Resume(a1);
}

void *sub_100474B34(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100474B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

const char *sub_100474BC0(unsigned int a1, int a2)
{
  v2 = "DATA.pkt:N:m6:";
  if (a2 == 1)
  {
    v2 = "DATA.pkt:N:m4:";
  }

  if (a1 <= 9)
  {
    v3 = off_101E4EF48;
    if (a2 == 1)
    {
      v3 = off_101E4EEF8;
    }

    return v3[a1];
  }

  return v2;
}

void sub_100474C04(uint64_t a1)
{
  *a1 = off_101E4E8D8;
  v2 = *(a1 + 792);
  *(a1 + 792) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 768);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_10006DCAC(a1 + 736, *(a1 + 744));
  sub_10048662C((a1 + 728));
  sub_10048662C((a1 + 720));
  sub_1004873AC((a1 + 704), 0);
  sub_1004873AC((a1 + 688), 0);
  sub_100485A6C(a1 + 488);
  sub_100485A6C(a1 + 296);
  std::mutex::~mutex((a1 + 208));
  std::mutex::~mutex((a1 + 144));
  sub_100005978((a1 + 128));
  sub_100010250((a1 + 112));
  sub_100010250((a1 + 104));
  sub_10001021C((a1 + 96));
  sub_10001021C((a1 + 88));
  sub_10048662C((a1 + 80));
  v5 = *(a1 + 72);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  PDPManagerInterface::~PDPManagerInterface(a1);
}

void sub_100474D7C(uint64_t a1)
{
  sub_100474C04(a1);

  operator delete();
}

void sub_100474DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received the disconnect callback on SCDynamicStore restart at object: %p", &v4, 0xCu);
  }

  sub_100473450(a2);
}

void sub_100474E58(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 760) = v2;
  v4 = *(a1 + 768);
  *(a1 + 768) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_100474E88(uint64_t a1)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v2 = atomic_load((a1 + 800));
    if ((v2 & 1) == 0)
    {
      atomic_store(sub_100475010(a1, 1), (a1 + 800));
      v3 = *(a1 + 768);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        v5 = v4;
        if (v4 && *(a1 + 760))
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          v6[0] = 0;
          v6[1] = 0;
          sub_100004AA0(v6, (a1 + 8));
          operator new();
        }
      }

      else
      {
        v5 = 0;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771AB8();
      }

      if (v5)
      {
        sub_100004A34(v5);
      }
    }
  }
}

uint64_t sub_100475010(uint64_t a1, int a2)
{
  if (!capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    return 1;
  }

  sub_100475354(a1, 0, 2);
  v4 = 1;
  sub_100475354(a1, 0, 1);
  if (a2)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    v19 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
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
        if (!v13)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
LABEL_9:
      v15 = 1;
      if (v14)
      {
        return sub_100475354(a1, 1, v15);
      }

      goto LABEL_22;
    }

LABEL_14:
    LODWORD(v15) = (*(*v13 + 808))(v13);
    v16 = *(a1 + 56);
    v19 = *(a1 + 48);
    v20 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    isValidSimSlot = subscriber::isValidSimSlot();
    if (v20)
    {
      sub_100004A34(v20);
    }

    if (isValidSimSlot)
    {
      v15 = v15;
    }

    else
    {
      v15 = 1;
    }

    if (v14)
    {
      return sub_100475354(a1, 1, v15);
    }

LABEL_22:
    sub_100004A34(v12);
    return sub_100475354(a1, 1, v15);
  }

  return v4;
}

void sub_1004751C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004751F0(uint64_t a1)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v2 = atomic_load((a1 + 800));
    if (v2)
    {
      sub_100475010(a1, 0);
      atomic_store(0, (a1 + 800));
      v3 = *(a1 + 768);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        v5 = v4;
        if (v4 && *(a1 + 760))
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          v6[0] = 0;
          v6[1] = 0;
          sub_100004AA0(v6, (a1 + 8));
          operator new();
        }
      }

      else
      {
        v5 = 0;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771AB8();
      }

      if (v5)
      {
        sub_100004A34(v5);
      }
    }
  }
}

uint64_t sub_100475354(capabilities::ct *a1, char a2, uint64_t a3)
{
  if (!capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    return 1;
  }

  v15 = 0u;
  v16 = 0u;
  BYTE8(v16) = a2;
  LODWORD(v16) = *(a1 + 30);
  DWORD1(v16) = -1;
  v17 = 0;
  if (v16)
  {
    v5 = "__OtherInitial__";
  }

  else
  {
    v5 = "__Internet__";
  }

  *(&v15 + 1) = v5;
  v6 = subscriber::simSlotAsInstance();
  LODWORD(v15) = v6 + 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  ApplePDPHelperInterface::getInstance(v6);
  v7 = 1;
  v8 = ApplePDPHelperInterface::setRATConfig();
  Instance = ApplePDPHelperInterface::getInstance(v8);
  v10 = (*(*Instance + 56))(Instance, &v15, v13);
  if ((v10 & 1) == 0)
  {
    v11 = ApplePDPHelperInterface::getInstance(v10);
    return (*(*v11 + 56))(v11, &v15, v13);
  }

  return v7;
}

void sub_100475480(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPManager: starting ...", buf, 2u);
  }

  sub_100475634(a1, 0);
  sub_1004730B0(a1, &v5);
  sub_1004757F8(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100473D14(a1);
  *&buf[8] = 0;
  v4 = 0;
  *buf = a1;
  sub_100004AA0(&buf[8], (a1 + 8));
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  operator new();
}

void sub_1004755E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000FF50(va);
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(a1);
}

void sub_100475634(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 120;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  if (CSIPDPManager::getInterfaceNameById())
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    v19 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
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
        if (!v13)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
LABEL_8:
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771B64();
      }

      goto LABEL_15;
    }

LABEL_14:
    (*(*v13 + 24))(v13, __p, a2);
LABEL_15:
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    goto LABEL_17;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_101771AEC(v4, v15, v16);
  }

LABEL_17:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004757C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004757F8(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v14[0] = *a2;
  v14[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_10047F118(a1, v14, a1 + 296);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_10047F118(a1, v13, a1 + 488);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(a1 + 433) == 1)
  {
    v8 = *(a1 + 432);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::lock((a1 + 144));
  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  *(a1 + 776) = v9;
  if ((v8 & 1) != 0 && v9 >= 0x4ED)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I computeMTU_sync: adjusted for XLAT464", buf, 2u);
    }

    *(a1 + 776) = 1260;
  }

  std::mutex::unlock((a1 + 144));
  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 776);
    *buf = 67109120;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I computeMTU_sync: MTU = %u", buf, 8u);
  }
}

void sub_100475998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004759B4(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPManager: shutting down", v5, 2u);
  }

  if (a1[10])
  {
    SCDynamicStoreSetDisconnectCallBack();
    v3 = a1[10];
    a1[10] = 0;
    v6 = v3;
    sub_10048662C(&v6);
  }

  (*(*a1 + 80))(a1, 1);
  return (*(*a1 + 80))(a1, 2);
}

void sub_100475A94(uint64_t a1@<X0>, int a2@<W1>, CSIPacketAddress *a3@<X8>)
{
  if (a2 == 1)
  {
    v5 = 296;
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_7;
    }

    v5 = 488;
  }

  v6 = a1 + v5;
  if (*(v6 + 116) == 4)
  {
    CSIPacketAddress::CSIPacketAddress(a3, (v6 + 40));
    return;
  }

LABEL_7:
  CSIPacketAddress::CSIPacketAddress(a3);
}

void sub_100475AD4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  memset(&__p, 0, sizeof(__p));
  va_copy(v13, va);
  vsnprintf(__str, 0x100uLL, a3, va);
  sub_100016890(&__p, __str);
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    v15 = p_p;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %{public}s", buf, 0xCu);
  }

  if (a2)
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 152) = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
  }

  sub_100475C48(a1, a2, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100475C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100475C48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    if (a3 == 1)
    {
      v6 = *(a2 + 184);
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      if (v6)
      {
        sub_100004A34(v6);
      }
    }

    v7 = *(a2 + 116);
    if (v7 != a3)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (v7 > 4)
        {
          v9 = "???";
        }

        else
        {
          v9 = off_101E4EFE8[v7];
        }

        if (a3 > 4)
        {
          v10 = "???";
        }

        else
        {
          v10 = off_101E4EFE8[a3];
        }

        *v24 = 136315650;
        *&v24[4] = v9;
        v25 = 2080;
        v26 = v10;
        v27 = 2080;
        v28 = asString();
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s->%s (change states) (%s)", v24, 0x20u);
      }

      *(a2 + 116) = a3;
      if (a3 == 4)
      {
        ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
        *v24 = v13;
        v17 = sub_100009510(&v12[1].__m_.__sig, v24);
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
            if (!v19)
            {
              goto LABEL_26;
            }

            goto LABEL_24;
          }
        }

        else
        {
          v19 = 0;
        }

        std::mutex::unlock(v12);
        v18 = 0;
        v20 = 1;
        if (!v19)
        {
LABEL_26:
          if ((v20 & 1) == 0)
          {
            sub_100004A34(v18);
          }

          if (*(a2 + 116) == 4)
          {
            v22 = a1 + 296;
            if (a1 + 296 == a2)
            {
              v22 = a1 + 488;
            }

            if (*(v22 + 116) != 4)
            {
              v23 = *(a1 + 40);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *v24 = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I online: writing current apn info", v24, 2u);
              }

              *v24 = *(a1 + 680);
              sub_1004802B4(a1, v24);
            }
          }

          return;
        }

LABEL_24:
        v21 = (*(*v19 + 904))(v19);
        if (v21)
        {
          (*(*v21 + 160))(v21);
        }

        goto LABEL_26;
      }
    }
  }
}

void sub_100475F08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100475F38(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100476044;
  v3[3] = &unk_101E4E9F0;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100487A44;
  block[3] = &unk_101E4ED90;
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

void sub_100476050(uint64_t a1, char a2)
{
  v85 = 0;
  v86 = 0uLL;
  v83 = 0;
  v84 = 0uLL;
  cf = 0;
  sub_100473DEC(a1, &v81);
  sub_100005978(&v81);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 112);
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Run into ipv4ServiceChanged, fIPv4Addresses value is %p", buf, 0xCu);
  }

  if (!*(a1 + 704))
  {
    v20 = *(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v21 = "#I Got ipv4ServiceChanged without valid fIPv4Service, bailing out";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    goto LABEL_21;
  }

  v6 = IPConfigurationServiceCopyInformation();
  v7 = cf;
  cf = v6;
  *buf = v7;
  sub_10001021C(buf);
  if (!cf)
  {
    v24 = *(a1 + 40);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v25 = "#I Get IPv4Service Information Failed: serviceInfo is empty";
    goto LABEL_31;
  }

  v8 = CFGetTypeID(cf);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Get IPv4Service Information Type: %lu", buf, 0xCu);
  }

  v10 = cf;
  TypeID = CFDictionaryGetTypeID();
  if (!v10 || CFGetTypeID(v10) != TypeID)
  {
    v24 = *(a1 + 40);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v25 = "#I Get IPv4Service Information Failed. Maybe configd restarted, ignore";
LABEL_31:
    v26 = v24;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(cf, kSCEntNetIPv4);
  v13 = Value;
  if (!Value || (v14 = CFGetTypeID(Value), v14 != CFDictionaryGetTypeID()))
  {
    v20 = *(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v21 = "#I No kSCEntNetIPv4 key in IPv4Service Information";
    goto LABEL_20;
  }

  sub_100010024(&v80, (a1 + 96));
  sub_100472F48(a1, "IPv4Service: ip dict: old dictionary", &v80);
  sub_10001021C(&v80);
  v79 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_100472F48(a1, "IPv4Service: ip dict: new (full) dictionary", &v79);
  sub_10001021C(&v79);
  v15 = *(a1 + 96);
  if (v15 && CFEqual(v15, v13))
  {
    v16 = *(a1 + 40);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v17)
      {
        *buf = 0;
        v18 = "#I ipv4ToBeUpdated is true due to refresh";
        v19 = v16;
LABEL_42:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (!v17)
    {
      goto LABEL_33;
    }

    *buf = 0;
    v25 = "#I Nothing is changed for IPv4Service Information";
    v26 = v16;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
    goto LABEL_33;
  }

  v27 = *(a1 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v18 = "#I New fIPv4SCDict to be set";
    v19 = v27;
    goto LABEL_42;
  }

LABEL_43:
  v28 = CFDictionaryGetValue(v13, kSCPropNetIPv4Addresses);
  v29 = v28;
  if (!v28 || (v30 = CFGetTypeID(v28), v30 != CFArrayGetTypeID()))
  {
    v20 = *(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v21 = "#I No kSCPropNetIPv4Addresses array in IPv4Service Info";
    goto LABEL_20;
  }

  __p[0] = 0;
  __p[1] = 0;
  v78 = 0;
  CSIPDPManager::getInterfaceNameById();
  Count = CFArrayGetCount(v29);
  if (Count >= 1)
  {
    v32 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v29, v32);
      if (ValueAtIndex)
      {
        v34 = CFGetTypeID(ValueAtIndex);
        if (v34 == CFStringGetTypeID())
        {
          break;
        }
      }

      if (Count == ++v32)
      {
        goto LABEL_65;
      }
    }

    memset(v88, 0, 24);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *v88 = *buf;
    *&v88[16] = *&buf[16];
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v35 = *buf;
    v87[0] = *&buf[8];
    *(v87 + 7) = *&buf[15];
    v36 = buf[23];
    if (SHIBYTE(v86) < 0)
    {
      operator delete(v85);
    }

    v85 = v35;
    *&v86 = v87[0];
    *(&v86 + 7) = *(v87 + 7);
    HIBYTE(v86) = v36;
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = __p;
      if (v78 < 0)
      {
        v38 = __p[0];
      }

      v39 = v88;
      if ((v88[23] & 0x80u) != 0)
      {
        v39 = *v88;
      }

      *buf = 136315394;
      *&buf[4] = v38;
      *&buf[12] = 2080;
      *&buf[14] = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: IPv4iface:%s: Found ipv4 address %s from IPv4Service Info", buf, 0x16u);
    }

    if (v88[23] < 0)
    {
      operator delete(*v88);
    }
  }

LABEL_65:
  if (v86 >= 0)
  {
    v40 = HIBYTE(v86);
  }

  else
  {
    v40 = v86;
  }

  if (v40)
  {
    v41 = CFDictionaryGetValue(v13, kSCPropNetIPv4Router);
    if (v41)
    {
      v42 = CFGetTypeID(v41);
      if (v42 == CFStringGetTypeID())
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v43 = *buf;
        *v88 = *&buf[8];
        *&v88[7] = *&buf[15];
        v44 = buf[23];
        if (SHIBYTE(v84) < 0)
        {
          operator delete(v83);
        }

        v83 = v43;
        *&v84 = *v88;
        *(&v84 + 7) = *&v88[7];
        HIBYTE(v84) = v44;
        v45 = *(a1 + 40);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = &v83;
          if (v44 < 0)
          {
            v46 = v43;
          }

          *buf = 136315138;
          *&buf[4] = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Use %s as Router in IPv4Service Information (received from network)", buf, 0xCu);
        }
      }
    }

    *buf = v13;
    sub_1002A2218((a1 + 96), buf);
    sub_100010024(&v76, (a1 + 96));
    sub_100472F48(a1, "IPv4Service: ip dict: fIPv4SCDict", &v76);
    sub_10001021C(&v76);
    v47 = *(a1 + 40);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 112);
      *buf = 134217984;
      *&buf[4] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I ipv4ServiceChanged succeeded, old fIPv4Addresses value is %p", buf, 0xCu);
    }

    v49 = *(a1 + 112);
    if (!v49 || !CFEqual(v49, v29))
    {
      *buf = v29;
      sub_10044A870((a1 + 112), buf);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101771B98();
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p[0]);
  }

  if (v40)
  {
    v50 = *(a1 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: publishing IPv4:", buf, 2u);
    }

    sub_100473238(a1, &v74);
    v73 = 0;
    v51 = sub_100473FBC(a1, &v74, 1, &v73, (a1 + 552));
    sub_10001021C(&v73);
    if (v75)
    {
      sub_100004A34(v75);
    }

    v52 = *(a1 + 40);
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
    if (v51)
    {
      if (!v53)
      {
        goto LABEL_97;
      }

      *buf = 0;
      v54 = "#I IPv4Service: publishing IPv4: success";
    }

    else
    {
      if (!v53)
      {
        goto LABEL_97;
      }

      *buf = 0;
      v54 = "#N IPv4Service: publishing IPv4: failure";
    }

    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v54, buf, 2u);
LABEL_97:
    v55 = *(a1 + 40);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I IPv4Service onlineSuccess", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    v56 = *(a1 + 40);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      if (v78 >= 0)
      {
        v57 = __p;
      }

      else
      {
        v57 = __p[0];
      }

      v58 = &v83;
      if (v84 < 0)
      {
        v58 = v83;
      }

      *v88 = 136315394;
      *&v88[4] = v57;
      *&v88[12] = 2080;
      *&v88[14] = v58;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: online for IPv4 with IP address %s, router %s", v88, 0x16u);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v59 = *(a1 + 360);
    for (i = *(a1 + 368); v59 != i; v59 += 24)
    {
      v61 = *(a1 + 40);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        CSIPacketAddress::operator std::string();
        v62 = v78 >= 0 ? __p : __p[0];
        *v88 = 136446210;
        *&v88[4] = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I fDns:  %{public}s", v88, 0xCu);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (*(a1 + 412) != 4)
    {
      sub_100475C48(a1, a1 + 296, 4u);
    }

    v63 = *(a1 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I IPv4ServiceUp to be fired", __p, 2u);
    }

    v64 = *(a1 + 768);
    if (v64)
    {
      v65 = std::__shared_weak_count::lock(v64);
      if (v65)
      {
        v66 = *(a1 + 760);
        if (v66)
        {
          (*(*v66 + 24))(v66, buf);
LABEL_127:
          sub_100004A34(v65);
LABEL_128:
          v67 = *(a1 + 472);
          if (v67)
          {
            goto LABEL_129;
          }

          v67 = *(a1 + 664);
          if (v67)
          {
            v69 = *(a1 + 672);
            if (v69)
            {
              atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
            }

            v70 = *(a1 + 480);
            *(a1 + 472) = v67;
            *(a1 + 480) = v69;
            if (!v70 || (sub_100004A34(v70), (v67 = *(a1 + 472)) != 0))
            {
LABEL_129:
              v68 = *(a1 + 480);
              v71 = v67;
              v72 = v68;
              if (v68)
              {
                atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              memset(buf, 0, sizeof(buf));
              (*(*a1 + 168))(a1, &v71, buf);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v72)
              {
                sub_100004A34(v72);
              }
            }
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      v65 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101771BCC();
    }

    if (!v65)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_21:
  v22 = *(a1 + 96);
  *(a1 + 96) = 0;
  *buf = v22;
  sub_10001021C(buf);
  sub_100478C1C(a1);
  sub_100478DF8(a1, 1);
  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I IPv4Service NOT onlineSuccess", buf, 2u);
  }

  sub_10000501C(__p, "0.0.0.0");
  CSIPacketAddress::CSIPacketAddress();
  CSIPacketAddress::operator=();
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 368) = *(a1 + 360);
  if (*(a1 + 412) != 1)
  {
    sub_100475C48(a1, a1 + 296, 1u);
  }

LABEL_33:
  sub_10001021C(&cf);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }
}

void sub_100476C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, const void *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_100004A34(v42);
  sub_10001021C(&a30);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void sub_100476DB0(uint64_t a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100476EC0;
  v4[3] = &unk_101E4EA10;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100487A44;
  block[3] = &unk_101E4ED90;
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

void sub_100476ED0(uint64_t a1, char a2)
{
  v163 = 0;
  v164 = 0uLL;
  memset(v162, 0, 24);
  cf = 0;
  v161 = 0;
  sub_100473DEC(a1, &v159);
  sub_100005978(&v159);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 104);
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Run into ipv6ServiceChanged, fIPv6Addresses value is %{public}@", buf, 0xCu);
  }

  if (!*(a1 + 688))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "#I Got ipv6ServiceChanged without valid fIPv6Service, bailing out";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  v6 = IPConfigurationServiceCopyInformation();
  v7 = cf;
  cf = v6;
  *buf = v7;
  sub_10001021C(buf);
  if (!cf)
  {
    v15 = *(a1 + 40);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v10 = "#I Get IPv6Service Information Failed: serviceInfo is empty";
    v11 = v15;
    v12 = 2;
    goto LABEL_11;
  }

  v8 = CFGetTypeID(cf);
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    v10 = "#I Get IPv6Service Information Type: %lu";
    v11 = v9;
    v12 = 12;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
  }

  v16 = cf;
LABEL_13:
  TypeID = CFDictionaryGetTypeID();
  if (v16 && CFGetTypeID(v16) == TypeID)
  {
    cf2 = CFDictionaryGetValue(cf, kSCEntNetIPv6);
    if (cf2)
    {
      v18 = CFGetTypeID(cf2);
      if (v18 == CFDictionaryGetTypeID())
      {
        v19 = (a1 + 88);
        sub_100010024(&v158, (a1 + 88));
        sub_100472F48(a1, "IPv6Service: ip dict: old dictionary", &v158);
        sub_10001021C(&v158);
        v157 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        sub_100472F48(a1, "IPv6Service: ip dict: new (full) dictionary", &v157);
        sub_10001021C(&v157);
        v20 = CFDictionaryGetValue(cf, kSCEntNetIPv4);
        v21 = v20;
        if (v20)
        {
          v22 = CFGetTypeID(v20);
          if (v22 == CFDictionaryGetTypeID())
          {
            *buf = v21;
            sub_1002A2218(&v161, buf);
            v156 = v161;
            if (v161)
            {
              CFRetain(v161);
            }

            sub_100472F48(a1, "IPv6Service - IPv4 info: ip dict", &v156);
            sub_10001021C(&v156);
          }
        }

        if (!*v19)
        {
          v23 = 1;
LABEL_111:
          v129 = CFDictionaryGetValue(cf2, kSCPropNetIPv6Addresses);
          if (v129)
          {
            v55 = CFGetTypeID(v129);
            if (v55 == CFArrayGetTypeID())
            {
              __p = 0uLL;
              v169 = 0;
              CSIPDPManager::getInterfaceNameById();
              Count = CFArrayGetCount(v129);
              if (Count >= 1)
              {
                v130 = 0;
                v57 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v129, v57);
                  if (ValueAtIndex)
                  {
                    v59 = CFGetTypeID(ValueAtIndex);
                    if (v59 == CFStringGetTypeID())
                    {
                      break;
                    }
                  }

LABEL_163:
                  if (Count == ++v57)
                  {
                    goto LABEL_199;
                  }
                }

                v154 = 0uLL;
                v155 = 0;
                memset(buf, 0, 24);
                ctu::cf::assign();
                v154 = *buf;
                v155 = *&buf[16];
                if (buf[23] >= 0)
                {
                  v60 = &v154;
                }

                else
                {
                  v60 = v154;
                }

                memset(&v170[8], 0, 20);
                *v170 = 7708;
                if (inet_pton(30, v60, &v170[8]) == 1)
                {
                  v61 = socket(30, 2, 0);
                  if (v61 < 0)
                  {
                    v75 = *(a1 + 40);
                    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                    {
                      p_p = &__p;
                      if (v169 < 0)
                      {
                        p_p = __p;
                      }

                      *buf = 136315394;
                      *&buf[4] = p_p;
                      *&buf[12] = 2080;
                      *&buf[14] = v60;
                      v73 = v75;
                      v74 = "#I IPv6Service: IPv6iface:%s:sock: %s";
                      goto LABEL_159;
                    }
                  }

                  else
                  {
                    if (v169 >= 0)
                    {
                      v62 = &__p;
                    }

                    else
                    {
                      v62 = __p;
                    }

                    v186 = 0;
                    v184 = 0u;
                    v185 = 0u;
                    v182 = 0u;
                    v183 = 0u;
                    v180 = 0u;
                    v181 = 0u;
                    v178 = 0u;
                    v179 = 0u;
                    v176 = 0u;
                    v177 = 0u;
                    v174 = 0u;
                    v175 = 0u;
                    v172 = 0u;
                    v173 = 0u;
                    *&buf[40] = 0u;
                    strncpy(buf, v62, 0x10uLL);
                    *&buf[16] = *v170;
                    *&buf[28] = *&v170[12];
                    if (ioctl(v61, 0xC1206949uLL, buf) >= 0)
                    {
                      v63 = *&buf[16];
                    }

                    else
                    {
                      v63 = 0;
                    }

                    close(v61);
                    v64 = *(a1 + 40);
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      v65 = &__p;
                      if (v169 < 0)
                      {
                        v65 = __p;
                      }

                      *buf = 136315394;
                      *&buf[4] = v65;
                      *&buf[12] = 1024;
                      *&buf[14] = v63;
                      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: IPv6iface:%s:flags: %x", buf, 0x12u);
                    }

                    if ((v63 & 0x80) == 0)
                    {
                      memset(buf, 0, 24);
                      ctu::cf::assign();
                      v66 = *buf;
                      *v170 = *&buf[8];
                      *&v170[7] = *&buf[15];
                      v67 = buf[23];
                      if (SHIBYTE(v164) < 0)
                      {
                        operator delete(v163);
                      }

                      v163 = v66;
                      *&v164 = *v170;
                      *(&v164 + 7) = *&v170[7];
                      HIBYTE(v164) = v67;
                      v68 = *(a1 + 40);
                      v130 = 0;
                      v19 = (a1 + 88);
                      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                      {
                        v69 = &__p;
                        if (v169 < 0)
                        {
                          v69 = __p;
                        }

                        v70 = &v154;
                        if (v155 < 0)
                        {
                          v70 = v154;
                        }

                        *buf = 136315394;
                        *&buf[4] = v69;
                        *&buf[12] = 2080;
                        *&buf[14] = v70;
                        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: IPv6iface:%s: Found non temporary address %s, using it", buf, 0x16u);
                        v130 = 0;
                      }

                      goto LABEL_161;
                    }

                    if (v164 >= 0)
                    {
                      v77 = HIBYTE(v164);
                    }

                    else
                    {
                      v77 = v164;
                    }

                    v78 = *(a1 + 40);
                    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
                    if (!v77)
                    {
                      if (v79)
                      {
                        v82 = &__p;
                        if (v169 < 0)
                        {
                          v82 = __p;
                        }

                        v83 = &v154;
                        if (v155 < 0)
                        {
                          v83 = v154;
                        }

                        *buf = 136315394;
                        *&buf[4] = v82;
                        *&buf[12] = 2080;
                        *&buf[14] = v83;
                        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: IPv6iface:%s: Temporary address found first %s", buf, 0x16u);
                      }

                      memset(buf, 0, 24);
                      ctu::cf::assign();
                      v84 = *buf;
                      *v170 = *&buf[8];
                      *&v170[7] = *&buf[15];
                      v85 = buf[23];
                      if (SHIBYTE(v164) < 0)
                      {
                        operator delete(v163);
                      }

                      v163 = v84;
                      *&v164 = *v170;
                      *(&v164 + 7) = *&v170[7];
                      HIBYTE(v164) = v85;
                      v130 = 1;
                      goto LABEL_160;
                    }

                    if (v79)
                    {
                      v80 = &__p;
                      if (v169 < 0)
                      {
                        v80 = __p;
                      }

                      v81 = &v154;
                      if (v155 < 0)
                      {
                        v81 = v154;
                      }

                      *buf = 136315394;
                      *&buf[4] = v80;
                      *&buf[12] = 2080;
                      *&buf[14] = v81;
                      v73 = v78;
                      v74 = "#I IPv6Service: IPv6iface:%s: ignoring temporary address %s";
LABEL_159:
                      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, v74, buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v71 = *(a1 + 40);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    v72 = &__p;
                    if (v169 < 0)
                    {
                      v72 = __p;
                    }

                    *buf = 136315394;
                    *&buf[4] = v72;
                    *&buf[12] = 2080;
                    *&buf[14] = v60;
                    v73 = v71;
                    v74 = "#I IPv6Service: IPv6iface:%s:inet_pton: %s";
                    goto LABEL_159;
                  }
                }

LABEL_160:
                v19 = (a1 + 88);
LABEL_161:
                if (SHIBYTE(v155) < 0)
                {
                  operator delete(v154);
                }

                goto LABEL_163;
              }

              v130 = 0;
LABEL_199:
              if (v164 >= 0)
              {
                v26 = HIBYTE(v164);
              }

              else
              {
                v26 = v164;
              }

              if (v26)
              {
                v90 = CFDictionaryGetValue(cf2, kSCPropNetIPv6PrefixLength);
                v91 = v90;
                if (v90 && (v92 = CFGetTypeID(v90), v92 == CFArrayGetTypeID()) && (v93 = CFArrayGetValueAtIndex(v91, 0), (v94 = v93) != 0))
                {
                  v95 = CFGetTypeID(v93);
                  v29 = 128;
                  if (v95 == CFNumberGetTypeID())
                  {
                    *buf = 128;
                    ctu::cf::assign(buf, v94, v96);
                    v29 = *buf;
                  }
                }

                else
                {
                  v29 = 128;
                }

                v97 = CFDictionaryGetValue(cf2, kSCPropNetIPv6Router);
                if (v97 && (v98 = CFGetTypeID(v97), v98 == CFStringGetTypeID()))
                {
                  *buf = cf2;
                  sub_1002A2218(v19, buf);
                  memset(buf, 0, 24);
                  ctu::cf::assign();
                  v99 = *buf;
                  *v170 = *&buf[8];
                  *&v170[7] = *&buf[15];
                  v100 = buf[23];
                  if (SHIBYTE(v162[2]) < 0)
                  {
                    operator delete(v162[0]);
                  }

                  v162[0] = v99;
                  v162[1] = *v170;
                  *(&v162[1] + 7) = *&v170[7];
                  HIBYTE(v162[2]) = v100;
                  v101 = *(a1 + 40);
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                  {
                    v102 = v162;
                    if (v100 < 0)
                    {
                      v102 = v99;
                    }

                    *buf = 136315138;
                    *&buf[4] = v102;
                    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I Use %s as Router in IPv6Service Information (received from network)", buf, 0xCu);
                  }
                }

                else
                {
                  v154 = 0uLL;
                  v155 = 0;
                  CSIPacketAddress::CSIPacketAddress(&v154);
                  if (*(a1 + 600) == 1 && !CSIPacketAddress::isZeroIP((a1 + 576)))
                  {
                    v105 = *(a1 + 40);
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I No kSCPropNetIPv6Router in IPv6Service Information, use last configured router", buf, 2u);
                    }

                    CSIPacketAddress::operator=();
                  }

                  else
                  {
                    v103 = *(a1 + 40);
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I No kSCPropNetIPv6Router in IPv6Service Information, use first IP Prefix", buf, 2u);
                    }

                    CSIPacketAddress::CSIPacketAddress();
                    CSIPacketAddress::operator=();
                    CSIPacketAddress::applyMaskPrefix(&v154, v29);
                  }

                  CSIPacketAddress::operator std::string();
                  if (SHIBYTE(v162[2]) < 0)
                  {
                    operator delete(v162[0]);
                  }

                  v162[2] = *&buf[16];
                  *v162 = *buf;
                  value = 0;
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    sub_100005F2C(&__dst, v162[0], v162[1]);
                  }

                  else
                  {
                    __dst = *v162;
                    v152 = v162[2];
                  }

                  if (SHIBYTE(v152) < 0)
                  {
                    sub_100005F2C(v170, __dst, *(&__dst + 1));
                  }

                  else
                  {
                    *v170 = __dst;
                    *&v170[16] = v152;
                  }

                  v165 = 0;
                  if (v170[23] < 0)
                  {
                    sub_100005F2C(buf, *v170, *&v170[8]);
                  }

                  else
                  {
                    *buf = *v170;
                    *&buf[16] = *&v170[16];
                  }

                  v166 = 0;
                  if (ctu::cf::convert_copy())
                  {
                    v106 = v165;
                    v165 = v166;
                    v167 = v106;
                    sub_100005978(&v167);
                  }

                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  value = v165;
                  v165 = 0;
                  sub_100005978(&v165);
                  if (v170[23] < 0)
                  {
                    operator delete(*v170);
                  }

                  if (SHIBYTE(v152) < 0)
                  {
                    operator delete(__dst);
                  }

                  v107 = *(a1 + 40);
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                  {
                    CSIPacketAddress::operator std::string();
                    v108 = buf[23] >= 0 ? buf : *buf;
                    *v170 = 136315138;
                    *&v170[4] = v108;
                    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I Use %s as Router in IPv6Service Information (constructed)", v170, 0xCu);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  *v170 = 0;
                  *v170 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, cf2);
                  CFDictionarySetValue(*v170, kSCPropNetIPv6Router, value);
                  sub_100010180(&v167, v170);
                  if (v19 != &v167)
                  {
                    *buf = *v19;
                    *v19 = v167;
                    v167 = 0;
                    sub_10001021C(buf);
                  }

                  sub_10001021C(&v167);
                  sub_1000296E0(v170);
                  sub_100005978(&value);
                }

                sub_100010024(&v150, (a1 + 88));
                sub_100472F48(a1, "IPv6Service: ip dict: fIPv6SCDict", &v150);
                sub_10001021C(&v150);
                v109 = *(a1 + 40);
                if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                {
                  v110 = *(a1 + 104);
                  *buf = 138543362;
                  *&buf[4] = v110;
                  _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I ipv6ServiceChanged succeeded, fIPv6Addresses value is %{public}@", buf, 0xCu);
                }

                v111 = *(a1 + 104);
                if (v111 && CFEqual(v111, v129))
                {
                  v104 = v26;
                  LODWORD(v26) = 0;
                }

                else
                {
                  v104 = v26;
                  *buf = v129;
                  sub_10044A870((a1 + 104), buf);
                  LODWORD(v26) = 1;
                }
              }

              else
              {
                v104 = 0;
                LOBYTE(v29) = 0x80;
              }

              if (SHIBYTE(v169) < 0)
              {
                operator delete(__p);
              }

              if (v104)
              {
                if (!v23)
                {
                  goto LABEL_274;
                }

                v112 = *(a1 + 40);
                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: publishing IPv6:", buf, 2u);
                }

                sub_100473238(a1, &v148);
                v147 = 0;
                v113 = sub_100473FBC(a1, &v148, 2, &v147, (a1 + 360));
                sub_10001021C(&v147);
                if (v149)
                {
                  sub_100004A34(v149);
                }

                v114 = *(a1 + 40);
                v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
                if (v113)
                {
                  if (!v115)
                  {
                    goto LABEL_274;
                  }

                  *buf = 0;
                  v116 = "#I IPv6Service: publishing IPv6: success";
                }

                else
                {
                  if (!v115)
                  {
                    goto LABEL_274;
                  }

                  *buf = 0;
                  v116 = "#N IPv6Service: publishing IPv6: failure";
                }

                _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, v116, buf, 2u);
LABEL_274:
                v28 = v161;
                if (!v161)
                {
LABEL_306:
                  v27 = 1;
LABEL_39:
                  if ((v28 | v23))
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_40;
                }

                v117 = *(a1 + 40);
                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: xlat464: publishing IPv4:", buf, 2u);
                }

                sub_100473238(a1, &v145);
                v144 = v161;
                if (v161)
                {
                  CFRetain(v161);
                }

                sub_100473FBC(a1, &v145, 1, &v144, (a1 + 552));
                sub_10001021C(&v144);
                if (v146)
                {
                  sub_100004A34(v146);
                }

                if (CSIPacketAddress::isZeroIP((a1 + 336)))
                {
                  v118 = CFDictionaryGetValue(v161, kSCPropNetIPv4Addresses);
                  v119 = v118;
                  if (v118 && (v120 = CFGetTypeID(v118), v120 == CFArrayGetTypeID()))
                  {
                    v121 = CFArrayGetCount(v119);
                    if (v121 >= 1)
                    {
                      for (i = 0; i != v121; ++i)
                      {
                        v123 = CFArrayGetValueAtIndex(v119, i);
                        if (v123)
                        {
                          v124 = CFGetTypeID(v123);
                          if (v124 == CFStringGetTypeID())
                          {
                            memset(v170, 0, 24);
                            memset(buf, 0, 24);
                            ctu::cf::assign();
                            *v170 = *buf;
                            *&v170[16] = *&buf[16];
                            v125 = *(a1 + 40);
                            if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                            {
                              v126 = v170;
                              if ((v170[23] & 0x80u) != 0)
                              {
                                v126 = *v170;
                              }

                              *buf = 136315138;
                              *&buf[4] = v126;
                              _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: xlat464: IPv4 addr: Found address %s, using it", buf, 0xCu);
                            }

                            CSIPacketAddress::CSIPacketAddress();
                            CSIPacketAddress::operator=();
                            if (*(a1 + 412) != 4)
                            {
                              sub_100475C48(a1, a1 + 296, 4u);
                            }

                            if (v170[23] < 0)
                            {
                              operator delete(*v170);
                            }
                          }
                        }
                      }
                    }

                    if (!CSIPacketAddress::isZeroIP((a1 + 336)))
                    {
                      *(a1 + 432) = 257;
                      sub_10047973C(a1 + 432);
                      sub_100473238(a1, &v142);
                      sub_1004757F8(a1, &v142);
                      if (v143)
                      {
                        sub_100004A34(v143);
                      }

                      goto LABEL_305;
                    }

                    v127 = *(a1 + 40);
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      v128 = "#N IPv6Service: xlat464: IPv4 address empty";
LABEL_304:
                      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, v128, buf, 2u);
                    }
                  }

                  else
                  {
                    v127 = *(a1 + 40);
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      v128 = "#E IPv6Service: xlat464: No kSCPropNetIPv4Addresses array in IPv6Service XLAT46 Information";
                      goto LABEL_304;
                    }
                  }
                }

                else
                {
                  v127 = *(a1 + 40);
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v128 = "#N IPv6Service: xlat464: IPv4 address already filled in";
                    goto LABEL_304;
                  }
                }

LABEL_305:
                v28 = 0;
                goto LABEL_306;
              }

LABEL_38:
              v30 = *(a1 + 88);
              *(a1 + 88) = 0;
              *buf = v30;
              sub_10001021C(buf);
              sub_1004793DC(a1);
              sub_100478DF8(a1, 2);
              v27 = 0;
              v28 = 1;
              goto LABEL_39;
            }
          }

          v86 = *(a1 + 40);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I No kSCPropNetIPv6Addresses array in IPv6Service Information", buf, 2u);
          }

LABEL_37:
          LODWORD(v26) = 0;
          v130 = 0;
          LOBYTE(v29) = 0x80;
          goto LABEL_38;
        }

        v23 = 1;
        if (!CFEqual(*v19, cf2) || (a2 & 1) != 0)
        {
          goto LABEL_111;
        }

        if (v161)
        {
          v23 = 0;
          goto LABEL_111;
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v25 = "#I Nothing is changed for IPv6Service Information, ignore";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "#I No kSCEntNetIPv6 key in IPv6Service Information";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v25 = "#I Get IPv6Service Information Failed. Maybe configd restarted, ignore";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
  }

LABEL_32:
  v130 = 0;
  LODWORD(v26) = 0;
  v27 = 0;
  v28 = 0;
  LOBYTE(v29) = 0x80;
LABEL_40:
  if (v161)
  {
    goto LABEL_41;
  }

LABEL_49:
  if (v27)
  {
    v33 = *(a1 + 40);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I IPv6Service onlineSuccess", buf, 2u);
    }

    memset(v170, 0, 24);
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::setPrefixLen(v170, v29);
    CSIPacketAddress::operator=();
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    v34 = *(a1 + 40);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      if (v169 >= 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p;
      }

      v36 = "";
      if (v130)
      {
        v36 = "(temporary only)";
      }

      v37 = v162;
      *buf = 136315650;
      if (SHIBYTE(v162[2]) < 0)
      {
        v37 = v162[0];
      }

      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = v36;
      *&buf[22] = 2080;
      *&buf[24] = v37;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: online for IPv6 with IP address %s%s, router %s", buf, 0x20u);
      if (SHIBYTE(v169) < 0)
      {
        operator delete(__p);
      }
    }

    v38 = *(a1 + 552);
    for (j = *(a1 + 560); v38 != j; v38 += 24)
    {
      v40 = *(a1 + 40);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        CSIPacketAddress::operator std::string();
        v41 = buf[23] >= 0 ? buf : *buf;
        LODWORD(__p) = 136446210;
        *(&__p + 4) = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I fDns:  %{public}s", &__p, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    if (*(a1 + 604) != 4)
    {
      sub_100475C48(a1, a1 + 488, 4u);
    }

    if ((v130 & 1) == 0)
    {
      v42 = *(a1 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = asStringBool();
        v44 = asStringBool(*(a1 + 440) != 0);
        *buf = 136315394;
        *&buf[4] = v43;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp: ipv4ConfigState=%s, ipv4Timer=%s", buf, 0x16u);
      }

      if (*(a1 + 433) == 1 && (*(a1 + 432) & 1) == 0)
      {
        v52 = *(a1 + 440);
        v53 = *(a1 + 40);
        v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
        if (v52)
        {
          if (v54)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp to be fired after timer - the timer already set", buf, 2u);
          }
        }

        else
        {
          if (v54)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp to be fired after timer anyway if XLAT not configured properly", buf, 2u);
          }

          *&buf[8] = 0;
          *buf = 0;
          sub_1002306AC((a1 + 8), buf);
          Registry::getTimerService(&__p, *(a1 + 48));
          v87 = __p;
          sub_10000501C(v139, "XlatTimer");
          v88 = *(a1 + 24);
          object = v88;
          if (v88)
          {
            dispatch_retain(v88);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_1004795B8;
          aBlock[3] = &unk_101E4EA30;
          aBlock[4] = a1;
          aBlock[5] = *buf;
          v135 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          }

          CSIPacketAddress::CSIPacketAddress(&v136, v170);
          v137 = _Block_copy(aBlock);
          sub_100D23364(v87, v139, 0, 1000000, &object, &v137);
          v89 = *(a1 + 440);
          *(a1 + 440) = v141;
          v141 = 0;
          if (v89)
          {
            (*(*v89 + 8))(v89);
          }

          if (v137)
          {
            _Block_release(v137);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v140 < 0)
          {
            operator delete(v139[0]);
          }

          if (*(&__p + 1))
          {
            sub_100004A34(*(&__p + 1));
          }

          if (v135)
          {
            std::__shared_weak_count::__release_weak(v135);
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_weak(*&buf[8]);
          }
        }
      }

      else
      {
        v45 = *(a1 + 40);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp to be fired", buf, 2u);
        }

        v46 = *(a1 + 768);
        if (v46)
        {
          v47 = std::__shared_weak_count::lock(v46);
          if (v47)
          {
            v48 = *(a1 + 760);
            if (v48)
            {
              (*(*v48 + 16))(v48, v170);
LABEL_106:
              sub_100004A34(v47);
              goto LABEL_41;
            }
          }
        }

        else
        {
          v47 = 0;
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101771C00();
        }

        if (v47)
        {
          goto LABEL_106;
        }
      }
    }
  }

  else if (v28)
  {
    v49 = *(a1 + 40);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I IPv6Service NOT onlineSuccess", buf, 2u);
    }

    sub_10000501C(v170, "0.0.0.0");
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    if (v170[23] < 0)
    {
      operator delete(*v170);
    }

    *(a1 + 560) = *(a1 + 552);
    if (*(a1 + 604) != 1)
    {
      sub_100475C48(a1, a1 + 488, 1u);
    }
  }

LABEL_41:
  if (v26)
  {
    v31 = *(a1 + 664);
    if (v31)
    {
      goto LABEL_43;
    }

    v31 = *(a1 + 472);
    if (v31)
    {
      v50 = *(a1 + 480);
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 664) = v31;
      v51 = *(a1 + 672);
      *(a1 + 672) = v50;
      if (!v51 || (sub_100004A34(v51), (v31 = *(a1 + 664)) != 0))
      {
LABEL_43:
        v32 = *(a1 + 672);
        v132 = v31;
        v133 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        memset(buf, 0, 24);
        (*(*a1 + 168))(a1, &v132, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v133)
        {
          sub_100004A34(v133);
        }
      }
    }

    sub_10047983C(0x8004F, &stru_101E4EA80);
  }

  sub_10001021C(&cf);
  sub_10001021C(&v161);
  if (SHIBYTE(v162[2]) < 0)
  {
    operator delete(v162[0]);
  }

  if (SHIBYTE(v164) < 0)
  {
    operator delete(v163);
  }
}

void sub_1004788EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *aBlock, dispatch_object_t object, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, const void *a59, const void *a60, void *__p, uint64_t a62, int a63)
{
  if (a39)
  {
    sub_100004A34(a39);
  }

  sub_10001021C(&a59);
  sub_10001021C(&a60);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100478C1C(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I IPv4Service tear down: fIPv4SCDict...", buf, 2u);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[12] = 0;
    *buf = v3;
    sub_10001021C(buf);
  }

  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I IPv4Service tear down: fDSRefForIPv4...", buf, 2u);
  }

  v5 = a1[91];
  if (v5)
  {
    SCDynamicStoreSetDispatchQueue(v5, 0);
    v6 = a1[91];
    a1[91] = 0;
    *buf = v6;
    sub_10048662C(buf);
  }

  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I IPv4Service tear down: fIPv4Service...", buf, 2u);
  }

  v8 = a1[88];
  v9 = a1[5];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I non-empty IPv4Service tear down...", buf, 2u);
      v8 = a1[88];
    }

    a1[88] = 0;
    cf = v8;
    sub_10047B508(a1, &cf);
    v11 = cf;
    cf = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I IPv4Service tear down: already empty", buf, 2u);
  }

  return 2;
}

void sub_100478DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004873AC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_100478DF8(void *a1, int a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Doing SC cleanup while during offline for IPFamily %u", buf, 8u);
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v26 = v5;
  if (Mutable && v5)
  {
    serviceID = 0;
    sub_100473DEC(a1, &serviceID);
    if (!serviceID)
    {
      v12 = a1[5];
      v11 = 0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N failed to get serviceID for IPFamily %u", buf, 8u);
        v11 = 0;
      }

      goto LABEL_43;
    }

    store = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:offline", 0, 0);
    if (!store)
    {
      v13 = a1[5];
      v11 = 0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I failed create dynamic store for IPFamily %u", buf, 8u);
        v11 = 0;
      }

      goto LABEL_42;
    }

    key = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, kSCEntNetDNS);
    if (!key)
    {
      v14 = a1[5];
      v11 = 0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I failed create service entity key for DNS for IPFamily %u", buf, 8u);
        v11 = 0;
      }

      goto LABEL_41;
    }

    theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!theArray)
    {
      v11 = 0;
LABEL_40:
      sub_1000279DC(&theArray);
LABEL_41:
      sub_100005978(&key);
LABEL_42:
      sub_10048662C(&store);
LABEL_43:
      sub_100005978(&serviceID);
      goto LABEL_44;
    }

    theDict = 0;
    *buf = SCDynamicStoreCopyValue(store, key);
    sub_100138C38(&theDict, buf);
    if (theDict && CFDictionaryContainsKey(theDict, kSCPropNetDNSServerAddresses))
    {
      *buf = 0;
      Value = CFDictionaryGetValue(theDict, kSCPropNetDNSServerAddresses);
      sub_1001FA5E0(buf, &Value);
      if (*buf)
      {
        Count = CFArrayGetCount(*buf);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*buf, i);
            if (sub_10047FF70() != a2)
            {
              CFArrayAppendValue(theArray, ValueAtIndex);
            }
          }
        }
      }

      sub_100010250(buf);
    }

    if (CFArrayGetCount(theArray))
    {
      v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *buf = v9;
      if (!v9)
      {
        sub_1000296E0(buf);
        goto LABEL_38;
      }

      CFDictionarySetValue(v9, kSCPropNetDNSServerAddresses, theArray);
      CFDictionarySetValue(v26, key, *buf);
      sub_1000296E0(buf);
    }

    else
    {
      CFArrayAppendValue(Mutable, key);
    }

    v15 = &kSCEntNetIPv6;
    if (a2 != 2)
    {
      v15 = &kSCEntNetIPv4;
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, *v15);
    v17 = key;
    key = NetworkServiceEntity;
    *buf = v17;
    sub_100005978(buf);
    if (key)
    {
      CFArrayAppendValue(Mutable, key);
      SCDynamicStoreSetMultiple(store, v26, Mutable, 0);
      (*(*a1 + 208))(a1);
      v11 = 1;
LABEL_39:
      sub_10001021C(&theDict);
      goto LABEL_40;
    }

    v18 = a1[5];
    v11 = 0;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I failed create service entity key for IPFamily %u", buf, 8u);
LABEL_38:
    v11 = 0;
    goto LABEL_39;
  }

  v10 = a1[5];
  v11 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I failed to create array for keys to remove for IPFamily %u", buf, 8u);
    v11 = 0;
  }

LABEL_44:
  sub_1000296E0(&v26);
  sub_1000279DC(&Mutable);
  return v11;
}

void sub_10047932C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va7, a3);
  va_start(va6, a3);
  va_start(va5, a3);
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v12 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v14 = va_arg(va6, const void *);
  va_copy(va7, va6);
  v16 = va_arg(va7, const void *);
  sub_100010250(va7);
  sub_10001021C(va);
  sub_1000279DC(va1);
  sub_100005978(va2);
  sub_10048662C(va3);
  sub_100005978(va4);
  sub_1000296E0(va5);
  sub_1000279DC(va6);
  _Unwind_Resume(a1);
}

uint64_t sub_1004793DC(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I IPv6Service tear down: fIPv6SCDict...", buf, 2u);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[11] = 0;
    *buf = v3;
    sub_10001021C(buf);
  }

  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I IPv6Service tear down: fDSRefForIPv6...", buf, 2u);
  }

  v5 = a1[90];
  if (v5)
  {
    SCDynamicStoreSetDispatchQueue(v5, 0);
    v6 = a1[90];
    a1[90] = 0;
    *buf = v6;
    sub_10048662C(buf);
  }

  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I IPv6Service tear down: fIPv6Service...", buf, 2u);
  }

  v8 = a1[86];
  v9 = a1[5];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I non-empty IPv6Service tear down...", buf, 2u);
      v8 = a1[86];
    }

    a1[86] = 0;
    cf = v8;
    sub_10047B970(a1, &cf);
    v11 = cf;
    cf = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I IPv6Service tear down: already empty", buf, 2u);
  }

  return 2;
}

void sub_1004795A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004873AC(va, 0);
  _Unwind_Resume(a1);
}

void sub_1004795B8(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E ipv4Timer: XLAT464 config has not completed in time", buf, 2u);
        }

        sub_10047973C(v3 + 432);
        v7 = *(v3 + 768);
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          if (v8)
          {
            v9 = *(v3 + 760);
            if (v9)
            {
              v10 = *(v3 + 40);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *v11 = 0;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I IPv6ServiceUp to be fired - timer expired", v11, 2u);
              }

              (*(*v9 + 16))(v9, a1 + 7);
              goto LABEL_15;
            }
          }
        }

        else
        {
          v8 = 0;
        }

        if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101771C00();
          if (!v8)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v8)
        {
LABEL_15:
          sub_100004A34(v8);
        }
      }

LABEL_16:
      sub_100004A34(v5);
    }
  }
}

void sub_100479718(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10047973C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    (*(*result + 16))(result);
    result = *(a1 + 8);
    *(a1 + 8) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1004797D0(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  CSIPacketAddress::CSIPacketAddress((a1 + 7), (a2 + 7));
}

void sub_100479814(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047982C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_10047983C(wis::MetricFactory *a1, uint64_t a2)
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

void sub_100479968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

void sub_1004799E8(id a1, void *a2)
{
  v2 = *(a2 + 9);
  *(a2 + 24) = 1;
  *(a2 + 9) = v2 | 0xA;
  *(a2 + 7) = 6;
}

void sub_100479A0C(uint64_t a1, int a2)
{
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101771CAC();
    }
  }

  else
  {
    v5 = v4;
    *__dst = 0u;
    v22 = 0u;
    __p[0] = 0;
    __p[1] = 0;
    v14 = 0;
    CSIPDPManager::getInterfaceNameById();
    strlcpy(__dst, __p, 0x10uLL);
    LODWORD(v22) = a2;
    if (ioctl(v5, 0x802069E2uLL, __dst) < 0)
    {
      v10 = __error();
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_101771C34(v10, v11, v12);
      }
    }

    else if (close(v5) < 0)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = __error();
        v8 = strerror(*v7);
        v9 = *__error();
        *buf = 67109634;
        v16 = v5;
        v17 = 2080;
        v18 = v8;
        v19 = 1024;
        v20 = v9;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error closing socket %d: %s (%d)", buf, 0x18u);
      }
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100479BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100479BEC(uint64_t a1)
{
  v1 = *(a1 + 704);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Refresh IPv4Service", v5, 2u);
    }

    sub_100476050(a1, 1);
  }

  return v1 != 0;
}

BOOL sub_100479C74(uint64_t a1)
{
  v1 = *(a1 + 688);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Refresh IPv6Service", buf, 2u);
    }

    IPConfigurationServiceRefreshConfiguration();
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ipv6ServiceChanged to be called", v6, 2u);
    }

    sub_100476ED0(a1, 1);
  }

  return v1 != 0;
}

BOOL sub_100479D48(void *a1, uint64_t a2, const CSIPacketAddress **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 == 1)
  {
    v32 = a4;
    v7 = 37;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v32 = a4;
    v7 = 61;
LABEL_5:
    v8 = a1[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I refreshing DNS, ipFamily %u", buf, 8u);
    }

    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      do
      {
        v11 = a1[5];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          CSIPacketAddress::operator std::string();
          v12 = v43 >= 0 ? buf : *buf;
          *v44 = 136446210;
          *&v44[4] = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I refreshing DNS:%{public}s", v44, 0xCu);
          if (v43 < 0)
          {
            operator delete(*buf);
          }
        }

        v9 = (v9 + 24);
      }

      while (v9 != v10);
    }

    if (LODWORD(a1[v7 + 15]) == 2)
    {
      v13 = "IPv6Service: ";
    }

    else
    {
      v13 = "IPv4Service: ";
    }

    sub_10047A3A4(a1, a3, &a1[v7], v13);
    sub_10047A99C(a1, a3, &a1[v7]);
    sub_10047ACCC(v14, a3, &a1[v7]);
    v15 = a1[5];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I In Function", buf, 2u);
    }

    *v44 = 0;
    sub_100473DEC(a1, v44);
    if (*v44)
    {
      theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (theDict)
      {
        cf = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:refreshDNS", 0, 0);
        if (cf)
        {
          value = 0;
          sub_100473238(a1, &v35);
          v16 = *v44;
          v34 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          sub_10047ADAC(a1, &v35, &a1[v7], v32, v16, &v34, &value);
          sub_10048662C(&v34);
          if (v36)
          {
            sub_100004A34(v36);
          }

          if (value)
          {
            NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, *v44, kSCEntNetDNS);
            *buf = NetworkServiceEntity;
            if (NetworkServiceEntity)
            {
              CFDictionarySetValue(theDict, NetworkServiceEntity, value);
              sub_100010180(&v33, &theDict);
              sub_100472F48(a1, "refreshDNS: ip dict: DNS", &v33);
              sub_10001021C(&v33);
              v18 = SCDynamicStoreSetMultiple(cf, theDict, 0, 0);
              v19 = v18 != 0;
              v20 = a1[5];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *v40 = 67109120;
                v41 = v18 != 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I SCDynamicStoreSetMultiple() result %u", v40, 8u);
              }
            }

            else
            {
              v29 = a1[5];
              v19 = 0;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *v40 = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Creating key for DNS failed, bailing out", v40, 2u);
                v19 = 0;
              }
            }

            sub_100005978(buf);
          }

          else
          {
            v24 = *v32;
            v25 = v32[1];
            v26 = a1[5];
            v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
            if (v24 == v25)
            {
              if (v27)
              {
                v31 = asString();
                *buf = 136315138;
                *&buf[4] = v31;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Failed to create SCD Dict for DNS for %s, bailing out", buf, 0xCu);
              }

              v19 = 0;
            }

            else
            {
              if (v27)
              {
                v28 = asString();
                *buf = 136315138;
                *&buf[4] = v28;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I DNS for %s is empty, but other DNS is available, bailing out", buf, 0xCu);
              }

              v19 = 1;
            }
          }

          sub_10001021C(&value);
        }

        else
        {
          v23 = a1[5];
          v19 = 0;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Failed to create SCDynamicStore for notifySystemConfigOfSettings, bailing out", buf, 2u);
            v19 = 0;
          }
        }

        sub_10048662C(&cf);
      }

      else
      {
        v19 = 0;
      }

      sub_1000296E0(&theDict);
    }

    else
    {
      v22 = a1[5];
      v19 = 0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I not setting DNS", buf, 2u);
        v19 = 0;
      }
    }

    sub_100005978(v44);
    return v19;
  }

  v21 = a1[5];
  v19 = 0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E no IP model available: family=%u", buf, 8u);
    return 0;
  }

  return v19;
}

void sub_10047A304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v21 = va_arg(va2, const void *);
  sub_10001021C(va);
  sub_10048662C(va1);
  sub_1000296E0(va2);
  sub_100005978((v17 - 112));
  _Unwind_Resume(a1);
}

void sub_10047A3A4(uint64_t a1, const CSIPacketAddress **a2, uint64_t a3, void *a4)
{
  memset(v48, 0, sizeof(v48));
  v7 = *a2;
  if (a2[1] == v7)
  {
    CSIPacketAddress::CSIPacketAddress(v48);
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(v48, v7);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v46[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v46);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_12:
  if (CSIPacketAddress::isZeroIP(v48))
  {
    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (!v17)
  {
    goto LABEL_39;
  }

  (*(*v17 + 120))(v46, v17);
  if (v47 >= 0)
  {
    v19 = SHIBYTE(v47);
  }

  else
  {
    v19 = v46[1];
  }

  if ((SHIBYTE(v47) & 0x8000000000000000) == 0)
  {
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_39:
    v31 = *(a3 + 64);
    for (i = *(a3 + 72); i == v31; i = *(a3 + 72))
    {
      CSIPacketAddress::CSIPacketAddress(v46);
      sub_10047DF64(a3 + 64, v46);
      v31 = *(a3 + 64);
    }

    CSIPacketAddress::operator=();
    goto LABEL_67;
  }

  operator delete(v46[0]);
  if (!v19)
  {
    goto LABEL_39;
  }

LABEL_21:
  (*(*v17 + 120))(v46, v17);
  if (v47 >= 0)
  {
    v20 = SHIBYTE(v47);
  }

  else
  {
    v20 = v46[1];
  }

  if ((SHIBYTE(v47) & 0x8000000000000000) != 0)
  {
    operator delete(v46[0]);
    if (v20)
    {
      goto LABEL_26;
    }
  }

  else if (v20)
  {
LABEL_26:
    while (*(a3 + 72) == *(a3 + 64))
    {
      CSIPacketAddress::CSIPacketAddress(v46);
      sub_10047DF64(a3 + 64, v46);
    }

    (*(*v17 + 120))(__p, v17);
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_67;
  }

LABEL_31:
  if (!CSIPacketAddress::isZeroIP(v48))
  {
    goto LABEL_67;
  }

  v44 = 0;
  v45 = 0;
  sub_10047DFB8(a1, &v44);
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  v21 = Registry::getServiceMap(*(a1 + 48));
  v22 = v21;
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

  std::mutex::lock(v21);
  __p[0] = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, __p);
  if (!v27)
  {
    v29 = 0;
    goto LABEL_44;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
LABEL_44:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    goto LABEL_45;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
LABEL_45:
  (*(*v29 + 80))(v40, v29, *(v44 + 52), 1, @"FallbackDNSAddress", 0, 1);
  v43 = 0;
  v42 = 0uLL;
  ctu::cf::assign();
  *v46 = v42;
  v47 = v43;
  v43 = 0;
  v42 = 0uLL;
  sub_10000A1EC(v40);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  v33 = HIBYTE(v47);
  v34 = SHIBYTE(v47);
  if (v47 < 0)
  {
    v33 = v46[1];
  }

  if (v33)
  {
    v35 = *(a1 + 40);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v46[0];
      if (v34 >= 0)
      {
        v36 = v46;
      }

      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = a4;
      WORD2(__p[1]) = 2082;
      *(&__p[1] + 6) = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %sNo DNS address given but falling back to carrier's default DNS address: %{public}s", __p, 0x16u);
      LOBYTE(v34) = HIBYTE(v47);
    }

    memset(__p, 0, 24);
    if ((v34 & 0x80u) == 0)
    {
      v37 = v46;
    }

    else
    {
      v37 = v46[0];
    }

    sub_10000501C(v40, v37);
    CSIPacketAddress::CSIPacketAddress();
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    v38 = *(a3 + 64);
    for (j = *(a3 + 72); j == v38; j = *(a3 + 72))
    {
      CSIPacketAddress::CSIPacketAddress(v40);
      sub_10047DF64(a3 + 64, v40);
      v38 = *(a3 + 64);
    }

    CSIPacketAddress::operator=();
    LOBYTE(v34) = HIBYTE(v47);
  }

  if ((v34 & 0x80) != 0)
  {
    operator delete(v46[0]);
  }

  if (v45)
  {
    sub_100004A34(v45);
  }

LABEL_67:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10047A8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047A99C(uint64_t a1, void *a2, uint64_t a3)
{
  memset(v22, 0, sizeof(v22));
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) < 2)
  {
    CSIPacketAddress::CSIPacketAddress(v22);
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(v22, (*a2 + 24));
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  __p = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &__p);
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
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_12:
  if (CSIPacketAddress::isZeroIP(v22))
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  (*(*v13 + 128))(&__p, v13);
  if (v21 >= 0)
  {
    v15 = v21;
  }

  else
  {
    v15 = v20;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    operator delete(__p);
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_33:
    if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3) <= 1)
    {
      do
      {
        CSIPacketAddress::CSIPacketAddress(&__p);
        sub_10047DF64(a3 + 64, &__p);
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3) < 2);
    }

    CSIPacketAddress::operator=();
    goto LABEL_36;
  }

  if (!v15)
  {
    goto LABEL_33;
  }

LABEL_21:
  (*(*v13 + 128))(&__p, v13);
  if (v21 >= 0)
  {
    v16 = v21;
  }

  else
  {
    v16 = v20;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    operator delete(__p);
    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else if (!v16)
  {
    goto LABEL_36;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3) <= 1)
  {
    do
    {
      CSIPacketAddress::CSIPacketAddress(&__p);
      sub_10047DF64(a3 + 64, &__p);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3) < 2);
  }

  (*(*v13 + 128))(&v17, v13);
  CSIPacketAddress::CSIPacketAddress();
  CSIPacketAddress::operator=();
  if (v18 < 0)
  {
    operator delete(v17);
  }

LABEL_36:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10047AC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047ACCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 3)
  {
    v6 = 2;
    v7 = 48;
    do
    {
      if ((CSIPacketAddress::isZeroIP((v3 + v7)) & 1) == 0)
      {
        v8 = *a2;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v6)
        {
          sub_1002030E0();
        }

        v9 = *(a3 + 72);
        if (v9 >= *(a3 + 80))
        {
          v10 = sub_1004867DC(a3 + 64, (v8 + v7));
        }

        else
        {
          CSIPacketAddress::CSIPacketAddress(*(a3 + 72), (v8 + v7));
          v10 = v9 + 24;
          *(a3 + 72) = v9 + 24;
        }

        *(a3 + 72) = v10;
      }

      ++v6;
      v3 = *a2;
      v7 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

const void **sub_10047ADAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, CSIPacketAddress **a4@<X3>, const __CFString *a5@<X4>, SCDynamicStoreRef *a6@<X5>, void **a7@<X8>)
{
  v46 = 0;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 4, &kCFTypeArrayCallBacks);
  if (!theArray)
  {
    v27 = *(a1 + 40);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v28 = "#E Cannot create DNS Servers array";
LABEL_51:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    goto LABEL_52;
  }

  v12 = (a3 + 64);
  v38 = a7;
  if (*(a3 + 64) != *(a3 + 72))
  {
    goto LABEL_3;
  }

  v29 = a2[1];
  v45[0] = *a2;
  v45[1] = v29;
  if (!v29)
  {
    if ((sub_10047F230(a1, v45) & 1) != 0 || *a4 == a4[1])
    {
      goto LABEL_3;
    }

    goto LABEL_59;
  }

  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  if (sub_10047F230(a1, v45))
  {
    sub_100004A34(v29);
    goto LABEL_3;
  }

  v34 = *a4;
  v35 = a4[1];
  sub_100004A34(v29);
  if (v34 != v35)
  {
LABEL_59:
    v36 = *(a1 + 40);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = asString();
      *buf = 136315138;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#N Empty DNS for %s, not empty for other", buf, 0xCu);
    }

    v12 = a4;
  }

LABEL_3:
  v14 = *v12;
  v13 = v12[1];
  if (*v12 != v13)
  {
    while (1)
    {
      if (CSIPacketAddress::isZeroIP(v14))
      {
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E Empty DNS addr ?", buf, 2u);
        }

        goto LABEL_16;
      }

      value = 0;
      CSIPacketAddress::operator std::string();
      v16 = v50 >= 0 ? buf : *buf;
      v17 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
      v18 = v17;
      value = v17;
      if ((v50 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(*buf);
      v18 = value;
      if (value)
      {
        goto LABEL_14;
      }

LABEL_15:
      sub_100005978(&value);
LABEL_16:
      v14 = (v14 + 24);
      if (v14 == v13)
      {
        goto LABEL_17;
      }
    }

    if (!v17)
    {
      goto LABEL_15;
    }

LABEL_14:
    CFArrayAppendValue(theArray, v18);
    goto LABEL_15;
  }

LABEL_17:
  a7 = v38;
  if (CFArrayGetCount(theArray))
  {
    goto LABEL_18;
  }

  v30 = a2[1];
  v44[0] = *a2;
  v44[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = sub_10047F230(a1, v44);
    sub_100004A34(v30);
    if ((v31 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if ((sub_10047F230(a1, v44) & 1) == 0)
  {
LABEL_49:
    v27 = *(a1 + 40);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v28 = "#E Empty DNS Servers list is not allowed";
    goto LABEL_51;
  }

LABEL_18:
  value = 0;
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, a5, kSCEntNetDNS);
  value = NetworkServiceEntity;
  if (NetworkServiceEntity)
  {
    theDict = 0;
    *buf = SCDynamicStoreCopyValue(*a6, NetworkServiceEntity);
    sub_100138C38(&theDict, buf);
    if (theDict && CFDictionaryContainsKey(theDict, kSCPropNetDNSServerAddresses))
    {
      *buf = 0;
      v42 = CFDictionaryGetValue(theDict, kSCPropNetDNSServerAddresses);
      sub_1001FA5E0(buf, &v42);
      if (*buf)
      {
        v20 = sub_10047FD9C(a1);
        Count = CFArrayGetCount(*buf);
        if (Count >= 1)
        {
          v22 = 0;
          v23 = 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*buf, v22);
            if (sub_10047FF70() != *(a3 + 120))
            {
              if ((v20 & v23) == 1 && CFArrayGetCount(theArray))
              {
                CFArrayInsertValueAtIndex(theArray, 1, ValueAtIndex);
                v23 = 0;
              }

              else
              {
                CFArrayAppendValue(theArray, ValueAtIndex);
              }
            }

            ++v22;
          }

          while (Count != v22);
        }
      }

      sub_100010250(buf);
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v26 = v46;
    v46 = Mutable;
    *buf = v26;
    sub_1000296E0(buf);
    if (v46)
    {
      CFDictionarySetValue(v46, kSCPropNetDNSServerAddresses, theArray);
    }

    sub_10001021C(&theDict);
    a7 = v38;
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017719E8();
  }

  sub_100005978(&value);
LABEL_52:
  sub_1000279DC(&theArray);
  v32 = v46;
  v41 = v46;
  if (v46)
  {
    CFRetain(v46);
    theArray = v32;
    CFRetain(v32);
  }

  else
  {
    theArray = 0;
  }

  value = 0;
  *buf = 0;
  sub_100010180(buf, &theArray);
  if (*buf)
  {
    sub_1000676D4(&value, buf);
  }

  sub_10001021C(buf);
  *a7 = value;
  value = 0;
  sub_10001021C(&value);
  sub_1000296E0(&theArray);
  sub_1000296E0(&v41);
  return sub_1000296E0(&v46);
}

void sub_10047B310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, __int16 a21, char a22, char a23, int a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_1000279DC(&a25);
  sub_1000296E0(&a20);
  _Unwind_Resume(a1);
}

void sub_10047B3DC(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    v4 = *(a1 + 704);
    *(a1 + 704) = 0;
    cf = v4;
    sub_10047B508(a1, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v5 = *a2;
    *a2 = 0;
    sub_1004873AC((a1 + 704), v5);
    if (sub_10047B5FC(a1))
    {
      if (*(a1 + 412) == 4)
      {
        return;
      }

      v6 = a1 + 296;
      v7 = a1;
      v8 = 4;
    }

    else
    {
      sub_100478C1C(a1);
      v6 = a1 + 296;
      v7 = a1;
      v8 = 1;
    }

    sub_100475C48(v7, v6, v8);
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E IPv4Service: newService is empty", buf, 2u);
    }

    sub_100475C48(a1, a1 + 296, 1u);
  }
}

void sub_10047B4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004873AC(va, 0);
  _Unwind_Resume(a1);
}

void sub_10047B508(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    sub_100004AA0(&v4, (a1 + 8));
    v3 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
      *a2 = 0;
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *a2 = 0;
    }

    operator new();
  }
}

BOOL sub_10047B5FC(uint64_t a1)
{
  if (!*(a1 + 704))
  {
    return 0;
  }

  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  v2 = *(a1 + 728);
  if (v2)
  {
    SCDynamicStoreSetDispatchQueue(v2, 0);
  }

  v3 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:IPv4ServiceChange", sub_10047DE18, &context);
  v4 = *(a1 + 728);
  *(a1 + 728) = v3;
  values[0] = v4;
  sub_10048662C(values);
  if (!*(a1 + 728))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(values[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E IPv4Service SCDynamicStore failed", values, 2u);
    }

    goto LABEL_18;
  }

  values[0] = IPConfigurationServiceGetNotificationKey();
  v12 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
  if (!SCDynamicStoreSetNotificationKeys(*(a1 + 728), v12, 0))
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "#E IPv4Service SCDynamicStoreSetNotificationKeys failed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v11, 2u);
    }

LABEL_17:
    sub_100010250(&v12);
LABEL_18:
    v10 = *(a1 + 40);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E IPv4Service SCDynamicStore monitor setup failed", &context, 2u);
    return 0;
  }

  if (SCDynamicStoreSetDispatchQueue(*(a1 + 728), *(a1 + 24)) != 1)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "#E IPv4Service SCDynamicStoreSetDispatchQueue failed";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  sub_100010250(&v12);
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ipv4ServiceChanged to be called in case we have missed the notification", &context, 2u);
  }

  sub_100476050(a1, 0);
  return 1;
}

void sub_10047B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void sub_10047B83C(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    v4 = *(a1 + 688);
    *(a1 + 688) = 0;
    cf = v4;
    sub_10047B970(a1, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v5 = *a2;
    *a2 = 0;
    sub_1004873AC((a1 + 688), v5);
    *(a1 + 141) = 1;
    if (sub_10047BA64(a1))
    {
      if (*(a1 + 604) == 4)
      {
        return;
      }

      v6 = a1 + 488;
      v7 = a1;
      v8 = 4;
    }

    else
    {
      sub_1004793DC(a1);
      v6 = a1 + 488;
      v7 = a1;
      v8 = 1;
    }

    sub_100475C48(v7, v6, v8);
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E IPv6Service: newService is empty", buf, 2u);
    }

    sub_100475C48(a1, a1 + 488, 1u);
  }
}

void sub_10047B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004873AC(va, 0);
  _Unwind_Resume(a1);
}

void sub_10047B970(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    sub_100004AA0(&v4, (a1 + 8));
    v3 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
      *a2 = 0;
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *a2 = 0;
    }

    operator new();
  }
}

BOOL sub_10047BA64(uint64_t a1)
{
  if (!*(a1 + 688))
  {
    return 0;
  }

  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  v2 = *(a1 + 720);
  if (v2)
  {
    SCDynamicStoreSetDispatchQueue(v2, 0);
  }

  v3 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:IPv6ServiceChange", sub_10047DEBC, &context);
  v4 = *(a1 + 720);
  *(a1 + 720) = v3;
  values[0] = v4;
  sub_10048662C(values);
  if (!*(a1 + 720))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(values[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E IPv6Service SCDynamicStore failed", values, 2u);
    }

    goto LABEL_18;
  }

  values[0] = IPConfigurationServiceGetNotificationKey();
  v12 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
  if (!SCDynamicStoreSetNotificationKeys(*(a1 + 720), v12, 0))
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "#E IPv6Service SCDynamicStoreSetNotificationKeys failed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v11, 2u);
    }

LABEL_17:
    sub_100010250(&v12);
LABEL_18:
    v10 = *(a1 + 40);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E IPv6Service SCDynamicStore monitor setup failed", &context, 2u);
    return 0;
  }

  if (SCDynamicStoreSetDispatchQueue(*(a1 + 720), *(a1 + 24)) != 1)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "#E IPv6Service SCDynamicStoreSetDispatchQueue failed";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  sub_100010250(&v12);
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ipv6ServiceChanged to be called", &context, 2u);
  }

  sub_100476ED0(a1, 0);
  return 1;
}

void sub_10047BC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void sub_10047BCA4(uint64_t a1, uint64_t a2, CSIPacketAddress *a3, CSIPacketAddress *a4, int a5, char a6, unint64_t a7)
{
  valuePtr = a5;
  v13 = *(a1 + 688);
  v14 = *(a1 + 40);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "#I IPv6Service is going up in progress";
  }

  else
  {
    if (!v15)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "#I IPv6Service is new";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
LABEL_7:
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  cf = Mutable;
  v18 = *(a1 + 120);
  if (v18 > 0xF)
  {
    v19 = "";
  }

  else
  {
    v19 = off_101E44980[v18];
  }

  CFStringAppendFormat(Mutable, 0, @"%s", v19);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  *keys = 0u;
  *values = 0u;
  v83 = 0u;
  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v71 = v20;
  keys[0] = kIPConfigurationServiceOptionMTU;
  keys[1] = kIPConfigurationServiceOptionPerformNUD;
  values[0] = v20;
  values[1] = kCFBooleanFalse;
  if (a6)
  {
    v21 = 2;
  }

  else
  {
    *&v86 = kIPConfigurationServiceOptionEnableDAD;
    *&v83 = kCFBooleanFalse;
    v21 = 3;
  }

  if (!capabilities::ct::supportsCellRadio(v20))
  {
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v24 = "#I IPv6Service: xlat464: cellular radio not supported";
    goto LABEL_20;
  }

  v22 = *(a1 + 412);
  if (v22 == 2 || v22 == 4)
  {
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v24 = "#N IPv6Service: xlat464: ipv4Model is already online";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    goto LABEL_21;
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100473238(a1, buf);
  if (!*buf)
  {
    v50 = *(a1 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#N IPv6Service: xlat464: APN info empty", __p, 2u);
    }

    goto LABEL_127;
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_1004732EC(a1, a2, __p);
  if ((*(*buf + 384) & 1) != 0 || CIPFamily::isDefault(__p) && (__p[1] & 2) != 0)
  {
    keys[v21] = kIPConfigurationServiceOptionEnableCLAT46;
    values[v21++] = kCFBooleanTrue;
    if ((*(a1 + 433) & 1) == 0)
    {
      *(a1 + 432) = 256;
    }

    v48 = *(a1 + 40);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_126;
    }

    *v65 = 0;
    v49 = "#I IPv6Service: xlat464: enabled";
  }

  else
  {
    v48 = *(a1 + 40);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
LABEL_126:
      CIPFamily::~CIPFamily(__p);
LABEL_127:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

LABEL_21:
      v69 = 0;
      v70 = 0;
      theDict = 0;
      v68 = 0;
      if ((CSIPacketAddress::isZeroIP(a3) & 1) == 0)
      {
        memset(v65, 0, sizeof(v65));
        v66 = 0;
        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v66) < 0)
        {
          sub_100005F2C(__dst, *v65, *&v65[8]);
        }

        else
        {
          *__dst = *v65;
          v63 = v66;
        }

        if (SHIBYTE(v63) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v52 = v63;
        }

        v74 = 0;
        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v52;
        }

        v75 = 0;
        if (ctu::cf::convert_copy())
        {
          v25 = v74;
          v74 = v75;
          v76 = v25;
          sub_100005978(&v76);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v64 = v74;
        v74 = 0;
        sub_100005978(&v74);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
        }

        *buf = v70;
        v70 = v64;
        v64 = 0;
        sub_100005978(buf);
        sub_100005978(&v64);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(__dst[0]);
        }

        v26 = *(a1 + 40);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = SHIBYTE(v66);
          v28 = *v65;
          PrefixLen = CSIPacketAddress::getPrefixLen(a3);
          v30 = v65;
          if (v27 < 0)
          {
            v30 = v28;
          }

          *buf = 136315394;
          *&buf[4] = v30;
          *&buf[12] = 1024;
          *&buf[14] = PrefixLen;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I IPv6Service is going up with address %s/%d", buf, 0x12u);
        }

        v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v32 = theDict;
        theDict = v31;
        *buf = v32;
        sub_1000296E0(buf);
        CFDictionarySetValue(theDict, kSCPropNetIPv6ConfigMethod, kSCValNetIPv6ConfigMethodManual);
        *buf = v70;
        *&buf[8] = 0;
        v75 = 0;
        v75 = CFArrayCreate(0, buf, 1, &kCFTypeArrayCallBacks);
        CFDictionarySetValue(theDict, kSCPropNetIPv6Addresses, v75);
        v74 = 0;
        v33 = CSIPacketAddress::getPrefixLen(a3);
        v76 = 0;
        __p[0] = v33;
        v34 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, __p);
        if (v34)
        {
          v35 = v76;
          v76 = v34;
          __p[0] = v35;
          sub_100029A48(__p);
        }

        v74 = v76;
        v76 = 0;
        sub_100029A48(&v76);
        *buf = v74;
        __p[0] = 0;
        __p[0] = CFArrayCreate(0, buf, 1, &kCFTypeArrayCallBacks);
        CFDictionarySetValue(theDict, kSCPropNetIPv6PrefixLength, __p[0]);
        keys[v21] = kIPConfigurationServiceOptionIPv6Entity;
        values[v21++] = theDict;
        sub_100010250(__p);
        sub_100029A48(&v74);
        sub_100010250(&v75);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(*v65);
        }
      }

      if ((CSIPacketAddress::isZeroIP(a4) & 1) == 0)
      {
        memset(v65, 0, sizeof(v65));
        v66 = 0;
        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v66) < 0)
        {
          sub_100005F2C(v60, *v65, *&v65[8]);
        }

        else
        {
          *v60 = *v65;
          v61 = v66;
        }

        if (SHIBYTE(v61) < 0)
        {
          sub_100005F2C(__p, v60[0], v60[1]);
        }

        else
        {
          *__p = *v60;
          v52 = v61;
        }

        v74 = 0;
        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v52;
        }

        v75 = 0;
        if (ctu::cf::convert_copy())
        {
          v36 = v74;
          v74 = v75;
          v76 = v36;
          sub_100005978(&v76);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v64 = v74;
        v74 = 0;
        sub_100005978(&v74);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
        }

        *buf = v69;
        v69 = v64;
        v64 = 0;
        sub_100005978(buf);
        sub_100005978(&v64);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60[0]);
        }

        v37 = *(a1 + 40);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v65;
          if (SHIBYTE(v66) < 0)
          {
            v38 = *v65;
          }

          *buf = 136315138;
          *&buf[4] = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I IPv6Service is going up with link local address %s", buf, 0xCu);
        }

        keys[v21] = kIPConfigurationServiceOptionIPv6LinkLocalAddress;
        values[v21++] = v69;
        if (SHIBYTE(v66) < 0)
        {
          operator delete(*v65);
        }
      }

      memset(v65, 0, sizeof(v65));
      sub_100473238(a1, v65);
      if (*v65)
      {
        if (*(*v65 + 71) < 0)
        {
          sub_100005F2C(v58, *(*v65 + 48), *(*v65 + 56));
        }

        else
        {
          *v58 = *(*v65 + 48);
          v59 = *(*v65 + 64);
        }

        if (SHIBYTE(v59) < 0)
        {
          sub_100005F2C(__p, v58[0], v58[1]);
        }

        else
        {
          *__p = *v58;
          v52 = v59;
        }

        v74 = 0;
        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v52;
        }

        v75 = 0;
        if (ctu::cf::convert_copy())
        {
          v39 = v74;
          v74 = v75;
          v76 = v39;
          sub_100005978(&v76);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v64 = v74;
        v74 = 0;
        sub_100005978(&v74);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
        }

        *buf = v68;
        v68 = v64;
        v64 = 0;
        sub_100005978(buf);
        sub_100005978(&v64);
        if (SHIBYTE(v59) < 0)
        {
          operator delete(v58[0]);
        }

        v40 = v68;
        if (v68)
        {
          keys[v21] = kIPConfigurationServiceOptionAPNName;
          values[v21++] = v40;
        }
      }

      if (*&v65[8])
      {
        sub_100004A34(*&v65[8]);
      }

      if (isSliceMask(a7) && sub_10047CB6C(a1))
      {
        keys[v21] = kIPConfigurationServiceOptionEnableL4S;
        values[v21++] = kCFBooleanTrue;
      }

      v75 = 0;
      v41 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v21, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v75 = v41;
      v57 = v41;
      if (v41)
      {
        CFRetain(v41);
      }

      sub_100472F48(a1, "IPv6Service: ip dict: bringUpIPv6Interface_sync", &v57);
      sub_10001021C(&v57);
      sub_100475C48(a1, a1 + 488, 2u);
      v42 = atomic_load((a1 + 696));
      v43 = *(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: new counter = %u", buf, 8u);
      }

      atomic_fetch_add((a1 + 696), 1u);
      v80 = 0;
      v81 = 0;
      v79 = 0;
      *buf = a1;
      sub_100004AA0(__p, (a1 + 8));
      v45 = __p[0];
      v44 = __p[1];
      *&buf[8] = __p[0];
      *&buf[16] = __p[1];
      if (__p[1])
      {
        atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
        sub_100004A34(v44);
      }

      v46 = cf;
      v78 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v47 = v75;
      v79 = v75;
      if (v75)
      {
        CFRetain(v75);
      }

      v80 = a1 + 488;
      LODWORD(v81) = v42;
      __p[0] = a1;
      __p[1] = v45;
      v52 = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = v46;
      if (v46)
      {
        CFRetain(v46);
      }

      v54 = v47;
      if (v47)
      {
        CFRetain(v47);
      }

      v55 = v80;
      v56 = v81;
      operator new();
    }

    *v65 = 0;
    v49 = "#I IPv6Service: xlat464: EnableXLAT464 is not configured in APN";
  }

  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, v65, 2u);
  goto LABEL_126;
}

void sub_10047C928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, const void *a39, const void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, std::__shared_weak_count *a46)
{
  CIPFamily::~CIPFamily(&__p);
  if (a46)
  {
    sub_100004A34(a46);
  }

  sub_100029A48(&a39);
  sub_100305E28(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_10047CB6C(uint64_t a1)
{
  v35 = 0;
  v36 = 0;
  sub_10047DFB8(a1, &v35);
  *__p = *off_101E4EAC0;
  v40 = @"ForceDisableL4S";
  v33 = 0;
  v34 = 0;
  v32 = 0;
  sub_10005B328(&v32, __p, &v41, 3uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  v5 = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
  __p[0] = v5;
  v9 = sub_100009510(&v3[1].__m_.__sig, __p);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_8:
    std::mutex::unlock(v3);
    v10 = 0;
    v12 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_9:
  (*(*v11 + 104))(&cf, v11, *(v35 + 52), 1, &v32, 0, 0);
  v13 = cf;
  LOBYTE(__p[0]) = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(__p, v13, v15);
    }
  }

  v16 = LOBYTE(__p[0]);
  sub_10000A1EC(&cf);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  cf = @"NRSlicing";
  v38 = @"ForceEnableL4S";
  __p[1] = 0;
  v40 = 0;
  __p[0] = 0;
  sub_10005B328(__p, &cf, __p, 2uLL);
  v17 = Registry::getServiceMap(*(a1 + 48));
  v18 = v17;
  if (v4 < 0)
  {
    v19 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v4 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v17);
  cf = v4;
  v22 = sub_100009510(&v18[1].__m_.__sig, &cf);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v18);
  v23 = 0;
  v25 = 1;
LABEL_22:
  (*(*v24 + 104))(&v31, v24, *(v35 + 52), 1, __p, 0, 0);
  v26 = v31;
  LOBYTE(cf) = 0;
  if (v31)
  {
    v27 = CFGetTypeID(v31);
    if (v27 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&cf, v26, v28);
      LODWORD(v26) = cf;
    }

    else
    {
      LODWORD(v26) = 0;
    }
  }

  sub_10000A1EC(&v31);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(cf) = 67109376;
    HIDWORD(cf) = v16;
    LOWORD(v38) = 1024;
    *(&v38 + 2) = v26;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I isL4SPreferred_sync forceDisabled=%d, enabledForSlicing=%d", &cf, 0xEu);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  return (v16 ^ 1) & v26;
}

void sub_10047CF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047CFD8(uint64_t a1, uint64_t a2, CSIPacketAddress *a3, CSIPacketAddress *a4, int a5, unint64_t a6)
{
  valuePtr = a5;
  v10 = *(a1 + 704);
  v11 = *(a1 + 40);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "#I IPv4Service is going up in progress";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "#I IPv4Service is new";
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
LABEL_7:
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  cf = Mutable;
  v15 = *(a1 + 120);
  if (v15 > 0xF)
  {
    v16 = "";
  }

  else
  {
    v16 = off_101E44980[v15];
  }

  CFStringAppendFormat(Mutable, 0, @"%s", v16);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  *keys = 0u;
  *v77 = 0u;
  v78 = 0u;
  v64 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  keys[0] = kIPConfigurationServiceOptionMTU;
  v77[0] = v64;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  theDict = 0;
  if (CSIPacketAddress::isZeroIP(a3))
  {
    v17 = 1;
  }

  else
  {
    v57[0] = 0;
    v57[1] = 0;
    v58 = 0;
    CSIPacketAddress::operator std::string();
    *__dst = *v57;
    v56 = 0;
    *__p = *v57;
    v39 = 0;
    v69 = 0;
    *buf = *v57;
    v71 = 0;
    values[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v18 = v69;
      v69 = values[0];
      v52[0] = v18;
      sub_100005978(v52);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(*buf);
    }

    v68 = v69;
    v69 = 0;
    sub_100005978(&v69);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    *buf = v63;
    v63 = v68;
    v68 = 0;
    sub_100005978(buf);
    sub_100005978(&v68);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__dst[0]);
    }

    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v57;
      if (v58 < 0)
      {
        v20 = v57[0];
      }

      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I IPv4Service is going up with address %s", buf, 0xCu);
    }

    v21 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v22 = theDict;
    theDict = v21;
    *buf = v22;
    sub_1000296E0(buf);
    CFDictionarySetValue(theDict, kSCPropNetIPv4ConfigMethod, kSCValNetIPv4ConfigMethodManual);
    values[0] = v63;
    values[1] = 0;
    v54 = 0;
    v54 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
    CFDictionarySetValue(theDict, kSCPropNetIPv4Addresses, v54);
    if ((CSIPacketAddress::isZeroIP(a4) & 1) == 0)
    {
      v52[0] = 0;
      v52[1] = 0;
      v53 = 0;
      CSIPacketAddress::operator std::string();
      if (SHIBYTE(v53) < 0)
      {
        sub_100005F2C(v49, v52[0], v52[1]);
      }

      else
      {
        *v49 = *v52;
        v50 = v53;
      }

      if (SHIBYTE(v50) < 0)
      {
        sub_100005F2C(__p, v49[0], v49[1]);
      }

      else
      {
        *__p = *v49;
        v39 = v50;
      }

      v67 = 0;
      if (SHIBYTE(v39) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        v71 = v39;
      }

      v68 = 0;
      if (ctu::cf::convert_copy())
      {
        v23 = v67;
        v67 = v68;
        v69 = v23;
        sub_100005978(&v69);
      }

      if (SHIBYTE(v71) < 0)
      {
        operator delete(*buf);
      }

      v51 = v67;
      v67 = 0;
      sub_100005978(&v67);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[0]);
      }

      *buf = v62;
      v62 = v51;
      v51 = 0;
      sub_100005978(buf);
      sub_100005978(&v51);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49[0]);
      }

      v24 = *(a1 + 40);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v52;
        if (SHIBYTE(v53) < 0)
        {
          v25 = v52[0];
        }

        *buf = 136315138;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I IPv4Service is going up with broadcastAddr %s", buf, 0xCu);
      }

      values[0] = v62;
      *buf = 0;
      *buf = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
      CFDictionarySetValue(theDict, kSCPropNetIPv4DestAddresses, *buf);
      sub_100010250(buf);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52[0]);
      }
    }

    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
    sub_10000501C(v52, "255.255.255.255");
    if (SHIBYTE(v53) < 0)
    {
      sub_100005F2C(v47, v52[0], v52[1]);
    }

    else
    {
      *v47 = *v52;
      v48 = v53;
    }

    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(__p, v47[0], v47[1]);
    }

    else
    {
      *__p = *v47;
      v39 = v48;
    }

    v67 = 0;
    if (SHIBYTE(v39) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v71 = v39;
    }

    v68 = 0;
    if (ctu::cf::convert_copy())
    {
      v26 = v67;
      v67 = v68;
      v69 = v26;
      sub_100005978(&v69);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(*buf);
    }

    v51 = v67;
    v67 = 0;
    sub_100005978(&v67);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    *buf = v61;
    v61 = v51;
    v51 = 0;
    sub_100005978(buf);
    sub_100005978(&v51);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    v27 = *(a1 + 40);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v52;
      if (SHIBYTE(v53) < 0)
      {
        v28 = v52[0];
      }

      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I IPv4Service is going up with subnetMask %s", buf, 0xCu);
    }

    values[0] = v61;
    *buf = 0;
    *buf = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
    CFDictionarySetValue(theDict, kSCPropNetIPv4SubnetMasks, *buf);
    keys[1] = kIPConfigurationServiceOptionIPv4Entity;
    v77[1] = theDict;
    sub_100010250(buf);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    sub_100010250(&v54);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v17 = 2;
  }

  v57[0] = 0;
  v57[1] = 0;
  sub_100473238(a1, v57);
  if (v57[0])
  {
    if (*(v57[0] + 71) < 0)
    {
      sub_100005F2C(v45, *(v57[0] + 6), *(v57[0] + 7));
    }

    else
    {
      *v45 = *(v57[0] + 3);
      v46 = *(v57[0] + 8);
    }

    if (SHIBYTE(v46) < 0)
    {
      sub_100005F2C(__p, v45[0], v45[1]);
    }

    else
    {
      *__p = *v45;
      v39 = v46;
    }

    v69 = 0;
    if (SHIBYTE(v39) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v71 = v39;
    }

    values[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v29 = v69;
      v69 = values[0];
      v52[0] = v29;
      sub_100005978(v52);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(*buf);
    }

    v68 = v69;
    v69 = 0;
    sub_100005978(&v69);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    *buf = v60;
    v60 = v68;
    v68 = 0;
    sub_100005978(buf);
    sub_100005978(&v68);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }

    v30 = v60;
    if (v60)
    {
      keys[v17] = kIPConfigurationServiceOptionAPNName;
      v77[v17++] = v30;
    }
  }

  if (v57[1])
  {
    sub_100004A34(v57[1]);
  }

  if (isSliceMask(a6) && sub_10047CB6C(a1))
  {
    keys[v17] = kIPConfigurationServiceOptionEnableL4S;
    v77[v17++] = kCFBooleanTrue;
  }

  values[0] = 0;
  v31 = CFDictionaryCreate(kCFAllocatorDefault, keys, v77, v17, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  values[0] = v31;
  v44 = v31;
  if (v31)
  {
    CFRetain(v31);
  }

  sub_100472F48(a1, "IPv4Service: ip dict: bringUpIPv4Interface_sync", &v44);
  sub_10001021C(&v44);
  sub_100475C48(a1, a1 + 296, 2u);
  v32 = atomic_load((a1 + 712));
  v33 = *(a1 + 40);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: new counter = %u", buf, 8u);
  }

  atomic_fetch_add((a1 + 712), 1u);
  v74 = 0;
  v75 = 0;
  v73 = 0;
  *buf = a1;
  sub_100004AA0(__p, (a1 + 8));
  v35 = __p[0];
  v34 = __p[1];
  *&buf[8] = __p[0];
  v71 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v34);
  }

  v36 = cf;
  v72 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v37 = values[0];
  v73 = values[0];
  if (values[0])
  {
    CFRetain(values[0]);
  }

  v74 = a1 + 296;
  LODWORD(v75) = v32;
  __p[0] = a1;
  __p[1] = v35;
  v39 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v36;
  if (v36)
  {
    CFRetain(v36);
  }

  v41 = v37;
  if (v37)
  {
    CFRetain(v37);
  }

  v42 = v74;
  v43 = v75;
  operator new();
}

void sub_10047DBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, const void *a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, const void *a54, const void *a55, const void *a56, const void *a57, const void *a58, const void *a59, const void *a60, uint64_t a61, const void *a62)
{
  sub_100005978(&a62);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_100010250(&a43);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  sub_1000296E0(&a54);
  sub_100005978(&a55);
  sub_100005978(&a56);
  sub_100005978(&a57);
  sub_100005978(&a58);
  sub_100029A48(&a59);
  sub_100305E28(&a60);
  _Unwind_Resume(a1);
}

void sub_10047DE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received callback for IPv4 SCDynamicStore change at object: %p, ipv4ServiceChanged to be called", &v5, 0xCu);
  }

  sub_100475F38(a3);
}

void sub_10047DEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received callback for IPv6 SCDynamicStore change at object: %p, ipv6ServiceChanged to be called", &v5, 0xCu);
  }

  sub_100476DB0(a3, 0);
}

uint64_t sub_10047DF64(uint64_t a1, const CSIPacketAddress *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100486660(a1, a2);
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_10047DFB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 768);
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0 || (v6 = *(a1 + 760)) == 0)
  {
LABEL_7:
    v8 = 0uLL;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  (*(*v6 + 32))(v6);
  if ((DataUtils::validPersonality() & 1) == 0)
  {
    v7 = a2[1];
    if (v7)
    {
      sub_100004A34(v7);
    }

    goto LABEL_7;
  }

  sub_100004A34(v5);
}

void sub_10047E0C8(_Unwind_Exception *a1)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10047E0FC(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  CSIPDPManager::getInterfaceNameById();
  v23 = 0;
  v3 = getifaddrs(&v23);
  v4 = v23;
  v5 = 0;
  if (v3)
  {
    if (v23)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (!v23)
  {
    goto LABEL_40;
  }

  do
  {
    ifa_addr = v4->ifa_addr;
    if (!ifa_addr || ifa_addr->sa_family != 2)
    {
      goto LABEL_29;
    }

    sub_10000501C(&__p, v4->ifa_name);
    if (v26 >= 0)
    {
      v7 = HIBYTE(v26);
    }

    else
    {
      v7 = v25;
    }

    v8 = HIBYTE(v22);
    v9 = SHIBYTE(v22);
    if (v22 < 0)
    {
      v8 = v21;
    }

    if (v7 == v8)
    {
      if (v26 >= 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24;
      }

      if (v22 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v12 = memcmp(v10, p_p, v7) == 0;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (!v12)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v12 = 0;
      if ((SHIBYTE(v22) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p);
    if (!v12)
    {
      goto LABEL_29;
    }

LABEL_25:
    v13 = v4->ifa_addr;
    __p = 0;
    v21 = 0;
    v22 = 0;
    v14.s_addr = *&v13->sa_data[2];
    v15 = inet_ntoa(v14);
    sub_10000501C(&__p, v15);
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (v22 >= 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p;
      }

      if (v26 >= 0)
      {
        v18 = &v24;
      }

      else
      {
        v18 = v24;
      }

      *buf = 136446466;
      v28 = v17;
      v29 = 2080;
      v30 = v18;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "IPv4 address %{public}s already configured on %s", buf, 0x16u);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    v5 = 1;
LABEL_29:
    v4 = v4->ifa_next;
  }

  while (v4);
  v4 = v23;
  if (v23)
  {
LABEL_39:
    freeifaddrs(v4);
  }

LABEL_40:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  return v5 & 1;
}

void sub_10047E338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047E360(uint64_t a1, unsigned int a2, CSIPacketAddress *a3, CSIPacketAddress *a4, const CSIPacketAddress **a5, uint64_t a6, unint64_t a7, int a8, int a9, char a10, char a11)
{
  if ((*(a1 + 780) & 1) == 0)
  {
    v25 = *(a1 + 40);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v26 = "#E too early start";
LABEL_11:
    v27 = v25;
    v28 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    return 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
  v70 = a7;
  if (!v21)
  {
    v22 = 0;
LABEL_14:
    std::mutex::unlock(v16);
    v23 = 0;
    v24 = 1;
    if (!v22)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v22 = v21[3];
  v23 = v21[4];
  if (!v23)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  v24 = 0;
  if (!v22)
  {
LABEL_20:
    v30 = 1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (!v30)
    {
      return 0;
    }

    goto LABEL_22;
  }

LABEL_15:
  if (!(*(*v22 + 208))(v22))
  {
    goto LABEL_20;
  }

  v29 = *(a1 + 40);
  v30 = 0;
  if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  *buf = 0;
  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E start during reset", buf, 2u);
  v30 = 0;
  if (v24)
  {
    goto LABEL_18;
  }

LABEL_21:
  sub_100004A34(v23);
  if (!v30)
  {
    return 0;
  }

LABEL_22:
  if (!*(a1 + 128))
  {
    v25 = *(a1 + 40);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v26 = "#E service ID not ready";
    goto LABEL_11;
  }

  v68 = a4;
  (*(*a1 + 24))(a1, a1 + 272, a1 + 276, a1 + 280, a1 + 284);
  if (a8 == 1)
  {
    v31 = 296;
LABEL_31:
    v71 = a1 + v31;
    if (*(a1 + v31 + 120) == 2)
    {
      v32 = 488;
      if (a8 == 1)
      {
        v32 = 296;
      }

      *(a1 + v32 + 112) = a10;
      v33 = "IPv6Service: ";
    }

    else
    {
      v33 = "IPv4Service: ";
    }

    v34 = *(a1 + 40);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      v35 = v88[23];
      v36 = *v88;
      CSIPacketAddress::operator std::string();
      v37 = v88;
      if (v35 < 0)
      {
        v37 = v36;
      }

      if (v81 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = v33;
      v83 = 2080;
      *v84 = v37;
      *&v84[8] = 2080;
      v85 = v38;
      v86 = 1024;
      LODWORD(v87) = a8;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %sgoing online with IP %s, LLA %s, ipFamily %u", buf, 0x26u);
      if (v81 < 0)
      {
        operator delete(__p[0]);
      }

      if (v88[23] < 0)
      {
        operator delete(*v88);
      }
    }

    v40 = *a5;
    v39 = a5[1];
    if (*a5 != v39)
    {
      do
      {
        v41 = *(a1 + 40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          CSIPacketAddress::operator std::string();
          v42 = v84[9] >= 0 ? buf : *buf;
          *v88 = 136315394;
          *&v88[4] = v33;
          *&v88[12] = 2082;
          *&v88[14] = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %sgoing online with DNS %{public}s", v88, 0x16u);
          if ((v84[9] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v40 = (v40 + 24);
      }

      while (v40 != v39);
    }

    if (CSIPacketAddress::isZeroIP(a3))
    {
      if (*(v71 + 120) != 2)
      {
        __TUAssertTrigger("model->fIPFamily == kDataProtocolFamilyIPv6");
      }

      v43 = *(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I going online with IPv6Service", buf, 2u);
      }
    }

    memset(v88, 0, 24);
    CSIPacketAddress::CSIPacketAddress(v88, a3);
    __p[0] = 0;
    v44 = *(v71 + 116);
    if (v44 != 1)
    {
      v52 = *(a1 + 40);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        if (v44 > 4)
        {
          v53 = "???";
        }

        else
        {
          v53 = off_101E4EF98[v44];
        }

        isZeroIP = CSIPacketAddress::isZeroIP((v71 + 40));
        v59 = asStringBool(isZeroIP);
        v60 = (v71 + 152);
        if (*(v71 + 175) < 0)
        {
          v60 = *v60;
        }

        *buf = 136315906;
        *&buf[4] = v33;
        v83 = 2080;
        *v84 = v53;
        *&v84[8] = 2080;
        v85 = v59;
        v86 = 2082;
        v87 = v60;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#N %sCannot go online because we are not offline, the state is: %s; current ip is empty: %s; last error reason = %{public}s", buf, 0x2Au);
        v44 = *(v71 + 116);
      }

      if (v44 == 4 && !CSIPacketAddress::isZeroIP((v71 + 40)))
      {
        if (*(v71 + 120) == 2)
        {
          sub_100479C74(a1);
        }

        v50 = 1;
        goto LABEL_107;
      }

      v61 = *(a1 + 40);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#E %sFailed activation, trying to recover ==>>", buf, 0xCu);
      }

      sub_10047EE94(a1, *(v71 + 120), 1);
      v62 = *(a1 + 40);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#E <<== %sFailed activation, recovery over", buf, 0xCu);
      }

LABEL_103:
      v50 = 0;
LABEL_107:
      sub_100486958(__p);
      return v50;
    }

    if (*(v71 + 120) != 2 && sub_10047E0FC(a1, *(a1 + 120)))
    {
      v45 = *(a1 + 40);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I force removing all IPv4 addresses from the interface", buf, 2u);
      }

      sub_100478C1C(a1);
    }

    if (a9 == 1 && (v46 = *(v71 + 124)) != 0)
    {
      v47 = *(a1 + 40);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_81;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      v83 = 1024;
      *v84 = 1;
      *&v84[4] = 1024;
      *&v84[6] = v46;
      v48 = "#I %sReason for going online is resume(%d). Using last known MTU %d";
    }

    else
    {
      sub_100473238(a1, &v78);
      v46 = sub_10047F118(a1, &v78, v71);
      if (v79)
      {
        sub_100004A34(v79);
      }

      *(v71 + 124) = v46;
      v47 = *(a1 + 40);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_81;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      v83 = 1024;
      *v84 = a9;
      *&v84[4] = 1024;
      *&v84[6] = v46;
      v48 = "#I %sReason for going online is not resume(%d) or there is no last known MTU. Using current RAT MTU %d";
    }

    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, buf, 0x18u);
LABEL_81:
    sub_10047A3A4(a1, a5, v71, v33);
    sub_10047A99C(a1, a5, v71);
    sub_10047ACCC(v54, a5, v71);
    if (*(v71 + 64) != *(v71 + 72))
    {
      goto LABEL_88;
    }

    v55 = 296;
    if (*(v71 + 120) == 1)
    {
      v55 = 488;
    }

    if (*(a1 + v55 + 64) != *(a1 + v55 + 72))
    {
      goto LABEL_88;
    }

    sub_100473238(a1, &v76);
    v56 = sub_10047F230(a1, &v76);
    if (v77)
    {
      sub_100004A34(v77);
    }

    if (v56)
    {
LABEL_88:
      sub_100473238(a1, &v74);
      sub_1004757F8(a1, &v74);
      if (v75)
      {
        sub_100004A34(v75);
      }

      if (*(v71 + 120) == 2)
      {
        sub_10047BCA4(a1, a2, a3, v68, v46, a11, v70);
      }

      sub_10047CFD8(a1, v57, a3, v88, v46, v70);
    }

    v63 = *(a1 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#E empty DNS not allowed. abort bringupOnline", buf, 2u);
    }

    v64 = *(a1 + 768);
    if (v64)
    {
      v65 = std::__shared_weak_count::lock(v64);
      if (v65)
      {
        v66 = v65;
        v67 = *(a1 + 760);
        if (v67)
        {
          (*(*v67 + 72))(v67, a2);
        }

        sub_100004A34(v66);
      }
    }

    goto LABEL_103;
  }

  if (a8 == 2)
  {
    v31 = 488;
    goto LABEL_31;
  }

  v49 = *(a1 + 40);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a8;
    v26 = "#E no IP model available: family=%u";
    v27 = v49;
    v28 = 8;
    goto LABEL_12;
  }

  return 0;
}

void sub_10047EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_100004A34(v23);
  sub_100486958(va);
  _Unwind_Resume(a1);
}

void sub_10047EE94(char *a1, uint64_t a2, char a3)
{
  if (a2 == 1)
  {
    v6 = 296;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v6 = 488;
LABEL_5:
    v7 = &a1[v6];
    v8 = *(a1 + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 30);
      *buf = 67109120;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I going offline, fIPFamily %u", buf, 8u);
    }

    (*(*a1 + 24))(a1, a1 + 34, a1 + 276, a1 + 35, a1 + 284);
    if (*(v7 + 29) == 4 || (a3 & 1) != 0)
    {
      if (*(v7 + 30) == 2)
      {
        sub_1004793DC(a1);
      }

      else
      {
        sub_100478C1C(a1);
      }
    }

    else
    {
      v10 = *(a1 + 5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v7 + 30);
        *buf = 67109120;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I already offline for IPfamily %u", buf, 8u);
      }
    }

    sub_10000501C(&__p, "0.0.0.0");
    CSIPacketAddress::CSIPacketAddress();
    CSIPacketAddress::operator=();
    if (v17 < 0)
    {
      operator delete(__p);
    }

    *(v7 + 9) = *(v7 + 8);
    sub_100478DF8(a1, *(v7 + 30));
    if (*(v7 + 29) != 1)
    {
      sub_100475C48(a1, v7, 1u);
      v14 = *(a1 + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v7 + 30);
        *buf = 67109120;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I is offline for IPfamily %u", buf, 8u);
      }
    }

    return;
  }

  v12 = *(a1 + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_101771CE0(a2, v12, v13);
  }
}

void sub_10047F0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10047F118(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = *(v6 + 256);
  if (v5)
  {
LABEL_5:
    sub_100004A34(v5);
  }

LABEL_6:
  if (!a3 || (v7 & 1) == 0 || (v8 = *(a3 + 128), !v8))
  {
    v8 = sub_100484E98(a1);
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = asString();
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I computed MTU[%s]: %u", &v11, 0x12u);
  }

  return v8;
}

uint64_t sub_10047F230(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2 || *(v2 + 232) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 120);
    v6 = *(v2 + 148);
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I pdp%d, APN %d allows no DNS", v8, 0xEu);
  }

  return 1;
}

void sub_10047F308(char *a1, uint64_t a2)
{
  v2 = a2;
  sub_10047EE94(a1, a2, 0);
  if (v2 == 2)
  {
    if (a1[433] == 1 && a1[432] == 1)
    {
      sub_10047EE94(a1, 1, 0);
    }

    *(a1 + 216) = 0;

    sub_10047973C((a1 + 432));
  }
}

uint64_t sub_10047F388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10)
{
  if (a8 == 1)
  {
    v18 = 37;
  }

  else
  {
    if (a8 != 2)
    {
      return 0;
    }

    v18 = 61;
  }

  v19 = &a1[v18];
  v20 = a1[5];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(v19 + 30);
    *buf = 67109120;
    v29 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I going reset, fIPFamily %u", buf, 8u);
  }

  (*(*a1 + 16))(a1);
  if (*(v19 + 30) == 2)
  {
    sub_1004793DC(a1);
  }

  else
  {
    sub_100478C1C(a1);
  }

  sub_10000501C(&__p, "0.0.0.0");
  CSIPacketAddress::CSIPacketAddress();
  CSIPacketAddress::operator=();
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v19[9] = v19[8];
  sub_100478DF8(a1, *(v19 + 30));
  if (*(v19 + 29) != 1)
  {
    sub_100475C48(a1, v19, 1u);
    v23 = a1[5];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v19 + 30);
      *buf = 67109120;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I is offline (to restart) for IPfamily %u", buf, 8u);
    }
  }

  WORD2(v25) = a10;
  LODWORD(v25) = a9;
  return (*(*a1 + 64))(a1, a2, a3, a4, a5, a6, a7, a8, v25);
}

void sub_10047F5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047F608(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10047F714;
  v3[3] = &unk_101E4EAA0;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100487A44;
  block[3] = &unk_101E4ED90;
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

void sub_10047F74C(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v26 = 0;
  v10 = getifaddrs(&v26);
  std::mutex::lock((a1 + 208));
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  if (v26)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_31;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000501C(&v23, "");
  CSIPDPManager::getInterfaceNameById();
  v12 = v26;
  if (v26)
  {
    while (1)
    {
      ifa_addr = v12->ifa_addr;
      if (!ifa_addr || ifa_addr->sa_family != 18)
      {
        goto LABEL_26;
      }

      sub_10000501C(__p, v12->ifa_name);
      if (v25 >= 0)
      {
        v14 = HIBYTE(v25);
      }

      else
      {
        v14 = v24;
      }

      v15 = v22;
      v16 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v15 = __p[1];
      }

      if (v14 != v15)
      {
        break;
      }

      if (v25 >= 0)
      {
        v17 = &v23;
      }

      else
      {
        v17 = v23;
      }

      if ((v22 & 0x80u) == 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      v19 = memcmp(v17, v18, v14) == 0;
      if (v16 < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v19)
      {
        ifa_data = v12->ifa_data;
        *a2 = ifa_data[7] - *(a1 + 272);
        *a3 = ifa_data[5] - *(a1 + 276);
        *a4 = ifa_data[11] - *(a1 + 280);
        *a5 = ifa_data[10] - *(a1 + 284);
        goto LABEL_29;
      }

LABEL_26:
      v12 = v12->ifa_next;
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    v19 = 0;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(__p[0]);
    goto LABEL_25;
  }

LABEL_29:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

LABEL_31:
  std::mutex::unlock((a1 + 208));
  if (v26)
  {
    freeifaddrs(v26);
  }
}

void sub_10047F914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v18 + 208));
  _Unwind_Resume(a1);
}

const void **sub_10047F944@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  result = sub_10005C7A4(a2, (a1 + 128));
  if (!*a2)
  {
    sub_100472AD4(a1, &v7);
    if (&v7 != a2)
    {
      v5 = *a2;
      *a2 = v7;
      v7 = 0;
      v8 = v5;
      sub_100005978(&v8);
    }

    result = sub_100005978(&v7);
    if (*a2)
    {
      sub_10005C7A4(&v6, a2);
      sub_100473880(a1, &v6);
      return sub_100005978(&v6);
    }
  }

  return result;
}

void sub_10047F9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  sub_100005978(v3);
  _Unwind_Resume(a1);
}

void sub_10047FA14(uint64_t a1, _BOOL4 a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (a2)
  {
    *(a1 + 680) = asWirelessTechnology();
    *(a1 + 684) = v3;
  }

  sub_1004730B0(a1, &v10);
  sub_1004757F8(a1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asStringBool(v4);
    v8 = asString();
    v9 = *(a1 + 776);
    *buf = 136315650;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I dataModeChange: %s, dataMode: %s, MTU: %u", buf, 0x1Cu);
  }
}

void sub_10047FB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10047FB48(uint64_t a1, char a2, int a3)
{
  sub_100004AA0(&v6 + 1, (a1 + 8));
  v7 = a2;
  v8 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (a1 + 8));
  operator new();
}

void sub_10047FC6C(uint64_t a1, char a2, char a3, int a4)
{
  sub_100004AA0(&v8 + 1, (a1 + 8));
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (a1 + 8));
  operator new();
}

uint64_t sub_10047FD9C(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  sub_10047DFB8(a1, &v17);
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v19 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v19);
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
  (*(*v10 + 96))(&cf, v10, *(v17 + 52), 1, @"PreferPrimaryDNS", kCFBooleanFalse, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = cf;
  LOBYTE(v19) = 0;
  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v19, v12, v14);
      LOBYTE(v12) = v19;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if (v18)
  {
    sub_100004A34(v18);
  }

  return v12 & 1;
}

void sub_10047FF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = v11;
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047FF70()
{
  ctu::cf::assign();
  v1 = 0uLL;
  v2 = 0;
  CSIPacketAddress::CSIPacketAddress();
  if (CSIPacketAddress::toIPv4(&v1) == -1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_10047FFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10048001C@<X0>(uint64_t a1@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  *a2 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = *a2;
  *a2 = Mutable;
  __p[0] = v5;
  result = sub_1000296E0(__p);
  if (*a2)
  {
    v21 = 0;
    CSIPacketAddress::operator std::string();
    if (v20 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
    v21 = v8;
    if (v20 < 0)
    {
      operator delete(__p[0]);
      v8 = v21;
      if (!v21)
      {
        return sub_100005978(&v21);
      }
    }

    else if (!v8)
    {
      return sub_100005978(&v21);
    }

    __p[0] = v8;
    v9 = CFArrayCreate(kCFAllocatorDefault, __p, 1, &kCFTypeArrayCallBacks);
    v18 = v9;
    if (v9)
    {
      CFDictionarySetValue(*a2, kSCPropNetIPv4Addresses, v9);
      CFDictionarySetValue(*a2, kSCPropNetIPv4Router, __p[0]);
      values = @"255.255.255.255";
      v10 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      v16 = v10;
      if (v10)
      {
        CFDictionarySetValue(*a2, kSCPropNetIPv4SubnetMasks, v10);
        v11 = *(a1 + 120);
        if (v11 > 0xF)
        {
          v12 = "";
        }

        else
        {
          v12 = off_101E44980[v11];
        }

        v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", v12);
        v15 = v13;
        if (v13)
        {
          CFDictionarySetValue(*a2, kSCPropInterfaceName, v13);
          sub_100010180(&v14, a2);
          sub_100472F48(a1, "createSCDictForIPv4: ip dict", &v14);
          sub_10001021C(&v14);
        }

        sub_100005978(&v15);
      }

      sub_100010250(&v16);
    }

    sub_100010250(&v18);
    return sub_100005978(&v21);
  }

  return result;
}

void sub_10048022C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_10001021C(&a10);
  sub_100005978(&a11);
  sub_100010250(&a12);
  sub_100010250(&a14);
  sub_100005978((v21 - 40));
  sub_1000296E0(v20);
  _Unwind_Resume(a1);
}

void sub_1004802B4(uint64_t a1, WirelessTechnologyList *a2)
{
  v29 = 0;
  cf = 0;
  v27 = 0;
  v28 = 0;
  sub_100473238(a1, &v27);
  if (v27)
  {
    sub_10029FEBC(v27, 0, buf);
    *&__p = cf;
    cf = *buf;
    *buf = 0;
    sub_10001021C(&__p);
    sub_10001021C(buf);
    v4 = *(v27 + 248);
    if (v4)
    {
      Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v4);
      v6 = v29;
      v29 = Copy;
      *&__p = v6;
      sub_10001021C(&__p);
    }
  }

  if (!*(a1 + 120) && (*a2 & 8) != 0)
  {
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
    *&__p = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &__p);
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
        if (!v15)
        {
LABEL_26:
          sub_100004A34(v14);
          goto LABEL_27;
        }
      }

      else
      {
        std::mutex::unlock(v8);
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      __p = 0uLL;
      sub_10047DFB8(a1, buf);
      (*(*v15 + 16))(&__p, v15, *(*buf + 52));
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (__p && (*(*__p + 88))(__p))
      {
        theDict = 0;
        (*(*__p + 72))(&theDict);
        if (theDict)
        {
          *buf = CFDictionaryGetValue(theDict, @"ProxyConfiguration");
          sub_100482828(&v29, buf);
        }

        else
        {
          v16 = v29;
          v29 = 0;
          *buf = v16;
          sub_10001021C(buf);
        }

        sub_10001021C(&theDict);
      }

      if (*(&__p + 1))
      {
        sub_100004A34(*(&__p + 1));
      }

      if (v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      std::mutex::unlock(v8);
    }
  }

LABEL_27:
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    WirelessTechnologyList::asString(&__p, a2);
    v18 = v21 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I writeCurrentApnInfoToSystemConfig_sync: schedule start: technology %{public}s", buf, 0xCu);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }
  }

  sub_100004AA0(buf, (a1 + 8));
  v19 = *&buf[8];
  __p = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v19);
  }

  v21 = a1;
  v22 = *a2;
  v23 = v27;
  v24 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v26 = v29;
  if (v29)
  {
    CFRetain(v29);
  }

  operator new();
}

void sub_100480704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, const void *);
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_10001021C(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004807AC(uint64_t a1)
{
  serviceID = 0;
  sub_10047F944(a1, &serviceID);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, @"com.apple.CommCenter");
  v15 = NetworkServiceEntity;
  if (NetworkServiceEntity)
  {
    theDict = 0;
    *buf = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
    sub_100138C38(&theDict, buf);
    if (theDict)
    {
      number = 0;
      *buf = CFDictionaryGetValue(theDict, @"Available");
      sub_1002AF4F0(&number, buf);
      if (number)
      {
        valuePtr = 0;
        Value = CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
        v4 = *(a1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = valuePtr;
          v6 = asStringBool(Value != 0);
          *buf = 67109378;
          *&buf[4] = v5;
          v18 = 2080;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I  kSCPropNetCommCenterAvailable Value = %d, retreival result = %s", buf, 0x12u);
        }

        if (valuePtr)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v10 = *(a1 + 40);
        v7 = 0;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No key kSCPropNetCommCenterAvailable value", buf, 2u);
          v7 = 0;
        }
      }

      sub_100029A48(&number);
    }

    else
    {
      v9 = *(a1 + 40);
      v7 = 0;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I dictionary com.apple.CommCenter in State:// is not present", buf, 2u);
        v7 = 0;
      }
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SC (service) key is not present", buf, 2u);
      v7 = 0;
    }
  }

  sub_100005978(&v15);
  sub_100005978(&serviceID);
  return v7;
}

void sub_100480A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  sub_100029A48(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  _Unwind_Resume(a1);
}

uint64_t sub_100480A64(uint64_t a1)
{
  v1 = 0;
  v5 = 0x200000001;
  while (1)
  {
    v2 = *(&v5 + v1);
    if (v2 == 1)
    {
      break;
    }

    if (v2 == 2)
    {
      v3 = 488;
      goto LABEL_6;
    }

LABEL_7:
    v1 += 4;
    if (v1 == 8)
    {
      return 0;
    }
  }

  v3 = 296;
LABEL_6:
  if (*(a1 + 116 + v3) != 4)
  {
    goto LABEL_7;
  }

  return 1;
}

BOOL sub_100480B08(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109376;
    v15 = a2;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I (PDPManagerInterface::ifstatus = %d, Boolean newstate =%d", &v14, 0xEu);
  }

  if (a2)
  {
    if (a3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7 == a2;
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = v7 == a2;
      v10 = "#I returning value %d";
      v11 = v9;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, 8u);
    }
  }

  else
  {
    v12 = *(a1 + 40);
    v8 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = 1;
      v10 = "#I returning value PDPManagerInterface::ifstatus =  unknown %d";
      v11 = v12;
      goto LABEL_11;
    }
  }

  return v8;
}

unint64_t sub_100480C70(uint64_t a1)
{
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
  __p[0] = v4;
  v8 = sub_100009510((v3 + 64), __p);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_7;
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
LABEL_7:
    v3 = 0;
    goto LABEL_40;
  }

LABEL_10:
  if (*(a1 + 684) != 0 && *(a1 + 684) < 0xFFFFFFFE)
  {
LABEL_38:
    sub_10047DFB8(a1, __p);
    v3 = (*(*v10 + 152))(v10, *(__p[0] + 13), *(a1 + 684));
    if (__p[1])
    {
      sub_100004A34(__p[1]);
    }

    goto LABEL_40;
  }

  v24 = 0;
  v25 = 0;
  sub_100473238(a1, &v24);
  v22 = 0;
  v23 = 0;
  sub_10047DFB8(a1, &v22);
  v12 = 1;
  if (v24 && v22 && *(v24 + 233) == 1)
  {
    v21 = 14;
    memset(__p, 0, sizeof(__p));
    v13 = sub_10048698C(__p, &v21, &v22, 1uLL);
    if (capabilities::ct::supports5G(v13))
    {
      v21 = 17;
      sub_1001FDFFC(__p, &v21);
      v21 = 16;
      sub_1001FDFFC(__p, &v21);
    }

    v14 = __p[0];
    v15 = __p[1];
    if (__p[0] == __p[1])
    {
      v3 = 0;
      if (!__p[0])
      {
LABEL_29:
        if (v3)
        {
          v18 = *(a1 + 40);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = asString();
            LODWORD(__p[0]) = 136315394;
            *(__p + 4) = v19;
            WORD2(__p[1]) = 2048;
            *(&__p[1] + 6) = v3;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I DataMode unknown: %s, using min(LTE/5G) mtu: %lu", __p, 0x16u);
          }

          v12 = 0;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_33;
      }
    }

    else
    {
      LODWORD(v3) = 0;
      do
      {
        v16 = (*(*v10 + 152))(v10, *(v22 + 52), *v14);
        if (v3 >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v3;
        }

        if (!v3)
        {
          v17 = v16;
        }

        if (v16)
        {
          v3 = v17;
        }

        else
        {
          v3 = v3;
        }

        ++v14;
      }

      while (v14 != v15);
      v14 = __p[0];
      if (!__p[0])
      {
        goto LABEL_29;
      }
    }

    __p[1] = v14;
    operator delete(v14);
    goto LABEL_29;
  }

LABEL_33:
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v12)
  {
    goto LABEL_38;
  }

LABEL_40:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return v3;
}

void sub_100480FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10048102C@<X0>(uint64_t a1@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  v5 = 0;
  sub_10047F944(a1, &v5);
  if (v5)
  {
    v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@/%@/%@/com.apple.CommCenter/Setup", kSCDynamicStoreDomainSetup, kSCCompNetwork, kSCCompService, v5);
  }

  else
  {
    v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"com.apple.CommCenter/Setup");
  }

  *a2 = v3;
  v6 = 0;
  sub_100005978(&v6);
  return sub_100005978(&v5);
}

void sub_1004810E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100005978(va);
  sub_100005978(v9);
  _Unwind_Resume(a1);
}

BOOL sub_100481108(uint64_t a1, const __SCNetworkSet *a2, SCNetworkServiceRef service)
{
  ServiceID = SCNetworkServiceGetServiceID(service);
  v7 = SCNetworkSetAddService(a2, service);
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = ServiceID;
      v10 = "#I checkAndRestoreService_sync: service added: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    }
  }

  else if (v9)
  {
    v12 = 138412290;
    v13 = ServiceID;
    v10 = "#N checkAndRestoreService_sync: cannot add service: %@";
    goto LABEL_6;
  }

  return v7 != 0;
}

BOOL sub_100481204(uint64_t a1, SCNetworkSetRef set, const __SCNetworkService *a3)
{
  v6 = SCNetworkSetCopyServices(set);
  if (v6 && (v7 = v6, v15.length = CFArrayGetCount(v6), v15.location = 0, v8 = CFArrayContainsValue(v7, v15, a3), CFRelease(v7), v8))
  {
    ServiceID = SCNetworkServiceGetServiceID(a3);
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = ServiceID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: service %@ already present", &v12, 0xCu);
    }

    return 1;
  }

  else
  {

    return sub_100481108(a1, set, a3);
  }
}

const void **sub_10048134C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X2>, SCNetworkServiceRef *a4@<X8>)
{
  *a3 = 0;
  v59 = 0;
  service = 0;
  v57 = 0;
  v58 = 0;
  cf1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ip%d", (*(a1 + 120) + 1));
  if (cf1)
  {
    theArray = 0;
    v8 = SCNetworkServiceCopyAll(*(*a2 + 8));
    theArray = v8;
    if (!v8)
    {
      v42 = *(a1 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#E checkAndRestoreService_sync: cannot get services", buf, 2u);
      }

      *a4 = 0;
      goto LABEL_93;
    }

    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v12 = ValueAtIndex;
        if (ValueAtIndex)
        {
          Interface = SCNetworkServiceGetInterface(ValueAtIndex);
          if (Interface)
          {
            BSDName = SCNetworkInterfaceGetBSDName(Interface);
            if (BSDName)
            {
              if (CFEqual(cf1, BSDName))
              {
                __p[0] = 0;
                __p[1] = 0;
                v54 = 0;
                SCNetworkServiceGetServiceID(v12);
                memset(buf, 0, sizeof(buf));
                ctu::cf::assign();
                *__p = *buf;
                v54 = *&buf[16];
                v15 = *(a1 + 40);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = __p;
                  if (v54 < 0)
                  {
                    v16 = __p[0];
                  }

                  *buf = 136446466;
                  *&buf[4] = v16;
                  *&buf[12] = 2114;
                  *&buf[14] = BSDName;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: service already exists: %{public}s (interface %{public}@)", buf, 0x16u);
                }

                v52 = v12;
                CFRetain(v12);
                v17 = v58;
                if (v58 >= v59)
                {
                  v19 = v58 - v57;
                  if ((v19 + 1) >> 61)
                  {
                    sub_1000CE3D4();
                  }

                  v20 = (v59 - v57) >> 2;
                  if (v20 <= v19 + 1)
                  {
                    v20 = v19 + 1;
                  }

                  if (v59 - v57 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v21 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v21 = v20;
                  }

                  v63 = &v57;
                  if (v21)
                  {
                    sub_10005B2E0(&v57, v21);
                  }

                  v22 = (8 * v19);
                  *buf = 0;
                  *&buf[8] = v22;
                  v62 = 0;
                  *v22 = 0;
                  *v22 = v52;
                  v52 = 0;
                  *&buf[16] = 8 * v19 + 8;
                  sub_100486A00(&v57, buf);
                  v18 = v58;
                  sub_100486AAC(buf);
                }

                else
                {
                  *v58 = 0;
                  *v17 = v52;
                  v18 = v17 + 1;
                  v52 = 0;
                }

                v58 = v18;
                sub_1004865F8(&v52);
                if (SHIBYTE(v54) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }
      }
    }

    sub_100010250(&theArray);
    if (v57 != v58)
    {
      sub_100486B34(&service, v57);
      v24 = v57;
      v23 = v58;
      if ((v58 - v57) >= 9)
      {
        v25 = 1;
        do
        {
          __p[0] = 0;
          __p[1] = 0;
          v54 = 0;
          SCNetworkServiceGetServiceID(v24[v25]);
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          v54 = *&buf[16];
          SCNetworkServiceRemove(v57[v25]);
          v26 = *(a1 + 40);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            if (v54 >= 0)
            {
              v27 = __p;
            }

            else
            {
              v27 = __p[0];
            }

            *buf = 136446210;
            *&buf[4] = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: service removed: %{public}s", buf, 0xCu);
          }

          *a3 = 1;
          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p[0]);
          }

          ++v25;
          v24 = v57;
          v23 = v58;
        }

        while (v25 < v58 - v57);
      }

      while (v23 != v24)
      {
        v23 = sub_1004865F8(v23 - 1);
      }

      v58 = v24;
      goto LABEL_42;
    }

    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: Did not find the network service, trying to create one", buf, 2u);
    }

    v44 = a2[1];
    v51[0] = *a2;
    v51[1] = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100481D38(a1, v51, __p);
    v45 = service;
    service = __p[0];
    *buf = v45;
    __p[0] = 0;
    sub_1004865F8(buf);
    sub_1004865F8(__p);
    if (v44)
    {
      sub_100004A34(v44);
    }

    if (service)
    {
      __p[0] = 0;
      __p[1] = 0;
      v54 = 0;
      SCNetworkServiceGetServiceID(service);
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = *buf;
      v54 = *&buf[16];
      v46 = *(a1 + 40);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = __p;
        if (v54 < 0)
        {
          v47 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: service created: %{public}s", buf, 0xCu);
      }

      *a3 = 1;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_42:
      theArray = 0;
      v28 = SCNetworkSetCopyAll(*(*a2 + 8));
      theArray = v28;
      if (v28 && CFArrayGetCount(v28))
      {
LABEL_52:
        v33 = CFArrayGetCount(theArray);
        if (v33 >= 1)
        {
          for (j = 0; j != v33; ++j)
          {
            v35 = CFArrayGetValueAtIndex(theArray, j);
            if (v35)
            {
              __p[0] = 0;
              __p[1] = 0;
              v54 = 0;
              SCNetworkServiceGetServiceID(service);
              memset(buf, 0, sizeof(buf));
              ctu::cf::assign();
              *__p = *buf;
              v54 = *&buf[16];
              if (!sub_100481204(a1, v35, service))
              {
                v36 = *(a1 + 40);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  if (v54 >= 0)
                  {
                    v37 = __p;
                  }

                  else
                  {
                    v37 = __p[0];
                  }

                  *buf = 136446210;
                  *&buf[4] = v37;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#N checkAndRestoreService_sync: cannot add service: %{public}s", buf, 0xCu);
                }
              }

              if (SHIBYTE(v54) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }
        }

        v38 = *(a1 + 40);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = asStringBool(*a3);
          *buf = 136315138;
          *&buf[4] = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: updated=%s", buf, 0xCu);
        }

        *a4 = service;
        service = 0;
        goto LABEL_93;
      }

      v29 = *(a1 + 40);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E checkAndRestoreService_sync: empty sets", buf, 2u);
      }

      __p[0] = 0;
      __p[0] = _SCNetworkSetCreateDefault();
      if (__p[0])
      {
        SCNetworkSetEstablishDefaultConfiguration();
        v30 = SCNetworkSetCopyAll(*(*a2 + 8));
        v31 = theArray;
        theArray = v30;
        *buf = v31;
        sub_100010250(buf);
        if (theArray && CFArrayGetCount(theArray))
        {
          v32 = *(a1 + 40);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I checkAndRestoreService_sync: sets recreated", buf, 2u);
          }

          *a3 = 1;
          sub_1004865C4(__p);
          goto LABEL_52;
        }

        v48 = *(a1 + 40);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v49 = "#E checkAndRestoreService_sync: cannot get sets";
LABEL_91:
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 2u);
        }
      }

      else
      {
        v48 = *(a1 + 40);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v49 = "#E checkAndRestoreService_sync: cannot create sets";
          goto LABEL_91;
        }
      }

      *a4 = 0;
      sub_1004865C4(__p);
LABEL_93:
      sub_100010250(&theArray);
      goto LABEL_94;
    }

    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v41 = "#E checkAndRestoreService_sync: cannot create service";
      goto LABEL_69;
    }
  }

  else
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v41 = "#E checkAndRestoreService_sync: cannot create service name";
LABEL_69:
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
    }
  }

  *a4 = 0;
LABEL_94:
  sub_100005978(&cf1);
  *buf = &v57;
  sub_100486BC4(buf);
  return sub_1004865F8(&service);
}