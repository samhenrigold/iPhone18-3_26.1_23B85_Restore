uint64_t sub_297F62950(const char *a1, const char *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to create property matching dictionary", "_NFHardwareFindMatchingService", 364);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "_NFHardwareFindMatchingService";
      v37 = 1024;
      v38 = 364;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create property matching dictionary", buf, 0x12u);
    }

    return 0;
  }

  v5 = Mutable;
  v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v6)
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Failed to create CF property string", "_NFHardwareFindMatchingService", 369);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 369;
    v24 = "%{public}s:%i Failed to create CF property string";
    goto LABEL_21;
  }

  v7 = v6;
  CFDictionarySetValue(v5, @"IONameMatched", v6);
  CFRelease(v7);
  v8 = IOServiceMatching(a1);
  if (!v8)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(3, "%s:%i Failed to create matching dictionary", "_NFHardwareFindMatchingService", 378);
    }

    dispatch_get_specific(*v25);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 378;
    v24 = "%{public}s:%i Failed to create matching dictionary";
LABEL_21:
    _os_log_impl(&dword_297F52000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
LABEL_22:
    CFRelease(v5);
    return 0;
  }

  v9 = v8;
  CFDictionarySetValue(v8, @"IOPropertyMatch", v5);
  CFRelease(v5);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB110], v9, &existing);
  if (MatchingServices)
  {
    v11 = MatchingServices;
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to lookup service : 0x%x", "_NFHardwareFindMatchingService", 403, v11);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446722;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 403;
    v39 = 1024;
    v40 = v11;
    v15 = "%{public}s:%i Failed to lookup service : 0x%x";
    v16 = v14;
    v17 = 24;
    goto LABEL_37;
  }

  if (!existing || !IOIteratorIsValid(existing))
  {
    v32 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v33(3, "%s:%i Failed to get iterator for service", "_NFHardwareFindMatchingService", 395);
    }

    dispatch_get_specific(*v32);
    v31 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 395;
    v15 = "%{public}s:%i Failed to get iterator for service";
    goto LABEL_36;
  }

  v27 = IOIteratorNext(existing);
  if (v27)
  {
    goto LABEL_39;
  }

  v29 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v30 = NFLogGetLogger();
  if (v30)
  {
    v30(3, "%s:%i Failed to get valid service", "_NFHardwareFindMatchingService", 399);
  }

  dispatch_get_specific(*v29);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v36 = "_NFHardwareFindMatchingService";
    v37 = 1024;
    v38 = 399;
    v15 = "%{public}s:%i Failed to get valid service";
LABEL_36:
    v16 = v31;
    v17 = 18;
LABEL_37:
    _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }

LABEL_38:
  v27 = 0;
LABEL_39:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v27;
}

void sub_297F62E64()
{
  v34 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ----------------------- IOService plane --------------------------", "_NFHardwareDumpIOKit", 322);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 322;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ----------------------- IOService plane --------------------------", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  dispatch_get_specific(*v0);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v6(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 324, "stockholm", MatchingService);
  }

  dispatch_get_specific(*v0);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 324;
    v30 = 2080;
    v31 = "stockholm";
    v32 = 1024;
    v33 = MatchingService;
    _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(MatchingService);
  v8 = IOServiceNameMatching("stockholm-spmi");
  v9 = IOServiceGetMatchingService(v3, v8);
  dispatch_get_specific(*v0);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 328, "stockholm-spmi", v9);
  }

  dispatch_get_specific(*v0);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 328;
    v30 = 2080;
    v31 = "stockholm-spmi";
    v32 = 1024;
    v33 = v9;
    _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v9);
  v12 = IOServiceNameMatching("AppleStockholmSPMI");
  v13 = IOServiceGetMatchingService(v3, v12);
  dispatch_get_specific(*v0);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 332, "AppleStockholmSPMI", v13);
  }

  dispatch_get_specific(*v0);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 332;
    v30 = 2080;
    v31 = "AppleStockholmSPMI";
    v32 = 1024;
    v33 = v13;
    _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v13);
  v16 = IOServiceNameMatching("AppleStockholmControl");
  v17 = IOServiceGetMatchingService(v3, v16);
  dispatch_get_specific(*v0);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v18(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 336, "AppleStockholmControl", v17);
  }

  dispatch_get_specific(*v0);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 336;
    v30 = 2080;
    v31 = "AppleStockholmControl";
    v32 = 1024;
    v33 = v17;
    _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v17);
  v20 = IOServiceNameMatching("AppleStockholmControlUserClient");
  v21 = IOServiceGetMatchingService(v3, v20);
  dispatch_get_specific(*v0);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v22(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 340, "AppleStockholmControlUserClient", v21);
  }

  dispatch_get_specific(*v0);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 340;
    v30 = 2080;
    v31 = "AppleStockholmControlUserClient";
    v32 = 1024;
    v33 = v21;
    _os_log_impl(&dword_297F52000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v21);
  dispatch_get_specific(*v0);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(6, "%s:%i ----------------------- IOService plane --------------------------", "_NFHardwareDumpIOKit", 344);
  }

  dispatch_get_specific(*v0);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "_NFHardwareDumpIOKit";
    v28 = 1024;
    v29 = 344;
    _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ----------------------- IOService plane --------------------------", buf, 0x12u);
  }

  sub_297F67B20("stockholm");
  sub_297F67B20("stockholm-spmi");
  sub_297F67B20("AppleStockholmSPMI");
  sub_297F67B20("AppleStockholmControl");
  sub_297F67B20("AppleStockholmControlUserClient");
  sub_297F67B20("hammerfest");
  sub_297F67B20("AppleHammerfestSPMI");
  sub_297F67B20("AppleHammerfestControl");
}

uint64_t sub_297F63448(const char *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  object = 0;
  RootEntry = IORegistryGetRootEntry(*MEMORY[0x29EDBB110]);
  if (MEMORY[0x29C27C2E0](RootEntry, "IOService", 1, &object))
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to create iterator", "_NFHardwareLookInTree", 308);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "_NFHardwareLookInTree";
      v11 = 1024;
      v12 = 308;
      _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create iterator", buf, 0x12u);
    }

    return 0;
  }

  else
  {
    v6 = sub_297F6835C(object, a1);
    IOObjectRelease(object);
  }

  return v6;
}

BOOL NFHardwareSerialIsHammerfestAlive()
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareSerialIsHammerfestAlive", 501);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "NFHardwareSerialIsHammerfestAlive";
    v18 = 1024;
    v19 = 501;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  v3 = sub_297F62950("AppleStockholmSPMI", "nfc,secondary,spmi");
  v4 = v3;
  if (v3)
  {
    properties = 0;
    v5 = IORegistryEntryCreateCFProperties(v3, &properties, *MEMORY[0x29EDB8ED8], 0);
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = properties == 0;
    }

    if (v6)
    {
      dispatch_get_specific(*v0);
      v7 = NFLogGetLogger();
      if (v7)
      {
        v7(3, "%s:%i Could not get valid dictionary from from IO service object, err: 0x%x.", "NFHardwareSerialIsHammerfestAlive", 516, v5);
      }

      dispatch_get_specific(*v0);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "NFHardwareSerialIsHammerfestAlive";
        v18 = 1024;
        v19 = 516;
        v20 = 1024;
        LODWORD(v21) = v5;
        _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not get valid dictionary from from IO service object, err: 0x%x.", buf, 0x18u);
      }
    }

    else if (CFDictionaryContainsKey(properties, @"hammerfest-data-available-event"))
    {
      Value = CFDictionaryGetValue(properties, @"hammerfest-data-available-event");
      v11 = CFBooleanGetValue(Value) != 0;
      goto LABEL_22;
    }

    v11 = 0;
LABEL_22:
    if (properties)
    {
      CFRelease(properties);
    }

    goto LABEL_24;
  }

  dispatch_get_specific(*v0);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v9(6, "%s:%i Could not find service: %s", "NFHardwareSerialIsHammerfestAlive", 508, "AppleHammerfestSPMI");
  }

  dispatch_get_specific(*v0);
  v10 = NFSharedLogGetLogger();
  v11 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "NFHardwareSerialIsHammerfestAlive";
    v18 = 1024;
    v19 = 508;
    v20 = 2080;
    v21 = "AppleHammerfestSPMI";
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service: %s", buf, 0x1Cu);
    v11 = 0;
  }

LABEL_24:
  IOObjectRelease(v4);
  return v11;
}

uint64_t NFHardwareSerialIsSupported(const char *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = "nfc,primary,gpio";
  if (a1 && strcasestr(a1, "hammerfest"))
  {
    v1 = "nfc,secondary,gpio";
  }

  LODWORD(result) = sub_297F62950("AppleStockholmControl", v1);
  if (result)
  {
    goto LABEL_10;
  }

  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Could not find service with: %s, retrying slow path", "NFHardwareSerialIsSupported", 544, v1);
  }

  dispatch_get_specific(*v3);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "NFHardwareSerialIsSupported";
    v8 = 1024;
    v9 = 544;
    v10 = 2080;
    v11 = v1;
    _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service with: %s, retrying slow path", buf, 0x1Cu);
  }

  sub_297F62E64();
  result = sub_297F63448(v1);
  if (result)
  {
LABEL_10:
    IOObjectRelease(result);
    return 1;
  }

  return result;
}

uint64_t NFHardwareSerialReadBlockAbort(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  sub_297F54914(*(*(a1 + 8) + 88), 4, 0, 0);
  v2 = *(a1 + 8);
  if (!*(v2 + 120))
  {
    dispatch_suspend(*(v2 + 112));
    ++*(*(a1 + 8) + 120);
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      mach_continuous_time();
      ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
      v5(6, "%s:%i Read aborted while in progress since %llu.", "NFHardwareSerialReadBlockAbort", 610, ElapsedTimeInMillisecondsFromMachTime);
    }

    dispatch_get_specific(*v3);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      mach_continuous_time();
      *buf = 136446722;
      v10 = "NFHardwareSerialReadBlockAbort";
      v11 = 1024;
      v12 = 610;
      v13 = 2048;
      v14 = GetElapsedTimeInMillisecondsFromMachTime();
      _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Read aborted while in progress since %llu.", buf, 0x1Cu);
    }

    *(*(a1 + 8) + 128) = 0;
  }

  return 0;
}

uint64_t NFHardwareSerialWriteBlockAbort(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_297F54914(*(*(a1 + 8) + 88), 6, 0, 0);
  v2 = *(a1 + 8);
  if (!*(v2 + 144))
  {
    dispatch_suspend(*(v2 + 136));
    v3 = *(a1 + 8);
    ++*(v3 + 144);
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
    *(v3 + 168) = 0;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Write aborted while in progress.", "NFHardwareSerialWriteBlockAbort", 628);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v9 = "NFHardwareSerialWriteBlockAbort";
      v10 = 1024;
      v11 = 628;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Write aborted while in progress.", buf, 0x12u);
    }
  }

  return 0;
}

uint64_t NFHardwareSerialFlush(int *a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1);
  if (*(v2 + 97) == 1)
  {
    sub_297F64074(a1, 1);
    goto LABEL_5;
  }

  if (*(v2 + 120))
  {
    dispatch_source_set_event_handler(*(v2 + 112), &unk_2A1E95D48);
    dispatch_resume(*(v2 + 112));
    dispatch_source_cancel(*(v2 + 112));
    dispatch_release(*(v2 + 112));
    *(v2 + 112) = 0;
    while (1)
    {
LABEL_5:
      while (1)
      {
        v3 = read(*a1, &v27, 1uLL);
        if (v3 < 0)
        {
          break;
        }

        if (!v3)
        {
          v17 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(3, "%s:%i Unexpected result", "NFHardwareSerialFlush", 825);
          }

          dispatch_get_specific(*v17);
          v19 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v29 = "NFHardwareSerialFlush";
            v30 = 1024;
            v31 = 825;
            v14 = "%{public}s:%i Unexpected result";
            v15 = v19;
            v16 = 18;
LABEL_18:
            _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
          }

          goto LABEL_19;
        }
      }

      if (*__error() == 35)
      {
        break;
      }

      if (*__error() != 4)
      {
        v4 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v5 = NFLogGetLogger();
        if (v5)
        {
          v6 = v5;
          v7 = __error();
          v8 = strerror(*v7);
          v9 = __error();
          v6(3, "%s:%i %s errno=%d ", "NFHardwareSerialFlush", 819, v8, *v9);
        }

        dispatch_get_specific(*v4);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = __error();
          v12 = strerror(*v11);
          v13 = *__error();
          *buf = 136446978;
          v29 = "NFHardwareSerialFlush";
          v30 = 1024;
          v31 = 819;
          v32 = 2080;
          v33 = v12;
          v34 = 1024;
          v35 = v13;
          v14 = "%{public}s:%i %s errno=%d ";
          v15 = v10;
          v16 = 34;
          goto LABEL_18;
        }

LABEL_19:
        v20 = 0;
        goto LABEL_21;
      }
    }

    v20 = 1;
