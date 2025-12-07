CFIndex sub_10022CD98(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {

    return CFArrayGetCount(v2);
  }

  else
  {
    if (!*(a1 + 24))
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(*(a1 + 16));
    Length = CFDataGetLength(*(a1 + 16));
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_10022D3E4;
    v9[3] = &unk_100346160;
    v9[4] = &v10;
    sub_10022D1B0(v7, v6, &BytePtr[Length], 0, v9);
    v8 = v11[3];
    _Block_object_dispose(&v10, 8);
    return v8;
  }
}

void sub_10022CE9C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = (*(*(a1 + 40) + 112))(a2, 0);
  BytePtr = CFDataGetBytePtr(v5);
  CFStringAppendFormat(*(a1 + 48), 0, @" %02X%02X%02X%02X", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3]);
  if (v5)
  {
    CFRelease(v5);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24) - 1;
  *(v7 + 24) = v8;
  if (!v8)
  {
    CFStringAppend(*(a1 + 48), @"...");
    *a3 = 1;
  }
}

void sub_10022CF58(void *a1, CFDataRef theData)
{
  cf = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v6 = sub_100006D24(kCFAllocatorDefault, &cf, a1[5], BytePtr, &BytePtr[Length]);
  v7 = cf;
  if (v6)
  {
    v8 = (*(a1[6] + 128))(cf, a1[5]);
    (*(a1[4] + 16))();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

BOOL sub_10022D038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  if (!v5)
  {
    if (*(a1 + 24))
    {
      BytePtr = CFDataGetBytePtr(*(a1 + 16));
      Length = CFDataGetLength(*(a1 + 16));
      return sub_10022D1B0(*(a1 + 32), *(a1 + 24), &BytePtr[Length], a2, a3) != 0;
    }

    return 1;
  }

  Count = CFArrayGetCount(v5);
  v7 = Count - 1;
  if (Count < 1)
  {
    return 1;
  }

  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v8);
    v15 = 0;
    (*(a3 + 16))(a3, ValueAtIndex, &v15);
    result = 1;
    if (v15)
    {
      break;
    }
  }

  while (v7 != v8++);
  return result;
}

uint64_t sub_10022D11C(void *a1)
{
  if (a1[6])
  {
    v2 = a1[8];
    if (v2 && CFDataGetLength(*(v2 + 24)) > 0x13)
    {
      return 3;
    }

    v3 = a1[9];
    if (v3 && CFDataGetLength(*(v3 + 24)) > 0x13)
    {
      return 3;
    }

    else if (sub_10022CD98(a1))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else if (a1[9])
  {
    return 2;
  }

  else
  {
    return a1[5] != 0;
  }
}

const UInt8 *sub_10022D1B0(uint64_t a1, const UInt8 *a2, const UInt8 *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  do
  {
    if (!ccder_decode_tag())
    {
      break;
    }

    *buf = 0;
    if (!ccder_decode_constructed_tl())
    {
      SOSErrorCreate();
      return 0;
    }

    if (a5)
    {
      v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a2, *buf - a2, kCFAllocatorNull);
      (*(a5 + 16))(a5, v9, &v12);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    a2 = *buf;
  }

  while (v12 != 1);
  if (a1 == -1)
  {
    a2 = ccder_decode_tl();
  }

  if ((v12 & 1) == 0 && a2 != a3)
  {
    v10 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a3 - a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%td trailing bytes after objects DER", buf, 0xCu);
    }
  }

  return a2;
}

uint64_t sub_10022D3FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) != *(a2 + 88))
  {
    return 0;
  }

  if (*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5 && v6)
  {
    result = CFEqual(v5, v6);
    if (!result)
    {
      return result;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (v7 && v8)
  {
    result = CFEqual(v7, v8);
    if (!result)
    {
      return result;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (v9 && v10)
  {
    result = CFEqual(v9, v10);
    if (!result)
    {
      return result;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 64);
  if (v11 && v12)
  {
    result = CFEqual(v11, v12);
    if (!result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v11 != v12)
  {
    return 0;
  }

LABEL_26:
  v13 = *(a1 + 72);
  v14 = *(a2 + 72);
  if (v13 && v14)
  {
    return CFEqual(v13, v14) != 0;
  }

  else
  {
    return v13 == v14;
  }
}

void sub_10022D51C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[5] = 0;
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[6] = 0;
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[7] = 0;
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[9] = 0;
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    a1[8] = 0;
    CFRelease(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    a1[10] = 0;

    CFRelease(v8);
  }
}

const __CFArray *sub_10022D5C4(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      v4 = Count;
      v5 = 0;
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v5);
        v6 += CFDataGetLength(ValueAtIndex);
        ++v5;
      }

      while (v4 != v5);
    }
  }

  else
  {
    v6 = 0;
    if (*(a1 + 112))
    {
      return result;
    }
  }

  if (*(a1 + 120) == 1)
  {
    return (v6 + 4);
  }

  return ccder_sizeof();
}

uint64_t sub_10022D680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 80);
  if (!v4 && *(a1 + 112))
  {
    return a3;
  }

  if (*(a1 + 120) == 1)
  {
    ccder_encode_tl();
    v4 = *(a1 + 80);
  }

  if (v4)
  {
    Count = CFArrayGetCount(v4);
    v6 = Count - 1;
    if (Count >= 1)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v6);
        CFDataGetLength(ValueAtIndex);
        CFDataGetBytePtr(ValueAtIndex);
        ccder_encode_body();
        --v6;
      }

      while (v6 != -1);
    }
  }

  if (*(a1 + 120))
  {
    ccder_encode_len();

    return ccder_encode_tag();
  }

  else
  {

    return ccder_encode_constructed_tl();
  }
}

uint64_t sub_10022D7F4(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4)
{
  if (!theData)
  {
    return a4;
  }

  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);

  return _ccder_encode_implicit_raw_octet_string(a1, Length, BytePtr, a3, a4);
}

const UInt8 *sub_10022D884(uint64_t a1, CFDataRef *a2, uint64_t a3, uint64_t a4)
{
  v5 = ccder_decode_tl();
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v7 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v5, 0, kCFAllocatorNull);
      *a2 = v7;
      if (!v7)
      {
        return 0;
      }
    }
  }

  return v6;
}

const UInt8 *sub_10022D904(uint64_t a1, CFErrorRef *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  cf = 0;
  v7 = sub_10022D884(4, &cf, a3, a4);
  v8 = sub_10022D884(4, &v12, v7, a4);
  if (v8)
  {
    *(a1 + 64) = sub_10022A73C(cf, a2);
    v9 = sub_10022A73C(v12, a2);
    *(a1 + 72) = v9;
    v10 = *(a1 + 64);
    if (!v10 || !v9)
    {
      if (v10)
      {
        *(a1 + 64) = 0;
        CFRelease(v10);
        v9 = *(a1 + 72);
      }

      if (v9)
      {
        *(a1 + 72) = 0;
        CFRelease(v9);
      }

      v8 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v8;
}

CFDictionaryRef sub_10022DB74(CFDictionaryRef result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      if (a2)
      {
        keys[0] = @"peer-id";
        keys[1] = @"views";
        if (a3)
        {
          keys[2] = @"keybag";
          values = v5;
          v10 = a2;
          v11 = a3;
          v7 = kCFAllocatorDefault;
          v8 = 3;
        }

        else
        {
          values = v5;
          v10 = a2;
          v7 = kCFAllocatorDefault;
          v8 = 2;
        }

        return CFDictionaryCreate(v7, keys, &values, v8, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      else
      {

        return CFRetain(v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef sub_10022DCC8(CFTypeRef cf, uint64_t *a2, void *a3, __CFString **a4)
{
  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFDictionaryGetTypeID()))
  {
    if (a2)
    {
      *a2 = SOSViewsGetV0ViewSet();
    }

    if (cf)
    {
      v18 = CFGetTypeID(cf);
      if (v18 == CFStringGetTypeID())
      {
        return cf;
      }
    }

    if (a4)
    {
      sub_1000103CC(-50, a4, @"object %@ is not a string", cf);
    }

    return 0;
  }

  Value = CFDictionaryGetValue(cf, @"peer-id");
  v10 = Value;
  if (!Value || (v11 = CFGetTypeID(Value), v11 != CFStringGetTypeID()))
  {
    if (a4)
    {
      sub_1000103CC(-50, a4, @"object %@ is not a string", v10);
    }

    v10 = 0;
  }

  v12 = CFDictionaryGetValue(cf, @"views");
  v13 = v12;
  if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFSetGetTypeID()))
  {
    if (a4)
    {
      sub_1000103CC(-50, a4, @"object %@ is not a set", v13);
    }

    return 0;
  }

  v15 = CFDictionaryGetValue(cf, @"keybag");
  v16 = v15;
  if (v15)
  {
    v17 = CFGetTypeID(v15);
    if (v17 != CFDataGetTypeID())
    {
      if (a4)
      {
        sub_1000103CC(-50, a4, @"object %@ is not an data", v16);
      }

      return 0;
    }
  }

  if (a3)
  {
    *a3 = v16;
  }

  if (a2)
  {
    *a2 = v13;
  }

  return v10;
}

CFDictionaryRef sub_10022DE70(__CFDictionary *cf, const void *a2, const void *a3, int a4, int a5, int a6, int a7, int a8)
{
  MutableCopy = cf;
  if (a2)
  {
    if (!cf)
    {
      return sub_10001104C(kCFAllocatorDefault, a2, a3, a4, a5, a6, a7, a8, @"views", a2);
    }
  }

  else
  {
    sub_100089FEC(@"Execution has encountered an unexpected state", 0x53C0000Eu);
    if (!MutableCopy)
    {
      return sub_10001104C(kCFAllocatorDefault, a2, a3, a4, a5, a6, a7, a8, @"views", a2);
    }
  }

  v11 = CFGetTypeID(MutableCopy);
  if (v11 != sub_10022DFAC())
  {
    v12 = CFGetTypeID(MutableCopy);
    if (v12 == CFDictionaryGetTypeID())
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy);
      CFDictionarySetValue(MutableCopy, @"views", a2);
      if (a3)
      {
        CFDictionarySetValue(MutableCopy, @"keybag", a3);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, @"keybag");
      }

      return MutableCopy;
    }

    return sub_10001104C(kCFAllocatorDefault, a2, a3, a4, a5, a6, a7, a8, @"views", a2);
  }

  sub_10022E044(MutableCopy, a2);
  sub_10022E15C(MutableCopy, a3);
  CFRetain(MutableCopy);
  return MutableCopy;
}

uint64_t sub_10022DFAC()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022EC10;
  block[3] = &unk_100346E68;
  block[4] = &qword_10039E3F8;
  if (qword_10039E3F0 != -1)
  {
    dispatch_once(&qword_10039E3F0, block);
  }

  return qword_10039E3F8;
}

void sub_10022E044(uint64_t a1, CFSetRef theSet)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10022EBC0;
    v7[3] = &unk_1003462B0;
    v7[4] = &v8;
    v7[5] = v4;
    CFSetApplyFunction(theSet, sub_10022EBF8, v7);
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
    if ((v5 & 1) == 0)
    {
      *(a1 + 50) = 0;
    }
  }

  v6 = *(a1 + 24);
  if (v6 != theSet)
  {
    if (!theSet || (CFRetain(theSet), (v6 = *(a1 + 24)) != 0))
    {
      CFRelease(v6);
    }

    *(a1 + 24) = theSet;
  }
}

void sub_10022E144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10022E15C(uint64_t a1, CFTypeRef cf1)
{
  v4 = *(a1 + 112);
  v5 = v4 == 0;
  if (cf1 && v4)
  {
    if (CFEqual(cf1, v4))
    {
      return;
    }

    v5 = *(a1 + 112) == 0;
LABEL_7:
    v6 = sub_100006274("backup");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 16);
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = cf1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ backup bag: %@", &v12, 0x16u);
    }

    if (*(a1 + 112) != cf1)
    {
      CFRetain(cf1);
      v8 = *(a1 + 112);
      if (v8)
      {
        CFRelease(v8);
      }

      *(a1 + 112) = cf1;
    }

    goto LABEL_13;
  }

  if (v4 == cf1)
  {
    return;
  }

  if (cf1)
  {
    goto LABEL_7;
  }

  v9 = sub_100006274("SecWarning");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 16);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ keybag for backup unset", &v12, 0xCu);
  }

  v11 = *(a1 + 112);
  if (!v11)
  {
LABEL_13:
    if (v5)
    {
      return;
    }

    goto LABEL_14;
  }

  CFRelease(v11);
  *(a1 + 112) = 0;
  if (!v4)
  {
    return;
  }

LABEL_14:
  sub_10022E308(a1);
}

void sub_10022E308(uint64_t a1)
{
  *(a1 + 49) = 0;
  if (*(a1 + 112))
  {
    sub_10022E714(a1, 0);
    v2 = *(a1 + 16);
    v3 = sub_100006274("syncwith");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SOSCCAccountTriggerSyncWithBackupPeer_server: %@", &buf, 0xCu);
    }

    if (v2)
    {
      v4 = sub_100243B3C(1);
      if ([v4 SOSMonitorModeSOSIsActive])
      {
        *&buf = v2;
        v5 = [NSArray arrayWithObjects:&buf count:1];
        [v4 triggerBackupForPeers:v5];
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 1;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v12 = sub_10022E4D8;
    v13 = &unk_1003462D8;
    v14 = &v7;
    v15 = a1;
    v16 = 0;
    v6 = sub_10022E5D0(a1, 0, &buf);
    *(v8 + 24) &= v6;
    _Block_object_dispose(&v7, 8);
  }
}

BOOL sub_10022E4D8(uint64_t a1, const char *a2)
{
  v4 = sub_100006274("backup");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412546;
    v14 = v5;
    v15 = 2080;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ unlinking journal file %s", buf, 0x16u);
  }

  v6 = unlink(a2);
  result = sub_100087DC8(v6, *(a1 + 48), @"unlink %s", v7, v8, v9, v10, v11, a2);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

BOOL sub_10022E5D0(uint64_t a1, CFErrorRef *a2, void *a3)
{
  v5 = a3;
  memset(__b, 170, sizeof(__b));
  if (confstr(65537, __b, 0x401uLL))
  {
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/SOSBackup-%@", __b, *(a1 + 16));
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_1000105E8;
    v14[3] = &unk_100335678;
    v14[4] = v5;
    sub_100008380(v11, v14);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = 1;
  }

  else
  {
    v12 = sub_100087DC8(-1, a2, @"confstr on _CS_DARWIN_USER_TEMP_DIR returned an error.", v6, v7, v8, v9, v10);
  }

  return v12;
}

uint64_t sub_10022E714(uint64_t a1, void *a2)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10022E9F0;
  v19[3] = &unk_100346300;
  v19[5] = &v20;
  v19[6] = a1;
  v19[4] = &v24;
  v4 = v19;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10022EB08;
  v29 = &unk_100346328;
  v30 = v4;
  v31 = &v23;
  v5 = v4;
  v6 = sub_10022E5D0(a1, &v23, buf);

  v7 = v6 & v25[3];
  *(v25 + 24) = v7;
  if (v7)
  {
    v8 = sub_100006274("backup-peer");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 16);
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Wrote reset.", buf, 0xCu);
    }
  }

  else
  {
    v10 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 16);
      v12 = v21[3];
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ failed to write reset to backup journal: %@", buf, 0x16u);
    }

    v13 = v21[3];
    if (v13)
    {
      if (a2 && !*a2)
      {
        *a2 = v13;
      }

      else
      {
        CFRelease(v13);
      }
    }
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 72) = 0;
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    *(a1 + 80) = 0;
    CFRelease(v15);
  }

  v16 = v25;
  *(a1 + 48) = *(v25 + 24) ^ 1;
  v17 = *(v16 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v17;
}

void sub_10022E9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10022E9F0(void *a1, FILE *a2)
{
  v4 = *(a1[6] + 112);
  v5 = (*(a1[5] + 8) + 24);
  if (v4)
  {
    CFDataGetLength(*(a1[6] + 112));
    ccder_sizeof_raw_octet_string();
  }

  v6 = ccder_sizeof();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1002247EC;
  v8[3] = &unk_100345CA8;
  v8[4] = v4;
  v8[5] = v5;
  result = sub_100224870(a2, v5, v6, v8);
  *(*(a1[4] + 8) + 24) = result;
  if (*(*(a1[4] + 8) + 24) == 1 && !*(a1[6] + 112))
  {
    result = sub_100224B28(a2, 999, (*(a1[5] + 8) + 24));
    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_10022EB08(uint64_t a1, char *__filename)
{
  v4 = *(a1 + 40);
  v5 = fopen(__filename, "w");
  result = sub_100087DC8(v5 == 0, v4, @"fopen %s,%s", v6, v7, v8, v9, v10, __filename, "w");
  if (v5)
  {
    (*(*(a1 + 32) + 16))();

    return fclose(v5);
  }

  return result;
}

uint64_t sub_10022EBC0(uint64_t a1, const void *a2)
{
  result = CFSetContainsValue(*(a1 + 40), a2);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t sub_10022EC10(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_10022EC44(uint64_t a1)
{
  sub_100017B30();

  return sub_10022EC7C(a1);
}

CFStringRef sub_10022EC7C(uint64_t a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @" %@%@", @"O", v2);
  }

  else
  {
    v3 = @" -  ";
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @" %@%@", @"U", v5);
  }

  else
  {
    v6 = @" -  ";
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @" %@%@", @"C", v7);
  }

  else
  {
    v8 = @" -  ";
  }

  v9 = sub_10022EE6C(*(a1 + 80), @"P");
  v10 = sub_10022EE6C(*(a1 + 88), @"L");
  v11 = v10;
  if (*(a1 + 48))
  {
    v12 = "F";
  }

  else
  {
    v12 = "f";
  }

  v13 = "s";
  if (*(a1 + 49))
  {
    v13 = "S";
  }

  if (*(a1 + 50))
  {
    v14 = "K";
  }

  else
  {
    v14 = "k";
  }

  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<%@ %s%s%s%@%@%@%@%@>", *(a1 + 16), v12, v13, v14, v3, v6, v8, v9, v10);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

CFStringRef sub_10022EE6C(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return @" -  ";
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return @" -  ";
  }

  v5 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @" %@[%ld]%@", a2, v5, ValueAtIndex);
}

void sub_10022EF1C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[7] = 0;
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[8] = 0;
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[9] = 0;
    CFRelease(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    a1[10] = 0;
    CFRelease(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    a1[11] = 0;
    CFRelease(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[13] = 0;
    CFRelease(v9);
  }

  v10 = a1[12];
  if (v10)
  {
    a1[12] = 0;
    CFRelease(v10);
  }

  v11 = a1[14];
  if (v11)
  {
    a1[14] = 0;

    CFRelease(v11);
  }
}

__CFDictionary *sub_10022EFF4(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  valuePtr = *(a1 + 40);
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"sequence-number", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(a1 + 32))
  {
    valuePtr = *(a1 + 32);
    v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
    CFDictionarySetValue(Mutable, @"vers", v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (*(a1 + 48))
  {
    v5 = kCFBooleanTrue;
  }

  else
  {
    v5 = kCFBooleanFalse;
  }

  CFDictionarySetValue(Mutable, @"must-send", v5);
  if (*(a1 + 49))
  {
    v6 = kCFBooleanTrue;
  }

  else
  {
    v6 = kCFBooleanFalse;
  }

  CFDictionarySetValue(Mutable, @"send-objects", v6);
  if (*(a1 + 50))
  {
    v7 = kCFBooleanTrue;
  }

  else
  {
    v7 = kCFBooleanFalse;
  }

  CFDictionarySetValue(Mutable, @"has-been-in-sync", v7);
  v8 = *(a1 + 24);
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"views", v8);
  }

  v9 = *(a1 + 112);
  if (v9 && !CFEqual(*(a1 + 16), kSOSViewKeychainV0_tomb))
  {
    CFDictionarySetValue(Mutable, @"keybag", v9);
  }

  if (!sub_10022F210(Mutable, @"pending-objects", *(a1 + 56)) || !sub_10022F210(Mutable, @"unwanted-manifest", *(a1 + 64)) || !sub_10022F210(Mutable, @"confirmed-manifest", *(a1 + 72)) || !sub_10022F264(Mutable, @"pending-manifest", *(a1 + 80)) || !sub_10022F264(Mutable, @"local-manifest", *(a1 + 88)))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t sub_10022F210(__CFDictionary *a1, const void *a2, __CFData *a3)
{
  if (!a3)
  {
    return 1;
  }

  result = sub_10022A4C8(a3);
  if (result)
  {
    CFDictionarySetValue(a1, a2, result);
    return 1;
  }

  return result;
}

BOOL sub_10022F264(__CFDictionary *a1, const void *a2, const __CFArray *a3)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v11 = sub_10022A4C8(ValueAtIndex);
        if (v11)
        {
          if (Mutable)
          {
            CFArrayAppendValue(Mutable, v11);
          }
        }

        else if (Mutable)
        {
          CFRelease(Mutable);
          Mutable = 0;
        }
      }
    }
  }

  if (Mutable)
  {
    CFDictionarySetValue(a1, a2, Mutable);
    CFRelease(Mutable);
  }

  return Mutable != 0;
}

const __CFDictionary *sub_10022F340(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == sub_10022DFAC())
    {
      v3 = *(v1 + 14) == 0;
    }

    else
    {
      v3 = CFDictionaryContainsKey(v1, @"keybag") == 0;
    }

    return !v3;
  }

  return result;
}

void sub_10022F3A0(uint64_t a1, char *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = open(a2, 0x1000000);
  if (sub_100087DC8(*(*(*(a1 + 32) + 8) + 24) >> 31, *(a1 + 40), @"open %s", v4, v5, v6, v7, v8, a2))
  {
    v9 = unlink(a2);
    if (sub_100087DC8(v9, *(a1 + 40), @"unlink %s", v10, v11, v12, v13, v14, a2))
    {
      v15 = sub_100006274("backup");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*(*(a1 + 32) + 8) + 24);
        v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v23.st_blksize = v17;
        *v23.st_qspare = v17;
        v23.st_birthtimespec = v17;
        *&v23.st_size = v17;
        v23.st_mtimespec = v17;
        v23.st_ctimespec = v17;
        *&v23.st_uid = v17;
        v23.st_atimespec = v17;
        *&v23.st_dev = v17;
        v18 = fstat(v16, &v23);
        st_size = v23.st_size;
        if (v18)
        {
          st_size = -1;
        }

        v23.st_dev = 136315394;
        *&v23.st_mode = a2;
        WORD2(v23.st_ino) = 2048;
        *(&v23.st_ino + 6) = st_size;
        v20 = "Handing off file %s of size %lld";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v20, &v23, 0x16u);
      }
    }

    else
    {
      close(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 32) + 8) + 24) = -1;
      v15 = sub_100006274("backup");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 40);
        if (v22)
        {
          v22 = *v22;
        }

        v23.st_dev = 136315394;
        *&v23.st_mode = a2;
        WORD2(v23.st_ino) = 2112;
        *(&v23.st_ino + 6) = v22;
        v20 = "Unable to unlink file %s: %@";
        goto LABEL_15;
      }
    }
  }

  else
  {
    v15 = sub_100006274("backup");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      if (v21)
      {
        v21 = *v21;
      }

      v23.st_dev = 136315394;
      *&v23.st_mode = a2;
      WORD2(v23.st_ino) = 2112;
      *(&v23.st_ino + 6) = v21;
      v20 = "Handing off file %s failed, %@";
      goto LABEL_15;
    }
  }
}

