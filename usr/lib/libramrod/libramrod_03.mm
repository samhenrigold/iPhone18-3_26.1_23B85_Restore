void sub_32D20(uint64_t a1, const char *a2)
{
  if (a2)
  {
    ramrod_log_msg("updater_log: %s", a2);
  }
}

CFMutableDictionaryRef ramrod_update_copy_deviceinfo(int a1, CFErrorRef *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (Mutable)
  {
    v6 = &kCFBooleanTrue;
    if (!a1)
    {
      v6 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"PreflightRequired", *v6);
    CFDictionarySetValue(v5, @"PreflightContext", @"BootedOS");
    updated = ramrod_update_copy_deviceinfo_with_options(v5, a2);
  }

  else
  {
    sub_D88A0(0);
    updated = 0;
  }

  AMSupportSafeRelease();
  return updated;
}

BOOL ramrod_should_update_rose(int a1)
{
  if (a1)
  {
    v1 = 0;
    ramrod_log_msg("Skipping checking Rose for booted update\n");
  }

  else
  {
    has_rose = ramrod_device_has_rose();
    v1 = has_rose != 0;
    if (has_rose)
    {
      ramrod_log_msg("Rose is present. Will update\n");
    }

    else
    {
      ramrod_log_msg("Rose not present\n");
    }
  }

  return v1;
}

uint64_t ramrod_device_has_rose()
{
  v0 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (!MatchingService)
  {
    ramrod_log_msg("Service does not exist\n");
    v12 = 0;
    goto LABEL_17;
  }

  if (!ramrod_should_do_legacy_restored_internal_behaviors())
  {
    goto LABEL_16;
  }

  valuePtr = 0;
  v2 = MGCopyAnswer();
  v3 = v2;
  if (!v2)
  {
    ramrod_log_msg("Failed to get HW model\n");
    goto LABEL_16;
  }

  v4 = CFGetTypeID(v2);
  if (v4 != CFStringGetTypeID())
  {
    ramrod_log_msg("HW model is not a string\n");
    goto LABEL_16;
  }

  if (!CFStringHasSuffix(v3, @"DEV"))
  {
    ramrod_log_msg("Not a DEV board\n");
    goto LABEL_16;
  }

  ramrod_log_msg("DEV board\n");
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
  if (!v5)
  {
    ramrod_log_msg("Failed to create zero\n");
    goto LABEL_16;
  }

  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"ECID", kCFAllocatorDefault, 1u);
  v7 = v6;
  if (!v6)
  {
    ramrod_log_msg("ECID property does not exist\n");
LABEL_27:
    v12 = 0;
    goto LABEL_17;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFNumberGetTypeID())
  {
    ramrod_log_msg("ECID property is not a number\n");
    goto LABEL_27;
  }

  if (CFNumberCompare(v5, v7, 0) == kCFCompareEqualTo)
  {
    ramrod_log_msg("ECID property is zero\n");
    goto LABEL_27;
  }

  v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"ChipID", kCFAllocatorDefault, 1u);
  v10 = v9;
  if (!v9)
  {
    ramrod_log_msg("ChipID property does not exist\n");
    goto LABEL_30;
  }

  v11 = CFGetTypeID(v9);
  if (v11 != CFNumberGetTypeID())
  {
    ramrod_log_msg("ChipID property is not a number\n");
    goto LABEL_30;
  }

  if (CFNumberCompare(v5, v10, 0))
  {
LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

  ramrod_log_msg("ChipID property is zero\n");
LABEL_30:
  v12 = 0;
LABEL_17:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  ramrod_log_msg("result: %u\n", v12);
  return v12;
}

BOOL ramrod_should_update_centauri(int a1)
{
  v2 = os_variant_uses_ephemeral_storage();
  if (v2)
  {
    ramrod_log_msg("ramrod_update running in limited environment\n");
  }

  else
  {
    ramrod_log_msg("ramrod_update running in normal env\n");
  }

  if (a1 && v2)
  {
    ramrod_log_msg("Skipping checking Centauri in NeRD for bootedUpdate=true\n");
    return 0;
  }

  else
  {

    return ramrod_device_has_centauri();
  }
}

BOOL ramrod_device_has_centauri()
{
  v0 = IOServiceNameMatching("centauri");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  ramrod_log_msg("%s: %s\n", "ramrod_device_has_centauri", v3);
  return v2 != 0;
}

uint64_t ramrod_write_ean(const __CFDictionary *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    return sub_33250(a1, 0, 0, 0);
  }

  else
  {
    sub_D88B4(a2, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

uint64_t sub_33250(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  connect = 0;
  if (!a1)
  {
    ramrod_log_msg("ean_dictionary is NULL\n", a2, a3, a4);
    return 0;
  }

  v4 = a4;
  if (!CFDictionaryGetCount(a1))
  {
    return 1;
  }

  v8 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v8);
  v10 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName\n", v13, context[0]);
LABEL_18:
    v11 = 0;
    goto LABEL_7;
  }

  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
  {
    ramrod_log_msg("IOServiceOpen returned result=0x%04x\n");
    goto LABEL_18;
  }

  if (!connect)
  {
    ramrod_log_msg("IOServiceOpen returned IO_OBJECT_NULL\n", v13, context[0]);
    goto LABEL_18;
  }

  v15 = v4;
  v11 = 1;
  BYTE1(v15) = 1;
  context[0] = connect;
  context[3] = 0;
  context[4] = CFDictionaryGetCount(a1);
  context[1] = a2;
  context[2] = a3;
  CFDictionaryApplyFunction(a1, sub_43330, context);
  if (!BYTE1(v15))
  {
    ramrod_log_msg("Failed to write to EAN namespace\n", v13, context[0]);
    goto LABEL_18;
  }

LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v10)
  {
    IOObjectRelease(v10);
  }

  return v11;
}

uint64_t ramrod_erase_ean_key(const __CFString *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_D892C(a2, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!sub_33448(a1))
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    ramrod_log_msg("%s: %s does not exist.\n", "ramrod_erase_ean_key", CStringPtr);
    return 1;
  }

  if (sub_335B8(a1))
  {
    return 1;
  }

  sub_D88F0(a2, v10, v11, v12, v13, v14, v15, v16);
  return 0;
}

uint64_t sub_33448(const __CFString *a1)
{
  input = 0;
  outputCnt = 1;
  connect = 0;
  output = 0;
  if (!a1)
  {
    ramrod_log_msg("key is NULL.\n");
LABEL_14:
    v5 = 0;
    goto LABEL_7;
  }

  v1 = sub_430C4(a1);
  if (!v1)
  {
    ramrod_log_msg("payloadType is invalid.\n");
    goto LABEL_14;
  }

  v2 = v1;
  v3 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      ramrod_log_msg("IOServiceOpen returned result=0x%04x.\n");
    }

    else if (connect)
    {
      input = v2;
      if (IOConnectCallMethod(connect, 3u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0))
      {
        ramrod_log_msg("getSize failed, kernResult = 0x%x.\n");
      }
    }

    else
    {
      ramrod_log_msg("IOServiceOpen returned IO_OBJECT_NULL.\n");
    }
  }

  else
  {
    ramrod_log_msg("IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName.\n");
  }

LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v5)
  {
    IOObjectRelease(v5);
  }

  return output;
}

uint64_t sub_335B8(const __CFString *a1)
{
  connect = 0;
  input = 0;
  output = 0;
  outputCnt = 1;
  if (a1)
  {
    v1 = sub_430C4(a1);
    if (!v1)
    {
      ramrod_log_msg("payloadType is invalid.\n");
      v4 = 0;
      goto LABEL_7;
    }

    v2 = IOServiceMatching("AppleNVMeEAN");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
    v4 = MatchingService;
    if (MatchingService)
    {
      if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
      {
        ramrod_log_msg("IOServiceOpen returned result=0x%04x.\n");
      }

      else if (connect)
      {
        input = v1;
        ramrod_log_msg("Erasing EAN key %c%c%c%c.\n", BYTE3(v1), WORD1(v1), v1 >> 8, v1);
        v1 = 1;
        if (!IOConnectCallMethod(connect, 5u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0))
        {
          goto LABEL_7;
        }

        ramrod_log_msg("eraseImage failed, kernResult = 0x%x.\n");
      }

      else
      {
        ramrod_log_msg("IOServiceOpen returned IO_OBJECT_NULL.\n");
      }
    }

    else
    {
      ramrod_log_msg("IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName.\n");
    }
  }

  else
  {
    ramrod_log_msg("key is NULL.\n");
    v4 = 0;
  }

  v1 = 0;
LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v4)
  {
    IOObjectRelease(v4);
  }

  return v1;
}

uint64_t ramrod_copy_fdr_data_instance(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a3);
    if (!MutableCopy)
    {
      sub_D8968(a4, v6, v7, v8, v9, v10, v11, v12);
LABEL_25:
      v36 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!MutableCopy)
    {
      sub_D8AD0(a4, v14, v15, v16, v17, v18, v19, v20);
      goto LABEL_25;
    }
  }

  CFDictionaryAddValue(MutableCopy, @"VerifyData", kCFBooleanFalse);
  CFDictionaryAddValue(MutableCopy, @"GetCombined", kCFBooleanTrue);
  CFDictionaryAddValue(MutableCopy, @"StripImg4", kCFBooleanFalse);
  if (!CFDictionaryContainsKey(MutableCopy, @"DataDirectory"))
  {
    ramrod_log_msg("WARNING: using default FDR location of %s\n", "/mnt1");
    v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/FactoryData/%@", "/mnt6", @"/System/Library/Caches/com.apple.factorydata");
    if (!v28)
    {
      sub_D8A94(a4, v21, v22, v23, v24, v25, v26, v27);
      goto LABEL_25;
    }

    URLFromString = AMSupportCreateURLFromString();
    if (!URLFromString)
    {
      sub_D8A58(a4, v28, v29, v30, v31, v32, v33, v34);
      goto LABEL_25;
    }

    CFDictionaryAddValue(MutableCopy, @"DataDirectory", URLFromString);
  }

  if (!CFDictionaryContainsKey(MutableCopy, @"APTicket"))
  {
    v44 = ramrod_ticket_copy();
    if (!v44)
    {
      sub_D8A1C(a4, v37, v38, v39, v40, v41, v42, v43);
      goto LABEL_25;
    }

    CFDictionaryAddValue(MutableCopy, @"APTicket", v44);
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_14:
    v45 = AMFDRSealingMapCopyMultiInstanceForClass();
    v53 = v45;
    if (v45)
    {
      v54 = CFGetTypeID(v45);
      if (v54 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v53) > 0)
        {
          CFArrayGetValueAtIndex(v53, 0);
          v36 = AMFDRSealingMapCopyLocalData();
          goto LABEL_20;
        }

        sub_D89A4(a4, v58, v59, v60, v61, v62, v63, v64);
      }

      else
      {
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: malformed data from AMFDRSealingMapCopyMultiInstanceForClass is not CFArray.", v55, v56, v57, "ramrod_copy_fdr_data_instance");
      }
    }

    else
    {
      sub_D89E0(a4, v46, v47, v48, v49, v50, v51, v52);
    }

    v36 = 0;
    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_11:
  v36 = AMFDRSealingMapCopyLocalData();
LABEL_20:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v36;
}

BOOL ramrod_device_has_savage()
{
  v11 = 0;
  ramrod_log_msg("opening %s\n", "/usr/lib/updaters/libSavageUpdater_iOS.dylib");
  v0 = dlopen("/usr/lib/updaters/libSavageUpdater_iOS.dylib", 261);
  if (!v0)
  {
    v9 = dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", "/usr/lib/updaters/libSavageUpdater_iOS.dylib", v9);
    return 0;
  }

  v5 = ramrod_copy_updater_functions(v0, "Savage", &v11, 0, v1, v2, v3, v4);
  v6 = v11;
  if (!v5)
  {
    v8 = 0;
    if (!v11)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v7 = *(v11 + 1);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7(0, 0) == 0;
  v6 = v11;
  if (v11)
  {
LABEL_5:
    free(v6);
  }

  return v8;
}

BOOL ramrod_should_update_savage(int a1)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking Savage for booted update\n");
    return 0;
  }

  else
  {

    return ramrod_device_has_savage();
  }
}

uint64_t ramrod_device_has_veridian()
{
  v0 = IOServiceMatching("AppleGasGaugeUpdate");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    if (!ramrod_should_do_legacy_restored_internal_behaviors())
    {
      goto LABEL_14;
    }

    v3 = MGCopyAnswer();
    v4 = v3;
    if (!v3)
    {
      ramrod_log_msg("Failed to get HW model\n");
      goto LABEL_14;
    }

    v5 = CFGetTypeID(v3);
    if (v5 != CFStringGetTypeID())
    {
      ramrod_log_msg("HW model is not a string\n");
      goto LABEL_14;
    }

    if (!CFStringHasSuffix(v4, @"DEV"))
    {
LABEL_14:
      v12 = 1;
      goto LABEL_15;
    }

    keys = @"built-in";
    v6 = IOServiceMatching("IOPMPowerSource");
    v7 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v6)
    {
      if (v7)
      {
        CFDictionarySetValue(v6, @"IOPropertyMatch", v7);
        v8 = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
        if (v8)
        {
          v9 = v8;
          CFProperty = IORegistryEntryCreateCFProperty(v8, @"Serial", kCFAllocatorDefault, 0);
          IOObjectRelease(v9);
          AMSupportSafeRelease();
          if (CFProperty)
          {
            v11 = CFGetTypeID(CFProperty);
            if (v11 == CFStringGetTypeID())
            {
              if (!CFStringGetLength(CFProperty))
              {
                ramrod_log_msg("Dev board with no Veridian attached - pretending we don't support Veridian.\n");
                v12 = 0;
LABEL_15:
                IOObjectRelease(v2);
                goto LABEL_16;
              }
            }

            else
            {
              ramrod_log_msg("Veridian Serial not a string - not expected\n");
            }

            goto LABEL_14;
          }

LABEL_23:
          ramrod_log_msg("Veridian Serial is NULL - not expected\n");
          goto LABEL_14;
        }

        ramrod_log_msg("unable to find IOPMPowerSource service\n");
      }

      else
      {
        ramrod_log_msg("Failed to allocate properties\n");
      }
    }

    else
    {
      ramrod_log_msg("Failed to allocate matching\n");
    }

    AMSupportSafeRelease();
    goto LABEL_23;
  }

  ramrod_log_msg("Not a Veridian device.\n");
  v12 = 0;
LABEL_16:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v12;
}

BOOL ramrod_device_ota_veridian(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_veridian() != 0;
  }

  ramrod_log_msg("Skipping checking Veridian for booted update\n");
  return 0;
}

const __CFString *ramrod_device_has_appletcon(uint64_t a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/product");
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"tcon-path", kCFAllocatorDefault, 0);
  IOObjectRelease(v3);
  if (!CFProperty)
  {
    ramrod_log_msg("tcon-path pointer not found.\n");
    goto LABEL_20;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(CFProperty))
  {
    ramrod_log_msg("IORegistryEntryCreateCFProperty returned non CFDataRef\n");
    goto LABEL_20;
  }

  Length = CFDataGetLength(CFProperty);
  if (!Length)
  {
    ramrod_log_msg("tcon-path contains invalid string\n");
    goto LABEL_20;
  }

  v7 = Length;
  v8 = malloc(Length + 15);
  v9 = v8;
  if (!v8)
  {
    ramrod_log_msg("malloc returned NULL\n");
    goto LABEL_20;
  }

  if (snprintf(v8, v7 + 15, "%s", "IODeviceTree:/") != 14)
  {
    ramrod_log_msg("overflow");
    goto LABEL_20;
  }

  v19.length = CFDataGetLength(CFProperty);
  v19.location = 0;
  CFDataGetBytes(CFProperty, v19, v9 + 14);
  v9[v7 + 14] = 0;
  ramrod_log_msg("Looking for entry under %s\n", v9);
  v10 = IORegistryEntryFromPath(kIOMasterPortDefault, v9);
  if (!v10)
  {
    ramrod_log_msg("tcon-path points to non-existent node\n");
    goto LABEL_20;
  }

  v11 = v10;
  v12 = IORegistryEntryCreateCFProperty(v10, @"firmware", kCFAllocatorDefault, 0);
  IOObjectRelease(v11);
  if (!v12)
  {
    ramrod_log_msg("No 'firmware' property found.\n", v18);
LABEL_20:
    updated = 0;
    goto LABEL_21;
  }

  v13 = CFDataGetTypeID();
  if (v13 != CFGetTypeID(v12))
  {
    ramrod_log_msg("IORegistryEntryCreateCFProperty returned non CFDataRef\n", v18);
    goto LABEL_20;
  }

  if (CFDataGetLength(v12) != 4)
  {
    CFDataGetLength(v12);
    ramrod_log_msg("version_data wrong length (%lu bytes)\n");
    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(v12);
  if (!BytePtr)
  {
    ramrod_log_msg("CFDataGetBytePtr returned NULL\n", v18);
    goto LABEL_20;
  }

  v15 = *BytePtr;
  ramrod_log_msg("AppleTCON flashable node found. (firmware=%d)\n", *BytePtr);
  CFRelease(v12);
  if (!v15)
  {
    goto LABEL_20;
  }

  if (a1 && AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
  {
    updated = (&dword_0 + 1);
  }

  else
  {
    updated = ramrod_update_supported(@"AppleTCON", @"AppleTCONUpdaterErrorDomain: AppleTCONUpdaterExecCommand - execCommand error");
  }

LABEL_21:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  return updated;
}

BOOL ramrod_device_ota_appletcon(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_appletcon(0) != 0;
  }

  ramrod_log_msg("Skipping checking TCON for booted update\n");
  return 0;
}

BOOL ramrod_device_has_appletconuarp()
{
  v11 = 0;
  ramrod_log_msg("opening %s\n", "/usr/lib/updaters/libTconUpdaterUARP.dylib");
  v0 = dlopen("/usr/lib/updaters/libTconUpdaterUARP.dylib", 261);
  if (!v0)
  {
    v9 = dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", "/usr/lib/updaters/libTconUpdaterUARP.dylib", v9);
    return 0;
  }

  v5 = ramrod_copy_updater_functions(v0, "AppleTconUARP", &v11, 0, v1, v2, v3, v4);
  v6 = v11;
  if (!v5)
  {
    v8 = 0;
    if (!v11)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v7 = *(v11 + 1);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7(0, 0) == 0;
  v6 = v11;
  if (v11)
  {
LABEL_5:
    free(v6);
  }

  return v8;
}

BOOL ramrod_should_update_appletconuarp(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_appletconuarp();
  }

  ramrod_log_msg("Skipping checking AppleTconUARP for booted update\n");
  return 0;
}

BOOL _ramrod_device_has_usbcretimer(const __CFString *a1)
{
  existing = 0;
  ramrod_log_msg_cf(@"%s(%@) entered\n", "_ramrod_device_has_usbcretimer", a1);
  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    entryID = 0;
    os_parse_boot_arg_int();
  }

  v2 = IOServiceNameMatching("atcrt");
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v2, &existing) || (v5 = IOIteratorNext(existing)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v6 = v5;
    v3 = 0;
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v6, @"name", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v8 = CFProperty;
        entryID = 0;
        IORegistryEntryGetRegistryEntryID(v6, &entryID);
        TypeID = CFDataGetTypeID();
        if (TypeID == CFGetTypeID(v8))
        {
          v10 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
          if (v10)
          {
            v11 = v10;
            if (CFStringHasPrefix(v10, a1))
            {
              ++v3;
            }

            CFRelease(v11);
          }

          else
          {
            ramrod_log_msg("nameString NULL\n");
          }
        }

        else
        {
          ramrod_log_msg("nameData not CFDataRef\n");
        }

        CFRelease(v8);
      }

      IOObjectRelease(v6);
      v6 = IOIteratorNext(existing);
    }

    while (v6);
  }

  ramrod_log_msg_cf(@"%s(%@) found %lu nodes\n", "_ramrod_device_has_usbcretimer", a1, v3);
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v3 != 0;
}

BOOL ramrod_should_update_usbcretimer(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_usbcretimer();
  }

  ramrod_log_msg("Skipping checking retimer for booted update\n");
  return 0;
}

BOOL ramrod_should_update_usbcretimer_uarp(int a1)
{
  if (!a1)
  {
    return _ramrod_device_has_usbcretimer(@"uatcrt");
  }

  ramrod_log_msg("Skipping checking retimer for booted update\n");
  return 0;
}

BOOL ramrod_device_has_ace3()
{
  v11 = 0;
  ramrod_log_msg("opening %s\n", "/usr/lib/updaters/libAce3Updater.dylib");
  v0 = dlopen("/usr/lib/updaters/libAce3Updater.dylib", 261);
  if (!v0)
  {
    v9 = dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", "/usr/lib/updaters/libAce3Updater.dylib", v9);
    return 0;
  }

  v5 = ramrod_copy_updater_functions(v0, "Ace3", &v11, 0, v1, v2, v3, v4);
  v6 = v11;
  if (!v5)
  {
    v8 = 0;
    if (!v11)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v7 = *(v11 + 1);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7(0, 0) == 0;
  v6 = v11;
  if (v11)
  {
LABEL_5:
    free(v6);
  }

  return v8;
}

BOOL ramrod_should_update_ace3(int a1)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking Ace3 for booted update\n");
    return 0;
  }

  else
  {

    return ramrod_device_has_ace3();
  }
}

uint64_t ramrod_device_has_manta_mcu()
{
  ramrod_log_msg("entering %s\n", "ramrod_device_has_manta_mcu");
  v0 = IOServiceNameMatching("manta-b");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"supports-mcu-restore", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v4 = CFProperty;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v4))
      {
        if (CFDataGetLength(v4) <= 0)
        {
          CFDataGetLength(v4);
          ramrod_log_msg("supports-mcu-restore wrong length (%lu bytes)\n");
        }

        else
        {
          if (*CFDataGetBytePtr(v4) == 1)
          {
            v6 = 1;
LABEL_12:
            IOObjectRelease(v2);
            CFRelease(v4);
            return v6;
          }

          CFDataGetBytePtr(v4);
          ramrod_log_msg("supports-mcu-restore is %u, the device does not support manta mcu restore time firmware update.\n");
        }
      }

      else
      {
        ramrod_log_msg("IORegistryEntryCreateCFProperty returned non CFDataRef for supports-mcu-restore property.\n", v8);
      }

      v6 = 0;
      goto LABEL_12;
    }

    ramrod_log_msg("manta-b ioregistry entry does not have supports-mcu-restore property, the device does not support manta mcu restore time firmware update.\n");
    IOObjectRelease(v2);
  }

  else
  {
    ramrod_log_msg("Could not find manta-b ioregistry entry, the device does not support manta mcu.\n");
  }

  return 0;
}

BOOL ramrod_should_update_manta_mcu(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_manta_mcu() != 0;
  }

  ramrod_log_msg("Skipping checking manta mcu for booted update.\n");
  return 0;
}

BOOL ramrod_device_has_vinyl()
{
  v15 = 0;
  v16 = 0;
  ramrod_log_msg("opening %s\n", "/usr/lib/updaters/libVinylUpdater.dylib");
  v0 = dlopen("/usr/lib/updaters/libVinylUpdater.dylib", 261);
  v4 = v0;
  if (!v0)
  {
    v13 = dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", "/usr/lib/updaters/libVinylUpdater.dylib", v13);
    return v4;
  }

  v5 = sub_2FDE8(v0, "Vinyl", "UpdaterSupported", 0, 0, v1, v2, v3);
  if (!v5 || !v5(&v15))
  {
    ramrod_log_msg("Vinyl updaterSupported missing or returned not supported\n");
    return 0;
  }

  v10 = ramrod_copy_updater_functions(v4, "Vinyl", &v16, 0, v6, v7, v8, v9);
  v11 = v16;
  if (!v10)
  {
    v4 = 0;
    if (!v16)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v12 = *(v16 + 1);
  if (!v12)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = v12(0, &v15) == 0;
  v11 = v16;
  if (v16)
  {
LABEL_7:
    free(v11);
  }

  return v4;
}

BOOL ramrod_device_has_fillmore()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("hw.features.fillmore", &v3, &v2, 0, 0) && v3 == 1;
}

BOOL ramrod_device_has_fillmore_rcp1()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("hw.features.fillmore_rcp1", &v3, &v2, 0, 0) && v3 == 1;
}

uint64_t ramrod_device_has_sep()
{
  v0 = IOServiceMatching("AppleSEPManager");
  result = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (result)
  {
    IOObjectRetain(result);
    return 1;
  }

  return result;
}

uint64_t ramrod_device_has_sep_with_persistent_storage()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/Ocelot");
  if (v0)
  {
    IOObjectRelease(v0);
    return 1;
  }

  else
  {

    return _ramrod_device_has_sandcat(v0, v1);
  }
}

uint64_t ramrod_load_sep_os_from_system_partition(CFErrorRef *a1)
{
  if (!ramrod_init_gigalocker_if_xart())
  {
    ramrod_log_msg("%s: unable to initialize gigalocker\n", "ramrod_load_sep_os_from_system_partition");
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 7, 0, @"%s: Failed to initialize gigalocker", v8, v9, v10, "ramrod_load_sep_os_from_system_partition");
    return 0;
  }

  bzero(v23, 0x400uLL);
  memset(&v22, 0, sizeof(v22));
  if (!ramrod_get_system_partition_device_node(v23, 0x400uLL))
  {
    ramrod_log_msg("%s: unable to find system partition\n", "ramrod_load_sep_os_from_system_partition");
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 8, 0, @"%s: Failed to get system partition device node while attempting to load the SEP OS", v11, v12, v13, "ramrod_load_sep_os_from_system_partition");
    return 0;
  }

  v2 = ramrod_mount_filesystem_no_fsck_opt_err(v23, "/mnt1", 1, 0);
  if (v2)
  {
    v3 = v2;
    ramrod_log_msg("%s: unable to mount system partition\n", "ramrod_load_sep_os_from_system_partition");
    v4 = *__error();
    strerror(v3);
    ramrod_create_error_cf(a1, kCFErrorDomainPOSIX, v4, 0, @"%s: Failed to mount the system partition while attempting to load the SEP OS: err='%s'", v5, v6, v7, "ramrod_load_sep_os_from_system_partition");
    return 0;
  }

  if (stat("/mnt1/usr/standalone/firmware/sep-firmware.img4", &v22))
  {
    ramrod_log_msg("%s: unable to find sep firmware image in system partition\n", "ramrod_load_sep_os_from_system_partition");
    v16 = *__error();
    v17 = __error();
    strerror(*v17);
    ramrod_create_error_cf(a1, kCFErrorDomainPOSIX, v16, 0, @"%s: Error attempting to stat SEP firmware from system partition: err='%s'", v18, v19, v20, "ramrod_load_sep_os_from_system_partition");
    sep_os_and_patch_from_filesystem = 0;
  }

  else
  {
    if (stat("/mnt1/usr/standalone/firmware/sep-patches.img4", &v22))
    {
      v21 = 0;
    }

    else
    {
      v21 = "/mnt1/usr/standalone/firmware/sep-patches.img4";
    }

    sep_os_and_patch_from_filesystem = ramrod_load_sep_os_and_patch_from_filesystem(0, "/mnt1/usr/standalone/firmware/sep-firmware.img4", v21, a1);
  }

  if (ramrod_unmount_filesystem("/mnt1"))
  {
    ramrod_log_msg("[%s]: failed to unmount SEP partition.\n", "ramrod_load_sep_os_from_system_partition");
    return 0;
  }

  return sep_os_and_patch_from_filesystem;
}

uint64_t ramrod_init_gigalocker_if_xart()
{
  if (ramrod_wait_for_internal_media())
  {
    ramrod_log_msg("%s: error %d waiting for internal media\n");
    return 0;
  }

  if (ramrod_should_have_xart_partition())
  {
    bzero(v1, 0x400uLL);
    if (ramrod_get_xart_partition_device_node(v1, 0x400uLL))
    {
      if (ramrod_mount_filesystem_no_fsck_opt_err(v1, "/mnt7", 0, 0))
      {
        ramrod_log_msg("%s: unable to mount xART volume\n");
        return 0;
      }

      if (!ramrod_init_gigalocker())
      {
        ramrod_log_msg("%s: gigalocker: FAULT\n");
        return 0;
      }

      ramrod_log_msg("%s: gigalocker: ONLINE\n");
    }

    else
    {
      ramrod_log_msg("%s: build supports xART but no xART volume present\n");
    }
  }

  return 1;
}