LABEL_21:
    if (*(v2 + 97) == 1)
    {
      sub_297F64074(a1, 0);
    }

    else if (!*(v2 + 112))
    {
      *(v2 + 112) = dispatch_source_create(MEMORY[0x29EDCA5B8], *a1, 0, *(v2 + 104));
      dispatch_set_qos_class_fallback();
      dispatch_source_set_event_handler(*(v2 + 112), &unk_2A1E95D68);
      dispatch_source_set_cancel_handler(*(v2 + 112), &unk_2A1E95D88);
      dispatch_activate(*(v2 + 112));
      dispatch_suspend(*(v2 + 112));
      *(v2 + 120) = 1;
      *(*(a1 + 1) + 128) = 0;
    }

    sub_297F54914(*(v2 + 88), 9, 0, 0);
  }

  else
  {
    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      mach_continuous_time();
      ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
      v24(3, "%s:%i Error : read in progress since %llu", "NFHardwareSerialFlush", 789, ElapsedTimeInMillisecondsFromMachTime);
    }

    dispatch_get_specific(*v22);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      mach_continuous_time();
      *buf = 136446722;
      v29 = "NFHardwareSerialFlush";
      v30 = 1024;
      v31 = 789;
      v32 = 2048;
      v33 = GetElapsedTimeInMillisecondsFromMachTime();
      _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : read in progress since %llu", buf, 0x1Cu);
    }

    return 0;
  }

  return v20;
}

BOOL sub_297F64074(int *a1, int a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = fcntl(*a1, 3, 0);
  if (v4 != -1)
  {
    if (a2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    if (fcntl(*a1, 4, v4 & 0xFFFFFFFB | v5))
    {
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        v9 = __error();
        v10 = strerror(*v9);
        v11 = __error();
        v8(3, "%s:%i %s errno=%d Failed to set flags", "_NFHardwareSerialSetNonBlock", 115, v10, *v11);
      }

      dispatch_get_specific(*v6);
      v12 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v14 = __error();
        v15 = strerror(*v14);
        v16 = *__error();
        *buf = 136446978;
        v36 = "_NFHardwareSerialSetNonBlock";
        v37 = 1024;
        v38 = 115;
        v39 = 2080;
        v40 = v15;
        v41 = 1024;
        v42 = v16;
        v17 = "%{public}s:%i %s errno=%d Failed to set flags";
LABEL_14:
        _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x22u);
        return 0;
      }

      return result;
    }

    v27 = fcntl(*a1, 3, 0);
    v28 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v29 = NFLogGetLogger();
    if ((v27 & 4) != 0)
    {
      if (v29)
      {
        v29(6, "%s:%i Socket is non-blocking", "_NFHardwareSerialSetNonBlock", 120);
      }

      dispatch_get_specific(*v28);
      v34 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *buf = 136446466;
      v36 = "_NFHardwareSerialSetNonBlock";
      v37 = 1024;
      v38 = 120;
      v31 = "%{public}s:%i Socket is non-blocking";
      v32 = v34;
      v33 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (v29)
      {
        v29(3, "%s:%i Socket is blocking !!", "_NFHardwareSerialSetNonBlock", 122);
      }

      dispatch_get_specific(*v28);
      v30 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 136446466;
      v36 = "_NFHardwareSerialSetNonBlock";
      v37 = 1024;
      v38 = 122;
      v31 = "%{public}s:%i Socket is blocking !!";
      v32 = v30;
      v33 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_297F52000, v32, v33, v31, buf, 0x12u);
    return 1;
  }

  v18 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = __error();
    v22 = strerror(*v21);
    v23 = __error();
    v20(3, "%s:%i %s errno=%d Failed to get flags", "_NFHardwareSerialSetNonBlock", 109, v22, *v23);
  }

  dispatch_get_specific(*v18);
  v12 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v24 = __error();
    v25 = strerror(*v24);
    v26 = *__error();
    *buf = 136446978;
    v36 = "_NFHardwareSerialSetNonBlock";
    v37 = 1024;
    v38 = 109;
    v39 = 2080;
    v40 = v25;
    v41 = 1024;
    v42 = v26;
    v17 = "%{public}s:%i %s errno=%d Failed to get flags";
    goto LABEL_14;
  }

  return result;
}

void sub_297F64428()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Error ! Unexpected invocation of read handler", "NFHardwareSerialFlush_block_invoke", 838);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v4 = "NFHardwareSerialFlush_block_invoke";
    v5 = 1024;
    v6 = 838;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected invocation of read handler", buf, 0x12u);
  }
}

BOOL NFHardwareSerialReset(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (**(a1 + 8))
    {
      return 1;
    }

    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i ", "NFHardwareSerialReset", 863);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "NFHardwareSerialReset";
      v25 = 1024;
      v26 = 863;
      _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
    }

    v5 = 0;
    while (1)
    {
      v22 = 3;
      if (setsockopt(*a1, 2, -2147191792, &v22, 4u))
      {
        break;
      }

      if (++v5 == 4)
      {
        return 1;
      }
    }

    dispatch_get_specific(*v2);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = __error();
      v16 = strerror(*v15);
      v17 = __error();
      v14(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:TIOCFLUSH - attempt %d - ", "NFHardwareSerialReset", 871, v16, *v17, v5);
    }

    dispatch_get_specific(*v2);
    v18 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v19 = __error();
    v20 = strerror(*v19);
    v21 = *__error();
    *buf = 136447234;
    v24 = "NFHardwareSerialReset";
    v25 = 1024;
    v26 = 871;
    v27 = 2080;
    v28 = v20;
    v29 = 1024;
    v30 = v21;
    v31 = 1024;
    v32 = v5;
    v10 = "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:TIOCFLUSH - attempt %d - ";
    v11 = v18;
    v12 = 40;
LABEL_19:
    _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    return 0;
  }

  v7 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Serial device not opened!", "NFHardwareSerialReset", 855);
  }

  dispatch_get_specific(*v7);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v24 = "NFHardwareSerialReset";
    v25 = 1024;
    v26 = 855;
    v10 = "%{public}s:%i Serial device not opened!";
    v11 = v9;
    v12 = 18;
    goto LABEL_19;
  }

  return result;
}

BOOL NFHardwareSerialSetBaudRate(uint64_t a1, speed_t a2)
{
  v62 = *MEMORY[0x29EDCA608];
  v51 = a2;
  if (a1)
  {
    if (**(a1 + 8))
    {
      return 1;
    }

    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i baudRate=%lu", "NFHardwareSerialSetBaudRate", 890, a2);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v53 = "NFHardwareSerialSetBaudRate";
      v54 = 1024;
      v55 = 890;
      v56 = 2048;
      v57 = a2;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i baudRate=%lu", buf, 0x1Cu);
    }

    v7 = *(a1 + 8);
    if (*(v7 + 1) == 1)
    {
      v50 = 72;
      if (getsockopt(*a1, 2, 1078490131, (v7 + 8), &v50))
      {
        dispatch_get_specific(*v4);
        v8 = NFLogGetLogger();
        if (v8)
        {
          v9 = v8;
          v10 = __error();
          v11 = strerror(*v10);
          v12 = __error();
          v9(3, "%s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL", "NFHardwareSerialSetBaudRate", 897, v11, *v12);
        }

        dispatch_get_specific(*v4);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v14 = __error();
        v15 = strerror(*v14);
        v16 = *__error();
        *buf = 136446978;
        v53 = "NFHardwareSerialSetBaudRate";
        v54 = 1024;
        v55 = 897;
        v56 = 2080;
        v57 = v15;
        v58 = 1024;
        v59 = v16;
        v17 = "%{public}s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL";
        goto LABEL_13;
      }

      if (cfsetspeed((*(a1 + 8) + 8), a2))
      {
        dispatch_get_specific(*v4);
        v24 = NFLogGetLogger();
        if (v24)
        {
          v25 = v24;
          v26 = __error();
          v27 = strerror(*v26);
          v28 = __error();
          v25(3, "%s:%i %s errno=%d baudRate=%lu", "NFHardwareSerialSetBaudRate", 902, v27, *v28, a2);
        }

        dispatch_get_specific(*v4);
        v29 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v30 = __error();
        v31 = strerror(*v30);
        v32 = *__error();
        *buf = 136447234;
        v53 = "NFHardwareSerialSetBaudRate";
        v54 = 1024;
        v55 = 902;
        v56 = 2080;
        v57 = v31;
        v58 = 1024;
        v59 = v32;
        v60 = 2048;
        v61 = a2;
        v17 = "%{public}s:%i %s errno=%d baudRate=%lu";
        v18 = v29;
        goto LABEL_29;
      }

      if (setsockopt(*a1, 2, -2142735340, (v7 + 8), 0x48u))
      {
        dispatch_get_specific(*v4);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v43 = v42;
          v44 = __error();
          v45 = strerror(*v44);
          v46 = __error();
          v43(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL", "NFHardwareSerialSetBaudRate", 907, v45, *v46);
        }

        dispatch_get_specific(*v4);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v47 = __error();
        v48 = strerror(*v47);
        v49 = *__error();
        *buf = 136446978;
        v53 = "NFHardwareSerialSetBaudRate";
        v54 = 1024;
        v55 = 907;
        v56 = 2080;
        v57 = v48;
        v58 = 1024;
        v59 = v49;
        v17 = "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL";
LABEL_13:
        v18 = v13;
        v19 = 34;
LABEL_30:
        _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
        return 0;
      }

      return 1;
    }

    if ((ioctl(*a1, 0x80085402uLL, &v51) & 0x80000000) == 0)
    {
      return 1;
    }

    dispatch_get_specific(*v4);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = __error();
      v36 = strerror(*v35);
      v37 = __error();
      v34(3, "%s:%i %s errno=%d baudRate=%lu", "NFHardwareSerialSetBaudRate", 914, v36, *v37, v51);
    }

    dispatch_get_specific(*v4);
    v38 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v39 = __error();
      v40 = strerror(*v39);
      v41 = *__error();
      *buf = 136447234;
      v53 = "NFHardwareSerialSetBaudRate";
      v54 = 1024;
      v55 = 914;
      v56 = 2080;
      v57 = v40;
      v58 = 1024;
      v59 = v41;
      v60 = 2048;
      v61 = v51;
      v17 = "%{public}s:%i %s errno=%d baudRate=%lu";
      v18 = v38;
LABEL_29:
      v19 = 44;
      goto LABEL_30;
    }
  }

  else
  {
    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Serial device not opened!", "NFHardwareSerialSetBaudRate", 881);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v53 = "NFHardwareSerialSetBaudRate";
      v54 = 1024;
      v55 = 881;
      v17 = "%{public}s:%i Serial device not opened!";
      v18 = v22;
      v19 = 18;
      goto LABEL_30;
    }
  }

  return result;
}

void NFHardwareSerialEnableLog(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 8) + 88);
  os_unfair_lock_lock((v3 + 92));
  *(v3 + 88) = a2 ^ 1;

  os_unfair_lock_unlock((v3 + 92));
}

