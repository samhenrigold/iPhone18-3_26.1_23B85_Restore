__CFDictionary *_IOHIDServiceCopyServiceRecordForClient(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == IOHIDEventSystemConnectionGetTypeID() && !IOHIDServiceCheckEntitlements(a1, cf))
    {
      return 0;
    }
  }

  v5 = _IOHIDServiceCopyServiceInfoForClient(a1, cf);
  if (v5)
  {
    v6 = _IOHIDServiceCopyFilterDebugInfoForClient(a1, cf);
    if (v6)
    {
      v7 = v6;
      v8 = OUTLINED_FUNCTION_11_1();
      CFDictionaryAddValue(v8, v9, v10);
      CFRelease(v7);
    }

    v11 = _IOHIDServiceCopyEventLog(a1);
    if (v11)
    {
      v12 = v11;
      v13 = OUTLINED_FUNCTION_11_1();
      CFDictionaryAddValue(v13, v14, v15);
      CFRelease(v12);
    }

    v16 = _IOHIDServiceCopyEventCounts(a1);
    if (v16)
    {
      v17 = v16;
      v18 = OUTLINED_FUNCTION_11_1();
      CFDictionaryAddValue(v18, v19, v20);
      CFRelease(v17);
    }

    v21 = _IOHIDServiceCopyConnectionIntervals(a1);
    if (v21)
    {
      v22 = v21;
      v23 = OUTLINED_FUNCTION_11_1();
      CFDictionaryAddValue(v23, v24, v25);
      CFRelease(v22);
    }

    _IOHIDServiceSetMiscDebugDebugInfo(a1, v5, cf);
  }

  return v5;
}

__CFDictionary *_IOHIDServiceCopyServiceInfoForClient(_DWORD *cf, const void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(name, 0, 128);
  valuePtr = 0;
  v4 = cf[4];
  if (v4 && IOObjectRetain(cf[4]))
  {
    v4 = 0;
  }

  v5 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (v4)
    {
      IORegistryEntryGetName(v4, name);
      if (!name[0])
      {
        IOObjectGetClass(v4, name);
      }

      v7 = CFGetAllocator(cf);
      SystemEncoding = CFStringGetSystemEncoding();
      v9 = CFStringCreateWithCString(v7, name, SystemEncoding);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(Mutable, @"IOClass", v9);
        CFRelease(v10);
      }
    }

    v11 = *(cf + 6);
    if (v11)
    {
      CFDictionarySetValue(Mutable, @"IORegistryEntryID", v11);
    }

    v12 = *MEMORY[0x1E695E4D0];
    v13 = *MEMORY[0x1E695E4C0];
    if (cf[71])
    {
      v14 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v14 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"Built-In", v14);
    if (cf[77])
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    CFDictionarySetValue(Mutable, @"ProtectedAccess", v15);
    for (i = 0; i != 8; ++i)
    {
      v17 = __debugKeys_0[i];
      v18 = _IOHIDServiceCopyPropertyForClient(cf, v17, a2);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(Mutable, v17, v18);
        CFRelease(v19);
      }
    }

    EventDeadlineForClient = _IOHIDServiceGetEventDeadlineForClient(cf, a2, 0);
    valuePtr = EventDeadlineForClient;
    if (EventDeadlineForClient)
    {
      v21 = EventDeadlineForClient;
      v22 = mach_absolute_time();
      v23 = v21 - v22;
      if (v21 < v22)
      {
        v23 = 0;
      }

      if (v21 > v22)
      {
        v23 /= 0x3E8uLL;
      }

      valuePtr = v23;
      v24 = CFGetAllocator(cf);
      v25 = CFNumberCreate(v24, kCFNumberSInt64Type, &valuePtr);
      if (v25)
      {
        v26 = v25;
        v27 = OUTLINED_FUNCTION_11_1();
        CFDictionarySetValue(v27, v28, v29);
        CFRelease(v26);
      }
    }

    v30 = *(cf + 8);
    if (v30)
    {
      CFDictionarySetValue(Mutable, @"ServiceEntitlements", v30);
    }
  }

  if (v4)
  {
    IOObjectRelease(v4);
  }

  return Mutable;
}

uint64_t IOHIDServiceWorkIntervalStart()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  if (!kIOHIDServiceWorkgroupInterval)
  {
    return 45;
  }

  OUTLINED_FUNCTION_15_1();
  if (v3)
  {
    os_workgroup_interval_data_set_complexity();
    v2 = kIOHIDServiceWorkgroupInterval;
  }

  v4 = os_workgroup_interval_start(v2, v1, v0, &data);
  if (v4)
  {
    v5 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_9_1(&dword_197195000, v7, v8, "0x%llx: os_workgroup_interval_start error: %d, service %@", v9, v10, v11, v12);
    }
  }

  return v4;
}

uint64_t IOHIDServiceWorkIntervalUpdate()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  v2 = kIOHIDServiceWorkgroupInterval;
  if (!kIOHIDServiceWorkgroupInterval)
  {
    return 45;
  }

  v3 = v0;
  if (v1)
  {
    os_workgroup_interval_data_set_complexity();
    v2 = kIOHIDServiceWorkgroupInterval;
  }

  v4 = os_workgroup_interval_update(v2, v3, &data);
  if (v4)
  {
    v5 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_9_1(&dword_197195000, v7, v8, "0x%llx: os_workgroup_interval_start error: %d, service %@", v9, v10, v11, v12);
    }
  }

  return v4;
}

uint64_t IOHIDServiceWorkIntervalFinish()
{
  v4 = *MEMORY[0x1E69E9840];
  if (!kIOHIDServiceWorkgroupInterval)
  {
    return 45;
  }

  v0 = os_workgroup_interval_finish(kIOHIDServiceWorkgroupInterval, 0);
  if (v0)
  {
    v1 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_8();
      _os_log_error_impl(&dword_197195000, v1, OS_LOG_TYPE_ERROR, "0x%llx: os_workgroup_interval_finish error: %d, service %@", v3, 0x1Cu);
    }
  }

  return v0;
}

uint64_t IOHIDServiceWorkIntervalCancel()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  if (!kIOHIDServiceWorkgroupInterval)
  {
    return 45;
  }

  os_workgroup_interval_data_set_complexity();
  v0 = os_workgroup_interval_finish(kIOHIDServiceWorkgroupInterval, &data);
  if (v0)
  {
    v1 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_9_1(&dword_197195000, v3, v4, "0x%llx: os_workgroup_interval_finish(cancel) error: %d, service %@", v5, v6, v7, v8);
    }
  }

  return v0;
}

void __IOHIDServiceCreateAndCopyConnectionCache_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void __IOHIDServiceCreateAndCopyConnectionCache_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void __IOHIDServiceInit_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void __IOHIDServiceInit_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void __IOHIDServiceInit_cold_3(uint64_t a1, int a2, _BYTE *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = _IOHIDLogCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5();
    v7 = 1024;
    v8 = a2;
    _os_log_error_impl(&dword_197195000, v5, OS_LOG_TYPE_ERROR, "0x%llx: IOServiceAddInterestNotification 0x%x", v6, 0x12u);
  }

  *a3 = 0;
}

void __IOHIDServiceInit_cold_4(uint8_t *a1, CFBundleRef bundle, CFStringRef *a3, NSObject *a4)
{
  Identifier = CFBundleGetIdentifier(bundle);
  *a1 = 138412290;
  *a3 = Identifier;
  _os_log_error_impl(&dword_197195000, a4, OS_LOG_TYPE_ERROR, "Malformed PropertyMerge value in bundle: %@", a1, 0xCu);
}

void __IOHIDServiceInit_cold_6(CFNumberRef *a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  CFNumberGetValue(*a1, kCFNumberSInt64Type, v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void _IOHIDServiceCreate_cold_3()
{
  v0 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void _IOHIDServiceCreate_cold_4()
{
  v0 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void _IOHIDServiceOpen_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __IOHIDServiceHandleCancelTimerTimeout_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = 2112;
  v5 = v0;
  v6 = 2112;
  v7 = v1;
  _os_log_fault_impl(&dword_197195000, v2, OS_LOG_TYPE_FAULT, "Service plugin %@: %@ never called cancel handler for service: %@", v3, 0x20u);
}

void IOHIDServiceRegister_cold_1()
{
  v0 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void IOHIDServiceConformsTo_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = 2080;
  v4 = "DeviceUsagePairs";
  v5 = 2112;
  v6 = v0;
  _os_log_error_impl(&dword_197195000, v1, OS_LOG_TYPE_ERROR, "0x%llx: IOHIDService property %s incorrect type: %@", v2, 0x20u);
}

void IOHIDServiceConformsTo_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_15_1();
  v8 = v7;
  v9 = _IOHIDServiceCopyPropertyForClient(v7, @"PrimaryUsagePage", v5);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(v4, @"DeviceUsagePage", v9);
    CFRelease(v10);
    v11 = _IOHIDServiceCopyPropertyForClient(v8, @"PrimaryUsage", v5);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(v4, @"DeviceUsage", v11);
      CFRelease(v12);
      __IOHIDServiceConformsToFunction(v4, a4);
    }
  }

  CFRelease(v4);
}

void _IOHIDServiceRemoveConnection_cold_2()
{
  OUTLINED_FUNCTION_15_1();
  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      if (ValueAtIndex)
      {
        if (ValueAtIndex == v1)
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    CFArrayRemoveValueAtIndex(v3, v6);
  }

LABEL_8:
  *v0 = v3;
}

void _IOHIDServiceAddConnection_cold_3(uint64_t a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  Count = CFArrayGetCount(*(*a1 + 8));
  *a3 = CFArrayCreateMutableCopy(a2, Count + 1, *(*a1 + 8));
  v7 = *(*a1 + 8);

  CFRelease(v7);
}

void _IOHIDServiceAddConnection_cold_4(__CFArray *a1, const void *a2, uint64_t a3)
{
  CFArrayAppendValue(a1, a2);
  v5.length = CFArrayGetCount(a1);
  v5.location = 0;
  CFArraySortValues(a1, v5, _IOHIDEventSystemConnectionEventFilterCompare, 0);
  *(*a3 + 8) = a1;
}

void __IOHIDServiceQueueWillExecute_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void __IOHIDServiceQueueDidExecute_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void IOHIDSessionCreate_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void IOHIDSessionCreate_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void IOHIDSessionCreate_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void __IOHIDSessionCreate_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

void __IOHIDSessionCreate_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_4();
  v6 = OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &dword_197195000);
  OUTLINED_FUNCTION_7_1(v6);
  __break(1u);
}