uint64_t sub_10022F5D0(uint64_t a1, CFErrorRef *a2, void *a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10022F6D0;
  v7[3] = &unk_100346260;
  v10 = a2;
  v11 = a1;
  v9 = &v12;
  v3 = a3;
  v8 = v3;
  v4 = sub_10022E5D0(v11, v10, v7);
  v5 = v4 & v13[3];
  *(v13 + 24) &= v4;

  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_10022F6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10022F6D0(uint64_t a1, char *__filename)
{
  v4 = *(a1 + 48);
  v5 = fopen(__filename, "a");
  result = sub_100087DC8(v5 == 0, v4, @"fopen %s,%s", v6, v7, v8, v9, v10, __filename, "a");
  if (v5)
  {
    v17 = -1;
    v12 = *(a1 + 56);
    if (CFEqual(*(v12 + 16), kSOSViewKeychainV0_tomb))
    {
      v13 = *(v12 + 112);
      if (v13)
      {
        CFRetain(*(v12 + 112));
      }
    }

    else
    {
      v14 = SOSBackupSliceKeyBagCreateFromData();
      if (v14)
      {
        v15 = v14;
        v13 = SOSBSKBCopyAKSBag();
        CFRelease(v15);
      }

      else
      {
        v13 = 0;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = v13 != 0;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v16 = sub_100193FBC(v13, 0, &v17, *(a1 + 48));
      *(*(*(a1 + 40) + 8) + 24) = v16;
      if (v16)
      {
        (*(*(a1 + 32) + 16))();
        if (v17 != -1)
        {
          *(*(*(a1 + 40) + 8) + 24) &= sub_1001940F8(v17, *(a1 + 48));
        }
      }
    }

    if (v13)
    {
      CFRelease(v13);
    }

    return fclose(v5);
  }

  return result;
}

BOOL sub_10022F85C(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, __CFArray *a4)
{
  if (!theDict)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"vers");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberCFIndexType, (a1 + 32));
  }

  *v30 = 0;
  v9 = CFDictionaryGetValue(theDict, @"sequence-number");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberSInt64Type, v30);
    v10 = *v30;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 40) = v10;
  *(a1 + 48) = sub_10022FB30(theDict, @"must-send");
  *(a1 + 49) = sub_10022FB30(theDict, @"send-objects");
  *(a1 + 50) = sub_10022FB30(theDict, @"has-been-in-sync");
  V0ViewSet = CFDictionaryGetValue(theDict, @"views");
  if (!V0ViewSet)
  {
    V0ViewSet = SOSViewsGetV0ViewSet();
    v13 = sub_100006274("peer");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 16);
      *v30 = 138412546;
      *&v30[4] = v14;
      v31 = 2112;
      v32 = V0ViewSet;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ had no views, inferring: %@", v30, 0x16u);
    }
  }

  v15 = *(a1 + 24);
  if (v15 != V0ViewSet)
  {
    if (!V0ViewSet || (CFRetain(V0ViewSet), (v15 = *(a1 + 24)) != 0))
    {
      CFRelease(v15);
    }

    *(a1 + 24) = V0ViewSet;
  }

  v16 = CFDictionaryGetValue(theDict, @"keybag");
  if (!v16 || (v17 = v16, v18 = CFGetTypeID(v16), v18 != CFDataGetTypeID()))
  {
    v17 = 0;
  }

  sub_10022E15C(a1, v17);
  v19 = sub_1001479F8(a2, theDict, @"pending-objects");
  v20 = *(a1 + 56);
  if (v20)
  {
    CFRelease(v20);
  }

  *(a1 + 56) = v19;
  v21 = sub_1001479F8(a2, theDict, @"unwanted-manifest");
  v22 = *(a1 + 64);
  if (v22)
  {
    CFRelease(v22);
  }

  *(a1 + 64) = v21;
  v23 = sub_1001479F8(a2, theDict, @"confirmed-manifest");
  v24 = *(a1 + 72);
  if (v24)
  {
    CFRelease(v24);
  }

  *(a1 + 72) = v23;
  v25 = sub_100147A84(a2, theDict, @"pending-manifest", a4);
  v26 = *(a1 + 80);
  if (v26)
  {
    CFRelease(v26);
  }

  *(a1 + 80) = v25;
  v27 = sub_100147A84(a2, theDict, @"local-manifest", a4);
  v28 = *(a1 + 88);
  if (v28)
  {
    CFRelease(v28);
  }

  *(a1 + 88) = v27;
  if (v25)
  {
    v29 = v27 == 0;
  }

  else
  {
    v29 = 1;
  }

  return !v29;
}

const __CFBoolean *sub_10022FB30(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    return (CFBooleanGetValue(result) != 0);
  }

  return result;
}

void *sub_10022FB58(uint64_t a1, const void *a2, const __CFDictionary *a3, __CFArray *a4)
{
  sub_10022DFAC();
  Instance = _CFRuntimeCreateInstance();
  if (a2)
  {
    CFRetain(a2);
  }

  Instance[2] = a2;
  Instance[4] = 0;
  v9 = 0;
  Instance[13] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!a3)
  {
    v9 = CFDictionaryCreate(kCFAllocatorDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    a3 = v9;
  }

  if (!sub_10022F85C(Instance, a1, a3, a4))
  {
    CFRelease(Instance);
    Instance = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return Instance;
}

void sub_10022FC58(__CFArray **a1, const void *a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      CFArrayRemoveAllValues(v3);
      Mutable = *a1;
    }

    else
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      *a1 = Mutable;
    }

    CFArrayAppendValue(Mutable, a2);
  }

  else if (v3)
  {
    *a1 = 0;

    CFRelease(v3);
  }
}

const void *sub_10022FCF8(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!v2 || !CFArrayGetCount(v2))
  {
    return 0;
  }

  v3 = *(a1 + 80);

  return CFArrayGetValueAtIndex(v3, 0);
}

void sub_10022FD50(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 72);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 72)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 72) = cf;
  }
}

void sub_10022FD9C(CFArrayRef *a1, const void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    if (a2)
    {
      Count = CFArrayGetCount(*a1);
      v9.location = 0;
      v9.length = Count;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v9, a2);
      if (FirstIndexOfValue)
      {
        if (FirstIndexOfValue == -1)
        {
          if (Count >= 4)
          {
            v6 = Count + 1;
            do
            {
              CFArrayRemoveValueAtIndex(v3, v6 - 2);
              --v6;
            }

            while (v6 > 4);
          }
        }

        else
        {
          CFArrayRemoveValueAtIndex(v3, FirstIndexOfValue);
        }

        CFArrayInsertValueAtIndex(v3, 0, a2);
      }
    }

    else
    {
      v7 = *a1;

      CFArrayRemoveAllValues(v7);
    }
  }

  else
  {

    sub_10022FC58(a1, a2);
  }
}

BOOL sub_10022FEA4(void *key, CFDictionaryRef theDict)
{
  v2 = CFDictionaryGetValue(theDict, key);
  v3 = v2 != 0;

  return v3;
}

__CFData *sub_10022FEE4(__CFData **a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1[10];
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[10], v7);
        v9 = sub_10022A4C8(ValueAtIndex);
        if (CFEqual(a2, v9))
        {
          goto LABEL_15;
        }
      }

      while (v6 != ++v7);
    }
  }

  v10 = a1[11];
  if (v10)
  {
    v11 = CFArrayGetCount(v10);
    if (v11 >= 1)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[11], v13);
        v14 = sub_10022A4C8(ValueAtIndex);
        if (CFEqual(a2, v14))
        {
          goto LABEL_15;
        }
      }

      while (v12 != ++v13);
    }
  }

  v15 = a1[9];
  if (!v15)
  {
    return 0;
  }

  v16 = sub_10022A4C8(v15);
  if (!CFEqual(a2, v16))
  {
    return 0;
  }

  ValueAtIndex = a1[9];
LABEL_15:
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  return ValueAtIndex;
}

void sub_10022FFEC(__CFDictionary *a1, __CFData *a2)
{
  v4 = sub_10022A4C8(a2);
  if (a2)
  {
    if (v4)
    {
      v5 = *(a2 + 3);
      if (v5)
      {

        CFDictionarySetValue(a1, v4, v5);
      }
    }
  }
}

void sub_10023004C(__CFDictionary *a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(cf);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
          sub_10022FFEC(a1, ValueAtIndex);
        }
      }
    }
  }
}

