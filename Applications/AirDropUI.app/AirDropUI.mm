uint64_t sub_100002BE4(uint64_t a1, uint64_t a2)
{
  if (qword_100178E40 != -1)
  {
    sub_100109DB8();
  }

  return qword_100178E48;
}

void sub_100002C1C(id a1)
{
  qword_100178E48 = CFBundleGetBundleWithIdentifier(@"com.apple.Sharing");
  if (!qword_100178E48)
  {
    v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/Sharing.framework", kCFURLPOSIXPathStyle, 1u);
    if (v1)
    {
      v2 = v1;
      qword_100178E48 = CFBundleCreate(0, v1);

      CFRelease(v2);
    }
  }
}

CFStringRef sub_100002CA8(const __CFString *cf, CFStringRef tableName)
{
  if (qword_100178E40 != -1)
  {
    sub_100109DB8();
  }

  v4 = qword_100178E48;
  if (qword_100178E48)
  {

    return CFBundleCopyLocalizedString(v4, cf, cf, tableName);
  }

  else
  {
    v6 = CFGetAllocator(cf);

    return CFStringCreateCopy(v6, cf);
  }
}

__CFSet *sub_100002D34(const __CFAllocator *a1, CFIndex a2, CFBagRef theBag)
{
  if (!theBag)
  {
    return 0;
  }

  Count = CFBagGetCount(theBag);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  __chkstk_darwin(Count);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v9, v8);
  CFBagGetValues(theBag, v9);
  Mutable = CFSetCreateMutable(a1, a2, &kCFTypeSetCallBacks);
  if (v7 >= 1)
  {
    do
    {
      v11 = *v9++;
      CFSetSetValue(Mutable, v11);
      --v7;
    }

    while (v7);
  }

  return Mutable;
}

CFArrayRef sub_100002E3C(const __CFAllocator *a1, CFSetRef theSet)
{
  if (!theSet)
  {
    return 0;
  }

  result = CFSetGetCount(theSet);
  if (result)
  {
    v5 = result;
    __chkstk_darwin(result);
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFSetGetValues(theSet, v7);
    return CFArrayCreate(a1, v7, v5, &kCFTypeArrayCallBacks);
  }

  return result;
}

CFArrayRef sub_100002F20(const __CFAllocator *a1, CFBagRef theBag)
{
  if (!theBag)
  {
    return 0;
  }

  result = CFBagGetCount(theBag);
  if (result)
  {
    v5 = result;
    __chkstk_darwin(result);
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFBagGetValues(theBag, v7);
    return CFArrayCreate(a1, v7, v5, &kCFTypeArrayCallBacks);
  }

  return result;
}

__CFBag *sub_100003004(const __CFAllocator *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFBagCreateMutable(a1, Count, &kCFTypeBagCallBacks);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      CFBagSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

__CFSet *sub_100003094(const __CFAllocator *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFSetCreateMutable(a1, Count, &kCFTypeSetCallBacks);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      CFSetSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

__CFSet *sub_100003124(const __CFAllocator *a1, xpc_object_t xarray)
{
  if (!xarray)
  {
    return 0;
  }

  count = xpc_array_get_count(xarray);
  Mutable = CFSetCreateMutable(a1, count, &unk_10015C5D8);
  if (count >= 1)
  {
    for (i = 0; i != count; ++i)
    {
      int64 = xpc_array_get_int64(xarray, i);
      if (qword_100178EA8 != -1)
      {
        sub_100109DCC();
      }

      ValueAtIndex = CFArrayGetValueAtIndex(qword_100178EB0, int64);
      CFSetSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

xpc_object_t sub_1000031F0(const __CFSet *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFSetGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = Count;
  __chkstk_darwin(Count);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v5, v4);
  v6 = xpc_array_create(0, 0);
  CFSetGetValues(a1, v5);
  if (v3 >= 1)
  {
    do
    {
      v7 = *v5;
      if (qword_100178EA8 != -1)
      {
        sub_100109DE0();
      }

      Value = CFDictionaryGetValue(qword_100178EB8, v7);
      xpc_array_set_int64(v6, 0xFFFFFFFFFFFFFFFFLL, Value);
      ++v5;
      --v3;
    }

    while (v3);
  }

  return v6;
}

CFArrayRef sub_100003324(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryGetCount(theDict);
  if (result)
  {
    v5 = result;
    __chkstk_darwin(result);
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(theDict, v7, 0);
    return CFArrayCreate(a1, v7, v5, &kCFTypeArrayCallBacks);
  }

  return result;
}

CFArrayRef sub_10000340C(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryGetCount(theDict);
  if (result)
  {
    v5 = result;
    __chkstk_darwin(result);
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(theDict, 0, v7);
    return CFArrayCreate(a1, v7, v5, &kCFTypeArrayCallBacks);
  }

  return result;
}

void sub_1000034F4(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (value)
  {
    CFDictionarySetValue(theDict, key, value);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, key);
  }
}

uint64_t sub_100003508(const void *a1)
{
  if (CFEqual(a1, kSFNodeProtocolAFP))
  {
    return 548;
  }

  if (CFEqual(a1, kSFNodeProtocolSMB))
  {
    return 445;
  }

  if (CFEqual(a1, kSFNodeProtocolVNC))
  {
    return 5900;
  }

  if (CFEqual(a1, kSFNodeProtocolODisk) || CFEqual(a1, kSFNodeProtocolWebDAV))
  {
    return 80;
  }

  if (CFEqual(a1, kSFNodeProtocolWebDAVS))
  {
    return 443;
  }

  if (CFEqual(a1, kSFNodeProtocolNFS))
  {
    return 2049;
  }

  if (CFEqual(a1, kSFNodeProtocolFTP))
  {
    return 21;
  }

  if (CFEqual(a1, kSFNodeProtocolFTPS))
  {
    return 990;
  }

  if (CFEqual(a1, kSFNodeProtocolHTTP))
  {
    return 80;
  }

  if (CFEqual(a1, kSFNodeProtocolHTTPS))
  {
    return 443;
  }

  if (CFEqual(a1, kSFNodeProtocolADisk))
  {
    return 548;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const __CFString *sub_10000368C(const __CFString *originalString, CFStringRef legalURLCharactersToBeEscaped)
{
  if (originalString)
  {
    return CFURLCreateStringByAddingPercentEscapes(0, originalString, 0, legalURLCharactersToBeEscaped, 0x8000100u);
  }

  return originalString;
}

const __CFURL *sub_1000036B0(const void *a1, const __CFString *a2, const __CFString *a3, __CFString *MutableCopy, unsigned int a5, const __CFString *a6, const __CFDictionary *a7, int a8)
{
  if (CFEqual(a1, kSFNodeProtocolWebDAV) || CFEqual(a1, kSFNodeProtocolODisk))
  {
    v16 = &kSFNodeProtocolHTTP;
LABEL_4:
    v17 = *v16;
    goto LABEL_5;
  }

  v38 = kSFNodeProtocolAirDrop;
  CFEqual(a1, kSFNodeProtocolAirDrop);
  if (CFEqual(a1, kSFNodeProtocolWebDAVS) || (v17 = a1, CFEqual(a1, v38)))
  {
    v16 = &kSFNodeProtocolHTTPS;
    goto LABEL_4;
  }

LABEL_5:
  v18 = sub_100003508(a1);
  if (a2)
  {
    a2 = CFURLCreateStringByAddingPercentEscapes(0, a2, 0, @";:@?/", 0x8000100u);
  }

  if (a3)
  {
    a3 = CFURLCreateStringByAddingPercentEscapes(0, a3, 0, @";:@?/", 0x8000100u);
  }

  if (CFStringHasPrefix(MutableCopy, @"[") && CFStringHasSuffix(MutableCopy, @"]"))
  {
    Length = CFStringGetLength(MutableCopy);
    MutableCopy = CFStringCreateMutableCopy(0, Length, MutableCopy);
    v45.length = CFStringGetLength(MutableCopy);
    v45.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%", @"%25", v45, 0);
  }

  else if (MutableCopy)
  {
    MutableCopy = CFURLCreateStringByAddingPercentEscapes(0, MutableCopy, 0, @";:@?/", 0x8000100u);
  }

  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%@://", v17);
  if (!a2)
  {
    if (!a3)
    {
      v21 = 1;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  CFStringAppend(Mutable, a2);
  if (a3)
  {
LABEL_18:
    CFStringAppendFormat(Mutable, 0, @":%@", a3);
    v21 = 0;
    goto LABEL_19;
  }

  v21 = 1;
LABEL_19:
  CFStringAppend(Mutable, @"@");
LABEL_20:
  CFStringAppend(Mutable, MutableCopy);
  if (a5 >= 1 && v18 != a5)
  {
    CFStringAppendFormat(Mutable, 0, @":%ld", a5);
  }

  if (a6)
  {
    if (CFStringHasPrefix(a6, @"/"))
    {
      v44.length = CFStringGetLength(a6) - 1;
      v44.location = 1;
      v22 = CFStringCreateWithSubstring(0, a6, v44);
    }

    else
    {
      v22 = CFRetain(a6);
    }

    v23 = v22;
    if (v22)
    {
      v24 = CFURLCreateStringByAddingPercentEscapes(0, v22, 0, 0, 0x8000100u);
    }

    else
    {
      v24 = 0;
    }

    CFStringAppendFormat(Mutable, 0, @"/%@", v24);
    CFRelease(v23);
    CFRelease(v24);
  }

  if (a7)
  {
    Count = CFDictionaryGetCount(a7);
    if (Count)
    {
      v26 = Count;
      v40 = v21;
      v41 = a3;
      v42 = a8;
      v39 = &v39;
      __chkstk_darwin(Count);
      v28 = (&v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v28, v27);
      v29 = CFStringCreateMutable(0, 0);
      CFDictionaryGetKeysAndValues(a7, v28, 0);
      v30 = v26 - 1;
      if (v26 >= 1)
      {
        while (1)
        {
          v31 = *v28;
          Value = CFDictionaryGetValue(a7, *v28);
          CFStringAppendFormat(v29, 0, @"%@=%@", v31, Value);
          if (!v30)
          {
            break;
          }

          CFStringAppend(v29, @"&");
          --v30;
          ++v28;
        }
      }

      CFStringAppendFormat(Mutable, 0, @"?%@", v29);
      CFRelease(v29);
      a8 = v42;
      a3 = v41;
      LOBYTE(v21) = v40;
    }
  }

  v33 = CFURLCreateWithString(0, Mutable, 0);
  v34 = v33;
  if (a8)
  {
    error = 0;
    if (!CFURLSetResourcePropertyForKey(v33, kCFURLIsDirectoryKey, kCFBooleanTrue, &error))
    {
      v35 = v21;
      v36 = utilities_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100109E08(&error, v36);
      }

      CFRelease(error);
      LOBYTE(v21) = v35;
    }
  }

  CFRelease(Mutable);
  CFRelease(MutableCopy);
  if (a2)
  {
    CFRelease(a2);
  }

  if ((v21 & 1) == 0)
  {
    CFRelease(a3);
  }

  return v34;
}

CGImageRef sub_100003BD0(const __CFURL *a1)
{
  v1 = CGImageSourceCreateWithURL(a1, 0);
  if (v1)
  {
    v2 = v1;
    if (CGImageSourceGetCount(v1))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
    }

    else
    {
      v5 = utilities_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100109E84();
      }

      ImageAtIndex = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = utilities_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100109EB8();
    }

    return 0;
  }

  return ImageAtIndex;
}

CGImageRef sub_100003C7C(const __CFData *a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, kCGImageSourceTypeIdentifierHint, kUTTypeJPEG2000);
    CFDictionarySetValue(v5, kCGImageSourceFailForDataNotMatchingHint, kCFBooleanTrue);
  }

  v6 = CGImageSourceCreateWithData(a1, v5);
  if (v6)
  {
    v7 = v6;
    if (!CGImageSourceGetCount(v6))
    {
      v13 = utilities_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100109F88();
      }

      goto LABEL_21;
    }

    if (a2)
    {
      Type = CGImageSourceGetType(v7);
      if (!CFEqual(Type, kUTTypeJPEG2000))
      {
        v14 = utilities_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100109F54();
        }

        goto LABEL_21;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      if (!ImageAtIndex)
      {
        v10 = utilities_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100109F20();
        }

LABEL_21:
        v12 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      if (!ImageAtIndex)
      {
        v15 = utilities_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100109EEC();
        }

        goto LABEL_21;
      }
    }

    v12 = ImageAtIndex;
LABEL_22:
    CFRelease(v7);
    goto LABEL_23;
  }

  v11 = utilities_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100109FBC();
  }

  v12 = 0;
LABEL_23:
  CFRelease(v5);
  return v12;
}

CGImageRef sub_100003E3C(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFURLGetTypeID())
  {
    v3 = CGImageSourceCreateWithURL(a1, 0);
  }

  else
  {
    if (v2 != CFDataGetTypeID())
    {
      goto LABEL_8;
    }

    v3 = CGImageSourceCreateWithData(a1, 0);
  }

  v4 = v3;
  if (v3)
  {
    if (CGImageSourceGetCount(v3))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
    }

    else
    {
      v7 = utilities_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100109FF0();
      }

      ImageAtIndex = 0;
    }

    CFRelease(v4);
    return ImageAtIndex;
  }

LABEL_8:
  v6 = utilities_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10010A024();
  }

  return 0;
}

__CFData *sub_100003F1C(void *a1, uint64_t a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  valuePtr = a2;
  v6 = CFDictionaryCreateMutable(v4, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a2)
  {
    v7 = CFNumberCreate(v4, kCFNumberLongType, &valuePtr);
    v8 = &kCGImageDestinationRequestedFileSize;
  }

  else
  {
    v14 = 1065353216;
    v7 = CFNumberCreate(v4, kCFNumberFloatType, &v14);
    v8 = &kCGImageDestinationLossyCompressionQuality;
  }

  CFDictionarySetValue(v6, *v8, v7);
  CFRelease(v7);
  v9 = CGImageDestinationCreateWithData(Mutable, kUTTypeJPEG2000, 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    CGImageDestinationAddImage(v9, a1, v6);
    if (!CGImageDestinationFinalize(v10))
    {
      v11 = utilities_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10010A058();
      }

      CFRelease(Mutable);
      Mutable = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v12 = utilities_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10010A08C();
    }
  }

  CFRelease(v6);
  return Mutable;
}

__CFData *sub_100004090(uint64_t a1, uint64_t a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v4 = DeviceRGB;
    v5 = CGImageCreateByMatchingToColorSpace();
    if (v5)
    {
      v6 = v5;
      Width = CGImageGetWidth(v5);
      Height = CGImageGetHeight(v6);
      if (Width > 0x21C || Height >= 0x21D)
      {
        Thumb = CGImageCreateThumb();
      }

      else
      {
        Thumb = CFRetain(v6);
      }

      v13 = Thumb;
      if (Thumb)
      {
        v11 = sub_100003F1C(Thumb, a2);
        CFRelease(v13);
      }

      else
      {
        v14 = utilities_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10010A0C0();
        }

        v11 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v12 = utilities_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10010A0F4();
      }

      v11 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v10 = utilities_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10010A128();
    }

    return 0;
  }

  return v11;
}

uint64_t sub_1000041C0()
{
  v0 = qword_100178E50;
  if (!qword_100178E50)
  {
    if (SFDeviceIsVirtualMachine())
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_100004258(@"EnableDemoMode", 0);
    }

    v2 = sub_100004258(@"BrowseAllInterfaces", v1);
    v3 = &kCFBooleanTrue;
    if (!v2)
    {
      v3 = &kCFBooleanFalse;
    }

    v0 = *v3;
    qword_100178E50 = *v3;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_100004258(const __CFString *a1, uint64_t a2)
{
  v3 = sub_100004530(a1);
  if (v3)
  {
    v4 = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v9 = sub_100004744;
    v10 = &unk_10015C628;
    v11 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v4);
    }

    else
    {
      if (v5 != CFStringGetTypeID())
      {
LABEL_7:
        v9(v8);
        return a2;
      }

      Value = sub_100004620(v4);
    }

    a2 = Value;
    goto LABEL_7;
  }

  return a2;
}

