const __CFNumber *makeBoolRef(const __CFNumber *cf)
{
  v1 = cf;
  v6 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFNumberGetTypeID())
    {
      valuePtr = -1431655766;
      if (CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr))
      {
        v3 = MEMORY[0x277CBED10];
        if (valuePtr)
        {
          v3 = MEMORY[0x277CBED28];
        }

        return *v3;
      }
    }
  }

  return v1;
}

uint64_t __Apple80211EventMonitoringHelper_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 1952) = 0;
  return Apple80211EventMonitoringHelper(v1, *(a1 + 56), *(a1 + 48), *(a1 + 60));
}

uint64_t Apple80211Open(void *a1)
{
  if (!a1)
  {
    return 4294963396;
  }

  v2 = malloc_type_malloc(0x850uLL, 0x10E0040E2A5786FuLL);
  v3 = v2;
  if (!v2)
  {
    v7 = 4294963395;
    goto LABEL_9;
  }

  bzero(v2, 0x850uLL);
  os_parse_boot_arg_int();
  *(v3 + 252) = 1;
  os_parse_boot_arg_int();
  v4 = socket(2, 2, 0);
  *v3 = v4;
  if (v4 < 0)
  {
    v7 = *__error();
    if (!v7)
    {
      return v7;
    }

    goto LABEL_15;
  }

  os_parse_boot_arg_int();
  v3[2120] = 1;
  if (os_parse_boot_arg_int())
  {
    v3[2120] = 0;
  }

  pthread_mutex_init((v3 + 160), 0);
  pthread_mutex_init((v3 + 272), 0);
  pthread_mutex_init((v3 + 1608), 0);
  pthread_mutex_init((v3 + 1680), 0);
  pthread_mutex_init((v3 + 1752), 0);
  v5 = dispatch_group_create();
  *(v3 + 264) = v5;
  if (!v5 || (v6 = dispatch_queue_create("com.apple.wifi.apple80211.finalizer", 0), (*(v3 + 263) = v6) == 0))
  {
    v7 = 4294963395;
LABEL_15:
    free(v3);
    v3 = 0;
    goto LABEL_9;
  }

  dispatch_group_enter(*(v3 + 264));
  v7 = 0;
LABEL_9:
  *a1 = v3;
  return v7;
}

uint64_t Apple80211BindToInterface(uint64_t a1, __CFString *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = 4294963396;
  if (a1 && a2)
  {
    Service = _Apple80211FindService(a2);
    if (Service)
    {
      v6 = Service;
      v7 = _copyStringRegistryPropertyFor(Service, @"IO80211VirtualInterfaceRole");
      if (v7 && (v8 = v7, v9 = CFStringCompare(v7, @"AirLink", 0), CFRelease(v8), v9 == kCFCompareEqualTo))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136446466;
          v12 = "Apple80211BindToInterface";
          v13 = 2112;
          v14 = a2;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ using compatibility mode\n", &v11, 0x16u);
        }

        if (CFStringGetCString(a2, (a1 + 4), 16, 0x8000100u))
        {
          result = 0;
          *(a1 + 109) = 1;
        }

        else
        {
          return 4294963396;
        }
      }

      else
      {
        v10 = Apple80211BindToInterfaceWithService();
        IOObjectRelease(v6);
        return v10;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136446466;
        v12 = "Apple80211BindToInterface";
        v13 = 2112;
        v14 = a2;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ Failed to find matching service in IORegistry\n", &v11, 0x16u);
      }

      return 4294963393;
    }
  }

  return result;
}

uint64_t _Apple80211FindService(void *a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  values = a1;
  keys[0] = @"IOInterfaceName";
  v1 = *MEMORY[0x277CBECE8];
  v2 = MEMORY[0x277CBF138];
  v3 = MEMORY[0x277CBF150];
  cf = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  keys[0] = @"IOPropertyMatch";
  v4 = CFDictionaryCreate(v1, keys, &cf, 1, v2, v3);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return IOServiceGetMatchingService(*MEMORY[0x277CD2898], v4);
}

const void *_copyStringRegistryPropertyFor(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, *MEMORY[0x277CBECE8], 0);
  v3 = CFProperty;
  if (CFProperty)
  {
    v4 = CFGetTypeID(CFProperty);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t Apple80211BindToInterfaceWithService()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v67 = *MEMORY[0x277D85DE8];
  *(v0 + 2024) = 0;
  if (!v2)
  {
    goto LABEL_56;
  }

  v7 = v1;
  if (_checkEntitlements_onceToken != -1)
  {
    dispatch_once(&_checkEntitlements_onceToken, &__block_literal_global_1929);
  }

  if ((*(v6 + 231) || *(v6 + 8) || *(v6 + 7)) && Apple80211EventMonitoringHalt(v6))
  {
    goto LABEL_56;
  }

  v8 = *(v6 + 248);
  if (v8)
  {
    IONotificationPortDestroy(v8);
    *(v6 + 248) = 0;
  }

  v9 = v6 + 455;
  v10 = v6[455];
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Free previous IOUC session\n", buf, 0xCu);
      v10 = v6[455];
      *(v6 + 1817) = 0;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(v6 + 1817) = 0;
    }

    *v9 = 0;
    IOServiceClose(v10);
  }

LABEL_16:
  if (!CFStringGetCString(v3, v6 + 4, 16, 0x8000100u))
  {
LABEL_56:
    v20 = 0;
LABEL_57:
    v22 = 0;
    goto LABEL_58;
  }

  v11 = IOServiceOpen(v5, *MEMORY[0x277D85F48], 0, v6 + 455);
  if (v11)
  {
    v34 = v11;
    if (v11 == -536870174 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      *&buf[22] = 1024;
      *&buf[24] = -536870174;
      *&buf[28] = 1024;
      *&buf[30] = -536870174;
      _os_log_fault_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%{public}s: %@ IOServiceOpen failed with %d/0x%08x", buf, 0x22u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446978;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    *&buf[24] = v34;
    *&buf[28] = 1024;
    *&buf[30] = v34;
    v35 = MEMORY[0x277D86220];
    v36 = "%{public}s: %@ IOServiceOpen failed with %d/0x%08x";
    goto LABEL_54;
  }

  bzero(inputStruct, 0x3C30uLL);
  inputStruct[0] = -1071093303;
  __strlcpy_chk();
  inputStruct[3846] = 43;
  memset(outputStruct, 0, sizeof(outputStruct));
  v59 = 0;
  outputStructCnt = 256;
  v12 = IOConnectCallStructMethod(*v9, 0, inputStruct, 0x3C30uLL, outputStruct, &outputStructCnt);
  v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_56;
    }

    *buf = 136446978;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    *&buf[24] = v12;
    *&buf[28] = 1024;
    *&buf[30] = v12;
    v35 = MEMORY[0x277D86220];
    v36 = "%{public}s: %@ Driver version query failed with %d/0x%08x";
LABEL_54:
    v39 = buf;
    v40 = 34;
LABEL_55:
    _os_log_impl(&dword_254882000, v35, OS_LOG_TYPE_DEFAULT, v36, v39, v40);
    goto LABEL_56;
  }

  if (v13)
  {
    *buf = 136446722;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 2080;
    *&buf[24] = outputStruct;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ Sanity test passed. Version - %s", buf, 0x20u);
  }

  outputStructCnt = 1;
  v14 = IOConnectCallStructMethod(v6[455], 1u, 0, 0, v6 + 1817, &outputStructCnt);
  if (v14)
  {
    v37 = v14;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446978;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    *&buf[24] = v37;
    *&buf[28] = 1024;
    *&buf[30] = v37;
    v35 = MEMORY[0x277D86220];
    v36 = "%{public}s: %@ useIOUCWhenPossible query failed with %d/0x%08x";
    goto LABEL_54;
  }

  outputStructCnt = 1;
  v15 = IOConnectCallStructMethod(v6[455], 7u, 0, 0, v6 + 1818, &outputStructCnt);
  if (v15)
  {
    v38 = v15;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446978;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    *&buf[24] = v38;
    *&buf[28] = 1024;
    *&buf[30] = v38;
    v35 = MEMORY[0x277D86220];
    v36 = "%{public}s: %@ isDKSupported query failed with %d/0x%08x";
    goto LABEL_54;
  }

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *(v6 + 12) = 0;
  *(v6 + 101) = 0;
  *(v6 + 11) = 0;
  __strlcpy_chk();
  v57 = v6 + 22;
  LODWORD(v56) = 12;
  DWORD2(v56) = 21;
  if (Apple80211RawGet(v6, &v55))
  {
    goto LABEL_56;
  }

  if (!v7)
  {
LABEL_33:
    v24 = *(v6 + 247);
    if (v24)
    {
      label = dispatch_queue_get_label(*(v6 + 247));
    }

    else
    {
      label = "";
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 1817))
      {
        v26 = "TRUE";
      }

      else
      {
        v26 = "FALSE";
      }

      v27 = *(v6 + 230);
      v28 = v6[455];
      v29 = *(v6 + 231);
      v49 = *(v6 + 243);
      KernelRetainCount = IOObjectGetKernelRetainCount(v5);
      UserRetainCount = IOObjectGetUserRetainCount(v5);
      *buf = 136449282;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      *&buf[22] = 2082;
      *&buf[24] = v26;
      *&buf[32] = 1024;
      *&buf[34] = v5;
      *&buf[38] = 2048;
      *&buf[40] = v6;
      *&buf[48] = 2048;
      *&buf[50] = v27;
      *&buf[58] = 2048;
      *&buf[60] = v24;
      *&buf[68] = 2080;
      *&buf[70] = label;
      *&buf[78] = 1024;
      *&buf[80] = v28;
      *&buf[84] = 2048;
      *&buf[86] = v29;
      *&buf[94] = 2048;
      *&v53 = v49;
      WORD4(v53) = 1024;
      *(&v53 + 10) = KernelRetainCount;
      HIWORD(v53) = 1024;
      LODWORD(v54) = UserRetainCount;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ useIOUCWhenPossible %{public}s, service:%u opaque:%p, ioucQueue[%p] serviceNotificationQueue[%p]/dq:'%s' connect[%u] port[%p] runLoop[%p] kretain[%u] uretain[%u]\n", buf, 0x74u);
    }

    return 0;
  }

  if (!*(v6 + 247))
  {
    v53 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    snprintf(buf, 0x80uLL, "io80211-service-notification-q-%p", v6);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(buf, v16);
    *(v6 + 247) = v17;
    if (!v17)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      LODWORD(v61) = 136315138;
      *(&v61 + 4) = "Apple80211BindToInterfaceWithService";
      v35 = MEMORY[0x277D86220];
      v36 = "%s: failed to create queue\n";
      v39 = &v61;
      v40 = 12;
      goto LABEL_55;
    }
  }

  v18 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  *(v6 + 248) = v18;
  if (!v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    v35 = MEMORY[0x277D86220];
    v36 = "%{public}s: %@ IONotificationPortCreate failed!! \n";
    goto LABEL_89;
  }

  IONotificationPortSetDispatchQueue(v18, *(v6 + 247));
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    v35 = MEMORY[0x277D86220];
    v36 = "%{public}s: %@ propertyDictionaryRef alloc failed!! \n";
LABEL_89:
    v39 = buf;
    v40 = 22;
    goto LABEL_55;
  }

  v20 = Mutable;
  CFDictionarySetValue(Mutable, @"IOInterfaceName", v3);
  v21 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v21)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ matchingServiceDict alloc failed!! \n", buf, 0x16u);
    }

    goto LABEL_57;
  }

  v22 = v21;
  CFDictionarySetValue(v21, @"IOPropertyMatch", v20);
  CFRetain(v22);
  if (IOServiceAddMatchingNotification(*(v6 + 248), "IOServiceMatched", v22, _Apple80211ServiceMatchedCallback, v6, v6 + 500))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 136446466;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    v47 = MEMORY[0x277D86220];
    v48 = "%{public}s: %@ Failed to add Publish notification!! \n";
    goto LABEL_96;
  }

  _Apple80211ServiceMatchedCallback(v6, v6[500]);
  if (!IOServiceAddMatchingNotification(*(v6 + 248), "IOServiceTerminate", v22, _Apple80211ServiceTerminatedCallback, v6, v6 + 501))
  {
    _Apple80211ServiceTerminatedCallback(v6, v6[501]);
    v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 247));
    *(v6 + 249) = v23;
    dispatch_set_context(v23, v6);
    dispatch_source_set_event_handler_f(*(v6 + 249), _serviceMatchingDelayedCallback);
    dispatch_activate(*(v6 + 249));
    CFRelease(v20);
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    v47 = MEMORY[0x277D86220];
    v48 = "%{public}s: %@ Failed to add Terminated notification!! \n";
LABEL_96:
    _os_log_impl(&dword_254882000, v47, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);
  }

LABEL_58:
  v41 = *(v6 + 248);
  if (v41)
  {
    IONotificationPortDestroy(v41);
    *(v6 + 248) = 0;
  }

  v42 = v6[455];
  if (v42)
  {
    v6[455] = 0;
    IOServiceClose(v42);
  }

  memset(buffer, 170, sizeof(buffer));
  if (!v3 || (*v6 & 0x80000000) != 0 || !CFStringGetCString(v3, buffer, 16, 0x8000100u))
  {
    goto LABEL_78;
  }

  theArray = 0;
  if (!_getIfListCopy(v6, &theArray))
  {
    v43 = theArray;
    v68.length = CFArrayGetCount(theArray);
    v68.location = 0;
    if (CFArrayContainsValue(v43, v68, v3) && (_isVirtualInterface(v3, v5) || _isInfraInterface(v3, v5)))
    {
      CFRelease(theArray);
      goto LABEL_70;
    }

    CFRelease(theArray);
LABEL_78:
    v32 = 4294963396;
LABEL_79:
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    if (v20)
    {
      CFRelease(v20);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      *&buf[22] = 1024;
      *&buf[24] = v32;
      *&buf[28] = 1024;
      *&buf[30] = v32;
      _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s: FAILED to bind to interface %@ - %d/0x%08x", buf, 0x22u);
    }

    return v32;
  }

LABEL_70:
  v64 = 0u;
  v65 = 0u;
  __strlcpy_chk();
  v44 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  ioctl(*v6, 0xC0206911uLL, &v64);
  v45 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v44;
  if (v45 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448258;
    *&buf[4] = "_logTimeIfThresholdExceeded";
    *&buf[12] = 2082;
    *&buf[14] = &v64;
    *&buf[22] = 2080;
    *&buf[24] = " 'SIOCGIFFLAGS' ";
    *&buf[32] = 1024;
    *&buf[34] = -1071617775;
    *&buf[38] = 1024;
    *&buf[40] = -1071617775;
    *&buf[44] = 2048;
    *&buf[46] = v45 / 0x3B9ACA00;
    *&buf[54] = 2048;
    *&buf[56] = v45 % 0x3B9ACA00 / 0x3E8;
    *&buf[64] = 2048;
    *&buf[66] = 1;
    *&buf[74] = 2048;
    *&buf[76] = 0;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
  }

  __strlcpy_chk();
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  *(v6 + 12) = 0;
  *(v6 + 101) = 0;
  *(v6 + 11) = 0;
  __strlcpy_chk();
  v63 = v6 + 22;
  LODWORD(v62) = 12;
  DWORD2(v62) = 21;
  v32 = ioctl(*v6, 0xC02869C9uLL, &v61);
  v46 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    *&buf[4] = "Apple80211BindToInterfaceWithIOCTL";
    *&buf[12] = 2048;
    *&buf[14] = v46 / 0x3B9ACA00;
    *&buf[22] = 2048;
    *&buf[24] = v46 % 0x3B9ACA00 / 0x3E8;
    *&buf[32] = 2112;
    *&buf[34] = v3;
    *&buf[42] = 2082;
    *&buf[44] = v6 + 1;
    *&buf[52] = 1024;
    *&buf[54] = v65;
    *&buf[58] = 1024;
    *&buf[60] = v32;
    *&buf[64] = 1024;
    *&buf[66] = v32;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] WARNING: %@ Falling back to IOCTL path, ifname['%{public}s']/0x%08x err %d/0x%08x\n", buf, 0x46u);
  }

  *(v6 + 1817) = 0;
  if (v32)
  {
    goto LABEL_79;
  }

  return v32;
}

uint64_t Apple80211RawGet(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24) >= 0x3C01u)
  {
    if (*(a1 + 109))
    {

      return _Apple80211AWDLCompatibilityCall(a1, a2, 0);
    }

    else
    {
      v5 = *(a2 + 16);
      if (*(a1 + 1817))
      {
        v6 = malloc_type_malloc(0x3C030uLL, 0x1000040135F6BA2uLL);
        if (v6)
        {
          v7 = v6;
          v8 = (v6 + 61440);
          bzero(v6 + 1, 0x3C02CuLL);
          *v7 = -1071093303;
          v9 = a1 + 4;
          __strlcpy_chk();
          *(v8 + 6) = v5;
          v10 = (a2 + 20);
          *(v8 + 7) = *(a2 + 20);
          if (*(a1 + 2008))
          {
            v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              if (v5 > 584)
              {
                v12 = "Error Invalid ioctl";
              }

              else if (v5 == -1)
              {
                v12 = "APPLE80211_IOC_CARD_SPECIFIC";
              }

              else if (v5 < 0 || (v12 = gAppleIoucIndexToString[v5]) == 0)
              {
                v12 = "unknown Apple80211_IOC_";
              }

              v20 = *(a2 + 24);
              *buf = 136448002;
              v33 = "_Apple80211LargeIOCTLGetWrapper";
              v34 = 1024;
              *v35 = 469;
              *&v35[4] = 2048;
              *&v35[6] = v11 / 0x3B9ACA00;
              *&v35[14] = 2048;
              *&v35[16] = v11 % 0x3B9ACA00 / 0x3E8;
              v36 = 2082;
              *v37 = a1 + 4;
              *&v37[8] = 1024;
              *&v37[10] = v5;
              v38 = 2082;
              *v39 = v12;
              *&v39[8] = 1024;
              *&v39[10] = v20;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d]\n", buf, 0x46u);
            }
          }

          v21 = *(a2 + 24);
          if (v21 <= 0x3C000)
          {
            if (v21)
            {
              v7[1] = v21;
              __memcpy_chk();
            }

            if (*(a2 + 32))
            {
              v22 = *(a2 + 24);
              if (v22)
              {
                v10 = *(a2 + 32);
              }

              else
              {
                v22 = 4;
              }
            }

            else
            {
              v22 = 4;
            }

            outputStructCnt[0] = v22;
            v19 = IOConnectCallStructMethod(*(a1 + 1820), 6u, v7, 0x3C030uLL, v10, outputStructCnt);
            if (v19)
            {
              *__error() = v19;
              v23 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                if (v5 > 584)
                {
                  v24 = "Error Invalid ioctl";
                }

                else if (v5 == -1)
                {
                  v24 = "APPLE80211_IOC_CARD_SPECIFIC";
                }

                else if (v5 < 0 || (v24 = gAppleIoucIndexToString[v5]) == 0)
                {
                  v24 = "unknown Apple80211_IOC_";
                }

                v29 = *(a2 + 24);
                *buf = 136448258;
                v33 = "_Apple80211LargeIOCTLGetWrapper";
                v34 = 1024;
                *v35 = 499;
                *&v35[4] = 2048;
                *&v35[6] = v23 / 0x3B9ACA00;
                *&v35[14] = 2048;
                *&v35[16] = v23 % 0x3B9ACA00 / 0x3E8;
                v36 = 2082;
                *v37 = v9;
                *&v37[8] = 1024;
                *&v37[10] = v5;
                v38 = 2082;
                *v39 = v24;
                *&v39[8] = 1024;
                *&v39[10] = v29;
                *&v39[14] = 1024;
                *&v39[16] = v19;
                _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d] return %d\n", buf, 0x4Cu);
              }
            }

            else
            {
              *(a2 + 24) = outputStructCnt[0];
            }

            free(v7);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v33 = "_Apple80211LargeIOCTLGetWrapper";
              v34 = 1024;
              *v35 = v21;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid length %d\n", buf, 0x12u);
            }

            free(v7);
            return 22;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            if (v5 > 584)
            {
              v18 = "Error Invalid ioctl";
            }

            else if (v5 == -1)
            {
              v18 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v5 < 0 || (v18 = gAppleIoucIndexToString[v5]) == 0)
            {
              v18 = "unknown Apple80211_IOC_";
            }

            *buf = 136446722;
            v33 = "_Apple80211LargeIOCTLGetWrapper";
            v34 = 1024;
            *v35 = v5;
            *&v35[4] = 2082;
            *&v35[6] = v18;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: Memory allocation failed for apple80211IOUCReqV2, type %d/'%{public}s'\n", buf, 0x1Cu);
          }

          return 12;
        }
      }

      else
      {
        *outputStructCnt = 0u;
        v31 = 0u;
        v13 = a1 + 4;
        __strlcpy_chk();
        v14 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        ioctl(*a1, 0xC0206911uLL, outputStructCnt);
        v15 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v14;
        if (v15 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136448258;
          v33 = "_logTimeIfThresholdExceeded";
          v34 = 2082;
          *v35 = outputStructCnt;
          *&v35[8] = 2080;
          *&v35[10] = " 'SIOCGIFFLAGS' ";
          *&v35[18] = 1024;
          *&v35[20] = -1071617775;
          v36 = 1024;
          *v37 = -1071617775;
          *&v37[4] = 2048;
          *&v37[6] = v15 / 0x3B9ACA00;
          v38 = 2048;
          *v39 = v15 % 0x3B9ACA00 / 0x3E8;
          *&v39[8] = 2048;
          *&v39[10] = 1;
          *&v39[18] = 2048;
          v40 = 0;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
        }

        __strlcpy_chk();
        if (*(a1 + 2008))
        {
          v16 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            if (v5 > 584)
            {
              v17 = "Error Invalid ioctl";
            }

            else if (v5 == -1)
            {
              v17 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v5 < 0 || (v17 = gAppleIoucIndexToString[v5]) == 0)
            {
              v17 = "unknown Apple80211_IOC_";
            }

            v25 = *(a2 + 24);
            *buf = 136448258;
            v33 = "_Apple80211LargeIOCTLGetWrapper";
            v34 = 1024;
            *v35 = 521;
            *&v35[4] = 2048;
            *&v35[6] = v16 / 0x3B9ACA00;
            *&v35[14] = 2048;
            *&v35[16] = v16 % 0x3B9ACA00 / 0x3E8;
            v36 = 2082;
            *v37 = a1 + 4;
            *&v37[8] = 1024;
            *&v37[10] = v31;
            v38 = 1024;
            *v39 = v5;
            *&v39[4] = 2082;
            *&v39[6] = v17;
            *&v39[14] = 1024;
            *&v39[16] = v25;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d]\n", buf, 0x4Cu);
          }
        }

        v19 = ioctl(*a1, 0xC02869C9uLL, a2);
        if (v19)
        {
          v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            if (v5 > 584)
            {
              v27 = "Error Invalid ioctl";
            }

            else if (v5 == -1)
            {
              v27 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v5 < 0 || (v27 = gAppleIoucIndexToString[v5]) == 0)
            {
              v27 = "unknown Apple80211_IOC_";
            }

            v28 = *(a2 + 24);
            *buf = 136448514;
            v33 = "_Apple80211LargeIOCTLGetWrapper";
            v34 = 1024;
            *v35 = 527;
            *&v35[4] = 2048;
            *&v35[6] = v26 / 0x3B9ACA00;
            *&v35[14] = 2048;
            *&v35[16] = v26 % 0x3B9ACA00 / 0x3E8;
            v36 = 2082;
            *v37 = v13;
            *&v37[8] = 1024;
            *&v37[10] = v31;
            v38 = 1024;
            *v39 = v5;
            *&v39[4] = 2082;
            *&v39[6] = v27;
            *&v39[14] = 1024;
            *&v39[16] = v28;
            LOWORD(v40) = 1024;
            *(&v40 + 2) = v19;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d] return %d\n", buf, 0x52u);
          }
        }
      }

      return v19;
    }
  }

  else
  {

    return Apple80211IOCTLGetWrapper();
  }
}

uint64_t Apple80211EventMonitoringHalt(uint64_t a1)
{
  v3[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294963396;
  }

  dispatch_group_enter(*(a1 + 2112));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __Apple80211EventMonitoringHalt_block_invoke;
  v3[3] = &__block_descriptor_tmp_81;
  v3[4] = a1;
  return _Apple80211EventMonitoringHalt2(a1, v3);
}

void _Apple80211ServiceMatchedCallback(uint64_t a1, io_iterator_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "_Apple80211ServiceMatchedCallback";
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enter: %{public}s\n", buf, 0xCu);
  }

  if (a1)
  {
    v4 = IOIteratorNext(a2);
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x277D86220];
      do
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v8 = "_Apple80211ServiceMatchedCallback";
          v9 = 1024;
          v10 = v5;
          v11 = 2048;
          v12 = a1;
          _os_log_impl(&dword_254882000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: service:%u opaque:%p\n", buf, 0x1Cu);
        }

        _Apple80211IOUCResume();
        IOObjectRelease(v5);
        v5 = IOIteratorNext(a2);
      }

      while (v5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v8 = "_Apple80211ServiceMatchedCallback";
    v9 = 1024;
    v10 = 0;
    v11 = 2048;
    v12 = 0;
    _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s: service:%u opaque:%p, No opaque, bailing\n", buf, 0x1Cu);
  }
}