int *NFHardwareSerialOpen(const char *a1, NSObject *a2, BOOL a3)
{
  v183 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v162 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFHardwareSerialOpen", 1133, "devicePath != ((void*)0)");
    }

    dispatch_get_specific(*v162);
    v164 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
    {
      LODWORD(handler[0]) = 136446722;
      *(handler + 4) = "NFHardwareSerialOpen";
      WORD6(handler[0]) = 1024;
      *(handler + 14) = 1133;
      WORD1(handler[1]) = 2080;
      *(&handler[1] + 4) = "devicePath != ((void*)0)";
      _os_log_impl(&dword_297F52000, v164, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", handler, 0x1Cu);
    }

    abort();
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800407411B482uLL);
  if (!v6)
  {
    goto LABEL_65;
  }

  v7 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10B0040E9A660C4uLL);
  if (!v7)
  {
    goto LABEL_65;
  }

  v8 = v7;
  *(v6 + 1) = v7;
  v9 = strcasestr(a1, "hammerfest") == 0;
  v8[96] = v9;
  v10 = sub_297F68B54(v9);
  *(v8 + 11) = v10;
  v11 = 1;
  sub_297F54914(v10, 1, 0, 0);
  v8[97] = a3;
  if (strlen(a1) >= 5)
  {
    v11 = strncmp(a1, "/dev/", 5uLL) != 0;
  }

  v8[1] = v11;
  *v8 = strcasestr(a1, "spmi") != 0;
  if (v8[1])
  {
    v166 = 0;
    v167 = 0u;
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    v179 = 0u;
    memset(handler, 0, sizeof(handler));
    v12 = *(v6 + 1);
    v165 = 72;
    v13 = socket(32, 1, 2);
    *v6 = v13;
    if (v13 < 0)
    {
      v31 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v33 = v32;
        v34 = __error();
        v35 = strerror(*v34);
        v36 = __error();
        v33(3, "%s:%i %s errno=%d socket", "_NFHardwareSerialOpenSocket", 1007, v35, *v36);
      }

      dispatch_get_specific(*v31);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = __error();
        v39 = strerror(*v38);
        v40 = *__error();
        *buf = 136446978;
        v169 = "_NFHardwareSerialOpenSocket";
        v170 = 1024;
        v171 = 1007;
        v172 = 2080;
        v173 = v39;
        v174 = 1024;
        v175 = v40;
        _os_log_impl(&dword_297F52000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d socket", buf, 0x22u);
      }

      *v6 = 0;
      goto LABEL_39;
    }

    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    v179 = 0u;
    memset(handler, 0, sizeof(handler));
    __strlcpy_chk();
    if (ioctl(*v6, 0xC0644E03uLL, handler))
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = __error();
        v18 = strerror(*v17);
        v19 = __error();
        v16(3, "%s:%i %s errno=%d ioctl: CTLIOCGINFO", "_NFHardwareSerialOpenSocket", 1016, v18, *v19);
      }

      dispatch_get_specific(*v14);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v21 = __error();
      v22 = strerror(*v21);
      v23 = *__error();
      *buf = 136446978;
      v169 = "_NFHardwareSerialOpenSocket";
      v170 = 1024;
      v171 = 1016;
      v172 = 2080;
      v173 = v22;
      v174 = 1024;
      v175 = v23;
      v24 = "%{public}s:%i %s errno=%d ioctl: CTLIOCGINFO";
      goto LABEL_37;
    }

    *&v166.sa_len = 139296;
    *&v166.sa_data[2] = handler[0];
    *&v166.sa_data[6] = 0;
    if (connect(*v6, &v166, 0x20u))
    {
      v62 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = __error();
        v66 = strerror(*v65);
        v67 = __error();
        v64(3, "%s:%i %s errno=%d connect", "_NFHardwareSerialOpenSocket", 1027, v66, *v67);
      }

      dispatch_get_specific(*v62);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v68 = __error();
      v69 = strerror(*v68);
      v70 = *__error();
      *buf = 136446978;
      v169 = "_NFHardwareSerialOpenSocket";
      v170 = 1024;
      v171 = 1027;
      v172 = 2080;
      v173 = v69;
      v174 = 1024;
      v175 = v70;
      v24 = "%{public}s:%i %s errno=%d connect";
      goto LABEL_37;
    }

    if (*(*(v6 + 1) + 97) == 1)
    {
      v86 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v87 = NFLogGetLogger();
      if (v87)
      {
        v87(6, "%s:%i Using blocking socket for relay", "_NFHardwareSerialOpenSocket", 1032);
      }

      dispatch_get_specific(*v86);
      v88 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v169 = "_NFHardwareSerialOpenSocket";
        v170 = 1024;
        v171 = 1032;
        _os_log_impl(&dword_297F52000, v88, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using blocking socket for relay", buf, 0x12u);
      }
    }

    else if (!sub_297F64074(v6, 1))
    {
      v112 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v113 = NFLogGetLogger();
      if (v113)
      {
        v114 = v113;
        v115 = __error();
        v116 = strerror(*v115);
        v117 = __error();
        v114(3, "%s:%i %s errno=%d Failed to set non-blocking.", "_NFHardwareSerialOpenSocket", 1035, v116, *v117);
      }

      dispatch_get_specific(*v112);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v118 = __error();
      v119 = strerror(*v118);
      v120 = *__error();
      *buf = 136446978;
      v169 = "_NFHardwareSerialOpenSocket";
      v170 = 1024;
      v171 = 1035;
      v172 = 2080;
      v173 = v119;
      v174 = 1024;
      v175 = v120;
      v24 = "%{public}s:%i %s errno=%d Failed to set non-blocking.";
LABEL_37:
      v71 = v20;
      v72 = 34;
LABEL_38:
      _os_log_impl(&dword_297F52000, v71, OS_LOG_TYPE_ERROR, v24, buf, v72);
LABEL_39:
      v73 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v74 = NFLogGetLogger();
      if (v74)
      {
        v74(3, "%s:%i failed to open socket %s", "NFHardwareSerialOpen", 1163, a1);
      }

      dispatch_get_specific(*v73);
      v75 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      LODWORD(handler[0]) = 136446722;
      *(handler + 4) = "NFHardwareSerialOpen";
      WORD6(handler[0]) = 1024;
      *(handler + 14) = 1163;
      WORD1(handler[1]) = 2080;
      *(&handler[1] + 4) = a1;
      v76 = "%{public}s:%i failed to open socket %s";
LABEL_64:
      _os_log_impl(&dword_297F52000, v75, OS_LOG_TYPE_ERROR, v76, handler, 0x1Cu);
LABEL_65:
      NFHardwareSerialClose(v6);
      return 0;
    }

    if ((**(v6 + 1) & 1) == 0)
    {
      if (getsockopt(*v6, 2, 1078490131, (v12 + 8), &v165))
      {
        v103 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v104 = NFLogGetLogger();
        if (v104)
        {
          v105 = v104;
          v106 = __error();
          v107 = strerror(*v106);
          v108 = __error();
          v105(3, "%s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL", "_NFHardwareSerialOpenSocket", 1048, v107, *v108);
        }

        dispatch_get_specific(*v103);
        v20 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        v109 = __error();
        v110 = strerror(*v109);
        v111 = *__error();
        *buf = 136446978;
        v169 = "_NFHardwareSerialOpenSocket";
        v170 = 1024;
        v171 = 1048;
        v172 = 2080;
        v173 = v110;
        v174 = 1024;
        v175 = v111;
        v24 = "%{public}s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL";
        goto LABEL_37;
      }

      *(v12 + 24) = 232192;
      *(v12 + 8) |= 4uLL;
      cfmakeraw((v12 + 8));
      if (cfsetspeed((*(v6 + 1) + 8), 0x1C200uLL))
      {
        v131 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v132 = NFLogGetLogger();
        if (v132)
        {
          v133 = v132;
          v134 = __error();
          v135 = strerror(*v134);
          v136 = __error();
          v133(3, "%s:%i %s errno=%d baudRate=%d", "_NFHardwareSerialOpenSocket", 1062, v135, *v136, 115200);
        }

        dispatch_get_specific(*v131);
        v137 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        v138 = __error();
        v139 = strerror(*v138);
        v140 = *__error();
        *buf = 136447234;
        v169 = "_NFHardwareSerialOpenSocket";
        v170 = 1024;
        v171 = 1062;
        v172 = 2080;
        v173 = v139;
        v174 = 1024;
        v175 = v140;
        v176 = 1024;
        v177 = 115200;
        v24 = "%{public}s:%i %s errno=%d baudRate=%d";
        v71 = v137;
        v72 = 40;
        goto LABEL_38;
      }

      if (setsockopt(*v6, 2, -2142735340, (v12 + 8), 0x48u))
      {
        v141 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v142 = NFLogGetLogger();
        if (v142)
        {
          v143 = v142;
          v144 = __error();
          v145 = strerror(*v144);
          v146 = __error();
          v143(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL", "_NFHardwareSerialOpenSocket", 1067, v145, *v146);
        }

        dispatch_get_specific(*v141);
        v20 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        v147 = __error();
        v148 = strerror(*v147);
        v149 = *__error();
        *buf = 136446978;
        v169 = "_NFHardwareSerialOpenSocket";
        v170 = 1024;
        v171 = 1067;
        v172 = 2080;
        v173 = v148;
        v174 = 1024;
        v175 = v149;
        v24 = "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL";
        goto LABEL_37;
      }
    }

    goto LABEL_15;
  }

  v25 = *(v6 + 1);
  v26 = open(a1, 131078);
  *v6 = v26;
  if (v26 < 0)
  {
    v41 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v43 = v42;
      v44 = __error();
      v45 = strerror(*v44);
      v46 = __error();
      v43(3, "%s:%i %s errno=%d open", "_NFHardwareSerialOpenDeviceNode", 941, v45, *v46);
    }

    dispatch_get_specific(*v41);
    v47 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = __error();
      v49 = strerror(*v48);
      v50 = *__error();
      LODWORD(handler[0]) = 136446978;
      *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
      WORD6(handler[0]) = 1024;
      *(handler + 14) = 941;
      WORD1(handler[1]) = 2080;
      *(&handler[1] + 4) = v49;
      WORD6(handler[1]) = 1024;
      *(&handler[1] + 14) = v50;
      _os_log_impl(&dword_297F52000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d open", handler, 0x22u);
    }

    *v6 = 0;
    goto LABEL_60;
  }

  if (**(v6 + 1))
  {
    goto LABEL_15;
  }

  if (ioctl(v26, 0x2000740DuLL))
  {
    v51 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = __error();
      v55 = strerror(*v54);
      v56 = __error();
      v53(3, "%s:%i %s errno=%d ioctl: TIOCEXCL", "_NFHardwareSerialOpenDeviceNode", 954, v55, *v56);
    }

    dispatch_get_specific(*v51);
    v57 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v58 = __error();
    v59 = strerror(*v58);
    v60 = *__error();
    LODWORD(handler[0]) = 136446978;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 954;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v59;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v60;
    v61 = "%{public}s:%i %s errno=%d ioctl: TIOCEXCL";
    goto LABEL_58;
  }

  if (tcgetattr(*v6, (v25 + 8)))
  {
    v77 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v78 = NFLogGetLogger();
    if (v78)
    {
      v79 = v78;
      v80 = __error();
      v81 = strerror(*v80);
      v82 = __error();
      v79(3, "%s:%i %s errno=%d tcgetattr", "_NFHardwareSerialOpenDeviceNode", 960, v81, *v82);
    }

    dispatch_get_specific(*v77);
    v57 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v83 = __error();
    v84 = strerror(*v83);
    v85 = *__error();
    LODWORD(handler[0]) = 136446978;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 960;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v84;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v85;
    v61 = "%{public}s:%i %s errno=%d tcgetattr";
    goto LABEL_58;
  }

  if (fcntl(*v6, 4, 0))
  {
    v89 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v90 = NFLogGetLogger();
    if (v90)
    {
      v91 = v90;
      v92 = __error();
      v93 = strerror(*v92);
      v94 = __error();
      v91(3, "%s:%i %s errno=%d fcntl: F_SETFL", "_NFHardwareSerialOpenDeviceNode", 966, v93, *v94);
    }

    dispatch_get_specific(*v89);
    v57 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v95 = __error();
    v96 = strerror(*v95);
    v97 = *__error();
    LODWORD(handler[0]) = 136446978;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 966;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v96;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v97;
    v61 = "%{public}s:%i %s errno=%d fcntl: F_SETFL";
LABEL_58:
    v98 = v57;
    v99 = 34;
LABEL_59:
    _os_log_impl(&dword_297F52000, v98, OS_LOG_TYPE_ERROR, v61, handler, v99);
    goto LABEL_60;
  }

  *(v25 + 8) |= 4uLL;
  *(v25 + 16) = xmmword_297F6C070;
  *(v25 + 32) = 0;
  *(v25 + 56) = 1;
  if (cfsetispeed((*(v6 + 1) + 8), 0x1C200uLL) || cfsetospeed((*(v6 + 1) + 8), 0x1C200uLL))
  {
    v121 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v122 = NFLogGetLogger();
    if (v122)
    {
      v123 = v122;
      v124 = __error();
      v125 = strerror(*v124);
      v126 = __error();
      v123(3, "%s:%i %s errno=%d baudRate=%d", "_NFHardwareSerialOpenDeviceNode", 979, v125, *v126, 115200);
    }

    dispatch_get_specific(*v121);
    v127 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v128 = __error();
    v129 = strerror(*v128);
    v130 = *__error();
    LODWORD(handler[0]) = 136447234;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 979;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v129;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v130;
    WORD1(handler[2]) = 1024;
    DWORD1(handler[2]) = 115200;
    v61 = "%{public}s:%i %s errno=%d baudRate=%d";
    goto LABEL_84;
  }

  if (tcsetattr(*v6, 0, (*(v6 + 1) + 8)))
  {
    v150 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v151 = NFLogGetLogger();
    if (v151)
    {
      v152 = v151;
      v153 = __error();
      v154 = strerror(*v153);
      v155 = __error();
      v152(3, "%s:%i %s errno=%d baudRate=%d", "_NFHardwareSerialOpenDeviceNode", 984, v154, *v155, 115200);
    }

    dispatch_get_specific(*v150);
    v127 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v156 = __error();
    v157 = strerror(*v156);
    v158 = *__error();
    LODWORD(handler[0]) = 136447234;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 984;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v157;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v158;
    WORD1(handler[2]) = 1024;
    DWORD1(handler[2]) = 115200;
    v61 = "%{public}s:%i %s errno=%d baudRate=%d";
LABEL_84:
    v98 = v127;
    v99 = 40;
    goto LABEL_59;
  }

  if (*(*(v6 + 1) + 97) == 1)
  {
    v159 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v160 = NFLogGetLogger();
    if (v160)
    {
      v160(6, "%s:%i Using blocking socket for relay", "_NFHardwareSerialOpenDeviceNode", 989);
    }

    dispatch_get_specific(*v159);
    v161 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(handler[0]) = 136446466;
      *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
      WORD6(handler[0]) = 1024;
      *(handler + 14) = 989;
      _os_log_impl(&dword_297F52000, v161, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using blocking socket for relay", handler, 0x12u);
    }

    goto LABEL_15;
  }

  if (!sub_297F64074(v6, 1))
  {
LABEL_60:
    v100 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v101 = NFLogGetLogger();
    if (v101)
    {
      v101(3, "%s:%i failed to open device %s", "NFHardwareSerialOpen", 1169, a1);
    }

    dispatch_get_specific(*v100);
    v75 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    LODWORD(handler[0]) = 136446722;
    *(handler + 4) = "NFHardwareSerialOpen";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 1169;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = a1;
    v76 = "%{public}s:%i failed to open device %s";
    goto LABEL_64;
  }