uint64_t sub_100004334()
{
  v0 = qword_100178E58;
  if (!qword_100178E58)
  {
    v1 = sub_100004258(@"DisableAirDrop", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100178E58 = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_10000439C()
{
  v0 = qword_100178E60;
  if (!qword_100178E60)
  {
    v1 = sub_100004258(@"EnableSimulator", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100178E60 = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_100004404()
{
  v0 = qword_100178E68;
  if (!qword_100178E68)
  {
    v1 = sub_100004258(@"EnableDeviceImages", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100178E68 = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_10000446C()
{
  v0 = qword_100178E70;
  if (!qword_100178E70)
  {
    v1 = sub_100004258(@"EnableDirectIP", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100178E70 = *v2;
  }

  return CFBooleanGetValue(v0);
}

BOOL sub_1000044D4(CFTypeRef cf1, CFTypeRef cf2)
{
  if (cf1 && cf2)
  {
    if (!CFEqual(cf1, cf2))
    {
      return 1;
    }
  }

  else if (cf1 && !cf2)
  {
    return 1;
  }

  return cf2 && cf1 == 0;
}

CFPropertyListRef sub_100004530(const __CFString *a1)
{
  result = CFPreferencesCopyAppValue(a1, @"/private/var/Managed Preferences/mobile/com.apple.Sharing");
  if (!result)
  {

    return CFPreferencesCopyAppValue(a1, @"com.apple.Sharing");
  }

  return result;
}

uint64_t sub_100004588(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = a2;
  v3 = sub_100004530(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberLongType, &valuePtr);
    }

    else
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetIntValue(v4);
      }
    }

    CFRelease(v4);
    return valuePtr;
  }

  return v2;
}

BOOL sub_100004620(const __CFString *a1)
{
  CFRetain(a1);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v5 = sub_10000473C;
  v6 = &unk_10015C608;
  v7 = a1;
  if (CFEqual(a1, @"1"))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (CFStringCompare(a1, @"true", 1uLL))
    {
      v2 = 1;
      if (CFStringCompare(a1, @"yes", 1uLL))
      {
        v2 = 1;
        if (CFStringCompare(a1, @"y", 1uLL))
        {
          v2 = CFStringCompare(a1, @"on", 1uLL) == kCFCompareEqualTo;
        }
      }
    }
  }

  v5(v4);
  return v2;
}

CFStringRef sub_10000474C(const __CFAllocator *a1)
{
  memset(&v4, 0, sizeof(v4));
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  localtime_r(&v3.tv_sec, &v4);
  return CFStringCreateWithFormat(a1, 0, @"%02d:%02d:%02d.%03d", v4.tm_hour, v4.tm_min, v4.tm_sec, (v3.tv_usec / 1000));
}

const __CFString *sub_1000047E0()
{
  v0 = sub_100004530(@"AlternateService");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v1))
      {
        v3 = @"_airdrop-alt._tcp.";
      }

      else
      {
        v3 = @"_airdrop._tcp.";
      }

      goto LABEL_16;
    }

    v6 = CFGetTypeID(v1);
    if (v6 == CFStringGetTypeID())
    {
      if (CFEqual(v1, @"1"))
      {
        v3 = @"_airdrop-alt._tcp.";
LABEL_16:
        CFRelease(v1);
        return v3;
      }

      if (!CFEqual(v1, @"0"))
      {
        if (CFStringGetLength(v1) < 8)
        {
          v7 = CFRetain(v1);
        }

        else
        {
          v11.location = 0;
          v11.length = 7;
          v7 = CFStringCreateWithSubstring(0, v1, v11);
        }

        v8 = v7;
        v9 = CFStringCreateWithFormat(0, 0, @"_airdrop-%@._tcp.", v7);
        v3 = CFAutorelease(v9);
        CFRelease(v8);
        goto LABEL_16;
      }
    }

    v3 = @"_airdrop._tcp.";
    goto LABEL_16;
  }

  if (!sub_100004258(@"EnableDemoMode", 0))
  {
    return @"_airdrop._tcp.";
  }

  v4 = CFStringCreateWithFormat(0, 0, @"_airdrop-%@._tcp.", @"demo");

  return CFAutorelease(v4);
}

uint64_t sub_10000497C(uint64_t a1, uint64_t a2)
{
  if (qword_100178E78 != -1)
  {
    sub_10010A15C();
  }

  return qword_100178E80;
}

CFArrayRef sub_1000049B8()
{
  v14 = @"_adisk._tcp.";
  v15 = @"_afpovertcp._tcp.";
  v16 = @"_smb._tcp.";
  v17 = @"_rfb._tcp.";
  v18 = @"_odisk._tcp.";
  v19 = @"_http._tcp.";
  v20 = sub_1000047E0();
  v21 = @"_file._tcp.";
  v22 = @"_netbios._udp.";
  v23 = @"_workgroups._udp.";
  v24 = @"_nwnode._tcp.";
  v0 = kSFNodeProtocolAFP;
  values = kSFNodeProtocolADisk;
  v4 = kSFNodeProtocolAFP;
  v1 = kSFNodeProtocolSMB;
  v5 = kSFNodeProtocolSMB;
  v6 = kSFNodeProtocolVNC;
  v7 = kSFNodeProtocolODisk;
  v8 = kSFNodeProtocolHTTP;
  v9 = kSFNodeProtocolAirDrop;
  v10 = kSFNodeProtocolFile;
  v11 = kSFNodeProtocolNetBIOS;
  v12 = kSFNodeProtocolWorkgroups;
  v13 = kSFNodeProtocolNWNode;
  if (sub_100004258(@"PreferSMBFileSharing", 0))
  {
    v15 = @"_smb._tcp.";
    v16 = @"_afpovertcp._tcp.";
    v4 = v1;
    v5 = v0;
  }

  qword_100178E88 = CFArrayCreate(0, &values, 11, &kCFTypeArrayCallBacks);
  result = CFArrayCreate(0, &v14, 11, &kCFTypeArrayCallBacks);
  qword_100178E80 = result;
  return result;
}

uint64_t sub_100004B74(uint64_t a1, uint64_t a2)
{
  if (qword_100178E78 != -1)
  {
    sub_10010A170();
  }

  return qword_100178E88;
}

const void *sub_100004BB0(void *key)
{
  if (qword_100178E90 != -1)
  {
    sub_10010A184();
  }

  v2 = qword_100178E98;

  return CFDictionaryGetValue(v2, key);
}

CFDictionaryRef sub_100004C08(uint64_t a1, uint64_t a2)
{
  if (qword_100178E78 != -1)
  {
    sub_10010A15C();
  }

  v2 = qword_100178E80;
  v3 = qword_100178E88;
  Count = CFArrayGetCount(qword_100178E80);
  v5 = CFArrayGetCount(v3);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6);
  __chkstk_darwin(v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  v13.location = 0;
  v13.length = Count;
  CFArrayGetValues(v2, v13, v7);
  v14.location = 0;
  v14.length = v5;
  CFArrayGetValues(v3, v14, v10);
  qword_100178E98 = CFDictionaryCreate(kCFAllocatorDefault, v10, v7, Count, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  result = CFDictionaryCreate(kCFAllocatorDefault, v7, v10, v5, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100178EA0 = result;
  return result;
}

const void *sub_100004DA4(void *key)
{
  if (qword_100178E90 != -1)
  {
    sub_10010A198();
  }

  v2 = qword_100178EA0;

  return CFDictionaryGetValue(v2, key);
}

CFDictionaryRef sub_100004E60()
{
  v0 = 0;
  values[0] = kSFNodeKindRoot;
  values[1] = kSFNodeKindBonjour;
  values[2] = kSFNodeKindWindows;
  values[3] = kSFNodeKindDomain;
  values[4] = kSFNodeKindWorkgroup;
  values[5] = kSFNodeKindVolume;
  values[6] = kSFNodeKindPrinter;
  values[7] = kSFNodeKindADisk;
  values[8] = kSFNodeKindODisk;
  values[9] = kSFNodeKindPerson;
  values[10] = kSFNodeKindMe;
  values[11] = kSFNodeKindDisabled;
  values[12] = kSFNodeKindUnknown;
  values[13] = kSFNodeKindMonogram;
  values[14] = kSFNodeKindRecent;
  values[15] = kSFNodeKindConnected;
  values[16] = kSFNodeKindManaged;
  values[17] = kSFNodeKindAirDrop;
  values[18] = kSFNodeKindClassroom;
  values[19] = kSFNodeKindClassroomGroup;
  values[20] = kSFNodeKindClassroomCourse;
  values[21] = kSFNodeKindSuggestion;
  values[22] = kSFNodeKindRapport;
  values[23] = kSFNodeKindAll;
  memset(v4, 0, sizeof(v4));
  v1 = xmmword_100117C60;
  v2 = vdupq_n_s64(2uLL);
  do
  {
    v4[v0] = v1;
    v1 = vaddq_s64(v1, v2);
    ++v0;
  }

  while (v0 != 12);
  qword_100178EB0 = CFArrayCreate(0, values, 24, &kCFTypeArrayCallBacks);
  result = CFDictionaryCreate(0, values, v4, 24, &unk_10015C748, 0);
  qword_100178EB8 = result;
  return result;
}

void sub_10000509C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id sub_1000051A4()
{
  v1 = &v0[OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_screenWidth;
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 bounds];
  v7 = v6;

  *&v0[v3] = v7;
  v8 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_animationPositionTransformYOffset;
  v9 = [v4 mainScreen];
  [v9 bounds];
  v11 = v10;

  *&v0[v8] = v11 / 3.0;
  v12 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_cornerRadius;
  v13 = objc_opt_self();
  v14 = [v13 sharedInstanceForEmbeddedDisplay];
  [v14 maximumContinuousCornerRadius];
  v16 = v15;

  *&v0[v12] = v16;
  v17 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureEdgeInset;
  v18 = [v13 sharedInstanceForEmbeddedDisplay];
  [v18 minimumScreenEdgeInsets];
  v20 = v19;

  *&v0[v17] = v20;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SystemApertureElementTransitionCoordinator();
  return objc_msgSendSuper2(&v22, "init");
}

void sub_1000053A0(void *a1)
{
  v2 = v1;
  v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4;
  v6 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v6)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay;
  if (v1[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay])
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  v54 = [v10 view];
  if (!v54)
  {
    goto LABEL_27;
  }

  v48 = OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator;
  v11 = (*&v1[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator] + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = &selRef_initialFrameForViewController_;
  if (v1[v8])
  {
    v16 = &selRef_finalFrameForViewController_;
  }

  v51 = v10;
  [a1 *v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [objc_opt_self() effectWithStyle:8];
  v26 = [objc_allocWithZone(UIVisualEffectView) init];
  [v26 setFrame:{v18, v20, v22, v24}];
  [v26 setAutoresizingMask:18];

  v52 = v7;
  if (v2[v8] == 1)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  [v26 setEffect:v27];

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() whiteColor];
  [v28 setBackgroundColor:v29];

  [v28 setClipsToBounds:1];
  v30 = [v28 layer];
  [v30 setCornerRadius:*(*&v2[v48] + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_cornerRadius)];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveID0];

  v32 = [a1 containerView];
  [v32 addSubview:v54];

  v33 = a1;
  v34 = [a1 containerView];
  [v34 addSubview:v26];

  [v54 setFrame:{v18, v20, v22, v24}];
  [v54 frame];
  [v54 setFrame:?];
  v35 = [a1 containerView];
  [v35 setMaskView:v28];

  if (v2[v8])
  {
    v36 = v13;
  }

  else
  {
    v36 = v18;
  }

  if (v2[v8])
  {
    v37 = v12;
  }

  else
  {
    v37 = v20;
  }

  if (v2[v8])
  {
    v38 = v14;
  }

  else
  {
    v38 = v22;
  }

  if (v2[v8])
  {
    v39 = v15;
  }

  else
  {
    v39 = v24;
  }

  [v28 setFrame:{v36, v37, v38, v39}];
  v53 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = v26;
  *(v40 + 24) = v2;
  *(v40 + 32) = v25;
  *(v40 + 40) = v54;
  *(v40 + 48) = v18;
  *(v40 + 56) = v20;
  *(v40 + 64) = v22;
  *(v40 + 72) = v24;
  *(v40 + 80) = v28;
  *(v40 + 88) = v13;
  *(v40 + 96) = v12;
  *(v40 + 104) = v14;
  *(v40 + 112) = v15;
  v60 = sub_10000773C;
  v61 = v40;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_100106B40;
  v59 = &unk_10015CCF8;
  v49 = _Block_copy(&aBlock);
  v41 = v26;
  v50 = v25;
  v42 = v2;
  v55 = v54;
  v43 = v28;

  v44 = swift_allocObject();
  v44[2] = v41;
  v44[3] = v33;
  v44[4] = v42;
  v60 = sub_1000077BC;
  v61 = v44;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_100005C38;
  v59 = &unk_10015CD48;
  v45 = _Block_copy(&aBlock);
  v46 = v41;
  v47 = v42;
  swift_unknownObjectRetain();

  [v53 _animateUsingSpringWithDuration:0 delay:v49 options:v45 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];

  _Block_release(v45);
  _Block_release(v49);
}

id sub_1000059BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v23 = OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay;
  if (*(a2 + OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay))
  {
    a3 = 0;
  }

  [a1 setEffect:a3];
  [a4 setFrame:{a6, a7, a8, a9}];
  [a4 frame];
  [a4 setFrame:?];
  if (*(a2 + v23))
  {
    v24 = a6;
  }

  else
  {
    v24 = a10;
  }

  if (*(a2 + v23))
  {
    v25 = a7;
  }

  else
  {
    v25 = a11;
  }

  if (*(a2 + v23))
  {
    v26 = a8;
  }

  else
  {
    v26 = a12;
  }

  v27 = a13;
  if (*(a2 + v23))
  {
    v27 = a9;
  }

  return [a5 setFrame:{v24, v25, v26, v27}];
}

void sub_100005AF4(char a1, id a2, void *a3, uint64_t a4)
{
  [a2 removeFromSuperview];
  v7 = [a3 containerView];
  [v7 setMaskView:0];

  [a3 completeTransition:a1 & 1];
  v8 = *(a4 + OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator);
  v9 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate;
  swift_beginAccess();
  sub_100007BA4(v8 + v9, v16, &unk_100173410, &qword_1001182F8);
  if (v17)
  {
    sub_100007878(v16, v13);
    v10 = v8;
    sub_100007810(v16);
    v11 = v14;
    v12 = v15;
    sub_1000078DC(v13, v14);
    (*(v12 + 24))(v10, v11, v12);

    sub_100007920(v13);
  }

  else
  {
    sub_100007810(v16);
  }
}

double sub_100005C38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_100005D40(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 initializeBufferWithCopyOfBuffer for MoveUpEffectModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AirDropActivityAttributes.ContentState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AirDropActivityAttributes.ContentState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100005E90(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005E9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005EBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100005F08()
{
  sub_100007690();
  EnvironmentValues.subscript.getter();
  return v1;
}

void sub_100005F44(_BYTE *a1, _BYTE *a2, uint64_t *a3)
{
  v6 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != 1 || (*a1 & 1) != 0)
  {
    return;
  }

  v12 = v8;
  v13 = a3[5];
  v32[1] = a3[6];
  v14 = v13(v9);
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = sub_1000612F0(*a3, v16);
  if (!v17)
  {
    [v14 setModalPresentationStyle:0];
    if (*(a3 + 33))
    {
      goto LABEL_5;
    }

LABEL_11:
    type metadata accessor for AUIRemoteAlertPresentationManager(0);
    v29 = sub_100078F40();
    aBlock[0] = a3[2];
    v30 = swift_allocObject();
    v31 = *(a3 + 1);
    *(v30 + 16) = *a3;
    *(v30 + 32) = v31;
    *(v30 + 48) = *(a3 + 2);
    *(v30 + 64) = a3[6];
    (*(v7 + 104))(v11, enum case for SFRemoteAlertPresentationRequest.PresentationType.unknown(_:), v12);
    sub_100007D14(v15, v16);

    sub_100007C0C(aBlock, &v35);

    dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:onDismiss:)();

    (*(v7 + 8))(v11, v12);
    return;
  }

  v18 = v17;
  [v14 setModalPresentationStyle:4];
  [v14 setTransitioningDelegate:v18];
  swift_unknownObjectRelease();
  if ((*(a3 + 33) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v19 = [objc_allocWithZone(SBSLockScreenService) init];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100007D20(v20, qword_10017F350);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Requesting device unlock if necessary", v23, 2u);
  }

  v35 = a3[2];
  v24 = swift_allocObject();
  v25 = *(a3 + 1);
  *(v24 + 24) = *a3;
  *(v24 + 16) = v14;
  *(v24 + 40) = v25;
  *(v24 + 56) = *(a3 + 2);
  *(v24 + 72) = a3[6];
  *(v24 + 80) = v19;
  aBlock[4] = sub_100007DBC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005C38;
  aBlock[3] = &unk_10015CF78;
  v26 = _Block_copy(aBlock);
  v27 = v14;
  sub_100007D14(v15, v16);
  sub_100007C0C(&v35, v33);

  v28 = v19;

  [v28 requestPasscodeUnlockUIWithOptions:0 withCompletion:v26];

  _Block_release(v26);
}

id sub_100006374(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_10017F350);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Device was unlocked", v14, 2u);
    }

    type metadata accessor for AUIRemoteAlertPresentationManager(0);
    v15 = sub_100078F40();
    *&v24 = *a3;
    BYTE8(v24) = *(a3 + 8);
    v26 = *(a3 + 16);
    v16 = swift_allocObject();
    v17 = *(a3 + 16);
    *(v16 + 16) = *a3;
    *(v16 + 32) = v17;
    *(v16 + 48) = *(a3 + 32);
    *(v16 + 64) = *(a3 + 48);
    (*(v8 + 104))(v10, enum case for SFRemoteAlertPresentationRequest.PresentationType.unknown(_:), v7);
    sub_100007BA4(&v24, v23, &qword_100172888, &qword_1001186A0);
    sub_100007C0C(&v26, v23);

    dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:onDismiss:)();

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_10017F350);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Device was not unlocked", v21, 2u);
    }

    v24 = *(a3 + 16);
    v25 = *(a3 + 32);
    v23[0] = 0;
    sub_1000077C8(&qword_100172880, &unk_1001191E0);
    Binding.wrappedValue.setter();
  }

  return [a4 invalidate];
}

double sub_100006728()
{
  v1 = v0[3];
  v3 = *(v0 + 32);
  v4 = v0[6];
  v9 = v0[2];
  v2 = v9;
  v10 = v1;
  v11 = v3;
  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  Binding.wrappedValue.getter();
  v8 = v7;
  v9 = *v0;
  LOBYTE(v10) = *(v0 + 8);
  v12 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = *v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  *(v5 + 49) = *(v0 + 33);
  *(v5 + 56) = v0[5];
  *(v5 + 64) = v4;
  sub_100007BA4(&v9, &v7, &qword_100172888, &qword_1001186A0);
  sub_100007C0C(&v12, &v7);

  sub_1000077C8(&qword_100172890, &qword_1001186A8);
  sub_100007C68();
  View.onChange<A>(of:initial:_:)();

  return result;
}

BOOL sub_1000068E8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1000069B8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

void sub_100006A38(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a1 = v4;
}