void _Apple80211IOUCResume()
{
  v0 = MEMORY[0x28223BE20]();
  v37 = *MEMORY[0x277D85DE8];
  *(v0 + 2024) = 0;
  v1 = *(v0 + 1820);
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v2)
    {
      v3 = *(v0 + 1848);
      *buf = 136446978;
      v30 = "_Apple80211IOUCResume";
      v31 = 2048;
      v32 = v0;
      v33 = 1024;
      *v34 = v1;
      *&v34[4] = 2048;
      *&v34[6] = v3;
      v4 = MEMORY[0x277D86220];
      v5 = "%{public}s: IOUC already opened for opaque:%p, connect[%u] port[%p]\n";
      v6 = 38;
LABEL_4:
      _os_log_impl(&dword_254882000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, v6);
      return;
    }

    return;
  }

  if (v2)
  {
    v7 = *(v0 + 1848);
    *buf = 136447234;
    v30 = "_Apple80211IOUCResume";
    v31 = 2082;
    v32 = (v0 + 4);
    v33 = 2048;
    *&v34[8] = 1024;
    *&v34[10] = 0;
    v35 = 2048;
    *v34 = v0;
    v36 = v7;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ifname:%{public}s opaque:%p, connect[%u] port[%p]\n", buf, 0x30u);
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (v0 + 4), 0x8000100u);
  if (v8)
  {
    v9 = v8;
    Service = _Apple80211FindService(v8);
    if (!Service)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v30 = "_Apple80211IOUCResume";
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ Not able to find DK Service! \n", buf, 0x16u);
      }

      goto LABEL_18;
    }

    v11 = Service;
    v12 = IOServiceOpen(Service, *MEMORY[0x277D85F48], 0, (v0 + 1820));
    if (v12)
    {
      v17 = v12;
      if (v12 == -536870174 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v30 = "_Apple80211IOUCResume";
        v31 = 2114;
        v32 = v9;
        v33 = 1024;
        *v34 = -536870174;
        *&v34[4] = 1024;
        *&v34[6] = -536870174;
        _os_log_fault_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%{public}s: %{public}@ IOServiceOpen failed with %d/0x%08x", buf, 0x22u);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136446722;
      v30 = "_Apple80211IOUCResume";
      v31 = 2114;
      v32 = v9;
      v33 = 1024;
      *v34 = v17;
      v18 = MEMORY[0x277D86220];
      v19 = "%{public}s: %{public}@ IOServiceOpen failed with %d";
      goto LABEL_35;
    }

    bzero(inputStruct, 0x3C30uLL);
    inputStruct[0] = -1071093303;
    __strlcpy_chk();
    inputStruct[3846] = 43;
    memset(outputStruct, 0, sizeof(outputStruct));
    v27 = 0;
    outputStructCnt = 256;
    v13 = IOConnectCallStructMethod(*(v0 + 1820), 0, inputStruct, 0x3C30uLL, outputStruct, &outputStructCnt);
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v14)
      {
        *buf = 136315650;
        v30 = "_Apple80211IOUCResume";
        v31 = 2114;
        v32 = v9;
        v33 = 1024;
        *v34 = v13;
        v18 = MEMORY[0x277D86220];
        v19 = "%s: %{public}@ Driver version query failed with %d";
LABEL_35:
        _os_log_impl(&dword_254882000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x1Cu);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 136446722;
        v30 = "_Apple80211IOUCResume";
        v31 = 2114;
        v32 = v9;
        v33 = 2082;
        *v34 = outputStruct;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@ Sanity test passed. Version - %{public}s", buf, 0x20u);
      }

      outputStructCnt = 1;
      v15 = IOConnectCallStructMethod(*(v0 + 1820), 1u, 0, 0, (v0 + 1817), &outputStructCnt);
      if (!v15)
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        *(v0 + 96) = 0;
        *(v0 + 101) = 0;
        *(v0 + 88) = 0;
        __strlcpy_chk();
        v25 = v0 + 88;
        LODWORD(v24) = 12;
        DWORD2(v24) = 21;
        if (Apple80211RawGet(v0, &v23))
        {
          goto LABEL_17;
        }

        if (!*(v0 + 72))
        {
          goto LABEL_17;
        }

        inited = Apple80211EventMonitoringInitIOUC(v0, *(v0 + 1840), *(v0 + 1944));
        if (!inited)
        {
          goto LABEL_17;
        }

        v21 = inited;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 136446722;
        v30 = "_Apple80211IOUCResume";
        v31 = 2114;
        v32 = v9;
        v33 = 1024;
        *v34 = v21;
        v18 = MEMORY[0x277D86220];
        v19 = "%{public}s: %{public}@ IOUC event pipe creation failed! %d";
        goto LABEL_35;
      }

      v20 = v15;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v30 = "_Apple80211IOUCResume";
        v31 = 2114;
        v32 = v9;
        v33 = 1024;
        *v34 = v20;
        v18 = MEMORY[0x277D86220];
        v19 = "%{public}s: %{public}@ useIOUCWhenPossible query failed with %d";
        goto LABEL_35;
      }
    }

LABEL_17:
    IOObjectRelease(v11);
LABEL_18:
    CFRelease(v9);
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "_Apple80211IOUCResume";
    v4 = MEMORY[0x277D86220];
    v5 = "%{public}s: ifNameRef Null \n";
    v6 = 12;
    goto LABEL_4;
  }
}

void _Apple80211ServiceTerminatedCallback(uint64_t a1, io_iterator_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v53 = 0;
    v54 = 0;
    v3 = *(a1 + 1976);
    v26 = *(a1 + 1840);
    v27 = *(a1 + 1944);
    v25 = *(a1 + 1848);
    v23 = *(a1 + 1820);
    v24 = *(a1 + 2120);
    label = dispatch_queue_get_label(0);
    if (label)
    {
      v5 = label;
    }

    else
    {
      v5 = "";
    }

    v22 = v5;
    v28 = v3;
    if (v3)
    {
      v21 = dispatch_queue_get_label(v3);
    }

    else
    {
      v21 = "";
    }

    __strlcpy_chk();
    HIBYTE(v54) = 0;
    v6 = IOIteratorNext(a2);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v29 = *MEMORY[0x277CBF058];
      do
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136449282;
          v39 = "_Apple80211ServiceTerminatedCallback";
          v40 = 1024;
          v41 = 9865;
          v42 = 2082;
          v43 = &v53;
          v44 = 2082;
          *v45 = v22;
          *&v45[8] = 1024;
          *v46 = v7;
          *&v46[4] = 2048;
          *&v46[6] = a1;
          *&v46[14] = 2048;
          *&v46[16] = v26;
          *&v46[24] = 2048;
          *&v46[26] = v28;
          *&v46[34] = 2082;
          *&v46[36] = v21;
          *&v46[44] = 1024;
          *&v46[46] = v23;
          v47 = 2048;
          v48 = v25;
          v49 = 2048;
          v50 = v27;
          v51 = 1024;
          v52 = v24;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s/%u: '%{public}s' dq:'%{public}s', service:%u opaque:%p, ioucQueue[%p] serviceQ[%p]/sq:'%{public}s' connect[%u] port[%p] runLoop[%p] allowRunLoop[%u]\n", buf, 0x74u);
        }

        v55 = 0;
        v56 = 0;
        v31 = *(a1 + 1976);
        v9 = *(a1 + 1944);
        v10 = *(a1 + 1840);
        v11 = dispatch_queue_get_label(0);
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = "";
        }

        __strlcpy_chk();
        HIBYTE(v56) = 0;
        current_queue = dispatch_get_current_queue();
        v14 = *(a1 + 1976);
        v15 = *(a1 + 1840);
        if (v14)
        {
          if (v15)
          {
            v16 = v14 == v15;
          }

          else
          {
            v16 = 1;
          }

          v17 = !v16;
          if (v15)
          {
LABEL_27:
            v18 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          v17 = 0;
          if (v15)
          {
            goto LABEL_27;
          }
        }

        if (!*(a1 + 1944))
        {
          goto LABEL_27;
        }

        v18 = *(a1 + 2120);
LABEL_28:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136448770;
          v39 = "_processApple8021180211ServiceTerminatedCallback";
          v40 = 1024;
          v41 = 9789;
          v42 = 2082;
          v43 = &v55;
          v44 = 1024;
          *v45 = v8;
          *&v45[4] = 1024;
          *&v45[6] = v7;
          *v46 = 2048;
          *&v46[2] = a1;
          *&v46[10] = 2048;
          *&v46[12] = v10;
          *&v46[20] = 2048;
          *&v46[22] = v9;
          *&v46[30] = 2048;
          *&v46[32] = v31;
          *&v46[40] = 2048;
          *&v46[42] = current_queue;
          v47 = 2082;
          v48 = v12;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s/%u: '%{public}s' [%u] service:%u opaque:%p, ioucQueue[%p] ioucRunLoop[%p] serviceQ[%p] currentQ[%p] dq:'%{public}s', pre halting ...\n", buf, 0x64u);
        }

        if (v18)
        {
          v19 = CFRetain(*(a1 + 1944));
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___processApple8021180211ServiceTerminatedCallback_block_invoke;
          block[3] = &__block_descriptor_tmp_1944;
          block[4] = a1;
          v36 = v7;
          v37 = v8;
          CFRunLoopPerformBlock(v19, v29, block);
          CFRunLoopWakeUp(v19);
          CFRelease(v19);
        }

        else if (v17)
        {
          v20 = *(a1 + 1840);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 0x40000000;
          v32[2] = ___processApple8021180211ServiceTerminatedCallback_block_invoke_2;
          v32[3] = &__block_descriptor_tmp_1946;
          v33 = v7;
          v34 = v8;
          v32[4] = a1;
          v32[5] = current_queue;
          dispatch_sync(v20, v32);
        }

        else
        {
          _processApple8021180211ServiceTerminatedCallbackHaltHelper(a1, v7, v8, current_queue, "not serialized, on proper queue");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136448770;
          v39 = "_processApple8021180211ServiceTerminatedCallback";
          v40 = 1024;
          v41 = 9830;
          v42 = 2082;
          v43 = &v55;
          v44 = 1024;
          *v45 = v8;
          *&v45[4] = 1024;
          *&v45[6] = v7;
          *v46 = 2048;
          *&v46[2] = a1;
          *&v46[10] = 2048;
          *&v46[12] = v10;
          *&v46[20] = 2048;
          *&v46[22] = v9;
          *&v46[30] = 2048;
          *&v46[32] = v31;
          *&v46[40] = 2048;
          *&v46[42] = current_queue;
          v47 = 2082;
          v48 = v12;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s/%u: '%{public}s' [%u] service:%u opaque:%p, ioucQueue[%p] ioucRunLoop[%p] serviceQ[%p] currentQ[%p] dq:'%{public}s', ... post halted\n", buf, 0x64u);
        }

        IOObjectRelease(v7);
        ++v8;
        v7 = IOIteratorNext(a2);
      }

      while (v7);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v39 = "_Apple80211ServiceTerminatedCallback";
    _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s: No opaque, bailing\n", buf, 0xCu);
  }
}

uint64_t Apple80211Close(uint64_t a1)
{
  v5[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294963396;
  }

  if (*(a1 + 1976))
  {
    v2 = *(a1 + 1976);
  }

  else
  {
    v2 = *(a1 + 2104);
  }

  v3 = *(a1 + 2112);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __Apple80211Close_block_invoke;
  v5[3] = &__block_descriptor_tmp_87;
  v5[4] = a1;
  dispatch_group_notify(v3, v2, v5);
  if (*(a1 + 1848) || *(a1 + 64) || *(a1 + 56))
  {
    Apple80211EventMonitoringHalt(a1);
  }

  dispatch_group_leave(*(a1 + 2112));
  return 0;
}

void __Apple80211Close_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    pthread_mutex_destroy((v1 + 272));
    pthread_mutex_destroy((v1 + 160));
    pthread_mutex_destroy((v1 + 1608));
    v2 = *(v1 + 1992);
    if (v2)
    {
      dispatch_source_cancel(v2);
      dispatch_release(*(v1 + 1992));
      *(v1 + 1992) = 0;
    }

    v3 = *(v1 + 1984);
    if (v3)
    {
      IONotificationPortDestroy(v3);
      *(v1 + 1984) = 0;
    }

    v4 = *(v1 + 1976);
    if (v4)
    {
      dispatch_release(v4);
      *(v1 + 1976) = 0;
    }

    v5 = *(v1 + 112);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 112) = 0;
    }

    pthread_mutex_destroy((v1 + 1680));
    pthread_mutex_destroy((v1 + 1752));
    *(v1 + 1817) = 0;
    if ((*v1 & 0x80000000) == 0)
    {
      close(*v1);
    }

    v6 = *(v1 + 1820);
    if (v6)
    {
      *(v1 + 1820) = 0;
      IOServiceClose(v6);
    }

    v7 = *(v1 + 2000);
    if (v7)
    {
      IOObjectRelease(v7);
    }

    v8 = *(v1 + 2004);
    if (v8)
    {
      IOObjectRelease(v8);
    }

    v9 = *(v1 + 2112);
    if (v9)
    {
      dispatch_release(v9);
      *(v1 + 2112) = 0;
    }

    v10 = *(v1 + 2104);
    if (v10)
    {
      dispatch_release(v10);
      *(v1 + 2104) = 0;
    }

    v11 = *(v1 + 144);
    if (v11)
    {
      CFRelease(v11);
    }

    *(v1 + 12) = 0;
    *(v1 + 4) = 0;

    free(v1);
  }
}

void _dispatchObssMitInfoEvent(uint64_t a1, char *a2, int a3)
{
  if (!a2)
  {
    return;
  }

  if (a3 != 44)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2 + 20);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"LAST_OBSS_STATS_TIME", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt8Type, a2);
    if (!v10)
    {
      v28 = v9;
LABEL_46:
      CFRelease(v28);
      goto LABEL_47;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"SHOULD_APPLY_OBSS_MIT", v10);
    v12 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 1);
    v39 = v12;
    v40 = v11;
    if (v12 && (CFDictionaryAddValue(v6, @"IS_OBSS_MIT_APPLIED", v12), (v13 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 2)) != 0))
    {
      v38 = v13;
      CFDictionaryAddValue(v6, @"CURRENT_OP_BW", v13);
      v14 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 3);
      if (v14)
      {
        v37 = v14;
        CFDictionaryAddValue(v6, @"RECOMM_OBSS_MIT_BW", v14);
        v15 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 4);
        if (v15)
        {
          v36 = v15;
          CFDictionaryAddValue(v6, @"OBSS_RX_PLCP_ERR", v15);
          v16 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 8);
          if (v16)
          {
            v35 = v16;
            CFDictionaryAddValue(v6, @"OBSS_RX_BAD_FCS_ERR", v16);
            v17 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 12);
            if (v17)
            {
              v34 = v17;
              CFDictionaryAddValue(v6, @"OBSS_RX_FRAMES", v17);
              v18 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 16);
              if (v18)
              {
                CFDictionaryAddValue(v6, @"OBSS_RX_PER_PCT", v18);
                v19 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                if (v19)
                {
                  v20 = 0;
                  v21 = 1;
                  while (1)
                  {
                    v22 = v21;
                    v23 = CFNumberCreate(v7, kCFNumberSInt8Type, &a2[v20 + 40]);
                    if (!v23)
                    {
                      break;
                    }

                    CFArrayAppendValue(v19, v23);
                    CFRelease(v23);
                    v21 = 0;
                    v20 = 1;
                    if ((v22 & 1) == 0)
                    {
                      CFDictionaryAddValue(v6, @"OBSS_MIT_SOI", v19);
                      v23 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                      if (!v23)
                      {
                        break;
                      }

                      cf = v9;
                      v24 = a2 + 24;
                      v25 = 8;
                      do
                      {
                        v26 = CFNumberCreate(v7, kCFNumberSInt8Type, v24);
                        if (!v26)
                        {
                          v28 = 0;
                          goto LABEL_26;
                        }

                        v27 = v26;
                        CFArrayAppendValue(v23, v26);
                        CFRelease(v27);
                        ++v24;
                        --v25;
                      }

                      while (v25);
                      CFDictionaryAddValue(v6, @"OBSS_PWREST_CORE0", v23);
                      v28 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                      if (v28)
                      {
                        v29 = a2 + 32;
                        v30 = 8;
                        while (1)
                        {
                          v31 = CFNumberCreate(v7, kCFNumberSInt8Type, v29);
                          if (!v31)
                          {
                            break;
                          }

                          v32 = v31;
                          CFArrayAppendValue(v28, v31);
                          CFRelease(v32);
                          ++v29;
                          if (!--v30)
                          {
                            CFDictionaryAddValue(v6, @"OBSS_PWREST_CORE1", v28);
                            (*(a1 + 72))(0, a1, 218, v6, 8, *(a1 + 80));
                            break;
                          }
                        }
                      }

LABEL_26:
                      v9 = cf;
                      goto LABEL_27;
                    }
                  }

LABEL_59:
                  v28 = 0;
LABEL_27:
                  CFRelease(v9);
                  CFRelease(v40);
                  if (v39)
                  {
                    CFRelease(v39);
                  }

                  if (v38)
                  {
                    CFRelease(v38);
                  }

                  if (v37)
                  {
                    CFRelease(v37);
                  }

                  if (v36)
                  {
                    CFRelease(v36);
                  }

                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  if (v34)
                  {
                    CFRelease(v34);
                  }

                  if (v18)
                  {
                    CFRelease(v18);
                  }

                  if (v19)
                  {
                    CFRelease(v19);
                  }

                  if (v23)
                  {
                    CFRelease(v23);
                  }

                  if (!v28)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_46;
                }

LABEL_58:
                v23 = 0;
                goto LABEL_59;
              }

LABEL_57:
              v19 = 0;
              goto LABEL_58;
            }

LABEL_56:
            v34 = 0;
            v18 = 0;
            goto LABEL_57;
          }

LABEL_55:
          v35 = 0;
          goto LABEL_56;
        }

LABEL_54:
        v36 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      v38 = 0;
    }

    v37 = 0;
    goto LABEL_54;
  }

LABEL_47:

  CFRelease(v6);
}

void _dispatchAsyncScanEvent(uint64_t a1, int a2, unsigned int a3)
{
  v46 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 160));
  v4 = *(a1 + 120);
  v5 = *(a1 + 121);
  v6 = *(a1 + 128);
  v7 = *(a1 + 129);
  Mutable = *(a1 + 240);
  v9 = *MEMORY[0x277CBECE8];
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      *(a1 + 2024) = 0;
      LODWORD(v18) = -3901;
      goto LABEL_38;
    }
  }

  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v10;
  v44 = v10;
  memset(__b, 170, 0x8D8uLL);
  v11 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
  if (v11)
  {
    v12 = *(a1 + 144);
    Value = CFDictionaryGetValue(v12, @"SCAN_SHORT_SSID");
    v14 = CFDictionaryGetValue(v12, @"SSID_STR");
    theDict = v12;
    v37 = CFDictionaryGetValue(v12, @"BSSID");
    v38 = Value;
    v15 = (v14 | v37 | Value) != 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    __strlcpy_chk();
    LODWORD(v44) = 11;
    DWORD2(v44) = 2264;
    v45 = __b;
    v16 = -10000;
    while (1)
    {
      bzero(__b, 0x8D8uLL);
      HIWORD(__b[34]) = 2048;
      if (*(a1 + 2024))
      {
        __strlcpy_chk();
      }

      if (Apple80211RawGet(a1, &v43))
      {
        break;
      }

      _addScanResultToList(a1, __b, v11, Mutable, 0, v4, v15, v5, v6, v7, 0, (*(a1 + 136) & 0x200) != 0);
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_10;
      }
    }

    if (v16 == -1)
    {
LABEL_10:
      LODWORD(v18) = -3902;
      goto LABEL_11;
    }

    if (*__error() == -528350138 || *__error() == 5)
    {
      if ((*(a1 + 99) & 0x40) != 0 && (*(a1 + 137) & 8) != 0)
      {
        v19 = CFDictionaryGetValue(theDict, @"SCAN_SSID_LIST");
        v20 = CFDictionaryGetValue(theDict, @"SCAN_BSSID_LIST");
        _Apple80211AddOriginatingRNRChannelListToScanResults(v11, Mutable, v38, v14, v37, v19, v20);
      }

      goto LABEL_19;
    }

    LODWORD(v18) = *__error();
    if (!v18)
    {
LABEL_19:
      LODWORD(v18) = 0;
      *(a1 + 240) = Mutable;
      goto LABEL_20;
    }
  }

  else
  {
    LODWORD(v18) = -3901;
  }

LABEL_11:
  if (!*(a1 + 240))
  {
    CFRelease(Mutable);
  }