LABEL_15:
  *(v8 + 13) = a2;
  dispatch_retain(a2);
  v27 = *(v6 + 1);
  if ((*(v27 + 97) & 1) == 0)
  {
    v28 = *v6;
    *(v27 + 112) = dispatch_source_create(MEMORY[0x29EDCA5B8], v28, 0, *(v27 + 104));
    dispatch_set_qos_class_fallback();
    dispatch_source_set_event_handler(*(v27 + 112), &unk_2A1E95DA8);
    dispatch_source_set_cancel_handler(*(v27 + 112), &unk_2A1E95DC8);
    dispatch_activate(*(v27 + 112));
    dispatch_suspend(*(v27 + 112));
    *(v27 + 120) = 1;
    *(*(v6 + 1) + 128) = 0;
    *(v27 + 152) = 0;
    *(v27 + 160) = 0;
    v29 = dispatch_source_create(MEMORY[0x29EDCA5E0], v28, 0, *(v27 + 104));
    *(v27 + 136) = v29;
    dispatch_source_set_event_handler(v29, &unk_2A1E95DE8);
    v30 = *(v27 + 136);
    *&handler[0] = MEMORY[0x29EDCA5F8];
    *(&handler[0] + 1) = 0x40000000;
    *&handler[1] = sub_297F68A5C;
    *(&handler[1] + 1) = &unk_29EE86C10;
    LODWORD(handler[2]) = v28;
    dispatch_source_set_cancel_handler(v30, handler);
    dispatch_activate(*(v27 + 136));
    dispatch_suspend(*(v27 + 136));
    *(v27 + 144) = 1;
  }

  return v6;
}

void NFHardwareSerialClose(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareSerialClose", 1187);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "NFHardwareSerialClose";
    v11 = 1024;
    v12 = 1187;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (a1)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      sub_297F54914(*(v5 + 88), 2, 0, 0);
      v6 = *(a1 + 8);
      if (!*(v6 + 136) && (*a1 & 0x80000000) == 0)
      {
        close(*a1);
        *a1 = -1;
        v6 = *(a1 + 8);
      }

      if ((*(v6 + 97) & 1) == 0)
      {
        if (*(v6 + 112))
        {
          dispatch_source_set_event_handler(*(v6 + 112), &unk_2A1E95E08);
          v7 = *(a1 + 8);
          if (*(v7 + 120))
          {
            dispatch_resume(*(v7 + 112));
            v7 = *(a1 + 8);
          }

          dispatch_source_cancel(*(v7 + 112));
          dispatch_release(*(*(a1 + 8) + 112));
          v6 = *(a1 + 8);
          *(v6 + 112) = 0;
        }

        if (*(v6 + 136))
        {
          dispatch_source_set_event_handler(*(v6 + 136), &unk_2A1E95E28);
          v8 = *(a1 + 8);
          if (*(v8 + 144))
          {
            dispatch_resume(*(v8 + 136));
            v8 = *(a1 + 8);
          }

          dispatch_source_cancel(*(v8 + 136));
          dispatch_release(*(*(a1 + 8) + 136));
          v6 = *(a1 + 8);
          *(v6 + 136) = 0;
        }
      }

      if (*(v6 + 104))
      {
        dispatch_release(*(v6 + 104));
        v6 = *(a1 + 8);
        *(v6 + 104) = 0;
      }

      if (*(v6 + 176))
      {
        IONotificationPortDestroy(*(v6 + 176));
        v6 = *(a1 + 8);
        *(v6 + 176) = 0;
      }

      if (*(v6 + 184))
      {
        IOObjectRelease(*(v6 + 184));
        v6 = *(a1 + 8);
        *(v6 + 184) = 0;
      }

      free(v6);
    }

    free(a1);
  }
}

uint64_t NFHardwareSerialHasCTS(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      LOBYTE(v1) = *v1 ^ 1;
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t NFHardwareSerialGetCTS(uint64_t result)
{
  v46 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    return result;
  }

  v1 = *(result + 8);
  if (!v1)
  {
    return 0;
  }

  if (*v1 != 1)
  {
    v37 = 0;
    if (v1[1] == 1)
    {
      v36 = 4;
      v5 = getsockopt(*result, 2, 1074033770, &v37, &v36);
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      v8 = Logger;
      if (v5)
      {
        if (Logger)
        {
          v9 = __error();
          v10 = strerror(*v9);
          v11 = __error();
          v8(3, "%s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL", "NFHardwareSerialGetCTS", 1267, v10, *v11);
        }

        dispatch_get_specific(*v6);
        v12 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          return 0xFFFFFFFFLL;
        }

        v13 = __error();
        v14 = strerror(*v13);
        v15 = *__error();
        *buf = 136446978;
        v39 = "NFHardwareSerialGetCTS";
        v40 = 1024;
        v41 = 1267;
        v42 = 2080;
        v43 = v14;
        v44 = 1024;
        v45 = v15;
        v16 = "%{public}s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL";
LABEL_20:
        _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, v16, buf, 0x22u);
        return 0xFFFFFFFFLL;
      }

      if (Logger)
      {
        v27 = "HIGH";
        if ((v37 & 0x20) == 0)
        {
          v27 = "LOW";
        }

        Logger(6, "%s:%i Flow is %s (line=%x)", "NFHardwareSerialGetCTS", 1271, v27, v37);
      }

      dispatch_get_specific(*v6);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = "HIGH";
        *buf = 136446978;
        v39 = "NFHardwareSerialGetCTS";
        v40 = 1024;
        if ((v37 & 0x20) == 0)
        {
          v29 = "LOW";
        }

        v41 = 1271;
        v42 = 2080;
        v43 = v29;
        v44 = 1024;
        v45 = v37;
        v30 = "%{public}s:%i Flow is %s (line=%x)";
        v31 = v28;
        v32 = 34;
        goto LABEL_40;
      }
    }

    else
    {
      v17 = ioctl(*result, 0x4004746AuLL, &v37);
      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      v20 = v19;
      if (v17)
      {
        if (v19)
        {
          v21 = __error();
          v22 = strerror(*v21);
          v23 = __error();
          v20(3, "%s:%i %s errno=%d TIOCMSET", "NFHardwareSerialGetCTS", 1275, v22, *v23);
        }

        dispatch_get_specific(*v18);
        v12 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          return 0xFFFFFFFFLL;
        }

        v24 = __error();
        v25 = strerror(*v24);
        v26 = *__error();
        *buf = 136446978;
        v39 = "NFHardwareSerialGetCTS";
        v40 = 1024;
        v41 = 1275;
        v42 = 2080;
        v43 = v25;
        v44 = 1024;
        v45 = v26;
        v16 = "%{public}s:%i %s errno=%d TIOCMSET";
        goto LABEL_20;
      }

      if (v19)
      {
        if ((v37 & 0x20) != 0)
        {
          v33 = "HIGH";
        }

        else
        {
          v33 = "LOW";
        }

        v19(6, "%s:%i Flow is %s", "NFHardwareSerialGetCTS", 1278, v33);
      }

      dispatch_get_specific(*v18);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if ((v37 & 0x20) != 0)
        {
          v35 = "HIGH";
        }

        else
        {
          v35 = "LOW";
        }

        *buf = 136446722;
        v39 = "NFHardwareSerialGetCTS";
        v40 = 1024;
        v41 = 1278;
        v42 = 2080;
        v43 = v35;
        v30 = "%{public}s:%i Flow is %s";
        v31 = v34;
        v32 = 28;
LABEL_40:
        _os_log_impl(&dword_297F52000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      }
    }

    return (v37 >> 5) & 1;
  }

  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v3 = NFLogGetLogger();
  if (v3)
  {
    v3(6, "%s:%i Ignoring for SPMI", "NFHardwareSerialGetCTS", 1257);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 136446466;
    v39 = "NFHardwareSerialGetCTS";
    v40 = 1024;
    v41 = 1257;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Ignoring for SPMI", buf, 0x12u);
    return 0;
  }

  return result;
}

BOOL NFHardwareSerialSetCRCEnabled(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (*v2 != 1)
  {
    return 1;
  }

  v25 = a2;
  v3 = *a1;
  if (v2[1] != 1)
  {
    if (ioctl(v3, 0x80047301uLL, &v25))
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v17 = Logger;
        v18 = __error();
        v19 = strerror(*v18);
        v20 = __error();
        v17(3, "%s:%i %s errno=%d IO_STOCKHOLM_CRC", "NFHardwareSerialSetCRCEnabled", 1301, v19, *v20);
      }

      dispatch_get_specific(*v15);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = __error();
        v23 = strerror(*v22);
        v24 = *__error();
        *buf = 136446978;
        v27 = "NFHardwareSerialSetCRCEnabled";
        v28 = 1024;
        v29 = 1301;
        v30 = 2080;
        v31 = v23;
        v32 = 1024;
        v33 = v24;
        _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d IO_STOCKHOLM_CRC", buf, 0x22u);
      }
    }

    return 1;
  }

  if (!setsockopt(v3, 2, -2147192063, &v25, 4u))
  {
    return 1;
  }

  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v5 = NFLogGetLogger();
  if (v5)
  {
    v6 = v5;
    v7 = __error();
    v8 = strerror(*v7);
    v9 = __error();
    v6(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL", "NFHardwareSerialSetCRCEnabled", 1295, v8, *v9);
  }

  dispatch_get_specific(*v4);
  v10 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12 = __error();
    v13 = strerror(*v12);
    v14 = *__error();
    *buf = 136446978;
    v27 = "NFHardwareSerialSetCRCEnabled";
    v28 = 1024;
    v29 = 1295;
    v30 = 2080;
    v31 = v13;
    v32 = 1024;
    v33 = v14;
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL", buf, 0x22u);
    return 0;
  }

  return result;
}

BOOL NFHardwareSerialSetOnDemandClientMode(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (*v2 != 1)
  {
    return 1;
  }

  v25 = a2;
  v3 = *a1;
  if (v2[1] == 1)
  {
    if (setsockopt(v3, 2, -2147192062, &v25, 4u))
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        v7 = __error();
        v8 = strerror(*v7);
        v9 = __error();
        v6(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_ON_DEMAND_CLIENT", "NFHardwareSerialSetOnDemandClientMode", 1321, v8, *v9);
      }

      dispatch_get_specific(*v4);
      v10 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v12 = __error();
        v13 = strerror(*v12);
        v14 = *__error();
        *buf = 136446978;
        v27 = "NFHardwareSerialSetOnDemandClientMode";
        v28 = 1024;
        v29 = 1321;
        v30 = 2080;
        v31 = v13;
        v32 = 1024;
        v33 = v14;
        v15 = "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_ON_DEMAND_CLIENT";
LABEL_13:
        _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, v15, buf, 0x22u);
        return 0;
      }

      return result;
    }

    return 1;
  }

  if (!ioctl(v3, 0x80047302uLL, &v25))
  {
    return 1;
  }

  v16 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = __error();
    v20 = strerror(*v19);
    v21 = __error();
    v18(3, "%s:%i %s errno=%d IO_STOCKHOLM_ON_DEMAND_CLIENT", "NFHardwareSerialSetOnDemandClientMode", 1327, v20, *v21);
  }

  dispatch_get_specific(*v16);
  v10 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v22 = __error();
    v23 = strerror(*v22);
    v24 = *__error();
    *buf = 136446978;
    v27 = "NFHardwareSerialSetOnDemandClientMode";
    v28 = 1024;
    v29 = 1327;
    v30 = 2080;
    v31 = v23;
    v32 = 1024;
    v33 = v24;
    v15 = "%{public}s:%i %s errno=%d IO_STOCKHOLM_ON_DEMAND_CLIENT";
    goto LABEL_13;
  }

  return result;
}

BOOL NFHardwareSerialQuerySPMIError(uint64_t a1, void *a2, void *a3, int a4)
{
  v49 = *MEMORY[0x29EDCA608];
  v40 = 0;
  v8 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareSerialQuerySPMIError", 1340);
  }

  dispatch_get_specific(*v8);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v42 = "NFHardwareSerialQuerySPMIError";
    v43 = 1024;
    v44 = 1340;
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (!a2 || !a3)
  {
    dispatch_get_specific(*v8);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v24(3, "%s:%i Invalid parameter", "NFHardwareSerialQuerySPMIError", 1343);
    }

    dispatch_get_specific(*v8);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v42 = "NFHardwareSerialQuerySPMIError";
    v43 = 1024;
    v44 = 1343;
    v21 = "%{public}s:%i Invalid parameter";
LABEL_18:
    v22 = v25;
    v23 = 18;
    goto LABEL_19;
  }

  v11 = *(a1 + 8);
  if ((*v11 & 1) == 0)
  {
    *a3 = 0;
    return 1;
  }

  if (v11[1] != 1)
  {
    dispatch_get_specific(*v8);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(3, "%s:%i Not implemented.", "NFHardwareSerialQuerySPMIError", 1368);
    }

    dispatch_get_specific(*v8);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446466;
    v42 = "NFHardwareSerialQuerySPMIError";
    v43 = 1024;
    v44 = 1368;
    v21 = "%{public}s:%i Not implemented.";
    goto LABEL_18;
  }

  v40 = *a3;
  if (getsockopt(*a1, 2, 1077965571, a2, &v40))
  {
    dispatch_get_specific(*v8);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v13 = v12;
      v14 = __error();
      v15 = strerror(*v14);
      v16 = __error();
      v13(3, "%s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_SPMIERRORS", "NFHardwareSerialQuerySPMIError", 1356, v15, *v16);
    }

    dispatch_get_specific(*v8);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v18 = __error();
    v19 = strerror(*v18);
    v20 = *__error();
    *buf = 136446978;
    v42 = "NFHardwareSerialQuerySPMIError";
    v43 = 1024;
    v44 = 1356;
    v45 = 2080;
    v46 = v19;
    v47 = 1024;
    v48 = v20;
    v21 = "%{public}s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_SPMIERRORS";
    v22 = v17;
    v23 = 34;