void *sub_100006A7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_100006AC4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100006AF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100006BB4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006BE4(uint64_t a1)
{
  v2 = sub_100006D30(&qword_100172690, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_100117F98);
  v3 = sub_100006D30(&qword_100172698, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_100117F40);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100006D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006D78(uint64_t a1)
{
  v2 = sub_100006D30(&qword_100172860, type metadata accessor for OpenExternalURLOptionsKey, &unk_1001184E0);
  v3 = sub_100006D30(&qword_100172868, type metadata accessor for OpenExternalURLOptionsKey, &unk_1001183F0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_100006E34(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_100006E7C(uint64_t a1)
{
  v2 = sub_100006D30(&qword_100172680, type metadata accessor for CHHapticPatternLibraryKey, &unk_1001180D8);
  v3 = sub_100006D30(&qword_100172688, type metadata accessor for CHHapticPatternLibraryKey, &unk_100118080);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_100006F38(_TtC9AirDropUI33AirDropTransferSessionsController *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100007658(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_100006F84()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v0;
  v2 = String.hashValue.getter();
  v1, v3, v4, v5, v6, v7, v8, v9;
  return v2;
}

void sub_100006FC0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_100007014(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t sub_100007160(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

void sub_100007350(void *a1, uint64_t a2)
{
  if ([a1 activeLayoutMode] == 4)
  {
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = *(a2 + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_screenWidth) * 0.5;
      v18.origin.x = v7;
      v18.origin.y = v9;
      v18.size.width = v11;
      v18.size.height = v13;
      Width = CGRectGetWidth(v18);
      v16 = *(a2 + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureEdgeInset);
      v17 = a2 + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen;
      *v17 = v14 - Width * 0.5;
      *(v17 + 8) = v16;
      *(v17 + 16) = v11;
      *(v17 + 24) = v13;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100007434()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate;
  swift_beginAccess();
  sub_100007BA4(v1 + v2, v13, &unk_100173410, &qword_1001182F8);
  if (v14)
  {
    sub_100007878(v13, v9);
    sub_100007810(v13);
    v3 = v10;
    v4 = v11;
    sub_1000078DC(v9, v10);
    (*(v4 + 8))(v1, v3, v4);
    sub_100007920(v9);
  }

  else
  {
    sub_100007810(v13);
  }

  v5 = type metadata accessor for SystemApertureElementTransition();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay] = 1;
  *&v6[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator] = v1;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v1;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_100007548()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate;
  swift_beginAccess();
  sub_100007BA4(v1 + v2, v13, &unk_100173410, &qword_1001182F8);
  if (v14)
  {
    sub_100007878(v13, v9);
    sub_100007810(v13);
    v3 = v10;
    v4 = v11;
    sub_1000078DC(v9, v10);
    (*(v4 + 16))(v1, v3, v4);
    sub_100007920(v9);
  }

  else
  {
    sub_100007810(v13);
  }

  v5 = type metadata accessor for SystemApertureElementTransition();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay] = 0;
  *&v6[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator] = v1;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v1;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_100007658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100007690()
{
  result = qword_100172700;
  if (!qword_100172700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172700);
  }

  return result;
}

uint64_t sub_1000076E4()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10000775C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007774()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000077C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007810(uint64_t a1)
{
  v2 = sub_1000077C8(&unk_100173410, &qword_1001182F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007878(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000078DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_100007920(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

__n128 sub_100007AB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100007ACC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100007B90(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_100007BA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000077C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100007C68()
{
  result = qword_100172898;
  if (!qword_100172898)
  {
    sub_100007CCC(&qword_100172890, &qword_1001186A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172898);
  }

  return result;
}

uint64_t sub_100007CCC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007D14(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t sub_100007D20(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007D58()
{
  sub_100007B90(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100007DCC()
{
  sub_100007B90(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100007E94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100007EE0()
{
  sub_100007CCC(&qword_100172890, &qword_1001186A8);
  sub_100007C68();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100007FCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100007FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008084()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100172A30);
  v1 = sub_100007D20(v0, qword_100172A30);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F350);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_1000077C8(&unk_100175E80, &qword_100118B18);
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100008204, 0, 0);
}

uint64_t sub_100008204()
{
  v1 = v0[9];
  v13 = v0[7];
  v2 = type metadata accessor for UTType();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v12 = (*(v13 + 40) + **(v13 + 40));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100008364;
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  v10 = v0[2];

  return v12(v10, v9, v7, v8, v4, v5, v6);
}

uint64_t sub_100008364()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1000159AC(v2, &unk_100175E80, &qword_100118B18);
  if (v0)
  {

    return _swift_task_switch(sub_1000084D8, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000084D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000853C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100008598(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000165C4(0, &qword_100172A78, SFAirDropAction_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1000087E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_10000FBA0(&qword_100172A70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_100008A00(void *a1)
{
  type metadata accessor for SFAirDropUtilities();
  v9 = static SFAirDropUtilities.standardTypeIdentifiers.getter();
  transfersMonitorTask = v9->transfersMonitorTask;
  v11 = -*v9->connection;
  v12 = -1;
  while (1)
  {
    if (v11 + v12 == -1)
    {
LABEL_5:
      v9, v2, v3, v4, v5, v6, v7, v8;
      return;
    }

    if (++v12 >= *v9->connection)
    {
      break;
    }

    v13 = transfersMonitorTask + 2;
    v14 = *transfersMonitorTask;

    v15 = String._bridgeToObjectiveC()();
    v14, v16, v17, v18, v19, v20, v21, v22;
    LODWORD(v14) = [a1 hasItemConformingToTypeIdentifier:v15];

    transfersMonitorTask = v13;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_100008AE4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000078DC(a1, v1);
  v3 = *(v2 + 64);
  v4 = (v3)(v1, v2);
  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    if (v12 < 1)
    {
      break;
    }

    v4 = (v3)(v1, v2);
    v1 = v4;
    v3 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v4;
    }

    else
    {
      v2 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {
        v1, v13, v14, v15, v16, v17, v18, v19;
        return 1;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v3 + 16))
        {
          goto LABEL_23;
        }

        v4 = *(v1 + 8 * i + 32);
      }

      v21 = v4;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100008A00(v4);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        v1, v13, v14, v15, v16, v17, v18, v19;
        return 0;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v29 = v4;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v29;
  }

  if (qword_100172120 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100007D20(v24, qword_100172A30);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "no item providers", v27, 2u);
  }

  return 0;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_100008D08(unint64_t a1, uint64_t a2)
{
  v92 = a2;
  v91 = type metadata accessor for SFAirDropSend.ItemPromise();
  v94 = *(v91 - 8);
  __chkstk_darwin(v91);
  v4 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for SFAirDropSend.ItemMetadata();
  v5 = *(v108 - 8);
  __chkstk_darwin(v108);
  v90 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = v76 - v8;
  v97 = type metadata accessor for UTType();
  v9 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  __chkstk_darwin(v11 - 8);
  v89 = v76 - v12;
  v88 = type metadata accessor for UUID();
  v93 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = v13;
  v86 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v14 - 8);
  v105 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v106 = v76 - v17;
  v18 = type metadata accessor for SFAirDropUtilities();
  static SFAirDropUtilities.suggestedAirDropThumbnailSize()();
  v20 = v19;
  v22 = v21;
  v85 = v18;
  v109 = static SFAirDropUtilities.standardTypeIdentifiers.getter();
  if (a1 >> 62)
  {
LABEL_48:
    v98 = a1 & 0xFFFFFFFFFFFFFF8;
    v111 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v98 = a1 & 0xFFFFFFFFFFFFFF8;
    v111 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0;
  v99 = a1 & 0xC000000000000001;
  while (1)
  {
    v110 = v30;
    if (v111 == v30)
    {
      v84 = 0;
      if (!v111)
      {
        goto LABEL_42;
      }

LABEL_14:
      v34 = 0;
      v81 = v93 + 16;
      v80 = v93 + 32;
      v79 = (v9 + 48);
      v95 = (v9 + 8);
      v78 = (v5 + 16);
      v77 = (v5 + 8);
      v35 = &_swiftEmptyArrayStorage;
      v76[1] = v94 + 32;
      v83 = a1;
      v82 = v4;
      while (1)
      {
        if (v99)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v98 + 16))
          {
            goto LABEL_45;
          }

          v36 = *(a1 + 8 * v34 + 32);
        }

        v104 = v36;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v101 = v34 + 1;
        v102 = v35;
        LODWORD(v100) = v111 == v30;
        v37 = type metadata accessor for TaskPriority();
        v38 = *(v37 - 8);
        v39 = v106;
        (*(v38 + 56))(v106, 1, 1, v37);
        v40 = v93;
        v41 = v86;
        v42 = v88;
        (*(v93 + 16))(v86, v92, v88);
        v43 = (*(v40 + 80) + 88) & ~*(v40 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = 0;
        *(v44 + 24) = 0;
        v45 = v104;
        v46 = v34;
        v47 = v109;
        *(v44 + 32) = v104;
        *(v44 + 40) = v47;
        v103 = v46;
        *(v44 + 48) = v46;
        *(v44 + 56) = v84;
        *(v44 + 64) = v100;
        *(v44 + 72) = v20;
        *(v44 + 80) = v22;
        v48 = v44 + v43;
        v49 = v38;
        v50 = v41;
        v51 = v105;
        (*(v40 + 32))(v48, v50, v42);
        sub_10001593C(v39, v51);
        LODWORD(v39) = (*(v38 + 48))(v51, 1, v37);
        v52 = v45;

        if (v39 == 1)
        {
          sub_1000159AC(v105, &qword_100172F50, &qword_10011E500);
        }

        else
        {
          v53 = v105;
          TaskPriority.rawValue.getter();
          (*(v49 + 8))(v53, v37);
        }

        v54 = v97;
        v55 = *(v44 + 16);
        swift_unknownObjectRetain();

        if (v55)
        {
          swift_getObjectType();
          v56 = dispatch thunk of Actor.unownedExecutor.getter();
          v58 = v57;
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0;
          v58 = 0;
        }

        sub_1000159AC(v106, &qword_100172F50, &qword_10011E500);
        type metadata accessor for SFAirDropSend.Item();
        if (v58 | v56)
        {
          v112 = 0;
          v113 = 0;
          v114 = v56;
          v115 = v58;
        }

        v5 = swift_task_create();
        v59 = [v52 _sanitizedSuggestedName];
        if (v59)
        {
          v60 = v59;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v9 = static SFAirDropUtilities.guessedDataType(for:dataTypesToTry:)();
        v4 = v61;

        v62 = v89;
        UTType.init(_:)();
        v63 = (*v79)(v62, 1, v54);
        v104 = v52;
        if (v63 == 1)
        {
          sub_1000159AC(v62, &unk_100175E80, &qword_100118B18);
        }

        else
        {
          v64 = v96;
          static UTType.directory.getter();
          v100 = v9;
          v65 = v62;
          UTType.conforms(to:)();
          v66 = *v95;
          (*v95)(v64, v54);
          v9 = v100;
          v66(v65, v54);
        }

        v35 = v102;
        v67 = String._bridgeToObjectiveC()();
        v68 = [objc_opt_self() _typeWithIdentifier:v67 allowUndeclared:1];

        if (v68)
        {
          v69 = v96;
          static UTType.plainText.getter();
          isa = UTType._bridgeToObjectiveC()().super.isa;
          (*v95)(v69, v97);
          [v68 conformsToType:isa];
        }

        a1 = v83;
        v71 = v107;
        SFAirDropSend.ItemMetadata.init(fileName:fileType:fileSubType:fileSize:fileBOMPath:fileIsDirectory:description:previewImageData:wasString:)();
        (*v78)(v90, v71, v108);

        v72 = v82;
        SFAirDropSend.ItemPromise.init(task:metadata:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1000A5664(0, *v35->connection + 1, 1, v35);
        }

        v74 = *v35->connection;
        v73 = *v35->airdropClient;
        if (v74 >= v73 >> 1)
        {
          v35 = sub_1000A5664((v73 > 1), v74 + 1, 1, v35);
        }

        (*v77)(v107, v108);
        *v35->connection = v74 + 1;
        (*(v94 + 32))(v35 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v74, v72, v91);
        v34 = v103 + 1;
        v30 = v110;
        if (v101 == v111)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v99)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v30 >= *(v98 + 16))
      {
        goto LABEL_46;
      }

      v31 = *(a1 + 8 * v30 + 32);
    }

    v32 = v31;
    v33 = [objc_opt_self() hasiWorkSendCopyRepresentationForItemProvider:v31];

    if ((v33 & 1) == 0)
    {
      break;
    }

    v30 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      goto LABEL_47;
    }
  }

  v30 = v110;
  v84 = v110;
  if (v111)
  {
    goto LABEL_14;
  }

LABEL_42:
  v35 = &_swiftEmptyArrayStorage;
LABEL_43:
  v109, v23, v24, v25, v26, v27, v28, v29;
  return v35;
}

uint64_t sub_100009868(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 200) = v17;
  *(v10 + 184) = a2;
  *(v10 + 192) = a3;
  *(v10 + 424) = a10;
  *(v10 + 168) = a8;
  *(v10 + 176) = a9;
  *(v10 + 152) = a6;
  *(v10 + 160) = a7;
  *(v10 + 144) = a1;
  v11 = type metadata accessor for SFAirDropUtilities.FileLoadResult();
  *(v10 + 208) = v11;
  *(v10 + 216) = *(v11 - 8);
  *(v10 + 224) = swift_task_alloc();
  v12 = type metadata accessor for SFSecurityScopedURL();
  *(v10 + 232) = v12;
  *(v10 + 240) = *(v12 - 8);
  *(v10 + 248) = swift_task_alloc();
  *(v10 + 256) = swift_task_alloc();
  *(v10 + 264) = swift_task_alloc();
  sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  *(v10 + 272) = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropSend.ItemMetadata();
  *(v10 + 280) = v13;
  *(v10 + 288) = *(v13 - 8);
  *(v10 + 296) = swift_task_alloc();
  *(v10 + 304) = swift_task_alloc();
  *(v10 + 312) = swift_task_alloc();
  v14 = type metadata accessor for URL();
  *(v10 + 320) = v14;
  *(v10 + 328) = *(v14 - 8);
  *(v10 + 336) = swift_task_alloc();
  *(v10 + 344) = swift_task_alloc();
  *(v10 + 352) = swift_task_alloc();
  *(v10 + 360) = swift_task_alloc();
  *(v10 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_100009AF0, 0, 0);
}

uint64_t sub_100009AF0()
{
  v1 = *(v0 + 152);
  v2 = objc_opt_self();
  if ([v2 hasiWorkSendCopyRepresentationForItemProvider:v1])
  {
    v3 = *(v0 + 360);
    v4 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v3;
    *(v0 + 24) = sub_100009D70;
    v5 = swift_continuation_init();
    *(v0 + 136) = sub_1000077C8(&qword_100172F58, &qword_100118BF0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000AC70;
    *(v0 + 104) = &unk_10015D260;
    *(v0 + 112) = v5;
    [v2 loadiWorkCopyRepresentationURLForItemProvider:v4 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 424);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = [*(v0 + 152) _sanitizedSuggestedName];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    *(v0 + 384) = v12;
    *(v0 + 392) = type metadata accessor for SFAirDropUtilities();
    UUID.uuidString.getter();
    *(v0 + 400) = v13;
    v14 = swift_task_alloc();
    *(v0 + 408) = v14;
    *v14 = v0;
    v14[1] = sub_10000A38C;
    v15 = *(v0 + 224);
    v16.n128_u64[0] = *(v0 + 184);
    v17.n128_u64[0] = *(v0 + 192);
    v18 = *(v0 + 160);
    v19 = *(v0 + 152);

    return static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:)(v15, v19, v18, 0, 0, 0, 0, (v8 == v7) & ~v6, v16, v17);
  }
}

uint64_t sub_100009D70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_10000A7B4;
  }

  else
  {
    v2 = sub_100009E80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009E80()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[34];
  (*(v2 + 32))(v0[46], v0[45], v1);
  URL.baseURL.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000159AC(v0[34], &qword_100172EE0, &qword_10011B220);
  }

  else
  {
    v4 = v0[40];
    v5 = v0[41];
    v6 = v0[34];
    URL.lastPathComponent.getter();
    (*(v5 + 8))(v6, v4);
  }

  v7 = v0[46];
  v8 = v0[44];
  v9 = v0[40];
  v10 = v0[41];
  URL.hasDirectoryPath.getter();
  SFAirDropSend.ItemMetadata.init(fileName:fileType:fileSubType:fileSize:fileBOMPath:fileIsDirectory:description:previewImageData:wasString:)();
  (*(v10 + 16))(v8, v7, v9);
  SFSecurityScopedURL.init(_:readWrite:)();
  v11 = v0[40];
  v12 = v0[41];
  v13 = v0[39];
  v14 = v0[38];
  v22 = v0[46];
  v15 = v0[35];
  v16 = v0[36];
  v18 = v0[29];
  v17 = v0[30];
  v21 = v0[33];
  (*(v17 + 16))(v0[32]);
  (*(v16 + 16))(v14, v13, v15);
  SFAirDropSend.Item.init(url:metadata:)();
  (*(v17 + 8))(v21, v18);
  (*(v16 + 8))(v13, v15);
  (*(v12 + 8))(v22, v11);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10000A38C()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v10 = sub_10000AA0C;
  }

  else
  {
    v11 = *(v2 + 384);
    *(v2 + 400), v3, v4, v5, v6, v7, v8, v9;
    v11, v12, v13, v14, v15, v16, v17, v18;
    v10 = sub_10000A4B4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10000A4B4()
{
  v1 = v0[43];
  v2 = v0[41];
  v15 = v0[40];
  v18 = v0[42];
  v19 = v0[38];
  v20 = v0[36];
  v21 = v0[37];
  v22 = v0[35];
  v3 = v0[31];
  v25 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v23 = v0[27];
  v24 = v0[26];
  v7 = SFAirDropUtilities.FileLoadResult.previewImage.getter();
  v8 = static SFAirDropUtilities.imageData(for:)();
  v16 = v9;
  v17 = v8;

  SFAirDropUtilities.FileLoadResult.url.getter();
  SFSecurityScopedURL.url.getter();
  v10 = *(v4 + 8);
  v10(v25, v5);
  URL.lastPathComponent.getter();
  v11 = *(v2 + 8);
  v11(v1, v15);
  SFAirDropUtilities.FileLoadResult.dataType.getter();
  SFAirDropUtilities.FileLoadResult.url.getter();
  SFSecurityScopedURL.url.getter();
  v10(v3, v5);
  URL.hasDirectoryPath.getter();
  v11(v18, v15);
  sub_100015A0C(v17, v16);
  SFAirDropUtilities.FileLoadResult.wasString.getter();
  SFAirDropSend.ItemMetadata.init(fileName:fileType:fileSubType:fileSize:fileBOMPath:fileIsDirectory:description:previewImageData:wasString:)();
  SFAirDropUtilities.FileLoadResult.url.getter();
  (*(v20 + 16))(v21, v19, v22);
  SFAirDropSend.Item.init(url:metadata:)();
  v12 = sub_100015660(v17, v16);
  (*(v20 + 8))(v19, v22, v12);
  (*(v23 + 8))(v6, v24);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10000A7B4()
{
  swift_willThrow();
  if (qword_100172120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100172A30);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load item %ld: %@", v5, 0x16u);
    sub_1000159AC(v6, &qword_100172EB0, &qword_100119410);
  }

  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10000AA0C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 384);
  *(v8 + 400), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;
  if (qword_100172120 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_100172A30);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v8 + 168);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 134218242;
    *(v21 + 4) = v20;
    *(v21 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v23;
    *v22 = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to load item %ld: %@", v21, 0x16u);
    sub_1000159AC(v22, &qword_100172EB0, &qword_100119410);
  }

  swift_willThrow();

  v24 = *(v8 + 8);

  return v24();
}

uint64_t sub_10000AC70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_1000078DC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10000ADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  return _swift_task_switch(sub_10000AE10, 0, 0);
}

uint64_t sub_10000AE10()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000078DC(v1, v2);
  v4 = (*(v3 + 64))(v2, v3);
  v0[7] = v4;
  v5 = v1[3];
  v6 = v1[4];
  sub_1000078DC(v1, v5);
  v7 = (*(v6 + 88))(v5, v6);
  v0[8] = v7;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_10000AF44;
  v9 = v0[5];
  v10 = v0[3];
  v11 = v0[4];

  return sub_10000FDA0(v4, v10, v11, v9, v7);
}

uint64_t sub_10000AF44()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000B088, 0, 0);
  }

  else
  {
    v10 = *(v2 + 64);
    *(v2 + 56), v3, v4, v5, v6, v7, v8, v9;

    v11 = *(v2 + 8);

    return v11();
  }
}

uint64_t sub_10000B088(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 64);
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;

  v10 = *(v8 + 8);

  return v10();
}

Swift::Int sub_10000B110()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000B184(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10000B1D8(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = sub_1000077C8(&qword_100172EB8, &unk_100118B50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType._groupActivity.getter();
  UTType.identifier.getter();
  v12 = v11;
  (*(v8 + 8))(v10, v7);
  v13 = String._bridgeToObjectiveC()();
  v12, v14, v15, v16, v17, v18, v19, v20;
  (*(v4 + 16))(v6, a1, v3);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  (*(v4 + 32))(v22 + v21, v6, v3);
  aBlock[4] = sub_100015374;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B90C;
  aBlock[3] = &unk_10015D1C0;
  v23 = _Block_copy(aBlock);

  [v25 loadItemForTypeIdentifier:v13 options:0 completionHandler:v23];
  _Block_release(v23);
}

void sub_10000B458(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_unknownObjectRetain_n();
    sub_1000077C8(&qword_100172EC8, &unk_100118B60);
    if (swift_dynamicCast())
    {
      sub_1000165C4(0, &unk_100172ED0, NSKeyedUnarchiver_ptr);
      sub_1000165C4(0, &qword_100172EA8, TUConversationActivity_ptr);
      v11 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v12 = qword_100172218;
      v13 = v11;
      v14 = v13;
      if (v12 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100007D20(v15, qword_10017F350);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v14;
        *v19 = v11;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v16, v17, "Unarchiving activity from item provider data: %@", v18, 0xCu);
        sub_1000159AC(v19, &qword_100172EB0, &qword_100119410);
      }

      sub_10001546C(v24, v25);

      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        swift_unknownObjectRetain();
      }

      v2 = qword_100172218;
      v3 = v11;
      if (v2 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100007D20(v4, qword_10017F350);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v3;
        *v8 = v11;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v5, v6, "Received activity object from item provider: %@", v7, 0xCu);
        sub_1000159AC(v8, &qword_100172EB0, &qword_100119410);
      }

      if (!v11)
      {
        goto LABEL_23;
      }
    }

    v21 = [v11 sanitizedCopy];

    if (v21)
    {
      v22 = v21;
      sub_1000077C8(&qword_100172EB8, &unk_100118B50);
      CheckedContinuation.resume(returning:)();

LABEL_24:
      swift_unknownObjectRelease();

      return;
    }

LABEL_23:
    sub_100015418();
    swift_allocError();
    *v23 = 0;
    sub_1000077C8(&qword_100172EB8, &unk_100118B50);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_24;
  }

  if (!a2)
  {
    sub_100015418();
    swift_allocError();
    *v10 = 1;
  }

  swift_errorRetain();
  sub_1000077C8(&qword_100172EB8, &unk_100118B50);
  CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10000B90C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

BOOL sub_10000B98C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1000078DC(a1, v2);
  (*(v3 + 56))(v29, v2, v3);
  v4 = v30;
  v31 = v30;

  sub_10001528C(v29);
  if (*(v4 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v5 = Hasher._finalize()(), v13 = -1 << *(v4 + 32), v14 = v5 & ~v13, ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(*(v4 + 48) + v14) ? 0x8000000100122930 : 0x8000000100122900);
      if ((*(*(v4 + 48) + v14) & 1) == 0 && 0x8000000100122900 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16, v18, v19, v20, v21, v22, v23, v24;
      if (v17)
      {
        goto LABEL_13;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v16, v6, v7, v8, v9, v10, v11, v12;
LABEL_13:
    sub_1000159AC(&v31, &unk_100175EA0, &qword_100120A00);
    v26 = a1[3];
    v27 = a1[4];
    sub_1000078DC(a1, v26);
    return !sub_10000BB78(v26, v27);
  }

  else
  {
LABEL_11:
    sub_1000159AC(&v31, &unk_100175EA0, &qword_100120A00);
    return 0;
  }
}

uint64_t sub_10000BC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10000BCF0;

  return sub_1000123FC(a1, a3, a4);
}

uint64_t sub_10000BCF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000BDE4()
{
  v0 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for UTType();
  sub_1000154C0(v3, qword_10017F180);
  sub_100007D20(v3, qword_10017F180);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t sub_10000BEE0()
{
  v0 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for UTType();
  sub_1000154C0(v3, qword_10017F198);
  sub_100007D20(v3, qword_10017F198);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return UTType.init(exportedAs:conformingTo:)();
}

BOOL sub_10000C024(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a2 + 64))(a1);
  v15 = v7;
  v16 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_17:
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  do
  {
    v19 = v18;
    if (v17 == v18)
    {
      break;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_16;
      }

      v20 = *(v15 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (*a3 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for UTType();
    sub_100007D20(v22, a4);
    UTType.identifier.getter();
    v24 = v23;
    v25 = String._bridgeToObjectiveC()();
    v24, v26, v27, v28, v29, v30, v31, v32;
    LODWORD(v24) = [v21 hasRepresentationConformingToTypeIdentifier:v25 fileOptions:0];

    v18 = v19 + 1;
  }

  while (!v24);
  v15, v8, v9, v10, v11, v12, v13, v14;
  return v17 != v19;
}

uint64_t sub_10000C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *(a2 - 8);
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_10000C274, 0, 0);
}

uint64_t sub_10000C274()
{
  v69 = v0;
  if (sub_10000C024(v0[25], v0[26], &qword_100172128, qword_10017F180, sub_10000BDE4))
  {
    if (qword_100172128 != -1)
    {
      swift_once();
    }

    v1 = qword_10017F180;
  }

  else
  {
    if (!sub_10000C024(v0[25], v0[26], &qword_100172130, qword_10017F198, sub_10000BEE0))
    {
LABEL_27:
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v39 = v0[28];
      v38 = v0[29];
      v40 = v0[27];
      v41 = v0[25];
      v42 = type metadata accessor for Logger();
      sub_100007D20(v42, qword_10017F350);
      (*(v39 + 16))(v38, v40, v41);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      v45 = os_log_type_enabled(v43, v44);
      v47 = v0[28];
      v46 = v0[29];
      v48 = v0[25];
      if (v45)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v68 = v50;
        *v49 = 136315138;
        v51 = sub_10001F43C(v46, v48);
        v53 = v52;
        (*(v47 + 8))(v46, v48);
        v54 = sub_10003E81C(v51, v53, &v68);
        v53, v55, v56, v57, v58, v59, v60, v61;
        *(v49 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v43, v44, "Could not find a nearby SharePlay URL on content: %s", v49, 0xCu);
        sub_100007920(v50);
      }

      else
      {

        (*(v47 + 8))(v46, v48);
      }

      v62 = v0[24];
      v63 = type metadata accessor for URL();
      (*(*(v63 - 8) + 56))(v62, 1, 1, v63);

      v64 = v0[1];

      return v64();
    }

    if (qword_100172130 != -1)
    {
      swift_once();
    }

    v1 = qword_10017F198;
  }

  v2 = v0[26];
  v3 = v0[25];
  v4 = type metadata accessor for UTType();
  sub_100007D20(v4, v1);
  v66 = UTType.identifier.getter();
  v67 = v5;
  v0[30] = v5;
  v0[31] = v66;
  v6 = (*(v2 + 64))(v3, v2);
  v14 = v6;
  if (!(v6 >> 62))
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
LABEL_26:
    v14, v7, v8, v9, v10, v11, v12, v13;
    v67, v31, v32, v33, v34, v35, v36, v37;
    goto LABEL_27;
  }

LABEL_11:
  v16 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v0[32] = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 hasRepresentationConformingToTypeIdentifier:v20 fileOptions:0];

    if (v21)
    {
      break;
    }

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_26;
    }
  }

  v14, v22, v23, v24, v25, v26, v27, v28;
  v29 = String._bridgeToObjectiveC()();
  v0[33] = v29;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_10000C810;
  v30 = swift_continuation_init();
  v0[17] = sub_1000077C8(&unk_100172F60, &qword_100118BF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000CE5C;
  v0[13] = &unk_10015D288;
  v0[14] = v30;
  [v18 loadItemForTypeIdentifier:v29 options:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000C810(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *v8;
  v10 = *(*v8 + 48);
  *(*v8 + 272) = v10;
  if (v10)
  {
    *(v9 + 240), a2, a3, a4, a5, a6, a7, a8;
    v11 = sub_10000CDA4;
  }

  else
  {
    v11 = sub_10000C954;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10000C954()
{
  v60 = v0;
  v1 = *(v0 + 160);

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 240);
    swift_unknownObjectRetain();
    v4, v5, v6, v7, v8, v9, v10, v11;
LABEL_3:
    v12 = *(v0 + 256);
    v13 = *(v0 + 192);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
    goto LABEL_14;
  }

  *(v0 + 168) = v1;
  swift_unknownObjectRetain();
  sub_1000077C8(&qword_100172EC8, &unk_100118B60);
  if (swift_dynamicCast())
  {
    v22 = *(v0 + 240);
    v24 = *(v0 + 144);
    v23 = *(v0 + 152);
    v25 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v27 = String._bridgeToObjectiveC()();
    v22, v28, v29, v30, v31, v32, v33, v34;
    *(v0 + 184) = 0;
    v3 = [v25 objectWithItemProviderData:isa typeIdentifier:v27 error:v0 + 184];

    v35 = *(v0 + 184);
    if (v3)
    {
      sub_10001546C(v24, v23);
      goto LABEL_3;
    }

    v58 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_1000165C4(0, &unk_100172ED0, NSKeyedUnarchiver_ptr);
    sub_1000165C4(0, &qword_100175E20, NSURL_ptr);
    v3 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    sub_10001546C(v24, v23);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(v0 + 240), v15, v16, v17, v18, v19, v20, v21;
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100007D20(v36, qword_10017F350);
  swift_unknownObjectRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 256);
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59 = v42;
    *v41 = 136315138;
    *(v0 + 176) = v1;
    swift_unknownObjectRetain();
    v43 = String.init<A>(reflecting:)();
    v45 = v44;
    v46 = sub_10003E81C(v43, v44, &v59);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "Unable to coerce nearby SharePlay item to an NSURL: %s", v41, 0xCu);
    sub_100007920(v42);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v54 = *(v0 + 192);
  v55 = type metadata accessor for URL();
  (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
LABEL_14:

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_10000CDA4()
{
  v1 = v0[33];
  v2 = v0[32];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000CE5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000078DC((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  swift_unknownObjectRetain();

  return swift_continuation_throwingResume();
}

BOOL sub_10000CF38(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000078DC(a1, v1);
  return sub_10000BB78(v1, v2);
}

uint64_t sub_10000CF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000167E4;

  return sub_1000138B0(a1, a3, a4, a5);
}

id sub_10000D048(uint64_t a1)
{
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v2 = static NSUserDefaults.airdrop.getter();
  v3 = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 applicationIsInstalled:v6];

  if (!v7)
  {
    return 0;
  }

  sub_100007878(a1, v11);
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = [v10 content];
    v9 = [v8 hasPossibleCollaborationRepresentation];

    return v9;
  }

  return result;
}

uint64_t sub_10000D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for UUID();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000D280, 0, 0);
}