_DWORD *__IOHIDSessionCreate_block_invoke_cold_3(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_2(a1);
  if (v3)
  {
    result = OUTLINED_FUNCTION_8_2(result, v3);
    if (result)
    {
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_2_9(v4, v1, v5, v6, &dword_197195000);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

void __IOHIDSessionCreate_block_invoke_cold_5(uint64_t a1, const __CFArray *cf, uint64_t a3)
{
  if (a1 >= 1)
  {
    for (i = 0; i != a1; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
      if (ValueAtIndex)
      {
        __IOHIDSessionDispatchEvent(a3, ValueAtIndex);
      }
    }
  }

  CFRelease(cf);
}

void _IOHIDSessionCopyPropertyForClient_cold_2(uint8_t *a1, uint64_t a2, uint64_t *a3, NSObject *a4)
{
  RegistryID = IOHIDServiceGetRegistryID(a2);
  *a1 = 138412290;
  *a3 = RegistryID;
  _os_log_error_impl(&dword_197195000, a4, OS_LOG_TYPE_ERROR, "CopyServiceRecords deep copy failed. Service record for %@ is not serializable.", a1, 0xCu);
}

void _IOHIDSessionSetPropertyForClient_cold_1(uint64_t a1, _BYTE *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _IOHIDLogCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    UUID = IOHIDEventSystemConnectionGetUUID(a1);
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "Insufficient permissions to set kIOHIDSessionCASecureLayerOnScreenKey for UUID: %@", &v5, 0xCu);
  }

  *a2 = 0;
}

void __IOHIDEventQueueCreatePrivate_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = _IOHIDLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_197195000, v2, OS_LOG_TYPE_ERROR, "Unable to allocate queue object via _CFRuntimeCreateInstance", v3, 2u);
  }
}

void IOHIDEventQueueNotify_cold_1(int a1, NSObject *a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  OUTLINED_FUNCTION_1_10(&dword_197195000, a2, a3, "IOHIDEventQueueNotify:%#x", v3);
}

__CFDictionary *__IOHIDUserDeviceSerializeState(uint64_t a1)
{
  entryID = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      IOObjectRetain(*(a1 + 32));
      IORegistryEntryGetRegistryEntryID(v3, &entryID);
    }

    v4 = *MEMORY[0x1E695E4D0];
    v5 = *MEMORY[0x1E695E4C0];
    OUTLINED_FUNCTION_4_4();
    CFDictionarySetValue(Mutable, @"DispatchQueue", v6);
    OUTLINED_FUNCTION_4_4();
    CFDictionarySetValue(Mutable, @"RunLoop", v7);
    OUTLINED_FUNCTION_4_4();
    CFDictionarySetValue(Mutable, @"Queue", v8);
    OUTLINED_FUNCTION_4_4();
    CFDictionarySetValue(Mutable, @"SetReportCallback", v9);
    if (!*(a1 + 232) && !*(a1 + 248))
    {
      v4 = v5;
    }

    CFDictionarySetValue(Mutable, @"GetReportCallback", v4);
    _IOHIDDictionaryAddSInt64(Mutable, @"RegistryID", entryID);
    _IOHIDDictionaryAddSInt64(Mutable, @"QueueCallbackTimestamp", *(a1 + 72));
    _IOHIDDictionaryAddSInt64(Mutable, @"DequeueTimestamp", *(a1 + 80));
    _IOHIDDictionaryAddSInt64(Mutable, @"SetReportCnt", *(a1 + 280));
    _IOHIDDictionaryAddSInt64(Mutable, @"GetReportCnt", *(a1 + 284));
    _IOHIDDictionaryAddSInt64(Mutable, @"HandleReportCnt", *(a1 + 288));
    if (v3)
    {
      IOObjectRelease(v3);
    }
  }

  return Mutable;
}

char *__IOHIDUserDeviceStateHandler(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  v4 = __IOHIDUserDeviceSerializeState(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v7 = Data;
    Length = CFDataGetLength(Data);
    v2 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
    if (v2)
    {
      __strlcpy_chk();
      *v2 = 1;
      *(v2 + 1) = Length;
      v9.location = 0;
      v9.length = Length;
      CFDataGetBytes(v7, v9, v2 + 200);
    }

    CFRelease(v5);
  }

  else
  {
    v2 = 0;
    v7 = v5;
  }

  CFRelease(v7);
  return v2;
}

const __CFDictionary *IOHIDUserDeviceCreateWithOptions(const __CFAllocator *a1, const __CFDictionary *a2, int a3)
{
  v3 = a2;
  v57 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = qword_1EAF1D928;
    if (!qword_1EAF1D928)
    {
      pthread_once(&_MergedGlobals_0, __IOHIDUserDeviceRegister);
      v6 = qword_1EAF1D928;
    }

    Instance = _IOHIDObjectCreateInstance(a1, v6, 0x118uLL);
    if (!Instance)
    {
      return 0;
    }

    v8 = Instance;
    *(Instance + 48) = a3;
    OUTLINED_FUNCTION_3_5(8193);
    Copy = CFDictionaryCreateCopy(a1, v3);
    *(v8 + 40) = Copy;
    if (!Copy)
    {
      goto LABEL_39;
    }

    v10 = _MergedGlobals_68;
    v11 = IOServiceMatching("IOHIDResource");
    MatchingService = IOServiceGetMatchingService(v10, v11);
    *(v8 + 24) = MatchingService;
    if (MatchingService)
    {
      v13 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, (v8 + 28));
      if (v13)
      {
        v41 = v13;
        v42 = _IOHIDLogCategory(5);
        if (!OUTLINED_FUNCTION_12(v42))
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_0_13();
        *&buf[14] = v41;
      }

      else
      {
        v14 = *(v8 + 48);
        input[0] = v14;
        v15 = IOCFSerialize(*(v8 + 40), 0);
        if (v15)
        {
          v16 = v15;
          v17 = *(v8 + 28);
          BytePtr = CFDataGetBytePtr(v15);
          Length = CFDataGetLength(v16);
          Service = IOConnectCallMethod(v17, 0, input, 1u, BytePtr, Length, 0, 0, 0, 0);
          if (!Service)
          {
            Service = IOConnectGetService(*(v8 + 28), (v8 + 32));
            if (!Service)
            {
              IORegistryEntryGetRegistryEntryID(*(v8 + 32), (v8 + 88));
              v21 = _IOHIDLogCategory(5);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = *(v8 + 88);
                *buf = 134218242;
                *&buf[4] = v22;
                *&buf[12] = 2112;
                *&buf[14] = v8;
                _os_log_impl(&dword_197195000, v21, OS_LOG_TYPE_DEFAULT, "0x%llx: Start: %@", buf, 0x16u);
              }

              _IOHIDDebugTrace(8195, 0, v8, v14, *(v8 + 88), 0);
              CFRelease(v16);
              v23 = dispatch_queue_create("IOHIDUserDeviceStateQueue", 0);
              *(v8 + 64) = v23;
              if (v23)
              {
                *(v8 + 56) = os_state_add_handler();
                *input = xmmword_19723DAC0;
                v24 = *MEMORY[0x1E695E480];
                *buf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v8 + 168));
                *&buf[8] = @"userDeviceQueue";
                v3 = CFDictionaryCreate(v24, &off_1ED446920, buf, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v3)
                {
                  v25 = IOHIDAnalyticsHistogramEventCreate(@"com.apple.hid.queueUsage", v3, @"UsagePercent", input, 1);
                  *(v8 + 184) = v25;
                  if (!v25)
                  {
                    v26 = _IOHIDLogCategory(5);
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      v27 = *(v8 + 88);
                      *v55 = 134217984;
                      v56 = v27;
                      _os_log_impl(&dword_197195000, v26, OS_LOG_TYPE_DEFAULT, "0x%llx: Unable to create queue analytics", v55, 0xCu);
                    }

                    if (!*(v8 + 184))
                    {
                      IOHIDAnalyticsEventActivate();
                    }
                  }

                  CFRelease(v3);
                }

                else
                {
                  v45 = _IOHIDLogCategory(5);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    v46 = *(v8 + 88);
                    *v55 = 134217984;
                    v56 = v46;
                    _os_log_error_impl(&dword_197195000, v45, OS_LOG_TYPE_ERROR, "0x%llx: Unable to create analytics description", v55, 0xCu);
                  }
                }

                v28 = buf;
                v29 = 1;
                do
                {
                  v30 = v29;
                  if (*v28)
                  {
                    CFRelease(*v28);
                  }

                  v29 = 0;
                  v28 = &buf[8];
                }

                while ((v30 & 1) != 0);
                if (v3)
                {
                  CFRetain(v8);
                  v3 = v8;
                }

                goto LABEL_27;
              }

LABEL_39:
              v3 = 0;
LABEL_27:
              CFRelease(v8);
              return v3;
            }
          }

          v32 = Service;
          CFRelease(v16);
        }

        else
        {
          v32 = -536870211;
        }

        v43 = _IOHIDLogCategory(5);
        if (OUTLINED_FUNCTION_12(v43))
        {
          OUTLINED_FUNCTION_0_13();
          *&buf[14] = v32;
          *&buf[18] = 2112;
          *&buf[20] = v47;
          OUTLINED_FUNCTION_1_11();
          _os_log_error_impl(v48, v49, v50, v51, v52, 0x1Cu);
        }

        v44 = _IOHIDLogCategory(5);
        if (!OUTLINED_FUNCTION_12(v44))
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_0_13();
        *&buf[14] = v32;
      }

      OUTLINED_FUNCTION_1_11();
      v40 = 18;
    }

    else
    {
      v33 = _IOHIDLogCategory(5);
      if (!OUTLINED_FUNCTION_12(v33))
      {
        goto LABEL_39;
      }

      v34 = *(v8 + 88);
      *buf = 134217984;
      *&buf[4] = v34;
      OUTLINED_FUNCTION_1_11();
      v40 = 12;
    }

    _os_log_error_impl(v35, v36, v37, v38, v39, v40);
    goto LABEL_39;
  }

  return v3;
}

void IOHIDUserDeviceSetDispatchQueue(IOHIDUserDeviceRef device, dispatch_queue_t queue)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_5(8198);
  __IOHIDUserDeviceSetupAsyncSupport(device);
  bzero(__str, 0x100uLL);
  label = dispatch_queue_get_label(queue);
  v5 = "";
  if (label)
  {
    v5 = label;
  }

  snprintf(__str, 0x100uLL, "%s.IOHIDUserDeviceRef", v5);
  v6 = dispatch_queue_create_with_target_V2(__str, 0, queue);
  *(device + 15) = v6;
  if (v6)
  {
    _IOHIDObjectInternalRetain(device);
    v7 = dispatch_mach_create();
    *(device + 16) = v7;
    if (!v7)
    {
      _IOHIDObjectInternalRelease(device);
    }
  }
}

void __IOHIDUserDeviceSetupAsyncSupport_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_0_4(v5, v2, v3, v4, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

void IOHIDUserDeviceSetCancelHandler_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void IOHIDUserDeviceHandleReportWithTimeStamp_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 88);
  v4 = 134218240;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_197195000, log, OS_LOG_TYPE_ERROR, "0x%llx: kIOHIDResourceDeviceUserClientMethodHandleReport:%x", &v4, 0x12u);
}

