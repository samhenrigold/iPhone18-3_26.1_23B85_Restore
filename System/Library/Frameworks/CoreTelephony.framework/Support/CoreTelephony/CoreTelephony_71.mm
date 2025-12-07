void sub_100481C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, __int16 *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, const void *a24, const void *a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100010250(&a24);
  sub_100005978(&a25);
  a17 = &a26;
  sub_100486BC4(&a17);
  sub_1004865F8(&a31);
  _Unwind_Resume(a1);
}

const void **sub_100481D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const __SCNetworkService **a3@<X8>)
{
  *a3 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  theDict = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, kSCPropNetInterfaceType, @"com.apple.CommCenter");
    v20 = 0;
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ip%d", (*(a1 + 120) + 1));
    CFDictionarySetValue(theDict, kSCPropNetInterfaceDeviceName, v20);
    interface = _SCNetworkInterfaceCreateWithEntity();
    if (interface)
    {
      v18 = 0;
      sub_100473880(a1, &v18);
      sub_100005978(&v18);
      v7 = SCNetworkServiceCreate(*(*a2 + 8), interface);
      *a3 = v7;
      *buf = 0;
      sub_1004865F8(buf);
      if (v7)
      {
        v17 = 0;
        sub_100472AD4(a1, &v17);
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = asStringBool(v17 != 0);
          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I createDefaultService: after re-creation service ID is %s", buf, 0xCu);
        }

        v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v11 = theDict;
        theDict = v10;
        *buf = v11;
        sub_1000296E0(buf);
        v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &unk_101807D64);
        value = v12;
        if (v12)
        {
          CFDictionarySetValue(theDict, @"Available", v12);
          v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &unk_101807D60);
          v14 = value;
          value = v13;
          *buf = v14;
          sub_100029A48(buf);
          CFDictionarySetValue(theDict, kSCPropVersion, value);
          *buf = SCNetworkServiceGetInterface(v7);
          sub_100482878(&interface, buf);
          SCNetworkInterfaceSetConfiguration(interface, theDict);
        }

        sub_100029A48(&value);
        sub_100005978(&v17);
      }
    }

    sub_100486C48(&interface);
    sub_100005978(&v20);
  }

  return sub_1000296E0(&theDict);
}

void sub_100481FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v14 = va_arg(va3, const void *);
  sub_100005978(va);
  sub_100486C48(va1);
  sub_100005978(va2);
  sub_1000296E0(va3);
  sub_1004865F8(v7);
  _Unwind_Resume(a1);
}

void sub_100482060(uint64_t a1, uint64_t a2, WirelessTechnologyList *a3)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WirelessTechnologyList::asString(v9, a3);
    if (v10 >= 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = *v9;
    }

    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I writeServiceEntryToSystemConfig: start: technology %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(*v9);
    }
  }

  v6 = 0;
  v7 = 0;
  sub_100472430();
}

void sub_10048252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_100029A48((v16 - 80));
  sub_1004865F8(&a13);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1004825C0(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I isResetRequiredForService: start (%u)", buf, 8u);
  }

  v7 = 1;
  if (a2 && a3 != 1)
  {
    *buf = 0;
    sub_10047F944(a1, buf);
    valuePtr = -1;
    Value = CFDictionaryGetValue(a2, kSCPropVersion);
    v9 = Value;
    if (!Value)
    {
      goto LABEL_23;
    }

    v10 = CFGetTypeID(Value);
    if (v10 != CFNumberGetTypeID())
    {
      goto LABEL_23;
    }

    v11 = CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
    v7 = 1;
    if (!v11 || valuePtr != 20)
    {
      goto LABEL_24;
    }

    v12 = *buf;
    v13 = *(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (!v14)
      {
LABEL_13:
        v7 = 0;
LABEL_24:
        sub_100005978(buf);
        goto LABEL_25;
      }

      *v20 = 0;
      v15 = "#I isResetRequiredForService: APN settings were fine";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, v20, 2u);
      goto LABEL_13;
    }

    if (!a3)
    {
      if (!v14)
      {
        goto LABEL_13;
      }

      *v20 = 0;
      v15 = "#I isResetRequiredForService: no service ID, not resetting";
      goto LABEL_12;
    }

    if (a3 == 2)
    {
      if (v14)
      {
        *v20 = 0;
        v16 = "#I isResetRequiredForService: no service ID, resetting";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, v20, 2u);
      }
    }

    else if (v14)
    {
      *v20 = 0;
      v16 = "#I isResetRequiredForService: unexpected reset value";
      goto LABEL_22;
    }

LABEL_23:
    v7 = 1;
    goto LABEL_24;
  }

LABEL_25:
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asStringBool(v7);
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I isResetRequiredForService: done: (resetRequired=%s)", buf, 0xCu);
  }

  return v7;
}

void sub_100482808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

const void **sub_100482828(const void **a1, CFTypeRef *a2)
{
  v5 = 0;
  sub_100010180(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  sub_10001021C(&v5);
  return a1;
}

const void **sub_100482878(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100486C48(&v6);
  return a1;
}

const void **sub_1004828CC(const void **result, SCNetworkInterfaceRef interface)
{
  if (interface)
  {
    v3 = result;
    result = SCNetworkInterfaceGetConfiguration(interface);
    if (result)
    {
      v4 = result;
      result = CFDictionaryGetValue(result, @"Setup");
      if (result)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v4);
        config = MutableCopy;
        if (MutableCopy)
        {
          CFDictionaryRemoveValue(MutableCopy, @"Setup");
          if (!SCNetworkInterfaceSetConfiguration(interface, config))
          {
            v6 = v3[5];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              v7 = SCError();
              *buf = 136446210;
              v10 = SCErrorString(v7);
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E SCNetworkInterfaceSetConfiguration failed with %{public}s", buf, 0xCu);
            }
          }
        }

        return sub_1000296E0(&config);
      }
    }
  }

  return result;
}

void sub_1004829E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

const void **sub_100482A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v34 = a3;
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 120);
    *buf = 67109634;
    *&buf[4] = v7;
    *&buf[8] = 2080;
    *&buf[10] = asString();
    *&buf[18] = 1024;
    *&buf[20] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I setting interface availability, pdp: %d, source: %s available: %d", buf, 0x18u);
    v3 = v34;
  }

  if (v3)
  {
    *buf = &v34;
    *(sub_100051AD8(a1 + 736, &v34, &unk_101802C98, buf) + 32) = v4;
  }

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
  *v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  *__src = 0u;
  v38 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  sub_10000C030(&buf[16], "map for pdp:", 12);
  v8 = std::ostream::operator<<();
  sub_10000C030(v8, " { ", 3);
  v9 = *(a1 + 736);
  v10 = (a1 + 744);
  if (v9 != (a1 + 744))
  {
    do
    {
      v11 = sub_10000C030(&buf[16], " (", 2);
      v12 = asString();
      v13 = strlen(v12);
      v14 = sub_10000C030(v11, v12, v13);
      sub_10000C030(v14, ":", 1);
      v15 = std::ostream::operator<<();
      sub_10000C030(v15, ")", 1);
      v16 = v9[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v9[2];
          v18 = *v17 == v9;
          v9 = v17;
        }

        while (!v18);
      }

      v9 = v17;
    }

    while (v17 != v10);
  }

  sub_10000C030(&buf[16], " } ", 3);
  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if ((BYTE8(v43) & 0x10) != 0)
    {
      v21 = v43;
      if (v43 < __src[1])
      {
        *&v43 = __src[1];
        v21 = __src[1];
      }

      v22 = __src[0];
    }

    else
    {
      if ((BYTE8(v43) & 8) == 0)
      {
        v20 = 0;
        v33 = 0;
LABEL_26:
        *(&__p + v20) = 0;
        p_p = &__p;
        if (v33 < 0)
        {
          p_p = __p;
        }

        *v35 = 136446210;
        v36 = p_p;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v35, 0xCu);
        if (v33 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_30;
      }

      v22 = *(&v38 + 1);
      v21 = *(&v39 + 1);
    }

    v20 = v21 - v22;
    if ((v21 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v33 = v21 - v22;
    if (v20)
    {
      memmove(&__p, v22, v20);
    }

    goto LABEL_26;
  }

LABEL_30:
  *&buf[16] = v24;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  std::locale::~locale(&v38);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (v4)
  {
    v25 = *(a1 + 736);
    v4 = 1;
    if (v25 != v10)
    {
      while (1)
      {
        v26 = *(v25 + 32);
        if (!*(v25 + 32))
        {
          break;
        }

        v27 = v25[1];
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
            v28 = v25[2];
            v18 = *v28 == v25;
            v25 = v28;
          }

          while (!v18);
        }

        v4 &= v26;
        v25 = v28;
        if (v28 == v10)
        {
          goto LABEL_43;
        }
      }

      v4 = 0;
    }
  }

LABEL_43:
  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 120);
    *buf = 67109376;
    *&buf[4] = v30;
    *&buf[8] = 1024;
    *&buf[10] = v4;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I changing interface availability, pdp: %d, available: %d", buf, 0xEu);
  }

  return sub_100482F9C(a1, v4);
}

void sub_100482F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const void **sub_100482F9C(void *a1, int a2)
{
  v4 = (*(*a1 + 88))(a1);
  result = sub_100480B08(a1, v4, a2);
  if (result)
  {
    serviceID = 0;
    sub_10047F944(a1, &serviceID);
    if (serviceID)
    {
      key = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, @"com.apple.CommCenter");
      if (key)
      {
        store = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:setInterfaceAvailability", 0, 0);
        if (store)
        {
          *keysToSet = 0;
          *keysToSet = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (*keysToSet)
          {
            theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (theDict)
            {
              if (a2)
              {
                v6 = &unk_101807D64;
              }

              else
              {
                v6 = &unk_101807D68;
              }

              v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v6);
              v15 = v7;
              if (v7)
              {
                CFDictionarySetValue(theDict, @"Available", v7);
                v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 36);
                CFDictionarySetValue(theDict, @"AvailableProtocols", v14);
                CFDictionaryAddValue(*keysToSet, key, theDict);
                if (*keysToSet)
                {
                  if (CFDictionaryGetCount(*keysToSet) >= 1)
                  {
                    SCDynamicStoreSetMultiple(store, *keysToSet, 0, 0);
                  }
                }

                sub_100029A48(&v14);
              }

              sub_100029A48(&v15);
            }

            sub_1000296E0(&theDict);
          }

          sub_1000296E0(keysToSet);
        }

        else
        {
          v11 = a1[5];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = SCError();
            v13 = SCErrorString(v12);
            *keysToSet = 136446210;
            *&keysToSet[4] = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I setInterface: SCDynamicStoreCreate error: %{public}s", keysToSet, 0xCu);
          }
        }

        sub_10048662C(&store);
      }

      else
      {
        v8 = a1[5];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = SCError();
          v10 = SCErrorString(v9);
          *keysToSet = 136446210;
          *&keysToSet[4] = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I setInterface: SCDynamicStoreKeyCreateNetworkServiceEntity error: %{public}s", keysToSet, 0xCu);
        }
      }

      sub_100005978(&key);
    }

    return sub_100005978(&serviceID);
  }

  return result;
}

void sub_100483270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
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
  sub_100029A48(va);
  sub_1000296E0(va1);
  sub_1000296E0(va5);
  sub_10048662C(va2);
  sub_100005978(va3);
  sub_100005978(va4);
  _Unwind_Resume(a1);
}

uint64_t sub_1004832F8(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*a2)
  {
    v28 = 0;
    return v28 & 1;
  }

  theArray = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v35 = a3;
  if (Mutable)
  {
    v7 = theArray;
    theArray = Mutable;
    *buf = v7;
    sub_1000279DC(buf);
  }

  v8 = 0;
  v55 = 0x100000002;
  v36 = 1;
  do
  {
    v9 = *&buf[v8 - 8];
    v10 = a1 + 296;
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_76;
      }

      v10 = a1 + 488;
    }

    if (*(v10 + 116) == 4)
    {
      v12 = *a2;
      v11 = a2[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(v10 + 184);
      *(v10 + 176) = v12;
      *(v10 + 184) = v11;
      if (v13)
      {
        sub_100004A34(v13);
      }

      memset(v48, 0, sizeof(v48));
      CSIPacketAddress::CSIPacketAddress(v48, (v10 + 40));
      if ((CSIPacketAddress::isZeroIP(v48) & 1) == 0)
      {
        v46 = 0;
        v47 = 0;
        memset(v45, 0, sizeof(v45));
        CSIPacketAddress::CSIPacketAddress(v45);
        if (CSIPacketAddress::isIPv6(v48))
        {
          sub_10000501C(&__dst, "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff");
          CSIPacketAddress::CSIPacketAddress();
          CSIPacketAddress::operator=();
          if (SHIBYTE(v52) < 0)
          {
            operator delete(__dst);
          }

          PrefixLen = CSIPacketAddress::getPrefixLen(v48);
          CSIPacketAddress::applyMaskPrefix(v45, PrefixLen);
        }

        else
        {
          CSIPacketAddress::ipv4PrefixLenToMaskAddr(buf, v48);
          CSIPacketAddress::operator=();
        }

        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v43) < 0)
        {
          sub_100005F2C(&__dst, __p[0], __p[1]);
        }

        else
        {
          __dst = *__p;
          v52 = v43;
        }

        v50 = 0;
        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(buf, __dst, *(&__dst + 1));
        }

        else
        {
          *buf = __dst;
          *&buf[16] = v52;
        }

        v53 = 0;
        if (ctu::cf::convert_copy())
        {
          v15 = v50;
          v50 = v53;
          v54 = v15;
          sub_100005978(&v54);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value = v50;
        v50 = 0;
        sub_100005978(&v50);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__dst);
        }

        *buf = v46;
        v46 = value;
        value = 0;
        sub_100005978(buf);
        sub_100005978(&value);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v41) < 0)
        {
          sub_100005F2C(&__dst, v40[0], v40[1]);
        }

        else
        {
          __dst = *v40;
          v52 = v41;
        }

        v50 = 0;
        if (SHIBYTE(v52) < 0)
        {
          sub_100005F2C(buf, __dst, *(&__dst + 1));
        }

        else
        {
          *buf = __dst;
          *&buf[16] = v52;
        }

        v53 = 0;
        if (ctu::cf::convert_copy())
        {
          v16 = v50;
          v50 = v53;
          v54 = v16;
          sub_100005978(&v54);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        value = v50;
        v50 = 0;
        sub_100005978(&v50);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__dst);
        }

        *buf = v47;
        v47 = value;
        value = 0;
        sub_100005978(buf);
        sub_100005978(&value);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40[0]);
        }

        v17 = *(a1 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = asString();
          *buf = 136315394;
          *&buf[4] = "configureHOVirtualInterface";
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface config: to be called for %s...", buf, 0x16u);
        }

        v19 = (*(**a2 + 144))(*a2, v47, v46);
        v20 = *(a1 + 40);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (v21)
          {
            *buf = 136315394;
            *&buf[4] = "configureHOVirtualInterface";
            *&buf[12] = 2114;
            *&buf[14] = v47;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface config: addHOAddress: success: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (v21)
          {
            *buf = 136315394;
            *&buf[4] = "configureHOVirtualInterface";
            *&buf[12] = 2114;
            *&buf[14] = v47;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E %s: HO interface config: addHOAddress: failure: %{public}@", buf, 0x16u);
          }

          v36 = 0;
        }

        if (theArray)
        {
          v23 = *(v10 + 64);
          v22 = *(v10 + 72);
          while (v23 != v22)
          {
            if ((CSIPacketAddress::isZeroIP(v23) & 1) == 0)
            {
              value = 0;
              CSIPacketAddress::operator std::string();
              if (SHIBYTE(v39) < 0)
              {
                sub_100005F2C(&__dst, v38[0], v38[1]);
              }

              else
              {
                __dst = *v38;
                v52 = v39;
              }

              v50 = 0;
              if (SHIBYTE(v52) < 0)
              {
                sub_100005F2C(buf, __dst, *(&__dst + 1));
              }

              else
              {
                *buf = __dst;
                *&buf[16] = v52;
              }

              v53 = 0;
              if (ctu::cf::convert_copy())
              {
                v24 = v50;
                v50 = v53;
                v54 = v24;
                sub_100005978(&v54);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              value = v50;
              v50 = 0;
              sub_100005978(&v50);
              if (SHIBYTE(v52) < 0)
              {
                operator delete(__dst);
              }

              if (SHIBYTE(v39) < 0)
              {
                operator delete(v38[0]);
              }

              CFArrayAppendValue(theArray, value);
              sub_100005978(&value);
            }

            v23 = (v23 + 24);
          }
        }

        sub_100005978(&v46);
        sub_100005978(&v47);
      }
    }