uint64_t sub_10000D280()
{
  v35 = v0;
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v1 = static NSUserDefaults.airdrop.getter();
  v2 = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

  if (v2)
  {
    v3 = SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter();
    v0[16] = v3;
    v0[17] = v4;
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v0[18] = type metadata accessor for StartCollaborationAction(0);
      v7 = swift_task_alloc();
      v0[19] = v7;
      *v7 = v0;
      v7[1] = sub_10000D5A0;

      return sub_10006FBD0(v5, v6);
    }

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[11];
    v13 = type metadata accessor for Logger();
    sub_100007D20(v13, qword_10017F350);
    (*(v10 + 16))(v9, v12, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136315138;
      sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_10003E81C(v22, v24, &v34);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Cannot start Collaboration on nearby sharing interaction with ID as it's an unknown contact: %s", v20, 0xCu);
      sub_100007920(v21);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_10000D5A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;

  return _swift_task_switch(sub_10000D6A0, 0, 0);
}

uint64_t sub_10000D6A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v80 = v8;
  v9 = *(v8 + 168);
  if (v9)
  {
    *(v8 + 136), a2, a3, a4, a5, a6, a7, a8;
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100007D20(v10, qword_10017F350);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v9, v13, v14, v15, v16, v17, v18, v19;
    if (os_log_type_enabled(v11, v12))
    {
      v20 = *(v8 + 160);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v79 = v22;
      *v21 = 136315138;

      v23 = sub_10003E81C(v20, v9, &v79);
      v9, v24, v25, v26, v27, v28, v29, v30;
      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "starting Collaboration with iMessage-able handle: %s", v21, 0xCu);
      sub_100007920(v22);
    }

    sub_100007878(*(v8 + 64), v8 + 16);
    sub_1000077C8(&qword_100172E68, &qword_100118B30);
    sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
    if (swift_dynamicCast())
    {
      v38 = *(v8 + 160);
      v39 = *(v8 + 72);
      v40 = *(v8 + 56);
      v41 = *(*(v8 + 96) + *(*(v8 + 144) + 24));
      v42 = [v40 content];
      sub_1000077C8(&qword_100172A80, &unk_1001187D0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1001186F0;
      *(v43 + 32) = v38;
      *(v43 + 40) = v9;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v43, v45, v46, v47, v48, v49, v50, v51;
      [v41 initiateBackgroundCollaborationForContent:v42 shareOptions:v39 recipients:isa faceTimeConversationUUID:0];

      goto LABEL_15;
    }

    v76 = v9;
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v52 = *(v8 + 136);
    v53 = type metadata accessor for Logger();
    sub_100007D20(v53, qword_10017F350);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v52, v56, v57, v58, v59, v60, v61, v62;
    v63 = os_log_type_enabled(v54, v55);
    v64 = *(v8 + 136);
    if (v63)
    {
      v65 = *(v8 + 128);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v79 = v67;
      *v66 = 136315138;
      v68 = sub_10003E81C(v65, v64, &v79);
      v64, v69, v70, v71, v72, v73, v74, v75;
      *(v66 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v54, v55, "Cannot start Collaboration on nearby sharing interaction with ID as the contact with identifier does not contain a iMessage-able handle: %s", v66, 0xCu);
      sub_100007920(v67);

      goto LABEL_15;
    }

    v76 = v64;
  }

  v76, v31, v32, v33, v34, v35, v36, v37;
LABEL_15:

  v77 = *(v8 + 8);

  return v77();
}

uint64_t sub_10000DAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000167E4;

  return sub_10000D1B8(a1, a2, a3, a4);
}

uint64_t sub_10000DB70@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000DBD8(uint64_t a1)
{
  sub_100007878(a1, v6);
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_10000DC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000167E4;

  return sub_100015AA8(a1, a3, a4);
}

uint64_t sub_10000DD2C()
{
  v1 = type metadata accessor for SFProximityHandoff.Content.Action();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProximityHandoffContentAction(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 20), v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for SFProximityHandoff.Content.Action.open(_:) || v6 == enum case for SFProximityHandoff.Content.Action.send(_:) || v6 == enum case for SFProximityHandoff.Content.Action.share(_:) || v6 == enum case for SFProximityHandoff.Content.Action.transfer(_:))
  {
    return LocalizedStringResource.init(stringLiteral:)();
  }

  LocalizedStringResource.init(stringLiteral:)();
  return (*(v2 + 8))(v4, v1);
}

BOOL sub_10000DEF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100172E60, &qword_100118B28);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-v5 - 8];
  v7 = type metadata accessor for ProximityHandoffInteractionContent(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100007878(a1, v25);
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_100015174(v6, v10);
    v13 = SFProximityHandoff.Content.supportedActions.getter();
    v14 = type metadata accessor for ProximityHandoffContentAction(0);
    v15 = sub_10000E0D4(v2 + *(v14 + 20), v13);
    v13, v16, v17, v18, v19, v20, v21, v22;
    sub_1000151D8(v10);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000159AC(v6, &qword_100172E60, &qword_100118B28);
    return 0;
  }

  return v15;
}

BOOL sub_10000E0D4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for SFProximityHandoff.Content.Action();
    ++v2;
    sub_10000FBA0(&unk_100172E70, &type metadata accessor for SFProximityHandoff.Content.Action, &protocol conformance descriptor for SFProximityHandoff.Content.Action);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

BOOL sub_10000E1E0(uint64_t a1)
{
  v3 = type metadata accessor for SFProximityHandoff.Content.Action();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + *(a1 + 20), v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  v9 = enum case for SFProximityHandoff.Content.Action.open(_:);
  if (v8 != enum case for SFProximityHandoff.Content.Action.open(_:) && v8 != enum case for SFProximityHandoff.Content.Action.send(_:) && v8 != enum case for SFProximityHandoff.Content.Action.share(_:) && v8 != enum case for SFProximityHandoff.Content.Action.transfer(_:))
  {
    v12 = v8;
    (*(v4 + 8))(v7, v3);
    v8 = v12;
  }

  return v8 == v9;
}

