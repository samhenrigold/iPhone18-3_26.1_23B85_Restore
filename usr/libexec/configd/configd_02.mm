void sub_1000244A8(void *a1, const __CFDictionary *a2, uint64_t *a3)
{
  v5 = sub_100004A70(*a3, a1, a2);
  if (v5 == 10100 || v5 == 0)
  {
    v7 = sub_100001D48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100067824();
    }
  }

  else
  {
    v8 = a3[1];

    CFDictionaryRemoveValue(v8, a1);
  }
}

void sub_1000245AC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t sub_1000245CC(void *a1, uint64_t a2)
{
  result = CFStringGetTypeID();
  if (a1)
  {
    v5 = result;
    result = CFGetTypeID(a1);
    if (result == v5)
    {

      return sub_100024788(a2, a1, 1);
    }
  }

  return result;
}

uint64_t sub_100024690(int a1, uint64_t a2, unsigned int a3, int *a4)
{
  if (_SCUnserializeString())
  {
    CFStringGetTypeID();
    v5 = 1002;
  }

  else
  {
    v5 = 1001;
  }

  *a4 = v5;
  return 0;
}

uint64_t sub_100024788(uint64_t a1, void *a2, int a3)
{
  value = 0;
  v6 = sub_100001D48();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = "*notify";
    v10 = *(a1 + 40);
    *buf = 136315650;
    if (!a3)
    {
      v9 = "notify ";
    }

    v13 = v9;
    v14 = 1024;
    v15 = v10;
    v16 = 2112;
    v17 = a2;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s : %5u : %@", buf, 0x1Cu);
  }

  v7 = CFDictionaryGetValue(qword_1000816C0, a2);
  if (v7 && CFDictionaryGetValueIfPresent(v7, @"data", &value))
  {
    sub_10000847C(a1, a2, value, 1);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    _SCSerialize();
    sub_10000847C(a1, a2, value, 1);
    sub_10000D56C(a1, a2, 1);
    CFRelease(value);
    if (!a3)
    {
LABEL_7:
      sub_10000880C();
    }
  }

  return 0;
}

uint64_t sub_10002490C(int a1, uint64_t a2, unsigned int a3, int *a4)
{
  if (_SCUnserializeString())
  {
    CFStringGetTypeID();
    v5 = 1002;
  }

  else
  {
    v5 = 1001;
  }

  *a4 = v5;
  return 0;
}

uint64_t sub_100024A08(int a1, uint64_t a2, unsigned int a3, int a4, int *a5)
{
  if (_SCUnserializeString())
  {
    CFStringGetTypeID();
    v6 = 1002;
  }

  else
  {
    v6 = 1001;
  }

  *a5 = v6;
  return 0;
}

uint64_t sub_100024B04(int a1, uint64_t a2, unsigned int a3, int a4, int *a5)
{
  if (_SCUnserializeString())
  {
    CFStringGetTypeID();
    v6 = 1002;
  }

  else
  {
    v6 = 1001;
  }

  *a5 = v6;
  return 0;
}

uint64_t sub_100024C00(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return 2003;
  }

  v2 = (a1 + 40);
  if (*(sub_1000022F8(*(a1 + 40)) + 32))
  {
    if (!qword_1000816E8)
    {
      qword_1000816E8 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
    }

    v3 = CFNumberCreate(0, kCFNumberIntType, v2);
    CFSetAddValue(qword_1000816E8, v3);
    CFRelease(v3);
  }

  return 0;
}

uint64_t sub_100024CC8(int a1, uint64_t a2, int a3, int *a4)
{
  v6 = a2;
  v7 = sub_1000022F8(a1);
  v8 = fileport_makefd();
  mach_port_deallocate(mach_task_self_, v6);
  if (v8 < 0)
  {
    *a4 = *__error();
    return 0;
  }

  v9 = fcntl(v8, 3, 0);
  if (v9 == -1 || fcntl(v8, 4, v9 | 4u) == -1)
  {
    v12 = *__error();
LABEL_8:
    *a4 = v12;
    goto LABEL_9;
  }

  if (!v7)
  {
    v12 = 2001;
    goto LABEL_8;
  }

  v10 = *(v7 + 56);
  v11 = sub_100024C00(v10);
  *a4 = v11;
  if (v11)
  {
LABEL_9:
    close(v8);
    return 0;
  }

  v10[12] = 3;
  v10[48] = v8;
  v10[49] = a3;
  return 0;
}

uint64_t sub_100024DEC(int a1, int *a2)
{
  v3 = sub_1000022F8(a1);
  if (v3)
  {
    sub_100007D40(*(v3 + 56));
    v4 = 0;
  }

  else
  {
    v4 = 2001;
  }

  *a2 = v4;
  return 0;
}

uint64_t sub_100024E64()
{
  unlink("/var/tmp/configd-state");
  v0 = open("/var/tmp/configd-state", 3585, 420);
  if (v0 == -1)
  {
    return 1001;
  }

  v1 = fdopen(v0, "w");
  if (!v1)
  {
    return 1001;
  }

  v2 = v1;
  SCPrint();
  CFRunLoopGetCurrent();
  SCPrint();
  sub_100022C80(v2);
  fclose(v2);
  unlink("/var/tmp/configd-store.plist");
  v3 = open("/var/tmp/configd-store.plist", 3585, 420);
  if (v3 == -1)
  {
    return 1001;
  }

  v4 = v3;
  v5 = sub_1000251AC(qword_1000816C0);
  Data = CFPropertyListCreateData(0, v5, kCFPropertyListXMLFormat_v1_0, 0, 0);
  CFRelease(v5);
  if (!Data)
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_12:
      close(v4);
      return 1001;
    }

LABEL_11:
    v15 = _os_log_pack_size();
    v16 = &v18 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    *_os_log_pack_fill(v16, v15, v17, &_mh_execute_header, "CFPropertyListCreateData() failed") = 0;
    __SC_log_send();
    goto LABEL_12;
  }

  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  write(v4, BytePtr, Length);
  close(v4);
  CFRelease(Data);
  unlink("/var/tmp/configd-pattern.plist");
  v9 = open("/var/tmp/configd-pattern.plist", 3585, 420);
  if (v9 != -1)
  {
    v4 = v9;
    v10 = CFPropertyListCreateData(0, qword_1000816C8, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = CFDataGetBytePtr(v10);
      v13 = CFDataGetLength(v11);
      write(v4, v12, v13);
      close(v4);
      CFRelease(v11);
      return 0;
    }

    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return 1001;
}

CFDictionaryRef sub_1000251AC(const __CFDictionary *a1)
{
  memset(v25, 0, 512);
  memset(v24, 0, 512);
  memset(v23, 0, 512);
  Count = CFDictionaryGetCount(a1);
  v3 = Count;
  if (Count <= 0)
  {
    return CFDictionaryCreate(0, v25, v24, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (Count < 0x65)
  {
    Typed = v25;
    v6 = v24;
    v5 = v23;
  }

  else
  {
    Typed = CFAllocatorAllocateTyped();
    v5 = CFAllocatorAllocateTyped();
    v6 = CFAllocatorAllocateTyped();
  }

  bzero(v6, 8 * v3);
  CFDictionaryGetKeysAndValues(a1, Typed, v5);
  v8 = 0;
  *&v9 = 138412290;
  v20 = v9;
  v10 = Typed;
  do
  {
    if (CFDictionaryGetValue(v5[v8], @"data"))
    {
      v22 = 0;
      v6[v8] = CFDictionaryCreateMutableCopy(0, 0, v5[v8]);
      if (_SCUnserialize())
      {
        CFDictionarySetValue(v6[v8], @"data", v22);
        CFRelease(v22);
      }

      else
      {
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v11 = v10;
          v12 = _os_log_pack_size();
          v21 = &v20;
          v13 = &v20 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
          v14 = __error();
          v15 = v12;
          v10 = v11;
          v16 = _os_log_pack_fill(v13, v15, *v14, &_mh_execute_header, "_SCUnserialize() failed, key=%@");
          v17 = v11[v8];
          *v16 = v20;
          *(v16 + 4) = v17;
          __SC_log_send();
        }
      }
    }

    else
    {
      v6[v8] = CFRetain(v5[v8]);
    }

    ++v8;
  }

  while (v3 != v8);
  v7 = CFDictionaryCreate(0, v10, v6, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v18 = 0;
  do
  {
    CFRelease(v6[v18++]);
  }

  while (v3 != v18);
  if (v10 != v25)
  {
    CFAllocatorDeallocate(0, v10);
    CFAllocatorDeallocate(0, v5);
    CFAllocatorDeallocate(0, v6);
  }

  return v7;
}

uint64_t sub_1000255EC(int a1, _DWORD *a2)
{
  v3 = sub_1000022F8(a1);
  if (!v3)
  {
    return 2001;
  }

  if (!sub_100022EE0(v3))
  {
    return 1003;
  }

  v4 = sub_100024E64();
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t sub_100025670(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 20030) >= 0xFFFFFFE2)
  {
    return *(&off_100079E80 + 5 * (v1 - 20000) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000256F0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = sub_100023FEC(*(result + 12), *(result + 28), *(result + 40), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100025810(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 72)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = sub_100024220(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_10002591C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_100024690(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100025A04(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 72)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = sub_100024354(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100025B10(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_10002490C(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100025BF8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_100024A08(*(result + 12), *(result + 28), v3, *(result + 56), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100025CE4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_100024B04(*(result + 12), *(result + 28), v3, *(result + 56), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100025DD0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100024DEC(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_100025E80(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 52)
  {
    v3 = -304;
LABEL_8:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_8;
  }

  result = sub_100024CC8(*(result + 12), *(result + 28), *(result + 48), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100025F60(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_1000255EC(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_100026010(uint64_t a1, uint64_t a2)
{
  if (qword_1000817C8 && CFArrayGetCount(qword_1000817C8) <= 99)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = CFStringCreateWithFormat(0, 0, @"%12.8f: %s %s", *&Current, a1, a2);
    if (qword_1000817C8 && CFArrayGetCount(qword_1000817C8) <= 99)
    {
      CFArrayAppendValue(qword_1000817C8, v5);
      byte_1000817D0 = 1;
    }

    CFRelease(v5);
  }
}

void sub_100026118(const char *a1)
{
  if (a1)
  {
    v2 = xpc_array_create(0, 0);
    xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, a1);
    network_config_check_interface_settings();

    xpc_release(v2);
  }

  else
  {

    network_config_check_interface_settings();
  }
}

void sub_1000261E4()
{
  v0 = qword_1000817B8;

  dispatch_async(v0, &stru_10007A370);
}

void sub_10002624C(id a1)
{

  sub_1000262A4();
}

void sub_1000262A4()
{
  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    v1 = &v4 - ((__chkstk_darwin(v0) + 15) & 0xFFFFFFFFFFFFFFF0);
    v2 = __error();
    *_os_log_pack_fill(v1, v0, *v2, &_mh_execute_header, "Prime") = 0;
    __SC_log_send();
  }

  _SCDynamicStoreCacheOpen();
  qword_1000817C8 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  sub_100026E50("prime", 1);
  _SCDynamicStoreCacheCommitChanges();
  _SCDynamicStoreCacheClose();
  byte_1000816F8 = 1;
  sub_100008C3C();
  if (qword_1000817C8 && byte_1000817D0)
  {
    SCDynamicStoreSetValue(0, @"Plugin:KernelEventMonitor", qword_1000817C8);
    byte_1000817D0 = 0;
  }

  dispatch_resume(qword_1000817C0);
  v3 = dispatch_time(0, 6000000000);
  dispatch_after_f(v3, qword_1000817B8, 0, sub_100027090);
}

void sub_100026484(__CFBundle *a1, int a2)
{
  if (a2)
  {
    byte_100081708 = 1;
  }

  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  v45 = 0;
  v44 = 0;
  v43 = 0;
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    v4 = v38 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = __error();
    *_os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "Load") = 0;
    __SC_log_send();
  }

  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    v7 = v38 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "  bundle ID = %@");
    Identifier = CFBundleGetIdentifier(a1);
    *v9 = 138412290;
    *(v9 + 4) = Identifier;
    __SC_log_send();
  }

  if (sub_100026C8C())
  {
    v11 = socket(32, 3, 1);
    if (v11 == -1)
    {
      if (!qword_1000817B0)
      {
        qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v20 = _os_log_pack_size();
        v21 = v38 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = __error();
        v23 = _os_log_pack_fill(v21, v20, *v22, &_mh_execute_header, "could not open event socket, socket() failed: %s", v38[0]);
        v24 = __error();
        v25 = strerror(*v24);
        *v23 = 136315138;
        *(v23 + 4) = v25;
        __SC_log_send();
      }

      goto LABEL_38;
    }

    v12 = v11;
    v44 = 0x100000001;
    v45 = 0;
    if (ioctl(v11, 0x800C6502uLL, &v44))
    {
      if (!qword_1000817B0)
      {
        qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_37;
      }

      v13 = _os_log_pack_size();
      v14 = v38 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *__error();
      v16 = _os_log_pack_fill(v14, v13, v15, &_mh_execute_header, "could not establish event filter, ioctl() failed: %s");
    }

    else
    {
      v42 = 1;
      if (ioctl(v12, 0x8004667EuLL, &v42))
      {
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_37;
        }

        v26 = _os_log_pack_size();
        v27 = v38 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = *__error();
        v16 = _os_log_pack_fill(v27, v26, v28, &_mh_execute_header, "could not set non-blocking io, ioctl() failed: %s");
      }

      else
      {
        v43 = 0x40000;
        if (!setsockopt(v12, 0xFFFF, 4098, &v43, 4u))
        {
          qword_1000817B8 = dispatch_queue_create("com.apple.SystemConfiguration.KernelEventMonitor", 0);
          qword_1000817C0 = dispatch_source_create(&_dispatch_source_type_read, v12, 0, qword_1000817B8);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 0x40000000;
          handler[2] = sub_100026DF4;
          handler[3] = &unk_10007A390;
          v41 = v12;
          dispatch_source_set_cancel_handler(qword_1000817C0, handler);
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 0x40000000;
          v38[2] = sub_100008D94;
          v38[3] = &unk_10007A3B0;
          v39 = v12;
          dispatch_source_set_event_handler(qword_1000817C0, v38);
          return;
        }

        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_37;
        }

        v29 = _os_log_pack_size();
        v30 = v38 - ((__chkstk_darwin(v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        v31 = *__error();
        v16 = _os_log_pack_fill(v30, v29, v31, &_mh_execute_header, "could not set socket receive buffer, setsockopt() failed: %s");
      }
    }

    v32 = v16;
    v33 = __error();
    v34 = strerror(*v33);
    *v32 = 136315138;
    *(v32 + 4) = v34;
    __SC_log_send();
LABEL_37:
    close(v12);
LABEL_38:
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v35 = _os_log_pack_size();
      v36 = v38 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      *_os_log_pack_fill(v36, v35, *v37, &_mh_execute_header, "kernel event monitor disabled") = 0;
      __SC_log_send();
    }

    CFRelease(qword_100081700);
    return;
  }

  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v17 = _os_log_pack_size();
    v18 = v38 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    *_os_log_pack_fill(v18, v17, *v19, &_mh_execute_header, "kernel event monitor disabled") = 0;
    __SC_log_send();
  }
}

uint64_t sub_100026C8C()
{
  qword_100081700 = SCDynamicStoreCreate(0, @"Kernel Event Monitor plug-in", 0, 0);
  if (qword_100081700)
  {
    return 1;
  }

  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v1 = _os_log_pack_size();
    v2 = &v7 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = __error();
    v4 = _os_log_pack_fill(v2, v1, *v3, &_mh_execute_header, "SCDynamicStoreCreate() failed: %s", v7);
    v5 = SCError();
    v6 = SCErrorString(v5);
    *v4 = 136315138;
    *(v4 + 4) = v6;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_100026DF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  return close(v1);
}

void sub_100026E50(uint64_t a1, int a2)
{
  v19 = 0;
  if (getifaddrs(&v19) == -1)
  {
    v11 = __error();
    v12 = strerror(*v11);
    sub_100026010("getifaddrs", v12);
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      v14 = &v19 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "getifaddrs() failed: %s", v19);
      v17 = __error();
      v18 = strerror(*v17);
      *v16 = 136315138;
      *(v16 + 4) = v18;
      __SC_log_send();
    }
  }

  else
  {
    v4 = sub_100027A48();
    v5 = v19;
    if (v19)
    {
      v6 = 0;
      do
      {
        ifa_addr = v5->ifa_addr;
        if (ifa_addr && ifa_addr->sa_family == 18)
        {
          ifa_data = v5->ifa_data;
          v9 = !ifa_data || *ifa_data != 254;
          if (sub_100027CF4(v4, v5->ifa_name))
          {
            sub_100026010(a1, v5->ifa_name);
            v10 = !v9;
            if (a2)
            {
              v10 = 1;
            }

            if ((v10 & 1) == 0)
            {
              sub_100026118(v5->ifa_name);
            }

            v6 = 1;
          }
        }

        v5 = v5->ifa_next;
      }

      while (v5);
      if (v6)
      {
        sub_100027BA0(v4);
      }
    }

    CFRelease(v4);
    if (a2)
    {
      sub_10000D8D0(v19, 0);
      sub_10000A848(v19, 0);
    }

    freeifaddrs(v19);
  }

  if (a2)
  {
    network_config_check_interface_settings();
  }
}

void sub_100027090()
{
  snprintf(__str, 0x20uLL, "update %d (of %d)", ++dword_1000817D4, 20);
  _SCDynamicStoreCacheOpen();
  sub_100026E50(__str, 0);
  _SCDynamicStoreCacheCommitChanges();
  _SCDynamicStoreCacheClose();
  if (qword_1000817C8 && byte_1000817D0)
  {
    SCDynamicStoreSetValue(0, @"Plugin:KernelEventMonitor", qword_1000817C8);
    byte_1000817D0 = 0;
  }

  if (dword_1000817D4 > 19)
  {
    if (qword_1000817C8)
    {
      CFRelease(qword_1000817C8);
      qword_1000817C8 = 0;
    }
  }

  else
  {
    v0 = dispatch_time(0, 6000000000);
    dispatch_after_f(v0, qword_1000817B8, 0, sub_100027090);
  }
}

int *sub_1000271BC(int *result)
{
  if (byte_100081708)
  {
    v1 = result;
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      v3 = &v24 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      v4 = __error();
      v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "%@ event:");
      *v5 = 138412290;
      *(v5 + 4) = @"Error processing (Apple network subclass)";
      __SC_log_send();
    }

    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v7 = _os_log_pack_size();
      v8 = &v24 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "  Event size=%u, id=%u, vendor=%u, class=%u, subclass=%u, code=%u", v24, DWORD2(v24), v25, v26, v27, v28);
      v11 = *v1;
      v12 = v1[1];
      v13 = v1[2];
      v14 = v1[3];
      v15 = v1[4];
      v16 = v1[5];
      *v10 = 67110400;
      *(v10 + 4) = v11;
      *(v10 + 8) = 1024;
      *(v10 + 10) = v15;
      *(v10 + 14) = 1024;
      *(v10 + 16) = v12;
      *(v10 + 20) = 1024;
      *(v10 + 22) = v13;
      *(v10 + 26) = 1024;
      *(v10 + 28) = v14;
      *(v10 + 32) = 1024;
      *(v10 + 34) = v16;
      result = __SC_log_send();
    }

    if (*v1 >= 0x19)
    {
      v17 = 0;
      v18 = 6;
      *&v6 = 67109376;
      v24 = v6;
      do
      {
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v19 = _os_log_pack_size();
          v20 = &v24 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
          v21 = __error();
          v22 = _os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "  Event data[%2d] = %08x", v24, DWORD2(v24));
          v23 = v1[v18];
          *v22 = v24;
          *(v22 + 4) = v17;
          *(v22 + 8) = 1024;
          *(v22 + 10) = v23;
          result = __SC_log_send();
        }

        ++v18;
        ++v17;
      }

      while ((v18 * 4) < *v1);
    }
  }

  return result;
}

void sub_10002751C(char *cStr, unint64_t a2, const UInt8 *a3, CFIndex a4, const UInt8 *a5, CFIndex a6)
{
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v12, kSCEntNetLinkIssues);
  v14 = sub_10000A670(NetworkInterfaceEntity);
  v15 = CFDataCreate(0, a3, a4);
  CFDictionarySetValue(v14, kSCPropNetLinkIssuesModuleID, v15);
  CFRelease(v15);
  if (a6)
  {
    v16 = CFDataCreate(0, a5, a6);
    CFDictionarySetValue(v14, kSCPropNetLinkIssuesInfo, v16);
    CFRelease(v16);
  }

  else
  {
    CFDictionaryRemoveValue(v14, kSCPropNetLinkIssuesInfo);
  }

  v17 = CFDateCreate(0, a2);
  CFDictionarySetValue(v14, kSCPropNetLinkIssuesTimeStamp, v17);
  CFRelease(v17);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v18 = _os_log_pack_size();
    v19 = &v22 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = __error();
    v21 = _os_log_pack_fill(v19, v18, *v20, &_mh_execute_header, "Update interface link issues: %s: %@");
    *v21 = 136315394;
    *(v21 + 4) = cStr;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v14;
    __SC_log_send();
  }

  SCDynamicStoreSetValue(qword_100081700, NetworkInterfaceEntity, v14);
  CFRelease(v12);
  CFRelease(v14);
  CFRelease(NetworkInterfaceEntity);
}

void sub_100027788(const char *a1)
{
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v9 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "Detach interface: %s", v9);
    *v5 = 136315138;
    *(v5 + 4) = a1;
    __SC_log_send();
  }

  v6 = CFStringCreateWithCString(0, a1, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v6, kSCEntNetLink);
  v8 = sub_10000A670(NetworkInterfaceEntity);
  CFDictionarySetValue(v8, kSCPropNetLinkDetaching, kCFBooleanTrue);
  SCDynamicStoreSetValue(qword_100081700, NetworkInterfaceEntity, v8);
  CFRelease(v6);
  CFRelease(v8);
  CFRelease(NetworkInterfaceEntity);
}

void sub_10002792C(char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v2, kSCEntNetLink);
  v4 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterfaceEntity);
  if (!v4)
  {
    sub_100006850(cStr, v2, 0, 0);
    v5 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterfaceEntity);
    if (!v5)
    {
      goto LABEL_5;
    }

    v4 = v5;
    sub_100026010("added missing link status", cStr);
  }

  CFRelease(v4);
LABEL_5:
  CFRelease(v2);

  CFRelease(NetworkInterfaceEntity);
}

CFMutableArrayRef sub_100027A48()
{
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  v1 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterface);
  CFRelease(NetworkInterface);
  if (v1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v1) == TypeID && (Value = CFDictionaryGetValue(v1, kSCPropNetInterfaces), v4 = CFArrayGetTypeID(), Value) && CFGetTypeID(Value) == v4)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
      CFRelease(v1);
      if (MutableCopy)
      {
        return MutableCopy;
      }
    }

    else
    {
      CFRelease(v1);
    }
  }

  return CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
}

void sub_100027BA0(const void *a1)
{
  v9 = a1;
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  v3 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterface);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v4) != TypeID)
  {
    CFRelease(v4);
LABEL_5:
    v8 = CFDictionaryCreate(0, &kSCPropNetInterfaces, &v9, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    SCDynamicStoreSetValue(qword_100081700, NetworkInterface, v8);
    v7 = v8;
    goto LABEL_6;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  CFRelease(v4);
  CFDictionarySetValue(MutableCopy, kSCPropNetInterfaces, a1);
  SCDynamicStoreSetValue(qword_100081700, NetworkInterface, MutableCopy);
  v7 = MutableCopy;
LABEL_6:
  CFRelease(v7);
  CFRelease(NetworkInterface);
}

uint64_t sub_100027CF4(const __CFArray *a1, char *a2)
{
  v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v12.length = CFArrayGetCount(a1);
  v12.location = 0;
  if (CFArrayContainsValue(a1, v12, v4))
  {
    sub_100006E68(a2, 0, 1);
    v5 = 0;
  }

  else
  {
    CFArrayAppendValue(a1, v4);
    sub_100006E68(a2, 1, 0);
    v6 = sub_10000A6F0(2);
    if (v6 == -1)
    {
      sub_10000A3BC(a2, -1);
    }

    else
    {
      v7 = v6;
      *__str = 0u;
      v11 = 0u;
      snprintf(__str, 0x10uLL, "%s", a2);
      if (ioctl(v7, 0xC020698AuLL, __str) == -1)
      {
        v8 = -1;
      }

      else
      {
        v8 = v11;
      }

      sub_10000A3BC(a2, v8);
      close(v7);
    }

    v5 = 1;
  }

  CFRelease(v4);
  return v5;
}

void sub_100027E44(char *a1)
{
  v2 = sub_100027A48();
  if (sub_100027CF4(v2, a1))
  {
    sub_100026010("link_add", a1);
    sub_100027BA0(v2);
    if (strncmp(a1, "pktap", 5uLL))
    {
      sub_100026118(a1);
    }
  }

  CFRelease(v2);
}

void sub_100027EF8(const char *a1)
{
  v2 = sub_100027A48();
  v3 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v6.length = CFArrayGetCount(v2);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v6, v3);
  CFRelease(v3);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(v2, FirstIndexOfValue);
    sub_10002833C(a1);
    sub_100027BA0(v2);
  }

  CFRelease(v2);
}