void __IOHIDUserDeviceExtRelease_cold_1(void *a1, _OWORD *a2, unsigned int *a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  atomic_load(a3);
  if (v4)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  OUTLINED_FUNCTION_0_4(v8, v5, v6, v7, &dword_197195000);
  _os_crash_msg();
  __break(1u);
}

void __IOMIGMachPortRelease_cold_2(mach_error_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = mach_error_string(a1);
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "__IOMIGMachPortRelease mach_port_mod_refs:%s", &v3, 0xCu);
}

uint64_t _IOHIDIsSerializable(uint64_t result)
{
  address = 0;
  if (result)
  {
    v1 = _IOHIDSerialize(result, &address);
    result = 0;
    if (address)
    {
      if (v1)
      {
        mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, v1);
        return 1;
      }
    }
  }

  return result;
}

void _IOHIDCreateBinaryData_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize CFObject: %@", &v3, 0xCu);
}

uint64_t IOHIDServiceFilterCreateWithClass(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const void *a4, int a5)
{
  sel_getUid("alloc");
  v9 = OUTLINED_FUNCTION_0_14();
  v11 = [v9 v10];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (![v11 getUid("initWithService:a3")])
  {
    v28 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      OUTLINED_FUNCTION_1_12(&dword_197195000, v29, v30, "IOHIDServiceFilterCreateWithClass Failed to initialize filter", v31, v32, v33, v34, v44, block, v46, v47, v48, v49);
    }

    return 0;
  }

  if (!objc_getProtocol("HIDServiceFilter"))
  {
    v35 = _IOHIDLogCategory(0);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v42 = "IOHIDServiceFilterCreateWithClass Failed to find HIDServiceFilter protocol";
LABEL_28:
    OUTLINED_FUNCTION_1_12(&dword_197195000, v36, v37, v42, v38, v39, v40, v41, v44, block, v46, v47, v48, v49);
    goto LABEL_25;
  }

  v13 = OUTLINED_FUNCTION_0_14();
  if (!class_conformsToProtocol(v13, v14))
  {
    v43 = _IOHIDLogCategory(0);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v42 = "IOHIDServiceFilterCreateWithClass class does not conform to HIDServiceFilter protocol";
    goto LABEL_28;
  }

  Private = __IOHIDServiceFilterCreatePrivate(a1);
  if (!Private)
  {
LABEL_25:
    CFRelease(v12);
    return 0;
  }

  v16 = Private;
  *(Private + 96) = v12;
  *(Private + 104) = sel_getUid("propertyForKey:client:");
  *(v16 + 112) = sel_getUid("setProperty:forKey:client:");
  *(v16 + 120) = sel_getUid("filterEvent:");
  *(v16 + 128) = sel_getUid("filterEventMatching:event:forClient:");
  *(v16 + 136) = sel_getUid("setCancelHandler:");
  *(v16 + 144) = sel_getUid("activate");
  *(v16 + 152) = sel_getUid("cancel");
  sel_getUid("setDispatchQueue:");
  v17 = OUTLINED_FUNCTION_0_14();
  if (class_respondsToSelector(v17, v18))
  {
    *(v16 + 160) = sel_getUid("setDispatchQueue:");
  }

  sel_getUid("setEventDispatcher:");
  v19 = OUTLINED_FUNCTION_0_14();
  if (class_respondsToSelector(v19, v20))
  {
    *(v16 + 168) = sel_getUid("setEventDispatcher:");
  }

  sel_getUid("clientNotification:added:");
  v21 = OUTLINED_FUNCTION_0_14();
  if (class_respondsToSelector(v21, v22))
  {
    *(v16 + 176) = sel_getUid("clientNotification:added:");
  }

  sel_getUid("filterSetProperty:forKey:forClient:");
  v23 = OUTLINED_FUNCTION_0_14();
  if (class_respondsToSelector(v23, v24))
  {
    *(v16 + 184) = sel_getUid("filterSetProperty:forKey:forClient:");
  }

  sel_getUid("filterEvent:forClient:");
  v25 = OUTLINED_FUNCTION_0_14();
  if (class_respondsToSelector(v25, v26))
  {
    *(v16 + 192) = sel_getUid("filterEvent:forClient:");
  }

  *(v16 + 40) = a5;
  *(v16 + 48) = a3;
  *(v16 + 32) = _IOHIDServiceCopyDispatchQueue(a3);
  *(v16 + 80) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  CFRetain(v16);
  block = MEMORY[0x1E69E9820];
  v46 = 0x40000000;
  v47 = __IOHIDServiceFilterCreateWithClass_block_invoke;
  v48 = &__block_descriptor_tmp_23;
  v49 = v16;
  *(v16 + 64) = dispatch_block_create(0, &block);
  return v16;
}

void IOHIDServiceFilterCopyPropertyForClient_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_197195000, log, OS_LOG_TYPE_ERROR, "%@ is not serializable. result: %@", &v3, 0x16u);
}

BOOLean_t IOHIDServiceClientConformsTo(IOHIDServiceClientRef service, uint32_t usagePage, uint32_t usage)
{
  v3 = *(service + 17);
  if (!v3)
  {
    return 0;
  }

  v4 = *(service + 36);
  if (!v4)
  {
    return 0;
  }

  for (i = (v3 + 4); *(i - 1) != usagePage || *i != usage; i += 2)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return 1;
}

CFMutableDictionaryRef IOHIDServiceClientCopyProperties(__IOHIDServiceClient *a1, const __CFArray *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v6 = Mutable;
  v7 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (!v7)
  {
    CFRelease(v6);
    return 0;
  }

  v8 = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __IOHIDServiceClientCopyProperties_block_invoke;
  v14[3] = &__block_descriptor_tmp_22_0;
  v14[4] = a1;
  v14[5] = v6;
  v14[6] = v7;
  _IOHIDCFArrayApplyBlock(a2, v14);
  if (CFArrayGetCount(v8))
  {
    v9 = _IOHIDEventSystemClientCopyPropertiesForService(*(a1 + 1), a1, v8);
    if (v9)
    {
      v10 = v9;
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = __IOHIDServiceClientCopyProperties_block_invoke_2;
      context[3] = &__block_descriptor_tmp_24;
      context[4] = v9;
      _IOHIDCFDictionaryApplyBlock(v6, context);
    }

    else
    {
      CFRetain(v6);
      v10 = v6;
    }

    OUTLINED_FUNCTION_0_15();
    v12[1] = 0x40000000;
    v12[2] = __IOHIDServiceClientCopyProperties_block_invoke_3;
    v12[3] = &__block_descriptor_tmp_25_0;
    v12[4] = v10;
    v12[5] = a1;
    _IOHIDCFArrayApplyBlock(a2, v12);
  }

  else
  {
    CFRetain(v6);
    v10 = v6;
  }

  if (!CFDictionaryGetCount(v10))
  {
    CFRelease(v10);
    v10 = 0;
  }

  CFRelease(v6);
  CFRelease(v8);
  return v10;
}

CFMutableDictionaryRef _IOHIDEventSystemConnectionCopyRecord(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  if (Mutable)
  {
    _IOHIDDictionaryAddSInt32(Mutable, @"Type", *(a1 + 176));
    _IOHIDDictionaryAddSInt32(v4, @"PID", *(a1 + 88));
    v5 = *(a1 + 144);
    if (v5)
    {
      CFDictionarySetValue(v4, @"Caller", v5);
    }

    v6 = *(a1 + 152);
    if (v6)
    {
      CFDictionarySetValue(v4, @"ProcessName", v6);
    }

    v7 = *(a1 + 160);
    if (v7)
    {
      CFDictionarySetValue(v4, @"UUID", v7);
    }

    v8 = *(a1 + 184);
    if (v8)
    {
      CFDictionarySetValue(v4, @"Attributes", v8);
    }

    _IOHIDDictionaryAddSInt32(v4, @"State", *(a1 + 264));
    _IOHIDDictionaryAddSInt32(v4, @"DroppedEventCount", *(a1 + 304));
    _IOHIDDictionaryAddSInt64(v4, @"DroppedEventMask", *(a1 + 312));
    _IOHIDDictionaryAddSInt32(v4, @"EventFilteredCount", *(a1 + 296));
    _IOHIDDictionaryAddSInt64(v4, @"EventFilterMask", *(a1 + 288));
    _IOHIDDictionaryAddSInt32(v4, @"EventFilterTimeoutCount", *(a1 + 300));
    _IOHIDDictionaryAddSInt32(v4, @"ActivityState", *(a1 + 408));
    _IOHIDDictionaryAddSInt32(v4, @"activityStateChangeCount", *(a1 + 412));
    _IOHIDDictionaryAddSInt64(v4, @"IdleNotificationTime", *(a1 + 416));
    if (*(a1 + 304))
    {
      v9 = CFGetAllocator(a1);
      v10 = _IOHIDCreateTimeString(v9, (a1 + 352));
      if (v10)
      {
        v11 = v10;
        v12 = OUTLINED_FUNCTION_10_2();
        CFDictionarySetValue(v12, v13, v14);
        CFRelease(v11);
      }

      v15 = CFGetAllocator(a1);
      v16 = _IOHIDCreateTimeString(v15, (a1 + 336));
      if (v16)
      {
        v17 = v16;
        v18 = OUTLINED_FUNCTION_10_2();
        CFDictionarySetValue(v18, v19, v20);
        CFRelease(v17);
      }
    }

    _IOHIDDictionaryAddSInt64(v4, @"MaxEventLatency", *(a1 + 368));
    _IOHIDDictionaryAddSInt64(v4, @"MaxPropertyNotificationHandlingTime", *(a1 + 384));
    v21 = _IOHIDEventSystemConnectionCopyEventLog(a1);
    if (v21)
    {
      v22 = v21;
      v23 = OUTLINED_FUNCTION_10_2();
      CFDictionaryAddValue(v23, v24, v25);
      CFRelease(v22);
    }

    v26 = _IOHIDEventSystemConnectionCopyEventCounts(a1);
    if (v26)
    {
      v27 = v26;
      v28 = OUTLINED_FUNCTION_10_2();
      CFDictionaryAddValue(v28, v29, v30);
      CFRelease(v27);
    }

    if (*(a1 + 440))
    {
      v31 = CFGetAllocator(a1);
      v32 = CFArrayCreateMutable(v31, 50, MEMORY[0x1E695E9C0]);
      if (v32)
      {
        v33 = v32;
        os_unfair_recursive_lock_lock_with_options();
        OUTLINED_FUNCTION_1_14();
        v72 = 0x40000000;
        v73 = ____IOHIDEventSystemConnectionSerializeActivity_block_invoke;
        v74 = &__block_descriptor_tmp_196;
        v75 = a1;
        _IOHIDSimpleQueueApplyBlock(v34, v71, v33);
        os_unfair_recursive_lock_unlock();
        v35 = OUTLINED_FUNCTION_10_2();
        CFDictionaryAddValue(v35, v36, v37);
        CFRelease(v33);
      }
    }

    v38 = *MEMORY[0x1E695E4D0];
    v39 = *MEMORY[0x1E695E4C0];
    if (*(a1 + 256))
    {
      v40 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v40 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v4, @"ProtectedServicesDisabled", v40);
    v41 = CFGetAllocator(a1);
    v42 = *(a1 + 240);
    v43 = CFDictionaryCreateMutable(v41, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v43)
    {
      v44 = v43;
      if (*v42)
      {
        v45 = v38;
      }

      else
      {
        v45 = v39;
      }

      CFDictionarySetValue(v43, @"com.apple.private.hid.client.admin", v45);
      if ((*v42 & 2) != 0)
      {
        v46 = v38;
      }

      else
      {
        v46 = v39;
      }

      CFDictionarySetValue(v44, @"com.apple.private.hid.client.event-monitor", v46);
      if ((*v42 & 4) != 0)
      {
        v47 = v38;
      }

      else
      {
        v47 = v39;
      }

      CFDictionarySetValue(v44, @"com.apple.private.hid.client.event-filter", v47);
      if ((*v42 & 8) != 0)
      {
        v48 = v38;
      }

      else
      {
        v48 = v39;
      }

      CFDictionarySetValue(v44, @"com.apple.private.hid.client.event-dispatch", v48);
      if ((*v42 & 0x10) != 0)
      {
        v49 = v38;
      }

      else
      {
        v49 = v39;
      }

      CFDictionarySetValue(v44, @"com.apple.private.hid.client.service-protected", v49);
      if ((*v42 & 0x20) != 0)
      {
        v50 = v38;
      }

      else
      {
        v50 = v39;
      }

      CFDictionarySetValue(v44, @"com.apple.private.hid.client.motion-event-privileged", v50);
      if ((*v42 & 0x40) != 0)
      {
        v51 = v38;
      }

      else
      {
        v51 = v39;
      }

      CFDictionarySetValue(v44, @"com.apple.private.hid.client.debug-tool", v51);
      v52 = OUTLINED_FUNCTION_10_2();
      CFDictionaryAddValue(v52, v53, v54);
      CFRelease(v44);
    }

    if (*(a1 + 248))
    {
      v55 = MEMORY[0x19A8DC510]();
      v56 = CFGetAllocator(a1);
      v57 = CFStringCreateWithCString(v56, v55, 0);
      CFDictionaryAddValue(v4, @"ConnectionEntitlements", v57);
      CFRelease(v57);
      free(v55);
    }

    v58 = *(a1 + 448);
    if (v58)
    {
      v59 = IOHIDConnectionFilterCopyProperty(v58, @"ConnectionPluginDebug");
      if (v59)
      {
        v60 = v59;
        v61 = OUTLINED_FUNCTION_10_2();
        CFDictionaryAddValue(v61, v62, v63);
        CFRelease(v60);
      }

      else
      {
        CFDictionaryAddValue(v4, @"ConnectionPluginDebug", &stru_1F0B93200);
      }
    }

    v64 = *(a1 + 24);
    if (v64)
    {
      v65 = _IOHIDEventQueueSerializeState(v64);
      if (v65)
      {
        v66 = v65;
        v67 = OUTLINED_FUNCTION_10_2();
        CFDictionarySetValue(v67, v68, v69);
        CFRelease(v66);
      }
    }

    CFSetGetCount(*(a1 + 80));
  }

  return v4;
}