void sub_1002300D4(void *a1, uint64_t a2, uint64_t a3, CFDataRef *a4, CFErrorRef *a5)
{
  if ((a2 | 2) == 3 && a4 && CFDataGetLength(a4[3]) >= 0x14)
  {
    v10 = sub_10022ACE4(a1[9], a4, a5);
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (CFDataGetLength(*(a3 + 24)) > 0x13)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = 0;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (!v10)
  {
    return;
  }

  if (CFDataGetLength(v10[3]) < 0x14)
  {
    goto LABEL_18;
  }

LABEL_10:
  v11 = sub_10022AC58(a1[7], a3, v10, a5);
  v23 = 0;
  cf = 0;
  sub_10022A898(a1[7], v11, &cf, &v23, a5);
  v12 = sub_100006274("peer");
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

  v14 = a1[2];
  v15 = "sos";
  if (a2 == 3)
  {
    v15 = "ckks";
  }

  if (a2 == 1)
  {
    v15 = "api";
  }

  v22 = v15;
  if (cf && CFDataGetLength(*(cf + 3)) > 0x13)
  {
    v16 = "-";
  }

  else
  {
    v16 = "";
  }

  v17 = cf;
  if (!cf || (Length = CFDataGetLength(*(cf + 3)), v17 = cf, v19 = cf, Length <= 0x13))
  {
    v19 = &stru_100348050;
  }

  if (!v23)
  {
    goto LABEL_34;
  }

  if (CFDataGetLength(*(v23 + 3)) <= 0x13)
  {
    v17 = cf;
LABEL_34:
    v20 = "=";
    if (v17 && CFDataGetLength(v17[3]) >= 0x14)
    {
      v20 = "";
    }

    goto LABEL_39;
  }

  v20 = "+";
LABEL_39:
  if (v23 && CFDataGetLength(*(v23 + 3)) > 0x13)
  {
    v21 = v23;
  }

  else
  {
    v21 = &stru_100348050;
  }

  *buf = 138414338;
  v26 = v14;
  v27 = 2112;
  v28 = a3;
  v29 = 2112;
  v30 = a4;
  v31 = 2112;
  v32 = v10;
  v33 = 2080;
  v34 = v22;
  v35 = 2080;
  v36 = v16;
  v37 = 2112;
  v38 = v19;
  v39 = 2080;
  v40 = v20;
  v41 = 2112;
  v42 = v21;
  _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@: willCommit R:%@ A:%@ UA:%@ %s O%s%@%s%@", buf, 0x5Cu);
LABEL_11:

  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v13 = a1[7];
  if (v13)
  {
    CFRelease(v13);
  }

  a1[7] = v11;
  if (v10)
  {
LABEL_18:
    CFRelease(v10);
  }
}

void sub_1002303C8(uint64_t a1, FILE *a2, int a3)
{
  *v31 = 0u;
  v32 = 0u;
  *v29 = 0u;
  v30 = 0u;
  Count = CFArrayGetCount(*(a1 + 40));
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; v6 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), i);
      v9 = ValueAtIndex;
      cf = 0;
      v10 = *(a1 + 48);
      if (ValueAtIndex)
      {
        v11 = CFGetTypeID(ValueAtIndex);
        TypeID = CFArrayGetTypeID();
        v13 = v9;
        if (v11 == TypeID)
        {
          if (CFArrayGetCount(v9) != 1)
          {
            v17 = CFArrayGetCount(v9);
            sub_1000103CC(-26275, &cf, @"change array count: %ld", v17);
            v16 = 0;
            v15 = 0;
LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

          v13 = CFArrayGetValueAtIndex(v9, 0);
          if (!v13)
          {
            v15 = (*(v10 + 112))(0, &cf);
            v16 = v15 != 0;
LABEL_20:
            v20 = sub_10022496C(a2, v15, &cf);
            v21 = v31;
            goto LABEL_21;
          }
        }

        v14 = CFGetTypeID(v13);
        if (v14 == CFDataGetTypeID())
        {
          v15 = CFRetain(v13);
          v16 = v15 != 0;
          if (v11 == TypeID)
          {
            goto LABEL_20;
          }

          goto LABEL_14;
        }

        v15 = (*(v10 + 112))(v13, &cf);
        v16 = v15 != 0;
        if (v11 == TypeID)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = (*(v10 + 112))(0, &cf);
        v13 = 0;
        v16 = v15 != 0;
      }

LABEL_15:
      v18 = (*(*(a1 + 48) + 144))(v13, a3, &cf);
      if (v18)
      {
        v19 = v18;
        v20 = sub_100224A70(a2, v18, &cf);
        CFRelease(v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = v29;
LABEL_21:
      BytePtr = CFDataGetBytePtr(v15);
      sub_1002297B0(v21, BytePtr);
      *(v21 + 24) = 1;
      if (v16 && v20)
      {
        goto LABEL_26;
      }

      v23 = sub_100006274("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = cf;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "bad change %@: %@", buf, 0x16u);
      }

      if (v16)
      {
LABEL_26:
        CFRelease(v15);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    memset(buf, 0, sizeof(buf));
    sub_100229930(v31);
    sub_100229930(v29);
    v24 = sub_10022FCF8(*(a1 + 56));
    v25 = sub_10022A838(v24);
    sub_100229F8C(v25, v31, v29, buf);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v26 = sub_10022ABF8(buf, *(a1 + 64));
    *(*(*(a1 + 32) + 8) + 24) = v26 != 0;
    sub_10022FC58((*(a1 + 56) + 80), v26);
    if (v26)
    {
      CFRelease(v26);
    }

    free(*buf);
  }

  free(v31[0]);
  free(v29[0]);
  if (*(*(a1 + 56) + 49) == 1)
  {
    sub_100224B28(a2, 799, *(a1 + 64));
  }
}

uint64_t sub_100230778(void *a1, uint64_t a2, uint64_t a3, CFTypeRef a4, uint64_t a5, CFDataRef *a6, void *a7, const void *a8, SOSEnginePeerMessageCallBackInfo **a9, CFErrorRef *a10)
{
  v15 = a1;
  v16 = v15;
  if (a5)
  {
    v247 = a2;
    v17 = sub_100006274("transport");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "coder state: %@", buf, 0xCu);
    }

    if (!*(a5 + 24) || !SecOTRSGetIsReadyForMessages() || (*(a5 + 32) & 1) != 0)
    {
      v18 = *(a5 + 40);
      if (v18)
      {
        Copy = CFDataCreateCopy(kCFAllocatorDefault, v18);
      }

      else
      {
        Copy = 0;
      }

      *a6 = Copy;
      if ([OTSOSActualAdapter sosEnabled]_0())
      {
        *(v247 + 105) = 1;
      }

      v22 = sub_100006274("transport");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v52 = @"sending negotiation message.";
        if (!*a6)
        {
          v52 = @"waiting for negotiation message.";
        }

        *buf = 138412546;
        *&buf[4] = a7;
        *&buf[12] = 2112;
        *&buf[14] = v52;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ negotiating, %@", buf, 0x16u);
      }

      v23 = objc_opt_new();
      [v23 setCallbackBlock:0];
      [v23 setCoder:a5];
      objc_initWeak(buf, v23);
      v250[0] = _NSConcreteStackBlock;
      v250[1] = 3221225472;
      v250[2] = sub_100232CAC;
      v250[3] = &unk_100346350;
      objc_copyWeak(&v251, buf);
      v24 = v23;
      v25 = v250;
      v26 = ![OTSOSActualAdapter sosEnabled]_0();
      if (!v24)
      {
        LOBYTE(v26) = 1;
      }

      if (!v26)
      {
        [(SOSEnginePeerMessageCallBackInfo *)v24 setCallbackBlock:v25];
      }

      v27 = v24;
      *a9 = v24;
      objc_destroyWeak(&v251);
      objc_destroyWeak(buf);

      v28 = 1;
      goto LABEL_21;
    }

    v39 = sub_100006274("transport");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = a7;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%@ Coder can wrap, getting message from engine", buf, 0xCu);
    }

    if (![OTSOSActualAdapter sosEnabled]_0())
    {
      SOSCCSetSOSDisabledError();
      goto LABEL_373;
    }

    cf1 = sub_10014BF98(v247, a4, a10);
    v266 = 0;
    v267 = &v266;
    v268 = 0x2020000000;
    v40 = *(a4 + 4);
    sub_10022C8A0();
    Instance = _CFRuntimeCreateInstance();
    *(Instance + 112) = v40;
    v269 = Instance;
    v43 = *(a4 + 8);
    v42 = *(a4 + 9);
    v264 = 0;
    v265 = 0;
    v262 = 0;
    v263 = 0;
    v260 = 0;
    v261 = 0;
    v44 = *(a4 + 7);
    v239 = v42;
    sub_10022A898(v42, cf1, &v265, &v264, a10);
    cf = v44;
    sub_10022A898(v264, v44, &v263, &v262, a10);
    if (v262 && CFDataGetLength(*(v262 + 3)) >= 0x14)
    {
      v45 = sub_100006274("SecError");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = a4;
        *&buf[12] = 2112;
        *&buf[14] = v262;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%@ ASSERTION FAILURE purging excess pendingObjects: %@", buf, 0x16u);
      }

      v46 = sub_10022ACE4(v262, cf, a10);
      v47 = v46;
      cf = *(a4 + 7);
      if (cf != v46)
      {
        if (v46)
        {
          CFRetain(v46);
          v48 = *(a4 + 7);
          if (v48)
          {
            CFRelease(v48);
          }
        }

        else
        {
          CFRelease(cf);
        }

        *(a4 + 7) = v47;
        cf = v47;
      }

      if (v47)
      {
        CFRelease(v47);
        cf = *(a4 + 7);
      }
    }

    sub_10022A898(v265, v43, &v261, &v260, a10);
    if (v260 && CFDataGetLength(*(v260 + 3)) >= 0x14)
    {
      v53 = sub_100006274("SecError");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = a4;
        *&buf[12] = 2112;
        *&buf[14] = v260;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@ ASSERTION FAILURE purging excess unwanted: %@", buf, 0x16u);
      }

      v54 = sub_10022ACE4(v260, v43, a10);
      v55 = v54;
      v43 = *(a4 + 8);
      if (v43 != v54)
      {
        if (v54)
        {
          CFRetain(v54);
          v56 = *(a4 + 8);
          if (v56)
          {
            CFRelease(v56);
          }
        }

        else
        {
          CFRelease(*(a4 + 8));
        }

        *(a4 + 8) = v55;
        v43 = v55;
      }

      if (v55)
      {
        CFRelease(v55);
        v43 = *(a4 + 8);
      }
    }

    v57 = v264;
    if (v264)
    {
      v264 = 0;
      CFRelease(v57);
    }

    v58 = v262;
    if (v262)
    {
      v262 = 0;
      CFRelease(v58);
    }

    v59 = v265;
    if (v265)
    {
      v265 = 0;
      CFRelease(v59);
    }

    v60 = v260;
    if (v260)
    {
      v260 = 0;
      CFRelease(v60);
    }

    v61 = sub_100006274("engine");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      queue = *(a4 + 2);
      v62 = "L";
      if (!cf1)
      {
        v62 = "l";
      }

      v230 = *(v247 + 24);
      v231 = v62;
      v63 = "C";
      if (!v239)
      {
        v63 = "0";
      }

      v229 = v63;
      v64 = "P";
      if (!cf)
      {
        v64 = "0";
      }

      v228 = v64;
      v65 = "o";
      if (*(a4 + 49))
      {
        v65 = "O";
      }

      v227 = v65;
      if (*(a4 + 48))
      {
        v66 = "S";
      }

      else
      {
        v66 = "s";
      }

      v226 = v66;
      if (cf1)
      {
        v225 = CFDataGetLength(cf1[3]) / 0x14uLL;
      }

      else
      {
        v225 = 0;
      }

      if (v239)
      {
        v224 = CFDataGetLength(v239[3]) / 0x14uLL;
      }

      else
      {
        v224 = 0;
      }

      if (cf)
      {
        v223 = CFDataGetLength(cf[3]) / 0x14uLL;
      }

      else
      {
        v223 = 0;
      }

      if (v263)
      {
        v67 = CFDataGetLength(*(v263 + 3)) / 0x14uLL;
      }

      else
      {
        v67 = 0;
      }

      v236 = a4;
      if (v261)
      {
        v68 = CFDataGetLength(*(v261 + 3)) / 0x14uLL;
      }

      else
      {
        v68 = 0;
      }

      if (v43)
      {
        v69 = CFDataGetLength(v43[3]) / 0x14uLL;
      }

      else
      {
        v69 = 0;
      }

      *buf = 138415362;
      *&buf[4] = v230;
      *&buf[12] = 2112;
      *&buf[14] = queue;
      *&buf[22] = 2080;
      v275 = v231;
      LOWORD(v276[0]) = 2080;
      *(v276 + 2) = v229;
      WORD5(v276[0]) = 2080;
      *(v276 + 12) = v228;
      WORD2(v276[1]) = 2080;
      *(&v276[1] + 6) = v227;
      HIWORD(v276[1]) = 2080;
      v277 = v226;
      v278 = 2048;
      v279 = v225;
      v280 = 2048;
      v281 = v224;
      v282 = 2048;
      v283 = v223;
      v284 = 2048;
      v285 = v67;
      v286 = 2048;
      v287 = v68;
      v288 = 2048;
      v289 = v69;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%@:%@: send state for peer [%s%s%s][%s%s] local:%zu confirmed:%zu pending:%zu, extra:%zu, missing:%zu unwanted:%zu", buf, 0x84u);
      a4 = v236;
    }

    if (!v239)
    {
      v75 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v76 = cf1;
      if (v261 && CFDataGetLength(*(v261 + 3)) > 0x13)
      {
        v78 = 0;
      }

      else
      {
        v77 = v263;
        if (v263)
        {
          v77 = CFDataGetLength(*(v263 + 3)) > 0x13;
        }

        v78 = 0;
        if (v77)
        {
          v75 = cf;
        }

        else
        {
          v79 = 0;
          v238 = 0;
          v75 = cf;
          if (!cf)
          {
            goto LABEL_185;
          }
        }
      }

LABEL_181:
      v95 = sub_10022AF68(v263, v75, a10);
      v238 = sub_10022AC58(v239, v261, v95, a10);
      if (v95)
      {
        CFRelease(v95);
      }

      v79 = v75;
LABEL_185:
      v96 = *(a4 + 7);
      cf1a = v76;
      if (!v96 || (v97 = v76, CFDataGetLength(*(v96 + 24)) <= 0x13))
      {
        if (!v263 || (v97 = v76, CFDataGetLength(*(v263 + 3)) <= 0x13))
        {
          if (!v261 || (v97 = v76, CFDataGetLength(*(v261 + 3)) <= 0x13))
          {
            v98 = *(a4 + 8);
            v97 = v76;
            if (v98)
            {
              v97 = v76;
              if (CFDataGetLength(*(v98 + 24)) >= 0x14)
              {
                v99 = sub_100006274("engine");
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  v100 = *(a4 + 2);
                  v101 = *(v247 + 24);
                  *buf = 138412546;
                  *&buf[4] = v101;
                  *&buf[12] = 2112;
                  *&buf[14] = v100;
                  _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%@:%@: only have differences in unwanted set; lying to peer to stop sync", buf, 0x16u);
                }

                v97 = v239;
              }
            }
          }
        }
      }

      v102 = v267[3];
      if (v102)
      {
        v103 = sub_10022A4C8(v239);
        v104 = v103;
        if (v103)
        {
          CFRetain(v103);
        }

        *(v102 + 48) = v104;
        v105 = sub_100006274("engine");
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          v144 = *(v102 + 48);
          v145 = v239;
          if (v239)
          {
            cfb = *(v102 + 48);
            Length = CFDataGetLength(v239[3]);
            v144 = cfb;
            v145 = Length / 0x14;
          }

          *buf = 138412546;
          *&buf[4] = v144;
          *&buf[12] = 2048;
          *&buf[14] = v145;
          _os_log_debug_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEBUG, "SOSMessageSetManifests: setting base digest to %@ %zu", buf, 0x16u);
        }

        v106 = sub_10022A4C8(v238);
        v107 = v106;
        if (v106)
        {
          CFRetain(v106);
        }

        *(v102 + 56) = v107;
        v108 = sub_100006274("engine");
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
        {
          v147 = *(v102 + 56);
          v148 = v238;
          if (v238)
          {
            cfc = *(v102 + 56);
            v149 = CFDataGetLength(v238[3]);
            v147 = cfc;
            v148 = v149 / 0x14;
          }

          *buf = 138412546;
          *&buf[4] = v147;
          *&buf[12] = 2048;
          *&buf[14] = v148;
          _os_log_debug_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEBUG, "SOSMessageSetManifests: setting proposed digest to %@ %zu", buf, 0x16u);
        }

        v109 = sub_10022A4C8(v97);
        v110 = v109;
        if (v109)
        {
          CFRetain(v109);
        }

        *(v102 + 40) = v110;
        v111 = sub_100006274("engine");
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          v150 = *(v102 + 40);
          if (v97)
          {
            v152 = v97[3];
            v153 = *(v102 + 40);
            v154 = CFDataGetLength(v152);
            v150 = v153;
            v151 = v154 / 0x14;
          }

          else
          {
            v151 = 0;
          }

          *buf = 138412546;
          *&buf[4] = v150;
          *&buf[12] = 2048;
          *&buf[14] = v151;
          _os_log_debug_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEBUG, "SOSMessageSetManifests: setting sender digest to %@ %zu", buf, 0x16u);
        }

        if (v238)
        {
          *buf = 0;
          v112 = sub_10022A898(v239, v238, (v102 + 64), buf, a10);
          if (*(v102 + 112))
          {
            *(v102 + 72) = sub_10022ACE4(v78, *buf, a10);
            if (*buf)
            {
              CFRelease(*buf);
            }
          }

          else
          {
            *(v102 + 72) = *buf;
          }

          if ((v112 & 1) == 0)
          {
            v113 = sub_100006274("engine");
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              v114 = *(a4 + 2);
              v115 = *(v247 + 24);
              *buf = 138412546;
              *&buf[4] = v115;
              *&buf[12] = 2112;
              *&buf[14] = v114;
              _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "%@:%@: failed to set message manifests", buf, 0x16u);
            }

            v116 = v267[3];
            if (v116)
            {
              v267[3] = 0;
              CFRelease(v116);
            }
          }
        }
      }

      if (v79)
      {
        CFRelease(v79);
      }

      v117 = v267[3];
      v118 = cf1a;
      v119 = v238;
      if (v117)
      {
        v120 = *(a4 + 5) + 1;
        *(a4 + 5) = v120;
        *(v117 + 96) = v120;
        if (*(v117 + 112))
        {
          *(v117 + 104) = floor(CFAbsoluteTimeGetCurrent());
          if (*(v117 + 40))
          {
            *buf = *(v117 + 88);
            sub_100013024();
            ccder_sizeof();
            ccder_sizeof_uint64();
            ccn_bitlen();
            ccder_sizeof();
            v121 = *(v117 + 40);
            if (v121)
            {
              CFDataGetLength(v121);
              ccder_sizeof_implicit_raw_octet_string();
            }

            v122 = *(v117 + 48);
            if (v122)
            {
              CFDataGetLength(v122);
              ccder_sizeof_implicit_raw_octet_string();
            }

            v123 = *(v117 + 56);
            if (v123)
            {
              CFDataGetLength(v123);
              ccder_sizeof_implicit_raw_octet_string();
            }

            v124 = ccder_sizeof();
          }

          else
          {
            v124 = 0;
          }

          v126 = *(v117 + 64);
          v127 = *(v117 + 72);
          if (*(v117 + 64) == 0)
          {
            v128 = 0;
          }

          else
          {
            v129 = *(v117 + 112);
            if (v126)
            {
              CFDataGetLength(*(v126 + 24));
              v127 = *(v117 + 72);
            }

            v133 = ccder_sizeof();
            if (v127)
            {
              CFDataGetLength(*(v127 + 24));
            }

            v128 = ccder_sizeof() + v133;
            if (v129)
            {
              v128 = ccder_sizeof();
            }
          }

          v134 = sub_10022D5C4(v117) + v128 + v124;
          if (*(v117 + 120) == 1)
          {
            v135 = 0;
            v132 = (v134 + 4);
          }

          else
          {
            v132 = ccder_sizeof();
            v135 = 0;
          }

          goto LABEL_292;
        }

        *(v117 + 120) = 0;
        v125 = sub_10022D11C(v117);
        if (v125 > 1)
        {
          if (v125 == 2)
          {
            v130 = *(v117 + 72);
            if (v130)
            {
              ccder_sizeof_uint64();
              v131 = *(v130 + 24);
              if (v131)
              {
                CFDataGetLength(v131);
                ccder_sizeof_implicit_raw_octet_string();
              }

              v132 = ccder_sizeof();
            }

            else
            {
              SOSErrorCreate();
              v132 = 0;
            }

            v135 = 2;
          }

          else
          {
            v141 = *(v117 + 48);
            if (v141 && CFDataGetLength(v141) == 20)
            {
              ccder_sizeof_uint64();
              ccder_sizeof_raw_octet_string();
              v142 = *(v117 + 64);
              if (v142)
              {
                v143 = *(v142 + 24);
                if (v143)
                {
                  CFDataGetLength(v143);
                  ccder_sizeof_implicit_raw_octet_string();
                }
              }

              v155 = *(v117 + 72);
              if (v155)
              {
                v156 = *(v155 + 24);
                if (v156)
                {
                  CFDataGetLength(v156);
                  ccder_sizeof_implicit_raw_octet_string();
                }
              }

              sub_10022D5C4(v117);
              ccder_sizeof();
              v132 = ccder_sizeof();
            }

            else
            {
              SOSErrorCreate();
              v132 = 0;
            }

            v135 = 3;
          }

LABEL_292:
          Mutable = CFDataCreateMutable(0, v132);
          if (!Mutable)
          {
            cfa = 0;
LABEL_339:
            v118 = cf1a;
            v119 = v238;
            goto LABEL_340;
          }

          v158 = Mutable;
          CFDataSetLength(Mutable, v132);
          cfa = v158;
          MutableBytePtr = CFDataGetMutableBytePtr(v158);
          v160 = &MutableBytePtr[v132];
          if (v135 > 1)
          {
            queueb = v160;
            if (v135 != 2)
            {
              v169 = sub_100006274("engine");
              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
              {
                v217 = *(v117 + 48);
                *buf = 138412290;
                *&buf[4] = v217;
                _os_log_debug_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEBUG, "der_encode_manifest_and_objects_message: encoded base digest as %@", buf, 0xCu);
              }

              CFDataGetBytePtr(*(v117 + 48));
              v170 = *(v117 + 64);
              if (v170)
              {
                v171 = *(v170 + 24);
              }

              else
              {
                v171 = 0;
              }

              v172 = *(v117 + 72);
              if (v172)
              {
                v173 = *(v172 + 24);
              }

              else
              {
                v173 = 0;
              }

              v174 = sub_10022D680(v117, MutableBytePtr, queueb);
              v175 = sub_10022D7F4(4, v173, MutableBytePtr, v174);
              sub_10022D7F4(4, v171, MutableBytePtr, v175);
              ccder_encode_raw_octet_string();
              ccder_encode_constructed_tl();
              ccder_encode_uint64();
              v176 = ccder_encode_constructed_tl();
              goto LABEL_335;
            }

            v165 = sub_100006274("engine");
            if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
            {
              v213 = *(v117 + 72);
              if (v213)
              {
                v215 = CFDataGetLength(*(v213 + 24)) / 0x14uLL;
                v214 = *(v117 + 72);
              }

              else
              {
                v214 = 0;
                v215 = 0;
              }

              v218 = sub_10022A4C8(v214);
              *buf = 134218242;
              *&buf[4] = v215;
              *&buf[12] = 2112;
              *&buf[14] = v218;
              _os_log_debug_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEBUG, "der_encode_manifest_message: encoded message additions as (%zu, %@)", buf, 0x16u);
            }

            v166 = *(v117 + 72);
            if (v166)
            {
              v167 = *(v166 + 24);
            }

            else
            {
              v167 = 0;
            }

            sub_10022D7F4(4, v167, MutableBytePtr, queueb);
            ccder_encode_uint64();
          }

          else if (v135)
          {
            v168 = sub_100006274("engine");
            if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
            {
              v216 = *(v117 + 40);
              *buf = 138412290;
              *&buf[4] = v216;
              _os_log_debug_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEBUG, "der_encode_manifest_digest_message: encoded sender digest as %@", buf, 0xCu);
            }

            CFDataGetBytePtr(*(v117 + 40));
            ccder_encode_raw_octet_string();
            ccder_encode_uint64();
          }

          else
          {
            v161 = v160;
            if (*(v117 + 120) == 1)
            {
              v161 = ccder_encode_tl();
            }

            v162 = sub_10022D680(v117, MutableBytePtr, v161);
            v164 = *(v117 + 64);
            v163 = *(v117 + 72);
            if (*(v117 + 64) != 0)
            {
              queuea = v164 ? *(v164 + 24) : 0;
              v177 = *(v117 + 112);
              v178 = v163 ? *(v163 + 24) : 0;
              v179 = sub_10022D7F4(4, v178, MutableBytePtr, v162);
              v162 = sub_10022D7F4(4, queuea, MutableBytePtr, v179);
              if (v177)
              {
                v162 = ccder_encode_constructed_tl();
              }
            }

            v180 = *(v117 + 40);
            if (v180)
            {
              *buf = *(v117 + 88);
              v181 = *(v117 + 104);
              v182 = *(v117 + 48);
              v183 = sub_10022D7F4(0x8000000000000001, *(v117 + 56), MutableBytePtr, v162);
              v184 = sub_10022D7F4(0x8000000000000000, v182, MutableBytePtr, v183);
              sub_10022D7F4(4, v180, MutableBytePtr, v184);
              ccn_bitlen();
              if (ccder_encode_body_nocopy())
              {
                ccn_write_uint_padded();
              }

              ccder_encode_tl();
              v185 = ccder_encode_uint64();
              sub_1000126DC(a10, 0, MutableBytePtr, v185, v181);
              if (!ccder_encode_constructed_tl())
              {
                sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a10, v186, @"ccder failed to encode");
              }

              ccder_encode_constructed_tl();
            }

            if (*(v117 + 120) == 1)
            {
              ccder_encode_len();
              v187 = ccder_encode_tag();
LABEL_334:
              v176 = v187;
LABEL_335:
              if (MutableBytePtr != v176)
              {
                v188 = sub_100006274("SecWarning");
                if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = v176 - MutableBytePtr;
                  _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEFAULT, "internal error %td bytes unused in der buffer", buf, 0xCu);
                }
              }

              v189 = [SOSEnginePeerMessageCallBackInfo alloc];
              v190 = [(SOSEnginePeerMessageCallBackInfo *)v189 initWithEngine:v247 peer:a4 localManifest:cf1a proposedManifest:v238 confirmedManifest:v239 andMessage:v267[3]];
              v252[0] = _NSConcreteStackBlock;
              v252[1] = 3221225472;
              v252[2] = sub_10014EC18;
              v252[3] = &unk_100338188;
              v191 = [(SOSEnginePeerMessageCallBackInfo *)v190 copy];
              v253 = v191;
              [(SOSEnginePeerMessageCallBackInfo *)v190 setCallbackBlock:v252];
              v192 = v190;
              *a9 = v190;

              goto LABEL_339;
            }
          }

          v187 = ccder_encode_constructed_tl();
          goto LABEL_334;
        }

        if (v125)
        {
          v140 = *(v117 + 40);
          if (v140 && CFDataGetLength(v140) == 20)
          {
            v135 = 1;
            ccder_sizeof_uint64();
            ccder_sizeof_raw_octet_string();
            v132 = ccder_sizeof();
          }

          else
          {
            SOSErrorCreate();
            v132 = 0;
            v135 = 1;
          }

          goto LABEL_292;
        }

        cfa = 0;
      }

      else
      {
        cfa = 0;
      }

LABEL_340:
      if (v118)
      {
        CFRelease(v118);
      }

      v193 = v263;
      if (v263)
      {
        v263 = 0;
        CFRelease(v193);
      }

      v194 = v261;
      if (v261)
      {
        v261 = 0;
        CFRelease(v194);
      }

      v195 = v267[3];
      if (v195)
      {
        v267[3] = 0;
        CFRelease(v195);
      }

      if (v119)
      {
        CFRelease(v119);
      }

      if (a10 && *a10)
      {
        v196 = sub_100006274("SecError");
        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          v197 = *(a4 + 2);
          v198 = *(v247 + 24);
          v199 = *a10;
          *buf = 138412802;
          *&buf[4] = v198;
          *&buf[12] = 2112;
          *&buf[14] = v197;
          *&buf[22] = 2112;
          v275 = v199;
          _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%@:%@ error in send: %@", buf, 0x20u);
        }
      }

      goto LABEL_355;
    }

    if ((!cf || CFDataGetLength(cf[3]) <= 0x13) && (!v263 || CFDataGetLength(*(v263 + 3)) <= 0x13))
    {
      *(a4 + 49) = 0;
    }

    if (v261 && CFDataGetLength(*(v261 + 3)) <= 0x13)
    {
      v70 = objc_retainBlock(*(v247 + 136));
      if (v70 && *(v247 + 128))
      {
        v237 = *(a4 + 2);
        if (v237)
        {
          CFRetain(v237);
        }

        v71 = *(a4 + 3);
        if (v71)
        {
          CFRetain(*(a4 + 3));
        }

        v72 = [v70 copy];
        queuec = *(v247 + 128);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10014E294;
        v275 = &unk_1003384B8;
        *&v276[0] = v72;
        *(&v276[0] + 1) = v237;
        *&v276[1] = v71;
        v73 = v72;
        dispatch_async(queuec, buf);
      }

      *(a4 + 50) = 1;
    }

    v74 = sub_10022FCF8(a4);
    if (cf1 && v74)
    {
      if (!CFEqual(cf1, v74))
      {
        goto LABEL_152;
      }
    }

    else if (cf1 != v74)
    {
      goto LABEL_152;
    }

    if (*(a4 + 48))
    {
      goto LABEL_152;
    }

    if (CFEqual(v239, cf1))
    {
      v85 = sub_100006274("engine");
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = *(v247 + 24);
        *buf = 138412546;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = a4;
        v87 = "synced <No MSG> %@:%@";
        v88 = v85;
        v89 = 22;
LABEL_255:
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, v87, buf, v89);
      }
    }

    else
    {
      v80 = cf;
      if (cf && CFDataGetLength(cf[3]) > 0x13)
      {
        goto LABEL_153;
      }

      if (v261 && CFDataGetLength(*(v261 + 3)) > 0x13)
      {
LABEL_152:
        v80 = cf;
        if (!cf)
        {
LABEL_154:
          v75 = 0;
          v78 = 0;
          v76 = cf1;
          goto LABEL_181;
        }

LABEL_153:
        if (CFDataGetLength(v80[3]) >= 0x14)
        {
          v259[0] = 0;
          v259[1] = v259;
          v259[2] = 0x2020000000;
          v259[3] = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x4010000000;
          v275 = "";
          memset(v276, 0, sizeof(v276));
          v81 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          v255 = 0;
          v256 = &v255;
          v257 = 0x2020000000;
          v258 = 0;
          v82 = *(v247 + 16);
          v254[1] = _NSConcreteStackBlock;
          v254[2] = 3221225472;
          v254[3] = sub_10014E2F8;
          v254[4] = &unk_100338160;
          v254[9] = v247;
          v254[10] = a4;
          v254[11] = v81;
          v254[12] = a10;
          v254[5] = &v255;
          v254[6] = &v266;
          v254[13] = a8;
          v254[7] = buf;
          v254[8] = v259;
          v76 = cf1;
          if (((*(v82 + 32))() & 1) == 0)
          {
            v83 = v267[3];
            if (v83)
            {
              v267[3] = 0;
              CFRelease(v83);
            }
          }

          if (*(*&buf[8] + 40))
          {
            v84 = sub_10022ABF8(*&buf[8] + 32, a10);
          }

          else
          {
            v84 = 0;
          }

          if (CFArrayGetCount(v81))
          {
            v254[0] = 0;
            v90 = v247;
            if ((sub_10014C2A8(v247, 0, 2, 0, v81, v254) & 1) == 0)
            {
              v91 = sub_100006274("SecError");
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
              {
                *v270 = 138412546;
                v271 = v81;
                v272 = 2112;
                v273 = v254[0];
                _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "SOSEngineUpdateChanges_locked: %@ failed: %@", v270, 0x16u);
              }

              v76 = cf1;
              v90 = v247;
            }

            if (v254[0])
            {
              CFRelease(v254[0]);
            }

            v92 = sub_10014BF98(v90, a4, a10);
            if (v76)
            {
              CFRelease(v76);
            }

            v76 = v92;
          }

          if (v81)
          {
            CFRelease(v81);
          }

          v93 = *&buf[8];
          free(*(*&buf[8] + 32));
          *(v93 + 32) = 0;
          *(v93 + 40) = 0;
          *(v93 + 56) = 0;
          *(v93 + 48) = 0;
          v94 = v256[3];
          if (v94)
          {
            v256[3] = 0;
            CFRelease(v94);
          }

          _Block_object_dispose(&v255, 8);
          _Block_object_dispose(buf, 8);
          _Block_object_dispose(v259, 8);
          v78 = v84;
          v75 = v84;
          goto LABEL_181;
        }

        goto LABEL_154;
      }

      v85 = sub_100006274("engine");
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v136 = *(v247 + 24);
        *buf = 138412802;
        *&buf[4] = v136;
        *&buf[12] = 2112;
        *&buf[14] = a4;
        *&buf[22] = 2112;
        v275 = v263;
        v87 = "waiting <MSG not resent> %@:%@ extra: %@";
        v88 = v85;
        v89 = 32;
        goto LABEL_255;
      }
    }

    if (cf1)
    {
      CFRelease(cf1);
    }

    v137 = v267[3];
    if (v137)
    {
      v267[3] = 0;
      CFRelease(v137);
    }

    v138 = v263;
    if (v263)
    {
      v263 = 0;
      CFRelease(v138);
    }

    v139 = v261;
    if (v261)
    {
      v261 = 0;
      CFRelease(v139);
    }

    cfa = CFDataCreate(kCFAllocatorDefault, 0, 0);
LABEL_355:
    _Block_object_dispose(&v266, 8);
    if (cfa)
    {
      if (!CFDataGetLength(cfa) && *(a4 + 48) != 1)
      {
        v28 = 1;
LABEL_386:
        CFRelease(cfa);
        goto LABEL_21;
      }

      v248 = CFStringCreateMutable(kCFAllocatorDefault, 0);
      v200 = *(a5 + 24);
      if (v200)
      {
        cf1b = CFCopyDescription(v200);
        if (SecOTRSGetIsReadyForMessages())
        {
          if (*(a5 + 32) != 1)
          {
            v201 = CFDataCreateMutable(kCFAllocatorDefault, 0);
            if (v201)
            {
              MutableCopy = v201;
              v203 = SecOTRSSignAndProtectMessage();
              if (!v203)
              {
                v204 = 0;
                v28 = 1;
LABEL_364:
                v205 = sub_100006274("coder");
                if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
                {
                  v210 = SecOTRPacketTypeString();
                  v211 = *(a5 + 24);
                  v212 = off_100345F38[v204];
                  *buf = 138413570;
                  *&buf[4] = a7;
                  *&buf[12] = 2112;
                  *&buf[14] = cf1b;
                  *&buf[22] = 2080;
                  v275 = v210;
                  LOWORD(v276[0]) = 2112;
                  *(v276 + 2) = v248;
                  WORD5(v276[0]) = 2112;
                  *(v276 + 12) = v211;
                  WORD2(v276[1]) = 2080;
                  *(&v276[1] + 6) = v212;
                  _os_log_debug_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEBUG, "%@ %@ %s %@ %@ returned %s", buf, 0x3Eu);
                }

                if (cf1b)
                {
                  CFRelease(cf1b);
                }

                CFRelease(v248);
                if (v28)
                {
                  if (*a6 != MutableCopy)
                  {
                    if (!MutableCopy || (CFRetain(MutableCopy), *a6))
                    {
                      CFRelease(*a6);
                    }

                    *a6 = MutableCopy;
                  }

                  if ([OTSOSActualAdapter sosEnabled]_0())
                  {
                    *(v247 + 105) = 1;
                  }
                }

                else
                {
                  v208 = sub_100006274("transport");
                  if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
                  {
                    v209 = *a10;
                    *buf = 138412546;
                    *&buf[4] = a7;
                    *&buf[12] = 2112;
                    *&buf[14] = v209;
                    _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "%@ SOSCoderWrap failed: %@", buf, 0x16u);
                  }
                }

                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                goto LABEL_386;
              }

              v221 = a7;
              v222 = v203;
              SOSCreateErrorWithFormat();
              CFRelease(MutableCopy);
            }

            else
            {
              v221 = a7;
              SOSCreateErrorWithFormat();
            }

            if (a10 && *a10)
            {
              CFStringAppendFormat(v248, 0, @" %@", *a10);
            }

            MutableCopy = 0;
            v28 = 0;
            v204 = 3;
            goto LABEL_364;
          }

          v220 = @"waiting for peer to send data packet first";
        }

        else
        {
          v220 = @"not ready";
        }

        CFStringAppend(v248, v220);
        MutableCopy = 0;
        v28 = 0;
        v204 = 1;
        goto LABEL_364;
      }

      CFStringAppend(v248, @"*** using null coder ***");
      v219 = CFDataGetLength(cfa);
      MutableCopy = CFDataCreateMutableCopy(0, v219, cfa);
      v204 = 0;
      cf1b = 0;
      v28 = 1;
      goto LABEL_364;
    }

