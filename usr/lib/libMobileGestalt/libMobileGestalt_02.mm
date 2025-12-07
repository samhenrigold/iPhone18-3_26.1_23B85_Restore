CFNumberRef sub_1B01B8868()
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

uint64_t sub_1B01B8948(uint64_t a1, uint64_t a2)
{
  result = sub_1B0193D14(a1, a2);
  if (result != 1)
  {
    return sub_1B0193D14(result, v3) == 2;
  }

  return result;
}

BOOL sub_1B01B8974(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) != 6)
  {
    return 0;
  }

  v13 = -2085056298;
  v12 = xmmword_1B01FE764;
  v11 = 1860682089;
  v10 = xmmword_1B01FE778;
  return !MGIsDeviceOneOfType(&v12, v2, v3, v4, v5, v6, v7, v8, &v10);
}

CFNumberRef sub_1B01B8B90()
{
  v8 = 0x1A80000000;
  valuePtr = 0x400000000;
  v7 = 0xC00000000;
  v0 = sub_1B019AA7C();
  v1 = v0;
  if (v0 < 0x2540BE4001)
  {
    if (v0 < 0xEE6B28001)
    {
      v2 = *MEMORY[0x1E695E480];
      if (v1 < 0x773594001)
      {
        p_valuePtr = &valuePtr;
      }

      else
      {
        p_valuePtr = &v7;
      }
    }

    else
    {
      v2 = *MEMORY[0x1E695E480];
      p_valuePtr = &v8;
    }
  }

  else
  {
    v5 = v0 - 0x380000000;
    v2 = *MEMORY[0x1E695E480];
    p_valuePtr = &v5;
  }

  return CFNumberCreate(v2, kCFNumberSInt64Type, p_valuePtr);
}

uint64_t sub_1B01B8C78()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"dictation", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01B8CD0()
{
  valuePtr = 0;
  v0 = IOPSCopyPowerSourcesInfo();
  if (!v0)
  {
    sub_1B01F0CA8(v68);
    return v68[0];
  }

  v1 = v0;
  v2 = IOPSCopyPowerSourcesList(v0);
  if (!v2)
  {
    sub_1B01F0C28(v1);
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    goto LABEL_55;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E9C10];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
    v7 = IOPSGetPowerSourceDescription(v1, ValueAtIndex);
    if (!v7)
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

      _MGLog(v19, 3713, @"Could not get dictionary for power source", v14, v15, v16, v17, v18, *v68);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *v68 = 0;
      v20 = v5;
      v21 = "Could not get dictionary for power source";
LABEL_35:
      _os_log_impl(&dword_1B0190000, v20, OS_LOG_TYPE_DEFAULT, v21, v68, 2u);
      goto LABEL_36;
    }

    v8 = v7;
    Value = CFDictionaryGetValue(v7, @"Power Source State");
    if (!Value)
    {
      v22 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v22)
      {
        v28 = v22 + 1;
      }

      else
      {
        v28 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v28, 3720, @"No kIOPSPowerSourceStateKey in power source dictionary", v23, v24, v25, v26, v27, *v68);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *v68 = 0;
      v20 = v5;
      v21 = "No kIOPSPowerSourceStateKey in power source dictionary";
      goto LABEL_35;
    }

    if (CFEqual(Value, @"AC Power"))
    {
      goto LABEL_38;
    }

    v10 = CFDictionaryGetValue(v8, @"Current Capacity");
    if (!v10)
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

      _MGLog(v35, 3735, @"No kIOPSCurrentCapacityKey in power source dictionary", v30, v31, v32, v33, v34, *v68);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *v68 = 0;
      v20 = v5;
      v21 = "No kIOPSCurrentCapacityKey in power source dictionary";
      goto LABEL_35;
    }

    if (!CFNumberGetValue(v10, kCFNumberFloatType, &valuePtr))
    {
      v44 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v44)
      {
        v50 = v44 + 1;
      }

      else
      {
        v50 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v50, 3740, @"Could not convert CFNumber to float", v45, v46, v47, v48, v49, *v68);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      *v68 = 0;
      v51 = MEMORY[0x1E69E9C10];
      v52 = "Could not convert CFNumber to float";
      goto LABEL_54;
    }

    v11 = CFDictionaryGetValue(v8, @"Max Capacity");
    if (!v11)
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

      _MGLog(v42, 3747, @"No kIOPSMaxCapacityKey in power source dictionary", v37, v38, v39, v40, v41, *v68);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *v68 = 0;
      v20 = v5;
      v21 = "No kIOPSMaxCapacityKey in power source dictionary";
      goto LABEL_35;
    }

    if (!CFNumberGetValue(v11, kCFNumberFloatType, &valuePtr + 4))
    {
      v53 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v53)
      {
        v59 = v53 + 1;
      }

      else
      {
        v59 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v59, 3752, @"Could not convert CFNumber to float", v54, v55, v56, v57, v58, *v68);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      *v68 = 0;
      v51 = MEMORY[0x1E69E9C10];
      v52 = "Could not convert CFNumber to float";
LABEL_54:
      _os_log_impl(&dword_1B0190000, v51, OS_LOG_TYPE_DEFAULT, v52, v68, 2u);
      goto LABEL_55;
    }

    if (*(&valuePtr + 1) == 0.0)
    {
      break;
    }

    v12 = sub_1B01A7D1C() + -0.05;
    if ((*&valuePtr / *(&valuePtr + 1)) >= v12)
    {
LABEL_38:
      v43 = 1;
      goto LABEL_56;
    }

LABEL_36:
    if (CFArrayGetCount(v3) <= ++v4)
    {
      goto LABEL_55;
    }
  }

  v60 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v60)
  {
    v66 = v60 + 1;
  }

  else
  {
    v66 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v66, 3756, @"Battery max capacity is reported as 0", v61, v62, v63, v64, v65, *v68);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v68 = 0;
    v51 = MEMORY[0x1E69E9C10];
    v52 = "Battery max capacity is reported as 0";
    goto LABEL_54;
  }

LABEL_55:
  v43 = 0;
LABEL_56:
  CFRelease(v1);
  CFRelease(v3);
  return v43;
}

CFDictionaryRef sub_1B01B90F8(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) != 4)
  {
    return 0;
  }

  *buf = 0;
  if (sub_1B01914DC(@"g7YQ1Djxh4YiKlEeaoGhzg", 5, 5, kCFNumberSInt32Type, buf))
  {
    v2 = *buf;
  }

  else
  {
    v2 = 0;
  }

  *buf = 0;
  if (sub_1B01914DC(@"OjzOua0LkOegX7pQdgMksw", 5, 5, kCFNumberSInt32Type, buf))
  {
    v3 = *buf;
  }

  else
  {
    v3 = 0;
  }

  if (v2 < v3)
  {
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    v10 = v4 ? v4 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    _MGLog(v10, 4815, @"%dx%d not in landscape mode", v5, v6, v7, v8, v9, v2, v3);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v2;
      *&buf[8] = 1024;
      *&buf[10] = v3;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%dx%d not in landscape mode", buf, 0xEu);
    }
  }

  v11 = @"4:3";
  if (v3)
  {
    if ((v2 / v3) > 1.5)
    {
      v11 = @"16:9";
    }
  }

  *buf = xmmword_1E7A92D48;
  v16 = *&off_1E7A92D58;
  v17 = xmmword_1E7A92D68;
  values[0] = v11;
  values[1] = @"OFF";
  values[2] = @"ScaleToFit";
  values[3] = @"DisplayPort";
  v12 = *MEMORY[0x1E695E4C0];
  values[4] = @"NTSC";
  values[5] = v12;
  return CFDictionaryCreate(0, buf, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

uint64_t sub_1B01B9350()
{
  v0 = sub_1B0194994("IODeviceTree:/product/camera", @"auto-focus", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

CFNumberRef sub_1B01B9398(uint64_t a1, uint64_t a2)
{
  if (sub_1B0193D14(a1, a2) != 1)
  {
    return 0;
  }

  valuePtr = 1050253722;
  return CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
}

uint64_t sub_1B01B9400(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14(a1, a2) == 7)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v15 = 368885834;
    v14 = xmmword_1B01FE854;
    v13 = -526227167;
    v12 = xmmword_1B01FE868;
    v10 = MGIsDeviceOneOfType(&v14, v2, v3, v4, v5, v6, v7, v8, &v12);
    v9 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v9 = MEMORY[0x1E695E4D0];
    }
  }

  return *v9;
}

__CFString *sub_1B01B94C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0193D14(a1, a2);
  if (v2 <= 5)
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        return @"iPad";
      }

      if (v2 == 4)
      {

        return sub_1B0191100(@"+VIu65zA5EW4ztayJXvOUg", 0);
      }
    }

    else
    {
      if (v2 == 1)
      {
        return @"iPhone";
      }

      if (v2 == 2)
      {
        return @"iPod";
      }
    }

    return @"Unknown";
  }

  if (v2 > 7)
  {
    switch(v2)
    {
      case 8:
        return @"Bridge";
      case 9:
        return @"Mac";
      case 11:
        return @"Vision";
    }

    return @"Unknown";
  }

  if (v2 == 6)
  {
    return @"Watch";
  }

  else
  {
    return @"HomePod";
  }
}

__CFDictionary *sub_1B01B95C8()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = sub_1B01BD09C(1, "als");
  if (v1)
  {
    v2 = v1;
    CFDictionaryAddValue(Mutable, @"als", v1);
    CFRelease(v2);
  }

  v3 = sub_1B01BD09C(1, "multi-touch");
  if (v3)
  {
    v4 = v3;
    CFDictionaryAddValue(Mutable, @"multi-touch", v3);
    CFRelease(v4);
  }

  v5 = sub_1B01BD09C(1, "prox");
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, @"prox", v5);
    CFRelease(v6);
  }

  return Mutable;
}

CFStringRef sub_1B01B96E0()
{
  if (sub_1B0198D50())
  {

    return sub_1B01BC474(2, 0, 0);
  }

  else
  {

    return sub_1B019B914(1, "baseband", @"device-imei");
  }
}

BOOL sub_1B01B9780()
{
  v0 = sub_1B019C9DC();
  v7 = sub_1B019CB70(v0, @"Internal", v1, v2, v3, v4, v5, v6, @"Lite Internal");
  if (v0)
  {
    CFRelease(v0);
  }

  return v7;
}

uint64_t sub_1B01B97E4(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = 0;
  cf = 0;
  v5 = off_1EB6CFEC0;
  v6 = *(off_1EB6CFEC0 + 4);
  if (!v6)
  {
    v6 = sub_1B0193150(4, 2);
    v5 = off_1EB6CFEC0;
  }

  v7 = *(v5 + 55);
  if (!v7)
  {
    v7 = sub_1B0193150(55, 1);
  }

  v8 = (v6)(a2, *v7, &v12, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = MEMORY[0x1E695E4D0];
  if (!v12)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v9;
  return v8;
}

CFTypeRef sub_1B01B98A4(const __CFString *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = sub_1B019BAC0(1, off_1E7A92900[v2], a1);
    if (v3)
    {
      break;
    }

    if (++v2 == 3)
    {
      sub_1B0191658(12);
      return v3;
    }
  }

  return v3;
}

uint64_t sub_1B01B9908(int a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v2 = IOServiceMatching("IOAccessoryManager");
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1B01B99C4;
  v5[3] = &unk_1E7A92920;
  v6 = 255;
  v7 = a1;
  v5[4] = &v8;
  sub_1B01BCF2C(v2, v5);
  v3 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

void sub_1B01B99C4(uint64_t a1, io_registry_entry_t entry, _BYTE *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"IOAccessoryManagerType", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
      if ((*(a1 + 40) & valuePtr) == *(a1 + 44))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }
    }

    CFRelease(v6);
  }
}

CFStringRef sub_1B01B9A7C(const __CFString *a1)
{
  v3 = -1;
  v1 = sub_1B01914DC(a1, 5, 5, kCFNumberSInt32Type, &v3);
  result = @"unknown";
  if (v1 && v3 != -1)
  {
    return CFStringCreateWithFormat(0, 0, @"#%02x%02x%02x", BYTE2(v3), BYTE1(v3), v3);
  }

  return result;
}

void sub_1B01B9AF8()
{
  v0 = dlopen("/usr/lib/updaters/libSavageUpdater_iOS.dylib", 1);
  if (v0)
  {
    v1 = v0;
    off_1EB6D01B0 = dlsym(v0, "SavageUpdaterExecCommand");
    off_1EB6D01A8 = dlsym(v1, "SavageUpdaterCreate");
    off_1EB6D01B8 = dlsym(v1, "SavageUpdaterIsDone");
  }

  else
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

    _MGLog(v8, 7849, @"Unable to dlopen(/usr/lib/updaters/libSavageUpdater_iOS.dylib)", v3, v4, v5, v6, v7);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlopen(/usr/lib/updaters/libSavageUpdater_iOS.dylib)", v9, 2u);
    }
  }
}

void *sub_1B01B9BE8()
{
  result = dlopen("/System/Library/PrivateFrameworks/NearField.framework/NearField", 261);
  if (result || (result = dlopen("/usr/lib/libnfrestore.dylib", 261)) != 0)
  {
    result = dlsym(result, "NfRestoreCopyUniqueFDRKey");
    off_1EB6D0180 = result;
  }

  return result;
}

void sub_1B01B9C38(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v18 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x400uLL, a3, va);
  v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v8)
  {
    v14 = v8 + 1;
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v14, 8350, @"(NfRestore): %s", v9, v10, v11, v12, v13, __str, va);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = __str;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "(NfRestore): %s", buf, 0xCu);
  }
}

uint64_t sub_1B01B9D28(mach_port_t a1, char a2, void *a3, size_t *a4)
{
  if (a4)
  {
    v8 = *a4;
  }

  else
  {
    v8 = 0;
  }

  outputStructCnt = v8;
  v9 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v10 = v9;
  if (v9)
  {
    *v9 = 1296256323;
    *(v9 + 4) = a2;
    *(v9 + 5) = 0;
    v11 = IOConnectCallStructMethod(a1, 0, v9, 8uLL, a3, &outputStructCnt);
    if (a4)
    {
      *a4 = outputStructCnt;
    }
  }

  else
  {
    v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v12)
    {
      v18 = v12 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v18, 5539, @"Failed to allocate Mesa command object", v13, v14, v15, v16, v17);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to allocate Mesa command object", v20, 2u);
    }

    v11 = 0xFFFFFFFFLL;
  }

  free(v10);
  return v11;
}

CFTypeRef sub_1B01B9E60(const __CFString *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = *MEMORY[0x1E696CD60];
  do
  {
    v5 = off_1E7A92A10[v2];
    v6 = IOServiceMatching(v5);
    MatchingService = IOServiceGetMatchingService(v4, v6);
    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
      v3 = v5;
    }

    ++v2;
  }

  while (v2 != 9);
  if (v3)
  {
    result = sub_1B019BAC0(1, v3, a1);
    if (result)
    {
      return result;
    }

    sub_1B0191658(12);
  }

  return 0;
}

__CFArray *sub_1B01B9F00(__CFArray *Copy, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B0193ED4("IODeviceTree:/product", @"lynx-count", 0, 1, 1);
  if (v4 >= 2)
  {
    v5 = 1;
    v6 = MEMORY[0x1E69E9C10];
    do
    {
      v25[0] = v5;
      v7 = sub_1B01BE5A4("AppleCyrus", a2, v25, 1u, 0x10000uLL);
      if (v7)
      {
        v8 = v7;
        CFArrayAppendValue(Copy, v7);
        CFRelease(v8);
      }

      else
      {
        v9 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v9)
        {
          v15 = v9 + 1;
        }

        else
        {
          v15 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v15, 5184, @"Lynx entry is NULL - not adding.", v10, v11, v12, v13, v14);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_1B0190000, v6, OS_LOG_TYPE_DEFAULT, "Lynx entry is NULL - not adding.", v24, 2u);
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }

  if (Copy)
  {
    Copy = CFArrayCreateCopy(0, Copy);
  }

  if (CFArrayGetCount(Copy) != v4)
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

    _MGLog(v22, 5194, @"Lynx count in resulting array does not match published count", v17, v18, v19, v20, v21);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Lynx count in resulting array does not match published count", v24, 2u);
    }
  }

  return Copy;
}

BOOL sub_1B01BA0F8(int a1)
{
  if (sub_1B019CA20())
  {
    os_parse_boot_arg_int();
    os_parse_boot_arg_int();
  }

  if (a1 == 2)
  {
    v2 = "manta-c";
  }

  else
  {
    v2 = "manta-b";
  }

  return sub_1B01BD064(1, v2);
}

__CFArray *sub_1B01BA270(char *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v3 = 4;
    do
    {
      v4 = CFNumberCreate(0, kCFNumberIntType, a1);
      CFArrayAppendValue(Mutable, v4);
      CFRelease(v4);
      a1 += 4;
      --v3;
    }

    while (v3);
  }

  return Mutable;
}

void sub_1B01BA2F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
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
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  v29 = 0u;
  if (!MEMORY[0x1B2720DA0](a2, "IOService", v28))
  {
    v4 = v28;
    if (v28[0] != 47 || v28[1])
    {
      v5 = rindex(v28, 47);
      if (v5)
      {
        v4 = v5 + 1;
      }
    }

    v6 = index(v4, 64);
    if (v6)
    {
      *v6 = 0;
    }

    v7 = CFStringCreateWithCString(0, v4, 0x8000100u);
    if (CFDictionaryGetValue(*(a1 + 32), v7))
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

      _MGLog(v14, 4307, @"already have calibration data for %@\n", v9, v10, v11, v12, v13, v7);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v7;
        v15 = MEMORY[0x1E69E9C10];
        v16 = "already have calibration data for %@\n";
LABEL_14:
        _os_log_impl(&dword_1B0190000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
      }
    }

    else
    {
      CFProperty = IORegistryEntryCreateCFProperty(v2, @"compass-calibration", 0, 0);
      if (CFProperty)
      {
        v17 = CFProperty;
        CFDictionarySetValue(*(a1 + 32), v7, CFProperty);
        if (!v7)
        {
LABEL_17:
          if (v17)
          {
            CFRelease(v17);
          }

          return;
        }

LABEL_16:
        CFRelease(v7);
        goto LABEL_17;
      }

      v19 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v19)
      {
        v25 = v19 + 1;
      }

      else
      {
        v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v25, 4313, @"couldn't get calibration data for %s\n", v20, v21, v22, v23, v24, v28);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = v28;
        v15 = MEMORY[0x1E69E9C10];
        v16 = "couldn't get calibration data for %s\n";
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }
}

uint64_t sub_1B01BA560(char *cStr)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  v2 = IOServiceMatching("IOPort");
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1B01BA63C;
  v5[3] = &unk_1E7A92AB0;
  v5[4] = &v6;
  v5[5] = v1;
  sub_1B01BCF2C(v2, v5);
  if (v1)
  {
    CFRelease(v1);
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1B01BA63C(uint64_t a1, io_registry_entry_t entry, _BYTE *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"TransportsSupported", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    if (CFArrayGetCount(CFProperty) >= 1)
    {
      v8.length = CFArrayGetCount(v6);
      v8.location = 0;
      if (CFArrayContainsValue(v6, v8, *(a1 + 40)))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        if (a3)
        {
          *a3 = 1;
        }
      }
    }

    CFRelease(v6);
  }
}