uint64_t ramrod_init_gigalocker()
{
  v2 = *off_1A9900;
  v3 = 0;
  ramrod_log_msg("entering ramrod_init_gigalocker\n");
  if (ramrod_device_has_sep() && ramrod_should_have_xart_partition())
  {
    v0 = ramrod_execute_command(&v2);
    if (v0)
    {
      ramrod_log_msg("seputil failure when attempting to init the gigalocker: %d\n", v0);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("device does not have xART, skipping gigalocker init\n");
  }

  return 1;
}

uint64_t ramrod_shutdown_gigalocker()
{
  v4 = *off_1A9918;
  v5 = 0;
  ramrod_log_msg("entering ramrod_shutdown_gigalocker\n");
  if (!ramrod_device_has_sep() || !ramrod_should_have_xart_partition())
  {
    ramrod_log_msg("device does not have xART, skipping gigalocker shutdown\n");
    return 1;
  }

  memset(v6, 0, sizeof(v6));
  apfs_container_device_node = ramrod_get_apfs_container_device_node(v6, 0x20uLL);
  if (off_1AD4A8 && apfs_container_device_node && LOBYTE(v6[0]))
  {
    ramrod_log_msg("APFSContainerWaitForReaper(%s) running...\n", v6);
    v1 = APFSContainerWaitForReaper();
    if (v1)
    {
      strerror(v1);
      ramrod_log_msg("APFSContainerWaitForReaper(%s) failed: %d (%s)\n");
    }

    else
    {
      ramrod_log_msg("APFSContainerWaitForReaper(%s) completed\n");
    }
  }

  v3 = ramrod_execute_command(&v4);
  if (!v3)
  {
    return 1;
  }

  ramrod_log_msg("seputil failure when attempting to shutdown the gigalocker: %d\n", v3);
  return 0;
}

uint64_t ramrod_load_sep_os(const __CFDictionary *a1, const __CFData *a2, const __CFData *a3, CFErrorRef *a4)
{
  v28 = 0;
  v29 = *off_1A9930;
  v30 = *&off_1A9940;
  v31 = xmmword_1A9950;
  ramrod_log_msg("entering ramrod_load_sep_os\n");
  has_sep = ramrod_device_has_sep();
  if (has_sep)
  {
    if (a1)
    {
      has_sep = CFDictionaryGetValue(a1, @"SEPRestore");
      if (has_sep == kCFBooleanTrue)
      {
        v10 = has_sep;
        has_sep = CFDictionaryGetValue(a1, @"SEPLoadRequiresART");
        v11 = "--restore";
        if (has_sep == v10)
        {
          v11 = "--restore+art";
        }

        *(&v29 + 1) = v11;
      }
    }

    if (_ramrod_device_has_sandcat(has_sep, v9))
    {
      v27 = 2;
      if (sub_351A4(a2, &v27))
      {
        v12 = v27;
      }

      else
      {
        ramrod_log_msg("Warning: No snid stitched to sep being loaded, will attempt to use flashing slot as proxy.\n");
        v12 = dword_1C4800;
        v27 = dword_1C4800;
      }

      asprintf(&v28, "--slot=%d", v12);
      if (!v28)
      {
        v25 = __error();
        ramrod_log_msg("unable to load sepos because sandcat slot print failed. error: %d\n", *v25);
        goto LABEL_22;
      }

      *(&v30 + 1) = v28;
    }

    if (a3)
    {
      Length = CFDataGetLength(a2);
      v14 = CFDataGetLength(a3);
      MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, v14 + Length, a2);
      if (!MutableCopy)
      {
        ramrod_log_msg("combined_data allocation failure.\n");
        goto LABEL_22;
      }

      BytePtr = CFDataGetBytePtr(a3);
      v17 = CFDataGetLength(a3);
      CFDataAppendBytes(MutableCopy, BytePtr, v17);
    }

    else
    {
      MutableCopy = CFRetain(a2);
    }

    v18 = CFDataGetBytePtr(MutableCopy);
    v19 = CFDataGetLength(MutableCopy);
    v20 = ramrod_execute_command_with_input_data(&v29, v18, v19);
    if (v20)
    {
      ramrod_log_msg("seputil failure when attempting to load SEP OS firmware: %d\n", v20);
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: seputil failed when attempting to load SEP OS firmware: %d", v21, v22, v23, "ramrod_load_sep_os");
LABEL_22:
      v24 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    ramrod_log_msg("device does not have a SEP, load skipped\n");
  }

  v24 = 1;
LABEL_23:
  AMSupportSafeRelease();
  return v24;
}

uint64_t sub_351A4(uint64_t a1, _DWORD *a2)
{
  ramrod_log_msg("Entering: %s\n", "Boolean _ramrod_load_sep_nonce_slot_from_data(CFDataRef, int *)");
  if (a1)
  {

    return sub_42F44(a1, @"snid", a2);
  }

  else
  {
    ramrod_log_msg("WARNING: sep_data == NULL in %s. Will return default.\n", "Boolean _ramrod_load_sep_nonce_slot_from_data(CFDataRef, int *)");
    return 0;
  }
}

uint64_t ramrod_wait_for_sep_load(unsigned int a1)
{
  v7 = *off_1A9960;
  v8 = 0;
  info = 0;
  ramrod_log_msg("entering %s\n", "ramrod_wait_for_sep_load");
  if (a1)
  {
    if (mach_timebase_info(&info))
    {
      ramrod_log_msg("[%s] failed to get mach_timebase_info - waiting forever\n", "ramrod_wait_for_sep_load");
      a1 = 0;
    }

    v2 = 1000000000 * a1;
    v3 = a1 == 0;
    v4 = mach_absolute_time() * info.numer / info.denom;
  }

  else
  {
    v4 = 0;
    v2 = 0;
    v3 = 1;
  }

  while (ramrod_execute_command(&v7))
  {
    sleep(1u);
    if (!v3 && mach_absolute_time() * info.numer / info.denom - v4 >= v2)
    {
      return 0;
    }
  }

  ramrod_log_msg("SEP OS is booted\n");
  return 1;
}

uint64_t ramrod_notify_sep_for_erase()
{
  v2 = *off_1A9978;
  v3 = 0;
  ramrod_log_msg("entering %s\n", "ramrod_notify_sep_for_erase");
  v0 = ramrod_execute_command(&v2);
  if (!v0)
  {
    return 1;
  }

  ramrod_log_msg("seputil failure when attempting to notify of erase: %d\n", v0);
  return 0;
}

uint64_t ramrod_commit_ap_nonce_slot(uint64_t a1, CFErrorRef *a2)
{
  v3 = a1;
  if (!_ramrod_device_has_sandcat(a1, a2))
  {
    return 1;
  }

  v4 = dword_1C6BA0;
  v5 = qword_1C6B98;
  ramrod_log_msg("%s: commiting ap slot id: %u.\n", "Boolean ramrod_commit_ap_nonce_slot(Boolean, CFErrorRef *)", dword_1C6BA0);
  v6 = 1;
  if (!sub_354B8(a2, 1, v4, v3, v5))
  {
    ramrod_log_msg("%s: failed to commit ap slot id.\n", "Boolean ramrod_commit_ap_nonce_slot(Boolean, CFErrorRef *)");
    return 0;
  }

  return v6;
}

uint64_t sub_354B8(CFErrorRef *a1, int a2, int a3, int a4, char *a5)
{
  memset(v19, 0, sizeof(v19));
  *__str = 0u;
  v18 = 0u;
  ramrod_log_msg("entering %s\n", "_ramrod_commit_sep_call_commit_slot");
  if (!ramrod_device_has_sep())
  {
    ramrod_log_msg("Unexpected SEP state change, bailing out.\n");
    return 0;
  }

  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if (a5)
      {
        sub_D8B0C();
      }

      v10 = &v21;
      strcpy(v19, "--commit-hash");
      a5 = __str;
      snprintf(__str, 0x20uLL, "--slot=%u", a3);
      *&v20 = "/usr/libexec/seputil";
      *(&v20 + 1) = v19;
      v11 = 3;
    }

    else
    {
      v10 = (&v20 + 8);
      strcpy(v19, "--commit-hash");
      *&v20 = "/usr/libexec/seputil";
      v11 = 2;
      a5 = v19;
    }

LABEL_10:
    *v10 = a5;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  strcpy(v19, "--commit-hash-ap");
  snprintf(__str, 0x20uLL, "--slot=%u", a3);
  *&v20 = "/usr/libexec/seputil";
  *(&v20 + 1) = v19;
  *&v21 = __str;
  if (a5)
  {
    v10 = v22;
    *(&v21 + 1) = "--hash";
    v11 = 5;
    goto LABEL_10;
  }

  v11 = 3;
  if (a4)
  {
LABEL_11:
    *(&v20 + v11++) = "--erase";
  }

LABEL_12:
  *(&v20 + v11) = 0;
  v12 = ramrod_execute_command(&v20);
  if (v12)
  {
    ramrod_log_msg("seputil failure when attempting to commit the SEP manifest/hash/slot: %d\n", v12);
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 7, 0, @"%s: seputil failed when attempting to commit the SEP manifest/hash/slot: %d", v13, v14, v15, "_ramrod_commit_sep_call_commit_slot");
    return 0;
  }

  return 1;
}

uint64_t ramrod_commit_sep_hash_with_options(uint64_t a1, const __CFDictionary *a2, void *a3, int a4)
{
  ramrod_log_msg("entering %s\n", "ramrod_commit_sep_hash_with_options");
  cf = 0;
  theData[0] = 0;
  LODWORD(v6) = -1;
  ramrod_log_msg("entering %s\n", "_ramrod_commit_sep_call_verify");
  if (ramrod_device_has_sep())
  {
    v4 = MGCopyAnswerWithError();
    ramrod_log_msg("MGCopyAnswerWithError(kMGQLynxSerialNumber) returned %d\n", v6);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    ramrod_log_msg("Unexpected SEP state change, bailing out.\n");
  }

  return 0;
}

uint64_t ramrod_kill_sep_nonce(CFErrorRef *a1)
{
  v7 = *off_1A9990;
  v8 = 0;
  ramrod_log_msg("entering %s\n", "ramrod_kill_sep_nonce");
  if (ramrod_device_has_sep())
  {
    v2 = ramrod_execute_command(&v7);
    if (v2)
    {
      ramrod_log_msg("seputil failure when attempting to kill the SEP nonce: %d\n", v2);
      ramrod_create_error_cf(a1, @"RamrodErrorDomain", 7, 0, @"%s: seputil failed when attempting to kill the SEP nonce: %d", v3, v4, v5, "ramrod_kill_sep_nonce");
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("device has no sep\n");
  }

  return 1;
}

const __CFDictionary *ramrod_device_has_penguin()
{
  result = IOServiceMatching("IOPenguinControl");
  if (result)
  {
    result = IOServiceGetMatchingService(kIOMasterPortDefault, result);
    if (result)
    {
      IOObjectRelease(result);
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t ramrod_device_update_penguin()
{
  ramrod_log_msg("updating penguin controller with tool: %s\n", "/usr/local/bin/iopenguin_updater");
  v2 = off_1A99A8;
  v0 = ramrod_execute_command(&v2);
  if (!v0)
  {
    return 1;
  }

  ramrod_log_msg("failed to update penguin controller, tool returned: %d\n", v0);
  return 0;
}

void ramrod_update_set_checkpoint_path(const __CFString *a1)
{
  if (qword_1C6BC8)
  {
    CFRelease(qword_1C6BC8);
  }

  qword_1C6BC8 = a1;
  if (a1)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
    ramrod_log_msg("Checkpointing information will be stored to %s\n", buffer);
    CFRetain(qword_1C6BC8);
  }

  else
  {

    ramrod_log_msg("Checkpointing information no longer stored to filesystem\n");
  }
}

void ramrod_update_step_track_performed(uint64_t a1)
{
  step_desc = checkpoint_closure_get_step_desc(a1);

  sub_36DE8(step_desc);
}

void sub_36DE8(unsigned int *a1)
{
  if (a1)
  {
    if (qword_1C6BC8)
    {
      v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/0x%04X", qword_1C6BC8, *a1);
      if (v2)
      {
        v3 = v2;
        bzero(buffer, 0x400uLL);
        CFStringGetFileSystemRepresentation(v3, buffer, 1024);
        v4 = open(buffer, 1537, 420);
        v5 = *a1;
        v6 = *(a1 + 1);
        if (v4 == -1)
        {
          v8 = __error();
          v9 = strerror(*v8);
          ramrod_log_msg("cannot track performed step [0x%04X] %s (create failed: %s)\n", v5, v6, v9);
        }

        else
        {
          v7 = v4;
          ramrod_log_msg("step [0x%04X] %s tracked as performed\n", v5, v6);
          close(v7);
        }

        CFRelease(v3);
      }
    }

    else
    {
      ramrod_log_msg("cannot track performed step [0x%04X] %s (no checkpoint path)\n", *a1, *(a1 + 1));
    }
  }

  else
  {

    ramrod_log_msg("cannot track performed step (no step description)\n");
  }
}

void ramrod_update_step_track_performed_for_current_step()
{
  context = checkpoint_closure_get_context();
  step_desc = checkpoint_closure_context_get_step_desc(context);

  sub_36DE8(step_desc);
}

CFStringRef ramrod_update_step_already_performed(uint64_t a1)
{
  step_desc = checkpoint_closure_get_step_desc(a1);

  return sub_36FC8(step_desc);
}

CFStringRef sub_36FC8(unsigned int *a1)
{
  if (a1)
  {
    if (qword_1C6BC8)
    {
      result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/0x%04X", qword_1C6BC8, *a1);
      if (!result)
      {
        return result;
      }

      v3 = result;
      bzero(buffer, 0x400uLL);
      memset(&v4, 0, sizeof(v4));
      CFStringGetFileSystemRepresentation(v3, buffer, 1024);
      if (stat(buffer, &v4) != -1 && !*(a1 + 24))
      {
        ramrod_log_msg("step [0x%04X] %s already performed (not repeating)\n", *a1, *(a1 + 1));
        return (&dword_0 + 1);
      }
    }

    else
    {
      ramrod_log_msg("cannot check whether step [0x%04X] %s performed (no checkpoint path)\n");
    }
  }

  else
  {
    ramrod_log_msg("cannot check whether step performed (no step description)\n");
  }

  return 0;
}

CFStringRef ramrod_update_step_already_performed_for_current_step()
{
  context = checkpoint_closure_get_context();
  step_desc = checkpoint_closure_context_get_step_desc(context);

  return sub_36FC8(step_desc);
}

BOOL ramrod_update_firmware_pre_fdr(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __CFError **a5)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x4010000000;
  v26 = "";
  v27 = 0u;
  v28 = 0u;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  ramrod_log_msg("entering ramrod_update_firmware_pre_fdr\n");
  if (a5)
  {
    *a5 = 0;
  }

  v10 = v24;
  v24[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  *(v10 + 56) = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3254779904;
  v18[2] = sub_37368;
  v18[3] = &unk_1AD948;
  v18[4] = &v19;
  v18[5] = &v23;
  v18[6] = a5;
  v29[0] = 4876;
  v30 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29[1] = "update_aht";
  *&v30 = v18;
  BYTE8(v30) = 1;
  DWORD1(v31) = 1;
  v11 = checkpoint_engine_init(0, 28, 0);
  v15 = v11;
  if (v11)
  {
    checkpoint_engine_perform(v11, v29, v20 + 6, a5);
    checkpoint_engine_free(v15);
    v16 = v20[6] == 0;
  }

  else
  {
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate firmware checkpoint engine", v12, v13, v14, "ramrod_update_firmware_pre_fdr");
    v16 = 0;
    v20[6] = 18;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v16;
}

void sub_37340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

uint64_t sub_37368(void *a1)
{
  result = sub_3D31C(@"AHT", sub_373C0, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_373C0(const __CFDictionary *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ramrod_log_msg_cf(@"entering %s", "update_aht");
  if (!a1)
  {
    goto LABEL_5;
  }

  if (get_BOOLean_option(a1, @"PRE_FDR_FIRMWARE_CHECKPOINT", 0))
  {
    if (CFDictionaryContainsKey(*(a3 + 8), @"UUID"))
    {
      ramrod_log_msg("%s called in a pre-fdr context but this platform doesn't support pre-FDR. Skip this run.\n");
    }

    else
    {
      ramrod_log_msg("%s called in a pre-fdr context but we're doing an OTA. Skip this run.\n");
    }

    a1 = 0;
    goto LABEL_18;
  }

  v9 = dlopen("/usr/lib/libAHTRestore.dylib", 261);
  v10 = v9;
  if (!v9)
  {
    v18 = dlerror();
    AMSupportLogInternal(4, "update_aht", "Could not open %s, skipping update: %s", "/usr/lib/libAHTRestore.dylib", v18);
    a1 = 0;
    goto LABEL_18;
  }

  v11 = dlsym(v9, "AHTRestoreCreateDeviceList");
  if (!v11 || (v12 = v11, (v13 = dlsym(v10, "AHTRestoreUpdateDeviceWithOverrides")) == 0))
  {
    AMSupportCreateErrorInternal();
    v8 = 0;
    a1 = 0;
LABEL_6:
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v14 = v13;
  a1 = v12();
  if (!a1)
  {
LABEL_5:
    AMSupportCreateErrorInternal();
    v8 = 0;
    goto LABEL_6;
  }

  v15 = (*(a2 + 56))(a3);
  if (v15)
  {
    Value = *(a3 + 8);
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"AHTOptions");
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_436A4;
    v19[3] = &unk_1A9A00;
    v20 = 0;
    v19[4] = Value;
    v19[5] = a4;
    v19[6] = v15;
    v19[7] = a2;
    v19[8] = a3;
    v19[9] = v14;
    [(__CFDictionary *)a1 enumerateObjectsUsingBlock:v19];
LABEL_18:
    v8 = 1;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  AMSupportCreateErrorInternal();
  v8 = 0;
  if (!a4)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (*a4)
  {
    AMSupportLogInternal(3, "update_aht", "%s failed: %@", "update_aht", *a4);
    v8 = 0;
  }

LABEL_21:
  AMSupportSafeRelease();

  return v8;
}

uint64_t _ramrod_populate_ramrod_update_firmware_info(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  return result;
}

void _ramrod_free_update_firmware_info(void *a1)
{
  if (a1)
  {
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    v2 = a1[2];
    if (*v2)
    {

      free(*a1[2]);
      v2 = a1[2];
    }

    free(v2);
    v3 = a1[1];
    if (v3)
    {
      free(*(v3 + 80));
      v4 = a1[1];
    }

    else
    {
      v4 = 0;
    }

    free(v4);

    free(a1);
  }
}

BOOL ramrod_update_device_firmware()
{
  v0 = off_1AD4C8();
  v2 = v1;
  v3 = v0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x4010000000;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v85 = "";
  v86[0] = v0;
  v86[1] = v4;
  v86[2] = v5;
  v86[3] = v6;
  updated = _ramrod_copy_update_firmware_info(v86);
  v42 = _ramrod_copy_update_firmware_info((v83 + 4));
  v39 = _ramrod_copy_update_firmware_info((v83 + 4));
  v37 = _ramrod_copy_update_firmware_info((v83 + 4));
  v40 = _ramrod_copy_update_firmware_info((v83 + 4));
  v8 = qos_class_self();
  v9 = dispatch_queue_attr_make_with_qos_class(0, v8, 0);
  v10 = dispatch_queue_create("com.apple.restored.cliupdaters", v9);
  v11 = dispatch_queue_create("com.apple.restored.basebandupdaters", v9);
  v38 = dispatch_queue_create("com.apple.restored.veridian", v9);
  v36 = dispatch_queue_create("com.apple.restored.mantaupdater", v9);
  queue = dispatch_queue_create("com.apple.restored.roseupdater", v9);
  ramrod_log_msg("entering ramrod_update_device_firmware\n");
  if (v2)
  {
    *v2 = 0;
  }

  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3254779904;
  v77[2] = sub_39160;
  v77[3] = &unk_1AD948;
  v77[4] = &v78;
  v77[5] = &v82;
  v77[6] = v2;
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3254779904;
  v76[2] = sub_3A0E8;
  v76[3] = &unk_1AD948;
  v76[4] = &v78;
  v76[5] = &v82;
  v76[6] = v2;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3254779904;
  v75[2] = sub_3A140;
  v75[3] = &unk_1AD948;
  v75[4] = &v78;
  v75[5] = &v82;
  v75[6] = v2;
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3254779904;
  v74[2] = sub_3A854;
  v74[3] = &unk_1AD948;
  v74[4] = &v78;
  v74[5] = &v82;
  v74[6] = v2;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3254779904;
  v69[2] = sub_3A9F0;
  v69[3] = &unk_1AD978;
  v69[4] = &v70;
  v69[5] = &v87;
  v69[6] = v42;
  v33 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v11 block:v69];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3254779904;
  v68[2] = sub_3AAE4;
  v68[3] = &unk_1AD948;
  v68[4] = &v78;
  v68[5] = &v82;
  v68[6] = v2;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3254779904;
  v67[2] = sub_3AB3C;
  v67[3] = &unk_1AD978;
  v67[4] = &v70;
  v67[5] = &v87;
  v67[6] = updated;
  v32 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v67];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3254779904;
  v66[2] = sub_3AE08;
  v66[3] = &unk_1AD978;
  v66[4] = &v70;
  v66[5] = &v87;
  v66[6] = updated;
  v31 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v66];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3254779904;
  v65[2] = sub_3B074;
  v65[3] = &unk_1AD948;
  v65[4] = &v78;
  v65[5] = &v82;
  v65[6] = v2;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3254779904;
  v64[2] = sub_3B270;
  v64[3] = &unk_1AD978;
  v64[4] = &v70;
  v64[5] = &v87;
  v64[6] = updated;
  v30 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v64];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3254779904;
  v63[2] = sub_3B950;
  v63[3] = &unk_1AD978;
  v63[4] = &v70;
  v63[5] = &v87;
  v63[6] = updated;
  v29 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v63];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3254779904;
  v62[2] = sub_3C05C;
  v62[3] = &unk_1AD978;
  v62[4] = &v70;
  v62[5] = &v87;
  v62[6] = updated;
  v28 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v62];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3254779904;
  v61[2] = sub_3C150;
  v61[3] = &unk_1AD978;
  v61[4] = &v70;
  v61[5] = &v87;
  v61[6] = v42;
  v27 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v11 block:v61];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3254779904;
  v60[2] = sub_3C7BC;
  v60[3] = &unk_1AD978;
  v60[4] = &v70;
  v60[5] = &v87;
  v60[6] = v42;
  v26 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v11 block:v60];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3254779904;
  v59[2] = sub_3CA6C;
  v59[3] = &unk_1AD9A8;
  v59[4] = &v70;
  v59[5] = &v87;
  v59[6] = v40;
  v59[7] = v3;
  v12 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:queue block:v59];
  v35 = v10;
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3254779904;
  v58[2] = sub_3CDE8;
  v58[3] = &unk_1AD948;
  v58[4] = &v78;
  v58[5] = &v82;
  v58[6] = v2;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3254779904;
  v57[2] = sub_3CF24;
  v57[3] = &unk_1AD948;
  v57[4] = &v78;
  v57[5] = &v82;
  v57[6] = v2;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3254779904;
  v56[2] = sub_3D044;
  v56[3] = &unk_1AD9F8;
  v56[5] = &v70;
  v56[4] = queue;
  v56[6] = &v87;
  v56[7] = v42;
  v25 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v11 block:v56];
  v34 = v11;
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3254779904;
  v55[2] = sub_3D2C4;
  v55[3] = &unk_1AD948;
  v55[4] = &v78;
  v55[5] = &v82;
  v55[6] = v2;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3254779904;
  v54[2] = sub_3D5E0;
  v54[3] = &unk_1AD978;
  v54[4] = &v70;
  v54[5] = &v87;
  v54[6] = v39;
  v13 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v38 block:v54];
  v14 = v12;
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3254779904;
  v53[2] = sub_3D800;
  v53[3] = &unk_1AD978;
  v53[4] = &v70;
  v53[5] = &v87;
  v53[6] = updated;
  v15 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v35 block:v53];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3254779904;
  v52[2] = sub_3DA24;
  v52[3] = &unk_1AD948;
  v52[4] = &v78;
  v52[5] = &v82;
  v52[6] = v2;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3254779904;
  v51[2] = sub_3DBCC;
  v51[3] = &unk_1AD948;
  v51[4] = &v78;
  v51[5] = &v82;
  v51[6] = v2;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3254779904;
  v50[2] = sub_3DD58;
  v50[3] = &unk_1AD978;
  v50[4] = &v70;
  v50[5] = &v87;
  v50[6] = v37;
  v16 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v36 block:v50];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3254779904;
  v49[2] = sub_3DF34;
  v49[3] = &unk_1AD978;
  v49[4] = &v70;
  v49[5] = &v87;
  v49[6] = v42;
  v17 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v34 block:v49];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v87, 8);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3254779904;
  v48[2] = sub_3E0FC;
  v48[3] = &unk_1AD948;
  v48[4] = &v78;
  v48[5] = &v82;
  v48[6] = v2;
  bzero(&v87, 0xF60uLL);
  LODWORD(v87) = 4881;
  v88 = "update_veridian";
  LOBYTE(v90) = 1;
  v91 = 1;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v96 = 0x132000000000;
  v95 = v13;
  v97 = "update_manta_mcu";
  v98 = 1;
  v99 = 1;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = v16;
  v108 = 0u;
  *&v104[16] = 0u;
  *v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v109 = 0;
  *&v104[4] = 4864;
  *&v104[12] = "update_iBoot";
  *&v104[20] = v77;
  v104[28] = 1;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v110 = 4882;
  v112 = 0u;
  v111 = "update_ean";
  *&v112 = v76;
  BYTE8(v112) = 1;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v117 = 4874;
  v119 = 0u;
  v118 = "install_fud";
  *&v119 = v75;
  BYTE8(v119) = 1;
  v124 = 4868;
  v125 = "update_stockholm";
  v126 = 1;
  v127 = 5;
  v129 = 0u;
  v130 = 0u;
  v128 = 0u;
  v131 = v33;
  v132 = 0x130300000000;
  v133 = "update_baseband_legacy";
  v134 = 1;
  v135 = 3;
  v137 = 0u;
  v138 = 0u;
  v136 = 0u;
  v139 = v27;
  v140 = 0x131B00000000;
  v141 = "update_baseband";
  v142 = 1;
  v143 = 3;
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  v147 = v26;
  v148 = 0x131000000000;
  v149 = "update_rose";
  v150 = 1;
  v151 = 3;
  v153 = 0u;
  v154 = 0u;
  v152 = 0u;
  v155 = v14;
  v156 = 0x130900000000;
  v157 = "update_se";
  v158 = 1;
  v159 = 5;
  v161 = 0u;
  v162 = 0u;
  v160 = 0u;
  v163 = v25;
  v164 = 0x132200000000;
  v165 = "update_vinyl";
  v166 = 1;
  v167 = 1;
  v169 = 0u;
  v170 = 0u;
  v168 = 0u;
  v171 = v17;
  v172 = 0x130200000000;
  v173 = "update_ir_mcu";
  v174 = v74;
  v175 = 1;
  v176 = 2;
  memset(v179, 0, 25);
  v178 = 0u;
  v177 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  memset(&v179[7], 0, 32);
  v184 = 0;
  v179[8] = 4876;
  *&v179[10] = "update_aht";
  *&v179[12] = v68;
  LOBYTE(v179[14]) = 1;
  v185 = 4870;
  v186 = "update_tcon";
  v187 = 0;
  v188 = 1;
  v189 = 2;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v193 = v32;
  v194 = 0;
  v195 = 0x131600000000;
  v196 = "update_appletcon";
  v197 = 0;
  v198 = 1;
  v199 = 1;
  v202 = 0u;
  v201 = 0u;
  v200 = 0u;
  v203 = v15;
  v204 = 0;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  memset(v205, 0, sizeof(v205));
  v210 = 0;
  v205[1] = 4871;
  *&v205[3] = "update_orion";
  LOBYTE(v205[7]) = 1;
  *(&v209 + 4) = v31;
  v217 = 0u;
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v211 = 4872;
  v212 = "update_madea";
  *&v213 = v65;
  BYTE8(v213) = 1;
  v224 = 0u;
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v220 = 0u;
  v218 = 4878;
  v219 = "update_peppy";
  BYTE8(v220) = 1;
  *&v224 = v30;
  v231 = 0u;
  v230 = 0u;
  v229 = 0u;
  v228 = 0u;
  v227 = 0u;
  v225 = 4879;
  v226 = "update_nitrogen";
  BYTE8(v227) = 1;
  *&v231 = v29;
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v235 = 0u;
  v234 = 0u;
  v232 = 4875;
  v233 = "update_usbc";
  BYTE8(v234) = 1;
  *&v238 = v28;
  v239 = 4899;
  v240 = "update_centauri";
  v241 = v58;
  v242 = 1;
  v243 = 3;
  v244 = 0x100000000;
  v249 = 0;
  v246 = 0u;
  v247 = 0u;
  v245 = 0u;
  v248 = 0;
  v250 = 4895;
  v251 = "update_canary";
  v252 = v57;
  v253 = 1;
  v254 = 1;
  v255 = 0x100000000;
  v257 = 0u;
  v258 = 0u;
  v256 = 0u;
  v259 = 0;
  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  memset(v260, 0, sizeof(v260));
  v265 = 0;
  v260[1] = 4877;
  *&v260[3] = "update_savage";
  *&v260[5] = v55;
  LOBYTE(v260[7]) = 1;
  v266 = 4902;
  v267 = "await_update_tcon";
  v268 = 0;
  v269 = 1;
  v271 = 0u;
  v272 = 0u;
  v270 = 0u;
  v273 = 0;
  v274 = v32;
  v275 = 1;
  v276 = 0x1332FFFFFFFFLL;
  v277 = "await_update_appletcon";
  v278 = 0;
  v279 = 1;
  v280 = 0;
  v281 = 0x100000000;
  v282 = 0u;
  v283 = 0u;
  v284 = 0;
  v285 = v15;
  v286 = 1;
  v287 = 0x1327FFFFFFFFLL;
  v288 = "await_update_orion";
  v289 = 0;
  v290 = 1;
  v292 = 0u;
  v293 = 0u;
  v291 = 0u;
  v294 = 0;
  v295 = v31;
  v296 = 1;
  v297 = 0x1328FFFFFFFFLL;
  v298 = "await_update_peppy";
  v299 = 0;
  v300 = 1;
  v302 = 0u;
  v303 = 0u;
  v301 = 0u;
  v304 = 0;
  v305 = v30;
  v306 = 1;
  v307 = 0x1329FFFFFFFFLL;
  v308 = "await_update_nitrogen";
  v309 = 0;
  v310 = 1;
  v312 = 0u;
  v313 = 0u;
  v311 = 0u;
  v314 = 0;
  v315 = v29;
  v316 = 1;
  v317 = 0x1325FFFFFFFFLL;
  v318 = "await_update_usbc";
  v319 = 0;
  v320 = 1;
  v322 = 0u;
  v323 = 0u;
  v321 = 0u;
  v324 = 0;
  v325 = v28;
  v326 = 1;
  v327 = 0x131DFFFFFFFFLL;
  v328 = "update_ace3";
  v329 = v52;
  v330 = 1;
  v331 = 1;
  v332 = 0x100000000;
  v337 = 0;
  v334 = 0u;
  v335 = 0u;
  v333 = 0u;
  v336 = 0;
  v338 = 4888;
  v339 = "update_usbcretimer";
  v340 = v51;
  v341 = 1;
  v342 = 1;
  v343 = 0x100000000;
  v348 = 0;
  v345 = 0u;
  v346 = 0u;
  v344 = 0u;
  v347 = 0;
  v349 = 4913;
  v350 = "await_update_manta_mcu";
  v351 = 0;
  v352 = 1;
  v353 = 0;
  v354 = 0x100000000;
  v355 = 0u;
  v356 = 0u;
  v357 = 0;
  v358 = v16;
  v359 = 1;
  v360 = 0x1330FFFFFFFFLL;
  v361 = "await_update_stockholm";
  v362 = 0;
  v363 = 1;
  v364 = 0;
  v365 = 0x100000000;
  v366 = 0u;
  v367 = 0u;
  v368 = 0;
  v369 = v33;
  v370 = 1;
  v371 = 0x132AFFFFFFFFLL;
  v372 = "await_update_baseband_legacy";
  v373 = 0;
  v374 = 1;
  v375 = 0;
  v376 = 0x100000000;
  v377 = 0u;
  v378 = 0u;
  v379 = 0;
  v380 = v27;
  v381 = 1;
  v382 = 0x132BFFFFFFFFLL;
  v383 = "await_update_baseband";
  v384 = 0;
  v385 = 1;
  v386 = 0;
  v387 = 0x100000000;
  v388 = 0u;
  v389 = 0u;
  v390 = 0;
  v391 = v26;
  v392 = 1;
  v393 = 0x132EFFFFFFFFLL;
  v394 = "await_update_rose";
  v395 = 0;
  v396 = 1;
  v397 = 0;
  v398 = 0x100000000;
  v399 = 0u;
  v400 = 0u;
  v401 = 0;
  v402 = v14;
  v403 = 1;
  v404 = 0x132FFFFFFFFFLL;
  v405 = "await_update_se";
  v406 = 0;
  v407 = 1;
  v408 = 0;
  v409 = 0x100000000;
  v410 = 0u;
  v411 = 0u;
  v412 = 0;
  v413 = v25;
  v414 = 1;
  v415 = 0x132DFFFFFFFFLL;
  v416 = "await_update_vinyl";
  v417 = 0;
  v418 = 1;
  v419 = 0;
  v420 = 0x100000000;
  v421 = 0u;
  v422 = 0u;
  v423 = 0;
  v424 = v17;
  v425 = 1;
  v426 = 0x132CFFFFFFFFLL;
  v427 = "await_update_update_veridian";
  v428 = 0;
  v429 = 1;
  v430 = 0;
  v431 = 0x100000000;
  v432 = 0u;
  v433 = 0u;
  v434 = 0;
  v435 = v13;
  v436 = 1;
  v437 = 0x1324FFFFFFFFLL;
  v438 = "update_appletconnuarp";
  v439 = v48;
  v440 = 1;
  v441 = 1;
  v442 = 0x100000000;
  v444 = 0u;
  v445 = 0u;
  v443 = 0u;
  v446 = 0;
  v451 = 0u;
  v452 = 0u;
  v449 = 0u;
  v450 = 0u;
  v447 = 0u;
  v448 = 0u;
  v453 = 0;
  v18 = checkpoint_engine_init(0, 20, 0);
  v22 = v18;
  if (v18)
  {
    checkpoint_engine_perform(v18, &v87, v79 + 6, v2);
    checkpoint_engine_free(v22);
  }

  else
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate firmware checkpoint engine", v19, v20, v21, "ramrod_update_device_firmware");
    v79[6] = 18;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3E23C;
  block[3] = &unk_1A9210;
  block[4] = updated;
  dispatch_async(v35, block);
  dispatch_release(v35);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_3E244;
  v46[3] = &unk_1A9210;
  v46[4] = v42;
  dispatch_async(v34, v46);
  dispatch_release(v34);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_3E24C;
  v45[3] = &unk_1A9210;
  v45[4] = v39;
  dispatch_async(v38, v45);
  dispatch_release(v38);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_3E254;
  v44[3] = &unk_1A9210;
  v44[4] = v37;
  dispatch_async(v36, v44);
  dispatch_release(v36);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_3E25C;
  v43[3] = &unk_1A9210;
  v43[4] = v40;
  dispatch_async(queue, v43);
  dispatch_release(queue);
  v23 = v79[6] == 0;
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  return v23;
}

