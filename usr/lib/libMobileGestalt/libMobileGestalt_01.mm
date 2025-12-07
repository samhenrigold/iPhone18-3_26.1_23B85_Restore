const void *sub_1B01A17DC(const void *a1, int a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = _CFCopySystemVersionPlatformDictionary();
  }

  else
  {
    v5 = _CFCopySystemVersionDictionary();
  }

  v6 = v5;
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, a1);
    v8 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    else if (a2)
    {
      v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      if (v16)
      {
        v22 = v16 + 1;
      }

      else
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      }

      _MGLog(v22, 302, @"Could not lookup %@ from system version dictionary", v17, v18, v19, v20, v21, a1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = a1;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not lookup %@ from system version dictionary", buf, 0xCu);
      }
    }

    CFRelease(v6);
  }

  else
  {
    if (a2)
    {
      v9 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      v15 = v9 ? v9 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      _MGLog(v15, 307, @"Could not load the system version dictionary", v10, v11, v12, v13, v14);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not load the system version dictionary", buf, 2u);
      }
    }

    return 0;
  }

  return v8;
}

const void *sub_1B01A1980(const __CFDictionary *a1, const void *a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    v7 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    else if (a3)
    {
      v15 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      if (v15)
      {
        v21 = v15 + 1;
      }

      else
      {
        v21 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      }

      _MGLog(v21, 334, @"Could not lookup %@ from dictionary", v16, v17, v18, v19, v20, a2);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = a2;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not lookup %@ from dictionary", buf, 0xCu);
      }
    }

    CFRelease(a1);
  }

  else
  {
    if (a3)
    {
      v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      v14 = v8 ? v8 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      _MGLog(v14, 339, @"No dictionary provided", v9, v10, v11, v12, v13);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No dictionary provided", buf, 2u);
      }
    }

    return 0;
  }

  return v7;
}

void sub_1B01A1B38(const __CFArray *a1, uint64_t a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v9.location = 0;
    v9.length = Count;
    CFArrayGetValues(a1, v9, v5);
    if (Count >= 1)
    {
      v6 = v5;
      do
      {
        v7 = *v6++;
        (*(a2 + 16))(a2, v7);
        --Count;
      }

      while (Count);
    }

    free(v5);
  }
}

const __CFData *sub_1B01A1BE8(CFDataRef theData)
{
  v1 = theData;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(v1);
    if (Length < 2)
    {
      return 0;
    }

    v4 = BytePtr;
    v5 = 0;
    while (!BytePtr[Length - 1 + v5])
    {
      --v5;
      if (!(Length + v5))
      {
        return 0;
      }
    }

    v6 = Length + v5;
    if (!(Length + v5))
    {
      return 0;
    }

    if (v6 >= 1)
    {
      v7 = 0;
      v8 = MEMORY[0x1E69E9830];
      do
      {
        v9 = v4[v7];
        if (!(v9 < 0 ? __maskrune(v4[v7], 0x40000uLL) : *(v8 + 4 * v9 + 60) & 0x40000))
        {
          return 0;
        }
      }

      while (v6 != ++v7);
    }

    if (v5)
    {
      v11 = CFStringCreateWithCString(0, v4, 0x8000100u);
      v12 = v11;
      if (v5 == -1)
      {
        v13 = CFStringCreateWithFormat(0, 0, @"%@\\0", v11);
      }

      else
      {
        v13 = CFStringCreateWithFormat(0, 0, @"%@ (%llux\\0)", v11, -v5);
      }
    }

    else
    {
      v12 = CFStringCreateWithBytes(0, v4, Length, 0x8000100u, 0);
      v13 = CFStringCreateWithFormat(0, 0, @"%@", v12);
    }

    v1 = v13;
    CFRelease(v12);
  }

  return v1;
}

uint64_t sub_1B01A1D48(char *a1, const void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (!access(a1, 4))
  {
    v7 = sub_1B0191C2C(a1, 1);
    if (v7)
    {
      v8 = v7;
      Value = CFDictionaryGetValue(v7, a2);
      if (Value)
      {
        v10 = Value;
        v11 = CFGetTypeID(Value);
        if (v11 == CFBooleanGetTypeID())
        {
          v12 = CFBooleanGetValue(v10) == 0;
LABEL_11:
          v6 = !v12;
          if (a3)
          {
            *a3 = 1;
          }

          goto LABEL_22;
        }

        if (v11 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
          v12 = valuePtr == 0;
          goto LABEL_11;
        }

        v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
        if (v13)
        {
          v19 = v13 + 1;
        }

        else
        {
          v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
        }

        _MGLog(v19, 767, @"illegal type for %@ in %s", v14, v15, v16, v17, v18, a2, a1);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          valuePtr = 138412546;
          v22 = a2;
          v23 = 2080;
          v24 = a1;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "illegal type for %@ in %s", &valuePtr, 0x16u);
        }
      }

      v6 = 0;
LABEL_22:
      CFRelease(v8);
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1B01A1EF0()
{
  v17 = *MEMORY[0x1E69E9840];
  *host_info_out = 0;
  host_info_outCnt = 2;
  v0 = MEMORY[0x1B27212C0]();
  v1 = host_info(v0, 12, host_info_out, &host_info_outCnt);
  if (v1)
  {
    v2 = v1;
    v3 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v4)
    {
      v3 = v4 + 1;
    }

    v5 = mach_error_string(v2);
    _MGLog(v3, 936, @"host_info failed: %s", v6, v7, v8, v9, v10, v5);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = mach_error_string(v2);
      *buf = 136315138;
      v16 = v11;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "host_info failed: %s", buf, 0xCu);
    }
  }

  return *host_info_out;
}

BOOL sub_1B01A1FFC(const char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = NXGetArchInfoFromName(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B01A1EF0();
    *&fat_archs.cputype = *&v3->cputype;
    *&fat_archs.offset = 0;
    fat_archs.align = 0;
    return NXFindBestFatArch(v4, SHIDWORD(v4), &fat_archs, 1u) != 0;
  }

  else
  {
    v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v6)
    {
      v12 = v6 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    }

    _MGLog(v12, 1039, @"arch %s unknown", v7, v8, v9, v10, v11, a1);
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v13)
    {
      fat_archs.cputype = 136315138;
      *&fat_archs.cpusubtype = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "arch %s unknown", &fat_archs, 0xCu);
      return 0;
    }
  }

  return result;
}

BOOL sub_1B01A2114(const __CFString *a1)
{
  v2 = MGGetStringAnswer(@"k7QIBwZJJOVw+Sej/8h8VA");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFStringCompare(v2, a1, 0) == kCFCompareEqualTo;
  CFRelease(v3);
  return v4;
}

BOOL sub_1B01A2170(const char *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = access(a1, 0);
  if (v2 && *__error() != 2)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v4)
    {
      v3 = v4 + 1;
    }

    v5 = __error();
    _MGLog(v3, 1071, @"access(2) %s: %{errno}d", v6, v7, v8, v9, v10, a1, *v5);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *__error();
      *buf = 136315394;
      v14 = a1;
      v15 = 1024;
      v16 = v11;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "access(2) %s: %{errno}d", buf, 0x12u);
    }
  }

  return v2 == 0;
}

__CFString *sub_1B01A2290(int a1)
{
  if ((a1 - 1) > 7)
  {
    v1 = @"Invalid Key";
  }

  else
  {
    v1 = off_1E7A92570[a1 - 1];
  }

  CFRetain(v1);
  return v1;
}

__CFString *sub_1B01A22DC(int a1)
{
  v1 = @"MGS_SIM_NULL_STATUS";
  if (a1 == 2)
  {
    v1 = @"MGS_SIM_TRAY_STATUS";
  }

  if (a1 == 1)
  {
    v2 = @"MGS_SIM_STATUS";
  }

  else
  {
    v2 = v1;
  }

  CFRetain(v2);
  return v2;
}

CFDataRef sub_1B01A232C()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0193ED4("IODeviceTree:/chosen", @"display-scale", 0, 0, 1);
  v1 = sub_1B0193ED4("IODeviceTree:/chosen", @"display-rotation", 0, 0xFFFFFFFFLL, 1);
  if (v1 == -1)
  {
    v3 = -1.0;
  }

  else
  {
    v3 = ((360 - v1) % 360) * 0.0174532925;
  }

  v4 = sub_1B0193D14(v1, v2);
  if (v4 != 4)
  {
    v6 = sub_1B0193D14(v4, v5);
    if (v6 != 8 && sub_1B0193D14(v6, v7) != 10)
    {
      *bytes = 0;
      v21 = 0;
      MainDisplay = IOMobileFramebufferGetMainDisplay();
      if (MainDisplay)
      {
        v10 = MainDisplay;
        v11 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c", 47);
        if (v11)
        {
          v17 = v11 + 1;
        }

        else
        {
          v17 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c";
        }

        _MGLog(v17, 64, @"IOMobileFramebufferGetMainDisplay failed: %d\n", v12, v13, v14, v15, v16, v10);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v19 = v10;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOMobileFramebufferGetMainDisplay failed: %d\n", buf, 8u);
        }
      }
    }
  }

  memset(bytes, 255, sizeof(bytes));
  LODWORD(v21) = -1;
  *(&v21 + 1) = v0;
  v22 = v3;
  *v23 = -1;
  return CFDataCreate(0, bytes, 24);
}

CFDataRef sub_1B01A2E34()
{
  v12 = *MEMORY[0x1E69E9840];
  MainDisplay = IOMobileFramebufferGetMainDisplay();
  if (MainDisplay)
  {
    v1 = MainDisplay;
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c", 47);
    if (v2)
    {
      v8 = v2 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c";
    }

    _MGLog(v8, 286, @"IOMobileFramebufferGetMainDisplay failed: %d\n", v3, v4, v5, v6, v7, v1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOMobileFramebufferGetMainDisplay failed: %d\n", buf, 8u);
    }
  }

  return 0;
}

uint64_t sub_1B01A2FFC()
{
  if (qword_1ED446D80 != -1)
  {
    sub_1B01930B4();
  }

  return qword_1ED446D78;
}

uint64_t sub_1B01A3034()
{
  if (qword_1ED446D38 != -1)
  {
    sub_1B01973E4();
  }

  if (dword_1ED446CAC == -1)
  {
    v0 = 0;
  }

  else
  {
    v0 = BYTE4(qword_1B01F9458[4 * dword_1ED446CAC + 2]);
  }

  return v0 & 1;
}

const void *sub_1B01A3090()
{
  v0 = sub_1B0196D4C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"SoftwareBehavior");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

uint64_t sub_1B01A30E8(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6D0168 != -1)
  {
    sub_1B01F0284();
  }

  return qword_1EB6D0160;
}

char *sub_1B01A3120()
{
  result = sub_1B0193940("hw.target");
  qword_1EB6D0160 = result;
  return result;
}

uint64_t sub_1B01A3148(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6D0188 != -1)
  {
    sub_1B01F0298();
  }

  return qword_1EB6D0158;
}

char *sub_1B01A3180()
{
  result = sub_1B0193940("hw.osenvironment");
  qword_1EB6D0158 = result;
  return result;
}

uint64_t sub_1B01A31A8()
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 8;
  v4 = 0;
  if (sysctlbyname("hw.memsize_physical", &v4, &v3, 0, 0) != -1)
  {
    return v4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = __error();
    v2 = strerror(*v1);
    *buf = 136315138;
    v6 = v2;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "sysctlbyname: %s", buf, 0xCu);
  }

  return 0;
}

uint64_t sub_1B01A3280()
{
  v1 = 8;
  v2 = 0;
  if (sysctlbyname("hw.cpusubfamily", &v2, &v1, 0, 0) != -1)
  {
    return v2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1B01F02AC();
  }

  return 0;
}

uint64_t sub_1B01A3304()
{
  v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v0)
  {
    v6 = v0 + 1;
  }

  else
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v6, 189, @"called dummy function!", v1, v2, v3, v4, v5);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "called dummy function!", v8, 2u);
  }

  return 0;
}

uint64_t _MGWriteCacheOnHelper()
{
  v1 = *(off_1EB6CFEC0 + 44);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(44, 2);
  }

  return v1();
}

uint64_t _MGWriteRebuildCacheSentinel()
{
  v1 = *(off_1EB6CFEC0 + 48);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(48, 2);
  }

  return v1();
}

CFNumberRef _MGCopyAnswerWithMode(const __CFString *a1, int a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    valuePtr = a2;
    v7 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v6, @"QueryMode", v7);
      v9 = sub_1B0191100(a1, 0);
      CFRelease(v6);
      CFRelease(v8);
    }

    else
    {
      sub_1B01F034C(v6);
      return 0;
    }
  }

  else
  {
    sub_1B01F03CC(&v12);
    return v12;
  }

  return v9;
}

void sub_1B01A3520(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B01A3598;
  v3[3] = &unk_1E7A92898;
  v3[4] = *(a1 + 32);
  v3[5] = a3;
  sub_1B01A1B38(a2, v3);
}

CFStringRef sub_1B01A35AC()
{
  v33 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0191100(@"PxEDp0oOasJ92F/V7YBa8A", 0);
  v1 = sub_1B0193624();
  if (v0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    if (CFDataGetLength(v0) > 16)
    {
      BytePtr = CFDataGetBytePtr(v0);
      v11 = CFStringCreateWithBytes(0, BytePtr, 17, 0x600u, 0);
      v21 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v21)
      {
        v27 = v21 + 1;
      }

      else
      {
        v27 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v27, 8701, @"Copy ScreenSerialNumber: cfScreenSN %@", v22, v23, v24, v25, v26, v11);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v11;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Copy ScreenSerialNumber: cfScreenSN %@", buf, 0xCu);
      }
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v13)
      {
        v12 = v13 + 1;
      }

      Length = CFDataGetLength(v0);
      _MGLog(v12, 8697, @"RawPanelSerialNumber Invalid Length: %ld", v15, v16, v17, v18, v19, Length);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v30 = CFDataGetLength(v0);
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "RawPanelSerialNumber Invalid Length: %ld", buf, 0xCu);
      }

      sub_1B0191658(7);
      v11 = 0;
    }

    goto LABEL_23;
  }

  v3 = v1;
  v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v4)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v10, 8704, @"Failed Copy ScreenSerialNumber: cfScreenSN %@, error %d", v5, v6, v7, v8, v9, 0, v3);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = 0;
    v31 = 1024;
    v32 = v3;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed Copy ScreenSerialNumber: cfScreenSN %@, error %d", buf, 0x12u);
  }

  v11 = 0;
  if (v0)
  {
LABEL_23:
    CFRelease(v0);
  }

  return v11;
}

uint64_t sub_1B01A384C(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 4 || (v4 = sub_1B0193D14(v2, v3), v4 == 1) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 2) || (v10 = sub_1B0193D14(v8, v9), v10 == 7) || sub_1B0193D14(v10, v11) == 11)
  {
    v19 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v25 = 368885834;
    v24 = xmmword_1B01FE854;
    v23 = -526227167;
    v22 = xmmword_1B01FE868;
    v21 = MGIsDeviceOneOfType(&v24, v12, v13, v14, v15, v16, v17, v18, &v22);
    v19 = MEMORY[0x1E695E4C0];
    if (!v21)
    {
      v19 = MEMORY[0x1E695E4D0];
    }
  }

  return *v19;
}

CFTypeRef sub_1B01A3954()
{
  TypeID = CFBooleanGetTypeID();

  return sub_1B019697C("copyWifiCallingSecondaryDeviceCapability", &unk_1F2637280, TypeID);
}

CFDataRef sub_1B01A3990()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (v0 = sub_1B01BD358("fillmore")) == 0)
  {
    v1 = sub_1B01A79C0();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = v0;
  }

  if (CFDataGetLength(v1) == 6)
  {
    v15 = 0;
    *buffer = 0;
    *bytes = -257;
    Mutable = CFDataCreateMutable(0, 0);
    v16.location = 0;
    v16.length = 3;
    CFDataGetBytes(v1, v16, buffer);
    CFDataAppendBytes(Mutable, buffer, 3);
    v15 = 0;
    *buffer = 0;
    CFDataAppendBytes(Mutable, bytes, 2);
    v17.location = 3;
    v17.length = 3;
    CFDataGetBytes(v1, v17, buffer);
    CFDataAppendBytes(Mutable, buffer, 3);
    Copy = CFDataCreateCopy(0, Mutable);
    CFRelease(v1);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return Copy;
  }

  else if (CFDataGetLength(v1) != 8)
  {
    v4 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v5)
    {
      v4 = v5 + 1;
    }

    Length = CFDataGetLength(v1);
    _MGLog(v4, 1599, @"TMAC address has unexpected length %zu", v7, v8, v9, v10, v11, Length);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1B01F05D0(v1);
    }
  }

  return v1;
}

__CFString *sub_1B01A3BEC()
{
  v0 = sub_1B01C58C4("IODeviceTree:", @"wlan", 0, @"wifi-module-sn", 0);
  if (!v0)
  {
    v1 = sub_1B019BAC0(1, "AppleBCMWLANBusInterfacePCIe", @"wifi-module-sn");
    if (v1)
    {
      v0 = v1;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v0))
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        BytePtr = CFDataGetBytePtr(v0);
        Length = CFDataGetLength(v0);
        if (Length >= 1)
        {
          v6 = Length;
          do
          {
            v7 = *BytePtr++;
            CFStringAppendFormat(Mutable, 0, @"%02X", v7);
            --v6;
          }

          while (v6);
        }

LABEL_21:
        CFRelease(v0);
        return Mutable;
      }

      v15 = CFStringGetTypeID();
      if (v15 != CFGetTypeID(v0))
      {
        v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v16)
        {
          v22 = v16 + 1;
        }

        else
        {
          v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v22, 6207, @"Unsupported type.", v17, v18, v19, v20, v21);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unsupported type.", v24, 2u);
        }

        Mutable = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v8)
      {
        v14 = v8 + 1;
      }

      else
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v14, 6193, @"Failed to retrieve data AppleBCMWLANBusInterfacePCIe:wifi-module-sn", v9, v10, v11, v12, v13);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to retrieve data AppleBCMWLANBusInterfacePCIe:wifi-module-sn", buf, 2u);
      }

      return 0;
    }
  }

  return v0;
}

BOOL sub_1B01A3E54(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  v13 = -338255497;
  v12 = xmmword_1B01FE7DC;
  v11 = 152704997;
  v10 = xmmword_1B01FE7F0;
  return !MGIsDeviceOneOfType(&v12, v2, v3, v4, v5, v6, v7, v8, &v10);
}

uint64_t sub_1B01A4128()
{
  v0 = sub_1B01BB8E8();
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01A41C8(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 7 || (v4 = sub_1B0193D14(v2, v3), v4 == 4) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 2) || (v10 = sub_1B0193D14(v8, v9), v10 == 1) || (v12 = sub_1B0193D14(v10, v11), v12 == 11) || sub_1B0193D14(v12, v13) == 8)
  {
    v21 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v27 = 368885834;
    v26 = xmmword_1B01FE854;
    v25 = -526227167;
    v24 = xmmword_1B01FE868;
    v23 = MGIsDeviceOneOfType(&v26, v14, v15, v16, v17, v18, v19, v20, &v24);
    v21 = MEMORY[0x1E695E4C0];
    if (!v23)
    {
      v21 = MEMORY[0x1E695E4D0];
    }
  }

  return *v21;
}

BOOL sub_1B01A4320(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 1)
  {
    return sub_1B019AFD8() >> 33 && (sub_1B019D140(@"H14") || sub_1B019D228(@"t8103", 0));
  }

  return sub_1B019D140(@"H16") && sub_1B019AFD8() >> 33;
}

BOOL sub_1B01A439C()
{
  result = sub_1B01B9780();
  if (result)
  {
    return !sub_1B019CA20();
  }

  return result;
}