uint64_t sub_1B01BA6FC()
{
  v0 = sub_1B019A220();
  v1 = sub_1B019DD64();
  v2 = v1;
  if (!v1 || (v3 = CFGetTypeID(v1), v3 != CFDataGetTypeID()) || CFDataGetLength(v2) < 1)
  {
    sub_1B0191658(1);
    v4 = 0xFFFFFFFFLL;
    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = *CFDataGetBytePtr(v2);
  if (v0)
  {
LABEL_7:
    CFRelease(v0);
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

void sub_1B01BA798()
{
  v0 = dlopen("/usr/lib/libFDR.dylib", 1);
  if (v0)
  {
    v1 = v0;
    off_1EB6D00D0 = dlsym(v0, "AMFDRCreateWithOptions");
    off_1EB6D00C8 = dlsym(v1, "AMFDRSealingMapVerifySealing");
  }

  else
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

    _MGLog(v8, 5360, @"Unable to dlopen /usr/lib/libFDR.dylib", v3, v4, v5, v6, v7);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlopen /usr/lib/libFDR.dylib", v9, 2u);
    }
  }
}

uint64_t sub_1B01BA870(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0191100(@"oBbtJ8x+s1q0OkaiocPuog", 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) == 24)
  {
    v29 = -337121064;
    v28 = xmmword_1B01FDBD4;
    v27 = 450980336;
    v26 = xmmword_1B01FDBE8;
    if (MGIsDeviceOneOfType(&v28, v5, v6, v7, v8, v9, v10, v11, &v26))
    {
      BytePtr = CFDataGetBytePtr(v3);
      v13 = *(BytePtr + 3);
      v14 = (*BytePtr / v13);
      v15 = v13;
      *a1 = v14;
      *(a1 + 8) = round(522.149562 / v15 * v15 / v15);
      *(a1 + 16) = 0;
      *(a1 + 24) = round(294.333002 / v15 * v15 / v15);
      v16 = 1;
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v16 = sub_1B019B348(&v24);
      if (v16)
      {
        v18 = CFDataGetBytePtr(v3);
        v19 = &v18[1] + 1;
        v20 = vld1_dup_f32(v19);
        v21 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_s32(*v18), v20));
        v22 = vmulq_f64(v24, v21);
        v23 = vmulq_f64(v25, v21);
        *a1 = v22;
        *(a1 + 16) = v23;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v3);
  return v16;
}

uint64_t sub_1B01BAA1C(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v5 = off_1EB6CFEC0;
  v6 = *(off_1EB6CFEC0 + 3);
  if (!v6)
  {
    v6 = sub_1B0193150(3, 2);
    v5 = off_1EB6CFEC0;
  }

  v7 = *(v5 + 54);
  if (!v7)
  {
    v7 = sub_1B0193150(54, 1);
  }

  result = (v6)(a2, *v7, &v10);
  v9 = MEMORY[0x1E695E4D0];
  if (!v10)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v9;
  return result;
}

uint64_t sub_1B01BAAC0(const __CFString *a1, int a2, float64x2_t *a3)
{
  v6 = sub_1B0191100(@"oBbtJ8x+s1q0OkaiocPuog", 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 == CFDataGetTypeID())
  {
    v17 = 0u;
    v18 = 0u;
    if (CFDataGetLength(v7) == 24 && sub_1B019B054(a1, a2, &v17))
    {
      BytePtr = CFDataGetBytePtr(v7);
      v10 = &BytePtr[1] + 1;
      v11 = vld1_dup_f32(v10);
      v12 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_s32(*BytePtr), v11));
      v13 = vmulq_f64(v17, v12);
      v14 = vmulq_f64(v18, v12);
      *a3 = v13;
      a3[1] = v14;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  CFRelease(v7);
  return v15;
}

CFTypeRef sub_1B01BABB8(uint64_t a1, io_registry_entry_t entry, _BYTE *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  result = IORegistryEntrySearchCFProperty(entry, "IOService", @"vendor-id", 0, 3u);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *a3 = 1;
  }

  return result;
}

BOOL sub_1B01BAC38(uint64_t a1, io_registry_entry_t entry)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  *(*(*(a1 + 40) + 8) + 24) = IORegistryEntrySearchCFProperty(entry, "IOService", @"vendor-id", 0, 3u);
  return *(*(*(a1 + 40) + 8) + 24) != 0;
}

void sub_1B01BACAC(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFArrayAppendValue(*(a1 + 32), v3);

  CFRelease(v3);
}

uint64_t sub_1B01BAD00(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v10 = 0;
  v5 = off_1EB6CFEC0;
  v6 = *(off_1EB6CFEC0 + 21);
  if (!v6)
  {
    v6 = sub_1B0193150(21, 2);
    v5 = off_1EB6CFEC0;
  }

  v7 = *(v5 + 56);
  if (!v7)
  {
    v7 = sub_1B0193150(56, 1);
  }

  result = (v6)(a2, *v7, &v11, &v10);
  v9 = MEMORY[0x1E695E4D0];
  if (v10 < 0)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v9;
  return result;
}

CFNumberRef sub_1B01BADAC(const __CFString *a1, const __CFString *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  result = sub_1B0198DB0("IODeviceTree:/product", a1, 0);
  if (!result)
  {
    v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v5)
    {
      v11 = v5 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v11, 6459, @"No %@ size defined. Assuming display size", v6, v7, v8, v9, v10, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No %@ size defined. Assuming display size", buf, 0xCu);
    }

    return sub_1B0191100(a2, 0);
  }

  return result;
}

void sub_1B01BAEAC()
{
  v0 = dlopen("/usr/lib/libFDR.dylib", 1);
  if (v0)
  {
    v1 = v0;
    off_1EB6D01C0 = dlsym(v0, "AMFDRCreateTypeWithOptions");
    off_1EB6D01C8 = dlsym(v1, "AMFDRDataApTicketPopulate");
    off_1EB6D01D0 = dlsym(v1, "AMFDRDataApTicketCopyObjectProperty");
    off_1EB6D01D8 = dlsym(v1, "AMFDRDataTrustObjectIsFactorySigned");
  }

  else
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

    _MGLog(v8, 5424, @"Unable to dlopen /usr/lib/libFDR.dylib", v3, v4, v5, v6, v7);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlopen /usr/lib/libFDR.dylib", v9, 2u);
    }
  }
}

CFTypeRef sub_1B01BAFB4(uint64_t a1, io_registry_entry_t entry, _BYTE *a3)
{
  result = IORegistryEntryCreateCFProperty(entry, @"Content", *MEMORY[0x1E695E480], 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a3 = 1;
  }

  return result;
}

void sub_1B01BB020()
{
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v1 = off_1EB6CFEC0;
  v2 = *(off_1EB6CFEC0 + 52);
  if (!v2)
  {
    v2 = sub_1B0193150(52, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v2)
  {
    v3 = v1[52];
    if (!v3)
    {
      v3 = sub_1B0193150(52, 1);
    }

    CFSetAddValue(Mutable, *v3);
    v1 = off_1EB6CFEC0;
  }

  v4 = v1[53];
  if (!v4)
  {
    v4 = sub_1B0193150(53, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v4)
  {
    v5 = v1[53];
    if (!v5)
    {
      v5 = sub_1B0193150(53, 1);
    }

    CFSetAddValue(Mutable, *v5);
    v1 = off_1EB6CFEC0;
  }

  v6 = v1[76];
  if (!v6)
  {
    v6 = sub_1B0193150(76, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v6)
  {
    v7 = v1[76];
    if (!v7)
    {
      v7 = sub_1B0193150(76, 1);
    }

    CFSetAddValue(Mutable, *v7);
    v1 = off_1EB6CFEC0;
  }

  v8 = v1[77];
  if (!v8)
  {
    v8 = sub_1B0193150(77, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v8)
  {
    v9 = v1[77];
    if (!v9)
    {
      v9 = sub_1B0193150(77, 1);
    }

    CFSetAddValue(Mutable, *v9);
    v1 = off_1EB6CFEC0;
  }

  v10 = v1[78];
  if (!v10)
  {
    v10 = sub_1B0193150(78, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v10)
  {
    v11 = v1[78];
    if (!v11)
    {
      v11 = sub_1B0193150(78, 1);
    }

    CFSetAddValue(Mutable, *v11);
    v1 = off_1EB6CFEC0;
  }

  v12 = v1[79];
  if (!v12)
  {
    v12 = sub_1B0193150(79, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v12)
  {
    v13 = v1[79];
    if (!v13)
    {
      v13 = sub_1B0193150(79, 1);
    }

    CFSetAddValue(Mutable, *v13);
    v1 = off_1EB6CFEC0;
  }

  v14 = v1[80];
  if (!v14)
  {
    v14 = sub_1B0193150(80, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v14)
  {
    v15 = v1[80];
    if (!v15)
    {
      v15 = sub_1B0193150(80, 1);
    }

    CFSetAddValue(Mutable, *v15);
    v1 = off_1EB6CFEC0;
  }

  v16 = v1[84];
  if (!v16)
  {
    v16 = sub_1B0193150(84, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v16)
  {
    v17 = v1[84];
    if (!v17)
    {
      v17 = sub_1B0193150(84, 1);
    }

    CFSetAddValue(Mutable, *v17);
    v1 = off_1EB6CFEC0;
  }

  v18 = v1[85];
  if (!v18)
  {
    v18 = sub_1B0193150(85, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v18)
  {
    v19 = v1[85];
    if (!v19)
    {
      v19 = sub_1B0193150(85, 1);
    }

    CFSetAddValue(Mutable, *v19);
    v1 = off_1EB6CFEC0;
  }

  v20 = v1[86];
  if (!v20)
  {
    v20 = sub_1B0193150(86, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v20)
  {
    v21 = v1[86];
    if (!v21)
    {
      v21 = sub_1B0193150(86, 1);
    }

    CFSetAddValue(Mutable, *v21);
    v1 = off_1EB6CFEC0;
  }

  v22 = v1[87];
  if (!v22)
  {
    v22 = sub_1B0193150(87, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v22)
  {
    v23 = v1[87];
    if (!v23)
    {
      v23 = sub_1B0193150(87, 1);
    }

    CFSetAddValue(Mutable, *v23);
    v1 = off_1EB6CFEC0;
  }

  v24 = v1[88];
  if (!v24)
  {
    v24 = sub_1B0193150(88, 1);
    v1 = off_1EB6CFEC0;
  }

  if (*v24)
  {
    v25 = v1[88];
    if (!v25)
    {
      v25 = sub_1B0193150(88, 1);
    }

    CFSetAddValue(Mutable, *v25);
    v1 = off_1EB6CFEC0;
  }

  v26 = v1[89];
  if (!v26)
  {
    v26 = sub_1B0193150(89, 1);
  }

  if (*v26)
  {
    v27 = *(off_1EB6CFEC0 + 89);
    if (!v27)
    {
      v27 = sub_1B0193150(89, 1);
    }

    CFSetAddValue(Mutable, *v27);
  }

  qword_1EB6D0148 = Mutable;
}

void sub_1B01BB3D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

void *sub_1B01BB3F0()
{
  if (!sub_1B01BBAB0(0))
  {
    return 0;
  }

  v0 = sub_1B01BBAB0(0);
  if (v0)
  {
    v0 = sub_1B01BB524();
  }

  v1 = [objc_msgSend(v0 "embeddedSecureElement")];
  v2 = objc_opt_new();
  v3 = v2;
  if (v1 && v2)
  {
    v4 = [v1 OSVersion];
    v5 = [v1 firmwareVersion];
    v6 = [v1 hardwareVersion];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    [v3 setObject:v7 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "FirmwareVersion")}];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [v3 setObject:v8 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "HardwareVersion")}];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [v3 setObject:v9 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "OSVersion")}];
  }

  return v3;
}

uint64_t sub_1B01BB524()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_1B01BBBF4;
  v0 = qword_1EB6D0140;
  v7 = sub_1B01BBC04;
  v8 = qword_1EB6D0140;
  if (!qword_1EB6D0140)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = sub_1B01BBC10;
    v2[3] = &unk_1E7A92EF0;
    v2[4] = &v3;
    sub_1B01BBC10(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B01BB5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B01BB610()
{
  v21 = *MEMORY[0x1E69E9840];
  result = sub_1B01BBAB0(0);
  if (result)
  {
    if (sub_1B01BBAB0(0))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = sub_1B01BBBF4;
      v1 = qword_1EB6D00A0;
      v18 = sub_1B01BBC04;
      v19 = qword_1EB6D00A0;
      if (!qword_1EB6D00A0)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = sub_1B01BBCAC;
        v13[3] = &unk_1E7A92EF0;
        v13[4] = &v14;
        sub_1B01BBCAC(v13);
        v1 = v15[5];
      }

      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v1 = 0;
    }

    result = [v1 sharedHardwareManager];
    if (result)
    {
      v2 = [result secureElements];
      v3 = v2;
      if (!v2)
      {
        return 0;
      }

      result = [v2 count];
      if (!result)
      {
        return result;
      }

      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v20 count:16];
      if (v4)
      {
        v5 = *v10;
        while (2)
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = [*(*(&v9 + 1) + 8 * v6) info];
            v8 = v7;
            if (v7 && [v7 personalisable])
            {
              return [v8 manifestQuery];
            }

            ++v6;
          }

          while (v4 != v6);
          v4 = [v3 countByEnumeratingWithState:&v9 objects:v20 count:16];
          result = 0;
          if (v4)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1B01BB810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1B01BB830()
{
  if (!sub_1B01BBAB0(0))
  {
    return 0;
  }

  v0 = sub_1B01BBAB0(0);
  if (v0)
  {
    v0 = sub_1B01BB524();
  }

  v1 = [objc_msgSend(v0 "embeddedSecureElement")];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 serialNumber];
  v3 = v2;
  return v2;
}

void *sub_1B01BB88C()
{
  if (!sub_1B01BBAB0(0))
  {
    return 0;
  }

  v0 = sub_1B01BBAB0(0);
  if (v0)
  {
    v0 = sub_1B01BB524();
  }

  v1 = [objc_msgSend(v0 "icefallSecureElement")];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 serialNumber];
  v3 = v2;
  return v2;
}

uint64_t sub_1B01BB8E8()
{
  result = sub_1B01BBAB0(0);
  if (result)
  {
    v1 = sub_1B01BBAB0(0);
    if (v1)
    {
      v1 = sub_1B01BB524();
    }

    return [v1 icefallSecureElement] != 0;
  }

  return result;
}

uint64_t sub_1B01BB924()
{
  if (!sub_1B01BBAB0(0))
  {
    return 0;
  }

  v0 = sub_1B01BBAB0(0);
  if (v0)
  {
    v0 = sub_1B01BB524();
  }

  v1 = [objc_msgSend(v0 "icefallSecureElement")];
  if (!v1)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](v1, sel_restrictedMode);
}

void *sub_1B01BB97C()
{
  result = sub_1B01BBD04(0);
  if (result)
  {
    if (sub_1B01BBD04(0))
    {
      v4 = 0;
      v5 = &v4;
      v6 = 0x3052000000;
      v7 = sub_1B01BBBF4;
      v1 = qword_1ED446D00;
      v8 = sub_1B01BBC04;
      v9 = qword_1ED446D00;
      if (!qword_1ED446D00)
      {
        v3[0] = MEMORY[0x1E69E9820];
        v3[1] = 3221225472;
        v3[2] = sub_1B01BBE48;
        v3[3] = &unk_1E7A92EF0;
        v3[4] = &v4;
        sub_1B01BBE48(v3);
        v1 = v5[5];
      }

      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v1 = 0;
    }

    result = [v1 availableDevices];
    if (result)
    {
      v2 = result;
      result = [result count];
      if (result)
      {
        return ([objc_msgSend(v2 "firstObject")] == 2);
      }
    }
  }

  return result;
}

void sub_1B01BBA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B01BBAB0(uint64_t a1)
{
  if (!qword_1EB6D0150)
  {
    qword_1EB6D0150 = _sl_dlopen();
  }

  return qword_1EB6D0150;
}

uint64_t sub_1B01BBB80(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB6D0150 = result;
  return result;
}

Class sub_1B01BBC10(uint64_t a1)
{
  sub_1B01BBC68();
  result = objc_getClass("NFSecureElement");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1B01F1030();
  }

  qword_1EB6D0140 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_1B01BBC68()
{
  v0 = 0;
  if (!sub_1B01BBAB0(&v0))
  {
    sub_1B01F1098(&v0);
  }

  if (v0)
  {
    free(v0);
  }
}

Class sub_1B01BBCAC(uint64_t a1)
{
  sub_1B01BBC68();
  result = objc_getClass("NFHardwareManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1B01F1100();
  }

  qword_1EB6D00A0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_1B01BBD04(uint64_t a1)
{
  if (!qword_1ED446D08)
  {
    qword_1ED446D08 = _sl_dlopen();
  }

  return qword_1ED446D08;
}

uint64_t sub_1B01BBDD4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED446D08 = result;
  return result;
}

Class sub_1B01BBE48(uint64_t a1)
{
  v3 = 0;
  if (!sub_1B01BBD04(&v3))
  {
    sub_1B01F11D0(&v3);
  }

  if (v3)
  {
    free(v3);
  }

  result = objc_getClass("BKDeviceManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1B01F1168();
  }

  qword_1ED446D00 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

const void *sub_1B01BBECC(unint64_t a1, unint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a1 | a2)
  {
    theDict = 0;
    v4 = MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ");
    if (!v4)
    {
      v6 = sub_1B01A3148(v4, v5);
      if (v6)
      {
        v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
        if (v7)
        {
          v8 = v7;
          byte_1EB6D0208 = CFStringCompare(v7, @"darwinos-ramdisk", 0) == kCFCompareEqualTo;
          CFRelease(v8);
        }
      }

      if (byte_1EB6D0208 != 1)
      {
        goto LABEL_26;
      }

      if (qword_1EB6D0218 != -1)
      {
        sub_1B01F1238();
      }

      if (!qword_1EB6D0210)
      {
LABEL_26:
        v22 = *(off_1EB6CFEC0 + 10);
        if (!v22)
        {
          v22 = sub_1B0193150(10, 2);
        }

        TypeID = CFDictionaryGetTypeID();
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_1B0196D3C;
        v62 = &unk_1E7A92F28;
        v63 = v22;
        v24 = sub_1B019697C("_CTServerConnectionCopyFirmwareSecurityInfo", buf, TypeID);
        theDict = v24;
        if (!v24)
        {
          goto LABEL_48;
        }

        goto LABEL_29;
      }
    }

    if (qword_1EB6D0200 != -1)
    {
      sub_1B01F124C();
    }

    if (!off_1EB6D01E8)
    {
      goto LABEL_48;
    }

    if (!off_1EB6D01F0)
    {
      goto LABEL_48;
    }

    if (!off_1EB6D01F8)
    {
      goto LABEL_48;
    }

    v9 = off_1EB6D01E8();
    if (!v9)
    {
      goto LABEL_48;
    }

    v10 = v9;
    v11 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v11)
    {
LABEL_47:
      CFRelease(v10);
      v24 = theDict;
      if (!theDict)
      {
LABEL_48:
        v44 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
        if (v44)
        {
          v50 = v44 + 1;
        }

        else
        {
          v50 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
        }

        _MGLog(v50, 198, @"No CT security info dictionary", v45, v46, v47, v48, v49);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No CT security info dictionary", buf, 2u);
        }

        return 0;
      }

LABEL_29:
      Value = CFDictionaryGetValue(v24, a1);
      if (Value)
      {
LABEL_30:
        v26 = Value;
        CFRetain(Value);
LABEL_62:
        CFRelease(theDict);
        return v26;
      }

      if (a2)
      {
        Value = CFDictionaryGetValue(theDict, a2);
        if (Value)
        {
          goto LABEL_30;
        }

        v27 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
        if (v27)
        {
          v33 = v27 + 1;
        }

        else
        {
          v33 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
        }

        _MGLog(v33, 189, @"No %@ or %@ in CT security info dictionary", v28, v29, v30, v31, v32, a1, a2);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
LABEL_61:
          v26 = 0;
          goto LABEL_62;
        }

        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = a2;
        v34 = MEMORY[0x1E69E9C10];
        v35 = "No %@ or %@ in CT security info dictionary";
        v36 = 22;
      }

      else
      {
        v52 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
        if (v52)
        {
          v58 = v52 + 1;
        }

        else
        {
          v58 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
        }

        _MGLog(v58, 185, @"No %@ in CT security info dictionary", v53, v54, v55, v56, v57, a1);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        *buf = 138412290;
        *&buf[4] = a1;
        v34 = MEMORY[0x1E69E9C10];
        v35 = "No %@ in CT security info dictionary";
        v36 = 12;
      }

      _os_log_impl(&dword_1B0190000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, v36);
      goto LABEL_61;
    }

    v12 = v11;
    cf = 0;
    if (!off_1EB6D01F0(v10, v11, &cf) || cf)
    {
      v37 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
      if (v37)
      {
        v43 = v37 + 1;
      }

      else
      {
        v43 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
      }

      _MGLog(v43, 163, @"BBUpdaterSetOptions failed: %@", v38, v39, v40, v41, v42, cf);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = cf;
        v20 = MEMORY[0x1E69E9C10];
        v21 = "BBUpdaterSetOptions failed: %@";
        goto LABEL_43;
      }
    }

    else
    {
      if (off_1EB6D01F8(v10, @"CopyIdentifier", &theDict, &cf) && !cf)
      {
LABEL_46:
        CFRelease(v12);
        goto LABEL_47;
      }

      v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
      if (v13)
      {
        v19 = v13 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
      }

      _MGLog(v19, 167, @"BBUpdaterExecCommand(CopyIdentifier) failed: %@", v14, v15, v16, v17, v18, cf);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = cf;
        v20 = MEMORY[0x1E69E9C10];
        v21 = "BBUpdaterExecCommand(CopyIdentifier) failed: %@";
LABEL_43:
        _os_log_impl(&dword_1B0190000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_46;
  }

  return 0;
}

void sub_1B01BC3EC()
{
  if (qword_1EB6D0218 != -1)
  {
    sub_1B01F1238();
  }

  v0 = qword_1EB6D0210;
  if (qword_1EB6D0210)
  {
    off_1EB6D01E8 = dlsym(qword_1EB6D0210, "BBUpdaterExtremeCreate");
    off_1EB6D01F0 = dlsym(v0, "BBUpdaterSetOptions");
    off_1EB6D01F8 = dlsym(v0, "BBUpdaterExecCommand");
  }
}

CFTypeRef sub_1B01BC474(uint64_t a1, int a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = sub_1B01A2290(a1);
  v7 = *(off_1EB6CFEC0 + 27);
  if (!v7)
  {
    v7 = sub_1B0193150(27, 2);
  }

  v8 = (v7)(a1, a3);
  v9 = v8;
  if (!v8)
  {
    v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v12)
    {
      v18 = v12 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v18, 217, @"No %@ in CT mobile equipment info dictionary", v13, v14, v15, v16, v17, v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "No %@ in CT mobile equipment info dictionary";
LABEL_16:
      _os_log_impl(&dword_1B0190000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }

LABEL_23:
    v11 = 0;
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v10 = CFGetTypeID(v8);
  if (v10 != CFStringGetTypeID())
  {
    v21 = CFGetTypeID(v9);
    v22 = CFCopyTypeIDDescription(v21);
    v23 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v23)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v29, 224, @"Non-string (%@) for %@ in CT mobile equipment info dictionary (%@)", v24, v25, v26, v27, v28, v22, v6, v9);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = v22;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Non-string (%@) for %@ in CT mobile equipment info dictionary (%@)", buf, 0x20u);
    }

    CFRelease(v22);
    goto LABEL_23;
  }

  if (!CFStringGetLength(v9))
  {
    v31 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v31)
    {
      v37 = v31 + 1;
    }

    else
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v37, 229, @"Empty string for %@ in CT mobile equipment info dictionary", v32, v33, v34, v35, v36, v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "Empty string for %@ in CT mobile equipment info dictionary";
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_8:
  v11 = CFRetain(v9);
  if (v6)
  {
LABEL_24:
    CFRelease(v6);
  }