LABEL_373:
    v206 = sub_100006274("transport");
    if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
    {
      v207 = *a10;
      *buf = 138412546;
      *&buf[4] = a7;
      *&buf[12] = 2112;
      *&buf[14] = v207;
      _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "%@ SOSEngineCreateMessage_locked failed: %@", buf, 0x16u);
    }

    v28 = 0;
LABEL_21:
    if ((*a6 == 0) | sub_100220920(v16, 2))
    {
      goto LABEL_62;
    }

    v29 = a7;
    v30 = sub_10020649C(v16, @"NegotiationRetryCount");
    if (!v30)
    {
      v30 = +[NSMutableDictionary dictionary];
    }

    v31 = [v30 objectForKey:{v29, v221, v222}];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 intValue] > 6;

      if (v33)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

    if (SecOTRSessionIsSessionInAwaitingState() && !sub_10022FEA4(*(a4 + 2), *(a4 + 13)))
    {
      v34 = v29;
      v35 = sub_10020649C(v16, @"PeerNegotiationTimeouts");
      v36 = v35;
      if (v35 && (v37 = CFGetTypeID(v35), v37 == CFDictionaryGetTypeID()))
      {
        if (CFDictionaryGetValue(v36, v34))
        {

          v38 = sub_100006274("otrtimer");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "coder is in awaiting state", buf, 2u);
          }

          sub_1002156C0(v16, a4);
          goto LABEL_62;
        }

        v49 = sub_100006274("otrtimer");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "do not have an rtt yet", buf, 2u);
        }
      }

      else
      {
        v49 = sub_100006274("otrtimer");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "do not have an rtt yet", buf, 2u);
        }
      }
    }

    if (SecOTRSessionIsSessionInAwaitingState())
    {
      if (!sub_10022FEA4(*(a4 + 2), *(a4 + 13)))
      {
        goto LABEL_62;
      }

      v50 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = a5;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "timer for coder already set: %@", buf, 0xCu);
      }
    }

    else
    {
      v50 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = a5;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "coder not in awaiting state: %@", buf, 0xCu);
      }
    }

    goto LABEL_62;
  }

  [v15 setEngine_peer_state_needs_repair:1];
  v20 = sub_100006274("transport");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (a10)
    {
      v21 = *a10;
    }

    else
    {
      v21 = 0;
    }

    *buf = 138412546;
    *&buf[4] = a7;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ getCoder: %@", buf, 0x16u);
  }

  v28 = 0;
LABEL_62:

  return v28;
}

void sub_100232BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100232CAC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    v8 = WeakRetained;
    v5 = [WeakRetained coder];
    v4 = v8;
    v6 = v5;
    WeakRetained = v5[5];
    if (WeakRetained)
    {
      v6[5] = 0;
      CFRelease(WeakRetained);
      v4 = v8;
    }
  }

  return _objc_release_x1(WeakRetained, v4);
}

void sub_100232D1C(uint64_t a1, uint64_t a2)
{
  PeerID = SOSPeerInfoGetPeerID();
  if (CFEqual(*(a1 + 32), PeerID))
  {
    return;
  }

  v4 = SOSPeerInfoCopySerialNumber();
  v5 = *(a1 + 40);
  if (!v4 || !v5)
  {
    if (v5 != v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(v5, v4))
  {
LABEL_8:
    CFSetAddValue(*(a1 + 48), PeerID);
LABEL_9:
    if (!v4)
    {
      return;
    }
  }

  CFRelease(v4);
}

uint64_t sub_100232DC8(void *a1)
{
  v1 = a1;
  v2 = [v1 peerID];
  if (v2)
  {
    v3 = [v1 trust];
    v4 = [v3 trustedCircle];

    if (v4)
    {
      v5 = [v1 trust];
      [v5 trustedCircle];
      v2 = SOSCircleCopyCircle();

      if (v2)
      {
        if ([v1 peerInfo])
        {
          Class = SOSPeerInfoGetClass();
          if (Class <= 5 && ((1 << Class) & 0x34) != 0)
          {
            if (SOSPeerInfoSerialNumberIsSet())
            {
              v7 = SOSPeerInfoCopySerialNumber();
              if (v7)
              {
                v8 = v7;
                PeerID = SOSPeerInfoGetPeerID();
                Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
                if (Mutable)
                {
                  v11 = Mutable;
                  v21 = _NSConcreteStackBlock;
                  v22 = 3221225472;
                  v23 = sub_100232D1C;
                  v24 = &unk_100346398;
                  v25 = PeerID;
                  v26 = v8;
                  v27 = Mutable;
                  SOSCircleForEachPeer();
                  CFRelease(v8);
                  if (CFSetGetCount(v11))
                  {
                    SOSCircleRemovePeersByIDUnsigned();
                  }

                  v12 = v11;
                }

                else
                {
                  v12 = v8;
                }

                CFRelease(v12);
              }
            }
          }
        }

        SOSCircleRemoveRetired();
        v25 = objc_alloc_init(NSMutableSet);
        v13 = v25;
        SOSCircleForEachiCloudIdentityPeer();
        SOSCircleRemovePeersByIDUnsigned();

        v25 = objc_alloc_init(NSMutableSet);
        v14 = v25;
        SOSCircleForEachActivePeer();
        SOSCircleRemovePeersByIDUnsigned();

        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = sub_1002332C4;
        v25 = sub_1002332D4;
        v26 = 0;
        if (+[SOSAuthKitHelpers accountIsCDPCapable])
        {
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_1002332DC;
          v20[3] = &unk_1003463E8;
          v20[4] = &v21;
          [SOSAuthKitHelpers activeMIDs:v20];
        }

        v15 = objc_alloc_init(NSMutableSet);
        v16 = v15;
        if (*(v22 + 40))
        {
          v19 = v15;
          SOSCircleForEachActivePeer();
          SOSCircleRemovePeersByIDUnsigned();
        }

        _Block_object_dispose(&v21, 8);
        v17 = SOSCircleCountPeers();
        CFRelease(v2);
        v2 = v17 == 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_1002331D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002331EC(uint64_t a1, uint64_t a2)
{
  v3 = SOSPeerInfoGetPeerID();
  [*(a1 + 32) addObject:v3];
}

void sub_100233244(uint64_t a1, uint64_t a2)
{
  v4 = SOSPeerInfoGetPeerDeviceType();
  if ([v4 hasPrefix:@"Windows"])
  {
    v3 = SOSPeerInfoGetPeerID();
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t sub_1002332C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002332DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SOSAuthKitHelpers alloc] initWithActiveMIDS:v3];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10023334C(uint64_t a1, uint64_t a2)
{
  v4 = SOSPeerInfoV2DictionaryCopyString();
  if (([*(*(*(a1 + 40) + 8) + 40) midIsValidInList:?] & 1) == 0)
  {
    v3 = SOSPeerInfoGetPeerID();
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1002333DC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = sub_100006274("ghostBust");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Couldn't work on iCloud Identities (%@)", buf, 0xCu);
    }
  }

  v7 = [v4 objectForKeyedSubscript:@"keyOnly"];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"completeIdentity"];
    v10 = [v9 count];

    if (v10)
    {
      v33 = v8;
      v34 = v5;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v35 = v4;
      obj = [v4 objectForKeyedSubscript:@"keyOnly"];
      v11 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (!v11)
      {
        goto LABEL_26;
      }

      v12 = v11;
      v13 = *v39;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v38 + 1) + 8 * v14);
          v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cloud Identity - '%@'", v15);
          if (v16)
          {
            v24 = v16;
            v25 = sub_10001104C(kCFAllocatorDefault, v17, v18, v19, v20, v21, v22, v23, kSecClass, kSecClassKey);
            v26 = SecItemDelete(v25);
            if (v26)
            {
              v27 = v26;
              v28 = sub_100006274("ghostbust");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v43 = v15;
                v44 = 1024;
                LODWORD(v45) = v27;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Delete for %@ returned %d", buf, 0x12u);
              }

              if (v25)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v29 = sub_100006274("ghostBust");
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v43 = v15;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "removed %@", buf, 0xCu);
              }

              ++*(*(*(a1 + 32) + 8) + 24);
              if (v25)
              {
LABEL_17:
                CFRelease(v25);
              }
            }

            CFRelease(v24);
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v30 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        v12 = v30;
        if (!v30)
        {
LABEL_26:

          v31 = sub_100006274("ghostBust");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 134218240;
            v43 = v32;
            v44 = 2048;
            v45 = v33;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Removed %zu of %zu deserted icloud private keys", buf, 0x16u);
          }

          v5 = v34;
          v4 = v35;
          goto LABEL_31;
        }
      }
    }

    v31 = sub_100006274("ghostBust");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No iCloud Identity FPI, can't remove iCloudIdentity extra keys", buf, 2u);
    }

LABEL_31:
  }
}

uint64_t sub_100233878(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if ((v3 & 3) != 0)
  {
    v4 = [*(a1 + 32) peerID];
    v5 = *(a1 + 80);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v4;
    v9 = v6;
    v10 = v7;
    *&v64 = 0;
    *(&v64 + 1) = &v64;
    v65 = 0x2020000000;
    v66 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v11 = objc_alloc_init(NSMutableSet);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v56 = sub_100233FE0;
    v57 = &unk_100346460;
    v12 = v8;
    v58 = v12;
    v63 = v5;
    v13 = v9;
    v59 = v13;
    v14 = v11;
    v60 = v14;
    v61 = &v64;
    v62 = &v51;
    SOSCircleForEachPeer();
    SOSCircleRemovePeersByIDUnsigned();
    v15 = [NSNumber numberWithUnsignedInt:*(*(&v64 + 1) + 24)];
    [v10 setObject:v15 forKeyedSubscript:@"byMID"];

    v16 = [NSNumber numberWithUnsignedInt:*(v52 + 6)];
    [v10 setObject:v16 forKeyedSubscript:@"bySerial"];

    v17 = [v14 count];
    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v64, 8);

    *(*(*(a1 + 56) + 8) + 24) = v17;
    v18 = sub_100006274("ghostbust");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 56) + 8) + 24);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removed %lu ghosts from circle by midlist && serialNumber", &buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v3 = *(a1 + 80);
  }

  if ((v3 & 4) != 0)
  {
    v20 = [*(a1 + 32) peerID];
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v56 = sub_1002341C4;
    v57 = &unk_100346480;
    v58 = Mutable;
    SOSCircleForEachPeer();
    v67.length = CFArrayGetCount(Mutable);
    v67.location = 0;
    CFArraySortValues(Mutable, v67, &SOSPeerInfoCompareByApplicationDate, 0);
    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = objc_alloc_init(NSMutableSet);
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v26 = Count + 1;
      *&v25 = 138412290;
      v50 = v25;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v26 - 2);
        v28 = SOSPeerInfoGetPeerID();
        v29 = [v28 isEqualToString:v20];
        if (ValueAtIndex)
        {
          v30 = v29;
        }

        else
        {
          v30 = 1;
        }

        if (v30)
        {
          goto LABEL_24;
        }

        Class = SOSPeerInfoGetClass();
        if (Class > 5 || ((1 << Class) & 0x34) == 0)
        {
          goto LABEL_24;
        }

        v32 = SOSPeerInfoV2DictionaryCopyString();
        if (v32)
        {
          v33 = [v22 objectForKey:v32];
          v34 = v33 == 0;

          if (v34)
          {
            [v22 setObject:v28 forKey:v32];
            goto LABEL_23;
          }

          v35 = sub_100006274("ghostBust");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            SPID = SOSPeerInfoGetSPID();
            LODWORD(v64) = v50;
            *(&v64 + 4) = SPID;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "There is a more recent peer than %@ for this serial number", &v64, 0xCu);
          }
        }

        else
        {
          v35 = sub_100006274("ghostBust");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v37 = SOSPeerInfoGetSPID();
            LODWORD(v64) = v50;
            *(&v64 + 4) = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Removing peerID (%@) with no serial number", &v64, 0xCu);
          }
        }

        [v23 addObject:v28];
LABEL_23:

LABEL_24:
        --v26;
      }

      while (v26 > 1);
    }

    v38 = [v23 count];
    if (v38)
    {
      SOSCircleRemovePeersByIDUnsigned();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    *(*(*(a1 + 56) + 8) + 24) += v38;
    v39 = [NSNumber numberWithUnsignedInteger:v38];
    [*(a1 + 48) setObject:v39 forKeyedSubscript:@"byAge"];

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v40 = *(*(*(a1 + 56) + 8) + 24);
  v41 = 1;
  if (v40 >= 11)
  {
    v42 = *(*(*(a1 + 56) + 8) + 24);
    do
    {
      v40 = v42 / 0xA;
      v41 *= 10;
      v43 = v42 > 0x6D;
      v42 /= 0xAuLL;
    }

    while (v43);
  }

  v44 = [NSNumber numberWithLongLong:v41 * v40];
  [*(a1 + 48) setObject:v44 forKeyedSubscript:@"total"];

  v45 = *(a1 + 84);
  v46 = 1;
  if (v45 >= 11)
  {
    v47 = *(a1 + 84);
    do
    {
      v45 = v47 / 0xA;
      v46 *= 10;
      v43 = v47 > 0x6D;
      v47 /= 0xAuLL;
    }

    while (v43);
  }

  v48 = [NSNumber numberWithLongLong:v46 * v45];
  [*(a1 + 48) setObject:v48 forKeyedSubscript:@"startCircleSize"];

  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) != 0;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    sub_100217E5C(*(a1 + 32));
    if (sub_100217CE0(*(a1 + 32), 0) || sub_100218648(*(a1 + 32), 0))
    {
      sub_100217CE0(*(a1 + 32), 0);
      [*(a1 + 32) fullPeerInfo];
      *(*(*(a1 + 72) + 8) + 24) = SOSCircleGenerationSign();
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

  return *(*(*(a1 + 72) + 8) + 24);
}

void sub_100233FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100233FE0(uint64_t a1, uint64_t a2)
{
  v3 = SOSPeerInfoGetPeerID();
  if (([v3 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v4 = *(a1 + 72);
    if ((v4 & 2) != 0)
    {
      v5 = SOSPeerInfoV2DictionaryCopyString();
      if (([*(a1 + 40) midIsValidInList:v5] & 1) == 0)
      {
        v8 = sub_100006274("ghostBust");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412290;
          SPID = SOSPeerInfoGetSPID();
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing peerInfo %@ - mid is not in list", &v9, 0xCu);
        }

        [*(a1 + 48) addObject:v3];
        v7 = *(a1 + 56);
        goto LABEL_13;
      }

      v4 = *(a1 + 72);
    }

    if (v4)
    {
      v5 = SOSPeerInfoV2DictionaryCopyString();
      if ([*(a1 + 40) serialIsValidInList:v5])
      {
LABEL_14:

        goto LABEL_15;
      }

      v6 = sub_100006274("ghostBust");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        SPID = SOSPeerInfoGetSPID();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing peerInfo %@ - serial# is not in list", &v9, 0xCu);
      }

      [*(a1 + 48) addObject:v3];
      v7 = *(a1 + 64);
LABEL_13:
      ++*(*(v7 + 8) + 24);
      goto LABEL_14;
    }
  }

LABEL_15:
}

uint64_t sub_1002341CC(const __CFSet *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1002342B8(a1);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_1002343F4;
  v14[3] = &unk_1003464A8;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a6;
  v14[9] = a5;
  v14[4] = &v15;
  v14[5] = v11;
  sub_100259084(a2, v14);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v12;
}

CFDictionaryRef sub_1002342B8(const __CFSet *a1)
{
  Count = CFSetGetCount(a1);
  v3 = 8 * Count;
  v4 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v10[-v4];
  if (__chkstk_darwin(Count))
  {
    v6 = memset(&v10[-v4], 170, v3);
    __chkstk_darwin(v6);
    v7 = &v10[-v4];
    memset(v7, 170, v3);
    CFSetGetValues(a1, v5);
    v8 = 0;
    do
    {
      *&v7[8 * v8++] = SOSPeerInfoGetPeerID();
    }

    while (Count != v8);
  }

  else
  {
    CFSetGetValues(a1, &v10[-v4]);
    v7 = v10;
  }

  return CFDictionaryCreate(0, v7, v5, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

void sub_1002343F4(uint64_t a1, const void *a2)
{
  if (CFDictionaryGetValue(*(a1 + 40), a2) && (v4 = *(a1 + 48), v5 = *(a1 + 64), (v6 = SOSPeerInfoCopyPubKey()) != 0))
  {
    v7 = v6;
    if (sub_100258E88(v4, a2) && SOSPeerInfoApplicationVerify())
    {
      if (sub_1002596F8(v4, v7, v5))
      {
        if (sub_100259778(v4, v7, v5))
        {
          v8 = 0;
        }

        else
        {
          v8 = 6;
        }
      }

      else
      {
        v8 = 7;
      }
    }

    else
    {
      v8 = 4;
    }

    CFRelease(v7);
  }

  else
  {
    v8 = 4;
  }

  v9 = sub_100006274("ring");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = a2;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "concordance-signer-status: %@ -> %d", &v17, 0x12u);
  }

  if (v8 != 7)
  {
    goto LABEL_21;
  }

  PeerID = SOSPeerInfoGetPeerID();
  v11 = *(a1 + 72);
  if (PeerID && v11)
  {
    if (!CFEqual(PeerID, v11))
    {
      goto LABEL_18;
    }

LABEL_19:
    v8 = 4;
    goto LABEL_21;
  }

  if (PeerID == v11)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (SOSPeerInfoIsCloudIdentity())
  {
    goto LABEL_19;
  }

  v8 = 7;
LABEL_21:
  v12 = *(*(a1 + 32) + 8);
  if (v8)
  {
    v13 = *(v12 + 24);
    if (v8 == 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = *(v12 + 24);
    }

    if (v13 == 6)
    {
      v14 = 6;
    }

    if (v8 == 6)
    {
      v15 = 6;
    }

    else
    {
      v15 = v14;
    }

    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  *(v12 + 24) = v16;
}

uint64_t sub_1002345E8(const __CFSet *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 4;
  context[0] = _NSConcreteStackBlock;
  context[1] = 0x40000000;
  context[2] = sub_1002346A8;
  context[3] = &unk_1003464D0;
  context[6] = a3;
  context[7] = a5;
  context[8] = a4;
  context[4] = &v8;
  context[5] = a2;
  CFSetApplyFunction(a1, sub_100234810, context);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1002346A8(void *a1, uint64_t a2)
{
  PeerID = SOSPeerInfoGetPeerID();
  if (!sub_100258E88(a1[5], PeerID))
  {
    return;
  }

  if (!a2)
  {
    goto LABEL_33;
  }

  v5 = a1[5];
  v6 = a1[7];
  v7 = SOSPeerInfoCopyPubKey();
  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = v7;
  if (sub_100258E88(v5, PeerID) && SOSPeerInfoApplicationVerify())
  {
    if (sub_1002596F8(v5, v8, v6))
    {
      if (sub_100259778(v5, v8, v6))
      {
        v9 = 0;
      }

      else
      {
        v9 = 6;
      }

      goto LABEL_10;
    }

    CFRelease(v8);
    v15 = SOSPeerInfoGetPeerID();
    v16 = a1[8];
    if (v15 && v16)
    {
      if (!CFEqual(v15, v16))
      {
LABEL_32:
        if (!SOSPeerInfoIsCloudIdentity())
        {
          v9 = 7;
          goto LABEL_11;
        }
      }
    }

    else if (v15 != v16)
    {
      goto LABEL_32;
    }

LABEL_33:
    v9 = 4;
    goto LABEL_11;
  }

  v9 = 4;
LABEL_10:
  CFRelease(v8);
LABEL_11:
  v10 = *(a1[4] + 8);
  if (v9)
  {
    v11 = *(v10 + 24);
    if (v9 == 7)
    {
      v12 = 7;
    }

    else
    {
      v12 = *(v10 + 24);
    }

    if (v11 == 6)
    {
      v12 = 6;
    }

    if (v9 == 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = v12;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  *(v10 + 24) = v14;
}

uint64_t sub_100234828(uint64_t a1, const __CFSet *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    if (sub_1002595AC(a4))
    {
      v14 = sub_100006274("ring");
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v15)
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ring empty -> trusted", v25, 2u);
        return 0;
      }
    }

    else
    {
      if (sub_1002595AC(a3))
      {
        goto LABEL_12;
      }

      sub_10025844C(a4);
      sub_10025844C(a4);
      Value = CFDictionaryGetValue(*(a4 + 24), @"PeerIDs");
      if (!Value || (v18 = Value, v19 = CFGetTypeID(Value), v19 != CFSetGetTypeID()))
      {
        v18 = 0;
      }

      if (CFSetGetCount(v18) == 1)
      {
LABEL_12:
        v20 = a2;
        v21 = a4;
        v22 = a4;
        v23 = a6;
        v24 = 0;
      }

      else
      {
        if (sub_100258C54(*(a4 + 24), a3))
        {
          SOSCreateError();
          return 1;
        }

        v20 = a2;
        v21 = a3;
        v22 = a4;
        v23 = a6;
        v24 = a7;
      }

      return sub_1002341CC(v20, v21, v22, v23, v24, a8);
    }
  }

  else
  {
    SOSCreateError();
    return 3;
  }

  return result;
}

id sub_100235084()
{
  if (objc_opt_class() && objc_opt_class())
  {
    v0 = +[ACAccountStore defaultStore];
    if (v0)
    {
      v1 = v0;
      v2 = [v0 aa_primaryAppleAccount];
      goto LABEL_11;
    }

    v3 = sub_100006274("sosauthkit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "can't get store", v5, 2u);
    }

    v1 = 0;
  }

  else
  {
    v1 = sub_100006274("sosauthkit");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "ACAccount not available", buf, 2u);
    }
  }

  v2 = 0;