void sub_100027FD4(char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v2, kSCEntNetInterfaceDelegation);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = &v8 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "Post interface delegation change: %s", v8);
    *v7 = 136315138;
    *(v7 + 4) = cStr;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  CFRelease(v2);
}

void sub_100028150(const char *a1)
{
  v2 = sub_10000A6F0(2);
  if (v2 != -1)
  {
    v3 = v2;
    *__str = 0u;
    v13 = 0u;
    snprintf(__str, 0x10uLL, "%s", a1);
    v4 = ioctl(v3, 0xC0206989uLL, __str);
    v5 = v13;
    close(v3);
    if (v4 != -1 && !v5)
    {
      v6 = CFStringCreateWithCString(0, a1, 0x8000100u);
      NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v6, kSCEntNetIdleRoute);
      sub_100006F0C();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        v9 = &__str[-((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "Post interface idle: %s", *__str);
        *v11 = 136315138;
        *(v11 + 4) = a1;
        __SC_log_send();
      }

      SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
      CFRelease(NetworkInterfaceEntity);
      CFRelease(v6);
    }
  }
}

void sub_10002833C(const char *a1)
{
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    v3 = &v11 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = __error();
    v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "Remove interface: %s", v11);
    *v5 = 136315138;
    *(v5 + 4) = a1;
    __SC_log_send();
  }

  v6 = CFStringCreateWithCString(0, a1, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v6, kSCEntNetLink);
  SCDynamicStoreRemoveValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v8 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v6, kSCEntNetNAT64);
  SCDynamicStoreRemoveValue(qword_100081700, v8);
  CFRelease(v8);
  v9 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v6, kSCEntNetLinkQuality);
  SCDynamicStoreRemoveValue(qword_100081700, v9);
  CFRelease(v9);
  v10 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v6, kSCEntNetLinkIssues);
  SCDynamicStoreRemoveValue(qword_100081700, v10);
  CFRelease(v10);
  CFRelease(v6);
}

void sub_100028550(const __CFDictionary *a1, const void *a2, unsigned __int8 *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  v8 = MutableCopy;
  v9 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *a3, a3[1], a3[2], a3[3]);
  CFArrayAppendValue(v8, v9);
  CFRelease(v9);
  CFDictionarySetValue(a1, a2, v8);

  CFRelease(v8);
}

void sub_10002864C(char *cStr, int a2, int a3, uint64_t a4)
{
  v7 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetIPv4ARPCollision);
  MutableCopy = CFStringCreateMutableCopy(0, 0, NetworkInterfaceEntity);
  CFStringAppendFormat(MutableCopy, 0, @"/%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2));
  if (a3 >= 1)
  {
    v10 = 0;
    do
    {
      if (v10)
      {
        v11 = ":";
      }

      else
      {
        v11 = "/";
      }

      CFStringAppendFormat(MutableCopy, 0, @"%s%02x", v11, *(a4 + v10++));
    }

    while (a3 != v10);
  }

  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v12 = _os_log_pack_size();
    v13 = &v16 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "Post ARP collision: %@");
    *v15 = 138412290;
    *(v15 + 4) = MutableCopy;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, MutableCopy);
  CFRelease(MutableCopy);
  CFRelease(NetworkInterfaceEntity);
  CFRelease(v7);
}

void sub_100028878(char *a1)
{
  v1 = kSCEntNetIPv4RouterARPFailure;

  sub_1000288E4(a1, "Router ARP failure", v1);
}

void sub_1000288E4(char *cStr, uint64_t a2, const __CFString *a3)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v5, a3);
  CFRelease(v5);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    v8 = &v11 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "Post %s: %@");
    *v10 = 136315394;
    *(v10 + 4) = a2;
    *(v10 + 12) = 2112;
    *(v10 + 14) = NetworkInterfaceEntity;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
}

void sub_100028A64(char *a1)
{
  v1 = kSCEntNetIPv4RouterARPAlive;

  sub_1000288E4(a1, "Router ARP alive", v1);
}

void sub_100028AD0(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  v8 = MutableCopy;
  if (!inet_ntop(30, (a3 + 8), v17, 0x2Eu))
  {
    sub_100006F0C();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      v10 = &v17[-((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "inet_ntop() failed: %s", v16);
      v13 = __error();
      v14 = strerror(*v13);
      *v12 = 136315138;
      *(v12 + 4) = v14;
      __SC_log_send();
    }

    v17[0] = 0;
  }

  v15 = CFStringCreateWithFormat(0, 0, @"%s", v17);
  CFArrayAppendValue(v8, v15);
  CFRelease(v15);
  CFDictionarySetValue(a1, a2, v8);
  CFRelease(v8);
}

void sub_100028CA4(char *cStr, const void *a2, int a3, uint64_t a4)
{
  v7 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, @"IPv6DuplicatedAddress");
  v12[0] = 0;
  inet_ntop(30, a2, v12, 0x2Eu);
  MutableCopy = CFStringCreateMutableCopy(0, 0, NetworkInterfaceEntity);
  CFStringAppendFormat(MutableCopy, 0, @"/%s", v12);
  if (a3 >= 1)
  {
    v10 = 0;
    do
    {
      if (v10)
      {
        v11 = ":";
      }

      else
      {
        v11 = "/";
      }

      CFStringAppendFormat(MutableCopy, 0, @"%s%02x", v11, *(a4 + v10++));
    }

    while (a3 != v10);
  }

  SCDynamicStoreNotifyValue(qword_100081700, MutableCopy);
  CFRelease(MutableCopy);
  CFRelease(NetworkInterfaceEntity);
  CFRelease(v7);
}

void sub_100028E1C(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v1, kSCEntNetNAT64PrefixRequest);
  CFRelease(v1);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    v4 = &v7 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = __error();
    v6 = _os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "Post NAT64 prefix request: %@");
    *v6 = 138412290;
    *(v6 + 4) = NetworkInterfaceEntity;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
}

void sub_100028F88(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v1, kSCEntNetIPv6RouterExpired);
  CFRelease(v1);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    v4 = &v7 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = __error();
    v6 = _os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "Post IPv6 Router Expired: %@");
    *v6 = 138412290;
    *(v6 + 4) = NetworkInterfaceEntity;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
}

uint64_t sub_1000290F4(int a1, uint64_t a2, int a3)
{
  v19 = 0u;
  v20 = 0u;
  __strlcpy_chk();
  v6 = ioctl(a1, 0xC02069A0uLL, &v19);
  if (v6 == -1 && *__error() != 1)
  {
    sub_100006F0C();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      v9 = &v19 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = *__error();
      v11 = _os_log_pack_fill(v9, v8, v10, &_mh_execute_header, "%s: ioctl(SIOCGIFEXPENSIVE) failed: %s");
LABEL_11:
      v15 = v11;
      v16 = __error();
      v17 = strerror(*v16);
      *v15 = 136315394;
      *(v15 + 4) = a2;
      *(v15 + 12) = 2080;
      *(v15 + 14) = v17;
      __SC_log_send();
    }

    return 0xFFFFFFFFLL;
  }

  if (v20 != a3)
  {
    LODWORD(v20) = a3;
    v7 = ioctl(a1, 0xC02069A1uLL, &v19);
    if (v7 != -1)
    {
      return v7;
    }

    if (*__error() != 1)
    {
      sub_100006F0C();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = _os_log_pack_size();
        v13 = &v19 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = *__error();
        v11 = _os_log_pack_fill(v13, v12, v14, &_mh_execute_header, "%s: ioctl(SIOCSIFEXPENSIVE) failed: %s");
        goto LABEL_11;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v6;
}

void sub_10002934C(const void *a1)
{
  v2 = SCPreferencesCreate(0, @"KernelEventMonitor", 0);
  if (v2)
  {
    v3 = v2;
    v4 = SCNetworkSetCopyCurrent(v2);
    if (!v4)
    {
      goto LABEL_25;
    }

    v5 = v4;
    v6 = SCNetworkSetCopyServices(v4);
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
          if (SCNetworkServiceGetEnabled(ValueAtIndex))
          {
            Interface = SCNetworkServiceGetInterface(ValueAtIndex);
            if (Interface)
            {
              v13 = Interface;
              BSDName = SCNetworkInterfaceGetBSDName(Interface);
              if (BSDName)
              {
                if (CFEqual(BSDName, a1))
                {
                  break;
                }
              }
            }
          }

          if (v9 == ++v10)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        CFRetain(v13);
LABEL_12:
        CFRelease(v5);
        CFRelease(v7);
        if (v13)
        {
          EnableLowDataModeValue = __SCNetworkInterfaceGetEnableLowDataModeValue();
          if (EnableLowDataModeValue)
          {
            HIDWORD(v56) = 0;
            CFNumberGetValue(EnableLowDataModeValue, kCFNumberIntType, &v56 + 4);
            sub_100006F0C();
            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
LABEL_19:
              CFRelease(v3);
              v21 = v13;
LABEL_28:
              CFRelease(v21);
              return;
            }

            v16 = _os_log_pack_size();
            v17 = &v56 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
            v18 = __error();
            v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "EnableLowDataModeValue(%@) is %s, skipping");
            v20 = "true";
            if (!HIDWORD(v56))
            {
              v20 = "false";
            }

            *v19 = 138412546;
            *(v19 + 4) = a1;
            *(v19 + 12) = 2080;
            *(v19 + 14) = v20;
          }

          else if (SCNetworkInterfaceSetEnableLowDataMode())
          {
            if (SCPreferencesCommitChanges(v3))
            {
              v32 = SCPreferencesApplyChanges(v3);
              sub_100006F0C();
              _SC_syslog_os_log_mapping();
              v33 = __SC_log_enabled();
              if (v32)
              {
                if (!v33)
                {
                  goto LABEL_19;
                }

                v34 = _os_log_pack_size();
                v35 = &v56 - ((__chkstk_darwin(v34) + 15) & 0xFFFFFFFFFFFFFFF0);
                v36 = __error();
                v37 = _os_log_pack_fill(v35, v34, *v36, &_mh_execute_header, "SCNetworkInterfaceSetEnableLowDataModeValue(%@) success");
                *v37 = 138412290;
                *(v37 + 4) = a1;
              }

              else
              {
                if (!v33)
                {
                  goto LABEL_19;
                }

                v50 = _os_log_pack_size();
                v51 = &v56 - ((__chkstk_darwin(v50) + 15) & 0xFFFFFFFFFFFFFFF0);
                v52 = __error();
                v53 = _os_log_pack_fill(v51, v50, *v52, &_mh_execute_header, "SCPreferencesApplyChanges failed, %s", v56);
                v54 = SCError();
                v55 = SCErrorString(v54);
                *v53 = 136315138;
                *(v53 + 4) = v55;
              }
            }

            else
            {
              sub_100006F0C();
              _SC_syslog_os_log_mapping();
              if (!__SC_log_enabled())
              {
                goto LABEL_19;
              }

              v44 = _os_log_pack_size();
              v45 = &v56 - ((__chkstk_darwin(v44) + 15) & 0xFFFFFFFFFFFFFFF0);
              v46 = __error();
              v47 = _os_log_pack_fill(v45, v44, *v46, &_mh_execute_header, "SCPreferencesCommitChanges failed, %s", v56);
              v48 = SCError();
              v49 = SCErrorString(v48);
              *v47 = 136315138;
              *(v47 + 4) = v49;
            }
          }

          else
          {
            sub_100006F0C();
            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_19;
            }

            v38 = _os_log_pack_size();
            v39 = &v56 - ((__chkstk_darwin(v38) + 15) & 0xFFFFFFFFFFFFFFF0);
            v40 = __error();
            v41 = _os_log_pack_fill(v39, v38, *v40, &_mh_execute_header, "SCNetworkInterfaceSetEnableLowDataModeValue(%@) failed, %s");
            v42 = SCError();
            v43 = SCErrorString(v42);
            *v41 = 138412546;
            *(v41 + 4) = a1;
            *(v41 + 12) = 2080;
            *(v41 + 14) = v43;
          }

          __SC_log_send();
          goto LABEL_19;
        }

LABEL_25:
        sub_100006F0C();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v28 = _os_log_pack_size();
          v29 = &v56 - ((__chkstk_darwin(v28) + 15) & 0xFFFFFFFFFFFFFFF0);
          v30 = __error();
          v31 = _os_log_pack_fill(v29, v28, *v30, &_mh_execute_header, "Can't find interface for %@");
          *v31 = 138412290;
          *(v31 + 4) = a1;
          __SC_log_send();
        }

        v21 = v3;
        goto LABEL_28;
      }

      CFRelease(v5);
    }

    else
    {
      v7 = v5;
    }

    CFRelease(v7);
    goto LABEL_25;
  }

  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v22 = _os_log_pack_size();
    v23 = &v56 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v23, v22, *v24, &_mh_execute_header, "SCPreferencesCreate() failed, %s", v56);
    v26 = SCError();
    v27 = SCErrorString(v26);
    *v25 = 136315138;
    *(v25 + 4) = v27;
    __SC_log_send();
  }
}

uint64_t sub_1000299B0(uint64_t a1, uint64_t a2)
{

  return __SCControlPrefsCreate("com.apple.InterfaceNamer.control.plist", a1, a2);
}

uint64_t sub_100029A18(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  return __SCControlPrefsGetBoolean();
}

uint64_t sub_100029AA4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  return __SCControlPrefsGetBoolean();
}

uint64_t NetworkInterfaceGetReservedRange(uint64_t a1, _DWORD *a2)
{
  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  if (IOInterfaceNamePrefix)
  {
    v5 = IOInterfaceNamePrefix;
    IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
    v7 = sub_100029D1C(IORegistryEntryID);
    v8 = CFStringCreateWithFormat(0, 0, @"network-interface-unit-%@", v5);
    v9 = IORegistryEntrySearchCFProperty(v7, "IOService", v8, 0, 3u);
    TypeID = CFDataGetTypeID();
    if (v9 && CFGetTypeID(v9) == TypeID)
    {
      v11 = sub_100029F68(v9, a2);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      if (!v7)
      {
LABEL_8:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        return v11;
      }
    }

    IOObjectRelease(v7);
    goto LABEL_8;
  }

  sub_10002A504();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v12 = _os_log_pack_size();
    v13 = &v17 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "%s: %@ has no prefix");
    *v15 = 136315394;
    *(v15 + 4) = "NetworkInterfaceGetReservedRange";
    *(v15 + 12) = 2112;
    *(v15 + 14) = a1;
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_100029D1C(uint64_t a1)
{
  HIDWORD(v16) = 0;
  v2 = IORegistryEntryIDMatching(a1);
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v2, &v16 + 1);
  if (MatchingServices)
  {
    v4 = 1;
  }

  else
  {
    v4 = HIDWORD(v16) == 0;
  }

  if (v4)
  {
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v16 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%s: can't find entry 0x%llx, %d", v16, v17, v18);
      *v8 = 136315650;
      *(v8 + 4) = "getRegistryEntryWithID";
      *(v8 + 12) = 2048;
      *(v8 + 14) = a1;
      *(v8 + 22) = 1024;
      *(v8 + 24) = MatchingServices;
LABEL_11:
      __SC_log_send();
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v9 = IOIteratorNext(HIDWORD(v16));
  v10 = v9;
  if (!v9)
  {
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = &v16 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "%s: no such matching entryID 0x%llx", v16, v17);
      *v14 = 136315394;
      *(v14 + 4) = "getRegistryEntryWithID";
      *(v14 + 12) = 2048;
      *(v14 + 14) = a1;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (HIDWORD(v16))
  {
    IOObjectRelease(HIDWORD(v16));
  }

  return v10;
}

uint64_t sub_100029F68(const __CFData *a1, _DWORD *a2)
{
  Length = CFDataGetLength(a1);
  v5 = Length;
  if (Length < 4 || (Length & 3) != 0)
  {
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v16 = _os_log_pack_size();
    v17 = &v20 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "%s: bad length %u", v20, v21);
    *v19 = 136315394;
    *(v19 + 4) = "IFUnitRangeInitWithData";
    *(v19 + 12) = 1024;
    *(v19 + 14) = v5;
    goto LABEL_12;
  }

  v6 = Length >> 2;
  *a2 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  if (v6 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6;
  }

  memmove(a2, BytePtr, (4 * v8));
  if (v5 < 5)
  {
    a2[1] = *a2;
  }

  else if (a2[1] < *a2)
  {
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v10 = _os_log_pack_size();
    v11 = &v20 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "%s: unit end %u < start %u", v20, v21, v22);
    v15 = *a2;
    v14 = a2[1];
    *v13 = 136315650;
    *(v13 + 4) = "IFUnitRangeInitWithData";
    *(v13 + 12) = 1024;
    *(v13 + 14) = v14;
    *(v13 + 18) = 1024;
    *(v13 + 20) = v15;
LABEL_12:
    __SC_log_send();
    return 0;
  }

  return 1;
}

uint64_t NetworkInterfacePrefixGetReservedUnits(void *key)
{
  iterator = 0;
  if (qword_1000817F0)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(qword_1000817F0, key, &value))
    {
      v2 = 0;
      v3 = 0;
      v4 = value;
      goto LABEL_27;
    }
  }

  v2 = CFStringCreateWithFormat(0, 0, @"network-interface-unit-%@", key);
  v5 = IORegistryCreateIterator(kIOMainPortDefault, "IODeviceTree", 1u, &iterator);
  if (v5)
  {
    v6 = v5;
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = &v21 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "IORegistryCreateIterator failed %d", v21);
      *v10 = 67109120;
      v10[1] = v6;
      __SC_log_send();
      v3 = 1;
      v4 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    value = 0;
    v11 = IOIteratorNext(iterator);
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        CFProperty = IORegistryEntryCreateCFProperty(v11, v2, 0, 0);
        if (CFProperty)
        {
          v15 = CFProperty;
          TypeID = CFDataGetTypeID();
          if (CFGetTypeID(v15) == TypeID && sub_100029F68(v15, &value) && (!v13 || HIDWORD(value) > v12))
          {
            v13 = 1;
            v12 = HIDWORD(value);
          }

          CFRelease(v15);
        }

        value = 0;
        v11 = IOIteratorNext(iterator);
      }

      while (v11);
      if (v13)
      {
        v4 = v12 + 1;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_26;
    }
  }

  v4 = 0;
LABEL_26:
  v3 = 1;
LABEL_27:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    Mutable = qword_1000817F0;
    if (!qword_1000817F0)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &unk_1000815A0);
      qword_1000817F0 = Mutable;
    }

    CFDictionarySetValue(Mutable, key, v4);
  }

  return v4;
}

os_log_t sub_10002A504()
{
  result = qword_1000817F8;
  if (!qword_1000817F8)
  {
    result = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    qword_1000817F8 = result;
  }

  return result;
}

uint64_t sub_10002A578(void *a1)
{
  memset(&v4, 0, sizeof(v4));
  v3 = 0;
  CFRetain(a1);
  pthread_attr_init(&v4);
  pthread_attr_setscope(&v4, 1);
  pthread_attr_setdetachstate(&v4, 2);
  pthread_create(&v3, &v4, sub_10002A628, a1);
  return pthread_attr_destroy(&v4);
}

uint64_t sub_10002A628(__CFBundle *a1)
{
  pthread_setname_np("InterfaceNamer thread");
  Current = CFRunLoopGetCurrent();
  v3 = sub_1000299B0(Current, sub_10002A9F4);
  sub_10002A9F4(v3);
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  TypeID = CFDictionaryGetTypeID();
  if (InfoDictionary && CFGetTypeID(InfoDictionary) == TypeID)
  {
    Value = CFDictionaryGetValue(InfoDictionary, @"WaitStackTimeout");
    if (Value)
    {
      v7 = Value;
      v8 = CFNumberGetTypeID();
      if (CFGetTypeID(v7) != v8 || !CFNumberGetValue(v7, kCFNumberDoubleType, &qword_1000815C8) || *&qword_1000815C8 <= 0.0)
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          v10 = &v19 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          v11 = __error();
          *_os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "WaitStackTimeout value error") = 0;
          __SC_log_send();
        }

        qword_1000815C8 = 0x4072C00000000000;
      }
    }

    v12 = CFDictionaryGetValue(InfoDictionary, @"WaitQuietTimeout");
    if (v12)
    {
      v13 = v12;
      v14 = CFNumberGetTypeID();
      if (CFGetTypeID(v13) != v14 || !CFNumberGetValue(v13, kCFNumberDoubleType, &qword_1000815D0) || *&qword_1000815D0 <= 0.0)
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v15 = _os_log_pack_size();
          v16 = &v19 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
          v17 = __error();
          *_os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "WaitQuietTimeout value error") = 0;
          __SC_log_send();
        }

        qword_1000815D0 = 0x406E000000000000;
      }
    }
  }

  if (!sub_10002AC60() || !sub_10002AF90())
  {
    if (dword_100081800)
    {
      IOServiceClose(dword_100081800);
      dword_100081800 = 0;
    }

    if (qword_100081808)
    {
      CFRelease(qword_100081808);
      qword_100081808 = 0;
    }

    if (dword_100081810)
    {
      IOObjectRelease(dword_100081810);
      dword_100081810 = 0;
    }

    if (qword_100081818)
    {
      IONotificationPortDestroy(qword_100081818);
    }

    if (dword_100081820)
    {
      IOObjectRelease(dword_100081820);
      dword_100081820 = 0;
    }

    if (dword_100081824)
    {
      IOObjectRelease(dword_100081824);
      dword_100081824 = 0;
    }

    if (qword_100081828)
    {
      CFRelease(qword_100081828);
      qword_100081828 = 0;
    }

    if (qword_100081830)
    {
      CFRunLoopTimerInvalidate(qword_100081830);
      CFRelease(qword_100081830);
      qword_100081830 = 0;
    }
  }

  CFRelease(a1);
  CFRunLoopRun();
  return 0;
}

uint64_t sub_10002A9F4(uint64_t a1)
{
  v2 = sub_100029A18(a1);
  if (v2 != byte_100081838)
  {
    v3 = v2;
    byte_100081838 = v2;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &v16 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "Allow New Interfaces is %s", v16);
      v8 = "enabled";
      if (!v3)
      {
        v8 = "disabled";
      }

      *v7 = 136315138;
      *(v7 + 4) = v8;
      __SC_log_send();
    }
  }

  result = sub_100029AA4(a1);
  if (result != byte_100081839)
  {
    v10 = result;
    byte_100081839 = result;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v11 = _os_log_pack_size();
      v12 = &v16 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "Configure New Interfaces is %s", v16);
      v15 = "enabled";
      if (!v10)
      {
        v15 = "disabled";
      }

      *v14 = 136315138;
      *(v14 + 4) = v15;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_10002AC60()
{
  v0 = SCPreferencesCreate(0, @"InterfaceNamer:setup_Virtual", 0);
  qword_100081840 = v0;
  if (v0)
  {
    if (SCPreferencesSetCallback(v0, sub_10002B7AC, 0))
    {
      v1 = qword_100081840;
      Current = CFRunLoopGetCurrent();
      if (SCPreferencesScheduleWithRunLoop(v1, Current, kCFRunLoopDefaultMode) || SCError() == 2002)
      {
        return 1;
      }

      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_19;
      }

      v14 = _os_log_pack_size();
      v15 = &v20 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = *__error();
      v13 = _os_log_pack_fill(v15, v14, v16, &_mh_execute_header, "SCPreferencesScheduleWithRunLoop() failed: %s");
    }

    else
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_19;
      }

      v10 = _os_log_pack_size();
      v11 = &v20 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = *__error();
      v13 = _os_log_pack_fill(v11, v10, v12, &_mh_execute_header, "SCPreferencesSetCallBack() failed: %s");
    }

    v17 = v13;
    v18 = SCError();
    v19 = SCErrorString(v18);
    *v17 = 136315138;
    *(v17 + 4) = v19;
    __SC_log_send();