LABEL_76:
    v8 += 4;
  }

  while (v8 != 8);
  v25 = a2[1];
  v37[0] = *a2;
  v37[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100483C90(a1, v37, v35);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v26 = (*(**a2 + 152))(*a2, theArray);
    v27 = *(a1 + 40);
    if (v26)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "configureHOVirtualInterface";
        *&buf[12] = 2114;
        *&buf[14] = theArray;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface config: setDNSServers: success: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101771D54(&theArray, v27, v29);
      }

      v36 = 0;
    }
  }

  v30 = (*(**a2 + 168))();
  v31 = *(a1 + 40);
  if (v30)
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "configureHOVirtualInterface";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface config: success", buf, 0xCu);
    }

    v28 = v36;
  }

  else
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_101771DE0(v31, v32, v33);
    }

    v28 = 0;
  }

  sub_1000279DC(&theArray);
  return v28 & 1;
}

BOOL sub_100483C90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v38 = *a2;
    v7 = 0;
    v8 = 0;
    v9 = a1 + 488;
    v44 = 0x200000001;
    v10 = a1 + 296;
    while (1)
    {
      v11 = *(&v44 + v8);
      v12 = v10;
      if (v11 == 1)
      {
        goto LABEL_6;
      }

      if (v11 == 2)
      {
        break;
      }

LABEL_64:
      v8 += 4;
      if (v8 == 8)
      {
        (*(**a2 + 160))();
        v3 = v38;
        return v3 != 0;
      }
    }

    v12 = v9;
LABEL_6:
    if (*(v12 + 116) == 4)
    {
      v13 = *(v12 + 124);
      v14 = v7 - 1 >= v13 ? v13 : v7;
      if (v13)
      {
        v7 = v14;
      }
    }

    if (v11 != 2)
    {
      goto LABEL_64;
    }

    memset(&__p, 0, sizeof(__p));
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    LOBYTE(v16) = *(&__p.__r_.__value_.__s + 23);
    size = __p.__r_.__value_.__l.__size_;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    if (!v18)
    {
      (*(**a2 + 136))(&buf);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = buf;
      v15 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v16 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    if ((v16 & 0x80u) != 0)
    {
      v15 = size;
    }

    if (!v15)
    {
      v19 = *(a1 + 120);
      v20 = "";
      if (v19 <= 0xF)
      {
        v20 = off_101E44980[v19];
      }

      sub_100016890(&__p, v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
        goto LABEL_34;
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      p_p = &__p;
LABEL_34:
      v22 = sub_1003BAFD0(p_p);
      v23 = v22;
      if (v22 >= v7)
      {
        v24 = v7;
      }

      else
      {
        v24 = v22;
      }

      if (!v7)
      {
        v24 = v22;
      }

      if (v22)
      {
        v7 = v24;
      }

      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "configureHOVirtualInterfaceMTU";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v26;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        v41 = v23;
        v42 = 1024;
        v43 = v7;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: HO interface MTU config V1 (over %s): default route mtu = %u, new mtu %u", &buf, 0x22u);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &__p;
      }

      else
      {
        v27 = __p.__r_.__value_.__r.__words[0];
      }

      v28 = sub_1003BB32C(v27);
      v29 = v28;
      if (v28 >= v7)
      {
        v30 = v7;
      }

      else
      {
        v30 = v28;
      }

      if (!v7)
      {
        v30 = v28;
      }

      if (v28)
      {
        v7 = v30;
      }

      v31 = *(a1 + 40);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      v32 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
      *(buf.__r_.__value_.__r.__words + 4) = "configureHOVirtualInterfaceMTU";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
      v41 = v29;
      v42 = 1024;
      v43 = v7;
      v33 = v31;
      v34 = "#I %s: HO interface MTU config V2 (over %s): default route mtu = %u, new mtu %u";
      v35 = 34;
      goto LABEL_61;
    }

    v36 = *(a1 + 40);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "configureHOVirtualInterfaceMTU";
    v33 = v36;
    v34 = "#I %s: HO interface MTU config: ifaceName is empty";
    v35 = 12;
LABEL_61:
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, &buf, v35);
LABEL_62:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_64;
  }

  return v3 != 0;
}

void sub_10048408C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004840BC(uint64_t a1)
{
  if ((*(a1 + 140) & 1) != 0 || *(a1 + 136) && (sub_1004733BC(a1) & 1) == 0)
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
    v8 = sub_100009510(&v3[1].__m_.__sig, __p);
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
        if (!v10)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
    }

    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_13:
    __p[0] = 0;
    __p[1] = 0;
    v20 = 0;
    CSIPDPManager::getInterfaceNameById();
    v17 = 0;
    v18 = 0;
    sub_10047DFB8(a1, &v17);
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = SHIBYTE(v20);
      v14 = __p[0];
      v15 = subscriber::asString();
      v16 = __p;
      if (v13 < 0)
      {
        v16 = v14;
      }

      *buf = 136446466;
      v22 = v16;
      v23 = 2080;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Setting interface %{public}s expensive cost flag to true, active SIM %s", buf, 0x16u);
    }

    (*(*v10 + 40))(v10, __p, 1);
    if (v18)
    {
      sub_100004A34(v18);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
        return;
      }

LABEL_21:
      sub_100004A34(v9);
      return;
    }

LABEL_20:
    if (v11)
    {
      return;
    }

    goto LABEL_21;
  }
}

void sub_1004842D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10048432C(const void **result, uint64_t a2, const char *a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = "unknown";
  }

  if (*(result + 72) != a2)
  {
    v4 = result;
    *(result + 72) = a2;
    serviceID = 0;
    sub_10047F944(result, &serviceID);
    if (serviceID)
    {
      key = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, @"com.apple.CommCenter");
      if (key)
      {
        v20 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.CommCenter:setProtocolAvailability", 0, 0);
        if (v20)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            theDict = 0;
            *buf = SCDynamicStoreCopyValue(v20, key);
            sub_100138C38(&theDict, buf);
            v17 = 0;
            if (theDict)
            {
              MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
            }

            else
            {
              MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            }

            v12 = v17;
            v17 = MutableCopy;
            *buf = v12;
            sub_1000296E0(buf);
            if (v17)
            {
              v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v4 + 36);
              v16 = v13;
              if (v13)
              {
                CFDictionarySetValue(v17, @"AvailableProtocols", v13);
                CFDictionaryAddValue(Mutable, key, v17);
                SCDynamicStoreSetMultiple(v20, Mutable, 0, 0);
                v14 = v4[5];
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = asString();
                  *buf = 136315394;
                  *&buf[4] = v15;
                  v24 = 2080;
                  v25 = v3;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Configuring PDP manager to use protocol family: %s (reason %s)", buf, 0x16u);
                }
              }

              sub_100029A48(&v16);
            }

            sub_1000296E0(&v17);
            sub_10001021C(&theDict);
          }

          sub_1000296E0(&Mutable);
        }

        else
        {
          v9 = v4[5];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = SCError();
            v11 = SCErrorString(v10);
            *buf = 136446210;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I setProtocol: SCDynamicStoreCreate error: %{public}s", buf, 0xCu);
          }
        }

        sub_10048662C(&v20);
      }

      else
      {
        v6 = v4[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = SCError();
          v8 = SCErrorString(v7);
          *buf = 136446210;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I setProtocol: SCDynamicStoreKeyCreateNetworkServiceEntity error: %{public}s", buf, 0xCu);
        }
      }

      sub_100005978(&key);
    }

    return sub_100005978(&serviceID);
  }

  return result;
}

void sub_100484638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
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
  sub_100029A48(va);
  sub_1000296E0(va1);
  sub_10001021C(va2);
  sub_1000296E0(va3);
  sub_10048662C(va4);
  sub_100005978(va5);
  sub_100005978(va6);
  _Unwind_Resume(a1);
}

uint64_t sub_1004846C0(uint64_t a1)
{
  std::mutex::lock((a1 + 144));
  v2 = *(a1 + 776);
  std::mutex::unlock((a1 + 144));
  return v2;
}

void sub_1004846F8(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    v4 = 296;
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    v4 = 488;
  }

  *(a1 + v4 + 128) = a3;
  sub_100473238(a1, &v5);
  sub_1004757F8(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100484768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100484780(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 781;
  while (2)
  {
    v5 = v3;
    while (1)
    {
      v6 = *(dword_101807D6C + v5);
      if (*(v4 + v6) == 1)
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        if ((v2 & 1) == 0)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = asString();
      *buf = 136315138;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fDNSInProbation %s (change states): true ==>> false", buf, 0xCu);
    }

    *(v4 + v6) = 0;
    v3 = v5 + 4;
    v2 = 1;
    if (v5 != 4)
    {
      continue;
    }

    break;
  }

LABEL_11:
  (*(**(a1 + 784) + 16))(*(a1 + 784));
  v9 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 768);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 760);
      if (v13)
      {
        (*(*v13 + 64))(v13);
      }

      sub_100004A34(v12);
    }
  }
}

void sub_100484960(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = 0;
  v7 = a1 + 781;
  v8 = a1 + 488;
  v9 = a1 + 296;
  v28 = a1 + 296;
  do
  {
    v10 = dword_101807D6C[v6];
    if ((v10 == v3 || anyContextType()) && (*(v7 + v10) & 1) == 0)
    {
      v11 = v9;
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_43;
        }

        v11 = v8;
      }

      v12 = *(v11 + 116);
      if (v12 == 4 || v12 == 2)
      {
        v14 = *(v11 + 64);
        if (*(v11 + 72) != v14 && (CSIPacketAddress::isZeroIP(v14) & 1) == 0)
        {
          v15 = *(a1 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = asString();
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fDNSInProbation %s (change states): false ==>> true", &buf, 0xCu);
          }

          *(v7 + v10) = 1;
          sub_100004AA0(&buf, (a1 + 8));
          v17 = buf;
          if (*(&buf + 1))
          {
            atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(*(&v17 + 1));
          }

          v18 = v8;
          Registry::getTimerService(&buf, *(a1 + 48));
          v19 = buf;
          sub_10000501C(__p, "DNSTimeout");
          v20 = *(a1 + 24);
          object = v20;
          if (v20)
          {
            dispatch_retain(v20);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_100484D78;
          aBlock[3] = &unk_101E4EAD8;
          aBlock[4] = a1;
          v30 = v17;
          if (*(&v17 + 1))
          {
            atomic_fetch_add_explicit((*(&v17 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          v31 = v10;
          v9 = v28;
          v32 = _Block_copy(aBlock);
          sub_100D23364(v19, __p, 0, 21000000, &object, &v32);
          v21 = v36;
          v36 = 0;
          v22 = *(a1 + 784);
          *(a1 + 784) = v21;
          v8 = v18;
          if (v22)
          {
            (*(*v22 + 8))(v22);
            v23 = v36;
            v36 = 0;
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }
          }

          if (v32)
          {
            _Block_release(v32);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v35 < 0)
          {
            operator delete(__p[0]);
          }

          if (*(&buf + 1))
          {
            sub_100004A34(*(&buf + 1));
          }

          v24 = *(a1 + 768);
          if (v24)
          {
            v25 = std::__shared_weak_count::lock(v24);
            if (v25)
            {
              v26 = v25;
              v27 = *(a1 + 760);
              if (v27)
              {
                (*(*v27 + 56))(v27);
              }

              sub_100004A34(v26);
            }
          }

          if (*(&v30 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v30 + 1));
          }

          if (*(&v17 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v17 + 1));
          }
        }
      }
    }

LABEL_43:
    ++v6;
  }

  while (v6 != 2);
}

void sub_100484CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, void *aBlock, dispatch_object_t object, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100004A34(v30);
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  _Unwind_Resume(a1);
}

void sub_100484D78(void *a1)
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
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = asString();
          sub_101771F64(v7, &v8, v6);
        }

        (*(*v3 + 208))(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100484E6C(uint64_t result, uint64_t a2)
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

void sub_100484E88(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

unint64_t sub_100484E98(uint64_t a1)
{
  v2 = sub_100480C70(a1);
  v3 = v2;
  if ((v2 - 0xFFFF) > 0xFFFF0001)
  {
    return v2;
  }

  v4 = *(a1 + 40);
  v5 = 1450;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = v3;
    v8 = 1024;
    v9 = 1450;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I MTU from Carrier Bundle is %d exceeds min./max. limit, using default value of %d!", v7, 0xEu);
  }

  return v5;
}

void sub_100484F70(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 120);
    *buf = 67109120;
    v38 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ========== start pdp_ip%d: ==========", buf, 8u);
  }

  bzero(buf, 0x401uLL);
  v4 = *(a1 + 128);
  if (v4)
  {
    CString = CFStringGetCString(v4, buf, 1024, 0x8000100u);
    v6 = *(a1 + 40);
    if (CString)
    {
      if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *v31 = 136446210;
      v32 = buf;
      v7 = "#I DATA:: fServiceID: %{public}s";
      v8 = v6;
      v9 = 12;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(a1 + 40);
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  *v31 = 0;
  v7 = "#I DATA:: fServiceID: null";
  v8 = v6;
  v9 = 2;
LABEL_10:
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, v31, v9);
LABEL_11:
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = atomic_load((a1 + 696));
    *v31 = 67109120;
    LODWORD(v32) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIPv6ServiceCounter: %u", v31, 8u);
    v10 = *(a1 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = atomic_load((a1 + 712));
    *v31 = 67109120;
    LODWORD(v32) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIPv4ServiceCounter: %u", v31, 8u);
    v10 = *(a1 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 136);
    if (v13 > 4)
    {
      v14 = "Unknown";
    }

    else
    {
      v14 = off_101E4EFC0[v13];
    }

    v15 = asStringBool(*(a1 + 140));
    v16 = asStringBool(*(a1 + 141));
    *v31 = 136315650;
    v32 = v14;
    v33 = 2080;
    v34 = v15;
    v35 = 2080;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fRank: %s, fRankFirstTime =%s, fRankNeedsRefresh = %s", v31, 0x20u);
    v10 = *(a1 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = asStringBool(*(a1 + 780));
    *v31 = 136315138;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fStartCompleted: %s", v31, 0xCu);
  }

  for (i = 0; i != 2; ++i)
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = dword_101807D6C[i];
      v21 = asString();
      v22 = asStringBool(*(a1 + 781 + v20));
      *v31 = 136315394;
      v32 = v21;
      v33 = 2080;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDNSInProbation[%s]: %s", v31, 0x16u);
    }
  }

  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = asStringBool(*(a1 + 784) != 0);
    *v31 = 136315138;
    v32 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDNSInProbationTimer: %s", v31, 0xCu);
    v23 = *(a1 + 40);
    v25 = &off_1017C8000;
  }

  else
  {
    v25 = &off_1017C8000;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asStringBool(*(a1 + 792) != 0);
    *v31 = 136315138;
    v32 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: fConfigdRestartTimer: %s", v31, 0xCu);
    v23 = *(a1 + 40);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v27 = atomic_load((a1 + 800));
    v28 = asStringBool(v27 & 1);
    *v31 = 136315138;
    v32 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIpcInterfaceConfigStarted: %s", v31, 0xCu);
  }

  sub_100485460(a1 + 296);
  sub_100485460(a1 + 488);
  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 120);
    *v31 = *(v25 + 207);
    LODWORD(v32) = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I DATA:: ========== end pdp_ip%d ==========", v31, 8u);
  }
}

void sub_100485460(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIPFamily: %s", buf, 0xCu);
    v2 = *(a1 + 32);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 116);
    if (v3 > 4)
    {
      v4 = "???";
    }

    else
    {
      v4 = off_101E4EFE8[v3];
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fState: %s", buf, 0xCu);
    v2 = *(a1 + 32);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    v5 = v19 >= 0 ? buf : *buf;
    *v20 = 136315138;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: fIpAddress: %s", v20, 0xCu);
    if (v19 < 0)
    {
      operator delete(*buf);
    }
  }

  v6 = *(a1 + 64);
  for (i = *(a1 + 72); v6 != i; v6 += 24)
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      CSIPacketAddress::operator std::string();
      v9 = v19 >= 0 ? buf : *buf;
      *v20 = 136446210;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I DATA:: fDns: %{public}s", v20, 0xCu);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    CSIPacketAddress::operator std::string();
    if (v19 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    *v20 = 136315138;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fLastIPv6Router: %s", v20, 0xCu);
    if (v19 < 0)
    {
      operator delete(*buf);
    }

    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asStringBool(*(a1 + 112));
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fUseLastIPv6Router: %s", buf, 0xCu);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 124);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fLastMTU: %du", buf, 8u);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 128);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fNetworkProvidedMTU: %du", buf, 8u);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = asStringBool();
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: xlatState: ipv4ConfigState: %s", buf, 0xCu);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = asStringBool(*(a1 + 144) != 0);
    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: xlatState: ipv4Timer: %s", buf, 0xCu);
    v10 = *(a1 + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v17 = *v17;
    }

    *buf = 136446210;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: fErrorReason: %{public}s", buf, 0xCu);
  }
}