LABEL_25:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

CFTypeRef sub_1B01BC71C(uint64_t a1, int a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = sub_1B01A22DC(a1);
  v7 = *(off_1EB6CFEC0 + 47);
  if (!v7)
  {
    v7 = sub_1B0193150(47, 2);
  }

  v8 = (v7)(a1, a3);
  v9 = v8;
  if (!v8)
  {
    v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v12)
    {
      v18 = v12 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v18, 257, @"No %@ sim status interface", v13, v14, v15, v16, v17, v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "No %@ sim status interface";
LABEL_16:
      _os_log_impl(&dword_1B0190000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }

LABEL_23:
    v11 = 0;
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v10 = CFGetTypeID(v8);
  if (v10 != CFStringGetTypeID())
  {
    v21 = CFGetTypeID(v9);
    v22 = CFCopyTypeIDDescription(v21);
    v23 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v23)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v29, 264, @"Non-string (%@) for %@ in SIM status interface (%@)", v24, v25, v26, v27, v28, v22, v6, v9);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v39 = v22;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Non-string (%@) for %@ in SIM status interface (%@)", buf, 0x20u);
    }

    CFRelease(v22);
    goto LABEL_23;
  }

  if (!CFStringGetLength(v9))
  {
    v31 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v31)
    {
      v37 = v31 + 1;
    }

    else
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v37, 269, @"Empty string for %@ in in SIM status interface", v32, v33, v34, v35, v36, v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "Empty string for %@ in in SIM status interface";
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_8:
  v11 = CFRetain(v9);
  if (v6)
  {
LABEL_24:
    CFRelease(v6);
  }

LABEL_25:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

CFTypeRef sub_1B01BC9C4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(off_1EB6CFEC0 + 42);
  if (!v2)
  {
    v2 = sub_1B0193150(42, 2);
  }

  v3 = (v2)(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFRetain(v3);
    CFRelease(v4);
    return v5;
  }

  else
  {
    v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v7)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v13, 290, @"Empty phone number for slot %ld.", v8, v9, v10, v11, v12, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Empty phone number for slot %ld.", buf, 0xCu);
    }

    return 0;
  }
}

const void *sub_1B01BCB00(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  v3 = sub_1B019697C("copyCTCapabilities", &unk_1F2637420, TypeID);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, a1);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v4);
  return v6;
}

void sub_1B01BCB70()
{
  qword_1EB6D0210 = dlopen("/usr/lib/libBBUpdaterDynamic.dylib", 1);
  if (!qword_1EB6D0210)
  {
    v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c", 47);
    if (v0)
    {
      v6 = v0 + 1;
    }

    else
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGBasebandSupport.c";
    }

    _MGLog(v6, 103, @"Unable to dlopen /usr/lib/libBBUpdaterDynamic.dylib", v1, v2, v3, v4, v5);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlopen /usr/lib/libBBUpdaterDynamic.dylib", v7, 2u);
    }
  }
}

uint64_t sub_1B01BCC1C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v8 = 0;
  v5 = *(off_1EB6CFEC0 + 17);
  if (!v5)
  {
    v5 = sub_1B0193150(17, 2);
  }

  v6 = (v5)(a2, a3, &v8);
  if (!v8)
  {
    if (*a3)
    {
      CFRelease(*a3);
    }

    *a3 = 0;
  }

  return v6;
}

BOOL sub_1B01BCCA0(const char *a1, io_service_t *a2, io_connect_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  connect = 0;
  v6 = IOServiceMatching(a1);
  if (v6)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      if (IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect))
      {
        v9 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
        if (v9)
        {
          v15 = v9 + 1;
        }

        else
        {
          v15 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
        }

        _MGLog(v15, 29, @"IOServiceOpen failed for class '%s'", v10, v11, v12, v13, v14, a1);
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          *buf = 136315138;
          v36 = a1;
          v17 = MEMORY[0x1E69E9C10];
          v18 = "IOServiceOpen failed for class '%s'";
LABEL_14:
          v26 = 12;
LABEL_20:
          _os_log_impl(&dword_1B0190000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v26);
          return 0;
        }
      }

      else
      {
        *a2 = v8;
        *a3 = connect;
        return 1;
      }
    }

    else
    {
      v27 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
      if (v27)
      {
        v33 = v27 + 1;
      }

      else
      {
        v33 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
      }

      _MGLog(v33, 27, @"IOServiceGetMatchingService failed", v28, v29, v30, v31, v32);
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 0;
        v17 = MEMORY[0x1E69E9C10];
        v18 = "IOServiceGetMatchingService failed";
        v26 = 2;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v19 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v19)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v25, 25, @"IOServiceMatching failed for %s", v20, v21, v22, v23, v24, a1);
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 136315138;
      v36 = a1;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "IOServiceMatching failed for %s";
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1B01BCEB8(io_iterator_t iterator, uint64_t a2)
{
  v6 = 0;
  do
  {
    result = IOIteratorNext(iterator);
    if (!result)
    {
      break;
    }

    v5 = result;
    (*(a2 + 16))(a2, result, &v6);
    result = IOObjectRelease(v5);
  }

  while (v6 != 1);
  return result;
}

void sub_1B01BCF2C(CFDictionaryRef matching, uint64_t a2)
{
  existing = 0;
  if (matching)
  {
    MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], matching, &existing);
    v4 = existing;
    if (MatchingServices)
    {
      v5 = 1;
    }

    else
    {
      v5 = existing == 0;
    }

    if (!v5)
    {
      sub_1B01BCEB8(existing, a2);
      v4 = existing;
    }

    if (v4)
    {
      IOObjectRelease(v4);
    }
  }

  else
  {
    v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v6)
    {
      v12 = v6 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v12, 57, @"called with a NULL matching dictionary", v7, v8, v9, v10, v11);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "called with a NULL matching dictionary", v13, 2u);
    }
  }
}

uint64_t sub_1B01BD00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  object = 0;
  v4 = MEMORY[0x1B2720D80](a1, a2, &object);
  result = object;
  if (!v4 && object)
  {
    sub_1B01BCEB8(object, a3);
    result = object;
  }

  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

BOOL sub_1B01BD064(int a1, char *a2)
{
  v2 = sub_1B019BB1C(a1, a2);
  v3 = v2;
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return v3 != 0;
}

CFMutableDictionaryRef sub_1B01BD09C(int a1, char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = sub_1B019BB1C(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  properties = 0;
  v5 = IORegistryEntryCreateCFProperties(v3, &properties, 0, 0);
  if (v5)
  {
    v6 = v5;
    v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    v9 = mach_error_string(v6);
    _MGLog(v7, 135, @"IORegistryEntryCreateCFProperties failed for '%s': %s", v10, v11, v12, v13, v14, a2, v9);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = mach_error_string(v6);
      *buf = 136315394;
      v19 = a2;
      v20 = 2080;
      v21 = v15;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperties failed for '%s': %s", buf, 0x16u);
    }
  }

  IOObjectRelease(v4);
  return properties;
}

CFTypeRef sub_1B01BD1D0(int a1, char *a2, const __CFString *a3)
{
  v4 = sub_1B019BB1C(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = IORegistryEntrySearchCFProperty(v4, "IOService", a3, *MEMORY[0x1E695E480], 1u);
  IOObjectRelease(v5);
  return v6;
}

uint64_t sub_1B01BD234()
{
  result = sub_1B01BD278("AppleAuthCPRelay");
  if (!result)
  {

    return sub_1B01BD278("AppleAuthCPAID");
  }

  return result;
}

uint64_t sub_1B01BD278(const char *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = IOServiceMatching(a1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = sub_1B01BE7B4;
  v4[3] = &unk_1E7A93078;
  v4[4] = &v5;
  sub_1B01BCF2C(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL sub_1B01BD320(int a1, char *a2, const __CFString *a3)
{
  v3 = sub_1B019BAC0(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

uint64_t sub_1B01BD36C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B01BD424;
  v3[3] = &unk_1E7A92FD8;
  v3[4] = &v4;
  v0 = IOServiceMatching("IONetworkController");
  sub_1B01BD998(v0, 5, v3, 0);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL sub_1B01BD424(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v3 = MEMORY[0x1B2720D60](a2, "IOService", 3, &v14);
  if (v3)
  {
    v4 = v3;
    v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v5)
    {
      v11 = v5 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v11, 259, @"unable to create parent iterator: 0x%x\n", v6, v7, v8, v9, v10, v4);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = v4;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to create parent iterator: 0x%x\n", buf, 8u);
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = sub_1B01BD59C;
    v13[3] = &unk_1E7A92FB0;
    v13[4] = *(a1 + 32);
    sub_1B01BCEB8(v14, v13);
    IOObjectRelease(v14);
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

void sub_1B01BD59C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  v6 = MEMORY[0x1B2720D90](a2, v18);
  if (v6)
  {
    v7 = v6;
    v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v8)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v14, 251, @"unable to get parent entry's name: 0x%x\n", v9, v10, v11, v12, v13, v7);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = v7;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to get parent entry's name: 0x%x\n", buf, 8u);
    }
  }

  else if (!(LODWORD(v18[0]) ^ 0x6F696473 | BYTE4(v18[0])) || !(LODWORD(v18[0]) ^ 0x6E616C77 | BYTE4(v18[0])) || (*&v18[0] == 0x2D696E6F6372616DLL ? (v15 = *(v18 + 5) == 0x696669772D696ELL) : (v15 = 0), !v15))
  {
    *(*(*(a1 + 32) + 8) + 24) = IORegistryEntryCreateCFProperty(v4, @"local-mac-address", *MEMORY[0x1E695E480], 0);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a3 = 1;
  }
}

void sub_1B01BD758(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = sub_1B01BD820;
  block[3] = &unk_1E7A93000;
  v11 = a1;
  block[4] = a2;
  block[5] = a3;
  block[6] = a4;
  block[7] = v8;
  dispatch_async(global_queue, block);
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v8);
}

intptr_t sub_1B01BD820(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddCommonMode(Current, @"MobileGestaltRunLoopMode");
  if ((*(*(a1 + 32) + 16))())
  {
    do
    {
      do
      {
        v3 = CFRunLoopRunInMode(@"MobileGestaltRunLoopMode", *(a1 + 64), 1u);
      }

      while (v3 == 4);
      v4 = v3;
      v5 = *(a1 + 40);
    }

    while (v5 && ((*(v5 + 16))() & 1) != 0);
    v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v6)
    {
      v12 = v6 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v12, 310, @"giving up waiting for match - runloop result is %d\n", v7, v8, v9, v10, v11, v4);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = v4;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "giving up waiting for match - runloop result is %d\n", buf, 8u);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

void sub_1B01BD998(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1B01BDA9C;
  v5[3] = &unk_1E7A93028;
  v5[4] = a3;
  v5[5] = v6;
  v5[6] = v7;
  v5[7] = a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = sub_1B01BDCE4;
  v4[3] = &unk_1E7A93050;
  v4[4] = v6;
  v4[5] = v7;
  sub_1B01BD758(a2, v5, a4, v4);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v7, 8);
}

BOOL sub_1B01BDA9C(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *a2 = *(a1 + 32);
  *(*(*(a1 + 40) + 8) + 24) = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  Current = CFRunLoopGetCurrent();
  RunLoopSource = IONotificationPortGetRunLoopSource(*(*(*(a1 + 40) + 8) + 24));
  CFRunLoopAddSource(Current, RunLoopSource, @"MobileGestaltRunLoopMode");
  v6 = IOServiceAddMatchingNotification(*(*(*(a1 + 40) + 8) + 24), "IOServiceMatched", *(a1 + 56), sub_1B01BDC70, a2, (*(*(a1 + 48) + 8) + 24));
  if (v6)
  {
    v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v7)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v13, 350, @"unable to register for match notifications: 0x%x\n", v8, v9, v10, v11, v12, v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to register for match notifications: 0x%x\n", buf, 8u);
    }
  }

  else
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    *buf = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = sub_1B01BE88C;
    v19 = &unk_1E7A93098;
    v20 = a2;
    sub_1B01BCEB8(v14, buf);
  }

  return v6 == 0;
}

uint64_t sub_1B01BDC70(uint64_t a1, io_iterator_t iterator)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B01BE88C;
  v3[3] = &unk_1E7A93098;
  v3[4] = a1;
  return sub_1B01BCEB8(iterator, v3);
}

uint64_t sub_1B01BDCE4(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    IONotificationPortDestroy(v2);
  }

  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {

    return IOObjectRelease(result);
  }

  return result;
}

uint64_t sub_1B01BDD44(int a1, char *a2, const __CFString *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = sub_1B019BAC0(a1, a2, a3);
  v8 = v7;
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    if (v9 == CFDataGetTypeID() && CFDataGetLength(v8) == 4)
    {
      a4 = *CFDataGetBytePtr(v8);
LABEL_11:
      CFRelease(v8);
      return a4;
    }
  }

  v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
  if (v10)
  {
    v16 = v10 + 1;
  }

  else
  {
    v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
  }

  _MGLog(v16, 597, @"value for %@ property of %s is invalid (%@)", v11, v12, v13, v14, v15, a3, a2, v8);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = a3;
    v20 = 2080;
    v21 = a2;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "value for %@ property of %s is invalid (%@)", buf, 0x20u);
  }

  if (v8)
  {
    goto LABEL_11;
  }

  return a4;
}