BOOL sub_1B01A43C0()
{
  valuePtr = 69;
  v0 = *(off_1EB6CFEC0 + 100);
  if (!v0)
  {
    v0 = sub_1B0193150(100, 2);
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = (v0)(*MEMORY[0x1E695E480], 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(off_1EB6CFEC0 + 99);
  if (!v4)
  {
    v4 = sub_1B0193150(99, 2);
  }

  v5 = (v4)(v3);
  if (!v5)
  {
    CFRelease(v3);
    return 0;
  }

  v6 = v5;
  if (!CFArrayGetCount(v5))
  {
    v10 = 0;
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v7 = *(off_1EB6CFEC0 + 98);
  if (!v7)
  {
    v7 = sub_1B0193150(98, 2);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  v9 = *(off_1EB6CFEC0 + 103);
  if (!v9)
  {
    v9 = sub_1B0193150(103, 1);
  }

  v10 = (v7)(ValueAtIndex, *v9);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = CFNumberCreate(v1, kCFNumberSInt32Type, &valuePtr);
  if (!v11)
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v15.length = CFArrayGetCount(v10);
  v15.location = 0;
  v12 = CFArrayContainsValue(v10, v15, v11) != 0;
LABEL_20:
  CFRelease(v3);
  CFRelease(v6);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t sub_1B01A4568()
{
  v1 = *(off_1EB6CFEC0 + 36);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(36, 2);
  }

  return v1();
}

CFTypeRef sub_1B01A45E8()
{
  v0 = *(off_1EB6CFEC0 + 20);
  if (!v0)
  {
    v0 = sub_1B0193150(20, 2);
  }

  TypeID = CFStringGetTypeID();

  return sub_1B0196878("_CTServerConnectionGetActiveWirelessTechnology", v0, TypeID);
}

BOOL sub_1B01A4648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = -1157300313;
  v11 = xmmword_1B01FE200;
  v10 = -2132668294;
  v9 = xmmword_1B01FE214;
  return MGIsDeviceOneOfType(&v11, a2, a3, a4, a5, a6, a7, a8, &v9);
}

__CFData *sub_1B01A4768()
{
  if (MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {

    return sub_1B0199908("IODeviceTree:/baseband", @"function-bb_ap_time_sync", 0);
  }

  else
  {

    return sub_1B01C583C("IODeviceTree:", @"gps", 0, @"function-gps_time-mark", 0);
  }
}

CFTypeRef sub_1B01A47E8()
{
  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    v7 = *(off_1EB6CFEC0 + 65);
    if (!v7)
    {
      v7 = sub_1B0193150(65, 1);
    }

    v6 = *v7;
    if (*v7)
    {
      CFRetain(*v7);
      return v6;
    }

    sub_1B01F0654(&v11);
    return v11;
  }

  LODWORD(v11) = -1;
  if (sub_1B01914DC(@"XQBHOWjPt2P+uNqlLm1P7A", 5, 5, kCFNumberSInt32Type, &v11) && v11 >= 2)
  {
    v0 = *(off_1EB6CFEC0 + 16);
    if (!v0)
    {
      v0 = sub_1B0193150(16, 2);
    }

    TypeID = CFDictionaryGetTypeID();
    v2 = sub_1B0196878("_CTServerConnectionCopyPostponementStatus", v0, TypeID);
    if (v2)
    {
      v3 = v2;
      v4 = *(off_1EB6CFEC0 + 64);
      if (!v4)
      {
        v4 = sub_1B0193150(64, 1);
      }

      Value = CFDictionaryGetValue(v3, *v4);
      v6 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      else
      {
        sub_1B01F074C();
      }

      CFRelease(v3);
      return v6;
    }

    sub_1B01F07B8(&v11);
    return v11;
  }

  v8 = *(off_1EB6CFEC0 + 22);
  if (!v8)
  {
    v8 = sub_1B0193150(22, 2);
  }

  v9 = CFStringGetTypeID();
  v6 = sub_1B0196878("_CTServerConnectionGetSIMStatus", v8, v9);
  if (!v6)
  {
    sub_1B01F06D0(&v11);
    return v11;
  }

  return v6;
}

uint64_t sub_1B01A497C()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"ND6ZSbBBgMgwtMfh+OL5Wg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01A4A30()
{
  v1 = 0.0;
  LODWORD(result) = sub_1B01914DC(@"main-screen-scale", 7, 7, kCFNumberFloat32Type, &v1);
  if (v1 > 1.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01A4AC8(uint64_t a1, uint64_t a2)
{
  v202 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 7 || sub_1B0193D14(v2, v3) == 4 || (v201 = 1789837692, v200 = xmmword_1B01FDF08, v199 = -1239654590, v198 = xmmword_1B01FDF1C, v197 = -1579092758, v196 = xmmword_1B01FDF30, v195 = 48355600, v194 = xmmword_1B01FDF44, v193 = -679691073, v192 = xmmword_1B01FDF58, v191 = 1430379884, v190 = xmmword_1B01FDF6C, MGIsDeviceOneOfType(&v200, v4, v5, v6, v7, v8, v9, v10, &v198)) || (v189 = -1527788847, v188 = xmmword_1B01FDB84, v187 = 1532898719, v186 = xmmword_1B01FDB70, v185 = 1275676051, v184 = xmmword_1B01FDBAC, v183 = 1908474541, v182 = xmmword_1B01FDB98, MGIsDeviceOneOfType(&v188, v11, v12, v13, v14, v15, v16, v17, &v186)) || (v181 = 1711910369, v180 = xmmword_1B01FDE7C, v179 = -1282800328, v178 = xmmword_1B01FDE90, v177 = -2092955395, v176 = xmmword_1B01FDE54, v175 = 674998600, v174 = xmmword_1B01FDE68, MGIsDeviceOneOfType(&v180, v18, v19, v20, v21, v22, v23, v24, &v178)) || (v173 = -414334491, v172 = xmmword_1B01FE19C, v171 = -1509831889, v170 = xmmword_1B01FE1B0, v169 = 289690957, v168 = xmmword_1B01FE174, v167 = 586720268, v166 = xmmword_1B01FE188, MGIsDeviceOneOfType(&v172, v25, v26, v27, v28, v29, v30, v31, &v170)) || (v165 = 470738981, v164 = xmmword_1B01FE7A0, v163 = 710807826, v162 = xmmword_1B01FE78C, v161 = 1860682089, v160 = xmmword_1B01FE778, v159 = -2085056298, v158 = xmmword_1B01FE764, v39 = MGIsDeviceOneOfType(&v164, v32, v33, v34, v35, v36, v37, v38, &v162)) || sub_1B0193D14(v39, v40) == 8 || (v157 = -1403227947, v156 = xmmword_1B01FE304, v155 = 729118884, v154 = xmmword_1B01FE2F0, v153 = 1046806126, v152 = xmmword_1B01FE318, v151 = -188760945, v150 = xmmword_1B01FE32C, MGIsDeviceOneOfType(&v156, v41, v42, v43, v44, v45, v46, v47, &v154)) || (v149 = -1639077591, v148 = xmmword_1B01FDE2C, v147 = 338555555, v146 = xmmword_1B01FDE40, v145 = 1032708406, v144 = xmmword_1B01FDE04, v143 = 729903963, v142 = xmmword_1B01FDE18, MGIsDeviceOneOfType(&v148, v48, v49, v50, v51, v52, v53, v54, &v146)) || (v141 = 28030256, v140 = xmmword_1B01FE2A0, v139 = 1214363620, v138 = xmmword_1B01FE2B4, v137 = -798153473, v136 = xmmword_1B01FE2C8, v135 = -776721724, v134 = xmmword_1B01FE2DC, v133 = -489993439, v132 = xmmword_1B01FE278, v131 = 886875686, v130 = xmmword_1B01FE28C, MGIsDeviceOneOfType(&v140, v55, v56, v57, v58, v59, v60, v61, &v138)) || (v129 = -350584140, v128 = xmmword_1B01FE340, v127 = 368778837, v126 = xmmword_1B01FE354, v125 = -1418383976, v124 = xmmword_1B01FE368, v123 = -1213485500, v122 = xmmword_1B01FE37C, MGIsDeviceOneOfType(&v128, v62, v63, v64, v65, v66, v67, v68, &v126)) || (v121 = -199226823, v120 = xmmword_1B01FDC24, v119 = 1412427398, v118 = xmmword_1B01FDC38, v117 = -1283070668, v116 = xmmword_1B01FDC4C, v115 = 160260070, v114 = xmmword_1B01FDC60, MGIsDeviceOneOfType(&v120, v69, v70, v71, v72, v73, v74, v75, &v118)) || (v113 = 317289457, v112 = xmmword_1B01FE1D8, v111 = 401945557, v110 = xmmword_1B01FE1EC, MGIsDeviceOneOfType(&v112, v76, v77, v78, v79, v80, v81, v82, &v110)) || (v109 = 1602014129, v108 = xmmword_1B01FDECC, v107 = -810116762, v106 = xmmword_1B01FDEE0, v105 = -1195351767, v104 = xmmword_1B01FDEF4, MGIsDeviceOneOfType(&v108, v83, v84, v85, v86, v87, v88, v89, &v106)))
  {
    v97 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v103 = -1022451852;
    v102 = xmmword_1B01FE228;
    v101 = 1729782187;
    v100 = xmmword_1B01FE23C;
    v99 = MGIsDeviceOneOfType(&v102, v90, v91, v92, v93, v94, v95, v96, &v100);
    v97 = MEMORY[0x1E695E4C0];
    if (!v99)
    {
      v97 = MEMORY[0x1E695E4D0];
    }
  }

  return *v97;
}

__CFString *sub_1B01A5344()
{
  v0 = sub_1B019EB18();
  v1 = v0;
  if (v0)
  {
    CFRetain(v0);
  }

  return v1;
}

uint64_t sub_1B01A5378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v60 = -526227167;
  v59 = xmmword_1B01FE868;
  v58 = -1509831889;
  v57 = xmmword_1B01FE1B0;
  if (MGIsDeviceOneOfType(&v59, a2, a3, a4, a5, a6, a7, a8, &v57) || (v56 = 289690957, v55 = xmmword_1B01FE174, v54 = 586720268, v53 = xmmword_1B01FE188, v15 = MGIsDeviceOneOfType(&v55, v8, v9, v10, v11, v12, v13, v14, &v53)) || sub_1B0193D14(v15, v16) != 6 || (v52 = 368885834, v51 = xmmword_1B01FE854, v50 = -414334491, v49 = xmmword_1B01FE19C, MGIsDeviceOneOfType(&v51, v17, v18, v19, v20, v21, v22, v23, &v49)) || (v48 = -2092955395, v47 = xmmword_1B01FDE54, v46 = 674998600, v45 = xmmword_1B01FDE68, MGIsDeviceOneOfType(&v47, v24, v25, v26, v27, v28, v29, v30, &v45)))
  {
    v38 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v44 = 1711910369;
    v43 = xmmword_1B01FDE7C;
    v42 = -1282800328;
    v41 = xmmword_1B01FDE90;
    v40 = MGIsDeviceOneOfType(&v43, v31, v32, v33, v34, v35, v36, v37, &v41);
    v38 = MEMORY[0x1E695E4C0];
    if (!v40)
    {
      v38 = MEMORY[0x1E695E4D0];
    }
  }

  return *v38;
}

uint64_t sub_1B01A55E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = -1431778695;
  v9 = xmmword_1B01FE46C;
  if (MGIsDeviceOneOfType(&v9, a2, a3, a4, a5, a6, a7, a8, 0))
  {
    return *MEMORY[0x1E695E4D0];
  }

  else
  {
    return sub_1B01B6DF0();
  }
}

__CFString *sub_1B01A56B0()
{
  v3 = 0;
  if (sub_1B01914DC(@"NJsxTSI2WuD+13rxShXX9w", 5, 5, kCFNumberSInt32Type, &v3) && v3 != 0)
  {
    return CFStringCreateWithFormat(0, 0, @"%d", v3);
  }

  if (MGGetBoolAnswer(@"XkfGVYlrkBQJgaGabHESJQ"))
  {
    return sub_1B01B9A7C(@"TXZxlSojLMQyLqusm9aa/g");
  }

  v2 = sub_1B019E004();
  if (v2 <= 8)
  {
    return *(&off_1E7A92940 + 2 * v2);
  }

  else
  {
    return @"unknown";
  }
}

CFTypeRef sub_1B01A578C()
{
  v47 = *MEMORY[0x1E69E9840];
  cf = 0;
  v44 = 0;
  if (qword_1EB6D01A0 != -1)
  {
    sub_1B01F0834();
  }

  if (off_1EB6D01B0)
  {
    v0 = off_1EB6D01A8 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || off_1EB6D01B8 == 0)
  {
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v2)
    {
      v8 = v2 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v8, 7854, @"Unable to dlsym() Savage symbols", v3, v4, v5, v6, v7);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlsym() Savage symbols", buf, 2u);
    }

    goto LABEL_17;
  }

  v9 = off_1EB6D01B8(0, 0);
  if (v9 == 1)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = MEMORY[0x1E695E9D8];
  v14 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = CFDictionaryCreateMutable(v12, 0, v13, v14);
  v17 = v16;
  if (Mutable)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v19)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v25, 7865, @"Unable to create options and savageOptions", v20, v21, v22, v23, v24);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to create options and savageOptions", buf, 2u);
    }

    sub_1B0191658(8);
    v10 = 0;
    v26 = 0;
    if (!Mutable)
    {
      goto LABEL_54;
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, @"Options", v16);
    v27 = off_1EB6D01A8(Mutable, 0, "Savage", &cf);
    if (v27)
    {
      v26 = v27;
      if (off_1EB6D01B0(v27, @"queryInfo", 0, &v44, &cf))
      {
        v28 = v44 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        v29 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v29)
        {
          v35 = v29 + 1;
        }

        else
        {
          v35 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v35, 7879, @"SavageUpdaterExecCmd failed: %@", v30, v31, v32, v33, v34, cf);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = cf;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SavageUpdaterExecCmd failed: %@", buf, 0xCu);
        }

        v10 = 0;
      }

      else
      {
        v10 = CFRetain(v44);
      }
    }

    else
    {
      v36 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v36)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v42, 7873, @"SavageUpdaterCreate failed: %@", v37, v38, v39, v40, v41, cf);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = cf;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SavageUpdaterCreate failed: %@", buf, 0xCu);
      }

      sub_1B0191658(8);
      v10 = 0;
      v26 = 0;
    }
  }

  CFRelease(Mutable);
LABEL_54:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v44)
  {
    CFRetain(v44);
  }

  return v10;
}

uint64_t sub_1B01A5BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = *MEMORY[0x1E69E9840];
  v107 = -798153473;
  v106 = xmmword_1B01FE2C8;
  v105 = -776721724;
  v104 = xmmword_1B01FE2DC;
  v103 = -1639077591;
  v102 = xmmword_1B01FDE2C;
  v101 = 338555555;
  v100 = xmmword_1B01FDE40;
  v8 = MGIsDeviceOneOfType(&v106, a2, a3, a4, a5, a6, a7, a8, &v104);
  if (v8 || (v10 = sub_1B0193D14(v8, v9), v10 == 4) || (v12 = sub_1B0193D14(v10, v11), v12 == 6) || sub_1B0193D14(v12, v13) == 2 || (v99 = 1789837692, v98 = xmmword_1B01FDF08, v97 = 48355600, v96 = xmmword_1B01FDF44, v95 = -1239654590, v94 = xmmword_1B01FDF1C, v93 = -679691073, v92 = xmmword_1B01FDF58, v91 = -1579092758, v90 = xmmword_1B01FDF30, v89 = 1430379884, v88 = xmmword_1B01FDF6C, MGIsDeviceOneOfType(&v98, v14, v15, v16, v17, v18, v19, v20, &v96)) || (v87 = -926344036, v86 = xmmword_1B01FE138, v85 = -954998212, v84 = xmmword_1B01FE14C, v83 = 436612651, v82 = xmmword_1B01FE160, MGIsDeviceOneOfType(&v86, v21, v22, v23, v24, v25, v26, v27, &v84)) || (v81 = 1602014129, v80 = xmmword_1B01FDECC, v79 = -810116762, v78 = xmmword_1B01FDEE0, v77 = -1195351767, v76 = xmmword_1B01FDEF4, v75 = -199226823, v74 = xmmword_1B01FDC24, v73 = 1412427398, v72 = xmmword_1B01FDC38, v71 = -1283070668, v70 = xmmword_1B01FDC4C, v69 = 160260070, v68 = xmmword_1B01FDC60, MGIsDeviceOneOfType(&v80, v28, v29, v30, v31, v32, v33, v34, &v78)) || (v67 = -38605833, v66 = xmmword_1B01FE390, v65 = -894965712, v64 = xmmword_1B01FE3A4, v63 = -2101636455, v62 = xmmword_1B01FE3B8, v61 = -1955568593, v60 = xmmword_1B01FE3CC, v59 = 28030256, v58 = xmmword_1B01FE2A0, v57 = 1214363620, v56 = xmmword_1B01FE2B4, MGIsDeviceOneOfType(&v66, v35, v36, v37, v38, v39, v40, v41, &v64)))
  {
    v49 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v55 = 1032708406;
    v54 = xmmword_1B01FDE04;
    v53 = 729903963;
    v52 = xmmword_1B01FDE18;
    v51 = MGIsDeviceOneOfType(&v54, v42, v43, v44, v45, v46, v47, v48, &v52);
    v49 = MEMORY[0x1E695E4C0];
    if (!v51)
    {
      v49 = MEMORY[0x1E695E4D0];
    }
  }

  return *v49;
}

uint64_t sub_1B01A60B0()
{
  v0 = sub_1B019AFD8();
  v1 = MEMORY[0x1E695E4D0];
  if (v0 <= 0x40000000)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

CFStringRef sub_1B01A6100()
{
  v31 = *MEMORY[0x1E69E9840];
  if (qword_1EB6D0178 != -1)
  {
    sub_1B01F0848();
  }

  if (!off_1EB6D0180)
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v16, 8391, @"dlsym NfRestoreCopyUniqueFDRKey failed", v11, v12, v13, v14, v15);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "dlsym NfRestoreCopyUniqueFDRKey failed";
    v19 = 2;
    goto LABEL_22;
  }

  v28 = 0;
  v0 = off_1EB6D0180(sub_1B01B9C38, &v28, 0);
  if (!v0)
  {
    v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v20)
    {
      v26 = v20 + 1;
    }

    else
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v26, 8387, @"NfRestoreCopyUniqueFDRKey failed %@", v21, v22, v23, v24, v25, v28);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 138412290;
    v30 = v28;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "NfRestoreCopyUniqueFDRKey failed %@";
    v19 = 12;
LABEL_22:
    _os_log_impl(&dword_1B0190000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
    return 0;
  }

  v1 = v0;
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v0, 0x8000100u);
  if (!v2)
  {
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v9, 8383, @"CFStringCreateWithCString failed", v4, v5, v6, v7, v8);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CFStringCreateWithCString failed", buf, 2u);
    }
  }

  free(v1);
  return v2;
}

CFTypeRef sub_1B01A63C0()
{
  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    return 0;
  }

  v12 = -1;
  v0 = sub_1B01914DC(@"XQBHOWjPt2P+uNqlLm1P7A", 5, 5, kCFNumberSInt32Type, &v12);
  result = 0;
  if (v0 && v12 >= 2)
  {
    v2 = *(off_1EB6CFEC0 + 10);
    if (!v2)
    {
      v2 = sub_1B0193150(10, 2);
    }

    TypeID = CFDictionaryGetTypeID();
    result = sub_1B0196878("_CTServerConnectionCopyFirmwareSecurityInfo", v2, TypeID);
    if (!result)
    {
      v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v4)
      {
        v10 = v4 + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v10, 4977, @"_CTServerConnectionCopyFirmwareSecurityInfo returned NULL", v5, v6, v7, v8, v9);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_CTServerConnectionCopyFirmwareSecurityInfo returned NULL", v11, 2u);
      }

      return 0;
    }
  }

  return result;
}

CFMutableArrayRef sub_1B01A64F4()
{
  result = CFArrayCreateMutable(0, 0, 0);
  if (result)
  {
    v1 = result;
    if (sub_1B0194994("IODeviceTree:/product", @"nfc-express", 0))
    {
      CFArrayAppendValue(v1, @"nfc-express");
    }

    if (sub_1B0194994("IODeviceTree:/product", @"alisha", 0))
    {
      CFArrayAppendValue(v1, @"alisha");
    }

    if (sub_1B0194994("IODeviceTree:/product", @"find-my", 0))
    {
      CFArrayAppendValue(v1, @"find-my");
    }

    Copy = CFArrayCreateCopy(0, v1);
    CFRelease(v1);
    return Copy;
  }

  return result;
}

CFStringRef sub_1B01A65C8()
{
  v53 = *MEMORY[0x1E69E9840];
  numBytes = 128;
  *connect = 0;
  if (!sub_1B01BCCA0("AppleBiometricServices", &connect[1], connect))
  {
    v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v13)
    {
      v19 = v13 + 1;
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v19, 5572, @"failed to connect to service %s", v14, v15, v16, v17, v18, "AppleBiometricServices");
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315138;
    v52 = "AppleBiometricServices";
    v11 = MEMORY[0x1E69E9C10];
    v12 = "failed to connect to service %s";
    goto LABEL_12;
  }

  v46 = 0;
  v45 = 4;
  v0 = sub_1B01B9D28(connect[0], 27, &v46, &v45);
  if (v0)
  {
    v1 = v0;
    v2 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v3)
    {
      v2 = v3 + 1;
    }

    v4 = mach_error_string(v1);
    _MGLog(v2, 5582, @"Failed to query Mesa provisioning state: %s", v5, v6, v7, v8, v9, v4);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = mach_error_string(v1);
    *buf = 136315138;
    v52 = v10;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Failed to query Mesa provisioning state: %s";
    goto LABEL_12;
  }

  if (!v46)
  {
    v34 = sub_1B01B9D28(connect[0], 1, 0, 0);
    if (v34)
    {
      v35 = v34;
      v36 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      v37 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v37)
      {
        v36 = v37 + 1;
      }

      v38 = mach_error_string(v35);
      _MGLog(v36, 5589, @"Failed to reset sensor: %s", v39, v40, v41, v42, v43, v38);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v44 = mach_error_string(v35);
      *buf = 136315138;
      v52 = v44;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Failed to reset sensor: %s";
LABEL_12:
      v20 = buf;
LABEL_13:
      _os_log_impl(&dword_1B0190000, v11, OS_LOG_TYPE_DEFAULT, v12, v20, 0xCu);
LABEL_14:
      v21 = 0;
      goto LABEL_15;
    }
  }

  v23 = sub_1B01B9D28(connect[0], 54, buf, &numBytes);
  if (v23)
  {
    v24 = v23;
    v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v26 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v26)
    {
      v25 = v26 + 1;
    }

    v27 = mach_error_string(v24);
    _MGLog(v25, 5596, @"Failed to query Mesa module serial number: %s", v28, v29, v30, v31, v32, v27);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v33 = mach_error_string(v24);
    v49 = 136315138;
    v50 = v33;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Failed to query Mesa module serial number: %s";
    v20 = &v49;
    goto LABEL_13;
  }

  v21 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], buf, numBytes, 0x8000100u, 0);
LABEL_15:
  if (connect[0])
  {
    IOServiceClose(connect[0]);
  }

  if (connect[1])
  {
    IOObjectRelease(connect[1]);
  }

  return v21;
}

uint64_t sub_1B01A6980()
{
  v1 = *(off_1EB6CFEC0 + 43);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(43, 2);
  }

  return v1();
}

CFNumberRef sub_1B01A69D0()
{
  result = sub_1B01C57B4("IODeviceTree:/arm-io", @"mesa", 0, @"mesaType", 0);
  if (!result)
  {
    if (MGGetBoolAnswer(@"HV7WDiidgMf7lwAu++Lk5w"))
    {
      valuePtr = 0;
      return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B01A6AA0()
{
  if (sub_1B01959FC(@"LW"))
  {
    return 1;
  }

  return sub_1B01959FC(@"LM");
}

BOOL sub_1B01A6AE8()
{
  v0 = MGGetBoolAnswer(@"ZEU7pCEskBhjQ4AOMuALDw");
  if (v0)
  {
    return 1;
  }

  if (sub_1B0193D14(v0, v1) == 7)
  {
    return 0;
  }

  return sub_1B01997C0(@"H8");
}

CFNumberRef sub_1B01A6B44()
{
  v2 = 0;
  if (sub_1B01C2CE4(@"edmd", &v2))
  {
    v3 = 1;
    p_valuePtr = &v3;
    return CFNumberCreate(0, kCFNumberSInt32Type, p_valuePtr);
  }

  if (v2)
  {
    valuePtr = 0;
    p_valuePtr = &valuePtr;
    return CFNumberCreate(0, kCFNumberSInt32Type, p_valuePtr);
  }

  return 0;
}

__CFString *sub_1B01A6C00()
{
  if (sub_1B01978E8())
  {
    return @"iOS";
  }

  v1 = *MEMORY[0x1E695E1F0];

  return sub_1B0192B9C(v1, 1);
}

uint64_t sub_1B01A6C78()
{
  if (sub_1B01997C0(@"M9") || sub_1B01997C0(@"M10") || sub_1B01997C0(@"H9") || sub_1B01997C0(@"H10"))
  {
    return 0;
  }

  if (sub_1B01997C0(@"H11") || sub_1B01997C0(@"H12"))
  {
    return 1;
  }

  if (sub_1B019D140(@"H13"))
  {
    return 2;
  }

  return 0;
}

BOOL sub_1B01A6D5C(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 1)
  {
    v62 = 414393924;
    v61 = xmmword_1B01FE0C0;
    v60 = 897736383;
    v59 = xmmword_1B01FE0D4;
    v58 = -996295886;
    v57 = xmmword_1B01FDBFC;
    v56 = -453987047;
    v55 = xmmword_1B01FDC10;
    v54 = -337121064;
    v53 = xmmword_1B01FDBD4;
    v52 = 450980336;
    v51 = xmmword_1B01FDBE8;
    v50 = -232427879;
    v49 = xmmword_1B01FDC74;
    v48 = -427474227;
    v47 = xmmword_1B01FDC88;
    v46 = 1477534141;
    v45 = xmmword_1B01FDC9C;
    v44 = -1843102369;
    v43 = xmmword_1B01FDCB0;
    v42 = -820493242;
    v41 = xmmword_1B01FE750;
    v40 = -61007701;
    v39 = xmmword_1B01FE444;
    v38 = -235416490;
    v37 = xmmword_1B01FE458;
    v36 = -121925081;
    v35 = xmmword_1B01FE4D0;
    v34 = 1071957977;
    v33 = xmmword_1B01FE480;
    v32 = 438437663;
    v31 = xmmword_1B01FE494;
    v30 = -382792827;
    v29 = xmmword_1B01FE4A8;
    v28 = 1575123478;
    v27 = xmmword_1B01FE4BC;
    v26 = 123138233;
    v25 = xmmword_1B01FE41C;
    v24 = 681511593;
    v23 = xmmword_1B01FE430;
    v22 = 713503427;
    v21 = xmmword_1B01FDCC4;
    v20 = -1632750650;
    v19 = xmmword_1B01FDCD8;
    v18 = -1431778695;
    v17 = xmmword_1B01FE46C;
    v10 = &v59;
    v11 = &v61;
    return !MGIsDeviceOneOfType(v11, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  if (sub_1B0193D14(v2, v3) == 3)
  {
    v16 = -1527788847;
    v15 = xmmword_1B01FDB84;
    v14 = 1532898719;
    v13 = xmmword_1B01FDB70;
    v10 = &v13;
    v11 = &v15;
    return !MGIsDeviceOneOfType(v11, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

uint64_t sub_1B01A77D8()
{
  v0 = *MEMORY[0x1E695E4C0];
  if (sub_1B0194994("IODeviceTree:/product", @"is-muse", 0))
  {
    if (!sub_1B0193ED4("IODeviceTree:/product", @"chip-role", 0, 1, 1))
    {
      return *MEMORY[0x1E695E4D0];
    }
  }

  else
  {
    v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v1)
    {
      v7 = v1 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v7, 8677, @"muse not set on product node", v2, v3, v4, v5, v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "muse not set on product node", v9, 2u);
    }
  }

  return v0;
}

uint64_t sub_1B01A78CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  v3 = MEMORY[0x1E695E4D0];
  if (v2 != 1)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

uint64_t sub_1B01A7900()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"eW5H/Gwg0uqbMqFot70pYg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B01A7948()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleJPEGDriver");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  v3 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v3 != 0;
}

CFDataRef sub_1B01A79C0()
{
  v0 = sub_1B01C583C("IODeviceTree", @"fillmore", 0, @"local-mac-address", 0);
  if (v0 || (v0 = sub_1B01C583C("IODeviceTree", @"wlan", 0, @"local-mac-address", 0)) != 0)
  {
    v1 = v0;
    Length = CFDataGetLength(v0);
    CFRelease(v1);
  }

  else
  {
    Length = 8;
  }

  return sub_1B019E100(0x544D6163u, Length);
}

BOOL sub_1B01A7AA0()
{
  v0 = sub_1B0198DB0("IODeviceTree:/chosen", @"development-cert", 0);
  valuePtr = 0;
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  CFNumberGetValue(v0, kCFNumberIntType, &valuePtr);
  CFRelease(v1);
  return valuePtr == 0;
}

__CFString *sub_1B01A7BE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 11)
  {
    return @"Apple Vision Pro";
  }

  return sub_1B0194428(v2, v3);
}

uint64_t sub_1B01A7C50(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) == 3)
  {
    return 10;
  }

  else
  {
    return 20;
  }
}