LABEL_19:
    _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    return 0;
  }

  *a3 = v40;
  v39 = a4;
  v29 = setsockopt(*a1, 2, -2147192060, &v39, 4u);
  v26 = v29 == 0;
  if (v29)
  {
    dispatch_get_specific(*v8);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = __error();
      v33 = strerror(*v32);
      v34 = __error();
      v31(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_SPMI_CLEAR_ERRORS", "NFHardwareSerialQuerySPMIError", 1363, v33, *v34);
    }

    dispatch_get_specific(*v8);
    v35 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = __error();
      v37 = strerror(*v36);
      v38 = *__error();
      *buf = 136446978;
      v42 = "NFHardwareSerialQuerySPMIError";
      v43 = 1024;
      v44 = 1363;
      v45 = 2080;
      v46 = v37;
      v47 = 1024;
      v48 = v38;
      _os_log_impl(&dword_297F52000, v35, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_SPMI_CLEAR_ERRORS", buf, 0x22u);
    }
  }

  return v26;
}

BOOL NFHardwareSerialRegisterSPMIErrorCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareSerialRegisterSPMIErrorCallback", 1416);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "NFHardwareSerialRegisterSPMIErrorCallback";
    v32 = 1024;
    v33 = 1416;
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (a1)
  {
    if (!a2)
    {
      dispatch_get_specific(*v6);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i Invalid callback parameter", "NFHardwareSerialRegisterSPMIErrorCallback", 1423);
      }

      dispatch_get_specific(*v6);
      v11 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v31 = "NFHardwareSerialRegisterSPMIErrorCallback";
        v32 = 1024;
        v33 = 1423;
        v13 = "%{public}s:%i Invalid callback parameter";
        goto LABEL_21;
      }

      return result;
    }

    v9 = a1[1];
    if (*v9 == 1)
    {
      if (*(v9 + 192))
      {
        dispatch_get_specific(*v6);
        v10 = NFLogGetLogger();
        if (v10)
        {
          v10(3, "%s:%i Callback already registered", "NFHardwareSerialRegisterSPMIErrorCallback", 1434);
        }

        dispatch_get_specific(*v6);
        v11 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          v31 = "NFHardwareSerialRegisterSPMIErrorCallback";
          v32 = 1024;
          v33 = 1434;
          v13 = "%{public}s:%i Callback already registered";
LABEL_21:
          _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
          return 0;
        }

        return result;
      }

      if (!*(v9 + 176))
      {
        if (*(v9 + 96))
        {
          v16 = "AppleStockholmSPMI";
        }

        else
        {
          v16 = "AppleHammerfestSPMI";
        }

        dispatch_get_specific(*v6);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v17(6, "%s:%i Creating IONotificationPort for %s", "NFHardwareSerialRegisterSPMIErrorCallback", 1440, v16);
        }

        dispatch_get_specific(*v6);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v31 = "NFHardwareSerialRegisterSPMIErrorCallback";
          v32 = 1024;
          v33 = 1440;
          v34 = 2080;
          v35 = v16;
          _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Creating IONotificationPort for %s", buf, 0x1Cu);
        }

        v19 = *MEMORY[0x29EDBB110];
        v20 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
        *(v9 + 176) = v20;
        if (!v20)
        {
          dispatch_get_specific(*v6);
          v27 = NFLogGetLogger();
          if (v27)
          {
            v27(3, "%s:%i Unable to create notify port", "NFHardwareSerialRegisterSPMIErrorCallback", 1444);
          }

          dispatch_get_specific(*v6);
          v11 = NFSharedLogGetLogger();
          result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136446466;
            v31 = "NFHardwareSerialRegisterSPMIErrorCallback";
            v32 = 1024;
            v33 = 1444;
            v13 = "%{public}s:%i Unable to create notify port";
            goto LABEL_21;
          }

          return result;
        }

        IONotificationPortSetDispatchQueue(v20, *(v9 + 104));
        v21 = IOServiceNameMatching(v16);
        MatchingService = IOServiceGetMatchingService(v19, v21);
        if (!MatchingService)
        {
          dispatch_get_specific(*v6);
          v28 = NFLogGetLogger();
          if (v28)
          {
            v28(3, "%s:%i Service %s not available", "NFHardwareSerialRegisterSPMIErrorCallback", 1452, v16);
          }

          dispatch_get_specific(*v6);
          v29 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v31 = "NFHardwareSerialRegisterSPMIErrorCallback";
            v32 = 1024;
            v33 = 1452;
            v34 = 2080;
            v35 = v16;
            _os_log_impl(&dword_297F52000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i Service %s not available", buf, 0x1Cu);
          }

          IONotificationPortDestroy(*(v9 + 176));
          result = 0;
          *(v9 + 176) = 0;
          return result;
        }

        v23 = MatchingService;
        v24 = IOServiceAddInterestNotification(*(v9 + 176), MatchingService, "IOGeneralInterest", sub_297F67880, a1, (v9 + 184));
        IOObjectRelease(v23);
        if (v24)
        {
          dispatch_get_specific(*v6);
          v25 = NFLogGetLogger();
          if (v25)
          {
            v25(3, "%s:%i Notification subscription failed: %d", "NFHardwareSerialRegisterSPMIErrorCallback", 1463, v24);
          }

          dispatch_get_specific(*v6);
          v26 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v31 = "NFHardwareSerialRegisterSPMIErrorCallback";
            v32 = 1024;
            v33 = 1463;
            v34 = 1024;
            LODWORD(v35) = v24;
            _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Notification subscription failed: %d", buf, 0x18u);
          }

          IONotificationPortDestroy(*(v9 + 176));
          result = 0;
          *(v9 + 176) = 0;
          *(v9 + 184) = 0;
          return result;
        }
      }

      *(v9 + 192) = a2;
      *(v9 + 200) = a3;
    }

    return 1;
  }

  dispatch_get_specific(*v6);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Invalid serial parameter", "NFHardwareSerialRegisterSPMIErrorCallback", 1419);
  }

  dispatch_get_specific(*v6);
  v11 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v31 = "NFHardwareSerialRegisterSPMIErrorCallback";
    v32 = 1024;
    v33 = 1419;
    v13 = "%{public}s:%i Invalid serial parameter";
    goto LABEL_21;
  }

  return result;
}

void sub_297F67880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a3 != -469794815)
  {
    return;
  }

  if (!a1)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Null serial", "_NFHardwareSerialSPMIIOServiceCallback", 1383);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v17 = "_NFHardwareSerialSPMIIOServiceCallback";
    v18 = 1024;
    v19 = 1383;
    v11 = "%{public}s:%i Null serial";
LABEL_24:
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
    return;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Null serial internals", "_NFHardwareSerialSPMIIOServiceCallback", 1389);
    }

    dispatch_get_specific(*v12);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v17 = "_NFHardwareSerialSPMIIOServiceCallback";
    v18 = 1024;
    v19 = 1389;
    v11 = "%{public}s:%i Null serial internals";
    goto LABEL_24;
  }

  v5 = *(v4 + 192);
  if (!v5)
  {
    return;
  }

  if (a4)
  {
    for (i = 0; i < 0x40; i += *(a4 + i + 1) + 2)
    {
      if (!*(a4 + i))
      {
        break;
      }
    }

    v7 = *(v4 + 200);

    v5(v7, a4);
    return;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(3, "%s:%i Got a null buffer", "_NFHardwareSerialSPMIIOServiceCallback", 1400);
  }

  dispatch_get_specific(*v14);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v17 = "_NFHardwareSerialSPMIIOServiceCallback";
    v18 = 1024;
    v19 = 1400;
    v11 = "%{public}s:%i Got a null buffer";
    goto LABEL_24;
  }
}

void sub_297F67B20(const char *a1)
{
  v56 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (MatchingService)
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s found", "_NFHardwarePrintNode", 149, a1);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFHardwarePrintNode";
      *&buf[12] = 1024;
      *&buf[14] = 149;
      *&buf[18] = 2080;
      *&buf[20] = a1;
      _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s found", buf, 0x1Cu);
    }

    child = 0;
    if (IORegistryEntryGetChildEntry(MatchingService, "IOService", &child))
    {
      dispatch_get_specific(*v5);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(6, "%s:%i %s has no child", "_NFHardwarePrintNode", 162, a1);
      }

      dispatch_get_specific(*v5);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 162;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has no child", buf, 0x1Cu);
      }
    }

    else if (child)
    {
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      v51 = 0u;
      v52 = 0u;
      memset(buf, 0, sizeof(buf));
      if (!MEMORY[0x29C27C310]())
      {
        dispatch_get_specific(*v5);
        v11 = NFLogGetLogger();
        if (v11)
        {
          v11(6, "%s:%i %s has child %s", "_NFHardwarePrintNode", 157, a1, buf);
        }

        dispatch_get_specific(*v5);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 136446978;
          v43 = "_NFHardwarePrintNode";
          v44 = 1024;
          v45 = 157;
          v46 = 2080;
          v47 = a1;
          v48 = 2080;
          v49 = buf;
          _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has child %s", v42, 0x26u);
        }
      }

      IOObjectRelease(child);
    }

    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IONameMatch", 0, 0);
    if (CFProperty)
    {
      v14 = CFProperty;
      v15 = sub_297F682C4(CFProperty);
      dispatch_get_specific(*v5);
      v16 = NFLogGetLogger();
      if (v16)
      {
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = "??";
        }

        v16(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 168, a1, "IONameMatch", v17);
      }

      dispatch_get_specific(*v5);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 168;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IONameMatch";
        *&buf[38] = 2080;
        *&buf[40] = v19;
        _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v15)
      {
        free(v15);
      }

      CFRelease(v14);
    }

    v20 = IORegistryEntryCreateCFProperty(MatchingService, @"IONameMatched", 0, 0);
    if (v20)
    {
      v21 = v20;
      v22 = sub_297F682C4(v20);
      dispatch_get_specific(*v5);
      v23 = NFLogGetLogger();
      if (v23)
      {
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = "??";
        }

        v23(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 176, a1, "IONameMatched", v24);
      }

      dispatch_get_specific(*v5);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (v22)
        {
          v26 = v22;
        }

        else
        {
          v26 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 176;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IONameMatched";
        *&buf[38] = 2080;
        *&buf[40] = v26;
        _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v22)
      {
        free(v22);
      }

      CFRelease(v21);
    }

    v27 = IORegistryEntryCreateCFProperty(MatchingService, @"IOMatchCategory", 0, 0);
    if (v27)
    {
      v28 = v27;
      v29 = sub_297F682C4(v27);
      dispatch_get_specific(*v5);
      v30 = NFLogGetLogger();
      if (v30)
      {
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = "??";
        }

        v30(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 184, a1, "IOMatchCategory", v31);
      }

      dispatch_get_specific(*v5);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        if (v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 184;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IOMatchCategory";
        *&buf[38] = 2080;
        *&buf[40] = v33;
        _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v29)
      {
        free(v29);
      }

      CFRelease(v28);
    }

    v34 = IORegistryEntryCreateCFProperty(MatchingService, @"IOUserClientClass", 0, 0);
    if (v34)
    {
      v35 = v34;
      v36 = sub_297F682C4(v34);
      dispatch_get_specific(*v5);
      v37 = NFLogGetLogger();
      if (v37)
      {
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = "??";
        }

        v37(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 192, a1, "IOUserClientClass", v38);
      }

      dispatch_get_specific(*v5);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        if (v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 192;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IOUserClientClass";
        *&buf[38] = 2080;
        *&buf[40] = v40;
        _os_log_impl(&dword_297F52000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v36)
      {
        free(v36);
      }

      CFRelease(v35);
    }

    IOObjectRelease(MatchingService);
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s NOT found", "_NFHardwarePrintNode", 199, a1);
    }

    dispatch_get_specific(*v5);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFHardwarePrintNode";
      *&buf[12] = 1024;
      *&buf[14] = 199;
      *&buf[18] = 2080;
      *&buf[20] = a1;
      _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s NOT found", buf, 0x1Cu);
    }
  }
}

char *sub_297F682C4(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {
    v3 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
    if (v3)
    {
      CFStringGetCString(a1, v3, 256, 0x8000100u);
    }

    return v3;
  }

  else
  {

    return strdup("");
  }
}