LABEL_20:
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 2024) = 0;
  if (v18 != 16)
  {
    if (!v18)
    {
      v21 = *(a1 + 236) - 1;
      *(a1 + 236) = v21;
      if (v21 && (v22 = *(a1 + 144)) != 0 && (v23 = CFRetain(v22)) != 0)
      {
        v24 = v23;
        pthread_mutex_unlock((a1 + 160));
        LODWORD(v18) = Apple80211ScanAsync();
        CFRelease(v24);
        if (!v18)
        {
          return;
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }
    }

    goto LABEL_38;
  }

  v25 = *(a1 + 264);
  if (v25 > 4)
  {
    LODWORD(v18) = 16;
LABEL_38:
    v30 = *(a1 + 248);
    if (v30)
    {
      Current = CFAbsoluteTimeGetCurrent();
      CFRunLoopTimerSetNextFireDate(v30, Current + 315360000.0);
    }

    v32 = *(a1 + 256);
    if (v32)
    {
      v33 = dispatch_time(0, 315360000000000000);
      dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    v34 = *(a1 + 144);
    v35 = *(a1 + 240);
    *(a1 + 224) = 0;
    *(a1 + 144) = 0;
    *(a1 + 240) = 0;
    *(a1 + 232) = 0;
    *(a1 + 236) = 0;
    *(a1 + 124) = 0x80000000;
    *(a1 + 128) = 0;
    pthread_mutex_unlock((a1 + 160));
    if (v18)
    {
      v36 = 1;
    }

    else
    {
      v36 = a2 == 0;
    }

    if (v36)
    {
      v18 = v18;
    }

    else
    {
      v18 = a3;
    }

    if (v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      __b[0] = 136315394;
      *&__b[1] = "_dispatchAsyncScanEvent";
      LOWORD(__b[3]) = 1024;
      *(&__b[3] + 2) = v18;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Error: posting APPLE80211_M_SCAN_DONE with err %d", __b, 0x12u);
    }

    (*(a1 + 72))(v18, a1, 10, v35, 8, *(a1 + 80));
    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    return;
  }

  if (!v25)
  {
    v26 = *(a1 + 248);
    if (v26)
    {
      v27 = CFAbsoluteTimeGetCurrent();
      CFRunLoopTimerSetNextFireDate(v26, v27 + 0.2);
    }

    v28 = *(a1 + 256);
    if (v28)
    {
      v29 = dispatch_time(0, 200000000);
      dispatch_source_set_timer(v28, v29, 0xBEBC200uLL, 0);
    }
  }

  ++*(a1 + 264);
  pthread_mutex_unlock((a1 + 160));
}

void _Apple80211AddOriginatingRNRChannelListToScanResults(const __CFArray *a1, const __CFArray *a2, unint64_t a3, unint64_t a4, ether_addr *a5, const __CFArray *a6, const __CFArray *a7)
{
  v115 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = *MEMORY[0x277CBECE8];
    theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (theArray)
    {
      Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v93 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
        if (v93)
        {
          v91 = a5;
          v97 = (a3 | a4 | a5) != 0;
          v108 = 0;
          v98 = a2;
          if (CFArrayGetCount(a2) >= 1)
          {
            v10 = *MEMORY[0x277CBED28];
            v102 = 1;
            allocator = v9;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a2, v108);
              if (!ValueAtIndex)
              {
                goto LABEL_128;
              }

              v12 = ValueAtIndex;
              valuePtr = 0;
              Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL_FLAGS");
              if (Value)
              {
                CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
              }

              v106 = 0;
              v14 = CFDictionaryGetValue(v12, @"CHANNEL");
              if (v14)
              {
                CFNumberGetValue(v14, kCFNumberSInt32Type, &v106);
              }

              v95 = v106;
              if (v97)
              {
                break;
              }

LABEL_35:
              if ((valuePtr & 0x2000) != 0)
              {
                v24 = CFDictionaryGetValue(v12, @"ORIG_RNR_CHANNEL_LIST");
                if (v102)
                {
                  v25 = a1;
                }

                else
                {
                  v25 = theArray;
                }

                if (CFArrayGetCount(v25) >= 1)
                {
                  v26 = 0;
                  v103 = v12;
                  v101 = v25;
                  while (1)
                  {
                    v27 = CFArrayGetValueAtIndex(v25, v26);
                    if (v27)
                    {
                      break;
                    }

LABEL_119:
                    if (++v26 >= CFArrayGetCount(v25))
                    {
                      goto LABEL_122;
                    }
                  }

                  v28 = v27;
                  v105 = v26;
                  if (v102 && CFDictionaryGetValueIfPresent(v27, @"RNR_IE", 0))
                  {
                    CFArrayAppendValue(theArray, v28);
                  }

                  *buf = 0;
                  v29 = CFDictionaryGetValue(v12, @"BSSID");
                  v104 = v24;
                  if (v29)
                  {
                    v30 = v29;
                    v31 = CFDictionaryGetValue(v12, @"SHORT_SSID");
                    *buf = v31;
                    if (v31)
                    {
                      CFRetain(v31);
                    }

                    else
                    {
                      v32 = CFDictionaryGetValue(v12, @"SSID");
                      if (!v32)
                      {
                        goto LABEL_118;
                      }

                      Apple80211CalculateShortSSIDCopy(v32, buf);
                      if (!*buf)
                      {
                        goto LABEL_118;
                      }
                    }

                    v33 = CFDictionaryGetValue(v28, @"RNR_IE");
                    if (v33)
                    {
                      v34 = CFDictionaryGetValue(v33, @"NEIGHBOR_AP_INFO_LIST");
                      if (v34)
                      {
                        v35 = v34;
                        if (CFArrayGetCount(v34) >= 1)
                        {
                          v36 = 0;
                          while (1)
                          {
                            v37 = CFArrayGetValueAtIndex(v35, v36);
                            if (v37)
                            {
                              v38 = CFDictionaryGetValue(v37, @"TBTT_INFO_SET");
                              if (CFArrayGetCount(v38) >= 1)
                              {
                                break;
                              }
                            }

                            v44 = 1;
LABEL_74:
                            Count = CFArrayGetCount(v35);
                            if (v44)
                            {
                              if (Count > ++v36)
                              {
                                continue;
                              }
                            }

                            goto LABEL_78;
                          }

                          v39 = 1;
                          while (2)
                          {
                            v40 = CFArrayGetValueAtIndex(v38, v39 - 1);
                            if (!v40)
                            {
                              goto LABEL_68;
                            }

                            v41 = v40;
                            v42 = CFDictionaryGetValue(v40, @"BSSID");
                            if (!v42 || !CFEqual(v42, v30) || CFDictionaryGetValue(v41, @"COLOCATED_AP") != v10)
                            {
                              goto LABEL_68;
                            }

                            v43 = CFDictionaryGetValue(v41, @"SHORT_SSID");
                            v109 = v43;
                            if (v43)
                            {
                              if (CFEqual(v43, *buf))
                              {
                                goto LABEL_63;
                              }

LABEL_68:
                              v44 = 1;
                            }

                            else
                            {
                              v45 = CFDictionaryGetValue(v41, @"SAME_SSID");
                              v46 = CFDictionaryGetValue(v28, @"SSID");
                              if (v45 != v10)
                              {
                                goto LABEL_68;
                              }

                              if (!v46)
                              {
                                goto LABEL_68;
                              }

                              Apple80211CalculateShortSSIDCopy(v46, &v109);
                              if (!v109)
                              {
                                goto LABEL_68;
                              }

                              v47 = CFEqual(v109, *buf);
                              CFRelease(v109);
                              if (!v47)
                              {
                                goto LABEL_68;
                              }

LABEL_63:
                              v44 = 0;
                            }

                            v48 = CFArrayGetCount(v38);
                            if (!v44)
                            {
                              goto LABEL_74;
                            }

                            v49 = v48 <= v39++;
                            if (v49)
                            {
                              goto LABEL_74;
                            }

                            continue;
                          }
                        }
                      }
                    }
                  }

                  LOBYTE(v44) = 1;
LABEL_78:
                  if (*buf)
                  {
                    CFRelease(*buf);
                  }

                  v24 = v104;
                  v26 = v105;
                  if (v44)
                  {
                    v9 = allocator;
                    goto LABEL_82;
                  }

                  v9 = allocator;
                  v12 = v103;
                  if (!v104)
                  {
                    v51 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
                    if (!v51)
                    {
                      goto LABEL_155;
                    }

                    v24 = v51;
                    CFDictionarySetValue(v103, @"ORIG_RNR_CHANNEL_LIST", v51);
                    CFRelease(v24);
                    v26 = v105;
                  }

                  v52 = CFDictionaryGetValue(v28, @"CHANNEL");
                  if (v52)
                  {
                    v53 = v52;
                    v54 = v24;
                    v55 = CFDictionaryGetValue(v28, @"CHANNEL_FLAGS");
                    if (v55)
                    {
                      v56 = v55;
                      v57 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      if (!v57)
                      {
                        goto LABEL_155;
                      }

                      v58 = v57;
                      CFDictionarySetValue(v57, @"CHANNEL", v53);
                      CFDictionarySetValue(v58, @"CHANNEL_FLAGS", v56);
                      v59 = CFDictionaryGetValue(v28, @"SSID");
                      if (v59 && CFDataGetLength(v59))
                      {
                        v24 = v54;
                        v60 = CFArrayGetCount(v54);
                        v12 = v103;
                        if (v60)
                        {
                          *buf = 0;
                          if (CFArrayGetCount(v24) >= 1)
                          {
                            v61 = 0;
                            do
                            {
                              v62 = CFArrayGetValueAtIndex(v24, *buf);
                              if (v62 && CFDictionaryGetValue(v62, @"ORIG_RNR_CHANNEL_FROM_HIDDEN_BSS") == v10)
                              {
                                if (!v61)
                                {
                                  v61 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
                                  if (!v61)
                                  {
                                    goto LABEL_109;
                                  }
                                }

                                v63 = CFNumberCreate(allocator, kCFNumberCFIndexType, buf);
                                if (!v63)
                                {
                                  goto LABEL_109;
                                }

                                v64 = v63;
                                CFArrayAppendValue(v61, v63);
                                CFRelease(v64);
                              }

                              v65 = ++*buf;
                            }

                            while (v65 < CFArrayGetCount(v24));
                            if (!v61)
                            {
                              goto LABEL_114;
                            }

                            v66 = CFArrayGetCount(v61);
                            if (v66 < 1)
                            {
                              goto LABEL_110;
                            }

                            v67 = v66 + 1;
                            do
                            {
                              v68 = CFArrayGetValueAtIndex(v61, v67 - 2);
                              if (v68)
                              {
                                *buf = -1;
                                CFNumberGetValue(v68, kCFNumberCFIndexType, buf);
                                if (*buf != -1)
                                {
                                  CFArrayRemoveValueAtIndex(v24, *buf);
                                }
                              }

                              --v67;
                            }

                            while (v67 > 1);
LABEL_109:
                            if (!v61)
                            {
                              goto LABEL_114;
                            }

LABEL_110:
                            CFRelease(v61);
                          }
                        }

LABEL_114:
                        v117.length = CFArrayGetCount(v24);
                        v117.location = 0;
                        if (!CFArrayContainsValue(v24, v117, v58))
                        {
                          CFArrayAppendValue(v24, v58);
                        }

                        CFRelease(v58);
                      }

                      else
                      {
                        v24 = v54;
                        if (!_containsNonHiddenRNRChannels(v54))
                        {
                          CFDictionarySetValue(v58, @"ORIG_RNR_CHANNEL_FROM_HIDDEN_BSS", v10);
                          v12 = v103;
                          goto LABEL_114;
                        }

                        CFRelease(v58);
                        v12 = v103;
                      }

                      v25 = v101;
LABEL_118:
                      v26 = v105;
                      goto LABEL_119;
                    }

LABEL_82:
                    v12 = v103;
                  }

                  v25 = v101;
                  goto LABEL_119;
                }

LABEL_122:
                if (!v97 && !_containsNonHiddenRNRChannels(v24))
                {
                  if (!_os_feature_enabled_impl())
                  {
                    goto LABEL_135;
                  }

                  v73 = 0;
                  do
                  {
                    v74 = k6GHzPSC[v73];
                    if (v73 > 0xD)
                    {
                      break;
                    }

                    ++v73;
                  }

                  while (v74 != v95);
                  if (v74 != v95)
                  {
LABEL_135:
                    if (a6)
                    {
                      v75 = CFDictionaryGetValue(v12, @"SSID_STR");
                      if (v75)
                      {
                        v76 = v75;
                        v118.length = CFArrayGetCount(a6);
                        v118.location = 0;
                        LODWORD(v75) = CFArrayContainsValue(a6, v118, v76);
                      }
                    }

                    else
                    {
                      LODWORD(v75) = 0;
                    }

                    if (a7 && !v75)
                    {
                      v77 = CFDictionaryGetValue(v12, @"BSSID");
                      if (!v77)
                      {
                        goto LABEL_144;
                      }

                      v78 = v77;
                      v119.length = CFArrayGetCount(a7);
                      v119.location = 0;
                      LODWORD(v75) = CFArrayContainsValue(a7, v119, v78);
                    }

                    if (!v75)
                    {
LABEL_144:
                      v69 = v9;
                      v79 = CFNumberCreate(v9, kCFNumberCFIndexType, &v108);
                      if (!v79)
                      {
                        goto LABEL_155;
                      }

                      v71 = v79;
                      CFArrayAppendValue(Mutable, v79);
                      CFArrayAppendValue(v93, v71);
                      v102 = 0;
                      goto LABEL_127;
                    }
                  }
                }

                v102 = 0;
              }

LABEL_128:
              v72 = ++v108;
              v49 = v72 < CFArrayGetCount(v98);
              a2 = v98;
              if (!v49)
              {
                goto LABEL_146;
              }
            }

            if (a3)
            {
              v15 = CFDictionaryGetValue(v12, @"SHORT_SSID");
              *buf = v15;
              if (v15)
              {
                v16 = CFEqual(a3, v15);
                goto LABEL_23;
              }

              v18 = CFDictionaryGetValue(v12, @"SSID");
              if (v18)
              {
                Apple80211CalculateShortSSIDCopy(v18, buf);
                if (*buf)
                {
                  v16 = CFEqual(a3, *buf);
                  CFRelease(*buf);
                  goto LABEL_23;
                }
              }
            }

            else if (a4)
            {
              v17 = CFDictionaryGetValue(v12, @"SSID_STR");
              if (v17)
              {
                v16 = CFEqual(a4, v17) != 0;
                goto LABEL_23;
              }
            }

            v16 = 0;
LABEL_23:
            if (v91 && ((v19 = CFDictionaryGetValue(v12, @"BSSID"), AddressFromString = Apple80211GetAddressFromString(v91), *buf = AddressFromString, *&buf[4] = WORD2(AddressFromString), v21 = Apple80211GetAddressFromString(v19), WORD2(v109) = WORD2(v21), *buf == v21) ? (v22 = *&buf[4] == WORD2(v21)) : (v22 = 0), v22 ? (v23 = 0) : (v23 = 1), !(a3 | a4) ? (v16 = 1) : (v16 &= 1u), v23) || !v16)
            {
              v69 = v9;
              v70 = CFNumberCreate(v9, kCFNumberCFIndexType, &v108);
              if (!v70)
              {
                goto LABEL_155;
              }

              v71 = v70;
              CFArrayAppendValue(Mutable, v70);
LABEL_127:
              CFRelease(v71);
              v9 = v69;
              goto LABEL_128;
            }

            goto LABEL_35;
          }

LABEL_146:
          v80 = CFArrayGetCount(Mutable);
          if (v80 >= 1)
          {
            v81 = (v80 & 0x7FFFFFFF) + 1;
            v82 = MEMORY[0x277D86220];
            do
            {
              v83 = CFArrayGetValueAtIndex(Mutable, v81 - 2);
              if (v83)
              {
                v84 = v83;
                v109 = -1;
                CFNumberGetValue(v83, kCFNumberCFIndexType, &v109);
                if (v109 != -1)
                {
                  v85 = CFArrayGetValueAtIndex(v98, v109);
                  v120.length = CFArrayGetCount(v93);
                  v120.location = 0;
                  if (CFArrayContainsValue(v93, v120, v84))
                  {
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                    {
                      v86 = CFDictionaryGetValue(v85, @"SSID_STR");
                      v87 = CFDictionaryGetValue(v85, @"BSSID");
                      *buf = 136315650;
                      *&buf[4] = "_Apple80211AddOriginatingRNRChannelListToScanResults";
                      v111 = 2112;
                      v112 = v86;
                      v113 = 2112;
                      v114 = v87;
                      _os_log_error_impl(&dword_254882000, v82, OS_LOG_TYPE_ERROR, "%s: Excluding non-PSC 6GHz scan result (%@/%@)", buf, 0x20u);
                    }
                  }

                  CFArrayRemoveValueAtIndex(v98, v109);
                }
              }

              --v81;
            }

            while (v81 > 1);
          }

LABEL_155:
          CFRelease(theArray);
          CFRelease(Mutable);
          CFRelease(v93);
        }

        else
        {
          CFRelease(theArray);

          CFRelease(Mutable);
        }
      }

      else
      {
        CFRelease(theArray);
      }
    }
  }
}

void _dispatchRoamScanStart(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 12)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"ROAM_LAST_STATUS", v8);
          CFRelease(v9);
          v10 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"ROAM_SCAN_REASON", v10);
            CFRelease(v11);
            (*(a1 + 72))(0, a1, 137, v6, 8, *(a1 + 80));
          }
        }

        CFRelease(v6);
      }
    }
  }
}

const char *convertApple80211ReturnToString(int a1)
{
  if ((a1 & 0x3E00) == 0x1000)
  {
    v3 = &k80211StatusDescList;
    v4 = a1 & 0x1FF;
    if ((a1 & 0x1FF) == 0)
    {
      return *(v3 + 1);
    }

    v5 = 1;
    result = "unknown IEEE status";
    while (1)
    {
      v7 = (&k80211StatusDescList + 16 * v5);
      if (*v7 == -1)
      {
        break;
      }

      ++v5;
      if (*v7 == v4)
      {
        v3 = v7;
        return *(v3 + 1);
      }
    }
  }

  else
  {
    if ((a1 & 0x3E00) != 0x3000)
    {
      v3 = &kMapping;
      v8 = 176;
      result = "unknown Apple80211 ReturnToString";
      while (*v3 != a1)
      {
        v3 += 4;
        if (!--v8)
        {
          return result;
        }
      }

      return *(v3 + 1);
    }

    v2 = a1 & 0x1FF;
    if (v2 == 1)
    {
      v3 = &unk_27978FD60;
      return *(v3 + 1);
    }

    v9 = &unk_27978FD60;
    v10 = 33;
    result = "unknown IEEE reason";
    while (--v10)
    {
      v3 = v9 + 4;
      v11 = v9[4];
      v9 += 4;
      if (v11 == v2)
      {
        return *(v3 + 1);
      }
    }
  }

  return result;
}

uint64_t _parseHs20OperatorName(uint64_t a1, __CFDictionary *a2)
{
  v4 = *(a1 + 2);
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  theDict = a2;
  v8 = v4 - 6;
  v10 = *(a1 + 10);
  v9 = (a1 + 10);
  if (v4 - 6 <= v10)
  {
LABEL_17:
    CFDictionaryAddValue(theDict, @"ANQP_OPERATOR_NAMES_LIST", v7);
    v23 = 1;
    goto LABEL_18;
  }

  LOWORD(v11) = 0;
  while (1)
  {
    v12 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v12)
    {
      goto LABEL_25;
    }

    v13 = v12;
    v14 = *v9;
    if (v14 < 3 || (v15 = CFStringCreateWithBytes(v5, v9 + 4, v14 - 3, 0x8000100u, 1u)) == 0)
    {
      v16 = v7;
LABEL_23:
      CFRelease(v16);
      v23 = 0;
      goto LABEL_19;
    }

    v16 = v15;
    v17 = CFStringCreateWithBytes(v5, v9 + 1, 3, 0x8000100u, 1u);
    if (!v17)
    {
      CFRelease(v7);
      goto LABEL_23;
    }

    v18 = v17;
    CFDictionaryAddValue(v13, @"ANQP_LANG_CODE", v17);
    CFDictionaryAddValue(v13, @"ANQP_OPERATOR_NAME", v16);
    CFArrayAppendValue(v7, v13);
    CFRelease(v16);
    CFRelease(v18);
    CFRelease(v13);
    v19 = v11 >> 63;
    v20 = v11 + 1;
    if (v11 == -1)
    {
      ++v19;
    }

    if (v19 != v20 >> 63 || v20 != v20)
    {
      syslog(3, "parsedLen %hu increment by value %lu os_add_overflow FAILED\n");
      goto LABEL_25;
    }

    v22 = *v9;
    v11 = v22 + v20;
    if (v11 != (v22 + v20))
    {
      break;
    }

    v9 += *v9 + 1;
    if (v8 - v11 <= *v9)
    {
      goto LABEL_17;
    }
  }

  syslog(3, "parsedLen %hu increment by value %hhu os_add_overflow FAILED\n");
LABEL_25:
  v23 = 0;
LABEL_18:
  v13 = v7;
LABEL_19:
  CFRelease(v13);
  return v23;
}

uint64_t Apple80211GetInterfaceNameCopy(uint64_t a1, CFStringRef *a2)
{
  result = 4294963396;
  if (a1 && a2)
  {
    v6 = *(a1 + 4);
    v5 = (a1 + 4);
    if (v6)
    {
      v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v5, 0x8000100u);
      if (v7)
      {
        v8 = v7;
        result = 0;
        *a2 = v8;
      }

      else
      {
        return 4294963395;
      }
    }

    else
    {
      return 4294963368;
    }
  }

  return result;
}

uint64_t Apple80211GetInfoCopy(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    *a2 = 0;
    return 4294963395;
  }

  v4 = Mutable;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    goto LABEL_6;
  }

  if (CFDictionaryGetCount(v4) < 1)
  {
    v5 = 0;
LABEL_6:
    *a2 = 0;
    CFRelease(v4);
    return v5;
  }

  v5 = 0;
  *a2 = v4;
  return v5;
}

uint64_t Apple80211SetPowerState(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  v2 = Apple80211CopyValue();
  if (v2)
  {
    return v2;
  }

  syslog(3, "%s:%d: [kA11UnknownErr] Apple80211CopyValue returned %d\n", "Apple80211SetPowerState", 521, 0);
  return 4294963394;
}

uint64_t Apple80211Scan()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v63 = *MEMORY[0x277D85DE8];
  v61 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = v6;
  v60 = v6;
  memset(v58, 170, sizeof(v58));
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v10 = CFArrayCreateMutable(v7, 0, v8);
  *&v55[1] = -1431655766;
  v55[0] = 257;
  v54 = 0;
  bzero(v56, 0x1598uLL);
  v56[0] = 1;
  v11 = _openEventSocket();
  v12 = v11;
  v53 = -1431655766;
  v52 = 0;
  if (!v5 || (*v5 & 0x80000000) != 0 || !*(v5 + 4))
  {
    v14 = 0;
    goto LABEL_80;
  }

  if (Mutable)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
    v46 = 0;
    v42 = 4294963395;
    goto LABEL_56;
  }

  if ((v11 & 0x80000000) == 0)
  {
    if (*(v5 + 1848) || *(v5 + 64) || *(v5 + 56))
    {
      v14 = 0;
    }

    else
    {
      v14 = dispatch_queue_create("com.apple.wifi.scan-done", 0);
      v40 = Apple80211EventMonitoringInit2(v5, emptyEventCallback, 0, v14);
      if (v40)
      {
        v42 = v40;
        dispatch_release(v14);
        v14 = 0;
        v46 = 0;
        goto LABEL_56;
      }
    }

    if (*(v5 + 52) || (*(v5 + 21) & 2) != 0)
    {
      v46 = 0;
      goto LABEL_20;
    }

    if (*(v5 + 56) || *(v5 + 64) || *(v5 + 1848))
    {
      *(v5 + 21) |= 2u;
      v46 = 1;
LABEL_20:
      v47 = *(v5 + 99);
      ScanData = _getScanData(v2, v56, 0, v55 + 1, &v53, &v55[1], v55, &v54, v5 + 88, &v52);
      if (ScanData)
      {
        v42 = ScanData;
        goto LABEL_56;
      }

      v50 = Mutable;
      v49 = v12;
      v16 = v56[1218];
      v48 = v56[13];
      Value = CFDictionaryGetValue(v2, @"SCAN_SHORT_SSID");
      v18 = CFDictionaryGetValue(v2, @"SSID_STR");
      v43 = CFDictionaryGetValue(v2, @"BSSID");
      v44 = v18;
      v19 = (v18 | v43 | Value) != 0;
      if ((*&v55[1])--)
      {
        v21 = 0uLL;
        v22 = (v16 >> 9) & ((v47 << 25) >> 31);
        v45 = v16;
        do
        {
          v61 = 0;
          v59 = v21;
          v60 = v21;
          LODWORD(v60) = 10;
          memset(uu, 170, sizeof(uu));
          MEMORY[0x259C1D950](uu);
          uuid_unparse(uu, v57);
          __strlcpy_chk();
          DWORD2(v60) = 5528;
          v61 = v56;
          if (Apple80211RawSet())
          {
            v41 = __error();
            v12 = v49;
            Mutable = v50;
            goto LABEL_86;
          }

          pthread_mutex_lock((v5 + 160));
          *(v5 + 232) = 0;
          *(v5 + 224) = pthread_self();
          *(v5 + 264) = 0;
          v23 = *(v5 + 248);
          Mutable = v50;
          if (v23)
          {
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(v23, Current + 315360000.0);
          }

          v25 = *(v5 + 256);
          if (v25)
          {
            v26 = dispatch_time(0, 315360000000000000);
            dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
          }

          v27 = *(v5 + 144);
          if (v27)
          {
            CFRelease(v27);
            *(v5 + 144) = 0;
          }

          v28 = *(v5 + 240);
          if (v28)
          {
            CFRelease(v28);
            *(v5 + 240) = 0;
          }

          pthread_mutex_unlock((v5 + 160));
          if (v48 != 3)
          {
            if ((*(v5 + 1848) || *(v5 + 64) || *(v5 + 56)) && (*(v5 + 52) || (*(v5 + 21) & 2) != 0) && (*(v5 + 93) & 0x40) != 0)
            {
              v30 = dispatch_semaphore_create(0);
              *(v5 + 152) = v30;
              v31 = dispatch_time(0, 20000000000);
              dispatch_semaphore_wait(v30, v31);
              dispatch_release(*(v5 + 152));
              *(v5 + 152) = 0;
            }

            else
            {
              v29 = _waitForScanComplete();
              if (v29)
              {
                v42 = v29;
LABEL_55:
                v12 = v49;
                goto LABEL_56;
              }
            }
          }

          v61 = v58;
          v32 = -9999;
          LODWORD(v60) = 11;
          DWORD2(v60) = 2264;
          while (1)
          {
            bzero(v58, 0x8D8uLL);
            v58[0] = 1;
            HIWORD(v58[34]) = 2048;
            if (v57[0])
            {
              __strlcpy_chk();
            }

            if (Apple80211RawGet(v5, &v59))
            {
              break;
            }

            _addScanResultToList(v5, v58, v50, v10, 0, HIBYTE(v55[0]), v19, LOBYTE(v55[0]), v54, v52, 0, v22);
            if (__CFADD__(v32++, 1))
            {
              v42 = 4294963394;
              goto LABEL_55;
            }
          }

          if (*__error() != -528350138 && *__error() != 5)
          {
            v41 = __error();
            v12 = v49;
            goto LABEL_86;
          }

          v34 = (*&v55[1])--;
          LOWORD(v16) = v45;
          v21 = 0uLL;
        }

        while (v34);
      }

      v12 = v49;
      Mutable = v50;
      if ((v47 & 0x40) != 0 && (v16 & 0x800) != 0)
      {
        v35 = CFDictionaryGetValue(v2, @"SCAN_SSID_LIST");
        v36 = CFDictionaryGetValue(v2, @"SCAN_BSSID_LIST");
        _Apple80211AddOriginatingRNRChannelListToScanResults(v50, v10, Value, v44, v43, v35, v36);
      }

      goto LABEL_58;
    }

LABEL_80:
    v46 = 0;
    v42 = 4294963396;
    goto LABEL_56;
  }

  v41 = __error();
  v46 = 0;
  v14 = 0;
LABEL_86:
  v42 = *v41;
  if (!v42)
  {
LABEL_58:
    v37 = CFRetain(v10);
    v42 = 0;
    goto LABEL_59;
  }

LABEL_56:
  if (!v4)
  {
    goto LABEL_60;
  }

  v37 = 0;
LABEL_59:
  *v4 = v37;
LABEL_60:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
  }

  if (v5 && v46 && (*(v5 + 56) || *(v5 + 64) || *(v5 + 1848)))
  {
    *(v5 + 21) &= ~2u;
  }

  if (v14)
  {
    if (v5)
    {
      v38 = dispatch_semaphore_create(0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __Apple80211Scan_block_invoke;
      block[3] = &__block_descriptor_tmp_55;
      block[4] = v5;
      block[5] = v38;
      dispatch_async(v14, block);
      dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v38);
    }

    dispatch_release(v14);
  }

  return v42;
}

uint64_t Apple80211EventMonitoringInit2(_DWORD *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Apple80211EventMonitoringInit2";
    v30 = 2048;
    v31 = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: opaque=%p\n", buf, 0x16u);
  }

  if (!a1)
  {
    return 4294963396;
  }

  if (*(a1 + 109))
  {
    return 0;
  }

  *buf = 0x600000001;
  *&buf[8] = 1;
  if (a2 && (*a1 & 0x80000000) == 0 && *(a1 + 4))
  {
    if (*(a1 + 231) || *(a1 + 8) || *(a1 + 7))
    {
      Apple80211EventMonitoringHalt(a1);
    }

    if (!Apple80211EventMonitoringInitIOUC(a1, a4, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 136315138;
        v28 = "Apple80211EventMonitoringInit2";
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Using IOUC event pipe\n", v27, 0xCu);
      }

      goto LABEL_22;
    }

    v9 = socket(32, 3, 1);
    v10 = v9;
    if (v9 < 0 || ioctl(v9, 0x800C6502uLL, buf))
    {
      v8 = *__error();
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v11 = dispatch_source_create(MEMORY[0x277D85D28], v10, 0, a4);
      *(a1 + 8) = v11;
      if (v11)
      {
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = __Apple80211EventMonitoringInit2_block_invoke;
        handler[3] = &__block_descriptor_tmp_79;
        handler[4] = a1;
        v26 = v10;
        dispatch_source_set_event_handler(v11, handler);
        v12 = *(a1 + 8);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 0x40000000;
        v23[2] = __Apple80211EventMonitoringInit2_block_invoke_2;
        v23[3] = &__block_descriptor_tmp_80;
        v24 = v10;
        dispatch_source_set_cancel_handler(v12, v23);
        v13 = *(a1 + 8);
        if (v13)
        {
          dispatch_activate(v13);
        }

LABEL_22:
        v14 = MEMORY[0x277D85D38];
        v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a4);
        *(a1 + 199) = v15;
        dispatch_set_context(v15, a1);
        dispatch_source_set_event_handler_f(*(a1 + 199), _asyncAssocRetryCallback2);
        v16 = *(a1 + 199);
        v17 = dispatch_time(0, 315360000000000000);
        dispatch_source_set_timer(v16, v17, 0xBEBC200uLL, 0);
        dispatch_activate(*(a1 + 199));
        v18 = dispatch_source_create(v14, 0, 0, a4);
        *(a1 + 32) = v18;
        dispatch_set_context(v18, a1);
        dispatch_source_set_event_handler_f(*(a1 + 32), _asyncScanRetryCallback2);
        v19 = *(a1 + 32);
        v20 = dispatch_time(0, 315360000000000000);
        dispatch_source_set_timer(v19, v20, 0xBEBC200uLL, 0);
        dispatch_activate(*(a1 + 32));
        v8 = 0;
        *(a1 + 9) = a2;
        *(a1 + 10) = a3;
        return v8;
      }

      v8 = 4294963395;
    }
  }

  else
  {
    v10 = -1;
    v8 = 4294963396;
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    dispatch_source_cancel(v22);
    dispatch_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  return v8;
}

uint64_t Apple80211StartMonitoringEvent(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294963396;
  }

  if (a1[7] || a1[8])
  {
    if (a2 <= 0xF6)
    {
LABEL_5:
      result = 0;
      *(a1 + ((a2 - 1) >> 3) + 20) |= 1 << ((a2 - 1) & 7);
      return result;
    }

    return 4294963396;
  }

  result = 4294963396;
  if (a2 <= 0xF6 && a1[231])
  {
    goto LABEL_5;
  }

  return result;
}

void Apple80211GenerateUUIDForScan(char *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  memset(uu, 170, sizeof(uu));
  MEMORY[0x259C1D950](uu);
  uuid_unparse(uu, a1);
}