uint64_t sub_10000E344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1000167E4;

  return sub_100014B40(a1);
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E414(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E434(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E638(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E454(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E474(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E91C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E494(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000EA28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E4B4(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000EB5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E4D4(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000ECA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E4F4(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000EDB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E514(_TtC9AirDropUI33AirDropTransferSessionsController *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000EED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E534(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A48, &qword_1001187A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *v10->connection = v8;
    *v10->airdropClient = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v10->airDropClient;
  v14 = a4->airDropClient;
  if (v5)
  {
    if (v10 != a4 || airDropClient >= &v14[8 * v8])
    {
      memmove(airDropClient, v14, 8 * v8);
    }

    *a4->connection = 0;
  }

  else
  {
    memcpy(airDropClient, v14, 8 * v8);
  }

  return v10;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E638(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A50, &qword_1001187B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->connection = v8;
    *v10->airdropClient = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v10->airDropClient;
  v13 = a4->airDropClient;
  if (v5)
  {
    if (v10 != a4 || airDropClient >= &v13[v8])
    {
      memmove(airDropClient, v13, v8);
    }

    *a4->connection = 0;
  }

  else
  {
    memcpy(airDropClient, v13, v8);
  }

  return v10;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E72C(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000077C8(&qword_100172F88, &qword_100118CD8);
  v10 = *(sub_1000077C8(&unk_100172F90, &qword_100118CE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  *v13->connection = v8;
  *v13->airdropClient = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000077C8(&unk_100172F90, &qword_100118CE0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->connection = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000E91C(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A80, &unk_1001187D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->connection = v8;
    *v10->airdropClient = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v10->airDropClient;
  v14 = a4->airDropClient;
  if (v5)
  {
    if (v10 != a4 || airDropClient >= &v14[16 * v8])
    {
      memmove(airDropClient, v14, 16 * v8);
    }

    *a4->connection = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000EA28(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A98, &qword_1001187E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->connection = v8;
    *v10->airdropClient = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10->airDropClient >= &a4->airDropClient[16 * v8])
    {
      memmove(v10->airDropClient, a4->airDropClient, 16 * v8);
    }

    *a4->connection = 0;
  }

  else
  {
    sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000EB5C(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&unk_100172A60, &unk_1001187C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->connection = v8;
    *v10->airdropClient = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10->airDropClient >= &a4->airDropClient[40 * v8])
    {
      memmove(v10->airDropClient, a4->airDropClient, 40 * v8);
    }

    *a4->connection = 0;
  }

  else
  {
    sub_1000077C8(&unk_1001778F0, &qword_10011E000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000ECA4(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A90, &qword_1001187E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *v10->connection = v8;
    *v10->airdropClient = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v10->airDropClient;
  v14 = a4->airDropClient;
  if (v5)
  {
    if (v10 != a4 || airDropClient >= &v14[32 * v8])
    {
      memmove(airDropClient, v14, 32 * v8);
    }

    *a4->connection = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000EDB4(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A88, &qword_10011E4C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->connection = v8;
    *v10->airdropClient = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  airDropClient = v10->airDropClient;
  v13 = a4->airDropClient;
  if (v5)
  {
    if (v10 != a4 || airDropClient >= &v13[24 * v8])
    {
      memmove(airDropClient, v13, 24 * v8);
    }

    *a4->connection = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_10000EED0(_TtC9AirDropUI33AirDropTransferSessionsController *result, int64_t a2, char a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->airdropClient;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->connection;
  if (v7 <= v8)
  {
    v9 = *a4->connection;
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000077C8(&qword_100172A58, &qword_1001187B8);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  *v13->connection = v8;
  *v13->airdropClient = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->connection = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000F0A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (v4)
  {
    v35 = &_swiftEmptyArrayStorage;
    sub_10000E414(0, v4, 0);
    v5 = &_swiftEmptyArrayStorage;
    v6 = v3 + 32;
    do
    {
      sub_100007878(v6, v33);
      sub_1000078DC(v33, v34);
      DynamicType = swift_getDynamicType();
      sub_100007920(v33);
      v35 = v5;
      v9 = *v5->connection;
      v8 = *v5->airdropClient;
      if (v9 >= v8 >> 1)
      {
        sub_10000E414((v8 > 1), v9 + 1, 1);
        v5 = v35;
      }

      *v5->connection = v9 + 1;
      *&v5->airDropClient[8 * v9] = DynamicType;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  v10 = *(a2 + 40);
  v11 = *(v10 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v35 = &_swiftEmptyArrayStorage;
    sub_10000E414(0, v11, 0);
    v12 = v35;
    v13 = v10 + 32;
    do
    {
      sub_100007878(v13, v33);
      sub_1000078DC(v33, v34);
      v14 = swift_getDynamicType();
      sub_100007920(v33);
      v35 = v12;
      v16 = *v12->connection;
      v15 = *v12->airdropClient;
      if (v16 >= v15 >> 1)
      {
        sub_10000E414((v15 > 1), v16 + 1, 1);
        v12 = v35;
      }

      *v12->connection = v16 + 1;
      *&v12->airDropClient[8 * v16] = v14;
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  v17 = sub_10000853C(v5, v12);
  v5, v18, v19, v20, v21, v22, v23, v24;
  v12, v25, v26, v27, v28, v29, v30, v31;
  return v17 & 1;
}

uint64_t sub_10000F340(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  result = type metadata accessor for LocalizedStringResource();
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for ContactDetailsProvider();
    if (v9 <= 0x3F)
    {
      result = sub_1000165C4(319, a4, a5);
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SendOverAirDropAction(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10000F52C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SendOverAirDropAction(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10000F6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000F78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000F85C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000F954(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SFProximityHandoff.Content.Action();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000FA14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SFProximityHandoff.Content.Action();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000FAD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FB48(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E28, type metadata accessor for StartCollaborationAction, &unk_1001189E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FBA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FBE8(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E30, type metadata accessor for SendOverAirDropAction, &unk_100118908);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FC40(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E38, type metadata accessor for AddToActiveSharePlaySessionAction, &unk_1001189B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FC98(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E40, type metadata accessor for StartNearbySharePlayAction, &unk_100118978);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FCF0(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E48, type metadata accessor for StartSharePlayAction, &unk_100118940);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FD48(uint64_t a1)
{
  result = sub_10000FBA0(&unk_100172E50, type metadata accessor for ProximityHandoffContentAction, &unk_1001188D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v7 = type metadata accessor for SFAirDropSend.Failure();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropSend.Transfer.State();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  sub_1000077C8(&qword_100172EF0, &qword_100118B90);
  v6[19] = swift_task_alloc();
  v10 = sub_1000077C8(&qword_100172EF8, &qword_100118B98);
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v11 = sub_1000077C8(&qword_100172F00, &unk_100118BA0);
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();
  sub_1000077C8(&qword_100172F08, &unk_10011E530);
  v6[26] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropSend.ItemMetadata();
  v6[27] = v12;
  v6[28] = *(v12 - 8);
  v6[29] = swift_task_alloc();
  v13 = type metadata accessor for SFSecurityScopedURL();
  v6[30] = v13;
  v6[31] = *(v13 - 8);
  v6[32] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v6[33] = v14;
  v6[34] = *(v14 - 8);
  v6[35] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropSend.Item();
  v6[36] = v15;
  v6[37] = *(v15 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v6[40] = v16;
  v6[41] = *(v16 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();

  return _swift_task_switch(sub_10001028C, 0, 0);
}

uint64_t sub_10001028C()
{
  v31 = v0;
  if (qword_100172120 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[48] = sub_100007D20(v5, qword_100172A30);
  v6 = *(v3 + 16);
  v0[49] = v6;
  v0[50] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[47];
  v11 = v0[40];
  v12 = v0[41];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 136315138;
    sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10003E81C(v14, v16, &v30);
    v16, v19, v20, v21, v22, v23, v24, v25;
    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "performing AirDrop action for interactionID:%s", v13, 0xCu);
    sub_100007920(v29);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[51] = v17;
  v26 = sub_100008D08(v0[3], v0[5]);
  v0[52] = v26;
  v27 = swift_task_alloc();
  v0[53] = v27;
  *v27 = v0;
  v27[1] = sub_100010530;

  return static SFAirDropSend.loadItemPromises(_:customPayload:)(v26, 0, 0xF000000000000000);
}

uint64_t sub_100010530(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v11 = sub_1000120FC;
  }

  else
  {
    *(v3 + 416), v4, v5, v6, v7, v8, v9, v10;
    v11 = sub_10001064C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10001064C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v199 = v8;
  v9 = *(v8 + 432);
  v10 = *v9->connection;
  if (v10)
  {
    v11 = *(v8 + 296);
    v193 = *(v11 + 16);
    v12 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v186 = (*(v8 + 248) + 8);
    v189 = *(v8 + 272);
    v191 = (v11 + 8);
    v192 = *(v11 + 72);
    v13 = &_swiftEmptyArrayStorage;
    v184 = v12;
    v185 = v10;
    do
    {
      v14 = *(v8 + 312);
      v15 = v13;
      v16 = *(v8 + 288);
      v17 = *(v8 + 256);
      v18 = *(v8 + 240);
      v193(v14, v12, v16);
      SFAirDropSend.Item.url.getter();
      SFSecurityScopedURL.url.getter();
      (*v186)(v17, v18);
      v19 = *v191;
      v20 = v16;
      v13 = v15;
      (*v191)(v14, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1000A57C0(0, *v15->connection + 1, 1, v15);
      }

      v22 = *v13->connection;
      v21 = *v13->airdropClient;
      v8 = v197;
      if (v22 >= v21 >> 1)
      {
        v13 = sub_1000A57C0((v21 > 1), v22 + 1, 1, v13);
      }

      v23 = *(v197 + 280);
      v24 = *(v197 + 264);
      *v13->connection = v22 + 1;
      (*(v189 + 32))(v13 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v22, v23, v24);
      v12 += v192;
      --v10;
    }

    while (v10);
    v25 = *(v197 + 48);
    if (v25)
    {
      v9 = *(v197 + 432);
LABEL_12:
      v26 = v25;
      v9, v27, v28, v29, v30, v31, v32, v33;
      sub_1000077C8(&qword_100172F48, &unk_100118BD0);
      v34 = swift_allocObject();
      *v34->connection = xmmword_1001186F0;
      type metadata accessor for SFAirDropUtilities();
      v35 = v26;
      v36 = static SFAirDropUtilities.imageData(for:)();
      v38 = v37;

      *v34->airDropClient = v36;
      *v34->transfersMonitorTask = v38;

      goto LABEL_21;
    }

    v187 = v13;
    v190 = (*(v197 + 224) + 8);
    v34 = &_swiftEmptyArrayStorage;
    v39 = v184;
    do
    {
      v40 = *(v8 + 304);
      v41 = v19;
      v42 = *(v8 + 288);
      v43 = v34;
      v44 = *(v8 + 232);
      v45 = *(v8 + 216);
      v46 = v39;
      (v193)(v40);
      SFAirDropSend.Item.metadata.getter();
      v47 = SFAirDropSend.ItemMetadata.previewImageData.getter();
      v49 = v48;
      v50 = v44;
      v34 = v43;
      (*v190)(v50, v45);
      v51 = v42;
      v19 = v41;
      v41(v40, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1000A568C(0, (*v43->connection + 1), 1, v43, v54, v55, v56, v57);
      }

      v59 = *v34->connection;
      v58 = *v34->airdropClient;
      v8 = v197;
      if (v59 >= v58 >> 1)
      {
        v34 = sub_1000A568C((v58 > 1), (v59 + 1), 1, v34, v54, v55, v56, v57);
      }

      *v34->connection = v59 + 1;
      v60 = v34 + 16 * v59;
      *(v60 + 4) = v47;
      *(v60 + 5) = v49;
      v39 = &v46[v192];
      --v185;
    }

    while (v185);
    *(v197 + 432), v39, v52, v53, v54, v55, v56, v57;
    v13 = v187;
  }

  else
  {
    v25 = *(v8 + 48);
    if (v25)
    {
      v13 = &_swiftEmptyArrayStorage;
      goto LABEL_12;
    }

    *(v8 + 432), a2, a3, a4, a5, a6, a7, a8;
    v13 = &_swiftEmptyArrayStorage;
    v34 = &_swiftEmptyArrayStorage;
  }

LABEL_21:
  *(v8 + 448) = v13;
  *(v8 + 456) = v34;
  (*(v8 + 392))(*(v8 + 368), *(v8 + 40), *(v8 + 320));

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v13, v63, v64, v65, v66, v67, v68, v69;
  v70 = os_log_type_enabled(v61, v62);
  v71 = *(v8 + 408);
  v72 = *(v8 + 368);
  v73 = *(v8 + 320);
  v188 = v13;
  v196 = v34;
  if (v70)
  {
    v74 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    *v74 = 136315394;
    sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v76;
    v71(v72, v73);
    v78 = sub_10003E81C(v75, v77, &v198);
    v77, v79, v80, v81, v82, v83, v84, v85;
    *(v74 + 4) = v78;
    *(v74 + 12) = 2080;
    v86 = Array.description.getter();
    v88 = v87;
    v89 = sub_10003E81C(v86, v87, &v198);
    v88, v90, v91, v92, v93, v94, v95, v96;
    *(v74 + 14) = v89;
    _os_log_impl(&_mh_execute_header, v61, v62, "%s: loaded items = %s", v74, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v71(v72, v73);
  }

  (*(v8 + 392))(*(v8 + 360), *(v8 + 40), *(v8 + 320));
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  v99 = os_log_type_enabled(v97, v98);
  v100 = *(v8 + 408);
  v101 = *(v8 + 360);
  v102 = *(v8 + 320);
  if (v99)
  {
    v194 = v98;
    v103 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    *v103 = 136315394;
    sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v105;
    v100(v101, v102);
    v107 = v104;
    v108 = v197;
    v109 = sub_10003E81C(v107, v106, &v198);
    v106, v110, v111, v112, v113, v114, v115, v116;
    *(v103 + 4) = v109;
    *(v103 + 12) = 2080;
    v117 = v196;

    sub_1000077C8(&qword_100172F40, &qword_10011EA40);
    v118 = Array.description.getter();
    v120 = v119;
    v196, v119, v121, v122, v123, v124, v125, v126;
    v127 = sub_10003E81C(v118, v120, &v198);
    v120, v128, v129, v130, v131, v132, v133, v134;
    *(v103 + 14) = v127;
    _os_log_impl(&_mh_execute_header, v97, v194, "%s: item preview data = %s", v103, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v108 = v8;

    v100(v101, v102);
    v117 = v196;
  }

  v136 = v108[40];
  v135 = v108[41];
  v137 = v108[26];
  SFAirDrop.NearbySharingInteraction.ConnectionContext.endpointIdentifier.getter();
  if ((*(v135 + 48))(v137, 1, v136) == 1)
  {
    v145 = v108[49];
    v146 = v108[42];
    v147 = v108[40];
    v148 = v108[26];
    v149 = v108[5];
    v188, v138, v139, v140, v141, v142, v143, v144;
    sub_1000159AC(v148, &qword_100172F08, &unk_10011E530);
    v145(v146, v149, v147);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();
    v152 = os_log_type_enabled(v150, v151);
    v153 = v108[51];
    v154 = v108[42];
    v155 = v108[40];
    if (v152)
    {
      v195 = v108[51];
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v198 = v157;
      *v156 = 136315138;
      sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v158 = dispatch thunk of CustomStringConvertible.description.getter();
      v160 = v159;
      v195(v154, v155);
      v161 = sub_10003E81C(v158, v160, &v198);
      v162 = v160;
      v108 = v197;
      v162, v163, v164, v165, v166, v167, v168, v169;
      *(v156 + 4) = v161;
      _os_log_impl(&_mh_execute_header, v150, v151, "%s: context.endpointIdentifier is nil.", v156, 0xCu);
      sub_100007920(v157);
    }

    else
    {

      v153(v154, v155);
    }

    v117, v170, v171, v172, v173, v174, v175, v176;

    v179 = v108[1];

    return v179();
  }

  else
  {
    (*(v108[41] + 32))(v108[44], v108[26], v108[40]);
    type metadata accessor for SendOverAirDropAction(0);
    if (*v117->connection && (v177 = *v117->transfersMonitorTask, v177 >> 60 != 15))
    {
      v178 = *v117->airDropClient;
      sub_1000156D8(v178, v177);
    }

    else
    {
      v178 = 0;
      v177 = 0xF000000000000000;
    }

    v108[58] = v178;
    v108[59] = v177;
    v181 = swift_task_alloc();
    v108[60] = v181;
    *v181 = v108;
    v181[1] = sub_1000111D0;
    v182 = v108[44];
    v183 = v108[25];

    return SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)(v183, v188, v182, v178, v177, 0, 0, 0);
  }
}

uint64_t sub_1000111D0()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v10 = v2[59];
  v11 = v2[58];
  v12 = v2[56];
  if (v0)
  {
    sub_100015660(v11, v10);
    v12, v13, v14, v15, v16, v17, v18, v19;
    v20 = sub_10001226C;
  }

  else
  {
    v12, v3, v4, v5, v6, v7, v8, v9;
    sub_100015660(v11, v10);
    v20 = sub_100011358;
  }

  return _swift_task_switch(v20, 0, 0);
}

uint64_t sub_100011358()
{
  v27 = v0;
  (*(v0 + 392))(*(v0 + 344), *(v0 + 40), *(v0 + 320));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 408);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  if (v3)
  {
    v25 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v25(v5, v6);
    v12 = sub_10003E81C(v9, v11, &v26);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: starting AirDrop send", v7, 0xCu);
    sub_100007920(v8);
  }

  else
  {

    v4(v5, v6);
  }

  SFXPCProgressTask.makeAsyncIterator()();
  *(v0 + 512) = enum case for SFAirDropSend.Transfer.State.transferring(_:);
  *(v0 + 516) = enum case for SFAirDropSend.Transfer.State.transferFailed(_:);
  v20 = sub_100015674();
  v21 = swift_task_alloc();
  *(v0 + 496) = v21;
  *v21 = v0;
  v21[1] = sub_1000115B8;
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);

  return dispatch thunk of AsyncIteratorProtocol.next()(v22, v23, v20);
}

uint64_t sub_1000115B8()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_100011E9C;
  }

  else
  {
    v2 = sub_1000116CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000116CC()
{
  v100 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 456);
    v5 = *(v0 + 408);
    v6 = *(v0 + 352);
    v7 = *(v0 + 320);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    (*(v9 + 8))(v8, v10);
    v5(v6, v7);
    v4, v11, v12, v13, v14, v15, v16, v17;

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    (*(v3 + 32))(v20, v1, v2);
    (*(v3 + 16))(v21, v20, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 128);
    v25 = *(v0 + 136);
    v27 = *(v0 + 120);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v99 = v97;
      *v28 = 136315138;
      sub_10000FBA0(&qword_100172F38, &type metadata accessor for SFAirDropSend.Transfer, &protocol conformance descriptor for SFAirDropSend.Transfer);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v26 + 8);
      v32(v25, v27);
      v33 = sub_10003E81C(v29, v31, &v99);
      v31, v34, v35, v36, v37, v38, v39, v40;
      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "AirDrop send updated:%s", v28, 0xCu);
      sub_100007920(v97);
    }

    else
    {

      v32 = *(v26 + 8);
      v32(v25, v27);
    }

    v41 = *(v0 + 512);
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);
    v44 = *(v0 + 96);
    SFAirDropSend.Transfer.state.getter();
    v45 = (*(v43 + 88))(v42, v44);
    if (v45 == v41)
    {
      v47 = *(v0 + 104);
      v46 = *(v0 + 112);
      v48 = *(v0 + 96);
      v32(*(v0 + 144), *(v0 + 120));
      (*(v47 + 96))(v46, v48);
      *(v46 + 8), v49, v50, v51, v52, v53, v54, v55;
      v56 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
      v57 = v56[12];
      *(v46 + 8 + v56[16]), v58, v59, v60, v61, v62, v63, v64;
      v65 = v56[20];
      v66 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v66 - 8) + 8))(v46 + v65, v66);
      v67 = type metadata accessor for SFAirDrop.Progress();
      (*(*(v67 - 8) + 8))(v46 + v57, v67);
    }

    else if (v45 == *(v0 + 516))
    {
      v68 = *(v0 + 112);
      v69 = *(v0 + 88);
      v71 = *(v0 + 72);
      v70 = *(v0 + 80);
      v72 = *(v0 + 64);
      (*(*(v0 + 104) + 96))(v68, *(v0 + 96));
      v73 = sub_1000077C8(&qword_100172F20, &qword_100118F10);
      (*(v71 + 32))(v69, v68 + *(v73 + 48), v72);
      v74 = *(v71 + 16);
      v74(v70, v69, v72);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      v77 = os_log_type_enabled(v75, v76);
      v79 = *(v0 + 80);
      v78 = *(v0 + 88);
      v81 = *(v0 + 64);
      v80 = *(v0 + 72);
      if (v77)
      {
        v98 = *(v0 + 88);
        v82 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v82 = 138412290;
        sub_10000FBA0(&qword_100172F28, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
        swift_allocError();
        v74(v83, v79, v81);
        v84 = _swift_stdlib_bridgeErrorToNSError();
        v85 = *(v80 + 8);
        v85(v79, v81);
        *(v82 + 4) = v84;
        *v96 = v84;
        _os_log_impl(&_mh_execute_header, v75, v76, "AirDrop transfer failed with failure: %@", v82, 0xCu);
        sub_1000159AC(v96, &qword_100172EB0, &qword_100119410);

        v85(v98, v81);
      }

      else
      {

        v89 = *(v80 + 8);
        v89(v79, v81);
        v89(v78, v81);
      }

      v90 = *(v0 + 112);
      v32(*(v0 + 144), *(v0 + 120));
      v91 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      (*(*(v91 - 8) + 8))(v90, v91);
    }

    else
    {
      v87 = *(v0 + 104);
      v86 = *(v0 + 112);
      v88 = *(v0 + 96);
      v32(*(v0 + 144), *(v0 + 120));
      (*(v87 + 8))(v86, v88);
    }

    v92 = sub_100015674();
    v93 = swift_task_alloc();
    *(v0 + 496) = v93;
    *v93 = v0;
    v93[1] = sub_1000115B8;
    v94 = *(v0 + 152);
    v95 = *(v0 + 160);

    return dispatch thunk of AsyncIteratorProtocol.next()(v94, v95, v92);
  }
}

uint64_t sub_100011E9C()
{
  *(v0 + 16) = *(v0 + 504);
  sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100011F30, 0, 0);
}

uint64_t sub_100011F30()
{
  v1 = v0[57];
  v2 = v0[51];
  v3 = v0[44];
  v4 = v0[40];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  v1, v8, v9, v10, v11, v12, v13, v14;

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000120FC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 416), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_10001226C()
{
  v1 = *(v0 + 456);
  (*(v0 + 408))(*(v0 + 352), *(v0 + 320));
  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000123FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for UUID();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for UTType();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_10001251C, 0, 0);
}

uint64_t sub_10001251C()
{
  v33 = v0;
  v1 = SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter();
  v0[30] = v1;
  v0[31] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    type metadata accessor for StartSharePlayAction(0);
    v5 = swift_task_alloc();
    v0[32] = v5;
    *v5 = v0;
    v5[1] = sub_100012810;

    return sub_10006ED88(v3, v4);
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[24];
    v10 = v0[22];
    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_10017F350);
    (*(v8 + 16))(v7, v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[25];
    v15 = v0[26];
    v17 = v0[24];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_10003E81C(v20, v22, &v32);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Cannot start SharePlay on nearby sharing interaction with ID as it's an unknown contact: %s", v18, 0xCu);
      sub_100007920(v19);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_100012810(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = a2;

  return _swift_task_switch(sub_100012910, 0, 0);
}

uint64_t sub_100012910(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v225 = v8;
  v9 = *(v8 + 272);
  if (!v9)
  {
    if (qword_100172218 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_15;
  }

  *(v8 + 248), a2, a3, a4, a5, a6, a7, a8;
  v10 = objc_opt_self();

  v11 = String._bridgeToObjectiveC()();
  v9, v12, v13, v14, v15, v16, v17, v18;
  v19 = [v10 normalizedHandleWithDestinationID:v11];
  *(v8 + 280) = v19;

  if (v19)
  {
    v27 = *(v8 + 160);
    v9, v20, v21, v22, v23, v24, v25, v26;
    v28 = [objc_allocWithZone(TUConversationMember) initWithHandle:v19];
    *(v8 + 288) = v28;
    sub_1000077C8(&unk_100172E80, &unk_100118B40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100118700;
    *(inited + 32) = v28;
    v30 = v28;
    sub_10008FC40(inited);
    v32 = v31;
    swift_setDeallocating();
    swift_arrayDestroy();
    v33 = objc_allocWithZone(TUJoinConversationRequest);
    sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
    sub_100015234(&qword_100172E90, &unk_100176390, TUConversationMember_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v32, v35, v36, v37, v38, v39, v40, v41;
    v42 = [v33 initWithRemoteMembers:isa];
    *(v8 + 296) = v42;

    v43 = [objc_opt_self() invitationPreferencesForAllHandlesWithStyles:1];
    sub_1000165C4(0, &qword_100172E98, TUConversationInvitationPreference_ptr);
    sub_100015234(&qword_100172EA0, &qword_100172E98, TUConversationInvitationPreference_ptr);
    v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = Set._bridgeToObjectiveC()().super.isa;
    v44, v46, v47, v48, v49, v50, v51, v52;
    [v42 setInvitationPreferences:v45];

    buf = v42;
    [v42 setAvMode:0];
    v53 = v27[3];
    v54 = v27[4];
    sub_1000078DC(v27, v53);
    v55 = (*(v54 + 64))(v53, v54);
    v63 = v55;
    if (v55 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v65 = 0;
      log = (*(v8 + 224) + 8);
      while (1)
      {
        if ((v63 & 0xC000000000000001) != 0)
        {
          v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v65 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v66 = *(v63 + 8 * v65 + 32);
        }

        v67 = v66;
        *(v8 + 304) = v66;
        v68 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        v69 = i;
        v70 = *(v8 + 232);
        v71 = *(v8 + 216);
        static UTType._groupActivity.getter();
        UTType.identifier.getter();
        v73 = v72;
        (log->isa)(v70, v71);
        v74 = String._bridgeToObjectiveC()();
        v73, v75, v76, v77, v78, v79, v80, v81;
        LOBYTE(v71) = [v67 hasItemConformingToTypeIdentifier:v74];

        if (v71)
        {
          v63, v82, v83, v84, v85, v86, v87, v88;
          v141 = swift_task_alloc();
          *(v8 + 312) = v141;
          *(v141 + 16) = v67;
          v142 = swift_task_alloc();
          *(v8 + 320) = v142;
          v143 = sub_1000165C4(0, &qword_100172EA8, TUConversationActivity_ptr);
          *v142 = v8;
          v142[1] = sub_100013458;

          return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8 + 152, 0, 0, 0xD00000000000001CLL, 0x8000000100122BA0, sub_100015284, v141, v143);
        }

        ++v65;
        i = v69;
        if (v68 == v69)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

LABEL_31:
    v63, v56, v57, v58, v59, v60, v61, v62;
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v144 = *(v8 + 160);
    v145 = type metadata accessor for Logger();
    sub_100007D20(v145, qword_10017F350);
    sub_100007878(v144, v8 + 112);
    v146 = buf;
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v218 = v148;
      loga = v147;
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v224 = v217;
      *v149 = 138412546;
      *(v149 + 4) = v146;
      v216 = v150;
      *v150 = v146;
      bufa = v149;
      *(v149 + 12) = 2080;
      v151 = *(v8 + 136);
      v152 = *(v8 + 144);
      sub_1000078DC((v8 + 112), v151);
      v153 = *(v152 + 64);
      v154 = v146;
      v155 = v153(v151, v152);
      v163 = v155;
      if (v155 >> 62)
      {
        v164 = _CocoaArrayWrapper.endIndex.getter();
        v223 = v8;
        if (v164)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v164 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v223 = v8;
        if (v164)
        {
LABEL_36:
          v165 = 0;
          v166 = &_swiftEmptyArrayStorage;
          while (1)
          {
            if ((v163 & 0xC000000000000001) != 0)
            {
              v167 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v165 >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v167 = *(v163 + 8 * v165 + 32);
            }

            v168 = v167;
            v169 = v165 + 1;
            if (__OFADD__(v165, 1))
            {
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              swift_once();
LABEL_15:
              v89 = *(v8 + 248);
              v90 = type metadata accessor for Logger();
              sub_100007D20(v90, qword_10017F350);

              v91 = Logger.logObject.getter();
              v92 = static os_log_type_t.default.getter();
              v89, v93, v94, v95, v96, v97, v98, v99;
              v100 = os_log_type_enabled(v91, v92);
              v101 = *(v8 + 248);
              if (v100)
              {
                v102 = *(v8 + 240);
                v103 = swift_slowAlloc();
                v104 = swift_slowAlloc();
                v224 = v104;
                *v103 = 136315138;
                v105 = sub_10003E81C(v102, v101, &v224);
                v101, v106, v107, v108, v109, v110, v111, v112;
                *(v103 + 4) = v105;
                v113 = "Cannot start SharePlay on nearby sharing interaction with ID as the contact with identifier does not contain a FaceTime-able handle: %s";
                v114 = v92;
                goto LABEL_21;
              }

              v140 = v101;
LABEL_27:
              v140, v133, v134, v135, v136, v137, v138, v139;
              goto LABEL_69;
            }

            v170 = [v167 registeredTypeIdentifiers];
            v171 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v172 = *v171->connection;
            v8 = *v166->connection;
            v173 = v8 + v172;
            if (__OFADD__(v8, v172))
            {
              goto LABEL_60;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v173 <= *v166->airdropClient >> 1)
            {
              if (*v171->connection)
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v8 <= v173)
              {
                v182 = v8 + v172;
              }

              else
              {
                v182 = v8;
              }

              v166 = sub_1000A59C4(isUniquelyReferenced_nonNull_native, v182, 1, v166, v178, v179, v180, v181);
              if (*v171->connection)
              {
LABEL_52:
                if ((*v166->airdropClient >> 1) - *v166->connection < v172)
                {
                  goto LABEL_62;
                }

                swift_arrayInitWithCopy();
                v171, v183, v184, v185, v186, v187, v188, v189;
                if (v172)
                {
                  v190 = *v166->connection;
                  v191 = __OFADD__(v190, v172);
                  v192 = v190 + v172;
                  if (v191)
                  {
                    goto LABEL_63;
                  }

                  *v166->connection = v192;
                }

                goto LABEL_38;
              }
            }

            v171, v175, v176, v177, v178, v179, v180, v181;
            if (v172)
            {
              goto LABEL_61;
            }

LABEL_38:
            ++v165;
            if (v169 == v164)
            {
              goto LABEL_67;
            }
          }
        }
      }

      v166 = &_swiftEmptyArrayStorage;
LABEL_67:
      v163, v156, v157, v158, v159, v160, v161, v162;
      v193 = Array.description.getter();
      v195 = v194;
      v166, v194, v196, v197, v198, v199, v200, v201;
      v8 = v223;
      sub_100007920((v223 + 112));
      v202 = sub_10003E81C(v193, v195, &v224);
      v195, v203, v204, v205, v206, v207, v208, v209;
      *(bufa + 14) = v202;
      _os_log_impl(&_mh_execute_header, loga, v218, "Starting SharePlay via Messages with request without an activity: %@ item provider registered types: %s", bufa, 0x16u);
      sub_1000159AC(v216, &qword_100172EB0, &qword_100119410);

      sub_100007920(v217);
    }

    else
    {

      sub_100007920((v8 + 112));
    }

    v211 = *(v8 + 288);
    v210 = *(v8 + 296);
    v212 = *(v8 + 280);
    v213 = [objc_opt_self() sharedInstance];
    [v213 launchAppForJoinRequest:v210];

    goto LABEL_69;
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v115 = type metadata accessor for Logger();
  sub_100007D20(v115, qword_10017F350);

  v91 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();
  v9, v117, v118, v119, v120, v121, v122, v123;
  if (!os_log_type_enabled(v91, v116))
  {

    v140 = v9;
    goto LABEL_27;
  }

  v124 = *(v8 + 264);
  v103 = swift_slowAlloc();
  v104 = swift_slowAlloc();
  v224 = v104;
  *v103 = 136315138;
  v125 = sub_10003E81C(v124, v9, &v224);
  v9, v126, v127, v128, v129, v130, v131, v132;
  *(v103 + 4) = v125;
  v113 = "Unable to create a normalized handle with destination ID: %s";
  v114 = v116;
LABEL_21:
  _os_log_impl(&_mh_execute_header, v91, v114, v113, v103, 0xCu);
  sub_100007920(v104);

LABEL_69:

  v214 = *(v8 + 8);

  return v214();
}

uint64_t sub_100013458()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_10001380C;
  }

  else
  {

    v2 = sub_100013574;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013574()
{
  v1 = v0[37];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v2[3];
  v5 = v2[4];
  sub_1000078DC(v2, v4);
  (*(v5 + 56))(v4, v5);
  v6 = v0[5];

  sub_10001528C((v0 + 2));
  v7 = String._bridgeToObjectiveC()();
  v6, v8, v9, v10, v11, v12, v13, v14;
  [v3 setBundleIdentifier:v7];

  [v3 setStartWhenStaged:1];
  [v1 setActivity:v3];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v15 = v0[37];
  v16 = type metadata accessor for Logger();
  sub_100007D20(v16, qword_10017F350);
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[38];
  if (v20)
  {
    v22 = v0[37];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v22;
    *v24 = v22;
    v25 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting SharePlay via Messages with request using an advertised activity: %@", v23, 0xCu);
    sub_1000159AC(v24, &qword_100172EB0, &qword_100119410);
  }

  v27 = v0[36];
  v26 = v0[37];
  v28 = v0[35];
  v29 = [objc_opt_self() sharedInstance];
  [v29 launchAppForJoinRequest:v26];

  v30 = v0[1];

  return v30();
}

uint64_t sub_10001380C()
{
  v1 = v0[38];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000138B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = type metadata accessor for UTType();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[32] = v7;
  v8 = *(v7 - 8);
  v5[33] = v8;
  v5[34] = *(v8 + 64);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();

  return _swift_task_switch(sub_100013A44, 0, 0);
}

uint64_t sub_100013A44()
{
  v1 = v0[23];
  v3 = v1[3];
  v2 = v1[4];
  sub_1000078DC(v1, v3);
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_100013B00;
  v5 = v0[31];

  return sub_10000C190(v5, v3, v2);
}

uint64_t sub_100013B00()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100014A88;
  }

  else
  {
    v2 = sub_100013C14;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100013C14()
{
  v141 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000159AC(v3, &qword_100172EE0, &qword_10011B220);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v4 = v0[23];
    v5 = type metadata accessor for Logger();
    sub_100007D20(v5, qword_10017F350);
    sub_100007878(v4, (v0 + 8));
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v140 = v9;
      *v8 = 136315138;
      sub_100007878((v0 + 8), (v0 + 13));
      sub_1000077C8(&qword_100172E68, &qword_100118B30);
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
      sub_100007920(v0 + 8);
      v13 = sub_10003E81C(v10, v12, &v140);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not find a URL to start nearby SharePlay from content: %s", v8, 0xCu);
      sub_100007920(v9);
    }

    else
    {

      sub_100007920(v0 + 8);
    }

LABEL_31:

    v129 = v0[1];

    return v129();
  }

  v21 = v0[23];
  v22 = *(v2 + 32);
  v22(v0[39], v3, v1);
  v24 = v21[3];
  v23 = v21[4];
  sub_1000078DC(v21, v24);
  if (!sub_10000C024(v24, v23, &qword_100172128, qword_10017F180, sub_10000BDE4))
  {
    v48 = v0[23];
    v50 = v48[3];
    v49 = v48[4];
    sub_1000078DC(v48, v50);
    if (sub_10000C024(v50, v49, &qword_100172130, qword_10017F198, sub_10000BEE0))
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v51 = v0[39];
      v52 = v0[36];
      v53 = v0[32];
      v54 = v0[33];
      v55 = type metadata accessor for Logger();
      sub_100007D20(v55, qword_10017F350);
      v138 = *(v54 + 16);
      v138(v52, v51, v53);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v0[36];
      v61 = v0[32];
      v60 = v0[33];
      if (v58)
      {
        v62 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v140 = v134;
        *v62 = 136315138;
        sub_10000FBA0(&qword_100172EE8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v135 = v55;
        v65 = v64;
        v66 = *(v60 + 8);
        v66(v59, v61);
        v67 = sub_10003E81C(v63, v65, &v140);
        v68 = v65;
        v55 = v135;
        v68, v69, v70, v71, v72, v73, v74, v75;
        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v56, v57, "Starting nearby SharePlay for participant using URL: %s", v62, 0xCu);
        sub_100007920(v134);
      }

      else
      {

        v66 = *(v60 + 8);
        v66(v59, v61);
      }

      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v103 = result;
      URL._bridgeToObjectiveC()(v102);
      v105 = v104;
      v106 = [v103 openURL:v104 withOptions:0];

      if (v106)
      {
        v66(v0[39], v0[32]);
      }

      else
      {
        if (qword_100172120 != -1)
        {
          swift_once();
        }

        v107 = v0[39];
        v108 = v0[35];
        v109 = v0[32];
        sub_100007D20(v55, qword_100172A30);
        v138(v108, v107, v109);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.error.getter();
        v112 = os_log_type_enabled(v110, v111);
        v113 = v0[39];
        v114 = v0[35];
        v115 = v0[32];
        if (v112)
        {
          v136 = v111;
          v116 = swift_slowAlloc();
          v139 = v113;
          v140 = swift_slowAlloc();
          v117 = v140;
          *v116 = 136315138;
          v118 = URL.absoluteString.getter();
          v120 = v119;
          v66(v114, v115);
          v121 = sub_10003E81C(v118, v120, &v140);
          v120, v122, v123, v124, v125, v126, v127, v128;
          *(v116 + 4) = v121;
          _os_log_impl(&_mh_execute_header, v110, v136, "Failed to open nearby SharePlay URL: %s", v116, 0xCu);
          sub_100007920(v117);

          v66(v139, v115);
        }

        else
        {

          v66(v114, v115);
          v66(v113, v115);
        }
      }
    }

    else
    {
      (*(v0[33] + 8))(v0[39], v0[32]);
    }

    goto LABEL_31;
  }

  v137 = v22;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v25 = v0[38];
  v26 = v0[39];
  v27 = v0[32];
  v28 = v0[33];
  v29 = type metadata accessor for Logger();
  sub_100007D20(v29, qword_10017F350);
  v133 = *(v28 + 16);
  v133(v25, v26, v27);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[38];
  v34 = v0[32];
  v35 = v0[33];
  if (v32)
  {
    v36 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v140 = v132;
    *v36 = 136315138;
    sub_10000FBA0(&qword_100172EE8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v35 + 8))(v33, v34);
    v40 = sub_10003E81C(v37, v39, &v140);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "Starting nearby SharePlay for host using URL: %s", v36, 0xCu);
    sub_100007920(v132);
  }

  else
  {

    (*(v35 + 8))(v33, v34);
  }

  v76 = v0[37];
  v130 = v0[39];
  v131 = v0[33];
  v77 = v0[32];
  v79 = v0[29];
  v78 = v0[30];
  v80 = v0[28];
  v81 = [objc_allocWithZone(NSItemProvider) init];
  v0[42] = v81;
  static UTType.url.getter();
  UTType.identifier.getter();
  v83 = v82;
  (*(v79 + 8))(v78, v80);
  v84 = String._bridgeToObjectiveC()();
  v83, v85, v86, v87, v88, v89, v90, v91;
  v133(v76, v130, v77);
  v92 = (*(v131 + 80) + 16) & ~*(v131 + 80);
  v93 = swift_allocObject();
  v137(v93 + v92, v76, v77);
  v0[6] = sub_1000155AC;
  v0[7] = v93;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000E2284;
  v0[5] = &unk_10015D210;
  v94 = _Block_copy(v0 + 2);

  [v81 registerItemForTypeIdentifier:v84 loadHandler:v94];
  _Block_release(v94);

  type metadata accessor for StartNearbySharePlayAction(0);
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  inited = swift_initStackObject();
  v0[43] = inited;
  *(inited + 16) = xmmword_100118700;
  *(inited + 32) = v81;
  v96 = v81;
  v97 = swift_task_alloc();
  v0[44] = v97;
  *v97 = v0;
  v97[1] = sub_100014788;
  v98 = v0[25];
  v99 = v0[26];
  v100 = v0[24];

  return sub_10000FDA0(inited, v100, v98, v99, 0);
}

uint64_t sub_100014788()
{
  *(*v1 + 360) = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v0)
  {
    v2 = sub_1000149A8;
  }

  else
  {
    v2 = sub_1000148D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000148D0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000149A8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100014A88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014B40(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  sub_1000077C8(&qword_100172E60, &qword_100118B28);
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for ProximityHandoffInteractionContent(0);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100014C38, 0, 0);
}

uint64_t sub_100014C38()
{
  v32 = v0;
  v1 = v0[16];
  sub_100007878(v0[12], (v0 + 2));
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[13];
    v3(v5, 0, 1, v0[15]);
    sub_100015174(v5, v4);
    v7 = *(type metadata accessor for ProximityHandoffContentAction(0) + 20);
    v30 = (&async function pointer to dispatch thunk of SFProximityHandoffClient.performHandoffContent(action:on:) + async function pointer to dispatch thunk of SFProximityHandoffClient.performHandoffContent(action:on:));
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_100014F6C;
    v9 = v0[17];

    return v30(v6 + v7, v9);
  }

  else
  {
    v11 = v0[14];
    v3(v11, 1, 1, v0[15]);
    sub_1000159AC(v11, &qword_100172E60, &qword_100118B28);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v12 = v0[12];
    v13 = type metadata accessor for Logger();
    sub_100007D20(v13, qword_10017F350);
    sub_100007878(v12, (v0 + 7));
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      sub_1000078DC(v0 + 7, v0[10]);
      swift_getDynamicType();
      v18 = _typeName(_:qualified:)();
      v20 = v19;
      sub_100007920(v0 + 7);
      v21 = sub_10003E81C(v18, v20, &v31);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unsupported content type for proximity handoff client Share action: %s", v16, 0xCu);
      sub_100007920(v17);
    }

    else
    {

      sub_100007920(v0 + 7);
    }

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_100014F6C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1000150F8;
  }

  else
  {
    v2 = sub_100015080;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100015080()
{
  sub_1000151D8(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000150F8()
{
  sub_1000151D8(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProximityHandoffInteractionContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000151D8(uint64_t a1)
{
  v2 = type metadata accessor for ProximityHandoffInteractionContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015234(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000165C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000152E0()
{
  v1 = sub_1000077C8(&qword_100172EB8, &unk_100118B50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100015374(uint64_t a1, uint64_t a2)
{
  sub_1000077C8(&qword_100172EB8, &unk_100118B50);

  sub_10000B458(a1, a2);
}

uint64_t sub_100015400(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100015418()
{
  result = qword_100172EC0;
  if (!qword_100172EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172EC0);
  }

  return result;
}

double sub_10001546C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t *sub_1000154C0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100015524()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000155AC(void (*a1)(void))
{
  v2 = *(type metadata accessor for URL() - 8);
  if (a1)
  {
    URL._bridgeToObjectiveC()(((*(v2 + 80) + 16) & ~*(v2 + 80)));
    v4 = v3;
    a1();
  }
}

double sub_100015660(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001546C(a1, a2);
  }

  return result;
}

unint64_t sub_100015674()
{
  result = qword_100172F10;
  if (!qword_100172F10)
  {
    sub_100007CCC(&qword_100172EF8, &qword_100118B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172F10);
  }

  return result;
}

uint64_t sub_1000156D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001572C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  *(v0 + 40), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100015800(uint64_t a1)
{
  type metadata accessor for UUID();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10000BCF0;

  return sub_100009868(a1, v11, v12, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001593C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000159AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000077C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100015A0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000156D8(result, a2);
  }

  return result;
}

uint64_t sub_100015A30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for UUID();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100015B6C, 0, 0);
}

uint64_t sub_100015B6C()
{
  v55 = v0;
  sub_100007878(v0[20], (v0 + 2));
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  if (swift_dynamicCast())
  {
    v1 = v0[17];
    v2 = v0[18];
    v0[27] = v1;
    v0[28] = v2;
    v3 = v0[19];
    v0[29] = v3;
    v4 = SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter();
    v0[30] = v4;
    v0[31] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v0[32] = type metadata accessor for AddToActiveSharePlaySessionAction(0);
      v8 = swift_task_alloc();
      v0[33] = v8;
      *v8 = v0;
      v8[1] = sub_100016038;

      return sub_10006ED88(v6, v7);
    }

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v28 = v0[25];
    v27 = v0[26];
    v29 = v0[24];
    v30 = v0[22];
    v31 = type metadata accessor for Logger();
    sub_100007D20(v31, qword_10017F350);
    (*(v28 + 16))(v27, v30, v29);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[25];
    v36 = v0[26];
    v37 = v0[24];
    if (v34)
    {
      log = v32;
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v38 = 136315138;
      sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = v33;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v35 + 8))(v36, v37);
      v42 = sub_10003E81C(v39, v41, &v54);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, log, v51, "Cannot add to SharePlay on nearby sharing interaction with ID as it's an unknown contact: %s", v38, 0xCu);
      sub_100007920(v52);
    }

    else
    {

      (*(v35 + 8))(v36, v37);
    }
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v10 = v0[20];
    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_10017F350);
    sub_100007878(v10, (v0 + 7));
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v54 = v15;
      *v14 = 136315138;
      sub_1000078DC(v0 + 7, v0[10]);
      swift_getDynamicType();
      v16 = _typeName(_:qualified:)();
      v18 = v17;
      sub_100007920(v0 + 7);
      v19 = sub_10003E81C(v16, v18, &v54);
      v18, v20, v21, v22, v23, v24, v25, v26;
      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unsupported content type for add to SharePlay action: %s", v14, 0xCu);
      sub_100007920(v15);
    }

    else
    {

      sub_100007920(v0 + 7);
    }
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_100016038(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return _swift_task_switch(sub_100016138, 0, 0);
}

uint64_t sub_100016138(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v116 = v8;
  v9 = *(v8 + 280);
  if (v9)
  {
    *(v8 + 248), a2, a3, a4, a5, a6, a7, a8;
    v10 = objc_opt_self();

    v11 = String._bridgeToObjectiveC()();
    v9, v12, v13, v14, v15, v16, v17, v18;
    v19 = [v10 normalizedHandleWithDestinationID:v11];

    if (v19)
    {
      v27 = *(v8 + 256);
      v28 = *(v8 + 224);
      v114 = *(v8 + 232);
      v29 = *(v8 + 216);
      v30 = *(v8 + 184);
      v9, v20, v21, v22, v23, v24, v25, v26;
      v31 = [objc_allocWithZone(TUConversationMember) initWithHandle:v19];
      v32 = *(v30 + *(v27 + 24));
      sub_1000077C8(&unk_100172E80, &unk_100118B40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100118700;
      *(inited + 32) = v31;
      v34 = v31;
      sub_10008FC40(inited);
      v36 = v35;
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
      sub_100015234(&qword_100172E90, &unk_100176390, TUConversationMember_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v36, v38, v39, v40, v41, v42, v43, v44;
      [v32 addRemoteMembers:isa toConversation:v29];

      goto LABEL_15;
    }

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100007D20(v74, qword_10017F350);

    v47 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    v9, v76, v77, v78, v79, v80, v81, v82;
    if (os_log_type_enabled(v47, v75))
    {
      v83 = *(v8 + 272);
      v60 = *(v8 + 224);
      v59 = *(v8 + 232);
      v61 = *(v8 + 216);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v115 = v63;
      *v62 = 136315138;
      v84 = sub_10003E81C(v83, v9, &v115);
      v9, v85, v86, v87, v88, v89, v90, v91;
      *(v62 + 4) = v84;
      v72 = "Unable to create a normalized handle with destination ID: %s";
      v73 = v75;
      goto LABEL_12;
    }

    v103 = *(v8 + 224);
    v102 = *(v8 + 232);
    v104 = *(v8 + 216);

    v9, v105, v106, v107, v108, v109, v110, v111;
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v45 = *(v8 + 248);
    v46 = type metadata accessor for Logger();
    sub_100007D20(v46, qword_10017F350);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v45, v49, v50, v51, v52, v53, v54, v55;
    v56 = os_log_type_enabled(v47, v48);
    v57 = *(v8 + 248);
    if (v56)
    {
      v59 = *(v8 + 232);
      v58 = *(v8 + 240);
      v61 = *(v8 + 216);
      v60 = *(v8 + 224);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v115 = v63;
      *v62 = 136315138;
      v64 = sub_10003E81C(v58, v57, &v115);
      v57, v65, v66, v67, v68, v69, v70, v71;
      *(v62 + 4) = v64;
      v72 = "Cannot start SharePlay on nearby sharing interaction with ID as the contact with identifier does not contain a FaceTime-able handle: %s";
      v73 = v48;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v47, v73, v72, v62, 0xCu);
      sub_100007920(v63);

      goto LABEL_15;
    }

    v93 = *(v8 + 224);
    v92 = *(v8 + 232);
    v94 = *(v8 + 216);

    v57, v95, v96, v97, v98, v99, v100, v101;
  }

LABEL_15:

  v112 = *(v8 + 8);

  return v112();
}

uint64_t sub_1000165C4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s31TUConversationActivityLoadErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s31TUConversationActivityLoadErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100016784()
{
  result = qword_100172F80;
  if (!qword_100172F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172F80);
  }

  return result;
}

__n128 sub_10001680C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100016820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100016868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000168D8@<X0>(void *a1@<X8>)
{
  v101 = a1;
  v97 = sub_1000077C8(&qword_100172FA0, &qword_100118D98);
  __chkstk_darwin(v97);
  v87 = (v86 - v2);
  v98 = sub_1000077C8(&qword_100172FA8, &qword_100118DA0);
  __chkstk_darwin(v98);
  v100 = (v86 - v3);
  v92 = sub_1000077C8(&qword_100172FB0, &qword_100118DA8);
  __chkstk_darwin(v92);
  v94 = (v86 - v4);
  v90 = sub_1000077C8(&qword_100172FB8, &qword_100118DB0);
  __chkstk_darwin(v90);
  v89 = (v86 - v5);
  v93 = sub_1000077C8(&qword_100172FC0, &qword_100118DB8);
  __chkstk_darwin(v93);
  v91 = v86 - v6;
  v99 = sub_1000077C8(&qword_100172FC8, &unk_100118DC0);
  __chkstk_darwin(v99);
  v95 = v86 - v7;
  v8 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v8 - 8);
  v10 = v86 - v9;
  v11 = type metadata accessor for SFAirDropSend.Transfer.State();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v88 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v86 - v15;
  v96 = v1;
  v115 = *v1;
  v17 = *(&v115 + 1);
  swift_retain_n();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(&v115, &v110, &qword_100172FD8, &qword_100118E18);
  sub_100007BA4(&v115, &v110, &qword_100172FD8, &qword_100118E18);
  swift_retain_n();
  static Published.subscript.getter();

  v102 = v12;
  v103 = v11;
  v18 = (*(v12 + 48))(v10, 1, v11);
  sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
  sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
  if (v18 == 1)
  {
    v19 = v97;
    sub_1000159AC(v10, &qword_100172FD0, &qword_10011A210);
    v20 = sub_1000188F0(v17);
    sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
    if (v20)
    {
      sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
      sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
      v21 = *(v96 + 16);
      KeyPath = swift_getKeyPath();
      v23 = v87;
      *v87 = KeyPath;
      sub_1000077C8(&qword_100173070, &qword_100118EC0);
      swift_storeEnumTagMultiPayload();
      v24 = type metadata accessor for AirDropAskRequestView(0);
      v25 = (v23 + v24[5]);
      type metadata accessor for AirDropTransferSession(0);
      sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);
      *v25 = ObservedObject.init(wrappedValue:)();
      v25[1] = v26;
      *(v23 + v24[6]) = v21;
      v27 = v24[7];
      *(v23 + v27) = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
      v28 = v24[8];
      if (qword_100172140 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v23 + v28) = v110;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v29 = v110;
      v30 = v23 + *(v19 + 36);
      *v30 = v21;
      *(v30 + 8) = v29;
      *(v30 + 16) = 1;
      v31 = &qword_100172FA0;
      v32 = &qword_100118D98;
      sub_100007BA4(v23, v89, &qword_100172FA0, &qword_100118D98);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100173000, &qword_100118E70);
      sub_100018FCC();
      sub_10001926C();
      v33 = v91;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v33, v94, &qword_100172FC0, &qword_100118DB8);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100173050, &qword_100118E80);
      sub_100018F40();
      sub_100019328();
      v34 = v95;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v33, &qword_100172FC0, &qword_100118DB8);
      sub_100007BA4(v34, v100, &qword_100172FC8, &unk_100118DC0);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100172FE0, &qword_100118E68);
      sub_100018EB4();
      sub_10001918C();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v34, &qword_100172FC8, &unk_100118DC0);
      v35 = v23;
      return sub_1000159AC(v35, v31, v32);
    }

    v57 = sub_1000186AC(v17);
    sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
    if (v57)
    {
      sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
      v58 = *(v96 + 16);
      type metadata accessor for AirDropTransferSession(0);
      sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);
      v59 = ObservedObject.init(wrappedValue:)();
      v61 = v60;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v104 = v59;
      v105 = v61;
      v106 = v58;
      v107 = v58;
      v108 = v110;
      v62 = 1;
LABEL_14:
      v109 = v62;

      sub_1000077C8(&qword_100173060, &qword_100118E88);
      sub_1000077C8(&qword_100173010, &qword_100118E78);
      sub_1000193B4();
      sub_100019058();
      _ConditionalContent<>.init(storage:)();
      v78 = v112;
      v79 = v113;
      v80 = v114;
      v81 = v111;
      v82 = v94;
      *v94 = v110;
      v82[1] = v81;
      *(v82 + 4) = v78;
      *(v82 + 40) = v79;
      *(v82 + 41) = v80;
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100173050, &qword_100118E80);
      sub_100018F40();
      sub_100019328();
      v83 = v95;
      _ConditionalContent<>.init(storage:)();
      v31 = &qword_100172FC8;
      v32 = &unk_100118DC0;
      sub_100007BA4(v83, v100, &qword_100172FC8, &unk_100118DC0);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100172FE0, &qword_100118E68);
      sub_100018EB4();
      sub_10001918C();
      _ConditionalContent<>.init(storage:)();

      v35 = v83;
      return sub_1000159AC(v35, v31, v32);
    }

    v73 = sub_100018CF8(v17);
    sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
    v74 = *(v96 + 16);
    type metadata accessor for AirDropTransferSession(0);
    sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);
    v75 = ObservedObject.init(wrappedValue:)();
    v77 = v76;
    swift_getKeyPath();
    swift_getKeyPath();
    if (v73)
    {
      static Published.subscript.getter();

      v104 = v75;
      v105 = v77;
      v106 = v74;
      v107 = v74;
      v108 = v110;
      v62 = 257;
      goto LABEL_14;
    }

    static Published.subscript.getter();

    v84 = v110;
    v85 = v100;
    *v100 = v75;
    v85[1] = v77;
    *(v85 + 16) = v74;
    *(v85 + 24) = v74;
    v85[4] = v84;
    *(v85 + 40) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100172FE0, &qword_100118E68);
    sub_100018EB4();
    sub_10001918C();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);

    v37 = v102;
    v36 = v103;
    (*(v102 + 32))(v16, v10, v103);
    v38 = *(v37 + 16);
    v39 = v88;
    v87 = v16;
    v38(v88, v16, v36);
    v40 = (*(v37 + 88))(v39, v36);
    v41 = enum case for SFAirDropSend.Transfer.State.transferFailed(_:);
    sub_1000159AC(&v115, &qword_100172FD8, &qword_100118E18);
    if (v40 == v41)
    {
      (*(v102 + 96))(v39, v103);
      v42 = *(sub_1000077C8(&qword_100172F20, &qword_100118F10) + 48);
      v43 = v39;
      v44 = *(v96 + 16);
      type metadata accessor for AirDropTransferSession(0);
      sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);
      v45 = ObservedObject.init(wrappedValue:)();
      v47 = v46;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v104 = v45;
      v105 = v47;
      v106 = v44;
      v107 = v44;
      v108 = v110;
      v109 = 1;
      sub_1000077C8(&qword_100173010, &qword_100118E78);
      sub_1000077C8(&qword_100172FE0, &qword_100118E68);
      sub_100019058();
      sub_10001918C();
      _ConditionalContent<>.init(storage:)();
      v49 = *(&v110 + 1);
      v48 = v110;
      v51 = *(&v111 + 1);
      v50 = v111;
      v52 = v112;
      v53 = v113;
      v54 = v114;
      sub_1000194C4(v110, *(&v110 + 1));
      v55 = type metadata accessor for SFAirDropSend.Failure();
      (*(*(v55 - 8) + 8))(v43 + v42, v55);
      v56 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      (*(*(v56 - 8) + 8))(v43, v56);
    }

    else
    {
      v63 = *(v96 + 16);
      type metadata accessor for AirDropTransferSession(0);
      sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);
      v64 = ObservedObject.init(wrappedValue:)();
      v66 = v65;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v104 = v64;
      v105 = v66;
      v106 = v63;
      v107 = v63;
      v108 = v110;
      v109 = 257;
      sub_1000077C8(&qword_100173010, &qword_100118E78);
      sub_1000077C8(&qword_100172FE0, &qword_100118E68);
      sub_100019058();
      sub_10001918C();
      _ConditionalContent<>.init(storage:)();
      v49 = *(&v110 + 1);
      v48 = v110;
      v51 = *(&v111 + 1);
      v50 = v111;
      v52 = v112;
      v53 = v113;
      v54 = v114;
      sub_1000194C4(v110, *(&v110 + 1));
      (*(v102 + 8))(v39, v103);
    }

    v86[1] = v54;
    v88 = v49;
    v96 = v50;
    v67 = v89;
    *v89 = v48;
    v67[1] = v49;
    v67[2] = v50;
    v67[3] = v51;
    v67[4] = v52;
    *(v67 + 40) = v53;
    *(v67 + 41) = v54;
    swift_storeEnumTagMultiPayload();
    sub_1000194C4(v48, v49);
    sub_1000077C8(&qword_100173000, &qword_100118E70);
    sub_100018FCC();
    sub_10001926C();
    v68 = v91;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v68, v94, &qword_100172FC0, &qword_100118DB8);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100173050, &qword_100118E80);
    sub_100018F40();
    v69 = v48;
    sub_100019328();
    v70 = v95;
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v68, &qword_100172FC0, &qword_100118DB8);
    sub_100007BA4(v70, v100, &qword_100172FC8, &unk_100118DC0);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100172FE0, &qword_100118E68);
    sub_100018EB4();
    sub_10001918C();
    _ConditionalContent<>.init(storage:)();
    v71 = v88;
    sub_1000194CC(v69, v88);
    sub_1000194CC(v69, v71);
    sub_1000159AC(v70, &qword_100172FC8, &unk_100118DC0);
    return (*(v102 + 8))(v87, v103);
  }
}

uint64_t sub_100017BBC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v69) = a3;
  LODWORD(v73) = a2;
  v70 = a1;
  v71 = a4;
  v72 = sub_1000077C8(&qword_1001730A0, &qword_100119028);
  __chkstk_darwin(v72);
  v67 = &v53 - v5;
  v64 = sub_1000077C8(&qword_1001730A8, &qword_100119030);
  __chkstk_darwin(v64);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v53 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v68 = *(v9 - 8);
  __chkstk_darwin(v9);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v62 = sub_1000077C8(&qword_1001730B0, &qword_100119038);
  __chkstk_darwin(v62);
  v61 = &v53 - v14;
  v15 = sub_1000077C8(&qword_1001730B8, &qword_100119040);
  __chkstk_darwin(v15);
  v65 = &v53 - v16;
  v17 = sub_1000077C8(&qword_1001730C0, &qword_100119048);
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = sub_1000077C8(&qword_1001730C8, &qword_100119050);
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  v23 = sub_1000077C8(&qword_1001730D0, &qword_100119058);
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  v26 = sub_1000077C8(&qword_1001730D8, &qword_100119060);
  v28 = __chkstk_darwin(v26);
  v30 = &v53 - v29;
  if (v73)
  {
    v31 = v27;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = sub_1000077C8(&qword_1001730E0, &qword_100119068);
    (*(*(v32 - 8) + 16))(v30, v70, v32);
    v33 = &v30[*(sub_1000077C8(&qword_100173100, &qword_100119070) + 36)];
    v34 = v75;
    *v33 = v74;
    *(v33 + 1) = v34;
    *(v33 + 2) = v76;
    *&v30[*(v31 + 36)] = 256;
    sub_100007BA4(v30, v22, &qword_1001730D8, &qword_100119060);
    swift_storeEnumTagMultiPayload();
    sub_10001971C();
    sub_10001986C();
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v25, v19, &qword_1001730D0, &qword_100119058);
    swift_storeEnumTagMultiPayload();
    sub_100019690();
    sub_1000197C8(&qword_100173120, &qword_1001730A0, &qword_100119028);
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v25, &qword_1001730D0, &qword_100119058);
    v35 = v30;
    v36 = &qword_1001730D8;
    v37 = &qword_100119060;
    return sub_1000159AC(v35, v36, v37);
  }

  v55 = v22;
  v56 = v20;
  v54 = v15;
  v57 = v25;
  v59 = v17;
  v73 = v23;
  v58 = v19;
  if ((v69 & 1) == 0)
  {
    v51 = sub_1000077C8(&qword_1001730E0, &qword_100119068);
    v52 = v67;
    (*(*(v51 - 8) + 16))(v67, v70, v51);
    *(v52 + *(v72 + 36)) = 256;
    sub_100007BA4(v52, v58, &qword_1001730A0, &qword_100119028);
    swift_storeEnumTagMultiPayload();
    sub_100019690();
    sub_1000197C8(&qword_100173120, &qword_1001730A0, &qword_100119028);
    _ConditionalContent<>.init(storage:)();
    v35 = v52;
    v36 = &qword_1001730A0;
    v37 = &qword_100119028;
    return sub_1000159AC(v35, v36, v37);
  }

  v69 = v27;
  v38 = v68;
  v39 = *(v68 + 104);
  v39(v13, enum case for DynamicTypeSize.xSmall(_:), v9, v28);
  v40 = v66;
  (v39)(v66, enum case for DynamicTypeSize.large(_:), v9);
  sub_100019A10(&qword_100173128, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v42 = *(v38 + 32);
    v43 = v60;
    v42(v60, v13, v9);
    v44 = v64;
    v42((v43 + *(v64 + 48)), v40, v9);
    v45 = v63;
    sub_100007BA4(v43, v63, &qword_1001730A8, &qword_100119030);
    v46 = *(v44 + 48);
    v47 = v61;
    v42(v61, v45, v9);
    v48 = *(v38 + 8);
    v48(v45 + v46, v9);
    sub_100019A58(v43, v45);
    v42((v47 + *(v62 + 36)), (v45 + *(v44 + 48)), v9);
    v48(v45, v9);
    sub_1000077C8(&qword_1001730E0, &qword_100119068);
    sub_1000199C8(&qword_100173108, &qword_1001730E0, &qword_100119068, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000199C8(&qword_100173118, &qword_1001730B0, &qword_100119038, &protocol conformance descriptor for ClosedRange<A>);
    v49 = v65;
    View.dynamicTypeSize<A>(_:)();
    sub_1000159AC(v47, &qword_1001730B0, &qword_100119038);
    *(v49 + *(v54 + 36)) = 256;
    sub_100007BA4(v49, v55, &qword_1001730B8, &qword_100119040);
    swift_storeEnumTagMultiPayload();
    sub_10001971C();
    sub_10001986C();
    v50 = v57;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v50, v58, &qword_1001730D0, &qword_100119058);
    swift_storeEnumTagMultiPayload();
    sub_100019690();
    sub_1000197C8(&qword_100173120, &qword_1001730A0, &qword_100119028);
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v50, &qword_1001730D0, &qword_100119058);
    return sub_1000159AC(v49, &qword_1001730B8, &qword_100119040);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000185E4(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_1000186AC(uint64_t a1)
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000194DC();
  v5 = static NSUserDefaults.airdrop.getter();
  v6 = SFAirDropUserDefaults.moveToAppEnabled.getter();

  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = (*(v2 + 88))(v4, v1);
    if (v7 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:) || v7 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
    {
      (*(v2 + 96))(v4, v1);
      v8 = sub_1000077C8(&qword_100173078, &unk_100118F60);
      *&v4[v8[12]], v9, v10, v11, v12, v13, v14, v15;
      *&v4[v8[16]], v16, v17, v18, v19, v20, v21, v22;
      v23 = v8[20];
      v24 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      (*(*(v24 - 8) + 8))(&v4[v23], v24);
      v25 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v25 - 8) + 8))(v4, v25);
      return 1;
    }

    (*(v2 + 8))(v4, v1);
  }

  return 0;
}