uint64_t sub_297F6835C(io_iterator_t a1, const char *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v28 = 0;
  if (a1 && IOIteratorIsValid(a1))
  {
    v4 = MEMORY[0x29EDC9730];
    while (1)
    {
      v5 = IOIteratorNext(a1);
      if (!v5)
      {
        return 0;
      }

      v6 = v5;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(__s1, 0, sizeof(__s1));
      v7 = MEMORY[0x29C27C310](v5, __s1) ? 0 : strdup(__s1);
      CFProperty = IORegistryEntryCreateCFProperty(v6, @"IONameMatch", 0, 0);
      if (CFProperty)
      {
        v9 = CFProperty;
        v10 = sub_297F682C4(CFProperty);
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = v10;
        if (strcmp(v10, a2))
        {
          goto LABEL_11;
        }

        dispatch_get_specific(*v4);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i Found property %s : %s", "_NFHardwareIsEntryMatching", 214, "IONameMatch", v11);
        }

        dispatch_get_specific(*v4);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *__s1 = 136446978;
          *&__s1[4] = "_NFHardwareIsEntryMatching";
          *&__s1[12] = 1024;
          *&__s1[14] = 214;
          *&__s1[18] = 2080;
          *&__s1[20] = "IONameMatch";
          *&__s1[28] = 2080;
          *&__s1[30] = v11;
          _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found property %s : %s", __s1, 0x26u);
        }

        free(v11);
        CFRelease(v9);
        v16 = IORegistryEntryCreateCFProperty(v6, @"IOClass", 0, 0);
        if (v16)
        {
          break;
        }
      }

LABEL_13:
      if (MEMORY[0x29C27C300](v6, "IOService", &v28))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        IOObjectRelease(v6);
        v13 = sub_297F6835C(v28, a2);
        v12 = v13 != 0;
        LODWORD(v6) = v28;
      }

      IOObjectRelease(v6);
      if (v7)
      {
        free(v7);
      }

      if (v12)
      {
        return v13;
      }

      if (!IOIteratorIsValid(a1))
      {
        goto LABEL_46;
      }
    }

    v9 = v16;
    v17 = sub_297F682C4(v16);
    if (v17)
    {
      v11 = v17;
      if (!strcmp(v17, "AppleStockholmControl"))
      {
        dispatch_get_specific(*v4);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v18(6, "%s:%i Found property %s : %s", "_NFHardwareIsEntryMatching", 226, "IOPropertyMatch", v11);
        }

        dispatch_get_specific(*v4);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *__s1 = 136446978;
          *&__s1[4] = "_NFHardwareIsEntryMatching";
          *&__s1[12] = 1024;
          *&__s1[14] = 226;
          *&__s1[18] = 2080;
          *&__s1[20] = "IOPropertyMatch";
          *&__s1[28] = 2080;
          *&__s1[30] = v11;
          _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found property %s : %s", __s1, 0x26u);
        }

        free(v11);
        CFRelease(v9);
        dispatch_get_specific(*v4);
        v20 = NFLogGetLogger();
        if (v20)
        {
          if (v7)
          {
            v21 = v7;
          }

          else
          {
            v21 = "??";
          }

          v20(6, "%s:%i %s has matching {%s / %s}", "_NFHardwareWalkTree", 274, v21, "AppleStockholmControl", a2);
        }

        dispatch_get_specific(*v4);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          if (v7)
          {
            v23 = v7;
          }

          else
          {
            v23 = "??";
          }

          *__s1 = 136447234;
          *&__s1[4] = "_NFHardwareWalkTree";
          *&__s1[12] = 1024;
          *&__s1[14] = 274;
          *&__s1[18] = 2080;
          *&__s1[20] = v23;
          *&__s1[28] = 2080;
          *&__s1[30] = "AppleStockholmControl";
          *&__s1[38] = 2080;
          *&__s1[40] = a2;
          _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has matching {%s / %s}", __s1, 0x30u);
        }

        if (v7)
        {
          free(v7);
        }

        return v6;
      }

LABEL_11:
      free(v11);
    }

LABEL_12:
    CFRelease(v9);
    goto LABEL_13;
  }

  v13 = 0;
LABEL_46:
  v24 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i Invalid iterator", "_NFHardwareWalkTree", 263);
  }

  dispatch_get_specific(*v24);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *__s1 = 136446466;
    *&__s1[4] = "_NFHardwareWalkTree";
    *&__s1[12] = 1024;
    *&__s1[14] = 263;
    _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid iterator", __s1, 0x12u);
  }

  return v13;
}

void sub_297F68880()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Error ! Unexpected invocation of read handler", "_NFHardwareSerialCreateSources_block_invoke", 1083);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v4 = "_NFHardwareSerialCreateSources_block_invoke";
    v5 = 1024;
    v6 = 1083;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected invocation of read handler", buf, 0x12u);
  }
}

void sub_297F68970()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Error ! Unexpected invocation of write handler", "_NFHardwareSerialCreateSources_block_invoke_2", 1093);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v4 = "_NFHardwareSerialCreateSources_block_invoke_2";
    v5 = 1024;
    v6 = 1093;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected invocation of write handler", buf, 0x12u);
  }
}

void sub_297F68A64()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Error ! Unexpected invocation of read handler", "_NFHardwareSerialDeleteSources_block_invoke", 1106);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v4 = "_NFHardwareSerialDeleteSources_block_invoke";
    v5 = 1024;
    v6 = 1106;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected invocation of read handler", buf, 0x12u);
  }
}

char *sub_297F68B54(int a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((!a1 || (v2 = qword_2A18BD258) == 0) && ((a1 & 1) != 0 || (v2 = qword_2A18BD250) == 0))
  {
    v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x1030040A57A3815uLL);
    if (v2)
    {
      if (sub_297F68F68())
      {
        *v2 = 0x10000000102ELL;
        v3 = 4096;
        *(v2 + 2) = 4096;
        v4 = 4158;
      }

      else if (a1)
      {
        if (NFLogGetProcessNCIOnly())
        {
          v5 = 260;
        }

        else
        {
          v5 = 1024;
        }

        *v2 = v5;
        *(v2 + 4) = 0x8000000080;
        v4 = v5 | 0x10;
        v3 = 128;
      }

      else
      {
        *v2 = 0x4000000104;
        *(v2 + 2) = 128;
        v3 = 64;
        v4 = 276;
      }

      v6 = (v3 * v4);
      *(v2 + 6) = v6;
      v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
      *(v2 + 2) = v7;
      *(v2 + 4) = v7;
      *(v2 + 5) = v7;
      *(v2 + 6) = 0;
      *(v2 + 14) = 0;
      v2[60] = a1;
      *(v2 + 8) = 0;
      v2[88] = 0;
      gettimeofday((v2 + 72), 0);
      *(v2 + 23) = 0;
      v8 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i NFHardwareSerialDebug size = %lu", "NFHardwareSerialDebugger", 143, 96);
      }

      dispatch_get_specific(*v8);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "NFHardwareSerialDebugger";
        v22 = 1024;
        v23 = 143;
        v24 = 2048;
        v25 = 96;
        _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i NFHardwareSerialDebug size = %lu", buf, 0x1Cu);
      }

      dispatch_get_specific(*v8);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i NFHardwareSerialDebugMsg size = %lu", "NFHardwareSerialDebugger", 144, 16);
      }

      dispatch_get_specific(*v8);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "NFHardwareSerialDebugger";
        v22 = 1024;
        v23 = 144;
        v24 = 2048;
        v25 = 16;
        _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i NFHardwareSerialDebugMsg size = %lu", buf, 0x1Cu);
      }

      dispatch_get_specific(*v8);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i s_compactTime size = %lu", "NFHardwareSerialDebugger", 145, 4);
      }

      dispatch_get_specific(*v8);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "NFHardwareSerialDebugger";
        v22 = 1024;
        v23 = 145;
        v24 = 2048;
        v25 = 4;
        _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i s_compactTime size = %lu", buf, 0x1Cu);
      }

      dispatch_get_specific(*v8);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i debugger->msgListLength size = %d", "NFHardwareSerialDebugger", 146, *(v2 + 6));
      }

      dispatch_get_specific(*v8);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v2 + 6);
        *buf = 136446722;
        v21 = "NFHardwareSerialDebugger";
        v22 = 1024;
        v23 = 146;
        v24 = 1024;
        LODWORD(v25) = v17;
        _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i debugger->msgListLength size = %d", buf, 0x18u);
      }

      v18 = &qword_2A18BD250;
      if (a1)
      {
        v18 = &qword_2A18BD258;
      }

      *v18 = v2;
    }
  }

  return v2;
}

BOOL sub_297F68F68()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFBooleanGetValue(v0) != 0;
  CFRelease(v1);
  return v2;
}

char *NFHardwareSerialDebugLastMessage(int a1)
{
  v1 = &qword_2A18BD250;
  if (!a1)
  {
    v1 = &qword_2A18BD258;
  }

  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  os_unfair_lock_lock((v2 + 92));
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = strdup(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((v2 + 92));
  return v4;
}

void sub_297F6902C(int *a1, void (*a2)(void, CFDataRef))
{
  v67 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(a1 + 23);
  v4 = MEMORY[0x29EDC9730];
  if (*(a1 + 2))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      free(v5);
      *(a1 + 8) = 0;
    }

    v6 = *(a1 + 6);
    if (!v6)
    {
      v6 = *(a1 + 4);
    }

    v7 = malloc_type_calloc(1uLL, 0x100uLL, 0x100004077774924uLL);
    *(a1 + 8) = v7;
    if (v7)
    {
      if (v6 != **(a1 + 5))
      {
        v8 = v7;
        v9 = 255;
        while (1)
        {
          if (*(v6 + 14) - 12 < 0xFFFFFFF5)
          {
            goto LABEL_41;
          }

          v10 = snprintf(v8, v9, "%s", *(&unk_29EE86C70 + *(v6 + 14)));
          v11 = __OFSUB__(v9, v10);
          v9 -= v10;
          if ((v9 < 0) ^ v11 | (v9 == 0))
          {
            goto LABEL_41;
          }

          v8 += v10;
          v12 = *(v6 + 6);
          v13._os_unfair_lock_opaque = *a1;
          if (*a1 >= v12)
          {
            v13._os_unfair_lock_opaque = *(v6 + 6);
          }

          os_unfair_lock_opaque = v13._os_unfair_lock_opaque;
          v15 = v6 + 15;
          v16 = *(a1 + 2) + a1[6];
          if (v6 + v12 + 15 > v16)
          {
            v17 = v16 - v15;
            if (v17 >= os_unfair_lock_opaque)
            {
              v18 = os_unfair_lock_opaque;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              v19 = v18;
              do
              {
                v20 = *v15++;
                v21 = snprintf(v8, v9, "%02x", v20);
                v11 = __OFSUB__(v9, v21);
                v9 -= v21;
                if ((v9 < 0) ^ v11 | (v9 == 0))
                {
                  goto LABEL_41;
                }

                v8 += v21;
                --v19;
              }

              while (v19);
              v15 = *(a1 + 2);
            }

            else
            {
              v15 = *(a1 + 2);
            }

            os_unfair_lock_opaque -= v18;
          }

          if (os_unfair_lock_opaque)
          {
            break;
          }

LABEL_27:
          v6 = *v6;
          if (v6 == **(a1 + 5) || v9 <= 0)
          {
            goto LABEL_41;
          }
        }

        while (1)
        {
          v22 = *v15++;
          v23 = snprintf(v8, v9, "%02x", v22);
          v11 = __OFSUB__(v9, v23);
          v9 -= v23;
          if ((v9 < 0) ^ v11 | (v9 == 0))
          {
            break;
          }

          v8 += v23;
          if (!--os_unfair_lock_opaque)
          {
            goto LABEL_27;
          }
        }
      }
    }

    else
    {
      dispatch_get_specific(*v4);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i failed to allocate last msg buffer", "_NFHardwareSerialDebugSaveLastMessage", 201);
      }

      dispatch_get_specific(*v4);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v62 = "_NFHardwareSerialDebugSaveLastMessage";
        v63 = 1024;
        v64 = 201;
        _os_log_impl(&dword_297F52000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to allocate last msg buffer", buf, 0x12u);
      }
    }