void sub_390CC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x750], 8);
  _Block_object_dispose(&STACK[0x770], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_39160(void *a1)
{
  result = sub_3D31C(@"iBoot", sub_391B8, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

const __CFBoolean *sub_391B8(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  valuePtr = 2;
  ramrod_log_msg("entering %s\n", "update_iBoot");
  if (!a1)
  {
    ramrod_log_msg("options is NULL.\n");
    return 0;
  }

  v8 = CFDictionaryGetValue(a1, @"EraseInstall");
  v11 = v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()) && CFBooleanGetValue(v9) != 0;
  v12 = CFDictionaryGetValue(a1, @"DisabledByDefault");
  v15 = v12 && (v13 = v12, v14 = CFGetTypeID(v12), v14 == CFBooleanGetTypeID()) && CFBooleanGetValue(v13) == 1;
  v16 = CFDictionaryGetValue(a1, @"SEP");
  v17 = v16;
  v128 = v11;
  if (v15 || v16)
  {
    if (!v16 || (v23 = CFGetTypeID(v16), v23 != CFBooleanGetTypeID()) || CFBooleanGetValue(v17) != 1)
    {
      has_sep = ramrod_device_has_sep();
      v126 = 0;
      v24 = 0;
      v21 = 0;
      goto LABEL_30;
    }
  }

  has_sep = ramrod_device_has_sep();
  if (!has_sep)
  {
    v24 = 0;
    goto LABEL_27;
  }

  v20 = (*(a2 + 48))(a3);
  if (!v20)
  {
    ramrod_log_msg("device has a SEP, but no SEP OS firmware image is present in firmare images");
    goto LABEL_22;
  }

  v21 = v20;
  v22 = CFGetTypeID(v20);
  if (v22 != CFDataGetTypeID())
  {
    ramrod_log_msg("request for SEP OS firmware image returned a non-CFDataRef");
LABEL_22:
    v21 = 0;
  }

  if (!*(a2 + 112))
  {
    ramrod_log_msg("copy_sep_patch not set");
    v24 = 0;
    goto LABEL_29;
  }

  ramrod_log_msg("calling copy_sep_patch\n");
  has_sep = (*(a2 + 112))(a3);
  v24 = has_sep;
  if (!has_sep)
  {
    goto LABEL_29;
  }

  v25 = CFGetTypeID(has_sep);
  has_sep = CFDataGetTypeID();
  if (v25 == has_sep)
  {
    goto LABEL_29;
  }

  ramrod_log_msg("request for SEP Patch image returned a non-CFDataRef");
LABEL_27:
  v21 = 0;
LABEL_29:
  v126 = 1;
LABEL_30:
  has_sandcat = _ramrod_device_has_sandcat(has_sep, v19);
  if (has_sandcat)
  {
    v129 = dword_1C6BA0;
    valuePtr = dword_1C4800;
    v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v21)
    {
      v101 = ramrod_copy_imr4_with_key_value(v21, @"snid", v26);
      CFRelease(v21);
      v21 = v101;
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    else if (!v24)
    {
LABEL_33:
      CFRelease(v26);
      goto LABEL_35;
    }

    v102 = ramrod_copy_imr4_with_key_value(v24, @"snid", v26);
    CFRelease(v24);
    v24 = v102;
    goto LABEL_33;
  }

  v129 = 0;
LABEL_35:
  v27 = CFDictionaryGetValue(a1, @"APNonce");
  v28 = v27;
  if (v27)
  {
    v29 = CFGetTypeID(v27);
    if (v29 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v28);
      ramrod_log_msg("%s: ap nonce was provided (size: %ld)\n", "update_iBoot", Length);
    }

    else
    {
      v28 = 0;
    }
  }

  v31 = (*(a2 + 88))(a3);
  theDict = v31;
  if (!v31)
  {
    ramrod_log_msg("copy_ibfw_data returned NULL.\n");
LABEL_152:
    v51 = 0;
    v50 = 0;
LABEL_68:
    v52 = 0;
    v53 = 0;
    v54 = 0;
    if (!v21)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  v32 = v31;
  v132 = a4;
  v134 = a2;
  v127 = a1;
  if (CFDictionaryGetCount(v31) < 1)
  {
    value = 0;
    goto LABEL_77;
  }

  ramrod_log_msg("Writing out IsiBootEANFirmware files to EAN iBoot keys.\n");
  value = sub_439C8(v32, 1);
  if (!value)
  {
    ramrod_log_msg("_create_ibfw returned NULL.\n");
    goto LABEL_152;
  }

  theData[0] = 0;
  v33 = @"ifw2";
  v125 = a3;
  if (sub_43D50(@"ifw2", 0, theData))
  {
    if (!theData[0])
    {
      ramrod_log_msg("ifw2Hash is NULL.\n");
      goto LABEL_67;
    }

    v34 = MGCopyAnswer();
    v35 = v34;
    if (!v34)
    {
      ramrod_log_msg("bootHash is NULL.\n");
      goto LABEL_67;
    }

    v36 = v24;
    v37 = v21;
    v38 = CFDataGetLength(v34);
    v39 = @"ifw1";
    if (v38 == CFDataGetLength(theData[0]))
    {
      BytePtr = CFDataGetBytePtr(v35);
      v41 = CFDataGetBytePtr(theData[0]);
      v42 = CFDataGetLength(theData[0]);
      v43 = memcmp(BytePtr, v41, v42);
      v44 = v43 == 0;
      v45 = v43 != 0;
      if (v43)
      {
        v46 = "ifw2 hash does not match boot hash - using ifw2 to stage new data.\n";
      }

      else
      {
        v46 = "ifw2 hash matches boot hash, switching to ifw1 for staging.\n";
      }

      if (v44)
      {
        v47 = @"ifw2";
      }

      else
      {
        v47 = @"ifw1";
      }

      if (v44)
      {
        v33 = @"ifw1";
      }

      v39 = v47;
    }

    else
    {
      v45 = 1;
      v46 = "ifw2 hash size doesn't match current boot hash size.  Invalid key.\n";
    }

    ramrod_log_msg(v46);
  }

  else
  {
    v36 = v24;
    v37 = v21;
    v39 = @"ifw1";
    v45 = 1;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v21 = v37;
    v24 = v36;
    ramrod_log_msg("eanBlobs is NULL.\n");
    goto LABEL_67;
  }

  v49 = Mutable;
  CFDictionaryAddValue(Mutable, v33, value);
  if (!sub_33250(v49, 0, 0, 0))
  {
    v21 = v37;
    v24 = v36;
LABEL_67:
    v50 = value;
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    ramrod_log_msg("_write_ibfw failed.\n");
    v51 = 0;
    goto LABEL_68;
  }

  if (sub_33448(v39))
  {
    if (v45)
    {
      v21 = v37;
      v24 = v36;
      a2 = v134;
      if (!sub_43F34(@"ifw1", v33))
      {
        ramrod_log_msg("Swapping failed, continuing..\n");
      }
    }

    else
    {
      v21 = v37;
      v24 = v36;
      a2 = v134;
      ramrod_log_msg("No need to swap, we just wrote to ifw1.\n");
    }

    goto LABEL_76;
  }

  ramrod_log_msg("Copying staging key to primary key.\n");
  v137 = 0;
  if (!sub_2E3CC(v33, &v137))
  {
    v119 = "_copy_ean failed to copy key1.\n";
    v21 = v37;
LABEL_164:
    v24 = v36;
LABEL_166:
    a2 = v134;
    sub_D9034(v119, &v137);
    goto LABEL_74;
  }

  v21 = v37;
  if (!v137)
  {
    v119 = "_copy_ean returned NULL eanData.\n";
    goto LABEL_164;
  }

  v55 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v24 = v36;
  if (!v55)
  {
    v119 = "eanDict is NULL.\n";
    goto LABEL_166;
  }

  v56 = v55;
  CFDictionaryAddValue(v55, v39, v137);
  v57 = sub_33250(v56, 0, 0, 0);
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  a2 = v134;
  if (!v57)
  {
LABEL_74:
    ramrod_log_msg("Failed to copy staging to primary, continuing..\n");
  }

LABEL_76:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  Count = CFDictionaryGetCount(theDict);
  ramrod_log_msg("Successfully wrote %lu images to ifw1.\n", Count);
  a3 = v125;
LABEL_77:
  v59 = (*(a2 + 96))(a3);
  v51 = v59;
  if (!v59)
  {
    ramrod_log_msg("copy_ibne_data returned NULL.\n");
    v52 = 0;
LABEL_155:
    v53 = 0;
    goto LABEL_110;
  }

  if (CFDictionaryGetCount(v59) < 1)
  {
    v52 = 0;
    v53 = 0;
    if (!a3)
    {
      goto LABEL_88;
    }

    goto LABEL_85;
  }

  ramrod_log_msg("Writing out IsiBootNonEssentialFirmware files to EAN iBoot key.\n");
  v52 = sub_439C8(v51, 0);
  if (!v52)
  {
    ramrod_log_msg("_create_ibfw returned NULL for nefwBlob.\n");
    goto LABEL_155;
  }

  v60 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v53 = v60;
  if (!v60)
  {
    ramrod_log_msg("eanDict is NULL.\n");
    goto LABEL_110;
  }

  CFDictionaryAddValue(v60, @"nefw", v52);
  if (!sub_33250(v53, 0, 0, 0))
  {
    ramrod_log_msg("_write_ean failed.\n");
    goto LABEL_110;
  }

  v61 = CFDictionaryGetCount(v51);
  ramrod_log_msg("Successfully wrote %lu images to nefw.\n", v61);
  if (a3)
  {
LABEL_85:
    if (*(a3 + 8) && AMSupportCFDictionaryGetBoolean())
    {
      ramrod_log_msg("Nuking iBootEAN keys.\n");
      sub_335B8(@"ifw1");
      sub_335B8(@"ifw2");
    }
  }

LABEL_88:
  v62 = a3;
  v63 = objc_autoreleasePoolPush();
  setiBULoggingPointer(ramrod_log_msg);
  v64 = +[MSUBootFirmwareUpdater updaterForDevice];
  if (has_sandcat)
  {
    ramrod_log_msg("Will use nonce slots.\n");
    [v64 setApNonceSlotID:v129];
  }

  else
  {
    ramrod_log_msg("Will use nonce.\n");
    [v64 setApNonce:v28];
  }

  if (([v64 generateFirmwareImagesWithCallback:v134 context:v62] & 1) == 0)
  {
    ramrod_create_error_cf(v132, @"RamrodErrorDomain", 1014, *v132, @"%s: Creating firmware lists failed.", v65, v66, v67, "update_iBoot");
LABEL_109:
    objc_autoreleasePoolPop(v63);
LABEL_110:
    v54 = 0;
    goto LABEL_111;
  }

  v68 = "NO";
  if (v128)
  {
    v68 = "YES";
  }

  ramrod_log_msg("%s: erase: %s\n", "update_iBoot", v68);
  [v64 setIsErase:v128];
  [v64 setShouldCommit:1];
  if (!v64)
  {
    ramrod_create_error_cf(v132, @"RamrodErrorDomain", 1014, *v132, @"%s: Could not find iBoot storage class.", v69, v70, v71, "update_iBoot");
    ramrod_log_msg("Could not find storage class!\n");
    goto LABEL_109;
  }

  v72 = v64;
  v73 = v62;
  if (([v72 updateBootFirmwareWithCallback:v134 context:v62 error:v132] & 1) == 0)
  {
    ramrod_create_error_cf(v132, @"RamrodErrorDomain", 1014, *v132, @"%s: BootFirmware update failed", v74, v75, v76, "update_iBoot");
    goto LABEL_109;
  }

  objc_autoreleasePoolPop(v63);
  if (!v126 || !ramrod_device_has_sep() || !v21)
  {
    goto LABEL_172;
  }

  ramrod_log_msg("entering update_sep\n");
  v77 = ramrod_copy_manifest_digest_from_img4(v21);
  if (v77)
  {
    v78 = v77;
    CStringPtr = CFStringGetCStringPtr(v77, 0x8000100u);
    ramrod_log_msg("SEP firmware IMG4 Boot Manifest hash: %s\n", CStringPtr);
    CFRelease(v78);
  }

  bzero(theData, 0x800uLL);
  v80 = CFDictionaryGetValue(v127, @"Preboot Root");
  if (v80)
  {
    v84 = v80;
    v85 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", v80, "/usr/standalone/firmware/sep-firmware.img4");
    if (v85)
    {
      v89 = v85;
      if (!CFStringGetCString(v85, theData, 2048, 0x8000100u))
      {
        ramrod_create_error_cf(v132, @"RamrodErrorDomain", 5, 0, @"%s: unable to convert SEP firmware path to UTF8 string", v90, v91, v92, "update_sep");
        goto LABEL_131;
      }

      v93 = open(theData, 1537, 420);
      if (v93 == -1)
      {
        v94 = *__error();
        v95 = __error();
        strerror(*v95);
        v96 = v94;
        v73 = v62;
        ramrod_create_error_cf(v132, kCFErrorDomainPOSIX, v96, 0, @"%s: failed to open SEP firmware file for writing: %s", v97, v98, v99, "update_sep");
LABEL_131:
        CFRelease(v89);
        v103 = v132;
        goto LABEL_132;
      }

      v131 = v93;
      if (sub_D7C6C(v93, v21, v132))
      {
        if (!v24)
        {
LABEL_171:
          close(v131);
          CFRelease(v89);
          ramrod_log_msg("update_sep returned: %s\n", "success");
          goto LABEL_172;
        }

        close(v131);
        CFRelease(v89);
        v107 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", v84, "/usr/standalone/firmware/sep-patches.img4");
        if (!v107)
        {
          v103 = v132;
          ramrod_create_error_cf(v132, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFString for SEP firmware path", v108, v109, v110, "update_sep");
          close(v131);
          goto LABEL_132;
        }

        v89 = v107;
        if (CFStringGetCString(v107, theData, 2048, 0x8000100u))
        {
          v131 = open(theData, 1537, 420);
          if (v131 == -1)
          {
            v114 = *__error();
            v115 = __error();
            strerror(*v115);
            ramrod_create_error_cf(v132, kCFErrorDomainPOSIX, v114, 0, @"%s: failed to open SEP firmware file for writing: %s", v116, v117, v118, "update_sep");
            v73 = v62;
            goto LABEL_131;
          }

          if (sub_D7C6C(v131, v24, v132))
          {
            v73 = v62;
            goto LABEL_171;
          }

          ramrod_log_msg("Unable to write patch data to %s\n", theData);
          v73 = v62;
        }

        else
        {
          ramrod_create_error_cf(v132, @"RamrodErrorDomain", 5, 0, @"%s: unable to convert SEP firmware path to UTF8 string", v111, v112, v113, "update_sep");
        }
      }

      else
      {
        ramrod_log_msg("Unable to write SEP data to %s\n", theData);
      }

      close(v131);
      goto LABEL_131;
    }

    v103 = v132;
    ramrod_create_error_cf(v132, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFString for SEP firmware path", v86, v87, v88, "update_sep");
  }

  else
  {
    v103 = v132;
    ramrod_create_error_cf(v132, @"RamrodErrorDomain", 2, 0, @"%s: missing option to find preboot root", v81, v82, v83, "update_sep");
  }

LABEL_132:
  ramrod_log_msg("update_sep returned: %s\n", "failure");
  if (v103)
  {
    ramrod_log_msg_cf(@"update_sep error: %@\n", *v103);
  }

  v104 = CFDictionaryGetValue(v127, @"SEPUpdateRequiresSuccess");
  v54 = v104;
  if (!v104)
  {
    goto LABEL_141;
  }

  v105 = CFGetTypeID(v104);
  if (v105 != CFBooleanGetTypeID())
  {
    goto LABEL_140;
  }

  v106 = CFBooleanGetValue(v54);
  if (v132 && !v106)
  {
    *v132 = 0;
    goto LABEL_172;
  }

  if (v106)
  {
LABEL_140:
    v54 = 0;
LABEL_141:
    v50 = value;
    goto LABEL_112;
  }

LABEL_172:
  if (AMSupportCFDictionaryGetBoolean())
  {
    ramrod_log_msg("iBoot was successfully committed in booted OS, writing iboot1-precommitted=true");
    v120 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
    if (!v120)
    {
LABEL_177:
      ramrod_create_error_cf(v132, @"RamrodErrorDomain", 1014, *v132, @"%s: Writing iboot1-precommitted failed", v121, v122, v123, "update_iBoot");
      goto LABEL_110;
    }

    v124 = v120;
    if (IORegistryEntrySetCFProperty(v120, @"40A0DDD2-77F8-4392-B4A3-1E7304206516:iboot1-precommitted", @"true") || IORegistryEntrySetCFProperty(v124, @"IONVRAM-FORCESYNCNOW-PROPERTY", @"true"))
    {
      IOObjectRelease(v124);
      goto LABEL_177;
    }
  }

  (*(v134 + 8))(0, 100, v73);
  v54 = (&dword_0 + 1);
LABEL_111:
  v50 = value;
  if (v21)
  {
LABEL_112:
    CFRelease(v21);
  }

LABEL_113:
  if (v24)
  {
    CFRelease(v24);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  return v54;
}

uint64_t sub_3A0E8(void *a1)
{
  result = sub_3D31C(@"EAN", sub_D7964, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_3A140(void *a1)
{
  result = sub_3D31C(@"FUD", sub_3A198, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_3A198()
{
  v0 = off_1AD4C8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  bzero(__str, 0x400uLL);
  bzero(buffer, 0x400uLL);
  bzero(v54, 0x400uLL);
  ramrod_log_msg("entering %s\n", "install_fud");
  if (!v7)
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 2, 0, @"%s: %s: bad argument - no options", v8, v9, v10, "install_fud");
LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  v11 = (*(v6 + 56))(v4);
  v15 = v11;
  if (!v11)
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 2, 0, @"%s: %s: copy_available_fud_image_names returned NULL", v12, v13, v14, "install_fud");
    goto LABEL_23;
  }

  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
    ramrod_log_msg("install_fud: Host returned empty FUD dictionary, nothing to do.\n");
    goto LABEL_15;
  }

  v17 = Count;
  Value = CFDictionaryGetValue(v7, @"Preboot Root");
  if (Value)
  {
    v19 = Value;
  }

  else
  {
    bzero(v57, 0x400uLL);
    system_partition_device_node = ramrod_get_system_partition_device_node(v57, 0x400uLL);
    if (!system_partition_device_node)
    {
      goto LABEL_19;
    }

    v19 = ramrod_copy_preboot_path(system_partition_device_node, "/mnt9", 0, 0);
    if (!v19)
    {
      goto LABEL_20;
    }
  }

  v20 = CFGetTypeID(v19);
  if (v20 != CFStringGetTypeID())
  {
LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v19);
  v22 = malloc(MaximumSizeOfFileSystemRepresentation);
  if (!v22)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_20;
  }

  v23 = v22;
  v24 = v19;
  v19 = v23;
  if (!CFStringGetFileSystemRepresentation(v24, v23, MaximumSizeOfFileSystemRepresentation))
  {
    free(v19);
    goto LABEL_10;
  }

LABEL_20:
  snprintf(__str, 0x400uLL, "%s%s", v19, "/usr/standalone/firmware/FUD");
  if (ramrod_create_directory_with_class(__str, 493, 0, 0, -1, 1))
  {
    v30 = @"%s: %s: create directory fail=%d for FUD: %s";
    v31 = v2;
LABEL_22:
    ramrod_create_error_cf(v31, @"RamrodErrorDomain", 7, 0, v30, v27, v28, v29, "install_fud");
    goto LABEL_23;
  }

  v52 = v2;
  v53 = v19;
  ramrod_log_msg("install_fud: Host returned %lu FUD firmware images to install\n", v17);
  for (i = 0; i != v17; ++i)
  {
    bzero(v57, 0x400uLL);
    ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
    if (!CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u))
    {
      ramrod_create_error_cf(v52, @"RamrodErrorDomain", 3, 0, @"%s: %s: failed to convert image name to C string", v35, v36, v37, "install_fud");
      goto LABEL_23;
    }

    v38 = *(v6 + 64);
    v39 = CFArrayGetValueAtIndex(v15, i);
    v40 = v38(v4, v39);
    if (!v40)
    {
      ramrod_log_msg("%s: Failed to fetch data for %s FUD image.", "install_fud", buffer);
      goto LABEL_23;
    }

    if (AMAuthInstallApFtabIsValid())
    {
      ramrod_log_msg("FUD Firmware %s is FTAB.\n", buffer);
      v41 = "ftab";
    }

    else
    {
      v41 = "img4";
    }

    ramrod_log_msg("Checking to see if %s should be installed elsewhere...\n", buffer);
    if (*buffer == 1953719634 && *&buffer[3] == 1701998452)
    {
      ramrod_log_msg("Restore firmware %s should not be installed.\n", buffer);
    }

    else
    {
      v43 = 3;
      v44 = &off_1A9A28;
      while (strcmp(buffer, *(v44 - 1)))
      {
        v44 += 2;
        if (!--v43)
        {
          goto LABEL_45;
        }
      }

      v45 = *v44;
      if (*v45 == 78 && v45[1] == 65 && !v45[2])
      {
        ramrod_log_msg("Firmware %s should not be installed.\n", buffer);
        __strlcpy_chk();
      }

      else
      {
        snprintf(v57, 0x400uLL, "%s%s", v53, v45);
        ramrod_log_msg("Overriding the install path of %s to be %s...\n", buffer, v57);
        if (ramrod_create_directory_with_class(v57, 493, 0, 0, -1, 1))
        {
          v51 = @"%s: %s: create override directory fail=%d for FUD: %s";
          goto LABEL_62;
        }

        ramrod_log_msg("Found %s in our override list. Changing the install path to %s.\n", buffer, v57);
      }

LABEL_45:
      if (v57[0])
      {
        if (!(*v57 ^ 0x414E | v58))
        {
          goto LABEL_50;
        }

        snprintf(v54, 0x400uLL, "%s/%s.%s", v57, buffer, v41);
        v57[0] = 0;
      }

      else
      {
        snprintf(v54, 0x400uLL, "%s/%s.%s", __str, buffer, v41);
      }

      ramrod_log_msg("install_fud: %s\n", buffer);
      if (ramrod_write_data_to_file_with_class(v40, v54, -1))
      {
        v51 = @"%s: %s: unable to create FUD file: %s";
LABEL_62:
        ramrod_create_error_cf(v52, @"RamrodErrorDomain", 7, 0, v51, v46, v47, v48, "install_fud");
        goto LABEL_23;
      }
    }

LABEL_50:
    AMSupportSafeRelease();
  }

  v59.length = CFArrayGetCount(v15);
  v59.location = 0;
  if (CFArrayContainsValue(v15, v59, @"Ap,ExclaveOSVolume"))
  {
    CFStringGetCString(@"Ap,ExclaveOS", buffer, 1024, 0x8000100u);
    snprintf(v54, 0x400uLL, "%s/%s.dmg", __str, buffer);
    ramrod_log_msg_cf(@"install_fud: %s (injected due to %@)\n", buffer, @"Ap,ExclaveOSVolume");
    v50 = *(v6 + 120);
    if (!v50 || v50(v4, @"Ap,ExclaveOS", 1702391667, 0, v54))
    {
      v30 = @"%s: %s: unable to create FUD file: %s (%d)";
      v31 = v52;
      goto LABEL_22;
    }
  }

  if (v53)
  {
    free(v53);
  }

  ramrod_log_msg("install_fud: Done.\n");
LABEL_15:
  v25 = 1;
LABEL_24:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v25;
}

uint64_t sub_3A854(void *a1)
{
  result = sub_3D31C(@"IR MCU", sub_3A8AC, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_3A8AC(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v20[0] = a2;
  v20[1] = a3;
  ramrod_log_msg("entering %s\n", "update_ir_mcu");
  v7 = dlopen("libTiSerialFlasher.dylib", 261);
  if (!v7)
  {
    dlerror();
    v18 = @"%s: unable to open updater library: %s";
LABEL_7:
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1003, 0, v18, v15, v16, v17, "update_ir_mcu");
    return 0;
  }

  v8 = dlsym(v7, "TiSerialFlasher");
  if (!v8)
  {
    dlerror();
    v18 = @"%s: unable to find updater function: %s";
    goto LABEL_7;
  }

  v9 = v8;
  v10 = *(a2 + 8);
  v11 = 1;
  v10(1, 0xFFFFFFFFLL, a3);
  if (v9(sub_443B4, j__ramrod_log_msgv, 0, 0, v20))
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1003, 0, @"%s: TiSerialFlasher returned %d", v12, v13, v14, "update_ir_mcu");
    return 0;
  }

  return v11;
}

void sub_3A9F0(void *a1, void *a2)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1[4] + 8);
  }

  *(*(a1[5] + 8) + 24) = sub_3D31C(@"Stockholm", sub_2C5E4, a1[6], (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(a1[5] + 8) + 24)];
  [a2 setError:*(*(a1[4] + 8) + 24)];
  v6 = *(*(a1[4] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3AAE4(void *a1)
{
  result = sub_3D31C(@"AHT", sub_373C0, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_3AB3C(void *a1, void *a2)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1[4] + 8);
  }

  *(*(a1[5] + 8) + 24) = sub_3D31C(@"TCON", sub_3AC30, a1[6], (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(a1[5] + 8) + 24)];
  [a2 setError:*(*(a1[4] + 8) + 24)];
  v6 = *(*(a1[4] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3AC30(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering update_TCON\n", a2);
  v7 = v15;
  memset(v15, 0, sizeof(v15));
  v14[0] = "/usr/local/bin/tconctl";
  v14[1] = "-u";
  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    if (CFDictionaryGetValue(a1, @"Update TCON FW") == kCFBooleanFalse)
    {
      return 1;
    }

    if (a3 && *(a3 + 8))
    {
      if (AMSupportCFDictionaryGetBoolean())
      {
        v7 = &v15[1];
        v15[0] = "-f";
      }
    }
  }

  memset(&v13, 0, sizeof(v13));
  *v7 = 0;
  if (stat("/usr/local/bin/tconctl", &v13) == -1)
  {
    ramrod_log_msg("tconctl not found\n");
  }

  else
  {
    v8 = ramrod_execute_command(v14);
    if (v8)
    {
      if (v8 != 1)
      {
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1009, 0, @"%s: %s returned %d", v9, v10, v11, "update_tcon");
        return 0;
      }

      ramrod_log_msg("Device does not have TCON\n");
    }
  }

  return 1;
}

void sub_3AE08(void *a1, void *a2)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1[4] + 8);
  }

  *(*(a1[5] + 8) + 24) = sub_3D31C(@"Orion", sub_3AEFC, a1[6], (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(a1[5] + 8) + 24)];
  [a2 setError:*(*(a1[4] + 8) + 24)];
  v6 = *(*(a1[4] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3AEFC(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering update_orion\n", a2, a3);
  v5 = IOServiceMatching("AppleOrionMCU");
  if (v5)
  {
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
    if (MatchingService)
    {
      v7 = MatchingService;
      memset(&v12, 0, sizeof(v12));
      bzero(v15, 0x400uLL);
      IOObjectRelease(v7);
      v13 = off_1A9A50;
      v14 = 0;
      if (stat("/usr/bin/orionmicroupdate", &v12) == -1)
      {
        ramrod_log_msg("Orion updater not found\n");
      }

      else
      {
        result = sub_44400("/usr/standalone/firmware/OrionMicro/", v15, a4);
        if (!result)
        {
          return result;
        }

        *(&v13 + 1) = v15;
        if (ramrod_execute_command(&v13))
        {
          ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1010, 0, @"%s: %s returned %d", v9, v10, v11, "update_orion");
          return 0;
        }
      }
    }

    else
    {
      ramrod_log_msg("AppleOrionMCU service not found\n");
    }
  }

  return 1;
}

uint64_t sub_3B074(void *a1)
{
  result = sub_3D31C(@"Madea", sub_3B0CC, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_3B0CC(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  context = checkpoint_closure_get_context();
  ramrod_log_msg("entering update_madea\n");
  v6 = IOServiceMatching("AppleMCDP29XXGPIO");
  if (v6)
  {
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
      if (context)
      {
        v8 = checkpoint_engine_supports_reboot_retry();
      }

      else
      {
        v8 = 0;
      }

      memset(&v21, 0, sizeof(v21));
      v22 = off_1A9A68;
      if (stat("/usr/bin/update_mcdp29xx", &v21) == -1)
      {
        ramrod_log_msg("update_madea: updater not found, continuing.\n");
      }

      else
      {
        ramrod_log_msg("update_madea: Restoring...\n");
        v9 = ramrod_execute_command(&v22);
        if (v9)
        {
          v13 = v9;
          if (!v8)
          {
            ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: %s returned %d", v10, v11, v12, "update_madea");
            return 0;
          }

          ramrod_log_msg("FAILURE IGNORED: %s returned %d - continuing..\n", "/usr/bin/update_mcdp29xx", v9);
          if (context)
          {
            checkpoint_closure_context_warning(context, "%s returned %d", v14, v15, v16, v17, v18, v19, "/usr/bin/update_mcdp29xx", v13);
          }
        }
      }
    }

    else
    {
      ramrod_log_msg("update_madea: AppleMCDP29XXGPIO service not found\n");
    }
  }

  return 1;
}

void sub_3B270(void *a1, void *a2)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1[4] + 8);
  }

  *(*(a1[5] + 8) + 24) = sub_3D31C(@"Peppy", sub_3B364, a1[6], (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(a1[5] + 8) + 24)];
  [a2 setError:*(*(a1[4] + 8) + 24)];
  v6 = *(*(a1[4] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3B364(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  memset(&v35, 0, sizeof(v35));
  bzero(__str, 0x400uLL);
  ramrod_log_msg("entering %s\n", "device_supports_peppytool");
  v6 = IOServiceNameMatching("ApplePeppyDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  if (!MatchingService)
  {
    ramrod_log_msg("%s: No Peppy driver service found\n", "device_supports_peppytool");
LABEL_19:
    ramrod_log_msg("%s: Device does not support peppytool fw update.\n");
    return 1;
  }

  v8 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"VersionInfo", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    ramrod_log_msg("Ne version info service found %s\n", "device_supports_peppytool");
    IOObjectRelease(v8);
    goto LABEL_19;
  }

  v10 = CFProperty;
  buffer[4] = 0;
  *buffer = 0;
  v39.location = 0;
  v39.length = 4;
  CFDataGetBytes(CFProperty, v39, buffer);
  v11 = buffer[2];
  ramrod_log_msg("peppy hw version: %d\n", buffer[2]);
  if (v11 < 3)
  {
LABEL_18:
    IOObjectRelease(v8);
    CFRelease(v10);
    goto LABEL_19;
  }

  if (v11 - 3 >= 3)
  {
    ramrod_log_msg("Unknown hw version. Not running peppytool\n");
    goto LABEL_18;
  }

  IOObjectRelease(v8);
  CFRelease(v10);
  if (stat("/usr/bin/peppytool", &v35) == -1)
  {
    ramrod_log_msg("%s: No peppy updater found\n", "update_peppy");
    v18 = @"%s: No peppy updater found";
    goto LABEL_40;
  }

  if (stat("/usr/standalone/firmware/peppy/", &v35) == -1)
  {
    ramrod_log_msg("%s: Peppy FW not found: %s\n", "update_peppy", "/usr/standalone/firmware/peppy/");
    v18 = @"%s: Peppy FW not found: %s";
    goto LABEL_40;
  }

  if (!ramrod_should_do_legacy_restored_internal_behaviors() || (Value = CFDictionaryGetValue(a1, @"Peppy FW Data")) == 0)
  {
    v20 = opendir("/usr/standalone/firmware/peppy/");
    if (!v20)
    {
      ramrod_log_msg("Can't open %s\n", "/usr/standalone/firmware/peppy/");
      v18 = @"%s: Can't open %s";
      goto LABEL_40;
    }

    v21 = v20;
    bzero(buffer, 0x400uLL);
    v22 = "B238_Peppy_App";
    if (v11 == 4)
    {
      v22 = "B238_PeppyMC_App";
    }

    if (v11 <= 4)
    {
      snprintf(buffer, 0x400uLL, v22);
    }

    else
    {
      snprintf(buffer, 0x400uLL, "B238_PeppyMA_App");
    }

    while (1)
    {
      v23 = readdir(v21);
      if (!v23)
      {
        break;
      }

      d_name = v23->d_name;
      if ((v23->d_name[0] != 46 || v23->d_name[1] && (v23->d_name[1] != 46 || v23->d_name[2])) && strstr(v23->d_name, buffer))
      {
        snprintf(__str, 0x400uLL, "%s%s", "/usr/standalone/firmware/peppy/", d_name);
        v25 = 1;
        goto LABEL_45;
      }
    }

    ramrod_log_msg("No FW file found in %s\n", "/usr/standalone/firmware/peppy/");
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: No FW file found in %s", v26, v27, v28, "update_peppy");
    goto LABEL_36;
  }

  v13 = Value;
  bzero(buffer, 0x400uLL);
  v14 = CFDictionaryGetValue(a1, @"Peppy FW Name");
  if (!v14 || (CFStringGetCString(v14, buffer, 1024, 0x8000100u), !buffer[0]))
  {
    strcpy(buffer, "override.bin");
  }

  snprintf(__str, 0x400uLL, "%s/%s", "/mnt1/usr/standalone/firmware", buffer);
  if (ramrod_create_directory_with_class("/mnt1/usr/standalone/firmware", 493, 0, 0, -1, 1))
  {
    ramrod_log_msg("%s: Failed to create peppy FW override dir: %s\n", "update_peppy", __str);
    v18 = @"%s: Failed to create peppy FW override dir";
LABEL_40:
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v18, v15, v16, v17, "update_peppy");
    goto LABEL_41;
  }

  v29 = ramrod_write_data_to_file_with_class(v13, __str, -1);
  ramrod_log_msg("%s: Writing peppy override file: %s\n", "update_peppy", __str);
  if (v29)
  {
    ramrod_log_msg("%s: Failed to write override file to URL: %d\n", "update_peppy", -1);
    v18 = @"%s: Failed to write override file to URL";
    goto LABEL_40;
  }

  v25 = 0;
  v21 = 0;
LABEL_45:
  ramrod_log_msg("Flashing peppy FW file: %s\n", __str);
  if (stat(__str, &v35) == -1)
  {
    ramrod_log_msg("Peppy FW path not found\n");
    v34 = @"%s: Peppy FW path not found";
  }

  else
  {
    v36[0] = "/usr/bin/peppytool";
    v36[1] = "-u";
    v36[2] = __str;
    v36[3] = 0;
    v30 = ramrod_execute_command(v36);
    if (!v30)
    {
      if (v25)
      {
        closedir(v21);
      }

      return 1;
    }

    ramrod_log_msg("peppytool failure when attempting to flash the peppy firmware: %d\n", v30);
    v34 = @"%s: peppytool failure when attempting to flash the peppy firmware: %d";
  }

  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v34, v31, v32, v33, "update_peppy");
  if (v25)
  {
LABEL_36:
    closedir(v21);
  }

LABEL_41:
  if (CFDictionaryGetValue(a1, @"Peppy Ignore Errors") == kCFBooleanTrue)
  {
    ramrod_log_msg("Ignoring peppy updater errors\n");
    return 1;
  }

  return 0;
}