LABEL_11:

  return v2;
}

uint64_t sub_100235330(uint64_t a1, uint64_t a2)
{
  HasString = SOSPeerInfoV2DictionaryHasString();
  if ((HasString & 1) == 0)
  {
    v4 = sub_100006274("sosauthkit");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting PeerInfo MID to %@", &v7, 0xCu);
    }

    SOSPeerInfoV2DictionarySetValue();
  }

  return HasString ^ 1u;
}

void sub_100235850(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a2 deviceList];
    v6 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = objc_opt_new();
          v14 = [v12 machineId];
          [v13 setMachineID:v14];

          v15 = [v12 serialNumber];
          [v13 setSerialNumber:v15];

          [v6 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    if (![v6 count])
    {
      v16 = sub_100006274("sosauthkit");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "found no devices in account", v17, 2u);
      }

      v6 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_100235D90()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100235E28;
  block[3] = &unk_100346E68;
  block[4] = &qword_10039E408;
  if (qword_10039E400 != -1)
  {
    dispatch_once(&qword_10039E400, block);
  }

  return qword_10039E408;
}

CFMutableArrayRef sub_100235E28(uint64_t a1)
{
  result = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100235E68()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100235F00;
  block[3] = &unk_100346E68;
  block[4] = &qword_10039E418;
  if (qword_10039E410 != -1)
  {
    dispatch_once(&qword_10039E410, block);
  }

  return qword_10039E418;
}

CFMutableArrayRef sub_100235F00(uint64_t a1)
{
  result = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100235F40()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100235FD8;
  block[3] = &unk_100346E68;
  block[4] = &qword_10039E428;
  if (qword_10039E420 != -1)
  {
    dispatch_once(&qword_10039E420, block);
  }

  return qword_10039E428;
}

CFMutableArrayRef sub_100235FD8(uint64_t a1)
{
  result = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  **(a1 + 32) = result;
  return result;
}

void sub_100236018(void *a1)
{
  value = a1;
  v1 = sub_100235D90();
  v6.length = CFArrayGetCount(v1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v1, v6, value);
  if (FirstIndexOfValue != -1)
  {
    for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(v1, v7, value))
    {
      CFArrayRemoveValueAtIndex(v1, i);
      v7.length = CFArrayGetCount(v1);
      v7.location = 0;
    }
  }
}

void sub_1002360B4(void *a1)
{
  value = a1;
  v1 = sub_100235F40();
  CFArrayAppendValue(v1, value);
}

void sub_1002360F8(void *a1)
{
  value = a1;
  v1 = sub_100235F40();
  v6.length = CFArrayGetCount(v1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v1, v6, value);
  if (FirstIndexOfValue != -1)
  {
    for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(v1, v7, value))
    {
      CFArrayRemoveValueAtIndex(v1, i);
      v7.length = CFArrayGetCount(v1);
      v7.location = 0;
    }
  }
}

void sub_100236194(void *a1)
{
  value = a1;
  v1 = sub_100235E68();
  v6.length = CFArrayGetCount(v1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v1, v6, value);
  if (FirstIndexOfValue != -1)
  {
    for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(v1, v7, value))
    {
      CFArrayRemoveValueAtIndex(v1, i);
      v7.length = CFArrayGetCount(v1);
      v7.location = 0;
    }
  }
}

void sub_100236230(void *a1)
{
  v1 = a1;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v3 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v4 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (qword_10039E438 != -1)
  {
    dispatch_once(&qword_10039E438, &stru_100346570);
  }

  v6 = sub_100235E68();
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_100236C64;
  v85[3] = &unk_100346598;
  v7 = v1;
  v86 = v7;
  v87 = Mutable;
  v88 = v3;
  v89 = v4;
  v50 = v6;
  [v6 enumerateObjectsUsingBlock:v85];
  v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v8, @"AlwaysKeys", Mutable);
  CFDictionarySetValue(v8, @"FirstUnlockKeys", v3);
  CFDictionarySetValue(v8, @"UnlockedKeys", v4);
  v49 = v8;
  CFDictionarySetValue(v5, @"KeyParameter", v8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v9 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v11 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v12 = sub_100235F40();
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_100236DA4;
  context[3] = &unk_1003465C0;
  v13 = v7;
  v81 = v13;
  v82 = v9;
  v83 = v10;
  v84 = v11;
  v101.length = CFArrayGetCount(v12);
  v101.location = 0;
  CFArrayApplyFunction(v12, v101, sub_100235D78, context);
  v14 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v14, @"AlwaysKeys", v9);
  CFDictionarySetValue(v14, @"FirstUnlockKeys", v10);
  CFDictionarySetValue(v14, @"UnlockedKeys", v11);
  CFDictionarySetValue(v5, @"Circle", v14);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v15 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v16 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v17 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v18 = sub_100235D90();
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100236FA4;
  v75[3] = &unk_1003465C0;
  v19 = v13;
  v76 = v19;
  v77 = v15;
  v78 = v16;
  v79 = v17;
  v102.length = CFArrayGetCount(v18);
  v102.location = 0;
  CFArrayApplyFunction(v18, v102, sub_100235D78, v75);
  v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  cf = v15;
  CFDictionarySetValue(v20, @"AlwaysKeys", v15);
  v47 = v16;
  CFDictionarySetValue(v20, @"FirstUnlockKeys", v16);
  v48 = v17;
  CFDictionarySetValue(v20, @"UnlockedKeys", v17);
  v45 = v20;
  CFDictionarySetValue(v5, @"Message", v20);
  v21 = [qword_10039E430 hasChanged:v5];
  v22 = sub_100006274("key-interests");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = "No Change, Ignoring";
    if (v21)
    {
      v23 = "Registering with CKP";
    }

    *buf = 136315138;
    v91 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Calculating interests done: %s", buf, 0xCu);
  }

  if (v21)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v99[0] = @"Message";
    v99[1] = @"Circle";
    v99[2] = @"KeyParameter";
    obj = [NSArray arrayWithObjects:v99 count:3];
    v56 = v5;
    v53 = [obj countByEnumeratingWithState:&v71 objects:v100 count:16];
    v24 = 0;
    if (v53)
    {
      v52 = *v72;
      do
      {
        v25 = 0;
        do
        {
          if (*v72 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v54 = v25;
          v26 = *(*(&v71 + 1) + 8 * v25);
          v27 = sub_100006274("key-interests");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v91 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating interests: %@", buf, 0xCu);
          }

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v97[0] = @"AlwaysKeys";
          v97[1] = @"FirstUnlockKeys";
          v97[2] = @"UnlockedKeys";
          v55 = [NSArray arrayWithObjects:v97 count:3];
          v58 = [v55 countByEnumeratingWithState:&v67 objects:v98 count:16];
          if (v58)
          {
            v57 = *v68;
            do
            {
              v28 = 0;
              do
              {
                v61 = v24;
                if (*v68 != v57)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = v28;
                v29 = *(*(&v67 + 1) + 8 * v28);
                v30 = [(__CFDictionary *)v5 objectForKeyedSubscript:v26];
                v31 = [v30 objectForKeyedSubscript:v29];

                v59 = [v31 count];
                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                v66 = 0u;
                v32 = v31;
                v33 = [v32 countByEnumeratingWithState:&v63 objects:v96 count:16];
                if (v33)
                {
                  v34 = v33;
                  v35 = *v64;
                  do
                  {
                    for (i = 0; i != v34; i = i + 1)
                    {
                      if (*v64 != v35)
                      {
                        objc_enumerationMutation(v32);
                      }

                      v37 = *(*(&v63 + 1) + 8 * i);
                      v38 = sub_100006274("key-interests");
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412802;
                        v91 = v26;
                        v92 = 2112;
                        v93 = v29;
                        v94 = 2112;
                        v95 = v37;
                        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " key-intrest: %@->%@: %@", buf, 0x20u);
                      }
                    }

                    v34 = [v32 countByEnumeratingWithState:&v63 objects:v96 count:16];
                  }

                  while (v34);
                }

                v24 = &v61[v59];

                v28 = v60 + 1;
                v5 = v56;
              }

              while ((v60 + 1) != v58);
              v58 = [v55 countByEnumeratingWithState:&v67 objects:v98 count:16];
            }

            while (v58);
          }

          v25 = v54 + 1;
        }

        while ((v54 + 1) != v53);
        v53 = [obj countByEnumeratingWithState:&v71 objects:v100 count:16];
      }

      while (v53);
    }

    v39 = sub_100006274("key-interests");
    v40 = v48;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v91 = v24;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Pushing %lu interests to CKP", buf, 0xCu);
    }

    v41 = sub_100228CC0(v19);
    v42 = dispatch_get_global_queue(-2, 0);
    v62 = v19;
    SOSCloudKeychainUpdateKeys();

    v44 = v49;
    v43 = v50;
    if (v41)
    {
      CFRelease(v41);
    }

    v5 = v56;
  }

  else
  {
    [v19 setKey_interests_need_updating:0];
    v44 = v49;
    v43 = v50;
    v40 = v48;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_100236C64(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 SOSTransportKeyParameterGetAccount:v3];
  v5 = v4;
  if (v4 == a1[4])
  {
    v6 = [v3 SOSTransportKeyParameterGetTransportType:v3 err:0];

    if (v6 == 1)
    {
      cf = 0;
      if (([v3 SOSTransportKeyParameterKVSAppendKeyInterests:v3 ak:a1[5] firstUnLock:a1[6] unlocked:a1[7] err:&cf] & 1) == 0)
      {
        v7 = sub_100006274("key-interests");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v11 = cf;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error getting key parameters interests %@", buf, 0xCu);
        }
      }

      v8 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v8);
      }
    }
  }

  else
  {
  }
}

void sub_100236DA4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getAccount];
  v5 = [v4 isEqual:a1[4]];

  if (v5)
  {
    v6 = v3;
    cf = 0;
    if (([v6 kvsAppendKeyInterest:a1[5] firstUnlock:a1[6] unlocked:a1[7] err:&cf] & 1) == 0)
    {
      v7 = sub_100006274("key-interests");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = cf;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error getting circle interests %@", buf, 0xCu);
      }
    }

    if (([v6 kvsAppendRingKeyInterest:a1[5] firstUnlock:a1[6] unlocked:a1[7] err:&cf] & 1) == 0)
    {
      v8 = sub_100006274("key-interests");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = cf;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error getting ring interests %@", buf, 0xCu);
      }
    }

    if (([v6 kvsAppendDebugKeyInterest:a1[5] firstUnlock:a1[6] unlocked:a1[7] err:&cf] & 1) == 0)
    {
      v9 = sub_100006274("key-interests");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = cf;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error getting debug key interests %@", buf, 0xCu);
      }
    }

    v10 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v10);
    }
  }
}

void sub_100236FA4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 SOSTransportMessageGetAccount];
  v5 = v4;
  if (v4 == a1[4])
  {
    v6 = [v3 SOSTransportMessageGetTransportType];

    if (v6 == 1)
    {
      cf = 0;
      if (([v3 SOSTransportMessageKVSAppendKeyInterest:v3 ak:a1[5] firstUnlock:a1[6] unlocked:a1[7] err:&cf] & 1) == 0)
      {
        v7 = sub_100006274("key-interests");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v11 = cf;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error getting message interests %@", buf, 0xCu);
        }
      }

      v8 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v8);
      }
    }
  }

  else
  {
  }
}

id sub_1002370D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_100006274("key-interests");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error updating keys: %@", &v8, 0xCu);
    }

    [*(a1 + 32) setKey_interests_need_updating:1];
    return [qword_10039E430 reset];
  }

  else
  {
    v7 = *(a1 + 32);

    return [v7 setKey_interests_need_updating:0];
  }
}

void sub_1002371E8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10039E430;
  qword_10039E430 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100237224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10023723C(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (!cf)
  {
    goto LABEL_32;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFStringGetTypeID())
  {
    goto LABEL_32;
  }

  KeyTypeAndParse = SOSKVSKeyGetKeyTypeAndParse();
  if (KeyTypeAndParse > 4)
  {
    if (KeyTypeAndParse > 7)
    {
      if ((KeyTypeAndParse - 8) >= 3)
      {
        goto LABEL_32;
      }
    }

    else if (KeyTypeAndParse != 5)
    {
      if (KeyTypeAndParse == 6 && *(a1 + 96) == 1)
      {
        v13 = *(a1 + 80);
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v9 = sub_100006274("updates");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = cf;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unknown key '%@', ignoring", buf, 0xCu);
    }

    goto LABEL_32;
  }

  if (KeyTypeAndParse > 1)
  {
    if (KeyTypeAndParse == 2)
    {
      if (a3)
      {
        v17 = CFGetTypeID(a3);
        if (v17 == CFDataGetTypeID())
        {
          CFRetain(a3);
          *(*(*(a1 + 40) + 8) + 24) = a3;
        }
      }

      goto LABEL_32;
    }

    if (KeyTypeAndParse == 3)
    {
      if (*(a1 + 96) == 1)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      goto LABEL_32;
    }

    if (*(a1 + 96) != 1)
    {
      goto LABEL_32;
    }

    v8 = *(a1 + 64);
LABEL_21:
    Value = CFDictionaryGetValue(v8, 0);
    if (!Value || (Mutable = Value, v12 = CFGetTypeID(Value), v12 != CFDictionaryGetTypeID()))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v8, 0, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v13 = Mutable;
    goto LABEL_31;
  }

  if (!KeyTypeAndParse)
  {
    v13 = *(a1 + 48);
LABEL_31:
    CFDictionarySetValue(v13, 0, a3);
    goto LABEL_32;
  }

  if (KeyTypeAndParse == 1 && *(a1 + 96) == 1)
  {
    v8 = *(a1 + 56);
    goto LABEL_21;
  }

LABEL_32:
  v14 = *(a1 + 88);
  if (v14 && *v14)
  {
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = **(a1 + 88);
      *buf = 138412802;
      v19 = cf;
      v20 = 2112;
      v21 = a3;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Peer message processing error for: %@ -> %@ (%@)", buf, 0x20u);
    }
  }
}

void sub_100237624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 SOSTransportKeyParameterGetAccount:v3];
  v5 = [v4 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  if (v5 && ([v3 SOSTransportKeyParameterHandleKeyParameterChanges:v3 data:*(*(*(a1 + 40) + 8) + 24) err:0] & 1) == 0)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Transport failed to handle new key parameters: %@", &v7, 0xCu);
    }
  }
}

void sub_100237730(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getAccount];
  v5 = [v4 isEqual:*(*(a1[4] + 8) + 40)];

  if (v5)
  {
    v6 = [v3 handleRetirementMessages:a1[5] err:a1[6]];
    if (v6)
    {
      v7 = v6;
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_100238360;
      context[3] = &unk_1003469D0;
      context[4] = a1[7];
      CFDictionaryApplyFunction(v6, sub_10023845C, context);
      CFRelease(v7);
    }

    else
    {
      v8 = sub_100006274("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transport failed to handle retirement messages: %@", buf, 0xCu);
      }
    }
  }
}

void sub_10023789C(void *a1, void *a2)
{
  v3 = a2;
  cf = 0;
  v22 = 0;
  v4 = [v3 SOSTransportMessageGetAccount];
  v5 = [v4 isEqual:*(*(a1[4] + 8) + 40)];

  if (v5)
  {
    v6 = [v3 SOSTransportMessageHandlePeerMessageReturnsHandledCopy:v3 peerMessages:a1[5] err:&v22];
    if (v6)
    {
      v7 = v6;
      Value = CFDictionaryGetValue(v6, [v3 SOSTransportMessageGetCircleName]);
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFArrayGetTypeID())
        {
          context[0] = _NSConcreteStackBlock;
          context[1] = 3221225472;
          context[2] = sub_1002382B4;
          context[3] = &unk_100347718;
          v11 = v3;
          v12 = a1[4];
          v18 = v11;
          v19 = v12;
          v20 = a1[6];
          v25.length = CFArrayGetCount(v9);
          v25.location = 0;
          CFArrayApplyFunction(v9, v25, sub_100235D78, context);
        }
      }

      if (([v3 SOSTransportMessageFlushChanges:v3 err:&cf] & 1) == 0)
      {
        v13 = sub_100006274("msg");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = cf;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Flush failed: %@", buf, 0xCu);
        }
      }

      v14 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v14);
      }

      CFRelease(v7);
    }

    else
    {
      v15 = sub_100006274("msg");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v22;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No messages handled: %@", buf, 0xCu);
      }
    }

    v16 = v22;
    if (v22)
    {
      v22 = 0;
      CFRelease(v16);
    }
  }
}

void sub_100237B08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getAccount];
  v5 = [v4 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  if (v5)
  {
    v6 = [v3 handleCircleMessagesAndReturnHandledCopy:*(a1 + 40) err:*(a1 + 48)];
    if (v6)
    {
      v7 = v6;
      if (CFArrayGetCount(v6))
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100238250;
        v13[3] = &unk_100346870;
        v14 = *(a1 + 48);
        v21.length = CFArrayGetCount(v7);
        v21.location = 0;
        CFArrayApplyFunction(v7, v21, sub_100235D78, v13);
      }

      else if (CFDictionaryGetCount(*(a1 + 40)))
      {
        v9 = sub_100006274("SecError");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          Count = CFArrayGetCount(v7);
          v11 = CFDictionaryGetCount(*(a1 + 40));
          *buf = 134218498;
          v16 = Count;
          v17 = 2048;
          v18 = v11;
          v19 = 2112;
          v20 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Transport failed to process all circle messages: (%ld/%ld) %@", buf, 0x20u);
        }
      }

      else
      {
        v12 = sub_100006274("circle");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Transport handled no circle messages", buf, 2u);
        }
      }

      CFRelease(v7);
    }

    else
    {
      v8 = sub_100006274("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transport failed to handle circle messages: %@", buf, 0xCu);
      }
    }
  }
}

void sub_100237D7C(void *a1, void *a2)
{
  v3 = [a2 getAccount];
  v4 = [v3 isEqual:*(*(a1[4] + 8) + 40)];

  if (v4)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100238050;
    context[3] = &unk_1003466B0;
    v6 = a1[5];
    v7 = a1[6];
    context[4] = a1[4];
    context[5] = v7;
    context[6] = Mutable;
    CFDictionaryApplyFunction(v6, sub_10023845C, context);
    if (CFArrayGetCount(Mutable))
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1002381F4;
      v9[3] = &unk_1003477F0;
      v9[4] = a1[7];
      v13.length = CFArrayGetCount(Mutable);
      v13.location = 0;
      CFArrayApplyFunction(Mutable, v13, sub_100235D78, v9);
      if (!Mutable)
      {
        return;
      }

      goto LABEL_4;
    }

    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transport failed to handle ring messages: %@", buf, 0xCu);
    }

    if (Mutable)
    {
LABEL_4:
      CFRelease(Mutable);
    }
  }
}

void sub_100237F80(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CFStringAppendFormat(*(a1 + 32), 0, @"%@ ", cf);
    }
  }
}

void sub_100237FE8(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CFStringAppendFormat(*(a1 + 32), 0, @"%@ ", cf);
    }
  }
}

void sub_100238050(uint64_t a1, const void *a2, const __CFData *cf)
{
  if (!cf || (v5 = cf, v6 = CFGetTypeID(cf), v6 != CFDataGetTypeID()))
  {
    v5 = 0;
  }

  v7 = sub_100228868(*(a1 + 40), v5);
  v8 = *(a1 + 40);
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = v9;
  if (v9)
  {
    if ([v9 accountIsChanging])
    {
      v11 = sub_100006274("circleOps");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SOSAccountUpdateRingFromRemote called before signing in to new account", v15, 2u);
      }

LABEL_12:
      CFArrayAppendValue(*(a1 + 48), a2);
      goto LABEL_13;
    }

    v9 = v10;
  }

  if (!sub_100218428(v9, v8))
  {

    if (!v7)
    {
      return;
    }

    goto LABEL_14;
  }

  v12 = [v10 trust];
  v13 = [v10 circle_transport];
  v14 = [v12 handleUpdateRing:v10 prospectiveRing:v7 transport:v13 userPublicKey:objc_msgSend(v10 writeUpdate:"accountKey") err:{0, v8}];

  if (v14)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!v7)
  {
    return;
  }

LABEL_14:

  CFRelease(v7);
}