LABEL_41:
    v29 = a1[2];
    if (!sub_297F68F68())
    {
      buf[0] = 0;
      v30 = *(a1 + 60) ? @"com.apple.stockholm" : *MEMORY[0x29EDB8FA0];
      CFPreferencesAppSynchronize(v30);
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"UARTDumpMaxEntries", v30, buf);
      if (buf[0])
      {
        v29 = AppIntegerValue;
      }
    }

    v32 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v33(6, "%s:%i Printing last %ld messages", "NFHardwareSerialDebugDump_wCB", 412, v29);
    }

    dispatch_get_specific(*v32);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v62 = "NFHardwareSerialDebugDump_wCB";
      v63 = 1024;
      v64 = 412;
      v65 = 2048;
      v66 = v29;
      _os_log_impl(&dword_297F52000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Printing last %ld messages", buf, 0x1Cu);
    }

    v35 = malloc_type_calloc(1uLL, *a1, 0x100004077774924uLL);
    v36 = *MEMORY[0x29EDB8ED8];
    v37 = *(a1 + 4);
    while (1)
    {
      if (*(v37 + 14))
      {
        if (*(v37 + 14) < 0xCu)
        {
          v38 = a1[14];
          if (v29 > v38)
          {
            v39 = *(&unk_29EE86C70 + *(v37 + 14));
            v40 = "";
            if (*a1 < *(v37 + 6))
            {
              v40 = "TRUNCATED";
            }

            v41 = *(v37 + 2);
            v42 = *(a1 + 9) + (*&v41 & 0x3FFFFFLL);
            v43 = a1[20] + 1000 * (v41 >> 22);
            if (v43 > 0xF423F)
            {
              v43 -= 1000000;
              ++v42;
            }

            snprintf(buf, 0x80uLL, "%ld.%.3d %s %s", v42, v43, v39, v40);
            v44 = *(a1 + 4);
            v45 = *(v44 + 12);
            if (*a1 >= v45)
            {
              v46._os_unfair_lock_opaque = *(v44 + 12);
            }

            else
            {
              v46._os_unfair_lock_opaque = *a1;
            }

            v47 = (v44 + 15);
            v48 = v44 + 15 + v45;
            v49 = *(a1 + 2) + a1[6];
            if (v48 > v49)
            {
              v50 = v49 - v47;
              if (v46._os_unfair_lock_opaque >= v50)
              {
                v51 = v50;
              }

              else
              {
                v51 = v46._os_unfair_lock_opaque;
              }

              memcpy(v35, v47, v51);
              memcpy(&v35[v51], *(a1 + 2), v46._os_unfair_lock_opaque - v51);
              v47 = v35;
            }

            if (a2)
            {
              v52 = CFDataCreate(v36, v47, v46._os_unfair_lock_opaque);
              if (v52)
              {
                v53 = v52;
                a2(*(*(a1 + 4) + 14), v52);
                CFRelease(v53);
              }

              else
              {
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v54 = NFLogGetLogger();
                if (v54)
                {
                  v54(3, "%s:%i failed to msg", "NFHardwareSerialDebugDump_wCB", 476);
                }

                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v55 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  *v57 = 136446466;
                  v58 = "NFHardwareSerialDebugDump_wCB";
                  v59 = 1024;
                  v60 = 476;
                  _os_log_impl(&dword_297F52000, v55, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to msg", v57, 0x12u);
                }
              }
            }

            NFSharedDumpTransport();
            v37 = *(a1 + 4);
            LODWORD(v38) = a1[14];
          }

          *(v37 + 14) = 0;
          v37 = *v37;
          *(a1 + 4) = v37;
          goto LABEL_78;
        }

        *(v37 + 14) = 0;
      }

      v37 = *v37;
      *(a1 + 4) = v37;
      LODWORD(v38) = a1[14];
LABEL_78:
      a1[14] = v38 - 1;
      if (v37 == **(a1 + 5))
      {
        free(v35);
        v56 = *(a1 + 2);
        *(a1 + 4) = v56;
        *(a1 + 5) = v56;
        *v56 = v56;
        NFSharedDumpTransport();
        os_unfair_lock_unlock(a1 + 23);
        return;
      }
    }
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i Buffers not allocated", "NFHardwareSerialDebugDump_wCB", 390);
  }

  dispatch_get_specific(*v4);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v62 = "NFHardwareSerialDebugDump_wCB";
    v63 = 1024;
    v64 = 390;
    _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Buffers not allocated", buf, 0x12u);
  }
}

void NFHardwareSerialDump_0()
{
  if (qword_2A18BD258)
  {
    sub_297F6902C(qword_2A18BD258, 0);
    v0 = vars8;
  }

  v1 = qword_2A18BD250;
  if (qword_2A18BD250)
  {

    sub_297F6902C(v1, 0);
  }
}

char **NFHardwareInterfaceOpen(const char *a1, NSObject *a2)
{
  v67 = *MEMORY[0x29EDCA608];
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (!v4)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to allocate interface %s", "NFHardwareInterfaceOpen", 66, a1);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v62 = "NFHardwareInterfaceOpen";
      v63 = 1024;
      v64 = 66;
      v65 = 2080;
      v66 = a1;
      _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate interface %s", buf, 0x1Cu);
    }

    return 0;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, 0x110uLL, 0x900403F894496uLL);
  if (!v6)
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to allocate interface %s", "NFHardwareInterfaceOpen", 72, a1);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v62 = "NFHardwareInterfaceOpen";
      v63 = 1024;
      v64 = 72;
      v65 = 2080;
      v66 = a1;
      _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate interface %s", buf, 0x1Cu);
    }

    goto LABEL_49;
  }

  v7 = v6;
  *v5 = v6;
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "com.apple.stockholm";
  }

  v9 = strdup(v8);
  *v7 = v9;
  if (!strncmp("com.apple.", v9, 0xAuLL))
  {
    v19 = NFHardwareSerialOpen(v9, a2, 0);
    *(v7 + 18) = v19;
    *(v7 + 1) = NFHardwareSerialSetBaudRate;
    *(v7 + 2) = 0;
    *(v7 + 3) = NFHardwareSerialReadBlock;
    *(v7 + 4) = 0;
    *(v7 + 5) = NFHardwareSerialWriteBlock;
    *(v7 + 6) = 0;
    *(v7 + 7) = NFHardwareSerialReadBlockAbort;
    *(v7 + 8) = NFHardwareSerialWriteBlockAbort;
    *(v7 + 9) = NFHardwareSerialFlush;
    *(v7 + 10) = NFHardwareSerialReset;
    *(v7 + 11) = NFHardwareSerialSetLogFunction;
    *(v7 + 12) = NFHardwareSerialEnableLog;
    v60 = v8;
    if (!v19 || (v20 = *(v19 + 1)) == 0 || (v21 = NFHardwareSerialGetCTS, *v20 == 1))
    {
      v21 = 0;
    }

    *(v7 + 13) = v21;
    *(v7 + 14) = NFHardwareSerialSetCRCEnabled;
    *(v7 + 15) = NFHardwareSerialSetOnDemandClientMode;
    *(v7 + 16) = NFHardwareSerialQuerySPMIError;
    *(v7 + 17) = NFHardwareSerialClose;
    if (strcasestr(*v7, "hammerfest"))
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v23 = NFHardwareGPIOOpen(v22);
    *(v7 + 33) = v23;
    *(v7 + 19) = NFHardwareGPIOSetDeviceWake;
    v24 = NFHardwareSerialRegisterSPMIErrorCallback;
    v25 = NFHardwareGPIOConfigureHammerfestSPMI;
    v26 = NFHardwareGPIOValidateSPMIConfig;
    v27 = NFHardwareGPIOClose;
    v28 = NFHardwareGPIOSPMIvGPIO;
    v29 = NFHardwareGPIOSPMIFollowerReset;
    v30 = NFHardwareGPIOWasItSPMINack;
    v31 = NFHardwareGPIOIsHostWakeCapable;
    v32 = NFHardwareGPIOSetDownloadRequest;
    v33 = NFHardwareGPIOSetVBAT;
    v34 = NFHardwareGPIOSetPMUStandbyPowerEnabled;
    v35 = NFHardwareGPIOSetPower;
    v36 = 240;
    v37 = 216;
    v38 = 208;
    v39 = 256;
    v40 = 248;
    v41 = 232;
    v42 = 224;
    v43 = 200;
    v44 = 192;
    v45 = 184;
    v46 = 176;
    v47 = 168;
    v48 = 160;
    v49 = NFHardwareGPIOSetPMUStandbyPowerEnabled;
  }

  else
  {
    if (strncmp("/dev/", v9, 5uLL))
    {
      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i Unknown interface %s", "NFHardwareInterfaceOpen", 257, v8);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v62 = "NFHardwareInterfaceOpen";
        v63 = 1024;
        v64 = 257;
        v65 = 2080;
        v66 = v8;
        _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown interface %s", buf, 0x1Cu);
      }

LABEL_48:
      free(*v7);
      free(v7);
LABEL_49:
      free(v5);
      return 0;
    }

    v50 = NFHardwareSerialOpen(v9, a2, 0);
    *(v7 + 18) = v50;
    *(v7 + 1) = NFHardwareSerialSetBaudRate;
    *(v7 + 2) = 0;
    *(v7 + 3) = NFHardwareSerialReadBlock;
    *(v7 + 4) = 0;
    *(v7 + 5) = NFHardwareSerialWriteBlock;
    *(v7 + 6) = 0;
    *(v7 + 7) = NFHardwareSerialReadBlockAbort;
    *(v7 + 8) = NFHardwareSerialWriteBlockAbort;
    *(v7 + 9) = NFHardwareSerialFlush;
    *(v7 + 10) = NFHardwareSerialReset;
    *(v7 + 11) = NFHardwareSerialSetLogFunction;
    *(v7 + 12) = NFHardwareSerialEnableLog;
    v60 = v8;
    if (!v50 || (v51 = *(v50 + 1)) == 0 || (v52 = NFHardwareSerialGetCTS, *v51 == 1))
    {
      v52 = 0;
    }

    *(v7 + 13) = v52;
    *(v7 + 14) = NFHardwareSerialSetCRCEnabled;
    *(v7 + 15) = NFHardwareSerialSetOnDemandClientMode;
    *(v7 + 17) = NFHardwareSerialClose;
    if (strcasestr(*v7, "hammerfest"))
    {
      v53 = 1;
    }

    else
    {
      v53 = 2;
    }

    v23 = NFHardwareGPIOOpen(v53);
    v35 = v23;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = NFHardwareGPIOClose;
    v28 = NFHardwareGPIOWasItSPMINack;
    v29 = NFHardwareGPIOIsHostWakeCapable;
    v31 = NFHardwareGPIOSetDownloadRequest;
    v49 = NFHardwareGPIOSetVBAT;
    v32 = NFHardwareGPIOSetPMUStandbyPowerEnabled;
    v33 = NFHardwareGPIOSetPower;
    v34 = NFHardwareGPIOSetDeviceWake;
    v36 = 256;
    v37 = 128;
    v38 = 248;
    v39 = 232;
    v40 = 224;
    v41 = 200;
    v42 = 192;
    v43 = 184;
    v44 = 176;
    v45 = 168;
    v46 = 160;
    v47 = 152;
    v48 = 264;
    v30 = NFHardwareGPIOSetPMUStandbyPowerEnabled;
  }

  *&v7[v48] = v35;
  *&v7[v47] = v34;
  *&v7[v46] = v33;
  *&v7[v45] = v32;
  *&v7[v44] = v49;
  *&v7[v43] = v31;
  *&v7[v42] = v30;
  *&v7[v41] = v29;
  *&v7[v40] = v28;
  *&v7[v39] = v27;
  *&v7[v38] = v26;
  *&v7[v37] = v25;
  *&v7[v36] = v24;
  if (!v23 || !*(v7 + 18))
  {
    v54 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v55(3, "%s:%i Failed to create context for interface %s", "NFHardwareInterfaceOpen", 265, v60);
    }

    dispatch_get_specific(*v54);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v62 = "NFHardwareInterfaceOpen";
      v63 = 1024;
      v64 = 265;
      v65 = 2080;
      v66 = v60;
      _os_log_impl(&dword_297F52000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create context for interface %s", buf, 0x1Cu);
    }

    if (*(v7 + 18))
    {
      v57 = *(v7 + 17);
      if (v57)
      {
        v57();
      }
    }

    if (*(v7 + 33))
    {
      v58 = *(v7 + 32);
      if (v58)
      {
        v58();
      }
    }

    goto LABEL_48;
  }

  return v5;
}

void NFHardwareInterfaceClose(void ***a1)
{
  v2 = *a1;
  v3 = (*a1)[17];
  if (v3)
  {
    v3(v2[18]);
  }

  v4 = v2[32];
  if (v4)
  {
    v4(v2[33]);
  }

  free(*v2);
  *v2 = 0;
  free(*a1);

  free(a1);
}