CFNumberRef sub_1B01A7C78()
{
  valuePtr = 0;
  v0 = sub_1B01C5470(@"avd", @"AppleARMIODevice");
  if (v0)
  {
    v1 = v0;
    cf = 0;
    if (CFDictionaryGetValueIfPresent(v0, @"decode-samples-per-second", &cf))
    {
      v2 = CFGetTypeID(cf);
      if (v2 == CFDataGetTypeID())
      {
        v3 = *CFDataGetBytePtr(cf);
        if (v3)
        {
          valuePtr = v3 << 16;
        }
      }
    }

    CFRelease(v1);
  }

  return CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
}

float sub_1B01A7D1C()
{
  valuePtr = 0.0;
  v0 = CFPreferencesCopyAppValue(@"RequiredBatteryLevelForSoftwareUpdate", *MEMORY[0x1E695E8A8]);
  if (!v0)
  {
    return 0.5;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFNumberGetTypeID() || !CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr))
  {
    valuePtr = 0.5;
  }

  CFRelease(v1);
  return valuePtr;
}

CFNumberRef sub_1B01A7DA8()
{
  if (!sub_1B01997C0(@"H6") && !sub_1B01997C0(@"H8") && !sub_1B01997C0(@"H5") && !sub_1B01997C0(@"H7"))
  {
    v0 = sub_1B01997C0(@"H9");
    if (!v0)
    {
      v2 = sub_1B0193D14(v0, v1);
      if (v2 != 4 && sub_1B0193D14(v2, v3) != 6)
      {
        sub_1B01997C0(@"H4");
      }
    }
  }

  valuePtr = 1065353216;
  return CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
}

CFNumberRef sub_1B01A7EBC()
{
  v9 = 0;
  valuePtr = -1;
  v0 = sub_1B0199908("IODeviceTree:/chosen", @"marketing-software-behavior", 0);
  if (!v0)
  {
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v9);
  }

  v1 = v0;
  BytePtr = CFDataGetBytePtr(v0);
  if (BytePtr && (v3 = BytePtr, v4 = CFGetTypeID(v1), v4 == CFDataGetTypeID()) && CFDataGetLength(v1) >= 4)
  {
    v5 = v3[3];
    if ((v5 - 1) >= 2)
    {
      v5 = 0;
    }

    valuePtr = v5;
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];
  }

  v7 = CFNumberCreate(v6, kCFNumberSInt32Type, &v9);
LABEL_11:
  CFRelease(v1);
  return v7;
}

uint64_t sub_1B01A802C(uint64_t a1, uint64_t a2)
{
  v128 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) == 1 && MGGetBoolAnswer(@"BWoQXWXYITrPRpFyc9xTLw"))
  {
    v9 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v127 = -1022451852;
    v126 = xmmword_1B01FE228;
    v125 = 1729782187;
    v124 = xmmword_1B01FE23C;
    v123 = -1527788847;
    v122 = xmmword_1B01FDB84;
    v121 = 1532898719;
    v120 = xmmword_1B01FDB70;
    if (MGIsDeviceOneOfType(&v126, v2, v3, v4, v5, v6, v7, v8, &v124) || (v119 = -1579092758, v118 = xmmword_1B01FDF30, v117 = 1430379884, v116 = xmmword_1B01FDF6C, MGIsDeviceOneOfType(&v118, v10, v11, v12, v13, v14, v15, v16, &v116)) || (v115 = 1032708406, v114 = xmmword_1B01FDE04, v113 = 729903963, v112 = xmmword_1B01FDE18, v111 = 1275676051, v110 = xmmword_1B01FDBAC, v109 = 1908474541, v108 = xmmword_1B01FDB98, MGIsDeviceOneOfType(&v114, v17, v18, v19, v20, v21, v22, v23, &v112)) || (v107 = 1789837692, v106 = xmmword_1B01FDF08, v105 = 48355600, v104 = xmmword_1B01FDF44, v103 = -1239654590, v102 = xmmword_1B01FDF1C, v101 = -679691073, v100 = xmmword_1B01FDF58, MGIsDeviceOneOfType(&v106, v24, v25, v26, v27, v28, v29, v30, &v104)) || (v99 = -926344036, v98 = xmmword_1B01FE138, v97 = -954998212, v96 = xmmword_1B01FE14C, v95 = 436612651, v94 = xmmword_1B01FE160, MGIsDeviceOneOfType(&v98, v31, v32, v33, v34, v35, v36, v37, &v96)) || (v93 = 1602014129, v92 = xmmword_1B01FDECC, v91 = 317289457, v90 = xmmword_1B01FE1D8, v89 = -199226823, v88 = xmmword_1B01FDC24, v87 = 1412427398, v86 = xmmword_1B01FDC38, v45 = MGIsDeviceOneOfType(&v92, v38, v39, v40, v41, v42, v43, v44, &v90)) || sub_1B0193D14(v45, v46) != 3 || (v85 = 996646949, v84 = xmmword_1B01FE250, v83 = -563086000, v82 = xmmword_1B01FE264, MGIsDeviceOneOfType(&v84, v47, v48, v49, v50, v51, v52, v53, &v82)) || (v81 = -810116762, v80 = xmmword_1B01FDEE0, v79 = 401945557, v78 = xmmword_1B01FE1EC, v77 = -1283070668, v76 = xmmword_1B01FDC4C, v75 = 160260070, v74 = xmmword_1B01FDC60, MGIsDeviceOneOfType(&v80, v54, v55, v56, v57, v58, v59, v60, &v78)))
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v73 = -1195351767;
      v72 = xmmword_1B01FDEF4;
      v71 = -1639077591;
      v70 = xmmword_1B01FDE2C;
      v69 = MGIsDeviceOneOfType(&v72, v61, v62, v63, v64, v65, v66, v67, &v70);
      v9 = MEMORY[0x1E695E4C0];
      if (!v69)
      {
        v9 = MEMORY[0x1E695E4D0];
      }
    }
  }

  return *v9;
}

BOOL sub_1B01A851C(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  v2 = !sub_1B0194994("IODeviceTree:/product/haptics", @"pre-warm-disabled", 0) || !sub_1B01998E0("IODeviceTree:/product/haptics", @"pre-warm-disabled", 0);
  CFRelease(@"pre-warm-disabled");
  return v2;
}

uint64_t sub_1B01A85FC()
{
  v0 = sub_1B0198DB0("IODeviceTree:/buttons", @"home-button-type", 0);
  if (v0)
  {
    v1 = v0;
    valuePtr = 0;
    Value = CFNumberGetValue(v0, kCFNumberSInt32Type, &valuePtr);
    v3 = valuePtr;
    CFRelease(v1);
    v4 = v3 != 1 || Value == 0;
    v5 = MEMORY[0x1E695E4D0];
    if (v4)
    {
      v5 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  return *v5;
}

CFStringRef sub_1B01A86AC()
{
  v0 = sub_1B0191100(@"eZS2J+wspyGxqNYZeZ/sbA", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

__CFArray *sub_1B01A882C()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v1 = sub_1B0191100(@"HMpTbnbcAb+mQDi8O71h6Q", 0);
  if (!v1)
  {
    v3 = 0;
    if (!Mutable)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v2 = v1;
  CFArrayAppendValue(Mutable, v1);
  v3 = sub_1B01B9F00(Mutable, 3);
  CFRelease(v2);
  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t sub_1B01A894C()
{
  memset(&v3, 0, sizeof(v3));
  v0 = stat("/AppleInternal/Library/PreferenceBundles/Internal Settings.bundle", &v3);
  LOBYTE(v3.st_dev) = 0;
  result = sub_1B01A1D48("/var/mobile/Library/Preferences/com.apple.springboard.plist", @"SBAllowSensitiveUI", &v3);
  if ((v3.st_dev & 1) == 0)
  {
    v2 = v0 == 0;
    LODWORD(result) = sub_1B01A1D48("/System/Library/CoreServices/SBTeaLeafOverrides.plist", @"SBAllowSensitiveUI", &v3);
    if (LOBYTE(v3.st_dev))
    {
      return result;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_1B01A89EC()
{
  v0 = sub_1B01970CC("IODeviceTree:/", @"model-config", 0);
  v1 = *MEMORY[0x1E695E4C0];
  if (v0)
  {
    v2 = v0;
    if (CFStringFind(v0, @"NED=1", 0).location != -1)
    {
      v1 = *MEMORY[0x1E695E4D0];
    }

    CFRelease(v2);
  }

  return v1;
}

__CFDictionary *sub_1B01A8A64()
{
  v0 = sub_1B0199908("IODeviceTree:/arm-io/disp0", @"device-dbv-dependent-vsh", 0);
  if (!v0)
  {
    sub_1B01F09C0(&valuePtr);
    return valuePtr;
  }

  v1 = v0;
  if (CFDataGetLength(v0) != 16)
  {
    sub_1B01F085C(v1, &valuePtr);
LABEL_10:
    v3 = valuePtr;
    goto LABEL_5;
  }

  CFDataGetBytePtr(v1);
  CFDataGetLength(v1);
  __memcpy_chk();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    sub_1B01F0944(&valuePtr);
    goto LABEL_10;
  }

  v3 = Mutable;
  LODWORD(valuePtr) = 0;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v3, @"SnapToNits", v4);
  CFRelease(v4);
  LODWORD(valuePtr) = 0;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v3, @"MaximumNitsToSnap", v5);
  CFRelease(v5);
  LODWORD(valuePtr) = 0;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v3, @"ExpandedNitsFailureCount", v6);
  CFRelease(v6);
  LODWORD(valuePtr) = 0;
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v3, @"ExpandedNits", v7);
  CFRelease(v7);
LABEL_5:
  CFRelease(v1);
  return v3;
}

uint64_t sub_1B01A8C30()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"display-mirroring", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01A8C78(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 7 || (v4 = sub_1B0193D14(v2, v3), v4 == 4) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 2) || (v10 = sub_1B0193D14(v8, v9), v10 == 1) || (v12 = sub_1B0193D14(v10, v11), v12 == 11) || sub_1B0193D14(v12, v13) == 8)
  {
    v21 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v27 = 368885834;
    v26 = xmmword_1B01FE854;
    v25 = -526227167;
    v24 = xmmword_1B01FE868;
    v23 = MGIsDeviceOneOfType(&v26, v14, v15, v16, v17, v18, v19, v20, &v24);
    v21 = MEMORY[0x1E695E4C0];
    if (!v23)
    {
      v21 = MEMORY[0x1E695E4D0];
    }
  }

  return *v21;
}

__CFString *sub_1B01A8E84()
{
  v16 = *MEMORY[0x1E69E9840];
  if (sub_1B01978E8())
  {
    return @"iPad";
  }

  v1 = SCPreferencesCreate(0, @"MobileGestalt", 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (SCPreferencesLock(v1, 1u))
  {
    v0 = SCDynamicStoreCopyComputerName(0, 0);
    SCPreferencesUnlock(v2);
  }

  else
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v4)
    {
      v3 = v4 + 1;
    }

    v5 = SCError();
    v6 = SCErrorString(v5);
    _MGLog(v3, 4773, @"SCPreferencesLock: %s", v7, v8, v9, v10, v11, v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = SCError();
      *buf = 136315138;
      v15 = SCErrorString(v12);
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SCPreferencesLock: %s", buf, 0xCu);
    }

    v0 = SCDynamicStoreCopyComputerName(0, 0);
  }

  CFRelease(v2);
  return v0;
}

void *sub_1B01A8FE0()
{
  v0 = sub_1B0191100(@"qNNddlUK+B/YlooNoymwgA", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = _CFCopySupplementalVersionDictionary();
  v3 = sub_1B01A1980(v2, @"ProductVersionExtra", 1);
  if (v3)
  {
    v4 = v3;
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ %@", v1, v3);
    CFRelease(v1);
    v1 = v4;
  }

  else
  {
    v5 = CFRetain(v1);
  }

  CFRelease(v1);
  return v5;
}

uint64_t sub_1B01A90A0()
{
  v0 = sub_1B0192F20("IODeviceTree:/chosen", @"housing-color", 0);
  v1 = sub_1B01C0CC8(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

__CFData *sub_1B01A90F0()
{
  result = sub_1B01C583C("IODeviceTree", @"ipd", 0, @"kblang-calibration", 0);
  if (!result)
  {

    return sub_1B01C583C("IODeviceTree", @"keyboard", 0, @"kblang-calibration", 0);
  }

  return result;
}

uint64_t sub_1B01A917C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 368885834;
  v18 = xmmword_1B01FE854;
  v17 = -526227167;
  v16 = xmmword_1B01FE868;
  v8 = MGIsDeviceOneOfType(&v18, a2, a3, a4, a5, a6, a7, a8, &v16);
  if (v8 || (v10 = sub_1B0193D14(v8, v9), v10 == 3))
  {
    v12 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = sub_1B0193D14(v10, v11);
    v12 = MEMORY[0x1E695E4C0];
    if (v14 != 4 && sub_1B0193D14(v14, v15) != 2)
    {
      v12 = MEMORY[0x1E695E4D0];
    }
  }

  return *v12;
}

BOOL sub_1B01A92B8(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

uint64_t sub_1B01A930C()
{
  v1 = *(off_1EB6CFEC0 + 90);
  if (!v1)
  {
    v1 = sub_1B0193150(90, 2);
    v0 = vars8;
  }

  return (v1)(@"SupportedKeyboards");
}

__CFDictionary *sub_1B01A9424(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 6)
  {
    return 0;
  }

  v4 = sub_1B0193D14(v2, v3);
  if (v4 == 7 || sub_1B0193D14(v4, v5) == 4)
  {
    return 0;
  }

  v91 = xmmword_1B01FEAC0;
  v92 = xmmword_1B01FEAB0;
  v89 = xmmword_1B01FEAE0;
  v90 = xmmword_1B01FEAD0;
  v87 = xmmword_1B01FEB00;
  v88 = xmmword_1B01FEAF0;
  v85 = xmmword_1B01FEB20;
  v86 = xmmword_1B01FEB10;
  v83 = xmmword_1B01FEB30;
  v84 = xmmword_1B01FECA0;
  v81 = xmmword_1B01FECA0;
  v82 = xmmword_1B01FEB40;
  v79 = xmmword_1B01FEB50;
  v80 = xmmword_1B01FEC00;
  v77 = xmmword_1B01FEB60;
  v78 = xmmword_1B01FEC00;
  v75 = xmmword_1B01FEB70;
  v76 = xmmword_1B01FECA0;
  v73 = xmmword_1B01FEB90;
  v74 = xmmword_1B01FEB80;
  v71 = xmmword_1B01FEBB0;
  v72 = xmmword_1B01FEBA0;
  v69 = xmmword_1B01FEBD0;
  v70 = xmmword_1B01FEBC0;
  v67 = xmmword_1B01FEBE0;
  v68 = xmmword_1B01FEC00;
  v65 = xmmword_1B01FEBF0;
  v66 = xmmword_1B01FECA0;
  v64 = xmmword_1B01FEC00;
  v62 = xmmword_1B01FECA0;
  v63 = xmmword_1B01FEC10;
  v60 = xmmword_1B01FEC30;
  v61 = xmmword_1B01FEC20;
  v58 = xmmword_1B01FEC50;
  v59 = xmmword_1B01FEC40;
  v56 = xmmword_1B01FEC70;
  v57 = xmmword_1B01FEC60;
  v54 = xmmword_1B01FEC90;
  v55 = xmmword_1B01FEC80;
  v53 = xmmword_1B01FECA0;
  v47 = -1;
  valuePtr = 0;
  v8 = MGGetBoolAnswer(@"DeviceSupportsReverseZoom");
  v9 = *MEMORY[0x1E695E480];
  if (v8)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v11 = sub_1B0198DB0("IODeviceTree:/product", @"artwork-device-subtype", 0);
    v12 = sub_1B0198DB0("IODeviceTree:/product", @"artwork-scale-factor", 0);
    if (v11)
    {
      if (CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr))
      {
        if (!v12 || !CFNumberGetValue(v12, kCFNumberSInt32Type, &v47))
        {
LABEL_115:
          CFRelease(v11);
LABEL_116:
          if (!v12)
          {
            return Mutable;
          }

LABEL_117:
          CFRelease(v12);
          return Mutable;
        }

        if (v47 == 2 && valuePtr == 2688)
        {
          valuePtr = 1792;
LABEL_17:
          v13 = 0;
          v14 = 0;
          v15 = &v83;
          v16 = &v82;
          goto LABEL_18;
        }

        if (valuePtr <= 2531)
        {
          if (valuePtr > 2339)
          {
            if (valuePtr <= 2387)
            {
              if (valuePtr != 2340)
              {
                if (valuePtr == 2360)
                {
                  if (v8)
                  {
                    v15 = &v72;
                    v14 = &v71;
                    v13 = &v70;
                    v16 = &v71;
                    goto LABEL_18;
                  }

                  goto LABEL_111;
                }

                goto LABEL_109;
              }
            }

            else
            {
              if (valuePtr == 2388)
              {
                if (v8)
                {
                  v15 = &v75;
                  v14 = &v74;
                  v13 = &v73;
                  v16 = &v74;
                  goto LABEL_18;
                }

                goto LABEL_111;
              }

              if (valuePtr == 2420)
              {
                if (v8)
                {
                  v15 = &v61;
                  v14 = &v60;
                  v13 = &v59;
                  v16 = &v60;
                  goto LABEL_18;
                }

                goto LABEL_111;
              }

              if (valuePtr != 2436)
              {
                goto LABEL_109;
              }
            }

            v13 = 0;
            v14 = 0;
            v15 = &v81;
            v16 = &v80;
            goto LABEL_18;
          }

          if (valuePtr <= 569)
          {
            if (valuePtr == 568)
            {
LABEL_111:
              v45 = CFArrayCreate(v9, 0, 0, MEMORY[0x1E695E9C0]);
              if (v45)
              {
                v46 = v45;
                CFDictionarySetValue(Mutable, @"default", v45);
                CFDictionarySetValue(Mutable, @"zoomed", v46);
              }

              else
              {
                v46 = Mutable;
                Mutable = 0;
              }

              CFRelease(v46);
              goto LABEL_115;
            }

            if (valuePtr == 569)
            {
              v13 = 0;
              v14 = 0;
              v15 = &v92;
              v16 = &v91;
              goto LABEL_18;
            }
          }

          else
          {
            switch(valuePtr)
            {
              case 570:
                v13 = 0;
                v14 = 0;
                v15 = &v90;
                v16 = &v89;
                goto LABEL_18;
              case 1792:
                goto LABEL_17;
              case 2224:
                goto LABEL_111;
            }
          }

          goto LABEL_109;
        }

        if (valuePtr > 2735)
        {
          if (valuePtr > 2777)
          {
            switch(valuePtr)
            {
              case 2778:
                v13 = 0;
                v14 = 0;
                v15 = &v77;
                v16 = &v76;
                goto LABEL_18;
              case 2796:
                v13 = 0;
                v14 = 0;
                v15 = &v67;
                v16 = &v66;
                goto LABEL_18;
              case 2868:
                v13 = 0;
                v14 = 0;
                v15 = &v63;
                v16 = &v62;
                goto LABEL_18;
            }

            goto LABEL_109;
          }

          if (valuePtr == 2736)
          {
            v13 = 0;
            v14 = 0;
            v15 = &v54;
            v16 = &v53;
            goto LABEL_18;
          }

          if (valuePtr == 2752)
          {
            if (v8)
            {
              v13 = &v55;
            }

            else
            {
              v13 = 0;
            }

            if (v8)
            {
              v14 = &v56;
            }

            else
            {
              v14 = 0;
            }

            v15 = &v57;
            v16 = &v58;
LABEL_18:
            v17 = sub_1B01A2E34();
            v18 = v17;
            if (v17)
            {
              if (CFDataGetLength(v17) >= 16)
              {
                BytePtr = CFDataGetBytePtr(v18);
                if (valuePtr == 2732)
                {
                  v20 = BytePtr;
                  if (BytePtr[1] > *BytePtr)
                  {
                    v21 = *(v15 + 1);
                    *(v15 + 1) = *(v15 + 3);
                    *(v15 + 3) = v21;
                    v22 = *(v16 + 1);
                    *(v16 + 1) = *(v16 + 3);
                    *(v16 + 3) = v22;
                    if (v14)
                    {
                      v23 = *(v14 + 1);
                      *(v14 + 1) = *(v14 + 3);
                      *(v14 + 3) = v23;
                    }

                    v24 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
                    _MGLog(v24, 2058, @"copyAvailableDisplayZoomSizes: Changed landscape to portrait for %dx%d", v25, v26, v27, v28, v29, v20[1], *v20);
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = v20[1];
                      v31 = *v20;
                      *buf = 67109376;
                      v50 = v30;
                      v51 = 1024;
                      v52 = v31;
                      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "copyAvailableDisplayZoomSizes: Changed landscape to portrait for %dx%d", buf, 0xEu);
                    }
                  }
                }
              }
            }

            v32 = sub_1B01BA270(v15);
            if (v32)
            {
              v33 = v32;
              v34 = sub_1B01BA270(v16);
              if (v34)
              {
                v35 = v34;
                if (v14)
                {
                  v36 = sub_1B01BA270(v14);
                  if (!v36)
                  {
                    CFRelease(Mutable);
                    v37 = 0;
LABEL_56:
                    Mutable = 0;
                    goto LABEL_72;
                  }
                }

                else
                {
                  v36 = 0;
                }

                if (v13)
                {
                  v37 = sub_1B01BA270(v13);
                  if (!v37)
                  {
                    CFRelease(Mutable);
                    goto LABEL_56;
                  }
                }

                else
                {
                  v37 = 0;
                }

                CFDictionarySetValue(Mutable, @"default", v33);
                CFDictionarySetValue(Mutable, @"zoomed", v35);
                if (v14)
                {
                  CFDictionarySetValue(Mutable, @"dense", v36);
                }

                if (v13)
                {
                  CFDictionarySetValue(Mutable, @"denser", v37);
                }

LABEL_72:
                CFRelease(v35);
                CFRelease(v33);
                if (v36)
                {
                  CFRelease(v36);
                }

                if (!v37)
                {
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

              CFRelease(Mutable);
              Mutable = 0;
              v37 = v33;
            }

            else
            {
              v37 = Mutable;
              Mutable = 0;
            }

LABEL_75:
            CFRelease(v37);
LABEL_76:
            CFRelease(v11);
            if (v18)
            {
              CFRelease(v18);
            }

            goto LABEL_117;
          }
        }

        else
        {
          if (valuePtr <= 2621)
          {
            if (valuePtr == 2532)
            {
              v13 = 0;
              v14 = 0;
              v15 = &v79;
              v16 = &v78;
              goto LABEL_18;
            }

            if (valuePtr == 2556)
            {
              v13 = 0;
              v14 = 0;
              v15 = &v69;
              v16 = &v68;
              goto LABEL_18;
            }

            goto LABEL_109;
          }

          switch(valuePtr)
          {
            case 2622:
              v13 = 0;
              v14 = 0;
              v15 = &v65;
              v16 = &v64;
              goto LABEL_18;
            case 2688:
              v13 = 0;
              v14 = 0;
              v15 = &v85;
              v16 = &v84;
              goto LABEL_18;
            case 2732:
              v13 = 0;
              if (v8)
              {
                v14 = &v86;
              }

              else
              {
                v14 = 0;
              }

              v15 = &v88;
              v16 = &v87;
              goto LABEL_18;
          }
        }

LABEL_109:
        v39 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
        _MGLog(v39, 2034, @"Unsupported artwork-device-subtype %d", v40, v41, v42, v43, v44, valuePtr);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v50 = valuePtr;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unsupported artwork-device-subtype %d", buf, 8u);
        }

        goto LABEL_111;
      }

      CFRelease(Mutable);
      v38 = v11;
    }

    else
    {
      v38 = Mutable;
    }

    CFRelease(v38);
    Mutable = 0;
    goto LABEL_116;
  }

  return Mutable;
}