LABEL_19:
    CFRelease(qword_100081840);
    return 0;
  }

  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v4 = _os_log_pack_size();
    v5 = &v20 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "SCPreferencesCreate() failed: %s", v20);
    v8 = SCError();
    v9 = SCErrorString(v8);
    *v7 = 136315138;
    *(v7 + 4) = v9;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_10002AF90()
{
  qword_100081808 = sub_10002BC5C();
  if (qword_100081808)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    Count = CFArrayGetCount(qword_100081808);
    if (Count >= 1)
    {
      v2 = Count;
      for (i = 0; i != v2; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100081808, i);
        if (CFDictionaryContainsKey(ValueAtIndex, @"Active"))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ValueAtIndex);
          CFDictionaryRemoveValue(MutableCopy, @"Active");
          CFArraySetValueAtIndex(qword_100081808, i, MutableCopy);
          CFArrayAppendValue(Mutable, MutableCopy);
          CFRelease(MutableCopy);
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  busyState = 0;
  qword_100081858 = Mutable;
  qword_100081828 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_10002BF54(qword_100081828, @"*START*");
  qword_100081818 = IONotificationPortCreate(kIOMainPortDefault);
  if (!qword_100081818)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 0;
    }

    v14 = _os_log_pack_size();
    v15 = &v47[-((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v16 = *__error();
    v17 = _os_log_pack_fill(v15, v14, v16, &_mh_execute_header, "IONotificationPortCreate failed");
    goto LABEL_24;
  }

  v6 = IORegistryEntryFromPath(kIOMainPortDefault, "IOService:/");
  if (v6)
  {
    v7 = v6;
    v8 = IOServiceAddInterestNotification(qword_100081818, v6, "IOBusyInterest", sub_10002C0E0, qword_100081818, &dword_100081820);
    if (v8)
    {
      v9 = v8;
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_33;
      }

      v10 = _os_log_pack_size();
      v11 = &v47[-((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v12 = *__error();
      v13 = _os_log_pack_fill(v11, v10, v12, &_mh_execute_header, "IOServiceAddInterestNotification returned %d");
    }

    else
    {
      v22 = IOServiceGetBusyState(v7, &busyState);
      if (!v22)
      {
        Current = CFAbsoluteTimeGetCurrent();
        qword_100081830 = CFRunLoopTimerCreate(0, Current + *&qword_1000815C8, 0.0, 0, 0, sub_10002C37C, 0);
        if (!qword_100081830)
        {
          if (!qword_1000817F8)
          {
            qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v33 = _os_log_pack_size();
            v34 = &v47[-((__chkstk_darwin(v33) + 15) & 0xFFFFFFFFFFFFFFF0)];
            v35 = __error();
            *_os_log_pack_fill(v34, v33, *v35, &_mh_execute_header, "CFRunLoopTimerCreate failed") = 0;
            __SC_log_send();
          }

          goto LABEL_33;
        }

        v28 = CFRunLoopGetCurrent();
        CFRunLoopAddTimer(v28, qword_100081830, kCFRunLoopDefaultMode);
        v29 = qword_100081818;
        v30 = IOServiceMatching("IONetworkStack");
        v31 = IOServiceAddMatchingNotification(v29, "IOServiceFirstMatch", v30, sub_10002C4EC, qword_100081818, &dword_100081824);
        if (v31)
        {
          v32 = v31;
          if (!qword_1000817F8)
          {
            qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
          }

          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_10002C4EC(0, dword_100081824);
          v36 = qword_100081818;
          v37 = IOServiceMatching("IONetworkInterface");
          v38 = IOServiceAddMatchingNotification(v36, "IOServiceFirstMatch", v37, sub_10002C77C, qword_100081818, &dword_100081810);
          if (!v38)
          {
            sub_10002C77C(0, dword_100081810);
            sub_10002C0E0(v43, v44, -536870624, busyState);
            v45 = CFRunLoopGetCurrent();
            RunLoopSource = IONotificationPortGetRunLoopSource(qword_100081818);
            CFRunLoopAddSource(v45, RunLoopSource, kCFRunLoopDefaultMode);
            v21 = 1;
            goto LABEL_34;
          }

          v32 = v38;
          if (!qword_1000817F8)
          {
            qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
          }

          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
LABEL_33:
            v21 = 0;
LABEL_34:
            IOObjectRelease(v7);
            return v21;
          }
        }

        v39 = _os_log_pack_size();
        v40 = &v47[-((__chkstk_darwin(v39) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v41 = *__error();
        v42 = _os_log_pack_fill(v40, v39, v41, &_mh_execute_header, "IOServiceAddMatchingNotification returned %d");
        *v42 = 67109120;
        v42[1] = v32;
LABEL_32:
        __SC_log_send();
        goto LABEL_33;
      }

      v9 = v22;
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_33;
      }

      v23 = _os_log_pack_size();
      v24 = &v47[-((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v25 = *__error();
      v13 = _os_log_pack_fill(v24, v23, v25, &_mh_execute_header, "IOServiceGetBusyState returned %d");
    }

    *v13 = 67109120;
    v13[1] = v9;
    goto LABEL_32;
  }

  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v18 = _os_log_pack_size();
    v19 = &v47[-((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v20 = *__error();
    v17 = _os_log_pack_fill(v19, v18, v20, &_mh_execute_header, "IORegistryEntryFromPath failed");
LABEL_24:
    *v17 = 0;
    __SC_log_send();
  }

  return 0;
}

void sub_10002B7AC(const __SCPreferences *a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    v2 = a1;
    if (!a1)
    {
      v2 = qword_100081840;
      if (qword_100081848)
      {
        CFRelease(qword_100081848);
        qword_100081848 = 0;
      }

      if (qword_100081850)
      {
        CFRelease(qword_100081850);
        qword_100081850 = 0;
      }
    }

    sub_10002B884(v2);
    sub_10002BA70(v2);

    SCPreferencesSynchronize(v2);
  }
}

void sub_10002B884(uint64_t a1)
{
  v1 = SCBridgeInterfaceCopyAll();
  v2 = v1;
  if (v1 && !CFArrayGetCount(v1))
  {
    CFRelease(v2);
    v2 = 0;
  }

  v3 = qword_100081848;
  if (qword_100081848 == v2)
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    if (!v2 || !qword_100081848)
    {
      goto LABEL_9;
    }

    if (!CFEqual(qword_100081848, v2))
    {
      v3 = qword_100081848;
LABEL_9:
      if (v3)
      {
        CFRelease(v3);
      }

      qword_100081848 = v2;
      if (!_SCBridgeInterfaceUpdateConfiguration())
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v4 = _os_log_pack_size();
          v5 = &v10 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
          v6 = __error();
          v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "_SCBridgeInterfaceUpdateConfiguration() failed: %s", v10);
          v8 = SCError();
          v9 = SCErrorString(v8);
          *v7 = 136315138;
          *(v7 + 4) = v9;
          __SC_log_send();
        }
      }

      return;
    }
  }

  CFRelease(v2);
}

void sub_10002BA70(const __SCPreferences *a1)
{
  v1 = SCVLANInterfaceCopyAll(a1);
  v2 = v1;
  if (v1 && !CFArrayGetCount(v1))
  {
    CFRelease(v2);
    v2 = 0;
  }

  v3 = qword_100081850;
  if (qword_100081850 == v2)
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    if (!v2 || !qword_100081850)
    {
      goto LABEL_9;
    }

    if (!CFEqual(qword_100081850, v2))
    {
      v3 = qword_100081850;
LABEL_9:
      if (v3)
      {
        CFRelease(v3);
      }

      qword_100081850 = v2;
      if (!_SCVLANInterfaceUpdateConfiguration())
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v4 = _os_log_pack_size();
          v5 = &v10 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
          v6 = __error();
          v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "_SCVLANInterfaceUpdateConfiguration() failed: %s", v10);
          v8 = SCError();
          v9 = SCErrorString(v8);
          *v7 = 136315138;
          *(v7 + 4) = v9;
          __SC_log_send();
        }
      }

      return;
    }
  }

  CFRelease(v2);
}

__CFArray *sub_10002BC5C()
{
  v0 = SCPreferencesCreate(0, @"InterfaceNamer:readInterfaceList", @"NetworkInterfaces.plist");
  if (v0)
  {
    v1 = v0;
    Value = SCPreferencesGetValue(v0, @"Interfaces");
    TypeID = CFArrayGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v4 = Value;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = SCPreferencesGetValue(v1, @"Model");
    if (!v12 || (v13 = v12, v14 = _SC_hw_model(), v13 == v14))
    {
      if (v4)
      {
        goto LABEL_19;
      }
    }

    else if (v14)
    {
      v15 = CFEqual(v13, v14);
      Mutable = 0;
      if (!v15 || !v4)
      {
        goto LABEL_32;
      }

LABEL_19:
      Count = CFArrayGetCount(v4);
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          v19 = CFDictionaryGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v19 && CFDictionaryContainsKey(ValueAtIndex, @"IOInterfaceNamePrefix") && CFDictionaryContainsKey(ValueAtIndex, @"IOInterfaceUnit") && CFDictionaryContainsKey(ValueAtIndex, @"IOMACAddress"))
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }
        }
      }

      if (Mutable)
      {
        v20 = CFArrayGetCount(Mutable);
        if (v20 >= 2)
        {
          v23.length = v20;
          v23.location = 0;
          CFArraySortValues(Mutable, v23, sub_10002C85C, 0);
        }
      }

      goto LABEL_32;
    }

    Mutable = 0;
LABEL_32:
    CFRelease(v1);
    return Mutable;
  }

  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &v22 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "SCPreferencesCreate() failed: %s", v22);
    v9 = SCError();
    v10 = SCErrorString(v9);
    *v8 = 136315138;
    *(v8 + 4) = v10;
    __SC_log_send();
  }

  return 0;
}

void sub_10002BF54(__CFDictionary *a1, const void *a2)
{
  valuePtr = CFAbsoluteTimeGetCurrent();
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionaryAddValue(a1, a2, v4);
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &valuePtr - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%s: %@: %@");
    *v8 = 136315650;
    *(v8 + 4) = "addTimestamp";
    *(v8 + 12) = 2112;
    *(v8 + 14) = a2;
    *(v8 + 22) = 2112;
    *(v8 + 24) = v4;
    __SC_log_send();
  }

  CFRelease(v4);
}

void sub_10002C0E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    if (a3 == -536870624)
    {
      sub_10002BF54(qword_100081828, @"*QUIET*");
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v5 = _os_log_pack_size();
        v6 = &v12 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        v7 = __error();
        *_os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "IOKit quiet") = 0;
        __SC_log_send();
      }
    }

    if (dword_100081800)
    {
      if (dword_100081820)
      {
        IOObjectRelease(dword_100081820);
        dword_100081820 = 0;
      }

      v8 = qword_100081830;
      if (qword_100081830)
      {
        CFRunLoopTimerInvalidate(qword_100081830);
        CFRelease(qword_100081830);
        qword_100081830 = 0;
      }

      sub_10002C77C(v8, dword_100081810);
      if (a3 == -536870624)
      {
        sub_10002BF54(qword_100081828, @"*QUIET&NAMED*");
        sub_10000B7F4();
        if (qword_100081860 != -1)
        {
          sub_100067904();
        }
      }
    }

    else
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v9 = _os_log_pack_size();
        v10 = &v12 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = __error();
        *_os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "No network stack object") = 0;
        __SC_log_send();
      }
    }
  }
}

void sub_10002C37C()
{
  sub_10002BF54(qword_100081828, @"*TIMEOUT*");
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    v1 = &v5 - ((__chkstk_darwin(v0) + 15) & 0xFFFFFFFFFFFFFFF0);
    v2 = __error();
    *_os_log_pack_fill(v1, v0, *v2, &_mh_execute_header, "timed out waiting for IOKit to quiesce") = 0;
    __SC_log_send();
  }

  v3 = sub_10002D3B8();
  sub_10002C0E0(v3, v4, 0, 0);
  sub_10002BF54(qword_100081828, @"*TIMEOUT&NAMED*");
  sub_10000B7F4();
  if (qword_100081860 != -1)
  {
    sub_100067904();
  }
}

uint64_t sub_10002C4EC(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v3 = result;
    v4 = IOServiceOpen(result, mach_task_self_, 0, &dword_100081800);
    if (v4)
    {
      v5 = v4;
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        v7 = &v15 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = __error();
        v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "IOServiceOpen returned %d", v15);
        *v9 = 67109120;
        v9[1] = v5;
        __SC_log_send();
      }
    }

    else
    {
      sub_10002BF54(qword_100081828, @"*STACK*");
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        v11 = &v15 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = __error();
        *_os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "IONetworkStack found") = 0;
        __SC_log_send();
      }

      if (dword_100081824)
      {
        IOObjectRelease(dword_100081824);
        dword_100081824 = 0;
      }

      if (qword_100081830 && CFRunLoopTimerIsValid(qword_100081830))
      {
        v13 = qword_100081830;
        Current = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v13, Current + *&qword_1000815D0);
      }

      sub_10002DE20();
    }

    return IOObjectRelease(v3);
  }

  return result;
}

void sub_10002C77C(int a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = _SCNetworkInterfaceCreateWithIONetworkInterfaceObject();
      if (v5)
      {
        v6 = v5;
        Mutable = qword_100081868;
        if (!qword_100081868)
        {
          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          qword_100081868 = Mutable;
        }

        CFArrayAppendValue(Mutable, v6);
        CFRelease(v6);
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(iterator);
    }

    while (v4);
  }

  sub_10002DE20();
}

CFComparisonResult sub_10002C85C(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"IOInterfaceNamePrefix");
  v5 = CFDictionaryGetValue(a2, @"IOInterfaceNamePrefix");
  result = CFStringCompare(Value, v5, 0);
  if (result == kCFCompareEqualTo)
  {
    v7 = CFDictionaryGetValue(a1, @"IOInterfaceUnit");
    v8 = CFDictionaryGetValue(a2, @"IOInterfaceUnit");

    return CFNumberCompare(v7, v8, 0);
  }

  return result;
}

void sub_10002C95C(id a1)
{
  keys = @"avoid-deadlock";
  values = kCFBooleanFalse;
  sub_10002CC28(qword_100081808);
  v1 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = SCPreferencesCreateWithOptions();
  CFRelease(v1);
  if (v12)
  {
    v2 = __SCNetworkConfigurationUpgrade();
    CFRelease(v12);
    if (v2)
    {
      if (qword_100081808)
      {
        CFRelease(qword_100081808);
      }

      qword_100081808 = sub_10002BC5C();
      sub_10002BF54(qword_100081828, @"*UPGRADED*");
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v3 = _os_log_pack_size();
        v4 = &v12 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
        v5 = __error();
        *_os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "network configuration upgraded") = 0;
        __SC_log_send();
      }

      sub_10000B7F4();
    }
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      v7 = &v12 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = __error();
      v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "SCPreferencesCreate() failed: %s", v12);
      v10 = SCError();
      v11 = SCErrorString(v10);
      *v9 = 136315138;
      *(v9 + 4) = v11;
      __SC_log_send();
    }
  }
}

void sub_10002CC28(CFPropertyListRef a1)
{
  TypeID = CFArrayGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    v3 = SCPreferencesCreate(0, @"InterfaceNamer:writeInterfaceList", @"NetworkInterfaces.plist");
    if (v3)
    {
      v4 = v3;
      Value = SCPreferencesGetValue(v3, @"Interfaces");
      if (Value != a1)
      {
        v6 = Value;
        if (!Value || !CFEqual(Value, a1))
        {
          v7 = SCPreferencesGetValue(v4, @"Model");
          v8 = _SC_hw_model();
          v9 = v8;
          if (v7 && v7 != v8)
          {
            v10 = v8 && CFEqual(v7, v8) != 0;
            if (v6 && !v10)
            {
              if (!qword_1000817F8)
              {
                qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
              }

              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v17 = _os_log_pack_size();
                v18 = &v28 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
                v19 = __error();
                v20 = _os_log_pack_fill(v18, v17, *v19, &_mh_execute_header, "Hardware model changed\n  created on %@\n  now on     %@");
                *v20 = 138412546;
                *(v20 + 4) = v7;
                *(v20 + 12) = 2112;
                *(v20 + 14) = v9;
                __SC_log_send();
              }

              sub_10002D07C(v4, v7);
            }
          }

          SCPreferencesSetValue(v4, @"Model", v9);
          SCPreferencesSetValue(v4, @"Interfaces", a1);
          if (!v6)
          {
            HIDWORD(v28) = 20191120;
            v21 = CFNumberCreate(0, kCFNumberIntType, &v28 + 4);
            SCPreferencesSetValue(v4, kSCPrefVersion, v21);
            CFRelease(v21);
          }

          if (!SCPreferencesCommitChanges(v4) && SCError() != 30)
          {
            if (!qword_1000817F8)
            {
              qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
            }

            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v22 = _os_log_pack_size();
              v23 = &v28 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
              v24 = __error();
              v25 = _os_log_pack_fill(v23, v22, *v24, &_mh_execute_header, "SCPreferencesCommitChanges() failed: %s", v28);
              v26 = SCError();
              v27 = SCErrorString(v26);
              *v25 = 136315138;
              *(v25 + 4) = v27;
              __SC_log_send();
            }
          }
        }
      }

      CFRelease(v4);
    }

    else
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        v12 = &v28 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = __error();
        v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "SCPreferencesCreate(NetworkInterfaces.plist) failed: %s", v28);
        v15 = SCError();
        v16 = SCErrorString(v15);
        *v14 = 136315138;
        *(v14 + 4) = v16;
        __SC_log_send();
      }
    }
  }
}

void sub_10002D07C(const __SCPreferences *a1, uint64_t a2)
{
  v3 = CFStringCreateWithFormat(0, 0, @"%@-%@", @"NetworkInterfaces.plist", a2);
  v4 = SCPreferencesCreate(0, @"InterfaceNamer:writeInterfaceListForModel", v3);
  CFRelease(v3);
  if (v4)
  {
    Value = SCPreferencesPathGetValue(a1, @"/");
    if (!SCPreferencesPathSetValue(v4, @"/", Value))
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        v7 = &v23 - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = __error();
        v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "SCPreferencesPathSetValue() failed: %s", v23);
        v10 = SCError();
        v11 = SCErrorString(v10);
        *v9 = 136315138;
        *(v9 + 4) = v11;
        __SC_log_send();
      }
    }

    v12 = SCPreferencesCommitChanges(v4);
    CFRelease(v4);
    if (!v12)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v13 = _os_log_pack_size();
        v14 = &v23 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        v15 = *__error();
        v16 = _os_log_pack_fill(v14, v13, v15, &_mh_execute_header, "SCPreferencesCommitChanges(NetworkInterfaces-<model>.plist) failed: %s");
LABEL_16:
        v20 = v16;
        v21 = SCError();
        v22 = SCErrorString(v21);
        *v20 = 136315138;
        *(v20 + 4) = v22;
        __SC_log_send();
      }
    }
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v17 = _os_log_pack_size();
      v18 = &v23 - ((__chkstk_darwin(v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = *__error();
      v16 = _os_log_pack_fill(v18, v17, v19, &_mh_execute_header, "SCPreferencesCreate(NetworkInterfaces-<model>.plist) failed: %s");
      goto LABEL_16;
    }
  }
}

uint64_t sub_10002D3B8()
{
  *iterator = 0;
  v0 = IORegistryCreateIterator(kIOMainPortDefault, "IOService", 0, iterator);
  if (v0)
  {
    v1 = v0;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v3 = _os_log_pack_size();
      v4 = iterator - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = __error();
      v6 = _os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "IORegistryCreateIterator() returned %d", iterator[0]);
      *v6 = 67109120;
      v6[1] = v1;
      return __SC_log_send();
    }
  }

  else
  {
    sub_10002D5F4(iterator[0], 0, &iterator[1]);
    if (!iterator[1])
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        v8 = iterator - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __error();
        *_os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "w/no busy services") = 0;
        __SC_log_send();
      }
    }

    return IOObjectRelease(iterator[0]);
  }

  return result;
}