CFDictionaryRef sub_1B01BDE9C(const __CFString *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0192F20("IODeviceTree:/product/facetime", a1, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) == 8)
    {
      BytePtr = CFDataGetBytePtr(v3);
      v6 = sub_1B01BDFF0(BytePtr);
LABEL_11:
      CFRelease(v3);
      return v6;
    }
  }

  v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
  if (v7)
  {
    v13 = v7 + 1;
  }

  else
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
  }

  _MGLog(v13, 663, @"unexpected %@ property %@", v8, v9, v10, v11, v12, a1, v3);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = a1;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unexpected %@ property %@", buf, 0x16u);
  }

  v6 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_11;
  }

  return result;
}

CFDictionaryRef sub_1B01BDFF0(unsigned __int16 *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[2];
  v9 = a1[3];
  valuePtr = v1;
  v8 = v2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v4 = CFNumberCreate(0, kCFNumberIntType, &v9);
  v5 = CFNumberCreate(0, kCFNumberIntType, &v8);
  *keys = xmmword_1E7A930B8;
  v13 = @"f";
  values[0] = v3;
  values[1] = v4;
  values[2] = v5;
  v6 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v3);
  CFRelease(v4);
  CFRelease(v5);
  return v6;
}

__CFArray *sub_1B01BE0FC(const __CFString *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0192F20("IODeviceTree:/product/facetime", a1, 0);
  v3 = v2;
  if (v2 && (v4 = CFGetTypeID(v2), v4 == CFDataGetTypeID()))
  {
    Length = CFDataGetLength(v3);
    if ((Length & 7) != 0)
    {
      v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
      if (v6)
      {
        v12 = v6 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
      }

      _MGLog(v12, 690, @"%@ property has unexpected length %lu", v7, v8, v9, v10, v11, a1, Length);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = a1;
        v28 = 2048;
        v29 = Length;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ property has unexpected length %lu", buf, 0x16u);
      }

      Mutable = 0;
      goto LABEL_17;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    BytePtr = CFDataGetBytePtr(v3);
    if (Length < 1)
    {
LABEL_17:
      CFRelease(v3);
      return Mutable;
    }

    v23 = BytePtr;
    for (i = 0; i < Length; i += 8)
    {
      v25 = sub_1B01BDFF0(&v23[i]);
      CFArrayAppendValue(Mutable, v25);
      CFRelease(v25);
    }
  }

  else
  {
    v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v14)
    {
      v20 = v14 + 1;
    }

    else
    {
      v20 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v20, 684, @"Could not read %@ data property", v15, v16, v17, v18, v19, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not read %@ data property", buf, 0xCu);
    }

    Mutable = 0;
  }

  if (v3)
  {
    goto LABEL_17;
  }

  return Mutable;
}

CFDataRef sub_1B01BE340(const char *a1, uint64_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, size_t a7)
{
  v43 = *MEMORY[0x1E69E9840];
  *connection = 0;
  length = a7;
  if (!sub_1B01BCCA0(a1, &connection[1], connection))
  {
    v26 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v26)
    {
      v32 = v26 + 1;
    }

    else
    {
      v32 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    }

    _MGLog(v32, 722, @"unable to connect to service %s", v27, v28, v29, v30, v31, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to connect to service %s", buf, 0xCu);
    }

    outputStruct = 0;
    goto LABEL_13;
  }

  outputStruct = malloc_type_malloc(a7, 0x31994E4AuLL);
  v15 = IOConnectCallMethod(connection[0], a2, a3, a4, a5, a6, 0, 0, outputStruct, &length);
  if (v15)
  {
    v16 = v15;
    v17 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c";
    v18 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitSupport.c", 47);
    if (v18)
    {
      v17 = v18 + 1;
    }

    v19 = mach_error_string(v16);
    _MGLog(v17, 740, @"IOConnectCallMethod(%s,%u) failed: %s", v20, v21, v22, v23, v24, a1, a2, v19);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v25 = mach_error_string(v16);
      *buf = 136315650;
      v38 = a1;
      v39 = 1024;
      v40 = a2;
      v41 = 2080;
      v42 = v25;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOConnectCallMethod(%s,%u) failed: %s", buf, 0x1Cu);
    }

LABEL_13:
    v33 = 0;
    goto LABEL_14;
  }

  v33 = CFDataCreateWithBytesNoCopy(0, outputStruct, length, *MEMORY[0x1E695E488]);
LABEL_14:
  if (connection[0])
  {
    IOServiceClose(connection[0]);
  }

  if (connection[1])
  {
    IOObjectRelease(connection[1]);
  }

  if (outputStruct && !v33)
  {
    free(outputStruct);
  }

  return v33;
}

BOOL sub_1B01BE5B4()
{
  v0 = IOPSCopyPowerSourcesInfo();
  if (v0)
  {
    v1 = v0;
    v2 = IOPSCopyPowerSourcesList(v0);
    if (v2)
    {
      v3 = v2;
      Count = CFArrayGetCount(v2);
      if (Count < 1)
      {
        v7 = 0;
      }

      else
      {
        v5 = Count;
        v6 = 0;
        v7 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
          if (ValueAtIndex)
          {
            v9 = IOPSGetPowerSourceDescription(v1, ValueAtIndex);
            if (v9)
            {
              v10 = v9;
              Value = CFDictionaryGetValue(v9, @"Is Present");
              if (Value)
              {
                v12 = Value;
                v13 = CFGetTypeID(Value);
                if (v13 == CFBooleanGetTypeID())
                {
                  if (CFBooleanGetValue(v12))
                  {
                    v14 = CFDictionaryGetValue(v10, @"Type");
                    if (v14)
                    {
                      v15 = v14;
                      v16 = CFGetTypeID(v14);
                      if (v16 == CFStringGetTypeID() && CFStringCompare(v15, @"InternalBattery", 0) == kCFCompareEqualTo)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }
          }

          v7 = ++v6 < v5;
        }

        while (v5 != v6);
      }

      CFRelease(v3);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    return 0;
  }

  return v7;
}

CFTypeRef sub_1B01BE704(const __CFString *a1)
{
  result = sub_1B019BAC0(1, "wlan", a1);
  if (!result)
  {

    return sub_1B019BAC0(1, "centauri", a1);
  }

  return result;
}

BOOL sub_1B01BE768()
{
  v0 = sub_1B019BAC0(1, "centauri", @"name");
  v1 = v0;
  if (v0)
  {
    CFRelease(v0);
  }

  return v1 != 0;
}

void sub_1B01BE7B4(uint64_t a1, io_registry_entry_t entry, _BYTE *a3)
{
  v6 = *MEMORY[0x1E695E480];
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"flags", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v8 = CFProperty;
    v9 = CFGetTypeID(CFProperty);
    if (v9 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      if ((~valuePtr & 0x30000) == 0)
      {
        *(*(*(a1 + 32) + 8) + 24) = IORegistryEntryCreateCFProperty(entry, @"IDSN", v6, 0);
        *a3 = 1;
      }
    }

    CFRelease(v8);
  }
}

uint64_t sub_1B01BE88C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(**(a1 + 32) + 16))();
  *(*(a1 + 32) + 8) = result;
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

const void *sub_1B01BE8E4(const __CFString *a1)
{
  v2 = sub_1B019BAC0(0, "AppleDiagnosticDataAccess", a1);
  if (!v2)
  {
    v2 = sub_1B019BAC0(0, "AppleDiagnosticDataAccessReadOnly", a1);
    if (!v2)
    {
      v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v13)
      {
        v19 = v13 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v19, 122, @"Unable to read diagnostic data from service", v14, v15, v16, v17, v18);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to read diagnostic data from service", buf, 2u);
      }

      return 0;
    }
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CFDataGetTypeID())
  {
    v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v5)
    {
      v11 = v5 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v11, 129, @"diagnostic data isn't chicken, it's beef!", v6, v7, v8, v9, v10);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "diagnostic data isn't chicken, it's beef!", v20, 2u);
    }

    CFRelease(v3);
    return 0;
  }

  return v3;
}

const void *sub_1B01BEA3C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = sub_1B0199908("IODeviceTree:/chosen", @"syscfg-v2-data", 0);
  v0 = v5[3];
  if (!v0)
  {
    v0 = sub_1B01BE8E4(@"AppleDiagnosticDataSysCfg");
    v5[3] = v0;
    if (!v0)
    {
      if (sub_1B0198CA8())
      {
        v0 = 0;
      }

      else
      {
        v0 = v5[3];
        if (!v0)
        {
          v1 = IOServiceMatching("AppleDiagnosticDataAccessReadOnly");
          v3[0] = MEMORY[0x1E69E9820];
          v3[1] = 0x40000000;
          v3[2] = sub_1B01BEB54;
          v3[3] = &unk_1E7A930D8;
          v3[4] = &v4;
          sub_1B01BD998(v1, 5, v3, 0);
          v0 = v5[3];
        }
      }
    }
  }

  _Block_object_dispose(&v4, 8);
  return v0;
}

const void *sub_1B01BEB90()
{
  if (!sub_1B0198CA8())
  {
    return 0;
  }

  return sub_1B0199908("IODeviceTree:/chosen", @"syscfg-vmpv-data", 0);
}

__CFData *sub_1B01BEBDC(unsigned int a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  *connection = 0;
  if (!sub_1B01BCCA0("AppleNVMeEAN", &connection[1], connection))
  {
    v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v13)
    {
      v19 = v13 + 1;
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v19, 188, @"Could not open EAN service and connect", v14, v15, v16, v17, v18);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Could not open EAN service and connect";
    v20 = 2;
    goto LABEL_27;
  }

  input[0] = a1;
  output = 0;
  outputCnt = 1;
  v2 = IOConnectCallScalarMethod(connection[0], 3u, input, 1u, &output, &outputCnt);
  if (v2)
  {
    v3 = v2;
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v4)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v10, 206, @"Could not get size of EAN data (IOConnectCallScalarMethod kAppleNVMeEANGetSize returned 0x%X)", v5, v6, v7, v8, v9, v3);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 67109120;
    v50 = v3;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Could not get size of EAN data (IOConnectCallScalarMethod kAppleNVMeEANGetSize returned 0x%X)";
    goto LABEL_26;
  }

  if (outputCnt != 1)
  {
    v31 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v31)
    {
      v37 = v31 + 1;
    }

    else
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v37, 213, @"Expected 1 output value for kAppleNVMeEANGetSize but got %d", v32, v33, v34, v35, v36, outputCnt);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 67109120;
    v50 = outputCnt;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Expected 1 output value for kAppleNVMeEANGetSize but got %d";
LABEL_26:
    v20 = 8;
LABEL_27:
    _os_log_impl(&dword_1B0190000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v20);
LABEL_28:
    Mutable = 0;
    goto LABEL_29;
  }

  if (!output)
  {
    v39 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v39)
    {
      v45 = v39 + 1;
    }

    else
    {
      v45 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v45, 223, @"Size of EAN image '%c%c%c%c' is zero. Returning NULL", v40, v41, v42, v43, v44, HIBYTE(a1), BYTE2(a1), BYTE1(a1), a1);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 67109888;
    v50 = HIBYTE(a1);
    v51 = 1024;
    v52 = BYTE2(a1);
    v53 = 1024;
    v54 = BYTE1(a1);
    v55 = 1024;
    v56 = a1;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Size of EAN image '%c%c%c%c' is zero. Returning NULL";
    v20 = 26;
    goto LABEL_27;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], output);
  CFDataSetLength(Mutable, output);
  v59[0] = a1;
  v59[1] = CFDataGetMutableBytePtr(Mutable);
  v59[2] = output;
  v22 = IOConnectCallScalarMethod(connection[0], 4u, v59, 3u, 0, 0);
  if (v22)
  {
    v23 = v22;
    v24 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    v30 = v24 ? v24 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    _MGLog(v30, 246, @"Could not read EAN image '%c%c%c%c' (IOConnectCallScalarMethod kAppleNVMeEANRead returned 0x%X)", v25, v26, v27, v28, v29, HIBYTE(a1), BYTE2(a1), BYTE1(a1), a1, v23);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v50 = HIBYTE(a1);
      v51 = 1024;
      v52 = BYTE2(a1);
      v53 = 1024;
      v54 = BYTE1(a1);
      v55 = 1024;
      v56 = a1;
      v57 = 1024;
      v58 = v23;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not read EAN image '%c%c%c%c' (IOConnectCallScalarMethod kAppleNVMeEANRead returned 0x%X)", buf, 0x20u);
    }
  }

LABEL_29:
  if (connection[0])
  {
    IOServiceClose(connection[0]);
  }

  if (connection[1])
  {
    IOObjectRelease(connection[1]);
  }

  return Mutable;
}

__CFData *sub_1B01BEFE0(unsigned int a1)
{
  v1 = sub_1B01BEBDC(a1);
  v2 = v1;
  if (v1)
  {
    v3 = sub_1B01BF020(v1);
    CFDataSetLength(v2, v3);
  }

  return v2;
}

CFIndex sub_1B01BF020(const __CFData *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v15[0] = CFDataGetBytePtr(a1);
  v15[1] = CFDataGetLength(a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v2 = sub_1B01E7024(v15, &v12, 0);
  if (!v2)
  {
    return v13 - v15[0] + v14;
  }

  v3 = v2;
  v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v4)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  _MGLog(v10, 1225, @"Failed to DERDecode the buffer with status: %d", v5, v6, v7, v8, v9, v3);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v3;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to DERDecode the buffer with status: %d", buf, 8u);
  }

  return CFDataGetLength(a1);
}

const void *sub_1B01BF148()
{
  v86 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&unk_1EB6D00B0);
  v0 = qword_1EB6D00B8;
  v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v1)
  {
    v7 = v1 + 1;
  }

  else
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  if (v0)
  {
    _MGLog(v7, 302, @"%s returning previously initialized sysconfig dictionary", v2, v3, v4, v5, v6, "CFDictionaryRef copySyscfgDictionary(void)");
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      sub_1B01F12E0(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    Copy = CFRetain(qword_1EB6D00B8);
    goto LABEL_53;
  }

  _MGLog(v7, 307, @"%s creating new sysconfig dictionary", v2, v3, v4, v5, v6, "CFDictionaryRef copySyscfgDictionary(void)");
  v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    sub_1B01F135C(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v80 = 0;
  cf = 0;
  v79 = 0;
  v73 = sub_1B01BF69C(&v79, &v80);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 0x40000000;
  v78[2] = sub_1B01BFD48;
  v78[3] = &unk_1E7A930F8;
  v78[4] = Mutable;
  v72 = v79;
  if (v79)
  {
    v26 = MEMORY[0x1E69E9C10];
    v28 = v79;
    v27 = v73;
    do
    {
      v29 = *(v27 + 16);
      v30 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v30)
      {
        v36 = v30 + 1;
      }

      else
      {
        v36 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      v37 = v27[1];
      if ((v29 & 1) == 0)
      {
        _MGLog(v36, 336, @"%s skipping: %@. It is not allowed to be loaded.", v31, v32, v33, v34, v35, "CFDictionaryRef copySyscfgDictionary(void)", v37);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v39 = v27[1];
          *buf = 136315394;
          v83 = "CFDictionaryRef copySyscfgDictionary(void)";
          v84 = 2112;
          v85 = v39;
          _os_log_debug_impl(&dword_1B0190000, v26, OS_LOG_TYPE_DEBUG, "%s skipping: %@. It is not allowed to be loaded.", buf, 0x16u);
        }

        goto LABEL_35;
      }

      _MGLog(v36, 345, @"%s enumerating: %@", v31, v32, v33, v34, v35, "CFDictionaryRef copySyscfgDictionary(void)", v37);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v48 = v27[1];
        *buf = 136315394;
        v83 = "CFDictionaryRef copySyscfgDictionary(void)";
        v84 = 2112;
        v85 = v48;
        _os_log_debug_impl(&dword_1B0190000, v26, OS_LOG_TYPE_DEBUG, "%s enumerating: %@", buf, 0x16u);
      }

      v38 = *v27;
      if (*v27 == 1986883702)
      {
        if ((sub_1B01C0770(v78) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v38 == 1936023916)
      {
        if ((sub_1B01C030C(&v80, v78) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v38 == 1094992961)
      {
        if ((sub_1B01BFF48(v78) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((sub_1B01C07BC(&v80, v27, v78) & 1) == 0)
      {
LABEL_30:
        v40 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
        if (v40)
        {
          v46 = v40 + 1;
        }

        else
        {
          v46 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
        }

        _MGLog(v46, 373, @"%s enumeration of %@ failed.", v41, v42, v43, v44, v45, "CFDictionaryRef copySyscfgDictionary(void)", v27[1]);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v47 = v27[1];
          *buf = 136315394;
          v83 = "CFDictionaryRef copySyscfgDictionary(void)";
          v84 = 2112;
          v85 = v47;
          _os_log_impl(&dword_1B0190000, v26, OS_LOG_TYPE_DEFAULT, "%s enumeration of %@ failed.", buf, 0x16u);
        }
      }

LABEL_35:
      v27 += 3;
      --v28;
    }

    while (v28);
  }

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 0x40000000;
  v75 = sub_1B01C0A08;
  v76 = &unk_1E7A93118;
  v77 = Mutable;
  if (Mutable)
  {
    Count = CFDictionaryGetCount(Mutable);
    v50 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(Mutable, v50, 0);
    v51 = Count - 1;
    if (Count >= 1)
    {
      v52 = v50;
      do
      {
        v53 = v51;
        buf[0] = 0;
        v54 = *v52++;
        Value = CFDictionaryGetValue(Mutable, v54);
        (v75)(v74, v54, Value, buf);
        if (buf[0])
        {
          break;
        }

        v51 = v53 - 1;
      }

      while (v53);
    }

    free(v50);
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], Mutable);
  sub_1B01C0B18(v73, v72);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  LODWORD(v80) = 0;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ"))
  {
    v56 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v56)
    {
      v62 = v56 + 1;
    }

    else
    {
      v62 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v62, 399, @"%s not caching sysconfig dictionary because device is in RestoreOS", v57, v58, v59, v60, v61, "CFDictionaryRef copySyscfgDictionary(void)");
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v63)
    {
      sub_1B01F13D8(v63, v64, v65, v66, v67, v68, v69, v70);
    }
  }

  else
  {
    qword_1EB6D00B8 = CFRetain(Copy);
  }

LABEL_53:
  os_unfair_lock_unlock(&unk_1EB6D00B0);
  return Copy;
}

void *sub_1B01BF69C(_DWORD *a1, uint64_t *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v87 = 0;
  cf = 0;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &v87;
  }

  v3[1] = 0;
  *v3 = 0;
  if (!sub_1B01C204C())
  {
    v22 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v22)
    {
      v28 = v22 + 1;
    }

    else
    {
      v28 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v28, 663, @"EAN is not supported on this device. Building default policy.", v23, v24, v25, v26, v27);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "EAN is not supported on this device. Building default policy.", buf, 2u);
    }

    *a1 = 0;
    goto LABEL_35;
  }

  v4 = sub_1B0192F20("IODeviceTree:/chosen", @"syscfg-erly-kbgs-allow-load", 0);
  v5 = sub_1B0192F20("IODeviceTree:/chosen", @"syscfg-erly-kbgs-data-class", 0);
  v6 = sub_1B0192F20("IODeviceTree:/chosen", @"syscfg-erly-kbgs-allow-unsealed", 0);
  v7 = v6;
  if (!v4 || !v5 || !v6)
  {
    v29 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v29)
    {
      v35 = v29 + 1;
    }

    else
    {
      v35 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v35, 676, @"Failed to copy required 'syscfg-erly-kbgs-*' properties from the EDT", v30, v31, v32, v33, v34);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to copy required 'syscfg-erly-kbgs-*' properties from the EDT", buf, 2u);
    }

    v36 = 0;
    LODWORD(v37) = 0;
    goto LABEL_29;
  }

  Length = CFDataGetLength(v4);
  if (Length != CFDataGetLength(v5) || (v9 = CFDataGetLength(v4), v9 != CFDataGetLength(v7)))
  {
    v47 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v47)
    {
      v48 = v47 + 1;
    }

    else
    {
      v48 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    v49 = CFDataGetLength(v4);
    v50 = CFDataGetLength(v5);
    v51 = CFDataGetLength(v7);
    _MGLog(v48, 690, @"Lengths of 'syscfg-erly-kbgs-*' were not equal. earlyKeyBagsAllowLoad (%d) earlyKeyBagsDataClasses (%d) earlyKeyBagsAllowUnsealed (%d)", v52, v53, v54, v55, v56, v49, v50, v51);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v57 = CFDataGetLength(v4);
    v58 = CFDataGetLength(v5);
    v59 = CFDataGetLength(v7);
    *buf = 67109632;
    v90 = v57;
    v91 = 1024;
    v92 = v58;
    v93 = 1024;
    v94 = v59;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "Lengths of 'syscfg-erly-kbgs-*' were not equal. earlyKeyBagsAllowLoad (%d) earlyKeyBagsDataClasses (%d) earlyKeyBagsAllowUnsealed (%d)";
    v21 = 20;
    goto LABEL_54;
  }

  if (CFDataGetLength(v4) <= 0)
  {
    v60 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v60)
    {
      v66 = v60 + 1;
    }

    else
    {
      v66 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v66, 696, @"Length of 'syscfg-erly-kbgs-allow-load' was 0", v61, v62, v63, v64, v65);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "Length of 'syscfg-erly-kbgs-allow-load' was 0";