uint64_t sub_1B01A9D2C()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = sub_1B01997C0(@"H4");
  v8 = MEMORY[0x1E695E4C0];
  if (!v0)
  {
    v13 = 368885834;
    v12 = xmmword_1B01FE854;
    v11 = -526227167;
    v10 = xmmword_1B01FE868;
    if (!MGIsDeviceOneOfType(&v12, v1, v2, v3, v4, v5, v6, v7, &v10))
    {
      v8 = MEMORY[0x1E695E4D0];
    }
  }

  return *v8;
}

CFStringRef sub_1B01A9E34()
{
  v0 = sub_1B0191100(@"aOq/O8u9f/bpWUnKco+xgA", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

CFMutableDictionaryRef sub_1B01AA03C()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = IOServiceNameMatching("compass");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B01BA2F8;
  v3[3] = &unk_1E7A92A58;
  v3[4] = Mutable;
  sub_1B01BCF2C(v1, v3);
  return Mutable;
}

BOOL sub_1B01AA11C()
{
  if (sub_1B01C5C0C(@"wlan.nan.enabled"))
  {
    return 1;
  }

  return sub_1B01BE768();
}

uint64_t sub_1B01AA19C(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    v4 = sub_1B0193D14(result, v3);
    return v4 == 6 || sub_1B0193D14(v4, v5) == 2;
  }

  return result;
}

uint64_t sub_1B01AA20C(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    return sub_1B0193D14(result, v3) == 3;
  }

  return result;
}

BOOL sub_1B01AA280()
{
  if (sub_1B0198CA8())
  {
    v0 = sub_1B01B0D88();
    if (v0)
    {
      v1 = v0;
      v2 = CFGetTypeID(v0);
      if (v2 == CFDataGetTypeID() && CFDataGetLength(v1) >= 6)
      {
        BytePtr = CFDataGetBytePtr(v1);
        if (*BytePtr)
        {
          v4 = 1;
        }

        else
        {
          v14 = 0;
          do
          {
            v15 = v14;
            if (v14 == 5)
            {
              break;
            }

            ++v14;
          }

          while (!BytePtr[v15 + 1]);
          v4 = v15 < 5;
        }
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v1);
      return v4;
    }

    return 0;
  }

  if (MGGetBoolAnswer(@"kjKnJNt7HY90iN6rpbSeFQ"))
  {
    return 0;
  }

  v5 = *(off_1EB6CFEC0 + 97);
  if (!v5)
  {
    v5 = sub_1B0193150(97, 2);
  }

  if (v5 == sub_1B01A3304)
  {
    v8 = *MEMORY[0x1E696CD60];
    v9 = IOServiceMatching("IOPlatformExpertDevice");
    MatchingService = IOServiceGetMatchingService(v8, v9);
    if (MatchingService)
    {
      v11 = MatchingService;
      v4 = 1;
      v12 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"no-sdio-devices", *MEMORY[0x1E695E480], 1u);
      if (v12)
      {
        v13 = v12;
        *buffer = 0;
        v17.location = 0;
        v17.length = 4;
        CFDataGetBytes(v12, v17, buffer);
        v4 = *buffer == 0;
        CFRelease(v13);
      }

      IOObjectRelease(v11);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v6 = *(off_1EB6CFEC0 + 97);
    if (!v6)
    {
      v6 = sub_1B0193150(97, 2);
    }

    return v6() != 0;
  }

  return v4;
}

BOOL sub_1B01AA450()
{
  v0 = MGGetBoolAnswer(@"sigsyX/a/CpMjoZnrgwIgg");
  if (v0)
  {
    return 1;
  }

  if (sub_1B0193D14(v0, v1) == 7)
  {
    return 0;
  }

  if (!sub_1B01997C0(@"H9"))
  {
    v3 = MGGetStringAnswer(@"5pYKlGnYYBzGvAlIU8RjEQ");
    if (v3)
    {
      v4 = v3;
      v2 = CFEqual(v3, @"s8001") != 0;
      CFRelease(v4);
      return v2;
    }

    return 0;
  }

  return 1;
}

CFStringRef sub_1B01AA4DC()
{
  v0 = sub_1B0191100(@"HzddeW2/HtdBNAc5tsFtDg", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01AA650(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E695E4C0];
  v3 = sub_1B01995B4(a1, a2);
  if (v3)
  {
    v4 = v3;
    if (!CFEqual(v3, @"AppleTV") && !CFEqual(v4, @"Watch") && (sub_1B01997C0(@"H8") || sub_1B01997C0(@"H9") || sub_1B01997C0(@"H10")))
    {
      v2 = *MEMORY[0x1E695E4D0];
    }

    CFRelease(v4);
  }

  return v2;
}

__CFString *sub_1B01AA7A8()
{
  v0 = sub_1B01C0B84(0x434C4347u);
  if (v0)
  {
    return CFStringCreateWithFormat(0, 0, @"%d", v0);
  }

  if (MGGetBoolAnswer(@"XkfGVYlrkBQJgaGabHESJQ"))
  {

    return sub_1B01B9A7C(@"8/tysfSvORoyVg9IE901oQ");
  }

  else
  {
    v2 = sub_1B01BA6FC();
    if (v2 <= 8)
    {
      return *(&off_1E7A92940 + 2 * v2);
    }

    else
    {
      return @"unknown";
    }
  }
}

void *sub_1B01AA84C()
{
  v0 = sub_1B019BAC0(1, "centauri", @"ChipRevision");
  if (!v0)
  {
    v1 = sub_1B01C594C(":/arm-io/wlan", @"AppleOLYHAL", 0, @"ModuleInfo", 0);
    if (v1)
    {
      v2 = v1;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v1, @" ");
      if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
      {
LABEL_7:
        v0 = 0;
      }

      else
      {
        v4 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v4);
          if (CFStringFind(ValueAtIndex, @"chip=", 0).location != -1)
          {
            break;
          }

          if (++v4 >= CFArrayGetCount(ArrayBySeparatingStrings))
          {
            goto LABEL_7;
          }
        }

        Length = CFStringGetLength(@"chip=");
        v8.length = CFStringGetLength(ValueAtIndex) - Length - 2;
        v8.location = Length + 1;
        v0 = CFStringCreateWithSubstring(0, ValueAtIndex, v8);
      }

      CFRelease(ArrayBySeparatingStrings);
      CFRelease(v2);
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

BOOL sub_1B01AA9B8(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 3 || sub_1B019AFD8() >> 31 < 3)
  {
    return 0;
  }

  return sub_1B019D140(@"H13");
}

BOOL sub_1B01AAA0C(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

CFDataRef sub_1B01AAA68()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (result = sub_1B0199908("IODeviceTree:/chosen", @"mac-address-bluetooth0", 0)) == 0 && (result = sub_1B01BD358("bluetooth")) == 0)
  {

    return sub_1B01C0E4C(0x424D6163u);
  }

  return result;
}

__CFString *sub_1B01AAB14()
{
  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    v4 = @"NoTelephonyCapabilty";
    goto LABEL_12;
  }

  v0 = sub_1B0191100(@"vaiFeAcMTIDXMSxTr8JwCw", 0);
  if (!v0)
  {
    sub_1B01F0A3C(&v13);
    v4 = v13;
    goto LABEL_12;
  }

  v1 = v0;
  v2 = *(off_1EB6CFEC0 + 68);
  if (!v2)
  {
    v2 = sub_1B0193150(68, 1);
  }

  if (!CFEqual(v1, *v2))
  {
    v3 = *(off_1EB6CFEC0 + 65);
    if (!v3)
    {
      v3 = sub_1B0193150(65, 1);
    }

    if (!CFEqual(v1, *v3))
    {
      v6 = *(off_1EB6CFEC0 + 67);
      if (!v6)
      {
        v6 = sub_1B0193150(67, 1);
      }

      if (CFEqual(v1, *v6))
      {
        goto LABEL_16;
      }

      v7 = *(off_1EB6CFEC0 + 66);
      if (!v7)
      {
        v7 = sub_1B0193150(66, 1);
      }

      if (!CFEqual(v1, *v7))
      {
        v8 = *(off_1EB6CFEC0 + 69);
        if (!v8)
        {
          v8 = sub_1B0193150(69, 1);
        }

        if (CFEqual(v1, *v8))
        {
          v4 = @"BBRejectedTicket";
          goto LABEL_10;
        }

        v9 = *(off_1EB6CFEC0 + 74);
        if (!v9)
        {
          v9 = sub_1B0193150(74, 1);
        }

        if (CFEqual(v1, *v9))
        {
          goto LABEL_9;
        }

        v10 = *(off_1EB6CFEC0 + 73);
        if (!v10)
        {
          v10 = sub_1B0193150(73, 1);
        }

        if (CFEqual(v1, *v10))
        {
LABEL_16:
          v4 = @"BBNotReady";
          goto LABEL_10;
        }

        v11 = *(off_1EB6CFEC0 + 71);
        if (!v11)
        {
          v11 = sub_1B0193150(71, 1);
        }

        if (!CFEqual(v1, *v11))
        {
          v12 = *(off_1EB6CFEC0 + 72);
          if (!v12)
          {
            v12 = sub_1B0193150(72, 1);
          }

          if (CFEqual(v1, *v12))
          {
            v4 = @"SIMNotInserted";
          }

          else
          {
            v4 = @"Other-CheckLogs";
          }

          goto LABEL_10;
        }
      }

      v4 = @"BBError";
      goto LABEL_10;
    }
  }

LABEL_9:
  v4 = @"BBInfoAvailable";
LABEL_10:
  CFRelease(v1);
LABEL_12:
  CFRetain(v4);
  return v4;
}

CFStringRef sub_1B01AAD70()
{
  v0 = sub_1B0191100(@"IAJzgzhEVk3SMNuEhChs2w", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

BOOL sub_1B01AAECC(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

CFArrayRef sub_1B01AAF10(uint64_t a1, uint64_t a2)
{
  v123 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 != 1)
  {
    if (sub_1B0193D14(v2, v3) != 3)
    {
      goto LABEL_28;
    }

    v82 = -1283070668;
    v81 = xmmword_1B01FDC4C;
    v80 = -199226823;
    v79 = xmmword_1B01FDC24;
    v78 = 1412427398;
    v77 = xmmword_1B01FDC38;
    v76 = 160260070;
    v75 = xmmword_1B01FDC60;
    v74 = 317289457;
    v73 = xmmword_1B01FE1D8;
    v72 = 401945557;
    v71 = xmmword_1B01FE1EC;
    v10 = MGIsDeviceOneOfType(&v81, v20, v21, v22, v23, v24, v25, v26, &v79);
    if (v10)
    {
      v27 = 0x147AE0000000;
    }

    else
    {
      v70 = 1532898719;
      v69 = xmmword_1B01FDB70;
      v68 = -1527788847;
      v67 = xmmword_1B01FDB84;
      v10 = MGIsDeviceOneOfType(&v69, v11, v12, v13, v14, v15, v16, v17, &v67);
      if (v10)
      {
        v27 = 0x17AE20000000;
      }

      else
      {
        v66 = -563086000;
        v65 = xmmword_1B01FE264;
        v64 = 996646949;
        v63 = xmmword_1B01FE250;
        v10 = MGIsDeviceOneOfType(&v65, v11, v12, v13, v14, v15, v16, v17, &v63);
        if (v10)
        {
          v19 = 0x405CC3D700000000;
          goto LABEL_27;
        }

        v62 = 1908474541;
        v61 = xmmword_1B01FDB98;
        v60 = 1275676051;
        v59 = xmmword_1B01FDBAC;
        v10 = MGIsDeviceOneOfType(&v61, v11, v12, v13, v14, v15, v16, v17, &v59);
        if (v10 || (v58 = -1022451852, v57 = xmmword_1B01FE228, v56 = 1729782187, v55 = xmmword_1B01FE23C, v10 = MGIsDeviceOneOfType(&v57, v11, v12, v13, v14, v15, v16, v17, &v55)))
        {
          v19 = 0x4061A6B860000000;
          goto LABEL_27;
        }

        v54 = 2030516999;
        v53 = xmmword_1B01FE6B0;
        v52 = -1276010597;
        v51 = xmmword_1B01FE6C4;
        v50 = -762483149;
        v49 = xmmword_1B01FE6D8;
        v48 = -1926937532;
        v47 = xmmword_1B01FE6EC;
        v10 = MGIsDeviceOneOfType(&v53, v11, v12, v13, v14, v15, v16, v17, &v51);
        if (!v10)
        {
          v46 = -1902732724;
          v45 = xmmword_1B01FE700;
          v44 = -342357580;
          v43 = xmmword_1B01FE714;
          v42 = 300442574;
          v41 = xmmword_1B01FE728;
          v40 = -1294188889;
          v39 = xmmword_1B01FE73C;
          v10 = MGIsDeviceOneOfType(&v45, v11, v12, v13, v14, v15, v16, v17, &v43);
          if (v10)
          {
            v19 = 0x405FE8B440000000;
            goto LABEL_27;
          }

          goto LABEL_28;
        }

        v27 = 0xC7EFA0000000;
      }
    }

    v19 = v27 & 0xFFFFFFFFFFFFLL | 0x405B000000000000;
    goto LABEL_27;
  }

  v122 = -1403227947;
  v121 = xmmword_1B01FE304;
  v120 = 729118884;
  v119 = xmmword_1B01FE2F0;
  v10 = MGIsDeviceOneOfType(&v121, v3, v4, v5, v6, v7, v8, v9, &v119);
  if (v10)
  {
    v18 = 0xF5C600000000;
LABEL_4:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0x4051000000000000;
    goto LABEL_27;
  }

  v118 = 1046806126;
  v117 = xmmword_1B01FE318;
  v116 = -188760945;
  v115 = xmmword_1B01FE32C;
  v10 = MGIsDeviceOneOfType(&v117, v11, v12, v13, v14, v15, v16, v17, &v115);
  if (v10)
  {
    v19 = 0x404B4820A0000000;
    goto LABEL_27;
  }

  v114 = -489993439;
  v113 = xmmword_1B01FE278;
  v112 = 886875686;
  v111 = xmmword_1B01FE28C;
  v10 = MGIsDeviceOneOfType(&v113, v11, v12, v13, v14, v15, v16, v17, &v111);
  if (v10)
  {
    v28 = 0x191680000000;
LABEL_15:
    v19 = v28 & 0xFFFFFFFFFFFFLL | 0x404F000000000000;
    goto LABEL_27;
  }

  v110 = -350584140;
  v109 = xmmword_1B01FE340;
  v108 = -1418383976;
  v107 = xmmword_1B01FE368;
  v10 = MGIsDeviceOneOfType(&v109, v11, v12, v13, v14, v15, v16, v17, &v107);
  if (v10)
  {
    goto LABEL_19;
  }

  v106 = 368778837;
  v105 = xmmword_1B01FE354;
  v104 = -1213485500;
  v103 = xmmword_1B01FE37C;
  v10 = MGIsDeviceOneOfType(&v105, v11, v12, v13, v14, v15, v16, v17, &v103);
  if (v10)
  {
    goto LABEL_24;
  }

  v102 = 414393924;
  v101 = xmmword_1B01FE0C0;
  v100 = 897736383;
  v99 = xmmword_1B01FE0D4;
  v10 = MGIsDeviceOneOfType(&v101, v11, v12, v13, v14, v15, v16, v17, &v99);
  if (v10)
  {
LABEL_19:
    v29 = 0x7D0B60000000;
LABEL_20:
    v19 = v29 & 0xFFFFFFFFFFFFLL | 0x404D000000000000;
    goto LABEL_27;
  }

  v98 = -996295886;
  v97 = xmmword_1B01FDBFC;
  v96 = -453987047;
  v95 = xmmword_1B01FDC10;
  v10 = MGIsDeviceOneOfType(&v97, v11, v12, v13, v14, v15, v16, v17, &v95);
  if (v10)
  {
LABEL_24:
    v18 = 0x28D0E0000000;
    goto LABEL_4;
  }

  v94 = -337121064;
  v93 = xmmword_1B01FDBD4;
  v92 = 450980336;
  v91 = xmmword_1B01FDBE8;
  v10 = MGIsDeviceOneOfType(&v93, v11, v12, v13, v14, v15, v16, v17, &v91);
  if (v10)
  {
    v19 = 0x404E1484E0000000;
    goto LABEL_27;
  }

  v90 = -1843102369;
  v89 = xmmword_1B01FDCB0;
  v10 = MGIsDeviceOneOfType(&v89, v11, v12, v13, v14, v15, v16, v17, 0);
  if (v10)
  {
    v28 = 0x49BA0000000;
    goto LABEL_15;
  }

  v88 = -427474227;
  v87 = xmmword_1B01FDC88;
  v86 = 1477534141;
  v85 = xmmword_1B01FDC9C;
  v10 = MGIsDeviceOneOfType(&v87, v11, v12, v13, v14, v15, v16, v17, &v85);
  if (v10)
  {
    v19 = 0x4050BC3960000000;
LABEL_27:
    result = sub_1B019C648(v10, v11, v12, v13, v14, v15, v16, v17, v19);
    if (result)
    {
      return result;
    }

    goto LABEL_28;
  }

  v84 = -232427879;
  v83 = xmmword_1B01FDC74;
  v10 = MGIsDeviceOneOfType(&v83, v11, v12, v13, v14, v15, v16, v17, 0);
  if (v10)
  {
    v29 = 0xFB0200000000;
    goto LABEL_20;
  }

LABEL_28:
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  sub_1B019C1E4(v37, @"rear-cam-offset-from-center");
  return sub_1B019C538(v37, 0, v31, v32, v33, v34, v35, v36);
}

BOOL sub_1B01AB7D0()
{
  v0 = sub_1B019C9DC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"Restore") != 0;
  CFRelease(v1);
  return v2;
}

CFNumberRef sub_1B01AB820(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) == 4)
  {

    return sub_1B0191100(@"+VIu65zA5EW4ztayJXvOUg", 0);
  }

  else
  {
    v3 = sub_1B0192F20("IODeviceTree:/product", @"product-name", 0);
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDataGetTypeID() && CFDataGetLength(v4) >= 1)
    {
      BytePtr = CFDataGetBytePtr(v4);
      v7 = CFStringCreateWithCString(0, BytePtr, 0x8000100u);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
    return v7;
  }
}

CFTypeRef sub_1B01AB8F0()
{
  v0 = *(off_1EB6CFEC0 + 15);
  if (!v0)
  {
    v0 = sub_1B0193150(15, 2);
  }

  TypeID = CFStringGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyMobileSubscriberNetworkCode", v0, TypeID);
}

uint64_t sub_1B01AB968(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    return sub_1B0193D14(result, v3) == 3;
  }

  return result;
}

uint64_t sub_1B01AB994()
{
  v4 = -1;
  v0 = sub_1B01914DC(@"UDftNoVOBIs9cSeia57q1A", 5, 5, kCFNumberSInt32Type, &v4);
  v1 = v4;
  if (!v0)
  {
    v1 = -1;
  }

  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

CFNumberRef sub_1B01AB9F4()
{
  result = sub_1B0198DB0("IODeviceTree:/product", @"builtin-mics", 0);
  if (!result)
  {
    valuePtr = 0;
    return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  }

  return result;
}

BOOL sub_1B01ABA54(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

uint64_t sub_1B01ABAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = -38605833;
  v20 = xmmword_1B01FE390;
  v19 = -894965712;
  v18 = xmmword_1B01FE3A4;
  v8 = MGIsDeviceOneOfType(&v20, a2, a3, a4, a5, a6, a7, a8, &v18);
  if (v8 || (v10 = sub_1B0193D14(v8, v9), v10 == 6) || (v12 = sub_1B0193D14(v10, v11), v12 == 4))
  {
    v14 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v16 = sub_1B0193D14(v12, v13);
    v14 = MEMORY[0x1E695E4C0];
    if (v16 != 3 && sub_1B0193D14(v16, v17) != 11)
    {
      v14 = MEMORY[0x1E695E4D0];
    }
  }

  return *v14;
}

uint64_t sub_1B01ABC80()
{
  v1 = *(off_1EB6CFEC0 + 37);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(37, 2);
  }

  return v1();
}

uint64_t sub_1B01ABD08()
{
  v0 = MEMORY[0x1E695E4C0];
  v4 = -1;
  v1 = sub_1B01914DC(@"+97cHA72jHlHqQnIkgGBYg", 5, 5, kCFNumberSInt32Type, &v4);
  if (v1 && v4 == 2)
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = v0;
  }

  return *v2;
}

uint64_t sub_1B01ABDA8()
{
  if (MGGetBoolAnswer(@"yRZv0s7Dpj8ZBk0S+0+nMA"))
  {
    return sub_1B01959FC(@"CH") ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B01ABDE4(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 7 || (v4 = sub_1B0193D14(v2, v3), v4 == 4) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 2) || (v10 = sub_1B0193D14(v8, v9), v10 == 6) || (v12 = sub_1B0193D14(v10, v11), v12 == 11) || sub_1B0193D14(v12, v13) == 8 || (v61 = 28030256, v60 = xmmword_1B01FE2A0, v59 = 1214363620, v58 = xmmword_1B01FE2B4, v57 = -798153473, v56 = xmmword_1B01FE2C8, v55 = -776721724, v54 = xmmword_1B01FE2DC, v53 = -489993439, v52 = xmmword_1B01FE278, v51 = 886875686, v50 = xmmword_1B01FE28C, MGIsDeviceOneOfType(&v60, v14, v15, v16, v17, v18, v19, v20, &v58)) || (v49 = -1403227947, v48 = xmmword_1B01FE304, v47 = 729118884, v46 = xmmword_1B01FE2F0, v45 = 1046806126, v44 = xmmword_1B01FE318, v43 = -188760945, v42 = xmmword_1B01FE32C, MGIsDeviceOneOfType(&v48, v21, v22, v23, v24, v25, v26, v27, &v46)))
  {
    v35 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v41 = -350584140;
    v40 = xmmword_1B01FE340;
    v39 = 368778837;
    v38 = xmmword_1B01FE354;
    v37 = MGIsDeviceOneOfType(&v40, v28, v29, v30, v31, v32, v33, v34, &v38);
    v35 = MEMORY[0x1E695E4C0];
    if (!v37)
    {
      v35 = MEMORY[0x1E695E4D0];
    }
  }

  return *v35;
}

CFTypeRef sub_1B01AC0A0()
{
  v0 = *(off_1EB6CFEC0 + 8);
  if (!v0)
  {
    v0 = sub_1B0193150(8, 2);
  }

  TypeID = CFDictionaryGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwareManifestStatus", v0, TypeID);
}

CFDataRef sub_1B01AC128()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B019B054(@"ringer-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

const void *sub_1B01AC194()
{
  v0 = sub_1B01C59D4(0, @"AppleLisaHIDEventDriver", 0, @"HIDEventServiceProperties", 0);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v1, @"RotateToWakeSupported");
      v4 = Value;
      if (!Value)
      {
LABEL_7:
        CFRelease(v1);
        goto LABEL_9;
      }

      v5 = CFGetTypeID(Value);
      if (v5 == CFBooleanGetTypeID())
      {
        CFRetain(v4);
        goto LABEL_7;
      }
    }

    v4 = 0;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_9:
  if (v4)
  {
    return v4;
  }

  else
  {
    return *MEMORY[0x1E695E4C0];
  }
}