void sub_3B950(void *a1, void *a2)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1[4] + 8);
  }

  *(*(a1[5] + 8) + 24) = sub_3D31C(@"Nitrogen", sub_3BA44, a1[6], (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(a1[5] + 8) + 24)];
  [a2 setError:*(*(a1[4] + 8) + 24)];
  v6 = *(*(a1[4] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3BA44(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  bzero(v46, 0x400uLL);
  bzero(v45, 0x3FFuLL);
  __str = 10;
  v6 = IOServiceNameMatching("AppleExternalAmpController");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  if (!MatchingService)
  {
    ramrod_log_msg("%s: No nitrogen driver service found\n", "device_supports_nitrogen");
    ramrod_log_msg("device does not support nitrogen\n");
    return 1;
  }

  memset(&v41, 0, sizeof(v41));
  IOObjectRelease(MatchingService);
  if (stat("/usr/bin/ampctl", &v41) == -1)
  {
    ramrod_log_msg("%s: No nitrogen updater found\n", "update_nitrogen");
    v14 = @"%s: No nitrogen updater found";
    goto LABEL_30;
  }

  if (stat("/usr/standalone/firmware/aeac", &v41) == -1)
  {
    ramrod_log_msg("%s: Nitrogen FW not found: %s\n", "update_nitrogen", "/usr/standalone/firmware/aeac");
    v14 = @"%s: Nitrogen FW not found";
    goto LABEL_30;
  }

  Value = CFDictionaryGetValue(a1, @"Nitrogen FW Data");
  if (!Value)
  {
    v15 = opendir("/usr/standalone/firmware/aeac");
    if (v15)
    {
      v16 = v15;
      v17 = readdir(v15);
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = 0;
        do
        {
          if ((v18->d_name[0] != 46 || v18->d_name[1] && (v18->d_name[1] != 46 || v18->d_name[2])) && strstr(v18->d_name, ".bin"))
          {
            if (v19)
            {
              CFRelease(v19);
            }

            v21 = CFStringCreateWithCString(kCFAllocatorDefault, v18->d_name, 0x8000100u);
            v19 = v21;
            if (!v20 || CFStringCompare(v21, v20, 0x40uLL) == kCFCompareGreaterThan)
            {
              v20 = v19;
            }
          }

          v18 = readdir(v16);
        }

        while (v18);
        if (v20)
        {
          closedir(v16);
          CFStringGetCString(v20, v46, 1024, 0x8000100u);
          if (!v46[0])
          {
            ramrod_log_msg("%s: Failed to create nitrogen cstring from filename\n", "update_nitrogen");
            ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Failed to create nitrogen cstring from filename", v38, v39, v40, "update_nitrogen");
LABEL_49:
            CFRelease(v20);
            goto LABEL_31;
          }

          snprintf(&__str, 0x400uLL, "%s/%s", "/usr/standalone/firmware/aeac", v46);
LABEL_42:
          ramrod_log_msg("Flashing nitrogen FW file: %s\n", &__str);
          if (stat(&__str, &v41) == -1)
          {
            ramrod_log_msg("nitrogen FW path not found\n");
            v37 = @"%s: nitrogen FW path not found";
          }

          else
          {
            v42[0] = "/usr/bin/ampctl";
            v42[1] = "updatefw";
            v42[2] = &__str;
            v42[3] = 0;
            v33 = ramrod_execute_command(v42);
            if (!v33)
            {
              if (v20)
              {
                CFRelease(v20);
              }

              return 1;
            }

            ramrod_log_msg("ampctl failure when attempting to flash the nitrogen firmware: %d\n", v33);
            v37 = @"%s: ampctl failure when attempting to flash the nitrogen firmware: %d";
          }

          ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v37, v34, v35, v36, "update_nitrogen");
          if (!v20)
          {
            goto LABEL_31;
          }

          goto LABEL_49;
        }
      }

      ramrod_log_msg("No FW file found in %s\n", "/usr/standalone/firmware/aeac");
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: No FW file found in nitrogen directory", v24, v25, v26, "copy_newest_nitrogen_fw_name");
      closedir(v16);
    }

    else
    {
      ramrod_log_msg("Can't open %s\n", "/usr/standalone/firmware/aeac");
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Can't open nitrogen directory", v27, v28, v29, "copy_newest_nitrogen_fw_name");
    }

    ramrod_log_msg("%s: Nitrogen FW file not found\n", "update_nitrogen");
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Nitrogen FW file not found", v30, v31, v32, "update_nitrogen");
    goto LABEL_31;
  }

  v9 = Value;
  bzero(buffer, 0x400uLL);
  v10 = CFDictionaryGetValue(a1, @"Nitrogen FW Name");
  if (!v10 || (CFStringGetCString(v10, buffer, 1024, 0x8000100u), !buffer[0]))
  {
    strcpy(buffer, "override.bin");
  }

  snprintf(&__str, 0x400uLL, "%s/%s", "/mnt1/usr/standalone/firmware", buffer);
  if (!ramrod_create_directory_with_class("/mnt1/usr/standalone/firmware", 493, 0, 0, -1, 1))
  {
    v22 = ramrod_write_data_to_file_with_class(v9, &__str, -1);
    ramrod_log_msg("%s: Writing nitrogen override file: %s\n", "update_nitrogen", &__str);
    if (v22)
    {
      ramrod_log_msg("%s: Failed to write override file to URL: %d\n", "update_nitrogen", -1);
      v14 = @"%s: Failed to write override file to URL";
      goto LABEL_30;
    }

    v20 = 0;
    goto LABEL_42;
  }

  ramrod_log_msg("%s: Failed to create nitrogen FW override dir: %s\n", "update_nitrogen", &__str);
  v14 = @"%s: Failed to create nitrogen FW override dir";
LABEL_30:
  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v14, v11, v12, v13, "update_nitrogen");
LABEL_31:
  if (CFDictionaryGetValue(a1, @"Nitrogen Ignore Errors") != kCFBooleanTrue)
  {
    return 0;
  }

  ramrod_log_msg("Ignoring nitrogen updater errors\n");
  return 1;
}

void sub_3C05C(void *a1, void *a2)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1[4] + 8);
  }

  *(*(a1[5] + 8) + 24) = sub_3D31C(@"USBC", update_usbc, a1[6], (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(a1[5] + 8) + 24)];
  [a2 setError:*(*(a1[4] + 8) + 24)];
  v6 = *(*(a1[4] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_3C150(void *a1, void *a2)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1[4] + 8);
  }

  *(*(a1[5] + 8) + 24) = sub_3D31C(@"Baseband", sub_3C244, a1[6], (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(a1[5] + 8) + 24)];
  [a2 setError:*(*(a1[4] + 8) + 24)];
  v6 = *(*(a1[4] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3C244(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_baseband_legacy");
  theDict = 0;
  cf = 0;
  observer = a2;
  v44 = a3;
  if (ramrod_device_has_baseband_legacy())
  {
    (*(a2 + 8))(3, 0xFFFFFFFFLL, a3);
    v11 = BBUpdaterExtremeCreateWithError();
    if (v11)
    {
      BBUpdaterRegisterLogSink();
      ramrod_log_msg("%s: registering for progress notifications\n", "update_baseband_legacy");
      LocalCenter = CFNotificationCenterGetLocalCenter();
      v13 = LocalCenter;
      if (LocalCenter)
      {
        CFNotificationCenterAddObserver(LocalCenter, &observer, sub_2F6D4, @"BBUpdateProgress", v11, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v14 = sub_2EA98(a1, 0, a4);
      if (v14)
      {
        if (BBUpdaterSetOptions())
        {
          while (1)
          {
            ramrod_log_msg("%s: querying baseband info\n", "update_baseband_legacy");
            if (!BBUpdaterExecCommand())
            {
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1004, cf, @"%s: failed querying baseband info", v18, v19, v20, "update_baseband_legacy");
              (*(a2 + 40))(0, theDict, cf, a3);
              goto LABEL_38;
            }

            bzero(buffer, 0x800uLL);
            v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", theDict);
            if (v21)
            {
              v22 = v21;
              if (CFStringGetCString(v21, buffer, 2048, 0x8000100u))
              {
                ramrod_log_msg("%s: query returned %s\n", "update_baseband_legacy", buffer);
              }

              CFRelease(v22);
            }

            Value = CFDictionaryGetValue(theDict, @"provisioning");
            if (Value)
            {
              v24 = Value;
              v25 = CFGetTypeID(Value);
              if (v25 == CFDictionaryGetTypeID())
              {
                ramrod_log_msg("query provisioningInfo successfully\n");
                v26 = CFDictionaryGetValue(v24, @"EID");
                if (qword_1C6BA8)
                {
                  CFRelease(qword_1C6BA8);
                }

                qword_1C6BA8 = v26;
                if (v26)
                {
                  bzero(v48, 0x400uLL);
                  if (CFStringGetCString(v26, v48, 1024, 0x8000100u))
                  {
                    ramrod_log_msg("The euiccssn is %s\n");
                  }

                  else
                  {
                    ramrod_log_msg("unable to convert to c string, the value of eUiccCSNStr might be unexpected\n");
                  }

                  CFRetain(qword_1C6BA8);
                }

                else
                {
                  ramrod_log_msg(" Not find eid in current BB output\n");
                }
              }
            }

            ramrod_log_msg("%s: requesting baseband firmware data\n", "update_baseband_legacy");
            v27 = (*(a2 + 32))(theDict, a3);
            CFRelease(theDict);
            theDict = 0;
            if (!v27 || (v31 = CFGetTypeID(v27), v31 != CFDataGetTypeID()))
            {
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: host failed to provide baseband data", v28, v29, v30, "update_baseband_legacy");
              goto LABEL_38;
            }

            Length = CFDataGetLength(v27);
            ramrod_log_msg("%s: received data from host (%lu bytes)\n", "update_baseband_legacy", Length);
            CFDictionarySetValue(v14, @"firmwareData", v27);
            CFRelease(v27);
            ramrod_log_msg("%s: performing next update stage\n", "update_baseband_legacy");
            v33 = BBUpdaterExecCommand();
            v34 = v33;
            (*(a2 + 40))(v33, theDict, cf, a3);
            if (!v34)
            {
              break;
            }

            if (!theDict || (v35 = CFDictionaryGetValue(theDict, @"done")) == 0 || (v36 = v35, v37 = CFGetTypeID(v35), v37 != CFBooleanGetTypeID()))
            {
              v40 = cf;
              v41 = @"%s: baseband updater failed to indicate completion status";
              goto LABEL_37;
            }

            v38 = CFBooleanGetValue(v36);
            CFRelease(theDict);
            theDict = 0;
            if (v38)
            {
              ramrod_log_msg("%s: success\n", "update_baseband_legacy");
              v39 = 1;
              goto LABEL_39;
            }
          }

          v40 = cf;
          v41 = @"%s: failed to perform next stage";
        }

        else
        {
          v40 = cf;
          v41 = @"%s: BBUpdaterSetOptions rejected options";
        }

LABEL_37:
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1004, v40, v41, v15, v16, v17, "update_baseband_legacy");
      }

LABEL_38:
      v39 = 0;
LABEL_39:
      if (v13)
      {
        ramrod_log_msg("%s: calling CFNotificationCenterRemoveEveryObserver\n", "update_baseband_legacy");
        CFNotificationCenterRemoveEveryObserver(v13, &observer);
      }
    }

    else
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1004, cf, @"%s: BBUpdaterExtremeCreateWithError failed", v8, v9, v10, "update_baseband_legacy");
      v39 = 0;
      v14 = 0;
    }
  }

  else
  {
    ramrod_log_msg("updater not supported\n");
    v14 = 0;
    v11 = 0;
    v39 = 1;
  }

  if (cf)
  {
    ramrod_log_msg_cf(@"%s: bbupdater error: %@\n", "update_baseband_legacy", cf, observer, v44);
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v11)
  {
    BBUpdaterSetOptions();
    CFRelease(v11);
  }

  return v39;
}