uint64_t _waitForScanComplete()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v13 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  memset(v9, 170, sizeof(v9));
  memset(&v11, 0, sizeof(v11));
  if (__darwin_check_fd_set_overflow(v2, &v11, 0))
  {
    v4 = 1 << v2;
    v5 = v2 >> 5;
    v11.fds_bits[v5] |= 1 << v2;
  }

  else
  {
    v5 = v2 >> 5;
    v4 = 1 << v2;
  }

  v10 = v11;
  gettimeofday(&v9[1], 0);
  v6 = select(v2 + 1, &v10, 0, 0, 0);
  if (!v6)
  {
    return 4294963391;
  }

  while (v6 > 0 || *__error() == 4)
  {
    gettimeofday(v9, 0);
    if (__darwin_check_fd_set_overflow(v2, &v10, 0) && (v10.fds_bits[v5] & v4) != 0)
    {
      v7 = read(v2, __b, 0x1018uLL);
      if ((v7 & 0x80000000) != 0)
      {
        return *__error();
      }

      if (v7 >= 0x18 && (__b[0] - 40) <= 0xFFFFFFEF && !strncmp(&__b[6], (v3 + 4), 0x10uLL) && __b[5] == 10)
      {
        return 0;
      }
    }

    v10 = v11;
    gettimeofday(&v9[1], 0);
    v6 = select(v2 + 1, &v10, 0, 0, 0);
    if (!v6)
    {
      return 4294963391;
    }
  }

  return *__error();
}

uint64_t Apple80211StopMonitoringEvent(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294963396;
  }

  if (a1[7] || a1[8])
  {
    if (a2 <= 0xF6)
    {
LABEL_5:
      result = 0;
      *(a1 + ((a2 - 1) >> 3) + 20) &= ~(1 << ((a2 - 1) & 7));
      return result;
    }

    return 4294963396;
  }

  result = 4294963396;
  if (a2 <= 0xF6 && a1[231])
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t __Apple80211Scan_block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __Apple80211Scan_block_invoke_2;
  v3[3] = &__block_descriptor_tmp;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return _Apple80211EventMonitoringHalt2(v1, v3);
}

uint64_t _Apple80211EventMonitoringHalt2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      CFSocketInvalidate(v4);
      CFRelease(*(a1 + 56));
      *(a1 + 56) = 0;
    }

    v5 = *(a1 + 1584);
    if (v5)
    {
      CFRunLoopTimerInvalidate(v5);
      CFRelease(*(a1 + 1584));
      *(a1 + 1584) = 0;
    }

    v6 = *(a1 + 1592);
    if (v6)
    {
      dispatch_source_cancel(v6);
      dispatch_release(*(a1 + 1592));
      *(a1 + 1592) = 0;
    }

    v7 = *(a1 + 248);
    if (v7)
    {
      CFRunLoopTimerInvalidate(v7);
      CFRelease(*(a1 + 248));
      *(a1 + 248) = 0;
    }

    v8 = *(a1 + 256);
    if (v8)
    {
      dispatch_source_cancel(v8);
      dispatch_release(*(a1 + 256));
      *(a1 + 256) = 0;
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      dispatch_source_cancel(v9);
      dispatch_release(*(a1 + 64));
      *(a1 + 64) = 0;
    }

    if (*(a1 + 51))
    {
      v10 = *(a1 + 80);
      if (v10)
      {
        _Block_release(v10);
      }
    }

    *(a1 + 51) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 20) = 0;
    *(a1 + 36) = 0;
    *(a1 + 28) = 0;
    *(a1 + 43) = 0;
    v11 = *(a1 + 1840);
    if (v11)
    {
      *v16 = MEMORY[0x277D85DD0];
      *&v16[8] = 0x40000000;
      *&v16[16] = __Apple80211EventMonitoringHaltIOUC_block_invoke;
      v17 = &unk_27978F050;
      v18 = a2;
      v19 = a1;
      dispatch_async(v11, v16);
      *(a1 + 1840) = 0;
    }

    else
    {
      v12 = *(a1 + 1944);
      if (v12)
      {
        v13 = CFRetain(v12);
        v14 = *MEMORY[0x277CBF058];
        *v16 = MEMORY[0x277D85DD0];
        *&v16[8] = 0x40000000;
        *&v16[16] = __Apple80211EventMonitoringHaltIOUC_block_invoke_2;
        v17 = &unk_27978F078;
        v18 = a2;
        v19 = a1;
        CFRunLoopPerformBlock(v13, v14, v16);
        CFRunLoopWakeUp(v13);
        CFRelease(v13);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 136315394;
          *&v16[4] = "Apple80211EventMonitoringHaltIOUC";
          *&v16[12] = 2080;
          *&v16[14] = a1 + 4;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no user client connected for %s", v16, 0x16u);
        }

        if (a2)
        {
          (*(a2 + 16))(a2);
        }
      }
    }

    return 0;
  }

  else
  {
    if (a2)
    {
      (*(a2 + 16))(a2);
    }

    return 4294963396;
  }
}

uint64_t Apple80211ScanDynamic()
{
  v0 = MEMORY[0x28223BE20]();
  v41 = v2;
  v42 = v1;
  v4 = v3;
  v5 = v0;
  uu[2] = *MEMORY[0x277D85DE8];
  v66 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v6;
  v65 = v6;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v61 = v6;
  v62 = v6;
  bzero(v56, 0x1598uLL);
  v56[0] = 1;
  bzero(v53, 0x14E8uLL);
  v53[0] = 1;
  memset(v52, 170, sizeof(v52));
  *&v50[1] = -1431655766;
  v50[0] = 257;
  v49 = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v10 = CFArrayCreateMutable(v7, 0, v8);
  v11 = _openEventSocket();
  v48 = -1431655766;
  v47 = 0;
  if (!v5 || (*v5 & 0x80000000) != 0)
  {
    v12 = 4294963396;
    goto LABEL_49;
  }

  v12 = 4294963396;
  if (!v42 || !*(v5 + 4) || (v12 = 4294963395, !Mutable) || !v10)
  {
LABEL_49:
    v31 = v12;
    if (!Mutable)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v11 < 0)
  {
    v31 = *__error();
  }

  else
  {
    theDict = v4;
    if (v4 && ((v43 = &v54, v35 = &v55 + 4, v13 = &v55, CFDictionaryGetValue(v4, @"SCAN_SSID_LIST")) || CFDictionaryGetValue(v4, @"SCAN_BSSID_LIST")))
    {
      v14 = 0;
      v15 = v53;
      out = 5452;
      __src = 72;
      v16 = 52;
      v17 = 68;
    }

    else
    {
      v15 = 0;
      v17 = &v58;
      v16 = &v57;
      out = &v60;
      v14 = v56;
      v13 = 528;
      v43 = 512;
      v35 = 532;
      __src = &v59;
    }

    ScanData = _getScanData(theDict, v14, v15, v50 + 1, &v48, &v50[1], v50, &v49, v5 + 88, &v47);
    if (ScanData)
    {
      v31 = ScanData;
    }

    else if (!v15 || *v43 == 3 || (*(v5 + 90) & 0x40) != 0)
    {
      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      if (*v19)
      {
        v40 = v11;
        v45 = v14;
        if (v14)
        {
          memcpy(__dst, __src, sizeof(__dst));
          v34 = *v17;
          *v17 = 1;
          v20 = 10;
          v21 = 5528;
          v33 = v14;
        }

        else
        {
          v33 = v15;
          memcpy(__dst, v35, sizeof(__dst));
          v34 = *v13;
          *v13 = 1;
          v20 = 86;
          v21 = 5352;
          v16 = v43;
        }

        v44 = *v16;
        Value = CFDictionaryGetValue(theDict, @"SCAN_SHORT_SSID");
        v23 = CFDictionaryGetValue(theDict, @"SSID_STR");
        v24 = CFDictionaryGetValue(theDict, @"BSSID");
        v64 = 0u;
        v65 = 0u;
        v25 = (v23 | v24 | Value) != 0;
        v66 = 0;
        LODWORD(v65) = v20;
        __strlcpy_chk();
        DWORD2(v65) = v21;
        v66 = v33;
        v61 = 0u;
        v62 = 0u;
        v63 = 0;
        LODWORD(v62) = 11;
        __strlcpy_chk();
        DWORD2(v62) = 2264;
        v63 = v52;
        if (v34)
        {
          v26 = 0;
          v27 = 0;
          v28 = v35;
          if (v45)
          {
            v28 = __src;
          }

          __srca = v28;
          while (1)
          {
            theDicta = v26;
            v29 = &__dst[3 * v26];
            *__srca = *v29;
            __srca[2] = v29[2];
            if (*&v50[1])
            {
              break;
            }

LABEL_44:
            v26 = (theDicta + 1);
            if ((theDicta + 1) == v34)
            {
              v12 = 0;
              goto LABEL_48;
            }
          }

          v30 = 0;
          while (1)
          {
            if (v45)
            {
              uu[0] = 0xAAAAAAAAAAAAAAAALL;
              uu[1] = 0xAAAAAAAAAAAAAAAALL;
              MEMORY[0x259C1D950](uu);
              uuid_unparse(uu, out);
              if (Apple80211RawSet())
              {
                break;
              }

              __strlcpy_chk();
            }

            else if (Apple80211RawSet())
            {
              break;
            }

            if (v44 != 3)
            {
              v12 = _waitForScanComplete();
              if (v12)
              {
                goto LABEL_48;
              }
            }

            while (1)
            {
              bzero(v52, 0x8D8uLL);
              v52[0] = 1;
              HIWORD(v52[34]) = 2048;
              if (*(v5 + 2024))
              {
                __strlcpy_chk();
              }

              if (Apple80211RawGet(v5, &v61))
              {
                break;
              }

              _addScanResultToList(v5, v52, Mutable, v10, 0, HIBYTE(v50[0]), v25, LOBYTE(v50[0]), v49, v47, 0, 0);
              if (v27 < CFArrayGetCount(v10))
              {
                v42(0, v5, v10, v41);
                ++v27;
              }
            }

            if (*__error() != 5)
            {
              break;
            }

            if (++v30 >= *&v50[1])
            {
              goto LABEL_44;
            }
          }

          v12 = *__error();
LABEL_48:
          v11 = v40;
          goto LABEL_49;
        }

        v31 = 0;
        v11 = v40;
      }

      else
      {
        v31 = 4294963396;
      }
    }

    else
    {
      v31 = 4294963393;
    }
  }

LABEL_50:
  CFRelease(Mutable);
LABEL_51:
  if (v10)
  {
    CFRelease(v10);
  }

  if ((v11 & 0x80000000) == 0)
  {
    close(v11);
  }

  *(v5 + 2024) = 0;
  return v31;
}

uint64_t _performAssociation(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, int a4)
{
  *&v289[8] = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v224 = 0;
  bzero(v252, 0x388uLL);
  __src = 1;
  p_src = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v248 = v7;
  v249 = v7;
  v246 = v7;
  v247 = v7;
  v244 = v7;
  v245 = v7;
  v242 = v7;
  v243 = v7;
  v240 = v7;
  v241 = v7;
  v238 = v7;
  v239 = v7;
  v236 = v7;
  v237 = v7;
  v234 = v7;
  v235 = v7;
  *__s = v7;
  v233 = v7;
  v222 = -1431655766;
  v221 = 0;
  v220 = 0;
  if (!a1 || (*a1 & 0x80000000) != 0)
  {
    goto LABEL_199;
  }

  started = 4294963396;
  if (!a2)
  {
    goto LABEL_275;
  }

  v9 = a1 + 4;
  if (!*(a1 + 4))
  {
    goto LABEL_275;
  }

  if ((byte_280C4DC39 & 1) == 0)
  {
    *buffer = 0;
    os_parse_boot_arg_int();
    _MergedGlobals_0 = 0;
    byte_280C4DC39 = 1;
  }

  p_src = 0;
  v248 = 0u;
  v249 = 0u;
  Value = CFDictionaryGetValue(a2, @"SSID");
  if (!Value)
  {
    goto LABEL_275;
  }

  v11 = Value;
  range = CFDataGetLength(Value);
  if (range - 1 > 0x1F || CFDataGetLength(v11) < 1)
  {
    goto LABEL_275;
  }

  v290.length = range;
  v290.location = 0;
  CFDataGetBytes(v11, v290, v256);
  v12 = CFDictionaryGetValue(a2, @"TRANS_DISABLED_FLAGS_ASSOC");
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
  }

  v285 = valuePtr;
  v13 = CFDictionaryGetValue(a2, @"ASSOC_6G_ENABLE");
  BoolRef = makeBoolRef(v13);
  if (BoolRef)
  {
    if (CFBooleanGetValue(BoolRef) == 1)
    {
      v288 = 0;
      goto LABEL_18;
    }

    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v288 = v15;
LABEL_18:
  v16 = CFDictionaryGetValue(a2, @"LOW_RSSI_LIMIT");
  if (v16)
  {
    v17 = v16;
    v18 = CFDictionaryGetValue(v16, @"LOW_RSSI_LIMIT_2G");
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt8Type, v289);
    }

    v19 = CFDictionaryGetValue(v17, @"LOW_RSSI_LIMIT_5G");
    if (v19)
    {
      CFNumberGetValue(v19, kCFNumberSInt8Type, &v289[1]);
    }

    v20 = CFDictionaryGetValue(v17, @"LOW_RSSI_LIMIT_6G");
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberSInt8Type, &v289[2]);
    }

    v21 = CFDictionaryGetValue(v17, @"LOW_RSSI_LIMIT_CACHE");
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberSInt8Type, &v289[3]);
    }

    v22 = CFDictionaryGetValue(v17, @"LOW_RSSI_LIMIT_PROBE");
    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberSInt8Type, &v289[4]);
    }
  }

  v23 = CFDictionaryGetValue(a2, @"SCAN_RESULT_OWE_MULTI_SSID");
  makeBoolRef(v23);
  v24 = CFDictionaryGetValue(a2, @"PRIVATE_MAC_ADDRESS");
  if (v24)
  {
    v25 = v24;
    v26 = CFDictionaryGetValue(v24, @"PRIVATE_MAC_ADDRESS_VALID");
    v27 = makeBoolRef(v26);
    v28 = CFDictionaryGetValue(v25, @"PRIVATE_MAC_ADDRESS_VALUE");
    if (v27 && !CFBooleanGetValue(v27))
    {
      v273 |= 0x40u;
      if (v28)
      {
        goto LABEL_33;
      }
    }

    else if (v28)
    {
LABEL_33:
      v291.location = 0;
      v291.length = 6;
      CFDataGetBytes(v28, v291, &v279);
      *&buffer[4] = 0;
      *buffer = 0;
      if (v279 | v280 && (v279 & 3) == 2)
      {
        syslog(3, " WFMacRandomisation : Private mac address being used :  %02x:%02x:%02x:%02x:%02x:%02x\n", v279, BYTE1(v279), BYTE2(v279), HIBYTE(v279), v280, HIBYTE(v280));
        v272 |= 8u;
      }

      else
      {
        syslog(3, " WFMacRandomisation : Private mac address invalid, will not be used :  %02x:%02x:%02x:%02x:%02x:%02x\n");
      }

      goto LABEL_39;
    }

    syslog(3, " WFMacRandomisation : Private mac config specified, but no private mac address value\n");
  }

LABEL_39:
  v29 = CFDictionaryGetValue(a2, @"BSS_BLACKLIST");
  v216 = a3;
  if (v29)
  {
    v30 = CFDictionaryGetValue(v29, @"BSS_BLACKLIST_BSSIDS");
    if (v30)
    {
      v31 = v30;
      Count = CFArrayGetCount(v30);
      v33 = Count;
      if ((Count - 1) > 9)
      {
        syslog(3, "%s: Invalid bss blacklist count %ld\n");
      }

      else
      {
        v34 = a1;
        v35 = 0;
        v281 = Count;
        v36 = v282;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v31, v35);
          v292.location = 0;
          v292.length = 6;
          CFDataGetBytes(ValueAtIndex, v292, v36);
          ++v35;
          v36 += 6;
        }

        while (v33 != v35);
        v272 |= 0x10u;
        a1 = v34;
      }
    }

    else
    {
      syslog(3, "%s: Missing bss blacklist\n");
    }
  }

  v38 = CFDictionaryGetValue(a2, @"COLOCATED_NETWORK_SCOPE_ID");
  if (v38)
  {
    v39 = v38;
    if ((CFStringGetLength(v38) - 1) > 0x23)
    {
      syslog(3, "%s: Invalid length for colocatedNetworkScopeId = %ld. Max allowed = %lu\n");
    }

    else if (CFStringGetCString(v39, v283, 37, 0x8000100u) == 1)
    {
      *&v282[61] = strlen(v283);
      v272 |= 0x40u;
    }

    else
    {
      memset(v283, 0, sizeof(v283));
      syslog(3, "%s: Invalid colocatedNetworkScopeId\n");
    }
  }

  v40 = CFDictionaryGetValue(a2, @"BAND_PREFERENCE");
  if (v40)
  {
    *buffer = -1431655766;
    if (CFNumberGetValue(v40, kCFNumberSInt32Type, buffer))
    {
      v286 = *buffer;
    }
  }

  v41 = CFDictionaryGetValue(a2, @"FORCE_BSSID");
  v42 = makeBoolRef(v41);
  if (v42 && CFBooleanGetValue(v42) == 1)
  {
    v43 = CFDictionaryGetValue(a2, @"BSSID");
    if (!v43)
    {
      goto LABEL_199;
    }

    memset(buffer, 170, 18);
    if (!CFStringGetCString(v43, buffer, 18, 0x8000100u))
    {
      goto LABEL_199;
    }

    syslog(3, "%s: ForceBSSID forcing bssid %s\n", "_performAssociation", buffer);
    v44 = ether_aton(buffer);
    if (!v44)
    {
      goto LABEL_199;
    }

    v45 = *v44->octet;
    v258 = *&v44->octet[4];
    v257 = v45;
    v271 |= 0x20u;
  }

  v46 = CFDictionaryGetValue(a2, @"CARPLAY_NETWORK");
  v47 = makeBoolRef(v46);
  if (v47 && CFBooleanGetValue(v47) == 1)
  {
    v48 = 0;
    v272 |= 1u;
  }

  else
  {
    v48 = 1;
  }

  v49 = CFDictionaryGetValue(a2, @"INSTANT_HOTSPOT_ASSOC");
  v50 = makeBoolRef(v49);
  if (v50 && CFBooleanGetValue(v50) == 1)
  {
    v48 = 0;
    v272 |= 2u;
  }

  v51 = CFDictionaryGetValue(a2, @"AUTO_INSTANT_HOTSPOT_ASSOC");
  v52 = makeBoolRef(v51);
  if (v52 && CFBooleanGetValue(v52) == 1)
  {
    v53 = &v272;
    v54 = 4;
LABEL_74:
    *v53 |= v54;
    goto LABEL_75;
  }

  if (v48)
  {
    v53 = &v273;
    v54 = 32;
    goto LABEL_74;
  }

LABEL_75:
  v55 = CFDictionaryGetValue(a2, @"ASSOC_REASON");
  if (v55)
  {
    v274 = 0;
    if (CFNumberGetValue(v55, kCFNumberSInt8Type, &v222))
    {
      if ((v222 & 0x80000000) != 0)
      {
        syslog(3, "%s: Invalid assoc reason: %d \n", "_performAssociation", v222);
      }

      else
      {
        if (v222 > 2)
        {
          started = 4294963365;
          goto LABEL_275;
        }

        v274 = v222;
      }
    }
  }

  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  *__s = 0u;
  v233 = 0u;
  v56 = CFDictionaryGetValue(a2, @"WAPI");
  if (v56 && CFNumberGetValue(v56, kCFNumberSInt32Type, &valuePtr + 4))
  {
    v57 = 0;
    v58 = (~HIDWORD(valuePtr) & 0xB) == 0;
    v59 = (~HIDWORD(valuePtr) & 7) == 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v57 = 1;
  }

  v60 = 0;
  if (v216 && !v58)
  {
    Length = CFStringGetLength(v216);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding > 255)
    {
      goto LABEL_199;
    }

    v60 = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding >= 1)
    {
      if (!CFStringGetCString(v216, __s, 256, 0x8000100u))
      {
        goto LABEL_199;
      }

      v60 = strlen(__s);
    }
  }

  LODWORD(v249) = 20;
  DWORD2(v249) = 908;
  p_src = &__src;
  __strlcpy_chk();
  v63 = CFDictionaryGetValue(a2, @"AP_MODE");
  if (!v63 || !CFNumberGetValue(v63, kCFNumberSInt16Type, v252))
  {
    v252[0] = 2;
  }

  v64 = CFDictionaryGetValue(a2, @"ASSOC_FLAGS");
  if (v64)
  {
    *buffer = 0;
    if (!CFNumberGetValue(v64, kCFNumberSInt32Type, buffer))
    {
      v71 = 4415;
LABEL_111:
      syslog(3, "%s::%s[%u] Error: Assert failure\n", "/Library/Caches/com.apple.xbs/Sources/IO80211/IO80211API/Apple80211API_iOS.c", "_performAssociation", v71);
      return 0;
    }

    v65 = 0;
    v66 = *buffer;
    do
    {
      if (v66)
      {
        *(&v271 + (v65 >> 3)) |= 1 << (v65 & 7);
      }

      v66 >>= 1;
      ++v65;
    }

    while (v65 != 24);
  }

  v67 = CFDictionaryGetValue(a2, @"WSEC_FLAGS");
  if (!v67)
  {
    goto LABEL_103;
  }

  *buffer = 0;
  if (!CFNumberGetValue(v67, kCFNumberSInt32Type, buffer))
  {
    v71 = 4435;
    goto LABEL_111;
  }

  v287 = *buffer;
LABEL_103:
  v214 = a1;
  v68 = CFDictionaryGetValue(a2, @"FAST_ENTERPRISE_NETWORK");
  v69 = CFDictionaryGetValue(a2, @"FAST_ENTERPRISE_NETWORK_SUPPORTED_DEVICE");
  v70 = MEMORY[0x277CBED28];
  if (v69)
  {
    v213 = CFEqual(v69, *MEMORY[0x277CBED28]) != 0;
    if (!v68)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v213 = 0;
    if (!v68)
    {
      goto LABEL_113;
    }
  }

  v72 = CFDictionaryGetValue(v68, @"FT_STATE");
  if (v72)
  {
    LODWORD(v68) = CFEqual(v72, *v70) != 0;
  }

  else
  {
    LODWORD(v68) = 0;
  }