LABEL_76:
    v21 = 2;
    goto LABEL_54;
  }

  if ((CFDataGetLength(v4) & 3) != 0)
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v10)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    v12 = CFDataGetLength(v4);
    _MGLog(v11, 702, @"Length of 'syscfg-erly-kbgs-allow-load' (%d) was not a multiple of (%d)", v13, v14, v15, v16, v17, v12, 4);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v18 = CFDataGetLength(v4);
    *buf = 67109376;
    v90 = v18;
    v91 = 1024;
    v92 = 4;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "Length of 'syscfg-erly-kbgs-allow-load' (%d) was not a multiple of (%d)";
    v21 = 14;
LABEL_54:
    _os_log_impl(&dword_1B0190000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
LABEL_55:
    LODWORD(v37) = 0;
    v36 = 0;
    goto LABEL_56;
  }

  BytePtr = CFDataGetBytePtr(v4);
  v68 = CFDataGetBytePtr(v5);
  v69 = CFDataGetBytePtr(v7);
  if ((sub_1B01C0FAC(v3) & 1) == 0)
  {
    v77 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v77)
    {
      v83 = v77 + 1;
    }

    else
    {
      v83 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v83, 711, @"Failed to copy APTicket properties. Falling back to default policy.", v78, v79, v80, v81, v82);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "Failed to copy APTicket properties. Falling back to default policy.";
    goto LABEL_76;
  }

  v85 = v69;
  v86 = v68;
  v37 = CFDataGetLength(v4) >> 2;
  v70 = v37;
  v71 = malloc_type_calloc(v37, 0x18uLL, 0x10600407F5F6BDAuLL);
  v36 = v71;
  if (!v37)
  {
    goto LABEL_56;
  }

  v84 = BytePtr;
  v72 = v71 + 17;
  do
  {
    v73 = *v86++;
    *(v72 - 17) = v73;
    *buf = bswap32(v73);
    *(v72 - 9) = CFStringCreateWithBytes(0, buf, 4, 0x8000100u, 0);
    v74 = *v84;
    v84 += 4;
    *(v72 - 1) = sub_1B01C0E54(v74, v3);
    v75 = *v85;
    v85 += 4;
    if (sub_1B01C0E54(v75, v3))
    {
      v76 = 1;
    }

    else
    {
      v76 = *(v3 + 1);
    }

    *v72 = v76 & 1;
    v72 += 24;
    --v70;
  }

  while (v70);
LABEL_29:
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_56:
  CFRelease(v4);
  if (v5)
  {
LABEL_31:
    CFRelease(v5);
  }

LABEL_32:
  if (v7)
  {
    CFRelease(v7);
  }

  *a1 = v37;
  if (!v36)
  {
LABEL_35:
    v38 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v38)
    {
      v44 = v38 + 1;
    }

    else
    {
      v44 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v44, 621, @"Creating default MGSysConfigPolicy", v39, v40, v41, v42, v43);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Creating default MGSysConfigPolicy", buf, 2u);
    }

    if (sub_1B0198CA8())
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    v36 = malloc_type_calloc(v45, 0x18uLL, 0x10600407F5F6BDAuLL);
    *v36 = 1094992961;
    *buf = 1094992961;
    v36[1] = CFStringCreateWithBytes(0, buf, 4, 0x8000100u, 0);
    *(v36 + 8) = 257;
    if (sub_1B0198CA8())
    {
      *(v36 + 6) = 1986883702;
      *buf = 1987079542;
      v36[4] = CFStringCreateWithBytes(0, buf, 4, 0x8000100u, 0);
      *(v36 + 20) = 257;
    }

    v3[1] = 0;
    *v3 = 0;
    *a1 = v45;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v36;
}

void sub_1B01BFD48(uint64_t a1, unsigned int a2, uint64_t a3, const UInt8 *a4, CFIndex a5)
{
  v29 = *MEMORY[0x1E69E9840];
  *bytes = bswap32(a3);
  v10 = CFStringCreateWithBytes(0, bytes, 4, 0x8000100u, 0);
  v11 = CFDataCreate(*MEMORY[0x1E695E480], a4, a5);
  if (v10)
  {
    if (!CFDictionaryGetValue(*(a1 + 32), v10))
    {
      *bytes = bswap32(a2);
      v12 = CFStringCreateWithBytes(0, bytes, 4, 0x8000100u, 0);
      v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v13)
      {
        v19 = v13 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v19, 324, @"Appending syscfg key (0x%X): %@ from %@", v14, v15, v16, v17, v18, a3, v10, v12);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        sub_1B01F1454(v10, v12, a3);
      }

      CFDictionarySetValue(*(a1 + 32), v10, v11);
      if (v12)
      {
        CFRelease(v12);
      }
    }

    CFRelease(v10);
  }

  else
  {
    v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v20)
    {
      v26 = v20 + 1;
    }

    else
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v26, 318, @"Failed to convert syscfg key 0x%X to string", v21, v22, v23, v24, v25, a3);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *bytes = 67109120;
      v28 = a3;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to convert syscfg key 0x%X to string", bytes, 8u);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t sub_1B01BFF48(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = sub_1B01BEA3C();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Length = CFDataGetLength(v2);
  if (Length <= 0x17)
  {
    v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v5)
    {
      v11 = v5 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v11, 825, @"syscfg length %lu is too small, header size %lu\n", v6, v7, v8, v9, v10, Length, 24);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v50 = Length;
      *&v50[8] = 2048;
      v51 = 24;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "syscfg length %lu is too small, header size %lu\n";
      v14 = 22;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  BytePtr = CFDataGetBytePtr(v3);
  if (*BytePtr == 1396926055)
  {
    v17 = BytePtr;
    v18 = *(BytePtr + 5);
    v19 = 20 * v18 + 24;
    if (Length < v19)
    {
      v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v20)
      {
        v26 = v20 + 1;
      }

      else
      {
        v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v26, 845, @"syscfg length %lu is too small, should be at least %lu to contain %u entries\n", v21, v22, v23, v24, v25, Length, v19, v18);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *v50 = Length;
        *&v50[8] = 2048;
        v51 = 20 * v18 + 24;
        LOWORD(v52) = 1024;
        *(&v52 + 2) = v18;
        v12 = MEMORY[0x1E69E9C10];
        v13 = "syscfg length %lu is too small, should be at least %lu to contain %u entries\n";
        v14 = 28;
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (!v18)
    {
LABEL_37:
      v15 = 1;
      goto LABEL_23;
    }

    v35 = 0;
    v36 = (BytePtr + 36);
    while (1)
    {
      v48 = 0;
      v37 = *(v36 - 3);
      if (v37 == 1129206850)
      {
        v38 = *(v36 - 1);
        v39 = *v36;
        if (Length < v39 || Length < (v38 + v39))
        {
          v41 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
          if (v41)
          {
            v47 = v41 + 1;
          }

          else
          {
            v47 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
          }

          _MGLog(v47, 866, @"syscfg entry %u offset %u, len %u is out of range; syscfg length is %lu\n", v42, v43, v44, v45, v46, v35, v39, v38, Length);
          v15 = 0;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109888;
            *v50 = v35;
            *&v50[4] = 1024;
            *&v50[6] = v39;
            LOWORD(v51) = 1024;
            *(&v51 + 2) = v38;
            HIWORD(v51) = 2048;
            v52 = Length;
            v12 = MEMORY[0x1E69E9C10];
            v13 = "syscfg entry %u offset %u, len %u is out of range; syscfg length is %lu\n";
            v14 = 30;
LABEL_21:
            _os_log_impl(&dword_1B0190000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        (*(a1 + 16))(a1, 1094992961, *(v36 - 2), &v17[v39], *(v36 - 1), &v48);
      }

      else
      {
        (*(a1 + 16))(a1, 1094992961, v37, v36 - 2, 16, &v48);
      }

      if (v48 != 1)
      {
        ++v35;
        v36 += 5;
        if (v18 != v35)
        {
          continue;
        }
      }

      goto LABEL_37;
    }
  }

  v27 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v27)
  {
    v33 = v27 + 1;
  }

  else
  {
    v33 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  _MGLog(v33, 834, @"syscfg is not initialized!\n", v28, v29, v30, v31, v32);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "syscfg is not initialized!\n";
    v14 = 2;
    goto LABEL_21;
  }

LABEL_22:
  v15 = 0;
LABEL_23:
  CFRelease(v3);
  return v15;
}

uint64_t sub_1B01C030C(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = sub_1B01BEFE0(0x74727374u);
  v5 = sub_1B01BEFE0(0x7365616Cu);
  if (!v5)
  {
    v22 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v22)
    {
      v28 = v22 + 1;
    }

    else
    {
      v28 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v28, 1059, @"failed to copy EAN data for 'seal' - non-fatal.", v23, v24, v25, v26, v27);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "failed to copy EAN data for 'seal' - non-fatal.";
    goto LABEL_23;
  }

  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || sub_1B01C1CBC(a1, v5, v4))
  {
    if (qword_1EB6D00F0 != -1)
    {
      sub_1B01F14E8();
    }

    v6 = qword_1EB6D0100;
    if (qword_1EB6D0100)
    {
      v7 = dword_1EB6D00F8;
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v5);
      v10 = sub_1B01ED5B0(BytePtr, Length, v59);
      if (!v10)
      {
        if (v7)
        {
          v45 = MEMORY[0x1E69E9C10];
          do
          {
            v55 = 0;
            v56 = 0;
            sub_1B01ED2C8(v59, 1296125520, *v6, &v56, &v55);
            if (v46)
            {
              *buf = bswap32(*v6);
              v47 = CFStringCreateWithBytes(0, buf, 4, 0x8000100u, 0);
              v48 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
              if (v48)
              {
                v54 = v48 + 1;
              }

              else
              {
                v54 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
              }

              _MGLog(v54, 1113, @"Sealing manifest property '%@' did not exist in the sealing manifest", v49, v50, v51, v52, v53, v47);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v58 = v47;
                _os_log_impl(&dword_1B0190000, v45, OS_LOG_TYPE_DEFAULT, "Sealing manifest property '%@' did not exist in the sealing manifest", buf, 0xCu);
              }

              if (v47)
              {
                CFRelease(v47);
              }
            }

            else
            {
              buf[0] = 0;
              (*(a2 + 16))(a2, 1936023916, *v6, v56, v55, buf);
              if (buf[0])
              {
                goto LABEL_25;
              }
            }

            ++v6;
            --v7;
          }

          while (v7);
        }

        goto LABEL_25;
      }

      v11 = v10;
      v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v12)
      {
        v18 = v12 + 1;
      }

      else
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v18, 1086, @"Failed to initialize Img4 manifest with status: 0x%X", v13, v14, v15, v16, v17, v11);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v36 = 1;
        goto LABEL_26;
      }

      *buf = 67109120;
      LODWORD(v58) = v11;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "Failed to initialize Img4 manifest with status: 0x%X";
      v21 = 8;
LABEL_24:
      _os_log_impl(&dword_1B0190000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
      goto LABEL_25;
    }

    v29 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v29)
    {
      v35 = v29 + 1;
    }

    else
    {
      v35 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v35, 1077, @"Failed to copy sealing manifest allowlist.", v30, v31, v32, v33, v34);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "Failed to copy sealing manifest allowlist.";
LABEL_23:
    v21 = 2;
    goto LABEL_24;
  }

  v38 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v38)
  {
    v44 = v38 + 1;
  }

  else
  {
    v44 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  _MGLog(v44, 1068, @"_sealingManifestTrusted returned false", v39, v40, v41, v42, v43);
  v36 = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_sealingManifestTrusted returned false", buf, 2u);
    v36 = 0;
  }

LABEL_26:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v36;
}

const __CFData *sub_1B01C0770(uint64_t a1)
{
  result = sub_1B01BEB90();
  if (result)
  {
    v3 = result;
    v4 = sub_1B01C1270(result, 1986883702, a1);
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t sub_1B01C07BC(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = sub_1B01BEFE0(*a2);
  v8 = sub_1B01BEFE0(0x74727374u);
  v9 = sub_1B01BEFE0(0x7365616Cu);
  if (v7)
  {
    v10 = sub_1B01C152C(a2, a1, v7, v9, v8);
    if (v10)
    {
      v11 = v10;
      if (qword_1EB6D00D8 != -1)
      {
        sub_1B01F14FC();
      }

      v12 = sub_1B01C1270(v11, v6, a3);
      CFRelease(v11);
    }

    else
    {
      v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v20)
      {
        v26 = v20 + 1;
      }

      else
      {
        v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v26, 1034, @"_decodeFDRDataClass returned NULL", v21, v22, v23, v24, v25);
      v12 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_decodeFDRDataClass returned NULL", buf, 2u);
        v12 = 0;
      }
    }

    CFRelease(v7);
    if (v8)
    {
LABEL_19:
      CFRelease(v8);
    }
  }

  else
  {
    v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v13)
    {
      v19 = v13 + 1;
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v19, 1025, @"failed to copy EAN data for key %c%c%c%c - non fatal", v14, v15, v16, v17, v18, BYTE3(v6), BYTE2(v6), BYTE1(v6), v6);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v29 = BYTE3(v6);
      v30 = 1024;
      v31 = BYTE2(v6);
      v32 = 1024;
      v33 = BYTE1(v6);
      v34 = 1024;
      v35 = v6;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to copy EAN data for key %c%c%c%c - non fatal", buf, 0x1Au);
    }

    v12 = 1;
    if (v8)
    {
      goto LABEL_19;
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

void sub_1B01C0A08(uint64_t a1, const void *a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(a3) && !CFDataGetLength(a3))
  {
    v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v7)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v13, 386, @"Removing zero length key: %@", v8, v9, v10, v11, v12, a2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = a2;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing zero length key: %@", buf, 0xCu);
    }

    CFDictionaryRemoveValue(*(a1 + 32), a2);
  }
}

void sub_1B01C0B18(CFTypeRef *a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1 + 1;
    do
    {
      v5 = v4 - 1;
      if (*v4)
      {
        CFRelease(*v4);
      }

      *v5 = 0;
      *v4 = 0;
      v4 += 3;
      v5[2] = 0;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t sub_1B01C0B84(unsigned int a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = sub_1B019E100(a1, -1);
  if (v2)
  {
    v3 = v2;
    buf = 0uLL;
    sub_1B01C0CF4(v2, &buf);
    v4 = HIDWORD(buf);
    CFRelease(v3);
  }

  else
  {
    v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    v11 = HIBYTE(a1);
    if (v5)
    {
      v12 = v5 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    v13 = BYTE2(a1);
    v14 = BYTE1(a1);
    v15 = a1;
    _MGLog(v12, 435, @"no value found for key %c%c%c%c", v6, v7, v8, v9, v10, HIBYTE(a1), BYTE2(a1), BYTE1(a1), a1);
    v4 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *&buf = __PAIR64__(v11, 67109888);
      WORD4(buf) = 1024;
      *(&buf + 10) = v13;
      HIWORD(buf) = 1024;
      v18 = v14;
      v19 = 1024;
      v20 = v15;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no value found for key %c%c%c%c", &buf, 0x1Au);
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B01C0CC8(const __CFData *a1)
{
  v2 = 0uLL;
  sub_1B01C0CF4(a1, &v2);
  return HIDWORD(v2);
}

void sub_1B01C0CF4(const __CFData *a1, _OWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (BytePtr && (v5 = BytePtr, v6 = CFGetTypeID(a1), v6 == CFDataGetTypeID()) && CFDataGetLength(a1) == 16)
    {
      *a2 = *v5;
    }

    else
    {
      v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v7)
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v13, 459, @"failed to get to cookSyscfgColorData %@", v8, v9, v10, v11, v12, a1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = a1;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to get to cookSyscfgColorData %@", buf, 0xCu);
      }
    }
  }
}

uint64_t sub_1B01C0E14(const __CFData *a1)
{
  v2 = 0uLL;
  sub_1B01C0CF4(a1, &v2);
  if (v2 == 2)
  {
    return DWORD2(v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1B01C0E54(uint64_t a1, _BYTE *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 <= 1702060896)
  {
    if (!a1)
    {
LABEL_16:
      v3 = 0;
      return v3 & 1;
    }

    if (a1 == 1)
    {
      v3 = 1;
      return v3 & 1;
    }

LABEL_11:
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v4)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v10, 612, @"%s unexpected policy criteria: (0x%X)", v5, v6, v7, v8, v9, "_Bool _policyCriteriaCheck(uint32_t, const MGAPTicket_s *)", a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "_Bool _policyCriteriaCheck(uint32_t, const MGAPTicket_s *)";
      v14 = 1024;
      v15 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s unexpected policy criteria: (0x%X)", buf, 0x12u);
    }

    goto LABEL_16;
  }

  if (a1 == 1702060897)
  {
    v3 = a2[3];
    return v3 & 1;
  }

  if (a1 == 1717663091)
  {
    v3 = a2[1];
    return v3 & 1;
  }

  if (a1 != 1718838113)
  {
    goto LABEL_11;
  }

  v3 = a2[2];
  return v3 & 1;
}

uint64_t sub_1B01C0FAC(_OWORD *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  cf[1] = 0;
  v2 = sub_1B01BEFE0(0x6170746Bu);
  memset(v32, 0, 3);
  if (v2)
  {
    v3 = v2;
    if (sub_1B01C2098(v2, "suafacsfacse", 3, v32, 0, &cf[1]))
    {
      BYTE1(cf[0]) = v32[0];
      WORD1(cf[0]) = *(v32 + 1);
      v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v4)
      {
        v10 = v4 + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      if (BYTE1(cf[0]))
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      if (BYTE2(cf[0]))
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      if (BYTE3(cf[0]))
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      _MGLog(v10, 1378, @"APTicketProperties: {\n\tfaus: %s\n\tfsca: %s\n\tesca: %s\n\ttrustObject: %@\n}", v5, v6, v7, v8, v9, v11, v12, v13, cf[1]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        if (BYTE1(cf[0]))
        {
          v14 = "YES";
        }

        else
        {
          v14 = "NO";
        }

        if (BYTE2(cf[0]))
        {
          v15 = "YES";
        }

        else
        {
          v15 = "NO";
        }

        if (BYTE3(cf[0]))
        {
          v16 = "YES";
        }

        else
        {
          v16 = "NO";
        }

        *buf = 136315906;
        v35 = v14;
        v36 = 2080;
        v37 = v15;
        v38 = 2080;
        v39 = v16;
        v40 = 2112;
        v41 = cf[1];
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "APTicketProperties: {\n\tfaus: %s\n\tfsca: %s\n\tesca: %s\n\ttrustObject: %@\n}", buf, 0x2Au);
      }

      LOBYTE(cf[0]) = 1;
      if (cf[1])
      {
        CFRetain(cf[1]);
      }

      *a1 = *cf;
    }

    else
    {
      v24 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v24)
      {
        v30 = v24 + 1;
      }

      else
      {
        v30 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v30, 1361, @"Failed to decode 'aptk'", v25, v26, v27, v28, v29);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to decode 'aptk'", buf, 2u);
      }
    }

    CFRelease(v3);
    if (cf[1])
    {
      CFRelease(cf[1]);
    }
  }

  else
  {
    v17 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v17)
    {
      v23 = v17 + 1;
    }

    else
    {
      v23 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v23, 1353, @"Failed to copy 'aptk' from EAN", v18, v19, v20, v21, v22);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to copy 'aptk' from EAN", buf, 2u);
    }
  }

  return LOBYTE(cf[0]);
}