uint64_t sub_1B01AC258()
{
  v41 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (qword_1EB6D00C0 != -1)
  {
    sub_1B01F0AC0();
  }

  if (off_1EB6D00D0)
  {
    v0 = off_1EB6D00C8 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v1)
    {
      v7 = v1 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v7, 5384, @"Unable to dlsym AMFDRCreateWithOptions and AMFDRSealingMapVerifySealing", v2, v3, v4, v5, v6);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Unable to dlsym AMFDRCreateWithOptions and AMFDRSealingMapVerifySealing";
    goto LABEL_27;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v23 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v23)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v29, 5366, @"CFDictionaryCreateMutable failed", v24, v25, v26, v27, v28);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "CFDictionaryCreateMutable failed";
LABEL_27:
    _os_log_impl(&dword_1B0190000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    return 0;
  }

  v12 = Mutable;
  CFDictionarySetValue(Mutable, @"DataStore", @"Local");
  v13 = off_1EB6D00D0(v10, v12);
  if (v13)
  {
    v14 = v13;
    v15 = off_1EB6D00C8(v13, &cf);
    if ((v15 & 1) == 0)
    {
      v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v22 = v16 ? v16 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v22, 5379, @"AMFDRSealingMapVerifySealing failed: %@", v17, v18, v19, v20, v21, cf);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = cf;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AMFDRSealingMapVerifySealing failed: %@", buf, 0xCu);
      }
    }

    CFRelease(v14);
  }

  else
  {
    v30 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v30)
    {
      v36 = v30 + 1;
    }

    else
    {
      v36 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v36, 5374, @"AMFDRCreateWithOptions failed", v31, v32, v33, v34, v35);
    v15 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AMFDRCreateWithOptions failed", buf, 2u);
      v15 = 0;
    }
  }

  CFRelease(v12);
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t sub_1B01AC578()
{
  v0 = sub_1B01BB924();
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01AC5C4()
{
  v1 = *(off_1EB6CFEC0 + 32);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(32, 2);
  }

  return v1();
}

uint64_t sub_1B01AC650()
{
  v0 = sub_1B0199908("IODeviceTree:/product", @"cover-glass", 0);
  if (v0)
  {
    v1 = v0;
    if (CFDataGetLength(v0) == 8)
    {
      BytePtr = CFDataGetBytePtr(v1);
      if (BytePtr)
      {
        v3 = *(BytePtr + 1);
        if (v3 < 3)
        {
LABEL_27:
          CFRelease(v1);
          return v3;
        }

        v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v4)
        {
          v10 = v4 + 1;
        }

        else
        {
          v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v10, 5658, @"Invlid glass type", v5, v6, v7, v8, v9);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
LABEL_26:
          v3 = 0;
          goto LABEL_27;
        }

        v36 = 0;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "Invlid glass type";
        v13 = &v36;
      }

      else
      {
        v28 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v28)
        {
          v34 = v28 + 1;
        }

        else
        {
          v34 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v34, 5651, @"CFDataGetBytePtr", v29, v30, v31, v32, v33);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *v37 = 0;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "CFDataGetBytePtr";
        v13 = v37;
      }
    }

    else
    {
      v21 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v21)
      {
        v27 = v21 + 1;
      }

      else
      {
        v27 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v27, 5645, @"I/O Invalid data returned", v22, v23, v24, v25, v26);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v38 = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "I/O Invalid data returned";
      v13 = &v38;
    }

    _os_log_impl(&dword_1B0190000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    goto LABEL_26;
  }

  v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v14)
  {
    v20 = v14 + 1;
  }

  else
  {
    v20 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v20, 5640, @"copyDataFromDeviceTree failed", v15, v16, v17, v18, v19);
  v3 = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "copyDataFromDeviceTree failed", buf, 2u);
    return 0;
  }

  return v3;
}

CFDataRef sub_1B01AC874()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BA870(v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B01AC8BC()
{
  result = MGGetBoolAnswer(@"nv4RoLkNoPT0/rsO8Yaiew");
  if (result)
  {
    return !MGGetBoolAnswer(@"2pxKjejpRGpWvUE+3yp5mQ");
  }

  return result;
}

CFStringRef sub_1B01AC8F8()
{
  v1 = 0u;
  v2 = 0u;
  if (sub_1B01BA870(&v1))
  {
    return CFStringCreateWithFormat(0, 0, @"{ x: %f, y: %f, width: %f, height: %f }", v1, v2);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B01AC964(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B01A30E8(a1, a2);
  result = 0;
  if (v2)
  {
    v3 = v2;
    v4 = strlen(v2);
    if ((v4 - 3) >= 0)
    {
      v5 = &v3[v4 - 3];
      if (*v5 == 68 && v5[1] == 69 && v5[2] == 86 && (strstr(v3, "SIM") || strstr(v3, "sim")))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1B01ACA0C()
{
  if (MGGetBoolAnswer(@"j8/Omm6s1lsmTDFsXjsBfA"))
  {
    return 1;
  }

  return sub_1B01C5724("IODeviceTree:/arm-io", @"disp0", 0, @"always-on-device-flipbook", 0);
}

uint64_t sub_1B01ACA6C(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) == 6 || sub_1B01997C0(@"H6") || sub_1B01997C0(@"H5"))
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v4 = sub_1B01997C0(@"H4");
    v2 = MEMORY[0x1E695E4C0];
    if (!v4)
    {
      v2 = MEMORY[0x1E695E4D0];
    }
  }

  return *v2;
}

BOOL sub_1B01ACAF8()
{
  v0 = *(off_1EB6CFEC0 + 1);
  if (!v0)
  {
    v0 = sub_1B0193150(1, 2);
  }

  v1 = v0();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  v4 = *(off_1EB6CFEC0 + 70);
  if (!v4)
  {
    v4 = sub_1B0193150(70, 1);
  }

  v7.location = 0;
  v7.length = Count;
  v5 = CFArrayContainsValue(v2, v7, *v4) != 0;
  CFRelease(v2);
  return v5;
}

CFTypeRef sub_1B01ACB9C()
{
  v0 = *(off_1EB6CFEC0 + 13);
  if (!v0)
  {
    v0 = sub_1B0193150(13, 2);
  }

  TypeID = CFStringGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyLastKnownMobileSubscriberCountryCode", v0, TypeID);
}

BOOL sub_1B01ACCF8(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 3 || !sub_1B01A1B04())
  {
    return 0;
  }

  return sub_1B019D140(@"H13");
}

CFStringRef sub_1B01ACD6C()
{
  v0 = sub_1B0191100(@"lU5WxNTusw4lrrBSEBiZeQ", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01ACEC8(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 4 || (v4 = sub_1B0193D14(v2, v3), v4 == 1) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 2) || (v10 = sub_1B0193D14(v8, v9), v10 == 7) || sub_1B0193D14(v10, v11) == 11)
  {
    v19 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v25 = 368885834;
    v24 = xmmword_1B01FE854;
    v23 = -526227167;
    v22 = xmmword_1B01FE868;
    v21 = MGIsDeviceOneOfType(&v24, v12, v13, v14, v15, v16, v17, v18, &v22);
    v19 = MEMORY[0x1E695E4C0];
    if (!v21)
    {
      v19 = MEMORY[0x1E695E4D0];
    }
  }

  return *v19;
}

uint64_t sub_1B01AD08C()
{
  v0 = *MEMORY[0x1E695E4C0];
  v1 = sub_1B0199908("IODeviceTree:/buttons", @"button-names", 0);
  if (v1)
  {
    v2 = v1;
    Length = CFDataGetLength(v1);
    BytePtr = CFDataGetBytePtr(v2);
    if (Length >= 1)
    {
      v5 = BytePtr;
      v6 = &BytePtr[Length];
      while (strncmp(v5, "app", Length))
      {
        v7 = strnlen(v5, Length);
        v5 += v7 + 1;
        Length -= v7 + 1;
        if (v5 >= v6)
        {
          goto LABEL_8;
        }
      }

      v0 = *MEMORY[0x1E695E4D0];
    }

LABEL_8:
    CFRelease(v2);
  }

  return v0;
}

uint64_t sub_1B01AD15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = 1602014129;
  v36 = xmmword_1B01FDECC;
  v35 = -810116762;
  v34 = xmmword_1B01FDEE0;
  v33 = -1195351767;
  v32 = xmmword_1B01FDEF4;
  v31 = -199226823;
  v30 = xmmword_1B01FDC24;
  v29 = 1412427398;
  v28 = xmmword_1B01FDC38;
  v27 = -1283070668;
  v26 = xmmword_1B01FDC4C;
  v25 = 160260070;
  v24 = xmmword_1B01FDC60;
  v8 = MGIsDeviceOneOfType(&v36, a2, a3, a4, a5, a6, a7, a8, &v34);
  if (v8 || sub_1B0193D14(v8, v9) == 6)
  {
    v17 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v23 = -926344036;
    v22 = xmmword_1B01FE138;
    v21 = -954998212;
    v20 = xmmword_1B01FE14C;
    v18 = MGIsDeviceOneOfType(&v22, v10, v11, v12, v13, v14, v15, v16, &v20);
    v17 = MEMORY[0x1E695E4C0];
    if (!v18)
    {
      v17 = MEMORY[0x1E695E4D0];
    }
  }

  return *v17;
}

BOOL sub_1B01AD36C()
{
  if (sub_1B0194994("IODeviceTree:/product", @"supports-meteor", 0))
  {
    return 1;
  }

  return MGGetBoolAnswer(@"noqTy5fUbyK03UHxWigBBQ");
}

BOOL sub_1B01AD3D0(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 3)
  {
    return 0;
  }

  return sub_1B01BD064(1, "AWCSMahiDeviceInfo");
}

uint64_t sub_1B01AD4A8()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"ND6ZSbBBgMgwtMfh+OL5Wg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFArray *sub_1B01AD548()
{
  v28 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return Mutable;
  }

  v2 = sub_1B0199908("IODeviceTree:/product", @"strict-wake-vendor-id", 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID())
    {
      v5 = CFDataGetLength(v3) >> 2;
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      WORD2(valuePtr) = 0;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "Unexpected type at kIODeviceTreePlane :/product strict-wake-vendor-id";
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    WORD2(valuePtr) = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "kIODeviceTreePlane :/product strict-wake-vendor-id not found";
LABEL_9:
    _os_log_impl(&dword_1B0190000, v6, OS_LOG_TYPE_DEFAULT, v7, &valuePtr + 4, 2u);
  }

  LODWORD(v5) = 0;
LABEL_11:
  v8 = sub_1B0199908("IODeviceTree:/product", @"strict-wake-product-id", 0);
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      WORD2(valuePtr) = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "kIODeviceTreePlane :/product strict-wake-product-id not found";
LABEL_18:
      _os_log_impl(&dword_1B0190000, v12, OS_LOG_TYPE_DEFAULT, v13, &valuePtr + 4, 2u);
    }

LABEL_19:
    LODWORD(v11) = 0;
    goto LABEL_20;
  }

  v10 = CFGetTypeID(v8);
  if (v10 != CFDataGetTypeID())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      WORD2(valuePtr) = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "Unexpected type at kIODeviceTreePlane :/product strict-wake-product-id";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = CFDataGetLength(v9) >> 2;
LABEL_20:
  if (v5 == v11)
  {
    if (v5 >= 1)
    {
      v14 = 0;
      v15 = 4 * v5;
      v16 = MEMORY[0x1E69E9C10];
      do
      {
        *buffer = 0;
        v29.location = v14;
        v29.length = 4;
        CFDataGetBytes(v9, v29, &buffer[4]);
        v30.location = v14;
        v30.length = 4;
        CFDataGetBytes(v3, v30, buffer);
        valuePtr = *buffer;
        v17 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v17)
        {
          v18 = v17;
          v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
          if (v19)
          {
            CFDictionaryAddValue(v18, @"productID", v19);
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&dword_1B0190000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create product CF Number", v23, 2u);
          }

          v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          if (v20)
          {
            CFDictionaryAddValue(v18, @"vendorID", v20);
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&dword_1B0190000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create vendor CF Number", v23, 2u);
          }

          CFArrayAppendValue(Mutable, v18);
          CFRelease(v18);
          if (v20)
          {
            CFRelease(v20);
          }

          if (v19)
          {
            CFRelease(v19);
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&dword_1B0190000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create the pair dictionary", v23, 2u);
          }

          CFArrayAppendValue(Mutable, 0);
        }

        v14 += 4;
      }

      while (v15 != v14);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    HIDWORD(valuePtr) = 67109376;
    v25 = v5;
    v26 = 1024;
    v27 = v11;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Array length mismatch! Vendor length %d vs Product length %d", &valuePtr + 4, 0xEu);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

CFNumberRef sub_1B01AD9A8()
{
  v4 = 1;
  v0 = sub_1B0198DB0("IODeviceTree:/product", @"activation-protocol-version", 0);
  if (v0)
  {
    v1 = v0;
    valuePtr = 1;
    if (CFNumberGetValue(v0, kCFNumberSInt32Type, &valuePtr) && valuePtr == 2)
    {
      v4 = 2;
    }

    CFRelease(v1);
  }

  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v4);
}

uint64_t sub_1B01ADA38(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 7 || (v4 = sub_1B0193D14(v2, v3), v4 == 4) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 2) || (v10 = sub_1B0193D14(v8, v9), v10 == 1) || (v12 = sub_1B0193D14(v10, v11), v12 == 11) || sub_1B0193D14(v12, v13) == 8)
  {
    v21 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v27 = 368885834;
    v26 = xmmword_1B01FE854;
    v25 = -526227167;
    v24 = xmmword_1B01FE868;
    v23 = MGIsDeviceOneOfType(&v26, v14, v15, v16, v17, v18, v19, v20, &v24);
    v21 = MEMORY[0x1E695E4C0];
    if (!v23)
    {
      v21 = MEMORY[0x1E695E4D0];
    }
  }

  return *v21;
}

uint64_t sub_1B01ADB44()
{
  if (!sub_1B01959FC(@"KH"))
  {
    return 1;
  }

  return MEMORY[0x1EEE71F10]("FindMy", "ArcticPlum");
}

uint64_t sub_1B01ADC40(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    return sub_1B0193D14(result, v3) == 2;
  }

  return result;
}

BOOL sub_1B01ADCD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  result = (v2 == 3 || (v4 = sub_1B0193D14(v2, v3), v4 == 1) || sub_1B0193D14(v4, v5) == 2) && !sub_1B01997C0(@"H5") && !sub_1B01997C0(@"H4");
  return result;
}

BOOL sub_1B01ADD3C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  result = MGGetBoolAnswer(@"magnetometer");
  if (result)
  {
    v13 = -1742178852;
    v12 = xmmword_1B01FE818;
    v11 = 2146530832;
    v10 = xmmword_1B01FE804;
    return !MGIsDeviceOneOfType(&v12, v3, v4, v5, v6, v7, v8, v9, &v10);
  }

  return result;
}

uint64_t sub_1B01ADE38()
{
  v0 = 1;
  if (!sub_1B01BD064(1, "aop-smart-cover"))
  {
    v0 = 0;
    if (sub_1B0194994("IODeviceTree:/buttons", @"function-button_halleffect", 0))
    {
      v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v1)
      {
        v7 = v1 + 1;
      }

      else
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v7, 8406, @"HallEffectSensorCability true using function-button_halleffect", v2, v3, v4, v5, v6);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "HallEffectSensorCability true using function-button_halleffect", v9, 2u);
      }

      return 1;
    }
  }

  return v0;
}

uint64_t sub_1B01ADF38(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    if (sub_1B0193D14(result, v3) == 6)
    {
      result = sub_1B019D140(@"M11");
      if (result)
      {
        v14 = 1530338216;
        v13 = xmmword_1B01FE0E8;
        v12 = 406601745;
        v11 = xmmword_1B01FE0FC;
        return !MGIsDeviceOneOfType(&v13, v4, v5, v6, v7, v8, v9, v10, &v11);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01AE064(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 1 || (v10 = sub_1B0193D14(v2, v3), v10 == 2) || sub_1B0193D14(v10, v3) == 3)
  {
    v45 = -350584140;
    v44 = xmmword_1B01FE340;
    v43 = 368778837;
    v42 = xmmword_1B01FE354;
    v41 = -1418383976;
    v40 = xmmword_1B01FE368;
    v39 = -1213485500;
    v38 = xmmword_1B01FE37C;
    if (MGIsDeviceOneOfType(&v44, v3, v4, v5, v6, v7, v8, v9, &v42) || (v37 = 897736383, v36 = xmmword_1B01FE0D4, v35 = -453987047, v34 = xmmword_1B01FDC10, v33 = 450980336, v32 = xmmword_1B01FDBE8, MGIsDeviceOneOfType(&v36, v11, v12, v13, v14, v15, v16, v17, &v34)))
    {
      v25 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v31 = 414393924;
      v30 = xmmword_1B01FE0C0;
      v29 = -996295886;
      v28 = xmmword_1B01FDBFC;
      v26 = MGIsDeviceOneOfType(&v30, v18, v19, v20, v21, v22, v23, v24, &v28);
      v25 = MEMORY[0x1E695E4D0];
      if (!v26)
      {
        v25 = MEMORY[0x1E695E4C0];
      }
    }
  }

  else
  {
    v25 = MEMORY[0x1E695E4C0];
  }

  return *v25;
}

CFTypeRef sub_1B01AE2C4()
{
  TypeID = CFBooleanGetTypeID();

  return sub_1B019697C("copyWiFiCallingCapability", &unk_1F2637300, TypeID);
}

__CFString *sub_1B01AE300()
{
  valuePtr = 0;
  v0 = sub_1B0191100(@"TF31PAB6aO8KAbPyNKSxKA", 0);
  if (!v0)
  {
    return @"0000000000000000";
  }

  v1 = v0;
  CFNumberGetValue(v0, kCFNumberLongLongType, &valuePtr);
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%qu", valuePtr);
  CFRelease(v1);
  return v2;
}

uint64_t sub_1B01AE3C8()
{
  v1 = *(off_1EB6CFEC0 + 45);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(45, 2);
  }

  return v1();
}

const char *sub_1B01AE430()
{
  result = sub_1B01970CC("IODeviceTree:/product", @"thinning-product-type", 0);
  if (!result)
  {

    return sub_1B019A220();
  }

  return result;
}

uint64_t sub_1B01AE478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = -337121064;
  v13 = xmmword_1B01FDBD4;
  v12 = 450980336;
  v11 = xmmword_1B01FDBE8;
  v8 = MGIsDeviceOneOfType(&v13, a2, a3, a4, a5, a6, a7, a8, &v11);
  v9 = MEMORY[0x1E695E4D0];
  if (!v8)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  return *v9;
}

CFStringRef sub_1B01AE580()
{
  v0 = sub_1B0191100(@"jSDzacs4RYWnWxn142UBLQ", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

CFDataRef sub_1B01AE71C()
{
  result = sub_1B0199908("IODeviceTree:/chosen", @"mac-address-ethernet0", 0);
  if (!result)
  {
    result = sub_1B01BD358("ethernet");
    if (!result)
    {

      return sub_1B01C0E4C(0x454D6163u);
    }
  }

  return result;
}

BOOL sub_1B01AE7F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 6)
  {
    return 0;
  }

  v4 = sub_1B0193D14(v2, v3);
  return v4 != 8 && sub_1B0193D14(v4, v5) != 7 && !sub_1B01997C0(@"H1") && !sub_1B01997C0(@"H2") && !sub_1B01997C0(@"H3") && !sub_1B01997C0(@"H4") && !sub_1B01997C0(@"H5") && !sub_1B01997C0(@"H6");
}

CFNumberRef sub_1B01AE8F4()
{
  if (sub_1B019D228(@"r/++Z94rbTcHrTtZ/rCU4w", 115))
  {
    goto LABEL_2;
  }

  if (sub_1B01997C0(@"M10"))
  {
LABEL_4:
    v0 = 42;
    goto LABEL_8;
  }

  if (sub_1B01997C0(@"H9") || sub_1B01997C0(@"H10"))
  {
    goto LABEL_7;
  }

  if (sub_1B01997C0(@"H1"))
  {
    goto LABEL_10;
  }

  if (sub_1B01997C0(@"M8"))
  {
    goto LABEL_4;
  }

  if (sub_1B01997C0(@"H2"))
  {
    goto LABEL_10;
  }

  if (sub_1B01997C0(@"M9"))
  {
    goto LABEL_4;
  }

  if (sub_1B01997C0(@"H3"))
  {
    goto LABEL_10;
  }

  if (sub_1B019D228(@"aIJva0DAnD6KdrSpPF11xQ", 115))
  {
LABEL_2:
    v0 = 50;
    goto LABEL_8;
  }

  if (sub_1B01997C0(@"H4"))
  {
    goto LABEL_10;
  }

  if (sub_1B01997C0(@"H11"))
  {
    goto LABEL_7;
  }

  if (sub_1B01997C0(@"H5"))
  {
LABEL_10:
    v0 = 41;
    goto LABEL_8;
  }

  if (sub_1B019D228(@"3Hj0jFscGt094g65Fag7eQ", 116))
  {
    goto LABEL_7;
  }

  if (sub_1B01997C0(@"H6"))
  {
    goto LABEL_4;
  }

  if (sub_1B019D228(@"NKo9tzEYqtHAfQYMFsc66Q", 115))
  {
LABEL_7:
    v0 = 51;
    goto LABEL_8;
  }

  if (sub_1B019D228(@"zDBaE8nqtDP8hY4pOa6iMw", 116))
  {
    v0 = 50;
  }

  else
  {
    v0 = 52;
  }

LABEL_8:
  valuePtr = v0;
  return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
}

uint64_t sub_1B01AEA8C()
{
  v0 = sub_1B0194994("IODeviceTree:/product/camera", @"post-effects", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01AEB74()
{
  v0 = sub_1B0193ED4("IODeviceTree:/product", @"multiuser-sessions", 0, 0, 1);
  v1 = MEMORY[0x1E695E4C0];
  if (v0)
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  return *v1;
}

uint64_t sub_1B01AEBF4(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 4 || (v4 = sub_1B0193D14(v2, v3), v4 == 1) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 2) || (v10 = sub_1B0193D14(v8, v9), v10 == 7) || sub_1B0193D14(v10, v11) == 11)
  {
    v19 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v25 = 368885834;
    v24 = xmmword_1B01FE854;
    v23 = -526227167;
    v22 = xmmword_1B01FE868;
    v21 = MGIsDeviceOneOfType(&v24, v12, v13, v14, v15, v16, v17, v18, &v22);
    v19 = MEMORY[0x1E695E4C0];
    if (!v21)
    {
      v19 = MEMORY[0x1E695E4D0];
    }
  }

  return *v19;
}

CFTypeRef sub_1B01AEDC4()
{
  v0 = *(off_1EB6CFEC0 + 9);
  if (!v0)
  {
    v0 = sub_1B0193150(9, 2);
  }

  TypeID = CFDictionaryGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwarePreflightInfo", v0, TypeID);
}

CFStringRef sub_1B01AEE4C()
{
  v0 = sub_1B0191100(@"8QNz35Yxm0KqxP1JiE0HIw", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

const void *sub_1B01AEFC0()
{
  v0 = sub_1B0191100(@"qOwiNS0eFEq9oi3MNsgxWg", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"Nonce");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

uint64_t sub_1B01AF02C()
{
  if (sub_1B01997C0(@"H6") || (v0 = sub_1B01997C0(@"H8")) || (v2 = sub_1B0193D14(v0, v1), v2 == 6) || sub_1B0193D14(v2, v3) == 7 || sub_1B01997C0(@"H5") || sub_1B01997C0(@"H7"))
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v6 = sub_1B01997C0(@"H4");
    v4 = MEMORY[0x1E695E4C0];
    if (!v6)
    {
      v4 = MEMORY[0x1E695E4D0];
    }
  }

  return *v4;
}

BOOL sub_1B01AF0DC(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) != 1)
  {
    return 0;
  }

  result = MGGetBoolAnswer(@"8S7ydMJ4DlCUF38/hI/fJA");
  if (result)
  {
    v13 = -232427879;
    v12 = xmmword_1B01FDC74;
    v11 = -427474227;
    v10 = xmmword_1B01FDC88;
    return !MGIsDeviceOneOfType(&v12, v3, v4, v5, v6, v7, v8, v9, &v10);
  }

  return result;
}