void sub_3C7BC(void *a1, void *a2)
{
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(a1[4] + 8);
  }

  *(*(a1[5] + 8) + 24) = sub_3D31C(@"Baseband", sub_3C8B0, a1[6], (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(a1[5] + 8) + 24)];
  [a2 setError:*(*(a1[4] + 8) + 24)];
  v6 = *(*(a1[4] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3C8B0(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_baseband");
  if (ramrod_device_has_baseband(v8))
  {
    (*(a2 + 8))(3, 0, a3);
    v18 = a3;
    v19 = 0;
    BYTE4(v19) = *(a3 + 40) == 1;
    v20 = 0;
    v21 = 0;
    v17[0] = a2;
    v17[1] = a3;
    v17[2] = &v18;
    v9 = sub_2EA98(a1, *(a3 + 8), a4);
    if (v9)
    {
      v10 = v9;
      v11 = *(v18 + 8);
      *(v18 + 8) = v9;
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
      if (ramrod_device_has_baseband(MutableCopy))
      {
        v13 = os_variant_uses_ephemeral_storage();
        if (v13)
        {
          ramrod_log_msg("ramrod_update running in limited environment\n");
        }

        else
        {
          ramrod_log_msg("ramrod_update running in normal env\n");
        }

        if (v13)
        {
          CFDictionarySetValue(MutableCopy, @"PreflightContext", @"Limited");
          ramrod_log_msg("Overriding baseband update options with limited context");
        }
      }

      updated = update_generic_firmware(@"Baseband", MutableCopy, v17, a4);
      if (updated)
      {
        v15 = 100;
      }

      else
      {
        v15 = 0xFFFFFFFFLL;
      }

      (*(a2 + 8))(3, v15, a3);
      *(v18 + 8) = v11;
      CFRelease(v10);
      AMSupportSafeRelease();
    }

    else
    {
      ramrod_log_msg("Failed to create_baseband_update_options");
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("Updater not supported\n");
    return 1;
  }

  return updated;
}

void sub_3CA6C(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Rose", sub_3CD04, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  Value = CFDictionaryGetValue(*(a1 + 56), @"IgnoreRoseFailures");
  v7 = Value;
  if (Value && (v8 = CFGetTypeID(Value), v8 == CFBooleanGetTypeID()) && CFBooleanGetValue(v7))
  {
    v9 = 0;
    v10 = "ignored";
  }

  else
  {
    v10 = "NOT ignored";
    v9 = 1;
  }

  ramrod_log_msg("Rose failures will be %s\n", v10);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    bzero(buffer, 0x400uLL);
    v11 = *(*(*(a1 + 32) + 8) + 24);
    if (v11)
    {
      v12 = CFErrorCopyDescription(v11);
      v13 = v12;
      v14 = *(*(*(a1 + 32) + 8) + 24);
      if (v12)
      {
        CFStringGetCString(v12, buffer, 1023, 0x8000100u);
        CFRelease(v13);
      }

      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = 0;
      if (v9)
      {
LABEL_13:
        v15 = "NOT ignoring";
LABEL_18:
        v24 = @"Unknown reason";
        if (v14)
        {
          v24 = v14;
        }

        ramrod_log_msg_cf(@"Rose firmware update failed (%s): %@\n", v15, v24);
        goto LABEL_21;
      }
    }

    context = checkpoint_closure_get_context();
    v23 = buffer;
    if (!buffer[0])
    {
      v23 = "Unknown reason";
    }

    checkpoint_closure_context_warning(context, "Rose firmware update failed: %s\n", v17, v18, v19, v20, v21, v22, v23);
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v15 = "Ignoring";
    goto LABEL_18;
  }

LABEL_21:
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v25 = *(*(*(a1 + 32) + 8) + 24);
  if (v25)
  {
    CFRelease(v25);
  }
}

void sub_3CCB4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x3CC38);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t sub_3CD04(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_rose");
  if (ramrod_device_has_rose())
  {
    (*(a2 + 8))(8, 0, a3);
    v12 = a3;
    v13 = 0;
    BYTE4(v13) = *(a3 + 40) == 1;
    v14 = 0;
    v15 = 0;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = &v12;
    updated = update_generic_firmware(@"Rose", a1, v11, a4);
    if (updated)
    {
      v9 = 100;
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    (*(a2 + 8))(8, v9, a3);
  }

  else
  {
    ramrod_log_msg("Skipping Rose update since it does not appear to be supported. If it should be, file a radar!\n");
    return 1;
  }

  return updated;
}

uint64_t sub_3CDE8(void *a1)
{
  result = sub_3D31C(@"Centauri", sub_3CE40, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_3CE40(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_centauri");
  if (ramrod_device_has_centauri())
  {
    (*(a2 + 8))(22, 0, a3);
    v12 = a3;
    v13 = 0;
    BYTE4(v13) = *(a3 + 40) == 1;
    v14 = 0;
    v15 = 0;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = &v12;
    updated = update_generic_firmware(@"Centauri", a1, v11, a4);
    if (updated)
    {
      v9 = 100;
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    (*(a2 + 8))(22, v9, a3);
  }

  else
  {
    ramrod_log_msg("Skipping Centauri update since it's not present\n");
    return 1;
  }

  return updated;
}

uint64_t sub_3CF24(void *a1)
{
  result = sub_3D31C(@"Canary", sub_3CF7C, (*(a1[5] + 8) + 32), a1[6], 0xFFFFFFFFLL);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_3CF7C(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_canary");
  v12 = a3;
  v13 = 0;
  BYTE4(v13) = *(a3 + 40) == 1;
  v14 = 0;
  v15 = 0;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = &v12;
  v8 = MGCopyAnswer();
  AMSupportSafeRelease();
  if (v8 == kCFBooleanFalse)
  {
    updated = update_generic_firmware(@"Canary", a1, v11, a4);
  }

  else
  {
    updated = 1;
  }

  return updated & 1;
}

void sub_3D044(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 24);
  if (v4)
  {
    CFRetain(v4);
  }

  ramrod_log_msg("firmware_update_se: Waiting for Rose To Finish\n");
  dispatch_sync(*(a1 + 32), &stru_1AD9D8);
  *(*(*(a1 + 48) + 8) + 24) = sub_3D31C(@"SE", sub_3D160, *(a1 + 56), (*(*(a1 + 40) + 8) + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 48) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 40) + 8) + 24)];
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t sub_3D160(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_se");
  if (ramrod_device_has_stockholm())
  {
    (*(a2 + 8))(6, 0, a3);
    v10[0] = a3;
    memset(&v10[1], 0, 24);
    v9[0] = a2;
    v9[1] = a3;
    v9[2] = v10;
    return update_generic_firmware(@"SE", a1, v9, a4);
  }

  else
  {
    ramrod_log_msg("No Stockholm present on device, skipping SE update\n");
    return 1;
  }
}

void sub_3D214(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_3D274(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t sub_3D2C4(void *a1)
{
  result = sub_3D31C(@"Savage", sub_3D5D4, (*(a1[5] + 8) + 32), a1[6], 98);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_3D31C(const void *a1, uint64_t (*a2)(const __CFDictionary *, const __CFDictionary *), const __CFDictionary **a3, CFErrorRef *a4, uint64_t a5)
{
  v10 = *a3;
  context = checkpoint_closure_get_context();
  if (!v10)
  {
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v10, @"DisabledByDefault");
  v15 = !Value || (v13 = Value, v14 = CFGetTypeID(Value), v14 != CFBooleanGetTypeID()) || CFBooleanGetValue(v13) == 0;
  v16 = CFDictionaryGetValue(v10, a1);
  if (v16)
  {
    v17 = v16;
    v18 = CFGetTypeID(v16);
    if (v18 != CFBooleanGetTypeID())
    {
      if (a4 && !*a4)
      {
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 2, 0, @"%s: '%@' argument had unexpected value", v19, v20, v21, "ramrod_update_device_firmware_enabled_with_default_error");
      }

      goto LABEL_40;
    }

    v15 = CFBooleanGetValue(v17);
  }

  if (v15 != 1)
  {
    a5 = 0;
LABEL_40:
    checkpoint_closure_context_step_disabled(context);
    step_desc = checkpoint_closure_context_get_step_desc(context);
    ramrod_log_msg("'%s' update disabled\n", *(step_desc + 8));
    return a5;
  }

LABEL_10:
  cf = 0;
  if (qword_1C6BC8)
  {
    if (checkpoint_engine_supports_reboot_retry())
    {
      if (checkpoint_is_reboot_retry())
      {
        v22 = checkpoint_closure_context_get_step_desc(context);
        if (!v22 || (*(v22 + 36) & 1) == 0)
        {
          v23 = checkpoint_closure_get_context();
          v24 = checkpoint_closure_context_get_step_desc(v23);
          if (sub_36FC8(v24))
          {
LABEL_27:
            v29 = 0;
            goto LABEL_28;
          }
        }
      }
    }
  }

  v25 = checkpoint_closure_context_get_immediate_retry_attempt_number(context) != 0;
  v26 = a3[2];
  *(v26 + 40) = v25;
  *(v26 + 41) = *(a3 + 24);
  v27 = a2(*a3, a3[1]);
  if (v27)
  {
    v28 = qword_1C6BC8 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v34 = checkpoint_engine_supports_reboot_retry();
    if (v34 && !checkpoint_is_reboot_retry())
    {
      v35 = checkpoint_closure_get_context();
      v36 = checkpoint_closure_context_get_step_desc(v35);
      sub_36DE8(v36);
    }

    goto LABEL_27;
  }

  v29 = v27 == 0;
  v30 = cf;
  if (!v27 && !cf)
  {
    ramrod_log_msg("Creating error outside of updater - value %d\n", a5);
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 7, 0, @"Generic updater error: %d", v31, v32, v33, a5);
    v29 = 1;
LABEL_28:
    v30 = cf;
  }

  if (!v30)
  {
    goto LABEL_45;
  }

  ramrod_log_msg_cf(@"Update[%@] error - %@\n", a1, v30);
  if (a4)
  {
    if (v29)
    {
      if (!checkpoint_closure_context_get_immediate_retry_attempt_number(context))
      {
        CFRetain(cf);
        if (*a4)
        {
          CFRelease(*a4);
        }

        v37 = cf;
        goto LABEL_43;
      }
    }

    else if (!*a4)
    {
      v37 = CFRetain(cf);
LABEL_43:
      *a4 = v37;
    }
  }

  CFRelease(cf);
LABEL_45:
  if (v29)
  {
    return a5;
  }

  else
  {
    return 0;
  }
}

void sub_3D5E0(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Veridian", sub_3D6D4, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3D6D4(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_veridian");
  (*(a2 + 8))(9, 0, a3);
  v14 = a3;
  v15 = 0;
  BYTE4(v15) = *(a3 + 40) == 1;
  v16 = 0;
  v17 = 0;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = &v14;
  if (!ramrod_device_has_veridian())
  {
    ramrod_log_msg("Not a Veridian-capable device, nothing to update..\n");
    v9 = *(a2 + 8);
LABEL_7:
    v11 = 100;
    v10 = 1;
    goto LABEL_8;
  }

  if (AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
  {
    ramrod_log_msg("Forcing Repersonalization on each loop of Veridian\n");
    BYTE4(v15) = 1;
  }

  updated = update_generic_firmware(@"T200", a1, v13, a4);
  v9 = *(a2 + 8);
  if (updated)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = 0xFFFFFFFFLL;
LABEL_8:
  v9(9, v11, a3);
  return v10;
}

void sub_3D800(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"AppleTCON", sub_3D8F4, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3D8F4(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_appletcon");
  (*(a2 + 8))(13, 0, a3);
  v14 = a3;
  v15 = 0;
  BYTE4(v15) = *(a3 + 40) == 1;
  v16 = 0;
  v17 = 0;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = &v14;
  if (!ramrod_device_has_appletcon(*(a3 + 8)))
  {
    ramrod_log_msg("AppleTCON not present or not flashable, nothing to update..\n");
    v9 = *(a2 + 8);
LABEL_7:
    v11 = 100;
    v10 = 1;
    goto LABEL_8;
  }

  if (AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
  {
    ramrod_log_msg("Forcing Repersonalization on each loop of AppleTCON\n");
    BYTE4(v15) = 1;
  }

  updated = update_generic_firmware(@"AppleTCON", a1, v13, a4);
  v9 = *(a2 + 8);
  if (updated)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = 0xFFFFFFFFLL;
LABEL_8:
  v9(13, v11, a3);
  return v10;
}

uint64_t sub_3DA24(uint64_t a1)
{
  result = sub_3D31C(@"Ace3", sub_3DA7C, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3DA7C(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_ace3");
  (*(a2 + 8))(17, 0, a3);
  v15 = a3;
  v16 = 0;
  BYTE4(v16) = *(a3 + 40) == 1;
  v17 = 0;
  v18 = 0;
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = &v15;
  if (ramrod_device_has_ace3())
  {
    ramrod_delete_NVRAM_variable(@"usbcfw.version", 0);
    ramrod_delete_NVRAM_variable(@"ramrod-kickstart-aces", 0);
    updated = update_generic_firmware(@"Ace3", a1, v14, a4);
    if (!updated)
    {
      v11 = 0;
      v10 = *(a2 + 8);
      goto LABEL_10;
    }

    v9 = updated;
    if (CFDictionaryContainsKey(*(a3 + 8), @"UUID"))
    {
      ramrod_set_NVRAM_variable_sync(@"usbcfw.version", @"true", 0, 1);
    }

    v10 = *(a2 + 8);
    if ((v9 & 1) == 0)
    {
      v11 = 0;
LABEL_10:
      v12 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  else
  {
    ramrod_log_msg("Ace3 not present or not flashable, nothing to update..\n");
    v10 = *(a2 + 8);
  }

  v12 = 100;
  v11 = 1;
LABEL_11:
  v10(17, v12, a3);
  return v11;
}

uint64_t sub_3DBCC(uint64_t a1)
{
  result = sub_3D31C(@"USBCRetimer", sub_3DC24, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3DC24(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_usbcretimer");
  (*(a2 + 8))(14, 0, a3);
  v13 = a3;
  v14 = 0;
  BYTE4(v14) = *(a3 + 40) == 1;
  v15 = 0;
  v16 = 0;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = &v13;
  ramrod_delete_NVRAM_variable(@"ramrod-kickstart-appletypecretimer", 0);
  if (_ramrod_device_has_usbcretimer(@"uatcrt"))
  {
    v8 = @"AppleTypeCRetimerUARP";
  }

  else
  {
    if (!_ramrod_device_has_usbcretimer(@"atcrt"))
    {
      ramrod_log_msg("AppleUSBTypeCRetimer not present or not flashable, nothing to update..\n");
      goto LABEL_9;
    }

    v8 = @"AppleTypeCRetimer";
  }

  if (update_generic_firmware(v8, a1, v12, a4))
  {
    ramrod_set_NVRAM_variable(@"ramrod-kickstart-appletypecretimer", @"1", 0);
LABEL_9:
    v10 = 100;
    v9 = 1;
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0xFFFFFFFFLL;
LABEL_10:
  (*(a2 + 8))(14, v10, a3);
  return v9;
}

void sub_3DD58(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"MantaMCU", sub_3DE4C, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3DE4C(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_manta_mcu");
  (*(a2 + 8))(19, 0, a3);
  v14 = a3;
  v15 = 0;
  BYTE4(v15) = *(a3 + 40) == 1;
  v16 = 0;
  v17 = 0;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = &v14;
  if (!ramrod_device_has_manta_mcu())
  {
    ramrod_log_msg("manta_mcu not present or not flashable, nothing to update..\n");
    v9 = *(a2 + 8);
    goto LABEL_5;
  }

  updated = update_generic_firmware(@"MantaMCU", a1, v13, a4);
  v9 = *(a2 + 8);
  if (updated)
  {
LABEL_5:
    v11 = 100;
    v10 = 1;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0xFFFFFFFFLL;
LABEL_6:
  v9(19, v11, a3);
  return v10;
}

void sub_3DF34(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Vinyl", sub_3E028, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3E028(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_vinyl");
  if (ramrod_device_has_vinyl())
  {
    (*(a2 + 8))(21, 0, a3);
    v12[0] = a3;
    memset(&v12[1], 0, 24);
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = v12;
    updated = update_generic_firmware(@"Vinyl", a1, v11, a4);
    if (updated)
    {
      v9 = 100;
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    (*(a2 + 8))(21, v9, a3);
  }

  else
  {
    ramrod_log_msg("Vinyl not present or not flashable, nothing to update..\n");
    return 1;
  }

  return updated;
}

uint64_t sub_3E0FC(uint64_t a1)
{
  result = sub_3D31C(@"AppleTconUARP", sub_3E154, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3E154(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering %s\n", "update_appletconuarp");
  (*(a2 + 8))(23, 0, a3);
  v14 = a3;
  v15 = 0;
  BYTE4(v15) = *(a3 + 40) == 1;
  v16 = 0;
  v17 = 0;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = &v14;
  if (!ramrod_device_has_appletconuarp())
  {
    ramrod_log_msg("AppleTconUARP not present or not flashable, nothing to update..\n");
    v9 = *(a2 + 8);
    goto LABEL_5;
  }

  updated = update_generic_firmware(@"AppleTconUARP", a1, v13, a4);
  v9 = *(a2 + 8);
  if (updated)
  {
LABEL_5:
    v11 = 100;
    v10 = 1;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0xFFFFFFFFLL;
LABEL_6:
  v9(23, v11, a3);
  return v10;
}

BOOL ramrod_update_firmware_post_sealing(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __CFError **a5)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x4010000000;
  v37 = "";
  v38 = 0u;
  v39 = 0u;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  ramrod_log_msg("entering ramrod_update_firmware_post_sealing\n");
  if (a5)
  {
    *a5 = 0;
  }

  v10 = v35;
  v35[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  *(v10 + 56) = a4;
  v11 = *(a3 + 8);
  if (!v11 || (Value = CFDictionaryGetValue(v11, @"FDRSkipSealing"), (v13 = Value) == 0) || (v14 = CFGetTypeID(Value), v14 != CFBooleanGetTypeID()))
  {
    v13 = kCFBooleanFalse;
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3254779904;
  v29[2] = sub_3E74C;
  v29[3] = &unk_1AD948;
  v29[4] = &v30;
  v29[5] = &v34;
  v29[6] = a5;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3254779904;
  v28[2] = sub_3E7B0;
  v28[3] = &unk_1AD948;
  v28[4] = &v30;
  v28[5] = &v34;
  v28[6] = a5;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3254779904;
  v27[2] = sub_3EA44;
  v27[3] = &unk_1ADA28;
  v27[4] = &v30;
  v27[5] = &v34;
  v27[6] = v13;
  v27[7] = a5;
  v25[6] = a5;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3254779904;
  v26[2] = sub_3EB6C;
  v26[3] = &unk_1AD948;
  v26[4] = &v34;
  v26[5] = &v30;
  v26[6] = a5;
  v24[6] = a5;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3254779904;
  v25[2] = sub_3FC70;
  v25[3] = &unk_1AD948;
  v25[4] = &v30;
  v25[5] = &v34;
  v23[6] = a5;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3254779904;
  v24[2] = sub_4021C;
  v24[3] = &unk_1AD948;
  v24[4] = &v30;
  v24[5] = &v34;
  v22[6] = a5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3254779904;
  v23[2] = sub_4093C;
  v23[3] = &unk_1AD948;
  v23[4] = &v30;
  v23[5] = &v34;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3254779904;
  v22[2] = sub_40994;
  v22[3] = &unk_1AD948;
  v22[4] = &v30;
  v22[5] = &v34;
  bzero(&v40, 0x360uLL);
  v40 = 5377;
  v41 = "update_savage_postseal";
  v42 = v29;
  v44 = 5376;
  v43 = 1;
  v45 = "decompress_pearl_data";
  v46 = v28;
  v47 = 1;
  v48 = 5379;
  v49 = "update_rose_postseal";
  v50 = v27;
  v51 = 1;
  v52 = 4890;
  v53 = "stage_fdr_ean";
  v54 = v24;
  v55 = 1;
  v56 = 4889;
  v57 = "ensure_fdr_ean";
  v58 = v23;
  v59 = 1;
  v60 = 5380;
  v61 = "update_fdr_ean";
  v62 = v26;
  v63 = 1;
  v64 = 4884;
  v65 = "update_fillmore";
  v66 = v25;
  v67 = 1;
  v68 = 2;
  v69 = 5381;
  v70 = "baseband_postseal";
  v71 = v22;
  v72 = 1;
  v15 = checkpoint_engine_init(0, 22, 0);
  v19 = v15;
  if (v15)
  {
    checkpoint_engine_perform(v15, &v40, v31 + 6, a5);
    checkpoint_engine_free(v19);
    v20 = v31[6] == 0;
  }

  else
  {
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate firmware checkpoint engine", v16, v17, v18, "ramrod_update_firmware_post_sealing");
    v20 = 0;
    v31[6] = 18;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  return v20;
}

void sub_3E720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3E74C(uint64_t a1)
{
  result = sub_3D31C(@"SavagePostSeal", sub_3E7A4, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3E7B0(uint64_t a1)
{
  result = sub_3D31C(@"DecompressPearl", sub_3E808, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3E808(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v41 = 0;
  ramrod_log_msg("entering %s\n", "decompress_pearl_data");
  v7 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    (*(a2 + 8))(7, 0xFFFFFFFFLL, a3);
    v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/FactoryData/%@", "/mnt6", @"/System/Library/Caches/com.apple.factorydata");
    if (!v16)
    {
      sub_D90A4(a4, v9, v10, v11, v12, v13, v14, v15);
      goto LABEL_13;
    }

    URLFromString = AMSupportCreateURLFromString();
    if (!URLFromString)
    {
      sub_D9068(a4, v16, v18, v19, v20, v21, v22, v23);
      goto LABEL_13;
    }

    values = URLFromString;
    keys = @"DataDirectory";
    v24 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v25 = ramrod_copy_fdr_data_instance(@"prf1", 0, v24, &v41);
    v26 = v25;
    if (v25)
    {
      BytePtr = CFDataGetBytePtr(v25);
      Length = CFDataGetLength(v26);
      if (decompressReferenceFrames(BytePtr, Length, "/mnt6/Pearl"))
      {
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, v41, @"%s: decompressReferenceFrames returned %d", v29, v30, v31, "decompress_pearl_data");
LABEL_13:
        v39 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      ramrod_log_msg("No prf1 data found, continuing..\n");
      context = checkpoint_closure_get_context();
      checkpoint_closure_context_warning(context, "decompress_pearl_data missing prf1", v33, v34, v35, v36, v37, v38);
    }
  }

  else
  {
    ramrod_log_msg("No Savage present on device, skipping update\n");
  }

  v39 = 1;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v39;
}

void sub_3EA44(uint64_t a1)
{
  if (*(a1 + 48) == kCFBooleanTrue)
  {

    ramrod_log_msg("skipping Rose post-sealing step since FDR sealing is being skipped\n");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_3D31C(@"RosePostSeal", sub_3EAD0, (*(*(a1 + 40) + 8) + 32), *(a1 + 56), 0xFFFFFFFFLL);
  }
}

uint64_t sub_3EAD0(CFDictionaryRef theDict, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  if (MutableCopy)
  {
    AMSupportCFDictionarySetBoolean();
    v8 = sub_3CD04(MutableCopy, a2, a3, a4);
  }

  else
  {
    ramrod_log_msg("Failed to allocate mutableOptions\n");
    v8 = 0;
  }

  AMSupportSafeRelease();
  return v8;
}

uint64_t sub_3EB6C(uint64_t a1)
{
  sub_3D31C(@"FDREAN", sub_3EBF8, (*(*(a1 + 32) + 8) + 32), 0, 0xFFFFFFFFLL);
  result = sub_3D31C(@"FDREAN", sub_3F910, (*(*(a1 + 32) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_3EBF8(const void *a1, uint64_t a2, void *a3, CFErrorRef *a4)
{
  v6 = a2;
  v189 = 0;
  memset(cf, 0, sizeof(cf));
  (*(a2 + 8))(11, 0xFFFFFFFFLL);
  if (!a3)
  {
    v182 = a1;
    v183 = a4;
    ramrod_log_msg("context is NULL\n");
    goto LABEL_112;
  }

  if (!a4)
  {
    v182 = a1;
    v183 = 0;
    ramrod_log_msg("error is NULL\n");
    goto LABEL_112;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v182 = a1;
    v183 = a4;
    ramrod_log_msg("dataForEAN failed allocation\n");
    goto LABEL_112;
  }

  v9 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v9);
  theDict = Mutable;
  if (!MatchingService)
  {
    ramrod_log_msg("Skipping update_fdr_ean on device with no EAN\n");
LABEL_30:
    v185 = 1;
    v79 = 100;
    goto LABEL_76;
  }

  IOObjectRelease(MatchingService);
  v18 = ramrod_ticket_copy();
  if (!v18)
  {
    v182 = a1;
    v183 = a4;
    sub_D9428(a4, v11, v12, v13, v14, v15, v16, v17);
    goto LABEL_112;
  }

  has_BOOLean_entitlement = ramrod_ticket_has_BOOLean_entitlement(0x66617573u);
  CFDictionarySetValue(Mutable, @"aptk", v18);
  if (!sub_33250(Mutable, v6, a3, 0))
  {
    v182 = a1;
    v183 = a4;
    sub_D9518(a4, v20, v21, v22, v23, v24, v25, v26);
    goto LABEL_112;
  }

  CFDictionaryRemoveAllValues(Mutable);
  if (!AMFDRSealingMapGetEntriesForDevice())
  {
    ramrod_log_msg("Skipping update_fdr_ean on non-FDR device\n");
    goto LABEL_30;
  }

  v191 = 0;
  theArray[0] = 0;
  capacity = 0;
  v184 = v6;
  if ((AMFDRSealingMapCopyDataClassesWithAttribute() & 1) == 0 || (AMFDRSealingMapCopyDataClassesWithAttribute() & 1) == 0)
  {
    ramrod_log_msg("AMFDRSealingMapCopyDataClassesWithAttribute returned failure\n");
    v28 = 0;
LABEL_101:
    v29 = 1;
    goto LABEL_17;
  }

  v27 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v27)
  {
    ramrod_log_msg("failed to allocate dataClasses\n");
    v28 = 0;
    goto LABEL_101;
  }

  if (CFArrayGetCount(v27))
  {
    v28 = CFRetain(v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = 0;
LABEL_17:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v29)
  {
    v182 = a1;
    v183 = a4;
    ramrod_log_msg("_copy_ean_dataclass returned failure\n");
LABEL_111:
    v6 = v184;
    goto LABEL_112;
  }

  v6 = v184;
  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    v30 = *(v184 + 128);
    if (v30)
    {
      if (!v30(*a3, a3[1]))
      {
        v182 = a1;
        v183 = a4;
        sub_D9170(a4, v31, v32, v33, v34, v35, v36, v37);
        goto LABEL_112;
      }
    }
  }

  if (!v28)
  {
    ramrod_log_msg("No FDR Data for EAN.\n");
    goto LABEL_30;
  }

  v183 = a4;
  Count = CFArrayGetCount(v28);
  v39 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v40 = v39;
  v182 = a1;
  v186 = v28;
  if (!v39)
  {
    ramrod_log_msg("fdrOptions failed allocation\n");
    goto LABEL_111;
  }

  CFDictionaryAddValue(v39, @"CopyAllowUnsealed", kCFBooleanTrue);
  CFDictionarySetValue(v40, @"GetCombined", kCFBooleanFalse);
  v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/FactoryData/%@", "/mnt6", @"/System/Library/Caches/com.apple.factorydata");
  if (!v41)
  {
    sub_D94DC(v183, v42, v43, v44, v45, v46, v47, v48);
    goto LABEL_111;
  }

  v49 = v41;
  URLFromString = AMSupportCreateURLFromString();
  if (!URLFromString)
  {
    sub_D94A0(v183, v49, v51, v52, v53, v54, v55, v56);
    goto LABEL_111;
  }

  CFDictionaryAddValue(v40, @"DataDirectory", URLFromString);
  if (!AMFDRCreateTypeWithOptions())
  {
    sub_D9464(v183, v57, v58, v59, v60, v61, v62, v63);
    goto LABEL_111;
  }

  v64 = ramrod_ticket_copy();
  if (!v64)
  {
    sub_D9428(v183, v65, v66, v67, v68, v69, v70, v71);
    goto LABEL_111;
  }

  CFDictionaryAddValue(Mutable, @"aptk", v64);
  if (!ramrod_ticket_copy_data_object_property(1718903152, 1145525076))
  {
    sub_D93EC(v183, v72, v73, v74, v75, v76, v77, v78);
    goto LABEL_111;
  }

  AMFDRSetOption();
  AMFDRDataCopyTrustObject();
  context = checkpoint_closure_get_context();
  checkpoint_closure_context_warning(context, "update_fdr_ean missing data for trst.", v81, v82, v83, v84, v85, v86);
  ramrod_log_msg("Unable to read FDR Trust object.\n");
  if (!sub_335B8(@"trst"))
  {
    ramrod_log_msg("Erasing trst from EAN %s\n", "failed");
  }

  v87 = ramrod_copy_fdr_data_instance(@"seal", 0, v40, 0);
  if (!v87)
  {
    if (!sub_335B8(@"seal"))
    {
      ramrod_log_msg("Erasing from EAN %s\n", "failed");
    }

    goto LABEL_38;
  }

  v88 = v87;
  if (CFDataGetLength(v87) <= 0)
  {
    sub_D91AC(v183, v89, v90, v91, v92, v93, v94, v95);
    goto LABEL_111;
  }

  CFDictionaryAddValue(Mutable, @"seal", v88);
  CFRelease(v88);
LABEL_38:
  if (Count >= 1)
  {
    v96 = 0;
    v97 = 0;
    v98 = 0;
    while (1)
    {
      if (v97)
      {
        CFRelease(v97);
      }

      if (v98)
      {
        CFRelease(v98);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v189)
      {
        free(v189);
        v189 = 0;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v186, v96);
      if (AMSupportCreateCStringFromCFString())
      {
        ramrod_create_error_cf(v183, @"RamrodErrorDomain", 6, cf[0], @"%s: Failed to convert dataClass %@.", v100, v101, v102, "update_fdr_ean");
        goto LABEL_111;
      }

      if (AMFDRSealingMapEntryHasAttribute())
      {
        break;
      }

      if (has_BOOLean_entitlement)
      {
        LocalMultiDataBlobForClass = ramrod_copy_fdr_data_instance(ValueAtIndex, 0, v40, cf);
LABEL_53:
        v97 = LocalMultiDataBlobForClass;
        v98 = 0;
        if (!LocalMultiDataBlobForClass)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      v98 = AMFDRSealingManifestCopyInstanceForClass();
      if (!v98 || (v97 = ramrod_copy_fdr_data_instance(ValueAtIndex, v98, v40, cf)) == 0)
      {
LABEL_59:
        v113 = checkpoint_closure_get_context();
        checkpoint_closure_context_warning(v113, "update_fdr_ean missing data for %s.", v114, v115, v116, v117, v118, v119, v189);
        ramrod_log_msg("Missing FDR data for EAN key %s.\n", v189);
        if (!sub_335B8(ValueAtIndex))
        {
          ramrod_log_msg("Erasing from EAN %s\n", "failed");
        }

        v97 = 0;
        goto LABEL_62;
      }

LABEL_54:
      AMFDRGetTrustError();
      if (cf[0])
      {
        ramrod_create_error_cf(v183, @"RamrodErrorDomain", 7, cf[0], @"%s: FDR decode error 0x%016llX on EAN data %@.", v104, v105, v106, "update_fdr_ean");
        goto LABEL_111;
      }

      if (CFDataGetLength(v97) <= 0)
      {
        sub_D91F4(v183, ValueAtIndex, v107, v108, v109, v110, v111, v112);
        goto LABEL_111;
      }

      CFDictionaryAddValue(theDict, ValueAtIndex, v97);
LABEL_62:
      if (Count == ++v96)
      {
        goto LABEL_63;
      }
    }

    LocalMultiDataBlobForClass = AMFDRSealingMapCreateLocalMultiDataBlobForClass();
    goto LABEL_53;
  }

LABEL_63:
  v120 = theDict;
  v6 = v184;
  if (sub_33250(theDict, v184, a3, 0))
  {
    if (!ramrod_should_do_legacy_restored_internal_behaviors())
    {
LABEL_73:
      if (off_1AD4C0)
      {
        _MGRebuildCache4PurpleRestore();
        ramrod_log_msg("%s cleared MG cache\n", "update_fdr_ean");
      }

      v185 = 1;
      v79 = 100;
      goto LABEL_76;
    }

    LOBYTE(v191) = 0;
    if (ramrod_ticket_has_BOOLean_entitlement(0x72666367u))
    {
      if (AMSupportCFDictionaryGetBoolean())
      {
        ramrod_log_msg("Skipping verify sysconfig EAN data\n");
        goto LABEL_69;
      }

      if (!AMSupportCreateURLFromString())
      {
        sub_D9374(v183, v131, v132, v133, v134, v135, v136, v137);
        goto LABEL_88;
      }

      if (AMSupportFileURLExists())
      {
        sub_D9230(v183, v138, v139, v140, v141, v142, v143, v144);
        goto LABEL_88;
      }

      if (v191)
      {
        if (!ramrod_ticket_copy())
        {
          sub_D9338(v183, v145, v146, v147, v148, v149, v150, v151);
          goto LABEL_88;
        }

        if (!AMSupportCreateURLFromString())
        {
          sub_D92FC(v183, v152, v153, v154, v155, v156, v157, v158);
          goto LABEL_88;
        }

        if (AMSupportWriteDataToFileURL())
        {
          sub_D926C(v183, v159, v160, v161, v162, v163, v164, v165);
          goto LABEL_88;
        }

        memcpy(theArray, off_1A9A78, sizeof(theArray));
        Length = CFStringGetLength(v49);
        v174 = malloc(Length + 1);
        if (!v174 || !CFStringGetCString(v49, v174, Length + 1, 0x8000100u))
        {
          sub_D92B4(v183, v167, v168, v169, v170, v171, v172, v173);
          goto LABEL_88;
        }

        theArray[5] = "--sourceFDRPath";
        theArray[6] = v174;
        theArray[7] = 0;
        v175 = ramrod_execute_command(theArray);
        if (v175)
        {
          v120 = theDict;
          if (v175 != 100)
          {
            sub_D9554(v183, v175, v176, v177, v178, v179, v180, v181);
LABEL_88:
            AMSupportSafeFree();
            AMSupportSafeRelease();
            AMSupportSafeRelease();
            ramrod_log_msg("failed to verify sysconfig with ean\n");
            v6 = v184;
            goto LABEL_112;
          }
        }

        else
        {
          v120 = theDict;
        }
      }

      else
      {
        ramrod_log_msg("No sysconfig binary - continuing with restore.\n");
      }
    }

    else
    {
      ramrod_log_msg("Skipping verify sysconfig EAN data without rfcg entitlement\n");
    }

LABEL_69:
    AMSupportSafeFree();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    v6 = v184;
    if (CFDictionaryGetValue(v120, @"seal"))
    {
      v128 = sub_335B8(@"0Cfg");
      v129 = "succeeded";
      if (!v128)
      {
        v129 = "failed";
      }

      ramrod_log_msg("Erasing from EAN %s\n", v129);
    }

    goto LABEL_73;
  }

  sub_D93B0(v183, v121, v122, v123, v124, v125, v126, v127);
LABEL_112:
  if (ramrod_device_hide_fdr_failure(v182))
  {
    ramrod_log_msg("Hiding FDR Failure on Dev Board.\n");
    if (*v183)
    {
      CFRelease(*v183);
      *v183 = 0;
    }

    v185 = 1;
    v79 = 100;
  }

  else
  {
    v185 = 0;
    v79 = 0xFFFFFFFFLL;
  }

LABEL_76:
  (*(v6 + 8))(11, v79, a3);
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v185;
}

uint64_t sub_3F910(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  theData = 0;
  v7 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    ramrod_log_msg("Ensuring FDR1 is valid and active.\n");
    v9 = ramrod_ticket_copy();
    v10 = v9;
    if (!v9)
    {
      ramrod_log_msg("Unable to read ap ticket.\n");
      goto LABEL_30;
    }

    v11 = ramrod_ticket_copy_hash_data(v9, a4);
    if (!v11)
    {
      ramrod_log_msg("Failed to read ap ticket hash.\n");
      goto LABEL_30;
    }

    v12 = ramrod_ticket_copy_hash_string(v10, 0);
    if (v12)
    {
      ramrod_log_msg("Looking for active FDR EAN with ticket hash: %s\n", [(__CFString *)v12 UTF8String]);
    }

    if (_copy_fdr_ean_values(@"fdr1", 0, &theData))
    {
      v13 = (2 * CFDataGetLength(theData)) | 1;
      v14 = calloc(v13, 1uLL);
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      sub_44714(BytePtr, Length, v14, v13);
      ramrod_log_msg("FDR1 has hash: %s\n", v14);
      free(v14);
      if (CFEqual(v11, theData))
      {
        ramrod_log_msg("FDR1 appears to be active.\n");
        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      CFRelease(theData);
      theData = 0;
    }

    else
    {
      ramrod_log_msg("FDR1 is not written / valid.\n");
      v17 = 0;
    }

    if (_copy_fdr_ean_values(@"fdr2", 0, &theData))
    {
      v18 = (2 * CFDataGetLength(theData)) | 1;
      v19 = calloc(v18, 1uLL);
      v20 = CFDataGetBytePtr(theData);
      v21 = CFDataGetLength(theData);
      sub_44714(v20, v21, v19, v18);
      ramrod_log_msg("FDR2 has hash: %s\n", v19);
      free(v19);
      if (CFEqual(v11, theData))
      {
        ramrod_log_msg("FDR2 appears to be active.\n");
        v17 = 1;
      }

      CFRelease(theData);
      theData = 0;
      if (!v17)
      {
LABEL_21:
        if (!_copy_current_fdr_ean_values(a4))
        {
          ramrod_log_msg("No active FDR bank found. No current EAN sealing data. Will skip.\n");
          goto LABEL_28;
        }

        ramrod_log_msg("No active FDR bank found. Will stage.\n");
        if (!sub_40274(v22, a2, a3, a4))
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      ramrod_log_msg("FDR2 is not written / valid.\n");
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    v23 = sub_44774(v11, 0);
    if (!CFEqual(v23, @"fdr1"))
    {
      ramrod_log_msg("FDR1 was active, remains active.\n");
      goto LABEL_27;
    }

    if (sub_43F34(@"fdr1", @"fdr2"))
    {
      ramrod_log_msg("FDR1 is now active.\n");
LABEL_27:
      ramrod_log_msg("Success.\n");
      goto LABEL_28;
    }

    ramrod_log_msg("Failed to commit fdr2->fdr1.\n");
LABEL_30:
    v24 = 0;
    goto LABEL_31;
  }

  ramrod_log_msg("Skipping ensure_fdr_ean on device with no EAN\n");
LABEL_28:
  v24 = 1;
LABEL_31:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v24;
}

uint64_t sub_3FC70(uint64_t a1)
{
  result = sub_3D31C(@"Fillmore", sub_3FCC8, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3FCC8(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  memset(&v48, 0, sizeof(v48));
  bzero(__p, 0x400uLL);
  bzero(__str, 0x400uLL);
  v47 = 0;
  ramrod_log_msg("entering %s\n", "update_fillmore");
  v50 = 0;
  v49 = 4;
  if (sysctlbyname("hw.features.fillmore", &v50, &v49, 0, 0) || v50 != 1)
  {
    ramrod_log_msg("Not a Fillmore-capable device, nothing to update..\n");
    return 1;
  }

  if (stat("/usr/bin/fillmoretool", &v48) == -1)
  {
    ramrod_log_msg("%s: No fillmore updater found\n", "update_fillmore");
    v17 = @"%s: No fillmore updater found";
LABEL_35:
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v17, v14, v15, v16, "update_fillmore");
    return 0;
  }

  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    if (a3 && *(a3 + 8))
    {
      Boolean = AMSupportCFDictionaryGetBoolean();
      v8 = AMSupportCFDictionaryGetBoolean();
      if (Boolean)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = Boolean != 0;
      }

      if (AMSupportCFDictionaryGetBoolean())
      {
        v11 = v10 | 8;
      }

      else
      {
        v11 = v10;
      }

      v12 = AMSupportCFDictionaryGetBoolean();
    }

    else
    {
      v11 = 0;
      v12 = 1;
    }

    Value = CFDictionaryGetValue(a1, @"Fillmore FW Data");
    if (Value)
    {
      v19 = Value;
      strcpy(__p, "/mnt5/fillmore_override.fw");
      ramrod_log_msg("%s: Writing override file: %s\n", "update_fillmore", __p);
      if (ramrod_write_data_to_file_with_class(v19, __p, -1))
      {
        sub_D9590(a4, v20, v21, v22, v23, v24, v25, v26);
        return 0;
      }

      v27 = 1;
      goto LABEL_30;
    }
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  v50 = 0;
  v49 = 4;
  if (sysctlbyname("hw.features.fillmore_rcp1", &v50, &v49, 0, 0) || v50 != 1)
  {
    if (!sub_44400("/usr/standalone/firmware/fillmore/", __p, a4))
    {
      ramrod_log_msg("%s: No fillmore NCP FW found in %s\n");
      return 0;
    }
  }

  else if (!sub_44400("/usr/standalone/firmware/fillmore_rcp1/", __p, a4))
  {
    ramrod_log_msg("%s: No fillmore RCP FW found in %s\n");
    return 0;
  }

  v27 = 0;
LABEL_30:
  if (stat(__p, &v48) == -1)
  {
    ramrod_log_msg("%s: Fillmore FW not found: %s\n", "update_fillmore", __p);
    v17 = @"%s: Fillmore FW not found: %s";
    goto LABEL_35;
  }

  v31 = ramrod_updater_copy_options("Fillmore", *(a3 + 8), a1, 0, &v47, v28, v29, v30);
  if (!v31)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1022, v47, @"%s: failed to create options for Fillmore updater", v32, v33, v34, "update_fillmore");
    return 0;
  }

  v35 = v31;
  v36 = CFDictionaryGetValue(v31, @"Options");
  if (v36)
  {
    v37 = CFDictionaryGetValue(v36, @"DebugLogPath");
  }

  else
  {
    v37 = 0;
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v51[0] = "/usr/bin/fillmoretool";
  v51[1] = "-c";
  v51[2] = "flashbin";
  v51[3] = "-e";
  v51[4] = "-f";
  v51[5] = __p;
  if (!v12)
  {
    v39 = 6;
    if (!v11)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  *&v52 = "--external-build";
  v39 = 7;
  if (v11)
  {
LABEL_43:
    snprintf(__str, 0x400uLL, "%d", v11);
    v40 = v39 + 1;
    v51[v39] = "-b";
    v39 += 2;
    v51[v40] = __str;
  }

LABEL_44:
  if (v37)
  {
    v41 = v39 + 1;
    v51[v39] = "-p";
    v39 += 2;
    v51[v41] = CFStringGetCStringPtr(v37, 0x8000100u);
  }

  v51[v39] = 0;
  v42 = ramrod_execute_command(v51);
  if ((v27 & ramrod_should_do_legacy_restored_internal_behaviors()) == 1)
  {
    remove(__p, v43);
  }

  if (v42)
  {
    ramrod_log_msg("Failure when attempting to flash the Fillmore firmware: %d\n", v42);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Failure when attempting to flash the Fillmore firmware: %d", v44, v45, v46, "update_fillmore");
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  CFRelease(v35);
  return v13;
}

uint64_t sub_4021C(uint64_t a1)
{
  result = sub_3D31C(@"Stage FDR EAN", sub_40274, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_40274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
  if (!MatchingService)
  {
    ramrod_log_msg("Skipping stage_fdr_ean on device with no EAN\n");
    return 1;
  }

  IOObjectRelease(MatchingService);
  ramrod_log_msg("Preparing to write staged FDR EAN key.\n");
  v71 = 0u;
  v72 = 0u;
  *md = 0u;
  *bytes = 0u;
  v68 = 0u;
  v9 = *(a2 + 104);
  if (v9)
  {
    v10 = v9(a3);
  }

  else
  {
    ramrod_log_msg("Using current FDR state as staged state is not set.\n");
    v10 = _copy_current_fdr_ean_values(a4);
  }

  v11 = v10;
  if (!v10)
  {
    sub_335B8(@"fdr1");
    sub_335B8(@"fdr2");
    ramrod_log_msg("FDR parts array is NULL, clean both fdr1/fdr2 EAN data.\n");
LABEL_50:
    Mutable = 0;
    goto LABEL_51;
  }

  Count = CFDictionaryGetCount(v10);
  if (!Count)
  {
    ramrod_log_msg("FDR parts array is empty.\n");
    goto LABEL_50;
  }

  v13 = Count;
  v14 = calloc(Count, 8uLL);
  v15 = calloc(v13, 8uLL);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, "aptk");
  Value = CFDictionaryGetValue(v11, v16);
  if (Value)
  {
    v18 = Value;
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(v18);
    CC_SHA384(BytePtr, Length, md);
    v21 = CFDataCreate(kCFAllocatorDefault, md, 48);
    CFDictionaryGetKeysAndValues(v11, v14, v15);
    v22 = calloc(v13, 0x10uLL);
    v23 = CFDataGetLength(v21);
    v24 = v23 & 3;
    if (v23 <= 0)
    {
      v24 = -(-v23 & 3);
    }

    v64 = v23;
    if (v24)
    {
      v25 = v23 - v24 + 4;
    }

    else
    {
      v25 = v23;
    }

    *bytes = 0x169726466;
    valuePtr = 0;
    if (_copy_fdr_ean_values(@"fdr1", &valuePtr, 0))
    {
      v26 = valuePtr;
    }

    else
    {
      v26 = 0;
    }

    v27 = _copy_fdr_ean_values(@"fdr2", &valuePtr, 0);
    v28 = valuePtr;
    if (!v27)
    {
      v28 = 0;
    }

    if (v26 > v28)
    {
      v28 = v26;
    }

    if (v28 == -2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v28 + 1;
    }

    *&bytes[8] = v29;
    ramrod_log_msg("Will use generation count: %u\n", v29);
    *&bytes[12] = 32;
    LODWORD(v68) = CFDataGetLength(v21);
    DWORD1(v68) = v13;
    v63 = v25;
    DWORD2(v68) = v25 + 32;
    HIDWORD(v68) = 16 * v13;
    v30 = v25 + 32 + 16 * v13;
    v65 = v14;
    v66 = v22;
    if (v13 >= 1)
    {
      v31 = v22 + 8;
      v32 = v15;
      v33 = v14;
      v34 = v13;
      do
      {
        v35 = *v32++;
        v36 = CFDataGetLength(v35);
        v37 = v36;
        if (v36 <= 0)
        {
          v38 = -(-v36 & 3);
        }

        else
        {
          v38 = v36 & 3;
        }

        if (v38)
        {
          v39 = v36 - v38 + 4;
        }

        else
        {
          v39 = v36;
        }

        v40 = *v33++;
        valuePtr = 0;
        CFNumberGetValue(v40, kCFNumberSInt32Type, &valuePtr);
        *(v31 - 2) = valuePtr;
        *(v31 - 1) = v30;
        *v31 = v37;
        v31 += 4;
        v30 += v39;
        --v34;
      }

      while (v34);
    }

    Mutable = CFDataCreateMutable(kCFAllocatorDefault, v30);
    CFDataAppendBytes(Mutable, bytes, 32);
    ramrod_log_msg("Added header.\n");
    v42 = CFDataGetBytePtr(v21);
    v43 = CFDataGetLength(v21);
    CFDataAppendBytes(Mutable, v42, v43);
    v44 = v63 - v64;
    if (v63 != v64)
    {
      CFDataIncreaseLength(Mutable, v44);
    }

    ramrod_log_msg("Added hash.\n", v44);
    CFDataAppendBytes(Mutable, v66, 16 * v13);
    ramrod_log_msg("Added payload table.\n");
    if (v13 >= 1)
    {
      for (i = 0; i != v13; ++i)
      {
        v46 = CFDataGetLength(v15[i]);
        v47 = CFDataGetBytePtr(v15[i]);
        CFDataAppendBytes(Mutable, v47, v46);
        v48 = v46 & 3;
        if (v46 <= 0)
        {
          v48 = -(-v46 & 3);
        }

        if (v48)
        {
          CFDataIncreaseLength(Mutable, 4 - v48);
        }

        ramrod_log_msg("Added element %ld. Size: %ld\n", i, v46);
      }
    }

    ramrod_log_msg("Success.\n");
    v14 = v65;
    if (v66)
    {
      free(v66);
    }

    if (!v65)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  ramrod_log_msg("Failed to load APTK key.\n");
  Mutable = 0;
  if (v14)
  {
LABEL_45:
    free(v14);
  }

LABEL_46:
  if (v15)
  {
    free(v15);
  }

LABEL_51:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (!Mutable)
  {
    return 1;
  }

  v49 = sub_33448(@"fdr1");
  v50 = sub_33448(@"fdr2");
  v51 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v49 | v50)
  {
    v55 = MGCopyAnswer();
    v52 = v55;
    if (!v55)
    {
      v62 = "boot hash is NULL.\n";
      goto LABEL_72;
    }

    bytes[0] = 0;
    v56 = sub_44774(v55, bytes);
    v57 = v56;
    if (bytes[0] == 1)
    {
      if (CFEqual(v56, @"fdr1"))
      {
        v58 = @"fdr2";
      }

      else
      {
        v58 = @"fdr1";
      }

      *md = 0;
      if (sub_2E3CC(v58, md))
      {
        v59 = CFDataGetLength(*md);
        MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, v59, *md);
        *(CFDataGetMutableBytePtr(MutableCopy) + 2) = 1;
        CFDictionarySetValue(v51, @"fdr1", MutableCopy);
        CFDictionarySetValue(v51, @"fdr2", Mutable);
        CFRelease(*md);
        CFRelease(MutableCopy);
        goto LABEL_70;
      }

      sub_335B8(@"fdr1");
      sub_335B8(@"fdr2");
      v61 = v51;
      v57 = @"fdr1";
    }

    else
    {
      v61 = v51;
    }

    CFDictionarySetValue(v61, v57, Mutable);
LABEL_70:
    if (sub_33250(v51, 0, 0, 0))
    {
      goto LABEL_54;
    }

    goto LABEL_71;
  }

  ramrod_log_msg("fdr1/2 are blank, writing bank 1 and returning.\n");
  CFDictionarySetValue(v51, @"fdr1", Mutable);
  v52 = 0;
  if (!sub_33250(v51, 0, 0, 0))
  {
LABEL_71:
    v62 = "Write FDR versioned EAN failed.\n";
LABEL_72:
    sub_D95CC(v62, v51, v52);
    v53 = 0;
    goto LABEL_55;
  }

LABEL_54:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  ramrod_log_msg("Wrote staged FDR EAN key.\n");
  v53 = 1;
LABEL_55:
  CFRelease(Mutable);
  return v53;
}

uint64_t sub_4093C(uint64_t a1)
{
  result = sub_3D31C(@"FDR EAN", sub_3F910, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_40994(uint64_t a1)
{
  result = sub_3D31C(@"BasebandManifestCheck", sub_409EC, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_409EC(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  cf = 0;
  v63 = 0;
  v61 = 0;
  ramrod_log_msg("entering %s\n", "perform_manifest_check_baseband");
  if (!ramrod_device_has_baseband(v8))
  {
    ramrod_log_msg("operation not supported\n");
    return 1;
  }

  (*(a2 + 8))(16, 0, a3);
  dylib = ramrod_update_get_dylib(@"Baseband");
  v10 = dylib;
  if (dylib)
  {
    ramrod_log_msg("opening %s\n", dylib);
    v10 = dlopen(v10, 261);
    if (v10)
    {
      CStringPtr = CFStringGetCStringPtr(@"Baseband", 0x8000100u);
      if (ramrod_copy_updater_functions(v10, CStringPtr, &v63, a4, v12, v13, v14, v15))
      {
        if (*v63)
        {
          if (*(v63 + 2))
          {
            if (a1)
            {
              v16 = CFStringGetCStringPtr(@"Baseband", 0x8000100u);
              v20 = ramrod_updater_copy_options(v16, *(a3 + 8), a1, sub_44870, &cf, v17, v18, v19);
              a1 = v20;
              if (v20)
              {
                Value = CFDictionaryGetValue(v20, @"Options");
                v22 = Value;
                if (Value)
                {
                  if (CFDictionaryContainsKey(Value, @"APTicket"))
                  {
                    v10 = 0;
                  }

                  else
                  {
                    v10 = ramrod_ticket_copy();
                    if (v10)
                    {
                      ramrod_log_msg("populating AP ticket for updater\n");
                      CFDictionarySetValue(v22, @"APTicket", v10);
                    }
                  }

                  AMSupportCFDictionarySetBoolean();
                  Length = CFStringGetLength(@"Baseband");
                  v22 = malloc(Length + 1);
                  if (v22)
                  {
                    v47 = CFStringGetLength(@"Baseband");
                    if (CFStringGetCString(@"Baseband", v22, v47 + 1, 0x8000100u))
                    {
                      ramrod_log_msg("creating BasebandUpdater obj\n");
                      v48 = (*v63)(a1, sub_32D20, v22, &cf);
                      v31 = v48;
                      if (v48)
                      {
                        if ((*(v63 + 2))(v48, @"performManifestCheck", 0, &v61, &cf))
                        {
                          (*(a2 + 8))(16, 100, a3);
                          v23 = 1;
                          goto LABEL_22;
                        }

                        ramrod_log_msg("failed to perform manifest check on BasebandUpdater\n");
                        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1024, cf, @"%s: failed to perform manifest check on BasebandUpdater", v58, v59, v60, "perform_manifest_check_baseband");
                      }

                      else
                      {
                        ramrod_log_msg("failed to create BasebandUpdater obj\n");
                        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1013, cf, @"%s: failed to create BasebandUpdater obj", v55, v56, v57, "perform_manifest_check_baseband");
                      }

                      v23 = 0;
                      goto LABEL_22;
                    }

                    ramrod_log_msg("failed to populate baseband updater context object\n");
                    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: failed to populate baseband updater context object", v52, v53, v54, "perform_manifest_check_baseband");
                  }

                  else
                  {
                    ramrod_log_msg("malloc failed for baseband updater context object\n");
                    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: malloc failed for baseband updater context object", v49, v50, v51, "perform_manifest_check_baseband");
                  }

                  v23 = 0;
                  v31 = 0;
                  goto LABEL_22;
                }

                ramrod_log_msg("Missing updater options - this is fatal\n");
                ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1022, cf, @"%s: failed to copy updater options", v43, v44, v45, "perform_manifest_check_baseband");
                v23 = 0;
                v31 = 0;
                goto LABEL_21;
              }

              ramrod_log_msg("failed to copy updater options\n");
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1022, cf, @"%s: failed to copy updater options", v40, v41, v42, "perform_manifest_check_baseband");
            }

            else
            {
              ramrod_log_msg("invalid options\n");
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: invalid options", v37, v38, v39, "perform_manifest_check_baseband");
            }

            v23 = 0;
            v31 = 0;
LABEL_20:
            v22 = 0;
LABEL_21:
            v10 = 0;
            goto LABEL_22;
          }

          ramrod_log_msg("invalid execute cmd updater function\n");
          v35 = @"%s: invalid execute cmd updater function";
        }

        else
        {
          ramrod_log_msg("invalid create updater function\n");
          v35 = @"%s: invalid create updater function";
        }
      }

      else
      {
        ramrod_log_msg("failed to copy updater functions\n");
        v35 = @"%s: failed to copy updater functions";
      }

      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, v35, v32, v33, v34, "perform_manifest_check_baseband");
      v23 = 0;
      v31 = 0;
      a1 = 0;
      goto LABEL_20;
    }

    v27 = dlerror();
    ramrod_log_msg("updater library not found: %s\n", v27);
    dlerror();
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: updater library not found: %s", v28, v29, v30, "perform_manifest_check_baseband");
  }

  else
  {
    ramrod_log_msg("failed to prep perform_manifest_check_baseband\n");
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: failed to prep perform_manifest_check_baseband", v24, v25, v26, "perform_manifest_check_baseband");
  }

  v23 = 0;
  v31 = 0;
  a1 = 0;
  v22 = 0;
LABEL_22:
  if (v63)
  {
    free(v63);
    v63 = 0;
  }

  if (v22)
  {
    free(v22);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (a1)
  {
    CFRelease(a1);
  }

  if (v61)
  {
    CFRelease(v61);
    v61 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v23;
}

NSURL *ramrod_copy_active_preboot_path_url()
{
  v0 = objc_autoreleasePoolPush();
  bzero(v6, 0x400uLL);
  bzero(v5, 0x400uLL);
  if (ramrod_get_preboot_partition_device_node(v5, 0x400uLL) && !ramrod_get_mount_path(v5, v6, 0x400uLL) && (v3 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:v6]], (v4 = [NSString stringWithContentsOfURL:[(NSURL *)v3 URLByAppendingPathComponent:@"active"] encoding:1 error:0]) != 0))
  {
    v1 = [(NSURL *)v3 URLByAppendingPathComponent:v4 isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t sub_410A8(const char *a1, const void *a2, int a3)
{
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/active", a1);
  if (a3)
  {
    ramrod_log_msg("%s: Creating preboot folder heirarchy: %s\n", "_ramrod_write_active_nsih_file", a1);
    ramrod_create_preboot_folder_hierarchy(a1);
  }

  ramrod_log_msg("%s: writing %s\n", "_ramrod_write_active_nsih_file", __str);
  v6 = ramrod_ticket_copy_hash_string(a2, 0);
  if (!v6)
  {
    ramrod_log_msg("%s: failed to copy ticket hash string\n", "_ramrod_write_active_nsih_file");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, v6, 0x8000100u, 0);
  if (!ExternalRepresentation)
  {
    ramrod_log_msg("%s: failed to create nsih string data\n", "_ramrod_write_active_nsih_file");
    CFRelease(v7);
    return 0xFFFFFFFFLL;
  }

  v9 = ExternalRepresentation;
  v10 = ramrod_write_data_to_file_with_class(ExternalRepresentation, __str, -1);
  if (v10)
  {
    ramrod_log_msg("%s: failed to write active file\n", "_ramrod_write_active_nsih_file");
  }

  CFRelease(v7);
  CFRelease(v9);
  return v10;
}

uint64_t ramrod_populate_preboot_volume()
{
  v0 = off_1AD4C8();
  memset(v20, 0, sizeof(v20));
  bzero(v19, 0x400uLL);
  bzero(v18, 0x3FBuLL);
  qmemcpy(v17, "/mnt9", sizeof(v17));
  bzero(v16, 0x400uLL);
  ramrod_get_system_partition_device_node(v20, 0x20uLL);
  if (!ramrod_get_mount_path(v20, v19, 0x400uLL) || !ramrod_get_snapshot_mount_path(v20, v19, 0x400uLL))
  {
    v2 = ramrod_mount_filesystem_no_fsck_opt_err(v0, v17, 0, 0);
    if (v2)
    {
      v1 = v2;
      ramrod_log_msg("unable to mount preboot volume\n");
      return v1;
    }

    v3 = ramrod_copy_preboot_path(v2, v17, 0, 0);
    if (v3)
    {
      v4 = v3;
      if (CFStringGetCString(v3, v16, 1024, 0x8000100u))
      {
        if (ramrod_create_preboot_folder_hierarchy(v17))
        {
          v1 = 11;
        }

        else
        {
          ramrod_log_msg("Installing to path %s\n", v16);
          v6 = copyfile_state_alloc();
          if (v6)
          {
            v7 = v6;
            if (copyfile_state_set(v6, 6u, sub_41798))
            {
              ramrod_log_msg("failed to set copyfile callback\n");
              v8 = 0;
              v1 = 1;
            }

            else
            {
              v9 = 0;
              while (1)
              {
                bzero(v15, 0x400uLL);
                bzero(__str, 0x400uLL);
                bzero(to, 0x400uLL);
                bzero(path, 0x400uLL);
                v10 = off_1A99B8[v9];
                if (!basename_r(v10, v15) || (snprintf(__str, 0x400uLL, "%s/%s", v19, v10), snprintf(to, 0x400uLL, "%s/%s", v16, v10), !dirname_r(to, path)))
                {
                  ramrod_log_msg("unable to parse '%s'\n");
                  goto LABEL_32;
                }

                v11 = mkpath_np(path, 0x1C0u);
                if (v11)
                {
                  if (v11 != 17)
                  {
                    break;
                  }
                }

                if (copyfile(__str, to, v7, 0xC800Fu))
                {
                  if (*__error() != 2)
                  {
                    __error();
                    ramrod_log_msg("failed to copy '%s' to '%s': %d\n");
                    goto LABEL_32;
                  }

                  ramrod_log_msg("boot object '%s' does not exist, skipping\n", __str);
                }

                if (++v9 == 5)
                {
                  v8 = ramrod_ticket_copy();
                  v1 = sub_410A8(v17, v8, 0);
                  goto LABEL_33;
                }
              }

              ramrod_log_msg("unable to create directory %s: %d\n");
LABEL_32:
              v8 = 0;
              v1 = 0xFFFFFFFFLL;
            }

LABEL_33:
            copyfile_state_free(v7);
            CFRelease(v4);
            v4 = v8;
            if (!v8)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v1 = 18;
            ramrod_log_msg("failed to allocate copyfile state\n");
          }
        }
      }

      else
      {
        v1 = 11;
        ramrod_log_msg("unable to convert preboot path to string");
      }

      CFRelease(v4);
    }

    else
    {
      v1 = 11;
    }

LABEL_13:
    ramrod_unmount_filesystem(v17);
    return v1;
  }

  ramrod_log_msg("Failed to find system volume mount point\n");
  return 60;
}

uint64_t ramrod_create_preboot_folder_hierarchy(const char *a1)
{
  v3 = open(a1, 0x100000);
  if (v3 == -1)
  {
    v8 = __error();
    v1 = *v8;
    ramrod_log_msg("unable to open preboot volume: %s (%d)\n", a1, *v8);
  }

  else
  {
    v4 = v3;
    bzero(__str, 0x400uLL);
    v5 = 0;
    while (1)
    {
      snprintf(__str, 0x400uLL, "%s%s%s", "", "", off_1A99E0[v5]);
      v6 = mkpathat_np(v4, __str, 0x1FFu);
      v7 = v6;
      if (v6 && v6 != 17)
      {
        ramrod_log_msg("unable to create folder on preboot: %s (%d)\n", __str, v6);
        v1 = v7;
      }

      if (v7 != 17 && v7)
      {
        break;
      }

      if (++v5 == 4)
      {
        v1 = 0;
        break;
      }
    }

    if (close(v4) == -1)
    {
      sub_D9650();
    }
  }

  return v1;
}

uint64_t sub_41798(int a1, int a2, int a3, char *a4, const char *a5)
{
  if (a2 == 3)
  {
    if (a4)
    {
      ramrod_log_msg("copyfile error during %d processing %s\n");
    }

    else
    {
      ramrod_log_msg("copyfile error during %d\n");
    }

    return 2;
  }

  else
  {
    result = 0;
    if (a1 == 1 && a2 == 1)
    {
      memset(&v8, 0, sizeof(v8));
      if (lstat(a4, &v8) || (v8.st_mode & 0xF000) != 0xA000)
      {
        if (lstat(a5, &v8))
        {
          return 0;
        }

        ramrod_log_msg("%s already exists\n");
      }

      else
      {
        ramrod_log_msg("skipping symlink %s\n");
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_41884(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      sub_D9650();
    }
  }

  return result;
}

BOOL ramrod_get_trusted_img4_payload(const __CFData *a1, const __CFData *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  v11 = a3;
  if (!sub_D5200(2, 14, 0, 0))
  {
    ramrod_log_msg("%s: img4_firmware_t is not available\n");
    return 0;
  }

  v22 = a5;
  v23 = a6;
  v24 = 0;
  v25 = 0;
  v21[0] = HIBYTE(v11);
  v21[1] = BYTE2(v11);
  v21[2] = BYTE1(v11);
  v21[3] = v11;
  v21[4] = 0;
  v14 = img4_chip_select_effective_ap();
  v26 = 0u;
  v27 = 0u;
  if (a4)
  {
    ramrod_log_msg("using custom manifest hash to verify '%s' (0x%08x)\n", v21, v11);
    if (_img4_runtime_restore != 5)
    {
      ramrod_log_msg("img4_runtime_t struct version has changed (found %d, built against %d)\n");
      return 0;
    }

    v15 = img4_chip_select_personalized_ap();
    *&v26 = v15;
    if (sub_D5200(2, 14, 0, 0))
    {
      if (v15 == &_img4_chip_ap_sha2_384)
      {
        v16 = &v27;
        *(&v26 + 1) = &_img4_chip_ap_reduced;
        a4 = 2;
      }

      else
      {
        v16 = (&v26 + 8);
        a4 = 1;
      }

      if (v15 == &_img4_chip_ap_hybrid)
      {
        ++a4;
        *v16 = &_img4_chip_ap_hybrid_medium;
      }
    }

    else
    {
      a4 = 1;
    }

    if (sub_D5200(2, 15, 0, 0) && (v15 == &_img4_chip_ap_vma2 || v15 == &_img4_chip_ap_vma2_clone))
    {
      *(&v26 + a4++) = &_img4_chip_ap_reduced;
    }
  }

  *(&v26 + a4) = v14;
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (v14 == &_img4_chip_ap_hybrid_relaxed || v14 == &_img4_chip_ap_hybrid || v14 == &_img4_chip_ap_hybrid_medium || v14 == &_img4_chip_x86 || v14 == &_img4_chip_x86_software_8012)
  {
    ramrod_log_msg("Clearing IMG4_FIRMWARE_SUBSEQUENT_STAGE flag for x86\n");
    if (!a2)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (a2)
  {
LABEL_25:
    img4_firmware_new();
    ramrod_log_msg("%s: Attaching in passed in im4m to fw object\n", "ramrod_get_trusted_img4_payload");
    if (CFDataGetBytePtr(a2))
    {
      if (CFDataGetLength(a2) > 0)
      {
        img4_firmware_attach_manifest();
        goto LABEL_28;
      }

      ramrod_log_msg("%s: im4m has invalid length\n");
    }

    else
    {
      ramrod_log_msg("%s: Failed to get byte ptr for im4m\n");
    }

    return 0;
  }

LABEL_23:
  ramrod_log_msg("%s: im4m is NULL. Assuming payload with attached manifest\n", "ramrod_get_trusted_img4_payload");
  img4_firmware_new();
LABEL_28:
  AMSupportSafeRelease();
  v24 = 0;
  LOBYTE(v25) = 0;
  img4_firmware_execute();
  if (v25)
  {
    v17 = 1;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = v18;
      if (a4 == v18)
      {
        break;
      }

      ++v18;
      AMSupportSafeRelease();
      v24 = 0;
      LOBYTE(v25) = 0;
      img4_firmware_execute();
    }

    while (v25 != 1);
    v17 = v19 < a4;
  }

  img4_firmware_destroy();
  if (a7 && !v17 && v24)
  {
    *a7 = CFRetain(v24);
  }

  AMSupportSafeRelease();
  return v17;
}

uint64_t sub_41D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11)
  {
    v5 = *(a1 + 168);
    Length = CFDataGetLength(v5);
    if (Length <= 0x30)
    {
      v19.length = Length;
      *a4 = 0;
      *(a4 + 8) = Length;
      v19.location = 0;
      CFDataGetBytes(v5, v19, (a4 + 16));
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      *__str = 0u;
      v12 = 0u;
      if (*(a4 + 8))
      {
        v9 = 0;
        v10 = __str;
        do
        {
          snprintf(v10, 3uLL, "%02X", *(a4 + 16 + v9++));
          v10 += 2;
        }

        while (*(a4 + 8) > v9);
      }

      ramrod_log_msg("%s: returning custom CHMH = %s\n", "_ramrod_img4_manifest_hash_get_identifier_digest", __str);
      return 0;
    }

    else
    {
      return 34;
    }
  }

  else
  {
    v8 = *(*(a1 + 160) + 80);

    return v8();
  }
}

void sub_41EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (*a4 || *(a4 + 8))
    {
      bytes = img4_image_get_bytes();
      v6 = bytes;
      v7 = *(a4 + 8);
      if (v7)
      {
        *v7 = *(bytes + 16);
      }

      v8 = *a4;
      if (*a4)
      {
        v9 = *(bytes + 16);
        v10 = malloc(v9);
        memcpy(v10, *(v6 + 8), v9);
        *v8 = v10;
      }
    }

    v11 = 1;
  }

  else
  {
    ramrod_log_msg("img4_firmware_execute failed: %d\n", a3);
    ramrod_create_error_internal((a4 + 16), kCFErrorDomainPOSIX, a3, 0, "img4_firmware_execute failed");
    v11 = 0;
  }

  *(a4 + 24) = v11;
}

uint64_t ramrod_verify_manifest_for_mountpoint_internal(const char *a1, const char *a2, const __CFData *a3, const __CFData *a4, int a5, int a6, int a7, CFErrorRef *a8)
{
  ramrod_execute_config_alloc();
  v17 = v16;
  ramrod_execute_config_set_log_output(v16);
  if (!a1)
  {
    sub_D96E8(a8, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_17;
  }

  if (!a2 && (a7 & 1) == 0)
  {
    sub_D9670(a8, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_17;
  }

  if (!a3)
  {
    sub_D96AC(a8, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_17;
  }

  if (a7)
  {
    ramrod_log_msg("Skipping mtree\n");
  }

  else
  {
    ramrod_log_msg("Running mtree and saving output to %s \n");
  }

  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79[0] = "/usr/sbin/mtree";
  v79[1] = "-p";
  v84 = 0;
  v79[2] = a1;
  v48 = 0;
  v49 = 0;
  if (a6)
  {
    *&v80 = "-r";
    v25 = 4;
  }

  else
  {
    v25 = 3;
  }

  v79[v25] = "-m";
  v79[v25 + 1] = a2;
  if (a5)
  {
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    if (sub_42378(a3, a4, 1836284275, 0, 0, &v49, &v48, a8))
    {
      v26 = kCFAllocatorDefault;
      v28 = v48;
      v27 = v49;
      v29 = &kCFAllocatorMalloc;
      goto LABEL_23;
    }

LABEL_17:
    v35 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v78 = 0;
  v76 = 0uLL;
  v77 = 0uLL;
  v74 = 0uLL;
  v75 = 0uLL;
  v72 = 0uLL;
  v73 = 0uLL;
  v70 = 0uLL;
  v71 = 0uLL;
  v68 = 0uLL;
  v69 = 0uLL;
  v66 = 0uLL;
  v67 = 0uLL;
  v64 = 0uLL;
  v65 = 0uLL;
  v62 = 0uLL;
  v63 = 0uLL;
  v60 = 0uLL;
  v61 = 0uLL;
  v58 = 0uLL;
  v59 = 0uLL;
  v56 = 0uLL;
  v57 = 0uLL;
  v54 = 0uLL;
  v55 = 0uLL;
  v52 = 0uLL;
  v53 = 0uLL;
  v50 = 0uLL;
  v51 = 0uLL;
  CFDataGetBytePtr(a3);
  CFDataGetLength(a3);
  inited = Img4DecodeInitPayload();
  if (inited)
  {
    v31 = inited;
    CFDataGetBytePtr(a3);
    CFDataGetLength(a3);
    if (Img4DecodeInit())
    {
      ramrod_log_msg("Failed to parse mtree img4 contents: %d\n", v31);
      ramrod_create_error_cf(a8, @"RamrodErrorDomain", 3, 0, @"%s: Failed to parse mtree img4 contents", v32, v33, v34, "ramrod_verify_manifest_for_mountpoint_internal");
      goto LABEL_17;
    }

    ramrod_log_msg("WARNING: Using signed manifest without validating\n");
  }

  v27 = *(&v58 + 1);
  v28 = v59;
  v48 = v59;
  v49 = *(&v58 + 1);
  v26 = kCFAllocatorDefault;
  v29 = &kCFAllocatorNull;
LABEL_23:
  v37 = CFDataCreateWithBytesNoCopy(v26, v27, v28, *v29);
  mkdir("/mnt5/manifest_and_db", 0x1EDu);
  v38 = ramrod_unarchive_dir("/mnt5/manifest_and_db", v37);
  if (v38)
  {
    v39 = v38;
    ramrod_log_msg("Failed to unarchive data: %d\n", v38);
    ramrod_create_error_cf(a8, @"RamrodErrorDomain", 3, 0, @"Failed to unarchive manifest data: %d", v40, v41, v42, v39);
    goto LABEL_17;
  }

  if ((a7 & 1) == 0)
  {
    v79[v25 + 2] = "-f";
    v79[v25 + 3] = "/mnt5/manifest_and_db/mtree.txt";
    v79[v25 + 4] = 0;
    v43 = ramrod_execute_command_with_config(v79, v17);
    if (v43)
    {
      v44 = v43;
      ramrod_log_msg("Execution of mtree returned a error: %d\n", v43);
      ramrod_create_error_cf(a8, @"RamrodErrorDomain", 3, 0, @"Execution of mtree returned a error: %d", v45, v46, v47, v44);
      goto LABEL_17;
    }

    ramrod_log_msg("Successfully returned after running mtree\n");
  }

  v35 = 0;
LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v17)
  {
    ramrod_execute_config_free(v17);
  }

  return v35;
}

BOOL sub_42378(const __CFData *a1, const __CFData *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  v18 = 0;
  v19 = 0;
  if (ramrod_get_trusted_img4_payload(a1, a2, a3, a4, a6, a7, &v19))
  {
    v15 = 0;
    trusted_img4_payload = 1;
  }

  else if (a5)
  {
    trusted_img4_payload = ramrod_get_trusted_img4_payload(a1, a2, a3, a5, a6, a7, &v18);
    v15 = v18;
  }

  else
  {
    v15 = 0;
    trusted_img4_payload = 0;
  }

  if (v19)
  {
    v15 = v19;
  }

  if (a8 && !trusted_img4_payload && v15)
  {
    *a8 = CFRetain(v15);
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return trusted_img4_payload;
}

uint64_t sub_42494(const char *a1, const char *a2, const char *a3, const __CFData *a4, const __CFData *a5, void *a6, int a7, int a8, CFErrorRef *a9)
{
  v57 = 0;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  ramrod_execute_config_alloc();
  v17 = v16;
  ramrod_execute_config_set_log_output(v16);
  v49 = "/System/Library/Filesystems/apfs.fs/apfs_sealvolume";
  if (!a1)
  {
    sub_D979C(a9, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_40;
  }

  if (a4 && a6)
  {
    sub_D9760(a9, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_40;
  }

  if (!a4 && a8)
  {
    sub_D9724(a9, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_40;
  }

  if (a2)
  {
    ramrod_log_msg("Will run apfs_sealvolume to seal device node %s using mtree output %s\n", a1, a2);
    *&v50 = "-R";
    *(&v50 + 1) = a2;
    v25 = 3;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 1;
    if (a4)
    {
LABEL_8:
      if (a8)
      {
        AMSupportSafeRelease();
        AMSupportSafeRelease();
        if (a5)
        {
          ramrod_log_msg("%s: Detected Root hash with im4p detached manifest\n", "ramrod_seal_system_volume_internal");
          (&v49)[v25++] = "-P";
        }

        else
        {
          ramrod_log_msg("%s: Assuming root hash payload with combined manifest\n", "ramrod_seal_system_volume_internal");
        }

        if (!sub_42378(a4, a5, 1769175411, 0, 0, 0, 0, a9))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v48 = 0;
        memset(v47, 0, sizeof(v47));
        CFDataGetBytePtr(a4);
        CFDataGetLength(a4);
        inited = Img4DecodeInitPayload();
        if (inited)
        {
          v29 = inited;
          CFDataGetBytePtr(a4);
          CFDataGetLength(a4);
          if (Img4DecodeInit())
          {
            ramrod_log_msg("Failed to parse root hash img4 contents: %d\n", v29);
            v33 = *a9;
            v34 = @"%s: Failed to parse root hash img4 contents";
LABEL_38:
            v45 = "ramrod_seal_system_volume_internal";
            goto LABEL_39;
          }

          ramrod_log_msg("WARNING: Using signed root hash without validating\n");
        }

        else
        {
          (&v49)[v25++] = "-P";
        }
      }

      if (([(__CFData *)a4 writeToFile:[NSString atomically:"stringWithUTF8String:" stringWithUTF8String:?], 0]& 1) == 0)
      {
        ramrod_log_msg("Failed to write root hash\n");
        v33 = *a9;
        v34 = @"Failed to write root hash";
LABEL_39:
        ramrod_create_error_cf(a9, @"RamrodErrorDomain", 3, v33, v34, v30, v31, v32, v45);
LABEL_40:
        v39 = 0xFFFFFFFFLL;
        goto LABEL_41;
      }

      ramrod_log_msg("Verifying root hash at %s\n", "/mnt5/root_hash");
      (&v49)[v25] = "-I";
      v27 = v25 + 2;
      (&v49)[v25 + 1] = "/mnt5/root_hash";
      if (ramrod_os_release_is_internal())
      {
        v26 = "-a";
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  if (a6)
  {
    v26 = "/mnt5/root_hash";
    ramrod_log_msg("Saving root hash to %s\n", "/mnt5/root_hash");
    (&v49)[v25] = "-L";
    v27 = v25 + 2;
    (&v49)[v25 + 1] = "-M";
LABEL_26:
    (&v49)[v27] = v26;
    v27 = v25 + 3;
    goto LABEL_27;
  }

  v27 = v25;
LABEL_27:
  if (a7 && !access("/mnt5/manifest_and_db/digest.db", 4))
  {
    ramrod_log_msg("Using stashed hash DB\n");
    (&v49)[v27] = "-u";
    v35 = v27 + 2;
    (&v49)[v27 + 1] = "/mnt5/manifest_and_db/digest.db";
    should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
    if (a2 || !should_do_legacy_restored_internal_behaviors)
    {
      v27 += 2;
    }

    else
    {
      v27 += 3;
      (&v49)[v35] = "-m";
    }
  }

  if (a3)
  {
    v37 = v27 + 1;
    (&v49)[v27] = "-E";
    v27 += 2;
    (&v49)[v37] = a3;
  }

  (&v49)[v27] = "-d";
  (&v49)[v27 + 1] = "-v";
  (&v49)[v27 + 2] = a1;
  (&v49)[v27 + 3] = 0;
  v38 = ramrod_execute_command_with_config(&v49, v17);
  if (v38)
  {
    ramrod_log_msg("Execution of apfs_sealvolume returned a error %d\n", v38);
    v33 = *a9;
    v34 = @"%s: Failed to seal system volume";
    goto LABEL_38;
  }

  ramrod_log_msg("Successfully returned after running apfs_sealvolume\n");
  if (a6)
  {
    *&v47[0] = 0;
    v41 = [[NSData alloc] initWithContentsOfFile:+[NSString stringWithUTF8String:](NSString options:"stringWithUTF8String:" error:{"/mnt5/root_hash"), 0, v47}];
    if (!v41)
    {
      ramrod_create_error_cf(a9, @"RamrodErrorDomain", 11, *&v47[0], @"%s: Failed to read root hash file", v42, v43, v44, "ramrod_seal_system_volume_internal");
      goto LABEL_40;
    }

    v39 = 0;
    *a6 = v41;
  }

  else
  {
    v39 = 0;
  }

LABEL_41:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v17)
  {
    ramrod_execute_config_free(v17);
  }

  return v39;
}

uint64_t ramrod_split_data_volume(const char *a1, const char *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = 0;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = "/System/Library/Filesystems/apfs.fs/apfs_migrator";
  if (a1)
  {
    memset(v35, 0, sizeof(v35));
    if (ramrod_raw_device_for_block_device(a1, v35, 0x20uLL))
    {
      ramrod_log_msg("Failed to convert block device path %s into character device node path\n", a1);
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 3, *a3, @"%s: Failed to find raw data device", v11, v12, v13, "ramrod_split_data_volume");
    }

    else
    {
      should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
      if (should_do_legacy_restored_internal_behaviors)
      {
        *&v27 = "-I";
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      (&v26)[v16] = "-p";
      v17 = v16 + 2;
      (&v26)[v16 + 1] = "/mnt5/apfs_migrator_verification.log";
      if (a2)
      {
        (&v26)[v17] = "-M";
        (&v26)[v16 + 3] = "-m";
        v17 = v16 + 5;
        (&v26)[v16 | 4u] = a2;
      }

      v18 = v17 + 1;
      (&v26)[v17] = "-v";
      is_data_volume_split_required = ramrod_is_data_volume_split_required(should_do_legacy_restored_internal_behaviors, v15);
      v20 = v17 + 2;
      if (is_data_volume_split_required)
      {
        (&v26)[v18] = "-o";
        (&v26)[v20] = "createtmpcp";
        v20 = v17 + 3;
      }

      else
      {
        (&v26)[v18] = "-n";
      }

      (&v26)[v20] = v35;
      (&v26)[v20 + 1] = 0;
      ramrod_log_msg("Running apfs_migrator on data volume %s\n", a1);
      v21 = ramrod_execute_command(&v26);
      if (!v21)
      {
        ramrod_log_msg("Successfully returned after running apfs_migrator\n");
        ramrod_log_msg("Removing %s on success\n", "/mnt5/apfs_migrator_verification.log");
        unlink("/mnt5/apfs_migrator_verification.log");
        return 0;
      }

      ramrod_log_msg("Execution of apfs_migrator returned an error %d\n", v21);
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 7, *a3, @"%s: Failed to split data volume", v22, v23, v24, "ramrod_split_data_volume");
    }
  }

  else
  {
    sub_D97D8(a3, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ramrod_migrate_user_fsevents_if_needed(const char *a1, const char *a2)
{
  bzero(__str, 0x400uLL);
  bzero(path, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/.fseventsd", a1);
  snprintf(path, 0x400uLL, "%s/.fseventsd", a2);
  if (!access(path, 0))
  {
    ramrod_log_msg("%s exists, migration already done\n", path);
    ramrod_disable_fsevents_rescan_ramdisk_only(a2);
    return 0;
  }

  if (access(__str, 0))
  {
    ramrod_log_msg("%s absent, nothing to migrate\n", __str);
    return 0;
  }

  ramrod_create_directory_with_class(path, 448, 0, 0, -1, 1);
  v6[0] = "/usr/appleinternal/sbin/fsevents_migrator";
  v6[1] = "-src";
  v6[2] = __str;
  v6[3] = "-dst";
  v6[4] = path;
  v6[5] = "-truncatePrefix";
  v6[6] = "mobile/";
  v6[7] = 0;
  v4 = ramrod_execute_command(v6);
  if (v4)
  {
    removefile(path, 0, 1u);
  }

  else
  {
    ramrod_disable_fsevents_rescan(a2);
  }

  return v4;
}

uint64_t ramrod_usbcretimer_dfucheck()
{
  has_usbcretimer = _ramrod_device_has_usbcretimer(@"atcrt");
  v1 = _ramrod_device_has_usbcretimer(@"uatcrt");
  v2 = 1;
  if (off_1AD4B8 && has_usbcretimer)
  {
    v2 = AppleTypeCRetimerUpdaterDFUCheck() != 0;
  }

  if (off_1AD4B0 && v1)
  {
    v2 = (AppleTypeCRetimerUARPUpdaterDFUCheck() != 0) & v2;
  }

  byte_1C6BD0 = v2;
  return v2;
}

void sub_42EFC(const char *result, const char *a2)
{
  if (a2)
  {
    ramrod_log_msg("updater_log (%s): %s\n", result, a2);
  }
}

uint64_t sub_42F44(uint64_t a1, const __CFString *a2, _DWORD *a3)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {
    v7 = CStringPtr;
  }

  else
  {
    v7 = "????";
  }

  if (!a3)
  {
    sub_D9814();
  }

  if (!Mutable)
  {
    ramrod_log_msg("restoreInfo failed to alloc\n");
    return 0;
  }

  if (AMAuthInstallApImg4DecodeRestoreInfo())
  {
    ramrod_log_msg("WARNING: failed to read IM4R.\n");
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(Mutable, a2);
  if (!Value || (v9 = Value, v10 = CFGetTypeID(Value), v10 != CFNumberGetTypeID()))
  {
    ramrod_log_msg("WARNING: %s is missing or of invalid type.\n");
    goto LABEL_13;
  }

  if (!CFNumberGetValue(v9, kCFNumberSInt32Type, a3))
  {
    ramrod_log_msg("WARNING: failed to read %s cf number.\n");
    goto LABEL_13;
  }

  ramrod_log_msg("INFO: %s == %d\n", v7, *a3);
  v11 = 1;
LABEL_14:
  CFRelease(Mutable);
  return v11;
}

uint64_t sub_430C4(const __CFString *a1)
{
  v5 = 0;
  *buffer = 0;
  if (!a1)
  {
    ramrod_log_msg("key is NULL)\n");
    return 0;
  }

  if (CFStringGetLength(a1) != 4)
  {
    CFStringGetLength(a1);
    ramrod_log_msg("key is not 4 bytes (%lu).\n");
    return 0;
  }

  if (!CFStringGetCString(a1, buffer, 5, 0x8000100u))
  {
    ramrod_log_msg("CFStringGetCString failed on key.\n");
    return 0;
  }

  v2 = strlen(buffer);
  if (v2 != CFStringGetLength(a1))
  {
    strlen(buffer);
    ramrod_log_msg("strlen(bytes) returned %lu.\n");
    return 0;
  }

  return bswap32(*buffer);
}

void sub_43194(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key && value)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void sub_431B8(id a1)
{
  bzero(__s1, 0x400uLL);
  v1 = 1024;
  if (!sysctlbyname("kern.bootargs", __s1, &v1, 0, 0))
  {
    if (strstr(__s1, "-restore"))
    {
      byte_1C6BD1 = 1;
    }
  }
}

void sub_4325C()
{
  if (!ramrod_should_do_legacy_restored_behaviors() && qword_1C6BE0 != -1)
  {
    sub_D9840();
  }
}

void sub_43290(id a1)
{
  v1 = &byte_1C0609;
  v2 = 14;
  do
  {
    if (CFEqual(*(v1 - 25), @"update_rose"))
    {
      v3 = os_variant_uses_ephemeral_storage();
      if (v3)
      {
        ramrod_log_msg("ramrod_update running in limited environment\n");
      }

      else
      {
        ramrod_log_msg("ramrod_update running in normal env\n");
      }

      if (v3)
      {
        *v1 = 1;
      }
    }

    v1 += 48;
    --v2;
  }

  while (v2);
}

void sub_43330(const __CFString *a1, __CFData *a2, uint64_t a3)
{
  input = 0;
  v55 = 0;
  v56 = 0;
  output = 0;
  outputCnt = 1;
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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  if (a3)
  {
    if (*a3)
    {
      if (a1)
      {
        if (a2)
        {
          TypeID = CFDataGetTypeID();
          if (TypeID == CFGetTypeID(a2))
          {
            if (CFDataGetLength(a2) <= 0)
            {
              ramrod_log_msg("data is 0 bytes\n", v8);
            }

            else
            {
              v9 = *(a3 + 24);
              *(a3 + 24) = v9 + 1;
              v10 = *(a3 + 8);
              if (v10)
              {
                v11 = *(a3 + 32);
                if (v11 >= 1 && (v9 & 0x8000000000000000) == 0 && *(a3 + 16))
                {
                  (*(v10 + 8))(11, 100 * (v9 + 1) / v11);
                }
              }

              Length = CFDataGetLength(a2);
              v13 = -Length & 0xFFFLL;
              v14 = v13 + Length;
              MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, v13 + Length, a2);
              v16 = malloc(v13);
              v17 = v16;
              if (v16)
              {
                bzero(v16, v13);
                CFDataAppendBytes(MutableCopy, v17, v13);
                if (CFDataGetLength(MutableCopy) == v14)
                {
                  v18 = CFDataGetLength(MutableCopy);
                  BytePtr = CFDataGetBytePtr(MutableCopy);
                  if ((v18 & 0xFFF) != 0)
                  {
                    ramrod_log_msg("imageSize isn't %d-aligned.\n");
                  }

                  else
                  {
                    v20 = BytePtr;
                    if (*(a3 + 40))
                    {
                      if (Img4DecodeInit())
                      {
                        ramrod_log_msg("failed to decode img4, derstat=%d\n");
                      }

                      else if (Img4DecodeGetPayloadType())
                      {
                        ramrod_log_msg("failed to decode payload type, derstat=%d\n");
                      }

                      else
                      {
                        ramrod_log_msg("payloadType is empty\n");
                      }
                    }

                    else
                    {
                      v21 = sub_430C4(a1);
                      if (v21)
                      {
                        input = v21;
                        v55 = v20;
                        v56 = v18;
                        ramrod_log_msg("Writing EAN key %c%c%c%c, (%lu of %lu) imageSize=%llu\n", BYTE3(v21), WORD1(v21), v21 >> 8, v21, *(a3 + 24), *(a3 + 32), v18);
                        v22 = IOConnectCallMethod(*a3, 2u, &input, 3u, 0, 0, &output, &outputCnt, 0, 0);
                        goto LABEL_21;
                      }

                      ramrod_log_msg("payloadType is invalid\n");
                    }
                  }
                }

                else
                {
                  ramrod_log_msg("Final size isn't inputSize+paddingSize\n");
                }
              }

              else
              {
                ramrod_log_msg("someZeros is NULL\n");
              }
            }
          }

          else
          {
            ramrod_log_msg("data is not CFData\n", v7);
          }
        }

        else
        {
          ramrod_log_msg("data is NULL\n");
        }
      }

      else
      {
        ramrod_log_msg("key is NULL\n", a2);
      }
    }

    else
    {
      ramrod_log_msg("context->io_connection is NULL\n", a2);
    }
  }

  else
  {
    ramrod_log_msg("context is NULL\n", a2);
  }

  v22 = 5;
LABEL_21:
  AMSupportSafeRelease();
  AMSupportSafeFree();
  if (v22)
  {
    ramrod_log_msg("_write_ean_image failed kernResult=0x%x\n", v22);
    *(a3 + 41) = 0;
  }
}

void sub_436A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 objectForKeyedSubscript:@"DeviceName"];
  v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"ImageTag", "unsignedIntValue"}];
  v9 = [NSString stringWithFormat:@"%c%c%c%c", HIBYTE(v8), BYTE2(v8), BYTE1(v8), v8];
  if (![a2 objectForKeyedSubscript:@"NeedsUpdate"])
  {
    return;
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    v12 = kCFAllocatorDefault;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v10, v7);
  v12 = kCFAllocatorDefault;
  if (!Value)
  {
LABEL_7:
    Mutable = CFDictionaryCreateMutable(v12, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
LABEL_8:
  v14 = Mutable;
  if (*(a1 + 80))
  {
    ramrod_log_msg_cf(@"We're in a pre-FDR checkpoint. Adding the pre-FDR key.");
    CFDictionaryAddValue(v14, @"AHT_PRE_FDR_CHECKPOINT", kCFBooleanTrue);
  }

  ramrod_log_msg_cf(@"update options = %@", v14);
  v15 = AMAuthInstallApImg4GetEntryNameForType();
  if (v15 && (v16 = v15, ramrod_log_msg_cf(@"updating device %@[%@:%@]", v7, v9, v15), v17 = *(a1 + 48), v21.length = CFArrayGetCount(v17), v21.location = 0, CFArrayContainsValue(v17, v21, v16)) && (v18 = (*(*(a1 + 56) + 64))(*(a1 + 64), v16)) != 0)
  {
    v19 = (*(a1 + 72))([v7 UTF8String], v18, v14);
    if (v19)
    {
      mach_error_string(v19);
      AMSupportCreateErrorInternal();
      *a4 = 1;
    }

    else
    {
      ramrod_log_msg_cf(@"updating device %@[%@:%@] completed successfully", v7, v9, v16);
    }

    CFRelease(v14);

    AMSupportSafeRelease();
  }

  else
  {
    AMSupportCreateErrorInternal();
    *a4 = 1;

    CFRelease(v14);
  }
}

__CFData *sub_439C8(CFDictionaryRef theDict, uint64_t a2)
{
  *bytes = 0u;
  v26 = 0u;
  if (!theDict)
  {
    ramrod_log_msg("ibfwImages is NULL.\n", a2);
    goto LABEL_33;
  }

  v3 = a2;
  if (CFDictionaryGetCount(theDict) <= 0)
  {
    ramrod_log_msg("ibfwImages is empty.\n");
    goto LABEL_33;
  }

  Count = CFDictionaryGetCount(theDict);
  v5 = calloc(8uLL, Count);
  v6 = calloc(8uLL, Count);
  v7 = v6;
  if (!v5 || !v6)
  {
    ramrod_log_msg("calloc failed.\n");
    goto LABEL_33;
  }

  CFDictionaryGetKeysAndValues(theDict, v5, v6);
  v8 = ramrod_copy_manifest_digest_data_from_img4(*v7);
  if (!v8)
  {
    ramrod_log_msg("bootHash is NULL.\n");
    goto LABEL_33;
  }

  HIDWORD(v26) = 0;
  *(&v26 + 4) = 0;
  *bytes = 1;
  v27 = 0;
  if (v3)
  {
    sub_43D50(@"ifw1", &v27 + 1, 0);
    sub_43D50(@"ifw2", &v27, 0);
    v9 = v27;
  }

  else
  {
    sub_43D50(@"nefw", &v27 + 1, 0);
    v9 = 0;
  }

  v10 = HIDWORD(v27);
  if (HIDWORD(v27) == 16777214 || v9 == 16777214)
  {
    ramrod_log_msg("Hit the ceiling.  Nuking to restart the generation clock.\n");
    if (v3)
    {
      sub_335B8(@"ifw1");
      v11 = @"ifw2";
    }

    else
    {
      v11 = @"nefw";
    }

    sub_335B8(v11);
    v9 = 0;
    v10 = 0;
  }

  if (v10 > v9)
  {
    v9 = v10;
  }

  *&bytes[4] = v9 + 1;
  ramrod_log_msg("Will use Generation %u.\n", v9 + 1);
  *&bytes[12] = 32;
  LODWORD(v26) = CFDataGetLength(v8);
  *&bytes[8] = v26 + 32;
  v12 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
  if (!v12)
  {
    ramrod_log_msg("headerData is NULL.\n");
    goto LABEL_33;
  }

  MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, v12);
  if (!MutableCopy)
  {
    ramrod_log_msg("ibfwBlob is NULL.\n");
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v8);
  CFDataAppendBytes(MutableCopy, BytePtr, Length);
  if (Count >= 1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = CFGetTypeID(v7[v16]);
      if (v18 != CFDataGetTypeID())
      {
        break;
      }

      v19 = CFDataGetBytePtr(v7[v16]);
      v20 = CFDataGetLength(v7[v16]);
      CFDataAppendBytes(MutableCopy, v19, v20);
      v17 += CFDataGetLength(v7[v16++]);
      if (Count == v16)
      {
        goto LABEL_25;
      }
    }

    ramrod_log_msg("Item %lu not CFData.\n");
    goto LABEL_32;
  }

  v17 = 0;
LABEL_25:
  if (v17 <= 0)
  {
    v21 = -(-v17 & 3);
  }

  else
  {
    v21 = v17 & 3;
  }

  v22 = 4 - v21;
  CFDataIncreaseLength(MutableCopy, 4 - v21);
  if (((v22 + v17) & 3) != 0)
  {
    ramrod_log_msg("Payload not aligned.\n", v24);
LABEL_32:
    CFRelease(MutableCopy);
LABEL_33:
    MutableCopy = 0;
    goto LABEL_30;
  }

  if ((v26 & 3) != 0)
  {
    ramrod_log_msg("Hash not aligned.\n");
    goto LABEL_32;
  }

LABEL_30:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  AMSupportSafeFree();
  return MutableCopy;
}

uint64_t sub_43D50(const __CFString *a1, _DWORD *a2, CFTypeRef *a3)
{
  theData = 0;
  if (!a1)
  {
    ramrod_log_msg("ifwKey is NULL\n", a2, a3);
    LOBYTE(v12) = 0;
    goto LABEL_18;
  }

  if (!sub_2E3CC(a1, &theData))
  {
    ramrod_log_msg("Key not found.\n");
LABEL_17:
    LOBYTE(v12) = 0;
    goto LABEL_18;
  }

  if (!theData)
  {
    ramrod_log_msg("ibfwBlob is NULL.\n");
    goto LABEL_17;
  }

  v6 = MGCopyAnswer();
  if (!v6)
  {
    ramrod_log_msg("bootHash is NULL.\n");
    goto LABEL_17;
  }

  Length = CFDataGetLength(v6);
  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    ramrod_log_msg("buffer is NULL.\n");
    goto LABEL_17;
  }

  v9 = BytePtr;
  if (CFDataGetLength(theData) <= 0x20)
  {
    ramrod_log_msg("ibfwBlob too small.\n");
LABEL_28:
    ramrod_log_msg("iBootEAN key fails sanity checks, attempting to nuke.\n");
    sub_335B8(a1);
    goto LABEL_17;
  }

  if (*v9 != 1)
  {
    ramrod_log_msg("Version mismatch.\n");
    goto LABEL_28;
  }

  if (!*(v9 + 1))
  {
    ramrod_log_msg("Generation is 0.\n");
    goto LABEL_28;
  }

  v10 = *(v9 + 4);
  if (Length != v10)
  {
    ramrod_log_msg("Hashsize is not %lu.\n");
    goto LABEL_28;
  }

  v11 = (*(v9 + 3) + v10);
  if (CFDataGetLength(theData) < v11)
  {
    ramrod_log_msg("Bad Hash offset.\n");
    goto LABEL_28;
  }

  v12 = *(v9 + 1);
  v13 = CFDataCreate(kCFAllocatorDefault, &v9[*(v9 + 3)], *(v9 + 4));
  if (v13)
  {
    if (a2)
    {
      *a2 = v12;
    }

    if (a3)
    {
      *a3 = CFRetain(v13);
    }
  }

  else
  {
    ramrod_log_msg("hashData is NULL.\n");
  }

LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v12;
}

uint64_t sub_43F34(const __CFString *a1, const __CFString *a2)
{
  connect = 0;
  input = 0;
  v14 = 0;
  output = 0;
  outputCnt = 1;
  if (!a1)
  {
    ramrod_log_msg("key1 is NULL.\n", a2);
LABEL_19:
    LODWORD(v2) = 0;
    goto LABEL_24;
  }

  v2 = a2;
  if (a2)
  {
    v3 = sub_430C4(a1);
    if (!v3)
    {
      ramrod_log_msg("payloadType1 is invalid.\n");
      LODWORD(v2) = 0;
      goto LABEL_10;
    }

    v4 = sub_430C4(v2);
    if (v4)
    {
      v6 = v4;
      v7 = IOServiceMatching("AppleNVMeEAN");
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
      LODWORD(v2) = MatchingService;
      if (MatchingService)
      {
        if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
        {
          ramrod_log_msg("IOServiceOpen returned result=0x%04x.\n");
        }

        else if (connect)
        {
          input = v3;
          v14 = v6;
          ramrod_log_msg("Swapping EAN key %c%c%c%c and %c%c%c%c\n", BYTE3(v3), WORD1(v3), v3 >> 8, v3, BYTE3(v6), WORD1(v6), v6 >> 8, v6);
          if (!IOConnectCallMethod(connect, 6u, &input, 2u, 0, 0, &output, &outputCnt, 0, 0))
          {
            v3 = 1;
            goto LABEL_10;
          }

          ramrod_log_msg("swapImage failed, kernResult = 0x%x.\n");
        }

        else
        {
          ramrod_log_msg("IOServiceOpen returned IO_OBJECT_NULL.\n");
        }
      }

      else
      {
        ramrod_log_msg("IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName.\n");
      }

      goto LABEL_24;
    }

    ramrod_log_msg("payloadType2 is invalid.\n", v5);
    goto LABEL_19;
  }

  ramrod_log_msg("key2 is NULL.\n");
LABEL_24:
  v3 = 0;
LABEL_10:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v2)
  {
    IOObjectRelease(v2);
  }

  return v3;
}

uint64_t sub_4412C(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  Count = CFDictionaryGetCount(a1);
  v5 = calloc(8uLL, Count);
  v6 = calloc(8uLL, Count);
  v7 = v6;
  if (v5 && v6)
  {
    CFDictionaryGetKeysAndValues(a1, v5, v6);
    if (Count >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v8 + 1;
        if (CFDictionaryContainsKey(a2, v5[v8]))
        {
          ramrod_log_msg("Key %lu of %lu in EAN list also, nothing to clean.\n");
        }

        else
        {
          ramrod_log_msg("Key %lu of %lu not in EAN list...\n", v8 + 1, Count);
          if (v9)
          {
            CFRelease(v9);
          }

          CFDataGetLength(v7[v8]);
          CFDataGetBytePtr(v7[v8]);
          if (Img4DecodeInit())
          {
            ramrod_log_msg("failed to decode img4, derstat=%d.\n");
            goto LABEL_25;
          }

          *bytes = 0;
          if (Img4DecodeGetPayloadType())
          {
            ramrod_log_msg("failed to decode payload type, derstat=%d.\n");
            goto LABEL_25;
          }

          if (!*bytes)
          {
            ramrod_log_msg("payloadType is empty.\n", v14);
            goto LABEL_25;
          }

          *bytes = bswap32(*bytes);
          v11 = CFStringCreateWithBytes(kCFAllocatorDefault, bytes, 4, 0x8000100u, 1u);
          if (!v11)
          {
            ramrod_log_msg("payload4cc is NULL.\n", v14);
            goto LABEL_25;
          }

          v9 = v11;
          if (sub_33448(v11))
          {
            ramrod_log_msg("Deleting stale key from EAN\n");
            if (!sub_335B8(v9))
            {
              ramrod_log_msg("Failed to delete EAN key.  Continuing...\n", v14, v15);
            }
          }

          else
          {
            ramrod_log_msg("Nothing stale to clean up - not found in EAN.\n");
          }
        }

        ++v8;
      }

      while (Count != v10);
    }

    v12 = 1;
  }

  else
  {
    ramrod_log_msg("calloc failed.\n");
LABEL_25:
    v12 = 0;
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  AMSupportSafeRelease();
  return v12;
}

uint64_t sub_443B4(uint64_t result, void *a2)
{
  if (dword_1C4818 != result)
  {
    v2 = result;
    result = (*(*a2 + 8))(1, result, a2[1]);
    dword_1C4818 = v2;
  }

  return result;
}

uint64_t sub_44400(const char *a1, char *a2, CFErrorRef *a3)
{
  memset(&v19, 0, sizeof(v19));
  bzero(__src, 0x400uLL);
  if (stat(a1, &v19) == -1)
  {
    v16 = @"%s: %s: FW path not found: %s\n";
LABEL_13:
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 11, 0, v16, v6, v7, v8, "get_first_file");
    return 0;
  }

  v9 = opendir(a1);
  if (!v9)
  {
    v16 = @"%s: %s: Can't open %s\n";
    goto LABEL_13;
  }

  v10 = v9;
  do
  {
    v11 = readdir(v10);
    if (!v11)
    {
      v17 = @"%s: %s: No FW file found in %s\n";
      goto LABEL_16;
    }
  }

  while (v11->d_name[0] == 46 && (!v11->d_name[1] || v11->d_name[1] == 46 && !v11->d_name[2]));
  __sprintf_chk(__src, 0, 0x400uLL, "%s/%s", a1, v11->d_name);
  if (stat(__src, &v19) != -1)
  {
    strncpy(a2, __src, 0x400uLL);
    v15 = 1;
    goto LABEL_17;
  }

  v17 = @"%s: %s: FW path not found: %s";
LABEL_16:
  ramrod_create_error_cf(a3, @"RamrodErrorDomain", 8, 0, v17, v12, v13, v14, "get_first_file");
  v15 = 0;
LABEL_17:
  closedir(v10);
  return v15;
}

uint64_t sub_445FC(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5)
{
  v13[0] = a3;
  memset(&v13[1], 0, 24);
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = v13;
  ramrod_log_msg("entering %s\n", "update_savage_with_option");
  if (!ramrod_device_has_savage())
  {
    ramrod_log_msg("No Savage present on device, skipping update\n");
LABEL_5:
    updated = 1;
    goto LABEL_6;
  }

  (*(a2 + 8))(7, 0xFFFFFFFFLL, a3);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
  if (!MutableCopy)
  {
    ramrod_log_msg("Failed to allocate optionsCopy\n");
    goto LABEL_5;
  }

  AMSupportCFDictionarySetBoolean();
  updated = update_generic_firmware(@"Savage", MutableCopy, v12, a5);
LABEL_6:
  AMSupportSafeRelease();
  return updated & 1;
}

unsigned __int8 *sub_44714(unsigned __int8 *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 2 * a2)
  {
    if (a2)
    {
      LODWORD(v4) = 0;
      v5 = 1;
      do
      {
        v6 = *result++;
        v7 = v4 + 1;
        *(a3 + v4) = a0123456789abcd[v6 >> 4];
        v4 = (v4 + 2);
        *(a3 + v7) = a0123456789abcd[v6 & 0xF];
        v8 = v5++;
      }

      while (v8 < a2);
    }

    else
    {
      v4 = 0;
    }

    *(a3 + v4) = 0;
  }

  return result;
}

__CFString *sub_44774(const void *a1, _BYTE *a2)
{
  v10 = 0;
  v9 = 0;
  v7 = 0;
  cf2 = 0;
  _copy_fdr_ean_values(@"fdr1", &v10, &cf2);
  _copy_fdr_ean_values(@"fdr2", &v9, &v7);
  if (a2)
  {
    if (v10 == -2 || v9 == -2)
    {
      *a2 = 1;
    }
  }

  if (cf2)
  {
    v5 = @"fdr1";
    if (CFEqual(a1, cf2))
    {
      if (v7)
      {
        if (CFEqual(a1, v7))
        {
          if (v10 > v9)
          {
            v5 = @"fdr2";
          }
        }

        else
        {
          v5 = @"fdr2";
        }
      }

      else
      {
        v5 = @"fdr2";
      }
    }
  }

  else
  {
    v5 = @"fdr1";
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v5;
}

void sub_44870(const __CFDictionary *a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  if (a1 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"Baseband Data Root");
    if (Value)
    {
      CFDictionarySetValue(a3, @"RemoteFSRoot", Value);
    }

    v6 = CFDictionaryGetValue(a1, @"BasebandUpdater");
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFDictionaryGetTypeID())
      {
        v9 = CFDictionaryGetValue(v7, @"DebugArgs");
        if (v9)
        {
          v10 = v9;
          v11 = CFGetTypeID(v9);
          if (v11 == CFStringGetTypeID())
          {

            CFDictionarySetValue(a3, @"DebugArgs", v10);
          }
        }
      }
    }
  }
}

void sub_4495C(CFErrorRef *a1@<X0>, const __CFString *a2@<X4>, const __CFString *a3@<X8>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>)
{

  ramrod_create_error_cf(a1, a3, 7, 0, a2, a4, a5, a6, v6);
}

void sub_44984(CFErrorRef *a1@<X0>, const __CFString *a2@<X4>, const __CFString *a3@<X8>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>)
{

  ramrod_create_error_cf(a1, a3, 6, 0, a2, a4, a5, a6, v6);
}

void sub_449A4(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a5@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 7, 0, a5, x5_0, x6_0, a6, a7);
}

void sub_449D8(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a5@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 8, 0, a5, x5_0, x6_0, a6, a7);
}

void sub_449F4(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a5@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 3, 0, a5, x5_0, x6_0, a6, a7);
}

void sub_44A10(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a5@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 3, 0, a5, x5_0, x6_0, a6, a7);
}

void sub_44A2C(CFErrorRef *a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  ramrod_create_error_cf(a1, a2, 7, 0, a5, a6, a7, a8, a9);
}

uint64_t ramrod_register_plugin(void *a1)
{
  *a1 = &unk_1ADA98;
  ramrod_log_msg("\nUNIT TEST(%s) : unit_test plugin registered\n", "ramrod_register_plugin");
  ramrod_set_syslog_flush_msgs(0);
  return 1;
}

uint64_t sub_44AD0(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not allocate response dictionary\n", "unitTestInfo");
    return 3;
  }

  v3 = Mutable;
  v4 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v4)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not allocate categories array\n", "unitTestInfo");
    CFRelease(v3);
    return 3;
  }

  v5 = v4;
  v6 = 0;
  v7 = "unit_test_baseline";
  v8 = &off_1ADAF0;
  do
  {
    ramrod_log_msg("\nUNIT TEST(%s) : Test Category: %s\n", "unitTestInfo", v7);
    v9 = CFStringCreateWithCString(kCFAllocatorDefault, *(v8 - 2), 0x8000100u);
    if (!v9)
    {
      valuePtr = v6;
      ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Unable to convert category string to CFStringRef\n");
LABEL_15:
      v15 = 3;
      goto LABEL_16;
    }

    v10 = v9;
    CFArrayAppendValue(v5, v9);
    CFRelease(v10);
    ++v6;
    v11 = *v8;
    v8 += 2;
    v7 = v11;
  }

  while (v11);
  valuePtr = v6;
  ramrod_log_msg("\nUNIT TEST(%s) : total categories: %d\n", "unitTestInfo", v6);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v12)
  {
    v13 = v12;
    CFDictionaryAddValue(v3, @"response-count", v12);
    CFRelease(v13);
    CFDictionaryAddValue(v3, @"response-categories", v5);
    v14 = @"success";
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Unable to create total categories count\n", "unitTestInfo");
    v14 = @"failure";
  }

  CFDictionaryAddValue(v3, @"response-result", v14);
  if (ramrod_send_message(a1, v3))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not send response to host\n");
    goto LABEL_15;
  }

  v15 = 1;
LABEL_16:
  CFRelease(v3);
  CFRelease(v5);
  return v15;
}

uint64_t sub_44CF8(unsigned int a1, const __CFDictionary *a2)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v6)
    {
      v7 = v6;
      Value = CFDictionaryGetValue(a2, @"for-category");
      v9 = Value;
      if (Value)
      {
        CStringPtr = CFStringGetCStringPtr(Value, 0x8000100u);
        if (!CStringPtr)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not get single category string\n");
          goto LABEL_55;
        }

        v11 = CStringPtr;
        v12 = &off_1ADAE0;
        v13 = "unit_test_baseline";
        do
        {
          if (!strcmp(v11, v13))
          {
            break;
          }

          v14 = v12[2];
          v12 += 2;
          v13 = v14;
        }

        while (v14);
      }

      else
      {
        v12 = &off_1ADAE0;
      }

      v16 = CFDictionaryGetValue(a2, @"for-number");
      if (v16)
      {
        v17 = v16;
        v18 = CFGetTypeID(v16);
        if (v18 != CFNumberGetTypeID())
        {
          ramrod_log_msg("\nUNIT TEST(%s) : ERROR: speified test number is not a number\n");
          goto LABEL_55;
        }

        CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr);
      }

      theDict = v5;
      allocator = kCFAllocatorDefault;
      v32 = a1;
      v19 = 0;
      while (1)
      {
        v34 = *v12;
        if (!*v12)
        {
          break;
        }

        theString = 0;
        v35 = 0;
        ramrod_log_msg("\nUNIT TEST(%s) : %s: beginning test set\n", "unitTestPerform", *v12);
        LODWORD(v20) = valuePtr;
        v21 = valuePtr == 0;
        v22 = v19 + 1;
        while (1)
        {
          v19 = v22;
          HIDWORD(valuePtr) = v22;
          v20 = (v20 + v21);
          v23 = (v12[1])(*v12, v20, &theString, &v35);
          v38 = 0;
          if (theString)
          {
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            *buffer = 0u;
            CFStringGetCString(theString, buffer, 512, 0x8000100u);
            if (v23)
            {
              asprintf(&v38, "%s #%d: FAILED (result=%d(0x%X)) - %s");
            }

            else
            {
              asprintf(&v38, "%s #%d: PASSED - %s");
            }
          }

          else if (v23)
          {
            asprintf(&v38, "%s #%d: FAILED (result=%d(0x%X))");
          }

          else
          {
            asprintf(&v38, "%s #%d: PASSED");
          }

          ramrod_log_msg("\nUNIT TEST %s\n", v38);
          v24 = CFStringCreateWithFormat(0, 0, @"%s", v38);
          if (v24)
          {
            CFArrayAppendValue(v7, v24);
          }

          if (v38)
          {
            free(v38);
          }

          if (v24)
          {
            CFRelease(v24);
          }

          if (theString)
          {
            CFRelease(theString);
            theString = 0;
          }

          if (valuePtr)
          {
            break;
          }

          v25 = v23 == 0;
          if (!v23)
          {
            v22 = v19 + 1;
            v21 = 1;
            if (v35)
            {
              continue;
            }
          }

          goto LABEL_39;
        }

        v25 = v23 == 0;
LABEL_39:
        if (v9)
        {
          do
          {
            v26 = v12[2];
            v12 += 2;
          }

          while (v26);
          if (!v25)
          {
            break;
          }
        }

        else
        {
          v12 += 2;
          if (!v25)
          {
            break;
          }
        }
      }

      v5 = theDict;
      if (CFArrayGetCount(v7) >= 1)
      {
        CFDictionaryAddValue(theDict, @"response-log", v7);
      }

      ramrod_log_msg("\nUNIT TEST(%s) : total count: %d\n", "unitTestPerform", v19);
      v27 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr + 4);
      if (v27)
      {
        v28 = v27;
        CFDictionaryAddValue(theDict, @"response-count", v27);
        CFRelease(v28);
        if (!v34)
        {
          v29 = @"success";
LABEL_53:
          CFDictionaryAddValue(theDict, @"response-result", v29);
          if (!ramrod_send_message(v32, theDict))
          {
            v15 = 1;
            goto LABEL_56;
          }

          ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not send response to host\n");
LABEL_55:
          v15 = 3;
LABEL_56:
          CFRelease(v5);
          CFRelease(v7);
          return v15;
        }
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Unable to create total test count\n", "unitTestPerform");
      }

      v29 = @"failure";
      goto LABEL_53;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not allocate test_log array\n", "unitTestPerform");
    CFRelease(v5);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not allocate response dictionary\n", "unitTestPerform");
  }

  return 3;
}