LABEL_113:
  if ((v271 & 8) != 0)
  {
    if ((v213 & v68) != 0)
    {
      v74 = 128;
    }

    else
    {
      v74 = 64;
    }

    v254 = v74;
  }

  v75 = CFDictionaryGetValue(a2, @"SCAN_DIRECTED");
  v76 = makeBoolRef(v75);
  if (v76 && CFEqual(v76, *v70))
  {
    v271 |= 4u;
  }

  if ((v57 & 1) == 0)
  {
    *buffer = 0;
    v90 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    if (!MutableCopy)
    {
      started = 4294963395;
      goto LABEL_219;
    }

    v92 = MutableCopy;
    if (v216)
    {
      v93 = CFStringGetLength(v216);
      v94 = v58 && v59;
      if (v93 >= 256)
      {
        v94 = 0;
      }

      if (v94 || !v58)
      {
        v99 = CFNumberCreate(v90, kCFNumberIntType, buffer);
        if (!v99)
        {
          goto LABEL_512;
        }

        v100 = v99;
        CFDictionaryAddValue(v92, @"PSK", v216);
        CFDictionaryAddValue(v92, @"PSK_KEY_TYPE", v100);
        CFRelease(v100);
        v58 = 0;
      }

      else
      {
        CFDictionaryAddValue(v92, @"CERT", v216);
        v58 = 1;
      }
    }

    v101 = _WAPIStart_wapistart;
    if (_WAPIStart_wapistart || (v101 = funcAddr("WAPIStart"), (_WAPIStart_wapistart = v101) != 0))
    {
      started = v101(v9, v92);
      if (!started)
      {
LABEL_161:
        v82 = v214;
LABEL_272:
        CFRelease(v92);
        goto LABEL_273;
      }
    }

    else
    {
      started = 0xFFFFFFFFLL;
    }

    if (v216 == 0 || !v59 || v58 || (v112 = strlen(__s)) == 0 || v112 != strspn(__s, "0123456789abcdefABCDEF"))
    {
LABEL_271:
      v82 = v214;
      Apple80211SetWithIOCTL();
      goto LABEL_272;
    }

    *buffer = 1;
    v113 = CFNumberCreate(v90, kCFNumberIntType, buffer);
    if (v113)
    {
      v114 = v113;
      CFDictionarySetValue(v92, @"PSK_KEY_TYPE", v113);
      CFRelease(v114);
      v115 = _WAPIStart_wapistart;
      if (_WAPIStart_wapistart || (v115 = funcAddr("WAPIStart"), (_WAPIStart_wapistart = v115) != 0))
      {
        started = v115(v9, v92);
        if (!started)
        {
          goto LABEL_161;
        }
      }

      else
      {
        started = 0xFFFFFFFFLL;
      }

      goto LABEL_271;
    }

LABEL_512:
    started = 4294963395;
    goto LABEL_161;
  }

  v77 = CFDictionaryGetValue(a2, @"WPA_IE");
  v78 = CFDictionaryGetValue(a2, @"RSN_IE");
  v79 = v78;
  v278 = 0;
  if (v252[0] == 1 && v77 | v78)
  {
    syslog(3, "IBSS  in assoc ? %d \n", 1);
    if (v79)
    {
      v80 = CFDictionaryGetValue(a2, @"RSN_IE");
      v81 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_VERSION");
      if (v81)
      {
        *buf = -21846;
        *buffer = -1431655766;
        started = 4294963396;
        v82 = v214;
        if (!CFNumberGetValue(v81, kCFNumberSInt16Type, buf))
        {
          goto LABEL_273;
        }

        if (*buf != 1)
        {
          goto LABEL_273;
        }

        v83 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_MCIPHER");
        if (!v83)
        {
          goto LABEL_273;
        }

        if (!CFNumberGetValue(v83, kCFNumberSInt32Type, buffer))
        {
          goto LABEL_273;
        }

        if (*buffer != 4)
        {
          goto LABEL_273;
        }

        v84 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_UCIPHERS");
        if (!v84)
        {
          goto LABEL_273;
        }

        v85 = v84;
        v86 = CFArrayGetCount(v84);
        if (v86 < 1)
        {
          goto LABEL_273;
        }

        v87 = v86;
        v88 = 0;
        while (1)
        {
          v89 = CFArrayGetValueAtIndex(v85, v88);
          if (!CFNumberGetValue(v89, kCFNumberSInt32Type, buffer))
          {
            break;
          }

          if (*buffer == 4)
          {
            v120 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_AUTHSELS");
            if (v120)
            {
              v121 = v120;
              v122 = CFArrayGetCount(v120);
              if (v122 >= 1)
              {
                v123 = v122;
                v124 = 0;
                while (1)
                {
                  v125 = CFArrayGetValueAtIndex(v121, v124);
                  if (!CFNumberGetValue(v125, kCFNumberSInt32Type, buffer))
                  {
                    break;
                  }

                  if (*buffer == 2)
                  {
                    v138 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_CAPS");
                    if (!v138)
                    {
                      goto LABEL_218;
                    }

                    v139 = v138;
                    v140 = CFDictionaryGetValue(v138, @"PRE_AUTH");
                    v82 = v214;
                    if (!v140)
                    {
                      goto LABEL_450;
                    }

                    if (CFBooleanGetValue(v140))
                    {
                      goto LABEL_450;
                    }

                    v141 = CFDictionaryGetValue(v139, @"NO_PAIRWISE");
                    if (!v141)
                    {
                      goto LABEL_450;
                    }

                    if (CFBooleanGetValue(v141))
                    {
                      goto LABEL_450;
                    }

                    v142 = CFDictionaryGetValue(v139, @"PTKSA_REPLAY_COUNTERS");
                    if (!v142)
                    {
                      goto LABEL_450;
                    }

                    started = 4294963396;
                    if (!CFNumberGetValue(v142, kCFNumberSInt16Type, buf))
                    {
                      goto LABEL_273;
                    }

                    if (*buf != 4)
                    {
                      goto LABEL_273;
                    }

                    v143 = CFDictionaryGetValue(v139, @"GTKSA_REPLAY_COUNTERS");
                    if (!v143 || !CFNumberGetValue(v143, kCFNumberSInt16Type, buf) || *buf != 1)
                    {
                      goto LABEL_273;
                    }

                    v144 = *MEMORY[0x277CBECE8];
                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (!Mutable)
                    {
                      started = 4294963395;
                      goto LABEL_273;
                    }

                    v92 = Mutable;
                    *buf = 1;
                    v146 = CFNumberCreate(v144, kCFNumberSInt16Type, buf);
                    if (v146 && (v147 = v146, CFDictionaryAddValue(v92, @"AP_MODE_AUTH_LOWER", v146), CFRelease(v147), strcpy(buf, "\b"), (v148 = CFNumberCreate(v144, kCFNumberSInt16Type, buf)) != 0) && (v149 = v148, CFDictionaryAddValue(v92, @"AP_MODE_AUTH_UPPER", v148), CFRelease(v149), *buffer = 6, (v150 = CFNumberCreate(v144, kCFNumberSInt32Type, buffer)) != 0))
                    {
                      v151 = v150;
                      CFDictionaryAddValue(v92, @"AP_MODE_CYPHER_TYPE", v150);
                      CFRelease(v151);
                      v152 = CFDictionaryGetValue(a2, @"CHANNEL");
                      if (v152)
                      {
                        CFDictionaryAddValue(v92, @"CHANNEL", v152);
                        v153 = CFDictionaryGetValue(a2, @"CHANNEL_FLAGS");
                        if (v153)
                        {
                          CFDictionaryAddValue(v92, @"CHANNEL_FLAGS", v153);
                          v154 = CFDictionaryGetValue(a2, @"SSID");
                          CFDictionaryAddValue(v92, @"AP_MODE_SSID_BYTES", v154);
                          if (v216)
                          {
                            CFDictionaryAddValue(v92, @"AP_MODE_KEY", v216);
                            started = _startAPMode(v214, v92, 24);
                          }
                        }
                      }
                    }

                    else
                    {
                      started = 4294963395;
                    }

                    goto LABEL_272;
                  }

                  if (v123 == ++v124)
                  {
                    goto LABEL_218;
                  }
                }
              }
            }

            goto LABEL_218;
          }

          if (v87 == ++v88)
          {
            goto LABEL_218;
          }
        }
      }

      goto LABEL_218;
    }

LABEL_199:
    started = 4294963396;
    goto LABEL_275;
  }

  v95 = v68;
  v96 = CFDictionaryGetValue(a2, @"WPS_ASSOCIATE");
  v97 = makeBoolRef(v96);
  v98 = v97;
  if (!(v77 | v79) || v97 && CFBooleanGetValue(v97))
  {
    if (v254 > 2047)
    {
      if (v254 != 2048 && v254 != 0x4000 && v254 != 0x8000)
      {
LABEL_165:
        v102 = CFDictionaryGetValue(a2, @"WEP");
        if (makeBoolRef(v102) != *v70)
        {
          goto LABEL_166;
        }

        if (!v216)
        {
          started = 4294967196;
          goto LABEL_275;
        }

        v126 = CFDictionaryGetValue(a2, @"WEP_AUTH_Flags");
        v82 = v214;
        if (v126)
        {
          CFNumberGetValue(v126, kCFNumberSInt32Type, &v224);
          v127 = _joinWEPNetwork(v214, &v248, __s, v224, a4);
          if (v127 != -100)
          {
            started = v127;
            if (a4)
            {
LABEL_228:
              v105 = 0;
              goto LABEL_274;
            }

            v105 = 0;
            if ((v127 + 3912) > 7 || ((1 << (v127 + 72)) & 0x85) == 0)
            {
              goto LABEL_274;
            }
          }
        }

        v224 = 0x100000000;
        started = _initiateAutoWEPSequence(v214, &v248, __s, &v224 + 1, &v224, a4);
        goto LABEL_228;
      }
    }

    else if (v254 != 4 && v254 != 64 && v254 != 128)
    {
      goto LABEL_165;
    }

LABEL_166:
    if (v216)
    {
      started = 4294967195;
      goto LABEL_275;
    }

    v253 = 1;
    v82 = v214;
    if (v98 && CFBooleanGetValue(v98))
    {
      v254 = 256;
    }

    else if ((*(v214 + 100) & 1) != 0 && v252[0] != 1 && v254 != 64)
    {
      v278 |= 0x20000001u;
      v284 = 1;
    }

    v268 = 0;
    v267 = 0u;
    v266 = 0u;
    v265 = 0u;
    v264 = 0u;
    v263 = 0u;
    v262 = 0u;
    v261 = 0u;
    v260 = 0u;
    v259 = 0u;
    v103 = Apple80211RawSet();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v104 = *__error();
      *buffer = 136315906;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 1024;
      *&buffer[14] = 5211;
      *&buffer[18] = 1024;
      *&buffer[20] = v103;
      *&buffer[24] = 1024;
      *&buffer[26] = v104;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%u bsdErr:0x%0x  error:0x%0x \n", buffer, 0x1Eu);
    }

    if (!v103)
    {
      if (a4)
      {
LABEL_178:
        v105 = 1;
        goto LABEL_276;
      }

      if (*(v214 + 56) && (*(v214 + 21) & 1) != 0 && (*(v214 + 93) & 0x40) != 0)
      {
        CFRunLoopRunInMode(*MEMORY[0x277CBF058], 10.0, 0);
        goto LABEL_178;
      }

      v111 = _waitForJoinResult(v214);
LABEL_188:
      started = v111;
      goto LABEL_273;
    }

LABEL_510:
    started = *__error();
    goto LABEL_273;
  }

  v106 = *v70;
  v107 = CFDictionaryGetValue(a2, @"ALLOW_WPA2_PSK");
  cf2 = v106;
  v108 = v106 == makeBoolRef(v107);
  v109 = CFDictionaryGetValue(a2, @"ALLOW_OWE_TSN");
  v110 = makeBoolRef(v109);
  LODWORD(v259) = 1;
  v253 = 1;
  v219 = -1431655766;
  v82 = v214;
  if (v79 && (*(v214 + 89) & 0x40) != 0)
  {
    v203 = v110;
    v218 = 0;
    v116 = CFDictionaryGetValue(a2, @"AUTH_SEL_OVERRIDE");
    v211 = v108;
    v204 = v116;
    if (v116)
    {
      if (!CFNumberGetValue(v116, kCFNumberSInt32Type, &v218))
      {
        goto LABEL_450;
      }

      started = 4294967196;
      if (v218 > 7)
      {
        if (v218 == 24)
        {
          if ((~*(v214 + 105) & 0x30) != 0)
          {
            syslog(3, "%s: AUTH override set to WPA3 SAE but AKN24_25 is not supported\n");
            goto LABEL_183;
          }

          v210 = 0;
LABEL_371:
          v183 = 0x10000;
LABEL_403:
          v254 = v183;
          if ((valuePtr & 1) == 0)
          {
            if (v211)
            {
              v131 = 0;
              v278 |= 0x40000004u;
              LOBYTE(v108) = 1;
              goto LABEL_421;
            }

            v131 = 0;
            LOBYTE(v108) = 0;
            v186 = v278 | 0x1000000;
            goto LABEL_420;
          }

          v131 = 0;
          v278 |= 0x41000000u;
LABEL_396:
          LOBYTE(v108) = v211;
          goto LABEL_421;
        }

        if (v218 != 12)
        {
          if (v218 != 8)
          {
            goto LABEL_273;
          }

          if ((*(v214 + 97) & 8) == 0)
          {
            syslog(3, "%s: AUTH override set to WPA3 SAE but SAE is not supported\n");
LABEL_183:
            started = 4294963393;
            goto LABEL_273;
          }

          v210 = 0;
LABEL_380:
          v254 = 4096;
          if (valuePtr)
          {
            v186 = v278 | 0x40000100;
            LOBYTE(v108) = v211;
            v185 = v204;
          }

          else
          {
            LOBYTE(v108) = v211;
            v185 = v204;
            if (v211)
            {
              v186 = v278 | 0x40000004;
            }

            else
            {
              v186 = v278 | 0x100;
            }
          }

          v131 = 0;
          if (v185)
          {
            v186 = 256;
          }

LABEL_420:
          v278 = v186;
          goto LABEL_421;
        }

        if ((*(v214 + 97) & 0x10) == 0)
        {
          syslog(3, "%s: AUTH override set to WPA3 Enterprise but it is not supported\n");
          goto LABEL_183;
        }

        v210 = 0;
LABEL_378:
        v184 = 0x4000;
LABEL_394:
        v254 = v184;
LABEL_395:
        v131 = 1;
        goto LABEL_396;
      }

      if (v218 == 1)
      {
        v210 = 0;
LABEL_375:
        v184 = 4;
        goto LABEL_394;
      }

      if (v218 != 2)
      {
        goto LABEL_273;
      }

      v210 = 8;
      LOBYTE(v108) = 1;
LABEL_234:
      v129 = 8;
LABEL_235:
      v130 = v278;
      v254 = v129;
      v278 |= 4u;
      v131 = 1;
      if ((*(v214 + 97) & 8) == 0 || _MergedGlobals_0)
      {
        goto LABEL_421;
      }

LABEL_392:
      v131 = 0;
      v186 = v130 | 0x40000004;
      goto LABEL_420;
    }

    v128 = CFDictionaryGetValue(a2, @"FT_ENABLED");
    v201 = v95;
    if (v128)
    {
      v202 = CFEqual(v128, cf2) != 0;
    }

    else
    {
      v202 = 0;
    }

    v164 = CFDictionaryGetValue(a2, @"80211W_ENABLED");
    if (v164)
    {
      v165 = CFEqual(v164, cf2) != 0;
    }

    else
    {
      v165 = 0;
    }

    _getMFPCaps(a2, &v221, 0);
    _getPhyMode(a2, &v220);
    v166 = CFDictionaryGetValue(v79, @"IE_KEY_RSN_AUTHSELS");
    if (!v166)
    {
      goto LABEL_450;
    }

    v206 = v77;
    theArray = v166;
    v167 = CFArrayGetCount(v166);
    if (v167 < 1)
    {
      v210 = 0;
LABEL_366:
      syslog(3, "authSel %d\n", v218);
      v77 = v206;
      started = 4294963396;
      switch(v218)
      {
        case 0u:
          goto LABEL_273;
        case 1u:
          goto LABEL_375;
        case 2u:
          if (v213 & v201)
          {
            v129 = 16;
            LOBYTE(v108) = v211;
            goto LABEL_235;
          }

          LOBYTE(v108) = v211;
          break;
        case 3u:
          v184 = 128;
          goto LABEL_394;
        case 4u:
          v187 = 16;
          goto LABEL_390;
        case 5u:
          v184 = 2048;
          goto LABEL_394;
        case 6u:
          v187 = 1024;
LABEL_390:
          v130 = v278;
          v254 = v187;
          v278 |= 4u;
          v131 = 1;
          if ((*(v214 + 97) & 8) == 0)
          {
            goto LABEL_396;
          }

          LOBYTE(v108) = v211;
          if (!_MergedGlobals_0)
          {
            goto LABEL_392;
          }

          goto LABEL_421;
        case 8u:
          goto LABEL_380;
        case 9u:
          v254 = 0x2000;
          if (valuePtr)
          {
            v186 = v278 | 0x40000100;
            LOBYTE(v108) = v211;
          }

          else
          {
            LOBYTE(v108) = v211;
            if (v211)
            {
              v186 = v278 | 0x40000004;
            }

            else
            {
              v186 = v278 | 0x100;
            }
          }

          v131 = 0;
          goto LABEL_420;
        case 0xCu:
          goto LABEL_378;
        case 0xDu:
          v184 = 0x8000;
          goto LABEL_394;
        case 0x12u:
          v284 = 1;
          if (cf2 == v203)
          {
            v188 = v278 | 0x20000001;
          }

          else
          {
            v188 = v278 | 0x40000;
          }

          v278 = v188;
          goto LABEL_395;
        case 0x18u:
          goto LABEL_371;
        case 0x19u:
          v183 = 0x20000;
          goto LABEL_403;
        default:
          syslog(3, "******%s: unknown type (%d)\n", "_performAssociation", v218);
          goto LABEL_508;
      }

      goto LABEL_234;
    }

    v168 = v167;
    v210 = 0;
    v169 = 0;
    v200 = v165;
    if ((v213 & v95) != 0)
    {
      v170 = 16;
    }

    else
    {
      v170 = 8;
    }

    v207 = v170;
    v171 = theArray;
    while (1)
    {
      v172 = CFArrayGetValueAtIndex(v171, v169);
      if (!v172 || !CFNumberGetValue(v172, kCFNumberSInt32Type, &v219))
      {
        goto LABEL_349;
      }

      v174 = v219;
      v176 = v210;
      v175 = v211;
      if (v219 == 2)
      {
        v175 = 1;
        v176 = v207;
      }

      if (v219 == 4)
      {
        v175 = 1;
        v176 = 16;
      }

      if (v219 == 6)
      {
        v177 = 1;
      }

      else
      {
        v177 = v175;
      }

      if (v219 == 6)
      {
        v178 = 1024;
      }

      else
      {
        v178 = v176;
      }

      v210 = v178;
      v211 = v177;
      if (!Apple80211IsAuthSelAllowed(v219, (v214 + 88), v221, v173, _MergedGlobals_0))
      {
        goto LABEL_348;
      }

      v179 = v174 > 0x1E ? 0 : rsnAuthSelectorPriorityMap[v174];
      v180 = v218 > 0x1E ? 0 : rsnAuthSelectorPriorityMap[v218];
      if (v179 <= v180)
      {
        goto LABEL_348;
      }

      if (v174 > 8)
      {
        if (v174 > 17)
        {
          switch(v174)
          {
            case 18:
              v182 = 18;
LABEL_354:
              v218 = v182;
              break;
            case 24:
              goto LABEL_347;
            case 25:
              v171 = theArray;
              if (v202)
              {
                v181 = 25;
              }

              else
              {
                if (v218 <= 0x1E && ((0x7CFFCFD5uLL >> v218) & 1) == 0)
                {
                  goto LABEL_349;
                }

                v181 = 24;
              }

LABEL_364:
              v218 = v181;
              goto LABEL_349;
          }
        }

        else
        {
          switch(v174)
          {
            case 9:
              if (!v202)
              {
                v171 = theArray;
                if (v218 <= 0x1E && ((0x7CFFCCD5uLL >> v218) & 1) == 0)
                {
                  goto LABEL_349;
                }

                v181 = 8;
                goto LABEL_364;
              }

              v182 = 9;
              goto LABEL_354;
            case 12:
              goto LABEL_347;
            case 13:
              v171 = theArray;
              if (v213 & v95)
              {
                v181 = 13;
              }

              else
              {
                if (v218 <= 0x1E && ((0x7FFFCFF7uLL >> v218) & 1) == 0)
                {
                  goto LABEL_349;
                }

                v181 = 12;
              }

              goto LABEL_364;
          }
        }
      }

      else if (v174 > 4)
      {
        if ((v174 - 5) < 2)
        {
          if (!v200)
          {
            goto LABEL_348;
          }

          goto LABEL_347;
        }

        if (v174 == 8)
        {
          goto LABEL_347;
        }
      }

      else
      {
        if ((v174 - 1) >= 2)
        {
          if ((v174 - 3) >= 2 || !v202)
          {
            goto LABEL_348;
          }

LABEL_347:
          v218 = v174;
          goto LABEL_348;
        }

        if (((v254 == 128) & v213 & v95) != 1)
        {
          goto LABEL_347;
        }

        v218 = 3;
      }

LABEL_348:
      v171 = theArray;
LABEL_349:
      if (v168 == ++v169)
      {
        goto LABEL_366;
      }
    }
  }

  if (!v77 || (*(v214 + 89) & 0x20) == 0)
  {
    goto LABEL_183;
  }

  v218 = 0;
  v118 = CFDictionaryGetValue(a2, @"AUTH_SEL_OVERRIDE");
  if (v118)
  {
    if (CFNumberGetValue(v118, kCFNumberSInt32Type, &v218))
    {
      v119 = v218;
      if (v218 - 1 >= 2)
      {
        goto LABEL_508;
      }

      goto LABEL_248;
    }

    goto LABEL_450;
  }

  v212 = v108;
  v205 = v77;
  v132 = CFDictionaryGetValue(v77, @"IE_KEY_WPA_AUTHSELS");
  if (!v132)
  {
    goto LABEL_450;
  }

  v133 = v132;
  v134 = CFArrayGetCount(v132);
  if (v134 < 1)
  {
LABEL_247:
    v119 = v218;
    v77 = v205;
    LOBYTE(v108) = v212;
    if (v218)
    {
LABEL_248:
      if (v119 == 2)
      {
        v210 = 0;
        v254 = 2;
        v131 = 1;
        goto LABEL_421;
      }

      if (v119 == 1)
      {
        goto LABEL_384;
      }

      goto LABEL_508;
    }

LABEL_450:
    started = 4294963396;
    goto LABEL_273;
  }

  v135 = v134;
  v136 = 0;
  while (1)
  {
    v137 = CFArrayGetValueAtIndex(v133, v136);
    if (v137)
    {
      if (CFNumberGetValue(v137, kCFNumberSInt32Type, &v219))
      {
        break;
      }
    }

LABEL_246:
    if (v135 == ++v136)
    {
      goto LABEL_247;
    }
  }

  if (v219 != 1)
  {
    if (v218 < v219)
    {
      v218 = v219;
    }

    goto LABEL_246;
  }

  v218 = 1;
  v77 = v205;
  LOBYTE(v108) = v212;
LABEL_384:
  v210 = 0;
  v131 = 1;
  v254 = 1;
LABEL_421:
  if (!v216)
  {
    v193 = v254;
    if (v254 > 4095)
    {
      if (v254 >= 0x10000)
      {
        if (v254 != 0x20000 && v254 != 0x10000)
        {
          goto LABEL_485;
        }
      }

      else if (v254 != 4096 && v254 != 0x2000)
      {
        goto LABEL_485;
      }
    }

    else if ((v254 > 0x10 || ((1 << v254) & 0x10104) == 0) && v254 != 1024)
    {
      goto LABEL_485;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 136315394;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 1024;
      *&buffer[14] = v193;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Missing password for upper auth %d\n", buffer, 0x12u);
    }

    goto LABEL_450;
  }

  *&v189 = 0xAAAAAAAAAAAAAAAALL;
  *(&v189 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buffer = v189;
  *&buffer[16] = v189;
  v111 = Apple80211ParseWPAPassword(__s, buffer, v117, 0, v256, range);
  if (v111)
  {
    goto LABEL_188;
  }

  if (v60 == 64)
  {
    v190 = 1;
  }

  else
  {
    v190 = v131;
  }

  if (v190 != 1)
  {
    v191 = v210;
    if (v60 - 1 > 0x3F)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v226 = "_performAssociation";
        v227 = 1024;
        v228 = v60;
        v229 = 1024;
        v230 = 0;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: invalid length %d for passphrase, usePMK=%d", buf, 0x18u);
      }
    }

    else
    {
      DWORD2(v259) = 10;
      __memcpy_chk();
      v276 = *buffer;
      v277 = *&buffer[16];
      DWORD1(v259) = v60;
      v275 = 32;
    }

    goto LABEL_462;
  }

  v260 = *buffer;
  v261 = *&buffer[16];
  *(&v259 + 4) = 0x600000020;
  v191 = v210;
  if (v60 != 64)
  {
    goto LABEL_462;
  }

  v192 = v254;
  if (v254 <= 4095)
  {
    if (v254 == 8 || v254 == 16 || v254 == 1024)
    {
      goto LABEL_457;
    }

LABEL_462:
    memset(buffer, 0, sizeof(buffer));
    v193 = v254;
    if (v254 <= 4095)
    {
      if (v254 == 8 || v254 == 16 || v254 == 1024)
      {
        goto LABEL_473;
      }
    }

    else
    {
      if (v254 < 0x10000)
      {
        if (v254 != 4096 && v254 != 0x2000)
        {
          goto LABEL_485;
        }

LABEL_473:
        if (v77)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v226 = "_performAssociation";
            v227 = 1024;
            v228 = v191;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: WPA IE present, use WPA2-Personal (%u) only", buf, 0x12u);
          }

          if (!v191)
          {
            goto LABEL_183;
          }

          goto LABEL_484;
        }

        v217 = -1431655766;
        v195 = CFDictionaryGetValue(v79, @"IE_KEY_RSN_MCIPHER");
        if (v195)
        {
          if (CFNumberGetValue(v195, kCFNumberSInt32Type, &v217))
          {
            if (v217 != 2)
            {
              v193 = v254;
              goto LABEL_485;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v226 = "_performAssociation";
              v227 = 1024;
              v228 = 2;
              v229 = 1024;
              v230 = v191;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: RSN has TKIP groupcipher (%u), use WPA2-Personal (%u) only", buf, 0x18u);
            }

            if (!v191)
            {
              started = 4294963393;
              goto LABEL_219;
            }

LABEL_484:
            v193 = v191;
            v278 = 0;
            v254 = v191;
            goto LABEL_485;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v226 = "_performAssociation";
            v198 = MEMORY[0x277D86220];
            v199 = "%s: failed to get groupcipher";
            goto LABEL_520;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v226 = "_performAssociation";
          v198 = MEMORY[0x277D86220];
          v199 = "%s: no groupcipher";
LABEL_520:
          _os_log_impl(&dword_254882000, v198, OS_LOG_TYPE_DEFAULT, v199, buf, 0xCu);
        }

LABEL_218:
        started = 4294963396;
LABEL_219:
        v82 = v214;
        goto LABEL_273;
      }

      if (v254 == 0x20000 || v254 == 0x10000)
      {
        goto LABEL_473;
      }
    }

LABEL_485:
    if (v193 > 2047)
    {
      if (v193 != 2048 && v193 != 0x8000 && v193 != 0x4000)
      {
        goto LABEL_494;
      }
    }

    else if (v193 != 1 && v193 != 4 && v193 != 128)
    {
      goto LABEL_494;
    }

    *(&v259 + 4) = 0;
LABEL_494:
    v111 = _buildWPAIEForAssocation(a2, &v270, &v269, (v214 + 88), v218, _MergedGlobals_0);
    if (v111)
    {
      goto LABEL_188;
    }

    v196 = Apple80211RawSet();
    v259 = 0u;
    v260 = 0u;
    v261 = 0u;
    v262 = 0u;
    v263 = 0u;
    v264 = 0u;
    v265 = 0u;
    v266 = 0u;
    v267 = 0u;
    v268 = 0;
    *__s = 0u;
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v197 = *__error();
      *buffer = 136315650;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 1024;
      *&buffer[14] = v196;
      *&buffer[18] = 1024;
      *&buffer[20] = v197;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: bsdErr:0x%0x  error:0x%0x \n", buffer, 0x18u);
    }

    if (!v196)
    {
      if (!a4)
      {
        if (!*(v214 + 56) || (*(v214 + 21) & 1) == 0 || (*(v214 + 93) & 0x40) == 0)
        {
          started = _waitForJoinResult(v214);
          if (started)
          {
            Apple80211SetWithIOCTL();
          }

          goto LABEL_273;
        }

        CFRunLoopRunInMode(*MEMORY[0x277CBF058], 10.0, 0);
      }

      started = 0;
      goto LABEL_273;
    }

    goto LABEL_510;
  }

  if (v254 >= 0x10000)
  {
    if (v254 == 0x20000 || v254 == 0x10000)
    {
      goto LABEL_457;
    }

    goto LABEL_462;
  }

  if (v254 != 4096 && v254 != 0x2000)
  {
    goto LABEL_462;
  }

LABEL_457:
  v194 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v210 && v108)
  {
    if (v194)
    {
      *buf = 136315394;
      v226 = "_performAssociation";
      v227 = 1024;
      v228 = v210;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: 64-byte password, use WPA2-PSK (%u) only\n", buf, 0x12u);
    }

    v278 = 0;
    v254 = v210;
    goto LABEL_462;
  }

  if (v194)
  {
    *buf = 136315650;
    v226 = "_performAssociation";
    v227 = 1024;
    v228 = v192;
    v229 = 1024;
    v230 = v210;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Cannot connect to authtype (%u) with 64-byte password (WPA2 type %u)\n", buf, 0x18u);
  }

LABEL_508:
  started = 4294967196;
LABEL_273:
  v105 = 1;
LABEL_274:
  if (started)
  {
LABEL_275:
    v73 = convertToApple80211Error(started);
    goto LABEL_290;
  }