uint64_t sub_100485900(uint64_t a1, NSObject **a2, const char *a3)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, a3);
  sub_1004859E0(a1, a2, &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  CSIPacketAddress::CSIPacketAddress((a1 + 40));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 88));
  *(a1 + 112) = 0;
  *(a1 + 116) = xmmword_101807D50;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}

void sub_100485998(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[9] = v5;
    operator delete(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 4));
  sub_1000C0544(v1);
  _Unwind_Resume(a1);
}

void *sub_1004859E0(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100485A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void *sub_100485A6C(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));

  return sub_1000C0544(a1);
}

void sub_100485B04(CFDataRef theData@<X1>, uint64_t a2@<X0>, unsigned int a3@<W2>, const unsigned __int8 *a4@<X3>, CFDataRef *a5@<X8>)
{
  if (!theData)
  {
    v12 = *(a2 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *bytes = 0;
    v13 = "#E convertPacketNotificationFilterRemoteAddress: empty remote addr";
LABEL_18:
    v15 = v12;
    v16 = 2;
    goto LABEL_19;
  }

  if (!a3)
  {
    v12 = *(a2 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *bytes = 0;
    v13 = "#E convertPacketNotificationFilterRemoteAddress: empty prefix length";
    goto LABEL_18;
  }

  if (!a4)
  {
    v12 = *(a2 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *bytes = 0;
    v13 = "#E convertPacketNotificationFilterRemoteAddress: empty prefix";
    goto LABEL_18;
  }

  if (CFDataGetLength(theData) != 4)
  {
    v14 = *(a2 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *bytes = 67109120;
      *&bytes[4] = CFDataGetLength(theData);
      v13 = "#E convertPacketNotificationFilterRemoteAddress: wrong addr len = %d";
      v15 = v14;
      v16 = 8;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v13, bytes, v16);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    v12 = *(a2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *bytes = 0;
      v13 = "#E convertPacketNotificationFilterRemoteAddress: empty dataPtr";
      goto LABEL_18;
    }

LABEL_20:
    *a5 = 0;
    return;
  }

  *bytes = 0;
  v20 = 0;
  if (getCLAT46IPv6AddressRemote(BytePtr, a3, a4, bytes))
  {
    v11 = CFDataCreate(0, bytes, 16);
  }

  else
  {
    v17 = *(a2 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E convertPacketNotificationFilterRemoteAddress: cannot convert", v18, 2u);
    }

    v11 = 0;
  }

  *a5 = v11;
}

CFDataRef sub_100485D28@<X0>(CFDataRef *a2@<X8>)
{
  memset(v4, 0, sizeof(v4));
  CSIPacketAddress::CSIPacketAddress();
  *bytes = 0;
  v6 = 0;
  CSIPacketAddress::toIPv6(v4, bytes);
  result = CFDataCreate(0, bytes, 16);
  *a2 = result;
  return result;
}

void sub_100485DB4(uint64_t a1@<X0>, int a2@<W1>, const __CFDictionary **a3@<X2>, const __CFDictionary **a4@<X8>)
{
  v7 = *a3;
  if (a2)
  {
    *a4 = v7;
LABEL_28:
    *a3 = 0;
    return;
  }

  if (!v7)
  {
    v21 = *(a1 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      goto LABEL_27;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N convertPacketNotificationFilterRequest: dict empty", buf, 2u);
LABEL_25:
    v22 = *a3;
LABEL_27:
    *a4 = v22;
    goto LABEL_28;
  }

  v8 = CFDictionaryGetValue(v7, kCTQualityOfServiceFamilyIPv4);
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFDictionaryGetTypeID()))
  {
    sub_100010024(&v60, a3);
    sub_100472F48(a1, "convertPacketNotificationFilterRequest: no IPv4 addr: orig ip dict", &v60);
    sub_10001021C(&v60);
    goto LABEL_25;
  }

  v59 = 0;
  *v68 = 0;
  v69 = 0;
  v57 = 0;
  v58 = 0;
  v56[0] = 0;
  v56[1] = 0;
  CSIPDPManager::getInterfaceNameById();
  __p = 0;
  v54 = 0;
  v55 = 0;
  getCLAT46IPv6Address(v56, &v59, v68, &v58);
  v11 = v58;
  if (!v58)
  {
    v11 = "";
    v58 = "";
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v56;
    if (v57 < 0)
    {
      v13 = v56[0];
    }

    p_p = &__p;
    if (v55 < 0)
    {
      p_p = __p;
    }

    *buf = 136446978;
    *&buf[4] = v13;
    v62 = 2080;
    v63 = p_p;
    v64 = 1024;
    v65 = v59;
    v66 = 2082;
    v67 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I convertPacketNotificationFilterRequest: if_name=%{public}s, ipv6=%s, prefix_len=%u, status=%{public}s", buf, 0x26u);
  }

  v15 = HIBYTE(v55);
  if (v55 < 0)
  {
    v15 = v54;
  }

  if (v15)
  {
    if (v59)
    {
      v16 = kCTQualityOfServiceSourceIP;
      v17 = CFDictionaryGetValue(v9, kCTQualityOfServiceSourceIP);
      v18 = v17;
      if (v17)
      {
        v19 = CFGetTypeID(v17);
        if (v19 == CFDataGetTypeID())
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

      v25 = kCTQualityOfServiceCallType;
      v26 = CFDictionaryGetValue(v9, kCTQualityOfServiceCallType);
      v27 = v26;
      if (v26)
      {
        v28 = CFGetTypeID(v26);
        if (v28 == CFNumberGetTypeID())
        {
          v29 = v27;
        }

        else
        {
          v29 = 0;
        }

        v47 = v29;
      }

      else
      {
        v47 = 0;
      }

      v30 = kCTQualityOfServiceSourcePort;
      v31 = CFDictionaryGetValue(v9, kCTQualityOfServiceSourcePort);
      v32 = v31;
      v45 = v25;
      key = v16;
      v44 = v30;
      if (v31)
      {
        v33 = CFGetTypeID(v31);
        if (v33 == CFNumberGetTypeID())
        {
          v34 = v32;
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
      }

      v35 = kCTQualityOfServiceDestinationPort;
      v36 = CFDictionaryGetValue(v9, kCTQualityOfServiceDestinationPort);
      v37 = v36;
      if (v36)
      {
        v38 = CFGetTypeID(v36);
        if (v38 != CFNumberGetTypeID())
        {
          v37 = 0;
        }
      }

      v39 = kCTQualityOfServiceUniqueTag;
      v40 = CFDictionaryGetValue(v9, kCTQualityOfServiceUniqueTag);
      v41 = v40;
      if (v40)
      {
        v42 = CFGetTypeID(v40);
        if (v42 != CFNumberGetTypeID())
        {
          v41 = 0;
        }
      }

      *buf = 0;
      sub_100485B04(v20, a1, v59, v68, buf);
      value = 0;
      sub_100485D28(&value);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      theDict = Mutable;
      if (*buf)
      {
        CFDictionarySetValue(Mutable, key, *buf);
      }

      if (value)
      {
        CFDictionarySetValue(theDict, kCTQualityOfServiceDestinationIP, value);
      }

      if (v47)
      {
        CFDictionarySetValue(theDict, v45, v47);
      }

      if (v34)
      {
        CFDictionarySetValue(theDict, v44, v34);
      }

      if (v37)
      {
        CFDictionarySetValue(theDict, v35, v37);
      }

      if (v41)
      {
        CFDictionarySetValue(theDict, v39, v41);
      }

      v50 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v50, kCTQualityOfServiceFamilyIPv6, theDict);
      sub_100010024(&v49, a3);
      sub_100472F48(a1, "convertPacketNotificationFilterRequest: orig ip dict", &v49);
      sub_10001021C(&v49);
      sub_100010180(&v48, &v50);
      sub_100472F48(a1, "convertPacketNotificationFilterRequest: new ip dict", &v48);
      sub_10001021C(&v48);
      sub_100010180(a4, &v50);
      sub_1000296E0(&v50);
      sub_1000296E0(&theDict);
      sub_10002D760(&value);
      sub_10002D760(buf);
      goto LABEL_67;
    }

    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "#N convertPacketNotificationFilterRequest: prefix_len empty";
      goto LABEL_34;
    }
  }

  else
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "#I convertPacketNotificationFilterRequest: no IPv6 addr";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    }
  }

  *a4 = *a3;
  *a3 = 0;
LABEL_67:
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }
}

void sub_100486368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, __int16 a14, char a15, char a16, int a17, const void *a18, const void *a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, int a36, const void *a37)
{
  sub_10001021C(&a13);
  sub_1000296E0(&a18);
  sub_1000296E0(&a19);
  sub_10002D760(&a20);
  sub_10002D760(&a37);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100486424(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  CSIPDPManager::getInterfaceNameById();
  v2 = isXLAT464Interface(__p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_100486498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004864B4(uint64_t a1, int a2)
{
  sub_100473238(a1, &v8);
  v4 = sub_10047F230(a1, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v4)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v5 = 296;
  }

  else
  {
    if (a2 != 2)
    {
      return 0;
    }

    v5 = 488;
  }

  if (*(a1 + v5 + 64) == *(a1 + v5 + 72))
  {
    return 0;
  }

  v6 = 296;
  if (a2 == 1)
  {
    v6 = 488;
  }

  return *(a1 + v6 + 64) == *(a1 + v6 + 72);
}

uint64_t sub_100486564(uint64_t a1, uint64_t a2, CFStringRef name)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (!name)
  {
    __TUAssertTrigger("caller");
  }

  *(a1 + 8) = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, name, 0, 0);
  return a1;
}

const void **sub_1004865C4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1004865F8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_10048662C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100486660(uint64_t a1, const CSIPacketAddress *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1001B95F4(a1, v6);
  }

  __p = 0;
  v10 = 24 * v2;
  v12 = 0;
  CSIPacketAddress::CSIPacketAddress((24 * v2), a2);
  v11 = 24 * v2 + 24;
  sub_1001BD2FC(a1, &__p);
  v7 = *(a1 + 8);
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 24) % 0x18uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_10048678C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004867DC(uint64_t a1, const CSIPacketAddress *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1001B95F4(a1, v6);
  }

  __p = 0;
  v10 = 24 * v2;
  v12 = 0;
  CSIPacketAddress::CSIPacketAddress((24 * v2), a2);
  v11 = 24 * v2 + 24;
  sub_1001BD2FC(a1, &__p);
  v7 = *(a1 + 8);
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 24) % 0x18uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_100486908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100486958(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_10048698C(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_1004869E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100486A00(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = sub_1004865F8(result) + 1;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v10 = *a1;
  *a1 = v7;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_100486AAC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_1004865F8((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100486AFC(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **sub_100486B34(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_100486B8C(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_1004865F8(&v5);
  }

  return a1;
}

const void **sub_100486B8C(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void sub_100486BC4(void ***a1)
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
        v4 = sub_1004865F8(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_100486C48(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100486C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (a2)
    {
      if (!v6)
      {
        return;
      }

      v10 = 138543618;
      v11 = a1;
      v12 = 2112;
      v13 = a2;
      v7 = "#I \t%{public}@ = %@;";
      v8 = v5;
      v9 = 22;
      goto LABEL_13;
    }

    if (!v6)
    {
      return;
    }

    v10 = 138543362;
    v11 = a1;
    v7 = "#I \t%{public}@ = null;";
    goto LABEL_10;
  }

  if (a2)
  {
    if (!v6)
    {
      return;
    }

    v10 = 138412290;
    v11 = a2;
    v7 = "#I \tnull = %@;";
LABEL_10:
    v8 = v5;
    v9 = 12;
    goto LABEL_13;
  }

  if (!v6)
  {
    return;
  }

  LOWORD(v10) = 0;
  v7 = "#I \tnull = null;";
  v8 = v5;
  v9 = 2;
LABEL_13:
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
}

void sub_100486DCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_100486E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100486E60(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100486E60(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100486F68(v2);
    operator delete();
  }

  return a1;
}

void sub_100486EAC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100486EE4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_100486F68(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100486F28(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100486F68(uint64_t a1)
{
  sub_1004722E4(a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_100487024(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1004870F8);
  __cxa_rethrow();
}

void sub_100487064(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004870B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004870F8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_100487124(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_100473608(*v1);
  sub_10032EAB4(&v4);
  return sub_1000049E0(&v3);
}

void sub_100487168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10032EAB4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100487184(void *a1)
{
  *a1 = off_101E4EC98;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1004871D0(void *a1)
{
  *a1 = off_101E4EC98;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1004872B0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4EC98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004872F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100487300(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_100487340(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(result + 34);
  if (v2 != -1)
  {
    *(result + 34) = -1;
    return sub_1000A9FE8(result, v2);
  }

  return result;
}

uint64_t sub_100487360(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4ECF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004873AC(const void **a1, const void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t *sub_1004873D8(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 88))(*v1, v1[2], v1[3]);
  sub_10048745C(&v4);
  return sub_1000049E0(&v3);
}

void sub_100487440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10048745C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10048745C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1004874B0(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 88))(*v1, 0, 0);
  sub_10024BAAC(&v4);
  return sub_1000049E0(&v3);
}

void sub_10048751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100487538(void *a1)
{
  *a1 = off_101E4ED18;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100487584(void *a1)
{
  *a1 = off_101E4ED18;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100487664(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4ED18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004876A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1004876B4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1004876F4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  (*(*v3 + 136))(v3, 0);
  if (v2 == 1)
  {
    __p[0] = 0;
    sub_10047F944(v3, __p);
    if (__p[0])
    {
      sub_10047EE94(v3, 1, 1);
      sub_10047EE94(v3, 2, 1);
    }

    else
    {
      v4 = *(v3 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v3 + 120);
        *buf = 67109120;
        v30 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E Did not find the service ID for %d; will try again later", buf, 8u);
      }
    }

    sub_100005978(__p);
  }

  v6 = *(v3 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Finished starting PDP manager", __p, 2u);
  }

  if ((v2 & 1) == 0)
  {
    sub_100475AD4(v3, v3 + 296, "Failed to get serviceID for IPV4", v7, v8, v9, v10, v11);
    sub_100475AD4(v3, v3 + 488, "Failed to get serviceID for IPV6", v12, v13, v14, v15, v16);
  }

  *(v3 + 780) = 1;
  ServiceMap = Registry::getServiceMap(*(v3 + 48));
  v18 = ServiceMap;
  if (v19 < 0)
  {
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, __p);
  if (!v23)
  {
    v25 = 0;
LABEL_19:
    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    if (!v25)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
    goto LABEL_19;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  v26 = 0;
  if (!v25)
  {
LABEL_21:
    if (v26)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_20:
  sub_10000501C(__p, "Finished starting PDP manager");
  (*(*v25 + 1160))(v25, 3, __p, 0);
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if (v26)
  {
    return;
  }

LABEL_22:
  sub_100004A34(v24);
}

void sub_1004879A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004879F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100487A54(uint64_t result, uint64_t a2)
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

void sub_100487A70(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_100487A80(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10001021C((v1 + 32));
    sub_100305E28((v1 + 24));
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100487AE4(uint64_t *a1)
{
  v15 = a1;
  v2 = *a1;
  v3 = *(a1 + 12);
  v4 = atomic_load((*a1 + 696));
  if (v3 == v4 - 1)
  {
    v5 = a1[2];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        if (a1[1])
        {
          v7 = IPConfigurationServiceCreate();
          v8 = *(v2 + 40);
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (v7)
          {
            if (v9)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I IPv6Service successfully created", buf, 2u);
            }

            *buf = 0;
            v17 = 0;
            sub_100004AA0(buf, (v2 + 8));
            operator new();
          }

          if (v9)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E Failed to create IPv6Service", buf, 2u);
          }

          *buf = 0;
          v17 = 0;
          sub_100004AA0(buf, (v2 + 8));
          operator new();
        }

        sub_100004A34(v6);
      }
    }
  }

  else
  {
    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 12);
      v12 = atomic_load((v2 + 696));
      v13 = *(a1[5] + 116);
      *buf = 67109632;
      *&buf[4] = v11;
      LOWORD(v17) = 1024;
      *(&v17 + 2) = v12;
      HIWORD(v17) = 1024;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E IPv6Service: state outdated (stale 0): counter=%u, fIPv6ServiceCounter=%u, state=%u", buf, 0x14u);
    }
  }

  return sub_100487A80(&v15);
}

void sub_100487DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100487E18(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 4);
  v4 = atomic_load((v2 + 696));
  if (v3 == v4 - 1)
  {
    v5 = v1[1];
    if (*(v5 + 116) == 2)
    {
      sub_100475C48(**a1, v5, 1u);
      sub_1004793DC(v2);
      sub_100475C48(v2, v2 + 488, 1u);
      goto LABEL_9;
    }

    v6 = *(v2 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      operator delete();
    }

    v11 = *(v1 + 4);
    v12 = atomic_load((v2 + 696));
    v13 = *(v1[1] + 116);
    *buf = 67109632;
    v15 = v11;
    v16 = 1024;
    v17 = v12;
    v18 = 1024;
    v19 = v13;
    v10 = "#E IPv6Service: state outdated (stale 1.1): counter=%u, fIPv6ServiceCounter=%u, state=%u";
  }

  else
  {
    v6 = *(v2 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 4);
    v8 = atomic_load((v2 + 696));
    v9 = *(v1[1] + 116);
    *buf = 67109632;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v10 = "#E IPv6Service: state outdated (stale 1): counter=%u, fIPv6ServiceCounter=%u, state=%u";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 0x14u);
  goto LABEL_9;
}

void sub_100487FE8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 6);
  v4 = atomic_load((v2 + 696));
  if (v3 == v4 - 1)
  {
    v5 = v1[2];
    if (*(v5 + 116) == 2)
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v1 + 6);
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I IPv6Service: done counter = %u", buf, 8u);
        v5 = v1[2];
      }

      sub_100475C48(v2, v5, 3u);
      *buf = v1[1];
      sub_10047B83C(v2, buf);
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        CFRelease(v8);
      }

LABEL_12:
      operator delete();
    }

    CFRelease(v1[1]);
    v9 = *(v2 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = *(v1 + 6);
    v15 = atomic_load((v2 + 696));
    v16 = *(v1[2] + 116);
    *buf = 67109632;
    *&buf[4] = v14;
    v18 = 1024;
    v19 = v15;
    v20 = 1024;
    v21 = v16;
    v13 = "#E IPv6Service: state outdated (stale 2.1): counter=%u, fIPv6ServiceCounter=%u, state=%u";
  }

  else
  {
    CFRelease(v1[1]);
    v9 = *(v2 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(v1 + 6);
    v11 = atomic_load((v2 + 696));
    v12 = *(v1[2] + 116);
    *buf = 67109632;
    *&buf[4] = v10;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    v13 = "#E IPv6Service: state outdated (stale 2): counter=%u, fIPv6ServiceCounter=%u, state=%u";
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v13, buf, 0x14u);
  goto LABEL_12;
}

void sub_1004881FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10048824C(uint64_t *a1)
{
  v15 = a1;
  v2 = *a1;
  v3 = *(a1 + 12);
  v4 = atomic_load((*a1 + 712));
  if (v3 == v4 - 1)
  {
    v5 = a1[2];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        if (a1[1])
        {
          v7 = IPConfigurationServiceCreate();
          v8 = *(v2 + 40);
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (v7)
          {
            if (v9)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I IPv4Service successfully created", buf, 2u);
            }

            *buf = 0;
            v17 = 0;
            sub_100004AA0(buf, (v2 + 8));
            operator new();
          }

          if (v9)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E Failed to create IPv4Service", buf, 2u);
          }

          *buf = 0;
          v17 = 0;
          sub_100004AA0(buf, (v2 + 8));
          operator new();
        }

        sub_100004A34(v6);
      }
    }
  }

  else
  {
    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 12);
      v12 = atomic_load((v2 + 712));
      v13 = *(a1[5] + 116);
      *buf = 67109632;
      *&buf[4] = v11;
      LOWORD(v17) = 1024;
      *(&v17 + 2) = v12;
      HIWORD(v17) = 1024;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E IPv4Service: state outdated (stale 0): counter=%u, fIPv4ServiceCounter=%u, state=%u", buf, 0x14u);
    }
  }

  return sub_100487A80(&v15);
}