void sub_1002381F4(uint64_t a1, uint64_t a2)
{
  v3 = SOSRingKeyCreateWithRingName();
  CFArrayAppendValue(*(a1 + 32), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_100238250(uint64_t a1, uint64_t a2)
{
  v3 = SOSCircleKeyCreateWithName();
  CFArrayAppendValue(*(a1 + 40), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_1002382B4(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFStringGetTypeID())
    {
      v4 = [*(*(*(a1 + 40) + 8) + 40) peerID];
      v5 = SOSMessageKeyCreateFromPeerToTransport();

      if (v5)
      {
        CFArrayAppendValue(*(a1 + 48), v5);

        CFRelease(v5);
      }
    }
  }
}

void sub_100238360(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100238400;
  v5[3] = &unk_100346870;
  v4 = *(a1 + 32);
  v5[4] = a2;
  v5[5] = v4;
  v6.length = CFArrayGetCount(theArray);
  v6.location = 0;
  CFArrayApplyFunction(theArray, v6, sub_100235D78, v5);
}

void sub_100238400(uint64_t a1)
{
  v2 = SOSRetirementKeyCreateWithCircleNameAndPeer();
  CFArrayAppendValue(*(a1 + 40), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t sub_100238478()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100238510;
  block[3] = &unk_100346E68;
  block[4] = &qword_10039E448;
  if (qword_10039E440 != -1)
  {
    dispatch_once(&qword_10039E440, block);
  }

  return qword_10039E448;
}

uint64_t sub_100238510(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

__CFString *sub_100238544(void *a1)
{
  sub_100017B30();

  return sub_10023857C(a1);
}

__CFString *sub_10023857C(void *a1)
{
  v2 = SOSGenerationCountCopyDescription();
  v3 = SOSCopyIDOfDataBufferWithLength();
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<SOSRecoveryKeyBag@%p DSID: %@ version: %d  gencount: %@  RecoveryKeyID: %@ ", a1, a1[2], a1[4], v2, v3);
  CFStringAppend(Mutable, @">");
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

void sub_100238634(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[5] = 0;

    CFRelease(v4);
  }
}

BOOL sub_10023869C(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = v3 != 0;
  if (!v3)
  {
    SOSCreateError();
  }

  if (!a1[2])
  {
    SOSCreateError();
    v4 = 0;
  }

  if (!a1[3])
  {
    SOSCreateError();
    return 0;
  }

  return v4;
}

uint64_t sub_10023873C(const __CFAllocator *a1, void *a2, const __CFData *a3, uint64_t *a4)
{
  v5 = a2;
  if (!a2)
  {
    goto LABEL_23;
  }

  v8 = sub_10020E324(a2);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = +[ACAccountStore defaultStore];
    v11 = [v10 aa_primaryAppleAccount];
    v9 = [v11 aa_personID];

    sub_100228C18(v5, kSOSDSIDKey, v9, 0);
    if (!v9)
    {
      SOSCreateError();
      v5 = 0;
LABEL_24:
      v14 = 0;
      goto LABEL_13;
    }
  }

  v12 = SOSGenerationCreate();
  v5 = v12;
  if (!a3 || !v12)
  {
LABEL_23:
    SOSCreateError();
    goto LABEL_24;
  }

  sub_100238478();
  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 32) = 1;
    *(Instance + 16) = CFStringCreateCopy(a1, v9);
    if (*(v14 + 24) != v5)
    {
      CFRetain(v5);
      v15 = *(v14 + 24);
      if (v15)
      {
        CFRelease(v15);
      }

      *(v14 + 24) = v5;
    }

    *(v14 + 40) = CFDataCreateCopy(a1, a3);
  }

  else
  {
    SOSCreateError();
  }

LABEL_13:
  if (a4 && *a4)
  {
    v16 = sub_100006274("recovery");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a4;
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Error in SOSRecoveryKeyBagCreateForAccount - %@", &v19, 0xCu);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v14;
}

__CFData *sub_100238980(uint64_t a1, CFErrorRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!sub_10023869C(a1, a2))
  {
    return 0;
  }

  sub_10000E17C(*(a1 + 16));
  SOSGenCountGetDEREncodedSize();
  ccder_sizeof_uint64();
  CFDataGetLength(*(a1 + 40));
  ccder_sizeof_raw_octet_string();
  v4 = ccder_sizeof();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  CFDataSetLength(Mutable, v5);
  if (!sub_100087F00(Mutable, a2, @"Failed to create scratch") || (MutableBytePtr = CFDataGetMutableBytePtr(Mutable), Length = CFDataGetLength(Mutable), MutableBytePtr) && ((v9 = Length, !sub_10023869C(a1, a2)) || (v10 = *(a1 + 16), sub_10001263C(*(a1 + 40), a2, MutableBytePtr, &MutableBytePtr[v9]), ccder_encode_uint64(), v11 = SOSGenCountEncodeToDER(), sub_10000ECFC(v10, a2, MutableBytePtr, v11, v12), ccder_encode_constructed_tl() != MutableBytePtr)))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t sub_100238AFC(const __CFAllocator *a1, CFDataRef theData, CFErrorRef *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  v7 = &BytePtr[CFDataGetLength(theData)];
  if (!BytePtr)
  {
    goto LABEL_8;
  }

  sub_100238478();
  Instance = _CFRuntimeCreateInstance();
  if (sub_100087F00(Instance, a3, @"Recovery bag allocation failed"))
  {
    v9 = ccder_decode_sequence_tl();
    if (!v7)
    {
      sub_100006F3C(kCFAllocatorDefault, (Instance + 16), a3, v9, 0);
      *(Instance + 24) = SOSGenCountCreateFromDER();
      v10 = ccder_decode_uint64();
      v12 = sub_10000B738(a1, (Instance + 40), a3, v10, 0);
      sub_100087E9C(v12 == 0, a3, @"Extra space in sequence");
      if (!v12)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  if (Instance)
  {
LABEL_7:
    CFRelease(Instance);
LABEL_8:
    Instance = 0;
  }

LABEL_9:
  sub_100087E9C(v7 == 0, a3, @"Didn't consume all data supplied");
  if (v7 && Instance)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

void sub_1002391C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100239204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10023921C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 48) + 8) + 40);
  [*(a1 + 32) fullPeerInfo];
  sub_10020649C(v3, @"EscrowRecord");
  *(*(*(a1 + 40) + 8) + 24) = SOSFullPeerInfoReplaceEscrowRecords();
  [*(a1 + 32) fullPeerInfo];
  *(*(*(a1 + 40) + 8) + 24) &= SOSCircleRequestAdmission();
  [*(a1 + 32) setDepartureCode:1];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      SOSFullPeerInfoGetPeerInfo();
      if (SOSPeerInfoGetPeerID() && SOSCircleHasActivePeerWithID())
      {
        [*(a1 + 32) peerInfo];
        SOSCircleAcceptRequest();
      }

      v4 = *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100239568(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) fullPeerInfo];
  if (SOSCircleResetToOffering() && ([*(a1 + 32) setDepartureCode:1], objc_msgSend(*(a1 + 32), "addEscrowToPeerInfo:err:", objc_msgSend(*(a1 + 32), "fullPeerInfo"), *(a1 + 56))) && objc_msgSend(*(a1 + 32), "addiCloudIdentity:key:err:", a2, *(a1 + 48), *(a1 + 56)))
  {
    sub_100215B3C(*(a1 + 40), 0);
    v4 = 1;
    [*(a1 + 40) setNotifyBackupOnExit:1];
  }

  else
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v8 = a2;
      v9 = 2112;
      v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "error resetting circle (%@) to offering: %@", buf, 0x16u);
    }

    return 0;
  }

  return v4;
}

uint64_t sub_100239AFC(uint64_t a1, uint64_t a2)
{
  result = SOSPeerInfoGetPeerID();
  if (result)
  {
    result = [*(a1 + 32) isEqualToString:result];
    if ((result & 1) == 0)
    {
      v4 = *(*(a1 + 40) + 16);

      return v4();
    }
  }

  return result;
}

uint64_t sub_100239CFC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) peerInfo];
  HasPeer = SOSCircleHasPeer();
  updated = SOSCircleUpdatePeerInfo();
  if (HasPeer)
  {
    [*(a1 + 32) accountKey];
    v6 = SOSCircleVerify();
    v7 = *(a1 + 40);
    if (v6)
    {
      updated = updated | [v7 fixICloudIdentities:*(a1 + 32) circle:a2];
    }

    else
    {
      v8 = [v7 upgradeiCloudIdentity:a2 privKey:*(a1 + 48)];
      [*(a1 + 40) removeInvalidApplications:a2 userPublic:{objc_msgSend(*(a1 + 32), "accountKey")}];
      [*(a1 + 40) fullPeerInfo];
      updated = updated | v8 | SOSCircleGenerationSign();
      [*(a1 + 40) setDepartureCode:1];
    }
  }

  v9 = sub_100006274("updatingGenSignature");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = updated;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "we changed the circle? %{BOOL}d", v12, 8u);
  }

  v10 = [*(a1 + 40) iCloudCheckEventHandle:*(a1 + 32)];
  [v10 followup];

  return updated;
}

void sub_10023BB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10023BB48(uint64_t a1, uint64_t a2)
{
  SOSPeerInfoGetPeerID();
  v4 = SOSCircleCopyPeerWithID();
  *(*(*(a1 + 32) + 8) + 24) |= sub_10023BC6C(a2, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

void sub_10023BBDC(uint64_t a1, uint64_t a2)
{
  SOSPeerInfoGetPeerID();
  v4 = SOSCircleCopyPeerWithID();
  *(*(*(a1 + 32) + 8) + 24) |= sub_10023BC6C(v4, a2);
  if (v4)
  {

    CFRelease(v4);
  }
}

BOOL sub_10023BC6C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return a2 != 0;
  }

  v3 = SOSPeerInfoCopyOctagonSigningPublicKey();
  v4 = SOSPeerInfoCopyOctagonEncryptionPublicKey();
  if (a2)
  {
    v5 = SOSPeerInfoCopyOctagonSigningPublicKey();
    v6 = SOSPeerInfoCopyOctagonEncryptionPublicKey();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v8 = sub_10023BFB0(v3, v5);
  v9 = sub_10023BFB0(v4, v6);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v7 = !v8 || !v9;
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

BOOL sub_10023BFB0(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return (a1 | a2) == 0;
  }

  v2 = SecKeyCopySubjectPublicKeyInfo();
  v3 = SecKeyCopySubjectPublicKeyInfo();
  v4 = [v2 isEqual:v3];

  return v4;
}

void sub_10023C5F0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 peerInfo];
  v6 = [v4 trust];

  if ([v6 trustedCircle] && v5)
  {
    SOSPeerInfoGetPeerID();
    v7 = v3;
    SOSCircleForEachPeer();
  }
}

uint64_t sub_10023C6D4(uint64_t a1, uint64_t a2)
{
  result = SOSPeerInfoGetPeerID();
  if (result)
  {
    result = CFEqual(result, *(a1 + 40));
    if (!result)
    {
      v4 = *(*(a1 + 32) + 16);

      return v4();
    }
  }

  return result;
}

void sub_10023CB20(uint64_t a1)
{
  v1 = dispatch_get_global_queue(-2, 0);
  SOSCloudKeychainPutObjectsInCloud();
}

void sub_10023CB84(id a1, __CFDictionary *a2, __CFError *a3)
{
  if (a3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error putting: %@", &v5, 0xCu);
    }
  }
}

void sub_10023CE10(uint64_t a1, uint64_t a2)
{
  v3 = SOSRingKeyCreateWithRingName();
  CFArrayAppendValue(*(a1 + 32), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_10023CFB8(uint64_t a1, uint64_t a2)
{
  SOSPeerInfoGetPeerID();
  v3 = SOSRetirementKeyCreateWithCircleNameAndPeer();
  CFArrayAppendValue(*(a1 + 40), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_10023D0E0(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (!cf || (v6 = CFGetTypeID(cf), TypeID = CFStringGetTypeID(), !a3) || v6 != TypeID || (v8 = CFGetTypeID(a3), v8 != CFDataGetTypeID()))
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error, Key-Value for CircleMessage was not CFString/CFData", buf, 2u);
    }
  }

  v10 = [*(a1 + 32) account];
  v11 = v10;
  err = 0;
  if (v10 && [v10 accountIsChanging])
  {
    v12 = sub_100006274("circleOps");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SOSAccountHandleCircleMessage called before signing in to new account", buf, 2u);
    }

LABEL_48:
    CFArrayAppendValue(*(a1 + 40), cf);
    return;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v13 = CFGetTypeID(a3);
  if (v13 != CFDataGetTypeID())
  {
    v14 = CFGetTypeID(a3);
    if (v14 != CFNullGetTypeID())
    {
      v26 = sub_100006274("circleOps");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Value provided not appropriate for a circle", buf, 2u);
      }

      v27 = CFGetTypeID(a3);
      v28 = CFCopyTypeIDDescription(v27);
      SOSCreateErrorWithFormat();
      if (!v28)
      {
        goto LABEL_43;
      }

      v29 = v28;
      goto LABEL_42;
    }
  }

  v15 = CFGetTypeID(a3);
  if (v15 == CFNullGetTypeID())
  {
LABEL_17:
    v16 = sub_100006274("circleOps");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = a3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No circle found in data: %@", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v17 = SOSCircleCreateFromData();
  if (!v17)
  {
    v30 = sub_100006274("circleOps");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SOSCircleCreateFromData returned NULL.", buf, 2u);
    }

    goto LABEL_43;
  }

  v18 = v17;
  Name = SOSCircleGetName();
  v20 = Name;
  if (cf && Name)
  {
    if (CFEqual(Name, cf))
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

  if (Name != cf)
  {
LABEL_39:
    v31 = sub_100006274("circleOps");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = cf;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Expected circle named %@, got %@", buf, 0x16u);
    }

    SOSCreateErrorWithFormat();
    v29 = v18;
LABEL_42:
    CFRelease(v29);
LABEL_43:
    v32 = sub_100006274("SecError");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "NULL circle found, ignoring ...", buf, 2u);
    }

    v24 = err;
    goto LABEL_46;
  }

LABEL_24:
  v21 = [v11 trust];
  v22 = [v11 circle_transport];
  v23 = [v21 updateCircleFromRemote:v22 newCircle:v18 err:&err];

  CFRelease(v18);
  v24 = err;
  if (v23)
  {
LABEL_46:
    if (v24)
    {
      err = 0;
      CFRelease(v24);
    }

    goto LABEL_48;
  }

  if (err)
  {
    if (CFErrorGetCode(err) == 5)
    {
      Domain = CFErrorGetDomain(v24);
      if (Domain && kSOSErrorDomain)
      {
        if (!CFEqual(Domain, kSOSErrorDomain))
        {
          goto LABEL_54;
        }

LABEL_51:
        v33 = sub_100006274("SecError");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = cf;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Incompatible circle found, abandoning membership: %@", buf, 0xCu);
        }

        goto LABEL_54;
      }

      if (Domain == kSOSErrorDomain)
      {
        goto LABEL_51;
      }
    }

LABEL_54:
    v24 = err;
  }

  v34 = sub_100006274("SecError");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v37 = cf;
    v38 = 2112;
    v39 = a3;
    v40 = 2112;
    v41 = v24;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Error handling circle message %@ (%@): %@", buf, 0x20u);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

void sub_10023D9E4(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    TypeID = CFStringGetTypeID();
    if (a3)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == CFArrayGetTypeID())
        {
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_10023DAD0;
          v10[3] = &unk_100346870;
          v9 = *(a1 + 32);
          v10[4] = cf;
          v10[5] = v9;
          v11.length = CFArrayGetCount(a3);
          v11.location = 0;
          CFArrayApplyFunction(a3, v11, sub_10023DB68, v10);
        }
      }
    }
  }
}

void sub_10023DAD0(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFStringGetTypeID())
    {
      v4 = SOSRetirementKeyCreateWithCircleNameAndPeer();
      CFDictionaryAddValue(*(a1 + 40), v4, kCFNull);
      if (v4)
      {

        CFRelease(v4);
      }
    }
  }
}

void sub_10023E134(id a1, __CFDictionary *a2, __CFError *a3)
{
  if (a3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error putting: %@", &v5, 0xCu);
    }
  }
}

void sub_10023EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10023EEC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  theArray = 0;
  v50 = 0;
  v10 = (a1 + 32);
  v11 = [*(a1 + 32) SOSTransportMessageGetAccount];
  v12 = [*v10 engine];
  v48 = 0;
  LOBYTE(v10) = sub_100230778(v11, v12, a5, a2, a3, &v50, *(a1 + 56), &theArray, &v48, *(a1 + 64));
  v13 = v48;
  *(*(*(a1 + 48) + 8) + 24) = v10;

  v14 = sub_100006274("ratelimit");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = theArray;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "attribute list: %@", &buf, 0xCu);
  }

  if (!theArray)
  {
    theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(theArray, @"NoAttribute");
  }

  if (*(a1 + 72))
  {
    v15 = 1;
  }

  else
  {
    v16 = sub_100006274("ratelimit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "not going to rate limit, currently in initial sync", &buf, 2u);
    }

    v15 = *(a1 + 72);
  }

  v17 = v50;
  if ((v15 & 1) != 0 && v50)
  {
    v18 = sub_100006274("ratelimit");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "not in initial sync!", &buf, 2u);
    }

    v19 = theArray;
    v20 = *(a1 + 32);
    v21 = +[NSDate date];
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v22 = sub_10023F6B8(a2);
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_10023F724;
    v55 = sub_10023F734;
    v56 = 0;
    if (qword_10039E458 == -1)
    {
      if (v19)
      {
LABEL_16:
        v23 = sub_100006274("ratelimit");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          Count = CFArrayGetCount(v19);
          LODWORD(buf) = 134217984;
          *(&buf + 4) = Count;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "number of attributes to review: %lu", &buf, 0xCu);
        }

        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v64 = sub_10023F73C;
        v65 = &unk_100346968;
        v66 = v22;
        v67 = v21;
        v69 = &v51;
        v25 = v20;
        v71 = a2;
        v72 = v17;
        v68 = v25;
        v70 = &v57;
        [(__CFArray *)v19 enumerateObjectsUsingBlock:&buf];

LABEL_25:
        if ([v52[5] count])
        {
          v61[0] = @"timestamp";
          [v21 timeIntervalSince1970];
          v28 = [NSNumber numberWithDouble:?];
          v62[0] = v28;
          v61[1] = @"peerShouldSend";
          v29 = [NSNumber numberWithBool:*(v58 + 24)];
          v61[2] = @"attributeBadness";
          v30 = v52[5];
          v62[1] = v29;
          v62[2] = v30;
          v31 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];
          sub_100011140(@"SOSKVSRateLimitingEvent", v31);
        }

        v32 = *(v58 + 24);
        _Block_object_dispose(&v51, 8);

        _Block_object_dispose(&v57, 8);
        v33 = CFArrayGetCount(theArray);
        v73.location = 0;
        v73.length = v33;
        if (CFArrayContainsValue(theArray, v73, @"com.apple.security.ckks") || (v74.location = 0, v74.length = v33, CFArrayContainsValue(theArray, v74, @"com.apple.sbd")) || (v75.location = 0, v75.length = v33, CFArrayContainsValue(theArray, v75, @"com.apple.securebackupd")))
        {
          v32 = 1;
        }

        v34 = sub_100006274("ratelimit");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v32;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "should send? : %{BOOL}d", &buf, 8u);
        }

        if ((v32 & 1) == 0)
        {
          v44 = sub_100006274("ratelimit");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(a1 + 56);
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "peer is rate limited: %@", &buf, 0xCu);
          }

          goto LABEL_43;
        }

LABEL_34:
        v35 = theArray;
        v36 = *(a1 + 32);
        v37 = sub_10023F6B8(a2);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v64 = sub_10023FD64;
        v65 = &unk_1003469B0;
        v66 = v37;
        v67 = v36;
        v68 = a2;
        v38 = v37;
        v39 = v36;
        [(__CFArray *)v35 enumerateObjectsUsingBlock:&buf];

        v40 = *(*(a1 + 48) + 8);
        if (*(v40 + 24) == 1)
        {
          v41 = [*(a1 + 32) SOSTransportMessageSendMessage:*(a1 + 32) id:*(a1 + 56) messageToSend:v17 err:*(a1 + 64)];
          v40 = *(*(a1 + 48) + 8);
        }

        else
        {
          v41 = 0;
        }

        *(v40 + 24) = v41;
        v42 = *(*(*(a1 + 48) + 8) + 24);
        v43 = v13;
        if ([OTSOSActualAdapter sosEnabled]_0())
        {
          [(SOSEnginePeerMessageCallBackInfo *)v43 callCallback:v42];
        }

        [*(a1 + 32) SOSTransportMessageUpdateLastMessageSentTimetstamp:*(a1 + 40) peer:a2];
LABEL_43:

        CFRelease(v17);
        goto LABEL_44;
      }
    }

    else
    {
      dispatch_once(&qword_10039E458, &stru_100346940);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    *(v58 + 24) = 1;
    goto LABEL_25;
  }

  if (v50)
  {
    goto LABEL_34;
  }

  v26 = sub_100006274("transport");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 56);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "no message to send to peer: %@", &buf, 0xCu);
  }

LABEL_44:
  v46 = theArray;
  if (theArray)
  {
    theArray = 0;
    CFRelease(v46);
  }

  *a6 = *(*(*(a1 + 48) + 8) + 24);
}

void sub_10023F680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

PeerRateLimiter *sub_10023F6B8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    v3 = [[PeerRateLimiter alloc] initWithPeer:a1];
    v2 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    *(a1 + 96) = v2;
  }

  return v2;
}

uint64_t sub_10023F724(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10023F73C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) stateForAccessGroup:v3];
  if (v4 == 2)
  {
    v9 = sub_100006274("ratelimit");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 138412290;
    *&buf[4] = v3;
    v39 = "access group: %@ is being rate limited";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
    goto LABEL_30;
  }

  if (v4 != 1)
  {
    v9 = sub_100006274("ratelimit");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v40 = *(a1 + 72);
    *buf = 138412290;
    *&buf[4] = v40;
    v39 = "no state for limiter for peer: %@";
    goto LABEL_27;
  }

  v5 = [[KeychainItem alloc] initWithAccessGroup:v3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v44 = 0;
  v8 = [v6 judge:v5 at:v7 limitTime:&v44];
  v9 = v44;
  v10 = sub_100006274("ratelimit");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "accessGroup: %@, judged: %lu", buf, 0x16u);
  }

  v11 = [qword_10039E450 objectForKeyedSubscript:v3];
  v12 = [NSNumber numberWithInteger:v8];
  if (([v11 isEqual:v12] & 1) == 0)
  {
    [qword_10039E450 setObject:v12 forKeyedSubscript:v3];
    v13 = *(*(*(a1 + 56) + 8) + 40);
    if (!v13)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v13 = *(*(*(a1 + 56) + 8) + 40);
    }

    [v13 setObject:v12 forKeyedSubscript:v3];
  }

  [v9 timeIntervalSinceDate:*(a1 + 40)];
  if (v17 <= 0.0)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v18 = v17;
    v43 = v5;
    v19 = [*(a1 + 48) SOSTransportMessageGetAccount];
    v20 = *(a1 + 32);
    *buf = 0;
    v21 = v3;
    v22 = v20;
    v23 = sub_10020649C(v19, @"RateLimitCounters");
    if (!v23)
    {
      v23 = objc_alloc_init(NSMutableDictionary);
    }

    v24 = [v22 diagnostics];
    [v23 setObject:v24 forKey:v21];

    sub_100228C18(v19, @"RateLimitCounters", v23, buf);
    v25 = sub_100006274("ratelimit");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "setting a timer for next sync: %@", buf, 0xCu);
    }

    v42 = v11;

    v26 = *(a1 + 80);
    v41 = *(a1 + 72);
    v27 = *(a1 + 32);
    v28 = v21;
    v29 = sub_100006274("ratelimit");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SOSPeerSetNextTimeToSend next time: %d", buf, 8u);
    }

    v30 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v31 = 1000000000 * v18;
    v32 = dispatch_time(0, v31);
    dispatch_source_set_timer(v30, v32, 0xFFFFFFFFFFFFFFFFLL, 0);
    v33 = sub_100006274("ratelimit");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SOSPeerSetNextTimeToSend next time to sync: %llu", buf, 0xCu);
    }

    v34 = [v27 accessGroupToNextMessageToSend];
    [v34 setObject:v26 forKey:v28];

    v35 = *(v41 + 16);
    if (v35)
    {
      CFRetain(*(v41 + 16));
    }

    v11 = v42;
    if (v28)
    {
      CFRetain(v28);
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10023FF7C;
    v47 = &unk_100346988;
    v48 = v35;
    v49 = v28;
    dispatch_source_set_event_handler(v30, buf);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10024008C;
    handler[3] = &unk_100346988;
    handler[4] = v35;
    handler[5] = v28;
    dispatch_source_set_cancel_handler(v30, handler);
    dispatch_resume(v30);
    v36 = [v27 accessGroupToTimer];
    [v36 setObject:v30 forKey:v28];

    v37 = [*(a1 + 32) accessGroupRateLimitState];
    v38 = [[NSNumber alloc] initWithLong:2];
    [v37 setObject:v38 forKey:v28];

    v5 = v43;
  }