LABEL_276:
  pthread_mutex_lock((v82 + 272));
  *(v82 + 336) = pthread_self();
  v155 = *(v82 + 344);
  if (v155)
  {
    CFRelease(v155);
    *(v82 + 344) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 136315394;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 2048;
      *&buffer[14] = 0;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Async assoc record reset to NULL[%p]\n", buffer, 0x16u);
    }
  }

  v156 = *(v82 + 1584);
  if (v156)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v156, Current + 315360000.0);
  }

  v158 = *(v82 + 1592);
  if (v158)
  {
    v159 = dispatch_time(0, 315360000000000000);
    dispatch_source_set_timer(v158, v159, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  *(v82 + 1600) = 0;
  *(v82 + 360) = 0u;
  *(v82 + 376) = 0u;
  *(v82 + 392) = 0u;
  *(v82 + 408) = 0u;
  *(v82 + 424) = 0u;
  *(v82 + 440) = 0u;
  *(v82 + 456) = 0u;
  *(v82 + 472) = 0u;
  *(v82 + 488) = 0u;
  *(v82 + 504) = 0u;
  *(v82 + 520) = 0u;
  *(v82 + 536) = 0u;
  *(v82 + 552) = 0u;
  *(v82 + 568) = 0u;
  *(v82 + 584) = 0u;
  *(v82 + 600) = 0u;
  *(v82 + 624) = 0;
  *(v82 + 620) = 0;
  *(v82 + 356) = 0;
  if (a4)
  {
    v160 = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    *(v82 + 344) = v160;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 136315650;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 2112;
      *&buffer[14] = v160;
      *&buffer[22] = 2048;
      *&buffer[24] = v160;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Async assoc record updated %@[%p]\n", buffer, 0x20u);
    }

    *(v82 + 352) = 0;
    if ((v105 & 1) == 0)
    {
      *(v82 + 624) = 1;
      v161 = v224;
      *(v82 + 356) = HIDWORD(v224);
      *(v82 + 620) = v161;
      memmove((v82 + 360), __s, 0x100uLL);
      v162 = v249;
      *(v82 + 632) = v248;
      *(v82 + 648) = v162;
      *(v82 + 664) = p_src;
      memmove((v82 + 672), &__src, 0x38CuLL);
      *(v82 + 656) = 908;
      *(v82 + 664) = v82 + 672;
    }
  }

  else
  {
    *(v82 + 352) = 1;
  }

  pthread_mutex_unlock((v82 + 272));
  v73 = 0;
LABEL_290:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 136315394;
    *&buffer[4] = "_performAssociation";
    *&buffer[12] = 1024;
    *&buffer[14] = v73;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: error: (%d)\n", buffer, 0x12u);
  }

  return v73;
}

uint64_t Apple80211MaxLinkSpeed(uint64_t a1, unsigned int *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v22 = 0u;
  v21 = 0u;
  v19 = 0;
  v18 = 1;
  v20 = 0;
  result = 4294963396;
  if (a1 && a2)
  {
    __strlcpy_chk();
    LODWORD(v22) = 66;
    DWORD2(v22) = 16;
    v23 = &v18;
    if (Apple80211RawGet(a1, &v21))
    {
      v17 = 0;
      memset(&v16[1], 0, 176);
      v16[0] = 1;
      LODWORD(v22) = 32;
      DWORD2(v22) = 188;
      v23 = v16;
      if (!Apple80211RawGet(a1, &v21))
      {
        if (LOWORD(v16[1]))
        {
          v5 = 0;
          if (LOWORD(v16[1]) >= 0xFu)
          {
            v6 = 15;
          }

          else
          {
            v6 = LOWORD(v16[1]);
          }

          v7 = &v16[3];
          do
          {
            v9 = *v7;
            v7 += 3;
            v8 = v9;
            if (v9 > v5)
            {
              v5 = v8;
            }

            --v6;
          }

          while (v6);
        }

        else
        {
          v5 = 0;
        }

LABEL_29:
        result = 0;
        *a2 = v5;
        return result;
      }
    }

    else
    {
      v16[0] = 1;
      *&v16[1] = 0;
      v16[3] = 0;
      LODWORD(v22) = 4;
      DWORD2(v22) = 16;
      v23 = v16;
      if (!Apple80211RawGet(a1, &v21))
      {
        v10 = 0;
        v5 = 0;
        if ((v16[3] & 4) != 0)
        {
          v11 = 4;
        }

        else
        {
          v11 = 8;
        }

        v12 = &MCS_RATE_TABLE_40MHZ;
        if ((v16[3] & 4) == 0)
        {
          v12 = MCS_RATE_TABLE_20MHZ;
        }

        v13 = (v11 & *(a1 + 90));
        do
        {
          if ((*(&v19 + (v10 >> 3)) >> (v10 & 7)))
          {
            v14 = v12 + 1;
            if (!v13)
            {
              v14 = v12;
            }

            v15 = *v14;
            if (v5 <= v15)
            {
              v5 = v15;
            }
          }

          ++v10;
          v12 += 2;
        }

        while (v10 != 77);
        goto LABEL_29;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t Apple80211GetRsnAuthSelectorPriorityMap(unsigned int a1)
{
  if (a1 > 0x1E)
  {
    return 0;
  }

  else
  {
    return rsnAuthSelectorPriorityMap[a1];
  }
}

uint64_t Apple80211CopyLeakyAPStatus(const __CFData *a1, CFNumberRef *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1 || CFDataGetLength(a1) != 72)
  {
    v5 = 4294963396;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_4;
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v4;
  v11 = v4;
  *buffer = v4;
  v9 = v4;
  v14.length = CFDataGetLength(a1);
  v14.location = 0;
  CFDataGetBytes(a1, v14, buffer);
  v5 = 0;
  valuePtr = buffer[4];
  if (a2)
  {
LABEL_4:
    *a2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, &valuePtr);
  }

  return v5;
}

uint64_t get_apple80211_log()
{
  if (qword_280C4DC48 != -1)
  {
    dispatch_once(&qword_280C4DC48, &__block_literal_global);
  }

  return qword_280C4DC40;
}

os_log_t __get_apple80211_log_block_invoke()
{
  result = os_log_create("com.apple.lib80211", "signpost");
  qword_280C4DC40 = result;
  return result;
}

uint64_t Apple80211IsAuthSelAllowed(int a1, _BYTE *a2, int a3, uint64_t a4, int a5)
{
  result = 0;
  if (a1 > 7)
  {
    v7 = a2[9];
    if (a1 <= 12)
    {
      if (a1 == 8)
      {
        v9 = (v7 >> 3) & 1;
      }

      else
      {
        if (a1 != 9)
        {
          v8 = (v7 >> 4) & 1;
          if (!a3)
          {
            v8 = 0;
          }

          if (a5)
          {
            v8 = 0;
          }

          if (a1 == 12)
          {
            return v8;
          }

          else
          {
            return 0;
          }
        }

        v9 = ((a2[4] & 2) != 0) & (v7 >> 3);
      }

      goto LABEL_27;
    }

    if ((a1 - 24) < 2)
    {
      v9 = (a2[17] >> 5) & 1;
    }

    else
    {
      if (a1 != 13)
      {
        if (a1 == 18)
        {
          return (a5 == 0) & a2[12];
        }

        return result;
      }

      v9 = (v7 >> 4) & 1;
      if ((a2[4] & 2) == 0)
      {
        v9 = 0;
      }
    }

LABEL_27:
    if (!a3)
    {
      v9 = 0;
    }

    if (a5)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  if ((a1 - 1) < 2)
  {
    return 1;
  }

  if ((a1 - 3) < 2)
  {
    return (a2[4] & 2) >> 1;
  }

  if ((a1 - 5) < 2)
  {
    return 1;
  }

  return result;
}

uint64_t Apple80211RangeAsync(uint64_t a1, CFArrayRef theArray, double a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1 & 0x80000000) != 0)
  {
    return 4294963396;
  }

  result = 4294963396;
  if (!theArray || !*(a1 + 4))
  {
    return result;
  }

  if (!CFArrayGetCount(theArray))
  {
    return 4294963396;
  }

  bzero(v8, 0x708uLL);
  result = _getRangingPeerRequest(theArray, v8);
  if (!result)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    LODWORD(v10) = 242;
    __strlcpy_chk();
    v7 = a3;
    v11 = v8;
    if (!a3)
    {
      v7 = 5;
    }

    *(&v10 + 4) = v7 | 0x70800000000;
    if (Apple80211RawSet())
    {
      return *__error();
    }

    else
    {
      pthread_mutex_lock((a1 + 1680));
      if (!*(a1 + 1744))
      {
        *(a1 + 1744) = 1;
      }

      pthread_mutex_unlock((a1 + 1680));
      return 0;
    }
  }

  return result;
}

uint64_t _getRangingPeerRequest(const __CFArray *a1, char *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 4294963396;
  }

  bzero(a2, 0x708uLL);
  *a2 = 1;
  if (a1 && CFArrayGetCount(a1) >= 1)
  {
    v4 = 0;
    v5 = a2 + 8;
    cf2 = *MEMORY[0x277CBED28];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      if (ValueAtIndex)
      {
        v7 = ValueAtIndex;
        v8 = CFGetTypeID(ValueAtIndex);
        if (v8 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v7, @"STATION_MAC");
          v10 = CFDictionaryGetValue(v7, @"RANGING_TOKEN_ID");
          v11 = CFDictionaryGetValue(v7, @"RANGING_PMK");
          if (v11)
          {
            v12 = v11;
            if (CFDataGetLength(v11) > 64)
            {
              v14 = *(a2 + 1);
              *&v5[448 * v14 + 104] = 64;
              v15.length = 64;
            }

            else
            {
              Length = CFDataGetLength(v12);
              v14 = *(a2 + 1);
              *&v5[448 * v14 + 104] = Length;
              v15.length = Length;
            }

            v15.location = 0;
            CFDataGetBytes(v12, v15, &v5[448 * v14 + 40]);
          }

          v18 = CFDictionaryGetValue(v7, @"RANGING_NUM_MEASUREMENTS");
          if (v18)
          {
            CFNumberGetValue(v18, kCFNumberSInt8Type, &a2[448 * *(a2 + 1) + 114]);
          }

          v19 = CFDictionaryGetValue(v7, @"RANGING_CORE_MASK");
          if (v19)
          {
            CFNumberGetValue(v19, kCFNumberSInt16Type, &v5[448 * *(a2 + 1) + 120]);
          }

          v20 = CFDictionaryGetValue(v7, @"RANGING_MODE");
          if (v20)
          {
            CFNumberGetValue(v20, kCFNumberSInt8Type, &a2[448 * *(a2 + 1) + 132]);
          }

          v21 = CFDictionaryGetValue(v7, @"RANGING_PEER_FLAGS");
          v22 = &v5[448 * *(a2 + 1)];
          if (v21)
          {
            CFNumberGetValue(v21, kCFNumberSInt16Type, v22 + 36);
          }

          else
          {
            *(v22 + 18) = 0;
          }

          v23 = CFDictionaryGetValue(v7, @"RANGING_TIMEOUT");
          if (v23)
          {
            CFNumberGetValue(v23, kCFNumberSInt32Type, &v5[448 * *(a2 + 1) + 128]);
          }

          v24 = CFDictionaryGetValue(v7, @"RANGING_INTERVAL");
          if (v24)
          {
            CFNumberGetValue(v24, kCFNumberSInt16Type, &a2[448 * *(a2 + 1) + 140]);
          }

          v25 = CFDictionaryGetValue(v7, @"RANGING_EGRESS");
          if (v25)
          {
            CFNumberGetValue(v25, kCFNumberSInt16Type, &v5[448 * *(a2 + 1) + 136]);
          }

          v26 = CFDictionaryGetValue(v7, @"RANGING_INGRESS");
          if (v26)
          {
            CFNumberGetValue(v26, kCFNumberSInt16Type, &a2[448 * *(a2 + 1) + 142]);
          }

          v27 = CFDictionaryGetValue(v7, @"RANGING_RETURN_PARTIAL");
          if (v27 && CFEqual(v27, cf2))
          {
            v5[448 * *(a2 + 1) + 440] = 1;
          }

          v7 = Value;
          if (!Value)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v16 = CFGetTypeID(v7);
          if (v16 != CFStringGetTypeID())
          {
            v17 = CFGetTypeID(v7);
            if (v17 != CFDataGetTypeID())
            {
              goto LABEL_50;
            }
          }

          v10 = 0;
        }

        v28 = CFGetTypeID(v7);
        if (v28 != CFStringGetTypeID())
        {
          v40.location = 0;
          v40.length = 6;
          CFDataGetBytes(v7, v40, &v5[448 * *(a2 + 1) + 26]);
LABEL_40:
          if (v10)
          {
            v32 = CFGetTypeID(v10);
            if (v32 == CFStringGetTypeID())
            {
              memset(buffer, 170, 20);
              CFStringGetCString(v10, buffer, 20, 0x8000100u);
              v33 = strlen(buffer);
              if (v33 >= 6uLL)
              {
                v34 = 6;
              }

              else
              {
                v34 = v33;
              }

              memcpy(&v5[448 * *(a2 + 1) + 20], buffer, v34);
            }

            else
            {
              if (CFDataGetLength(v10) > 6)
              {
                v35.length = 6;
              }

              else
              {
                v35.length = CFDataGetLength(v10);
              }

              v35.location = 0;
              CFDataGetBytes(v10, v35, &v5[448 * *(a2 + 1) + 20]);
            }
          }

LABEL_50:
          ++*(a2 + 1);
          goto LABEL_51;
        }

        memset(buffer, 170, 20);
        CFStringGetCString(v7, buffer, 20, 0x8000100u);
        v29 = ether_aton(buffer);
        if (v29)
        {
          v30 = &v5[448 * *(a2 + 1)];
          v31 = *&v29->octet[4];
          *(v30 + 26) = *v29->octet;
          *(v30 + 15) = v31;
          goto LABEL_40;
        }
      }

LABEL_51:
      ++v4;
    }

    while (v4 < CFArrayGetCount(a1));
  }

  return 0;
}

uint64_t Apple80211RangingStopAsync(uint64_t a1, const __CFArray *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1 & 0x80000000) != 0 || !*(a1 + 4))
  {
    return 4294963396;
  }

  bzero(v4, 0x708uLL);
  result = _getRangingPeerRequest(a2, v4);
  if (!result)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    LODWORD(v6) = 242;
    __strlcpy_chk();
    v7 = v4;
    *(&v6 + 4) = 0x70800000000;
    result = Apple80211RawSet();
    if (result)
    {
      return *__error();
    }
  }

  return result;
}