void sub_100488544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100488580(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 4);
  v4 = atomic_load((v2 + 712));
  if (v3 == v4 - 1)
  {
    v5 = v1[1];
    if (*(v5 + 116) == 2)
    {
      sub_100475C48(**a1, v5, 1u);
      sub_100478C1C(v2);
      sub_100475C48(v2, v2 + 296, 1u);
      goto LABEL_9;
    }

    v6 = *(v2 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      operator delete();
    }

    v11 = *(v1 + 4);
    v12 = atomic_load((v2 + 712));
    v13 = *(v1[1] + 116);
    *buf = 67109632;
    v15 = v11;
    v16 = 1024;
    v17 = v12;
    v18 = 1024;
    v19 = v13;
    v10 = "#E IPv4Service: state outdated (stale 1.1): counter=%u, fIPv4ServiceCounter=%u, state=%u";
  }

  else
  {
    v6 = *(v2 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 4);
    v8 = atomic_load((v2 + 712));
    v9 = *(v1[1] + 116);
    *buf = 67109632;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v10 = "#E IPv4Service: state outdated (stale 1): counter=%u, fIPv4ServiceCounter=%u, state=%u";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 0x14u);
  goto LABEL_9;
}

void sub_100488750(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 6);
  v4 = atomic_load((v2 + 712));
  if (v3 == v4 - 1)
  {
    v5 = v1[2];
    if (*(v5 + 116) == 2)
    {
      v6 = *(v2 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v1 + 6);
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I IPv4Service: done counter = %u", buf, 8u);
        v5 = v1[2];
      }

      sub_100475C48(v2, v5, 3u);
      *buf = v1[1];
      sub_10047B3DC(v2, buf);
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        CFRelease(v8);
      }

LABEL_12:
      operator delete();
    }

    CFRelease(v1[1]);
    v9 = *(v2 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = *(v1 + 6);
    v15 = atomic_load((v2 + 712));
    v16 = *(v1[2] + 116);
    *buf = 67109632;
    *&buf[4] = v14;
    v18 = 1024;
    v19 = v15;
    v20 = 1024;
    v21 = v16;
    v13 = "#E IPv4Service: state outdated (stale 2.1): counter=%u, fIPv4ServiceCounter=%u, state=%u";
  }

  else
  {
    CFRelease(v1[1]);
    v9 = *(v2 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(v1 + 6);
    v11 = atomic_load((v2 + 712));
    v12 = *(v1[2] + 116);
    *buf = 67109632;
    *&buf[4] = v10;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    v13 = "#E IPv4Service: state outdated (stale 2): counter=%u, fIPv4ServiceCounter=%u, state=%u";
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v13, buf, 0x14u);
  goto LABEL_12;
}

void sub_100488964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004889B4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100488A08(void *a1)
{
  v12 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = a1[3];
        v7 = *(v3 + 40);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I non-empty IPv6Service tear down start...", buf, 2u);
          }

          CFRelease(v6);
          v7 = *(v3 + 40);
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v14 = 0;
          v9 = "#I IPv6Service teared down";
          v10 = &v14;
          goto LABEL_11;
        }

        if (v8)
        {
          *v13 = 0;
          v9 = "#E empty IPv6Service tear down";
          v10 = v13;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
        }
      }

LABEL_12:
      sub_100004A34(v5);
    }
  }

  return sub_1004889B4(&v12);
}

uint64_t *sub_100488B18(void *a1)
{
  v12 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = a1[3];
        v7 = *(v3 + 40);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I non-empty IPv4Service tear down start...", buf, 2u);
          }

          CFRelease(v6);
          v7 = *(v3 + 40);
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v14 = 0;
          v9 = "#I IPv4Service teared down";
          v10 = &v14;
          goto LABEL_11;
        }

        if (v8)
        {
          *v13 = 0;
          v9 = "#E empty IPv4Service tear down";
          v10 = v13;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
        }
      }

LABEL_12:
      sub_100004A34(v5);
    }
  }

  return sub_1004889B4(&v12);
}

void sub_100488C28(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(**a1 + 48));
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
  __p[0] = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, __p);
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
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_10:
  sub_10000501C(__p, "DS service ID update");
  (*(*v9 + 1160))(v9, 3, __p, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
LABEL_13:
      operator delete();
    }

LABEL_12:
    sub_100004A34(v8);
    goto LABEL_13;
  }

LABEL_11:
  if (v10)
  {
    goto LABEL_13;
  }

  goto LABEL_12;
}

void sub_100488D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  operator delete();
}

uint64_t *sub_100488DF4(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10047FA14(*v1, *(v1 + 24), *(v1 + 28));
  sub_100488E5C(&v4);
  return sub_1000049E0(&v3);
}

void sub_100488E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100488E5C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100488E5C(uint64_t *a1)
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

void sub_100488EB0(void *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10047FA14(*v1, *(v1 + 25), *(v1 + 28));
  if (*(v1 + 24))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v6[0] = off_101E4EDD0;
  v6[3] = v6;
  sub_100473E5C(v2, v3, v6);
}

void sub_100488F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_10000FF50(va2);
  sub_100488FA0(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100488FA0(uint64_t *a1)
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

uint64_t sub_100489080(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4EE30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10048913C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1003423AC(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100489160(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004891A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1004891E0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 32);
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_10048923C(uint64_t a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = *(a1 + 24);
  LODWORD(v4) = *(a1 + 64);
  sub_100482060(v1, v2, &v4);
}

void sub_1004893C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004893FC(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10000FFD0(v1 + 24, *(v1 + 16));
  sub_100489460(&v4);
  return sub_1000049E0(&v3);
}

void sub_100489444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100489460(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100489460(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 24);
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1004894BC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10001021C((v1 + 56));
    sub_10001021C((v1 + 48));
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10048952C(void *a1)
{
  v5[0] = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*a1)
      {
        v5[11] = 0;
        v5[12] = 0;
        sub_100472430();
      }

      sub_100004A34(v3);
    }
  }

  return sub_1004894BC(v5);
}

void sub_100489A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, const void *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1000296E0(&__p);
  sub_1004865F8(&a26);
  if (a28)
  {
    sub_100004A34(a28);
  }

  sub_100004A34(v35);
  sub_1004894BC(&a10);
  _Unwind_Resume(a1);
}

const void **sub_100489AF4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100489B28(uint64_t a1, void *a2, uint64_t a3, NSObject **a4, uint64_t *a5)
{
  *a1 = off_101E416B0;
  *(a1 + 8) = off_101E81D80;
  v10 = a1 + 16;
  *(a1 + 16) = off_101E4FCC0;
  *(a1 + 24) = off_101EC7AB8;
  *(a1 + 32) = off_101E93808;
  v11 = kCtLoggingSystemName;
  v12 = sub_100489EC0(a3);
  ctu::OsLogContext::OsLogContext(&v17, v11, v12);
  sub_100489EE4((a1 + 40), a4, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101E4F020;
  *(a1 + 8) = off_101E4F678;
  *(a1 + 16) = off_101E4F8C8;
  *(a1 + 24) = off_101E4F998;
  *(a1 + 32) = off_101E4FB70;
  v13 = a2[1];
  *(a1 + 80) = *a2;
  *(a1 + 88) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v14 = *a5;
  v15 = *a4;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  (*(*v14 + 96))(v14, a2, a3, &object, v10);
  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 128) = a3;
  operator new();
}

const char *sub_100489EC0(unsigned int a1)
{
  if (a1 > 9)
  {
    return "DATA.PDP:N:";
  }

  else
  {
    return off_101E4FF10[a1];
  }
}

void *sub_100489EE4(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100489F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_100489F70(void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  operator new();
}

void sub_10048A030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
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

void sub_10048A058(void *a1)
{
  v2 = 0;
  *a1 = off_101E4F020;
  a1[1] = off_101E4F678;
  a1[2] = off_101E4F8C8;
  v3 = (a1 + 3);
  a1[3] = off_101E4F998;
  a1[4] = off_101E4FB70;
  do
  {
    if (SHIBYTE(a1[v2 + 42]) < 0)
    {
      operator delete(a1[v2 + 40]);
    }

    v2 -= 10;
  }

  while (v2 != -20);
  v4 = a1[22];
  a1[22] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a1[17];
  a1[17] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[15];
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = a1[11];
  if (v10)
  {
    sub_100004A34(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 9));
  sub_1000C0544(a1 + 5);
  TMKXPCServer.shutdown()();
  DataAPNSettingsPDPActivatorInterface::~DataAPNSettingsPDPActivatorInterface(v3);
  TMKXPCServer.shutdown()();

  TMKXPCServer.shutdown()();
}

void sub_10048A244(void *a1)
{
  sub_10048A058(a1);

  operator delete();
}

void sub_10048A27C(uint64_t a1)
{
  sub_10048A058((a1 - 8));

  operator delete();
}

void sub_10048A2B8(uint64_t a1)
{
  sub_10048A058((a1 - 16));

  operator delete();
}

void sub_10048A2F4(uint64_t a1)
{
  sub_10048A058((a1 - 24));

  operator delete();
}

void sub_10048A330(uint64_t a1)
{
  sub_10048A058((a1 - 32));

  operator delete();
}

void sub_10048A374(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  for (i = *(v1 + 16); v2 != i; v2 += 9)
  {
    v4 = *v2;
    if (*v2 != v2 + 1)
    {
      do
      {
        v5 = v4[4];
        v6 = v4[5];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 240))(v5);
        if (v6)
        {
          sub_100004A34(v6);
        }

        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v2 + 1);
    }
  }
}

void sub_10048A448(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048A460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 != v4)
  {
    v5 = a2;
    do
    {
      v6 = *v3;
      if (*v3 != v3 + 1)
      {
        do
        {
          v8 = v6[4];
          v7 = v6[5];
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v8 + 56))(v8) == v5 || anyContextType())
          {
            (*(*v8 + 232))(v8);
          }

          if (v7)
          {
            sub_100004A34(v7);
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

        while (v10 != v3 + 1);
      }

      v3 += 9;
    }

    while (v3 != v4);
  }
}

void sub_10048A580(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((validContextType() & 1) == 0)
  {
    v15 = *(a1 + 72);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v18 = 136315394;
    *v19 = "registerDataDriver";
    *&v19[8] = 2080;
    *&v19[10] = asString();
    v16 = "#E %s: wrong context type: %s";
    v17 = v15;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v18, 0x16u);
    return;
  }

  v6 = *a3;
  v7 = *(a1 + 72);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      return;
    }

    v18 = 136315394;
    *v19 = "registerDataDriver";
    *&v19[8] = 2080;
    *&v19[10] = asString();
    v16 = "#N %s: data driver is empty for: %s";
    v17 = v7;
    goto LABEL_15;
  }

  if (v8)
  {
    (*(*&v6[*(*v6 - 56)] + 24))(&v6[*(*v6 - 56)]);
    v18 = 136315650;
    *v19 = "registerDataDriver";
    *&v19[8] = 2080;
    *&v19[10] = subscriber::asString();
    v20 = 2080;
    v21 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Registering driver %s for context type: %s", &v18, 0x20u);
    v6 = *a3;
  }

  v9 = *(a1 + 136);
  (*(*&v6[*(*v6 - 56)] + 16))(&v18);
  v10 = sub_10048A828(v9, &v18);
  if (*&v19[4])
  {
    sub_100004A34(*&v19[4]);
  }

  v11 = v10 + 16 * v4;
  v13 = *a3;
  v12 = *(a3 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(v11 + 32);
  *(v11 + 24) = v13;
  *(v11 + 32) = v12;
  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_10048A808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048A828(std::__shared_weak_count *a1, void *a2)
{
  if (sub_100094EA8(a1, a2))
  {

    return sub_100094F40(a1, a2);
  }

  else
  {
    sub_100117E48(v7, a2);
    shared_weak_owners = a1->__shared_weak_owners_;
    if (shared_weak_owners >= a1[1].__vftable)
    {
      p_on_zero_shared_weak = sub_10049F344(&a1->__shared_owners_, v7);
    }

    else
    {
      sub_10049F2B0(&a1->__shared_owners_, v7);
      p_on_zero_shared_weak = &shared_weak_owners[1].__on_zero_shared_weak;
    }

    a1->__shared_weak_owners_ = p_on_zero_shared_weak;
    sub_100117ED8(v7);
    return a1->__shared_weak_owners_ - 72;
  }
}

void sub_10048A8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100117ED8(va);
  _Unwind_Resume(a1);
}