uint64_t sub_1B01C1270(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  Length = CFDataGetLength(a1);
  if (Length >= 0x100000000)
  {
    v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v7)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v13, 896, @"SysConfig data greater than UINT32_MAX", v8, v9, v10, v11, v12);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "SysConfig data greater than UINT32_MAX";
LABEL_29:
    _os_log_impl(&dword_1B0190000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
LABEL_30:
    v22 = 0;
    return v22 & 1;
  }

  v16 = Length;
  BytePtr = CFDataGetBytePtr(a1);
  v18 = sub_1B01EEBCC(BytePtr, v16);
  if (!v18)
  {
    v36 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v36)
    {
      v42 = v36 + 1;
    }

    else
    {
      v42 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v42, 909, @"decodeSysConfig3 returned NULL", v37, v38, v39, v40, v41);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "decodeSysConfig3 returned NULL";
    goto LABEL_29;
  }

  v19 = v18;
  v20 = sub_1B01EFD50(v18);
  if (v20)
  {
    v21 = v20;
    v22 = 1;
    do
    {
      v47 = 0;
      *buf = 0;
      v46 = 0;
      v23 = sub_1B01EF554(v21);
      v24 = sub_1B01EF580(v21, buf);
      v25 = sub_1B01EF560(v21);
      v26 = sub_1B01EF574(v21);
      if (v24)
      {
        (*(a3 + 16))(a3, a2, v23, *buf, v46, &v47);
      }

      else
      {
        v27 = v26;
        if (v26)
        {
          v28 = strlen(v26);
          (*(a3 + 16))(a3, a2, v23, v27, v28, &v47);
        }

        else if (v25)
        {
          (*(a3 + 16))(a3, a2, v23, 0, 0, &v47);
        }

        else
        {
          v29 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
          if (v29)
          {
            v35 = v29 + 1;
          }

          else
          {
            v35 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
          }

          _MGLog(v35, 941, @"Unexpected libSysConfig3 payload state", v30, v31, v32, v33, v34);
          v22 = 0;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v44 = 0;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected libSysConfig3 payload state", v44, 2u);
            v22 = 0;
          }
        }
      }

      if (v47 == 1)
      {
        break;
      }

      v21 = sub_1B01EF5F8(v21);
    }

    while (v21);
  }

  else
  {
    v22 = 1;
  }

  sub_1B01EFCCC(v19);
  return v22 & 1;
}

CFDataRef sub_1B01C152C(uint64_t a1, uint64_t a2, const __CFData *a3, const __CFData *a4, const __CFData *a5)
{
  v88 = *MEMORY[0x1E69E9840];
  if (qword_1EB6D0128 != -1)
  {
    sub_1B01F1510();
  }

  if (off_1EB6D0130)
  {
    memset(length, 0, sizeof(length));
    v61 = 0;
    *bytes = bswap32(*a1);
    v10 = CFStringCreateWithBytes(0, bytes, 4, 0x8000100u, 0);
    if (qword_1EB6D0128 != -1)
    {
      sub_1B01F1524();
    }

    v11 = off_1EB6D0130(@"seal", &v61);
    if (qword_1EB6D0128 != -1)
    {
      sub_1B01F1524();
    }

    v12 = off_1EB6D0130(v10, &v61);
    v13 = *(a2 + 8);
    if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || *(a1 + 17) == 1)
    {
      v14 = 14;
    }

    else
    {
      v14 = 0;
    }

    if ((*(a1 + 16) & 1) == 0)
    {
      cf = v11;
      v30 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v30)
      {
        v36 = v30 + 1;
      }

      else
      {
        v36 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v36, 1436, @"%s dataClass '%@' is not allowed to load.", v31, v32, v33, v34, v35, "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)", v10);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *bytes = 136315394;
        v64 = "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)";
        v65 = 2112;
        v66 = v10;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s dataClass '%@' is not allowed to load.", bytes, 0x16u);
      }

      v28 = 0;
      v26 = 0;
      ExternalRepresentation = 0;
      goto LABEL_63;
    }

    v59 = v14;
    if (v11)
    {
      if (v12)
      {
LABEL_24:
        v23 = v12;
        v24 = *MEMORY[0x1E695E480];
        ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], v10, 0x8000100u, 0x20u);
        cf = v11;
        v26 = CFStringCreateExternalRepresentation(v24, v11, 0x8000100u, 0x20u);
        allocator = v24;
        v27 = v24;
        v12 = v23;
        v28 = CFStringCreateExternalRepresentation(v27, v23, 0x8000100u, 0x20u);
        if (qword_1EB6D00E0 != -1)
        {
          sub_1B01F154C();
        }

        v86 = 0u;
        v87 = 0;
        v85 = 0u;
        v84 = 0u;
        v83 = 0u;
        v82 = 0u;
        v81 = 0u;
        v80 = 0u;
        v79 = 0u;
        v78 = 0u;
        v77 = 0u;
        v76 = 0u;
        v75 = 0u;
        v74 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        BytePtr = CFDataGetBytePtr(a3);
        LODWORD(v70) = CFDataGetLength(a3);
        if (a5)
        {
          *(&v70 + 1) = CFDataGetBytePtr(a5);
          v29 = CFDataGetLength(a5);
        }

        else
        {
          v29 = 0;
          *(&v70 + 1) = 0;
        }

        LODWORD(v71) = v29;
        if (a4)
        {
          *(&v71 + 1) = CFDataGetBytePtr(a4);
          v37 = CFDataGetLength(a4);
        }

        else
        {
          v37 = 0;
          *(&v71 + 1) = 0;
        }

        LODWORD(v72) = v37;
        if (v13)
        {
          *(&v72 + 1) = CFDataGetBytePtr(v13);
          v38 = CFDataGetLength(v13);
        }

        else
        {
          v38 = 0;
          *(&v72 + 1) = 0;
        }

        LODWORD(v73) = v38;
        if (ExternalRepresentation)
        {
          *(&v73 + 1) = CFDataGetBytePtr(ExternalRepresentation);
          v39 = CFDataGetLength(ExternalRepresentation);
        }

        else
        {
          v39 = 0;
          *(&v73 + 1) = 0;
        }

        LODWORD(v74) = v39;
        if (v28)
        {
          *(&v74 + 1) = CFDataGetBytePtr(v28);
          v40 = CFStringGetLength(v12);
        }

        else
        {
          v40 = 0;
          *(&v74 + 1) = 0;
        }

        LODWORD(v75) = v40;
        if (v26)
        {
          *(&v75 + 1) = CFDataGetBytePtr(v26);
          v41 = CFDataGetLength(v26);
        }

        else
        {
          v41 = 0;
          *(&v75 + 1) = 0;
        }

        LODWORD(v76) = v41;
        *(&v76 + 1) = 0;
        LODWORD(v77) = 0;
        *(&v77 + 1) = 0;
        LODWORD(v78) = 0;
        *(&v78 + 1) = v59;
        *(&v83 + 1) = 0;
        LODWORD(v84) = 0;
        *(&v84 + 1) = 0;
        LODWORD(v85) = 0;
        *(&v85 + 1) = 0;
        LODWORD(v86) = 0;
        *(&v86 + 1) = 0;
        LODWORD(v87) = 0;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        LODWORD(v83) = 0;
        v42 = sub_1B01EA7E4(&BytePtr, &length[1], length);
        v43 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
        if (v43)
        {
          v49 = v43 + 1;
        }

        else
        {
          v49 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
        }

        _MGLog(v49, 1483, @"%s AMFDRDecodeTrustEvaluation status 0x%llX for dataClass '%@'", v44, v45, v46, v47, v48, "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)", v42, v10);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *bytes = 136315650;
          v64 = "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)";
          v65 = 2048;
          v66 = v42;
          v67 = 2112;
          v68 = v10;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s AMFDRDecodeTrustEvaluation status 0x%llX for dataClass '%@'", bytes, 0x20u);
        }

        v50 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
        if (v50)
        {
          v56 = v50 + 1;
        }

        else
        {
          v56 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
        }

        if (!v42)
        {
          _MGLog(v56, 1497, @"%s attempting to create CFData with %p and length: %d", v51, v52, v53, v54, v55, "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)", *&length[1], length[0]);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *bytes = 136315650;
            v64 = "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)";
            v65 = 2048;
            v66 = *&length[1];
            v67 = 1024;
            LODWORD(v68) = length[0];
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s attempting to create CFData with %p and length: %d", bytes, 0x1Cu);
          }

          v22 = 0;
          if (*&length[1] && length[0])
          {
            v22 = CFDataCreate(allocator, *&length[1], length[0]);
          }

          goto LABEL_64;
        }

        _MGLog(v56, 1490, @"%s AMFDRDecodeTrustEvaluation status 0x%llX for dataClass '%@'. Critical error, skipping data class.", v51, v52, v53, v54, v55, "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)", v42, v10);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *bytes = 136315650;
          v64 = "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)";
          v65 = 2048;
          v66 = v42;
          v67 = 2112;
          v68 = v10;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s AMFDRDecodeTrustEvaluation status 0x%llX for dataClass '%@'. Critical error, skipping data class.", bytes, 0x20u);
        }

LABEL_63:
        v22 = 0;
LABEL_64:
        if (v10)
        {
          CFRelease(v10);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (ExternalRepresentation)
        {
          CFRelease(ExternalRepresentation);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (v61)
        {
          CFRelease(v61);
        }

        return v22;
      }
    }

    else
    {
      v11 = CFRetain(@"UNKNOWN");
      if (v12)
      {
        goto LABEL_24;
      }
    }

    v12 = CFRetain(@"UNKNOWN");
    goto LABEL_24;
  }

  v15 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v16)
  {
    v15 = v16 + 1;
  }

  if (qword_1EB6D0128 != -1)
  {
    sub_1B01F1510();
  }

  _MGLog(v15, 1402, @"%s Unable to find required libFDR symbols. _AMFDRSealingMapCopyInstanceForClass_fn %p", v17, v18, v19, v20, v21, "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)", off_1EB6D0130);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    if (qword_1EB6D0128 != -1)
    {
      sub_1B01F1510();
    }

    *bytes = 136315394;
    v64 = "CFDataRef _decodeFDRDataClass(const MGSysConfigPolicy_s *, const MGAPTicket_s *, CFDataRef, CFDataRef, CFDataRef)";
    v65 = 2048;
    v66 = off_1EB6D0130;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s Unable to find required libFDR symbols. _AMFDRSealingMapCopyInstanceForClass_fn %p", bytes, 0x16u);
  }

  return 0;
}

BOOL sub_1B01C1CBC(uint64_t a1, const __CFData *a2, const __CFData *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if (qword_1EB6D0128 != -1)
  {
    sub_1B01F1510();
  }

  if (off_1EB6D0130)
  {
    v33 = 0;
    v32 = 0;
    cf = 0;
    v6 = off_1EB6D0130(@"seal", &cf);
    v7 = *(a1 + 8);
    if (!v6)
    {
      v6 = CFRetain(@"UNKNOWN");
    }

    v8 = v6;
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], v6, 0x8000100u, 0x20u);
    if (qword_1EB6D00E0 != -1)
    {
      sub_1B01F154C();
    }

    v52 = 0u;
    v53 = 0;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    *&buf[8] = 0u;
    *buf = CFDataGetBytePtr(a2);
    *&buf[8] = CFDataGetLength(a2);
    if (a3)
    {
      *&buf[16] = CFDataGetBytePtr(a3);
      Length = CFDataGetLength(a3);
    }

    else
    {
      Length = 0;
      *&buf[16] = 0;
    }

    LODWORD(v37) = Length;
    if (v7)
    {
      *(&v38 + 1) = CFDataGetBytePtr(v7);
      v19 = CFDataGetLength(v7);
    }

    else
    {
      v19 = 0;
      *(&v38 + 1) = 0;
    }

    LODWORD(v39) = v19;
    if (ExternalRepresentation)
    {
      *(&v41 + 1) = CFDataGetBytePtr(ExternalRepresentation);
      v20 = CFDataGetLength(ExternalRepresentation);
    }

    else
    {
      v20 = 0;
      *(&v41 + 1) = 0;
    }

    LODWORD(v42) = v20;
    *(&v44 + 1) = 128;
    v21 = sub_1B01EA7E4(buf, &v33, &v32);
    v18 = v21 == 0;
    if (v21)
    {
      v22 = v21;
      v23 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      v29 = v23 ? v23 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      _MGLog(v29, 1774, @"Manifest trust evaluation failed with status 0x%llX", v24, v25, v26, v27, v28, v22);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 134217984;
        v35 = v22;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Manifest trust evaluation failed with status 0x%llX", v34, 0xCu);
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (ExternalRepresentation)
    {
      CFRelease(ExternalRepresentation);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v12)
    {
      v11 = v12 + 1;
    }

    if (qword_1EB6D0128 != -1)
    {
      sub_1B01F1510();
    }

    _MGLog(v11, 1728, @"%s Unable to find required libFDR symbols. _AMFDRSealingMapCopyInstanceForClass_fn %p", v13, v14, v15, v16, v17, "_Bool _sealingManifestTrusted(const MGAPTicket_s *, CFDataRef, CFDataRef)", off_1EB6D0130);
    v18 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      if (qword_1EB6D0128 != -1)
      {
        sub_1B01F1510();
      }

      *buf = 136315394;
      *&buf[4] = "_Bool _sealingManifestTrusted(const MGAPTicket_s *, CFDataRef, CFDataRef)";
      *&buf[12] = 2048;
      *&buf[14] = off_1EB6D0130;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s Unable to find required libFDR symbols. _AMFDRSealingMapCopyInstanceForClass_fn %p", buf, 0x16u);
      return 0;
    }
  }

  return v18;
}

BOOL sub_1B01C204C()
{
  v0 = sub_1B0192F20("IODeviceTree:/defaults", @"ean-storage-present", 0);
  v1 = v0;
  if (v0)
  {
    CFRelease(v0);
  }

  return v1 != 0;
}

uint64_t sub_1B01C2098(const __CFData *a1, unsigned int *a2, uint64_t a3, BOOL *a4, BOOL *a5, CFDataRef *a6)
{
  v85 = *MEMORY[0x1E69E9840];
  v11 = sub_1B0192F20("IODeviceTree:/chosen/secure-boot-hashes", @"sfr-manifest-hash", 0);
  v12 = sub_1B0192F20("IODeviceTree:/chosen", @"crypto-hash-method", 0);
  v13 = v12;
  if (v12)
  {
    v14 = *MEMORY[0x1E695E480];
    BytePtr = CFDataGetBytePtr(v12);
    v16 = CFDataGetBytePtr(v13);
    Length = CFDataGetLength(v13);
    v18 = strnlen(v16, Length);
    v19 = CFStringCreateWithBytes(v14, BytePtr, v18, 0x8000100u, 0);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v11 = sub_1B0192F20("IODeviceTree:/chosen", @"boot-manifest-hash", 0);
  if (v11)
  {
LABEL_6:
    if (v13)
    {
      if (v19)
      {
        if (!sub_1B01C25E8(a1, v11, v19))
        {
          v50 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
          if (v50)
          {
            v56 = v50 + 1;
          }

          else
          {
            v56 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
          }

          _MGLog(v56, 1291, @"%s APTicket verification failed!", v51, v52, v53, v54, v55, "_Bool _decodeAPTicket(CFDataRef, uint32_t *, size_t, _Bool *, _Bool *, CFDataRef *)");
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          *buf = 136315138;
          *v82 = "_Bool _decodeAPTicket(CFDataRef, uint32_t *, size_t, _Bool *, _Bool *, CFDataRef *)";
          v33 = MEMORY[0x1E69E9C10];
          v34 = "%s APTicket verification failed!";
          v35 = 12;
          goto LABEL_32;
        }

        v84 = 0;
        memset(v83, 0, sizeof(v83));
        v20 = CFDataGetBytePtr(a1);
        v21 = CFDataGetLength(a1);
        v22 = sub_1B01ED5B0(v20, v21, v83);
        if (v22)
        {
          v25 = v22;
          v26 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
          if (v26)
          {
            v32 = v26 + 1;
          }

          else
          {
            v32 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
          }

          _MGLog(v32, 1301, @"Img4DecodeInitManifest failed with code %d (0x%X)", v27, v28, v29, v30, v31, v25, v25);
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          *buf = 67109376;
          *v82 = v25;
          *&v82[4] = 1024;
          *&v82[6] = v25;
          v33 = MEMORY[0x1E69E9C10];
          v34 = "Img4DecodeInitManifest failed with code %d (0x%X)";
          goto LABEL_15;
        }

        if (a3)
        {
          v66 = a5;
          do
          {
            v67 = *a2++;
            v68 = sub_1B01ED19C(v83, 0, v67, a4, v23, v24);
            if (a5)
            {
              *v66 = v68 == 0;
            }

            ++v66;
            ++a4;
            --a3;
          }

          while (a3);
        }

        if (a6)
        {
          v79 = 0;
          v80 = 0;
          sub_1B01ED2C8(v83, 1718903152, 1145525076, &v80, &v79);
          if (v69)
          {
            v70 = v69;
            v71 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
            if (v71)
            {
              v77 = v71 + 1;
            }

            else
            {
              v77 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
            }

            _MGLog(v77, 1322, @"Img4DecodeInitManifest failed get trust object digest with code %d (0x%X)", v72, v73, v74, v75, v76, v70, v70);
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_33;
            }

            *buf = 67109376;
            *v82 = v70;
            *&v82[4] = 1024;
            *&v82[6] = v70;
            v33 = MEMORY[0x1E69E9C10];
            v34 = "Img4DecodeInitManifest failed get trust object digest with code %d (0x%X)";
LABEL_15:
            v35 = 14;
LABEL_32:
            _os_log_impl(&dword_1B0190000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, v35);
LABEL_33:
            v57 = 0;
LABEL_34:
            CFRelease(v11);
            goto LABEL_35;
          }

          *a6 = CFDataCreate(0, v80, v79);
        }

        v57 = 1;
        goto LABEL_34;
      }

      v43 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v43)
      {
        v49 = v43 + 1;
      }

      else
      {
        v49 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v49, 1283, @"Unable to copy the cryptoHashMethodStr", v44, v45, v46, v47, v48);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v33 = MEMORY[0x1E69E9C10];
      v34 = "Unable to copy the cryptoHashMethodStr";
    }

    else
    {
      v36 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v36)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v42, 1277, @"Unable to copy the cryptoHashMethod", v37, v38, v39, v40, v41);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v33 = MEMORY[0x1E69E9C10];
      v34 = "Unable to copy the cryptoHashMethod";
    }

    v35 = 2;
    goto LABEL_32;
  }

  v59 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v59)
  {
    v65 = v59 + 1;
  }

  else
  {
    v65 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  _MGLog(v65, 1271, @"Unable to copy the bootManifestHash", v60, v61, v62, v63, v64);
  v57 = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to copy the bootManifestHash", buf, 2u);
    v57 = 0;
  }