LABEL_30:
}

void sub_10023FD64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessGroupToNextMessageToSend];
  v5 = [v4 objectForKey:v3];

  if (!v5)
  {
    goto LABEL_14;
  }

  v20 = 0;
  v6 = [*(a1 + 40) SOSTransportMessageSendMessage:*(a1 + 40) id:*(*(a1 + 48) + 16) messageToSend:v5 err:&v20];
  v7 = v20;
  v8 = sub_100006274("ratelimit");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (v9)
    {
      *buf = 138412546;
      v22 = v5;
      v23 = 2112;
      v24 = v3;
      v11 = "SOSTransportSendPendingMessage: sent pending message: %@ for access group: %@";
      v12 = v8;
      v13 = 22;
      goto LABEL_10;
    }
  }

  else if (v9)
  {
    *buf = 138412290;
    v22 = v20;
    v11 = "SOSTransportSendPendingMessage: could not send message: %@";
    v12 = v8;
    v13 = 12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
  }

  v14 = [*(a1 + 32) accessGroupToNextMessageToSend];
  [v14 removeObjectForKey:v3];

  v15 = [*(a1 + 32) accessGroupToTimer];
  v16 = [v15 objectForKey:v3];

  if (v16)
  {
    dispatch_source_cancel(v16);
  }

  v17 = [*(a1 + 32) accessGroupToTimer];
  [v17 removeObjectForKey:v3];

  v18 = [*(a1 + 32) accessGroupRateLimitState];
  v19 = [[NSNumber alloc] initWithLong:1];
  [v18 setObject:v19 forKey:v3];

LABEL_14:
}

void sub_10023FF7C(uint64_t a1)
{
  v4 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100256678;
  v2[3] = &unk_100346AB8;
  v3 = *(a1 + 32);
  sub_1002497A8(&v4, v2);
  if (v4)
  {
    v1 = sub_100006274("SecError");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "error sending next message: %@", buf, 0xCu);
    }
  }
}

void sub_10024008C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_1002400DC(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_10039E450;
  qword_10039E450 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10024041C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100240440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  if (a3)
  {
    v10 = *(a1 + 64);
    v182 = 0;
    if (v10)
    {
      if (*(a3 + 24))
      {
        Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
        v12 = CFCopyDescription(*(a3 + 24));
        v13 = SecOTRSGetMessageKind();
        if (v13 != 1)
        {
          if (v13)
          {
            v27 = sub_100006274("SecError");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0]) = 138412546;
              *(buf + 4) = v7;
              WORD2(buf[1]) = 2112;
              *(&buf[1] + 6) = v10;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@ Unknown packet type: %@", buf, 0x16u);
            }

            SOSCreateError();
          }

          else
          {
            v14 = CFDataCreateMutable(kCFAllocatorDefault, 0);
            if (v14)
            {
              v15 = v14;
              v16 = SecOTRSProcessPacket();
              if (v16 == -26275)
              {
                CFStringAppend(Mutable, @"resending dh");
                v19 = sub_100229684(a3);
              }

              else if (v16)
              {
                v145 = v7;
                v146 = v16;
                SOSCreateErrorWithFormat();
                v19 = 3;
              }

              else if (CFDataGetLength(v15) < 2)
              {
                if (SecOTRSGetIsReadyForMessages())
                {
                  CFStringAppend(Mutable, @"completed negotiation");
                  *(a3 + 32) = 0;
                  v19 = 2;
                }

                else
                {
                  CFStringAppend(Mutable, @"stuck?");
                  v19 = 1;
                }
              }

              else
              {
                v17 = SecOTRPacketTypeString();
                CFStringAppendFormat(Mutable, 0, @"Sending OTR Response %s", v17);
                if (*(a3 + 40) != v15)
                {
                  CFRetain(v15);
                  v18 = *(a3 + 40);
                  if (v18)
                  {
                    CFRelease(v18);
                  }

                  *(a3 + 40) = v15;
                }

                v19 = 1;
                if (SecOTRSGetIsReadyForMessages())
                {
                  CFStringAppend(Mutable, @" begin waiting for data packet");
                  *(a3 + 32) = 1;
                }
              }

              CFRelease(v15);
              MutableCopy = 0;
              goto LABEL_62;
            }

            v145 = v7;
            SOSCreateErrorWithFormat();
          }

          MutableCopy = 0;
          v19 = 3;
LABEL_62:
          if (v8 && v19 == 3 && *v8)
          {
            CFStringAppendFormat(Mutable, 0, @" %@", *v8);
          }

          v34 = sub_100006274("coder");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = SecOTRPacketTypeString();
            v36 = *(a3 + 24);
            if (v19 > 5)
            {
              v37 = "StatusUnknown";
            }

            else
            {
              v37 = off_100345F38[v19];
            }

            LODWORD(buf[0]) = 138413570;
            *(buf + 4) = v7;
            WORD2(buf[1]) = 2112;
            *(&buf[1] + 6) = v12;
            HIWORD(buf[2]) = 2080;
            v191 = v35;
            LOWORD(v192[0]) = 2112;
            *(v192 + 2) = Mutable;
            WORD1(v192[1]) = 2112;
            *(&v192[1] + 4) = v36;
            WORD2(v192[2]) = 2080;
            *(&v192[2] + 6) = v37;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ %@ %s %@ %@ returned %s", buf, 0x3Eu);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          CFRelease(Mutable);
LABEL_74:
          v38 = CFDictionaryGetValue(*(a2 + 104), *(a2 + 16));
          if (v38)
          {
            v39 = sub_100006274("otrtimer");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0]) = 138412290;
              *(buf + 4) = a2;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "removing timer for peer: %@", buf, 0xCu);
            }

            CFDictionaryRemoveValue(*(a2 + 104), *(a2 + 16));
            dispatch_source_cancel(v38);
          }

          if (v19 <= 2)
          {
            if (!v19)
            {
              v45 = 1;
              if (!MutableCopy)
              {
                goto LABEL_115;
              }

              goto LABEL_114;
            }

            if (v19 == 1)
            {
              v42 = sub_100006274("engine");
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf[0]) = 138412290;
                *(buf + 4) = v7;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ engine negotiating", buf, 0xCu);
              }
            }

            else
            {
              *(a2 + 48) = 1;
              sub_10022FC58((a2 + 80), *(a2 + 72));
              *a6 = 1;
              v42 = sub_100006274("engine");
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf[0]) = 138412290;
                *(buf + 4) = v7;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ engine negotiation complete", buf, 0xCu);
              }
            }
          }

          else
          {
            if (v19 > 4)
            {
              if (v19 == 5)
              {
                v43 = sub_100006274("engine");
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0]) = 138412290;
                  *(buf + 4) = v7;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@ engine received a message too soon, time to restart", buf, 0xCu);
                }

                sub_1002295FC(a3);
                if (sub_10022936C(a3, &v182) == 3)
                {
                  v44 = sub_100006274("SecError");
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf[0]) = 138412290;
                    *(buf + 4) = v182;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Attempt to recover coder failed to restart: %@", buf, 0xCu);
                  }

                  goto LABEL_112;
                }

LABEL_113:
                v45 = 0;
                if (!MutableCopy)
                {
                  goto LABEL_115;
                }

                goto LABEL_114;
              }

              *(a2 + 48) = 1;
LABEL_105:
              v45 = 2;
              if (!MutableCopy)
              {
LABEL_115:

                v46 = v182;
                if (v182)
                {
                  v182 = 0;
                  CFRelease(v46);
                }

                goto LABEL_117;
              }

LABEL_114:
              CFRetain(MutableCopy);
              CFRelease(MutableCopy);
              goto LABEL_115;
            }

            if (v19 == 3)
            {
              v40 = sub_100006274("engine");
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                if (v8)
                {
                  v41 = *v8;
                }

                else
                {
                  v41 = 0;
                }

                LODWORD(buf[0]) = 138412546;
                *(buf + 4) = v7;
                WORD2(buf[1]) = 2112;
                *(&buf[1] + 6) = v41;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@ engine failed handling message %@", buf, 0x16u);
              }

              sub_1002295FC(a3);
              if (sub_10022936C(a3, &v182) == 3)
              {
                v44 = sub_100006274("SecError");
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0]) = 138412290;
                  *(buf + 4) = v182;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Attempt to recover coder failed to restart: %@", buf, 0xCu);
                }

LABEL_112:

                goto LABEL_113;
              }

              goto LABEL_113;
            }

            v42 = sub_100006274("engine");
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf[0]) = 138412290;
              *(buf + 4) = v7;
              _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%@ engine stale event ignored", buf, 0xCu);
            }
          }

          goto LABEL_105;
        }

        log = v8;
        v155 = v12;
        theString = Mutable;
        v22 = v7;
        v23 = *(a3 + 48);
        v24 = ccsha1_di();
        CFDataGetBytePtr(v10);
        CFDataGetLength(v10);
        v25 = *v24;
        if (*v24 < 0)
        {
          v26 = 0;
        }

        else
        {
          v26 = CFDataCreateMutable(kCFAllocatorDefault, 0);
          CFDataSetLength(v26, v25);
          CFDataGetMutableBytePtr(v26);
          ccdigest();
        }

        *(a3 + 48) = v26;
        v28 = *(a3 + 56);
        *(a3 + 56) = 0;
        v7 = v22;
        v29 = v23;
        if ((SecOTRSGetIsReadyForMessages() & 1) == 0)
        {
          Mutable = theString;
          CFStringAppend(theString, @"not ready for data; resending DH packet");
          v19 = sub_100229684(a3);
          MutableCopy = 0;
          v8 = log;
LABEL_60:
          if (v29)
          {
            CFRelease(v29);
          }

          goto LABEL_62;
        }

        Mutable = theString;
        if (*(a3 + 32) == 1)
        {
          CFStringAppend(theString, @"got data packet we were waiting for ");
          *(a3 + 32) = 0;
        }

        MutableCopy = CFDataCreateMutable(0, 0);
        v30 = SecOTRSVerifyAndExposeMessage();
        CFStringAppend(theString, @"verify and expose message");
        v8 = log;
        if (v30 == -25329)
        {
          CFStringAppend(theString, @" too new");
          v19 = 5;
          goto LABEL_51;
        }

        if (v30 != -25328)
        {
          if (!v30)
          {
            CFStringAppend(theString, @"decoded OTR protected packet");
            v19 = 0;
            v12 = v155;
            goto LABEL_60;
          }

          sub_1000103CC(v30, log, @"%@ Cannot expose message: %d", v7, v30);
          v32 = sub_100006274("SecError");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            if (log)
            {
              v33 = *log;
            }

            else
            {
              v33 = 0;
            }

            v12 = v155;
            LODWORD(buf[0]) = 138412546;
            *(buf + 4) = v7;
            WORD2(buf[1]) = 2112;
            *(&buf[1] + 6) = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@ Decode OTR Protected Packet: %@", buf, 0x16u);
            goto LABEL_57;
          }

          v19 = 3;
LABEL_51:
          v12 = v155;
          goto LABEL_58;
        }

        v31 = *(a3 + 48);
        if (v29 && v31)
        {
          v12 = v155;
          if (CFEqual(v29, v31))
          {
LABEL_40:
            CFStringAppend(theString, @" repeated");
            v19 = 4;
            goto LABEL_58;
          }
        }

        else
        {
          v12 = v155;
          if (v29 == v31)
          {
            goto LABEL_40;
          }
        }

        *(a3 + 56) = 1;
        if (!v28)
        {
          CFStringAppend(theString, @" too old, forcing message");
          v19 = 6;
          goto LABEL_58;
        }

        CFStringAppend(theString, @" too old, repeated renegotiating");
LABEL_57:
        v19 = 3;
LABEL_58:
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
          MutableCopy = 0;
        }

        goto LABEL_60;
      }

      Length = CFDataGetLength(v10);
      MutableCopy = CFDataCreateMutableCopy(0, Length, v10);
    }

    else
    {
      MutableCopy = 0;
    }

    v19 = 0;
    goto LABEL_74;
  }

  v139 = sub_100006274("SecError");
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v140 = *v8;
    }

    else
    {
      v140 = 0;
    }

    LODWORD(buf[0]) = 138412546;
    *(buf + 4) = v7;
    WORD2(buf[1]) = 2112;
    *(&buf[1] + 6) = v140;
    _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "%@ getCoder: %@", buf, 0x16u);
  }

  MutableCopy = 0;
  v45 = 0;
LABEL_117:
  v47 = sub_10020649C(*(a1 + 32), @"NegotiationRetryCount");
  v48 = v47;
  if (a3)
  {
    if (v47)
    {
      if ((SecOTRSessionIsSessionInAwaitingState() & 1) == 0)
      {
        v49 = [v48 objectForKey:*(a1 + 56)];
        v50 = v49 == 0;

        if (!v50)
        {
          v51 = sub_100006274("otrtimer");
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "otr negotiation completed! clearing max retry counter", buf, 2u);
          }

          v52 = *(a1 + 56);
          v53 = *(a1 + 32);
          v54 = v52;
          v55 = sub_100006274("otrtimer");
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "negotiation finished! clearing max retry counter", buf, 2u);
          }

          v56 = sub_10020649C(v53, @"NegotiationRetryCount");
          if (!v56)
          {
            v56 = +[NSMutableDictionary dictionary];
          }

          [v56 removeObjectForKey:{v54, v145, v146}];
          sub_100228C18(v53, @"NegotiationRetryCount", v56, 0);
        }
      }
    }
  }

  if (v45 == 2)
  {
    v63 = sub_100006274("engine");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "coder handled a negotiation message", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (MutableCopy)
    {
      goto LABEL_179;
    }
  }

  else if (v45 == 1)
  {
    if (MutableCopy && CFDataGetLength(MutableCopy))
    {
      v57 = a1;
      v58 = *(a1 + 72);
      sub_10022C8A0();
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v60 = Instance;
        CFRetain(MutableCopy);
        *(v60 + 16) = MutableCopy;
        BytePtr = CFDataGetBytePtr(MutableCopy);
        v62 = &BytePtr[CFDataGetLength(MutableCopy)];
        v166 = 0;
        v172 = 0;
        ccder_decode_tag();
        if (BytePtr && !v62)
        {
LABEL_148:
          v163 = 1;
          v67 = v57[7];
          v68 = *(v57[6] + 8);
          v69 = v57[9];
          v161 = v57[10];
          if ([OTSOSActualAdapter sosEnabled]_0())
          {
            v70 = sub_1001486BC(v161, v67, v69);
            if (v70)
            {
              v188 = 0;
              v189 = 0;
              v182 = 0;
              v183 = &v182;
              v184 = 0x4010000000;
              v185 = "";
              v186 = 0u;
              v187 = 0u;
              v176 = 0;
              v177 = &v176;
              v178 = 0x4010000000;
              v179 = "";
              v180 = 0u;
              v181 = 0u;
              v172 = 0;
              v173 = &v172;
              v174 = 0x2020000000;
              v175 = 1;
              v71 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
              theStringa = CFCopyDescription(v70);
              v72 = *(v70 + 50);
              v166 = _NSConcreteStackBlock;
              v167 = 3221225472;
              v168 = sub_10014DD78;
              v169 = &unk_1003380E8;
              v170 = &v172;
              v171 = v69;
              if (*(v173 + 24) == 1 && (v73 = v161[2], buf[0] = _NSConcreteStackBlock, buf[1] = 3221225472, buf[2] = sub_10014DDC8, v191 = &unk_100338110, v192[4] = v69, v192[5] = &v163, v192[6] = v70, v192[7] = a5, v192[0] = &v182, v192[1] = &v172, v192[2] = &v176, v192[3] = v161, v192[8] = v68 + 24, v192[9] = v71, v193 = v72, v194[0] = _NSConcreteStackBlock, v194[1] = 0x40000000, v194[2] = sub_10022CF58, v195 = &unk_100346188, v196[1] = v69, v196[2] = v73, v196[0] = buf, v74 = sub_10022D038(v60, v69, v194), v75 = v74 & v173[3], *(v173 + 24) &= v74, v75 == 1))
              {
                *v164 = 0u;
                v165 = 0u;
                sub_100229930(v183 + 4);
                v76 = sub_10022A838(*(v60 + 72));
                sub_100229C44(v76, (v183 + 4), v164);
                v149 = sub_10022ABF8(v164, v69);
                v77 = v183;
                free(v183[4]);
                v77[4] = 0;
                v77[5] = 0;
                *(v77 + 56) = 0;
                v77[6] = 0;
                free(v164[0]);
                v164[0] = 0;
                v164[1] = 0;
                BYTE8(v165) = 0;
                *&v165 = 0;
                loga = sub_10022ABF8((v177 + 4), v69);
                v78 = v177;
                free(v177[4]);
                v78[4] = 0;
                v78[5] = 0;
                *(v78 + 56) = 0;
                v78[6] = 0;
                if (CFArrayGetCount(v71))
                {
                  sub_10014C2A8(v161, a5, 2, 0, v71, v69);
                }

                if (v71)
                {
                  CFRelease(v71);
                }

                v156 = sub_10014BF98(v161, v70, v69);
                *(v173 + 24) = v156 != 0;
                if (v156)
                {
                  *&v148 = *(v60 + 56);
                  *(&v148 + 1) = *(v60 + 48);
                  cf = sub_10022FEE4(v70, *(&v148 + 1));
                  v158 = sub_10022FEE4(v70, *(v60 + 40));
                  if (v158)
                  {
                    v79 = sub_100006274("engine");
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                    {
                      v80 = v70[2];
                      v81 = CFDataGetLength(v158[3]);
                      v82 = *(v60 + 40);
                      LODWORD(v194[0]) = 138412802;
                      *(v194 + 4) = v80;
                      WORD2(v194[1]) = 2048;
                      *(&v194[1] + 6) = v81 / 0x14;
                      HIWORD(v194[2]) = 2112;
                      v195 = v82;
                      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "SOSEngineHandleMessage_locked (%@): got a confirmed manifest by digest: (%zu, %@)", v194, 0x20u);
                    }

                    v83 = theStringa;
                  }

                  else
                  {
                    v100 = *(v60 + 64);
                    v83 = theStringa;
                    if (v100 && CFDataGetLength(*(v100 + 24)) > 0x13 || v149 && CFDataGetLength(v149[3]) >= 0x14)
                    {
                      if (!cf && *(&v148 + 1))
                      {
                        goto LABEL_279;
                      }

                      v137 = sub_100006274("engine");
                      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                      {
                        v159 = v70[2];
                        if (cf)
                        {
                          v138 = CFDataGetLength(cf[3]) / 0x14uLL;
                        }

                        else
                        {
                          v138 = 0;
                        }

                        v141 = sub_10022A4C8(cf);
                        if (v149)
                        {
                          v142 = CFDataGetLength(v149[3]) / 0x14uLL;
                        }

                        else
                        {
                          v142 = 0;
                        }

                        v143 = *(v60 + 64);
                        if (v143)
                        {
                          v143 = CFDataGetLength(*(v143 + 24)) / 0x14uLL;
                        }

                        LODWORD(v194[0]) = 138413314;
                        *(v194 + 4) = v159;
                        WORD2(v194[1]) = 2048;
                        *(&v194[1] + 6) = v138;
                        HIWORD(v194[2]) = 2112;
                        v195 = v141;
                        LOWORD(v196[0]) = 2048;
                        *(v196 + 2) = v142;
                        WORD1(v196[1]) = 2048;
                        *(&v196[1] + 4) = v143;
                        _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "SOSEngineHandleMessage_locked (%@): creating a confirmed manifest via a patch (base %zu %@, +%zu, -%zu)", v194, 0x34u);
                        v83 = theStringa;
                      }

                      v158 = sub_10022AC58(cf, *(v60 + 64), v149, v69);
                      if (!v158)
                      {
LABEL_279:
                        v144 = *(v60 + 64);
                        if (v144)
                        {
                          CFRetain(*(v60 + 64));
                        }

                        v189 = v144;
                        if (v149)
                        {
                          CFRetain(v149);
                        }

                        v158 = 0;
                        v188 = v149;
                        v83 = theStringa;
                      }
                    }

                    else if (*(&v148 + 1))
                    {
                      if (cf)
                      {
                        CFRetain(cf);
                      }

                      v101 = sub_100006274("SecError");
                      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                      {
                        v102 = v161[3];
                        LODWORD(v194[0]) = 138412802;
                        *(v194 + 4) = v102;
                        WORD2(v194[1]) = 2112;
                        *(&v194[1] + 6) = v67;
                        HIWORD(v194[2]) = 2112;
                        v195 = cf;
                        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%@:%@ Protocol error send L00 - figure out later base: %@", v194, 0x20u);
                      }

                      v158 = cf;
                    }

                    else
                    {
                      v158 = 0;
                    }
                  }

                  v84 = sub_100006274("engine");
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = v161[3];
                    LODWORD(v194[0]) = 138413058;
                    *(v194 + 4) = v85;
                    WORD2(v194[1]) = 2112;
                    *(&v194[1] + 6) = v67;
                    HIWORD(v194[2]) = 2112;
                    v195 = v158;
                    LOWORD(v196[0]) = 2112;
                    *(v196 + 2) = cf;
                    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%@:%@ confirmed: %@ base: %@", v194, 0x2Au);
                  }

                  if (v158 && (v86 = sub_10022A898(v70[9], v158, &v189, &v188, v69), *(v173 + 24) &= v86, (v87 = *(v60 + 64)) != 0))
                  {
                    v88 = CFDataGetLength(*(v87 + 24));
                    v89 = v189;
                    if (v88 >= 0x14)
                    {
                      v89 = sub_10022AF68(v189, *(v60 + 64), v69);
                      if (v189)
                      {
                        CFRelease(v189);
                      }

                      v189 = v89;
                    }

                    v83 = theStringa;
                  }

                  else
                  {
                    v89 = v189;
                  }

                  if ((!v89 || CFDataGetLength(v89[3]) <= 0x13) && (!v188 || CFDataGetLength(v188[3]) <= 0x13) && (!loga || CFDataGetLength(loga[3].isa) < 0x14))
                  {
LABEL_220:
                    v112 = v70[9];
                    v113 = v158;
                    if (!v158)
                    {
                      if (v112)
                      {
                        v124 = sub_100006274("engine");
                        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                        {
                          v125 = v161[3];
                          LODWORD(v194[0]) = 138412802;
                          *(v194 + 4) = v125;
                          WORD2(v194[1]) = 2112;
                          *(&v194[1] + 6) = v70;
                          HIWORD(v194[2]) = 2112;
                          v195 = v60;
                          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%@:%@ unable to find confirmed in %@, sync protocol reset", v194, 0x20u);
                        }

                        v126 = v70[9];
                        v113 = 0;
                        if (v126)
                        {
                          CFRelease(v126);
                          v70[9] = 0;
                          v83 = theStringa;
                          v113 = 0;
                        }
                      }

                      goto LABEL_233;
                    }

                    v114 = sub_100006274("engine");
                    v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
                    if (v112)
                    {
                      if (v115)
                      {
                        v116 = v70[2];
                        v117 = CFDataGetLength(v158[3]) / 0x14uLL;
                        v118 = sub_10022A4C8(v158);
                        v119 = CFDataGetLength(v112[3]) / 0x14uLL;
                        v120 = sub_10022A4C8(v112);
                        LODWORD(v194[0]) = 138413314;
                        *(v194 + 4) = v116;
                        WORD2(v194[1]) = 2048;
                        *(&v194[1] + 6) = v117;
                        HIWORD(v194[2]) = 2112;
                        v195 = v118;
                        v83 = theStringa;
                        LOWORD(v196[0]) = 2048;
                        *(v196 + 2) = v119;
                        WORD1(v196[1]) = 2112;
                        *(&v196[1] + 4) = v120;
                        v121 = "SOSEngineHandleMessage_locked (%@): new confirmed manifest (%zu, %@) will replace existing confirmed manifest (%zu, %@)";
                        v122 = v114;
                        v123 = 52;
LABEL_231:
                        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, v121, v194, v123);
                      }
                    }

                    else if (v115)
                    {
                      v127 = v70[2];
                      v128 = CFDataGetLength(v158[3]) / 0x14uLL;
                      v129 = sub_10022A4C8(v158);
                      LODWORD(v194[0]) = 138412802;
                      *(v194 + 4) = v127;
                      v83 = theStringa;
                      WORD2(v194[1]) = 2048;
                      *(&v194[1] + 6) = v128;
                      HIWORD(v194[2]) = 2112;
                      v195 = v129;
                      v121 = "SOSEngineHandleMessage_locked (%@): new confirmed manifest (%zu, %@) is first manifest for peer";
                      v122 = v114;
                      v123 = 32;
                      goto LABEL_231;
                    }

                    v113 = v158;
                    sub_10022FD50(v70, v158);
LABEL_233:
                    if (v148 == 0)
                    {
                      *(v70 + 49) = 1;
                    }

                    goto LABEL_235;
                  }

                  v94 = v188;
                  v95 = v189;
                  v96 = sub_10022ADE0(v189, v156, v69);
                  v97 = v96;
                  if (v96)
                  {
                    v98 = sub_10022ACE4(v96, v95, v69);
                    if (v98)
                    {
                      v99 = sub_10022ADE0(v94, v156, v69);
                      v147 = v99 != 0;
LABEL_205:
                      v103 = sub_100006274("peer");
                      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(v194[0]) = 138413314;
                        *(v194 + 4) = v70;
                        WORD2(v194[1]) = 2112;
                        *(&v194[1] + 6) = v97;
                        HIWORD(v194[2]) = 2112;
                        v195 = v98;
                        LOWORD(v196[0]) = 2112;
                        *(v196 + 2) = v99;
                        WORD1(v196[1]) = 2112;
                        *(&v196[1] + 4) = loga;
                        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%@ RM:%@ SR:%@ SA:%@ UR:%@", v194, 0x34u);
                      }

                      v104 = sub_10022AC58(v70[7], v99, v97, v69);
                      v105 = sub_10022AC58(v70[8], v98, loga, v69);
                      v106 = v70[7];
                      if (v106)
                      {
                        CFRelease(v106);
                      }

                      v70[7] = v104;
                      v107 = v70[8];
                      if (v107)
                      {
                        CFRelease(v107);
                      }

                      v70[8] = v105;
                      if (v97)
                      {
                        CFRelease(v97);
                      }

                      if (v98)
                      {
                        CFRelease(v98);
                      }

                      if (v99)
                      {
                        CFRelease(v99);
                      }

                      v108 = sub_100006274("peer");
                      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                      {
                        v110 = v70[8];
                        v109 = v70[9];
                        v111 = v70[7];
                        LODWORD(v194[0]) = 138413058;
                        *(v194 + 4) = v70;
                        WORD2(v194[1]) = 2112;
                        *(&v194[1] + 6) = v109;
                        HIWORD(v194[2]) = 2112;
                        v195 = v110;
                        LOWORD(v196[0]) = 2112;
                        *(v196 + 2) = v111;
                        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%@ C:%@ U:%@ O:%@", v194, 0x2Au);
                      }

                      v83 = theStringa;
                      *(v173 + 24) &= v147;
                      goto LABEL_220;
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  v99 = 0;
                  v147 = 0;
                  goto LABEL_205;
                }

                cf = 0;
                v113 = 0;
              }

              else
              {
                v149 = 0;
                cf = 0;
                v113 = 0;
                loga = 0;
              }

              v156 = 0;
              v83 = theStringa;
LABEL_235:
              v130 = sub_100006274("engine");
              if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
              {
                v131 = v70[2];
                v132 = v161[3];
                LODWORD(v194[0]) = 138412802;
                *(v194 + 4) = v132;
                WORD2(v194[1]) = 2112;
                *(&v194[1] + 6) = v131;
                HIWORD(v194[2]) = 2112;
                v195 = v60;
                _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "recv %@:%@ %@", v194, 0x20u);
              }

              v133 = sub_100006274("peer");
              if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v194[0]) = 138412546;
                *(v194 + 4) = v83;
                WORD2(v194[1]) = 2112;
                *(&v194[1] + 6) = v70;
                _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "recv %@ -> %@", v194, 0x16u);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              v93 = a1;
              if (v113)
              {
                CFRelease(v113);
              }

              if (v156)
              {
                CFRelease(v156);
              }

              if (v83)
              {
                CFRelease(v83);
              }

              if (v149)
              {
                CFRelease(v149);
              }

              if (loga)
              {
                CFRelease(loga);
              }

              if (v189)
              {
                CFRelease(v189);
              }

              if (v188)
              {
                CFRelease(v188);
              }

              CFRelease(v70);
              v92 = *(v173 + 24);
              _Block_object_dispose(&v172, 8);
              _Block_object_dispose(&v176, 8);
              _Block_object_dispose(&v182, 8);
              goto LABEL_256;
            }
          }

          else
          {
            SOSCCSetSOSDisabledError();
          }

          v92 = 0;
          v93 = a1;