uint64_t sub_10002D5F4(uint64_t a1, const __CFArray *a2, _DWORD *a3)
{
  v5 = a1;
  result = IOIteratorNext(a1);
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = &selRef_qosMarkingIsEnabled_;
  *&v7 = 138413570;
  v54 = v7;
  *&v7 = 67109120;
  v55 = v7;
  v57 = a3;
  v59 = a2;
  v58 = v5;
  while (1)
  {
    v62 = 0;
    v61 = 0;
    memset(v64, 0, 128);
    memset(v63, 0, sizeof(v63));
    v60 = 0;
    if (a2)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, a2);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    v11 = MutableCopy;
    if (!MutableCopy)
    {
      sub_100067960();
    }

    Name = IORegistryEntryGetName(v8, v63);
    if (Name)
    {
      v40 = Name;
      if (!v9[255])
      {
        v9[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_56;
      }

      v41 = _os_log_pack_size();
      v42 = &v54 - ((__chkstk_darwin(v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = *__error();
      v44 = _os_log_pack_fill(v42, v41, v43, &_mh_execute_header, "IORegistryEntryGetName() returned %d");
LABEL_55:
      *v44 = v55;
      v44[1] = v40;
      __SC_log_send();
      goto LABEL_56;
    }

    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendCString(Mutable, v63, 0x8000100u);
    LocationInPlane = IORegistryEntryGetLocationInPlane(v8, "IOService", v64);
    if (LocationInPlane != -536870160)
    {
      v15 = LocationInPlane;
      if (LocationInPlane)
      {
        if (!v9[255])
        {
          v9[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v35 = _os_log_pack_size();
          v56 = v11;
          v36 = &v54 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
          v37 = __error();
          v38 = v35;
          a3 = v57;
          v39 = _os_log_pack_fill(v36, v38, *v37, &_mh_execute_header, "IORegistryEntryGetLocationInPlane() returned %d", v54);
          *v39 = v55;
          v39[1] = v15;
          v9 = &selRef_qosMarkingIsEnabled_;
          __SC_log_send();
          v11 = v56;
        }

        CFRelease(Mutable);
        CFRelease(v11);
        result = IOObjectRelease(v8);
        a2 = v59;
        v5 = v58;
        if (v15)
        {
          return result;
        }

        goto LABEL_37;
      }

      CFStringAppendCString(Mutable, "@", 0x8000100u);
      CFStringAppendCString(Mutable, v64, 0x8000100u);
    }

    CFArrayAppendValue(v11, Mutable);
    CFRelease(Mutable);
    BusyStateAndTime = IOServiceGetBusyStateAndTime();
    if (BusyStateAndTime)
    {
      v40 = BusyStateAndTime;
      if (!v9[255])
      {
        v9[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_56;
      }

      v45 = _os_log_pack_size();
      v46 = &v54 - ((__chkstk_darwin(v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = *__error();
      v44 = _os_log_pack_fill(v46, v45, v47, &_mh_execute_header, "IOServiceGetBusyStateAndTime() returned %d");
      goto LABEL_55;
    }

    if (v61)
    {
      if (!(*a3)++)
      {
        if (!v9[255])
        {
          v9[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v18 = _os_log_pack_size();
          v19 = &v54 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
          v20 = __error();
          v21 = v18;
          a3 = v57;
          *_os_log_pack_fill(v19, v21, *v20, &_mh_execute_header, "Busy services :") = 0;
          v9 = &selRef_qosMarkingIsEnabled_;
          __SC_log_send();
        }
      }

      v22 = CFStringCreateByCombiningStrings(0, v11, @"/");
      if (!v9[255])
      {
        v9[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v23 = _os_log_pack_size();
        v24 = &v54 - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __error();
        v26 = v23;
        a3 = v57;
        v27 = _os_log_pack_fill(v24, v26, *v25, &_mh_execute_header, "  %@ [%s%s%s%u, %llu ms]");
        v28 = "!registered, ";
        if ((v60 & 2) != 0)
        {
          v28 = "";
        }

        v29 = "!matched, ";
        if ((v60 & 4) != 0)
        {
          v29 = "";
        }

        v30 = "inactive, ";
        if ((v60 & 1) == 0)
        {
          v30 = "";
        }

        v31 = v61;
        v32 = v62;
        *v27 = v54;
        *(v27 + 4) = v22;
        *(v27 + 12) = 2080;
        *(v27 + 14) = v28;
        *(v27 + 22) = 2080;
        *(v27 + 24) = v29;
        *(v27 + 32) = 2080;
        *(v27 + 34) = v30;
        *(v27 + 42) = 1024;
        *(v27 + 44) = v31;
        *(v27 + 48) = 2048;
        *(v27 + 50) = v32 / 0xF4240;
        v9 = &selRef_qosMarkingIsEnabled_;
        __SC_log_send();
      }

      CFRelease(v22);
      a2 = v59;
      v5 = v58;
    }

    v33 = IORegistryIteratorEnterEntry(v5);
    if (v33)
    {
      break;
    }

    sub_10002D5F4(v5, v11, a3);
    v34 = IORegistryIteratorExitEntry(v5);
    if (v34)
    {
      v40 = v34;
      if (!v9[255])
      {
        v9[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v51 = _os_log_pack_size();
        v52 = &v54 - ((__chkstk_darwin(v51) + 15) & 0xFFFFFFFFFFFFFFF0);
        v53 = *__error();
        v44 = _os_log_pack_fill(v52, v51, v53, &_mh_execute_header, "IORegistryIteratorExitEntry() returned %d");
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    CFRelease(v11);
    IOObjectRelease(v8);
LABEL_37:
    result = IOIteratorNext(v5);
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  v40 = v33;
  if (!v9[255])
  {
    v9[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v48 = _os_log_pack_size();
    v49 = &v54 - ((__chkstk_darwin(v48) + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = *__error();
    v44 = _os_log_pack_fill(v49, v48, v50, &_mh_execute_header, "IORegistryIteratorEnterEntry() returned %d");
    goto LABEL_55;
  }

LABEL_56:
  CFRelease(v11);
  return IOObjectRelease(v8);
}

void sub_10002DE20()
{
  if (!dword_100081800)
  {
    return;
  }

  v0 = qword_100081868;
  if (qword_100081868)
  {
    Count = CFArrayGetCount(qword_100081868);
    if (Count >= 2)
    {
      v11.length = Count;
      v11.location = 0;
      CFArraySortValues(qword_100081868, v11, &_SCNetworkInterfaceCompare, 0);
    }

    sub_10002E120(qword_100081868);
    v0 = qword_100081868;
  }

  sub_10002E5DC(v0);
  if (&kLockdownNotificationTrustedPTPAttached)
  {
    v2 = &kLockdownNotificationTrustedHostAttached == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2 || &kLockdownNotificationHostDetached == 0;
  if (!v3 && &_lockdown_is_host_trusted && &kLockdownNotificationHostAttached)
  {
    sub_10002E994(qword_100081868);
  }

  if (dword_100081820)
  {
    if (qword_100081858 && !CFArrayGetCount(qword_100081858))
    {
      sub_10002BF54(qword_100081828, @"*COMPLETE*");
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        v5 = block - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        v6 = __error();
        *_os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "last boot interfaces have been named") = 0;
        __SC_log_send();
      }

      sub_10000B7F4();
      v7 = &qword_100081858;
      CFRelease(qword_100081858);
      goto LABEL_33;
    }

    return;
  }

  sub_10002EDE0();
  sub_10002CC28(qword_100081808);
  sub_10002B7AC(0, 2);
  sub_10000B7F4();
  if ((os_variant_is_darwinos() & 1) != 0 || byte_100081839)
  {
    v8 = qword_100081868;
    if (qword_1000818B8 == -1)
    {
      if (!qword_100081868)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    sub_10006798C();
    if (v8)
    {
LABEL_28:
      v9 = qword_1000818C0;
      CFRetain(v8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100033E8C;
      block[3] = &unk_10007A570;
      block[4] = v8;
      dispatch_async(v9, block);
    }
  }

LABEL_29:
  sub_10002F140();
  if (qword_100081858)
  {
    CFRelease(qword_100081858);
    qword_100081858 = 0;
  }

  if (qword_100081868)
  {
    CFRelease(qword_100081868);
    v7 = &qword_100081868;
LABEL_33:
    *v7 = 0;
  }
}

void sub_10002E120(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    *&v3 = 136315650;
    v22 = v3;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        v8 = &v22 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __error();
        v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "%s: %d. %@");
        *v10 = v22;
        *(v10 + 4) = "nameInterfaces";
        *(v10 + 12) = 1024;
        *(v10 + 14) = v5;
        *(v10 + 18) = 2112;
        *(v10 + 20) = ValueAtIndex;
        __SC_log_send();
      }

      if (_SCNetworkInterfaceIsSelfNamed())
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v11 = _os_log_pack_size();
          v12 = &v22 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
          v13 = __error();
          *_os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "Ignoring self-named interface") = 0;
          __SC_log_send();
        }
      }

      else
      {
        if (_SCNetworkInterfaceGetIOInterfaceUnit())
        {
          v23 = 0;
          BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
          if (!BSDName || !CFDictionaryContainsKey(qword_100081828, BSDName))
          {
            if (!qword_1000817F8)
            {
              qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
            }

            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v15 = _os_log_pack_size();
              v16 = &v22 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
              v17 = __error();
              *_os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "Interface already has a unit number") = 0;
              __SC_log_send();
            }

            sub_10002F444(ValueAtIndex);
          }

          if (qword_100081858 && sub_10002F648(qword_100081858, ValueAtIndex, &v23))
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        v18 = sub_10002FC68(ValueAtIndex, a1, v5);
        if (v18)
        {
          ValueAtIndex = v18;
          sub_10002F444(v18);
          CFArraySetValueAtIndex(a1, v5, ValueAtIndex);
          CFRelease(ValueAtIndex);
          if (_SCNetworkInterfaceIsBuiltin())
          {
            if (qword_100081858)
            {
              v23 = 0;
              if (sub_100030A74(qword_100081858, ValueAtIndex, &v23))
              {
                if (!qword_1000817F8)
                {
                  qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
                }

                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v19 = _os_log_pack_size();
                  v20 = &v22 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v21 = __error();
                  *_os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "  and updated database (new address)") = 0;
                  __SC_log_send();
                }

LABEL_22:
                CFArrayRemoveValueAtIndex(qword_100081858, v23);
              }
            }
          }

LABEL_23:
          if (!_SCNetworkInterfaceIsEphemeral())
          {
            sub_10002F790(ValueAtIndex);
          }
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

void sub_10002E5DC(const __CFArray *result)
{
  if (!result)
  {
    return;
  }

  Count = CFArrayGetCount(result);
  v4 = Count - 1;
  if (Count < 1)
  {
    return;
  }

  v5 = Count;
  v6 = 0;
  v7 = 1;
  v8 = &selRef_qosMarkingIsEnabled_;
  *&v3 = 138412290;
  v32 = v3;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(result, v9);
      if (_SCNetworkInterfaceIsApplePreconfigured())
      {
        if (!sub_100032664(qword_100081880, ValueAtIndex))
        {
          v11 = sub_100032744(ValueAtIndex, sub_100032934);
          if (v11)
          {
            break;
          }
        }
      }

      if (v5 == ++v9)
      {
        if (v7)
        {
          return;
        }

        goto LABEL_29;
      }
    }

    v12 = v11;
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    v14 = v8[255];
    if (BSDName)
    {
      v15 = BSDName;
      if (!v14)
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_24;
      }

      v31 = v4;
      v16 = _os_log_pack_size();
      v30 = &v30;
      v17 = &v30 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "watching [pre-configured] interface: %@");
      *v19 = v32;
      *(v19 + 4) = v15;
    }

    else
    {
      if (!v14)
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      v20 = __SC_log_enabled();
      v31 = v4;
      if (v20)
      {
        v21 = _os_log_pack_size();
        v30 = &v30;
        v22 = &v30 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = v21;
        v4 = v31;
        *_os_log_pack_fill(v22, v24, *v23, &_mh_execute_header, "watching [pre-configured] interface w/no BSD name") = 0;
        v8 = &selRef_qosMarkingIsEnabled_;
        __SC_log_send();
      }

      if (!v8[255])
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_24;
      }

      v25 = _os_log_pack_size();
      v30 = &v30;
      v26 = &v30 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      v28 = _os_log_pack_fill(v26, v25, *v27, &_mh_execute_header, "  interface = %@");
      *v28 = v32;
      *(v28 + 4) = ValueAtIndex;
    }

    __SC_log_send();
    v4 = v31;
    v8 = &selRef_qosMarkingIsEnabled_;
LABEL_24:
    Mutable = qword_100081880;
    if (!qword_100081880)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      qword_100081880 = Mutable;
    }

    CFArrayAppendValue(Mutable, v12);
    CFRelease(v12);
    v7 = 0;
    v6 = v9 + 1;
    if (v4 != v9)
    {
      continue;
    }

    break;
  }

LABEL_29:
  sub_100032C68();
}

void sub_10002E994(const __CFArray *a1)
{
  if (!a1)
  {
    return;
  }

  Count = CFArrayGetCount(a1);
  v4 = Count - 1;
  if (Count < 1)
  {
    return;
  }

  v5 = Count;
  v6 = 0;
  v7 = 1;
  v8 = &selRef_qosMarkingIsEnabled_;
  *&v3 = 138412290;
  v33 = v3;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
      if (_SCNetworkInterfaceIsTrustRequired())
      {
        if (!sub_100032664(qword_100081888, ValueAtIndex))
        {
          v11 = sub_100032744(ValueAtIndex, sub_100033188);
          if (v11)
          {
            break;
          }
        }
      }

      if (v5 == ++v9)
      {
        if (v7)
        {
          return;
        }

        goto LABEL_29;
      }
    }

    v12 = v11;
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    v14 = v8[255];
    if (BSDName)
    {
      v15 = BSDName;
      if (!v14)
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_24;
      }

      v32 = v4;
      v16 = _os_log_pack_size();
      v31 = &v31;
      v17 = &v31 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "watching [trust required] interface: %@");
      *v19 = v33;
      *(v19 + 4) = v15;
    }

    else
    {
      if (!v14)
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      v20 = __SC_log_enabled();
      v32 = v4;
      if (v20)
      {
        v21 = _os_log_pack_size();
        v31 = &v31;
        v22 = &v31 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = v21;
        v4 = v32;
        *_os_log_pack_fill(v22, v24, *v23, &_mh_execute_header, "watching [trust required] interface w/no BSD name") = 0;
        v8 = &selRef_qosMarkingIsEnabled_;
        __SC_log_send();
      }

      if (!v8[255])
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_24;
      }

      v25 = _os_log_pack_size();
      v31 = &v31;
      v26 = &v31 - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      v28 = _os_log_pack_fill(v26, v25, *v27, &_mh_execute_header, "  interface = %@");
      *v28 = v33;
      *(v28 + 4) = ValueAtIndex;
    }

    __SC_log_send();
    v4 = v32;
    v8 = &selRef_qosMarkingIsEnabled_;
LABEL_24:
    Mutable = qword_100081888;
    if (!qword_100081888)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      qword_100081888 = Mutable;
    }

    CFArrayAppendValue(Mutable, v12);
    CFRelease(v12);
    v7 = 0;
    v6 = v9 + 1;
    if (v4 != v9)
    {
      continue;
    }

    break;
  }

LABEL_29:
  Current = CFRunLoopGetCurrent();
  if (qword_100081890 != -1)
  {
    sub_1000679F4();
  }

  CFRetain(Current);
  if (qword_100081898 != -1)
  {
    sub_100067A50();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100033740;
  block[3] = &unk_10007A490;
  block[4] = Current;
  dispatch_async(qword_1000818A0, block);
}

void sub_10002EDE0()
{
  if (qword_100081808)
  {
    v0 = qword_100081858 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    Count = CFArrayGetCount(qword_100081858);
    if (Count >= 1)
    {
      v3 = Count;
      *&v2 = 138412290;
      v27 = v2;
      do
      {
        v4 = v3--;
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100081858, v3);
        v6 = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
        TypeID = CFStringGetTypeID();
        if (v6)
        {
          if (CFGetTypeID(v6) == TypeID)
          {
            v8 = CFDictionaryGetValue(ValueAtIndex, @"HiddenConfiguration");
            v9 = CFBooleanGetTypeID();
            if (v8)
            {
              if (CFGetTypeID(v8) == v9 && CFBooleanGetValue(v8))
              {
                if ((v10 = CFDictionaryGetValue(ValueAtIndex, @"IOBuiltin"), v11 = CFBooleanGetTypeID(), v10) && CFGetTypeID(v10) == v11 && CFBooleanGetValue(v10) || (v22 = CFDictionaryGetValue(ValueAtIndex, @"SCNetworkInterfaceInfo"), v23 = CFDictionaryGetTypeID(), v22) && CFGetTypeID(v22) == v23 && (valuePtr = 0, value = 0, CFDictionaryGetValueIfPresent(v22, @"idVendor", &value)) && (v24 = value, v25 = CFNumberGetTypeID(), v24) && CFGetTypeID(v24) == v25 && CFNumberGetValue(value, kCFNumberIntType, &valuePtr) && valuePtr == 1452)
                {
                  if (!qword_1000817F8)
                  {
                    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
                  }

                  _SC_syslog_os_log_mapping();
                  if (__SC_log_enabled())
                  {
                    v12 = _os_log_pack_size();
                    v26[1] = v26;
                    v13 = v26 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
                    v14 = __error();
                    v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "Removing no-longer-active hidden interface: %@");
                    *v15 = v27;
                    *(v15 + 4) = v6;
                    __SC_log_send();
                  }

                  v16 = qword_100081808;
                  if (qword_100081808)
                  {
                    v17 = CFArrayGetCount(qword_100081808);
                    if (v17 >= 1)
                    {
                      v18 = v17;
                      v19 = 0;
                      while (1)
                      {
                        v20 = CFArrayGetValueAtIndex(v16, v19);
                        v21 = CFDictionaryGetValue(v20, @"BSD Name");
                        if (v21 == v6 || v21 && CFEqual(v21, v6))
                        {
                          break;
                        }

                        if (v18 == ++v19)
                        {
                          goto LABEL_37;
                        }
                      }

                      if (v20)
                      {
                        CFArrayRemoveValueAtIndex(qword_100081808, v19);
                        CFArrayRemoveValueAtIndex(qword_100081858, v3);
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_37:
        ;
      }

      while (v4 > 1);
    }
  }
}

CFIndex sub_10002F140()
{
  result = qword_100081858;
  if (qword_100081858)
  {
    result = CFArrayGetCount(qword_100081858);
    v20 = result;
    if (result >= 1)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v2 = _os_log_pack_size();
        v3 = &v19 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
        v4 = __error();
        v5 = _os_log_pack_fill(v3, v2, *v4, &_mh_execute_header, "Interface%s not [yet] active", v19);
        v6 = "s";
        if (v20 == 1)
        {
          v6 = "";
        }

        *v5 = 136315138;
        *(v5 + 4) = v6;
        __SC_log_send();
      }

      v7 = 0;
      *&v1 = 136316162;
      v19 = v1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100081858, v7);
        Value = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
        v10 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
        v11 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v12 = _os_log_pack_size();
          v13 = &v19 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
          v14 = __error();
          v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "  %s%@%sPrefix: %@, Unit: %@");
          *v15 = v19;
          v16 = "";
          v17 = "BSD Name: ";
          if (!Value)
          {
            v17 = "";
          }

          *(v15 + 4) = v17;
          v18 = &stru_10007C038;
          if (Value)
          {
            v18 = Value;
            v16 = ", ";
          }

          *(v15 + 12) = 2112;
          *(v15 + 14) = v18;
          *(v15 + 22) = 2080;
          *(v15 + 24) = v16;
          *(v15 + 32) = 2112;
          *(v15 + 34) = v10;
          *(v15 + 42) = 2112;
          *(v15 + 44) = v11;
          result = __SC_log_send();
        }

        ++v7;
      }

      while (v20 != v7);
    }
  }

  return result;
}

uint64_t sub_10002F444(const __SCNetworkInterface *a1)
{
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  HardwareAddressString = SCNetworkInterfaceGetHardwareAddressString(a1);
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    v8 = &v18 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "  %s%@%sPrefix: %@, %s%@%sMAC address: %@");
    v11 = "BSD Name: ";
    v12 = "";
    *v10 = 136316930;
    if (!BSDName)
    {
      v11 = "";
    }

    *(v10 + 4) = v11;
    *(v10 + 12) = 2112;
    v13 = &stru_10007C038;
    if (BSDName)
    {
      v14 = BSDName;
    }

    else
    {
      v14 = &stru_10007C038;
    }

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    if (BSDName)
    {
      v15 = ", ";
    }

    else
    {
      v15 = "";
    }

    *(v10 + 24) = v15;
    *(v10 + 32) = 2112;
    *(v10 + 34) = IOInterfaceNamePrefix;
    v16 = "Unit: ";
    if (IOInterfaceUnit)
    {
      v13 = IOInterfaceUnit;
    }

    else
    {
      v16 = "";
    }

    if (IOInterfaceUnit)
    {
      v12 = ", ";
    }

    *(v10 + 42) = 2080;
    *(v10 + 44) = v16;
    *(v10 + 52) = 2112;
    *(v10 + 54) = v13;
    if (HardwareAddressString)
    {
      v17 = HardwareAddressString;
    }

    else
    {
      v17 = @"?";
    }

    *(v10 + 62) = 2080;
    *(v10 + 64) = v12;
    *(v10 + 72) = 2112;
    *(v10 + 74) = v17;
    return __SC_log_send();
  }

  return result;
}

const __CFDictionary *sub_10002F648(const __CFArray *a1, uint64_t a2, CFIndex *a3)
{
  if (!a1)
  {
    return 0;
  }

  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  HardwareAddress = _SCNetworkInterfaceGetHardwareAddress();
  ValueAtIndex = 0;
  if (!IOInterfaceNamePrefix)
  {
    return ValueAtIndex;
  }

  v8 = HardwareAddress;
  if (!HardwareAddress)
  {
    return ValueAtIndex;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v10 = Count;
  v16 = a3;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v11);
    Value = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
    v13 = CFDictionaryGetValue(ValueAtIndex, @"IOMACAddress");
    if (Value)
    {
      v14 = v13;
      if (v13)
      {
        if (CFEqual(IOInterfaceNamePrefix, Value) && CFEqual(v8, v14))
        {
          break;
        }
      }
    }

    if (v10 == ++v11)
    {
      return 0;
    }
  }

  if (v16)
  {
    *v16 = v11;
  }

  return ValueAtIndex;
}

void sub_10002F790(const __SCNetworkInterface *a1)
{
  cf = 0;
  if (qword_100081808)
  {
    sub_100030BBC(qword_100081808, a1, &cf);
    Mutable = qword_100081808;
    v3 = cf;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v3 = 0;
    qword_100081808 = Mutable;
  }

  Count = CFArrayGetCount(Mutable);
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (BSDName)
  {
    sub_10002BF54(qword_100081828, BSDName);
  }

  IsBuiltin = _SCNetworkInterfaceIsBuiltin();
  v7 = 0;
  if (v3 && !IsBuiltin)
  {
    Value = CFDictionaryGetValue(v3, @"MatchingMACs");
    v7 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v9 = CFDictionaryGetValue(v3, @"IOMACAddress");
    HardwareAddress = _SCNetworkInterfaceGetHardwareAddress();
    if (v9)
    {
      v11 = HardwareAddress;
      if (HardwareAddress)
      {
        if (!CFEqual(v9, HardwareAddress))
        {
          if (v7)
          {
            MutableCopy = CFArrayCreateMutableCopy(0, 0, v7);
            CFRelease(v7);
            v37.length = CFArrayGetCount(MutableCopy);
            v37.location = 0;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v37, v11);
            if (FirstIndexOfValue != -1)
            {
              CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
            }

            v38.length = CFArrayGetCount(MutableCopy);
            v38.location = 0;
            v14 = CFArrayGetFirstIndexOfValue(MutableCopy, v38, v9);
            if (v14 != -1)
            {
              CFArrayRemoveValueAtIndex(MutableCopy, v14);
            }
          }

          else
          {
            MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          }

          CFArrayInsertValueAtIndex(MutableCopy, 0, v9);
          v15 = CFArrayGetCount(MutableCopy);
          if (v15 >= 33)
          {
            v16 = v15 + 1;
            do
            {
              CFArrayRemoveValueAtIndex(MutableCopy, v16 - 2);
              --v16;
            }

            while (v16 > 0x21);
          }

          v7 = MutableCopy;
        }
      }
    }
  }

  v17 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v18 = _SCNetworkInterfaceCopyInterfaceInfo();
  if (v18)
  {
    v19 = v18;
    CFDictionarySetValue(v17, @"SCNetworkInterfaceInfo", v18);
    CFRelease(v19);
  }

  IOPath = _SCNetworkInterfaceGetIOPath();
  if (IOPath)
  {
    CFDictionarySetValue(v17, @"IOPathMatch", IOPath);
  }

  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  if (IOInterfaceNamePrefix)
  {
    CFDictionarySetValue(v17, @"IOInterfaceNamePrefix", IOInterfaceNamePrefix);
  }

  IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType();
  if (IOInterfaceType)
  {
    CFDictionarySetValue(v17, @"IOInterfaceType", IOInterfaceType);
  }

  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
  if (IOInterfaceUnit)
  {
    CFDictionarySetValue(v17, @"IOInterfaceUnit", IOInterfaceUnit);
  }

  v24 = _SCNetworkInterfaceGetHardwareAddress();
  if (v24)
  {
    CFDictionarySetValue(v17, @"IOMACAddress", v24);
  }

  v25 = SCNetworkInterfaceGetBSDName(a1);
  if (v25)
  {
    CFDictionarySetValue(v17, @"BSD Name", v25);
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  if (InterfaceType)
  {
    CFDictionarySetValue(v17, @"SCNetworkInterfaceType", InterfaceType);
  }

  if (_SCNetworkInterfaceIsBuiltin())
  {
    v27 = kCFBooleanTrue;
  }

  else
  {
    v27 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v17, @"IOBuiltin", v27);
  if (_SCNetworkInterfaceIsHiddenConfiguration())
  {
    CFDictionarySetValue(v17, @"HiddenConfiguration", kCFBooleanTrue);
  }

  if (_SCNetworkInterfaceIsHiddenInterface())
  {
    CFDictionarySetValue(v17, @"HiddenInterface", kCFBooleanTrue);
  }

  CFDictionarySetValue(v17, @"Active", kCFBooleanTrue);
  if (v7)
  {
    CFDictionarySetValue(v17, @"MatchingMACs", v7);
    CFRelease(v7);
  }

  v28 = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  v29 = _SCNetworkInterfaceGetIOInterfaceUnit();
  if (v28)
  {
    v30 = v29;
    if (v29)
    {
      if (Count < 1)
      {
LABEL_56:
        CFArrayAppendValue(qword_100081808, v17);
      }

      else
      {
        v31 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v31);
          v33 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
          v34 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
          v35 = CFStringCompare(v28, v33, 0);
          if (v35 == kCFCompareEqualTo)
          {
            v35 = CFNumberCompare(v30, v34, 0);
          }

          if (v35 == kCFCompareLessThan)
          {
            break;
          }

          if (Count == ++v31)
          {
            goto LABEL_56;
          }
        }

        CFArrayInsertValueAtIndex(Mutable, v31, v17);
      }
    }
  }

  CFRelease(v17);
  if (cf)
  {
    CFRelease(cf);
  }
}