CFMutableArrayRef _IOHIDEventSystemConnectionCopyEventLog(char *a1)
{
  if (!*(a1 + 49))
  {
    return 0;
  }

  v2 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v2, 10, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    os_unfair_recursive_lock_lock_with_options();
    OUTLINED_FUNCTION_1_14();
    v7 = 0x40000000;
    v8 = ___IOHIDEventSystemConnectionCopyEventLog_block_invoke;
    v9 = &__block_descriptor_tmp_132_0;
    v10 = a1;
    _IOHIDSimpleQueueApplyBlock(v4, v6, Mutable);
    os_unfair_recursive_lock_unlock();
  }

  return Mutable;
}

CFMutableDictionaryRef _IOHIDEventSystemConnectionCopyEventCounts(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    for (i = 0; i != 44; ++i)
    {
      if (*(a1[50] + 4 * i))
      {
        Name = IOHIDEventTypeGetName(i);
        _IOHIDDictionaryAddSInt32(Mutable, Name, *(a1[50] + 4 * i));
      }
    }

    if (!CFDictionaryGetCount(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t __IOHIDServiceVirtualSetOutputEventCallback(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = 3758097085;
  _IOHIDServiceGetSenderID(a1);
  HIDWORD(v27) = -536870212;
  v6 = CFGetAllocator(a2);
  DataInternal = IOHIDEventCreateDataInternal(v6, a3);
  if (DataInternal)
  {
    v8 = DataInternal;
    v9 = CFGetAllocator(a2);
    v10 = _IOHIDCreateBinaryData(v9, v8);
    if (v10)
    {
      v11 = v10;
      if (a2[114])
      {
        LODWORD(v5) = 5;
      }

      else
      {
        CFDataGetBytePtr(v10);
        CFDataGetLength(v11);
        v12 = OUTLINED_FUNCTION_13_2();
        v5 = iohideventsystem_output_event_to_virtual_service(v12, v13, v14, v15, v16, v17);
        if (v5)
        {
          v18 = _IOHIDLogCategory(9);
          if (OUTLINED_FUNCTION_20_0(v18))
          {
            OUTLINED_FUNCTION_2_11();
            OUTLINED_FUNCTION_8_3();
            OUTLINED_FUNCTION_12_1(&dword_197195000, v19, v20, "%s: HIDVS ID:%llx iohideventsystem_output_event_to_virtual_service:%x", v21, v22, v23, v24, v26, v27);
          }

          __IOHIDEventSystemConnectionCheckServerStatus(v5, a2);
        }
      }

      CFRelease(v8);
      CFRelease(v11);
      if (v5)
      {
        return v5;
      }

      else
      {
        return HIDWORD(v27);
      }
    }

    else
    {
      CFRelease(v8);
    }
  }

  return v5;
}

void _IOHIDEventSystemConnectionReleasePrivate_cold_2(int a1, mach_error_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_3_6(&dword_197195000, v8, v9, "%s: mach_port_deallocate(notifyPort):%s", v10, v11, v12, v13);
}

void _IOHIDEventSystemConnectionReleasePrivate_cold_3(int a1, mach_error_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_3_6(&dword_197195000, v8, v9, "%s: mach_port_allocate(sendPossiblePort):%s", v10, v11, v12, v13);
}

void _IOHIDEventSystemConnectionReleasePrivate_cold_4(int a1, mach_error_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_3_6(&dword_197195000, v8, v9, "%s: mach_port_deallocate(unusedNotify):%s", v10, v11, v12, v13);
}

void _IOHIDEventSystemConnectionReleasePrivate_cold_5(int a1, mach_error_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_3_6(&dword_197195000, v8, v9, "%s: mach_port_deallocate(reply_port):%s", v10, v11, v12, v13);
}

void _IOHIDEventSystemConnectionCreate_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void _IOHIDEventSystemConnectionScheduleAsync_cold_1()
{
  OUTLINED_FUNCTION_11_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "%s: Unable to create DISPATCH_SOURCE_TYPE_MACH_SEND for reply port", v2, v3, v4, v5);
}

void _IOHIDEventSystemConnectionQueueStop_cold_1(int a1, mach_error_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_3_6(&dword_197195000, v8, v9, "%s: mach_port_request_notification(notify):%s", v10, v11, v12, v13);
}

void _IOHIDEventSystemConnectionQueueStop_cold_2(int a1, mach_error_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_3_6(&dword_197195000, v8, v9, "%s: mach_port_deallocate(oldNotify):%s", v10, v11, v12, v13);
}

void _IOHIDEventSystemConnectionRemoveService_cold_1()
{
  OUTLINED_FUNCTION_11_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_5_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _IOHIDEventSystemConnectionPropertyChanged_cold_1()
{
  OUTLINED_FUNCTION_11_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_5_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _IOHIDEventSystemConnectionRecordClientChanged_cold_1()
{
  OUTLINED_FUNCTION_11_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_5_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _IOHIDEventSystemConnectionSetProperty_cold_1()
{
  OUTLINED_FUNCTION_11_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "%s: Unable create activity notification", v2, v3, v4, v5);
}

void _IOHIDEventSystemConnectionSetProperty_cold_2()
{
  OUTLINED_FUNCTION_11_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "%s: Unable to create activity timer", v2, v3, v4, v5);
}

CFIndex _IOHIDEventSystemConnectionSetProperty_cold_3(const __CFArray *a1, uint64_t a2)
{
  result = CFArrayGetTypeID();
  if (a1 && (v5 = result, result = CFGetTypeID(a1), result == v5) && (result = CFArrayGetCount(a1), result >= 1))
  {
    v6 = 0;
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      TypeID = CFNumberGetTypeID();
      if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == TypeID)
      {
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        v6 |= 1 << valuePtr;
      }

      result = CFArrayGetCount(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 288) = v6;
  return result;
}

void _IOHIDEventSystemConnectionSetProperty_cold_4(uint64_t a1, dispatch_source_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 432);
  if (v4)
  {
    IOHIDNotificationInvalidate(v4, 0);
    CFRelease(*(a1 + 432));
    *(a1 + 432) = 0;
  }

  *(a1 + 408) = 2;
  v5 = _IOHIDLogCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5();
    _os_log_impl(&dword_197195000, v5, OS_LOG_TYPE_DEFAULT, "%s: HID activity: stop reporting", v6, 0xCu);
  }

  dispatch_source_set_timer(*a2, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

uint64_t _IOHIDEventSystemConnectionSetProperty_cold_5(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *MEMORY[0x1E695E4D0];
  os_unfair_recursive_lock_lock_with_options();
  v7 = *(a2 + 24);
  if (v6 == a1)
  {
    if (v7)
    {
      IOHIDEventQueueSuspend(v7);
    }
  }

  else if (v7)
  {
    IOHIDEventQueueResume(v7);
  }

  result = os_unfair_recursive_lock_unlock();
  *a3 = 1;
  return result;
}

void _IOHIDEventSystemConnectionSetProperty_cold_6(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _IOHIDLogCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4_6();
    v6 = v4;
    _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "%s: HID activity: start reporting with interval: %ds", v5, 0x12u);
  }

  __IOHIDEventSystemConnectionActivityNotification(a1, v3, 0);
}

void IOHIDEventServerScheduleWithDispatchQueue(uint64_t *a1, NSObject *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  a1[4] = a2;
  if (a2)
  {
    v4 = a1[3];
    if (v4)
    {
LABEL_6:
      IOMIGMachPortScheduleWithDispatchQueue(v4, a2);
      return;
    }

    sp = 0;
    v5 = bootstrap_check_in(*MEMORY[0x1E69E99F8], "com.apple.iohideventsystem", &sp);
    if (v5)
    {
      v9 = v5;
      v10 = _IOHIDLogCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = bootstrap_strerror(v9);
        *buf = 136315138;
        v14 = v11;
        _os_log_error_impl(&dword_197195000, v10, OS_LOG_TYPE_ERROR, "bootstrap_check_in() failed: %s", buf, 0xCu);
      }
    }

    else
    {
      v6 = CFGetAllocator(a1);
      v7 = IOMIGMachPortCreate(v6, dword_1F0B91E80, sp);
      a1[3] = v7;
      if (v7)
      {
        IOMIGMachPortRegisterDemuxCallback(v7, __IOHIDEventServerDemuxCallback, a1);
        Port = IOMIGMachPortGetPort(a1[3]);
        IOMIGMachPortCacheAdd(Port, a1);
        notify_post("com.apple.iohideventsystem.available");
        v4 = a1[3];
        if (v4)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

uint64_t _io_hideventsystem_dispatch_event()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  CFDataGetTypeID();
  v3 = OUTLINED_FUNCTION_1_15();
  if (_IOHIDUnserializeAndVMDeallocWithTypeID(v3, v2, v4))
  {
    v5 = OUTLINED_FUNCTION_4_7();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == IOHIDEventSystemConnectionGetTypeID())
      {
        if (IOHIDEventSystemConnectionGetType(v6) && (*IOHIDEventSystemConnectionGetEntitlements(v6) & 8) == 0)
        {
          v14 = _IOHIDLogCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            _IOHIDEventSystemConnectionGetPID(v6);
            OUTLINED_FUNCTION_0_17();
            OUTLINED_FUNCTION_5_6(&dword_197195000, v15, v16, "Error: the client with pid %d is missing the '%s' entitlement.", v17, v18, v19, v20);
          }
        }

        else
        {
          System = _IOHIDEventSystemConnectionGetSystem(v6);
          if (System)
          {
            v9 = System;
            v10 = CFGetAllocator(v6);
            v11 = IOHIDEventCreateWithDataInternal(v10, v0);
            if (v11)
            {
              v12 = v11;
              _IOHIDEventSystemConnectionLogEvent(v6, v11);
              _IOHIDEventSystemDispatchEvent(v9, v12);
              CFRelease(v12);
            }
          }
        }
      }

      CFRelease(v6);
    }

    CFRelease(v0);
  }

  return 0;
}