uint64_t Apple80211GetRangingPhyErrorString(int a1, char *__str, size_t __size)
{
  result = 4294963396;
  if (__str && __size)
  {
    if (!a1)
    {
      snprintf(__str, __size, "no error");
      return 0;
    }

    snprintf(__str, __size, "(");
    if (a1)
    {
      v10 = strlen(__str);
      snprintf(&__str[v10], __size - v10, "correlation/lo,");
      a1 &= ~1u;
      if ((a1 & 2) == 0)
      {
LABEL_6:
        if ((a1 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    v11 = strlen(__str);
    snprintf(&__str[v11], __size - v11, "correlation/rx,");
    a1 &= ~2u;
    if ((a1 & 4) == 0)
    {
LABEL_7:
      if ((a1 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_30:
    v12 = strlen(__str);
    snprintf(&__str[v12], __size - v12, "peak_power/lo,");
    a1 &= ~4u;
    if ((a1 & 8) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }

LABEL_31:
    v13 = strlen(__str);
    snprintf(&__str[v13], __size - v13, "peak_power/rx,");
    a1 &= ~8u;
    if ((a1 & 0x10) == 0)
    {
LABEL_9:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

LABEL_32:
    v14 = strlen(__str);
    snprintf(&__str[v14], __size - v14, "bit_error,");
    a1 &= ~0x10u;
    if ((a1 & 0x20) == 0)
    {
LABEL_10:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_34;
    }

LABEL_33:
    v15 = strlen(__str);
    snprintf(&__str[v15], __size - v15, "snr,");
    a1 &= ~0x20u;
    if ((a1 & 0x40) == 0)
    {
LABEL_11:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }

LABEL_34:
    v16 = strlen(__str);
    snprintf(&__str[v16], __size - v16, "start_win,");
    a1 &= ~0x40u;
    if ((a1 & 0x80) == 0)
    {
LABEL_12:
      if ((a1 & 0x8000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }

LABEL_35:
    v17 = strlen(__str);
    snprintf(&__str[v17], __size - v17, "end_win,");
    a1 &= ~0x80u;
    if ((a1 & 0x8000) == 0)
    {
LABEL_13:
      if ((a1 & 0x1000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_37;
    }

LABEL_36:
    v18 = strlen(__str);
    snprintf(&__str[v18], __size - v18, "group_delay,");
    a1 &= ~0x8000u;
    if ((a1 & 0x1000) == 0)
    {
LABEL_14:
      if ((a1 & 0x2000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

LABEL_37:
    v19 = strlen(__str);
    snprintf(&__str[v19], __size - v19, "prep_late,");
    a1 &= ~0x1000u;
    if ((a1 & 0x2000) == 0)
    {
LABEL_15:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

LABEL_38:
    v20 = strlen(__str);
    snprintf(&__str[v20], __size - v20, "seq_fail,");
    a1 &= ~0x2000u;
    if ((a1 & 0x10000) == 0)
    {
LABEL_16:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

LABEL_39:
    v21 = strlen(__str);
    snprintf(&__str[v21], __size - v21, "no_slope,");
    a1 &= ~0x10000u;
    if ((a1 & 0x100) == 0)
    {
LABEL_17:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

LABEL_40:
    v22 = strlen(__str);
    snprintf(&__str[v22], __size - v22, "timing,");
    a1 &= ~0x100u;
    if ((a1 & 0x200) == 0)
    {
LABEL_18:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }

LABEL_41:
    v23 = strlen(__str);
    snprintf(&__str[v23], __size - v23, "EVM,");
    a1 &= ~0x200u;
    if ((a1 & 0x400) == 0)
    {
LABEL_19:
      if ((a1 & 0x800) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_43;
    }

LABEL_42:
    v24 = strlen(__str);
    snprintf(&__str[v24], __size - v24, "LTE,");
    a1 &= ~0x400u;
    if ((a1 & 0x800) == 0)
    {
LABEL_20:
      if (!a1)
      {
LABEL_22:
        v8 = &__str[strlen(__str)];
        if (*(v8 - 1) == 44)
        {
          *(v8 - 1) = 0;
        }

        v9 = strlen(__str);
        snprintf(&__str[v9], __size - v9, ")");
        return 0;
      }

LABEL_21:
      v7 = strlen(__str);
      snprintf(&__str[v7], __size - v7, "0x%x", a1);
      goto LABEL_22;
    }

LABEL_43:
    v25 = strlen(__str);
    snprintf(&__str[v25], __size - v25, "throttling,");
    a1 &= ~0x800u;
    if (!a1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t Apple80211CopyRangingCapabilities(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v2 = a2;
  v30 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1 & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 4294963396;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v5 = 4294963396;
  if (a2 && *(a1 + 4))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0u;
    v28 = 0u;
    LODWORD(v28) = 266;
    __strlcpy_chk();
    DWORD2(v28) = 24;
    v29 = &v24;
    if (Apple80211RawGet(a1, &v27))
    {
      v4 = 0;
      v5 = *__error();
      goto LABEL_18;
    }

    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v4 = 0;
      v5 = 4294963395;
      goto LABEL_18;
    }

    v8 = Mutable;
    v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
    if (v9)
    {
      v10 = v9;
      theDict = v8;
      v23 = v2;
      if (v25)
      {
        v11 = 0;
        v12 = &v26 + 4;
        v13 = MEMORY[0x277CBF138];
        v14 = MEMORY[0x277CBF150];
        while (1)
        {
          v15 = CFDictionaryCreateMutable(v6, 0, v13, v14);
          if (!v15)
          {
            break;
          }

          v8 = v15;
          v16 = CFNumberCreate(v6, kCFNumberSInt32Type, v12 - 4);
          if (!v16 || (v17 = v16, CFDictionarySetValue(v8, @"RANGING_CHANNEL", v16), CFRelease(v17), (v18 = CFNumberCreate(v6, kCFNumberSInt32Type, v12)) == 0))
          {
            CFRelease(theDict);
            CFRelease(v10);
            v4 = 0;
            v5 = 4294963395;
            goto LABEL_22;
          }

          v19 = v18;
          CFDictionarySetValue(v8, @"RANGING_CHANNEL_FLAGS", v18);
          CFRelease(v19);
          CFArrayAppendValue(v10, v8);
          CFRelease(v8);
          ++v11;
          v12 += 12;
          if (v11 >= v25)
          {
            goto LABEL_14;
          }
        }

        CFRelease(theDict);
        v4 = 0;
        v5 = 4294963395;
        v8 = v10;
LABEL_22:
        v2 = v23;
        goto LABEL_16;
      }

LABEL_14:
      v4 = theDict;
      CFDictionarySetValue(theDict, @"RANGING_SUPP_CHANNELS", v10);
      CFRelease(v10);
      v20 = CFNumberCreate(v6, kCFNumberSInt32Type, &v24 + 4);
      v2 = v23;
      if (v20)
      {
        v8 = v20;
        CFDictionarySetValue(theDict, @"RANGING_FEATURES", v20);
        v5 = 0;
LABEL_16:
        CFRelease(v8);
        goto LABEL_17;
      }

      v5 = 4294963395;
      v8 = theDict;
    }

    else
    {
      v5 = 4294963395;
    }

    v4 = 0;
    goto LABEL_16;
  }

LABEL_17:
  if (v2)
  {
LABEL_18:
    *v2 = v4;
  }

  return v5;
}

uint64_t Apple80211GasRequest(uint64_t a1, CFDictionaryRef theDict)
{
  v60 = *MEMORY[0x277D85DE8];
  valuePtr = -1;
  if (!a1 || (*a1 & 0x80000000) != 0 || !*(a1 + 4))
  {
    return 4294963396;
  }

  Value = CFDictionaryGetValue(theDict, @"GAS_PROTOCOL");
  if (!Value)
  {
    return 4294963393;
  }

  v37 = -1431655766;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    return 4294963396;
  }

  if (valuePtr)
  {
    return 4294963393;
  }

  if (!theDict)
  {
    return 4294963396;
  }

  bzero(v38, 0x710uLL);
  v6 = CFDictionaryGetValue(theDict, @"GAS_QUERY");
  v7 = CFDictionaryGetValue(theDict, @"GAS_NETWORKS");
  if (!v6)
  {
    return 4294963396;
  }

  v8 = v7;
  Count = CFArrayGetCount(v6);
  if (!Count)
  {
    return 4294963396;
  }

  v10 = Count;
  if (Count > 255)
  {
    return 4294963396;
  }

  v61.location = 0;
  v61.length = Count;
  CFArraySortValues(v6, v61, _compareQueries, 0);
  *&v38[6] = 256;
  if (v10 <= 0)
  {
    LOWORD(v20) = 4;
LABEL_25:
    *&v38[4] = v20;
    goto LABEL_26;
  }

  v11 = 0;
  v12 = 0;
  *buf = -21846;
  v13 = v39;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buffer = v14;
  *&buffer[16] = v14;
  v42 = v14;
  v43 = v14;
  v44 = v14;
  v45 = v14;
  v46 = v14;
  v47 = v14;
  v48 = v14;
  v49 = v14;
  v50 = v14;
  v51 = v14;
  v52 = v14;
  v53 = v14;
  v54 = v14;
  v55 = v14;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
    if (ValueAtIndex && CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, buf))
    {
      if (*buf > 0xFFu)
      {
        *v13++ = *buf;
        *&v38[8] += 2;
      }

      else
      {
        buffer[v12++] = buf[0];
      }
    }

    ++v11;
  }

  while (v10 != v11);
  *&v38[4] = *&v38[8] + 4;
  if (v12)
  {
    *v13 = -8739;
    v13[1] = v12 + 6;
    v13[2] = 28496;
    *(v13 + 6) = -102;
    *(v13 + 7) = 273;
    v16 = v12;
    v17 = v13 + 5;
    *(v13 + 9) = 0;
    v18 = buffer;
    do
    {
      v19 = *v18++;
      *v17++ = v19;
      --v16;
    }

    while (v16);
    v20 = (v12 + *&v38[4] + 10);
    goto LABEL_25;
  }

LABEL_26:
  memset(buffer, 170, 18);
  v21 = CFArrayGetCount(v8);
  if (!v21)
  {
    return 4294963396;
  }

  v22 = v21;
  if (v21 > 63)
  {
    return 4294963396;
  }

  if (v21 >= 1)
  {
    v23 = 0;
    v36 = -21846;
    v35 = -1431655766;
    v24 = &v40;
    do
    {
      v25 = CFArrayGetValueAtIndex(v8, v23);
      if (v25)
      {
        v26 = v25;
        v27 = CFDictionaryGetValue(v25, @"BSSID");
        if (!v27)
        {
          return 4294963396;
        }

        if (!CFStringGetCString(v27, buffer, 18, 0x8000100u))
        {
          return 4294963396;
        }

        v28 = ether_aton(buffer);
        if (!v28)
        {
          return 4294963396;
        }

        v29 = *v28->octet;
        *(v24 + 2) = *&v28->octet[4];
        *v24 = v29;
        v30 = CFDictionaryGetValue(v26, @"CHANNEL");
        if (!v30 || !CFNumberGetValue(v30, kCFNumberSInt16Type, &v36))
        {
          return 4294963396;
        }

        *(v24 - 4) = v36;
        v31 = CFDictionaryGetValue(v26, @"CHANNEL_FLAGS");
        if (v31)
        {
          if (!CFNumberGetValue(v31, kCFNumberSInt32Type, &v35))
          {
            return 4294963396;
          }
        }

        else
        {
          v32 = v36;
          if (v36 >= 0xEu)
          {
            v33 = 18;
          }

          else
          {
            v33 = 10;
          }

          v35 = v33;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v57 = v32;
            v58 = 1024;
            v59 = v33;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Missing channel flags for GAS channel (%u) fake flags %x", buf, 0xEu);
          }
        }

        *(v24 - 1) = v35;
      }

      ++v23;
      v24 += 5;
    }

    while (v22 != v23);
  }

  v39[257] = v22;
  *&buffer[16] = 0u;
  *buffer = 0u;
  *&v42 = 0;
  *&buffer[16] = 197;
  __strlcpy_chk();
  *&buffer[24] = 1812;
  *&v42 = &v37;
  if (Apple80211RawSet())
  {
    return *__error();
  }

  pthread_mutex_lock((a1 + 1608));
  if (!*(a1 + 1672))
  {
    *(a1 + 1672) = 1;
  }

  pthread_mutex_unlock((a1 + 1608));
  return 0;
}

uint64_t Apple80211MonitorEventsWithBlock(void *a1, NSObject *a2, const void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = socket(32, 3, 1);
  if (v6 < 0)
  {
    return *__error();
  }

  v7 = v6;
  v18 = 0x600000001;
  v19 = 1;
  if (ioctl(v6, 0x800C6502uLL, &v18))
  {
    v12 = *__error();
    v11 = -1;
  }

  else
  {
    v8 = dispatch_source_create(MEMORY[0x277D85D28], v7, 0, a2);
    if (v8)
    {
      v9 = v8;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __Apple80211MonitorEventsWithBlock_block_invoke;
      handler[3] = &__block_descriptor_tmp_74;
      handler[4] = a1;
      v17 = v7;
      dispatch_source_set_event_handler(v8, handler);
      v10 = _Block_copy(a3);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = __Apple80211MonitorEventsWithBlock_block_invoke_2;
      v14[3] = &unk_27978E748;
      v15 = v7;
      v14[4] = v10;
      dispatch_source_set_cancel_handler(v9, v14);
      a1[9] = _eventBlockCallback;
      a1[10] = v10;
      a1[8] = v9;
      dispatch_activate(v9);
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 4294963395;
    }
  }

  if (v12 | v11)
  {
    close(v7);
  }

  return v12;
}

void __Apple80211MonitorEventsWithBlock_block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  memset(v3, 170, sizeof(v3));
  if (read(v2, v3, 0x1018uLL) >= 24)
  {
    _eventRead(v1, v3, "_eventBlockReadCallback", 5462);
  }
}

void __Apple80211MonitorEventsWithBlock_block_invoke_2(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t Apple80211EventMonitoringInit(_DWORD *a1, uint64_t a2, uint64_t a3, __CFRunLoop *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.version) = 136315394;
    *(&buf.version + 4) = "Apple80211EventMonitoringInit";
    WORD2(buf.info) = 2048;
    *(&buf.info + 6) = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: opaque=%p\n", &buf, 0x16u);
  }

  v26 = 0x600000001;
  v27 = 1;
  buf.version = 0;
  memset(&buf.retain, 0, 24);
  buf.info = a1;
  v8 = 4294963396;
  v9 = -1;
  if (a1 && a2 && (*a1 & 0x80000000) == 0 && *(a1 + 4))
  {
    if (*(a1 + 231) || *(a1 + 8) || *(a1 + 7))
    {
      Apple80211EventMonitoringHalt(a1);
    }

    inited = Apple80211EventMonitoringInitIOUC(a1, 0, a4);
    v11 = MEMORY[0x277CBECE8];
    v12 = MEMORY[0x277CBF058];
    if (!inited)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 136315138;
        v29 = "Apple80211EventMonitoringInit";
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Using IOUC event pipe\n", v28, 0xCu);
      }

      v8 = 0;
      goto LABEL_20;
    }

    v13 = socket(32, 3, 1);
    v9 = v13;
    if (v13 < 0 || ioctl(v13, 0x800C6502uLL, &v26))
    {
      v8 = *__error();
    }

    else
    {
      context.version = 0;
      memset(&context.retain, 0, 24);
      context.info = a1;
      v14 = *v11;
      v15 = CFSocketCreateWithNative(*v11, v9, 1uLL, _eventReadCallbackCF, &context);
      *(a1 + 7) = v15;
      if (v15)
      {
        RunLoopSource = CFSocketCreateRunLoopSource(v14, v15, 0);
        if (RunLoopSource)
        {
          v8 = RunLoopSource;
          CFRunLoopAddSource(a4, RunLoopSource, *v12);
LABEL_20:
          v17 = *v11;
          Current = CFAbsoluteTimeGetCurrent();
          v19 = CFRunLoopTimerCreate(v17, Current + 315360000.0, 0.2, 0, 0, _asyncAssocRetryCallback, &buf);
          *(a1 + 198) = v19;
          v20 = *v12;
          CFRunLoopAddTimer(a4, v19, v20);
          v21 = CFAbsoluteTimeGetCurrent();
          v22 = CFRunLoopTimerCreate(v17, v21 + 315360000.0, 0.2, 0, 0, _asyncScanRetryCallback, &buf);
          *(a1 + 31) = v22;
          CFRunLoopAddTimer(a4, v22, v20);
          *(a1 + 9) = a2;
          *(a1 + 10) = a3;
          if (v8)
          {
            CFRelease(v8);
            return 0;
          }

          return v8;
        }
      }

      v8 = 4294963395;
    }
  }

  if (a1)
  {
    if (v8)
    {
      v24 = *(a1 + 7);
      if (v24)
      {
        CFSocketInvalidate(v24);
        CFRelease(*(a1 + 7));
        *(a1 + 7) = 0;
      }
    }
  }

  if ((v9 & 0x80000000) == 0 && v8)
  {
    close(v9);
  }

  return v8;
}

uint64_t Apple80211EventMonitoringInitIOUC(uint64_t a1, NSObject *a2, __CFRunLoop *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  v55 = 0;
  outputStructCnt = 0xAAAAAAAAAAAAAAAALL;
  pthread_threadid_np(0, &v55);
  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v62 = 0u;
  v63 = 0u;
  *reference = 0u;
  v61 = 0u;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v65 = "Apple80211EventMonitoringInitIOUC";
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Enter\n", buf, 0xCu);
  }

  if (a1 && (v7 = *(a1 + 1820)) != 0 && a2 | a3)
  {
    outputStructCnt = 1;
    v8 = IOConnectCallStructMethod(v7, 5u, 0, 0, (a1 + 1824), &outputStructCnt);
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        return 4294963393;
      }

      *buf = 136315650;
      v65 = "Apple80211EventMonitoringInitIOUC";
      v66 = 2080;
      v67 = a1 + 4;
      v68 = 1024;
      LODWORD(v69) = v8;
      v18 = MEMORY[0x277D86220];
      v19 = "%s: useIOUCEventPipe query failed for %s with %d";
      v23 = 28;
      goto LABEL_28;
    }

    if (v9)
    {
      v10 = "TRUE";
      v11 = *(a1 + 1824);
      v65 = "Apple80211EventMonitoringInitIOUC";
      *buf = 136315650;
      v66 = 2080;
      if (!v11)
      {
        v10 = "FALSE";
      }

      v67 = a1 + 4;
      v68 = 2080;
      v69 = v10;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s useIOUCEventPipe %s", buf, 0x20u);
    }

    if (!*(a1 + 1824))
    {
      return 4294963393;
    }

    v12 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(a1 + 1848) = v12;
    if (v12)
    {
      MachPort = IONotificationPortGetMachPort(v12);
      if (!MachPort)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v65 = "Apple80211EventMonitoringInitIOUC";
          v66 = 2080;
          v67 = a1 + 4;
          v18 = MEMORY[0x277D86220];
          v19 = "%s: IONotificationPortGetMachPort failed for %s\n";
LABEL_27:
          v23 = 22;
LABEL_28:
          _os_log_impl(&dword_254882000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v23);
        }

        return 4294963393;
      }

      v14 = MachPort;
      v15 = *(a1 + 1848);
      if (a2)
      {
        IONotificationPortSetDispatchQueue(v15, a2);
        v16 = 1944;
        v17 = 1840;
      }

      else
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(v15);
        if (!RunLoopSource)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v65 = "Apple80211EventMonitoringInitIOUC";
            v66 = 2080;
            v67 = a1 + 4;
            v18 = MEMORY[0x277D86220];
            v19 = "%s: Failed to create RunLoopSource for %s\n";
            goto LABEL_27;
          }

          return 4294963393;
        }

        CFRunLoopAddSource(a3, RunLoopSource, *MEMORY[0x277CBF058]);
        v16 = 1840;
        v17 = 1944;
        a2 = a3;
      }

      *(a1 + v17) = a2;
      *(a1 + v16) = 0;
      if (IOConnectCallStructMethod(*(a1 + 1820), 3u, 0, 0, 0, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v65 = "Apple80211EventMonitoringInitIOUC";
          v66 = 2080;
          v67 = a1 + 4;
          v18 = MEMORY[0x277D86220];
          v19 = "%s: Failed to init event monitoring in IOUC for %s\n";
          goto LABEL_27;
        }

        return 4294963393;
      }

      v58 = 0;
      v59 = 0;
      v57 = 0;
      v21 = *(a1 + 1848);
      if (v21)
      {
        v22 = IONotificationPortGetMachPort(v21);
      }

      else
      {
        v22 = 0;
      }

      current_queue = dispatch_get_current_queue();
      label = dispatch_queue_get_label(current_queue);
      if (label)
      {
        v28 = label;
      }

      else
      {
        v28 = "";
      }

      pthread_threadid_np(0, &v57);
      v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      v30 = MEMORY[0x277D85F48];
      v31 = MEMORY[0x259C1D0A0](*(a1 + 1820), 1, *MEMORY[0x277D85F48], &v59, &v58, 4097);
      if (v31)
      {
        v45 = v31;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_60:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(a1 + 1896);
            v49 = *(a1 + 1904);
            v50 = *(a1 + 1928);
            v51 = *(a1 + 1936);
            v52 = *(a1 + 1912);
            v53 = *(a1 + 1916);
            *buf = 136317186;
            v65 = "_createMemoryMappings";
            v66 = 2080;
            v67 = a1 + 4;
            v68 = 2048;
            v69 = v48;
            v70 = 2048;
            v71 = v49;
            v72 = 2048;
            v73 = v50;
            v74 = 2048;
            v75 = v51;
            v76 = 1024;
            v77 = v52;
            v78 = 1024;
            v79 = v53;
            v80 = 1024;
            v81 = v45;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s FAILED: mapped buffer info: ringBuffer: ringBuffer[0x%llx] ringSize[0x%llx], ringState: ringState[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x] retVal[0x%08x]\n", buf, 0x50u);
          }

          v24 = 4294963395;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v65 = "Apple80211EventMonitoringInitIOUC";
            v66 = 2080;
            v67 = a1 + 4;
            v68 = 1024;
            LODWORD(v69) = -3901;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Failed to create memory mappings for %s, err[0x%08x]\n", buf, 0x1Cu);
          }

          return v24;
        }

        *buf = 136315138;
        v65 = (a1 + 4);
        v46 = MEMORY[0x277D86220];
        v47 = "Failed to get Ring buffer address for %s\n";
      }

      else
      {
        v54 = v6;
        v32 = v22;
        v34 = v58;
        v33 = v59;
        *(a1 + 1856) = v59;
        *(a1 + 1864) = v34;
        *(a1 + 1880) = *(a1 + 1820);
        *(a1 + 1884) = *v30;
        *(a1 + 1888) = 1;
        *(a1 + 1904) = v34;
        *(a1 + 1896) = v33;
        v35 = MEMORY[0x259C1D0A0]();
        if (!v35)
        {
          v36 = v59;
          *(a1 + 1872) = v59;
          v37 = *(a1 + 1820);
          *(a1 + 1912) = v37;
          v38 = *v30;
          *(a1 + 1916) = v38;
          *(a1 + 1920) = 2;
          v39 = v58;
          *(a1 + 1936) = v58;
          *(a1 + 1928) = v36;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v40 = *(a1 + 1896);
            v41 = *(a1 + 1904);
            *buf = 136316930;
            v65 = "_createMemoryMappings";
            v66 = 2080;
            v67 = a1 + 4;
            v68 = 2048;
            v69 = v40;
            v70 = 2048;
            v71 = v41;
            v72 = 2048;
            v73 = v36;
            v74 = 2048;
            v75 = v39;
            v76 = 1024;
            v77 = v37;
            v78 = 1024;
            v79 = v38;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s mapped buffer info: ringBuffer: ringBuffer[0x%llx] ringSize[0x%llx], ringState: ringState[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x]\n", buf, 0x4Au);
            v36 = *(a1 + 1928);
            v39 = *(a1 + 1936);
            v37 = *(a1 + 1912);
            v38 = *(a1 + 1916);
          }

          _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u, @[%llu.%06llu] '%s' mapped buffer info: tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], ringBuffer: ringBuffer[0x%llx] ringSize[0x%llx], ringState: ringState[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x]\n", "_createMemoryMappings", 8615, v29 / 0x3B9ACA00, v29 % 0x3B9ACA00 / 0x3E8, (a1 + 4), v57, current_queue, v28, a1, *(a1 + 1848), v32, *(a1 + 1896), *(a1 + 1904), v36, v39, v37, v38);
          reference[0] = v14;
          reference[1] = Apple80211EventMonitoringHelper;
          *&v61 = a1;
          if (IOConnectCallAsyncMethod(*(a1 + 1820), 2u, v14, reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0))
          {
            v24 = 0;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v24;
            }

            *buf = 136315394;
            v65 = "Apple80211EventMonitoringInitIOUC";
            v66 = 2080;
            v67 = a1 + 4;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: IOConnectCallAsyncMethod failed for %s\n", buf, 0x16u);
          }

          else
          {
            v42 = *(a1 + 1840);
            v43 = "";
            if (v42)
            {
              v44 = dispatch_queue_get_label(*(a1 + 1840));
              if (v44)
              {
                v43 = v44;
              }
            }

            _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u, @[%llu.%06llu] tid[0x%llx], ioucQueue[%p]/'%s' ioucRunLoop[%p] opaque[%p] ioucPort[%u] mpOfRLSource/machPort[%u], inited AsyncMethod\n", "Apple80211EventMonitoringInitIOUC", 8788, v54 / 0x3B9ACA00, v54 % 0x3B9ACA00 / 0x3E8, v55, v42, v43, *(a1 + 1944), a1, *(a1 + 1848), v14);
          }

          return 0;
        }

        v45 = v35;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        *buf = 136315138;
        v65 = (a1 + 4);
        v46 = MEMORY[0x277D86220];
        v47 = "Failed to get Ring state address for %s\n";
      }

      _os_log_impl(&dword_254882000, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 0xCu);
      goto LABEL_60;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v65 = "Apple80211EventMonitoringInitIOUC";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: failed to create port\n", buf, 0xCu);
    }

    return 4294963395;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v65 = "Apple80211EventMonitoringInitIOUC";
      v66 = 2080;
      v67 = a1 + 4;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no user client connected for %s", buf, 0x16u);
    }

    return 4294963396;
  }
}

void _eventReadCallbackCF()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v6 = *MEMORY[0x277D85DE8];
  Native = CFSocketGetNative(v0);
  if (v2 && *(v2 + 72))
  {
    v4 = Native;
    memset(v5, 170, sizeof(v5));
    if (read(v4, v5, 0x1018uLL) >= 24)
    {
      _eventRead(v2, v5, "_eventReadCallbackCF", 5434);
    }
  }
}

void __Apple80211EventMonitoringInit2_block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  memset(v3, 170, sizeof(v3));
  if (read(v2, v3, 0x1018uLL) >= 24)
  {
    if (*(v1 + 72))
    {
      _eventRead(v1, v3, "_eventReadCallbackQueue", 5451);
    }
  }
}

uint64_t Apple80211RawEventMonitoringInit(uint64_t a1, NSObject *a2, const void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "Apple80211RawEventMonitoringInit";
    v11 = 2048;
    v12 = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: opaque=%p\n", &v9, 0x16u);
  }

  v6 = _Block_copy(a3);
  v7 = Apple80211EventMonitoringInit2(a1, _eventBlockCallback, v6, a2);
  if (v7)
  {
    if (!v6)
    {
      return v7;
    }

    goto LABEL_6;
  }

  *(a1 + 51) = 1;
  if (v6 && *(a1 + 109))
  {
LABEL_6:
    _Block_release(v6);
  }

  return v7;
}

uint64_t Apple80211RawEventMonitoringInitWithCFRunLoop(uint64_t a1, __CFRunLoop *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = Apple80211EventMonitoringInit(a1, _eventBlockCallback, v5, a2);
  if (v6)
  {
    if (!v5)
    {
      return v6;
    }

    goto LABEL_4;
  }

  *(a1 + 51) = 1;
  if (v5 && *(a1 + 109))
  {
LABEL_4:
    _Block_release(v5);
  }

  return v6;
}

uint64_t Apple80211RawP2PEventMonitoringInit(uint64_t a1, NSObject *a2, const void *a3)
{
  if (!*(a1 + 1848) && !*(a1 + 64) && !*(a1 + 56) || (result = Apple80211EventMonitoringHalt(a1), !result))
  {
    result = Apple80211EventMonitoringInitIOUC(a1, a2, 0);
    if (!result)
    {
      v7 = _Block_copy(a3);
      result = 0;
      *(a1 + 72) = _eventBlockCallback;
      *(a1 + 80) = v7;
      *(a1 + 51) = 257;
    }
  }

  return result;
}

uint64_t Apple80211RawStartMonitoringEventAll(uint64_t a1)
{
  if (!a1 || !*(a1 + 56) && !*(a1 + 64) && !*(a1 + 1848))
  {
    return 4294963396;
  }

  v1 = 0;
  *(a1 + 52) = 1;
  return v1;
}

uint64_t Apple80211FilterMonitoringEvent(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && (*(a1 + 56) || *(a1 + 64) || *(a1 + 1848)))
  {
    v10 = *(a1 + 52);
    *v11 = *(a1 + 20);
    *&v11[15] = *(a1 + 35);
    result = Apple80211SetWithIOCTL();
    if (!result)
    {
      return result;
    }

    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = "Apple80211FilterMonitoringEvent";
      v6 = 2080;
      v7 = a1 + 4;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Apple80211FilterMonitoringEvent  failed for %s with %d", &v4, 0x1Cu);
    }
  }

  return 4294963396;
}

uint64_t Apple80211MapUserBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 1817))
  {
    return 4294963393;
  }

  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(a1 + 1820), 8u, input, 2u, 0, 0);
  if (result)
  {
    v4 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "Apple80211MapUserBuffer";
      v7 = 1024;
      v8 = v4;
      _os_log_debug_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: Failed to map user buffer, return %d\n", &v5, 0x12u);
    }

    if (v4 == -536870201)
    {
      return 4294963393;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t Apple80211EventSocketRef(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t Apple80211GetVirtualIfListCopy(_DWORD *a1, const __CFArray **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  theArray = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v5 = 4294963396;
  if (!a1 || !a2 || (*a1 & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = "Apple80211GetVirtualIfListCopy";
    *buf = 136446722;
    v18 = 2048;
    v19 = v6 / 0x3B9ACA00;
    v20 = 2048;
    v21 = v6 % 0x3B9ACA00 / 0x3E8;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] enter\n", buf, 0x20u);
  }

  IfListCopy = _getIfListCopy(a1, &theArray);
  if (IfListCopy)
  {
    v5 = IfListCopy;
LABEL_24:
    Count = CFArrayGetCount(Mutable);
    goto LABEL_17;
  }

  v8 = CFArrayGetCount(theArray);
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (_isVirtualInterface(ValueAtIndex, 0))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  Count = CFArrayGetCount(Mutable);
  if (CFArrayGetCount(Mutable) >= 1)
  {
    v5 = 0;
    *a2 = Mutable;
    goto LABEL_18;
  }

  if (CFArrayGetCount(Mutable))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294963393;
  }

LABEL_17:
  CFRelease(Mutable);
LABEL_18:
  if (theArray)
  {
    CFRelease(theArray);
  }

  v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = "Apple80211GetVirtualIfListCopy";
    *buf = 136447490;
    v19 = v13 / 0x3B9ACA00;
    v18 = 2048;
    v20 = 2048;
    v21 = v13 % 0x3B9ACA00 / 0x3E8;
    v22 = 1024;
    v23 = v5;
    v24 = 1024;
    v25 = v5;
    v26 = 2048;
    v27 = Count;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] exit %d/0x%08x, ifCount[%ld]\n", buf, 0x36u);
  }

  return v5;
}

uint64_t _getIfListCopy(uint64_t a1, const __CFArray **a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v46 = 0;
  memset(__s1, 170, sizeof(__s1));
  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v5 = *(a1 + 2016) == 0;
  }

  else
  {
    v5 = 1;
  }

  v45 = v5;
  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = "_getIfListCopy";
    *buf = 136315650;
    v51 = 2048;
    *v52 = v6 / 0x3B9ACA00;
    *&v52[8] = 2048;
    *&v52[10] = v6 % 0x3B9ACA00 / 0x3E8;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: enter @[%llu.%06llu]\n", buf, 0x20u);
  }

  v7 = 0;
  v8 = 4294963396;
  if (a1 && a2 && (*a1 & 0x80000000) == 0)
  {
    if (!Mutable)
    {
      v8 = 4294963395;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v50 = "_getIfListCopy";
        v51 = 1024;
        *v52 = 9086;
        *&v52[4] = 1024;
        *&v52[6] = -3901;
        *&v52[10] = 1024;
        *&v52[12] = -3901;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s/%6u: Failed array allocation, err[%d/0x%08x]\n", buf, 0x1Eu);
      }

      goto LABEL_68;
    }

    v9 = getifaddrs(&v46);
    if (v9)
    {
      v40 = v9;
      v8 = *__error();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v50 = "_getIfListCopy";
        v51 = 1024;
        *v52 = 9089;
        *&v52[4] = 1024;
        *&v52[6] = v40;
        *&v52[10] = 1024;
        *&v52[12] = v40;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s/%6u: Failed getifaddrs(), bsdErr[%d/0x%08x]\n", buf, 0x1Eu);
      }

      goto LABEL_55;
    }

    v44 = v6;
    v10 = &v46;
    v11 = -1;
    do
    {
      v10 = *v10;
      ++v11;
    }

    while (v10);
    memset(__s1, 0, sizeof(__s1));
    v43 = a2;
    *a2 = 0;
    v12 = v46;
    if (v46)
    {
      v13 = "stf0";
      theArray = Mutable;
      do
      {
        ifa_name = v12->ifa_name;
        if (!ifa_name || !strcmp(__s1, v12->ifa_name) || !strcmp("lo0", ifa_name) || !strcmp("gif0", ifa_name) || !strcmp("faith0", ifa_name) || !strcmp(v13, ifa_name))
        {
          goto LABEL_48;
        }

        v15 = v13;
        if (v45)
        {
          memset(v47, 0, 44);
          __strlcpy_chk();
          v16 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v17 = ioctl(*a1, 0xC02C6938uLL, v47);
          v18 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v16;
          if (v18 > 0x3B9AC9FF)
          {
            v19 = v12->ifa_name;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v20 = "*";
              if (v19)
              {
                v20 = v19;
              }

              *buf = 136448258;
              v50 = "_logTimeIfThresholdExceeded";
              v51 = 2082;
              *v52 = v20;
              *&v52[8] = 2080;
              *&v52[10] = " 'SIOCGIFMEDIA' ";
              *&v52[18] = 1024;
              *&v52[20] = -1070831304;
              *&v52[24] = 1024;
              *v53 = -1070831304;
              *&v53[4] = 2048;
              *&v53[6] = v18 / 0x3B9ACA00;
              *&v53[14] = 2048;
              *&v53[16] = v18 % 0x3B9ACA00 / 0x3E8;
              v54 = 2048;
              v55 = 1;
              v56 = 2048;
              v57 = 0;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
            }
          }

          if (v17)
          {
            v13 = v15;
            if (v17 == 82 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v21 = v12->ifa_name;
              v22 = *__error();
              *buf = 136316674;
              v50 = "_getIfListCopy";
              v51 = 1024;
              *v52 = 9133;
              *&v52[4] = 2080;
              *&v52[6] = v21;
              v13 = v15;
              *&v52[14] = 1024;
              *&v52[16] = 82;
              *&v52[20] = 1024;
              *&v52[22] = v22;
              *v53 = 2048;
              *&v53[2] = 3224135992;
              *&v53[10] = 2048;
              *&v53[12] = 44;
              v23 = MEMORY[0x277D86220];
              v24 = "%s/%6u: Skipped interface '%s' EPWROFF, SIOCGIFMEDIA/bsdErr[%d], errno[%d], SIOCGIFMEDIA[0x%08lx] sizeof ifmediareq[%zu]\n";
              goto LABEL_39;
            }

            goto LABEL_47;
          }

          v13 = v15;
          if ((v47[1] & 0xE0) != 0x80)
          {
            goto LABEL_47;
          }
        }

        else
        {
          memset(v47, 0, 32);
          __strlcpy_chk();
          v25 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v26 = ioctl(*a1, 0xC020699FuLL, v47);
          v27 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v25;
          if (v27 > 0x3B9AC9FF)
          {
            v28 = v12->ifa_name;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v29 = "*";
              if (v28)
              {
                v29 = v28;
              }

              *buf = 136448258;
              v50 = "_logTimeIfThresholdExceeded";
              v51 = 2082;
              *v52 = v29;
              *&v52[8] = 2080;
              *&v52[10] = " 'SIOCGIFTYPE' ";
              *&v52[18] = 1024;
              *&v52[20] = -1071617633;
              *&v52[24] = 1024;
              *v53 = -1071617633;
              *&v53[4] = 2048;
              *&v53[6] = v27 / 0x3B9ACA00;
              *&v53[14] = 2048;
              *&v53[16] = v27 % 0x3B9ACA00 / 0x3E8;
              v54 = 2048;
              v55 = 1;
              v56 = 2048;
              v57 = 0;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
            }
          }

          if (v26)
          {
            v13 = v15;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v30 = v12->ifa_name;
              v31 = *__error();
              *buf = 136316674;
              v50 = "_getIfListCopy";
              v51 = 1024;
              *v52 = 9164;
              *&v52[4] = 2080;
              *&v52[6] = v30;
              v13 = v15;
              *&v52[14] = 1024;
              *&v52[16] = v26;
              *&v52[20] = 1024;
              *&v52[22] = v31;
              *v53 = 2048;
              *&v53[2] = 3223349663;
              *&v53[10] = 2048;
              *&v53[12] = 32;
              v23 = MEMORY[0x277D86220];
              v24 = "%s/%6u: Skipped interface '%s' bsdErr, SIOCGIFTYPE/bsdErr[%d], errno[%d], SIOCGIFTYPE[0x%08lx] sizeof ifreq[%zu]\n";
LABEL_39:
              _os_log_error_impl(&dword_254882000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x3Cu);
            }

LABEL_47:
            Mutable = theArray;
            goto LABEL_48;
          }

          v13 = v15;
          if (LODWORD(v47[1]) != 6 || DWORD2(v47[1]) != 3)
          {
            goto LABEL_47;
          }
        }

        v32 = CFStringCreateWithCString(alloc, v12->ifa_name, 0x8000100u);
        Mutable = theArray;
        if (!v32)
        {
          v7 = 0;
          v8 = 4294963395;
          goto LABEL_53;
        }

        v33 = v32;
        v59.length = CFArrayGetCount(theArray);
        v59.location = 0;
        if (!CFArrayContainsValue(theArray, v59, v33))
        {
          CFArrayAppendValue(theArray, v33);
        }

        CFRelease(v33);
        __strlcpy_chk();