uint64_t sub_1000188F0(uint64_t a1)
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = (*(v2 + 88))(v7, v1);
  if (v8 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v2 + 96))(v7, v1);
    v9 = &qword_100173088;
    v10 = &unk_10011C520;
  }

  else
  {
    if (v8 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
    {
      (*(v2 + 96))(v7, v1);
      v16 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
      *&v7[*(v16 + 48)], v17, v18, v19, v20, v21, v22, v23;
      v24 = *(v16 + 64);
      v25 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      (*(*(v25 - 8) + 8))(&v7[v24], v25);
      v15 = type metadata accessor for SFAirDropReceive.ItemDestination();
      goto LABEL_7;
    }

    if (v8 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
    {
      (*(v2 + 96))(v7, v1);
      v11 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
      v12 = &unk_100173CB0;
      v13 = &unk_10011AE50;
      goto LABEL_4;
    }

    if (v8 != enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
    {
      (*(v2 + 8))(v7, v1);
      v26 = 0;
      goto LABEL_8;
    }

    (*(v2 + 96))(v7, v1);
    v9 = &unk_100174FD0;
    v10 = &unk_100118F70;
  }

  v11 = *(sub_1000077C8(v9, v10) + 48);
  v12 = &unk_100174F80;
  v13 = &unk_10011AE60;
LABEL_4:
  v14 = sub_1000077C8(v12, v13);
  (*(*(v14 - 8) + 8))(&v7[v11], v14);
  v15 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_7:
  (*(*(v15 - 8) + 8))(v7, v15);
  v26 = 1;
LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = SFAirDropReceive.Transfer.State.sfTransferState.getter();
  (*(v2 + 8))(v4, v1);
  if ((v26 & 1) != 0 || v27 == 1)
  {
    sub_1000194DC();
    v29 = static NSUserDefaults.airdrop.getter();
    v28 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_100018CF8(uint64_t a1)
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = SFAirDropReceive.Transfer.State.sfTransferState.getter();
  v6 = *(v2 + 8);
  v6(v4, v1);
  if (v5 == 3 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v7 = SFAirDropReceive.Transfer.State.sfTransferState.getter(), v6(v4, v1), v7 == 9))
  {
    sub_1000194DC();
    v8 = static NSUserDefaults.airdrop.getter();
    v9 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_100018EB4()
{
  result = qword_100172FE8;
  if (!qword_100172FE8)
  {
    sub_100007CCC(&qword_100172FC8, &unk_100118DC0);
    sub_100018F40();
    sub_100019328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172FE8);
  }

  return result;
}

unint64_t sub_100018F40()
{
  result = qword_100172FF0;
  if (!qword_100172FF0)
  {
    sub_100007CCC(&qword_100172FC0, &qword_100118DB8);
    sub_100018FCC();
    sub_10001926C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172FF0);
  }

  return result;
}

unint64_t sub_100018FCC()
{
  result = qword_100172FF8;
  if (!qword_100172FF8)
  {
    sub_100007CCC(&qword_100173000, &qword_100118E70);
    sub_100019058();
    sub_10001918C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172FF8);
  }

  return result;
}

unint64_t sub_100019058()
{
  result = qword_100173008;
  if (!qword_100173008)
  {
    sub_100007CCC(&qword_100173010, &qword_100118E78);
    sub_1000190E4();
    sub_100019138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173008);
  }

  return result;
}