uint64_t _io_hideventsystem_do_client_refresh(unsigned int a1, vm_offset_t *a2, _DWORD *a3)
{
  *a3 = 0;
  v5 = IOMIGMachPortCacheCopy(a1);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 != IOHIDEventSystemConnectionGetTypeID())
    {
      goto LABEL_10;
    }

    if (!_IOHIDEventSystemConnectionGetSystem(v6))
    {
      goto LABEL_10;
    }

    v8 = _IOHIDEventSystemConnectionCopyServices(v6);
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = v8;
    Count = CFSetGetCount(v8);
    v11 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    if (v11)
    {
      v12 = v11;
      CFSetGetValues(v9, v11);
      v13 = CFArrayCreate(*MEMORY[0x1E695E480], v12, Count, MEMORY[0x1E695E9C0]);
      v14 = v13;
      if (v13 && (v15 = _IOHIDCopyServiceClientInfo(v13)) != 0)
      {
        v16 = v15;
        *a3 = _IOHIDSerialize(v15, a2);
        free(v12);
        CFRelease(v16);
      }

      else
      {
        free(v12);
      }
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v9);
    CFRelease(v6);
    v6 = v14;
    if (v14)
    {
LABEL_10:
      CFRelease(v6);
    }
  }

  return 0;
}

uint64_t _io_hideventsystem_service_conforms_to(unsigned int a1, UInt8 *a2, CFIndex a3, int a4, int a5, _DWORD *a6)
{
  *a6 = 0;
  v10 = OUTLINED_FUNCTION_6_4(a3, a2);
  if (v10)
  {
    v11 = v10;
    v12 = IOMIGMachPortCacheCopy(a1);
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == IOHIDEventSystemConnectionGetTypeID())
      {
        System = _IOHIDEventSystemConnectionGetSystem(v13);
        if (System)
        {
          v16 = IOHIDEventSystemCopyService(System, v11);
          if (v16)
          {
            v17 = v16;
            *a6 = IOHIDServiceConformsTo(v16, a4, a5);
            CFRelease(v17);
          }
        }
      }

      CFRelease(v11);
    }

    else
    {
      v13 = v11;
    }

    CFRelease(v13);
  }

  return 0;
}

uint64_t _io_hideventsystem_copy_matching_event_for_service(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, vm_offset_t *a5, _DWORD *a6)
{
  valuePtr = a2;
  *a6 = 0;
  v9 = a4;
  CFDictionaryGetTypeID();
  v10 = OUTLINED_FUNCTION_1_15();
  v12 = _IOHIDUnserializeAndVMDeallocWithTypeID(v10, v9, v11);
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v13)
  {
    v14 = IOMIGMachPortCacheCopy(a1);
    v15 = v14;
    if (v14)
    {
      v16 = CFGetTypeID(v14);
      if (v16 == IOHIDEventSystemConnectionGetTypeID() && IOHIDEventSystemConnectionGetType(v15) != 2 && IOHIDEventSystemConnectionGetType(v15) != 4)
      {
        System = _IOHIDEventSystemConnectionGetSystem(v15);
        if (System)
        {
          v18 = IOHIDEventSystemCopyService(System, v13);
          v19 = v18;
          if (v18)
          {
            v20 = IOHIDServiceCopyMatchingEvent(v18, v12, v15);
            if (v20)
            {
              v21 = v20;
              v22 = CFGetAllocator(v15);
              DataInternal = IOHIDEventCreateDataInternal(v22, v21);
              if (DataInternal)
              {
                v24 = DataInternal;
                *a6 = _IOHIDSerialize(DataInternal, a5);
                CFRelease(v24);
              }

              CFRelease(v21);
            }
          }

          if (v12)
          {
            goto LABEL_13;
          }

          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = 0;
  if (v12)
  {
LABEL_13:
    CFRelease(v12);
  }

LABEL_14:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return 0;
}

uint64_t _io_hideventsystem_set_element_value_for_service(unsigned int a1, UInt8 *a2, CFIndex a3, int a4, unsigned __int8 a5, uint64_t a6, int *a7)
{
  v12 = -536870212;
  v13 = OUTLINED_FUNCTION_6_4(a3, a2);
  if (v13)
  {
    v14 = v13;
    v15 = IOMIGMachPortCacheCopy(a1);
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == IOHIDEventSystemConnectionGetTypeID())
      {
        System = _IOHIDEventSystemConnectionGetSystem(v16);
        if (System)
        {
          v19 = IOHIDEventSystemCopyService(System, v14);
          if (v19)
          {
            v20 = v19;
            v12 = IOHIDServiceSetElementValue(v19, a4, a5, a6);
            CFRelease(v20);
          }
        }
      }

      CFRelease(v14);
    }

    else
    {
      v16 = v14;
    }

    CFRelease(v16);
  }

  *a7 = v12;
  return 0;
}

uint64_t _io_hideventsystem_register_property_changed_notification()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  CFStringGetTypeID();
  v3 = OUTLINED_FUNCTION_1_15();
  if (_IOHIDUnserializeAndVMDeallocWithTypeID(v3, v2, v4))
  {
    v5 = OUTLINED_FUNCTION_4_7();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == IOHIDEventSystemConnectionGetTypeID())
      {
        _IOHIDEventSystemConnectionRegisterPropertyChangedNotification(v6, v0);
      }

      CFRelease(v6);
    }

    CFRelease(v0);
  }

  return 0;
}

uint64_t _io_hideventsystem_unregister_property_changed_notification()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  CFStringGetTypeID();
  v3 = OUTLINED_FUNCTION_1_15();
  if (_IOHIDUnserializeAndVMDeallocWithTypeID(v3, v2, v4))
  {
    v5 = OUTLINED_FUNCTION_4_7();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == IOHIDEventSystemConnectionGetTypeID())
      {
        _IOHIDEventSystemConnectionUnregisterPropertyChangedNotification(v6, v0);
      }

      CFRelease(v6);
    }

    CFRelease(v0);
  }

  return 0;
}