BOOL sub_1B01AF2E0(uint64_t a1, uint64_t a2)
{
  v143 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 1)
  {
    v142 = -232427879;
    v141 = xmmword_1B01FDC74;
    v140 = -427474227;
    v139 = xmmword_1B01FDC88;
    v138 = 1477534141;
    v137 = xmmword_1B01FDC9C;
    v136 = -1843102369;
    v135 = xmmword_1B01FDCB0;
    v134 = -820493242;
    v133 = xmmword_1B01FE750;
    v132 = -61007701;
    v131 = xmmword_1B01FE444;
    v130 = -235416490;
    v129 = xmmword_1B01FE458;
    v128 = -121925081;
    v127 = xmmword_1B01FE4D0;
    v126 = 1071957977;
    v125 = xmmword_1B01FE480;
    v124 = 438437663;
    v123 = xmmword_1B01FE494;
    v122 = -382792827;
    v121 = xmmword_1B01FE4A8;
    v120 = 1575123478;
    v119 = xmmword_1B01FE4BC;
    v118 = 123138233;
    v117 = xmmword_1B01FE41C;
    v116 = 681511593;
    v115 = xmmword_1B01FE430;
    v114 = 713503427;
    v113 = xmmword_1B01FDCC4;
    v112 = -1632750650;
    v111 = xmmword_1B01FDCD8;
    v110 = -1431778695;
    v109 = xmmword_1B01FE46C;
    v10 = &v139;
    v11 = &v141;
    return !MGIsDeviceOneOfType(v11, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v12 = sub_1B0193D14(v2, v3);
  if (v12 == 3)
  {
    v108 = -1022451852;
    v107 = xmmword_1B01FE228;
    v106 = 1729782187;
    v105 = xmmword_1B01FE23C;
    v104 = 996646949;
    v103 = xmmword_1B01FE250;
    v102 = -563086000;
    v101 = xmmword_1B01FE264;
    v100 = 317289457;
    v99 = xmmword_1B01FE1D8;
    v98 = 401945557;
    v97 = xmmword_1B01FE1EC;
    v96 = -1157300313;
    v95 = xmmword_1B01FE200;
    v94 = -2132668294;
    v93 = xmmword_1B01FE214;
    v92 = 2030516999;
    v91 = xmmword_1B01FE6B0;
    v90 = -1276010597;
    v89 = xmmword_1B01FE6C4;
    v88 = -762483149;
    v87 = xmmword_1B01FE6D8;
    v86 = -1926937532;
    v85 = xmmword_1B01FE6EC;
    v84 = -1902732724;
    v83 = xmmword_1B01FE700;
    v82 = -342357580;
    v81 = xmmword_1B01FE714;
    v80 = 300442574;
    v79 = xmmword_1B01FE728;
    v78 = -1294188889;
    v77 = xmmword_1B01FE73C;
    v76 = 1126727276;
    v75 = xmmword_1B01FDCEC;
    v74 = 300130091;
    v73 = xmmword_1B01FDD00;
    v72 = 343814884;
    v71 = xmmword_1B01FDD14;
    v70 = -1675932945;
    v69 = xmmword_1B01FDD28;
    v68 = 1278131292;
    v67 = xmmword_1B01FE598;
    v66 = -1841712216;
    v65 = xmmword_1B01FE5AC;
    v64 = 659506830;
    v63 = xmmword_1B01FE5E8;
    v62 = 213746202;
    v61 = xmmword_1B01FE5FC;
    v60 = 372777383;
    v59 = xmmword_1B01FE520;
    v58 = -858079590;
    v57 = xmmword_1B01FE534;
    v56 = -212523443;
    v55 = xmmword_1B01FE548;
    v54 = 646100384;
    v53 = xmmword_1B01FE55C;
    v52 = 345196535;
    v51 = xmmword_1B01FE660;
    v50 = 440949464;
    v49 = xmmword_1B01FE674;
    v48 = -545612308;
    v47 = xmmword_1B01FDD3C;
    v46 = 1178062702;
    v45 = xmmword_1B01FDD50;
    v44 = -695298128;
    v43 = xmmword_1B01FDD64;
    v42 = 804488105;
    v41 = xmmword_1B01FDD78;
    v40 = 1614584579;
    v39 = xmmword_1B01FDD8C;
    v38 = 324288768;
    v37 = xmmword_1B01FDDA0;
    v36 = 460218192;
    v35 = xmmword_1B01FDDB4;
    v34 = 2144905009;
    v33 = xmmword_1B01FDDC8;
    v32 = 127894440;
    v31 = xmmword_1B01FDDDC;
    v30 = 1070997468;
    v29 = xmmword_1B01FDDF0;
    v28 = 688565114;
    v27 = xmmword_1B01FE688;
    v26 = -493418906;
    v25 = xmmword_1B01FE69C;
    v10 = &v105;
    v11 = &v107;
    return !MGIsDeviceOneOfType(v11, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  result = 0;
  if (sub_1B0193D14(v12, v3) == 6 && sub_1B019D140(@"M11"))
  {
    v24 = 1530338216;
    v23 = xmmword_1B01FE0E8;
    v22 = 406601745;
    v21 = xmmword_1B01FE0FC;
    if (!MGIsDeviceOneOfType(&v23, v14, v15, v16, v17, v18, v19, v20, &v21))
    {
      return 1;
    }
  }

  return result;
}

CFDataRef sub_1B01AFC14()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BAAC0(@"volume-up-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_1B01AFC68()
{
  v0 = sub_1B0191100(@"5Y72WwdS5NYHdc00gEZ/DQ", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01AFE64()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"location-reminders", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

BOOL sub_1B01AFEB8()
{
  result = sub_1B019D140(@"H15");
  if (result)
  {
    return !sub_1B019D228(@"t8120", 0);
  }

  return result;
}

uint64_t sub_1B01AFF08()
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v0 = 0;
  if (sub_1B0198CA8())
  {
    goto LABEL_17;
  }

  v1 = IOServiceMatching("AppleOLYHAL");
  CFRetain(v1);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = sub_1B01BABB8;
  v15[3] = &unk_1E7A92C10;
  v15[4] = &v16;
  v15[5] = &v20;
  sub_1B01BCF2C(v1, v15);
  if ((v17[3] & 1) == 0)
  {
    CFRetain(v1);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = sub_1B01BAC38;
    v14[3] = &unk_1E7A92C38;
    v14[4] = &v16;
    v14[5] = &v20;
    sub_1B01BD998(v1, 5, v14, 0);
  }

  if (!v21[3])
  {
    v2 = *(v17 + 24);
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    if (v2 == 1)
    {
      _MGLog(v9, 3859, @"failed to fetch wifi vendor (no vendor-id)", v4, v5, v6, v7, v8);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "failed to fetch wifi vendor (no vendor-id)";
LABEL_13:
        _os_log_impl(&dword_1B0190000, v10, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
      }
    }

    else
    {
      _MGLog(v9, 3861, @"failed to fetch wifi vendor (no AppleOLYHAL node)", v4, v5, v6, v7, v8);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "failed to fetch wifi vendor (no AppleOLYHAL node)";
        goto LABEL_13;
      }
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v0 = v21[3];
LABEL_17:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v0;
}

uint64_t sub_1B01B0144()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"eW5H/Gwg0uqbMqFot70pYg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B018C(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    v4 = sub_1B0193D14(result, v3);
    if (v4 == 2)
    {
      return 1;
    }

    v6 = sub_1B0193D14(v4, v5);
    return v6 == 3 || sub_1B0193D14(v6, v7) == 6;
  }

  return result;
}

CFTypeRef sub_1B01B01D8()
{
  v0 = sub_1B019BAC0(1, "als", @"prox-calibration");
  if (!v0)
  {
LABEL_4:
    v1 = sub_1B019BAC0(1, "multi-touch", @"prox-calibration");
    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID())
  {
    CFRelease(v1);
    goto LABEL_4;
  }

LABEL_5:
  v3 = CFGetTypeID(v1);
  if (v3 == CFDataGetTypeID())
  {
    return v1;
  }

  CFRelease(v1);
LABEL_8:

  return sub_1B019BAC0(1, "prox", @"prox-calibration");
}

uint64_t sub_1B01B0350()
{
  v1 = *(off_1EB6CFEC0 + 50);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(50, 2);
  }

  return v1();
}

uint64_t sub_1B01B03E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = *MEMORY[0x1E69E9840];
  v60 = -414334491;
  v59 = xmmword_1B01FE19C;
  v58 = -1509831889;
  v57 = xmmword_1B01FE1B0;
  if (MGIsDeviceOneOfType(&v59, a2, a3, a4, a5, a6, a7, a8, &v57) || (v56 = 289690957, v55 = xmmword_1B01FE174, v54 = 586720268, v53 = xmmword_1B01FE188, v15 = MGIsDeviceOneOfType(&v55, v8, v9, v10, v11, v12, v13, v14, &v53)) || sub_1B0193D14(v15, v16) != 6 || (v52 = 368885834, v51 = xmmword_1B01FE854, v50 = -526227167, v49 = xmmword_1B01FE868, MGIsDeviceOneOfType(&v51, v17, v18, v19, v20, v21, v22, v23, &v49)) || (v48 = -2092955395, v47 = xmmword_1B01FDE54, v46 = 674998600, v45 = xmmword_1B01FDE68, MGIsDeviceOneOfType(&v47, v24, v25, v26, v27, v28, v29, v30, &v45)))
  {
    v38 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v44 = 1711910369;
    v43 = xmmword_1B01FDE7C;
    v42 = -1282800328;
    v41 = xmmword_1B01FDE90;
    v40 = MGIsDeviceOneOfType(&v43, v31, v32, v33, v34, v35, v36, v37, &v41);
    v38 = MEMORY[0x1E695E4C0];
    if (!v40)
    {
      v38 = MEMORY[0x1E695E4D0];
    }
  }

  return *v38;
}

CFNumberRef sub_1B01B0644()
{
  v0 = sub_1B0191100(@"91LyMcx4z1w3SGVeqteMnA", 0);
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID() && CFDataGetLength(v1) > 11)
    {
      BytePtr = CFDataGetBytePtr(v1);
      v4 = CFNumberCreate(0, kCFNumberSInt32Type, BytePtr + 4);
LABEL_11:
      CFRelease(v1);
      return v4;
    }
  }

  v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v5)
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v11, 5133, @"failed to fetch region sku", v6, v7, v8, v9, v10);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to fetch region sku", v13, 2u);
  }

  v4 = 0;
  result = 0;
  if (v1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1B01B074C()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"gme55xrmjlSlBkahnZq36A", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

float sub_1B01B07AC(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) == 3 && !MGGetBoolAnswer(@"lSpe1QHIya0aeNrjLTtaJA"))
  {
    return 0.42;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_1B01B07FC()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"61xs1bQ+9eTk8tlRvG9UKw", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B01B0844(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 3)
  {
    return 0;
  }

  return sub_1B019AE8C(@"baseband", 0);
}

CFStringRef sub_1B01B08A8()
{
  v0 = sub_1B0191100(@"TqrlqJOZiAuRx8Qu3SVr+Q", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01B0A04()
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&v16, 0, 512);
  if (statfs("/private/var", &v16) != -1)
  {
    return LOBYTE(v16.f_flags) >> 7;
  }

  v1 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v2)
  {
    v1 = v2 + 1;
  }

  v3 = __error();
  v4 = strerror(*v3);
  _MGLog(v1, 3794, @"Could not statfs %s: %s", v5, v6, v7, v8, v9, "/private/var", v4);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136315394;
    v13 = "/private/var";
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not statfs %s: %s", buf, 0x16u);
  }

  sub_1B0191658(6);
  return 0;
}

CFNumberRef sub_1B01B0C40(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) == 4)
  {
    valuePtr = 1;
    v5 = 1839812531;
    v4 = xmmword_1B01FE1C4;
    if ((MGIsDeviceOfType(&v4) & 1) == 0)
    {
      valuePtr = 2;
    }

    return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {

    return sub_1B0191100(@"SNfDJgQFV2Xj7+WnozcJPw", 0);
  }
}

CFDataRef sub_1B01B0D88()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (result = sub_1B0199908("IODeviceTree:/chosen", @"mac-address-wifi0", 0)) == 0 && (result = sub_1B01BD358("sdio")) == 0 && (result = sub_1B01BD358("wlan")) == 0 && (result = sub_1B01BD358("marconi-wifi")) == 0 && ((sub_1B0198CA8() & 1) != 0 || (result = sub_1B01BD36C()) == 0))
  {

    return sub_1B01C0E4C(0x574D6163u);
  }

  return result;
}

BOOL sub_1B01B0E98()
{
  v0 = sub_1B01AAA68();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFDataGetTypeID() && CFDataGetLength(v1) >= 6)
  {
    BytePtr = CFDataGetBytePtr(v1);
    if (*BytePtr)
    {
      v4 = 1;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = v6;
        if (v6 == 5)
        {
          break;
        }

        ++v6;
      }

      while (!BytePtr[v7 + 1]);
      v4 = v7 < 5;
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v1);
  return v4;
}

uint64_t sub_1B01B0F6C(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) == 4)
  {
    v2 = sub_1B01998E0("IODeviceTree:/product", @"builtin-remote", 0);
    v3 = MEMORY[0x1E695E4C0];
    if (!v2)
    {
      v3 = MEMORY[0x1E695E4D0];
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

uint64_t sub_1B01B0FF0()
{
  v0 = sub_1B019D140(@"H6");
  v2 = MEMORY[0x1E695E4D0];
  if (!v0 && sub_1B0193D14(v0, v1) != 11)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  return *v2;
}

uint64_t sub_1B01B105C()
{
  if (MGGetBoolAnswer(@"j8/Omm6s1lsmTDFsXjsBfA"))
  {
    return 1;
  }

  return sub_1B01C5724("IODeviceTree:/arm-io", @"disp0", 0, @"always-on-device", 0);
}

BOOL sub_1B01B10BC()
{
  if (MGGetBoolAnswer(@"TTZrMo1OOEUELa7asaQ7xg"))
  {
    return 1;
  }

  return MGGetBoolAnswer(@"7W2eNk/f6uewC8N58mlRrQ");
}

BOOL sub_1B01B1104()
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13 = 4;
  if (sysctlbyname("hw.cpu64bit_capable", &v14, &v13, 0, 0) != -1)
  {
    return v14 != 0;
  }

  v1 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v2)
  {
    v1 = v2 + 1;
  }

  v3 = __error();
  v4 = strerror(*v3);
  _MGLog(v1, 1396, @"sysctlbyname: %s", v5, v6, v7, v8, v9, v4);
  v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v11 = __error();
    v12 = strerror(*v11);
    *buf = 136315138;
    v16 = v12;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "sysctlbyname: %s", buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_1B01B12BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v23 = -38605833;
  v22 = xmmword_1B01FE390;
  v21 = -894965712;
  v20 = xmmword_1B01FE3A4;
  v8 = MGIsDeviceOneOfType(&v22, a2, a3, a4, a5, a6, a7, a8, &v20);
  if (v8 || (v10 = sub_1B0193D14(v8, v9), v10 == 4) || (v12 = sub_1B0193D14(v10, v11), v12 == 6) || (v14 = sub_1B0193D14(v12, v13), v14 == 3))
  {
    v16 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v18 = sub_1B0193D14(v14, v15);
    v16 = MEMORY[0x1E695E4C0];
    if (v18 != 2 && sub_1B0193D14(v18, v19) != 11)
    {
      v16 = MEMORY[0x1E695E4D0];
    }
  }

  return *v16;
}

CFDataRef sub_1B01B13B4()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (result = sub_1B0199908("IODeviceTree:/arm-io/isp", @"pearl-calibration-data", 0)) == 0)
  {

    return sub_1B019E354(0x5072434Cu);
  }

  return result;
}

uint64_t sub_1B01B1414()
{
  if (MGGetBoolAnswer(@"yRZv0s7Dpj8ZBk0S+0+nMA"))
  {
    return sub_1B01959FC(@"CH") ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B01B1450()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"eW5H/Gwg0uqbMqFot70pYg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B1498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = -414334491;
  v37 = xmmword_1B01FE19C;
  v36 = -1509831889;
  v35 = xmmword_1B01FE1B0;
  if (MGIsDeviceOneOfType(&v37, a2, a3, a4, a5, a6, a7, a8, &v35) || (v34 = 289690957, v33 = xmmword_1B01FE174, v32 = 586720268, v31 = xmmword_1B01FE188, v15 = MGIsDeviceOneOfType(&v33, v8, v9, v10, v11, v12, v13, v14, &v31)) || sub_1B0193D14(v15, v16) != 6)
  {
    v25 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v30 = 368885834;
    v29 = xmmword_1B01FE854;
    v28 = -526227167;
    v27 = xmmword_1B01FE868;
    v24 = MGIsDeviceOneOfType(&v29, v17, v18, v19, v20, v21, v22, v23, &v27);
    v25 = MEMORY[0x1E695E4C0];
    if (!v24)
    {
      v25 = MEMORY[0x1E695E4D0];
    }
  }

  return *v25;
}

CFNumberRef sub_1B01B15F4()
{
  v9 = 0;
  valuePtr = -1;
  v0 = sub_1B0199908("IODeviceTree:/chosen", @"marketing-software-behavior", 0);
  if (!v0)
  {
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v9);
  }

  v1 = v0;
  BytePtr = CFDataGetBytePtr(v0);
  if (BytePtr && (v3 = BytePtr, v4 = CFGetTypeID(v1), v4 == CFDataGetTypeID()) && CFDataGetLength(v1) >= 4)
  {
    v5 = v3[2];
    if ((v5 - 1) >= 2)
    {
      v5 = 0;
    }

    valuePtr = v5;
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];
  }

  v7 = CFNumberCreate(v6, kCFNumberSInt32Type, &v9);
LABEL_11:
  CFRelease(v1);
  return v7;
}

uint64_t sub_1B01B17B4()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"wOVK1nhmiAawowdbIwgyaQ", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 59)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFArray *sub_1B01B17FC()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v1 = sub_1B0191100(@"r5pA2qLgR86BQKwgMjPWzg", 0);
  if (!v1)
  {
    v3 = 0;
    if (!Mutable)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v2 = v1;
  CFArrayAppendValue(Mutable, v1);
  v3 = sub_1B01B9F00(Mutable, 4);
  CFRelease(v2);
  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t sub_1B01B18FC()
{
  v0 = sub_1B019AE8C(@"rose", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01B193C(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 4 || (v4 = sub_1B0193D14(v2, v3), v4 == 2) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 1) || (v10 = sub_1B0193D14(v8, v9), v10 == 7) || sub_1B0193D14(v10, v11) == 11)
  {
    v19 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v25 = 368885834;
    v24 = xmmword_1B01FE854;
    v23 = -414334491;
    v22 = xmmword_1B01FE19C;
    v21 = MGIsDeviceOneOfType(&v24, v12, v13, v14, v15, v16, v17, v18, &v22);
    v19 = MEMORY[0x1E695E4D0];
    if (!v21)
    {
      v19 = MEMORY[0x1E695E4C0];
    }
  }

  return *v19;
}

uint64_t sub_1B01B1B24()
{
  v1 = *(off_1EB6CFEC0 + 26);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(26, 2);
  }

  return v1();
}

uint64_t sub_1B01B1BB0()
{
  v0 = sub_1B01C583C("IODeviceTree:/arm-io", @"multi-touch", 0, @"force-supported", 0);
  if (!v0)
  {
    return *MEMORY[0x1E695E4C0];
  }

  v1 = *MEMORY[0x1E695E4D0];
  CFRelease(v0);
  return v1;
}

__CFString *sub_1B01B1C78()
{
  v0 = sub_1B0191100(@"nFRqKto/RuQAV1P+0/qkBA", 0);

  return sub_1B01949CC(v0);
}

CFDataRef sub_1B01B1CE8()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BAAC0(@"camera-button-location", 1, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

const void *sub_1B01B1D3C()
{
  if (sub_1B01978E8())
  {
    v0 = @"iOSSupportVersion";
  }

  else
  {
    v0 = *MEMORY[0x1E695E208];
  }

  return sub_1B0192B9C(v0, 1);
}

CFStringRef sub_1B01B1DF0()
{
  v0 = NXGetLocalArchInfo();
  if (v0 && (name = v0->name) != 0)
  {

    return CFStringCreateWithCString(0, name, 0x8000100u);
  }

  else
  {
    v3 = sub_1B01A1EF0();
    return CFStringCreateWithFormat(0, 0, @"%d-%d", v3, HIDWORD(v3));
  }
}

uint64_t sub_1B01B1EB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 3 || (v4 = sub_1B0193D14(v2, v3), v4 == 4))
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v8 = sub_1B0193D14(v4, v5);
    v10 = MEMORY[0x1E695E4C0];
    v6 = MEMORY[0x1E695E4C0];
    if (v8 != 2)
    {
      v11 = sub_1B0193D14(v8, v9);
      v6 = MEMORY[0x1E695E4D0];
      if (v11 != 1 && sub_1B0193D14(v11, v12) != 6)
      {
        v6 = v10;
      }
    }
  }

  return *v6;
}

const void *sub_1B01B1F34()
{
  v0 = _CFCopySupplementalVersionDictionary();

  return sub_1B01A1980(v0, @"ProductVersionExtra", 1);
}

uint64_t sub_1B01B1F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 1244490093;
  v13 = xmmword_1B01FDEA4;
  v12 = 1377801277;
  v11 = xmmword_1B01FDEB8;
  v8 = MGIsDeviceOneOfType(&v13, a2, a3, a4, a5, a6, a7, a8, &v11);
  v9 = MEMORY[0x1E695E4D0];
  if (!v8)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  return *v9;
}

uint64_t sub_1B01B2070()
{
  v0 = sub_1B0194994("IODeviceTree:/product/camera", @"flash", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

BOOL sub_1B01B211C()
{
  result = MGGetBoolAnswer(@"BWoQXWXYITrPRpFyc9xTLw");
  if (result)
  {
    v2 = sub_1B0193D14(result, v1);
    if (v2 == 3)
    {
      return 1;
    }

    v4 = sub_1B0193D14(v2, v3);
    return v4 == 4 || sub_1B0193D14(v4, v5) == 1;
  }

  return result;
}

CFArrayRef sub_1B01B216C()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1E7A92C58;
  v1[1] = *off_1E7A92C68;
  v2 = @"KP";
  return CFArrayCreate(0, v1, 5, 0);
}

CFNumberRef sub_1B01B225C()
{
  valuePtr = 0;
  result = sub_1B0198DB0("IODeviceTree:/product/camera", @"front-max-burst-length", 0);
  if (!result)
  {
    if (MGGetBoolAnswer(@"plaYa8bKJaAF5Erc5nvZ+g") || MGGetBoolAnswer(@"Ty5/C8UDfdjcdR853kulmA"))
    {
      valuePtr = 999;
    }

    return CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  }

  return result;
}

const void *sub_1B01B231C()
{
  v0 = _CFCopySupplementalVersionDictionary();

  return sub_1B01A1980(v0, @"ProductBuildVersion", 1);
}

uint64_t sub_1B01B2368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = *MEMORY[0x1E69E9840];
  v66 = 1602014129;
  v65 = xmmword_1B01FDECC;
  v64 = -810116762;
  v63 = xmmword_1B01FDEE0;
  v62 = -1195351767;
  v61 = xmmword_1B01FDEF4;
  v60 = 1789837692;
  v59 = xmmword_1B01FDF08;
  v58 = -1239654590;
  v57 = xmmword_1B01FDF1C;
  v56 = -1579092758;
  v55 = xmmword_1B01FDF30;
  v54 = 48355600;
  v53 = xmmword_1B01FDF44;
  v52 = -679691073;
  v51 = xmmword_1B01FDF58;
  v50 = 1430379884;
  v49 = xmmword_1B01FDF6C;
  v8 = MGIsDeviceOneOfType(&v65, a2, a3, a4, a5, a6, a7, a8, &v63);
  if (v8 || (v10 = sub_1B0193D14(v8, v9), v10 == 6) || (v12 = sub_1B0193D14(v10, v11), v12 == 4) || (v14 = sub_1B0193D14(v12, v13), v14 == 7) || sub_1B0193D14(v14, v15) == 8 || (v48 = -38605833, v47 = xmmword_1B01FE390, v46 = -894965712, v45 = xmmword_1B01FE3A4, v44 = -2101636455, v43 = xmmword_1B01FE3B8, v42 = -1955568593, v41 = xmmword_1B01FE3CC, v40 = 28030256, v39 = xmmword_1B01FE2A0, v38 = 1214363620, v37 = xmmword_1B01FE2B4, MGIsDeviceOneOfType(&v47, v16, v17, v18, v19, v20, v21, v22, &v45)))
  {
    v30 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v36 = -926344036;
    v35 = xmmword_1B01FE138;
    v34 = -954998212;
    v33 = xmmword_1B01FE14C;
    v32 = MGIsDeviceOneOfType(&v35, v23, v24, v25, v26, v27, v28, v29, &v33);
    v30 = MEMORY[0x1E695E4C0];
    if (!v32)
    {
      v30 = MEMORY[0x1E695E4D0];
    }
  }

  return *v30;
}