LABEL_48:
        v12 = v12->ifa_next;
      }

      while (v12);
    }

    Count = CFArrayGetCount(Mutable);
    v35 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v50 = "_getIfListCopy";
      *v52 = 9224;
      v51 = 1024;
      *&v52[4] = 2048;
      *&v52[6] = v35 / 0x3B9ACA00;
      *&v52[14] = 2048;
      *&v52[16] = v35 % 0x3B9ACA00 / 0x3E8;
      *&v52[24] = 1024;
      *v53 = v11;
      *&v53[4] = 2048;
      *&v53[6] = Count;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s/%6u: @[%llu.%06llu] getifaddrs nInterfaces[%3u], count[%3ld]\n", buf, 0x36u);
    }

    v8 = 0;
    v7 = 1;
LABEL_53:
    a2 = v43;
    v6 = v44;
  }

  if (!Mutable)
  {
    if (v7)
    {
      v36 = 0;
      if (CFArrayGetCount(0))
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294963393;
      }

      goto LABEL_69;
    }

LABEL_68:
    v36 = 0;
    goto LABEL_69;
  }

LABEL_55:
  v36 = CFArrayGetCount(Mutable);
  if (v8)
  {
LABEL_56:
    CFRelease(Mutable);
    goto LABEL_69;
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    if (CFArrayGetCount(Mutable))
    {
      v8 = 0;
    }

    else
    {
      v8 = 4294963393;
    }

    goto LABEL_56;
  }

  v8 = 0;
  *a2 = Mutable;
LABEL_69:
  if (v46)
  {
    MEMORY[0x259C1D590]();
  }

  v37 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v38 = v37 - v6;
  if (v38 >= 0xB2D05E00 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448258;
    v50 = "_logTimeIfThresholdExceeded";
    v51 = 2082;
    *v52 = "*";
    *&v52[8] = 2080;
    *&v52[10] = " total time ";
    *&v52[18] = 1024;
    *&v52[20] = 0;
    *&v52[24] = 1024;
    *v53 = 0;
    *&v53[4] = 2048;
    *&v53[6] = v38 / 0x3B9ACA00;
    *&v53[14] = 2048;
    *&v53[16] = (274877907 * (v38 % 0x3B9ACA00)) >> 38;
    v54 = 2048;
    v55 = 3;
    v56 = 2048;
    v57 = 0;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    v50 = "_getIfListCopy";
    v51 = 2048;
    *v52 = v37 / 0x3B9ACA00;
    *&v52[8] = 2048;
    *&v52[10] = v37 % 0x3B9ACA00 / 0x3E8;
    *&v52[18] = 1024;
    *&v52[20] = v8;
    *&v52[24] = 1024;
    *v53 = v8;
    *&v53[4] = 2048;
    *&v53[6] = v38 / 0x3B9ACA00;
    *&v53[14] = 2048;
    *&v53[16] = v38 % 0x3B9ACA00 / 0x3E8;
    v54 = 2048;
    v55 = v36;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] exit %d/0x%08x, total time [%llu.%06llu], ifCount[%ld]\n", buf, 0x4Au);
  }

  return v8;
}

BOOL _isVirtualInterface(void *a1, io_registry_entry_t a2)
{
  Service = a2;
  if (!a2)
  {
    Service = _Apple80211FindService(a1);
    if (!Service)
    {
      return 0;
    }
  }

  v4 = _copyStringRegistryPropertyFor(Service, @"IO80211VirtualInterfaceRole");
  v5 = v4;
  if (v4)
  {
    if (CFStringCompare(v4, @"AirLink", 0) && CFStringCompare(v5, @"WiFi-Aware Discovery", 0) && CFStringCompare(v5, @"WiFi-Aware Discovery+Data", 0) && CFStringCompare(v5, @"WiFi-Aware Data", 0))
    {
      v6 = CFStringCompare(v5, @"SoftAP", 0) == kCFCompareEqualTo;
      if (a2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 1;
      if (a2)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v6 = 0;
  if (!a2)
  {
LABEL_11:
    IOObjectRelease(Service);
  }

LABEL_12:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t Apple80211GetIfListCopy(uint64_t a1, const __CFArray **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  theArray = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = "Apple80211GetIfListCopy";
    *buf = 136446722;
    v18 = 2048;
    v19 = v5 / 0x3B9ACA00;
    v20 = 2048;
    v21 = v5 % 0x3B9ACA00 / 0x3E8;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] enter\n", buf, 0x20u);
  }

  if (!a2)
  {
    v12 = 4294963396;
LABEL_23:
    Count = CFArrayGetCount(Mutable);
    goto LABEL_15;
  }

  *a2 = 0;
  IfListCopy = _getIfListCopy(a1, &theArray);
  if (IfListCopy)
  {
    v12 = IfListCopy;
    goto LABEL_23;
  }

  v7 = CFArrayGetCount(theArray);
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (_isInfraInterface(ValueAtIndex, 0))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  Count = CFArrayGetCount(Mutable);
  if (CFArrayGetCount(Mutable) >= 1)
  {
    v12 = 0;
    *a2 = Mutable;
    goto LABEL_16;
  }

  if (CFArrayGetCount(Mutable))
  {
    v12 = 0;
  }

  else
  {
    v12 = 4294963393;
  }

LABEL_15:
  CFRelease(Mutable);
LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = "Apple80211GetIfListCopy";
    *buf = 136447490;
    v19 = v13 / 0x3B9ACA00;
    v18 = 2048;
    v20 = 2048;
    v21 = v13 % 0x3B9ACA00 / 0x3E8;
    v22 = 1024;
    v23 = v12;
    v24 = 1024;
    v25 = v12;
    v26 = 2048;
    v27 = Count;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] exit %d/0x%08x, ifCount[%ld]\n", buf, 0x36u);
  }

  return v12;
}

BOOL _isInfraInterface(void *a1, io_registry_entry_t a2)
{
  Service = a2;
  if (!a2)
  {
    Service = _Apple80211FindService(a1);
    if (!Service)
    {
      return 0;
    }
  }

  v4 = _copyStringRegistryPropertyFor(Service, @"IO80211InterfaceRole");
  v5 = v4;
  if (v4)
  {
    v6 = CFStringCompare(v4, @"Infrastructure", 0) == kCFCompareEqualTo;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if (!a2)
  {
LABEL_5:
    IOObjectRelease(Service);
  }

LABEL_6:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t Apple80211BindToInterfaceWithParams(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, dispatch_queue_t queue)
{
  v26 = *MEMORY[0x277D85DE8];
  label = dispatch_queue_get_label(queue);
  if (label)
  {
    v11 = label;
  }

  else
  {
    v11 = "";
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446210;
    v15 = "Apple80211BindToInterfaceWithParams";
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enter:%{public}s: ", &v14, 0xCu);
  }

  v12 = 4294963396;
  if (a1 && a2)
  {
    a1[245] = a3;
    a1[246] = a4;
    a1[247] = queue;
    if (queue)
    {
      dispatch_retain(queue);
    }

    v12 = Apple80211BindToInterface(a1, a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136447490;
      v15 = "Apple80211BindToInterfaceWithParams";
      v16 = 1024;
      v17 = v12;
      v18 = 2048;
      v19 = a1;
      v20 = 2048;
      v21 = a4;
      v22 = 2048;
      v23 = queue;
      v24 = 2082;
      v25 = v11;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Exit: %{public}s err:%d, opaque[%p] context[%p] queue[%p] dq:'%{public}s'", &v14, 0x3Au);
    }
  }

  return v12;
}

uint64_t Apple80211GetIOReportingService(io_registry_entry_t *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  existing = 0;
  mainPort = -1431655766;
  if (MEMORY[0x259C1D0D0](0, &mainPort))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "IOMainPort failed";
LABEL_72:
    _os_log_impl(&dword_254882000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
    goto LABEL_73;
  }

  v1 = IOServiceMatching("IO80211Controller");
  if (IOServiceGetMatchingServices(mainPort, v1, &existing))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "IOServiceGetMatchingServices failed";
    goto LABEL_72;
  }

  if (existing)
  {
    v2 = IOIteratorNext(existing);
    if (v2)
    {
      v3 = v2;
      v4 = *MEMORY[0x277CBECE8];
      do
      {
        v5 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOClass", v4, 3u);
        if (v5)
        {
          v6 = v5;
          v7 = CFGetTypeID(v5);
          if (v7 == CFStringGetTypeID())
          {
            if (CFStringCompare(v6, @"ACIWiFiDriver", 0) == kCFCompareEqualTo)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v27 = MEMORY[0x277D86220];
                v28 = "Found wlan driver ACIWiFiDriver";
                goto LABEL_47;
              }

              goto LABEL_48;
            }

            if (CFStringCompare(v6, @"AirPort_BrcmNIC", 0) == kCFCompareEqualTo)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_48;
              }

              *buf = 0;
              v27 = MEMORY[0x277D86220];
              v28 = "Found wlan driver AirPort_BrcmNIC";
LABEL_47:
              _os_log_impl(&dword_254882000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
              goto LABEL_48;
            }

            if (CFStringCompare(v6, @"AppleBCMWLANCore", 0) == kCFCompareEqualTo)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_48;
              }

              *buf = 0;
              v27 = MEMORY[0x277D86220];
              v28 = "Found wlan driver AppleBCMWLANCore (iokit)";
              goto LABEL_47;
            }
          }

          CFRelease(v6);
        }

        v8 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUserClass", v4, 3u);
        if (v8)
        {
          v6 = v8;
          v9 = CFGetTypeID(v8);
          if (v9 == CFStringGetTypeID() && CFStringCompare(v6, @"AppleBCMWLANCore", 0) == kCFCompareEqualTo)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v27 = MEMORY[0x277D86220];
              v28 = "Found wlan driver AppleBCMWLANCore";
              goto LABEL_47;
            }

LABEL_48:
            CFRelease(v6);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found WLAN", buf, 2u);
            }

            goto LABEL_57;
          }

          CFRelease(v6);
        }

        v3 = IOIteratorNext(existing);
      }

      while (v3);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = MEMORY[0x277D86220];
      v11 = "Zero driver match with nonzero IO80211Controller match";
LABEL_19:
      _os_log_impl(&dword_254882000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "No Matches for IO80211Controller, trying dk matching";
    goto LABEL_19;
  }

  v12 = IOServiceMatching("IOUserService");
  CFDictionaryAddValue(v12, @"IOUserClass", @"AppleBCMWLANCore");
  if (IOServiceGetMatchingServices(mainPort, v12, &existing))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    *buf = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "IOServiceGetMatchingServices failed";
    goto LABEL_72;
  }

  v13 = IOIteratorNext(existing);
  if (v13)
  {
    v3 = v13;
    v14 = *MEMORY[0x277CBECE8];
    v15 = MEMORY[0x277D86220];
    do
    {
      v16 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUserClass", v14, 3u);
      v17 = CFGetTypeID(v16);
      if (v17 == CFStringGetTypeID() && CFStringCompare(v16, @"AppleBCMWLANCore", 0) == kCFCompareEqualTo)
      {
        v18 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOReportLegend", v14, 0);
        v19 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v19)
          {
            *buf = 0;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found wlan driver dk AppleBCMWLANCore", buf, 2u);
          }

          CFRelease(v18);
          v29 = v16;
LABEL_56:
          CFRelease(v29);
          goto LABEL_57;
        }

        if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_254882000, v15, OS_LOG_TYPE_DEFAULT, "Property IOReportLegend not found in AppleBCMWLANCore", buf, 2u);
        }
      }

      CFRelease(v16);
      v3 = IOIteratorNext(existing);
    }

    while (v3);
  }

  v20 = IOServiceMatching("IOUserService");
  CFDictionaryAddValue(v20, @"IOUserClass", @"IO80211ReporterProxy");
  if (IOServiceGetMatchingServices(mainPort, v20, &existing))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = MEMORY[0x277D86220];
      v32 = "IOServiceGetMatchingServices failed";
      goto LABEL_72;
    }

LABEL_73:
    v3 = 0;
    goto LABEL_57;
  }

  v3 = IOIteratorNext(existing);
  if (v3)
  {
    v21 = *MEMORY[0x277CBECE8];
    v22 = MEMORY[0x277D86220];
    do
    {
      v23 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUserClass", v21, 3u);
      v24 = CFGetTypeID(v23);
      if (v24 == CFStringGetTypeID() && CFStringCompare(v23, @"IO80211ReporterProxy", 0) == kCFCompareEqualTo)
      {
        v25 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOReportLegend", v21, 0);
        v26 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v26)
          {
            *buf = 0;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found wlan driver IO80211ReporterProxy", buf, 2u);
          }

          CFRelease(v25);
          v29 = v23;
          goto LABEL_56;
        }

        if (v26)
        {
          *buf = 0;
          _os_log_impl(&dword_254882000, v22, OS_LOG_TYPE_DEFAULT, "Property IOReportLegend not found in IO80211ReporterProxy", buf, 2u);
        }
      }

      CFRelease(v23);
      v3 = IOIteratorNext(existing);
    }

    while (v3);
  }

LABEL_57:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (!v3)
  {
    return 4294963396;
  }

  result = 0;
  *a1 = v3;
  return result;
}

uint64_t Apple80211BindToInterfaceWithRecoveryOption(uint64_t a1, __CFString *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = 4294963396;
  if (a1 && a2)
  {
    Service = _Apple80211FindService(a2);
    if (Service)
    {
      v6 = Service;
      v7 = _copyStringRegistryPropertyFor(Service, @"IO80211VirtualInterfaceRole");
      if (v7 && (v8 = v7, v9 = CFStringCompare(v7, @"AirLink", 0), CFRelease(v8), v9 == kCFCompareEqualTo))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "Apple80211BindToInterfaceWithRecoveryOption";
          v13 = 2112;
          v14 = a2;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@ using compatibility mode\n", &v11, 0x16u);
        }

        if (CFStringGetCString(a2, (a1 + 4), 16, 0x8000100u))
        {
          result = 0;
          *(a1 + 109) = 1;
        }

        else
        {
          return 4294963396;
        }
      }

      else
      {
        v10 = Apple80211BindToInterfaceWithService();
        IOObjectRelease(v6);
        return v10;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "Apple80211BindToInterfaceWithRecoveryOption";
        v13 = 2112;
        v14 = a2;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@ Failed to find matching service in IORegistry\n", &v11, 0x16u);
      }

      return 4294963393;
    }
  }

  return result;
}

void _serviceMatchingDelayedCallback(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "_serviceMatchingDelayedCallback";
    v4 = 2048;
    v5 = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Enter opaque:%p \n", &v2, 0x16u);
  }

  _Apple80211IOUCResume();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "_serviceMatchingDelayedCallback";
    v4 = 2048;
    v5 = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Exit opaque:%p \n", &v2, 0x16u);
  }
}

uint64_t Apple80211DisassociateExt(uint64_t a1, const __CFDictionary *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  syslog(3, "%s: disassocReason:%p", "Apple80211DisassociateExt", a2);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"DISASSOC_REASON");
    valuePtr = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      syslog(3, "%s: disassocReason:%u", "Apple80211DisassociateExt", valuePtr);
    }
  }

  return Apple80211SetWithIOCTL();
}

char *Apple80211ErrToStr(int __errnum)
{
  result = "Unknown error";
  if (__errnum <= 0xFFFFF0C4 && __errnum >= -3931 && *MEMORY[0x277D85EB0] > __errnum)
  {
    if (__errnum)
    {
      if (__errnum < 1)
      {
        return _apple80211ErrList[-3900 - __errnum];
      }

      else
      {
        return strerror(__errnum);
      }
    }

    else
    {
      return "No Error";
    }
  }

  return result;
}

uint64_t Apple80211ReturnToString(uint64_t a1, unsigned int a2, char *__dst, int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  if (a2 == -3900)
  {
    v6 = &_kApple80211ErrList;
LABEL_6:
    v12 = *(v6 + 1);
    v13 = a4;
LABEL_7:
    strlcpy(__dst, v12, v13);
    return 0;
  }

  v9 = &_kApple80211ErrList;
  v10 = 76;
  while (--v10)
  {
    v6 = v9 + 4;
    v11 = v9[4];
    v9 += 4;
    if (v11 == a2)
    {
      goto LABEL_6;
    }
  }

  if (!a1)
  {
    return 2;
  }

  v14 = 1;
  if (a2 >> 26 == 56)
  {
    __strlcpy_chk();
    LODWORD(v18) = 209;
    DWORD2(v18) = 216;
    v19 = v16;
    memset(&v16[2], 0, 208);
    v16[0] = 1;
    v16[1] = a2;
    if (Apple80211RawGet(a1, &v17))
    {
      return 3;
    }

    v13 = a4;
    v12 = &v16[3];
    goto LABEL_7;
  }

  return v14;
}

uint64_t convertToApple80211Error(uint64_t a1)
{
  if (a1 > -528342010)
  {
    if (a1 <= 15)
    {
      if (a1 == -528342009)
      {
        return 4294963351;
      }

      if (a1 == -528342007)
      {
        return 4294963397;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x10:
          return 4294963345;
        case 0x16:
          return 4294963347;
        case 0x25:
          return 4294963344;
      }
    }

    return a1;
  }

  result = 4294963349;
  if (a1 <= -528350143)
  {
    if (a1 == -536870211)
    {
      return 4294963395;
    }

    v3 = -536870160;
  }

  else
  {
    if (a1 == -528350142)
    {
      return 4294963346;
    }

    if (a1 == -528342015)
    {
      return 4294963348;
    }

    v3 = -528342014;
  }

  if (a1 != v3)
  {
    return a1;
  }

  return result;
}

uint64_t Apple80211ParseWPAPassword(char *__s, _BYTE *a2, uint64_t a3, _BYTE *a4, void *a5, size_t a6)
{
  LOBYTE(v8) = 0;
  v17 = *MEMORY[0x277D85DE8];
  result = 4294967196;
  if (!__s || !a2 || !a5)
  {
    goto LABEL_20;
  }

  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v13 = strlen(__s);
  v14 = v13;
  if (v13 - 8 > 0x37)
  {
    if (v13 == 64 && strspn(__s, "0123456789abcdefABCDEF") == 64)
    {
      v8 = _ParseHexEncodedData(__s, 64, 32, a2, v16);
      result = 4294967196;
      if (v8)
      {
        LOBYTE(v8) = 0;
        if (v16[0] == 32)
        {
          result = 0;
        }

        else
        {
          result = 4294967196;
        }

        if (!a4)
        {
          return result;
        }

LABEL_21:
        *a4 = v8;
        return result;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
      result = 4294967196;
    }

LABEL_20:
    if (!a4)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (a6 >= 0x20)
  {
    a6 = 32;
  }

  memset(&v16[2], 170, 32);
  if ((byte_280C4DC3B & 1) == 0)
  {
    os_parse_boot_arg_int();
    byte_280C4DC3A = 0;
    byte_280C4DC3B = 1;
  }

  gettimeofday(&v16[4], 0);
  if (byte_280C4DC3A)
  {
    IEEE80211iPasswordHashLegacy(__s, v14, a5, a6, a2);
  }

  else
  {
    ccsha1_di();
    ccpbkdf2_hmac();
  }

  gettimeofday(&v16[2], 0);
  v15 = LODWORD(v16[3]) - LODWORD(v16[5]) + 1000000;
  if (SLODWORD(v16[3]) >= SLODWORD(v16[5]))
  {
    v15 = LODWORD(v16[3]) - LODWORD(v16[5]);
  }

  syslog(3, "%s: legacy=<%d> wait took %u ms", "Apple80211PasswordHash", byte_280C4DC3A, v15 / 1000 + 1000 * (LODWORD(v16[2]) - LODWORD(v16[4]) + ((LODWORD(v16[3]) - LODWORD(v16[5])) >> 31)));
  result = 0;
  LOBYTE(v8) = 1;
  if (a4)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t _ParseHexEncodedData(char *a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v10 = MEMORY[0x277D85DE0];
  while (1)
  {
    v11 = *a1;
    if ((v11 & 0x80000000) == 0)
    {
      if ((*(v10 + 4 * v11 + 60) & 0x4000) == 0)
      {
        break;
      }

      goto LABEL_6;
    }

    if (!__maskrune(v11, 0x4000uLL))
    {
      break;
    }

LABEL_6:
    ++a1;
    if (!--a2)
    {
      result = 1;
      v13 = a4;
      if (!a5)
      {
        return result;
      }

      goto LABEL_29;
    }
  }

  v20 = a5;
  v14 = 0;
  v13 = a4;
  while (1)
  {
    v15 = __tolower(a1[v14]);
    if (v15 > 0xFF)
    {
      break;
    }

    v16 = v15;
    if ((*(v10 + 4 * v15 + 60) & 0x10000) == 0)
    {
      break;
    }

    v17 = v15 <= 0x60 ? -48 : -87;
    if (a2 - 1 == v14)
    {
      break;
    }

    v18 = __tolower(a1[v14 + 1]);
    if (v18 > 0xFF || (*(v10 + 4 * v18 + 60) & 0x10000) == 0)
    {
      break;
    }

    if (v18 <= 0x60)
    {
      v19 = -48;
    }

    else
    {
      v19 = -87;
    }

    if (a3)
    {
      if (v13)
      {
        *v13++ = (v19 + v18) | (16 * (v17 + v16));
      }

      --a3;
    }

    v14 += 2;
    if (a2 == v14)
    {
      result = 1;
      goto LABEL_28;
    }
  }

  result = 0;
LABEL_28:
  a5 = v20;
  if (v20)
  {
LABEL_29:
    *a5 = v13 - a4;
  }

  return result;
}

uint64_t _openEventSocket()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = socket(32, 3, 1);
  v1 = v0;
  if ((v0 & 0x80000000) != 0)
  {
    __error();
  }

  else
  {
    v3 = 0x600000001;
    v4 = 1;
    if (ioctl(v0, 0x800C6502uLL, &v3) && *__error())
    {
      close(v1);
      return 0xFFFFFFFFLL;
    }
  }

  return v1;
}

uint64_t __getNetworkSecurityParams(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, @"WPA_IE");
  result = CFDictionaryGetValue(a1, @"RSN_IE");
  if (!(Value | result))
  {
    v12 = CFDictionaryGetValue(a1, @"WEP");
    result = makeBoolRef(v12);
    v13 = *MEMORY[0x277CBED28];
    *(a2 + 40) = 0;
    if (result != v13)
    {
LABEL_9:
      *(a2 + 44) = 0;
      return result;
    }

    result = CFDictionaryGetValue(a1, @"WEP_AUTH_Flags");
    if (result)
    {
      valuePtr = 0;
      result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

    else
    {
      v16 = 1;
    }

    goto LABEL_35;
  }

  v8 = result;
  *(a2 + 44) = 6;
  valuePtr = -1431655766;
  if (!result)
  {
    if (Value)
    {
      v25 = 0;
      v14 = CFDictionaryGetValue(a1, @"AUTH_SEL_OVERRIDE");
      if (v14)
      {
        result = CFNumberGetValue(v14, kCFNumberSInt32Type, &v25);
        if (!result)
        {
          goto LABEL_61;
        }

        v15 = v25;
        if (v25 - 1 >= 2)
        {
          goto LABEL_61;
        }
      }

      else
      {
        result = CFDictionaryGetValue(Value, @"IE_KEY_WPA_AUTHSELS");
        if (!result)
        {
          goto LABEL_61;
        }

        v20 = result;
        result = CFArrayGetCount(result);
        if (result < 1)
        {
          goto LABEL_61;
        }

        v21 = result;
        for (i = 0; i != v21; ++i)
        {
          result = CFArrayGetValueAtIndex(v20, i);
          if (result)
          {
            result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
            if (result)
            {
              if (v25 < valuePtr)
              {
                v25 = valuePtr;
              }
            }
          }
        }

        v15 = v25;
        if (!v25)
        {
          goto LABEL_61;
        }
      }

      if (v15 == 1)
      {
        goto LABEL_74;
      }

      if (v15 == 2)
      {
        *(a2 + 40) = 2;
        return result;
      }
    }

LABEL_61:
    v24 = 0xFFFFFFFF0000FFFFLL;
    goto LABEL_62;
  }

  v25 = 0;
  v9 = CFDictionaryGetValue(a1, @"AUTH_SEL_OVERRIDE");
  if (v9)
  {
    result = CFNumberGetValue(v9, kCFNumberSInt32Type, &v25);
    if (!result)
    {
      goto LABEL_61;
    }

    v10 = v25 - 1;
    if (v25 - 1 >= 0x19 || ((0x18019BFu >> v10) & 1) == 0)
    {
      goto LABEL_61;
    }

    v11 = dword_2548C5C00[v10];
  }

  else
  {
    result = CFDictionaryGetValue(v8, @"IE_KEY_RSN_AUTHSELS");
    if (!result)
    {
      goto LABEL_61;
    }

    v17 = result;
    result = CFArrayGetCount(result);
    if (result < 1)
    {
      goto LABEL_61;
    }

    v18 = result;
    for (j = 0; j != v18; ++j)
    {
      result = CFArrayGetValueAtIndex(v17, j);
      if (result)
      {
        result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
        if (result)
        {
          if (v25 < valuePtr)
          {
            v25 = valuePtr;
          }
        }
      }
    }

    v11 = v25;
    if (!v25)
    {
      goto LABEL_61;
    }
  }

  if (v11 <= 7)
  {
    if (v11 <= 3)
    {
      if (v11 == 1)
      {
        v15 = 4;
        goto LABEL_74;
      }

      if (v11 != 2)
      {
        if (v11 == 3)
        {
          v15 = 128;
LABEL_74:
          *(a2 + 40) = v15;
          goto LABEL_9;
        }

        goto LABEL_61;
      }

      v23 = 8;
      goto LABEL_69;
    }

    switch(v11)
    {
      case 4:
        v23 = 16;
LABEL_69:
        *(a2 + 40) = v23;
        if ((*(a3 + 9) & 8) != 0)
        {
          v16 = 10;
        }

        else
        {
          v16 = 6;
        }

LABEL_35:
        *(a2 + 44) = v16;
        return result;
      case 5:
        v15 = 2048;
        goto LABEL_74;
      case 6:
        v23 = 1024;
        goto LABEL_69;
    }

    goto LABEL_61;
  }

  if (v11 <= 12)
  {
    switch(v11)
    {
      case 8:
        v24 = 0xA00001000;
        goto LABEL_62;
      case 9:
        v24 = 0xA00002000;
        goto LABEL_62;
      case 12:
        v15 = 0x4000;
        goto LABEL_74;
    }

    goto LABEL_61;
  }

  if (v11 == 13)
  {
    v15 = 0x8000;
    goto LABEL_74;
  }

  if (v11 == 24)
  {
    v24 = 0xA00010000;
    goto LABEL_62;
  }

  if (v11 != 25)
  {
    goto LABEL_61;
  }

  v24 = 0xA00020000;
LABEL_62:
  *(a2 + 40) = v24;
  return result;
}