uint64_t _io_hideventsystem_register_event_filter(unsigned int a1, int a2)
{
  v3 = IOMIGMachPortCacheCopy(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == IOHIDEventSystemConnectionGetTypeID())
    {
      if (IOHIDEventSystemConnectionGetType(v4) && (*IOHIDEventSystemConnectionGetEntitlements(v4) & 4) == 0)
      {
        v7 = _IOHIDLogCategory(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionGetPID(v4);
          OUTLINED_FUNCTION_0_17();
          OUTLINED_FUNCTION_2_12(&dword_197195000, v8, v9, "Error: the client with pid %d is missing the '%s' entitlement.", v10, v11, v12, v13);
        }
      }

      else
      {
        _IOHIDEventSystemConnectionRegisterEventFilter(v4, a2);
      }
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t _io_hideventsystem_unregister_event_filter(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      _IOHIDEventSystemConnectionUnregisterEventFilter(v2);
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t _io_hideventsystem_register_record_client_changed_notification(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      if (IOHIDEventSystemConnectionGetType(v2))
      {
        v5 = _IOHIDLogCategory(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionGetPID(v2);
          OUTLINED_FUNCTION_0_17();
          OUTLINED_FUNCTION_2_12(&dword_197195000, v6, v7, "Error: the client with pid %d is missing the '%s' entitlement.", v8, v9, v10, v11);
        }
      }

      else
      {
        _IOHIDEventSystemConnectionRegisterRecordClientChanged(v2);
      }
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t _io_hideventsystem_unregister_record_client_changed_notification(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      _IOHIDEventSystemConnectionUnregisterRecordClientChanged(v2);
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t _io_hideventsystem_register_record_service_changed_notification(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      if (IOHIDEventSystemConnectionGetType(v2))
      {
        v5 = _IOHIDLogCategory(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionGetPID(v2);
          OUTLINED_FUNCTION_0_17();
          OUTLINED_FUNCTION_2_12(&dword_197195000, v6, v7, "Error: the client with pid %d is missing the '%s' entitlement.", v8, v9, v10, v11);
        }
      }

      else
      {
        _IOHIDEventSystemConnectionRegisterRecordServiceChanged(v2);
      }
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t _io_hideventsystem_unregister_record_service_changed_notification(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      _IOHIDEventSystemConnectionUnregisterRecordServiceChanged(v2);
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t _io_hideventsystem_remove_virtual_service(unsigned int a1, const void *a2)
{
  v3 = 3758097090;
  v4 = IOMIGMachPortCacheCopy(a1);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == IOHIDEventSystemConnectionGetTypeID())
    {
      _IOHIDEventSystemConnectionRemoveVirtualService(v5, a2);
      v3 = 0;
    }

    CFRelease(v5);
  }

  return v3;
}

void initialSetup_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void initialSetup_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void offloadAssertions_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void offloadAssertions_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void offloadAssertions_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void offloadAssertions_cold_6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void offloadAssertions_cold_7(uint8_t *buf, uint64_t *a2, void *a3)
{
  v3 = *a2;
  *buf = 138412290;
  *a3 = v3;
  _os_log_error_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create the remoteID to CF for id %@\n", buf, 0xCu);
}

void removeFromTimedList_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void removeFromTimedList_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void insertIntoTimedList_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void insertIntoTimedList_cold_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_6_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void insertIntoTimedList_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void getTimeoutForAssertionCategory_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void activateAsyncAssertion_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void activateAsyncAssertion_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void activateAsyncAssertion_cold_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void activateAsyncAssertion_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void activateAsyncAssertion_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void activateAsyncAssertion_cold_6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void activateAsyncAssertion_cold_7()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void activateAsyncAssertion_cold_8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void logAsyncAssertionActivity_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void logAsyncAssertionActivity_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void createAsyncAssertion_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __createAsyncAssertion_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __createAsyncAssertion_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __createAsyncAssertion_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_6_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __createAsyncAssertion_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __createAsyncAssertion_block_invoke_cold_5()
{
  CFDictionaryGetCount(gActiveAssertionsDict);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_9_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __createAsyncAssertion_block_invoke_cold_6()
{
  CFDictionaryGetCount(gActiveAssertionsDict);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __createAsyncAssertion_block_invoke_cold_7()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __createAsyncAssertion_block_invoke_cold_8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _releaseAsycnAssertion_cold_1()
{
  CFArrayGetCount(gReleasedAssertionsList);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_9_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _releaseAsycnAssertion_cold_2()
{
  CFArrayGetCount(gReleasedAssertionsList);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _releaseAsycnAssertion_cold_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void _releaseAsycnAssertion_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void _releaseAsycnAssertion_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _releaseAsycnAssertion_cold_6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sendAsyncReleaseMsg_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sendAsyncReleaseMsg_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sendAsyncReleaseMsg_cold_3()
{
  CFArrayGetCount(gAsyncAssertionActivityLog_1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sendAsyncReleaseMsg_cold_4()
{
  CFArrayGetCount(gAsyncAssertionActivityLog_1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __setAsyncAssertionProperties_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __setAsyncAssertionProperties_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __setAsyncAssertionProperties_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __setAsyncAssertionProperties_block_invoke_cold_6()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __setAsyncAssertionProperties_block_invoke_cold_7()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __setAsyncAssertionProperties_block_invoke_cold_8()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void handleAssertionLevel_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void handleAssertionLevel_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void handleAssertionLevel_cold_3()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void handleAssertionLevel_cold_4()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void handleAssertionLevel_cold_6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void handleAssertionLevel_cold_7()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __processCheckAssertionsMsg_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __processCheckAssertionsMsg_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void processAssertionTimeout_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_18();
  _os_log_error_impl(&dword_197195000, v0, OS_LOG_TYPE_ERROR, "Received a release not for gCurrentRemoteAssertion:0x%x. Received 0x%x", v1, 0xEu);
}

void processAssertionTimeout_cold_2()
{
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void processAssertionTimeout_cold_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void processAssertionTimeout_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void processAssertionTimeout_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void processAssertionTimeout_cold_6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void processAssertionTimeout_cold_7()
{
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void processAssertionTimeout_cold_8()
{
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void processAssertionTimeout_cold_9()
{
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void processAssertionTimeout_cold_10()
{
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void processAssertionTimeout_cold_11()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void processAssertionTimeout_cold_12()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void processAssertionUpdateActivity_cold_1()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void processAssertionUpdateActivity_cold_2()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void handleAssertionTimeout_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void handleAssertionTimeout_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void handleAssertionTimeout_cold_3(uint8_t *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  *a1 = 67109120;
  *a3 = v3;
  OUTLINED_FUNCTION_1_10(&dword_197195000, MEMORY[0x1E69E9C10], a3, "Failed to release assertion 0x%x on timeout", a1);
}

void handleAssertionTimeout_cold_6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void handleAssertionTimeout_cold_8()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void handleAssertionTimeout_cold_9()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void IOPMAssertionCreateWithProperties_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void IOPMAssertionCreateWithProperties_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void IOPMAssertionSetProcessState_cold_1()
{
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_3()
{
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_6_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_4()
{
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __IOPMCopyAssertionActivityUpdateWithCallback_block_invoke_229_cold_5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t IODPControllerCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2 || !IOAVObjectConformsTo(a2, "IODPController"))
  {
    return 0;
  }

  if (!__kIODPControllerTypeID)
  {
    pthread_once(&__controllerTypeInit_0, __IODPControllerRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = a2;
    IOObjectRetain(a2);
    if (!IOServiceOpen(*(v5 + 16), *MEMORY[0x1E69E9A60], 0x44504354u, (v5 + 20)))
    {
      v6 = IOAVControllerCreateWithService(a1, a2);
      *(v5 + 24) = v6;
      if (v6)
      {
        v26 = 0;
        v7 = IOAVControllerCopyProperty(v6, @"Location");
        if (v7)
        {
          v8 = v7;
          if (CFEqual(v7, @"Embedded"))
          {
            *(v5 + 32) = 1;
          }

          CFRelease(v8);
        }

        v9 = IOAVControllerCopyProperty(*(v5 + 24), @"MinLaneCount");
        if (v9)
        {
          v10 = v9;
          CFNumberGetTypeID();
          v11 = OUTLINED_FUNCTION_3_8();
          if (a1 == v11)
          {
            OUTLINED_FUNCTION_4_8(v11, v12, (v5 + 40));
          }

          CFRelease(v10);
        }

        v13 = IOAVControllerCopyProperty(*(v5 + 24), @"MaxLaneCount");
        if (v13)
        {
          v14 = v13;
          CFNumberGetTypeID();
          v15 = OUTLINED_FUNCTION_3_8();
          if (a1 == v15)
          {
            OUTLINED_FUNCTION_4_8(v15, v16, (v5 + 44));
          }

          CFRelease(v14);
        }

        v17 = IOAVControllerCopyProperty(*(v5 + 24), @"MinLinkRate");
        if (v17)
        {
          v18 = v17;
          CFNumberGetTypeID();
          v19 = OUTLINED_FUNCTION_3_8();
          if (a1 == v19)
          {
            OUTLINED_FUNCTION_4_8(v19, v20, &v26);
            *(v5 + 36) = v26;
          }

          CFRelease(v18);
        }

        v21 = IOAVControllerCopyProperty(*(v5 + 24), @"MaxLinkRate");
        if (v21)
        {
          v22 = v21;
          CFNumberGetTypeID();
          v23 = OUTLINED_FUNCTION_3_8();
          if (a1 == v23)
          {
            OUTLINED_FUNCTION_4_8(v23, v24, &v26);
            *(v5 + 37) = v26;
          }

          CFRelease(v22);
        }
      }

      return v5;
    }

    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t IODPControllerSetMinLaneCount()
{
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_0_19(v2);
  result = OUTLINED_FUNCTION_1_16(v3, 4u, v4, v5, v6, v7, v8, v9, v11, v12);
  if (!result)
  {
    *(v1 + 40) = v0;
  }

  return result;
}

uint64_t IODPControllerSetMaxLaneCount()
{
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_0_19(v2);
  result = OUTLINED_FUNCTION_1_16(v3, 5u, v4, v5, v6, v7, v8, v9, v11, v12);
  if (!result)
  {
    *(v1 + 44) = v0;
  }

  return result;
}

uint64_t IODPControllerSetMinLinkRate()
{
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_0_19(v2);
  result = OUTLINED_FUNCTION_1_16(v3, 7u, v4, v5, v6, v7, v8, v9, v11, v12);
  if (!result)
  {
    *(v1 + 36) = v0;
  }

  return result;
}

uint64_t IODPControllerSetMaxLinkRate()
{
  OUTLINED_FUNCTION_26();
  v3 = OUTLINED_FUNCTION_0_19(v2);
  result = OUTLINED_FUNCTION_1_16(v3, 8u, v4, v5, v6, v7, v8, v9, v11, v12);
  if (!result)
  {
    *(v1 + 37) = v0;
  }

  return result;
}

_OWORD *IODPDeviceCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IODPDevice"))
  {
    return 0;
  }

  if (!__kIODPDeviceTypeID)
  {
    pthread_once(&__deviceTypeInit, __IODPDeviceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    *(Instance + 4) = v2;
    IOObjectRetain(v2);
    if (!IOServiceOpen(*(v5 + 4), *MEMORY[0x1E69E9A60], 0x44504456u, v5 + 5))
    {
      v6 = IOAVDeviceCreateWithService(a1, *(v5 + 4));
      *(v5 + 3) = v6;
      if (v6)
      {
        valuePtr = 0;
        v7 = IOAVDeviceCopyProperty(v6, @"Location");
        if (v7)
        {
          v8 = v7;
          if (CFEqual(v7, @"Embedded"))
          {
            *(v5 + 8) = 1;
          }

          CFRelease(v8);
        }

        v9 = IOAVDeviceCopyProperty(*(v5 + 3), @"Revision");
        if (v9)
        {
          v10 = v9;
          Value = CFDictionaryGetValue(v9, @"Major");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberIntType, v5 + 36);
          }

          v12 = CFDictionaryGetValue(v10, @"Minor");
          if (v12)
          {
            CFNumberGetValue(v12, kCFNumberIntType, v5 + 40);
          }

          CFRelease(v10);
        }

        v13 = IOAVDeviceCopyProperty(*(v5 + 3), @"MaxLaneCount");
        if (v13)
        {
          v14 = v13;
          CFNumberGetValue(v13, kCFNumberIntType, v5 + 44);
          CFRelease(v14);
        }

        v15 = IOAVDeviceCopyProperty(*(v5 + 3), @"MaxLinkRate");
        if (v15)
        {
          v16 = v15;
          CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
          *(v5 + 48) = valuePtr;
          CFRelease(v16);
        }

        v17 = IOAVDeviceCopyProperty(*(v5 + 3), @"SupportsEnhancedMode");
        v18 = MEMORY[0x1E695E4D0];
        if (v17)
        {
          v19 = v17;
          *(v5 + 49) = CFEqual(v17, *MEMORY[0x1E695E4D0]) != 0;
          CFRelease(v19);
        }

        v20 = IOAVDeviceCopyProperty(*(v5 + 3), @"SupportsDownspread");
        if (v20)
        {
          v21 = v20;
          *(v5 + 50) = CFEqual(v20, *v18) != 0;
          CFRelease(v21);
        }
      }

      return v5;
    }

    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t IODPDeviceGetSymbolErrorCount(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallMethod(*(a1 + 20), 3u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

void *IODPServiceCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IODPService"))
  {
    return 0;
  }

  if (!__kIODPServiceTypeID)
  {
    pthread_once(&__serviceTypeInit_0, __IODPServiceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    Instance[2] = 0;
    Instance[3] = 0;
    Instance[4] = 0;
    *(Instance + 4) = v2;
    IOObjectRetain(v2);
    if (!IOServiceOpen(*(v5 + 4), *MEMORY[0x1E69E9A60], 0x44505356u, v5 + 5))
    {
      v5[3] = IOAVServiceCreateWithService(a1, *(v5 + 4));
      return v5;
    }

    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t IODPServiceGetSinkCount(uint64_t a1, _DWORD *a2)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt = 1;
  result = IOConnectCallMethod(*(a1 + 20), 2u, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  if (!result)
  {
    *a2 = output[0];
  }

  return result;
}

uint64_t IODPServiceGetSymbolErrorCount(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallMethod(*(a1 + 20), 1u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

__CFDictionary *__IODPPortMatching(uint64_t a1, int a2, int a3, int a4)
{
  v22 = a3;
  valuePtr = a2;
  v21 = a4;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v10)
    {
      v11 = v10;
      v12 = CFStringCreateWithFormat(v8, 0, @"%s%s", a1, "UserInterfaceSupported");
      if (!v12)
      {
        CFRelease(v11);
        goto LABEL_17;
      }

      v13 = v12;
      CFDictionarySetValue(v11, v12, *MEMORY[0x1E695E4D0]);
      if (a2)
      {
        v14 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        CFDictionarySetValue(v11, @"PortType", v14);
        CFRelease(v15);
      }

      if (a3 != -1)
      {
        v16 = CFNumberCreate(v8, kCFNumberSInt32Type, &v22);
        if (!v16)
        {
          goto LABEL_17;
        }

        v17 = v16;
        CFDictionarySetValue(v11, @"PortNumber", v16);
        CFRelease(v17);
      }

      if (a4 == -1)
      {
LABEL_13:
        CFDictionarySetValue(Mutable, @"IOPropertyMatch", v11);
        CFRelease(v11);
LABEL_14:
        CFRelease(v13);
        return Mutable;
      }

      v18 = CFNumberCreate(v8, kCFNumberIntType, &v21);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v11, @"PortVariant", v18);
        CFRelease(v19);
        goto LABEL_13;
      }
    }

LABEL_17:
    v13 = Mutable;
    Mutable = 0;
    goto LABEL_14;
  }

  return Mutable;
}

uint64_t __IODPCopyFirstMatchingPort(const char *a1, uint64_t (*a2)(void, uint64_t), int a3, int a4, int a5)
{
  v10 = __IODPPortMatching(a1, a3, a4, a5);
  MatchingService = IOServiceGetMatchingService(0, v10);
  if (MatchingService)
  {
    v12 = MatchingService;
    v13 = a2(*MEMORY[0x1E695E480], MatchingService);
    IOObjectRelease(v12);
    return v13;
  }

  else
  {
    printf("Failed to get %s for portType=%d, portNumber=%d, portVariant=%d\n", a1, a3, a4, a5);
    return 0;
  }
}

io_connect_t *IOAVAudioInterfaceCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IOAVAudioInterface"))
  {
    return 0;
  }

  if (!__kIOAVAudioInterfaceTypeID)
  {
    pthread_once(&__interfaceTypeInit_0, __IOAVAudioInterfaceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 2) = 0;
    *(Instance + 3) = 0;
    v5 = Instance + 4;
    *(Instance + 4) = 0;
    Instance[4] = v2;
    IOObjectRetain(v2);
    if (IOServiceOpen(*v5, *MEMORY[0x1E69E9A60], 0, v4 + 5))
    {
      v7 = v4;
      v4 = 0;
LABEL_10:
      CFRelease(v7);
      return v4;
    }

    CFProperty = IORegistryEntryCreateCFProperty(*v5, @"Location", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      if (CFEqual(CFProperty, @"Embedded"))
      {
        v4[6] = 1;
      }

      goto LABEL_10;
    }
  }

  return v4;
}

CFArrayRef IOAVAudioInterfaceCopyProperties(uint64_t a1)
{
  properties = 0;
  v1 = *MEMORY[0x1E695E480];
  if (IORegistryEntryCreateCFProperties(*(a1 + 16), &properties, *MEMORY[0x1E695E480], 0))
  {
    return 0;
  }

  v2 = IOAVPropertyListCreateWithCFProperties(v1, properties);
  CFRelease(properties);
  return v2;
}

io_connect_t *IOAVControllerCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IOAVController"))
  {
    return 0;
  }

  if (!__kIOAVControllerTypeID)
  {
    pthread_once(&__controllerTypeInit_1, __IOAVControllerRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v5 = (Instance + 16);
    *(Instance + 16) = v2;
    IOObjectRetain(v2);
    if (IOServiceOpen(*v5, *MEMORY[0x1E69E9A60], 0, v4 + 5))
    {
      v7 = v4;
      v4 = 0;
LABEL_10:
      CFRelease(v7);
      return v4;
    }

    CFProperty = IORegistryEntryCreateCFProperty(*v5, @"Location", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      if (CFEqual(CFProperty, @"Embedded"))
      {
        v4[6] = 1;
      }

      goto LABEL_10;
    }
  }

  return v4;
}

CFArrayRef IOAVControllerCopyProperties(uint64_t a1)
{
  properties = 0;
  v1 = *MEMORY[0x1E695E480];
  if (IORegistryEntryCreateCFProperties(*(a1 + 16), &properties, *MEMORY[0x1E695E480], 0))
  {
    return 0;
  }

  v2 = IOAVPropertyListCreateWithCFProperties(v1, properties);
  CFRelease(properties);
  return v2;
}

uint64_t IOAVControllerGetPower(uint64_t a1, BOOL *a2)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt = 1;
  if (!a2)
  {
    return 3758097090;
  }

  result = IOConnectCallMethod(*(a1 + 20), 0xBu, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  if (!result)
  {
    *a2 = output[0] != 0;
  }

  return result;
}

io_connect_t *IOAVDeviceCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IOAVDevice"))
  {
    return 0;
  }

  if (!__kIOAVDeviceTypeID)
  {
    pthread_once(&__deviceTypeInit_0, __IOAVDeviceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 2) = 0;
    *(Instance + 3) = 0;
    v5 = Instance + 4;
    *(Instance + 4) = 0;
    Instance[4] = v2;
    IOObjectRetain(v2);
    if (IOServiceOpen(*v5, *MEMORY[0x1E69E9A60], 0, v4 + 5))
    {
      v7 = v4;
      v4 = 0;
LABEL_10:
      CFRelease(v7);
      return v4;
    }

    CFProperty = IORegistryEntryCreateCFProperty(*v5, @"Location", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      if (CFEqual(CFProperty, @"Embedded"))
      {
        v4[6] = 1;
      }

      goto LABEL_10;
    }
  }

  return v4;
}

CFArrayRef IOAVDeviceCopyProperties(uint64_t a1)
{
  properties = 0;
  v1 = *MEMORY[0x1E695E480];
  if (IORegistryEntryCreateCFProperties(*(a1 + 16), &properties, *MEMORY[0x1E695E480], 0))
  {
    return 0;
  }

  v2 = IOAVPropertyListCreateWithCFProperties(v1, properties);
  CFRelease(properties);
  return v2;
}

uint64_t IOAVDeviceGetProtectionStatus(uint64_t a1, _DWORD *a2)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt = 1;
  result = IOConnectCallMethod(*(a1 + 20), 0xAu, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  if (!result)
  {
    *a2 = output[0];
  }

  return result;
}

io_service_t *IOAVDisplayMemoryCreateWithName(uint64_t a1, const void *a2)
{
  v4 = IOServiceMatching("IOAVDisplayMemory");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CFDictionarySetValue(v4, @"IONameMatch", a2);
  MatchingService = IOServiceGetMatchingService(0, v5);
  if (!MatchingService)
  {
    return 0;
  }

  v7 = MatchingService;
  v8 = IOAVDisplayMemoryCreateWithService(a1, MatchingService);
  IOObjectRelease(v7);
  return v8;
}

io_service_t *IOAVDisplayMemoryCreateWithService(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  if (!IOAVObjectConformsTo(a2, "IOAVDisplayMemory"))
  {
    return 0;
  }

  if (!__kIOAVDisplayMemoryTypeID)
  {
    pthread_once(&__serviceTypeInit_1, __IOAVDisplayMemoryRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 16) = v2;
    IOObjectRetain(v2);
    if (IOServiceOpen(v4[4], *MEMORY[0x1E69E9A60], 0, v4 + 5))
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

CFArrayRef IOAVPropertyListCreateWithCFProperties(uint64_t a1, const void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  if (qword_1ED446B10 != -1)
  {
    dispatch_once(&qword_1ED446B10, &__block_literal_global_18);
  }

  v5 = CFGetTypeID(a2);
  if (v5 != _MergedGlobals_3 && v5 != qword_1ED446AD8 && v5 != qword_1ED446AE0 && v5 != qword_1ED446AE8 && v5 != qword_1ED446AF0)
  {
    if (v5 == qword_1ED446AF8)
    {
      OUTLINED_FUNCTION_1_17();
      Count = CFArrayGetCount(a2);
      v12 = Count;
      if (Count < 0x81 || (v2 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL)) != 0)
      {
        v63.location = 0;
        v63.length = v12;
        CFArrayGetValues(a2, v63, v2);
        if (v12 < 1)
        {
LABEL_41:
          v20 = CFRetain(a2);
        }

        else
        {
          v13 = 0;
          for (i = 0; i != v12; ++i)
          {
            v15 = IOAVPropertyListCreateWithCFProperties(a1, v2[i]);
            if (!v15)
            {
              if (i)
              {
                for (j = 0; j != i; ++j)
                {
                  CFRelease(v2[j]);
                }
              }

              v35 = 0;
              goto LABEL_45;
            }

            v13 |= v15 != v2[i];
            v2[i] = v15;
          }

          if ((v13 & 1) == 0)
          {
            goto LABEL_41;
          }

          v16 = OUTLINED_FUNCTION_0_20();
          v20 = CFArrayCreate(v16, v17, v18, v19);
        }

        v35 = v20;
        if (v12 >= 1)
        {
          v36 = v2;
          do
          {
            v37 = *v36++;
            CFRelease(v37);
            --v12;
          }

          while (v12);
        }

LABEL_45:
        if (v2 == v60)
        {
          return v35;
        }

        v38 = v2;
        goto LABEL_65;
      }
    }

    else
    {
      if (v5 != qword_1ED446B00)
      {
        if (v5 == qword_1ED446B08)
        {
          OUTLINED_FUNCTION_1_17();
          v39 = CFSetGetCount(a2);
          v40 = v39;
          if (v39 < 0x81 || (v2 = malloc_type_malloc(8 * v39, 0x80040B8603338uLL)) != 0)
          {
            CFSetGetValues(a2, v2);
            if (v40 <= 0)
            {
              v52 = OUTLINED_FUNCTION_0_20();
              v47 = CFArrayCreate(v52, v53, v54, v55);
LABEL_67:
              v35 = v47;
            }

            else
            {
              v41 = 0;
              while (1)
              {
                v42 = IOAVPropertyListCreateWithCFProperties(a1, v2[v41]);
                if (!v42)
                {
                  break;
                }

                v2[v41++] = v42;
                if (v40 == v41)
                {
                  v43 = OUTLINED_FUNCTION_0_20();
                  v47 = CFArrayCreate(v43, v44, v45, v46);
                  v48 = v2;
                  do
                  {
                    v49 = *v48++;
                    CFRelease(v49);
                    --v40;
                  }

                  while (v40);
                  goto LABEL_67;
                }
              }

              if (v41)
              {
                for (k = 0; k != v41; ++k)
                {
                  CFRelease(v2[k]);
                }
              }

              v47 = 0;
              v35 = 0;
            }

            if (v2 != v60)
            {
              free(v2);
              return v47;
            }

            return v35;
          }
        }

        return 0;
      }

      OUTLINED_FUNCTION_1_17();
      v21 = v59;
      bzero(v59, 0x400uLL);
      v22 = CFDictionaryGetCount(a2);
      v23 = v22;
      if (v22 >= 0x81)
      {
        v24 = malloc_type_malloc(8 * v22, 0xC0040B8AA526DuLL);
        if (!v24)
        {
          return 0;
        }

        v2 = v24;
        v25 = malloc_type_malloc(8 * v23, 0xC0040B8AA526DuLL);
        if (!v25)
        {
          free(v2);
          return 0;
        }

        v21 = v25;
      }

      CFDictionaryGetKeysAndValues(a2, v2, v21);
      if (v23 < 1)
      {
LABEL_57:
        v34 = CFRetain(a2);
LABEL_58:
        v35 = v34;
        if (v23 >= 1)
        {
          v50 = v21;
          do
          {
            v51 = *v50++;
            CFRelease(v51);
            --v23;
          }

          while (v23);
        }

        if (v2 != v60)
        {
          free(v2);
        }

        if (v21 == v59)
        {
          return v35;
        }

LABEL_64:
        v38 = v21;
LABEL_65:
        free(v38);
        return v35;
      }

      v26 = 0;
      v27 = 0;
      while (1)
      {
        v28 = IOAVPropertyListCreateWithCFProperties(a1, v21[v26]);
        if (!v28)
        {
          break;
        }

        v27 |= v28 != v21[v26];
        v21[v26++] = v28;
        if (v23 == v26)
        {
          if ((v27 & 1) == 0)
          {
            goto LABEL_57;
          }

          v29 = OUTLINED_FUNCTION_0_20();
          v34 = CFDictionaryCreate(v29, v30, v31, v23, v32, v33);
          goto LABEL_58;
        }
      }

      if (v26)
      {
        for (m = 0; m != v26; ++m)
        {
          CFRelease(v21[m]);
        }
      }

      if (v21 != v59)
      {
        free(v2);
        v35 = 0;
        goto LABEL_64;
      }
    }

    return 0;
  }

  return CFRetain(a2);
}

BOOL IOAVObjectConformsTo(io_registry_entry_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s%s", a2, "UserInterfaceSupported");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CFProperty = IORegistryEntryCreateCFProperty(a1, v4, v3, 0);
  if (CFProperty)
  {
    v7 = CFProperty == *MEMORY[0x1E695E4D0];
    CFRelease(CFProperty);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v5);
  return v7;
}

uint64_t IOAVConnectCallCopyMethod(mach_port_t a1, uint32_t a2, CFTypeRef *a3)
{
  v5 = -3;
  outputStruct = 0;
  if (!a3)
  {
    return 3758097090;
  }

  result = IOConnectCallMethod(a1, a2, 0, 0, 0, 0, 0, 0, &outputStruct, &v5);
  if (result)
  {
    *a3 = 0;
  }

  else
  {
    *a3 = IOCFUnserializeBinary(outputStruct, v5, 0, 0, 0);
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], outputStruct, v5);
    if (*a3)
    {
      return 0;
    }

    else
    {
      return 3758097085;
    }
  }

  return result;
}

uint64_t IOAVConnectCallSetMethod(mach_port_t a1, uint32_t a2, CFTypeRef object)
{
  v5 = IOCFSerialize(object, 1uLL);
  if (!v5)
  {
    return 3758097090;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v6);
  v9 = IOConnectCallMethod(a1, a2, 0, 0, BytePtr, Length, 0, 0, 0, 0);
  CFRelease(v6);
  return v9;
}

io_connect_t *IOAVServiceCreateWithService(uint64_t a1, io_registry_entry_t a2)
{
  if (!a2 || !IOAVObjectConformsTo(a2, "IOAVService"))
  {
    return 0;
  }

  if (!__kIOAVServiceTypeID)
  {
    pthread_once(&__serviceTypeInit_2, __IOAVServiceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 2) = 0;
    *(Instance + 3) = 0;
    v5 = Instance + 4;
    *(Instance + 4) = 0;
    Instance[4] = a2;
    IOObjectRetain(a2);
    if (IOServiceOpen(*v5, *MEMORY[0x1E69E9A60], 0, v4 + 5))
    {
      v7 = v4;
      v4 = 0;
LABEL_10:
      CFRelease(v7);
      return v4;
    }

    CFProperty = IORegistryEntryCreateCFProperty(*v5, @"Location", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      if (CFEqual(CFProperty, @"Embedded"))
      {
        v4[6] = 1;
      }

      goto LABEL_10;
    }
  }

  return v4;
}

CFArrayRef IOAVServiceCopyProperties(uint64_t a1)
{
  properties = 0;
  v1 = *MEMORY[0x1E695E480];
  if (IORegistryEntryCreateCFProperties(*(a1 + 16), &properties, *MEMORY[0x1E695E480], 0))
  {
    return 0;
  }

  v2 = IOAVPropertyListCreateWithCFProperties(v1, properties);
  CFRelease(properties);
  return v2;
}

uint64_t IOAVServiceGetPower(uint64_t a1, BOOL *a2)
{
  v2 = 3758097084;
  if (!a2)
  {
    return 3758097090;
  }

  CFProperty = IORegistryEntryCreateCFProperty(*(a1 + 16), @"Power", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    *a2 = CFEqual(CFProperty, *MEMORY[0x1E695E4D0]) != 0;
    CFRelease(v5);
    return 0;
  }

  return v2;
}

uint64_t IOAVServiceCopyEDID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v3 = OUTLINED_FUNCTION_2_13(a1);
  v5 = IOAVConnectCallCopyMethod(v3, 0x1Au, v4);
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDataGetTypeID()))
  {
    *v2 = cf;
  }

  else
  {
    *v2 = 0;
    return 3758097097;
  }

  return v5;
}

uint64_t IOAVServiceCopyPhysicalAddress(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v3 = OUTLINED_FUNCTION_2_13(a1);
  v5 = IOAVConnectCallCopyMethod(v3, 0x1Fu, v4);
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDataGetTypeID()))
  {
    *v2 = cf;
  }

  else
  {
    *v2 = 0;
    return 3758097097;
  }

  return v5;
}

uint64_t IOAVServiceGetProtectionStatus(uint64_t a1, _DWORD *a2)
{
  v3 = OUTLINED_FUNCTION_0_21(a1, *MEMORY[0x1E69E9840]);
  result = OUTLINED_FUNCTION_1_4(v3, 0x15u, v4, v5, v6, v7, v8, v9, v11, v12);
  if (!result)
  {
    *a2 = v13;
  }

  return result;
}

uint64_t IOAVServiceGetEncryptionStatus(uint64_t a1, _DWORD *a2)
{
  v3 = OUTLINED_FUNCTION_0_21(a1, *MEMORY[0x1E69E9840]);
  result = OUTLINED_FUNCTION_1_4(v3, 0x20u, v4, v5, v6, v7, v8, v9, v11, v12);
  if (!result)
  {
    *a2 = v13;
  }

  return result;
}

uint64_t IOAVServiceGetHDCPAuthenticatedContentType(uint64_t a1, _DWORD *a2)
{
  v3 = OUTLINED_FUNCTION_0_21(a1, *MEMORY[0x1E69E9840]);
  result = OUTLINED_FUNCTION_1_4(v3, 0x16u, v4, v5, v6, v7, v8, v9, v11, v12);
  if (!result)
  {
    *a2 = v13;
  }

  return result;
}

io_connect_t *IOAVVideoInterfaceCreateWithService(uint64_t a1, io_registry_entry_t a2)
{
  if (!a2 || !IOAVObjectConformsTo(a2, "IOAVVideoInterface"))
  {
    return 0;
  }

  if (!__kIOAVVideoInterfaceTypeID)
  {
    pthread_once(&__interfaceTypeInit_1, __IOAVVideoInterfaceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 2) = 0;
    *(Instance + 3) = 0;
    v5 = Instance + 4;
    *(Instance + 4) = 0;
    Instance[4] = a2;
    IOObjectRetain(a2);
    if (IOServiceOpen(*v5, *MEMORY[0x1E69E9A60], 0, v4 + 5))
    {
      v7 = v4;
      v4 = 0;
LABEL_10:
      CFRelease(v7);
      return v4;
    }

    CFProperty = IORegistryEntryCreateCFProperty(*v5, @"Location", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      if (CFEqual(CFProperty, @"Embedded"))
      {
        v4[6] = 1;
      }

      goto LABEL_10;
    }
  }

  return v4;
}

CFArrayRef IOAVVideoInterfaceCopyProperties(uint64_t a1)
{
  properties = 0;
  v1 = *MEMORY[0x1E695E480];
  if (IORegistryEntryCreateCFProperties(*(a1 + 16), &properties, *MEMORY[0x1E695E480], 0))
  {
    return 0;
  }

  v2 = IOAVPropertyListCreateWithCFProperties(v1, properties);
  CFRelease(properties);
  return v2;
}

uint64_t IOAVAudioGetSpeakerAllocationMask(unsigned int a1)
{
  if (a1 > 0x31)
  {
    return 0;
  }

  else
  {
    return IOAVAudioGetSpeakerAllocationMask::sSpeakerAllocations[a1];
  }
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}