uint64_t sub_1B01B26A4(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 4)
  {
    v26 = 1839812531;
    v25 = xmmword_1B01FE1C4;
    v24 = -435113336;
    v23 = xmmword_1B01FE4E4;
    v2 = MGIsDeviceOneOfType(&v25, v3, v4, v5, v6, v7, v8, v9, &v23);
    if (!v2)
    {
      return 1;
    }
  }

  result = sub_1B0193D14(v2, v3);
  if (result != 1)
  {
    if (sub_1B0193D14(result, v11) == 3)
    {
      v22 = 401945557;
      v21 = xmmword_1B01FE1EC;
      v20 = 317289457;
      v19 = xmmword_1B01FE1D8;
      return !MGIsDeviceOneOfType(&v21, v12, v13, v14, v15, v16, v17, v18, &v19);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableArrayRef sub_1B01B28F8()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  macho_for_each_runnable_arch_name();
  return Mutable;
}

const void *sub_1B01B29F4()
{
  v0 = sub_1B01A2FFC();
  v1 = v0;
  if (v0)
  {
    CFRetain(v0);
  }

  return v1;
}

CFStringRef sub_1B01B2A98()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0191100(@"eNgz35a7iZnVeEMwsBQZew", 0);
  v1 = v0;
  valuePtr = 0;
  if (v0)
  {
    CFNumberGetValue(v0, kCFNumberSInt32Type, &valuePtr);
    v2 = valuePtr;
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%X", v2);
  v5 = sub_1B0191100(@"Nmhz54v5ZLqj2I4NPFIFqQ", 0);
  Mutable = CFStringCreateMutable(v3, 0);
  v14 = Mutable;
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(v5);
    Mutable = CFDataGetLength(v5);
    if (Mutable >= 1)
    {
      v16 = Mutable;
      do
      {
        v17 = *BytePtr++;
        CFStringAppendFormat(v14, 0, @"%02X", v17);
        --v16;
      }

      while (v16);
    }
  }

  MEMORY[0x1EEE9AC00](Mutable, v7, v8, v9, v10, v11, v12, v13);
  v23[0] = 0x3030303030303030;
  Length = CFStringGetLength(v14);
  v19 = CFStringGetLength(v4);
  if (v1 && v5)
  {
    v20 = CFStringCreateWithFormat(v3, 0, @"%*.*s%@-%*.*s%@", (8 - v19) & ~((8 - v19) >> 63), (8 - v19) & ~((8 - v19) >> 63), v23, v4, (8 - Length) & ~((8 - Length) >> 63), (8 - Length) & ~((8 - Length) >> 63), v23, v14);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  CFRelease(v1);
  v21 = v20;
LABEL_13:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v21;
}

BOOL sub_1B01B2D30(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  v13 = -1092155788;
  v12 = xmmword_1B01FDF80;
  v11 = 763775061;
  v10 = xmmword_1B01FDF94;
  return MGIsDeviceOneOfType(&v12, v2, v3, v4, v5, v6, v7, v8, &v10);
}

__CFDictionary *sub_1B01B3058()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 8; ++i)
  {
    v3 = off_1E7A92CA0[i];
    v4 = sub_1B01970CC("IODeviceTree:/options", v3, 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFNumberFormatterCreate(v0, 0, kCFNumberFormatterNoStyle);
      NumberFromString = CFNumberFormatterCreateNumberFromString(v0, v6, v5, 0, 1uLL);
      if (NumberFromString)
      {
        v8 = NumberFromString;
        CFDictionarySetValue(Mutable, v3, NumberFromString);
        CFRelease(v8);
      }

      CFRelease(v6);
      CFRelease(v5);
    }
  }

  return Mutable;
}

uint64_t sub_1B01B3174()
{
  v0 = sub_1B0192F20("IODeviceTree:/chosen", @"housing-color", 0);
  v1 = sub_1B01C0E14(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CFDataRef sub_1B01B31C4()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (result = sub_1B019BAC0(1, "aqc-a", @"extlom-mac-address")) == 0)
  {

    return sub_1B01C0E4C(0x454D6132u);
  }

  return result;
}

uint64_t sub_1B01B3290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 368885834;
  v15 = xmmword_1B01FE854;
  v14 = -526227167;
  v13 = xmmword_1B01FE868;
  v8 = MGIsDeviceOneOfType(&v15, a2, a3, a4, a5, a6, a7, a8, &v13);
  if (v8)
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v11 = sub_1B0193D14(v8, v9);
    v10 = MEMORY[0x1E695E4C0];
    if (v11 == 6)
    {
      v10 = MEMORY[0x1E695E4D0];
    }
  }

  return *v10;
}

CFDataRef sub_1B01B33E0()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ"))
  {

    return sub_1B01C0E4C(0x424D6332u);
  }

  else
  {

    return sub_1B0199908("IODeviceTree:/product", @"mac-address-bluetooth1", 0);
  }
}

BOOL sub_1B01B349C()
{
  v0 = MEMORY[0x1E695E9D8];
  v1 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  values = Mutable;
  LODWORD(v9) = 65280;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &v9);
  CFDictionarySetValue(Mutable, @"PrimaryUsagePage", v3);
  CFRelease(v3);
  LODWORD(v9) = 4;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &v9);
  CFDictionarySetValue(Mutable, @"PrimaryUsage", v4);
  CFRelease(v4);
  v9 = @"IOPropertyMatch";
  v5 = CFDictionaryCreate(0, &v9, &values, 1, v0, v1);
  CFRelease(values);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v5);
  v7 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v7 != 0;
}

uint64_t sub_1B01B35F4(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    if (sub_1B0193D14(result, v3) == 6)
    {

      return MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg");
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01B365C(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 4 || (v4 = sub_1B0193D14(v2, v3), v4 == 2) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || (v8 = sub_1B0193D14(v6, v7), v8 == 1) || (v10 = sub_1B0193D14(v8, v9), v10 == 7) || sub_1B0193D14(v10, v11) == 11)
  {
    v19 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v25 = 368885834;
    v24 = xmmword_1B01FE854;
    v23 = -414334491;
    v22 = xmmword_1B01FE19C;
    v21 = MGIsDeviceOneOfType(&v24, v12, v13, v14, v15, v16, v17, v18, &v22);
    v19 = MEMORY[0x1E695E4C0];
    if (!v21)
    {
      v19 = MEMORY[0x1E695E4D0];
    }
  }

  return *v19;
}

BOOL sub_1B01B3808(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  result = 0;
  if (v2 != 8)
  {
    v4 = sub_1B0193D14(v2, v3);
    if (v4 != 6 && sub_1B0193D14(v4, v5) != 7 && !sub_1B01997C0(@"H4") && !sub_1B01997C0(@"H5") && !sub_1B01997C0(@"H6") && !sub_1B01997C0(@"H7"))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B01B38FC()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = sub_1B01997C0(@"H6");
  if (v0 || (v2 = sub_1B0193D14(v0, v1), v2 == 4) || (v4 = sub_1B0193D14(v2, v3), v4 == 6) || (v6 = sub_1B0193D14(v4, v5), v6 == 2) || sub_1B0193D14(v6, v7) == 7 || sub_1B01997C0(@"H8") || sub_1B01997C0(@"H7") || sub_1B01997C0(@"H9"))
  {
    v15 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v21 = 414393924;
    v20 = xmmword_1B01FE0C0;
    v19 = 897736383;
    v18 = xmmword_1B01FE0D4;
    v17 = MGIsDeviceOneOfType(&v20, v8, v9, v10, v11, v12, v13, v14, &v18);
    v15 = MEMORY[0x1E695E4C0];
    if (!v17)
    {
      v15 = MEMORY[0x1E695E4D0];
    }
  }

  return *v15;
}

uint64_t sub_1B01B3A24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 11)
  {
    return 1;
  }

  result = sub_1B0193D14(v2, v3);
  if (result != 1)
  {
    v6 = sub_1B0193D14(result, v5);
    if (v6 == 2)
    {
      return 1;
    }

    v8 = sub_1B0193D14(v6, v7);
    if (v8 == 3)
    {
      return 1;
    }

    return sub_1B0193D14(v8, v9) == 4;
  }

  return result;
}

CFTypeRef sub_1B01B3BB4()
{
  TypeID = CFBooleanGetTypeID();

  return sub_1B019697C("copyDeviceSupportsTethering", &unk_1F2637320, TypeID);
}

CFStringRef sub_1B01B3BF0()
{
  v0 = sub_1B0191100(@"5MXFoiW2zgxfIbaaTb/wvA", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

const __CFNumber *sub_1B01B3D4C()
{
  valuePtr = 0;
  v0 = sub_1B0191100(@"NVRAMDictionary", 0);
  if (!v0)
  {
    sub_1B01F0B50(&v16);
    return v16;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"IsServicePart");
  v3 = Value;
  if (!Value)
  {
    goto LABEL_18;
  }

  v4 = CFGetTypeID(Value);
  if (v4 != CFDataGetTypeID())
  {
    if (v4 == CFStringGetTypeID())
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
      v13 = MEMORY[0x1E695E4D0];
      if (valuePtr != 1)
      {
        v13 = MEMORY[0x1E695E4C0];
      }

      v3 = *v13;
    }

    else
    {
      v3 = 0;
    }

LABEL_18:
    v12 = v1;
    goto LABEL_19;
  }

  v5 = *MEMORY[0x1E695E480];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  v8 = CFStringCreateWithBytes(v5, BytePtr, Length, 0x8000100u, 0);
  if (!v8)
  {
    sub_1B01F0AD4(&v16);
    v3 = v16;
    goto LABEL_18;
  }

  v9 = v8;
  CFStringGetTypeID();
  v3 = v9;
LABEL_8:
  v10 = CFStringCompare(v3, @"true", 0);
  v11 = MEMORY[0x1E695E4D0];
  if (v10 && CFStringCompare(v3, @"1", 0))
  {
    v11 = MEMORY[0x1E695E4C0];
  }

  v3 = *v11;
  CFRelease(v1);
  if (v9)
  {
    v12 = v9;
LABEL_19:
    CFRelease(v12);
  }

  return v3;
}

uint64_t sub_1B01B3EEC()
{
  if (MGGetBoolAnswer(@"mtHZd1H8XJ2DMVtNVUSkag") && (sub_1B01959FC(@"CH") & 1) != 0)
  {
    v0 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  return *v0;
}

BOOL sub_1B01B3F4C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  result = sub_1B019D140(@"M11");
  if (result)
  {
    v13 = 1530338216;
    v12 = xmmword_1B01FE0E8;
    v11 = 406601745;
    v10 = xmmword_1B01FE0FC;
    return !MGIsDeviceOneOfType(&v12, v3, v4, v5, v6, v7, v8, v9, &v10);
  }

  return result;
}

__CFString *sub_1B01B4048()
{
  v0 = sub_1B019B914(0, "IOPlatformExpertDevice", @"IOPlatformSerialNumber");
  if (v0)
  {
    v1 = v0;
    if (CFStringGetLength(v0))
    {
      goto LABEL_14;
    }

    CFRelease(v1);
  }

  if (!MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ"))
  {
    v1 = 0;
    goto LABEL_14;
  }

  v2 = sub_1B019E354(0x53724E6Du);
  v3 = sub_1B0197110(v2, @"SrNm");
  if (v3)
  {
    v4 = v3;
    if (CFStringGetLength(v3) < 1)
    {
      v1 = 0;
    }

    else
    {
      v1 = CFRetain(v4);
    }

    CFRelease(v4);
    if (v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
    if (v2)
    {
LABEL_13:
      CFRelease(v2);
    }
  }

LABEL_14:
  if (v1)
  {
    return v1;
  }

  else
  {
    return &stru_1F2640028;
  }
}

__CFString *sub_1B01B4164()
{
  v0 = sub_1B019823C();

  return sub_1B01949CC(v0);
}

uint64_t sub_1B01B425C(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E695E4C0];
  if (sub_1B0193D14(a1, a2) == 3 && !sub_1B01997C0(@"H4") && !sub_1B01997C0(@"H5") && !sub_1B01997C0(@"H6") && sub_1B019AA7C() > 0x773593FFFLL)
  {
    return *MEMORY[0x1E695E4D0];
  }

  return v2;
}

const void *sub_1B01B44BC()
{
  v0 = sub_1B01BEA3C();
  v1 = v0;
  if (v0 && (v2 = CFGetTypeID(v0), v2 == CFDataGetTypeID()) && CFDataGetLength(v1) > 23)
  {
    if (*CFDataGetBytePtr(v1) != 1396926055)
    {
      v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v3)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v9, 4644, @"syscfg data appears to be uninitialized", v4, v5, v6, v7, v8);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "syscfg data appears to be uninitialized", v18, 2u);
      }

LABEL_16:
      CFRelease(v1);
      return 0;
    }
  }

  else
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v16, 4637, @"invalid syscfg data", v11, v12, v13, v14, v15);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "invalid syscfg data", buf, 2u);
    }

    if (v1)
    {
      goto LABEL_16;
    }
  }

  return v1;
}

CFStringRef sub_1B01B465C()
{
  result = sub_1B019B914(0, "AppleHapticsSupportArcEEPROM", @"ArcSerialNumber");
  if (!result)
  {
    result = sub_1B019B914(0, "AppleAD5860", @"arc-sn");
    if (!result)
    {

      return sub_1B01970CC("IODeviceTree:/product", @"arc-module-serial-num", 0);
    }
  }

  return result;
}

BOOL sub_1B01B4760()
{
  v0 = sub_1B019C9DC();
  v7 = sub_1B019CB70(v0, @"Desense", v1, v2, v3, v4, v5, v6, 0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v7;
}

BOOL sub_1B01B47C8()
{
  v0 = sub_1B019C9DC();
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = !CFEqual(v0, @"NonUI") && !CFEqual(v1, @"VendorNonUI") && !CFEqual(v1, @"Darwin") && !CFEqual(v1, @"Darwin Internal") && CFStringHasPrefix(v1, @"Darwin") == 0;
  CFRelease(v1);
  return v2;
}

BOOL sub_1B01B4870()
{
  if (MGGetBoolAnswer(@"cBy4BcYs5YWtFHbBpt4C6A"))
  {
    return 1;
  }

  if (sub_1B01BD320(1, "vibrator", @"name"))
  {
    return 1;
  }

  if (sub_1B01BD320(1, "audio-actuator*", @"name"))
  {
    return 1;
  }

  result = sub_1B01BD320(1, "maggie-arc", @"name");
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B01B4930(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    return sub_1B0193D14(result, v3) == 2;
  }

  return result;
}

__CFArray *sub_1B01B4990()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = sub_1B0193D14(Mutable, v2);
  if (v3 <= 5)
  {
    if ((v3 - 1) < 2)
    {
      v4 = 1;
      goto LABEL_16;
    }

    if (v3 != 3)
    {
      if (v3 == 4)
      {
        v4 = 3;
LABEL_16:
        *v17 = v4;
        v8 = CFNumberCreate(v0, kCFNumberIntType, v17);
        CFArrayAppendValue(Mutable, v8);
        CFRelease(v8);
        return Mutable;
      }

      goto LABEL_18;
    }

LABEL_13:
    *v17 = 1;
    v7 = CFNumberCreate(v0, kCFNumberIntType, v17);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
    v4 = 2;
    goto LABEL_16;
  }

  if (v3 > 8)
  {
    if (v3 != 9)
    {
      if (v3 == 11)
      {
        *v17 = 1;
        v5 = CFNumberCreate(v0, kCFNumberIntType, v17);
        CFArrayAppendValue(Mutable, v5);
        CFRelease(v5);
        *v17 = 2;
        v6 = CFNumberCreate(v0, kCFNumberIntType, v17);
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v6);
        v4 = 7;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v3 == 6)
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (v3 == 7)
  {
    v4 = 5;
    goto LABEL_16;
  }

LABEL_18:
  v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v10)
  {
    v16 = v10 + 1;
  }

  else
  {
    v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v16, 3137, @"Could not determine DTProductType", v11, v12, v13, v14, v15);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not determine DTProductType", v17, 2u);
  }

  return Mutable;
}

BOOL sub_1B01B4BB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  v3 = _CFMZEnabled();
  if (v3)
  {
    return 0;
  }

  v7 = sub_1B0193D14(v3, v4);
  result = 1;
  if (v7 != 1 && v2 != 3)
  {
    v8 = sub_1B0193D14(1, v6);
    if (v8 == 2)
    {
      return 1;
    }

    v10 = sub_1B0193D14(v8, v9);
    return v10 == 6 || sub_1B0193D14(v10, v11) == 11;
  }

  return result;
}

uint64_t sub_1B01B4C34()
{
  v101 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (qword_1EB6D01E0 != -1)
  {
    sub_1B01F0BCC();
  }

  if (off_1EB6D01C0)
  {
    v0 = off_1EB6D01C8 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || off_1EB6D01D0 == 0 || off_1EB6D01D8 == 0)
  {
    if (!off_1EB6D01C0)
    {
      v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v9 = v3 ? v3 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v9, 5488, @"Unable to dlsym AMFDRCreateTypeWithOptions", v4, v5, v6, v7, v8);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlsym AMFDRCreateTypeWithOptions", buf, 2u);
      }
    }

    if (!off_1EB6D01C8)
    {
      v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v16 = v10 ? v10 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v16, 5491, @"Unable to dlsym AMFDRDataApTicketPopulate", v11, v12, v13, v14, v15);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlsym AMFDRDataApTicketPopulate", buf, 2u);
      }
    }

    if (!off_1EB6D01D0)
    {
      v17 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v23 = v17 ? v17 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v23, 5494, @"Unable to dlsym AMFDRDataApTicketCopyObjectProperty", v18, v19, v20, v21, v22);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlsym AMFDRDataApTicketCopyObjectProperty", buf, 2u);
      }
    }

    if (off_1EB6D01D8)
    {
      goto LABEL_56;
    }

    v24 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    v30 = v24 ? v24 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    _MGLog(v30, 5497, @"Unable to dlsym AMFDRDataTrustObjectIsFactorySigned", v25, v26, v27, v28, v29);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 0;
    v31 = MEMORY[0x1E69E9C10];
    v32 = "Unable to dlsym AMFDRDataTrustObjectIsFactorySigned";
    goto LABEL_55;
  }

  v33 = off_1EB6D01C0(*MEMORY[0x1E695E480], @"Local", 0);
  if (!v33)
  {
    v49 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v49)
    {
      v55 = v49 + 1;
    }

    else
    {
      v55 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v55, 5432, @"Failed to create local FDR reference", v50, v51, v52, v53, v54);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 0;
    v31 = MEMORY[0x1E69E9C10];
    v32 = "Failed to create local FDR reference";
LABEL_55:
    _os_log_impl(&dword_1B0190000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
LABEL_56:
    v48 = 0;
    goto LABEL_81;
  }

  v34 = v33;
  if ((off_1EB6D01C8() & 1) == 0)
  {
    v56 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v56)
    {
      v62 = v56 + 1;
    }

    else
    {
      v62 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v62, 5437, @"Unable to populate AP Ticket", v57, v58, v59, v60, v61);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v63 = MEMORY[0x1E69E9C10];
    v64 = "Unable to populate AP Ticket";
    goto LABEL_62;
  }

  v35 = off_1EB6D01D0(v34, 1296125520, 1701866617);
  if (v35)
  {
    v36 = v35;
    v97 = 0;
    BytePtr = CFDataGetBytePtr(v35);
    Length = CFDataGetLength(v36);
    if ((Length - 5) >= 4)
    {
      v48 = 0;
    }

    else
    {
      v39 = &v97;
      do
      {
        *v39 = BytePtr[Length - 1];
        v39 = (v39 + 1);
        --Length;
      }

      while (Length);
      v40 = v97;
      v41 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v41)
      {
        v47 = v41 + 1;
      }

      else
      {
        v47 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v47, 5461, @"Signing server epoch value is 0x%llx", v42, v43, v44, v45, v46, v40);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v100 = v40;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Signing server epoch value is 0x%llx", buf, 0xCu);
      }

      v48 = (v40 & 0xC000000000) == 0;
    }

LABEL_79:
    CFRelease(v36);
    goto LABEL_80;
  }

  v65 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v65)
  {
    v71 = v65 + 1;
  }

  else
  {
    v71 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v71, 5471, @"No Signing server epoch property found in apticket, fall back to use restoreOS trustobject digest property", v66, v67, v68, v69, v70);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No Signing server epoch property found in apticket, fall back to use restoreOS trustobject digest property", buf, 2u);
  }

  v72 = off_1EB6D01D0(v34, 1919317089, 1145525076);
  if (v72)
  {
    v36 = v72;
    v48 = off_1EB6D01D8(v34, v72, &cf);
    if (cf)
    {
      v73 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v73)
      {
        v79 = v73 + 1;
      }

      else
      {
        v79 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v79, 5482, @"Failed to judge if trustObject is factory signed: %@", v74, v75, v76, v77, v78, cf);
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      v81 = cf;
      if (v80)
      {
        *buf = 138412290;
        v100 = cf;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to judge if trustObject is factory signed: %@", buf, 0xCu);
        v81 = cf;
      }

      if (v81)
      {
        CFRelease(v81);
        cf = 0;
      }
    }

    goto LABEL_79;
  }

  v90 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v90)
  {
    v96 = v90 + 1;
  }

  else
  {
    v96 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v96, 5476, @"Unable to extract restoreOS FDR trustObject digest", v91, v92, v93, v94, v95);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v63 = MEMORY[0x1E69E9C10];
    v64 = "Unable to extract restoreOS FDR trustObject digest";
LABEL_62:
    _os_log_impl(&dword_1B0190000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 2u);
  }

LABEL_63:
  v48 = 0;
LABEL_80:
  CFRelease(v34);
LABEL_81:
  v82 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v82)
  {
    v88 = v82 + 1;
  }

  else
  {
    v88 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v88, 5507, @"IsFactorySignedRestore = %d", v83, v84, v85, v86, v87, v48);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v100) = v48;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IsFactorySignedRestore = %d", buf, 8u);
  }

  return v48;
}

CFNumberRef sub_1B01B52D4()
{
  v0 = sub_1B01997C0(@"H4");
  if (!v0)
  {
    v2 = sub_1B0193D14(v0, v1);
    if (v2 != 4)
    {
      sub_1B0193D14(v2, v3);
    }
  }

  valuePtr = 1065353216;
  return CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
}