LABEL_256:
          *(*(*(v93 + 40) + 8) + 24) = v92 & 1;
          CFRelease(v60);
          if ((*(*(*(v93 + 40) + 8) + 24) & 1) == 0)
          {
            v134 = sub_100006274("engine");
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
            {
              v135 = *(a1 + 56);
              v136 = *(a1 + 72);
              if (v136)
              {
                v136 = *v136;
              }

              LODWORD(buf[0]) = 138412546;
              *(buf + 4) = v135;
              WORD2(buf[1]) = 2112;
              *(&buf[1] + 6) = v136;
              _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Failed to handle message from peer %@: %@", buf, 0x16u);
            }
          }

LABEL_179:
          CFRelease(MutableCopy);
          goto LABEL_180;
        }

        if (v58 && !*v58)
        {
          SOSErrorCreate();
        }

        CFRelease(v60);
      }

      else
      {
        v66 = SOSErrorCreate();
        if (v66)
        {
          v60 = v66;
          v57 = a1;
          goto LABEL_148;
        }
      }
    }

    v90 = sub_100006274("engine");
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = *(a1 + 72);
      if (v91)
      {
        v91 = *v91;
      }

      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v91;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Failed to turn a data gram into an SOSMessage: %@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = SOSErrorCreate();
    if (MutableCopy)
    {
      goto LABEL_179;
    }
  }

  else
  {
    v64 = sub_100006274("engine");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = *(a1 + 72);
      if (v65)
      {
        v65 = *v65;
      }

      LODWORD(buf[0]) = 67109378;
      HIDWORD(buf[0]) = v45;
      LOWORD(buf[1]) = 2112;
      *(&buf[1] + 2) = v65;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "coder handled a error message: %d (error: %@)", buf, 0x12u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    if (MutableCopy)
    {
      goto LABEL_179;
    }
  }

LABEL_180:
}

void sub_100242A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

os_state_data_s *__cdecl sub_100243248(id a1, os_state_hints_s *a2)
{
  if (a2->var2 != 3)
  {
    return 0;
  }

  v8 = sub_100243300(a1, a2, v2, v3, v4, v5, v6, v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Length = CFDataGetLength(v8);
  v11 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
  v12 = v11;
  if (v11)
  {
    v11->var0 = 2;
    BytePtr = CFDataGetBytePtr(v9);
    memcpy(v12->var4, BytePtr, Length);
    v12->var1.var1 = Length;
    __strlcpy_chk();
  }

  CFRelease(v9);
  return v12;
}

uint64_t sub_100243300(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  cf = 0;
  v8 = sub_1002434D0(1, a2, a3, a4, a5, a6, a7, a8);
  *result = 0;
  v9 = SecItemCopyMatching(v8, result);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    sub_1000103CC(v9, &cf, @"Error %@ reading for service '%@'", *result, @"iCloud Keychain Account Meta-data");
  }

  else
  {
    if (*result)
    {
      v10 = CFGetTypeID(*result);
      if (v10 == CFDataGetTypeID())
      {
        v11 = *result;
        if (*result)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }
    }

    SOSCreateErrorWithFormat();
  }

  v12 = *result;
  if (*result)
  {
    *result = 0;
    CFRelease(v12);
  }

LABEL_12:
  v13 = sub_100006274("account");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *result = 138412290;
    *&result[4] = cf;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to load account: %@", result, 0xCu);
  }

  v14 = sub_100006274("SecError");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *result = 138412290;
    *&result[4] = cf;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to load account: %@", result, 0xCu);
  }

  v11 = 0;
LABEL_17:
  v15 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v15);
  }

  return v11;
}

void sub_1002435A4(id a1)
{
  if (!qword_10039E460)
  {
    v1 = _CFCopySystemVersionDictionary();
    if (v1)
    {
      v2 = v1;
      Value = CFDictionaryGetValue(v1, _kCFSystemVersionBuildVersionKey);
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFStringGetTypeID())
        {
          CFRetain(v4);
          qword_10039E460 = v4;
        }
      }

      CFRelease(v2);
    }

    if (!qword_10039E460)
    {
      qword_10039E460 = @"Unknown model";
    }
  }
}

id sub_100243B3C(int a1)
{
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if (byte_10039CB18 == 1)
  {
    if (a1)
    {
      [qword_10039E490 setSosCompatibilityMode:-[OTSOSActualAdapter sosEnabled]_0()];
    }

    else if (qword_10039E498 != -1)
    {
      dispatch_once(&qword_10039E498, &stru_100347098);
    }

    v2 = qword_10039E490;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100243BF8(id a1)
{
  v1 = dispatch_get_global_queue(-2, 0);
  if (qword_10039E0F8 != -1)
  {
    dispatch_once(&qword_10039E0F8, &stru_100342098);
  }

  if ((byte_10039CB18 & 1) == 0)
  {

    goto LABEL_16;
  }

  memset(&context, 0, sizeof(context));
  v2 = SCDynamicStoreCreate(0, @"com.apple.securityd.cloudcircleserver", sub_100245CC0, &context);
  ComputerName = SCDynamicStoreKeyCreateComputerName(0);
  values = ComputerName;
  if (v2 && ComputerName)
  {
    v4 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
    if (v4)
    {
      v5 = sub_100243EA4(v2);
      SCDynamicStoreSetNotificationKeys(v2, v4, 0);
      SCDynamicStoreSetDispatchQueue(v2, v1);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
    v7 = 0;
    if (!v2)
    {
      if (!ComputerName)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  CFRelease(v2);
  ComputerName = values;
  v6 = v5;
  v7 = v4;
  if (values)
  {
LABEL_11:
    CFRelease(ComputerName);
  }

LABEL_12:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    v15 = sub_100244014(v6, v8, v9, v10, v11, v12, v13, v14);
    v16 = qword_10039E4A0;
    qword_10039E4A0 = v15;

    sub_10020EE4C(qword_10039E4A0, &stru_1003470D8);
    SOSCloudKeychainSetItemsChangedBlock();
    CFRelease(v6);
    goto LABEL_19;
  }

LABEL_16:
  v17 = sub_100006274("SecError");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(context.version) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Didn't get machine gestalt! This is going to be ugly.", &context, 2u);
  }

  v25 = sub_100244014(0, v18, v19, v20, v21, v22, v23, v24);
  v26 = qword_10039E4A0;
  qword_10039E4A0 = v25;

  sub_10020EE4C(qword_10039E4A0, &stru_1003470D8);
  SOSCloudKeychainSetItemsChangedBlock();
LABEL_19:
  [qword_10039E4A0 setSaveBlock:&stru_100347180];
  SOSCloudKeychainRequestEnsurePeerRegistration();

  v27 = dispatch_get_global_queue(0, 0);
  os_state_add_handler();

  [qword_10039E4A0 ghostBustSchedule];
  [qword_10039E4A0 setSosCompatibilityMode:-[OTSOSActualAdapter sosEnabled]_0()];
  objc_storeStrong(&qword_10039E490, qword_10039E4A0);
}

CFDictionaryRef sub_100243EA4(const __SCDynamicStore *a1)
{
  if (qword_10039E4A8 != -1)
  {
    dispatch_once(&qword_10039E4A8, &stru_1003471C0);
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, qword_10039E468);
  v3 = SCDynamicStoreCopyComputerName(a1, 0);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"Unknown name";
  }

  if (qword_10039E470 != -1)
  {
    dispatch_once(&qword_10039E470, &stru_1003469F0);
  }

  v5 = qword_10039E460;
  if (qword_10039E460)
  {
    CFRetain(qword_10039E460);
  }

  valuePtr = 0;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = sub_10001104C(kCFAllocatorDefault, v7, v8, v9, v10, v11, v12, v13, kPIUserDefinedDeviceNameKey, v4);
  if (v5)
  {
    CFRelease(v5);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  CFRelease(v4);
  if (v6)
  {
    CFRelease(v6);
  }

  return v14;
}

id sub_100244014(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = sub_100243300(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = sub_10000869C(0);
  v11 = sub_100014CA8(v10);
  if (v11)
  {
    v12 = v11;
    if (v9)
    {
      v19 = 0;
      v13 = [SOSAccount accountFromData:v9 factory:v11 error:&v19];
      v14 = v19;
      if (v13)
      {
        v15 = [v13 trust];
        [v15 updateGestalt:v13 newGestalt:a1];

        CFRelease(v9);
LABEL_12:
        [v13 sosEvaluateIfNeeded];
        [v13 startStateMachine];
        goto LABEL_13;
      }

      v16 = sub_100006274("account");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Got error inflating account: %@", buf, 0xCu);
      }

      CFRelease(v9);
    }

    v13 = sub_10020EB50(a1, v12);
    if (!v13)
    {
      v17 = sub_100006274("account");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Got NULL creating account", buf, 2u);
      }

      v13 = 0;
    }

    goto LABEL_12;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

void sub_100244200(id a1, __CFData *a2, __CFError *a3)
{
  if (a2)
  {
    cf = 0;
    if (!qword_10039E4B0 || !CFEqual(qword_10039E4B0, a2))
    {
      v9 = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
      v10 = sub_1002434D0(0, a2, a3, v3, v4, v5, v6, v7);
      v25 = v9;
      v18 = sub_10001104C(kCFAllocatorDefault, v11, v12, v13, v14, v15, v16, v17, kSecValueData, a2);
      v19 = SecItemUpdate(v10, v18);
      if (v19 == -25300)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v10);
        *&context = _NSConcreteStackBlock;
        *(&context + 1) = 3221225472;
        v28 = sub_100243580;
        v29 = &unk_1003469D0;
        v30 = MutableCopy;
        CFDictionaryApplyFunction(v18, sub_100243588, &context);
        v19 = SecItemAdd(MutableCopy, 0);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (sub_1000103CC(v19, &cf, @"Error saving %@ to service '%@'", a2, @"iCloud Keychain Account Meta-data", kSecAttrAccessible, v25, 0))
      {
        CFRetain(a2);
        if (qword_10039E4B0)
        {
          CFRelease(qword_10039E4B0);
        }

        qword_10039E4B0 = a2;
      }

      else
      {
        v23 = sub_100006274("SecError");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(context) = 138412290;
          *(&context + 4) = cf;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Can't save account: %@", &context, 0xCu);
        }
      }
    }

    v24 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v24);
    }
  }

  else
  {
    v22 = sub_100006274("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(context) = 138412290;
      *(&context + 4) = a3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to transform account into data, error: %@", &context, 0xCu);
    }
  }
}

__CFArray *__cdecl sub_1002444AC(id a1, __CFDictionary *a2)
{
  if (a2)
  {
    CFRetain(a2);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100244588;
  v5[3] = &unk_100347140;
  v5[4] = &v6;
  v5[5] = a2;
  sub_1002450C0(v5);
  if (a2)
  {
    CFRelease(a2);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_10024456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100244588(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SOSItemsChangedCopyDescription();
  if (v4)
  {
    CFRelease(v4);
  }

  v46 = 0;
  theDict = *(a1 + 40);
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100237224;
  v65 = sub_100237234;
  v45 = v3;
  v66 = [v45 account];
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    value = 0;
    v6 = kSOSKVSAccountChangedKey;
    if (CFDictionaryGetValueIfPresent(theDict, kSOSKVSAccountChangedKey, &value))
    {
      v7 = sub_100006274("accountChange");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SOSTransportDispatchMessages received kSOSKVSAccountChangedKey", &buf, 2u);
      }

      if (value)
      {
        v8 = CFGetTypeID(value);
        if (v8 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(value))
          {
            v9 = [v45 account];
            sub_10020E5C0(v9);

            v10 = [v45 account];
            [v10 setAccountIsChanging:1];

            v11 = [v45 account];
            [v11 setKey_interests_need_updating:1];
          }
        }
      }

      CFArrayAppendValue(Mutable, v6);
    }

    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v15 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    cf = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v17 = [v62[5] SOSMonitorModeSOSIsActive];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v70 = sub_10023723C;
    v71 = &unk_100346610;
    v80 = v17;
    v72 = &v52;
    v73 = &v56;
    v74 = v13;
    v75 = v12;
    v76 = v14;
    v77 = v15;
    v78 = v16;
    v79 = &v46;
    CFDictionaryApplyFunction(theDict, sub_10023845C, &buf);
    if (v57[3])
    {
      v18 = sub_100235E68();
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100237624;
      v51[3] = &unk_100346638;
      v51[4] = &v61;
      v51[5] = &v56;
      v19 = v51;
      v85.length = CFArrayGetCount(v18);
      v85.location = 0;
      CFArrayApplyFunction(v18, v85, sub_100235D78, v19);

      CFArrayAppendValue(Mutable, kSOSKVSKeyParametersKey);
      v20 = v57[3];
      if (v20)
      {
        v57[3] = 0;
        CFRelease(v20);
      }
    }

    if (*(v53 + 24) == 1)
    {
      CFArrayAppendValue(Mutable, kSOSKVSInitialSyncKey);
    }

    if (CFDictionaryGetCount(v16))
    {
      v21 = CFDictionaryGetValue(v16, @"Scope");
      v22 = v21;
      if (v21)
      {
        v23 = CFGetTypeID(v21);
        if (v23 == CFStringGetTypeID())
        {
          sub_100085974(v22, 4);
        }

        else
        {
          v25 = CFGetTypeID(v22);
          if (v25 == CFDictionaryGetTypeID())
          {
            sub_1000852A0(v22, 4);
          }
        }
      }

      v26 = SOSDebugInfoKeyCreateWithTypeName();
      CFArrayAppendValue(Mutable, v26);
      if (v26)
      {
        CFRelease(v26);
      }
    }

    if (CFDictionaryGetCount(v14))
    {
      v27 = sub_100235F40();
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100237730;
      v50[3] = &unk_100346660;
      v50[4] = &v61;
      v50[5] = v14;
      v50[6] = &v46;
      v50[7] = Mutable;
      v28 = v50;
      v86.length = CFArrayGetCount(v27);
      v86.location = 0;
      CFArrayApplyFunction(v27, v86, sub_100235D78, v28);
    }

    if (CFDictionaryGetCount(v12))
    {
      v29 = sub_100235D90();
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10023789C;
      v49[3] = &unk_100346688;
      v49[4] = &v61;
      v49[5] = v12;
      v49[6] = Mutable;
      v30 = v49;
      v87.length = CFArrayGetCount(v29);
      v87.location = 0;
      CFArrayApplyFunction(v29, v87, sub_100235D78, v30);
    }

    if (CFDictionaryGetCount(v13))
    {
      v31 = sub_100235F40();
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100237B08;
      v48[3] = &unk_100346660;
      v48[4] = &v61;
      v48[5] = v13;
      v48[6] = &v46;
      v48[7] = Mutable;
      v32 = v48;
      v88.length = CFArrayGetCount(v31);
      v88.location = 0;
      CFArrayApplyFunction(v31, v88, sub_100235D78, v32);
    }

    if (CFDictionaryGetCount(v15))
    {
      v33 = sub_100235F40();
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100237D7C;
      v47[3] = &unk_100346660;
      v47[4] = &v61;
      v47[5] = v15;
      v47[6] = &v46;
      v47[7] = Mutable;
      v34 = v47;
      v89.length = CFArrayGetCount(v33);
      v89.location = 0;
      CFArrayApplyFunction(v33, v89, sub_100235D78, v34);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v35 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v36 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100237F80;
    context[3] = &unk_1003469D0;
    context[4] = v35;
    CFDictionaryApplyFunction(theDict, sub_10023845C, context);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100237FE8;
    v67[3] = &unk_1003477F0;
    v67[4] = v36;
    v90.length = CFArrayGetCount(Mutable);
    v90.location = 0;
    CFArrayApplyFunction(Mutable, v90, sub_100235D78, v67);
    v37 = sub_100006274("updates");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      Count = CFDictionaryGetCount(theDict);
      *v81 = 134218242;
      v82 = Count;
      v83 = 2112;
      v84 = v35;
      _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Updates [%ld]: %@", v81, 0x16u);
    }

    v38 = sub_100006274("updates");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v42 = CFArrayGetCount(Mutable);
      *v81 = 134218242;
      v82 = v42;
      v83 = 2112;
      v84 = v36;
      _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Handled [%ld]: %@", v81, 0x16u);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
  }

  else
  {
    v24 = sub_100006274("nosos");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "transport received a message for sos but the system is off", &buf, 2u);
    }

    Mutable = 0;
  }

  _Block_object_dispose(&v61, 8);

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
  if (!*(*(*(a1 + 32) + 8) + 24) || v46)
  {
    v39 = sub_100006274("SecError");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Error handling updates: %@", &buf, 0xCu);
    }

    v40 = v46;
    if (v46)
    {
      v46 = 0;
      CFRelease(v40);
    }
  }
}