LABEL_35:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v57;
}

BOOL sub_1B01C25E8(const __CFData *a1, const __CFData *a2, CFStringRef theString1)
{
  v100 = *MEMORY[0x1E69E9840];
  if (CFStringCompare(theString1, @"sha1", 0) == kCFCompareEqualTo)
  {
    BytePtr = CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    v19 = sub_1B01F5240(BytePtr);
    v20 = 20;
    v21 = off_1F26379B8;
    if (!v19)
    {
LABEL_15:
      if (v20 == CFDataGetLength(a2))
      {
        v30 = CFDataGetBytePtr(a2);
        if (memcmp(__s1, v30, v20))
        {
          v31 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
          if (v31)
          {
            v37 = v31 + 1;
          }

          else
          {
            v37 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
          }

          _MGLog(v37, 1691, @"The APTicket and boot manifest digest do not match!", v32, v33, v34, v35, v36);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "The APTicket and boot manifest digest do not match!", buf, 2u);
          }

          if (!MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") && sub_1B01998E0("IODeviceTree:/chosen", @"mix-n-match-prevention-status", 0))
          {
            return 0;
          }

          v99 = 0;
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
          v73 = 0u;
          v74 = 0u;
          memset(buf, 0, sizeof(buf));
          v71[0] = MGGetSInt64Answer(@"566JrJVMlDfnslGpwUzNlQ", 0);
          v71[1] = MGGetSInt64Answer(@"TF31PAB6aO8KAbPyNKSxKA", 0);
          v38 = CFDataGetBytePtr(a1);
          Length = CFDataGetLength(a1);
          v40 = sub_1B01ED5B0(v38, Length, buf);
          if (v40)
          {
            v41 = v40;
            v42 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
            if (v42)
            {
              v48 = v42 + 1;
            }

            else
            {
              v48 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
            }

            _MGLog(v48, 1629, @"%s failed Img4DecodeInitManifest with error %d", v43, v44, v45, v46, v47, "_Bool _verifyAPTicketIsAppleSigned(CFDataRef, const Img4DecodeImplementation *)", v41);
            result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            v67 = 136315394;
            v68 = "_Bool _verifyAPTicketIsAppleSigned(CFDataRef, const Img4DecodeImplementation *)";
            v69 = 1024;
            v70 = v41;
            v14 = MEMORY[0x1E69E9C10];
            v15 = "%s failed Img4DecodeInitManifest with error %d";
            goto LABEL_44;
          }

          v57 = sub_1B01ED704(1919317089, buf, sub_1B01C3350, v21, v71);
          if (v57)
          {
            v58 = v57;
            v59 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
            if (v59)
            {
              v65 = v59 + 1;
            }

            else
            {
              v65 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
            }

            _MGLog(v65, 1637, @"%s failed Img4DecodePerformTrustEvaluation with error %d", v60, v61, v62, v63, v64, "_Bool _verifyAPTicketIsAppleSigned(CFDataRef, const Img4DecodeImplementation *)", v58);
            result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            v67 = 136315394;
            v68 = "_Bool _verifyAPTicketIsAppleSigned(CFDataRef, const Img4DecodeImplementation *)";
            v69 = 1024;
            v70 = v58;
            v14 = MEMORY[0x1E69E9C10];
            v15 = "%s failed Img4DecodePerformTrustEvaluation with error %d";
LABEL_44:
            v16 = &v67;
            v17 = 18;
            goto LABEL_35;
          }
        }

        return 1;
      }

      v49 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      v50 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v50)
      {
        v49 = v50 + 1;
      }

      v51 = CFDataGetLength(a2);
      _MGLog(v49, 1678, @"The APTicket boot manifest digest lengths did not match %d != %d", v52, v53, v54, v55, v56, v20, v51);
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 67109376;
      *&buf[4] = v20;
      *&buf[8] = 1024;
      *&buf[10] = CFDataGetLength(a2);
      v14 = MEMORY[0x1E69E9C10];
      v15 = "The APTicket boot manifest digest lengths did not match %d != %d";
LABEL_34:
      v16 = buf;
      v17 = 14;
      goto LABEL_35;
    }

LABEL_9:
    v22 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v22)
    {
      v28 = v22 + 1;
    }

    else
    {
      v28 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v28, 1672, @"Failed to digest APTicket with error %d (0x%X)", v23, v24, v25, v26, v27, v19, v19);
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 67109376;
    *&buf[4] = v19;
    *&buf[8] = 1024;
    *&buf[10] = v19;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "Failed to digest APTicket with error %d (0x%X)";
    goto LABEL_34;
  }

  if (CFStringCompare(theString1, @"sha2-384", 0) == kCFCompareEqualTo)
  {
    v29 = CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    v19 = sub_1B01F52E8(v29);
    v20 = 48;
    v21 = off_1F26379F0;
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v6)
  {
    v12 = v6 + 1;
  }

  else
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  _MGLog(v12, 1665, @"Crypto hash method is '%@'. Current support is for hash methods '%@' and '%@'", v7, v8, v9, v10, v11, theString1, @"sha1", @"sha2-384");
  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 138412802;
    *&buf[4] = theString1;
    *&buf[12] = 2112;
    *&buf[14] = @"sha1";
    *&buf[22] = 2112;
    *&buf[24] = @"sha2-384";
    v14 = MEMORY[0x1E69E9C10];
    v15 = "Crypto hash method is '%@'. Current support is for hash methods '%@' and '%@'";
    v16 = buf;
    v17 = 32;
LABEL_35:
    _os_log_impl(&dword_1B0190000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, v17);
    return 0;
  }

  return result;
}

void sub_1B01C2B40()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0192F20("IODeviceTree:/chosen", @"syscfg-seal-keys-allowed", 0);
  qword_1EB6D00E8 = v0;
  if (v0)
  {
    if (CFDataGetLength(v0) <= 0)
    {
      v11 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v11)
      {
        v17 = v11 + 1;
      }

      else
      {
        v17 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v17, 1530, @"syscfg-seal-keys-allowed was zero length", v12, v13, v14, v15, v16);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "syscfg-seal-keys-allowed was zero length";
        v10 = 2;
        goto LABEL_14;
      }
    }

    else if ((CFDataGetLength(qword_1EB6D00E8) & 3) != 0)
    {
      v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v1)
      {
        v7 = v1 + 1;
      }

      else
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v7, 1536, @"syscfg-seal-keys-allowed was not a multiple of %d", v2, v3, v4, v5, v6, 4);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v19 = 4;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "syscfg-seal-keys-allowed was not a multiple of %d";
        v10 = 8;
LABEL_14:
        _os_log_impl(&dword_1B0190000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
      }
    }

    else
    {
      qword_1EB6D0100 = CFDataGetBytePtr(qword_1EB6D00E8);
      dword_1EB6D00F8 = CFDataGetLength(qword_1EB6D00E8) >> 2;
    }
  }
}

uint64_t sub_1B01C2CE4(const __CFString *a1, BOOL *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  *buffer = 0;
  if (!a1)
  {
    sub_1B01F19A4(__s);
LABEL_23:
    v12 = __s[0];
    return v12 & 1;
  }

  if (CFStringGetLength(a1) != 4)
  {
    sub_1B01F1574(__s);
    goto LABEL_23;
  }

  if (!CFStringGetCString(a1, buffer, 5, 0x8000100u))
  {
    sub_1B01F1924(__s);
    goto LABEL_23;
  }

  v14 = bswap32(*buffer);
  v18 = 0;
  bzero(__s, 0x400uLL);
  if (sub_1B01C36A8(0) && sub_1B01C3778())
  {
    v4 = sub_1B01C3778();
    if (!v4)
    {
      sub_1B01F16B8();
    }

    v5 = v4(2, __s, 1024);
    if (v5)
    {
      sub_1B01F15F4(v5);
      goto LABEL_14;
    }
  }

  else
  {
    __strlcpy_chk();
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = strlen(__s);
  v8 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __s, v7, 0);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B01DAB44(v6, &v18, v8);
    if (v10)
    {
      sub_1B01F16DC(v10);
    }

    CFRelease(v9);
    v11 = v18;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1B01F17A0();
  }

LABEL_14:
  v11 = sub_1B01BEFE0(0x6170746Bu);
  if (!v11)
  {
    sub_1B01F18A4(__s);
    goto LABEL_23;
  }

LABEL_15:
  if (sub_1B01C2098(v11, &v14, 1, &v17, a2, 0))
  {
    v12 = v17;
  }

  else
  {
    sub_1B01F1824(__s);
    v12 = __s[0];
  }

  CFRelease(v11);
  return v12 & 1;
}

void sub_1B01C2EF0(int a1, char *__format, ...)
{
  va_start(va, __format);
  v22 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0xFFuLL, __format, va);
  v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v3)
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  if (a1 == 1)
  {
    _MGLog(v9, 508, @"%s", v4, v5, v6, v7, v8, __str, va);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v20 = __str;
    v17 = MEMORY[0x1E69E9C10];
    v18 = OS_LOG_TYPE_INFO;
LABEL_12:
    _os_log_impl(&dword_1B0190000, v17, v18, "%s", buf, 0xCu);
    return;
  }

  if (a1)
  {
    _MGLog(v9, 513, @"%s", v4, v5, v6, v7, v8, __str, va);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v20 = __str;
    v17 = MEMORY[0x1E69E9C10];
    v18 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_12;
  }

  _MGLog(v9, 504, @"%s", v4, v5, v6, v7, v8, __str, va);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    sub_1B01F1A24(__str, v10, v11, v12, v13, v14, v15, v16);
  }
}

void *sub_1B01C3090()
{
  if (qword_1EB6D0110 != -1)
  {
    sub_1B01F1A98();
  }

  result = qword_1EB6D0118;
  if (qword_1EB6D0118)
  {
    result = dlsym(qword_1EB6D0118, "AMFDRSealingMapCopyInstanceForClass");
    off_1EB6D0130 = result;
  }

  return result;
}

void sub_1B01C30DC()
{
  qword_1EB6D0118 = dlopen("/usr/lib/libFDR.dylib", 1);
  if (!qword_1EB6D0118)
  {
    v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v0)
    {
      v6 = v0 + 1;
    }

    else
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v6, 1161, @"Unable to dlopen /usr/lib/libFDR.dylib", v1, v2, v3, v4, v5);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlopen /usr/lib/libFDR.dylib", v7, 2u);
    }
  }
}

void sub_1B01C319C(unsigned int a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    if (a1 - 5 >= 2)
    {
      if (a1 == 7)
      {
        v19 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
        v25 = v19 ? v19 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
        _MGLog(v25, 1144, @"%s", v20, v21, v22, v23, v24, a2);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          sub_1B01F1A24(a2, v26, v27, v28, v29, v30, v31, v32);
        }
      }
    }

    else
    {
      v12 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
      if (v12)
      {
        v18 = v12 + 1;
      }

      else
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
      }

      _MGLog(v18, 1140, @"%s", v13, v14, v15, v16, v17, a2);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = a2;
        v10 = MEMORY[0x1E69E9C10];
        v11 = OS_LOG_TYPE_INFO;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
    }

    _MGLog(v9, 1135, @"%s", v4, v5, v6, v7, v8, a2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = a2;
      v10 = MEMORY[0x1E69E9C10];
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
      _os_log_impl(&dword_1B0190000, v10, v11, "%s", buf, 0xCu);
    }
  }
}

uint64_t sub_1B01C3350(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v44 = 0;
  if (a4)
  {
    if (!a3)
    {
      v18 = *a4;
      v19 = a4[1];
      if (a1 == 1162037572 || a1 == 1128810832)
      {
        v20 = sub_1B01F7610(a2, a1, &v44, a4, a5, a6, a7, a8);
        if (v20)
        {
          v8 = v20;
          v21 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
          if (v21)
          {
            v27 = v21 + 1;
          }

          else
          {
            v27 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
          }

          _MGLog(v27, 1591, @"%s failed to decode Img4 property tag: 0x%X with error %d", v22, v23, v24, v25, v26, "int _APTicketPropertyCallback(uint32_t, const Img4Property *, uint32_t, void *)", a1, v8);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v46 = "int _APTicketPropertyCallback(uint32_t, const Img4Property *, uint32_t, void *)";
            v47 = 1024;
            *v48 = a1;
            *&v48[4] = 1024;
            *&v48[6] = v8;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s failed to decode Img4 property tag: 0x%X with error %d", buf, 0x18u);
          }

          return v8;
        }

        if (a1 == 1162037572)
        {
          if (v44 != v19)
          {
            v37 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
            if (v37)
            {
              v43 = v37 + 1;
            }

            else
            {
              v43 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
            }

            _MGLog(v43, 1607, @"%s Img4 UniqueChipID (0x%llX) did not match real UniqueChipID (0x%llX)", v38, v39, v40, v41, v42, "int _APTicketPropertyCallback(uint32_t, const Img4Property *, uint32_t, void *)", v44, v19);
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            *buf = 136315650;
            v46 = "int _APTicketPropertyCallback(uint32_t, const Img4Property *, uint32_t, void *)";
            v47 = 2048;
            *v48 = v44;
            *&v48[8] = 2048;
            v49 = v19;
            v35 = MEMORY[0x1E69E9C10];
            v36 = "%s Img4 UniqueChipID (0x%llX) did not match real UniqueChipID (0x%llX)";
            goto LABEL_33;
          }
        }

        else if (a1 == 1128810832 && v44 != v18)
        {
          v28 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
          if (v28)
          {
            v34 = v28 + 1;
          }

          else
          {
            v34 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
          }

          _MGLog(v34, 1599, @"%s Img4 ChipID (0x%llX) did not match real ChipID (0x%llX)", v29, v30, v31, v32, v33, "int _APTicketPropertyCallback(uint32_t, const Img4Property *, uint32_t, void *)", v44, v18);
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            return 1;
          }

          *buf = 136315650;
          v46 = "int _APTicketPropertyCallback(uint32_t, const Img4Property *, uint32_t, void *)";
          v47 = 2048;
          *v48 = v44;
          *&v48[8] = 2048;
          v49 = v18;
          v35 = MEMORY[0x1E69E9C10];
          v36 = "%s Img4 ChipID (0x%llX) did not match real ChipID (0x%llX)";
LABEL_33:
          _os_log_impl(&dword_1B0190000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x20u);
          return 1;
        }
      }
    }

    return 0;
  }

  v9 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v9)
  {
    v15 = v9 + 1;
  }

  else
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  _MGLog(v15, 1576, @"%s context was NULL", v10, v11, v12, v13, v14, "int _APTicketPropertyCallback(uint32_t, const Img4Property *, uint32_t, void *)");
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "int _APTicketPropertyCallback(uint32_t, const Img4Property *, uint32_t, void *)";
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s context was NULL", buf, 0xCu);
  }

  return 6;
}

uint64_t sub_1B01C36A8(uint64_t a1)
{
  if (!qword_1EB6D0138)
  {
    qword_1EB6D0138 = _sl_dlopen();
  }

  return qword_1EB6D0138;
}

uint64_t sub_1B01C3778()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = qword_1EB6D0098;
  v6 = qword_1EB6D0098;
  if (!qword_1EB6D0098)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = sub_1B01C389C;
    v2[3] = &unk_1E7A93218;
    v2[4] = &v3;
    sub_1B01C389C(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t sub_1B01C3828(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB6D0138 = result;
  return result;
}

void *sub_1B01C389C(uint64_t a1)
{
  v5 = 0;
  v2 = sub_1B01C36A8(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "lookupPathForPersonalizedData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB6D0098 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B01C3928(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t sub_1B01C3944(uint64_t a1)
{
  if (a1)
  {
    return a1 + 1;
  }

  else
  {
    return v1;
  }
}

char *sub_1B01C3950()
{

  return rindex(v0, 47);
}

uint64_t sub_1B01C5104()
{
  v28 = *MEMORY[0x1E69E9840];
  if (sub_1B01C53AC())
  {
    return 1;
  }

  v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
  if (v0)
  {
    v6 = v0 + 1;
  }

  else
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
  }

  _MGLog(v6, 531, @"IOKit is busy, waiting 5s", v1, v2, v3, v4, v5);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOKit is busy, waiting 5s", buf, 2u);
  }

  sleep(5u);
  if (sub_1B01C53AC())
  {
    return 1;
  }

  v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
  if (v8)
  {
    v14 = v8 + 1;
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
  }

  _MGLog(v14, 539, @"IOKit did not stop, getting busy services", v9, v10, v11, v12, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOKit did not stop, getting busy services", buf, 2u);
  }

  v15 = objc_opt_new();
  if ([v15 createTreeIterator:"IOService"])
  {
    v16 = [v15 iteratorCopyBusyServiceNames];
    if (CFArrayGetCount(v16) >= 1)
    {
      v17 = 0;
      v18 = MEMORY[0x1E69E9C10];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v17);
        v20 = CFGetTypeID(ValueAtIndex);
        if (v20 == CFStringGetTypeID() && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = ValueAtIndex;
          _os_log_impl(&dword_1B0190000, v18, OS_LOG_TYPE_DEFAULT, "IOKit is busy with %@", buf, 0xCu);
        }

        ++v17;
      }

      while (v17 < CFArrayGetCount(v16));
    }

    if (CFArrayGetCount(v16) > 0)
    {
      Count = CFArrayGetCount(v16);
      v22 = CFArrayGetValueAtIndex(v16, Count - 1);
      v23 = CFGetTypeID(v22);
      TypeID = CFStringGetTypeID();
      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      if (v23 == TypeID)
      {
        if (v25)
        {
          sub_1B01F1B2C(v22);
        }
      }

      else if (v25)
      {
        sub_1B01F1AAC(v22);
      }
    }

    CFRelease(v16);
  }

  return 0;
}