const void *sub_10002FC68(const __SCNetworkInterface *a1, const __CFArray *a2, uint64_t a3)
{
  v105 = 0;
  IOPath = _SCNetworkInterfaceGetIOPath();
  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  IsBuiltin = _SCNetworkInterfaceIsBuiltin();
  if (_SCNetworkInterfaceIsEphemeral())
  {
    LODWORD(valuePtr[0]) = 0;
    v9 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
LABEL_3:
    v10 = 0;
    goto LABEL_19;
  }

  v11 = &selRef_qosMarkingIsEnabled_;
  v12 = sub_10002F648(qword_100081808, a1, 0);
  if (!v12)
  {
    ReservedRange = NetworkInterfaceGetReservedRange(a1, &v105);
    if (ReservedRange)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v35 = _os_log_pack_size();
        v36 = &v103 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = __error();
        v38 = _os_log_pack_fill(v36, v35, *v37, &_mh_execute_header, "%s: %@ has reserved unit %u");
        v39 = v105;
        *v38 = 136315650;
        *(v38 + 4) = "assignNameAndCopyInterface";
        *(v38 + 12) = 2112;
        *(v38 + 14) = a1;
        *(v38 + 22) = 1024;
        *(v38 + 24) = v39;
        __SC_log_send();
        IsBuiltin = 1;
        v11 = &selRef_qosMarkingIsEnabled_;
      }

      else
      {
        IsBuiltin = 1;
      }
    }

    else if (dword_100081820)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v40 = _os_log_pack_size();
        v41 = &v103 - ((__chkstk_darwin(v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = __error();
        v43 = _os_log_pack_fill(v41, v40, *v42, &_mh_execute_header, "%s: waiting for quiet %@");
        *v43 = 136315394;
        *(v43 + 4) = "assignNameAndCopyInterface";
        *(v43 + 12) = 2112;
        *(v43 + 14) = a1;
        __SC_log_send();
      }

      sub_10002BF54(qword_100081828, IOPath);
      return 0;
    }

    if (_SCNetworkInterfaceIsApplePreconfigured())
    {
      goto LABEL_52;
    }

    v45 = v11[257];
    v46 = (IsBuiltin ? &kCFBooleanTrue : &kCFBooleanFalse);
    InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
    if (!InterfaceType)
    {
      goto LABEL_52;
    }

    v48 = InterfaceType;
    v49 = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
    if (!v49)
    {
      goto LABEL_52;
    }

    v50 = *v46;
    valuePtr[1] = v48;
    valuePtr[2] = v49;
    valuePtr[0] = _SCNetworkInterfaceCopyInterfaceInfo();
    valuePtr[3] = v50;
    v107 = 0;
    if (v45)
    {
      v114.length = CFArrayGetCount(v45);
      v114.location = 0;
      CFArrayApplyFunction(v45, v114, sub_100031320, valuePtr);
    }

    if (a2)
    {
      Count = CFArrayGetCount(a2);
      if (Count > a3 + 1)
      {
        v115.location = a3 + 1;
        v115.length = Count - (a3 + 1);
        CFArrayApplyFunction(a2, v115, sub_1000314C0, valuePtr);
      }
    }

    if (v107)
    {
      if (CFArrayGetCount(v107) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v107, 0);
        CFRelease(v107);
        if (!ValueAtIndex)
        {
          goto LABEL_125;
        }

        Value = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
        TypeID = CFStringGetTypeID();
        if (Value && CFGetTypeID(Value) == TypeID)
        {
          v104 = IOInterfaceNamePrefix;
          v54 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
          v55 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
          v56 = CFStringGetTypeID();
          if (v54 && CFGetTypeID(v54) == v56 && (v57 = CFNumberGetTypeID(), v55) && CFGetTypeID(v55) == v57)
          {
            existing = 0;
            keys = @"IOInterfaceNamePrefix";
            v112 = @"IOInterfaceUnit";
            values = v54;
            v110 = v55;
            v58 = CFDictionaryCreate(0, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            keys = @"IOProviderClass";
            v112 = @"IOPropertyMatch";
            values = @"IONetworkInterface";
            v110 = v58;
            v59 = CFDictionaryCreate(0, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFRelease(v58);
            MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v59, &existing);
            v61 = existing;
            v62 = 1;
            if (!MatchingServices && existing)
            {
              v63 = IOIteratorNext(existing);
              v62 = v63 == 0;
              if (v63)
              {
                IOObjectRelease(v63);
              }

              v61 = existing;
            }

            if (v61)
            {
              IOObjectRelease(v61);
            }

            if (!v62)
            {
              ValueAtIndex = 0;
            }
          }

          else
          {
            ValueAtIndex = 0;
          }

          IOInterfaceNamePrefix = v104;
          v11 = &selRef_qosMarkingIsEnabled_;
LABEL_125:
          if (valuePtr[0])
          {
            CFRelease(valuePtr[0]);
          }

          if (ValueAtIndex)
          {
            v91 = CFDictionaryGetValue(ValueAtIndex, @"MatchingMACs");
            if (!v91)
            {
              goto LABEL_11;
            }

            v92 = v91;
            HardwareAddress = _SCNetworkInterfaceGetHardwareAddress();
            if (!HardwareAddress)
            {
              goto LABEL_11;
            }

            v94 = HardwareAddress;
            v116.length = CFArrayGetCount(v92);
            v116.location = 0;
            if (!CFArrayContainsValue(v92, v116, v94))
            {
              goto LABEL_11;
            }

            v9 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
            CFRetain(v9);
            if (!qword_1000817F8)
            {
              qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
            }

            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_10;
            }

            v95 = _os_log_pack_size();
            v96 = &v103 - ((__chkstk_darwin(v95) + 15) & 0xFFFFFFFFFFFFFFF0);
            v97 = *__error();
            v17 = _os_log_pack_fill(v96, v95, v97, &_mh_execute_header, "Interface assigned unit %@ (updating database w/previously used interface)");
            goto LABEL_9;
          }

LABEL_52:
          LODWORD(keys) = 0;
          if (IsBuiltin)
          {
            v104 = IOInterfaceNamePrefix;
            if (ReservedRange)
            {
              v44 = v105;
            }

            else
            {
              v44 = sub_100030D98(a2, a3, IOInterfaceNamePrefix);
            }

            LODWORD(keys) = v44;
            v9 = CFNumberCreate(0, kCFNumberIntType, &keys);
            v64 = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
            v65 = v11[257];
            if (!v65)
            {
              goto LABEL_102;
            }

            v66 = CFArrayGetCount(v65);
            if (v66 < 1)
            {
              goto LABEL_102;
            }

            v67 = v66;
            v68 = 0;
            while (1)
            {
              v69 = CFArrayGetValueAtIndex(qword_100081808, v68);
              v70 = CFDictionaryGetValue(v69, @"IOInterfaceNamePrefix");
              if (v64 == v70 || v64 && v70 && CFEqual(v64, v70))
              {
                v71 = CFDictionaryGetValue(v69, @"IOInterfaceUnit");
                if (v71 == v9 || v9 && v71 && CFEqual(v9, v71))
                {
                  break;
                }
              }

              if (v67 == ++v68)
              {
                goto LABEL_102;
              }
            }

            v72 = _SCNetworkInterfaceGetIOPath();
            v73 = CFDictionaryGetValue(v69, @"IOPathMatch");
            if (v72 == v73 || v72 && v73 && CFEqual(v72, v73))
            {
LABEL_102:
              IOInterfaceNamePrefix = v104;
              v11 = &selRef_qosMarkingIsEnabled_;
              if (v9)
              {
LABEL_117:
                if (!qword_1000817F8)
                {
                  qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
                }

                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v86 = _os_log_pack_size();
                  v87 = &v103 - ((__chkstk_darwin(v86) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v88 = __error();
                  v89 = _os_log_pack_fill(v87, v86, *v88, &_mh_execute_header, "Interface assigned unit %@ (%s)");
                  v90 = "built-in";
                  if (!IsBuiltin)
                  {
                    v90 = "next available";
                  }

                  *v89 = 138412546;
                  *(v89 + 4) = v9;
                  *(v89 + 12) = 2080;
                  *(v89 + 14) = v90;
                  __SC_log_send();
                }

                goto LABEL_3;
              }
            }

            else
            {
              if (!qword_1000817F8)
              {
                qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
              }

              _SC_syslog_os_log_mapping();
              v98 = __SC_log_enabled();
              IOInterfaceNamePrefix = v104;
              if (v98)
              {
                v99 = _os_log_pack_size();
                v100 = &v103 - ((__chkstk_darwin(v99) + 15) & 0xFFFFFFFFFFFFFFF0);
                v101 = __error();
                v102 = _os_log_pack_fill(v100, v99, *v101, &_mh_execute_header, "Interface not assigned [built-in] unit %@");
                *v102 = 138412290;
                *(v102 + 4) = v9;
                __SC_log_send();
              }

              v11 = &selRef_qosMarkingIsEnabled_;
              if (v9)
              {
                CFRelease(v9);
              }
            }
          }

          v74 = CFArrayGetCount(a2);
          v75 = sub_100030D98(a2, v74, IOInterfaceNamePrefix);
          LODWORD(keys) = v75;
          v76 = v11[257];
          if (v76)
          {
            v77 = CFArrayGetCount(v76);
            if (v77 >= 1)
            {
              v78 = v77;
              for (i = 0; i != v78; ++i)
              {
                v80 = CFArrayGetValueAtIndex(v11[257], i);
                v81 = CFDictionaryGetValue(v80, @"IOInterfaceNamePrefix");
                if (CFEqual(v81, IOInterfaceNamePrefix))
                {
                  LODWORD(valuePtr[0]) = 0;
                  v82 = CFDictionaryGetValue(v80, @"IOInterfaceUnit");
                  v83 = CFNumberGetTypeID();
                  if (v82 && CFGetTypeID(v82) == v83)
                  {
                    v84 = CFNumberGetValue(v82, kCFNumberIntType, valuePtr);
                    v85 = valuePtr[0];
                    if (!v84)
                    {
                      v85 = 0;
                    }
                  }

                  else
                  {
                    v85 = 0;
                  }

                  v11 = &selRef_qosMarkingIsEnabled_;
                  if (v85 == v75)
                  {
                    ++v75;
                  }
                }
              }
            }
          }

          LODWORD(keys) = v75;
          v9 = CFNumberCreate(0, kCFNumberIntType, &keys);
          goto LABEL_117;
        }
      }

      else
      {
        CFRelease(v107);
      }
    }

    ValueAtIndex = 0;
    goto LABEL_125;
  }

  ValueAtIndex = v12;
  v9 = CFDictionaryGetValue(v12, @"IOInterfaceUnit");
  CFRetain(v9);
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v14 = _os_log_pack_size();
    v15 = &v103 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = *__error();
    v17 = _os_log_pack_fill(v15, v14, v16, &_mh_execute_header, "Interface assigned unit %@ (from database)");
LABEL_9:
    *v17 = 138412290;
    *(v17 + 4) = v9;
    __SC_log_send();
  }

LABEL_10:
  if (!v9)
  {
LABEL_11:
    v9 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
    CFRetain(v9);
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      v19 = &v103 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v18, *v20, &_mh_execute_header, "Interface assigned unit %@ (updating database w/new interface)");
      *v21 = 138412290;
      *(v21 + 4) = v9;
      __SC_log_send();
    }
  }

  v22 = qword_100081858;
  if (qword_100081858)
  {
    v113.length = CFArrayGetCount(qword_100081858);
    v113.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v22, v113, ValueAtIndex);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(qword_100081858, FirstIndexOfValue);
    }
  }

  v10 = 1;
LABEL_19:
  v24 = 2;
  while (1)
  {
    if (v24 != 2)
    {
      usleep(0xC350u);
    }

    v25 = sub_1000315E4(a1, v10, v9);
    if (v25)
    {
      break;
    }

    v27 = v24-- != 0;
    if (!v10 || !v27)
    {
      if (v10)
      {
        sub_100030F50(a1, v9);
      }

      goto LABEL_36;
    }
  }

  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
  if (!_SCNetworkInterfaceIsEphemeral() && !CFEqual(v9, IOInterfaceUnit))
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v29 = _os_log_pack_size();
      v30 = &v103 - ((__chkstk_darwin(v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = __error();
      v32 = _os_log_pack_fill(v30, v29, *v31, &_mh_execute_header, "interface prefix %@ assigned unit %@ instead of %@");
      *v32 = 138412802;
      *(v32 + 4) = IOInterfaceNamePrefix;
      *(v32 + 12) = 2112;
      *(v32 + 14) = IOInterfaceUnit;
      *(v32 + 22) = 2112;
      *(v32 + 24) = v9;
      __SC_log_send();
    }
  }

LABEL_36:
  if (v9)
  {
    CFRelease(v9);
  }

  return v25;
}

const __CFDictionary *sub_100030A74(const __CFArray *a1, uint64_t a2, CFIndex *a3)
{
  if (!a1)
  {
    return 0;
  }

  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
  ValueAtIndex = 0;
  if (!IOInterfaceNamePrefix)
  {
    return ValueAtIndex;
  }

  v8 = IOInterfaceUnit;
  if (!IOInterfaceUnit)
  {
    return ValueAtIndex;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v10 = Count;
  v16 = a3;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v11);
    Value = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
    v13 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
    if (Value)
    {
      v14 = v13;
      if (v13)
      {
        if (CFEqual(IOInterfaceNamePrefix, Value) && CFEqual(v8, v14))
        {
          break;
        }
      }
    }

    if (v10 == ++v11)
    {
      return 0;
    }
  }

  if (v16)
  {
    *v16 = v11;
  }

  return ValueAtIndex;
}

const __CFDictionary *sub_100030BBC(const __CFArray *a1, uint64_t a2, CFTypeRef *a3)
{
  v13 = 0;
  v6 = sub_10002F648(a1, a2, &v13);
  for (i = 0; v6; v6 = sub_10002F648(a1, a2, &v13))
  {
    if (a3 && !*a3)
    {
      *a3 = CFRetain(v6);
    }

    CFArrayRemoveValueAtIndex(a1, v13);
    ++i;
  }

  while (1)
  {
    result = sub_100030A74(a1, a2, &v13);
    if (!result)
    {
      break;
    }

    if (a3 && !*a3)
    {
      *a3 = CFRetain(result);
    }

    CFArrayRemoveValueAtIndex(a1, v13);
    ++i;
  }

  if (i >= 2)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v9 = _os_log_pack_size();
      v10 = &v13 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "Multiple interfaces removed from database (n = %d, %@)");
      *v12 = 67109378;
      *(v12 + 4) = i;
      *(v12 + 8) = 2112;
      *(v12 + 10) = a2;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_100030D98(CFArrayRef theArray, uint64_t a2, void *a3)
{
  if (a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      CFArrayGetValueAtIndex(theArray, v6);
      IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
      if (CFEqual(a3, IOInterfaceNamePrefix) && _SCNetworkInterfaceIsBuiltin())
      {
        ++v7;
      }

      ++v6;
    }

    while (a2 != v6);
  }

  ReservedUnits = NetworkInterfacePrefixGetReservedUnits(a3);
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    v11 = &v15 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "%@: has %u reserved units");
    *v13 = 138412546;
    *(v13 + 4) = a3;
    *(v13 + 12) = 1024;
    *(v13 + 14) = ReservedUnits;
    __SC_log_send();
  }

  if (v7 <= ReservedUnits)
  {
    return ReservedUnits;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100030F50(const void *a1, const void *a2)
{
  HIDWORD(v26) = 0;
  IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
  v5 = IORegistryEntryIDMatching(IORegistryEntryID);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (MatchingService)
  {
    v7 = MatchingService;
    Mutable = CFDataCreateMutable(0, 32);
    v9 = IOServiceAddInterestNotification(qword_100081818, v7, "IOGeneralInterest", sub_100031C10, Mutable, &v26 + 1);
    if (v9)
    {
      v10 = v9;
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        v12 = &v26 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = __error();
        v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "%s: IOServiceAddInterestNotification() failed, kr =  %d", v26, v27);
        *v14 = 136315394;
        *(v14 + 4) = "addNamingRequest";
        *(v14 + 12) = 1024;
        *(v14 + 14) = v10;
        __SC_log_send();
      }

      CFRelease(Mutable);
      return IOObjectRelease(v7);
    }

    CFDataSetLength(Mutable, 32);
    BytePtr = CFDataGetBytePtr(Mutable);
    *BytePtr = 0u;
    *(BytePtr + 1) = 0u;
    *BytePtr = CFRetain(a1);
    *(BytePtr + 2) = CFRetain(a2);
    v21 = HIDWORD(v26);
    *(BytePtr + 2) = v7;
    *(BytePtr + 3) = v21;
    v22 = qword_100081870;
    if (!qword_100081870)
    {
      qword_100081870 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      sub_100032078();
      v22 = qword_100081870;
    }

    CFArrayAppendValue(v22, Mutable);
    CFRelease(Mutable);
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v23 = _os_log_pack_size();
      v24 = &v26 - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = *__error();
      v19 = _os_log_pack_fill(v24, v23, v25, &_mh_execute_header, "%s: interface %@ unit %@");
      goto LABEL_18;
    }
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v16 = _os_log_pack_size();
      v17 = &v26 - ((__chkstk_darwin(v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v19 = _os_log_pack_fill(v17, v16, v18, &_mh_execute_header, "%s: interface %@ unit %@ no longer exists");
LABEL_18:
      *v19 = 136315650;
      *(v19 + 4) = "addNamingRequest";
      *(v19 + 12) = 2112;
      *(v19 + 14) = a1;
      *(v19 + 22) = 2112;
      *(v19 + 24) = a2;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_100031320(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"IOInterfaceNamePrefix");
  v5 = *(a2 + 16);
  if (Value == v5 || Value && v5 && CFEqual(Value, v5))
  {
    v6 = CFDictionaryGetValue(a1, @"SCNetworkInterfaceType");
    v7 = *(a2 + 8);
    if (v6 == v7 || v6 && v7 && CFEqual(v6, v7))
    {
      v8 = CFDictionaryGetValue(a1, @"SCNetworkInterfaceInfo");
      v9 = *a2;
      if (v8 == *a2 || v8 && v9 && CFEqual(v8, v9))
      {
        if (!*(a2 + 24))
        {
          goto LABEL_21;
        }

        v10 = CFDictionaryGetValue(a1, @"IOBuiltin");
        TypeID = CFBooleanGetTypeID();
        if (!v10 || CFGetTypeID(v10) != TypeID)
        {
          v10 = kCFBooleanFalse;
        }

        v12 = *(a2 + 24);
        if (v10 == v12 || v10 && v12 && CFEqual(v10, v12))
        {
LABEL_21:
          Mutable = *(a2 + 32);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            *(a2 + 32) = Mutable;
          }

          CFArrayAppendValue(Mutable, a1);
        }
      }
    }
  }
}

void sub_1000314C0(const __SCNetworkInterface *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    return;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  v4 = *(a2 + 8);
  if (InterfaceType != v4 && (!InterfaceType || !v4 || !CFEqual(InterfaceType, v4)))
  {
    return;
  }

  v5 = _SCNetworkInterfaceCopyInterfaceInfo();
  v6 = v5;
  v7 = *a2;
  if (v5 == *a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v7)
    {
      v8 = CFEqual(v5, v7);
LABEL_12:
      CFRelease(v6);
      goto LABEL_13;
    }
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v8)
  {
    if (!*(a2 + 24))
    {
      goto LABEL_21;
    }

    IsBuiltin = _SCNetworkInterfaceIsBuiltin();
    v10 = &kCFBooleanTrue;
    if (!IsBuiltin)
    {
      v10 = &kCFBooleanFalse;
    }

    v11 = *v10;
    v12 = *(a2 + 24);
    if (*v10 == v12 || v11 && v12 && CFEqual(v11, v12))
    {
LABEL_21:
      CFRelease(*(a2 + 32));
      *(a2 + 32) = 0;
    }
  }
}

const void *sub_1000315E4(const __SCNetworkInterface *a1, int a2, const void *a3)
{
  IOPath = _SCNetworkInterfaceGetIOPath();
  IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
  v8 = dword_100081800;
  *bytes = IORegistryEntryID;
  valuePtr = a2 == 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, @"IONetworkStackUserCommand", v10);
  CFRelease(v10);
  v11 = CFDataCreate(0, bytes, 8);
  CFDictionarySetValue(Mutable, @"IORegistryEntryID", v11);
  CFRelease(v11);
  CFDictionarySetValue(Mutable, @"IOInterfaceUnit", a3);
  v12 = IOConnectSetCFProperties(v8, Mutable);
  CFRelease(Mutable);
  v13 = sub_100031984(IORegistryEntryID);
  if (v13)
  {
    v14 = v13;
    if (_SCNetworkInterfaceGetIOInterfaceUnit())
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v15 = _os_log_pack_size();
        v16 = &v28 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = __error();
        v18 = _os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "%s interface named\n  path = %@\n  unit = %@");
        v19 = "Known";
        *v18 = 136315650;
        if (!a2)
        {
          v19 = "New";
        }

        *(v18 + 4) = v19;
        *(v18 + 12) = 2112;
        *(v18 + 14) = IOPath;
        *(v18 + 22) = 2112;
        *(v18 + 24) = a3;
        __SC_log_send();
      }

      return v14;
    }

    CFRelease(v14);
  }

  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v20 = a3;
    v21 = IOPath;
    v22 = _os_log_pack_size();
    v28 = &v28;
    v23 = &v28 - ((__chkstk_darwin(v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v23, v22, *v24, &_mh_execute_header, "failed to name %s interface, kr=%d\n  path = %@\n  id   = 0x%llx\n  unit = %@");
    *v25 = 136316162;
    v26 = "Known";
    if (!a2)
    {
      v26 = "New";
    }

    *(v25 + 4) = v26;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v12;
    *(v25 + 18) = 2112;
    *(v25 + 20) = v21;
    *(v25 + 28) = 2048;
    *(v25 + 30) = IORegistryEntryID;
    *(v25 + 38) = 2112;
    *(v25 + 40) = v20;
    __SC_log_send();
  }

  sub_10002F444(a1);
  return 0;
}

uint64_t sub_100031984(uint64_t a1)
{
  HIDWORD(v18) = 0;
  v2 = IORegistryEntryIDMatching(a1);
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v2, &v18 + 1);
  if (MatchingServices)
  {
    v4 = 1;
  }

  else
  {
    v4 = HIDWORD(v18) == 0;
  }

  if (v4)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v18 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "IOServiceGetMatchingServices(0x%llx) returned %d/%u", v18, v19, v20);
      v9 = HIDWORD(v18);
      *v8 = 134218496;
      *(v8 + 4) = a1;
      *(v8 + 12) = 1024;
      *(v8 + 14) = MatchingServices;
      *(v8 + 18) = 1024;
      *(v8 + 20) = v9;
      __SC_log_send();
    }
  }

  else
  {
    v10 = IOIteratorNext(HIDWORD(v18));
    if (v10)
    {
      v11 = v10;
      v12 = _SCNetworkInterfaceCreateWithIONetworkInterfaceObject();
      IOObjectRelease(v11);
      goto LABEL_17;
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      v14 = &v18 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "IORegistryEntryIDMatching(0x%llx) failed", v18);
      *v16 = 134217984;
      *(v16 + 4) = a1;
      __SC_log_send();
    }
  }

  v12 = 0;
LABEL_17:
  if (HIDWORD(v18))
  {
    IOObjectRelease(HIDWORD(v18));
  }

  return v12;
}

const __CFData *sub_100031C10(const __CFData *result, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v3 = result;
    BytePtr = CFDataGetBytePtr(result);
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      v6 = &v12 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = __error();
      v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%s: interface %@ unit %@ interface removed");
      v9 = *BytePtr;
      v10 = *(BytePtr + 2);
      *v8 = 136315650;
      *(v8 + 4) = "entryForNamingRequestChanged";
      *(v8 + 12) = 2112;
      *(v8 + 14) = v9;
      *(v8 + 22) = 2112;
      *(v8 + 24) = v10;
      __SC_log_send();
    }

    sub_100031DBC(BytePtr);
    if (qword_100081870)
    {
      v13.length = CFArrayGetCount(qword_100081870);
      v13.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_100081870, v13, v3);
    }

    else
    {
      FirstIndexOfValue = -1;
    }

    return sub_100031E50(FirstIndexOfValue);
  }

  return result;
}

uint64_t sub_100031DBC(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 12);
  if (v4)
  {
    IOObjectRelease(v4);
    *(a1 + 12) = 0;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 8) = 0;
  }

  return result;
}

CFIndex sub_100031E50(CFIndex a1)
{
  if (!qword_100081870)
  {
    sub_100067AD8();
  }

  if (CFArrayGetCount(qword_100081870) <= a1)
  {
    sub_100067AAC();
  }

  CFArrayRemoveValueAtIndex(qword_100081870, a1);
  result = CFArrayGetCount(qword_100081870);
  if (!result)
  {
    if (qword_100081870)
    {
      CFRelease(qword_100081870);
      qword_100081870 = 0;
    }

    return sub_100031F24();
  }

  return result;
}