void sub_10048A8E4(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = a2;
  if ((validContextType() & 1) == 0)
  {
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = 136315394;
    *v18 = "unregisterDataDriver";
    *&v18[8] = 2080;
    *&v18[10] = asString();
    v15 = "#E %s: wrong context type: %s";
    v16 = v14;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v17, 0x16u);
    return;
  }

  v6 = *a3;
  v7 = *(a1 + 72);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      return;
    }

    v17 = 136315394;
    *v18 = "unregisterDataDriver";
    *&v18[8] = 2080;
    *&v18[10] = asString();
    v15 = "#N %s: data driver is empty for: %s";
    v16 = v7;
    goto LABEL_16;
  }

  if (v8)
  {
    (*(*&v6[*(*v6 - 56)] + 24))(&v6[*(*v6 - 56)]);
    v17 = 136315650;
    *v18 = "unregisterDataDriver";
    *&v18[8] = 2080;
    *&v18[10] = subscriber::asString();
    v19 = 2080;
    v20 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Unregistering driver %s for context type: %s", &v17, 0x20u);
    v6 = *a3;
  }

  v9 = *(a1 + 136);
  (*(*&v6[*(*v6 - 56)] + 16))(&v17);
  v10 = sub_100094EA8(v9, &v17);
  if (*&v18[4])
  {
    sub_100004A34(*&v18[4]);
  }

  if (v10)
  {
    v11 = *(a1 + 136);
    (*(*&(*a3)[*(**a3 - 56)] + 16))(&v17);
    v12 = sub_100094F40(v11, &v17) + 16 * v4;
    v13 = *(v12 + 32);
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    if (v13)
    {
      sub_100004A34(v13);
    }

    if (*&v18[4])
    {
      sub_100004A34(*&v18[4]);
    }
  }
}

void sub_10048ABA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048ABCC(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v4 = *(a1 + 144);
  if (v4)
  {
    (*(*(v4 + *(*v4 - 56)) + 16))(buf);
    v5 = *buf;
    v11 = *buf;
    v12 = *&buf[8];
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleDataContextAborted";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: active settings aborted", buf, 0xCu);
    }

    (*(**(a1 + 144) + 392))(*(a1 + 144), a2);
  }

  else
  {
    v5 = 0;
  }

  if (validContextType())
  {
    if (v5 && sub_100094EA8(*(a1 + 136), &v11) && *(sub_100094F40(*(a1 + 136), &v11) + 16 * a2 + 24))
    {
      v7 = *(sub_100094F40(*(a1 + 136), &v11) + 16 * a2 + 24);
      v8 = sub_10048AE40(a1);
      (*(*v7 + 184))(v7, v8);
    }
  }

  else
  {
    v9 = *(a1 + 72);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      *buf = 136315394;
      *&buf[4] = "handleDataContextAborted";
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_10048AE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048AE40(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*v2 + 56))(v2);
  if (v3)
  {
LABEL_5:
    sub_100004A34(v3);
  }

  return v4;
}

void sub_10048AEC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048AEE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 144);
  if (v3)
  {
    v6 = result;
    v7 = *(result + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "handleDataContextMOBIKEDone";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: active settings mobike done", &v8, 0xCu);
      v3 = *(v6 + 144);
    }

    return (*(*v3 + 400))(v3, a2, a3);
  }

  return result;
}

uint64_t sub_10048AFE8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 144);
  if (v2)
  {
    v4 = result;
    v5 = *(result + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "retryPendingActivations";
      v8 = 2080;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: retrying for %s", &v6, 0x16u);
      v2 = *(v4 + 144);
    }

    return (*(*v2 + 408))(v2, a2);
  }

  return result;
}

void sub_10048B0F4(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "proxyUpdate";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  if (*(a1 + 144))
  {
    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      do
      {
        v11 = *(a1 + 72);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v9;
          if (*(v9 + 23) < 0)
          {
            v12 = *v9;
          }

          *buf = 136315394;
          v17 = "proxyUpdate";
          v18 = 2080;
          v19 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Adding ipv proxy %s", buf, 0x16u);
        }

        v9 += 24;
      }

      while (v9 != v10);
    }

    v13 = *(a1 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
      v15 = "";
      v17 = "proxyUpdate";
      *buf = 136315650;
      if (a4)
      {
        v15 = " in handover";
      }

      v18 = 2048;
      v19 = v14;
      v20 = 2080;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: Read %lu Proxies%s. Posting event", buf, 0x20u);
    }

    (*(**(a1 + 144) + 416))(*(a1 + 144), a2, a3, a4);
  }
}

uint64_t sub_10048B340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "applicationIDUpdate";
    v10 = 1024;
    v11 = a3;
    v12 = 2080;
    v13 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: application ID update: appId=%d for %s", &v8, 0x1Cu);
  }

  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 424))(result, a2, a3);
  }

  return result;
}

void sub_10048B458(uint64_t a1, const void *a2, int64_t __n)
{
  v5 = a1 + 376;
  *(a1 + 384) = -1;
  *(a1 + 376) = -1;
  if (__n > 9 || (memcpy((a1 + 376), a2, __n), __n >= 1))
  {
    v6 = 0;
    do
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v5 + v6);
        *buf = 67109376;
        v10 = v6;
        v11 = 1024;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fSnssaiArray[%d]=%d", buf, 0xEu);
      }

      ++v6;
    }

    while (__n != v6);
  }
}

void sub_10048B584(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      sub_101771FA0();
    }
  }

  else
  {

    sub_10048B5D4(a1, a2);
  }
}

void sub_10048B5D4(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I set PduSessionId=%d", v5, 8u);
  }

  *(a1 + 408) = a2;
}

uint64_t sub_10048B688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "handleDataContextIPDidGetPcoInfo";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: got pco context ip", &v10, 0xCu);
  }

  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 432))(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10048B790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 144);
  if (v4)
  {
    v8 = result;
    v9 = *(result + 72);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "resetActivationBlocker";
      v12 = 2080;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker: %s", &v10, 0x16u);
      v4 = *(v8 + 144);
    }

    return (*(*v4 + 440))(v4, a2, a3, a4, 0);
  }

  return result;
}

void sub_10048B8B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "setActivationBlocker";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker", buf, 0xCu);
      v3 = *(a1 + 144);
    }

    v8 = a3[1];
    v9 = *a3;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 456))(v3, a2, &v9);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_10048B9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048B9F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 240))();
  }

  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 240))();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_10048BA3C(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

uint64_t sub_10048BA74(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

uint64_t sub_10048BAAC(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 168))();
  }

  return result;
}

uint64_t sub_10048BADC(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 168))();
  }

  return result;
}

uint64_t sub_10048BB0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 472))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10048BB48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 472))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10048BB84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 472))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_10048BBC0(uint64_t a1@<X0>, CIPFamily *a2@<X8>)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    (*(*v2 + 480))();
  }

  else
  {
    CIPFamily::CIPFamily(a2);
  }
}

uint64_t sub_10048BC04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 488))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_10048BC44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 488))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_10048BC84(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 568))();
  }

  return result;
}

uint64_t sub_10048BCBC(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 568))();
  }

  return result;
}

uint64_t sub_10048BCF4(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 576))();
  }

  return result;
}

uint64_t sub_10048BD2C(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 576))();
  }

  return result;
}

uint64_t sub_10048BD64(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 496))();
  }

  return result;
}

uint64_t sub_10048BD9C(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 496))();
  }

  return result;
}

void sub_10048BDFC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  sub_10048BE74(a1, a2, 2, 0, &v3);
  v2 = v4;
  if (v4)
  {

    sub_100004A34(v2);
  }
}

void sub_10048BE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048BE74(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = 0;
  v10 = (*(*a1 + 576))(a1, a3, 0, 0);
  v11 = *a5;
  if (*a5)
  {
    goto LABEL_7;
  }

  v11 = *(a1 + 144);
  v12 = *(a1 + 152);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a5[1];
  *a5 = v11;
  a5[1] = v12;
  if (v13)
  {
    sub_100004A34(v13);
    v11 = *a5;
  }

  if (v11)
  {
LABEL_7:
    (*(*v11 + 640))(v11, a3, a4, &v18);
    if (v18)
    {
      v14 = *(a1 + 72);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 128);
        *buf = 136315906;
        v20 = "handleErrorThrottling";
        v21 = 1024;
        v22 = v15;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = a4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: Throttling PDP context activation on context [%d] after %d activation errors (error type %d).", buf, 0x1Eu);
      }
    }
  }

  if (v10 != 32 && a2 >= 3 && a4 == 0)
  {
    (*(**(a1 + 112) + 192))(*(a1 + 112), v18);
  }
}

void *sub_10048C04C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100004AA0(v6, (a1 + 40));
  v4 = v6[1];
  if (v6[0])
  {
    v5 = v6[0] + 8;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

void *sub_10048C098@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100004AA0(v6, (a1 + 40));
  v4 = v6[1];
  if (v6[0])
  {
    v5 = v6[0] + 32;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_10048C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "postConnectionStateChangeNotification";
    v14 = 2080;
    v15 = asStringConnectionStateChangeReason();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: %s", &v12, 0x16u);
  }

  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 536))(result, a2, a3, a4, a5);
  }

  return result;
}

void sub_10048C240(void *a1, uint64_t a2)
{
  v4 = a1[14];
  sub_10048C33C(a1, &v7);
  (*(*v4 + 88))(v4, v7 != 0);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v5 = a1[18];
  v6 = a1[19];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    (*(*v5 + 632))(v5, a2);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10048C314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048C33C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    (*(*v3 + 624))(v3);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    if (!v4)
    {
      return;
    }
  }

  sub_100004A34(v4);
}

void sub_10048C3D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048C3E8(void *a1)
{
  v2 = a1[9];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: starting shutdown", buf, 2u);
  }

  v3 = a1[14];
  if (v3)
  {
    v4 = a1[9];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: collocation", v23, 2u);
      v3 = a1[14];
    }

    (*(*v3 + 72))(v3);
  }

  v5 = a1[17];
  v6 = *(v5 + 8);
  for (i = *(v5 + 16); v6 != i; v6 += 9)
  {
    v7 = *v6;
    if (*v6 != v6 + 1)
    {
      do
      {
        v9 = v7[4];
        v8 = v7[5];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = a1[9];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: context", v22, 2u);
        }

        (*(*v9 + 432))(v9);
        if (v8)
        {
          sub_100004A34(v8);
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
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != v6 + 1);
    }
  }

  v14 = a1[9];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: models", v21, 2u);
  }

  v15 = a1[17];
  v17 = *(v15 + 8);
    ;
  }

  *(v15 + 16) = v17;
  v18 = a1[9];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: done", v20, 2u);
  }
}