BOOL sub_1B01C53AC()
{
  busyState = -1;
  v0 = IOKitGetBusyState(*MEMORY[0x1E696CD60], &busyState);
  v1 = (v0 | busyState) == 0;
  if (!(v0 | busyState))
  {
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
    if (v2)
    {
      v8 = v2 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
    }

    _MGLog(v8, 518, @"IOKit is ready", v3, v4, v5, v6, v7);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOKit is ready", v10, 2u);
    }
  }

  return v1;
}

__CFDictionary *sub_1B01C5470(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  if ([v4 createTreeIterator:"IODeviceTree"])
  {
    v5 = [v4 deviceTreeNodeIsPresent:a1 withExactName:0 withNodeClass:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_1B01C54E4(uint64_t a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = sub_1B01C5470(a1, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Value = CFDictionaryGetValue(v4, a2);
  v7 = Value != 0;
  v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
  if (v8)
  {
    v14 = v8 + 1;
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
  }

  _MGLog(v14, 594, @"Property %@[%@] found %@", v9, v10, v11, v12, v13, a1, a2, Value);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = a1;
    v18 = 2112;
    v19 = a2;
    v20 = 2112;
    v21 = Value;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Property %@[%@] found %@", buf, 0x20u);
  }

  CFRelease(v5);
  return v7;
}

BOOL sub_1B01C5618(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = sub_1B01C5470(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFDictionaryGetCount(v3);
  v6 = Count > 0;
  if (Count >= 1)
  {
    v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m", 47);
    if (v7)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/MGIOKitHelper.m";
    }

    _MGLog(v13, 608, @"Node %@ found", v8, v9, v10, v11, v12, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Node %@ found", buf, 0xCu);
    }
  }

  CFRelease(v4);
  return v6;
}

uint64_t sub_1B01C5724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_new();
  if ([v9 createTreeIterator:"IODeviceTree"] && (v10 = objc_msgSend(v9, "copyDeviceTreeProperty:withFirstChar:propertyName:withPropertyFirstChar:", a2, a3, a4, a5)) != 0)
  {
    CFRelease(v10);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

__CFNumber *sub_1B01C57B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_new();
  if ([v9 createTreeIterator:"IODeviceTree"])
  {
    v10 = [v9 copyNumberFromDeviceTree:a2 withFirstChar:a3 propertyName:a4 withPropertyFirstChar:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFData *sub_1B01C583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_new();
  if ([v9 createTreeIterator:"IODeviceTree"])
  {
    v10 = [v9 copyDataFromDeviceTree:a2 withFirstChar:a3 propertyName:a4 withPropertyFirstChar:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFString *sub_1B01C58C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_new();
  if ([v9 createTreeIterator:"IODeviceTree"])
  {
    v10 = [v9 copyStringFromDeviceTree:a2 withFirstChar:a3 propertyName:a4 withPropertyFirstChar:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFString *sub_1B01C594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_new();
  if ([v9 createTreeIterator:"IOService"])
  {
    v10 = [v9 copyStringFromServiceTree:a2 withFirstChar:a3 propertyName:a4 withPropertyFirstChar:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1B01C59D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_new();
  if ([v9 createTreeIterator:"IOService"])
  {
    v10 = [v9 copyPropertyFromServiceTree:a2 withFirstChar:a3 propertyName:a4 withPropertyFirstChar:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *sub_1B01C5A5C()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = v0;
  if (v0)
  {
    v2 = sub_1B01C57B4(v0, @"Ai0zsJQ3+sTFkU6/lLbd5A", 111, @"yeQy+rgNoD7+YIY6mSVOhg", 101);
    v3 = v2;
    if (v2)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInteger:1];
      [v1 setObject:v3 forKey:v4];
    }

    v5 = sub_1B01C57B4(v2, @"Ai0zsJQ3+sTFkU6/lLbd5A", 111, @"UF3CoK9RCYXfTyzttoxNDQ", 101);
    v6 = v5;
    if (v5)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      [v1 setObject:v6 forKey:v7];
    }

    v8 = sub_1B01C57B4(v5, @"Ai0zsJQ3+sTFkU6/lLbd5A", 111, @"mug/QuG6jZ3CYR9p7OWQaw", 98);
    v9 = v8;
    if (v8)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:4];
      [v1 setObject:v9 forKey:v10];
    }

    v11 = sub_1B01C57B4(v8, @"4k6Wv56SWfITjzet+hIHMQ", 109, @"sYxZdpH3i8nwjZNet0QuAw", 102);
    if (v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:3];
      [v1 setObject:v11 forKey:v12];
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    v13 = v1;
  }

  return v1;
}

uint64_t sub_1B01C5C0C(uint64_t a1)
{
  v2 = sub_1B01C5724(a1, @"marconi-wifi", 0, a1, 0);
  if (v2)
  {
    return 1;
  }

  return sub_1B01C5724(v2, @"wlan", 0, a1, 0);
}

uint64_t MobileGestalt_get_aDSCapability(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"ADSCapability");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1BAC();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_aVDDecodingRate_obj()
{
  v0 = MGCopyAnswer(@"AVDDecodingRate");

  return v0;
}

char *MobileGestalt_copy_awdID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"AWDID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_awdID_obj()
{
  v0 = MGCopyAnswer(@"AWDID");

  return v0;
}

uint64_t MobileGestalt_get_absoluteDepthLimit(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"AbsoluteDepthLimit");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_acousticID(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"AcousticID");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1CE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_activationProtocol(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"zP3kBA1Biwz2d6PTIIbmUQ");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1D68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_activeWirelessTechnology()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ActiveWirelessTechnology");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_activeWirelessTechnology_obj()
{
  v0 = MGCopyAnswer(@"ActiveWirelessTechnology");

  return v0;
}

float MobileGestalt_get_actuatorResonantFrequency(void *a1)
{
  v1 = a1;
  valuePtr = -1082130432;
  v2 = MGCopyAnswer(@"hhRNi2d3z2WEFmU+xG/EXw");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr))
      {
LABEL_10:
        CFRelease(v3);
        v6 = *&valuePtr;
        goto LABEL_11;
      }

      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1DE8();
      }
    }

    goto LABEL_10;
  }

  v6 = -1.0;
LABEL_11:

  return v6;
}

uint64_t MobileGestalt_get_aggregateDevicePhotoZoomFactor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"JLP/IinyzetEPztvoNUNKg");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1E68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_aggregateDeviceVideoZoomFactor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"IweaHIDpz+rknAcb3+xg9g");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1EE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_alwaysOnDisplayMaxMemory(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"AlwaysOnDisplayMaxMemory");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1F68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_ambientLightSensorSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"UCLOC2TKe3vRkId34ubKWw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_ambientLightSensorSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"UCLOC2TKe3vRkId34ubKWw");

  return v0;
}

UInt8 *MobileGestalt_copy_apnonce()
{
  v0 = MGCopyAnswer(@"ApNonce");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xD6FA09F4uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_apnonce_obj()
{
  v0 = MGCopyAnswer(@"ApNonce");

  return v0;
}

UInt8 *MobileGestalt_copy_apnonceRetrieve()
{
  v0 = MGCopyAnswer(@"ApNonceRetrieve");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xF1C89342uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_apnonceRetrieve_obj()
{
  v0 = MGCopyAnswer(@"ApNonceRetrieve");

  return v0;
}

uint64_t MobileGestalt_get_appCapacityTVOS(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"kkSkHTEei96N1ZehicOgoA");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1FE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_appleNeuralEngineSubtype(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"eJGhnVvylF3dMOHBKJzeiw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2068();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_arcModuleSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"KzUQgIyBRinkweVMNUCOWA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_arcModuleSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"KzUQgIyBRinkweVMNUCOWA");

  return v0;
}

uint64_t MobileGestalt_get_arrowChipID(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"nhGhVMyvrWYe9U2ltAUImg");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F20E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_arrowUniqueChipID(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"CPiqZJJPocpjc5C5qe1tiw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2168();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_artworkTraitDisplayGamut()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ArtworkTraitDisplayGamut");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_artworkTraitDisplayGamut_obj()
{
  v0 = MGCopyAnswer(@"ArtworkTraitDisplayGamut");

  return v0;
}

CFNumberRef MobileGestalt_copy_artworkTraits_obj()
{
  v0 = MGCopyAnswer(@"oPeik/9e8lQWMszEjbPzng");

  return v0;
}

char *MobileGestalt_copy_attestationUniqueDeviceID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"AttestationUniqueDeviceID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_attestationUniqueDeviceID_obj()
{
  v0 = MGCopyAnswer(@"AttestationUniqueDeviceID");

  return v0;
}

uint64_t MobileGestalt_get_automaticMicMode(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"AutomaticMicMode");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F21E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_availableDisplayZoomSizes_obj()
{
  v0 = MGCopyAnswer(@"ILaGO+KV5JAOq7Q5GEwbWQ");

  return v0;
}

UInt8 *MobileGestalt_copy_basebandAPTimeSync()
{
  v0 = MGCopyAnswer(@"HXTqT3UXOKuTEklxz+wMAA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x101249E3uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_basebandAPTimeSync_obj()
{
  v0 = MGCopyAnswer(@"HXTqT3UXOKuTEklxz+wMAA");

  return v0;
}

char *MobileGestalt_copy_basebandBoardSnum()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BasebandBoardSnum");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_basebandBoardSnum_obj()
{
  v0 = MGCopyAnswer(@"BasebandBoardSnum");

  return v0;
}

CFNumberRef MobileGestalt_copy_basebandCertId_obj()
{
  v0 = MGCopyAnswer(@"BasebandCertId");

  return v0;
}

CFNumberRef MobileGestalt_copy_basebandChipId_obj()
{
  v0 = MGCopyAnswer(@"BasebandChipId");

  return v0;
}

char *MobileGestalt_copy_basebandChipset()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BasebandChipset");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_basebandChipset_obj()
{
  v0 = MGCopyAnswer(@"BasebandChipset");

  return v0;
}

uint64_t MobileGestalt_get_basebandClass(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"BasebandClass");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2268();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_basebandFirmwareManifestData_obj()
{
  v0 = MGCopyAnswer(@"BasebandFirmwareManifestData");

  return v0;
}

CFNumberRef MobileGestalt_copy_basebandFirmwareUpdateInfo_obj()
{
  v0 = MGCopyAnswer(@"BasebandFirmwareUpdateInfo");

  return v0;
}

char *MobileGestalt_copy_basebandFirmwareVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BasebandFirmwareVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_basebandFirmwareVersion_obj()
{
  v0 = MGCopyAnswer(@"BasebandFirmwareVersion");

  return v0;
}

CFNumberRef MobileGestalt_copy_basebandKeyHashInformation_obj()
{
  v0 = MGCopyAnswer(@"BasebandKeyHashInformation");

  return v0;
}

char *MobileGestalt_copy_basebandPostponementStatus()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BasebandPostponementStatus");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_basebandPostponementStatus_obj()
{
  v0 = MGCopyAnswer(@"BasebandPostponementStatus");

  return v0;
}

CFNumberRef MobileGestalt_copy_basebandPostponementStatusBlob_obj()
{
  v0 = MGCopyAnswer(@"BasebandPostponementStatusBlob");

  return v0;
}

UInt8 *MobileGestalt_copy_basebandRegionSKU()
{
  v0 = MGCopyAnswer(@"BasebandRegionSKU");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x5D4D13C3uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_basebandRegionSKU_obj()
{
  v0 = MGCopyAnswer(@"BasebandRegionSKU");

  return v0;
}

uint64_t MobileGestalt_get_basebandRegionSKURadioTechnology(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"BasebandRegionSKURadioTechnology");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F22E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_basebandSecurityInfoBlob_obj()
{
  v0 = MGCopyAnswer(@"BasebandSecurityInfoBlob");

  return v0;
}

UInt8 *MobileGestalt_copy_basebandSerialNumber()
{
  v0 = MGCopyAnswer(@"BasebandSerialNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x73A9E99AuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_basebandSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"BasebandSerialNumber");

  return v0;
}

char *MobileGestalt_copy_basebandStatus()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BasebandStatus");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_basebandStatus_obj()
{
  v0 = MGCopyAnswer(@"BasebandStatus");

  return v0;
}

char *MobileGestalt_copy_basebandUniqueId()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BasebandUniqueId");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_basebandUniqueId_obj()
{
  v0 = MGCopyAnswer(@"BasebandUniqueId");

  return v0;
}

uint64_t MobileGestalt_get_batteryCurrentCapacity(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"BatteryCurrentCapacity");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2368();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_batterySerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BatterySerialNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_batterySerialNumber_obj()
{
  v0 = MGCopyAnswer(@"BatterySerialNumber");

  return v0;
}

char *MobileGestalt_copy_bluetoothAddress()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BluetoothAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_bluetoothAddress_obj()
{
  v0 = MGCopyAnswer(@"BluetoothAddress");

  return v0;
}

uint64_t MobileGestalt_get_boardId(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"BoardId");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F23E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_boardRevision(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"BoardRevision");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2468();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_bootManifestHash()
{
  v0 = MGCopyAnswer(@"BootManifestHash");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x6DB5E7C5uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_bootManifestHash_obj()
{
  v0 = MGCopyAnswer(@"BootManifestHash");

  return v0;
}

UInt8 *MobileGestalt_copy_bootNonce()
{
  v0 = MGCopyAnswer(@"BootNonce");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x3C8268F9uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_bootNonce_obj()
{
  v0 = MGCopyAnswer(@"BootNonce");

  return v0;
}

char *MobileGestalt_copy_bridgeBuild()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"GxXmRWHjsY5yAVhMfCH6Lg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_bridgeBuild_obj()
{
  v0 = MGCopyAnswer(@"GxXmRWHjsY5yAVhMfCH6Lg");

  return v0;
}

char *MobileGestalt_copy_bridgeRestoreVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"Glo+aTkt0Uw31BghCxnsyQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_bridgeRestoreVersion_obj()
{
  v0 = MGCopyAnswer(@"Glo+aTkt0Uw31BghCxnsyQ");

  return v0;
}

char *MobileGestalt_copy_buildID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BuildID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_buildID_obj()
{
  v0 = MGCopyAnswer(@"BuildID");

  return v0;
}

char *MobileGestalt_copy_buildVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"BuildVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_buildVersion_obj()
{
  v0 = MGCopyAnswer(@"BuildVersion");

  return v0;
}

char *MobileGestalt_copy_cpuArchitecture()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"CPUArchitecture");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_cpuArchitecture_obj()
{
  v0 = MGCopyAnswer(@"CPUArchitecture");

  return v0;
}

uint64_t MobileGestalt_get_cpuSubType(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"CPUSubType");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F24E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_cpuType(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"CPUType");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2568();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_cameraAppUIVersion(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"NszbG6qiAztVal4mpDQRkg");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F25E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_cameraButtonCGRect()
{
  v0 = MGCopyAnswer(@"CameraButtonCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xE6A40F3AuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_cameraButtonCGRect_obj()
{
  v0 = MGCopyAnswer(@"CameraButtonCGRect");

  return v0;
}

UInt8 *MobileGestalt_copy_cameraButtonNormalizedCGRect()
{
  v0 = MGCopyAnswer(@"CameraButtonNormalizedCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x7CCABC3AuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_cameraButtonNormalizedCGRect_obj()
{
  v0 = MGCopyAnswer(@"CameraButtonNormalizedCGRect");

  return v0;
}

uint64_t MobileGestalt_get_cameraHDRVersion(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"CameraHDRVersion");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2668();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_cameraIMUDistanceType(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"CameraIMUDistanceType");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F26E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_cameraMaxBurstLength_obj()
{
  v0 = MGCopyAnswer(@"gBw7IWiBnLHaA+lBrZBgWw");

  return v0;
}

CFNumberRef MobileGestalt_copy_carrierBundleInfoArray_obj()
{
  v0 = MGCopyAnswer(@"CarrierBundleInfoArray");

  return v0;
}

uint64_t MobileGestalt_get_chipConfigRack(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"ChipConfigRack");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2768();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_chipID(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"ChipID");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F27E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_chromeIdentifier()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ChromeIdentifier");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_chromeIdentifier_obj()
{
  v0 = MGCopyAnswer(@"ChromeIdentifier");

  return v0;
}

UInt8 *MobileGestalt_copy_compassCalibration()
{
  v0 = MGCopyAnswer(@"CompassCalibration");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x62D3473EuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_compassCalibration_obj()
{
  v0 = MGCopyAnswer(@"CompassCalibration");

  return v0;
}

CFNumberRef MobileGestalt_copy_compassCalibrationDictionary_obj()
{
  v0 = MGCopyAnswer(@"CompassCalibrationDictionary");

  return v0;
}

CFNumberRef MobileGestalt_copy_compassType_obj()
{
  v0 = MGCopyAnswer(@"meLhyIpGgxiQoFZD/OGPcQ");

  return v0;
}

CFNumberRef MobileGestalt_copy_compatibleAppVariants_obj()
{
  v0 = MGCopyAnswer(@"VuGdqp8UBpi9vPWHlPluVQ");

  return v0;
}

char *MobileGestalt_copy_computerName()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ComputerName");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_computerName_obj()
{
  v0 = MGCopyAnswer(@"ComputerName");

  return v0;
}

char *MobileGestalt_copy_conferenceCallType()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"kConferenceCallType");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_conferenceCallType_obj()
{
  v0 = MGCopyAnswer(@"kConferenceCallType");

  return v0;
}

UInt8 *MobileGestalt_copy_configNumber()
{
  v0 = MGCopyAnswer(@"ConfigNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xD08CC746uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_configNumber_obj()
{
  v0 = MGCopyAnswer(@"ConfigNumber");

  return v0;
}

char *MobileGestalt_copy_countryOfOrigin()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"CountryOfOrigin");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_countryOfOrigin_obj()
{
  v0 = MGCopyAnswer(@"CountryOfOrigin");

  return v0;
}

char *MobileGestalt_copy_coverglassSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"OWi11Urd09rDmPVy1z5dOQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}