uint64_t NFHardwareInterfaceResetSerial(uint64_t *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareInterfaceResetSerial", 300);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "NFHardwareInterfaceResetSerial";
    v9 = 1024;
    v10 = 300;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  v5 = *(v1 + 80);
  if (v5)
  {
    return v5(*(v1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceSetPower(uint64_t a1)
{
  v1 = *(*a1 + 160);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetPMUStandbyEnabled(uint64_t a1)
{
  v1 = *(*a1 + 168);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetVBAT(uint64_t a1)
{
  v1 = *(*a1 + 176);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetDownloadRequest(uint64_t a1)
{
  v1 = *(*a1 + 184);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetPMUStandbyPowerEnabled(uint64_t a1)
{
  v1 = *(*a1 + 192);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetDeviceWake(uint64_t a1)
{
  v1 = *(*a1 + 152);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetLogFunction(uint64_t a1)
{
  v1 = *(*a1 + 88);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceEnableLog(uint64_t result)
{
  v1 = *(*result + 96);
  if (v1)
  {
    return v1(*(*result + 144));
  }

  return result;
}

uint64_t NFHardwareInterfaceSetBaudRate(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceRead(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(*a1 + 16);
  if (v1)
  {
    v2 = *(*a1 + 144);

    return v1(v2);
  }

  else
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No interface defined for reading", "NFHardwareInterfaceRead", 385);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "NFHardwareInterfaceRead";
      v9 = 1024;
      v10 = 385;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i No interface defined for reading", buf, 0x12u);
    }

    return 0;
  }
}

uint64_t NFHardwareInterfaceWrite(uint64_t a1)
{
  v1 = *(*a1 + 32);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceReadAbort(uint64_t a1)
{
  v1 = *(*a1 + 48);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceReadBlockAbort(uint64_t a1)
{
  v1 = *(*a1 + 56);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceWriteBlockAbort(uint64_t a1)
{
  v1 = *(*a1 + 64);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceFlush(uint64_t a1)
{
  v1 = *(*a1 + 72);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceGetFlowControl(uint64_t a1)
{
  v1 = *(*a1 + 104);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetCRCEnabled(uint64_t a1)
{
  v1 = *(*a1 + 112);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetOnDemandClientMode(uint64_t a1)
{
  v1 = *(*a1 + 120);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceIsHostWakeCapable(uint64_t a1)
{
  v1 = *(*a1 + 200);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceFollowerReset(uint64_t a1)
{
  v1 = *(*a1 + 232);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceSendSPMIvGPIO(uint64_t a1)
{
  v1 = *(*a1 + 248);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceRegisterSPMIErrorCallback(uint64_t a1)
{
  v1 = *(*a1 + 240);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

BOOL NFHardwareDebug(void ***a1)
{
  v90 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    global_queue = dispatch_get_global_queue(25, 0);
    v4 = NFHardwareInterfaceOpen("/dev/tty.stockholm", global_queue);
    if (v4)
    {
      v2 = v4;
      if (*(*v4 + 13))
      {
        goto LABEL_6;
      }

      NFHardwareInterfaceClose(v4);
    }

    return 1;
  }

  v2 = a1;
  if (!(*a1)[13])
  {
    return 1;
  }

LABEL_6:
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i HW Debugging - current FLOW CHECK", "NFHardwareDebug", 557);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 557;
    _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - current FLOW CHECK", buf, 0x12u);
  }

  v8 = (*v2)[13];
  if (v8)
  {
    v9 = v8((*v2)[18]) != 0;
  }

  else
  {
    v9 = 1;
  }

  usleep(0xF4240u);
  dispatch_get_specific(*v5);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(6, "%s:%i HW Debugging starting - OFF", "NFHardwareDebug", 563);
  }

  dispatch_get_specific(*v5);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 563;
    _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging starting - OFF", buf, 0x12u);
  }

  v12 = (*v2)[20];
  if (v12 && (v12((*v2)[33], 0) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Error", "NFHardwareDebug", 566);
    }

    dispatch_get_specific(*v5);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v85 = "NFHardwareDebug";
      v86 = 1024;
      v87 = 566;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  usleep(0x4E20u);
  dispatch_get_specific(*v5);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(6, "%s:%i HW Debugging - FLOW CHECK - EXPECTED OFF", "NFHardwareDebug", 574);
  }

  dispatch_get_specific(*v5);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 574;
    _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - FLOW CHECK - EXPECTED OFF", buf, 0x12u);
  }

  v17 = (*v2)[13];
  if (v17)
  {
    v18 = 2 * (v17((*v2)[18]) != 0);
  }

  else
  {
    v18 = 2;
  }

  v83 = v18;
  dispatch_get_specific(*v5);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(6, "%s:%i HW Debugging - ON", "NFHardwareDebug", 578);
  }

  dispatch_get_specific(*v5);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 578;
    _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - ON", buf, 0x12u);
  }

  v21 = (*v2)[20];
  if (v21 && (v21((*v2)[33], 1) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Error", "NFHardwareDebug", 587);
    }

    dispatch_get_specific(*v5);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v85 = "NFHardwareDebug";
      v86 = 1024;
      v87 = 587;
      _os_log_impl(&dword_297F52000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  usleep(0x4E20u);
  dispatch_get_specific(*v5);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(6, "%s:%i HW Debugging - FLOW CHECK - EXPECTED ON", "NFHardwareDebug", 591);
  }

  dispatch_get_specific(*v5);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 591;
    _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - FLOW CHECK - EXPECTED ON", buf, 0x12u);
  }

  v26 = (*v2)[13];
  if (v26)
  {
    v27 = 4 * (v26((*v2)[18]) != 0);
  }

  else
  {
    v27 = 4;
  }

  v82 = v27;
  dispatch_get_specific(*v5);
  v28 = NFLogGetLogger();
  if (v28)
  {
    v28(6, "%s:%i HW Debugging - SLEEP + wait 1.5s", "NFHardwareDebug", 596);
  }

  dispatch_get_specific(*v5);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 596;
    _os_log_impl(&dword_297F52000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - SLEEP + wait 1.5s", buf, 0x12u);
  }

  v30 = (*v2)[19];
  if (v30 && (v30((*v2)[33], 0) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i Error", "NFHardwareDebug", 599);
    }

    dispatch_get_specific(*v5);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v85 = "NFHardwareDebug";
      v86 = 1024;
      v87 = 599;
      _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  usleep(0x30D40u);
  v33 = (*v2)[13];
  if (v33)
  {
    v34 = 8 * (v33((*v2)[18]) != 0);
  }

  else
  {
    v34 = 8;
  }

  usleep(0x30D40u);
  v35 = (*v2)[13];
  if (v35)
  {
    v36 = 16 * (v35((*v2)[18]) != 0);
  }

  else
  {
    v36 = 16;
  }

  v78 = v36;
  usleep(0x30D40u);
  v37 = (*v2)[13];
  if (v37)
  {
    v38 = 32 * (v37((*v2)[18]) != 0);
  }

  else
  {
    v38 = 32;
  }

  v81 = v38;
  usleep(0x30D40u);
  v39 = (*v2)[13];
  if (v39)
  {
    v40 = (v39((*v2)[18]) != 0) << 6;
  }

  else
  {
    v40 = 64;
  }

  v80 = v40;
  usleep(0x30D40u);
  v41 = (*v2)[13];
  if (v41)
  {
    v42 = (v41((*v2)[18]) != 0) << 7;
  }

  else
  {
    v42 = 128;
  }

  v79 = v42;
  usleep(0x30D40u);
  v43 = (*v2)[13];
  if (v43)
  {
    v44 = (v43((*v2)[18]) != 0) << 8;
  }

  else
  {
    v44 = 256;
  }

  v77 = v44;
  usleep(0x30D40u);
  v45 = (*v2)[13];
  if (v45)
  {
    v46 = (v45((*v2)[18]) != 0) << 9;
  }

  else
  {
    v46 = 512;
  }

  usleep(0x30D40u);
  dispatch_get_specific(*v5);
  v47 = NFLogGetLogger();
  if (v47)
  {
    v47(6, "%s:%i HW Debugging - FLOW CHECK - EXPECTED OFF", "NFHardwareDebug", 632);
  }

  dispatch_get_specific(*v5);
  v48 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 632;
    _os_log_impl(&dword_297F52000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - FLOW CHECK - EXPECTED OFF", buf, 0x12u);
  }

  v49 = (*v2)[13];
  if (v49)
  {
    v50 = (v49((*v2)[18]) != 0) << 10;
  }

  else
  {
    v50 = 1024;
  }

  dispatch_get_specific(*v5);
  v51 = NFLogGetLogger();
  if (v51)
  {
    v51(6, "%s:%i HW Debugging - WAKE", "NFHardwareDebug", 636);
  }

  dispatch_get_specific(*v5);
  v52 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 636;
    _os_log_impl(&dword_297F52000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - WAKE", buf, 0x12u);
  }

  v53 = (*v2)[19];
  if (v53 && (v53((*v2)[33], 1) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v54(3, "%s:%i Error", "NFHardwareDebug", 639);
    }

    dispatch_get_specific(*v5);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v85 = "NFHardwareDebug";
      v86 = 1024;
      v87 = 639;
      _os_log_impl(&dword_297F52000, v55, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  usleep(0x4E20u);
  dispatch_get_specific(*v5);
  v56 = NFLogGetLogger();
  if (v56)
  {
    v56(6, "%s:%i HW Debugging - FLOW CHECK - EXPECTED ON", "NFHardwareDebug", 643);
  }

  dispatch_get_specific(*v5);
  v57 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 643;
    _os_log_impl(&dword_297F52000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - FLOW CHECK - EXPECTED ON", buf, 0x12u);
  }

  v58 = (*v2)[13];
  if (v58)
  {
    v59 = (v58((*v2)[18]) != 0) << 11;
  }

  else
  {
    v59 = 2048;
  }

  dispatch_get_specific(*v5);
  v60 = NFLogGetLogger();
  if (v60)
  {
    v60(6, "%s:%i HW Debugging - POWERING OFF", "NFHardwareDebug", 647);
  }

  v61 = v83 | v9 | v82;
  dispatch_get_specific(*v5);
  v62 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v85 = "NFHardwareDebug";
    v86 = 1024;
    v87 = 647;
    _os_log_impl(&dword_297F52000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - POWERING OFF", buf, 0x12u);
  }

  v63 = v61 | v34;
  v64 = (*v2)[19];
  if (v64 && (v64((*v2)[33], 0) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v65 = NFLogGetLogger();
    if (v65)
    {
      v65(3, "%s:%i Error", "NFHardwareDebug", 649);
    }

    dispatch_get_specific(*v5);
    v66 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v85 = "NFHardwareDebug";
      v86 = 1024;
      v87 = 649;
      _os_log_impl(&dword_297F52000, v66, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  v67 = v63 | v78;
  v68 = (*v2)[20];
  if (v68 && (v68((*v2)[33], 0) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v69 = NFLogGetLogger();
    if (v69)
    {
      v69(3, "%s:%i Error", "NFHardwareDebug", 651);
    }

    dispatch_get_specific(*v5);
    v70 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v85 = "NFHardwareDebug";
      v86 = 1024;
      v87 = 651;
      _os_log_impl(&dword_297F52000, v70, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  if (!a1)
  {
    NFHardwareInterfaceClose(v2);
  }

  v71 = v67 | v81 | v80 | v79 | v77 | v46 | v50 | v59;
  dispatch_get_specific(*v5);
  v72 = NFLogGetLogger();
  if (v71 == 4095)
  {
    if (v72)
    {
      v72(3, "%s:%i HW error : unit is not powering cycling.", "NFHardwareDebug", 667);
    }

    dispatch_get_specific(*v5);
    v73 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v85 = "NFHardwareDebug";
      v86 = 1024;
      v87 = 667;
      v75 = "%{public}s:%i HW error : unit is not powering cycling.";
      goto LABEL_130;
    }
  }

  else
  {
    if (v71)
    {
      if (v72)
      {
        v72(3, "%s:%i HW debugging result : 0x%04X", "NFHardwareDebug", 670, v71);
      }

      dispatch_get_specific(*v5);
      v76 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v85 = "NFHardwareDebug";
        v86 = 1024;
        v87 = 670;
        v88 = 1024;
        v89 = v67 | v81 | v80 | v79 | v77 | v46 | v50 | v59;
        _os_log_impl(&dword_297F52000, v76, OS_LOG_TYPE_ERROR, "%{public}s:%i HW debugging result : 0x%04X", buf, 0x18u);
      }

      return 1;
    }

    if (v72)
    {
      v72(3, "%s:%i HW error : unit is not powering on.", "NFHardwareDebug", 664);
    }

    dispatch_get_specific(*v5);
    v73 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v85 = "NFHardwareDebug";
      v86 = 1024;
      v87 = 664;
      v75 = "%{public}s:%i HW error : unit is not powering on.";
LABEL_130:
      _os_log_impl(&dword_297F52000, v73, OS_LOG_TYPE_ERROR, v75, buf, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t NFHardwareInterfaceValidateSPMIConfig(uint64_t a1)
{
  v1 = *(*a1 + 208);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetSPMIConfig(uint64_t a1)
{
  v1 = *(*a1 + 216);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceWasItNACK(uint64_t a1)
{
  v1 = *(*a1 + 224);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceIsSupported(char *__s2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!__s2 || !strncmp("com.apple.", __s2, 0xAuLL) || !strncmp("/dev/", __s2, 5uLL))
  {

    return NFHardwareSerialIsSupported(__s2);
  }

  else
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unmatched interface %s", "NFHardwareInterfaceIsSupported", 720, __s2);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFHardwareInterfaceIsSupported";
      v8 = 1024;
      v9 = 720;
      v10 = 2080;
      v11 = __s2;
      _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i Unmatched interface %s", buf, 0x1Cu);
    }

    return 0;
  }
}

uint64_t NFHardwareInterfaceHasExternalSPMIIRQ(UInt8 *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("stockholm-spmi");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    return 0;
  }

  IOObjectRelease(MatchingService);
  v5 = IOServiceNameMatching("stockholm");
  v6 = IOServiceGetMatchingService(v2, v5);
  if (v6)
  {
    v7 = v6;
    v8 = IORegistryEntrySearchCFProperty(v6, "IOService", @"se-spmi-irq", *MEMORY[0x29EDB8ED8], 0);
    if (v8)
    {
      v9 = v8;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v9))
      {
        BytePtr = CFDataGetBytePtr(v9);
        if (BytePtr)
        {
          v12 = BytePtr;
          if (CFDataGetLength(v9))
          {
            *a1 = *v12;
          }
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      v13 = 0;
    }

    IOObjectRelease(v7);
  }

  else
  {
    v14 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unexpected state.", "NFHardwareInterfaceHasExternalSPMIIRQ", 753);
    }

    dispatch_get_specific(*v14);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v19 = "NFHardwareInterfaceHasExternalSPMIIRQ";
      v20 = 1024;
      v21 = 753;
      _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected state.", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return v13;
}