uint64_t sub_1B01B5328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v31 = -38605833;
  v30 = xmmword_1B01FE390;
  v29 = -894965712;
  v28 = xmmword_1B01FE3A4;
  v27 = -2101636455;
  v26 = xmmword_1B01FE3B8;
  v25 = -1955568593;
  v24 = xmmword_1B01FE3CC;
  v8 = MGIsDeviceOneOfType(&v30, a2, a3, a4, a5, a6, a7, a8, &v28);
  if (v8 || sub_1B0193D14(v8, v9) == 6)
  {
    v17 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v23 = -926344036;
    v22 = xmmword_1B01FE138;
    v21 = -954998212;
    v20 = xmmword_1B01FE14C;
    v18 = MGIsDeviceOneOfType(&v22, v10, v11, v12, v13, v14, v15, v16, &v20);
    v17 = MEMORY[0x1E695E4C0];
    if (!v18)
    {
      v17 = MEMORY[0x1E695E4D0];
    }
  }

  return *v17;
}

CFStringRef sub_1B01B54B0()
{
  v0 = sub_1B0191100(@"X7SF9XDG+CBhoPIXA1YlCg", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

BOOL sub_1B01B562C(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

uint64_t sub_1B01B5704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = -526227167;
  v39 = xmmword_1B01FE868;
  v38 = -1509831889;
  v37 = xmmword_1B01FE1B0;
  if (MGIsDeviceOneOfType(&v39, a2, a3, a4, a5, a6, a7, a8, &v37) || (v36 = 289690957, v35 = xmmword_1B01FE174, v34 = 586720268, v33 = xmmword_1B01FE188, v15 = MGIsDeviceOneOfType(&v35, v8, v9, v10, v11, v12, v13, v14, &v33)))
  {
    v17 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v19 = sub_1B0193D14(v15, v16);
    if (v19 == 6)
    {
      v32 = 368885834;
      v31 = xmmword_1B01FE854;
      v30 = -414334491;
      v29 = xmmword_1B01FE19C;
      v27 = MGIsDeviceOneOfType(&v31, v20, v21, v22, v23, v24, v25, v26, &v29);
      v17 = MEMORY[0x1E695E4C0];
      if (!v27)
      {
        v17 = MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      v28 = sub_1B0193D14(v19, v20);
      v17 = MEMORY[0x1E695E4D0];
      if (v28 == 7)
      {
        v17 = MEMORY[0x1E695E4C0];
      }
    }
  }

  return *v17;
}

CFDataRef sub_1B01B5914()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BAAC0(@"volume-down-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B5998()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v0 = IOBSDNameMatching(*MEMORY[0x1E696CD60], 0, "disk0");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B01BAFB4;
  v3[3] = &unk_1E7A92D28;
  v3[4] = &v4;
  sub_1B01BCF2C(v0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

CFTypeRef sub_1B01B5A68()
{
  if (!sub_1B0198CA8())
  {
    return 0;
  }

  return sub_1B019BAC0(0, "AppleVirtualPlatformARMPE", @"UDID");
}

uint64_t sub_1B01B5B08(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  v4 = MEMORY[0x1E695E4C0];
  if (v2 != 4 && sub_1B0193D14(v2, v3) != 6)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  return *v4;
}

uint64_t sub_1B01B5B78()
{
  if (os_variant_is_darwinos() && (sub_1B019CA20() || sub_1B01998E0("IODeviceTree:/product", @"analytics-opt-in", 0)))
  {
    v0 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  return *v0;
}

CFTypeRef sub_1B01B5BF0()
{
  v0 = *(off_1EB6CFEC0 + 7);
  if (!v0)
  {
    v0 = sub_1B0193150(7, 2);
  }

  TypeID = CFDictionaryGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwareManifestData", v0, TypeID);
}

CFTypeRef sub_1B01B5D94()
{
  v0 = *(off_1EB6CFEC0 + 11);
  if (!v0)
  {
    v0 = sub_1B0193150(11, 2);
  }

  TypeID = CFDictionaryGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwareUpdateInfo", v0, TypeID);
}

BOOL sub_1B01B5DF4(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M10");
}

BOOL sub_1B01B5E38()
{
  if (sub_1B01C54E4(@"isp", @"camera-front"))
  {
    return 1;
  }

  return sub_1B01998E0("IODeviceTree:/arm-io/isp", @"X9NA3D+PguwY0i0Uffl07Q", 99);
}

uint64_t sub_1B01B5EC4(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E4C0];
  if (sub_1B0193D14(a1, a2) == 6)
  {
    v11 = 368885834;
    v10 = xmmword_1B01FE854;
    if ((MGIsDeviceOfType(&v10) & 1) == 0)
    {
      v9 = -414334491;
      v8 = xmmword_1B01FE19C;
      if ((MGIsDeviceOfType(&v8) & 1) == 0)
      {
        v7 = -526227167;
        v6 = xmmword_1B01FE868;
        if ((MGIsDeviceOfType(&v6) & 1) == 0)
        {
          v5 = -1509831889;
          v4 = xmmword_1B01FE1B0;
          if (!MGIsDeviceOfType(&v4))
          {
            return *MEMORY[0x1E695E4D0];
          }
        }
      }
    }
  }

  return v2;
}

CFStringRef sub_1B01B6038()
{
  v0 = sub_1B0191100(@"yF2IQrYS4yyREV4ZkbLysw", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01B61C4()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"disable-globe-map", 0);
  if (sub_1B019AFD8() >> 29 < 5 || v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  return *v1;
}

CFNumberRef sub_1B01B62E4()
{
  valuePtr = 0;
  v0 = sub_1B01C59D4(0, @"AppleSPUHIDDriver", 0, @"SupportHDRCompass", 0);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v1);
      valuePtr = 2 * (Value != 0);
      CFRelease(v1);
      if (Value)
      {
        return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      }
    }

    else
    {
      CFRelease(v1);
    }
  }

  if (MGGetBoolAnswer(@"aCQx2Qq/TChnNAq1rr6Egw"))
  {
    valuePtr = 1;
  }

  return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
}

BOOL sub_1B01B63D4(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 3 || !sub_1B01A1B04())
  {
    return 0;
  }

  return sub_1B019D140(@"H15");
}

uint64_t sub_1B01B6604()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"ErupMbaQrM6KypD4K0kTDQ", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 >= 196608)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B6794(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  v4 = MEMORY[0x1E695E4D0];
  v5 = MEMORY[0x1E695E4D0];
  if (v2 != 3)
  {
    v6 = sub_1B0193D14(v2, v3);
    if (v6 == 6)
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v8 = sub_1B0193D14(v6, v7);
      v5 = MEMORY[0x1E695E4C0];
      if (v8 != 4 && sub_1B0193D14(v8, v9) != 2)
      {
        v5 = v4;
      }
    }
  }

  return *v5;
}

CFNumberRef sub_1B01B683C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  if (v2 != 1 && sub_1B0193D14(v2, v3) != 3)
  {
    return 0;
  }

  valuePtr = 1080033280;
  return CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
}

uint64_t sub_1B01B6980(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    return sub_1B0193D14(result, v3) == 3;
  }

  return result;
}

CFTypeRef sub_1B01B69AC()
{
  v0 = *(off_1EB6CFEC0 + 5);
  if (!v0)
  {
    v0 = sub_1B0193150(5, 2);
  }

  TypeID = CFArrayGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyCarrierBundleInfoArray", v0, TypeID);
}

uint64_t sub_1B01B6A58()
{
  v0 = sub_1B0192F20("IODeviceTree:/chosen", @"cover-glass-material", 0);
  v1 = sub_1B01C0CC8(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t sub_1B01B6B0C()
{
  v1 = *(off_1EB6CFEC0 + 39);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(39, 2);
  }

  return v1();
}

uint64_t sub_1B01B6BAC(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 7)
  {
    return 3;
  }

  v5 = sub_1B0193D14(v2, v3);
  if (v5 == 4)
  {
    v22 = 1839812531;
    v21 = xmmword_1B01FE1C4;
    if ((MGIsDeviceOfType(&v21) & 1) == 0)
    {
      v20 = -435113336;
      v19 = xmmword_1B01FE4E4;
      if (MGIsDeviceOfType(&v19))
      {
        return 3;
      }

      else
      {
        return 5;
      }
    }

    return 1;
  }

  if (sub_1B0193D14(v5, v6) == 6)
  {
    if (!sub_1B019D140(@"M9"))
    {
      return 1;
    }

    v4 = 2;
    if (!sub_1B01997C0(@"M9"))
    {
      if (sub_1B01997C0(@"M10"))
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    v18 = 317289457;
    v17 = xmmword_1B01FE1D8;
    v16 = 401945557;
    v15 = xmmword_1B01FE1EC;
    if (MGIsDeviceOneOfType(&v17, v7, v8, v9, v10, v11, v12, v13, &v15))
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  return v4;
}

uint64_t sub_1B01B6DF0()
{
  if (sub_1B01BB97C() || MGGetBoolAnswer(@"OysterCapability"))
  {
    v0 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = sub_1B01A69D0();
    if (v2)
    {
      v3 = v2;
      valuePtr = -1;
      Value = CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
      v5 = valuePtr;
      CFRelease(v3);
      v6 = v5 != 2 || Value == 0;
      v0 = MEMORY[0x1E695E4D0];
      if (v6)
      {
        v0 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      v0 = MEMORY[0x1E695E4C0];
    }
  }

  return *v0;
}

uint64_t sub_1B01B6F0C(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E4D0];
  v3 = sub_1B0193D14(a1, a2);
  if ((v3 - 1) >= 2)
  {
    v12 = MEMORY[0x1E695E4C0];
    if (v3 == 6)
    {
      v12 = v2;
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E4C0];
    v17 = -489993439;
    v16 = xmmword_1B01FE278;
    v15 = 886875686;
    v14 = xmmword_1B01FE28C;
    if (MGIsDeviceOneOfType(&v16, v4, v5, v6, v7, v8, v9, v10, &v14))
    {
      v12 = v11;
    }

    else
    {
      v12 = v2;
    }
  }

  return *v12;
}

CFArrayRef sub_1B01B72B8()
{
  values[3] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_1B019C1E4(&v15, @"front-cam-offset-from-center");
  if (HIDWORD(v16))
  {
    valuePtr = 0;
    v0 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
    v1 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v3 = v2;
    if (v0 && v1 && v2)
    {
      values[0] = v0;
      values[1] = v1;
      values[2] = v2;
      v4 = CFArrayCreate(0, values, 3, MEMORY[0x1E695E9C0]);
    }

    else
    {
      v4 = 0;
      v12 = 0;
      if (!v0)
      {
LABEL_14:
        if (v1)
        {
          CFRelease(v1);
        }

        if (v3)
        {
          CFRelease(v3);
        }

        return v12;
      }
    }

    CFRelease(v0);
    v12 = v4;
    goto LABEL_14;
  }

  v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v5)
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v11, 8144, @"Unexpected camera_offset scale, malformed data provided", v6, v7, v8, v9, v10);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(values[0]) = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected camera_offset scale, malformed data provided", values, 2u);
  }

  return 0;
}

uint64_t sub_1B01B7458()
{
  if (MGGetBoolAnswer(@"XFtUsQP3AyqT4CazSb5VCw"))
  {
    return 1;
  }

  return sub_1B01A1D48("/var/mobile/Library/Preferences/com.apple.MobileGestalt.plist", @"EnableStark", 0);
}

CFStringRef sub_1B01B74C4()
{
  v0 = sub_1B0193ED4("IODeviceTree:/product", @"itunes-min-ver", 0, 0xFFFFFFFFLL, 1);
  if (v0 != -1)
  {
    return CFStringCreateWithFormat(0, 0, @"%d.%d.%d", HIWORD(v0), BYTE1(v0), v0);
  }

  v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v2)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v8, 4368, @"couldn't get itunes-min-ver\n", v3, v4, v5, v6, v7);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "couldn't get itunes-min-ver\n", buf, 2u);
  }

  return 0;
}

__CFArray *sub_1B01B75C4()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v1 = sub_1B01AE430();
    v2 = sub_1B01970CC("IODeviceTree:/product", @"compatible-app-variant", 0);
    v3 = sub_1B01970CC("IODeviceTree:/product", @"compatible-device-fallback", 0);
    if (v2 && CFStringCompare(v2, @"0", 0))
    {
      v4 = v2;
      if (v1)
      {
        CFArrayAppendValue(Mutable, v1);
        v4 = v2;
      }
    }

    else
    {
      v4 = v1;
      if (!v1)
      {
        goto LABEL_8;
      }
    }

    CFArrayAppendValue(Mutable, v4);
LABEL_8:
    if (v3 && CFStringCompare(v3, @"0", 0))
    {
      CFArrayAppendValue(Mutable, v3);
    }

    if (v1)
    {
      CFRelease(v1);
    }

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

  v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v5)
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v11, 5936, @"Failed to create array", v6, v7, v8, v9, v10);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create array", v13, 2u);
  }

  return Mutable;
}

BOOL sub_1B01B777C(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) == 7)
  {
    return 0;
  }

  if (sub_1B019D140(@"M9"))
  {
    return 1;
  }

  return sub_1B019D140(@"H10");
}

uint64_t sub_1B01B77D8(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) == 3)
  {
    v2 = sub_1B019D228(@"t8027", 0);
    v3 = MEMORY[0x1E695E4D0];
    if (!v2)
    {
      v3 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

CFTypeRef sub_1B01B7830()
{
  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    return 0;
  }

  v12 = -1;
  v0 = sub_1B01914DC(@"XQBHOWjPt2P+uNqlLm1P7A", 5, 5, kCFNumberSInt32Type, &v12);
  result = 0;
  if (v0 && v12 >= 2)
  {
    v2 = *(off_1EB6CFEC0 + 16);
    if (!v2)
    {
      v2 = sub_1B0193150(16, 2);
    }

    TypeID = CFDictionaryGetTypeID();
    result = sub_1B0196878("_CTServerConnectionCopyPostponementStatus", v2, TypeID);
    if (!result)
    {
      v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v4)
      {
        v10 = v4 + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v10, 4963, @"_CTServerConnectionCopyPostponementStatus returned NULL", v5, v6, v7, v8, v9);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_CTServerConnectionCopyPostponementStatus returned NULL", v11, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01B797C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  if (v2 == 1 || (v4 = sub_1B0193D14(v2, v3), v4 == 2) || (v6 = sub_1B0193D14(v4, v5), v6 == 3) || sub_1B0193D14(v6, v7) == 6)
  {
    v8 = MEMORY[0x1E695E4C0];
    v9 = sub_1B01998E0("IODeviceTree:/product", @"disable-spoken-messages", 0);
    v10 = MEMORY[0x1E695E4D0];
    if (v9)
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  return *v10;
}

uint64_t sub_1B01B7A08()
{
  v0 = sub_1B01A2170("/usr/libexec/lockdownd");
  v1 = MEMORY[0x1E695E4D0];
  if (!v0 && !sub_1B01A2170("/usr/libexec/lockdownd.internal"))
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01B7A70()
{
  v91 = *MEMORY[0x1E69E9840];
  v90 = 1899561076;
  v89 = xmmword_1B01FE3E0;
  if (MGIsDeviceOfType(&v89))
  {
    return 1;
  }

  v88 = -584398440;
  v87 = xmmword_1B01FE3F4;
  if (MGIsDeviceOfType(&v87))
  {
    return 1;
  }

  v86 = -879476163;
  v85 = xmmword_1B01FE408;
  if (MGIsDeviceOfType(&v85))
  {
    return 1;
  }

  v84 = 123138233;
  v83 = xmmword_1B01FE41C;
  if (MGIsDeviceOfType(&v83))
  {
    return 1;
  }

  v82 = 681511593;
  v81 = xmmword_1B01FE430;
  if (MGIsDeviceOfType(&v81))
  {
    return 1;
  }

  v80 = -61007701;
  v79 = xmmword_1B01FE444;
  if (MGIsDeviceOfType(&v79))
  {
    return 1;
  }

  v78 = -235416490;
  v77 = xmmword_1B01FE458;
  if (MGIsDeviceOfType(&v77))
  {
    return 1;
  }

  v76 = -1431778695;
  v75 = xmmword_1B01FE46C;
  if (MGIsDeviceOfType(&v75))
  {
    return 1;
  }

  v74 = 1071957977;
  v73 = xmmword_1B01FE480;
  if (MGIsDeviceOfType(&v73))
  {
    return 1;
  }

  v72 = 438437663;
  v71 = xmmword_1B01FE494;
  if (MGIsDeviceOfType(&v71))
  {
    return 1;
  }

  v70 = -382792827;
  v69 = xmmword_1B01FE4A8;
  if (MGIsDeviceOfType(&v69))
  {
    return 1;
  }

  v68 = 1575123478;
  v67 = xmmword_1B01FE4BC;
  if (MGIsDeviceOfType(&v67))
  {
    return 1;
  }

  v66 = -121925081;
  v65 = xmmword_1B01FE4D0;
  if (MGIsDeviceOfType(&v65))
  {
    return 1;
  }

  v64 = -435113336;
  v63 = xmmword_1B01FE4E4;
  if (MGIsDeviceOfType(&v63))
  {
    return 1;
  }

  v62 = -230558637;
  v61 = xmmword_1B01FE4F8;
  if (MGIsDeviceOfType(&v61))
  {
    return 1;
  }

  v60 = 2131223058;
  v59 = xmmword_1B01FE50C;
  if (MGIsDeviceOfType(&v59))
  {
    return 1;
  }

  v58 = 372777383;
  v57 = xmmword_1B01FE520;
  if (MGIsDeviceOfType(&v57))
  {
    return 1;
  }

  v56 = -858079590;
  v55 = xmmword_1B01FE534;
  if (MGIsDeviceOfType(&v55))
  {
    return 1;
  }

  v54 = -212523443;
  v53 = xmmword_1B01FE548;
  if (MGIsDeviceOfType(&v53))
  {
    return 1;
  }

  v52 = 646100384;
  v51 = xmmword_1B01FE55C;
  if (MGIsDeviceOfType(&v51))
  {
    return 1;
  }

  v50 = -713657120;
  v49 = xmmword_1B01FE570;
  if (MGIsDeviceOfType(&v49))
  {
    return 1;
  }

  v48 = 1962283457;
  v47 = xmmword_1B01FE584;
  if (MGIsDeviceOfType(&v47))
  {
    return 1;
  }

  v46 = 1278131292;
  v45 = xmmword_1B01FE598;
  if (MGIsDeviceOfType(&v45))
  {
    return 1;
  }

  v44 = -1841712216;
  v43 = xmmword_1B01FE5AC;
  if (MGIsDeviceOfType(&v43))
  {
    return 1;
  }

  v42 = -1744408850;
  v41 = xmmword_1B01FE5C0;
  if (MGIsDeviceOfType(&v41))
  {
    return 1;
  }

  v40 = 791974193;
  v39 = xmmword_1B01FE5D4;
  if (MGIsDeviceOfType(&v39))
  {
    return 1;
  }

  v38 = 659506830;
  v37 = xmmword_1B01FE5E8;
  if (MGIsDeviceOfType(&v37))
  {
    return 1;
  }

  v36 = 213746202;
  v35 = xmmword_1B01FE5FC;
  if (MGIsDeviceOfType(&v35))
  {
    return 1;
  }

  v34 = -1441055153;
  v33 = xmmword_1B01FE610;
  if (MGIsDeviceOfType(&v33))
  {
    return 1;
  }

  v32 = -340360463;
  v31 = xmmword_1B01FE624;
  if (MGIsDeviceOfType(&v31))
  {
    return 1;
  }

  v30 = 1605231531;
  v29 = xmmword_1B01FE638;
  if (MGIsDeviceOfType(&v29))
  {
    return 1;
  }

  v28 = -1997581659;
  v27 = xmmword_1B01FE64C;
  if (MGIsDeviceOfType(&v27))
  {
    return 1;
  }

  v26 = 345196535;
  v25 = xmmword_1B01FE660;
  if (MGIsDeviceOfType(&v25))
  {
    return 1;
  }

  v24 = 440949464;
  v23 = xmmword_1B01FE674;
  if (MGIsDeviceOfType(&v23))
  {
    return 1;
  }

  v22 = 688565114;
  v21 = xmmword_1B01FE688;
  if (MGIsDeviceOfType(&v21))
  {
    return 1;
  }

  v20 = -493418906;
  v19 = xmmword_1B01FE69C;
  if (MGIsDeviceOfType(&v19))
  {
    return 1;
  }

  v18 = 2030516999;
  v17 = xmmword_1B01FE6B0;
  if (MGIsDeviceOfType(&v17))
  {
    return 1;
  }

  v16 = -1276010597;
  v15 = xmmword_1B01FE6C4;
  if (MGIsDeviceOfType(&v15))
  {
    return 1;
  }

  v14 = -762483149;
  v13 = xmmword_1B01FE6D8;
  if (MGIsDeviceOfType(&v13))
  {
    return 1;
  }

  v12 = -1926937532;
  v11 = xmmword_1B01FE6EC;
  if (MGIsDeviceOfType(&v11))
  {
    return 1;
  }

  v10 = -1902732724;
  v9 = xmmword_1B01FE700;
  if (MGIsDeviceOfType(&v9))
  {
    return 1;
  }

  v8 = -342357580;
  v7 = xmmword_1B01FE714;
  if (MGIsDeviceOfType(&v7))
  {
    return 1;
  }

  v6 = 300442574;
  v5 = xmmword_1B01FE728;
  if (MGIsDeviceOfType(&v5))
  {
    return 1;
  }

  v4 = -1294188889;
  v3 = xmmword_1B01FE73C;
  if (MGIsDeviceOfType(&v3))
  {
    return 1;
  }

  v2 = -820493242;
  v1 = xmmword_1B01FE750;
  return MGIsDeviceOfType(&v1);
}

const char *sub_1B01B8214(uint64_t a1, uint64_t a2)
{
  result = sub_1B01A30E8(a1, a2);
  if (result)
  {

    return CFStringCreateWithCString(0, result, 0x8000100u);
  }

  return result;
}

uint64_t sub_1B01B8258()
{
  if (!sub_1B019D140(@"H13"))
  {
    return 0;
  }

  if (sub_1B019D228(@"t8103", 0) || sub_1B019D228(@"t6000", 0) || sub_1B019D228(@"t6001", 0))
  {
    return 1;
  }

  v0 = 1;
  if (!sub_1B019D228(@"t6002", 0))
  {
    if (sub_1B019D228(@"t8110", 0))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v0;
}

CFDataRef sub_1B01B8334()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BAAC0(@"ringer-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B8470(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) == 6)
  {
    v15 = 368885834;
    v14 = xmmword_1B01FE854;
    v13 = -526227167;
    v12 = xmmword_1B01FE868;
    v9 = MGIsDeviceOneOfType(&v14, v2, v3, v4, v5, v6, v7, v8, &v12);
    v10 = MEMORY[0x1E695E4D0];
    if (!v9)
    {
      v10 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  return *v10;
}

BOOL sub_1B01B8568()
{
  if (sub_1B01C5C0C(@"wlan.lowlatency"))
  {
    return 1;
  }

  return sub_1B01BE768();
}

unint64_t sub_1B01B85D8()
{
  if (sub_1B01959FC(@"CH"))
  {
    return 1;
  }

  return sub_1B01959FC(@"<GERMANY>");
}

CFMutableDictionaryRef sub_1B01B8620()
{
  v24 = *MEMORY[0x1E69E9840];
  properties = 0;
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  if (v0)
  {
    v1 = v0;
    v2 = IORegistryEntryCreateCFProperties(v0, &properties, *MEMORY[0x1E695E480], 0);
    if (v2)
    {
      v3 = v2;
      v4 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v5)
      {
        v4 = v5 + 1;
      }

      v6 = mach_error_string(v3);
      _MGLog(v4, 8233, @"IORegistryEntryCreateCFProperties failed %s", v7, v8, v9, v10, v11, v6);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v12 = mach_error_string(v3);
        *buf = 136315138;
        v23 = v12;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperties failed %s", buf, 0xCu);
      }
    }

    IOObjectRelease(v1);
    return properties;
  }

  else
  {
    v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v14)
    {
      v20 = v14 + 1;
    }

    else
    {
      v20 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v20, 8237, @"IORegistryEntryFromPath(IODeviceTree:/options) failed", v15, v16, v17, v18, v19);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IORegistryEntryFromPath(IODeviceTree:/options) failed", buf, 2u);
    }

    return 0;
  }
}

uint64_t sub_1B01B880C()
{
  v0 = sub_1B01BB97C();
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}