uint64_t sub_100031F24()
{
  result = qword_100081878;
  if (qword_100081878)
  {
    CFRunLoopTimerInvalidate(qword_100081878);
    if (qword_100081878)
    {
      CFRelease(qword_100081878);
      qword_100081878 = 0;
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      v2 = &v5 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      v4 = _os_log_pack_fill(v2, v1, *v3, &_mh_execute_header, "%s: timer cancelled", v5);
      *v4 = 136315138;
      *(v4 + 4) = "disableNamingRequestCallBacks";
      return __SC_log_send();
    }
  }

  return result;
}

void sub_100032078()
{
  if (!qword_100081878)
  {
    qword_100081878 = CFRunLoopTimerCreateWithHandler(0, 0.0, 1.0, 0, 0, &stru_10007A430);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddTimer(Current, qword_100081878, kCFRunLoopDefaultMode);
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      v2 = &v5 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      v4 = _os_log_pack_fill(v2, v1, *v3, &_mh_execute_header, "%s: timer scheduled", v5);
      *v4 = 136315138;
      *(v4 + 4) = "enableNamingRequestCallBacks";
      __SC_log_send();
    }
  }
}

void sub_1000321F4(id a1, __CFRunLoopTimer *a2)
{

  sub_10003224C();
}

void sub_10003224C()
{
  if (qword_100081870)
  {
    v0 = &selRef_qosMarkingIsEnabled_;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      v2 = &v27 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      v4 = _os_log_pack_fill(v2, v1, *v3, &_mh_execute_header, "%s", v27);
      *v4 = 136315138;
      *(v4 + 4) = "handleDeferredNamingRequests";
      __SC_log_send();
    }

    Count = CFArrayGetCount(qword_100081870);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = 1;
      *&v6 = 136315906;
      v29 = v6;
      *&v6 = 136315650;
      v27 = v6;
      while (2)
      {
        LODWORD(v28) = v9;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(qword_100081870, v8);
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          ++*(BytePtr + 6);
          v12 = sub_1000315E4(*BytePtr, 1, *(BytePtr + 2));
          if (v12)
          {
            break;
          }

          if (*(BytePtr + 6) >= 0x1Eu)
          {
            if (!v0[255])
            {
              v0[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
            }

            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v13 = _os_log_pack_size();
              v14 = &v27 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
              v15 = __error();
              v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "%s: failed to name %@ unit %@ after %u tries");
              v17 = *BytePtr;
              v18 = *(BytePtr + 2);
              v19 = *(BytePtr + 6);
              *v16 = v29;
              *(v16 + 4) = "handleDeferredNamingRequests";
              *(v16 + 12) = 2112;
              *(v16 + 14) = v17;
              *(v16 + 22) = 2112;
              *(v16 + 24) = v18;
              *(v16 + 32) = 1024;
              *(v16 + 34) = v19;
              __SC_log_send();
              v0 = &selRef_qosMarkingIsEnabled_;
            }

            sub_100031DBC(BytePtr);
            sub_100031E50(v8);
            --v7;
          }

          if (++v8 >= v7)
          {
            if (v28)
            {
              return;
            }

            goto LABEL_25;
          }
        }

        v20 = v12;
        if (!v0[255])
        {
          v0[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v21 = _os_log_pack_size();
          v28 = &v27;
          v22 = &v27 - ((__chkstk_darwin(v21) + 15) & 0xFFFFFFFFFFFFFFF0);
          v23 = __error();
          v24 = _os_log_pack_fill(v22, v21, *v23, &_mh_execute_header, "%s: %@ unit %@ SUCCESS");
          v25 = *BytePtr;
          v26 = *(BytePtr + 2);
          *v24 = v27;
          *(v24 + 4) = "handleDeferredNamingRequests";
          *(v24 + 12) = 2112;
          *(v24 + 14) = v25;
          *(v24 + 22) = 2112;
          *(v24 + 24) = v26;
          __SC_log_send();
        }

        sub_100031DBC(BytePtr);
        sub_100031E50(v8);
        --v7;
        CFRelease(v20);
        v9 = 0;
        ++v8;
        v0 = &selRef_qosMarkingIsEnabled_;
        if (v8 < v7)
        {
          continue;
        }

        break;
      }

LABEL_25:
      sub_10002DE20();
    }
  }
}

BOOL sub_100032664(_BOOL8 result, const void *a2)
{
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      if (CFEqual(*BytePtr, a2))
      {
        return 1;
      }

      else
      {
        v8 = 1;
        do
        {
          v9 = v8;
          if (v5 == v8)
          {
            break;
          }

          v10 = CFArrayGetValueAtIndex(v3, v8);
          v11 = CFDataGetBytePtr(v10);
          v12 = CFEqual(*v11, a2);
          v8 = v9 + 1;
        }

        while (!v12);
        return v9 < v5;
      }
    }
  }

  return result;
}

__CFData *sub_100032744(const void *a1, uint64_t a2)
{
  IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
  v5 = IORegistryEntryIDMatching(IORegistryEntryID);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (!MatchingService)
  {
    return 0;
  }

  v7 = MatchingService;
  Mutable = CFDataCreateMutable(0, 24);
  CFDataSetLength(Mutable, 24);
  BytePtr = CFDataGetBytePtr(Mutable);
  *(BytePtr + 1) = 0;
  *(BytePtr + 2) = 0;
  *BytePtr = 0;
  *BytePtr = CFRetain(a1);
  *(BytePtr + 2) = v7;
  *(BytePtr + 2) = a2;
  v10 = IOServiceAddInterestNotification(qword_100081818, v7, "IOGeneralInterest", sub_100032F24, Mutable, BytePtr + 3);
  if (v10)
  {
    v11 = v10;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      v13 = &v17 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "IOServiceAddInterestNotification() failed, kr =  %d", v17);
      *v15 = 67109120;
      v15[1] = v11;
      __SC_log_send();
    }

    sub_100033100(Mutable);
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void sub_100032934(const __CFData *a1, int a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (a2 != -536870896)
  {
    return;
  }

  v5 = BytePtr;
  BSDName = SCNetworkInterfaceGetBSDName(*BytePtr);
  if (BSDName)
  {
    v7 = BSDName;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_16;
    }

    v8 = _os_log_pack_size();
    v9 = &v21 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "[pre-configured] interface removed: %@");
    *v11 = 138412290;
    *(v11 + 4) = v7;
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      v13 = &v21 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      *_os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "[pre-configured] interface w/no BSD name removed") = 0;
      __SC_log_send();
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_16;
    }

    v15 = _os_log_pack_size();
    v16 = &v21 - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "  interface = %@");
    v19 = *v5;
    *v18 = 138412290;
    *(v18 + 4) = v19;
  }

  __SC_log_send();
LABEL_16:
  if (qword_100081880)
  {
    v22.length = CFArrayGetCount(qword_100081880);
    v22.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_100081880, v22, a1);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(qword_100081880, FirstIndexOfValue);
      if (!CFArrayGetCount(qword_100081880))
      {
        CFRelease(qword_100081880);
        qword_100081880 = 0;
      }

      sub_100032C68();
    }
  }
}

void sub_100032C68()
{
  v0 = &selRef_qosMarkingIsEnabled_;
  if (qword_100081880 && (Count = CFArrayGetCount(qword_100081880), Count >= 1))
  {
    v2 = Count;
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v4 = 0;
    *&v5 = 138412290;
    v18 = v5;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v0[272], v4);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      BSDName = SCNetworkInterfaceGetBSDName(*BytePtr);
      if (BSDName)
      {
        CFArrayAppendValue(Mutable, BSDName);
      }

      else
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          v10 = &v18 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          v11 = __error();
          *_os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "pre-configured interface w/no BSD name") = 0;
          v0 = &selRef_qosMarkingIsEnabled_;
          __SC_log_send();
        }

        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v12 = _os_log_pack_size();
          v13 = &v18 - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
          v14 = __error();
          v15 = v12;
          v0 = &selRef_qosMarkingIsEnabled_;
          v16 = _os_log_pack_fill(v13, v15, *v14, &_mh_execute_header, "  interface = %@");
          v17 = *BytePtr;
          *v16 = v18;
          *(v16 + 4) = v17;
          __SC_log_send();
        }
      }

      ++v4;
    }

    while (v2 != v4);
    CFDictionarySetValue(qword_100081828, @"_PreConfigured_", Mutable);
    CFRelease(Mutable);
  }

  else
  {
    CFDictionaryRemoveValue(qword_100081828, @"_PreConfigured_");
  }

  sub_10000B7F4();
}

void sub_100032F24(const __CFData *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == -536870896)
  {
    BytePtr = CFDataGetBytePtr(a1);
    v7 = *BytePtr;
    if (_SCNetworkInterfaceIsBuiltin() || !_SCNetworkInterfaceIsApplePreconfigured())
    {
      v7 = 0;
    }

    else
    {
      CFRetain(v7);
    }

    CFRetain(a1);
    (*(BytePtr + 2))(a1, 3758096400, a4);
    sub_100033100(a1);
    CFRelease(a1);
    if (v7)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        v9 = &v13 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = __error();
        v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "Interface released unit %@ (from database)");
        IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
        *v11 = 138412290;
        *(v11 + 4) = IOInterfaceUnit;
        __SC_log_send();
      }

      sub_100030BBC(qword_100081808, v7, 0);
      CFRelease(v7);
      sub_10002CC28(qword_100081808);
    }
  }
}

void sub_100033100(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v2 = *(BytePtr + 3);
  if (v2)
  {
    IOObjectRelease(v2);
    *(BytePtr + 3) = 0;
  }

  v3 = *(BytePtr + 2);
  if (v3)
  {
    IOObjectRelease(v3);
    *(BytePtr + 2) = 0;
  }

  if (*BytePtr)
  {
    CFRelease(*BytePtr);
    *BytePtr = 0;
  }
}

void sub_100033188(const __CFData *a1, int a2)
{
  CFDataGetBytePtr(a1);
  if (a2 == -536870896)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = block - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      *_os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "[trust required] interface removed") = 0;
      __SC_log_send();
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      v8 = block - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "  path = %@");
      IOPath = _SCNetworkInterfaceGetIOPath();
      *v10 = 138412290;
      *(v10 + 4) = IOPath;
      __SC_log_send();
    }

    if (qword_100081888)
    {
      v15.length = CFArrayGetCount(qword_100081888);
      v15.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_100081888, v15, a1);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(qword_100081888, FirstIndexOfValue);
        if (!CFArrayGetCount(qword_100081888))
        {
          CFRelease(qword_100081888);
          qword_100081888 = 0;
        }

        Current = CFRunLoopGetCurrent();
        CFRetain(Current);
        if (qword_100081898 != -1)
        {
          sub_100067A50();
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_100033A3C;
        block[3] = &unk_10007A4B0;
        block[4] = Current;
        dispatch_async(qword_1000818A0, block);
      }
    }
  }
}

void sub_100033470(id a1)
{
  sub_100033524(kLockdownNotificationHostAttached, @"Host attached");
  sub_100033524(kLockdownNotificationHostDetached, @"Host detached");
  sub_100033524(kLockdownNotificationTrustedHostAttached, @"Trusted Host attached");
  v1 = kLockdownNotificationTrustedPTPAttached;

  sub_100033524(v1, @"Trusted PTP attached");
}

void sub_100033524(const __CFString *a1, const void *a2)
{
  out_token = -1;
  Current = CFRunLoopGetCurrent();
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    sub_100067B6C();
  }

  v6 = CStringPtr;
  CFRetain(Current);
  CFRetain(a2);
  if (qword_100081898 != -1)
  {
    sub_100067B04();
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100033AB4;
  handler[3] = &unk_10007A4D0;
  handler[4] = Current;
  handler[5] = a2;
  v7 = notify_register_dispatch(v6, &out_token, qword_1000818A0, handler);
  if (v7)
  {
    v8 = v7;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      v10 = handler - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "notify_register_dispatch(%@) failed: %u");
      *v12 = 138412546;
      *(v12 + 4) = a1;
      *(v12 + 12) = 1024;
      *(v12 + 14) = v8;
      __SC_log_send();
    }

    CFRelease(Current);
    CFRelease(a2);
  }
}

void sub_100033740(uint64_t a1)
{
  sub_1000337B8(*(a1 + 32), @"TrustRequired interface added");
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_1000337B8(__CFRunLoop *a1, uint64_t a2)
{
  v18 = 0;
  is_host_trusted = lockdown_is_host_trusted();
  if (qword_100081888)
  {
    Count = CFArrayGetCount(qword_100081888);
  }

  else
  {
    Count = 0;
  }

  v7 = qword_1000818A8 == Count && byte_1000818B0 == is_host_trusted;
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    v17[1] = v17;
    v9 = v17 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "%@, trusted = %s%s%@, %ld interface%s)%s");
    v12 = v18;
    v13 = "No";
    *v11 = 138413826;
    *(v11 + 4) = a2;
    if (is_host_trusted)
    {
      v13 = "Yes";
    }

    v14 = ", error = ";
    if (!v12)
    {
      v14 = "";
    }

    *(v11 + 12) = 2080;
    *(v11 + 14) = v13;
    if (!v12)
    {
      v12 = &stru_10007C038;
    }

    *(v11 + 22) = 2080;
    *(v11 + 24) = v14;
    v15 = "s";
    if (Count == 1)
    {
      v15 = "";
    }

    *(v11 + 32) = 2112;
    *(v11 + 34) = v12;
    v16 = " *";
    *(v11 + 42) = 2048;
    *(v11 + 44) = Count;
    *(v11 + 52) = 2080;
    *(v11 + 54) = v15;
    if (v7)
    {
      v16 = "";
    }

    *(v11 + 62) = 2080;
    *(v11 + 64) = v16;
    __SC_log_send();
  }

  if (!v7)
  {
    byte_1000818B0 = is_host_trusted;
    qword_1000818A8 = Count;
    CFRunLoopPerformBlock(a1, kCFRunLoopDefaultMode, &stru_10007A550);
    CFRunLoopWakeUp(a1);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_100033A3C(uint64_t a1)
{
  sub_1000337B8(*(a1 + 32), @"TrustRequired interface removed");
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_100033AB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  sub_1000337B8(v2, v3);
}

void sub_100033B6C(id a1)
{

  sub_100033BC4();
}

void sub_100033BC4()
{
  v0 = &selRef_qosMarkingIsEnabled_;
  if (qword_100081888 && ((Count = CFArrayGetCount(qword_100081888), Count >= 1) ? (v2 = byte_1000818B0 == 0) : (v2 = 0), v2))
  {
    v3 = Count;
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5 = 0;
    *&v6 = 138412290;
    v19 = v6;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v0[273], v5);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      BSDName = SCNetworkInterfaceGetBSDName(*BytePtr);
      if (BSDName)
      {
        CFArrayAppendValue(Mutable, BSDName);
      }

      else
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v10 = _os_log_pack_size();
          v11 = &v19 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
          v12 = __error();
          *_os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "[trust required] interface w/no BSD name not excluded") = 0;
          v0 = &selRef_qosMarkingIsEnabled_;
          __SC_log_send();
        }

        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v13 = _os_log_pack_size();
          v14 = &v19 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
          v15 = __error();
          v16 = v13;
          v0 = &selRef_qosMarkingIsEnabled_;
          v17 = _os_log_pack_fill(v14, v16, *v15, &_mh_execute_header, "  interface = %@");
          v18 = *BytePtr;
          *v17 = v19;
          *(v17 + 4) = v18;
          __SC_log_send();
        }
      }

      ++v5;
    }

    while (v3 != v5);
    CFDictionarySetValue(qword_100081828, @"_Excluded_", Mutable);
    CFRelease(Mutable);
  }

  else
  {
    CFDictionaryRemoveValue(qword_100081828, @"_Excluded_");
  }

  sub_10000B7F4();
}