unint64_t sub_1000190E4()
{
  result = qword_100173018;
  if (!qword_100173018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173018);
  }

  return result;
}

unint64_t sub_100019138()
{
  result = qword_100173020;
  if (!qword_100173020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173020);
  }

  return result;
}

unint64_t sub_10001918C()
{
  result = qword_100173028;
  if (!qword_100173028)
  {
    sub_100007CCC(&qword_100172FE0, &qword_100118E68);
    sub_100019218();
    sub_100019138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173028);
  }

  return result;
}

unint64_t sub_100019218()
{
  result = qword_100173030;
  if (!qword_100173030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173030);
  }

  return result;
}

unint64_t sub_10001926C()
{
  result = qword_100173038;
  if (!qword_100173038)
  {
    sub_100007CCC(&qword_100172FA0, &qword_100118D98);
    sub_100019A10(&qword_100173040, type metadata accessor for AirDropAskRequestView, &unk_10011EAE8);
    sub_100019138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173038);
  }

  return result;
}

unint64_t sub_100019328()
{
  result = qword_100173048;
  if (!qword_100173048)
  {
    sub_100007CCC(&qword_100173050, &qword_100118E80);
    sub_1000193B4();
    sub_100019058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173048);
  }

  return result;
}

unint64_t sub_1000193B4()
{
  result = qword_100173058;
  if (!qword_100173058)
  {
    sub_100007CCC(&qword_100173060, &qword_100118E88);
    sub_100019440();
    sub_100019138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173058);
  }

  return result;
}