void sub_10048C674(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048C6DC(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t sub_10048C70C(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

void sub_10048C8BC(uint64_t a1, uint64_t *a2)
{
  sub_100004AA0(&block, (a1 + 40));
  v5 = block;
  v4 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = sub_10048CA4C;
  v8[3] = &unk_101E4FBE0;
  v8[4] = a1;
  v8[5] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = 0;
  v20 = 0;
  sub_100004AA0(&v19, (a1 + 40));
  v7 = *(a1 + 56);
  block = _NSConcreteStackBlock;
  v13 = 1174405120;
  v14 = sub_10049F6D8;
  v15 = &unk_101E4FEE0;
  v17 = v19;
  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v8;
  dispatch_async(v7, &block);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10048CA4C(void *a1)
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
        if (!(*(*v3 + 592))(v3))
        {
          goto LABEL_20;
        }

        (*(*v3 + 584))(&v13, v3);
        matched = DataUtils::matchPersonality();
        if (*&v14[4])
        {
          sub_100004A34(*&v14[4]);
        }

        if (matched)
        {
          v7 = *(v3 + 72);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315138;
            *v14 = "checkSuspendedAfterHandover_block_invoke";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: executing...", &v13, 0xCu);
          }

          if (sub_100094EA8(*(v3 + 136), (a1 + 7)))
          {
            v8 = (sub_100094F40(*(v3 + 136), (a1 + 7)) + 32);
            v9 = 32;
            do
            {
              v10 = *(v8 - 1);
              v11 = *v8;
              if (*v8)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v10)
              {
                (*(*v10 + 136))(v10);
              }

              if (v11)
              {
                sub_100004A34(v11);
              }

              v8 += 2;
              v9 -= 16;
            }

            while (v9);
          }
        }

        else
        {
LABEL_20:
          v12 = *(v3 + 72);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315138;
            *v14 = "checkSuspendedAfterHandover_block_invoke";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", &v13, 0xCu);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void *sub_10048CCBC(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10048CCF0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10048CD40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v7 = a2;
  v8 = a1;
  if (sub_100094EA8(*(a1 + 136), a3))
  {
    v41 = a4;
    v9 = sub_100094F40(*(v8 + 136), a3);
    v10 = *v9;
    v43 = v9 + 1;
    if (*v9 == v9 + 1)
    {
      v44 = 0;
    }

    else
    {
      v46 = a3;
      v44 = 0;
      v45 = v7;
      do
      {
        v11 = v10[4];
        v12 = v10[5];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11 && (*(*v11 + 56))(v11) == v7)
        {
          v13 = *(v8 + 72);
          v48 = v12;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v59 = v11;
            v60 = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v14 = asString(&v59);
            v15 = asString();
            *buf = 136315650;
            v62 = "notifyOtherActiveContextsAboutFailure";
            v63 = 2080;
            v64 = v14;
            v65 = 2080;
            v66 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: %s failed to activate (%s)", buf, 0x20u);
            if (v60)
            {
              sub_100004A34(v60);
            }
          }

          v47 = v11;
          v16 = sub_100094F40(*(v8 + 136), v46);
          v18 = v16 + 1;
          v17 = *v16;
          if (*v16 != v16 + 1)
          {
            do
            {
              v19 = v17[4];
              v20 = v17[5];
              if (v20)
              {
                atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v19 && (*(*v19 + 56))(v19) != v7)
              {
                v21 = v8;
                v22 = *(v8 + 72);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = v47;
                  v58 = v48;
                  if (v48)
                  {
                    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v23 = asString(&v57);
                  (*(*v19 + 56))(v19);
                  v24 = asString();
                  v25 = (*(*v19 + 136))(v19, 3);
                  v26 = asStringBool(v25);
                  v27 = (*(*v19 + 56))(v19);
                  v56[0] = 0;
                  v56[1] = 0;
                  v28 = sub_1000A56E8(v21, v27, v56);
                  v29 = asStringBool(v28);
                  *buf = 136316162;
                  v62 = "notifyOtherActiveContextsAboutFailure";
                  v63 = 2080;
                  v64 = v23;
                  v65 = 2080;
                  v66 = v24;
                  v67 = 2080;
                  v68 = v26;
                  v69 = 2080;
                  v70 = v29;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: %s other context (%s), activated=%s, suspended=%s", buf, 0x34u);
                  if (v58)
                  {
                    sub_100004A34(v58);
                  }
                }

                v12 = v48;
                v8 = v21;
                v7 = v45;
                if (((*(*v19 + 136))(v19, 3) & 1) != 0 || (v30 = (*(*v19 + 56))(v19), v55[0] = 0, v55[1] = 0, sub_1000A56E8(v8, v30, v55)))
                {
                  v31 = *(v8 + 72);
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    v53 = v19;
                    v54 = v20;
                    if (v20)
                    {
                      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v32 = asString(&v53);
                    v51 = v47;
                    v52 = v48;
                    if (v48)
                    {
                      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v33 = asString(&v51);
                    *buf = 136315650;
                    v62 = "notifyOtherActiveContextsAboutFailure";
                    v63 = 2080;
                    v64 = v32;
                    v65 = 2080;
                    v66 = v33;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: Handover failed from %s to %s", buf, 0x20u);
                    if (v52)
                    {
                      sub_100004A34(v52);
                    }

                    if (v54)
                    {
                      sub_100004A34(v54);
                    }
                  }

                  if (!*(*v46 + 49))
                  {
                    v34 = *(v8 + 112);
                    v35 = (*(*v47 + 56))(v47);
                    (*(*v34 + 208))(v34, v35, *(*v46 + 52), a5);
                  }

                  (*(*v19 + 624))(v19);
                  v44 = 1;
                }
              }

              if (v20)
              {
                sub_100004A34(v20);
              }

              v36 = v17[1];
              if (v36)
              {
                do
                {
                  v37 = v36;
                  v36 = *v36;
                }

                while (v36);
              }

              else
              {
                do
                {
                  v37 = v17[2];
                  v38 = *v37 == v17;
                  v17 = v37;
                }

                while (!v38);
              }

              v17 = v37;
            }

            while (v37 != v18);
          }
        }

        if (v12)
        {
          sub_100004A34(v12);
        }

        v39 = v10[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          do
          {
            v40 = v10[2];
            v38 = *v40 == v10;
            v10 = v40;
          }

          while (!v38);
        }

        v10 = v40;
      }

      while (v40 != v43);
    }

    if (v44 & 1) != 0 || (v41)
    {
      (*(*v8 + 584))(&v49, v8);
      sub_10048C8BC(v8, &v49);
      if (v50)
      {
        sub_100004A34(v50);
      }
    }
  }
}

void sub_10048D380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048D420(void *a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!a1[18])
  {
LABEL_74:
    v41 = 0;
    return v41 & 1;
  }

  v10 = a1;
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_72;
  }

  (*(*v10 + 584))(&buf, v10);
  matched = DataUtils::matchPersonality();
  if (buf.__r_.__value_.__l.__size_)
  {
    sub_100004A34(buf.__r_.__value_.__l.__size_);
  }

  if ((matched & 1) == 0)
  {
LABEL_72:
    v43 = v10[9];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", &buf, 0xCu);
    }

    goto LABEL_74;
  }

  memset(&v75, 0, sizeof(v75));
  sub_10000501C(&v75, "disconnection");
  v12 = otherContextType();
  if (sub_100094EA8(v10[17], a4))
  {
    v13 = sub_100094F40(v10[17], a4);
    v16 = *v13;
    v14 = v13 + 1;
    v15 = v16;
    if (v16 == v14)
    {
      v41 = 0;
      v40 = 0;
      v42 = 1;
    }

    else
    {
      v50 = v12;
      v51 = a5;
      v52 = a6;
      v54 = a4;
      v55 = 0;
      v53 = 0;
      v57 = v10 + 24;
      v58 = 0;
      v59 = v10;
      v56 = v14;
      do
      {
        v17 = v15[4];
        v18 = v15[5];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v17 + 56))(v17) == a3)
        {
          v19 = v10[9];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v73 = v17;
            v74 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = asString(&v73);
            v21 = asString();
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v77 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: %s disconnected by network on %s", &buf, 0x20u);
            if (v74)
            {
              sub_100004A34(v74);
            }
          }

          v22 = sub_100094F40(v10[17], v54);
          v24 = v22 + 1;
          v23 = *v22;
          if (*v22 != v22 + 1)
          {
            do
            {
              v26 = v23[4];
              v25 = v23[5];
              if (v25)
              {
                atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v26 == v17 || (*(*v26 + 56))(v26) == a3)
              {
                v27 = 0;
              }

              else if ((*(*v26 + 136))(v26, a2))
              {
                v31 = v59[9];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = v17;
                  v72 = v18;
                  if (v18)
                  {
                    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v32 = asString(&v71);
                  v69 = v26;
                  v70 = v25;
                  if (v25)
                  {
                    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v33 = asString(&v69);
                  v34 = asString();
                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                  *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                  v77 = v33;
                  v78 = 2080;
                  v79 = v34;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: Have been handed over from %s to %s on %s and up", &buf, 0x2Au);
                  if (v70)
                  {
                    sub_100004A34(v70);
                  }

                  if (v72)
                  {
                    sub_100004A34(v72);
                  }
                }

                v27 = 15;
              }

              else
              {
                v35 = &v57[10 * (*(*v26 + 56))(v26)];
                if (*v35 == 1 && ((v35[32] & 1) != 0 || (v35[40] & 1) != 0))
                {
                  v36 = v59[9];
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                    *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: looks like the other context is already active", &buf, 0xCu);
                  }

                  v27 = 0;
                  v53 = 1;
                }

                else
                {
                  if (v25)
                  {
                    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v58)
                  {
                    sub_100004A34(v58);
                  }

                  v37 = (*(*v17 + 152))(v17, a2);
                  if (a3 == 1)
                  {
                    iWLanNotifyCodeAsString(&buf, *(v37 + 152));
                    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v75.__r_.__value_.__l.__data_);
                    }

                    v75 = buf;
                  }

                  else if (!a3)
                  {
                    std::string::operator=(&v75, (v37 + 104));
                  }

                  v27 = 14;
                  v58 = v25;
                  v55 = v26;
                }
              }

              if (v25)
              {
                sub_100004A34(v25);
              }

              if (v27 != 15 && v27)
              {
                break;
              }

              v28 = v23[1];
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v29 = v23[2];
                  v30 = *v29 == v23;
                  v23 = v29;
                }

                while (!v30);
              }

              v23 = v29;
            }

            while (v29 != v24);
          }
        }

        if (v18)
        {
          sub_100004A34(v18);
        }

        v38 = v15[1];
        v10 = v59;
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v15[2];
            v30 = *v39 == v15;
            v15 = v39;
          }

          while (!v30);
        }

        v15 = v39;
      }

      while (v39 != v56);
      if (v55)
      {
        v40 = v58;
        a4 = v54;
        v41 = v53;
        a5 = v51;
        a6 = v52;
        v12 = (*(*v55 + 56))(v55);
        v42 = 0;
      }

      else
      {
        v42 = 1;
        v40 = v58;
        a4 = v54;
        v41 = v53;
        a5 = v51;
        a6 = v52;
        v12 = v50;
      }
    }

    v66 = 0;
    v67 = 0;
    v68 = 0;
    v45 = (*(*v10[18] + 384))(v10[18], a3, v12, a2, a5, a6, &v66);
    if ((v42 & 1) == 0)
    {
      if (v45)
      {
        v46 = a4[1];
        v64 = *a4;
        v65 = v46;
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        __p = 0;
        v62 = 0;
        v63 = 0;
        sub_100090CF8(&__p, v66, v67, 0x4EC4EC4EC4EC4EC5 * (v67 - v66));
        v41 = sub_10048DD94(v10, a3, v12, &v64, &v75, 1, &__p, 0);
        if (__p)
        {
          v62 = __p;
          operator delete(__p);
        }

        if (v65)
        {
          sub_100004A34(v65);
        }
      }

      else
      {
        v47 = v10[9];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = asString();
          v49 = asString();
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v48;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
          v77 = v49;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s: hand over from %s to %s cannot be done because handover is not allowed", &buf, 0x20u);
        }
      }
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v40)
  {
    sub_100004A34(v40);
  }

  return v41 & 1;
}

void sub_10048DC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    sub_100004A34(a31);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (*(v39 - 169) < 0)
  {
    operator delete(*(v39 - 192));
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const std::string *a5, BOOL a6, uint64_t a7, _BYTE *a8)
{
  v9 = a2;
  v10 = a1;
  if (*(a1 + 184) == a3)
  {
    v11 = *(a1 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "handOverTo";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      *&buf[22] = 2080;
      *&buf[24] = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: handover from %s to %s cannot be done because the new context type is already current; we treat the situation as a successful handover", buf, 0x20u);
    }

    return 1;
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_30;
  }

  ((*v10)[73].isa)(buf, v10);
  matched = DataUtils::matchPersonality();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((matched & 1) == 0)
  {
LABEL_30:
    v26 = v10[9];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handOverTo";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", buf, 0xCu);
    }

    return 0;
  }

  if (!validContextType())
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = 0;
  v19 = a4[1];
  v72 = *a4;
  v73 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10009D4CC(v10, v9, &v72, buf);
  if (v73)
  {
    sub_100004A34(v73);
  }

  v20 = *buf;
  if (*buf)
  {
    v21 = (*(**buf + 136))(*buf, 1);
    v22 = (*(*v20 + 136))(v20, 2);
    v23 = v21 | 2;
    if (!v22)
    {
      v23 = v21;
    }

    v24 = 1;
    if (v9 == 1 && !v23)
    {
      if (os_log_type_enabled(v10[9], OS_LOG_TYPE_ERROR))
      {
        sub_101771FD4();
      }

      v64 = 100;
      v65 = "invalid wifi active ip family";
      v66 = "";
      v67 = 0;
      v68 = 0;
      memset(v71, 0, sizeof(v71));
      v70 = 0;
      v69 = 1;
      sub_10000501C(__p, "invalid wifi active ip family");
      v25 = a4[1];
      v60 = *a4;
      v61 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BYTE4(v41) = 0;
      LODWORD(v41) = 0;
      ((*v10)[93].isa)(v10, 3, &v64, __p, 0, 1, &v60, 100, 0x1388400000002, v41);
      if (v61)
      {
        sub_100004A34(v61);
      }

      if (v63 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&v71[1])
      {
        sub_100004A34(*&v71[1]);
      }

      v23 = 0;
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 1;
  }

  v45 = v23;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v24)
  {
    return 0;
  }

  v28 = v10[9];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v44 = asString();
    v43 = asString();
    if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = a5;
    }

    else
    {
      v29 = a5->__r_.__value_.__r.__words[0];
    }

    v42 = v29;
    v30 = asStringBool(a6);
    *buf = 136316162;
    *&buf[4] = "handOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v44;
    *&buf[22] = 2080;
    *&buf[24] = v43;
    *&buf[32] = 2082;
    *&buf[34] = v42;
    *&buf[42] = 2080;
    *&buf[44] = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: handover from %s to %s because of %{public}s (networkDisconnect %s)", buf, 0x34u);
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10048E720(v10, buf);
  *&v56 = 1;
  memset(v57, 0, sizeof(v57));
  v59 = 0u;
  *(&v56 + 1) = "Handover";
  *&v57[0] = "CommCenter";
  BYTE8(v57[0]) = 1;
  BYTE8(v57[1]) = 0;
  v58 = 0uLL;
  *&v59 = 0;
  BYTE8(v59) = 0;
  std::string::operator=(&v58, a5);
  HIDWORD(v57[0]) = v45;
  BYTE8(v59) = a6;
  v31 = a4[1];
  v54 = *a4;
  v55 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = v56;
  v50[0] = v57[0];
  *(v50 + 10) = *(v57 + 10);
  if (SBYTE7(v59) < 0)
  {
    sub_100005F2C(&v51, v58, *(&v58 + 1));
  }

  else
  {
    v51 = v58;
    v52 = v59;
  }

  v53 = BYTE8(v59);
  v47 = 0;
  v48 = 0;
  v46 = 0;
  sub_100090CF8(&v46, *a7, *(a7 + 8), 0x4EC4EC4EC4EC4EC5 * (*(a7 + 8) - *a7));
  v32 = sub_10048E7F4(v10, v45, a3, &v54, &v49, &v46);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (v55)
  {
    sub_100004A34(v55);
  }

  v33 = v10[9];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = asString();
    *v74 = 136315650;
    v75 = "handOverTo";
    v76 = 2080;
    v77 = v34;
    v78 = 1024;
    LODWORD(v79) = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: ctTo=%s, activationReturn=%d", v74, 0x1Cu);
  }

  if (v32 <= 0)
  {
    if (v32 >= 0xFFFFFFFE)
    {
      sub_10048EE40(v10, buf);
LABEL_59:
      LOBYTE(v10) = 0;
      v12 = 0;
      goto LABEL_76;
    }

    if (!v32)
    {
      v35 = v10[18];
      v10 = v10[19];
      if (v10)
      {
        atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      }

      if (v35)
      {
        (*(v35->isa + 83))(v35, a3);
      }

      if (!v10)
      {
        goto LABEL_72;
      }

      sub_100004A34(v10);
LABEL_71:
      LOBYTE(v10) = 0;
LABEL_72:
      v12 = 1;
      goto LABEL_76;
    }

LABEL_73:
    v36 = v10[9];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 136315138;
      v75 = "handOverTo";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E %s: !!! activateDataContext returned unmanageable result", v74, 0xCu);
    }

    sub_10048EE40(v10, buf);
    v12 = 0;
    LOBYTE(v10) = 1;
    goto LABEL_76;
  }

  if (v32 == 1)
  {
    goto LABEL_71;
  }

  if (v32 != 2)
  {
    goto LABEL_73;
  }

  sub_10048EE40(v10, buf);
  if (!a8)
  {
    v38 = v10[9];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = asString();
      v40 = asString();
      *v74 = 136315650;
      v75 = "handOverTo";
      v76 = 2080;
      v77 = v39;
      v78 = 2080;
      v79 = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: Can't handover from %s right now, cancelling handover to %s", v74, 0x20u);
    }

    goto LABEL_59;
  }

  LOBYTE(v10) = 0;
  v12 = 1;
  *a8 = 1;
LABEL_76:
  if (SBYTE7(v59) < 0)
  {
    operator delete(v58);
  }

  for (i = 0; i != -160; i -= 80)
  {
    if (*(&v86 + i + 15) < 0)
    {
      operator delete(*(&v85 + i + 8));
    }
  }

  if (v10)
  {
    return 0;
  }

  return v12;
}

void sub_10048E604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  v63 = 0;
  while (1)
  {
    if (*(&a62 + v63 + 159) < 0)
    {
      operator delete(*(&a62 + v63 + 136));
    }

    v63 -= 80;
    if (v63 == -160)
    {
      _Unwind_Resume(a1);
    }
  }
}

_DWORD *sub_10048E720@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  *a2 = result[46];
  v5 = result + 48;
  do
  {
    v6 = v3;
    v7 = a2 + ((80 * v4) | 8);
    v8 = &v5[20 * v4];
    v9 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v9;
    *(v7 + 26) = *(v8 + 26);
    if (*(v8 + 71) < 0)
    {
      result = sub_100005F2C(v7 + 48, *(v8 + 6), *(v8 + 7));
    }

    else
    {
      *(v7 + 3) = *(v8 + 3);
      *(v7 + 8) = *(v8 + 8);
    }

    v7[72] = *(v8 + 72);
    v3 = 1;
    v4 = 1;
  }

  while ((v6 & 1) == 0);
  return result;
}

void sub_10048E7D8(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_101772008(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10048E7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5, uint64_t a6)
{
  v11 = a1;
  if (a3 || (a1 = *(a1 + 96)) == 0 || (a1 = (*(*a1 + 144))(a1), (a1 & 1) != 0))
  {
    if (*(v11 + 352))
    {
      v12 = 0;
      LODWORD(v13) = 2;
    }

    else
    {
      v15 = *(v11 + 144);
      v14 = *(v11 + 152);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a5 + 24) == 1)
      {
        v16 = capabilities::ct::supports5G(a1);
        v17 = v15 ? v16 : 0;
        if (v17 == 1)
        {
          v18 = (*(*v15 + 208))(v15) ^ 1;
          if (a3 != 1)
          {
            LOBYTE(v18) = 1;
          }

          if ((v18 & 1) == 0 && sub_100094EA8(*(v11 + 136), a4))
          {
            v19 = sub_100094F40(*(v11 + 136), a4);
            v21 = *(v19 + 24);
            v20 = *(v19 + 32);
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v21)
            {
              v22 = *(v11 + 72);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I HO cell->wifi: reportHandoverWwanPduSessionId", buf, 2u);
              }

              v23 = (*(*v11 + 784))(v11);
              if ((v23 & 0x80000000) == 0)
              {
                (*(*v21 + 304))(v21, v23);
                sub_10049980C(v11, v23);
              }
            }

            if (v20)
            {
              sub_100004A34(v20);
            }
          }
        }
      }

      *buf = 0;
      v54 = 0;
      v24 = a4[1];
      v51 = *a4;
      v52 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10009D4CC(v11, a3, &v51, buf);
      if (v52)
      {
        sub_100004A34(v52);
      }

      v25 = *buf;
      if (*buf)
      {
        v26 = a5[1];
        v46 = *a5;
        v47[0] = v26;
        *(v47 + 10) = *(a5 + 26);
        if (*(a5 + 71) < 0)
        {
          sub_100005F2C(&__p, *(a5 + 6), *(a5 + 7));
        }

        else
        {
          __p = a5[3];
          v49 = *(a5 + 8);
        }

        v50 = *(a5 + 72);
        sub_100491A70(v11, a3, &v46);
        if (SHIBYTE(v49) < 0)
        {
          operator delete(__p);
        }

        v27 = a5[1];
        v41 = *a5;
        v42[0] = v27;
        *(v42 + 10) = *(a5 + 26);
        if (*(a5 + 71) < 0)
        {
          sub_100005F2C(&v43, *(a5 + 6), *(a5 + 7));
        }

        else
        {
          v43 = a5[3];
          v44 = *(a5 + 8);
        }

        v45 = *(a5 + 72);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        sub_100090CF8(&v38, *a6, *(a6 + 8), 0x4EC4EC4EC4EC4EC5 * (*(a6 + 8) - *a6));
        v13 = (*(*v25 + 384))(v25, a2, &v41, &v38);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        v12 = HIDWORD(v13);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43);
        }

        if (v13 == 1)
        {
          if (*(a5 + 24) == 1)
          {
            v36 = 0;
            v37 = 0;
            v28 = otherContextType();
            v29 = a4[1];
            v34 = *a4;
            v35 = v29;
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_10009D4CC(v11, v28, &v34, &v36);
            if (v35)
            {
              sub_100004A34(v35);
            }

            v30 = v36;
            if (v36 && (*(*v36 + 536))(v36) && (*(*v30 + 488))(v30))
            {
              v31 = *(v11 + 72);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                otherContextType();
                v32 = asString();
                *v55 = 136315138;
                v56 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I HO: %s stuck in preactivation, deactivating...", v55, 0xCu);
              }

              (*(*v30 + 392))(v30, 23, "CommCenter");
            }

            if (v37)
            {
              sub_100004A34(v37);
            }
          }

          LODWORD(v13) = 1;
        }
      }

      else
      {
        v12 = 4294967288;
        LODWORD(v13) = -1;
      }

      if (v54)
      {
        sub_100004A34(v54);
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(*(v11 + 72), OS_LOG_TYPE_ERROR))
    {
      sub_10177204C();
    }

    v12 = 4;
    LODWORD(v13) = -1;
  }

  return v13 | (v12 << 32);
}