void sub_100033E8C(uint64_t a1)
{
  sub_100033EFC(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_100033EFC(const __CFArray *a1)
{
  v2 = SCPreferencesCreate(0, @"InterfaceNamer:updateNetworkConfiguration", 0);
  v3 = &selRef_qosMarkingIsEnabled_;
  if (!v2)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      v19 = &Default - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v18, *v20, &_mh_execute_header, "SCPreferencesCreate() failed: %s", Default);
      v22 = SCError();
      v23 = SCErrorString(v22);
      *v21 = 136315138;
      *(v21 + 4) = v23;
      __SC_log_send();
    }

    return;
  }

  v4 = v2;
  v84 = a1;
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    v7 = &Default - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "%s: evaluating %@");
    *v9 = 136315394;
    *(v9 + 4) = "updateNetworkConfigurationAsync";
    *(v9 + 12) = 2112;
    *(v9 + 14) = v84;
    __SC_log_send();
  }

  v10 = 0;
  *&v5 = 136315650;
  v85 = v5;
  while (!SCPreferencesLock(v4, 1u))
  {
    v11 = SCError();
    v12 = v3[255];
    if (v11 != 3005)
    {
      if (!v12)
      {
        v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v25 = _os_log_pack_size();
        v26 = &Default - ((__chkstk_darwin(v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = __error();
        v28 = _os_log_pack_fill(v26, v25, *v27, &_mh_execute_header, "%s: failed to get lock, %s", Default, v84);
        v29 = SCError();
        v30 = SCErrorString(v29);
        *v28 = 136315394;
        *(v28 + 4) = "updateNetworkConfigurationAsync";
        *(v28 + 12) = 2080;
        *(v28 + 14) = v30;
        __SC_log_send();
        v3 = &selRef_qosMarkingIsEnabled_;
      }

LABEL_26:
      if (!v3[255])
      {
        v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v31 = _os_log_pack_size();
        v32 = &Default - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = __error();
        v34 = _os_log_pack_fill(v32, v31, *v33, &_mh_execute_header, "%s: can't acquire lock, giving up", Default);
        *v34 = 136315138;
        *(v34 + 4) = "updateNetworkConfigurationAsync";
        __SC_log_send();
      }

      goto LABEL_86;
    }

    if (!v12)
    {
      v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      v14 = v4;
      v15 = &Default - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v13, *v16, &_mh_execute_header, "%s: kSCStatusStale, calling Synchronize (try %d of %d)", Default, v84, v85);
      *v17 = v85;
      ++v10;
      *(v17 + 4) = "updateNetworkConfigurationAsync";
      *(v17 + 12) = 1024;
      *(v17 + 14) = v10;
      *(v17 + 18) = 1024;
      *(v17 + 20) = 10;
      v4 = v14;
      __SC_log_send();
      v3 = &selRef_qosMarkingIsEnabled_;
    }

    else
    {
      ++v10;
    }

    SCPreferencesSynchronize(v4);
    if (v10 == 10)
    {
      goto LABEL_26;
    }
  }

  Default = SCNetworkSetCopyCurrent(v4);
  if (Default)
  {
    v24 = v84;
  }

  else
  {
    v24 = v84;
    if (!v3[255])
    {
      v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v35 = _os_log_pack_size();
      v36 = &Default - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      *_os_log_pack_fill(v36, v35, *v37, &_mh_execute_header, "No current set, adding default", Default) = 0;
      __SC_log_send();
      v3 = &selRef_qosMarkingIsEnabled_;
    }

    Default = _SCNetworkSetCreateDefault();
    if (!Default)
    {
      if (!v3[255])
      {
        v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v67 = _os_log_pack_size();
        v68 = &Default - ((__chkstk_darwin(v67) + 15) & 0xFFFFFFFFFFFFFFF0);
        v69 = __error();
        v70 = _os_log_pack_fill(v68, v67, *v69, &_mh_execute_header, "_SCNetworkSetCreateDefault() failed: %s", Default);
        v71 = SCError();
        v72 = SCErrorString(v71);
        *v70 = 136315138;
        *(v70 + 4) = v72;
        __SC_log_send();
      }

      SCPreferencesUnlock(v4);
      goto LABEL_86;
    }
  }

  if (!v24)
  {
    goto LABEL_85;
  }

  Count = CFArrayGetCount(v24);
  if (Count < 1)
  {
    goto LABEL_85;
  }

  v40 = Count;
  v41 = v4;
  LODWORD(v84) = 0;
  v42 = 0;
  *&v39 = 138412290;
  v85 = v39;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v24, v42);
    if (_SCNetworkInterfaceIsHiddenInterface())
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v44 = _os_log_pack_size();
        v45 = &Default - ((__chkstk_darwin(v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = __error();
        v47 = _os_log_pack_fill(v45, v44, *v46, &_mh_execute_header, "%@: not configuring hidden interface");
        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        *v47 = v85;
        *(v47 + 4) = BSDName;
        goto LABEL_59;
      }
    }

    else if (SCNetworkInterfaceGetAutoConfigure())
    {
      if (SCNetworkSetEstablishDefaultInterfaceConfiguration())
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v49 = _os_log_pack_size();
          v50 = &Default - ((__chkstk_darwin(v49) + 15) & 0xFFFFFFFFFFFFFFF0);
          v51 = __error();
          v52 = _os_log_pack_fill(v50, v49, *v51, &_mh_execute_header, "added default configuration for %@");
          v53 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
          *v52 = v85;
          *(v52 + 4) = v53;
          __SC_log_send();
        }

        LODWORD(v84) = 1;
      }

      else
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v58 = _os_log_pack_size();
          v59 = &Default - ((__chkstk_darwin(v58) + 15) & 0xFFFFFFFFFFFFFFF0);
          v60 = *__error();
          v57 = _os_log_pack_fill(v59, v58, v60, &_mh_execute_header, "did not configure %@ (it's likely already configured)", Default);
LABEL_58:
          v61 = v57;
          v62 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
          *v61 = v85;
          *(v61 + 4) = v62;
LABEL_59:
          __SC_log_send();
        }
      }
    }

    else
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v54 = _os_log_pack_size();
        v55 = &Default - ((__chkstk_darwin(v54) + 15) & 0xFFFFFFFFFFFFFFF0);
        v56 = *__error();
        v57 = _os_log_pack_fill(v55, v54, v56, &_mh_execute_header, "%@: auto-configure disabled on interface", Default);
        goto LABEL_58;
      }
    }

    ++v42;
  }

  while (v40 != v42);
  v4 = v41;
  if (!v84)
  {
    goto LABEL_85;
  }

  if (SCPreferencesCommitChanges(v41))
  {
    if (SCPreferencesApplyChanges(v41))
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v63 = _os_log_pack_size();
        v64 = &Default - ((__chkstk_darwin(v63) + 15) & 0xFFFFFFFFFFFFFFF0);
        v65 = __error();
        v66 = _os_log_pack_fill(v64, v63, *v65, &_mh_execute_header, "%s: configuration saved", Default);
        *v66 = 136315138;
        *(v66 + 4) = "updateNetworkConfigurationAsync";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_85;
    }

    v77 = _os_log_pack_size();
    v78 = &Default - ((__chkstk_darwin(v77) + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = *__error();
    v76 = _os_log_pack_fill(v78, v77, v79, &_mh_execute_header, "SCPreferencesApplyChanges() failed: %s");
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_85;
    }

    v73 = _os_log_pack_size();
    v74 = &Default - ((__chkstk_darwin(v73) + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = *__error();
    v76 = _os_log_pack_fill(v74, v73, v75, &_mh_execute_header, "SCPreferencesCommitChanges() failed: %s");
  }

  v80 = v76;
  v81 = SCError();
  v82 = SCErrorString(v81);
  *v80 = 136315138;
  *(v80 + 4) = v82;
LABEL_84:
  __SC_log_send();
LABEL_85:
  SCPreferencesUnlock(v4);
  CFRelease(Default);
LABEL_86:
  CFRelease(v4);
}

char *sub_100034C70(unsigned int *a1, size_t a2)
{
  v3 = bswap32(a1[12]) + 56;
  if (v3 == a2)
  {
    v5 = bswap32(a1[13]);
    v6 = 0x100000 - a2;
    if (0x100000 - a2 >= v5)
    {
      v17 = v5 + a2;
      if (v5 + a2 <= 0x100000)
      {
        v15 = malloc_type_malloc(v5 + a2, 0xAC30884BuLL);
        memcpy(v15, a1, a2);
        bzero(&v15[a2], v5);
        return v15;
      }

      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        v19 = &v22 - ((__chkstk_darwin(v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = __error();
        v21 = _os_log_pack_fill(v19, v18, *v20, &_mh_execute_header, "DNS configuration: length error (%zu > %d)", v22, v23);
        *v21 = 134218240;
        *(v21 + 4) = v17;
        *(v21 + 12) = 1024;
        *(v21 + 14) = 0x100000;
        __SC_log_send();
      }
    }

    else
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v7 = _os_log_pack_size();
        v8 = &v22 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = __error();
        v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "DNS configuration: padding error (%u > %zu)", v22, v23);
        *v10 = 67109376;
        *(v10 + 4) = v5;
        *(v10 + 8) = 2048;
        *(v10 + 10) = v6;
LABEL_7:
        __SC_log_send();
      }
    }
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = &v22 - ((__chkstk_darwin(v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v11, *v13, &_mh_execute_header, "DNS configuration: size error (%zu != %zu)", v22, v23);
      *v14 = 134218240;
      *(v14 + 4) = v3;
      *(v14 + 12) = 2048;
      *(v14 + 14) = a2;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_100034F74(int *a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v3 = _os_log_pack_size();
    v4 = &v29 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = __error();
    v6 = _os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "%s", v29);
    *v6 = 136315138;
    *(v6 + 4) = "DNS configuration";
    result = __SC_log_send();
  }

  if (*a1 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 1) + 8 * v7++);
      result = sub_100035A68(a1[11], v8, v7);
    }

    while (v7 < *a1);
  }

  if (a1[3] >= 1 && *(a1 + 2))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      v10 = &v29 - ((__chkstk_darwin(v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v9, *v11, &_mh_execute_header, "%s", v29);
      *v12 = 136315138;
      *(v12 + 4) = "";
      __SC_log_send();
    }

    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v13 = _os_log_pack_size();
      v14 = &v29 - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "%s", v29);
      *v16 = 136315138;
      *(v16 + 4) = "DNS configuration (for scoped queries)";
      result = __SC_log_send();
    }

    if (a1[3] >= 1)
    {
      v17 = 0;
      do
      {
        v18 = *(*(a1 + 2) + 8 * v17++);
        result = sub_100035A68(a1[11], v18, v17);
      }

      while (v17 < a1[3]);
    }
  }

  if (a1[8] >= 1 && *(a1 + 9))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      v20 = &v29 - ((__chkstk_darwin(v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "%s", v29);
      *v22 = 136315138;
      *(v22 + 4) = "";
      __SC_log_send();
    }

    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v23 = _os_log_pack_size();
      v24 = &v29 - ((__chkstk_darwin(v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      v26 = _os_log_pack_fill(v24, v23, *v25, &_mh_execute_header, "%s", v29);
      *v26 = 136315138;
      *(v26 + 4) = "DNS configuration (for service-specific queries)";
      result = __SC_log_send();
    }

    if (a1[8] >= 1)
    {
      v27 = 0;
      do
      {
        v28 = *(*(a1 + 9) + 8 * v27++);
        result = sub_100035A68(a1[11], v28, v27);
      }

      while (v27 < a1[8]);
    }
  }

  return result;
}

void sub_100035420(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_1000354DC;
  v2[3] = &unk_10007A5D0;
  v2[4] = a1;
  v2[5] = a2;
  v3 = dispatch_queue_create("dns_configuration_monitor", 0);
  dispatch_async(v3, v2);
}

void sub_1000354DC(void *a1)
{
  sub_100035550(a1[4], a1[5]);
  v2 = a1[6];

  dispatch_release(v2);
}

uint64_t sub_100035550(NSObject *a1, void *a2)
{
  memset(&v12, 0, sizeof(v12));
  __strlcpy_chk();
  if (realpath_DARWIN_EXTSN(v14, v13))
  {
    goto LABEL_2;
  }

  v7 = strrchr(v14, 47);
  if (v7)
  {
    *v7 = 0;
    if (realpath_DARWIN_EXTSN(v14, v13))
    {
      __strlcat_chk();
      __strlcat_chk();
LABEL_2:
      v12.info = a2;
      v14[0] = CFStringCreateWithCString(0, v13, 0x8000100u);
      v4 = CFArrayCreate(0, v14, 1, &kCFTypeArrayCallBacks);
      CFRelease(v14[0]);
      v5 = FSEventStreamCreate(0, sub_100036AA8, &v12, v4, 0xFFFFFFFFFFFFFFFFLL, 0.0, 0x15u);
      CFRelease(v4);
      FSEventStreamSetDispatchQueue(v5, a1);
      return FSEventStreamStart(v5);
    }
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v8 = _os_log_pack_size();
    v9 = &v12 - ((__chkstk_darwin(v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = __error();
    v11 = _os_log_pack_fill(v9, v8, *v10, &_mh_execute_header, "Not monitoring %s, could not resolve directory path", v12.version);
    *v11 = 136315138;
    *(v11 + 4) = "/Library/Preferences/SystemConfiguration/resolver";
    return __SC_log_send();
  }

  return result;
}

CFTypeID sub_100035790(__CFBundle *a1)
{
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  result = CFDictionaryGetTypeID();
  if (InfoDictionary)
  {
    v3 = result;
    result = CFGetTypeID(InfoDictionary);
    if (result == v3)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"mdns_timeout");
      qword_1000818E8 = Value;
      TypeID = CFNumberGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
        {
          v6 = Value;
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

      qword_1000818E8 = v6;
      v7 = CFDictionaryGetValue(InfoDictionary, @"pdns_timeout");
      qword_1000818F0 = v7;
      result = CFNumberGetTypeID();
      if (v7)
      {
        v8 = result;
        result = CFGetTypeID(v7);
        if (result == v8)
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

      qword_1000818F0 = v9;
    }
  }

  return result;
}

uint64_t sub_100035894(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = 200000;
  v15 = 200000;
  valuePtr = 200000;
  v5 = CFDictionaryGetValue(a1, kSCPropNetDNSSearchOrder);
  value = v5;
  TypeID = CFNumberGetTypeID();
  if (!v5 || CFGetTypeID(v5) != TypeID || !CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr))
  {
    valuePtr = 200000;
  }

  v7 = CFDictionaryGetValue(a2, kSCPropNetDNSSearchOrder);
  number = v7;
  v8 = CFNumberGetTypeID();
  if (v7 && CFGetTypeID(v7) == v8 && CFNumberGetValue(v7, kCFNumberSInt32Type, &v15))
  {
    v4 = v15;
  }

  else
  {
    v15 = 200000;
  }

  v9 = valuePtr >= v4;
  if (valuePtr == v4)
  {
    if (!CFDictionaryGetValueIfPresent(a1, @"__ORDER__", &value))
    {
      return 0;
    }

    if (!CFDictionaryGetValueIfPresent(a2, @"__ORDER__", &number))
    {
      return 0;
    }

    v10 = value;
    v11 = CFNumberGetTypeID();
    if (!v10)
    {
      return 0;
    }

    if (CFGetTypeID(v10) != v11)
    {
      return 0;
    }

    v12 = number;
    v13 = CFNumberGetTypeID();
    if (!v12)
    {
      return 0;
    }

    if (CFGetTypeID(v12) != v13)
    {
      return 0;
    }

    if (!CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
    {
      return 0;
    }

    if (!CFNumberGetValue(number, kCFNumberSInt32Type, &v15))
    {
      return 0;
    }

    v9 = valuePtr >= v15;
    if (valuePtr == v15)
    {
      return 0;
    }
  }

  if (v9)
  {
    return 1;
  }

  return -1;
}

uint64_t sub_100035A68(int a1, uint64_t *a2, int a3)
{
  HIDWORD(v95) = a1;
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    v6 = &v94 - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    v8 = _os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "%s", v94);
    *v8 = 136315138;
    *(v8 + 4) = "";
    __SC_log_send();
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    v11 = &v94 - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "resolver #%d", v94);
    *v13 = 67109120;
    v13[1] = a3;
    __SC_log_send();
  }

  if (*a2)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      v15 = &v94 - ((__chkstk_darwin(v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v14, *v16, &_mh_execute_header, "  domain   : %s", v94);
      v18 = *a2;
      *v17 = 136315138;
      *(v17 + 4) = v18;
      __SC_log_send();
    }
  }

  if (*(a2 + 6) >= 1)
  {
    v19 = 0;
    *&v9 = 67109378;
    v96 = v9;
    do
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v20 = _os_log_pack_size();
        v21 = &v94 - ((__chkstk_darwin(v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = __error();
        v23 = _os_log_pack_fill(v21, v20, *v22, &_mh_execute_header, "  search domain[%d] : %s", v94, v95);
        v24 = *(*(a2 + 28) + 8 * v19);
        *v23 = v96;
        *(v23 + 4) = v19;
        *(v23 + 8) = 2080;
        *(v23 + 10) = v24;
        __SC_log_send();
      }

      ++v19;
    }

    while (v19 < *(a2 + 6));
  }

  if (*(a2 + 2) >= 1)
  {
    v25 = 0;
    *&v9 = 67109378;
    v96 = v9;
    do
    {
      _SC_sockaddr_to_string();
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v26 = _os_log_pack_size();
        v27 = &v94 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = __error();
        v29 = _os_log_pack_fill(v27, v26, *v28, &_mh_execute_header, "  nameserver[%d] : %s", v94, v95);
        *v29 = v96;
        *(v29 + 4) = v25;
        *(v29 + 8) = 2080;
        *(v29 + 10) = __str;
        __SC_log_send();
      }

      ++v25;
    }

    while (v25 < *(a2 + 2));
  }

  if (*(a2 + 9) >= 1)
  {
    v30 = 0;
    *&v9 = 67109634;
    v96 = v9;
    do
    {
      inet_ntop(2, *(a2[5] + 8 * v30), __str, 0x20u);
      inet_ntop(2, (*(a2[5] + 8 * v30) + 4), v97, 0x20u);
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v31 = _os_log_pack_size();
        v32 = &v94 - ((__chkstk_darwin(v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = __error();
        v34 = _os_log_pack_fill(v32, v31, *v33, &_mh_execute_header, "  sortaddr[%d] : %s/%s", v94, v95, v96);
        *v34 = v96;
        *(v34 + 4) = v30;
        *(v34 + 8) = 2080;
        *(v34 + 10) = __str;
        *(v34 + 18) = 2080;
        *(v34 + 20) = v97;
        __SC_log_send();
      }

      ++v30;
    }

    while (v30 < *(a2 + 9));
  }

  if (a2[6])
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v35 = _os_log_pack_size();
      v36 = &v94 - ((__chkstk_darwin(v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      v38 = _os_log_pack_fill(v36, v35, *v37, &_mh_execute_header, "  options  : %s", v94);
      v39 = a2[6];
      *v38 = 136315138;
      *(v38 + 4) = v39;
      __SC_log_send();
    }
  }

  if (*(a2 + 10))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v40 = _os_log_pack_size();
      v41 = &v94 - ((__chkstk_darwin(v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = __error();
      v43 = _os_log_pack_fill(v41, v40, *v42, &_mh_execute_header, "  port     : %hu", v94);
      v44 = *(a2 + 10);
      *v43 = 67109120;
      v43[1] = v44;
      __SC_log_send();
    }
  }

  if (*(a2 + 14))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v45 = _os_log_pack_size();
      v46 = &v94 - ((__chkstk_darwin(v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = __error();
      v48 = _os_log_pack_fill(v46, v45, *v47, &_mh_execute_header, "  timeout  : %u", v94);
      v49 = *(a2 + 14);
      *v48 = 67109120;
      v48[1] = v49;
      __SC_log_send();
    }
  }

  v50 = *(a2 + 16);
  if (v50)
  {
    if (HIDWORD(v95) < 0x133C785 || (v51 = a2[11]) == 0)
    {
      v51 = if_indextoname(v50, __str);
    }

    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v52 = _os_log_pack_size();
      v53 = &v94 - ((__chkstk_darwin(v52) + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = __error();
      v55 = _os_log_pack_fill(v53, v52, *v54, &_mh_execute_header, "  if_index : %u (%s)", v94, v95);
      v56 = *(a2 + 16);
      v57 = "?";
      if (v51)
      {
        v57 = v51;
      }

      *v55 = 67109378;
      *(v55 + 4) = v56;
      *(v55 + 8) = 2080;
      *(v55 + 10) = v57;
      __SC_log_send();
    }
  }

  if (*(a2 + 19))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v58 = _os_log_pack_size();
      v59 = &v94 - ((__chkstk_darwin(v58) + 15) & 0xFFFFFFFFFFFFFFF0);
      v60 = __error();
      v61 = _os_log_pack_fill(v59, v58, *v60, &_mh_execute_header, "  service_identifier : %u", v94);
      v62 = *(a2 + 19);
      *v61 = 67109120;
      v61[1] = v62;
      __SC_log_send();
    }
  }

  v63 = *(a2 + 17);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"  flags    : ");
  CFStringAppendFormat(Mutable, 0, @"0x%08x", v63);
  if (v63)
  {
    CFStringAppendFormat(Mutable, 0, @" (");
    if ((v63 & 0x1000) != 0)
    {
      v63 = v63 & 0xFFFFEFFF;
      v89 = "";
      if (v63)
      {
        v89 = ", ";
      }

      CFStringAppendFormat(Mutable, 0, @"Scoped%s", v89);
      if ((v63 & 0x2000) == 0)
      {
LABEL_46:
        if ((v63 & 0x4000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_105;
      }
    }

    else if ((v63 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    v63 = v63 & 0xFFFFDFFF;
    v90 = "";
    if (v63)
    {
      v90 = ", ";
    }

    CFStringAppendFormat(Mutable, 0, @"Service-specific%s", v90);
    if ((v63 & 0x4000) == 0)
    {
LABEL_47:
      if ((v63 & 2) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_108;
    }

LABEL_105:
    v63 = v63 & 0xFFFFBFFF;
    v91 = "";
    if (v63)
    {
      v91 = ", ";
    }

    CFStringAppendFormat(Mutable, 0, @"Supplemental%s", v91);
    if ((v63 & 2) == 0)
    {
LABEL_48:
      if ((v63 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_111;
    }

LABEL_108:
    v63 = v63 & 0xFFFFFFFD;
    v92 = "";
    if (v63)
    {
      v92 = ", ";
    }

    CFStringAppendFormat(Mutable, 0, @"Request A records%s", v92);
    if ((v63 & 4) == 0)
    {
LABEL_49:
      if (!v63)
      {
LABEL_51:
        CFStringAppend(Mutable, @""));
        goto LABEL_52;
      }

LABEL_50:
      CFStringAppendFormat(Mutable, 0, @"0x%08x", v63);
      goto LABEL_51;
    }

LABEL_111:
    v63 = v63 & 0xFFFFFFFB;
    v93 = "";
    if (v63)
    {
      v93 = ", ";
    }

    CFStringAppendFormat(Mutable, 0, @"Request AAAA records%s", v93);
    if (!v63)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_52:
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v65 = _os_log_pack_size();
    v66 = &v94 - ((__chkstk_darwin(v65) + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = __error();
    v68 = _os_log_pack_fill(v66, v65, *v67, &_mh_execute_header, "%@");
    *v68 = 138412290;
    *(v68 + 4) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
  v69 = *(a2 + 18);
  v70 = snprintf(__str, 0x64uLL, "0x%08x (", v69);
  if (v69 || v70 > 0x53)
  {
    v72 = v70;
    v71 = v70;
    v73 = v69;
    if ((v69 & 2) != 0)
    {
      v71 = v70;
      v73 = v69;
      if (v70 <= 0x57)
      {
        v71 = __strlcat_chk();
        v73 = v69 & 0xFFFFFFFD;
      }
    }

    if ((v73 & 1) != 0 && v71 <= 0x4C)
    {
      v71 = __strlcat_chk();
      v73 &= ~1u;
    }

    if ((v73 & 4) != 0 && v71 <= 0x4D)
    {
      v71 = __strlcat_chk();
      v73 &= ~4u;
    }

    if ((v73 & 8) != 0 && v71 <= 0x41)
    {
      v71 = __strlcat_chk();
      v73 &= ~8u;
    }

    if ((v73 & 0x20) != 0 && v71 <= 0x42)
    {
      v71 = __strlcat_chk();
      v73 &= ~0x20u;
    }

    if ((v73 & 0x10) != 0 && v71 <= 0x4B)
    {
      v71 = __strlcat_chk();
      v73 &= ~0x10u;
    }

    if ((v73 & 0x10000) != 0 && v71 <= 0x53)
    {
      v71 = __strlcat_chk();
      v73 &= ~0x10000u;
    }

    if ((v73 & 0x20000) != 0 && v71 <= 0x46)
    {
      v71 = __strlcat_chk();
      v73 &= ~0x20000u;
    }

    if ((v73 & 0x40000) != 0 && v71 <= 0x5C)
    {
      v71 = __strlcat_chk();
      v73 &= ~0x40000u;
    }

    if (v73)
    {
      if (v71 >= 0x57)
      {
        __str[v72] = 0;
        v71 = v72;
        v73 = v69;
      }

      v71 += snprintf(&__str[v71], 99 - v71, "0x%08x,", v73);
    }
  }

  else
  {
    v71 = __strlcat_chk();
  }

  if (v71)
  {
    __str[v71 - 1] = 41;
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v75 = _os_log_pack_size();
    v76 = &v94 - ((__chkstk_darwin(v75) + 15) & 0xFFFFFFFFFFFFFFF0);
    v77 = __error();
    v78 = _os_log_pack_fill(v76, v75, *v77, &_mh_execute_header, "  reach    : %s", v94);
    *v78 = 136315138;
    *(v78 + 4) = __str;
    result = __SC_log_send();
  }

  if (*(a2 + 15))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v79 = _os_log_pack_size();
      v80 = &v94 - ((__chkstk_darwin(v79) + 15) & 0xFFFFFFFFFFFFFFF0);
      v81 = __error();
      v82 = _os_log_pack_fill(v80, v79, *v81, &_mh_execute_header, "  order    : %u", v94);
      v83 = *(a2 + 15);
      *v82 = 67109120;
      v82[1] = v83;
      result = __SC_log_send();
    }
  }

  if (a2[10])
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v84 = _os_log_pack_size();
      v85 = &v94 - ((__chkstk_darwin(v84) + 15) & 0xFFFFFFFFFFFFFFF0);
      v86 = __error();
      v87 = _os_log_pack_fill(v85, v84, *v86, &_mh_execute_header, "  config id: %s", v94);
      v88 = a2[10];
      *v87 = 136315138;
      *(v87 + 4) = v88;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_100036AA8(uint64_t a1, uint64_t (*a2)(void))
{
  memset(&v7, 0, sizeof(v7));
  result = stat("/Library/Preferences/SystemConfiguration/resolver", &v7);
  if (byte_1000818F8 || !result)
  {
    byte_1000818F8 = result == 0;
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      v5 = &v7 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      *_os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "/Library/Preferences/SystemConfiguration/resolver changed") = 0;
      __SC_log_send();
    }

    return a2();
  }

  return result;
}

void sub_100036BF4(unsigned int **a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a2[1];
  if (v4 == 2)
  {
    v7 = 16777343;
    v8 = 4;
    goto LABEL_8;
  }

  if (v4 == 30 && !*(a2 + 2) && !*(a2 + 3) && !*(a2 + 4))
  {
    v7 = 0x1000000;
    v8 = 20;
LABEL_8:
    v9 = *&a2[v8];
    v6 = v9 != v7;
    if (v9 == v7)
    {
      v5 = 100663296;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_11;
  }

  v5 = 0;
  v6 = 1;
LABEL_11:
  v10 = v3[17];
  v3[2] = bswap32(bswap32(v3[2]) + 1);
  sub_10001C5F8(a1, 0xBu, *a2, a2);
  if (!v6)
  {
    (*a1)[17] = v5 | v10;
  }
}

void sub_100036CF4(unsigned int **a1, char *__s)
{
  (*a1)[6] = bswap32(bswap32((*a1)[6]) + 1);
  v4 = strlen(__s) + 1;

  sub_10001C5F8(a1, 0xCu, v4, __s);
}

void sub_100036D8C(unsigned int **a1, const void *a2)
{
  (*a1)[9] = bswap32(bswap32((*a1)[9]) + 1);

  sub_10001C5F8(a1, 0xDu, 8u, a2);
}

void sub_100036E08(unsigned int **a1, unsigned int a2, char *__s)
{
  (*a1)[16] = bswap32(a2);
  if (__s)
  {
    v5 = strlen(__s);

    sub_10001C5F8(a1, 0x10u, v5, __s);
  }
}

FILE *sub_100036F68(char *a1)
{
  v58 = 0;
  v59 = 0;
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v62[0] = 0;
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  result = fopen(v62, "r");
  if (result)
  {
    v3 = result;
    v4 = fgetln(result, &v59);
    if (v4)
    {
      v6 = v4;
      v54 = a1;
      v7 = 0;
      v8 = 0;
      v9 = &dword_10007A5FC;
      *&v5 = 136315394;
      v55 = v5;
      while (1)
      {
        v57 = 0;
        v10 = v59;
        if (v59)
        {
          if (v6[v59 - 1] == 10)
          {
            v6[v59 - 1] = 0;
            v10 = v59;
          }

          v11 = reallocf(v8, v10 + 1);
          v8 = v11;
          if (v11)
          {
            strlcpy(v11, v6, v59 + 1);
            v57 = v8;
            v12 = strsep(&v57, " \t");
            if (v12)
            {
              v13 = v12;
              v14 = *v12;
              if (v14 != 35 && v14 != 59)
              {
                v15 = v9;
                v16 = 10;
                while (strcasecmp(v13, *(v15 - 3)))
                {
                  v15 += 4;
                  if (!--v16)
                  {
                    goto LABEL_33;
                  }
                }

                v17 = *(v15 - 1);
                if (v17 == -1)
                {
LABEL_33:
                  sub_1000035EC();
                  _SC_syslog_os_log_mapping();
                  if (__SC_log_enabled())
                  {
                    v24 = v9;
                    v25 = v7;
                    v26 = _os_log_pack_size();
                    v56 = &v53;
                    v27 = &v53 - ((__chkstk_darwin(v26) + 15) & 0xFFFFFFFFFFFFFFF0);
                    v28 = __error();
                    v29 = v26;
                    v7 = v25;
                    v9 = v24;
                    v30 = _os_log_pack_fill(v27, v29, *v28, &_mh_execute_header, "Unrecognized token (%s) found in: %s", v53, v54);
                    *v30 = v55;
                    *(v30 + 4) = v13;
                    *(v30 + 12) = 2080;
                    *(v30 + 14) = v62;
                    __SC_log_send();
                  }

                  goto LABEL_35;
                }

                v18 = *v15;
                v19 = strsep(&v57, " \t");
                if (!v19)
                {
                  goto LABEL_35;
                }

                v20 = *(v60 + v17);
                *(v60 + v17) = v20 + 1;
                if (v20 >= v18)
                {
                  goto LABEL_35;
                }

                v21 = v19;
                if (!v58)
                {
                  v58 = sub_10001C4BC();
                  if (!v58)
                  {
                    goto LABEL_111;
                  }
                }

                if (v17 > 4)
                {
                  if (v17 <= 6)
                  {
                    if (v17 == 5)
                    {
                      v43 = strtol(v21, 0, 0);
                      if (!(v43 >> 16))
                      {
                        sub_100036EC0(&v58, v43);
                      }
                    }

                    else
                    {
                      v40 = 0;
                      do
                      {
                        if (v40 == 6)
                        {
                          break;
                        }

                        v41 = strlen(v21);
                        if (v41)
                        {
                          while (v21[v41 - 1] == 46)
                          {
                            v21[--v41] = 0;
                            if (!v41)
                            {
                              goto LABEL_80;
                            }
                          }

                          sub_100036CF4(&v58, v21);
                        }

LABEL_80:
                        ++v40;
                        v21 = strsep(&v57, " \t");
                      }

                      while (v21);
                    }
                  }

                  else
                  {
                    switch(v17)
                    {
                      case 7:
                        v45 = strtol(v21, 0, 0);
                        if (!HIDWORD(v45))
                        {
                          sub_10001CCF0(&v58, v45);
                        }

                        break;
                      case 9:
                        v47 = strtol(v21, 0, 0);
                        if (!HIDWORD(v47))
                        {
                          sub_10001CD44(&v58, v47);
                        }

                        break;
                      case 8:
                        v31 = 11;
                        while (--v31)
                        {
                          v32 = strchr(v21, 47);
                          v33 = v32;
                          if (v32)
                          {
                            *v32 = 0;
                          }

                          v34 = sub_100037784(v21);
                          if (!v34)
                          {
                            break;
                          }

                          if (*(v34 + 1) != 2)
                          {
                            goto LABEL_95;
                          }

                          v35 = *(v34 + 1);
                          free(v34);
                          if (v33)
                          {
                            v34 = sub_100037784(v33 + 1);
                            if (!v34)
                            {
                              goto LABEL_35;
                            }

                            if (*(v34 + 1) != 2)
                            {
                              goto LABEL_95;
                            }

                            v36 = *(v34 + 1);
                            free(v34);
                          }

                          else
                          {
                            v37 = bswap32(v35);
                            if ((v37 & 0x80000000) != 0)
                            {
                              if (v37 >> 30 == 2)
                              {
                                v38 = -65536;
                              }

                              else
                              {
                                if (v37 >> 29 != 6)
                                {
                                  goto LABEL_35;
                                }

                                v38 = -256;
                              }
                            }

                            else
                            {
                              v38 = -16777216;
                            }

                            v36 = bswap32(v38);
                          }

                          v39 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
                          *v39 = v35;
                          v39[1] = v36;
                          sub_100036D8C(&v58, v39);
                          free(v39);
                          v21 = strsep(&v57, " \t");
                          if (!v21)
                          {
                            goto LABEL_35;
                          }
                        }

                        break;
                    }
                  }

                  goto LABEL_35;
                }

                if (v17 <= 1)
                {
                  if (v17)
                  {
                    if (v17 == 1)
                    {
                      do
                      {
                        if (*v21)
                        {
                          if (!strcasecmp(v21, "scoped"))
                          {
                            v7 = v7 | 0x1000;
                          }

                          else if (!strcasecmp(v21, "a"))
                          {
                            v7 = v7 | 2;
                          }

                          else if (!strcasecmp(v21, "aaaa"))
                          {
                            v7 = v7 | 4;
                          }

                          else
                          {
                            v7 = v7;
                          }
                        }

                        v21 = strsep(&v57, " \t");
                      }

                      while (v21);
                    }
                  }

                  else
                  {
                    v42 = strlen(v21);
                    if (v42)
                    {
                      while (v21[v42 - 1] == 46)
                      {
                        v21[--v42] = 0;
                        if (!v42)
                        {
                          goto LABEL_35;
                        }
                      }

                      sub_10001CC70(&v58, v21);
                    }
                  }
                }

                else if (v17 == 2)
                {
                  v44 = if_nametoindex(v21);
                  if (v44)
                  {
                    sub_100036E08(&v58, v44, v21);
                  }
                }

                else
                {
                  if (v17 == 3)
                  {
                    v46 = sub_1000376B4(v21);
                    if (!v46)
                    {
                      goto LABEL_35;
                    }

                    v22 = v46;
                    sub_100036BF4(&v58, v46);
                    goto LABEL_94;
                  }

                  v22 = 0;
                  do
                  {
                    if (*v21)
                    {
                      if (v22)
                      {
                        strlcat(v22, " ", v59 + 1);
                        strlcat(v22, v21, v59 + 1);
                      }

                      else
                      {
                        v23 = malloc_type_malloc(v59 + 1, 0x925756BFuLL);
                        if (!v23)
                        {
                          goto LABEL_35;
                        }

                        v22 = v23;
                        strlcpy(v23, v21, v59 + 1);
                      }
                    }

                    v21 = strsep(&v57, " \t");
                  }

                  while (v21);
                  if (v22)
                  {
                    sub_10001CD98(&v58, v22);
LABEL_94:
                    v34 = v22;
LABEL_95:
                    free(v34);
                  }
                }
              }
            }
          }
        }

LABEL_35:
        v6 = fgetln(v3, &v59);
        if (!v6)
        {
          v48 = LODWORD(v60[0]) == 0;
          a1 = v54;
          goto LABEL_100;
        }
      }
    }

    v8 = 0;
    LODWORD(v7) = 0;
    v48 = 1;
LABEL_100:
    v49 = v58;
    if (v58 && v48)
    {
      v50 = strrchr(a1, 47);
      if (v50)
      {
        v51 = v50 + 1;
      }

      else
      {
        v51 = a1;
      }

      sub_10001CC70(&v58, v51);
      v49 = v58;
    }

    if (v49)
    {
      if (v7)
      {
        v52 = v7;
      }

      else
      {
        v52 = bswap32(v49[17]) | dword_1000818FC;
      }

      sub_10001C524(&v58, v52);
    }

LABEL_111:
    if (v8)
    {
      free(v8);
    }

    fclose(v3);
    return v58;
  }

  return result;
}

char *sub_1000376B4(char *a1)
{
  result = sub_100037784(a1);
  if (!result)
  {
    result = strrchr(a1, 46);
    if (result)
    {
      v3 = result;
      v4 = strtol(result + 1, 0, 10);
      if (v4 >> 16)
      {
        return 0;
      }

      else
      {
        v5 = v4;
        *v3 = 0;
        result = sub_100037784(a1);
        if (result)
        {
          v6 = result[1];
          if (v6 == 30 || v6 == 2)
          {
            *(result + 1) = bswap32(v5) >> 16;
          }
        }
      }
    }
  }

  return result;
}

void *sub_100037784(const char *a1)
{
  v7 = 0;
  memset(&v6, 0, sizeof(v6));
  v6.ai_flags = 4;
  v1 = 0;
  if (!getaddrinfo(a1, 0, &v6, &v7))
  {
    v2 = v7;
    ai_family = v7->ai_family;
    if (ai_family == 30 || ai_family == 2)
    {
      v1 = malloc_type_malloc(v7->ai_addrlen, 0x66E24583uLL);
      memcpy(v1, v7->ai_addr, v7->ai_addrlen);
      v2 = v7;
    }

    else
    {
      v1 = 0;
    }

    freeaddrinfo(v2);
  }

  return v1;
}

uint64_t sub_100037850(uint64_t a1, const void *a2)
{
  sub_1000575FC(&qword_100081900);
  sub_100037A20();
  qword_100081920 = _Block_copy(a2);
  v3 = "com.apple.SystemConfiguration.DNSConfiguration";
  v4 = getenv("com.apple.SystemConfiguration.DNSConfiguration");
  if (v4)
  {
    v3 = v4;
  }

  if (qword_100081928 != -1)
  {
    sub_100067BF0();
  }

  mach_service = xpc_connection_create_mach_service(v3, qword_100081930, 1uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100002F1C;
  handler[3] = &unk_10007A690;
  handler[4] = mach_service;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(mach_service);
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    v8 = handler - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "XPC server %s started", handler[0]);
    *v10 = 136315138;
    *(v10 + 4) = v3;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_100037A20()
{
  if (qword_100081928 != -1)
  {
    sub_100067BF0();
  }

  result = os_state_add_handler();
  if (!result)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      v2 = &v4 - ((__chkstk_darwin(v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = __error();
      *_os_log_pack_fill(v2, v1, *v3, &_mh_execute_header, "DNS configuration: os_state_add_handler() failed") = 0;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_100037B50(CFDataRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 + 3);
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      v4 = &block[-1] - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      v5 = __error();
      v6 = _os_log_pack_fill(v4, v3, *v5, &_mh_execute_header, "DNS configuration updated: %llu", v15);
      *v6 = 134217984;
      *(v6 + 4) = v2;
      __SC_log_send();
    }

    v1 = CFDataCreate(0, v1, bswap32(*(v1 + 12)) + 56);
  }

  else
  {
    v2 = 0;
  }

  if (qword_100081928 != -1)
  {
    sub_100067C58();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100037DFC;
  block[3] = &unk_10007A6B0;
  block[4] = v1;
  block[5] = v2;
  dispatch_sync(qword_100081930, block);
  if (v1)
  {
    CFRelease(v1);
  }

  sub_100057714(&qword_100081900);
  if (qword_100081920)
  {
    (*(qword_100081920 + 16))();
  }

  v7 = dns_configuration_notify_key();
  if (v7)
  {
    v8 = notify_post(v7);
    if (v8)
    {
      v9 = v8;
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        v11 = &block[-1] - ((__chkstk_darwin(v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = __error();
        v13 = _os_log_pack_fill(v11, v10, *v12, &_mh_execute_header, "notify_post() failed: %u", v15);
        *v13 = 67109120;
        v13[1] = v9;
        __SC_log_send();
      }
    }
  }

  return 1;
}

void sub_100037DFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  sub_100057678(&qword_100081900, v1, v2);
}

os_state_data_s *__cdecl sub_100037E60(id a1, os_state_hints_s *a2)
{
  if (qword_100081900)
  {
    Length = CFDataGetLength(qword_100081900);
    v3 = Length + 200;
    if ((Length + 200) > 0x8000)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = _os_log_pack_size();
        v5 = __error();
        v6 = _os_log_pack_fill(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4, *v5, &_mh_execute_header, "DNS configuration: state data too large (%zu > %zu)", v14[0], v14[1]);
        *v6 = 134218240;
        *(v6 + 4) = v3;
        *(v6 + 12) = 2048;
        *(v6 + 14) = 0x8000;
        __SC_log_send();
      }

      return 0;
    }

    v7 = Length;
  }

  else
  {
    v7 = 0;
    v3 = 200;
  }

  v8 = malloc_type_calloc(1uLL, v3, 0x9D6E6BCEuLL);
  if (!v8)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      v12 = __error();
      *_os_log_pack_fill(v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, *v12, &_mh_execute_header, "DNS configuration: could not allocate state data") = 0;
      __SC_log_send();
    }

    return 0;
  }

  v9 = v8;
  v8->var0 = 3;
  v8->var1.var1 = v7;
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  if (v7 >= 1)
  {
    BytePtr = CFDataGetBytePtr(qword_100081900);
    memcpy(v9->var4, BytePtr, v7);
  }

  return v9;
}

uint64_t sub_100038118(_xpc_connection_s *a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "generation");
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    v5 = &v10 - ((__chkstk_darwin(v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = __error();
    v7 = _os_log_pack_fill(v5, v4, *v6, &_mh_execute_header, "<%p:%d> DNS configuration ack: %llu", v10, v11, v12);
    pid = xpc_connection_get_pid(a1);
    *v7 = 134218496;
    *(v7 + 4) = a1;
    *(v7 + 12) = 1024;
    *(v7 + 14) = pid;
    *(v7 + 18) = 2048;
    *(v7 + 20) = uint64;
    __SC_log_send();
  }

  sub_100057768(&qword_100081900, a1, uint64);
  sub_100057714(&qword_100081900);
  result = qword_100081920;
  if (qword_100081920)
  {
    return (*(qword_100081920 + 16))();
  }

  return result;
}

uint64_t sub_100038A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_100038B5C;
  v10[3] = &unk_10007A7A0;
  v11 = a1;
  v10[4] = &v12;
  v10[5] = a2;
  if (qword_100081950 != -1)
  {
    sub_100067CB4();
  }

  dispatch_sync(qword_100081958, v10);
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

char *sub_100038B5C(char *result)
{
  v1 = result;
  if (qword_100081940)
  {
    v2 = *qword_100081940;
    if (*qword_100081940)
    {
      for (i = qword_100081940 + 8; *i; i += 16)
      {
        if (v2 == *(result + 12))
        {
          v4 = *(result + 5);
          *(*(*(v1 + 4) + 8) + 24) = v4;
          v5 = *i;

          return strlcpy(v4, v5, 0x10uLL);
        }

        v2 = *(i + 8);
        if (!v2)
        {
          return result;
        }
      }
    }
  }

  else
  {
    result = if_indextoname(*(result + 12), *(result + 5));
    *(*(*(v1 + 4) + 8) + 24) = result;
  }

  return result;
}

char *sub_100038C50(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a2;
  v9 = a1;
  if (!sub_100038A68(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    snprintf(v8, 0x10uLL, "[%u]", v9);
  }

  return v8;
}

uint64_t sub_100038CD8()
{
  result = dword_100081948;
  if (!dword_100081948)
  {
    result = sub_100013354("lo0");
    dword_100081948 = result;
  }

  return result;
}

uint64_t sub_100038D44(int a1, __int16 a2, _OWORD *a3, char a4)
{
  memset(v5, 0, sizeof(v5));
  v6 = 0u;
  LOWORD(v5[0]) = 7708;
  *(v5 + 8) = *a3;
  BYTE12(v5[1]) = a4;
  WORD4(v6) = a2;
  return ioctl(a1, 0xC0307586uLL, v5);
}

uint64_t sub_100038DC4(int a1, __int16 a2, _OWORD *a3)
{
  memset(v4, 0, sizeof(v4));
  v5 = 0u;
  LOWORD(v4[0]) = 7708;
  *(v4 + 8) = *a3;
  WORD4(v5) = a2;
  return ioctl(a1, 0xC0307587uLL, v4);
}

uint64_t sub_100038E40(int a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  __strlcpy_chk();
  LOBYTE(v11) = a3;
  if (a5)
  {
    if (a5 >= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = a5;
    }

    BYTE1(v11) = v8;
    __memcpy_chk();
  }

  return ioctl(a1, 0xC02869AEuLL, &v10);
}

uint64_t sub_100038FCC(uint64_t a1, void *a2)
{
  result = sub_100039190(a1, a2);
  if (result)
  {
    v3 = dispatch_queue_create("IPMonitorControlServer", 0);
    mach_service = xpc_connection_create_mach_service("com.apple.SystemConfiguration.IPMonitorControl", v3, 1uLL);
    if (mach_service)
    {
      v5 = mach_service;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100039534;
      handler[3] = &unk_10007A8A8;
      handler[4] = mach_service;
      qword_100081988 = v3;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_resume(v5);
      qword_100081960 = v5;
      os_state_add_handler();
      return 1;
    }

    else
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        v7 = handler - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = __error();
        *_os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "IPMonitorControlServer: failed to create server") = 0;
        __SC_log_send();
      }

      dispatch_release(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100039190(uint64_t a1, void *aBlock)
{
  if (qword_100081968)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v3 = _os_log_pack_size();
    v4 = &v10 - ((__chkstk_darwin(v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = *__error();
    v6 = _os_log_pack_fill(v4, v3, v5, &_mh_execute_header, "%s: already called");
    goto LABEL_9;
  }

  if (a1 && aBlock)
  {
    qword_100081968 = a1;
    qword_100081970 = _Block_copy(aBlock);
    return 1;
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    v8 = &v10 - ((__chkstk_darwin(v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *__error();
    v6 = _os_log_pack_fill(v8, v7, v9, &_mh_execute_header, "%s: queue or handler are NULL");
LABEL_9:
    *v6 = 136315138;
    *(v6 + 4) = "SetNotificationInfo";
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_100039354(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100039458;
  block[3] = &unk_10007A888;
  block[4] = &v5;
  block[5] = &v9;
  dispatch_sync(qword_100081988, block);
  *a1 = v6[3];
  v2 = v10[3];
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void sub_100039458(uint64_t a1)
{
  v7 = 0;
  v2 = S_ControlSessions;
  if (S_ControlSessions)
  {
    do
    {
      v3 = v2[6];
      if (v3)
      {
        CFDictionaryApplyFunction(v3, sub_10003B6E0, &v7);
      }

      v4 = v2[5];
      if (v4)
      {
        CFDictionaryApplyFunction(v4, sub_10003B7C8, &v7);
      }

      v2 = *v2;
    }

    while (v2);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  v6 = qword_100081978;
  qword_100081978 = 0;
  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void sub_100039534(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100039838;
    handler[3] = &unk_10007A8C8;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    xpc_connection_set_target_queue(object, qword_100081988);
    xpc_connection_resume(object);
    return;
  }

  string = type;
  if (type != &_xpc_type_error)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v6 = _os_log_pack_size();
    v7 = handler - ((__chkstk_darwin(v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = __error();
    v9 = _os_log_pack_fill(v7, v6, *v8, &_mh_execute_header, "unknown event %p", handler[0]);
    v10 = 134217984;
LABEL_9:
    *v9 = v10;
    *(v9 + 4) = string;
    __SC_log_send();
    return;
  }

  string = xpc_dictionary_get_string(object, _xpc_error_key_description);
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  v11 = __SC_log_enabled();
  if (object != &_xpc_error_connection_invalid)
  {
    if (!v11)
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = handler - ((__chkstk_darwin(v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v9 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "%s", handler[0]);
    v10 = 136315138;
    goto LABEL_9;
  }

  if (v11)
  {
    v15 = _os_log_pack_size();
    v16 = handler - ((__chkstk_darwin(v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v15, *v17, &_mh_execute_header, "%s", handler[0]);
    *v18 = 136315138;
    *(v18 + 4) = string;
    __SC_log_send();
  }

  xpc_release(*(a1 + 32));
}

void sub_100039838(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);

  sub_100039894(v2, a2);
}

void sub_100039894(_xpc_connection_s *a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "Type");
    reply = xpc_dictionary_create_reply(object);
    v10 = 22;
    if (int64 <= 4)
    {
      if (int64 > 2)
      {
        if (int64 == 3)
        {
          v10 = sub_10003A374(a1, object);
          goto LABEL_94;
        }

        if (!reply)
        {
          return;
        }

        string = xpc_dictionary_get_string(object, "InterfaceName");
        if (string)
        {
          v23 = CFStringCreateWithCString(0, string, 0x8000100u);
          v24 = xpc_dictionary_get_int64(object, "Advisory");
          v25 = S_ControlSessions;
          if (S_ControlSessions)
          {
            v26 = v24;
            while (1)
            {
              v27 = v25[6];
              if (v27)
              {
                Value = CFDictionaryGetValue(v27, v23);
                if (Value)
                {
                  LODWORD(context) = 0;
                  if (!v26)
                  {
                    break;
                  }

                  CFNumberGetValue(Value, kCFNumberSInt32Type, &context);
                  if (context == v26)
                  {
                    break;
                  }
                }
              }

              v25 = *v25;
              if (!v25)
              {
                goto LABEL_43;
              }
            }

            v29 = 1;
          }

          else
          {
LABEL_43:
            v29 = 0;
          }

          xpc_dictionary_set_BOOL(reply, "AdvisoryIsSet", v29);
          CFRelease(v23);
          goto LABEL_93;
        }
      }

      else
      {
        if (int64 == 1)
        {
          v10 = sub_100039FEC(a1, object);
          goto LABEL_94;
        }

        if (int64 != 2)
        {
          goto LABEL_94;
        }

        if (!reply)
        {
          return;
        }

        v16 = xpc_connection_get_context(a1);
        if (!v16)
        {
          goto LABEL_88;
        }

        v17 = v16;
        v18 = xpc_dictionary_get_string(object, "InterfaceName");
        if (v18)
        {
          LODWORD(context) = 0;
          if (*(v17 + 5) && (v19 = CFStringCreateWithCString(0, v18, 0x8000100u), v20 = CFDictionaryGetValue(*(v17 + 5), v19), CFRelease(v19), v20))
          {
            CFNumberGetValue(v20, kCFNumberSInt32Type, &context);
            v21 = context;
          }

          else
          {
            v21 = 0;
          }

          xpc_dictionary_set_int64(reply, "PrimaryRank", v21);
          v10 = 0;
          goto LABEL_95;
        }
      }
    }

    else if (int64 <= 6)
    {
      if (int64 == 5)
      {
        if (!reply)
        {
          return;
        }

        v50 = &S_ControlSessions;
        do
        {
          v50 = *v50;
        }

        while (v50 && !v50[6]);
        xpc_dictionary_set_BOOL(reply, "AdvisoryIsSet", v50 != 0);
        goto LABEL_93;
      }

      if (!reply)
      {
        return;
      }

      v30 = xpc_dictionary_get_string(object, "InterfaceName");
      if (v30)
      {
        v31 = CFStringCreateWithCString(0, v30, 0x8000100u);
        v32 = S_ControlSessions;
        if (S_ControlSessions)
        {
          empty = 0;
          do
          {
            LODWORD(context) = 0;
            v34 = *(v32 + 40);
            if (v34)
            {
              v35 = CFDictionaryGetValue(v34, v31);
              if (v35)
              {
                CFNumberGetValue(v35, kCFNumberSInt32Type, &context);
                if (!empty)
                {
                  empty = xpc_array_create_empty();
                }

                v36 = *(v32 + 32);
                v37 = *(v32 + 24);
                v38 = context;
                v39 = xpc_dictionary_create_empty();
                xpc_dictionary_set_string(v39, "ProcessName", v36);
                xpc_dictionary_set_int64(v39, "ProcessID", v37);
                xpc_dictionary_set_int64(v39, "PrimaryRank", v38);
                xpc_array_append_value(empty, v39);
                xpc_release(v39);
              }
            }

            v32 = *v32;
          }

          while (v32);
          CFRelease(v31);
          if (!empty)
          {
            goto LABEL_86;
          }

          v40 = "RankAssertionInfo";
          goto LABEL_71;
        }

        goto LABEL_87;
      }
    }

    else
    {
      if (int64 != 7)
      {
        if (int64 == 8)
        {
          if (!reply)
          {
            return;
          }

          context = 0;
          v51 = S_ControlSessions;
          if (S_ControlSessions)
          {
            do
            {
              v52 = v51[5];
              if (v52)
              {
                CFDictionaryApplyFunction(v52, sub_10003ADB0, &context);
              }

              v51 = *v51;
            }

            while (v51);
LABEL_82:
            v53 = context;
            if (context)
            {
              xpc_dictionary_set_value(reply, "InterfaceNames", context);
              v49 = v53;
              goto LABEL_84;
            }

LABEL_86:
            v10 = 2;
            goto LABEL_94;
          }
        }

        else
        {
          if (int64 != 9)
          {
            goto LABEL_94;
          }

          if (!reply)
          {
            return;
          }

          context = 0;
          v11 = S_ControlSessions;
          if (S_ControlSessions)
          {
            do
            {
              v12 = v11[6];
              if (v12)
              {
                CFDictionaryApplyFunction(v12, sub_10003ADB0, &context);
              }

              v11 = *v11;
            }

            while (v11);
            goto LABEL_82;
          }
        }

        goto LABEL_88;
      }

      if (!reply)
      {
        return;
      }

      v41 = xpc_dictionary_get_string(object, "InterfaceName");
      if (v41)
      {
        v31 = CFStringCreateWithCString(0, v41, 0x8000100u);
        v42 = S_ControlSessions;
        if (S_ControlSessions)
        {
          empty = 0;
          do
          {
            LODWORD(context) = 0;
            v43 = *(v42 + 48);
            if (v43)
            {
              v44 = CFDictionaryGetValue(v43, v31);
              if (v44)
              {
                CFNumberGetValue(v44, kCFNumberSInt32Type, &context);
                if (!empty)
                {
                  empty = xpc_array_create_empty();
                }

                v45 = *(v42 + 32);
                v46 = *(v42 + 24);
                v47 = context;
                v48 = xpc_dictionary_create_empty();
                xpc_dictionary_set_string(v48, "ProcessName", v45);
                xpc_dictionary_set_int64(v48, "ProcessID", v46);
                xpc_dictionary_set_int64(v48, "Advisory", v47);
                xpc_array_append_value(empty, v48);
                xpc_release(v48);
              }
            }

            v42 = *v42;
          }

          while (v42);
          CFRelease(v31);
          if (!empty)
          {
            goto LABEL_86;
          }

          v40 = "AdvisoryInfo";
LABEL_71:
          xpc_dictionary_set_value(reply, v40, empty);
          v49 = empty;
LABEL_84:
          xpc_release(v49);
LABEL_93:
          v10 = 0;
LABEL_94:
          if (!reply)
          {
            return;
          }

          goto LABEL_95;
        }

LABEL_87:
        CFRelease(v31);
LABEL_88:
        v10 = 2;
        goto LABEL_95;
      }
    }

    v10 = 22;
LABEL_95:
    xpc_dictionary_set_int64(reply, "Error", v10);
    remote_connection = xpc_dictionary_get_remote_connection(object);
    xpc_connection_send_message(remote_connection, reply);
    xpc_release(reply);
    return;
  }

  if (type != &_xpc_type_error)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v5 = _os_log_pack_size();
    v6 = &context - ((__chkstk_darwin(v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = __error();
    *_os_log_pack_fill(v6, v5, *v7, &_mh_execute_header, "unexpected event") = 0;
    goto LABEL_5;
  }

  if (object == &_xpc_error_connection_invalid)
  {

    sub_10003A778(a1);
  }

  else if (object == &_xpc_error_connection_interrupted)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      v14 = &context - ((__chkstk_darwin(v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      *_os_log_pack_fill(v14, v13, *v15, &_mh_execute_header, "connection interrupted") = 0;
LABEL_5:
      __SC_log_send();
    }
  }
}