unint64_t sub_100019440()
{
  result = qword_100173068;
  if (!qword_100173068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173068);
  }

  return result;
}

unint64_t sub_1000194DC()
{
  result = qword_100172F70;
  if (!qword_100172F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100172F70);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PlatterEnvironmentModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatterEnvironmentModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatterEnvironmentModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000195E8()
{
  result = qword_100173090;
  if (!qword_100173090)
  {
    sub_100007CCC(&qword_100173098, &qword_100118FD0);
    sub_100018EB4();
    sub_10001918C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173090);
  }

  return result;
}

unint64_t sub_100019690()
{
  result = qword_1001730E8;
  if (!qword_1001730E8)
  {
    sub_100007CCC(&qword_1001730D0, &qword_100119058);
    sub_10001971C();
    sub_10001986C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001730E8);
  }

  return result;
}

unint64_t sub_10001971C()
{
  result = qword_1001730F0;
  if (!qword_1001730F0)
  {
    sub_100007CCC(&qword_1001730D8, &qword_100119060);
    sub_1000197C8(&qword_1001730F8, &qword_100173100, &qword_100119070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001730F0);
  }

  return result;
}

uint64_t sub_1000197C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    sub_1000199C8(&qword_100173108, &qword_1001730E0, &qword_100119068, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001986C()
{
  result = qword_100173110;
  if (!qword_100173110)
  {
    sub_100007CCC(&qword_1001730B8, &qword_100119040);
    sub_100007CCC(&qword_1001730E0, &qword_100119068);
    sub_100007CCC(&qword_1001730B0, &qword_100119038);
    sub_1000199C8(&qword_100173108, &qword_1001730E0, &qword_100119068, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000199C8(&qword_100173118, &qword_1001730B0, &qword_100119038, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173110);
  }

  return result;
}

uint64_t sub_1000199C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_1001730A8, &qword_100119030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100019ACC()
{
  result = qword_100173130;
  if (!qword_100173130)
  {
    sub_100007CCC(&qword_100173138, &unk_100119078);
    sub_100019690();
    sub_1000197C8(&qword_100173120, &qword_1001730A0, &qword_100119028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173130);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for InteractiveSwipeModifier.DragState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InteractiveSwipeModifier.DragState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InteractiveSwipeModifier.DragState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100019C34(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100019C60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100019CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100019D18(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t sub_100019D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v36 = a1;
  v39 = a2;
  v4 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v4);
  v5 = sub_1000077C8(&qword_100173140, &qword_1001191B8);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v37 = sub_1000077C8(&qword_100173148, &qword_1001191C0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v36 - v8;
  v10 = sub_1000077C8(&qword_100173150, &qword_1001191C8);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = v2[4];
  v48 = v2[3];
  v49 = v13;
  v15 = v2[3];
  v14 = v2[4];
  v50 = v2[5];
  v40 = v15;
  v41 = v14;
  v42 = v2[5];
  sub_1000077C8(&qword_100173158, &qword_1001191D0);
  GestureState.wrappedValue.getter();
  v16 = v44;
  v17 = v45;
  v18 = sub_1000077C8(&qword_100173160, &qword_1001191D8);
  (*(*(v18 - 8) + 16))(v12, v36, v18);
  v19 = &v12[*(v10 + 36)];
  *v19 = v16;
  *(v19 + 1) = v17;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v40 = v48;
  v41 = v49;
  v42 = v50;
  GestureState.projectedValue.getter();
  v20 = v43;
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v36 = v47;
  v24 = swift_allocObject();
  v25 = *(v3 + 80);
  *(v24 + 80) = *(v3 + 64);
  *(v24 + 96) = v25;
  *(v24 + 112) = *(v3 + 96);
  *(v24 + 128) = *(v3 + 112);
  v26 = *(v3 + 16);
  *(v24 + 16) = *v3;
  *(v24 + 32) = v26;
  v27 = *(v3 + 48);
  *(v24 + 48) = *(v3 + 32);
  *(v24 + 64) = v27;
  v28 = &v7[*(v5 + 44)];
  *v28 = v20;
  *(v28 + 1) = v21;
  *(v28 + 2) = v22;
  *(v28 + 3) = v23;
  *(v28 + 2) = v36;
  v29 = &v7[*(v5 + 48)];
  *v29 = sub_10001A45C;
  v29[1] = v24;
  v30 = swift_allocObject();
  v31 = *(v3 + 80);
  *(v30 + 80) = *(v3 + 64);
  *(v30 + 96) = v31;
  *(v30 + 112) = *(v3 + 96);
  *(v30 + 128) = *(v3 + 112);
  v32 = *(v3 + 16);
  *(v30 + 16) = *v3;
  *(v30 + 32) = v32;
  v33 = *(v3 + 48);
  *(v30 + 48) = *(v3 + 32);
  *(v30 + 64) = v33;
  sub_10001A4C4(v3, &v40);
  sub_10001A4C4(v3, &v40);
  sub_1000199C8(&qword_100173168, &qword_100173140, &qword_1001191B8, &protocol conformance descriptor for GestureStateGesture<A, B>);
  Gesture.onEnded(_:)();

  sub_1000159AC(v7, &qword_100173140, &qword_1001191B8);
  static GestureMask.all.getter();
  sub_10001A4FC();
  sub_1000199C8(&unk_100173180, &qword_100173148, &qword_1001191C0, &protocol conformance descriptor for _EndedGesture<A>);
  v34 = v37;
  View.gesture<A>(_:including:)();
  (*(v38 + 8))(v9, v34);
  return sub_1000159AC(v12, &qword_100173150, &qword_1001191C8);
}

uint64_t sub_10001A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DragGesture.Value.translation.getter();
  if (v6 > 0.0)
  {
    v7 = *(a4 + 8);
    v8 = fabs(v7);
    if (v6 >= 2.22044605e-16 && v8 >= 2.22044605e-16)
    {
      v6 = v7 * (1.0 - 1.0 / (v6 / v7 * *(a4 + 16) + 1.0));
    }
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  static Animation.interactiveSpring(response:dampingFraction:blendDuration:)();
  Transaction.animation.setter();
  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10001A338(uint64_t a1, uint64_t a2)
{
  v3 = Edge.rawValue.getter();
  if (v3 == Edge.rawValue.getter())
  {
    v4 = -1.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = DragGesture.Value.predictedEndTranslation.getter();
  if (*a2 < v6 * v4 || (v5 = DragGesture.Value.translation.getter(), *(a2 + 8) < v4 * v7))
  {
    (*(a2 + 32))(v5);
  }

  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  return Binding.wrappedValue.setter();
}