void sub_10048ED78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  v44 = *(v42 - 136);
  if (v44)
  {
    sub_100004A34(v44);
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048EE40(uint64_t a1, unsigned int *a2)
{
  if (!sub_10049EFD0((a1 + 184), a2))
  {
    v4 = *(a2 + 6);
    v15 = *(a2 + 2);
    v16[0] = v4;
    *(v16 + 10) = *(a2 + 34);
    if (*(a2 + 79) < 0)
    {
      sub_100005F2C(&__p, *(a2 + 7), *(a2 + 8));
    }

    else
    {
      __p = *(a2 + 14);
      v18 = *(a2 + 9);
    }

    v19 = *(a2 + 80);
    sub_1004914F0(a1, 0, &v15, 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v5 = *(a2 + 26);
    v10 = *(a2 + 22);
    v11[0] = v5;
    *(v11 + 10) = *(a2 + 114);
    if (*(a2 + 159) < 0)
    {
      sub_100005F2C(&v12, *(a2 + 17), *(a2 + 18));
    }

    else
    {
      v12 = *(a2 + 34);
      v13 = *(a2 + 19);
    }

    v14 = *(a2 + 160);
    sub_1004914F0(a1, 1, &v10, 1);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }

    v6 = *a2;
    if (*(a1 + 184) != *a2)
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = asString();
        v9 = asString();
        *buf = 136315650;
        v21 = "setActivatorState";
        v22 = 2080;
        v23 = v8;
        v24 = 2080;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) active %s => %s", buf, 0x20u);
        v6 = *a2;
      }

      *(a1 + 184) = v6;
    }
  }
}

void sub_10048F028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F064(void *a1, _OWORD *a2)
{
  v3 = a1[18];
  v4 = a1[19];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5[0] = *a2;
    *(v5 + 12) = *(a2 + 12);
    (*(*v3 + 328))(v3, v5);
    goto LABEL_6;
  }

  if (!os_log_type_enabled(a1[9], OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_101772080();
  if (!v4)
  {
    return;
  }

LABEL_7:
  sub_100004A34(v4);
}

void sub_10048F11C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F13C(void *a1)
{
  v2 = a1[18];
  v3 = a1[19];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    (*(*v2 + 688))(v2);
    goto LABEL_6;
  }

  if (!os_log_type_enabled(a1[9], OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_1017720B4();
  if (!v3)
  {
    return;
  }

LABEL_7:
  sub_100004A34(v3);
}

void sub_10048F1D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F1F8(uint64_t a1, int a2, uint64_t *a3)
{
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_48;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&v36[4])
  {
    sub_100004A34(*&v36[4]);
  }

  if (matched)
  {
    if (sub_100094EA8(*(a1 + 136), a3))
    {
      v6 = sub_100094F40(*(a1 + 136), a3);
      v9 = *v6;
      v7 = v6 + 1;
      v8 = v9;
      if (v9 != v7)
      {
        v10 = (a1 + 192);
        v30 = v7;
        while (1)
        {
          v12 = v8[4];
          v11 = v8[5];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v12 + 56))(v12) == a2)
          {
            v13 = *(a1 + 72);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v12;
              v34 = v11;
              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v14 = asString(&v33);
              *buf = 136315394;
              *v36 = "handleDataContextDisappeared";
              *&v36[8] = 2080;
              *&v36[10] = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: %s disappeared", buf, 0x16u);
              if (v34)
              {
                sub_100004A34(v34);
              }
            }

            v15 = sub_100094F40(*(a1 + 136), a3);
            v17 = v15 + 1;
            v16 = *v15;
            if (*v15 != v15 + 1)
            {
              break;
            }
          }

LABEL_39:
          if (v11)
          {
            sub_100004A34(v11);
          }

          v27 = v8[1];
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
              v28 = v8[2];
              v20 = *v28 == v8;
              v8 = v28;
            }

            while (!v20);
          }

          v8 = v28;
          if (v28 == v30)
          {
            return;
          }
        }

        while (1)
        {
          v19 = v16[4];
          v18 = v16[5];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            v20 = v19 == v12;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            goto LABEL_31;
          }

          v21 = (*(*v19 + 56))(v19);
          if (v21 > 1)
          {
            v22 = (a1 + 272);
            if (*v10)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v22 = &v10[80 * v21];
          }

          if (*v22 == 1)
          {
LABEL_27:
            v23 = (*(*v19 + 56))(v19);
            v24 = a3[1];
            v32[0] = *a3;
            v32[1] = v24;
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_10048F648(a1, v23, v32, 33, "CommCenter");
            if (v24)
            {
              sub_100004A34(v24);
            }
          }

LABEL_31:
          if (v18)
          {
            sub_100004A34(v18);
          }

          v25 = v16[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v16[2];
              v20 = *v26 == v16;
              v16 = v26;
            }

            while (!v20);
          }

          v16 = v26;
          if (v26 == v17)
          {
            goto LABEL_39;
          }
        }
      }
    }
  }

  else
  {
LABEL_48:
    v29 = *(a1 + 72);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v36 = "handleDataContextDisappeared";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", buf, 0xCu);
    }
  }
}

void sub_10048F5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048F648(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = 0;
  v13 = 0;
  sub_10009D4CC(a1, a2, &v10, &v12);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v12)
  {
    v8 = (*(*v12 + 392))(v12, a4, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  return v8;
}

void sub_10048F700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F730(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[9];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    *v16 = "handleDataContextIPActivated";
    *&v16[8] = 2080;
    *&v16[10] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %s activated", &v15, 0x16u);
  }

  if ((validContextType() & 1) == 0)
  {
    v9 = a1[9];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v10 = asString();
    v15 = 136315394;
    *v16 = "handleDataContextIPActivated";
    *&v16[8] = 2080;
    *&v16[10] = v10;
    v11 = "#E %s: wrong context type: %s";
    v12 = v9;
    v13 = 22;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, v13);
    return;
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_14;
  }

  (*(*a1 + 584))(&v15, a1);
  matched = DataUtils::matchPersonality();
  if (*&v16[4])
  {
    sub_100004A34(*&v16[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_14:
    v14 = a1[9];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = 136315138;
    *v16 = "handleDataContextIPActivated";
    v11 = "#E %s: method called with inactive settings";
    v12 = v14;
    v13 = 12;
    goto LABEL_16;
  }

  if (sub_100094EA8(a1[17], a3))
  {
    if (*(sub_100094F40(a1[17], a3) + 16 * v4 + 24))
    {
      v8 = *(sub_100094F40(a1[17], a3) + 16 * v4 + 24);
      (*(*v8 + 176))(v8);
    }
  }

  sub_10048C10C(a1, 5, 0, 0, 0);
}

void sub_10048F9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = *(a3 + 16);
    v9[0] = *a3;
    v9[1] = v6;
    v7 = *(a3 + 40);
    v10 = *(a3 + 32);
    v11 = v7;
    v8 = *(a3 + 48);
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 616))(v4, a2, v9);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10048FA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048FAC0(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*v2 + 600))(v2);
  if (v3)
  {
LABEL_5:
    sub_100004A34(v3);
  }

  return v4;
}

void sub_10048FB48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048FB60(void *a1, unsigned int a2, unsigned int *a3, uint64_t a4, char a5, uint64_t a6, void *a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned __int8 a12)
{
  v16 = sub_100490EEC(a1, a6, buf);
  v17 = a1[9];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asString();
    v19 = asStringBool(v16);
    v20 = asString();
    *buf = 136316162;
    *&buf[4] = "handleContextActivateError";
    *&buf[12] = 2080;
    *&buf[14] = v18;
    v67 = 2080;
    v68 = v19;
    v69 = 1024;
    v70 = a10;
    v71 = 2080;
    v72 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: %s (handover %s) contextSpecificErrorCode %d (%s)", buf, 0x30u);
  }

  a3[9] = a11;
  v21 = *(a3 + 1);
  v62[0] = *a3;
  v62[1] = v21;
  v22 = *(a3 + 5);
  v63 = *(a3 + 4);
  v64 = v22;
  v23 = *(a3 + 6);
  v65 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10048F9E8(a1, a6, v62);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *a3;
  v45 = (*(*a1 + 576))(a1, a6, 0, 0);
  v46 = a8;
  v44 = v16;
  v26 = a1[18];
  v25 = a1[19];
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = a1[9];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleContextActivateError";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: active settings activate error", buf, 0xCu);
    }

    if ((*(*v26 + 368))(v26, a6, v24, a10, a11, a12))
    {
      v28 = a1[9];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleContextActivateError";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: A retry (or fallback) activation has been triggered", buf, 0xCu);
      }

      v29 = 1;
      if (!v25)
      {
        return v29;
      }

LABEL_65:
      sub_100004A34(v25);
      return v29;
    }
  }

  if (sub_100094EA8(a1[17], a7))
  {
    v30 = a1[14];
    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v61 = *(a4 + 16);
    }

    (*(*v30 + 136))(v30, a2, v24, __p, a6, *(*a7 + 52), v45, v46);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p[0]);
    }

    v48 = sub_100094F40(a1[17], a7);
    v31 = *v48;
    if (*v48 != v48 + 1)
    {
      do
      {
        v32 = v31[4];
        v33 = v31[5];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v32 + 56))(v32) == a6)
        {
          if (a9 != 2)
          {
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v26)
            {
              (*(*v26 + 584))(v26, a6);
            }

            if (v25)
            {
              sub_100004A34(v25);
            }

            v34 = sub_10048FAC0(a1);
            v58 = v26;
            v59 = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_10048BE74(a1, v34, a6, a9, &v58);
            if (v59)
            {
              sub_100004A34(v59);
            }
          }

          if ((a5 & 1) == 0 && (*(*v32 + 136))(v32, a2))
          {
            v35 = a1[9];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = asString();
              *buf = 136315394;
              *&buf[4] = "handleContextActivateError";
              *&buf[12] = 2080;
              *&buf[14] = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: %s network is already online, take it offline", buf, 0x16u);
            }

            v37 = a7[1];
            v56 = *a7;
            v57 = v37;
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*a1 + 712))(a1, a2, a6, &v56);
            if (v57)
            {
              sub_100004A34(v57);
            }
          }
        }

        if (v33)
        {
          sub_100004A34(v33);
        }

        v38 = v31[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v31[2];
            v40 = *v39 == v31;
            v31 = v39;
          }

          while (!v40);
        }

        v31 = v39;
      }

      while (v39 != v48 + 1);
    }

    if ((a5 & 1) == 0)
    {
      v41 = a7[1];
      v54 = *a7;
      v55 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1004902A4(a1, a6, &v54);
      if (v55)
      {
        sub_100004A34(v55);
      }
    }

    sub_1000948A8(v48, buf);
    v42 = *buf;
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v42)
    {
      sub_1000948A8(v48, &v52);
      sub_10048CD40(a1, a6, &v52, v44, a2);
      if (v53)
      {
        sub_100004A34(v53);
      }
    }
  }

  v29 = 0;
  if (v25)
  {
    goto LABEL_65;
  }

  return v29;
}

void sub_1004901D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004902A4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[9];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    *v12 = "handleDataContextDeactivated";
    *&v12[8] = 2080;
    *&v12[10] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: %s", &v11, 0x16u);
  }

  v7 = a1[18];
  v6 = a1[19];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    (*(*(v7 + *(*v7 - 56)) + 16))(&v11);
    matched = DataUtils::matchPersonality();
    if (*&v12[4])
    {
      sub_100004A34(*&v12[4]);
    }

    if (matched)
    {
      v9 = a1[9];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = asString();
        v11 = 136315394;
        *v12 = "handleDataContextDeactivated";
        *&v12[8] = 2080;
        *&v12[10] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: active settings deactivated for %s", &v11, 0x16u);
      }

      (*(*v7 + 376))(v7, a2);
      sub_100492120(a1, a2, 0, 0);
    }
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1004904A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004905C8(std::__shared_weak_count **a1)
{
  if (capabilities::ct::supports5G(a1))
  {
    if (((*a1)[24].__shared_weak_owners_)(a1))
    {
      v8 = 0;
      v9 = 0;
      ((*a1)[24].__shared_owners_)(&v8, a1);
      if (sub_100094EA8(a1[17], &v8))
      {
        if (a1[52])
        {
          v2 = sub_100094F40(a1[17], &v8);
          v4 = *(v2 + 24);
          v3 = *(v2 + 32);
          if (v3)
          {
            atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v4)
          {
            v5 = a1[9];
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              if ((a1[52] & 1) == 0)
              {
                sub_1000D1644();
              }

              v6 = *(a1 + 103);
              *buf = 67109120;
              v11 = v6;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I free PDU SessionId %d", buf, 8u);
            }

            if ((a1[52] & 1) == 0)
            {
              sub_1000D1644();
            }

            (*(*v4 + 208))(v4, *(a1 + 103));
            if (*(a1 + 416) == 1)
            {
              *(a1 + 416) = 0;
            }
          }

          if (v3)
          {
            sub_100004A34(v3);
          }
        }

        else
        {
          v7 = a1[9];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fReservedPduSessionIdForWlan already freed", buf, 2u);
          }
        }
      }

      else if (os_log_type_enabled(a1[9], OS_LOG_TYPE_ERROR))
      {
        sub_10177211C();
      }

      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    else if (os_log_type_enabled(a1[9], OS_LOG_TYPE_ERROR))
    {
      sub_1017720E8();
    }
  }
}

void sub_100490814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100490858(uint64_t a1, uint64_t a2)
{
  if ((capabilities::ct::supports5G(a1) & 1) == 0)
  {

    goto LABEL_12;
  }

  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      sub_101772150();
    }

LABEL_12:
    sub_10000FFD0(a2, 0);
    return;
  }

  v8 = 0;
  v9 = 0;
  (*(*a1 + 584))(&v8, a1);
  if (sub_100094EA8(*(a1 + 136), &v8))
  {
    v4 = sub_100094F40(*(a1 + 136), &v8);
    v6 = *(v4 + 24);
    v5 = *(v4 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      sub_1000224C8(v10, a2);
      v7 = (*(*a1 + 72))(a1);
      (*(*v6 + 240))(v6, v10, v7);
      sub_10000FF50(v10);
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      sub_101772184();
    }

    sub_10000FFD0(a2, 0);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100490A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100490B30(uint64_t a1, const DataContextPDPInfoInterface **a2)
{
  if (*a2)
  {
    v4 = *(a1 + 136);
    (*(*(*a2 + *(**a2 - 56)) + 16))(&v9);
    v5 = sub_10048A828(v4, &v9);
    if (*&v10[4])
    {
      sub_100004A34(*&v10[4]);
    }

    sub_10049F714(v5, a2, a2);
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString(*a2);
      (*(**a2 + 56))();
      v8 = asString();
      v9 = 136315650;
      *v10 = "registerContext";
      *&v10[8] = 2080;
      *&v10[10] = v7;
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %s registered with us (%s)", &v9, 0x20u);
    }
  }
}

void sub_100490CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100490CCC(uint64_t a1, const DataContextPDPInfoInterface **a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString(*a2);
    (*(**a2 + 56))();
    v10 = 136315650;
    *v11 = "unregisterContext";
    *&v11[8] = 2080;
    *&v11[10] = v5;
    v12 = 2080;
    v13 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s unregistered with us (%s)", &v10, 0x20u);
  }

  v6 = *(a1 + 136);
  (*(*(*a2 + *(**a2 - 56)) + 16))(&v10);
  v7 = sub_100094EA8(v6, &v10);
  if (*&v11[4])
  {
    sub_100004A34(*&v11[4]);
  }

  if (v7)
  {
    v8 = *(a1 + 136);
    (*(*(*a2 + *(**a2 - 56)) + 16))(&v10);
    v9 = sub_100094F40(v8, &v10);
    sub_10049F7F0(v9, a2);
    if (*&v11[4])
    {
      sub_100004A34(*&v11[4]);
    }
  }
}

void sub_100490E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100490EEC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  *a3 = 0;
  if (anyContextType())
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  result = validContextType();
  if (result)
  {
    if (*(a1 + 184) == v6 && (v8 = a1 + 80 * v6, v10 = *(v8 + 192), v9 = v8 + 192, v10 == 1) && *(v9 + 24) == 1)
    {
      v11 = *(v9 + 41) ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = anyContextType();
    if (!v12 || (v11 & 1) != 0)
    {
      if ((v12 | v11))
      {
        v13 = *(a1 + 184);
        goto LABEL_19;
      }
    }

    else if (*(a1 + 184) == 1 && *(a1 + 272) == 1 && *(a1 + 296) == 1 && (*(a1 + 313) & 1) == 0)
    {
      v13 = 1;
LABEL_19:
      *a3 = *(a1 + 80 * v13 + 224);
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_10049108C(uint64_t a1, int a2)
{
  v2 = *(a1 + 352);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "setRetryScheduled";
      v8 = 2080;
      v9 = asStringBool(v2);
      v10 = 2080;
      v11 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s => %s", &v6, 0x20u);
    }

    *(a1 + 352) = v3;
  }
}

uint64_t sub_100491194(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (!sub_100094EA8(*(a1 + 136), a4))
  {
    return 1;
  }

  v7 = sub_100094F40(*(a1 + 136), a4);
  v8 = v7 + 1;
  v9 = *v7;
  if (*v7 == v7 + 1)
  {
    return 1;
  }

  while (1)
  {
    v11 = v9[4];
    v10 = v9[5];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v11 + 56))(v11) == a3)
    {
      v12 = a4[1];
      v19 = *a4;
      v20 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = sub_10049133C(a1, &v19);
      v14 = (*(*v11 + 552))(v11, v13);
      if (v20)
      {
        sub_100004A34(v20);
      }

      if ((v14 & 1) == 0)
      {
        break;
      }
    }

    if (v10)
    {
      sub_100004A34(v10);
    }

    v15 = v9[1];
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
        v16 = v9[2];
        v17 = *v16 == v9;
        v9 = v16;
      }

      while (!v17);
    }

    v9 = v16;
    if (v16 == v8)
    {
      return 1;
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return 0;
}

void sub_100491310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049133C(uint64_t a1, uint64_t a2)
{
  if (!sub_100094EA8(*(a1 + 136), a2))
  {
    return 0;
  }

  v5 = sub_100094F40(*(a1 + 136), a2);
  v6 = v5 + 1;
  v7 = *v5;
  if (*v5 == v5 + 1)
  {
    return 0;
  }

  while (1)
  {
    v9 = v7[4];
    v8 = v7[5];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (*(*v9 + 56))(v9);
    if (!v10)
    {
      if (!*(sub_100094F40(*(a1 + 136), a2) + 24) || (v11 = sub_100094F40(*(a1 + 136), a2), v2 = (*(**(v11 + 24) + 200))(*(v11 + 24)), v2 <= 0))
      {
        v2 = (*(*v9 + 656))(v9);
      }
    }

    if (v8)
    {
      sub_100004A34(v8);
    }

    if (!v10)
    {
      break;
    }

    v12 = v7[1];
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
        v13 = v7[2];
        v14 = *v13 == v7;
        v7 = v13;
      }

      while (!v14);
    }

    v7 = v13;
    if (v13 == v6)
    {
      return 0;
    }
  }

  return v2;
}

void sub_1004914C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004914F0(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v6 = a2;
  if (validContextType())
  {
    if ((a4 & 1) == 0 && *a3 == 1)
    {
      v8 = a1 + 80 * v6;
      v10 = *(v8 + 192);
      v9 = v8 + 192;
      if (v10 == 1 && *(v9 + 32) == 1 && *(a3 + 24) == 1 && (a3[2] & 1) == 0)
      {
        *(a3 + 32) = 1;
      }
    }

    v11 = a1 + 192;
    v12 = a1 + 192 + 80 * v6;
    if (!sub_10049F048(v12, a3))
    {
      memset(__p, 0, sizeof(__p));
      *v47 = *v12;
      *v48 = *(v12 + 16);
      *&v48[10] = *(v12 + 26);
      if (*(v12 + 71) < 0)
      {
        sub_100005F2C(&__p[6], *(v12 + 48), *(v12 + 56));
      }

      else
      {
        *&__p[6] = *(v12 + 48);
        *&__p[22] = *(v12 + 64);
      }

      __p[30] = *(v12 + 72);
      v13 = otherContextType();
      v14 = v13;
      if (a4)
      {
        v15 = *(a1 + 184);
        if (*a3)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (*a3 == 1)
        {
          v15 = v6;
          if (*(a3 + 9))
          {
            v18 = v11 + 80 * v13;
            v16 = v6;
            if (*v18 != 1)
            {
              goto LABEL_16;
            }

            v16 = v6;
            if (*(v18 + 36))
            {
              goto LABEL_16;
            }

            v15 = v14;
            v16 = v6;
            if (*(v18 + 41))
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v19 = (v11 + 80 * v13);
          v15 = 2;
          if (*v19 == 1)
          {
            v17 = 0;
            if (v19[41])
            {
              v15 = 2;
            }

            else
            {
              v15 = v13;
            }

            goto LABEL_29;
          }
        }

        if (*a3)
        {
LABEL_15:
          v16 = v15;
LABEL_16:
          v17 = *v12 ^ 1;
          v15 = v16;
LABEL_29:
          v20 = *a3;
          v21 = a3[1];
          *(v12 + 26) = *(a3 + 26);
          *v12 = v20;
          *(v12 + 16) = v21;
          std::string::operator=((v12 + 48), a3 + 2);
          *(v12 + 72) = *(a3 + 72);
          *(a1 + 184) = v15;
          if ((a4 & 1) == 0)
          {
            if (v17)
            {
              v22 = (v11 + 80 * v14);
              if (*v22 == 1 && v22[32] == 1)
              {
                *(v12 + 24) = 1;
              }

              v22[24] = 0;
            }

            if ((*v12 & 1) == 0)
            {
              *(v12 + 24) = 0;
              *(v12 + 32) = 0;
              *(v12 + 36) = 0;
              *(v12 + 40) = 0;
            }
          }

          v23 = *(a1 + 72);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v14;
            v45 = asString();
            v44 = asStringBool(v47[0]);
            v43 = asStringBool(v48[8]);
            v42 = asStringBool(v48[16]);
            v41 = asStringBool(v48[24]);
            v40 = asStringBool(v48[25]);
            v39 = asString();
            v38 = asStringBool(*v12);
            v36 = *(v12 + 8);
            v37 = *(v12 + 16);
            v35 = asStringBool(*(v12 + 24));
            v24 = asStringBool(*(v12 + 32));
            v25 = *(v12 + 36);
            v26 = asStringBool(*(v12 + 40));
            v27 = asStringBool(*(v12 + 41));
            v28 = asString();
            *buf = 136320002;
            v51 = "setActivationParams";
            v52 = 2080;
            v53 = v45;
            v54 = 2080;
            v55 = v44;
            v56 = 2080;
            v57 = *&v47[8];
            v58 = 2080;
            v59 = *v48;
            v60 = 2080;
            v61 = v43;
            v62 = 2080;
            v63 = v42;
            v64 = 1024;
            v65 = *&v48[20];
            v66 = 2080;
            v67 = v41;
            v68 = 2080;
            v69 = v40;
            v70 = 2080;
            v71 = v39;
            v72 = 2080;
            v73 = v38;
            v74 = 2080;
            v75 = v36;
            v76 = 2080;
            v77 = v37;
            v78 = 2080;
            v79 = v35;
            v80 = 2080;
            v81 = v24;
            v82 = 1024;
            v83 = v25;
            v84 = 2080;
            v85 = v26;
            v86 = 2080;
            v87 = v27;
            v88 = 2080;
            v89 = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) for %s: act=<%s> r=<%s> p=<%s> h=<%s> comp=<%s> s=<%d> pr=<%s> deac=<%s> (curr %s) => act=<%s> r=<%s> p=<%s> h=<%s> comp=<%s> s=<%d> pr=<%s> deac=<%s> (curr %s)", buf, 0xC2u);
            v14 = v46;
          }

          if (v47[0] && (*v12 & 1) == 0)
          {
            v29 = (v11 + 80 * v14);
            if (*v29 == 1 && v29[24] == 1)
            {
              v30 = *(a1 + 144);
              if (v30)
              {
                (*(*v30 + 592))(v30);
              }
            }
          }

          v31 = *(a1 + 136);
          v32 = *(v31 + 8);
          for (i = *(v31 + 16); v32 != i; v32 += 72)
          {
            v34 = *(v32 + 16 * v6 + 24);
            if (v34 && (*v12 != 1 || (*(v12 + 32) & 1) != 0 || *(v12 + 40) == 1))
            {
              (*(*v34 + 224))(v34);
            }
          }

          if ((a4 & 1) == 0)
          {
            sub_100491B40(a1, v6);
          }

          if ((__p[29] & 0x80000000) != 0)
          {
            operator delete(*&__p[6]);
          }

          return;
        }
      }

      v17 = 0;
      goto LABEL_29;
    }
  }
}

void sub_100491A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 36) = 0;
  v6 = *(a3 + 16);
  v7 = *a3;
  v8[0] = v6;
  *(v8 + 10) = *(a3 + 26);
  if (*(a3 + 71) < 0)
  {
    sub_100005F2C(__p, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    *__p = *(a3 + 48);
    v10 = *(a3 + 64);
  }

  v11 = *(a3 + 72);
  sub_1004914F0(a1, a2, &v7, 0);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100491B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100491B40(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10049945C;
  v4[3] = &unk_101E4FC70;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 40));
  v3 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10049F6D8;
  block[3] = &unk_101E4FEE0;
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

void sub_100491C50(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  v9 = 0;
  v10 = 0;
  memset(v15, 0, sizeof(v15));
  *&v2 = 0;
  *(&v2 + 1) = "";
  v3 = "CommCenter";
  v4 = 0;
  v7 = 0;
  v8 = 0;
  v11 = 0;
  v12 = 0;
  __p = 0;
  v14 = 0;
  v16 = 0;
  sub_1004914F0(a1, a2, &v2, 0);
  if (v16 < 0)
  {
    operator delete(__p);
  }
}

void sub_100491CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100491D00(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    v4 = a1 + 192;
    v5 = a1 + 192 + 80 * a2;
    memset(v25, 0, sizeof(v25));
    v6 = *(v5 + 16);
    v23 = *v5;
    *v24 = v6;
    *&v24[10] = *(v5 + 26);
    if (*(v5 + 71) < 0)
    {
      sub_100005F2C(&v25[3], *(v5 + 48), *(v5 + 56));
    }

    else
    {
      *&v25[3] = *(v5 + 48);
      *&v25[11] = *(v5 + 64);
    }

    LOBYTE(v25[15]) = *(v5 + 72);
    if ((v23 & 1) == 0)
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = asString();
        *buf = 136315394;
        *&buf[4] = "activationCompleted";
        *&buf[12] = 2080;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E %s: (change states) strange activator state: inactive ?! %s", buf, 0x16u);
      }

      LOBYTE(v23) = 1;
    }

    if (*(a1 + 184) != a2)
    {
      v9 = *(a1 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = asString();
        v11 = asString();
        *buf = 136315650;
        *&buf[4] = "activationCompleted";
        *&buf[12] = 2080;
        *&buf[14] = v10;
        *&buf[22] = 2080;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: !!! (change states) strange activator 'active settings' state: %s, must be %s", buf, 0x20u);
      }

      if ((*(v5 + 41) & 1) == 0)
      {
        *(a1 + 184) = a2;
      }
    }

    v24[16] = 1;
    v18 = v23;
    v19[0] = *v24;
    *(v19 + 10) = *&v24[10];
    if (SHIBYTE(v25[14]) < 0)
    {
      sub_100005F2C(&__p, *&v25[3], *&v25[7]);
    }

    else
    {
      __p = *&v25[3];
      v21 = *&v25[11];
    }

    v22 = v25[15];
    sub_1004914F0(a1, a2, &v18, 0);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    sub_100492120(a1, a2, 1, 0);
    if (*(v5 + 24) == 1)
    {
      *(v4 + 80 * otherContextType() + 24) = 0;
    }

    sub_100004AA0(buf, (a1 + 40));
    v13 = *buf;
    v12 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_100492598;
    v15[3] = &unk_101E4FC10;
    v15[4] = a1;
    v15[5] = v13;
    v16 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = a2;
    v26 = 0;
    v27 = 0;
    sub_100004AA0(&v26, (a1 + 40));
    v14 = *(a1 + 56);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_10049F6D8;
    v29 = &unk_101E4FEE0;
    v31 = v26;
    v32 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v15;
    dispatch_async(v14, buf);
    if (v32)
    {
      sub_100004A34(v32);
    }

    if (v27)
    {
      sub_100004A34(v27);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (SHIBYTE(v25[14]) < 0)
    {
      operator delete(*&v25[3]);
    }
  }
}

void sub_1004920C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492120(uint64_t a1, unsigned int a2, _BOOL4 a3, int a4)
{
  v5 = a1;
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
    v13 = v12[4];
    v29 = v12[3];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v27 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v29 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v27 = 1;
LABEL_9:
  if (v29)
  {
    v28 = v13;
    if (a4)
    {
      subscriber::makeSimSlotRange();
      v14 = v32;
      if (v32 != v33)
      {
        do
        {
          if (v34(LODWORD(v14->__vftable)))
          {
            break;
          }

          v14 = (v14 + 4);
        }

        while (v14 != v33);
        while (v14 != v33)
        {
          v15 = LODWORD(v14->__vftable);
          v16 = v5;
          v17 = *(v5 + 72);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = subscriber::asString();
            v19 = *(v16 + 128);
            v20 = asString();
            v21 = asStringBool(a3);
            *buf = 136315906;
            *&buf[4] = v18;
            *&buf[12] = 1024;
            *&buf[14] = v19;
            v36 = 2080;
            v37 = v20;
            v38 = 2080;
            v39 = v21;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I reportDataPDPActivatorState simSlot %s, pdp %d, ct %s, active %s (forced)", buf, 0x26u);
            v13 = v28;
          }

          v5 = v16;
          (*(*v29 + 896))(v29, v15, *(v16 + 128), a2, a3);
          do
          {
            v14 = (v14 + 4);
          }

          while (v14 != v33 && (v34(LODWORD(v14->__vftable)) & 1) == 0);
        }
      }
    }

    else if ((*(*v5 + 592))(v5))
    {
      v22 = *(v5 + 72);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v5 + 584))(&v32, v5);
        v23 = subscriber::asString();
        v24 = *(v5 + 128);
        v25 = asString();
        v26 = asStringBool(a3);
        *buf = 136315906;
        *&buf[4] = v23;
        *&buf[12] = 1024;
        *&buf[14] = v24;
        v36 = 2080;
        v37 = v25;
        v38 = 2080;
        v39 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I reportDataPDPActivatorState simSlot %s, pdp %d, ct %s, active %s", buf, 0x26u);
        if (v33)
        {
          sub_100004A34(v33);
        }
      }

      (*(*v5 + 584))(buf, v5);
      (*(*v29 + 896))(v29, *(*buf + 52), *(v5 + 128), a2, a3);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}