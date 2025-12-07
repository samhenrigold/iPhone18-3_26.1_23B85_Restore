const __CFDictionary *IOHIDServiceConnectionCacheContainsKey(void *a1, const void *a2)
{
  if (CFEqual(@"ReportInterval", a2))
  {
    v4 = a1[3];
    return (v4 != 0);
  }

  if (CFEqual(@"BatchInterval", a2))
  {
    v4 = a1[4];
    return (v4 != 0);
  }

  result = a1[5];
  if (result)
  {
    return CFDictionaryContainsKey(result, a2);
  }

  return result;
}

void _IOHIDServiceSetEventDeadlineForClient(uint64_t a1, const void *a2, uint64_t a3, int a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v14, v15);
  }

  ++**(a1 + 72);
  v10 = a5;
  if (a5 || (v10 = __IOHIDServiceCreateAndCopyConnectionCache(a1, a2)) != 0)
  {
    if (_IOHIDServiceGetReportIntervalForClient(a1, a2, v10) == a4)
    {
      IOHIDServiceConnectionCacheSetReportDeadline(v10, a3);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 72);
  if (*v12)
  {
    --*v12;
    if (pthread_mutex_unlock((v12 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v14, v15);
    }
  }

  v13 = v11 ^ 1;
  if (v10 == a5)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {

    CFRelease(v10);
  }
}

uint64_t __IOHIDServiceEventCallback_cold_5(uint64_t result, uint64_t a2)
{
  if (*(result + 472))
  {
    v3 = mach_absolute_time();
    _IOHIDGetTimestampDelta(v3, a2, 0x3E8u);
    return IOHIDAnalyticsHistogramEventSetIntegerValue();
  }

  return result;
}

uint64_t __IOHIDServiceQueueDidExecute(uint64_t result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceQueueDidExecute_cold_1(&v1, v2);
    }
  }

  return result;
}

CFTypeRef IORegistryEntrySearchCFProperty(io_registry_entry_t entry, const io_name_t plane, CFStringRef key, CFAllocatorRef allocator, IOOptionBits options)
{
  size_4[256] = *MEMORY[0x1E69E9840];
  size = 0;
  errorString = 0;
  address = 0;
  bufferSize = 2048;
  CStringPtr = CFStringGetCStringPtr(key, 0);
  if (CStringPtr)
  {
    v11 = CStringPtr;
    v12 = 0;
  }

  else
  {
    Length = CFStringGetLength(key);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0);
    v17 = malloc_type_malloc(MaximumSizeForEncoding + 4, 0xB2CB5BB5uLL);
    if (!v17)
    {
      return 0;
    }

    v12 = v17;
    if (!CFStringGetCString(key, v17, MaximumSizeForEncoding + 4, 0))
    {
      v18 = -536870212;
LABEL_15:
      free(v12);
      goto LABEL_16;
    }

    v11 = v12;
  }

  if (gIOKitLibSerializeOptions)
  {
    if (options)
    {
      v14 = plane;
    }

    else
    {
      v14 = &unk_19723D790;
    }

    property_bin_buf = io_registry_entry_get_property_bin_buf(entry, v14, v11, options, size_4, &bufferSize, &address, &size);
  }

  else if (options)
  {
    property_bin_buf = io_registry_entry_get_property_recursively(entry, plane, v11, options, &address, &size);
  }

  else
  {
    property_bin_buf = io_registry_entry_get_property(entry, v11, &address, &size);
  }

  v18 = property_bin_buf;
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v18)
  {
    return 0;
  }

  v20 = address;
  if (address)
  {
    v21 = size;
  }

  else
  {
    v21 = bufferSize;
    v20 = size_4;
  }

  v19 = IOCFUnserializeWithSize(v20, v21, allocator, 0, &errorString);
  if (!v19 && errorString)
  {
    v22 = CFStringGetCStringPtr(errorString, 0);
    if (v22)
    {
      puts(v22);
    }

    CFRelease(errorString);
  }

  if (address)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, size);
  }

  return v19;
}

uint64_t _IOHIDEventSystemConnectionSetProperty(uint64_t a1, CFTypeRef cf1, const __CFArray *a3)
{
  if (*MEMORY[0x1E695E738] == a1)
  {
    return 0;
  }

  v6 = *(a1 + 448);
  if (v6 && (IOHIDConnectionFilterSetProperty(v6, cf1, a3) & 1) != 0)
  {
    return 1;
  }

  if (CFEqual(cf1, @"ClientEventFilter"))
  {
    _IOHIDEventSystemConnectionSetProperty_cold_3(a3, a1);
    return 1;
  }

  if (CFEqual(cf1, @"ClientSuspend"))
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFBooleanGetTypeID())
    {
      _IOHIDEventSystemConnectionSetProperty_cold_5(a3, a1, &valuePtr);
      return valuePtr;
    }
  }

  result = CFEqual(cf1, @"IdleNotificationTime");
  if (!result)
  {
    return result;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = 0;
  CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
  v10 = valuePtr;
  if (*(a1 + 416) != valuePtr)
  {
    *(a1 + 416) = valuePtr;
    if (!*(a1 + 424))
    {
      v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 96));
      *(a1 + 424) = v11;
      if (!v11)
      {
        v15 = _IOHIDLogCategory(9);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionSetProperty_cold_2();
        }

        return 1;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___IOHIDEventSystemConnectionSetProperty_block_invoke;
      v16[3] = &__block_descriptor_tmp_146;
      v16[4] = a1;
      dispatch_source_set_event_handler(v11, v16);
      dispatch_source_set_timer(*(a1 + 424), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_activate(*(a1 + 424));
      v10 = *(a1 + 416);
    }

    if (v10)
    {
      Session = _IOHIDEventSystemGetSession(*(a1 + 8));
      if (*(a1 + 432) || (ActivityNotification = _IOHIDSessionCreateActivityNotification(Session, __IOHIDEventSystemConnectionActivityNotification, a1, 0), (*(a1 + 432) = ActivityNotification) != 0))
      {
        _IOHIDEventSystemConnectionSetProperty_cold_6(a1);
      }

      else
      {
        v14 = _IOHIDLogCategory(9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          _IOHIDEventSystemConnectionSetProperty_cold_1();
        }
      }
    }

    else
    {
      _IOHIDEventSystemConnectionSetProperty_cold_4(a1, (a1 + 424));
    }
  }

  return 1;
}

uint64_t _IOHIDServiceSetPropertyForClient(uint64_t a1, const void *a2, const void *a3, CFTypeRef cf)
{
  v67 = *MEMORY[0x1E69E9840];
  if (cf && (v8 = CFGetTypeID(cf), v8 == IOHIDEventSystemConnectionGetTypeID()))
  {
    UUID = IOHIDEventSystemConnectionGetUUID(cf);
    v10 = 0;
    v11 = cf;
  }

  else
  {
    v11 = 0;
    UUID = 0;
    v10 = 1;
  }

  v12 = mach_absolute_time();
  v53 = 0;
  v54 = &v53;
  v55 = 0x3000000000;
  v56 = a2;
  v57 = a3;
  v58 = v11;
  if ((v10 & 1) == 0 && !IOHIDServiceCheckEntitlements(a1, v11))
  {
    goto LABEL_31;
  }

  if (cf && CFEqual(cf, *MEMORY[0x1E695E738]))
  {
    os_unfair_lock_lock((a1 + 456));
    CFDictionaryReplaceValue(*(a1 + 312), a2, a3);
    os_unfair_lock_unlock((a1 + 456));
  }

  if (!a3)
  {
LABEL_31:
    updated = 0;
    goto LABEL_69;
  }

  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(v52, buf);
  }

  ++**(a1 + 72);
  v13 = *(a1 + 256);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 0x40000000;
  v51[2] = ___IOHIDServiceSetPropertyForClient_block_invoke;
  v51[3] = &unk_1E74A8970;
  v51[4] = &v53;
  v51[5] = a2;
  v51[6] = v11;
  v51[7] = a3;
  _IOHIDCFArrayApplyBlock(v13, v51);
  if (v54[4])
  {
    v14 = *(a1 + 256);
    v68.length = CFArrayGetCount(v14);
    v68.location = 0;
    CFArrayApplyFunction(v14, v68, __FilterFunctionSetPropertyForClient, v54 + 3);
  }

  v15 = *(a1 + 72);
  if (*v15)
  {
    --*v15;
    if (pthread_mutex_unlock((v15 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(v52, buf);
    }
  }

  if (!v54[4])
  {
    updated = 1;
    goto LABEL_69;
  }

  if ((*(a1 + 296) & 2) == 0)
  {
    if (CFEqual(a2, @"ReportInterval"))
    {
      v16 = CFGetTypeID(a3);
      if (v16 == CFNumberGetTypeID())
      {
        if (pthread_mutex_lock((*(a1 + 72) + 8)))
        {
          __IOHIDServiceCreateAndCopyConnectionCache_cold_1(v52, buf);
        }

        ++**(a1 + 72);
        CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 160));
        v17 = *(a1 + 72);
        if (*v17)
        {
          --*v17;
          if (pthread_mutex_unlock((v17 + 8)))
          {
            __IOHIDServiceCreateAndCopyConnectionCache_cold_2(v52, buf);
          }
        }
      }
    }

    else if (CFEqual(a2, @"BatchInterval"))
    {
      v25 = CFGetTypeID(a3);
      if (v25 == CFNumberGetTypeID())
      {
        if (pthread_mutex_lock((*(a1 + 72) + 8)))
        {
          __IOHIDServiceCreateAndCopyConnectionCache_cold_1(v52, buf);
        }

        ++**(a1 + 72);
        CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 164));
        v26 = *(a1 + 72);
        if (*v26)
        {
          --*v26;
          if (pthread_mutex_unlock((v26 + 8)))
          {
            __IOHIDServiceCreateAndCopyConnectionCache_cold_2(v52, buf);
          }
        }
      }
    }

LABEL_47:
    if (pthread_mutex_lock((*(a1 + 72) + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_1(v52, buf);
    }

    ++**(a1 + 72);
    v35 = *(a1 + 32);
    if (v35)
    {
      v36 = *(*v35 + 56);
      if (v36)
      {
        v37 = v36();
LABEL_59:
        updated = v37;
LABEL_61:
        v43 = *(a1 + 72);
        if (*v43)
        {
          --*v43;
          if (pthread_mutex_unlock((v43 + 8)))
          {
            __IOHIDServiceCreateAndCopyConnectionCache_cold_2(v52, buf);
          }
        }

        goto LABEL_63;
      }
    }

    v38 = *(a1 + 24);
    if (v38 && (v39 = *(*v38 + 56)) != 0)
    {
      v39();
    }

    else
    {
      v40 = *(a1 + 360);
      if (v40)
      {
        v41 = *(v40 + 32);
        if (v41)
        {
          v37 = v41(*(a1 + 344), *(a1 + 352), a2, v54[4]);
          goto LABEL_59;
        }
      }

      v42 = *(a1 + 480);
      if (v42)
      {
        v37 = [v42 *(a1 + 504)];
        goto LABEL_59;
      }
    }

    updated = 1;
    goto LABEL_61;
  }

  v18 = _IOHIDLogCategory(6);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v49 = *(a1 + 400);
    v50 = v54[4];
    *buf = 134218754;
    v60 = v49;
    v61 = 2112;
    v62 = a2;
    v63 = 2112;
    v64 = v50;
    v65 = 2112;
    v66 = UUID;
    _os_log_debug_impl(&dword_197195000, v18, OS_LOG_TYPE_DEBUG, "0x%llx: set property:%@ value:%@ client:%@", buf, 0x2Au);
  }

  if (CFEqual(a2, @"ReportInterval"))
  {
    _IOHIDServiceSetReportIntervalForClient(a1, cf, v54[4]);
    v19 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 400);
      v21 = v54[4];
      *buf = 134218498;
      v60 = v20;
      v61 = 2112;
      v62 = v21;
      v63 = 2112;
      v64 = UUID;
      _os_log_impl(&dword_197195000, v19, OS_LOG_TYPE_DEFAULT, "0x%llx: set report interval:%@ client:%@", buf, 0x20u);
    }

    if (v54[4])
    {
      v22 = mach_absolute_time();
      ReportIntervalForClient = _IOHIDServiceGetReportIntervalForClient(a1, cf, 0);
      _IOHIDServiceSetEventDeadlineForClient(a1, cf, v22, ReportIntervalForClient, 0);
    }
  }

  else if (CFEqual(a2, @"BatchInterval"))
  {
    _IOHIDServiceSetBatchIntervalForClient(a1, cf, v54[4]);
    v27 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 400);
      v29 = v54[4];
      *buf = 134218498;
      v60 = v28;
      v61 = 2112;
      v62 = v29;
      v63 = 2112;
      v64 = UUID;
      _os_log_impl(&dword_197195000, v27, OS_LOG_TYPE_DEFAULT, "0x%llx: set batch interval:%@ client:%@", buf, 0x20u);
    }
  }

  else
  {
    if (!CFEqual(a2, @"IOHIDEventSystemClientIsUnresponsive"))
    {
      goto LABEL_47;
    }

    v30 = _IOHIDServiceCopyConnectionCache(a1, cf);
    if (!v30)
    {
      updated = 1;
      goto LABEL_63;
    }

    v31 = v30;
    v32 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 400);
      v34 = v54[4];
      *buf = 134218498;
      v60 = v33;
      v61 = 2112;
      v62 = v34;
      v63 = 2112;
      v64 = UUID;
      _os_log_impl(&dword_197195000, v32, OS_LOG_TYPE_DEFAULT, "0x%llx: unresponsive:%@ client:%@", buf, 0x20u);
    }

    CFRelease(v31);
  }

  updated = __IOHIDServiceUpdateIntervals(a1, cf);
LABEL_63:
  v44 = mach_absolute_time();
  _IOHIDGetTimestampDelta(v44, v12, 0x3E8u);
  if (*(a1 + 464))
  {
    IOHIDAnalyticsEventSetIntegerValueForField();
  }

  v45 = mach_absolute_time();
  v46 = _IOHIDGetTimestampDelta(v45, v12, 1u);
  if (v46 > *(a1 + 376))
  {
    *(a1 + 376) = v46;
  }

  v47 = v54[4];
  if (v47 != a3)
  {
    CFRelease(v47);
  }

LABEL_69:
  _Block_object_dispose(&v53, 8);
  return updated;
}

uint64_t __SetPropertyForObjectFunction(const void *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  result = IOHIDServiceGetTypeID();
  if (v4 == result)
  {
    result = _IOHIDServiceSetPropertyForClient(a1, *a2, *(a2 + 8), *(a2 + 24));
    if (result)
    {
      *(a2 + 16) = 1;
    }
  }

  return result;
}

void __IOMIGMachPortChannelCallback_cold_1(void *a1, uint64_t a2, const void *a3)
{
  *a1 = 0;
  msg = dispatch_mach_msg_get_msg();
  __IOMIGMachPortPortCallback(msg, msg, v5, a3);
}

uint64_t IOHIDServiceCheckEntitlements(uint64_t a1, uint64_t a2)
{
  Entitlements = IOHIDEventSystemConnectionGetEntitlements(a2);
  v5 = Entitlements;
  if (*(a1 + 308))
  {
    return (*Entitlements & 0x11) != 0;
  }

  if (!*(a1 + 64))
  {
    return 1;
  }

  v9 = 0;
  if (os_variant_allows_internal_security_policies())
  {
    if ((*v5 & 0x40) != 0)
    {
      return 1;
    }
  }

  v8 = a2;
  v7 = *(a1 + 64);
  v10.length = CFArrayGetCount(v7);
  v10.location = 0;
  CFArrayApplyFunction(v7, v10, EntitlementCheckApplier, &v8);
  return v9;
}

uint64_t IOHIDAnalyticsEventSetIntegerValueForField()
{
  if (setIntegerValueForFieldFuncPtr)
  {
    return setIntegerValueForFieldFuncPtr();
  }

  return result;
}

void __IOMIGMachPortChannelCallback(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (a2 == 8)
  {

    CFRelease(cf);
  }

  else if (a2 == 2)
  {
    v5[1] = v3;
    v5[2] = v4;
    __IOMIGMachPortChannelCallback_cold_1(v5, a3, cf);
  }
}

uint64_t _IOHIDLogCategory(uint64_t a1)
{
  if (a1 >= 0xF)
  {
    _IOHIDLogCategory_cold_2();
  }

  v1 = a1;
  if (_IOHIDLogCategory_onceToken != -1)
  {
    _IOHIDLogCategory_cold_1();
  }

  return _IOHIDLogCategory_log[v1];
}

void __IOMIGMachPortPortCallback(int a1, mach_msg_header_t *a2, int a3, CFTypeRef cf)
{
  if (!cf)
  {
    return;
  }

  CFRetain(cf);
  v6 = MEMORY[0x19A8DA570](0, *(cf + 8), 4041900246, 0);
  if (v6)
  {
    v7 = v6;
    msgh_remote_port = a2->msgh_remote_port;
    *v6 = a2->msgh_bits & 0x1F;
    *(v6 + 4) = 36;
    *(v6 + 8) = msgh_remote_port;
    *(v6 + 20) = a2->msgh_id + 100;
    if (a2->msgh_id == 70)
    {
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 32) = 0;
      v9 = (v6 + 32);
      v10 = *(cf + 11);
      if (!v10)
      {
        goto LABEL_22;
      }

      v10(cf, *(cf + 12));
    }

    else
    {
      v11 = *MEMORY[0x1E69E99E0];
      *(v6 + 32) = -303;
      v9 = (v6 + 32);
      *(v6 + 24) = v11;
      v12 = *(cf + 9);
      if (!v12)
      {
        goto LABEL_21;
      }

      v12(cf, a2, v6, *(cf + 10));
    }

    if ((v7->msgh_bits & 0x80000000) == 0 && *v9)
    {
      if (*v9 == -305)
      {
        goto LABEL_22;
      }

      a2->msgh_remote_port = 0;
      mach_msg_destroy(a2);
    }

    if (v7->msgh_remote_port)
    {
      if ((v7->msgh_bits & 0x1F) == 0x12)
      {
        v13 = 1;
      }

      else
      {
        v13 = 17;
      }

      if ((mach_msg(v7, v13, v7->msgh_size, 0, 0, 0, 0) - 268435459) > 1)
      {
        goto LABEL_22;
      }

      msgh_local_port = v7->msgh_local_port;
      a2 = v7;
      if (msgh_local_port - 1 <= 0xFFFFFFFD)
      {
        a2 = v7;
        if (((v7->msgh_bits >> 8) & 0x1F) - 17 <= 1)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], msgh_local_port);
          a2 = v7;
        }
      }

      goto LABEL_21;
    }

    a2 = v7;
    if ((v7->msgh_bits & 0x80000000) != 0)
    {
LABEL_21:
      mach_msg_destroy(a2);
    }

LABEL_22:
    CFAllocatorDeallocate(0, v7);
  }

  CFRelease(cf);
}

uint64_t __IOHIDEventSystemConnectionPortDemuxCallback(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t (**cf)(char *, uint64_t, uint64_t, uint64_t))
{
  CFRetain(cf);
  os_unfair_recursive_lock_lock_with_options();
  v8 = cf[6];
  if (v8 && cf[4] == a1)
  {
    v10 = cf[7];
    os_unfair_recursive_lock_unlock();
    v9 = v8(cf, a2, a3, v10);
    os_unfair_recursive_lock_lock_with_options();
  }

  else
  {
    v9 = 0;
  }

  os_unfair_recursive_lock_unlock();
  CFRelease(cf);
  return v9;
}

uint64_t __IOHIDEventSystemConnectionDemuxCallback(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2[5];
  if (v3 >= dword_1F0B91E78 && v3 < unk_1F0B91E7C)
  {
    LOBYTE(result) = iohideventsystem_server(a2, a3);
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t iohideventsystem_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 70029) >= 0xFFFFFFE3 && (v5 = *(&_iohideventsystem_subsystem + 5 * (v4 - 70000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

const void *IOMIGMachPortCacheCopy(unsigned int a1)
{
  pthread_mutex_lock(&__ioPortCacheLock);
  Value = CFDictionaryGetValue(__ioPortCache, a1);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  pthread_mutex_unlock(&__ioPortCacheLock);
  return v3;
}

uint64_t _IOHIDObjectRetainCount(uint64_t a1, char *cf, int a3)
{
  v3 = cf;
  v16 = *MEMORY[0x1E69E9840];
  v4 = 20;
  if (!a3)
  {
    v4 = 16;
  }

  if (a1 == -1)
  {
    add = atomic_fetch_add(&cf[v4], 0xFFFFFFFF);
    if (add == 1)
    {
      CFGetTypeID(cf);
      ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
      v9 = 104;
      if (!a3)
      {
        v9 = 32;
      }

      v10 = *(ClassWithTypeID + v9);
      if (v10)
      {
        v10(v3);
      }

      if (a3)
      {
        v11 = CFGetAllocator(v3);
        v12 = v11;
        if (*MEMORY[0x1E695E4A8] != v11)
        {
          if (v11 && *MEMORY[0x1E695E480] != v11 || (v13 = *MEMORY[0x1E695E4A8], v13 != CFAllocatorGetDefault()))
          {
            v3 -= 16;
          }
        }

        CFAllocatorDeallocate(v12, v3);
      }

      else
      {
        _IOHIDObjectInternalRelease(v3);
      }
    }

    else if (!add)
    {
      _IOHIDObjectRetainCount_cold_1(&v14, v15);
    }
  }

  else
  {
    if (!a1)
    {
      return atomic_load(&cf[v4]);
    }

    if (a1 == 1 && atomic_fetch_add(&cf[v4], 1u) == -1)
    {
      _IOHIDObjectRetainCount_cold_2(&v14, v15);
    }
  }

  return 0;
}

CFTypeRef _IOHIDCreateBinaryData(CFAllocatorRef bufferAllocator, const void *a2)
{
  v2 = a2;
  errorString = 0;
  if (a2)
  {
    v3 = CFWriteStreamCreateWithAllocatedBuffers(bufferAllocator, bufferAllocator);
    if (v3)
    {
      v4 = v3;
      if (CFWriteStreamOpen(v3))
      {
        CFPropertyListWriteToStream(v2, v4, kCFPropertyListBinaryFormat_v1_0, &errorString);
        CFWriteStreamClose(v4);
        v2 = CFWriteStreamCopyProperty(v4, *MEMORY[0x1E695E900]);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v4);
      if (errorString)
      {
        v7 = _IOHIDLog(v5, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          _IOHIDCreateBinaryData_cold_1(&errorString, v7);
        }

        CFRelease(errorString);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFPropertyListRef _IOHIDUnserializeAndVMDealloc(UInt8 *bytes, mach_vm_size_t length)
{
  v2 = 0;
  if (bytes && length)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
    if (v6)
    {
      v7 = v6;
      if (CFReadStreamOpen(v6))
      {
        format = kCFPropertyListBinaryFormat_v1_0;
        v2 = CFPropertyListCreateFromStream(v5, v7, length, 2uLL, &format, 0);
        CFReadStreamClose(v7);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v2 = 0;
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], bytes, length);
  }

  return v2;
}

const void *_IOHIDObjectInternalRetain(const void *a1)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (ClassWithTypeID)
  {
    (*(ClassWithTypeID + 96))(1, a1);
  }

  return a1;
}

uint64_t IOHIDEventSystemClientCancel(uint64_t result)
{
  if (*(result + 400))
  {
    v1 = *(result + 384) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    result = _os_crash_msg();
    __break(1u);
  }

  v2 = result;
  if ((atomic_fetch_or((result + 312), 2u) & 2) == 0)
  {
    os_unfair_recursive_lock_lock_with_options();
    dispatch_mach_cancel();
    dispatch_mach_cancel();
    v3 = *(v2 + 40);
    if (v3)
    {
      IOMIGMachPortUnscheduleFromDispatchQueue(v3, *(v2 + 400));
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      io_hideventsystem_queue_stop(v4);
    }

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

void IOMIGMachPortUnscheduleFromDispatchQueue(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 32) == a2)
  {
    *(a1 + 32) = 0;
    if (*(a1 + 40))
    {
      dispatch_mach_cancel();
      dispatch_release(*(a1 + 40));
      *(a1 + 40) = 0;
    }
  }
}

uint64_t io_hideventsystem_queue_stop(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

void __IOHIDEventSystemClientExtRelease(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = __IOHIDEventSystemClientStateSerialize(a1);
  if (*(a1 + 400))
  {
    if ((*(a1 + 408) & 1) == 0)
    {
      v3 = atomic_load((a1 + 312));
      if (v3 != 3)
      {
        __IOHIDManagerExtRelease_cold_1(&v9, buf, (a1 + 312));
      }
    }
  }

  v4 = _IOHIDLogCategory(14);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    CStringPtr = CFStringGetCStringPtr(*(a1 + 440), 0x8000100u);
    *buf = 136315394;
    v11 = CStringPtr;
    v12 = 2114;
    v13 = v2;
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "Released connection: %s\n%{public}@", buf, 0x16u);
  }

  CFRelease(v2);
  if (*(a1 + 456))
  {
    os_state_remove_handler();
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFMachPortInvalidate(v6);
  }

  v7 = *(a1 + 280);
  if (v7)
  {
    CFMachPortInvalidate(v7);
  }

  if (*(a1 + 408) == 1)
  {
    IOHIDEventSystemClientCancel(a1);
  }

  v8 = *(a1 + 384);
  if (v8 && (IOHIDEventSystemClientUnscheduleWithRunLoop(a1, v8, *(a1 + 392)), *(a1 + 384)) || !*(a1 + 400))
  {
    dispatch_release(*(a1 + 488));
  }
}

CFMutableDictionaryRef __IOHIDEventSystemClientStateSerialize(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    os_unfair_recursive_lock_lock_with_options();
    v4 = *(a1 + 480);
    if (v4)
    {
      _IOHIDDictionaryAddSInt64(Mutable, @"MaxEventLatency", v4);
      v5 = CFGetAllocator(a1);
      v6 = _IOHIDCreateTimeString(v5, (a1 + 464));
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(Mutable, @"LastEventTime", v6);
        CFRelease(v7);
      }
    }

    v8 = *(a1 + 512);
    if (v8)
    {
      _IOHIDDictionaryAddSInt64(Mutable, @"PropertyNotificationCount", v8);
      v9 = CFGetAllocator(a1);
      v10 = _IOHIDCreateTimeString(v9, (a1 + 496));
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, @"LastPropertyNotificationTime", v10);
        CFRelease(v11);
      }
    }

    v12 = *(a1 + 432);
    if (v12)
    {
      CFDictionarySetValue(Mutable, @"caller", v12);
    }

    v13 = *(a1 + 440);
    if (v13)
    {
      CFDictionarySetValue(Mutable, @"UUID", v13);
    }

    _IOHIDDictionaryAddSInt32(Mutable, @"port", *(a1 + 32));
    _IOHIDDictionaryAddSInt32(Mutable, @"resetCount", *(a1 + 144));
    _IOHIDDictionaryAddSInt32(Mutable, @"eventCount", *(a1 + 148));
    _IOHIDDictionaryAddSInt64(Mutable, @"eventMask", *(a1 + 152));
    v14 = *MEMORY[0x1E695E4D0];
    v15 = *MEMORY[0x1E695E4C0];
    if (*(a1 + 400))
    {
      v16 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v16 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"dispatchQueue", v16);
    if (*(a1 + 392))
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    CFDictionarySetValue(Mutable, @"runloop", v17);
    Count = CFDictionaryGetCount(*(a1 + 96));
    v19 = CFArrayCreateMutable(v2, Count, MEMORY[0x1E695E9C0]);
    if (v19)
    {
      v20 = v19;
      v21 = *(a1 + 96);
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = ____IOHIDEventSystemClientStateSerialize_block_invoke;
      context[3] = &__block_descriptor_tmp_108;
      context[4] = v20;
      _IOHIDCFDictionaryApplyBlock(v21, context);
      CFDictionarySetValue(Mutable, @"services", v20);
      CFRelease(v20);
    }

    v22 = CFDictionaryGetCount(*(a1 + 104));
    v23 = CFArrayCreateMutable(v2, v22, MEMORY[0x1E695E9C0]);
    if (v23)
    {
      v24 = v23;
      v25 = *(a1 + 104);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = ____IOHIDEventSystemClientStateSerialize_block_invoke_2;
      v30[3] = &__block_descriptor_tmp_112;
      v30[4] = v24;
      _IOHIDCFDictionaryApplyBlock(v25, v30);
      CFDictionarySetValue(Mutable, @"virtualServices", v24);
      CFRelease(v24);
    }

    v26 = *(a1 + 272);
    if (v26)
    {
      v27 = _IOHIDEventQueueSerializeState(v26);
      if (v27)
      {
        v28 = v27;
        CFDictionarySetValue(Mutable, @"eventQueue", v27);
        CFRelease(v28);
      }
    }

    os_unfair_recursive_lock_unlock();
  }

  return Mutable;
}

void _IOHIDDictionaryAddSInt32(void *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFGetAllocator(a1);
  v6 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionaryAddValue(a1, a2, v6);
    CFRelease(v7);
  }
}

void _IOHIDDictionaryAddSInt64(void *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFGetAllocator(a1);
  v6 = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionaryAddValue(a1, a2, v6);
    CFRelease(v7);
  }
}

uint64_t _io_hideventsystem_queue_stop(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      v4 = _IOHIDEventSystemConnectionCopyQueue(v2);
      if (v4)
      {
        v5 = v4;
        _IOHIDEventSystemConnectionQueueStop(v2);
        IOHIDEventQueueStop(v5);
        CFRelease(v5);
      }
    }

    CFRelease(v2);
  }

  return 0;
}

_DWORD *_Xio_hideventsystem_queue_stop(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_queue_stop(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionQueueStop(uint64_t result)
{
  v1 = result;
  v32 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E738] == result || (*(result + 264) & 1) == 0)
  {
    os_unfair_recursive_lock_lock_with_options();
    v2 = *(v1 + 8);
    v3 = *(v1 + 24);
    if (v3 && *(v1 + 128))
    {
      if (*(v1 + 104))
      {
        previous = 0;
        v4 = MEMORY[0x1E69E9A60];
        v5 = *MEMORY[0x1E69E9A60];
        NotificationPort = IOHIDEventQueueGetNotificationPort(v3);
        v7 = mach_port_request_notification(v5, NotificationPort, 66, 1u, *(v1 + 104), 0x15u, &previous);
        if (v7)
        {
          v8 = v7;
          v9 = _IOHIDLogCategory(9);
          v10 = v9;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            _IOHIDEventSystemConnectionQueueStop_cold_1(v1, v8, v10, v11, v12, v13, v14, v15);
          }

          __IOHIDEventSystemConnectionCheckServerStatus(v8, v1);
        }

        else if (previous)
        {
          v16 = _IOHIDLogCategory(9);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(v1 + 168);
            *buf = 136315394;
            v29 = v17;
            v30 = 1024;
            v31 = previous;
            _os_log_impl(&dword_197195000, v16, OS_LOG_TYPE_DEFAULT, "%s: mach_port_request_notification(notify) unexpected old notify port %#x", buf, 0x12u);
          }

          v18 = mach_port_deallocate(*v4, previous);
          if (v18)
          {
            v19 = v18;
            v20 = _IOHIDLogCategory(9);
            v21 = v20;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              _IOHIDEventSystemConnectionQueueStop_cold_2(v1, v19, v21, v22, v23, v24, v25, v26);
            }
          }
        }
      }

      *(v1 + 128) = 0;
    }

    *(v1 + 264) |= 2u;
    os_unfair_recursive_lock_unlock();
    return _IOHIDEventSystemSetPropertyForConnection(v2, @"IOHIDEventSystemClientIsUnresponsive", *MEMORY[0x1E695E4D0], v1);
  }

  return result;
}

uint64_t IOHIDEventQueueGetNotificationPort(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 96);
  os_unfair_recursive_lock_unlock();
  return v2;
}

void _IOHIDArrayAppendSInt64(void *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFGetAllocator(a1);
  v4 = CFNumberCreate(v3, kCFNumberSInt64Type, &valuePtr);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(a1, v4);
    CFRelease(v5);
  }
}

CFMutableDictionaryRef _IOHIDEventQueueSerializeState(uint64_t a1)
{
  v16 = 0;
  *port_info_out = 0u;
  v15 = 0u;
  port_info_outCnt = 10;
  v2 = *MEMORY[0x1E69E9A60];
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(a1 + 96);
  os_unfair_recursive_lock_unlock();
  attributes = mach_port_get_attributes(v2, v3, 2, port_info_out, &port_info_outCnt);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  if (Mutable)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      _IOHIDDictionaryAddSInt32(Mutable, @"tail", v7[2]);
      _IOHIDDictionaryAddSInt32(v6, @"head", v7[1]);
      _IOHIDDictionaryAddSInt32(v6, @"size", *v7);
      _IOHIDDictionaryAddSInt32(v6, @"droppedEvents", *(a1 + 168));
      if (!attributes)
      {
        _IOHIDDictionaryAddSInt32(v6, @"msgCount", v15);
      }

      _IOHIDDictionaryAddSInt64(v6, @"lastNotifyTime", *(a1 + 128));
      _IOHIDDictionaryAddSInt64(v6, @"lastNotifyEventTimeStamp", *(a1 + 120));
      _IOHIDDictionaryAddSInt64(v6, @"notificationCount", *(a1 + 136));
      v8 = *MEMORY[0x1E695E4D0];
      v9 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 148))
      {
        v10 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v10 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(v6, @"active", v10);
      if (*(a1 + 152))
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      CFDictionaryAddValue(v6, @"suspended", v11);
    }
  }

  return v6;
}

uint64_t _IOHIDEventSystemSetPropertyForConnection(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  v7 = *(a1 + 128);
  if (_IOHIDEventSystemConnectionSetProperty(a4, a2, a3))
  {
    return 1;
  }

  else
  {
    return _IOHIDSessionSetPropertyForClient(v7, a2, a3, a4);
  }
}

uint64_t _IOHIDSessionSetPropertyForClient(uint64_t a1, CFTypeRef cf1, const void *a3, const void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!cf1)
  {
    return 1;
  }

  if (CFEqual(cf1, @"HIDParameters"))
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFDictionaryGetTypeID())
    {
      *context = a1;
      *&context[8] = a4;
      CFDictionaryApplyFunction(a3, __FunctionApplierForParameters, context);
    }

    return 1;
  }

  if (CFEqual(cf1, @"LogLevel"))
  {
    v10 = CFGetTypeID(a3);
    if (v10 == CFNumberGetTypeID())
    {
      *context = *(a1 + 128);
      CFNumberGetValue(a3, kCFNumberIntType, context);
      if (*(a1 + 128) != *context)
      {
        *(a1 + 128) = *context;
      }
    }
  }

  if (CFEqual(cf1, @"HIDDebug"))
  {
    v11 = CFGetTypeID(a3);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a3, kCFNumberIntType, &gIOHIDDebugConfig);
    }
  }

  v12 = CFEqual(cf1, @"CASecureLayerOnScreen");
  if (v12 && (*IOHIDEventSystemConnectionGetEntitlements(a4) & 2) == 0 && (*IOHIDEventSystemConnectionGetEntitlements(a4) & 1) == 0)
  {
    _IOHIDSessionSetPropertyForClient_cold_1(a4, context);
    return context[0];
  }

  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(v28, context);
  }

  ++**(a1 + 32);
  CFDictionarySetValue(*(a1 + 120), cf1, a3);
  v27[0] = a1;
  v27[1] = cf1;
  v27[2] = a3;
  if (a4 && CFEqual(a4, *MEMORY[0x1E695E738]))
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v27[3] = v13;
  v14 = *(a1 + 152);
  v32.length = CFArrayGetCount(v14);
  v32.location = 0;
  CFArrayApplyFunction(v14, v32, __FilterFunctionSetPropertyForClient_0, v27);
  v15 = 0;
  if (!v12)
  {
    v15 = CFRetain(*(a1 + 136));
  }

  v16 = *(a1 + 32);
  if (*v16)
  {
    --*v16;
    if (pthread_mutex_unlock((v16 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(v28, context);
    }
  }

  if (v12)
  {
    v9 = 1;
  }

  else
  {
    *context = cf1;
    *&context[8] = a3;
    *&context[16] = 0;
    v30 = a4;
    CFSetApplyFunction(v15, __SetPropertyForObjectFunction, context);
    v9 = context[16];
    CFRelease(v15);
  }

  v17 = *(a1 + 8);
  v18 = _IOHIDLogCategory(2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *context = 138412802;
    *&context[4] = cf1;
    *&context[12] = 2112;
    *&context[14] = a3;
    *&context[22] = 2112;
    v30 = a4;
    _os_log_debug_impl(&dword_197195000, v18, OS_LOG_TYPE_DEBUG, "SetProperty called %@=%@ caller=%@", context, 0x20u);
  }

  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(v28, context);
  }

  v19 = *(a1 + 32);
  v20 = *v19;
  v21 = *v19 + 1;
  *v19 = v21;
  if (v20 == -1)
  {
    _IOHIDEventSystemPropertyChanged(v17, a4, cf1, a3);
    v22 = *(a1 + 32);
    goto LABEL_42;
  }

  v23 = v20 + 1;
  do
  {
    v24 = *(a1 + 32);
    if (*v24)
    {
      --*v24;
      if (pthread_mutex_unlock((v24 + 8)))
      {
        __IOHIDSessionCreate_block_invoke_cold_2(v28, context);
      }
    }

    --v23;
  }

  while (v23);
  _IOHIDEventSystemPropertyChanged(v17, a4, cf1, a3);
  v22 = *(a1 + 32);
  if (!v21)
  {
LABEL_42:
    v25 = *v22;
    if (!*v22)
    {
      return v9;
    }

    goto LABEL_43;
  }

  do
  {
    if (pthread_mutex_lock((v22 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_1(v28, context);
    }

    v22 = *(a1 + 32);
    v25 = *v22 + 1;
    *v22 = v25;
    --v21;
  }

  while (v21);
  if (v25)
  {
LABEL_43:
    *v22 = v25 - 1;
    if (pthread_mutex_unlock((v22 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(v28, context);
    }
  }

  return v9;
}

id IOHIDSessionFilterSetPropertyForClient(id result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = *(*v3 + 128);
    if (v4)
    {
      return v4(*(result + 2), a2, a3);
    }
  }

  if (*(result + 7))
  {
    return [*(result + 7) *(result + 9)];
  }

  return result;
}

const __CFArray *IOHIDEventGetDataValueWithOptions(const __CFArray *result, unsigned int a2, uint64_t a3)
{
  v4 = HIWORD(a2);
  if (result && a2 < 0x10000 || (result = IOHIDEventGetEventWithOptions(result, HIWORD(a2), a3)) != 0)
  {
    v5 = *(result + 12) + 28;
    if (a2 == 1966083)
    {
      v6 = *(result + 12) + 28;
    }

    else
    {
      v6 = 0;
    }

    if (a2 != 65540)
    {
      v5 = 0;
    }

    if (v4 != 1)
    {
      v5 = 0;
    }

    if (v4 == 30)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

__n64 IOHIDEventGetDoubleValueWithOptions(const __CFArray *EventWithOptions, int a2, uint64_t a3)
{
  v4 = HIWORD(a2);
  if (!EventWithOptions || a2 >= 0x10000)
  {
    EventWithOptions = IOHIDEventGetEventWithOptions(EventWithOptions, HIWORD(a2), a3);
    if (!EventWithOptions)
    {
      result.n64_f64[0] = 0.0;
      return result;
    }
  }

  result.n64_f64[0] = 0.0;
  v6 = *(EventWithOptions + 12);
  switch(v4)
  {
    case 0u:
      if (a2 > 2)
      {
        if (a2 > 4)
        {
          if (a2 == 5)
          {
            v23 = v6[1].n64_u8[0];
            goto LABEL_347;
          }

          if (a2 != 6)
          {
            return result;
          }

          v7 = (v6[1].n64_u8[0] >> 6) & 1;
        }

        else if (a2 == 3)
        {
          v7 = (v6[1].n64_u8[0] >> 3) & 1;
        }

        else
        {
          v7 = (v6[1].n64_u8[0] >> 4) & 1;
        }

        goto LABEL_393;
      }

      if (!a2)
      {
        LOBYTE(v6) = v6[1].n64_u8[0];
        goto LABEL_379;
      }

      if (a2 == 1)
      {
        v24 = v6[1].n64_u8[0];
LABEL_392:
        v7 = (v24 >> 1) & 1;
        goto LABEL_393;
      }

      if (a2 != 2)
      {
        return result;
      }

      goto LABEL_241;
    case 1u:
      if (a2 > 65537)
      {
        if (a2 == 65538)
        {
          goto LABEL_327;
        }

        if (a2 == 65539)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (a2 == 0x10000)
        {
          result.n64_u16[0] = v6[2].n64_u16[0];
          goto LABEL_328;
        }

        if (a2 == 65537)
        {
          goto LABEL_314;
        }
      }

      return result;
    case 2u:
      if (a2 <= 131073)
      {
        if (a2 == 0x20000)
        {
          goto LABEL_261;
        }

        if (a2 == 131073)
        {
LABEL_257:
          result.n64_u8[0] = v6[3].n64_u8[0];
          goto LABEL_328;
        }

        return result;
      }

      if (a2 == 131074)
      {
LABEL_298:
        result.n64_u8[0] = v6[3].n64_u8[1];
        goto LABEL_328;
      }

      if (a2 == 131075)
      {
        goto LABEL_260;
      }

      v13 = 131076;
      goto LABEL_267;
    case 3u:
      if (a2 > 196612)
      {
        if (a2 > 196615)
        {
          switch(a2)
          {
            case 196616:
              v23 = v6[3].n64_u32[0];
LABEL_347:
              v7 = (v23 >> 5) & 1;
              break;
            case 196617:
              v7 = (v6[3].n64_u32[0] >> 6) & 7;
              break;
            case 196618:
              v7 = (v6[3].n64_u32[0] >> 9) & 3;
              break;
            default:
              return result;
          }
        }

        else if (a2 == 196613)
        {
          LODWORD(v6) = v6[3].n64_u32[0];
LABEL_379:
          v7 = v6 & 1;
        }

        else if (a2 == 196614)
        {
          v7 = (v6[3].n64_u32[0] >> 1) & 3;
        }

        else
        {
          v7 = (v6[3].n64_u32[0] >> 3) & 3;
        }

        goto LABEL_393;
      }

      if (a2 > 196609)
      {
        if (a2 == 196610)
        {
          goto LABEL_327;
        }

        if (a2 != 196611)
        {
          result.n64_u8[0] = v6[3].n64_u8[4];
          goto LABEL_328;
        }

LABEL_338:
        v7 = HIWORD(v6[1].n64_u32[0]) & 1;
        goto LABEL_393;
      }

      if (a2 == 196608)
      {
        goto LABEL_315;
      }

      if (a2 == 196609)
      {
        goto LABEL_314;
      }

      return result;
    case 4u:
      switch(a2)
      {
        case 262146:
          return v6[4];
        case 262145:
          return v6[3];
        case 262144:
          return v6[2];
      }

      return result;
    case 5u:
      if (a2 == 327682)
      {
        goto LABEL_277;
      }

      if (a2 == 327681)
      {
        goto LABEL_260;
      }

      if (a2 != 327680)
      {
        return result;
      }

      goto LABEL_254;
    case 6u:
      v9 = 393217;
      if (a2 <= 393217)
      {
        if (a2 != 393216)
        {
          goto LABEL_259;
        }

        goto LABEL_254;
      }

      if (a2 == 393218)
      {
        goto LABEL_277;
      }

      if (a2 == 393219)
      {
LABEL_241:
        v7 = (v6[1].n64_u8[0] >> 2) & 1;
LABEL_393:
        result.n64_f64[0] = v7;
      }

      return result;
    case 7u:
      if (a2 == 458754)
      {
        goto LABEL_277;
      }

      if (a2 == 458753)
      {
        goto LABEL_260;
      }

      if (a2 != 458752)
      {
        return result;
      }

      goto LABEL_254;
    case 9u:
      if (a2 == 589826)
      {
        goto LABEL_277;
      }

      if (a2 == 589825)
      {
        goto LABEL_260;
      }

      if (a2 != 589824)
      {
        return result;
      }

      goto LABEL_254;
    case 0xAu:
      if ((a2 - 655360) > 0xB)
      {
        return result;
      }

      if (a2 == 655363)
      {
        goto LABEL_291;
      }

      v14 = v6[4].n64_i32[0];
      if (v14 <= 1)
      {
        if (v14)
        {
          if (v14 == 1 && a2 == 655364)
          {
            goto LABEL_261;
          }
        }

        else
        {
          switch(a2)
          {
            case 655362:
              goto LABEL_277;
            case 655361:
              goto LABEL_260;
            case 655360:
              goto LABEL_254;
          }
        }

        return result;
      }

      if (v14 != 3)
      {
        if (v14 != 2)
        {
          return result;
        }

        if (a2 == 655367)
        {
          goto LABEL_277;
        }

        if (a2 == 655366)
        {
          goto LABEL_260;
        }

        v19 = 655365;
        goto LABEL_253;
      }

      if (a2 <= 655369)
      {
        if (a2 == 655368)
        {
          goto LABEL_254;
        }

        v9 = 655369;
        goto LABEL_259;
      }

      if (a2 == 655370)
      {
        goto LABEL_277;
      }

      if (a2 != 655371)
      {
        return result;
      }

      goto LABEL_201;
    case 0xBu:
      switch(a2)
      {
        case 720896:
          return v6[2];
        case 720897:
          return v6[3];
        case 720898:
          return v6[4];
        case 720899:
          result.n64_u32[0] = v6[7].n64_u32[1];
          goto LABEL_328;
        case 720900:
          goto LABEL_337;
        case 720901:
          goto LABEL_207;
        case 720902:
          goto LABEL_339;
        case 720903:
          result.n64_u32[0] = v6[6].n64_u32[1];
          goto LABEL_328;
        case 720904:
          goto LABEL_338;
        case 720905:
          v7 = (v6[1].n64_u32[0] >> 17) & 1;
          goto LABEL_393;
        case 720906:
          return v6[8];
        case 720907:
          return v6[9];
        case 720908:
          return v6[10];
        case 720909:
        case 720910:
        case 720911:
        case 720912:
        case 720913:
        case 720914:
        case 720915:
        case 720916:
        case 720917:
        case 720922:
          v16 = v6[11].n64_u32[0];
          if (!v16)
          {
            if (a2 == 720910)
            {
              return v6[13];
            }

            if (a2 != 720909)
            {
              return result;
            }

            return v6[12];
          }

          if (v16 == 2)
          {
            if (a2 <= 720915)
            {
              if (a2 != 720913)
              {
                if (a2 != 720914)
                {
                  v17 = 19;
LABEL_352:
                  if (a2 == (v17 | 0xB0000))
                  {
                    return v6[14];
                  }

                  return result;
                }

                return v6[13];
              }

              return v6[12];
            }

            if (a2 != 720916)
            {
              if (a2 != 720917)
              {
                v25 = 26;
                goto LABEL_369;
              }

              return v6[16];
            }

            return v6[15];
          }

          if (v16 != 1)
          {
            return result;
          }

          if (a2 <= 720913)
          {
            if (a2 != 720911)
            {
              if (a2 != 720912)
              {
                v17 = 17;
                goto LABEL_352;
              }

              return v6[13];
            }

            return v6[12];
          }

          if (a2 == 720914)
          {
            return v6[15];
          }

          if (a2 == 720916)
          {
            return v6[16];
          }

          v25 = 21;
LABEL_369:
          if (a2 == (v25 | 0xB0000))
          {
            return v6[17];
          }

          return result;
        case 720918:
          v24 = v6[1].n64_u32[0];
          goto LABEL_392;
        case 720919:
          if (!v6[5].n64_u32[1])
          {
            return v6[10];
          }

          return result;
        case 720920:
          result.n64_u32[0] = v6[7].n64_u32[0];
          goto LABEL_328;
        case 720921:
          v7 = (v6[1].n64_u32[0] >> 19) & 1;
          goto LABEL_393;
        case 720923:
          result.n64_u32[0] = v6[18].n64_u32[0];
          goto LABEL_328;
        case 720924:
          result.n64_u32[0] = v6[18].n64_u32[1];
          goto LABEL_328;
        case 720925:
          result.n64_u32[0] = v6[19].n64_u32[0];
          goto LABEL_328;
        case 720927:
          result.n64_u32[0] = v6[11].n64_u32[0];
          goto LABEL_328;
        default:
          return result;
      }

    case 0xCu:
      if (a2 <= 786437)
      {
        if (a2 > 786434)
        {
          if (a2 == 786435)
          {
            goto LABEL_290;
          }

          if (a2 != 786436)
          {
            result.n64_u8[0] = v6[4].n64_u8[4];
            goto LABEL_328;
          }

          goto LABEL_291;
        }

        switch(a2)
        {
          case 786432:
            goto LABEL_261;
          case 786433:
            goto LABEL_327;
          case 786434:
            goto LABEL_202;
        }

        return result;
      }

      if (a2 > 786440)
      {
        if (a2 == 786441)
        {
          return v6[7];
        }

        if (a2 != 786442)
        {
          v21 = 786443;
          goto LABEL_295;
        }

        return v6[8];
      }

      if (a2 == 786438)
      {
        result.n64_u8[0] = v6[4].n64_u8[5];
        goto LABEL_328;
      }

      if (a2 == 786439)
      {
        return v6[5];
      }

      v22 = 786440;
      goto LABEL_304;
    case 0xDu:
      if (a2 > 851970)
      {
        if (a2 == 851971)
        {
          goto LABEL_290;
        }

        if (a2 != 851972)
        {
          v20 = 851973;
          goto LABEL_218;
        }

        goto LABEL_291;
      }

      switch(a2)
      {
        case 851968:
          goto LABEL_254;
        case 851969:
          goto LABEL_260;
        case 851970:
          goto LABEL_277;
      }

      return result;
    case 0xEu:
      v18 = 917505;
      if (a2 > 917505)
      {
        if (a2 == 917506)
        {
          goto LABEL_314;
        }

        v18 = 917507;
      }

      else if (a2 == 917504)
      {
        goto LABEL_315;
      }

      if (a2 != v18)
      {
        return result;
      }

      if (v6[2].n64_u16[1] == 1)
      {
        if (a2 == 917507)
        {
          goto LABEL_327;
        }
      }

      else if (a2 == 917505 && !v6[2].n64_u16[1])
      {
        goto LABEL_327;
      }

      return result;
    case 0xFu:
      if (a2 == 983040)
      {
        goto LABEL_254;
      }

      return result;
    case 0x10u:
      if (a2 <= 1048578)
      {
        if (a2 == 0x100000)
        {
          goto LABEL_290;
        }

        if (a2 != 1048577)
        {
          v8 = 1048578;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 <= 1048580)
      {
        if (a2 == 1048579)
        {
          goto LABEL_254;
        }

        v9 = 1048580;
        goto LABEL_259;
      }

      if (a2 == 1048581)
      {
        goto LABEL_281;
      }

      v11 = 1048582;
      goto LABEL_276;
    case 0x11u:
      v12 = 1114113;
      if (a2 > 1114113)
      {
        if (a2 == 1114114)
        {
          return v6[4];
        }

        if (a2 == 1114115)
        {
LABEL_207:
          result.n64_u32[0] = v6[5].n64_u32[0];
          goto LABEL_328;
        }
      }

      else
      {
        if (a2 != 1114112)
        {
          goto LABEL_148;
        }

        return v6[2];
      }

      return result;
    case 0x12u:
      if (a2 == 1179649)
      {
        goto LABEL_260;
      }

      if (a2 != 1179648)
      {
        return result;
      }

      goto LABEL_261;
    case 0x13u:
      if (a2 <= 1245186)
      {
        if (a2 == 1245184)
        {
          goto LABEL_254;
        }

        if (a2 != 1245185)
        {
          v11 = 1245186;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 <= 1245188)
      {
        if (a2 != 1245187)
        {
          v8 = 1245188;
          goto LABEL_245;
        }

LABEL_37:
        v10 = v6[4].n64_u32[0];
        goto LABEL_278;
      }

      if (a2 == 1245189)
      {
LABEL_332:
        v10 = v6[5].n64_u32[0];
        goto LABEL_278;
      }

      v13 = 1245190;
LABEL_267:
      if (a2 != v13)
      {
        return result;
      }

      goto LABEL_290;
    case 0x14u:
      if (a2 <= 1310722)
      {
        if (a2 == 1310720)
        {
          goto LABEL_254;
        }

        if (a2 != 1310721)
        {
          v11 = 1310722;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 == 1310723)
      {
        goto LABEL_290;
      }

      if (a2 != 1310724)
      {
        v20 = 1310725;
        goto LABEL_218;
      }

      goto LABEL_291;
    case 0x15u:
      if (a2 <= 1376258)
      {
        if (a2 == 1376256)
        {
          goto LABEL_254;
        }

        if (a2 != 1376257)
        {
          v11 = 1376258;
          goto LABEL_276;
        }

        goto LABEL_260;
      }

      if (a2 == 1376259)
      {
        goto LABEL_290;
      }

      if (a2 != 1376260)
      {
        v20 = 1376261;
        goto LABEL_218;
      }

LABEL_291:
      result.n64_u32[0] = v6[4].n64_u32[0];
      goto LABEL_328;
    case 0x17u:
      if (a2 <= 1507330)
      {
        if (a2 == 1507328)
        {
          goto LABEL_290;
        }

        if (a2 != 1507329)
        {
          v8 = 1507330;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 <= 1507332)
      {
        if (a2 == 1507331)
        {
          goto LABEL_254;
        }

        v9 = 1507332;
        goto LABEL_259;
      }

      if (a2 == 1507333)
      {
        goto LABEL_281;
      }

      v11 = 1507334;
LABEL_276:
      if (a2 == v11)
      {
LABEL_277:
        v10 = v6[3].n64_u32[0];
        goto LABEL_278;
      }

      return result;
    case 0x18u:
      if (a2 == 1572864)
      {
        goto LABEL_261;
      }

      if (a2 != 1572865)
      {
        return result;
      }

      v7 = v6[1].n64_u16[0] >> 15;
      goto LABEL_393;
    case 0x19u:
      switch(a2)
      {
        case 1638402:
          goto LABEL_290;
        case 1638401:
          goto LABEL_202;
        case 1638400:
          goto LABEL_254;
      }

      return result;
    case 0x1Au:
      if (a2 == 1703938)
      {
        goto LABEL_202;
      }

      if (a2 == 1703937)
      {
        goto LABEL_231;
      }

      if (a2 != 1703936)
      {
        return result;
      }

      goto LABEL_261;
    case 0x1Bu:
      if (a2 <= 1769474)
      {
        if (a2 == 1769472)
        {
          goto LABEL_290;
        }

        if (a2 != 1769473)
        {
          v8 = 1769474;
          goto LABEL_245;
        }

        goto LABEL_247;
      }

      if (a2 == 1769477)
      {
        goto LABEL_281;
      }

      if (a2 != 1769476)
      {
        v19 = 1769475;
        goto LABEL_253;
      }

      goto LABEL_260;
    case 0x1Cu:
      if (a2 <= 1835010)
      {
        if (a2 == 1835008)
        {
LABEL_290:
          result.n64_u32[0] = v6[3].n64_u32[1];
          goto LABEL_328;
        }

        if (a2 == 1835009)
        {
          goto LABEL_247;
        }

        v8 = 1835010;
LABEL_245:
        if (a2 == v8)
        {
LABEL_246:
          v10 = v6[4].n64_u32[1];
          goto LABEL_278;
        }

        return result;
      }

      if (a2 == 1835013)
      {
LABEL_281:
        result.n64_u16[0] = v6[4].n64_u16[1];
        goto LABEL_328;
      }

      if (a2 == 1835012)
      {
        goto LABEL_260;
      }

      v19 = 1835011;
LABEL_253:
      if (a2 != v19)
      {
        return result;
      }

      goto LABEL_254;
    case 0x1Du:
      v9 = 1900545;
      if (a2 > 1900545)
      {
        switch(a2)
        {
          case 1900546:
            result.n64_u16[0] = v6[3].n64_u16[0];
            break;
          case 1900547:
            result.n64_u16[0] = v6[3].n64_u16[1];
            break;
          case 1900548:
            result.n64_u8[0] = v6[4].n64_u8[0];
            break;
          default:
            return result;
        }

        goto LABEL_328;
      }

      if (a2 == 1900544)
      {
        goto LABEL_261;
      }

LABEL_259:
      if (a2 == v9)
      {
        goto LABEL_260;
      }

      return result;
    case 0x1Eu:
      if (a2 == 1966082)
      {
        goto LABEL_202;
      }

      if (a2 == 1966081)
      {
        goto LABEL_260;
      }

      if (a2 != 1966080)
      {
        return result;
      }

      goto LABEL_261;
    case 0x1Fu:
      if (a2 == 2031617)
      {
        goto LABEL_327;
      }

      if (a2 != 2031616)
      {
        return result;
      }

      goto LABEL_254;
    case 0x20u:
      if (a2 > 2097153)
      {
        if (a2 == 2097154)
        {
LABEL_202:
          result.n64_u32[0] = v6[3].n64_u32[0];
          goto LABEL_328;
        }

        if (a2 != 2097155)
        {
          return result;
        }

LABEL_201:
        v10 = v6[3].n64_u32[1];
        goto LABEL_278;
      }

      if (a2 == 0x200000)
      {
        goto LABEL_261;
      }

      if (a2 == 2097153)
      {
        goto LABEL_260;
      }

      return result;
    case 0x21u:
      if (a2 == 2162689)
      {
        goto LABEL_260;
      }

      if (a2 != 2162688)
      {
        return result;
      }

      goto LABEL_261;
    case 0x22u:
      if (a2 == 2228225)
      {
        goto LABEL_260;
      }

      if (a2 != 2228224)
      {
        return result;
      }

      goto LABEL_261;
    case 0x23u:
      switch(a2)
      {
        case 2293760:
          goto LABEL_261;
        case 2293761:
          goto LABEL_260;
        case 2293762:
          goto LABEL_277;
        case 2293763:
          goto LABEL_201;
        case 2293764:
          goto LABEL_37;
        case 2293765:
          v10 = v6[5].n64_u32[1];
          goto LABEL_278;
        case 2293766:
          v10 = v6[6].n64_u32[0];
          goto LABEL_278;
        case 2293767:
          goto LABEL_246;
        case 2293768:
          goto LABEL_332;
        case 2293769:
          v10 = v6[8].n64_u32[1];
          goto LABEL_278;
        case 2293770:
          v10 = v6[9].n64_u32[1];
          goto LABEL_278;
        case 2293771:
          v10 = v6[9].n64_u32[0];
          goto LABEL_278;
        case 2293772:
          v10 = v6[10].n64_u32[0];
          goto LABEL_278;
        case 2293773:
          v10 = v6[6].n64_u32[1];
          goto LABEL_278;
        case 2293774:
          v10 = v6[7].n64_u32[0];
          goto LABEL_278;
        case 2293775:
          v10 = v6[7].n64_u32[1];
          goto LABEL_278;
        case 2293776:
          v10 = v6[8].n64_u32[0];
          goto LABEL_278;
        case 2293777:
          LOBYTE(v6) = v6[10].n64_u8[4];
          goto LABEL_379;
        case 2293778:
          v24 = v6[10].n64_u8[4];
          goto LABEL_392;
        case 2293779:
          v10 = v6[11].n64_u32[0];
          goto LABEL_278;
        case 2293780:
          v10 = v6[11].n64_u32[1];
          goto LABEL_278;
        case 2293781:
          v10 = v6[12].n64_u32[0];
          goto LABEL_278;
        case 2293782:
          v10 = v6[12].n64_u32[1];
          goto LABEL_278;
        case 2293783:
          v10 = v6[13].n64_u32[0];
          goto LABEL_278;
        case 2293784:
          v10 = v6[13].n64_u32[1];
          goto LABEL_278;
        default:
          return result;
      }

      return result;
    case 0x24u:
      if (a2 == 2359297)
      {
        goto LABEL_327;
      }

      if (a2 != 2359296)
      {
        return result;
      }

      goto LABEL_254;
    case 0x25u:
      switch(a2)
      {
        case 2424834:
          goto LABEL_231;
        case 2424833:
          goto LABEL_314;
        case 2424832:
          goto LABEL_315;
      }

      return result;
    case 0x26u:
      switch(a2)
      {
        case 2490370:
          result.n64_u64[0] = v6[3].n64_u64[0];
          goto LABEL_328;
        case 2490369:
          goto LABEL_260;
        case 2490368:
LABEL_254:
          v10 = v6[2].n64_u32[0];
          goto LABEL_278;
      }

      return result;
    case 0x27u:
      if ((a2 - 2555905) >= 2)
      {
        if (a2 != 2555904)
        {
          return result;
        }

LABEL_261:
        result.n64_u32[0] = v6[2].n64_u32[0];
LABEL_328:
        result.n64_f64[0] = result.n64_u64[0];
      }

      else
      {
        v15 = v6[2].n64_u32[0];
        if (v15 != 1)
        {
          if (v15)
          {
            if (a2 != 2555905 || v15 != 2)
            {
              return result;
            }
          }

          else if (a2 != 2555905)
          {
            return result;
          }

LABEL_327:
          result.n64_u32[0] = v6[2].n64_u32[1];
          goto LABEL_328;
        }

        if (a2 == 2555906)
        {
LABEL_260:
          v10 = v6[2].n64_u32[1];
LABEL_278:
          result.n64_f64[0] = vcvtd_n_f64_s32(v10, 0x10uLL);
          if (v10 == 0x80000000)
          {
            result.n64_f64[0] = NAN;
          }
        }
      }

      return result;
    case 0x28u:
      switch(a2)
      {
        case 2621440:
          result.n64_u16[0] = v6[8].n64_u16[0];
          goto LABEL_328;
        case 2621441:
          result.n64_u16[0] = v6[8].n64_u16[1];
          goto LABEL_328;
        case 2621442:
          return v6[2];
        case 2621443:
          goto LABEL_257;
        case 2621444:
          goto LABEL_298;
        case 2621445:
          goto LABEL_290;
        case 2621446:
          goto LABEL_291;
        case 2621447:
          goto LABEL_219;
        case 2621448:
          result.n64_u8[0] = v6[5].n64_u8[4];
          goto LABEL_328;
        case 2621449:
LABEL_339:
          result.n64_u32[0] = v6[6].n64_u32[0];
          goto LABEL_328;
        case 2621450:
          result.n64_u64[0] = v6[7].n64_u64[0];
          goto LABEL_328;
        case 2621451:
          result.n64_u8[0] = v6[3].n64_u8[2];
          goto LABEL_328;
        case 2621452:
          goto LABEL_207;
        default:
          return result;
      }

      return result;
    case 0x29u:
      if (a2 <= 2686978)
      {
        if (a2 == 2686976)
        {
          goto LABEL_261;
        }

        if (a2 == 2686977)
        {
LABEL_231:
          result.n64_u8[0] = v6[2].n64_u8[4];
          goto LABEL_328;
        }

        if (a2 != 2686978)
        {
          return result;
        }

        return v6[3];
      }

      if (a2 <= 2686980)
      {
        if (a2 == 2686979)
        {
          return v6[4];
        }

        return v6[5];
      }

      if (a2 == 2686981)
      {
        return v6[6];
      }

      if (a2 != 2686982)
      {
        return result;
      }

      return v6[7];
    case 0x2Au:
      if (a2 > 2752516)
      {
        if (a2 <= 2752518)
        {
          if (a2 == 2752517)
          {
LABEL_337:
            result.n64_u32[0] = v6[5].n64_u32[1];
            goto LABEL_328;
          }

          v22 = 2752518;
LABEL_304:
          if (a2 == v22)
          {
            return v6[6];
          }
        }

        else if (a2 == 2752519)
        {
          return v6[7];
        }

        else if (a2 == 2752520)
        {
          return v6[8];
        }

        else
        {
          v21 = 2752521;
LABEL_295:
          if (a2 == v21)
          {
            return v6[9];
          }
        }

        return result;
      }

      if (a2 > 2752513)
      {
        if (a2 == 2752514)
        {
          return v6[3];
        }

        if (a2 != 2752515)
        {
          result.n64_u8[0] = v6[5].n64_u8[0];
          goto LABEL_328;
        }

        return v6[4];
      }

      if (a2 == 2752512)
      {
LABEL_315:
        result.n64_u16[0] = v6[2].n64_u16[0];
      }

      else
      {
        if (a2 != 2752513)
        {
          return result;
        }

LABEL_314:
        result.n64_u16[0] = v6[2].n64_u16[1];
      }

      goto LABEL_328;
    case 0x2Bu:
      v12 = 2818049;
      if (a2 > 2818049)
      {
        if (a2 == 2818050)
        {
LABEL_247:
          result.n64_u16[0] = v6[4].n64_u16[0];
          goto LABEL_328;
        }

        v20 = 2818051;
LABEL_218:
        if (a2 == v20)
        {
LABEL_219:
          result.n64_u32[0] = v6[4].n64_u32[1];
          goto LABEL_328;
        }
      }

      else
      {
        if (a2 == 2818048)
        {
          goto LABEL_261;
        }

LABEL_148:
        if (a2 == v12)
        {
          return v6[3];
        }
      }

      return result;
    default:
      return result;
  }
}

uint64_t _io_hideventsystem_copy_property_for_service(unsigned int a1, UInt8 *bytes, CFIndex length, UInt8 *a4, unsigned int a5, vm_offset_t *a6, _DWORD *a7, _DWORD *a8)
{
  *a7 = 0;
  LODWORD(v14) = -536870206;
  v15 = _IOHIDUnserializeAndVMDealloc(bytes, length);
  TypeID = CFStringGetTypeID();
  v17 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
  v18 = v17;
  if (v17 && v15)
  {
    v19 = IOMIGMachPortCacheCopy(a1);
    v20 = v19;
    if (v19)
    {
      v21 = CFGetTypeID(v19);
      v22 = IOHIDEventSystemConnectionGetTypeID();
      if (a6)
      {
        if (v21 == v22)
        {
          System = _IOHIDEventSystemConnectionGetSystem(v20);
          if (System)
          {
            v24 = IOHIDEventSystemCopyService(System, v15);
            if (v24)
            {
              v25 = v24;
              if (IOHIDEventSystemConnectionGetType(v20) != 4 || CFSetContainsValue(__whiteListSet, v18))
              {
                v14 = _IOHIDServiceCopyPropertyForClient(v25, v18, v20);
                *a7 = _IOHIDSerialize(v14, a6);
                if (v14)
                {
                  CFRelease(v14);
                  LODWORD(v14) = 0;
                }
              }

              CFRelease(v18);
              CFRelease(v25);
              CFRelease(v15);
LABEL_13:
              CFRelease(v20);
              goto LABEL_14;
            }

            LODWORD(v14) = -536870160;
          }

          else
          {
            LODWORD(v14) = -536870185;
          }
        }
      }
    }

    CFRelease(v18);
    CFRelease(v15);
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v20 = v15;
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_14:
  *a8 = v14;
  return 0;
}

uint64_t _Xio_hideventsystem_copy_property_for_service(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v3 = -304;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 72))
  {
    v3 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  result = _io_hideventsystem_copy_property_for_service(*(result + 12), *(result + 28), *(result + 40), *(result + 44), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_12:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

const void *IOHIDEventSystemCopyService(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
    os_unfair_recursive_lock_unlock();
    if (_IOHIDServiceIsInactive(v5))
    {
      CFRelease(v5);
      return 0;
    }
  }

  else
  {
    os_unfair_recursive_lock_unlock();
  }

  return v5;
}

CFTypeRef __IOHIDServiceCopyPropertyForClient(uint64_t a1, const void *a2, const void *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = mach_absolute_time();
  if (a3 && (v9 = CFGetTypeID(a3), v9 == IOHIDEventSystemConnectionGetTypeID()))
  {
    Type = IOHIDEventSystemConnectionGetType(a3);
  }

  else
  {
    Type = 5;
  }

  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v31, v32);
  }

  ++**(a1 + 72);
  if (!a4)
  {
    if (CFEqual(a2, @"ReportInterval") || CFEqual(a2, @"BatchInterval"))
    {
      if (Type >= 2 && Type != 5)
      {
        v14 = _IOHIDServiceCopyConnectionCache(a1, a3);
        v15 = v14;
        if (v14)
        {
          v16 = IOHIDServiceConnectionCacheCopyValueForKey(v14, a2);
          CFRelease(v15);
LABEL_40:
          LOBYTE(v15) = 1;
          goto LABEL_41;
        }

        goto LABEL_53;
      }

      if (CFEqual(a2, @"ReportInterval"))
      {
        v11 = CFGetAllocator(a1);
        v12 = (a1 + 160);
      }

      else
      {
        if (!CFEqual(a2, @"BatchInterval"))
        {
          v16 = 0;
          goto LABEL_40;
        }

        v11 = CFGetAllocator(a1);
        v12 = (a1 + 164);
      }
    }

    else if (CFEqual(a2, @"QueueSize") && Type == 2)
    {
      v11 = CFGetAllocator(a1);
      v12 = (a1 + 216);
    }

    else
    {
      if (!CFEqual(a2, @"HIDDefaultSensorControlOptions"))
      {
        goto LABEL_7;
      }

      v11 = CFGetAllocator(a1);
      v12 = (a1 + 296);
    }

    v13 = kCFNumberSInt32Type;
    goto LABEL_38;
  }

LABEL_7:
  if (CFEqual(a2, @"LastActivityTimestamp"))
  {
    v11 = CFGetAllocator(a1);
    v12 = (a1 + 328);
    v13 = kCFNumberSInt64Type;
LABEL_38:
    v19 = CFNumberCreate(v11, v13, v12);
    goto LABEL_39;
  }

  if (CFEqual(a2, @"ServiceRecord"))
  {
    v19 = _IOHIDServiceCopyServiceRecordForClient(a1, a3);
    goto LABEL_39;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(*v17 + 48);
    if (v18)
    {
      v19 = v18();
LABEL_39:
      v16 = v19;
      goto LABEL_40;
    }
  }

  v20 = *(a1 + 24);
  if (!v20 || (v21 = *(*v20 + 48)) == 0)
  {
    v22 = *(a1 + 360);
    if (v22)
    {
      v23 = *(v22 + 24);
      if (v23)
      {
        v19 = v23(*(a1 + 344), *(a1 + 352), a2);
        goto LABEL_39;
      }
    }

    v24 = *(a1 + 480);
    if (v24)
    {
      v25 = [v24 *(a1 + 496)];
      v16 = v25;
      if (v25)
      {
        CFRetain(v25);
      }

      goto LABEL_40;
    }

    LOBYTE(v15) = 0;
LABEL_53:
    v16 = 0;
    goto LABEL_41;
  }

  v16 = v21();
  LOBYTE(v15) = 0;
LABEL_41:
  v26 = *(a1 + 72);
  if (*v26)
  {
    --*v26;
    if (pthread_mutex_unlock((v26 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v31, v32);
    }
  }

  if (v16)
  {
    v27 = v15;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    CFRetain(v16);
  }

  v28 = mach_absolute_time();
  v29 = _IOHIDGetTimestampDelta(v28, v8, 1u);
  if (v29 > *(a1 + 384))
  {
    *(a1 + 384) = v29;
  }

  return v16;
}

__CFString *__FilterFunctionCopyPropertyForClient(__CFString *result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    result = IOHIDServiceFilterCopyPropertyForClient(result, *a2, *(a2 + 16));
    *(a2 + 8) = result;
  }

  return result;
}

__CFString *IOHIDServiceFilterCopyPropertyForClient(uint64_t a1, CFTypeRef cf1, uint64_t a3)
{
  if (!CFEqual(cf1, @"HIDObjectUUID"))
  {
    v8 = *(a1 + 16);
    if (v8 && (v9 = *(*v8 + 88)) != 0)
    {
      v10 = v9();
    }

    else
    {
      v12 = *(a1 + 96);
      if (v12)
      {
        v13 = [v12 *(a1 + 104)];
        v10 = v13;
        if (v13)
        {
          CFRetain(v13);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    if (!CFEqual(cf1, @"ServiceFilterDebug"))
    {
      return v10;
    }

    v14 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return v10;
    }

    v11 = Mutable;
    if (v10)
    {
      v16 = _IOHIDIsSerializable(v10);
      if (v16)
      {
        v18 = v11;
        v19 = v10;
      }

      else
      {
        v20 = _IOHIDLog(v16, v17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          IOHIDServiceFilterCopyPropertyForClient_cold_1(a1, v10, v20);
        }

        v19 = @"not serializable";
        v18 = v11;
      }

      CFDictionaryAddValue(v18, @"plugin", v19);
      CFRelease(v10);
    }

    v21 = CFGetAllocator(a1);
    v22 = CFUUIDCreateString(v21, *(a1 + 88));
    if (v22)
    {
      v23 = v22;
      CFDictionaryAddValue(v11, @"uuid", v22);
      CFRelease(v23);
    }

    v24 = *(a1 + 80);
    if (v24)
    {
      CFDictionaryAddValue(v11, @"name", v24);
    }

    _IOHIDDictionaryAddSInt32(v11, @"score", *(a1 + 40));
    _IOHIDDictionaryAddSInt32(v11, @"type", *(a1 + 16) == 0);
    return v11;
  }

  v6 = *(a1 + 88);
  if (!v6)
  {
    return 0;
  }

  return CFRetain(v6);
}

const __CFData *_IOHIDEventSystemClientCopyPropertyForService(uint64_t a1, IOHIDServiceClientRef service, const void *a3)
{
  result = 0;
  length = 0;
  bytes = 0;
  if (a1)
  {
    if (service)
    {
      if (a3)
      {
        v6 = *MEMORY[0x1E695E480];
        RegistryID = IOHIDServiceClientGetRegistryID(service);
        result = _IOHIDCreateBinaryData(v6, RegistryID);
        if (result)
        {
          v8 = result;
          BytePtr = CFDataGetBytePtr(result);
          v10 = CFDataGetLength(v8);
          v11 = _IOHIDCreateBinaryData(v6, a3);
          if (v11)
          {
            v12 = v11;
            v13 = CFDataGetBytePtr(v11);
            v14 = CFDataGetLength(v12);
            os_unfair_recursive_lock_lock_with_options();
            v15 = io_hideventsystem_copy_property_for_service(*(a1 + 32), BytePtr, v10, v13, v14, &bytes, &length + 1, &length);
            v16 = v15;
            if (v15 == 268435459)
            {
              if (*(a1 + 384))
              {
                v16 = 268435459;
              }

              else
              {
                v16 = 268435459;
                if (!*(a1 + 400))
                {
                  __IOHIDEventSystemClientTerminationCallback(v15, a1, 0);
                  v16 = io_hideventsystem_copy_property_for_service(*(a1 + 32), BytePtr, v10, v13, v14, &bytes, &length + 1, &length);
                }
              }
            }

            os_unfair_recursive_lock_unlock();
            CFRelease(v12);
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          CFRelease(v8);
          result = 0;
          if (v17 && !length)
          {
            return _IOHIDUnserializeAndVMDealloc(bytes, HIDWORD(length));
          }
        }
      }
    }
  }

  return result;
}

kern_return_t IOMasterPort(mach_port_t bootstrapPort, mach_port_t *mainPort)
{
  v3 = MEMORY[0x19A8DBAE0](*&bootstrapPort);
  io_main = host_get_io_main(v3, mainPort);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IOMasterPort_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  block[4] = mainPort;
  if (IOMasterPort_versionOnce != -1)
  {
    dispatch_once(&IOMasterPort_versionOnce, block);
    if (!v3)
    {
      return io_main;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);
  }

  return io_main;
}

io_registry_entry_t IORegistryEntryFromPath(mach_port_t mainPort, const io_string_t path)
{
  v6 = 0;
  v4 = mainPort;
  if (!mainPort)
  {
    mainPorta = 0;
    if (IOMasterPort(0, &mainPorta))
    {
      v4 = 0;
    }

    else
    {
      v4 = mainPorta;
    }
  }

  if (io_registry_entry_from_path(v4, path, &v6))
  {
    v6 = 0;
  }

  if (v4 && v4 != mainPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  }

  return v6;
}

uint64_t io_server_version(unsigned int a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3D00000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t __IOMasterPort_block_invoke(uint64_t a1)
{
  result = io_server_version(**(a1 + 32), &gIOKitLibServerVersion);
  if (result)
  {
    gIOKitLibServerVersion = 0;
  }

  else if (gIOKitLibServerVersion > 0x1335184)
  {
    return result;
  }

  gIOKitLibSerializeOptions &= ~1uLL;
  return result;
}

uint64_t io_registry_entry_from_path(unsigned int a1, const char *a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v4 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v4;
  reply_port[0] = 5395;
  reply_port[1] = ((v4 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xAF900000000;
  v5 = mach_msg2_internal();
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v6 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  return v6;
}

kern_return_t IOServiceOpen(io_service_t service, task_port_t owningTask, uint32_t type, io_connect_t *connect)
{
  v5 = 0;
  result = io_service_open_extended(service, owningTask, type, *MEMORY[0x1E69E99E0], 0, 0, &v5, connect);
  if (!result)
  {
    return v5;
  }

  return result;
}

uint64_t io_service_open_extended(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int *a7, _DWORD *a8)
{
  v12 = 2;
  v13 = a2;
  v14 = 0x13000000000000;
  v15 = a5;
  v16 = 0x1000000;
  v17 = a6;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  v20 = a4;
  v21 = a6;
  *&v11.msgh_bits = 0x5080001513;
  *&v11.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v11.msgh_voucher_port = 0xB2E00000000;
  v8 = mach_msg2_internal();
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v11.msgh_local_port);
  }

  else if (v8)
  {
    mig_dealloc_reply_port(v11.msgh_local_port);
  }

  else
  {
    v9 = 4294966995;
    mach_msg_destroy(&v11);
  }

  return v9;
}

uint64_t _IOHIDObjectInternalRelease(const void *a1)
{
  CFGetTypeID(a1);
  result = _CFRuntimeGetClassWithTypeID();
  if (result)
  {
    v3 = *(result + 96);

    return v3(-1, a1);
  }

  return result;
}

uint64_t __IOHIDEventSystemClientSetDispatchQueue_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 == 8)
  {
    dispatch_release(*(*(result + 32) + 72));
    *(*(v3 + 32) + 72) = 0;
    v5 = *(v3 + 32);

    return _IOHIDObjectInternalRelease(v5);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    return __IOHIDEventSystemClientTerminationCallback(msg, *(v3 + 32), 0);
  }

  return result;
}

void __IOHIDEventSystemClientIntRelease(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E69E9A60];
  if (v3)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);
  }

  v5 = *(a1 + 272);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 280);
  if (v6)
  {
    v7 = *v4;
    Port = CFMachPortGetPort(v6);
    mach_port_mod_refs(v7, Port, 1u, -1);
    CFRelease(*(a1 + 280));
  }

  v9 = *(a1 + 288);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    notify_cancel(v12);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = IOMIGMachPortGetPort(v13);
    IOMIGMachPortCacheRemove(v14);
    CFRelease(*(a1 + 40));
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 96);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 104);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 120);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 128);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 136);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 416);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 432);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 440);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 176);
  if (v25)
  {
    _Block_release(v25);
  }

  v26 = *(a1 + 208);
  if (v26)
  {

    _Block_release(v26);
  }
}

void __IOHIDNotificationExtFinalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v2(a1[7], a1[8], a1);
  }

  _IOHIDObjectInternalRetain(a1);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ____IOHIDNotificationExtFinalize_block_invoke;
  v3[3] = &__block_descriptor_tmp_2;
  v3[4] = a1;
  IOHIDNotificationInvalidate(a1, v3);
}

void __IOHIDEventSystemClientMatchNotifyRelease(uint64_t a1, const __CFDictionary *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 88))
  {
    Value = CFDictionaryGetValue(a2, @"id");
    if (Value)
    {
      v5 = Value;
      v6 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], Value);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 32);
        BytePtr = CFDataGetBytePtr(v6);
        Length = CFDataGetLength(v7);
        io_hideventsystem_release_notification(v8, BytePtr, Length);
        CFRelease(v7);
      }

      CFDictionaryRemoveValue(*(a1 + 88), v5);
    }
  }

  os_unfair_recursive_lock_unlock();
  if (a2)
  {

    CFRelease(a2);
  }
}

uint64_t io_hideventsystem_release_notification(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_19723E110;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

void IOHIDNotificationInvalidate(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = CFGetAllocator(a1);
    v5 = MEMORY[0x19A8DA570](v4, 16, 0xA0040AFF93C70, 0);
    if (!v5)
    {
      IOHIDNotificationInvalidate_cold_1(&v10, v11);
    }

    v6 = v5;
    *(v5 + 8) = _Block_copy(a2);
    OSAtomicEnqueue((a1 + 80), v6, 0);
    if ((atomic_fetch_or((a1 + 72), 0x80000000) & 0x7FFFFFFF) == 0)
    {

      __IOHIDNotificationInvalidateCompletion(a1);
    }
  }

  else
  {
    v7 = dispatch_semaphore_create(0);
    if (!v7)
    {
      IOHIDNotificationInvalidate_cold_2(&v10, v11);
    }

    v8 = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __IOHIDNotificationInvalidate_block_invoke;
    v9[3] = &__block_descriptor_tmp_15;
    v9[4] = v7;
    IOHIDNotificationInvalidate(a1, v9);
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v8);
  }
}

const void **__IOHIDNotificationInvalidateCompletion(OSQueueHead *a1)
{
  v2 = CFGetAllocator(a1);
  result = OSAtomicDequeue(a1 + 5, 0);
  if (result)
  {
    v4 = result;
    do
    {
      (*(v4[1] + 2))();
      _Block_release(v4[1]);
      CFAllocatorDeallocate(v2, v4);
      result = OSAtomicDequeue(a1 + 5, 0);
      v4 = result;
    }

    while (result);
  }

  return result;
}

void IOHIDServiceFilterFilterSetPropertyForClient(void *a1, uint64_t a2, uint64_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1[12];
  if (v4)
  {
    v6 = a1[23];
    if (v6)
    {
      v8 = *a3;
      [v4 v6];
      if (v8 != *a3)
      {
        v9 = _IOHIDLogCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *a3;
          v11 = a1[11];
          v12 = 138413058;
          v13 = a2;
          v14 = 2112;
          v15 = v8;
          v16 = 2112;
          v17 = v10;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_INFO, "IOHIDServiceFilterFilterSetPropertyForClient %@  %@ -> %@ filter:%@", &v12, 0x2Au);
        }
      }
    }
  }
}

id IOHIDServiceFilterSetPropertyForClient(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 2);
  if (v4)
  {
    v5 = *(*v4 + 96);
    if (v5)
    {
      return v5(*(result + 2), a2, a3, a4);
    }
  }

  if (*(result + 12))
  {
    return [*(result + 12) *(result + 14)];
  }

  return result;
}

uint64_t IOHIDEventQueueStop(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 148) = 0;
  while (!_IODataQueueDequeue(*(a1 + 16), *(a1 + 56), 0, 0))
  {
    ++*(a1 + 168);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventQueueIsActive(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 148);
  os_unfair_recursive_lock_unlock();
  return v2;
}

void _IOHIDEventSystemPropertyChanged(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  v8 = CFGetAllocator(a1);
  Copy = CFSetCreateCopy(v8, *(a1 + 48));
  if (*(a1 + 32))
  {
    v10 = CFGetAllocator(a1);
    v11 = CFSetCreateCopy(v10, *(a1 + 32));
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = _Block_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_recursive_lock_unlock();
  if (v13 && v11 && CFSetContainsValue(v11, a3))
  {
    v13[2](v13, a3, a4);
  }

  if (Copy)
  {
    context[0] = a3;
    context[1] = a4;
    context[2] = a2;
    CFSetApplyFunction(Copy, __PropertyChangedFunction, context);
    CFRelease(Copy);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    _Block_release(v13);
  }
}

uint64_t __PropertyChangedFunction(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) != result)
  {
    return _IOHIDEventSystemConnectionPropertyChanged(result, *a2, *(a2 + 8));
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionPropertyChanged(uint64_t a1, void *a2, const void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = a3;
  keys = a2;
  os_unfair_recursive_lock_lock_with_options();
  v5 = *(a1 + 136);
  if (v5 && CFSetContainsValue(v5, a2))
  {
    v6 = mach_absolute_time();
    v7 = CFGetAllocator(a1);
    v8 = CFDictionaryCreate(v7, &keys, &v24, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetAllocator(a1);
      v11 = _IOHIDCreateBinaryData(v10, v9);
      if (v11)
      {
        v12 = v11;
        if (!*(a1 + 456))
        {
          v13 = *(a1 + 40);
          BytePtr = CFDataGetBytePtr(v11);
          Length = CFDataGetLength(v12);
          v16 = iohideventsystem_client_dispatch_properties_changed(v13, BytePtr, Length, 0);
          if (v16)
          {
            v17 = v16;
            if (v16 == 268451843)
            {
              v18 = _IOHIDLogCategory(9);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = *(a1 + 168);
                *buf = 136315394;
                v27 = v19;
                v28 = 1024;
                v29 = 268451843;
                _os_log_impl(&dword_197195000, v18, OS_LOG_TYPE_INFO, "%s: iohideventsystem_client_dispatch_properties_changed:0x%x", buf, 0x12u);
              }
            }

            else
            {
              v20 = _IOHIDLogCategory(9);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                _IOHIDEventSystemConnectionPropertyChanged_cold_1();
              }
            }

            __IOHIDEventSystemConnectionCheckServerStatus(v17, a1);
          }
        }

        CFRelease(v12);
      }

      CFRelease(v9);
    }

    v21 = mach_absolute_time();
    v22 = _IOHIDGetTimestampDelta(v21, v6, 1u);
    if (v22 > *(a1 + 384))
    {
      *(a1 + 384) = v22;
    }
  }

  return os_unfair_recursive_lock_unlock();
}

CFStringRef IOHIDEventSystemConnectionCopyDescription(time_t *cf)
{
  if (*(cf + 76))
  {
    v2 = CFGetAllocator(cf);
    v3 = _IOHIDCreateTimeString(v2, cf + 42);
  }

  else
  {
    v3 = @"NONE";
  }

  v4 = CFGetAllocator(cf);
  v5 = *(cf + 44);
  if (v5 > 4)
  {
    v6 = "Invalid";
  }

  else
  {
    v6 = off_1E74A9440[v5];
  }

  v7 = CFStringCreateWithFormat(v4, 0, @"IOHIDEventSystemConnection uuid:%@ pid:%d process:%@ type:%s entitlements:0x%x caller:%@ attributes:%@ state:0x%x events:%d mask:0x%llx dropped:%d dropStatus:%d droppedMask:0x%llx lastDroppedTime:%@", cf[20], *(cf + 22), cf[19], v6, *cf[30], cf[18], cf[23], *(cf + 66), *(cf + 80), cf[41], *(cf + 76), *(cf + 94), cf[39], v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

CFTypeRef _IOHIDServiceCopyPropertyForClient(uint64_t a1, const void *a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = mach_absolute_time();
  os_unfair_lock_lock((a1 + 456));
  Value = CFDictionaryGetValue(*(a1 + 312), a2);
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
    os_unfair_lock_unlock((a1 + 456));
    ++*(a1 + 320);
    if (CFEqual(v8, *MEMORY[0x1E695E738]))
    {
      CFRelease(v8);
      v9 = 0;
      goto LABEL_21;
    }

    if (v8 != defaultPropertyKeyValue)
    {
      v9 = v8;
      goto LABEL_21;
    }
  }

  else
  {
    os_unfair_lock_unlock((a1 + 456));
    ++*(a1 + 324);
  }

  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(v19, v20);
  }

  ++**(a1 + 72);
  context = a2;
  v17 = 0;
  if (a3 && CFEqual(a3, *MEMORY[0x1E695E738]))
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v18 = v10;
  v11 = *(a1 + 256);
  v22.length = CFArrayGetCount(v11);
  v22.location = 0;
  CFArrayApplyFunction(v11, v22, __FilterFunctionCopyPropertyForClient, &context);
  v12 = *(a1 + 72);
  if (*v12)
  {
    --*v12;
    if (pthread_mutex_unlock((v12 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(v19, v20);
    }
  }

  v9 = v17;
  if (!v17)
  {
    v9 = __IOHIDServiceCopyPropertyForClient(a1, a2, a3, 0);
  }

  if (v8 == defaultPropertyKeyValue)
  {
    os_unfair_lock_lock((a1 + 456));
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(*(a1 + 312), a2, v13);
    os_unfair_lock_unlock((a1 + 456));
    CFRelease(v8);
  }

LABEL_21:
  v14 = mach_absolute_time();
  _IOHIDGetTimestampDelta(v14, v6, 0x3E8u);
  if (*(a1 + 464))
  {
    IOHIDAnalyticsEventSetIntegerValueForField();
  }

  return v9;
}

CFTypeRef _IOHIDSerialize(CFTypeRef result, vm_offset_t *a2)
{
  if (result)
  {
    result = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], result);
    if (result)
    {
      v3 = result;
      dataCnt = 0;
      Length = CFDataGetLength(result);
      v5 = *MEMORY[0x1E69E9A60];
      BytePtr = CFDataGetBytePtr(v3);
      LODWORD(Length) = vm_read(v5, BytePtr, Length, a2, &dataCnt);
      CFRelease(v3);
      if (Length)
      {
        result = 0;
        *a2 = 0;
      }

      else
      {
        return dataCnt;
      }
    }
  }

  return result;
}

uint64_t _Xio_hideventsystem_queue_create(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 52)
  {
    v3 = -304;
LABEL_8:
    *(a2 + 32) = v3;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_8;
  }

  *(a2 + 32) = 0x13000000000000;
  result = _io_hideventsystem_queue_create(*(result + 12), *(result + 28), *(result + 48), (a2 + 28));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_9:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

const void *_IOHIDUnserializeAndVMDeallocWithTypeID(UInt8 *a1, mach_vm_size_t a2, uint64_t a3)
{
  v4 = _IOHIDUnserializeAndVMDealloc(a1, a2);
  v5 = v4;
  if (v4 && CFGetTypeID(v4) != a3)
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t IOMIGMachPortRegisterTerminationCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 88) = a2;
  *(result + 96) = a3;
  return result;
}

void _IOHIDEventSystemRemoveServicesForConnection(uint64_t a1, const void *a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = CFGetTypeID(a2);
  if (v4 == CFArrayGetTypeID())
  {
    v5 = CFGetAllocator(a2);
    Copy = CFArrayCreateCopy(v5, a2);
    os_unfair_recursive_lock_unlock();
    if (!Copy)
    {
      return;
    }

    v15.length = CFArrayGetCount(a2);
    v15.location = 0;
    CFArrayApplyFunction(Copy, v15, ServiceClientFunctionRemove, v13);
    v7 = Copy;
    goto LABEL_11;
  }

  v8 = CFGetTypeID(a2);
  if (v8 == CFSetGetTypeID())
  {
    v9 = CFGetAllocator(a2);
    v10 = CFSetCreateCopy(v9, a2);
    os_unfair_recursive_lock_unlock();
    if (!v10)
    {
      return;
    }

    CFSetApplyFunction(v10, ServiceClientFunctionRemove, v13);
LABEL_10:
    v7 = v10;
LABEL_11:
    CFRelease(v7);
    return;
  }

  v11 = CFGetTypeID(a2);
  if (v11 == CFDictionaryGetTypeID())
  {
    v12 = CFGetAllocator(a2);
    v10 = CFDictionaryCreateCopy(v12, a2);
    os_unfair_recursive_lock_unlock();
    if (!v10)
    {
      return;
    }

    CFDictionaryApplyFunction(v10, ServiceDictClientFunctionRemove, v13);
    goto LABEL_10;
  }

  os_unfair_recursive_lock_unlock();
}

CFTypeID EntitlementCheckApplier(CFTypeID result, uint64_t a2)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v4 == result)
    {
      result = IOHIDEventSystemConnectionHasEntitlement(*a2, v3);
      *(a2 + 8) = result != 0;
    }
  }

  return result;
}

BOOL IOHIDEventSystemConnectionHasEntitlement(uint64_t a1, CFStringRef theString)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0);
  return xpc_dictionary_get_value(v2, CStringPtr) == MEMORY[0x1E69E9E10];
}

unint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return _IOHIDGetTimestampDelta(a1, v1, 0x3E8u);
}

BOOL OUTLINED_FUNCTION_6_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_8()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

char *OUTLINED_FUNCTION_6_3(int a1, mach_error_t error_value, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return mach_error_string(error_value);
}

CFPropertyListRef OUTLINED_FUNCTION_6_4@<X0>(CFIndex length@<X2>, UInt8 *a2@<X8>)
{

  return _IOHIDUnserializeAndVMDealloc(a2, length);
}

void OUTLINED_FUNCTION_4()
{
  *v2 = v0;
  *(v2 + 4) = v1;
  *(v2 + 8) = v3;
}

void OUTLINED_FUNCTION_4_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _os_log_impl(a1, v16, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

void OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  AppendUnsignedIntOrCFType(v3, v4, a3);
}

const void *OUTLINED_FUNCTION_4_7()
{

  return IOMIGMachPortCacheCopy(v0);
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2, void *a3)
{

  return CFNumberGetValue(v3, kCFNumberIntType, a3);
}

uint64_t IOHIDEventQueueCreate(uint64_t a1, int a2, uint64_t a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    return 0;
  }

  Private = __IOHIDEventQueueCreatePrivate(a1);
  v6 = Private;
  if (!Private)
  {
    return v6;
  }

  *(Private + 144) = a2;
  if (a2 == 1)
  {
    size = (a3 + *MEMORY[0x1E69E9AC8] + 39) & -*MEMORY[0x1E69E9AC8];
    memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x1E69E9A60], &size, 0, 393219, (Private + 84), 0);
    if (memory_entry_64)
    {
      v29 = memory_entry_64;
      v30 = _IOHIDLog(memory_entry_64, v8);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      LODWORD(v37) = 67109120;
      DWORD1(v37) = v29;
      v32 = "unable to make mach memory entry. (%08x)";
    }

    else
    {
      *(v6 + 24) = size;
      OUTLINED_FUNCTION_0_12();
      v13 = mach_vm_map(v9, (v6 + 16), v10, v11, 1, v12, 0, 0, v34, SHIDWORD(v34), v35);
      if (!v13)
      {
        goto LABEL_6;
      }

      v33 = v13;
      v30 = _IOHIDLog(v13, v14);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        CFRelease(v6);
        return 0;
      }

      LODWORD(v37) = 67109120;
      DWORD1(v37) = v33;
      v32 = "Unable to map event queue: (%08x)";
    }

    OUTLINED_FUNCTION_1_10(&dword_197195000, v30, v31, v32, &v37);
    goto LABEL_28;
  }

LABEL_6:
  v15 = *(v6 + 16);
  if (!v15)
  {
    goto LABEL_28;
  }

  *(v6 + 56) = a3;
  *v15 = a3;
  v15[1] = 0;
  v15[2] = 0;
  v37 = xmmword_19723DAC0;
  v16 = *MEMORY[0x1E695E480];
  v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v6 + 24));
  v18 = *(v6 + 144) ? @"userEventQueue" : @"kernelEventQueue";
  size = v17;
  v39[0] = v18;
  v20 = CFDictionaryCreate(v16, &__IOHIDEventQueueSetupAnalytics_keys, &size, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v20)
  {
    v21 = IOHIDAnalyticsHistogramEventCreate(@"com.apple.hid.queueUsage", v20, @"UsagePercent", &v37, 1);
    *(v6 + 160) = v21;
    if (v21)
    {
      goto LABEL_15;
    }

    v23 = _IOHIDLog(0, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197195000, v23, OS_LOG_TYPE_DEFAULT, "Unable to create queue analytics", buf, 2u);
    }

    if (*(v6 + 160))
    {
LABEL_15:
      IOHIDAnalyticsEventActivate();
    }

    CFRelease(v20);
  }

  else
  {
    v28 = _IOHIDLog(0, v19);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_197195000, v28, OS_LOG_TYPE_ERROR, "Unable to create analytics description", buf, 2u);
    }
  }

  p_size = &size;
  v25 = 1;
  do
  {
    v26 = v25;
    if (*p_size)
    {
      CFRelease(*p_size);
    }

    v25 = 0;
    p_size = v39;
  }

  while ((v26 & 1) != 0);
  if (!v20)
  {
    goto LABEL_28;
  }

  return v6;
}

uint64_t __IOHIDEventQueueCreatePrivate(uint64_t a1)
{
  IOHIDEventQueueGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 40) = 0;
  }

  else
  {
    __IOHIDEventQueueCreatePrivate_cold_1(0, v2);
  }

  return v3;
}

uint64_t IOHIDEventQueueGetTypeID()
{
  result = __kIOHIDEventQueueTypeID;
  if (!__kIOHIDEventQueueTypeID)
  {
    if (__queueTypeInit_0 != -1)
    {
      IOHIDEventQueueGetTypeID_cold_1();
    }

    return __kIOHIDEventQueueTypeID;
  }

  return result;
}

uint64_t IOHIDAnalyticsHistogramEventCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__loadFramework_haOnce_0 != -1)
  {
    IOHIDAnalyticsEventCreate_cold_1();
  }

  v10 = createHistogramEventFuncPtr;
  if (!createHistogramEventFuncPtr)
  {
    return 0;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t IOHIDAnalyticsEventActivate()
{
  if (activateEventFuncPtr)
  {
    return activateEventFuncPtr();
  }

  return result;
}

uint64_t IOHIDEventQueueSetNotificationPort(uint64_t a1, int a2)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 144) == 1)
  {
    *(a1 + 60) = 0x1800000013;
    *(a1 + 68) = a2;
  }

  *(a1 + 96) = a2;

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemConnectionSetQueue(uint64_t a1, uint64_t a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 24) = a2;
  if (a2)
  {
    v6 = (a1 + 104);
    v5 = *(a1 + 104);
    if (v5)
    {
      goto LABEL_10;
    }

    v7 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, (a1 + 104));
    if (v7)
    {
      v8 = v7;
      v9 = _IOHIDLogCategory(9);
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _IOHIDEventSystemConnectionReleasePrivate_cold_3(a1, v8, v10, v11, v12, v13, v14, v15);
      }

      __IOHIDEventSystemConnectionCheckServerStatus(v8, a1);
    }

    v5 = *v6;
    if (*v6)
    {
LABEL_10:
      v16 = dispatch_source_create(MEMORY[0x1E69E96D8], v5, 0, *(a1 + 96));
      *(a1 + 112) = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = *(a1 + 112);
      if (!v16)
      {
LABEL_12:
        *(a1 + 128) = 1;
        v18 = *(a1 + 24);
        if (v18)
        {
          CFRetain(v18);
        }

        return os_unfair_recursive_lock_unlock();
      }
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___IOHIDEventSystemConnectionSetQueue_block_invoke;
    handler[3] = &__block_descriptor_tmp_23_1;
    handler[4] = a1;
    dispatch_source_set_event_handler(v16, handler);
    CFRetain(a1);
    v17 = *(a1 + 112);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___IOHIDEventSystemConnectionSetQueue_block_invoke_24;
    v20[3] = &__block_descriptor_tmp_25_1;
    v20[4] = a1;
    dispatch_source_set_cancel_handler(v17, v20);
    dispatch_resume(*(a1 + 112));
    goto LABEL_12;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventQueueGetMemoryHandle(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 84);
  os_unfair_recursive_lock_unlock();
  return v2;
}

uint64_t IOHIDEventQueueCreateWithVM(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v23 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    v13 = _IOHIDLog(a1, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v20 = v4;
      v21 = 1024;
      v22 = a3;
      _os_log_error_impl(&dword_197195000, v13, OS_LOG_TYPE_ERROR, "Invalid ptr=%p size=%d.", buf, 0x12u);
    }

    return 0;
  }

  Private = __IOHIDEventQueueCreatePrivate(a1);
  v6 = Private;
  if (Private)
  {
    *(Private + 24) = ~*MEMORY[0x1E69E9AB8] & (a3 + *MEMORY[0x1E69E9AB8] + 40);
    *(Private + 84) = v4;
    OUTLINED_FUNCTION_0_12();
    v10 = mach_vm_map(v7, (v6 + 16), v8, v9, 1, v4, 0, 0, v17, SHIDWORD(v17), v18);
    if (!v10)
    {
      *(v6 + 144) = 1;
      return v6;
    }

    v14 = v10;
    v15 = _IOHIDLog(v10, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v20) = v14;
      OUTLINED_FUNCTION_1_10(&dword_197195000, v15, v16, "Unable to map event queue: (%08x)", buf);
    }

    CFRelease(v6);
    return 0;
  }

  return v6;
}

uint64_t __IOHIDEventQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDEventQueueTypeID = result;
  return result;
}

void IOMIGMachPortScheduleWithRunLoop(CFTypeRef cf, CFRunLoopRef rl, CFRunLoopMode mode)
{
  *(cf + 2) = rl;
  *(cf + 3) = mode;
  if (rl)
  {
    if (mode)
    {
      RunLoopSource = *(cf + 7);
      if (RunLoopSource || (v7 = CFGetAllocator(cf), RunLoopSource = CFMachPortCreateRunLoopSource(v7, *(cf + 6), 1), (*(cf + 7) = RunLoopSource) != 0))
      {

        CFRunLoopAddSource(rl, RunLoopSource, mode);
      }
    }
  }
}

uint64_t IOHIDEventSystemClientRegisterEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  if ((*(a1 + 408) & 1) == 0)
  {
    if (atomic_load((a1 + 312)))
    {
      IOHIDEventSystemClientRegisterEventCallback_cold_1();
    }
  }

  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 200) = a2;
  *(a1 + 216) = a3;
  *(a1 + 224) = a4;
  os_unfair_recursive_lock_unlock();

  return __IOHIDEventSystemClientStartQueue(a1);
}

uint64_t io_hideventsystem_queue_start(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1118000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _io_hideventsystem_queue_start(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      v4 = _IOHIDEventSystemConnectionCopyQueue(v2);
      if (v4)
      {
        v5 = v4;
        _IOHIDEventSystemConnectionQueueStart(v2);
        IOHIDEventQueueStart(v5);
        CFRelease(v5);
      }
    }

    CFRelease(v2);
  }

  return 0;
}

_DWORD *_Xio_hideventsystem_queue_start(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_queue_start(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionQueueStart(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 8);
  if (*(a1 + 24))
  {
    *(a1 + 128) = 1;
  }

  *(a1 + 264) &= ~2u;
  os_unfair_recursive_lock_unlock();
  v3 = *MEMORY[0x1E695E4C0];

  return _IOHIDEventSystemSetPropertyForConnection(v2, @"IOHIDEventSystemClientIsUnresponsive", v3, a1);
}

uint64_t IOHIDEventQueueStart(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 148) = 1;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDEventSystemClientCreateWithType(const __CFAllocator *a1, int a2, const __CFDictionary *a3)
{
  v51[3] = *MEMORY[0x1E69E9840];
  v6 = __kIOHIDEventSystemClientTypeID;
  if (!__kIOHIDEventSystemClientTypeID)
  {
    OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
    v6 = __kIOHIDEventSystemClientTypeID;
  }

  Instance = _IOHIDObjectCreateInstance(a1, v6, 0x1F8uLL);
  if (Instance)
  {
    v8 = CFUUIDCreate(a1);
    if (v8)
    {
      v9 = v8;
      *(Instance + 440) = CFUUIDCreateString(a1, v8);
      CFRelease(v9);
    }

    v50 = qword_1F0B91170;
    v48 = xmmword_1F0B91150;
    v49 = *&off_1F0B91160;
    *(Instance + 24) = 0;
    *(Instance + 160) = 0;
    v10 = OUTLINED_FUNCTION_8_1();
    Mutable = CFDictionaryCreateMutable(v10, v11, v12, v13);
    *(Instance + 88) = Mutable;
    if (!Mutable)
    {
      goto LABEL_37;
    }

    v15 = OUTLINED_FUNCTION_8_1();
    v18 = CFSetCreateMutable(v15, v16, v17);
    *(Instance + 112) = v18;
    if (!v18)
    {
      goto LABEL_37;
    }

    v19 = OUTLINED_FUNCTION_8_1();
    v23 = CFDictionaryCreateMutable(v19, v20, v21, v22);
    *(Instance + 96) = v23;
    if (!v23)
    {
      goto LABEL_37;
    }

    v24 = OUTLINED_FUNCTION_8_1();
    v27 = CFDictionaryCreateMutable(v24, v25, 0, v26);
    *(Instance + 104) = v27;
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = CFDictionaryCreateMutable(a1, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(Instance + 128) = v28;
    if (!v28)
    {
      goto LABEL_37;
    }

    if (a3 != 1635017576 && a3)
    {
      Copy = CFDictionaryCreateCopy(a1, a3);
      *(Instance + 416) = Copy;
      if (Copy)
      {
        Value = CFDictionaryGetValue(Copy, @"HighFrequency");
        v31 = *MEMORY[0x1E695E4D0];
        *(Instance + 448) = Value == *MEMORY[0x1E695E4D0];
        *(Instance + 449) = CFDictionaryGetValue(*(Instance + 416), @"SupportsCollectionEvents") == v31;
      }
    }

    else
    {
      *(Instance + 416) = 0;
    }

    *(Instance + 424) = a2;
    memset(v51, 0, 24);
    memset(&v47, 0, sizeof(v47));
    backtrace(v51, 3);
    if (a3 == 1635017576)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    if (!dladdr(v51[v32], &v47))
    {
      if (*(Instance + 432))
      {
        goto LABEL_33;
      }

LABEL_32:
      *(Instance + 432) = @"***UNKOWN***";
      CFRetain(@"***UNKOWN***");
LABEL_33:
      v42 = dispatch_queue_create("hideventsystemclient.default.queue", 0);
      *(Instance + 488) = v42;
      if (v42)
      {
        dispatch_set_context(v42, Instance);
        dispatch_set_finalizer_f(*(Instance + 488), __IOHIDEventSystemClientFinalizeStateHandler);
        _IOHIDObjectInternalRetain(Instance);
        *(Instance + 456) = os_state_add_handler();
        __IOHIDEventSystemClientRefresh(Instance, 0);
        return Instance;
      }

LABEL_37:
      CFRelease(Instance);
      return 0;
    }

    dli_fname = v47.dli_fname;
    if (v47.dli_fname)
    {
      v34 = strrchr(v47.dli_fname, 47);
      if (v34)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = dli_fname;
      }

      dli_sname = v47.dli_sname;
      if (!v47.dli_sname)
      {
        v37 = (v51[v32] - v47.dli_fbase);
        dli_sname = v35;
        goto LABEL_31;
      }
    }

    else
    {
      dli_sname = v47.dli_sname;
      if (!v47.dli_sname)
      {
        v37 = v51[v32];
        dli_sname = "0x0";
        v35 = "???";
LABEL_31:
        v45 = dli_sname;
        v46 = v37;
        v44 = v35;
        v38 = OUTLINED_FUNCTION_8_1();
        v41 = CFStringCreateWithFormat(v38, v39, v40, v44, v45, v46);
        *(Instance + 432) = v41;
        if (v41)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v35 = "???";
    }

    v37 = (v51[v32] - v47.dli_saddr);
    goto LABEL_31;
  }

  return Instance;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_0_8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_0_11(pthread_once_t *a1)
{

  return pthread_once(a1, __IOHIDEventSystemClientRegister);
}

uint64_t __IOHIDEventSystemClientRegister()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E530];
  __propertyCache = CFSetCreate(*MEMORY[0x1E695E480], &propertyCacheList, 2, MEMORY[0x1E695E530]);
  __restrictedRemapKeys = CFSetCreate(v0, &restrictedRemapKeyList, 3, v1);
  result = _CFRuntimeRegisterClass();
  __kIOHIDEventSystemClientTypeID = result;
  return result;
}

uint64_t _IOHIDObjectCreateInstance(uint64_t a1, uint64_t a2, size_t a3)
{
  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), a3);
    *(v5 + 16) = 1;
    *(v5 + 20) = 1;
  }

  return v5;
}

const __CFArray *OUTLINED_FUNCTION_7()
{

  return IOHIDEventGetEventWithOptions(v0, 19, 4026531840);
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return _os_crash_msg();
}

void OUTLINED_FUNCTION_7_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_error_impl(a1, v12, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void __IOHIDEventSystemClientRefresh(uint64_t a1, char a2)
{
  v54 = *MEMORY[0x1E69E9840];
  *special_port = 0;
  v51 = 0;
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 32))
  {

    os_unfair_recursive_lock_unlock();
    return;
  }

  memset(v50, 0, sizeof(v50));
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = getpid();
    if (proc_name(v6, buffer, 0x400u))
    {
      v7 = CFStringCreateWithCString(v4, buffer, 0);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 432);
    if (v8)
    {
      CFDictionarySetValue(Mutable, @"caller", v8);
    }

    if (v7)
    {
      CFDictionarySetValue(Mutable, @"procName", v7);
    }

    v9 = *(a1 + 440);
    if (v9)
    {
      CFDictionarySetValue(Mutable, @"UUID", v9);
    }
  }

  else
  {
    v7 = 0;
  }

  __IOHIDEventSystemClientInitReplyPort(a1);
  v10 = *(a1 + 40);
  os_unfair_recursive_lock_unlock();
  if (v10)
  {
    v11 = MEMORY[0x1E69E9A60];
    if (!task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]))
    {
      if (xpc_user_sessions_enabled())
      {
        tn[1] = 0;
        xpc_user_sessions_get_foreground_uid();
        v33 = bootstrap_look_up_per_user();
        if (v33)
        {
          v34 = _IOHIDLogCategory(13);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            __IOHIDEventSystemClientRefresh_cold_2(v33);
          }
        }
      }

      v12 = bootstrap_look_up2();
      v13 = mach_port_deallocate(*v11, special_port[1]);
      if (v12)
      {
        __IOHIDEventSystemClientRefresh_cold_3(v12);
      }

      else
      {
        if (!v13)
        {
          v48 = v7;
          v14 = _IOHIDCreateBinaryData(v4, Mutable);
          v15 = v14;
          v46 = a2;
          if (v14)
          {
            BytePtr = CFDataGetBytePtr(v14);
            Length = CFDataGetLength(v15);
          }

          else
          {
            Length = 0;
            BytePtr = 0;
          }

          v18 = Mutable;
          v19 = _IOHIDCreateBinaryData(v4, *(a1 + 416));
          cf = v19;
          if (v19)
          {
            v20 = v19;
            v21 = v15;
            v22 = CFDataGetBytePtr(v19);
            v23 = CFDataGetLength(v20);
          }

          else
          {
            v21 = v15;
            v23 = 0;
            v22 = 0;
          }

          tn[0] = 0;
          v24 = *v11;
          v25 = getpid();
          if (task_name_for_pid(v24, v25, tn))
          {
            __IOHIDEventSystemClientRefresh_cold_5();
          }

          os_unfair_recursive_lock_lock_with_options();
          Port = IOMIGMachPortGetPort(*(a1 + 40));
          os_unfair_recursive_lock_unlock();
          v27 = io_hideventsystem_open(v51, tn[0], *(a1 + 424), BytePtr, Length, v22, v23, Port, special_port, v50);
          v28 = special_port[0];
          v29 = mach_port_deallocate(*v11, v51);
          if (v27 || !v28)
          {
            __IOHIDEventSystemClientRefresh_cold_7();
            v7 = v48;
          }

          else
          {
            v7 = v48;
            if (!v29)
            {
              os_unfair_recursive_lock_lock_with_options();
              *(a1 + 32) = special_port[0];
              v30 = v21;
              if (v46)
              {
                Copy = 0;
                Mutable = v18;
              }

              else
              {
                v32 = *(a1 + 80);
                Mutable = v18;
                if (v32)
                {
                  Copy = CFArrayCreateCopy(v4, v32);
                }

                else
                {
                  Copy = 0;
                }

                IOHIDEventSystemClientSetMatchingMultiple(a1, Copy);
              }

              if (CFDictionaryGetCount(*(a1 + 104)))
              {
                v35 = CFDictionaryCreateCopy(v4, *(a1 + 104));
                v36 = v35;
                if (v35)
                {
                  CFDictionaryApplyFunction(v35, __VirtualServiceNotifier, a1);
                }

                CFDictionaryRemoveAllValues(*(a1 + 104));
              }

              else
              {
                v36 = 0;
              }

              if ((*(a1 + 384) || *(a1 + 400)) && (__IOHIDEventSystemClientSetupAsyncSupport(a1), (v44 = *(a1 + 384)) != 0) && (v45 = *(a1 + 392)) != 0)
              {
                IOHIDEventSystemClientScheduleWithRunLoop(a1, v44, v45);
              }

              else if (*(a1 + 400))
              {
                v37 = atomic_load((a1 + 312));
                if ((v37 & 2) == 0)
                {
                  IOMIGMachPortScheduleWithDispatchQueue(*(a1 + 40), *(a1 + 400));
                }
              }

              os_unfair_recursive_lock_unlock();
              __IOHIDEventSystemClientStartQueue(a1);
              __IOHIDEventSystemClientStartFilter(a1);
              os_unfair_recursive_lock_lock_with_options();
              if (*(a1 + 360) || *(a1 + 352))
              {
                io_hideventsystem_register_record_service_changed_notification(*(a1 + 32));
              }

              if (*(a1 + 328) || *(a1 + 320))
              {
                io_hideventsystem_register_record_client_changed_notification(*(a1 + 32));
              }

              os_unfair_recursive_lock_unlock();
              os_unfair_recursive_lock_lock_with_options();
              v38 = CFGetAllocator(a1);
              v39 = CFDictionaryCreateCopy(v38, *(a1 + 128));
              os_unfair_recursive_lock_unlock();
              if (v39)
              {
                CFDictionaryApplyFunction(v39, __IOHIDEventSystemClientConnectionPropertyFunction, a1);
                CFRelease(v39);
              }

              os_unfair_recursive_lock_lock_with_options();
              v40 = *(a1 + 120);
              if (v40)
              {
                CFDictionaryApplyFunction(v40, __IOHIDEventSystemClientRegisterPropertyCallbackRegisterFunction, a1);
              }

              os_unfair_recursive_lock_unlock();
              v41 = IOHIDEventSystemClientCopyProperty(a1, @"HIDDebug");
              if (v41)
              {
                v42 = v41;
                v43 = CFGetTypeID(v41);
                if (v43 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v42, kCFNumberSInt32Type, &gIOHIDDebugConfig);
                }

                CFRelease(v42);
              }

              if (v36)
              {
                CFRelease(v36);
              }

              if (Copy)
              {
                CFRelease(Copy);
              }

              if (!v30)
              {
                goto LABEL_71;
              }

              goto LABEL_70;
            }

            __IOHIDEventSystemClientRefresh_cold_6(v29);
          }

          v30 = v21;
          Mutable = v18;
          if (!v30)
          {
LABEL_71:
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_73;
          }

LABEL_70:
          CFRelease(v30);
          goto LABEL_71;
        }

        __IOHIDEventSystemClientRefresh_cold_4(v13);
      }
    }
  }

LABEL_73:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t __IOHIDEventSystemClientInitReplyPort(uint64_t *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = 1;
  if (!a1[5])
  {
    port_info_out = 0;
    port_info_outCnt = 1;
    v3 = IOMIGMachPortCreate(*MEMORY[0x1E695E480], dword_1F0B92328, 0);
    a1[5] = v3;
    if (v3)
    {
      v4 = MEMORY[0x1E69E9A60];
      v5 = *MEMORY[0x1E69E9A60];
      Port = IOMIGMachPortGetPort(v3);
      if (mach_port_get_attributes(v5, Port, 1, &port_info_out, &port_info_outCnt))
      {
        __IOHIDEventSystemClientInitReplyPort_cold_1();
      }

      else
      {
        port_info_out = 64;
        v7 = *v4;
        v8 = IOMIGMachPortGetPort(a1[5]);
        if (!MEMORY[0x19A8DBBA0](v7, v8, 1, &port_info_out, port_info_outCnt))
        {
          IOMIGMachPortRegisterDemuxCallback(a1[5], __IOHIDEventSystemClientMIGDemuxCallback, a1);
          IOMIGMachPortRegisterTerminationCallback(a1[5], __IOHIDEventSystemClientTerminationCallback, a1);
          v9 = IOMIGMachPortGetPort(a1[5]);
          IOMIGMachPortCacheAdd(v9, a1);
          v2 = 1;
          goto LABEL_6;
        }

        __IOHIDEventSystemClientInitReplyPort_cold_2();
      }
    }

    else
    {
      __IOHIDEventSystemClientInitReplyPort_cold_3();
    }

    v11 = a1[5];
    if (v11)
    {
      CFRelease(v11);
      v2 = 0;
      a1[5] = 0;
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_6:
  os_unfair_recursive_lock_unlock();
  return v2;
}

void *IOMIGMachPortCreate(const __CFAllocator *a1, uint64_t a2, mach_port_t a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (!__IOMIGMachPortTypeID)
  {
    pthread_once(&__IOMIGMachPortTypeInit, __IOMIGMachPortRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 96) = 0;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 48) = 0u;
    v10.version = 0;
    memset(&v10.retain, 0, 24);
    v10.info = Instance;
    if (a3)
    {
      v8 = CFMachPortCreateWithPort(a1, a3, __IOMIGMachPortPortCallback, &v10, 0);
    }

    else
    {
      v8 = CFMachPortCreate(a1, __IOMIGMachPortPortCallback, &v10, 0);
    }

    v7[6] = v8;
    if (v8)
    {
      v7[8] = a2;
      return v7;
    }

    CFRelease(v7);
    return 0;
  }

  return v7;
}

uint64_t __IOMIGMachPortRegister()
{
  __ioPortCache = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  result = _CFRuntimeRegisterClass();
  __IOMIGMachPortTypeID = result;
  return result;
}

uint64_t IOMIGMachPortRegisterDemuxCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 72) = a2;
  *(result + 80) = a3;
  return result;
}

uint64_t IOMIGMachPortCacheAdd(unsigned int a1, const void *a2)
{
  pthread_mutex_lock(&__ioPortCacheLock);
  CFDictionarySetValue(__ioPortCache, a1, a2);

  return pthread_mutex_unlock(&__ioPortCacheLock);
}

uint64_t io_hideventsystem_open(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, _DWORD *a9, _OWORD *a10)
{
  *&msg[20] = 0u;
  *v23 = 0x13000000000000;
  *&v23[8] = 0u;
  v24 = 0;
  *&msg[4] = 0u;
  *&msg[24] = 4;
  *&msg[28] = a2;
  v18 = 1245184;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  *v22 = a6;
  *&v22[8] = 16777472;
  *&v22[12] = a7;
  *&v22[16] = a8;
  *&v23[8] = *MEMORY[0x1E69E99E0];
  *&v23[16] = a3;
  *&v23[20] = a5;
  LODWORD(v24) = a7;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x1117000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v12 = *&msg[12];
  }

  else
  {
    v12 = special_reply_port;
  }

  v13 = mach_msg(msg, 53493763, 0x68u, 0x6Cu, v12, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (*&msg[20] == 71)
      {
        v14 = 4294966988;
      }

      else if (*&msg[20] == 70100)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v14 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = *&msg[32];
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_29;
        }

        v14 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v18) << 16 == 1114112)
        {
          if (v19 || HIDWORD(v19) < 0x20)
          {
            return 4294966987;
          }

          v14 = 0;
          *a9 = *&msg[28];
          v16 = *v23;
          *a10 = *&v22[4];
          a10[1] = v16;
          return v14;
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(msg);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_29;
  }

  return v14;
}

uint64_t _io_hideventsystem_open(unsigned int a1, uint64_t a2, uint64_t a3, UInt8 *a4, unsigned int a5, UInt8 *a6, unsigned int a7, uint64_t a8, _DWORD *a9, _OWORD *a10)
{
  v10 = a8;
  v16 = a2;
  pidp = -1;
  v18 = a10[1];
  *atoken.val = *a10;
  *&atoken.val[4] = v18;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  TypeID = CFDictionaryGetTypeID();
  v20 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
  v21 = CFDictionaryGetTypeID();
  v22 = _IOHIDUnserializeAndVMDeallocWithTypeID(a6, a7, v21);
  v23 = IOMIGMachPortCacheCopy(a1);
  v24 = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

  v25 = CFGetTypeID(v23);
  v26 = __kIOHIDEventServerTypeID;
  if (!__kIOHIDEventServerTypeID)
  {
    pthread_once(&__serviceTypeInit, __IOHIDEventServerRegister);
    v26 = __kIOHIDEventServerTypeID;
  }

  if (v25 == v26)
  {
    v27 = CFGetAllocator(v24);
    v28 = v24[2];
    v29 = a10[1];
    *atoken.val = *a10;
    *&atoken.val[4] = v29;
    v30 = _IOHIDEventSystemConnectionCreate(v27, v28, a3, v20, v22, pidp, v16, v10, &atoken);
    if (v30)
    {
      _IOHIDEventSystemAddConnection(v24[2], v30);
      Port = _IOHIDEventSystemConnectionGetPort(v30);
      IOMIGMachPortCacheAdd(Port, v30);
      _IOHIDEventSystemConnectionRegisterTerminationCallback(v30, __IOHIDEventSystemConnectionDiedCallback, v24);
      _IOHIDEventSystemConnectionRegisterDemuxCallback(v30, __IOHIDEventSystemConnectionDemuxCallback, v24);
      _IOHIDEventSystemConnectionScheduleAsync(v30);
      v32 = _IOHIDEventSystemConnectionGetPort(v30);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
LABEL_16:
    v32 = 0;
    v30 = 0;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  *a9 = v32;
  return 0;
}

uint64_t _IOHIDEventSystemConnectionCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5, uint64_t a6, mach_port_name_t a7, mach_port_name_t a8, _OWORD *a9)
{
  v14 = a3;
  v83 = *MEMORY[0x1E69E9840];
  name = 0;
  previous = 0;
  Private = _IOHIDEventSystemConnectionCreatePrivate(a1);
  v19 = Private;
  v20 = MEMORY[0x1E69E9A60];
  if (v14 > 4 || !Private)
  {
    if (v14 >= 5 && (v71 = _IOHIDLog(Private, v18), os_log_type_enabled(v71, OS_LOG_TYPE_ERROR)))
    {
      _IOHIDEventSystemConnectionCreate_cold_2();
      if (!a7)
      {
LABEL_88:
        if (a8)
        {
          mach_port_deallocate(*v20, a8);
        }

        v50 = 0;
        v72 = 0;
        if (!v19)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

    else if (!a7)
    {
      goto LABEL_88;
    }

    mach_port_deallocate(*v20, a7);
    goto LABEL_88;
  }

  Private->_connection.reply_port = a8;
  Private->_connection.task_name_port = a7;
  mach_port_allocate(*v20, 1u, &name);
  if (mach_port_request_notification(*v20, name, 70, 1u, name, 0x15u, &previous) || mach_port_insert_right(*v20, name, name, 0x14u))
  {
    v50 = 0;
    v72 = 0;
    goto LABEL_57;
  }

  v72 = name;
  v21 = IOMIGMachPortCreate(a1, dword_1F0B91E80, name);
  *(v19 + 32) = v21;
  if (!v21)
  {
    goto LABEL_83;
  }

  v73 = a2;
  v74 = a5;
  name = 0;
  *(v19 + 456) = 0;
  v22 = a9[1];
  *(v19 + 196) = *a9;
  *(v19 + 212) = v22;
  v23 = a9[1];
  v76 = *a9;
  v77 = v23;
  v24 = xpc_copy_entitlement_for_token();
  empty = xpc_dictionary_create_empty();
  v26 = empty;
  if (v24)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 0x40000000;
    *&applier[16] = ____IOHIDEventSystemConnectionCreateConnectionEntitlements_block_invoke;
    v81 = &__block_descriptor_tmp_150;
    v82 = empty;
    xpc_dictionary_apply(v24, applier);
    xpc_release(v24);
  }

  *(v19 + 248) = v26;
  if (!v26)
  {
LABEL_83:
    v50 = 0;
    goto LABEL_57;
  }

  v27 = *(v19 + 168);
  v28 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (!v28)
  {
    v50 = 0;
    *(v19 + 240) = 0;
    goto LABEL_57;
  }

  v29 = v28;
  v30 = a6;
  *v28 = 0;
  value = xpc_dictionary_get_value(v26, "com.apple.private.hid.client.admin");
  v32 = MEMORY[0x1E69E9E10];
  if (value == MEMORY[0x1E69E9E10])
  {
    v33 = 1;
  }

  else
  {
    v33 = __IOHIDValidateInternalBuildEntitlement(v26, "com.apple.private.hid.client.admin.internal", v27);
  }

  *v29 = *v29 & 0xFE | v33;
  v34 = 2;
  if (xpc_dictionary_get_value(v26, "com.apple.private.hid.client.event-monitor") != v32)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v26, "com.apple.private.hid.client.event-monitor.internal", v27))
    {
      v34 = 2;
    }

    else
    {
      v34 = 0;
    }
  }

  *v29 = *v29 & 0xFD | v34;
  v35 = 4;
  if (xpc_dictionary_get_value(v26, "com.apple.private.hid.client.event-filter") != v32)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v26, "com.apple.private.hid.client.event-filter.internal", v27))
    {
      v35 = 4;
    }

    else
    {
      v35 = 0;
    }
  }

  *v29 = *v29 & 0xFB | v35;
  v36 = 8;
  if (xpc_dictionary_get_value(v26, "com.apple.private.hid.client.event-dispatch") != v32)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v26, "com.apple.private.hid.client.event-dispatch.internal", v27))
    {
      v36 = 8;
    }

    else
    {
      v36 = 0;
    }
  }

  *v29 = *v29 & 0xF7 | v36;
  v37 = 16;
  if (xpc_dictionary_get_value(v26, "com.apple.private.hid.client.service-protected") != v32)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v26, "com.apple.private.hid.client.service-protected.internal", v27))
    {
      v37 = 16;
    }

    else
    {
      v37 = 0;
    }
  }

  *v29 = *v29 & 0xEF | v37;
  v38 = 32;
  if (xpc_dictionary_get_value(v26, "com.apple.private.hid.client.motion-event-privileged") != v32)
  {
    if (__IOHIDValidateInternalBuildEntitlement(v26, "com.apple.private.hid.client.motion-event-privileged.internal", v27))
    {
      v38 = 32;
    }

    else
    {
      v38 = 0;
    }
  }

  *v29 = *v29 & 0xDF | v38;
  if (__IOHIDValidateInternalBuildEntitlement(v26, "com.apple.private.hid.client.debug-tool.internal", v27))
  {
    v39 = 64;
  }

  else
  {
    v39 = 0;
  }

  *v29 = *v29 & 0xBF | v39;
  *(v19 + 240) = v29;
  if (a4)
  {
    v40 = CFDictionaryGetValue(a4, @"caller");
    v41 = CFDictionaryGetValue(a4, @"procName");
    v42 = CFDictionaryGetValue(a4, @"UUID");
    if (v40)
    {
      Copy = CFStringCreateCopy(a1, v40);
    }

    else
    {
      Copy = 0;
    }

    *(v19 + 144) = Copy;
    v45 = v73;
    v44 = v74;
    if (v41)
    {
      v47 = CFStringCreateCopy(a1, v41);
    }

    else
    {
      v47 = 0;
    }

    *(v19 + 152) = v47;
    if (v42)
    {
      v42 = CFStringCreateCopy(a1, v42);
    }

    *(v19 + 160) = v42;
    if (v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v42 = *(v19 + 160);
    v45 = v73;
    v44 = v74;
    if (v42)
    {
LABEL_48:
      SystemEncoding = CFStringGetSystemEncoding();
      CStringPtr = CFStringGetCStringPtr(v42, SystemEncoding);
      goto LABEL_49;
    }
  }

  CStringPtr = 0;
LABEL_49:
  *(v19 + 168) = CStringPtr;
  *(v19 + 8) = v45;
  CFRetain(v45);
  *(v19 + 176) = v14;
  if (v44)
  {
    v49 = CFDictionaryCreateCopy(a1, v44);
  }

  else
  {
    v49 = 0;
  }

  *(v19 + 184) = v49;
  *(v19 + 88) = v30;
  *(v19 + 288) = -1;
  *(v19 + 228) = 0;
  *(v19 + 232) = 0;
  *(v19 + 268) = 0;
  *(v19 + 256) = (**(v19 + 240) & 0x13) == 0;
  v50 = CFStringCreateWithFormat(a1, 0, @"IOHIDConnection process:%@ pid:%d uuid:%@ caller:%@", *(v19 + 152), v30, *(v19 + 160), *(v19 + 144));
  if (!v50)
  {
    goto LABEL_57;
  }

  if (!v14 && (**(v19 + 240) & 1) == 0)
  {
    v51 = _IOHIDLogCategory(9);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      _IOHIDEventSystemConnectionCreate_cold_1();
    }

    goto LABEL_57;
  }

  if ((IOMIGMachPortRegisterTerminationCallback(*(v19 + 32), __IOHIDEventSystemConnectionPortTerminateCallback, v19), IOMIGMachPortRegisterDemuxCallback(*(v19 + 32), __IOHIDEventSystemConnectionPortDemuxCallback, v19), Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v19 + 16) = Mutable) == 0) || (v53 = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]), (*(v19 + 80) = v53) == 0) || (v54 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]), (*(v19 + 280) = v54) == 0) || (v55 = malloc_type_calloc(0x2CuLL, 8uLL, 0x100004000313F17uLL), (*(v19 + 400) = v55) == 0) || ((v56 = _os_feature_enabled_impl(), v57 = CFStringGetSystemEncoding(), v58 = CFStringGetCStringPtr(v50, v57), !v56) ? (v59 = hid_dispatch_queue_create(v58, 0, kIOHIDServerConnectionRootQueue, 0, 0, 0)) : (v59 = hid_workloop_create(v58, 63, 2, 0)), (*(v19 + 96) = v59) == 0 || (*(v19 + 408) = 2, (v61 = _IOHIDLoadConnectionPluginBundles(v59, v60)) == 0)))
  {
LABEL_57:
    CFRelease(v19);
LABEL_58:
    if (name)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 1u, -1);
    }

    if (v72)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v72);
    }

    v19 = 0;
    goto LABEL_79;
  }

  v62 = v61;
  if (CFArrayGetCount(v61) < 1)
  {
LABEL_80:
    CFRelease(v50);
    return v19;
  }

  v63 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v62, v63);
    v65 = CFGetAllocator(v19);
    v66 = IOHIDConnectionFilterCreate(v65, ValueAtIndex, v19);
    if (v66)
    {
      break;
    }

    if (++v63 >= CFArrayGetCount(v62))
    {
      goto LABEL_79;
    }
  }

  v67 = v66;
  CFRetain(v19);
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 0x40000000;
  v75[2] = ___IOHIDEventSystemConnectionCreate_block_invoke;
  v75[3] = &__block_descriptor_tmp_25;
  v75[4] = v19;
  IOHIDConnectionFilterSetCancelHandler(v67, v75);
  *(v19 + 448) = v67;
  v68 = _IOHIDLogCategory(9);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = *(v19 + 168);
    *applier = 136315394;
    *&applier[4] = v69;
    *&applier[12] = 2112;
    *&applier[14] = v67;
    _os_log_impl(&dword_197195000, v68, OS_LOG_TYPE_DEFAULT, "%s: Connection filter added:%@", applier, 0x16u);
  }

LABEL_79:
  if (v50)
  {
    goto LABEL_80;
  }

  return v19;
}

uint64_t __IOHIDValidateInternalBuildEntitlement(void *a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = os_variant_allows_internal_security_policies();
  v7 = xpc_dictionary_get_value(a1, a2) == MEMORY[0x1E69E9E10];
  result = v7 & v6;
  if (v7 && (v6 & 1) == 0)
  {
    v9 = _IOHIDLogCategory(9);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v11 = 136315394;
      v12 = a3;
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_DEFAULT, "[%s] Process has entitlement %s on Non-Internal build", &v11, 0x16u);
      return 0;
    }
  }

  return result;
}

uint64_t __IOHIDEventServerDemuxCallback(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2[5];
  if (v3 >= dword_1F0B91E78 && v3 < unk_1F0B91E7C)
  {
    LOBYTE(result) = iohideventsystem_server(a2, a3);
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t _Xio_hideventsystem_open(uint64_t result, _DWORD *a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 4 || *(result + 4) != 104)
  {
    v3 = -304;
    goto LABEL_14;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1 || *(result + 67) != 1 || *(result + 82) << 16 != 1114112 || *(result + 52) != *(result + 96) || *(result + 68) != *(result + 100))
  {
    v3 = -300;
    goto LABEL_14;
  }

  if (*(result + 104) || *(result + 108) <= 0x1Fu)
  {
    v3 = -309;
LABEL_14:
    a2[8] = v3;
    goto LABEL_15;
  }

  *(a2 + 4) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 92);
  v7 = *(result + 40);
  v8 = *(result + 52);
  v9 = *(result + 56);
  v10 = *(result + 68);
  v11 = *(result + 72);
  v12 = *(result + 140);
  v13[0] = *(result + 124);
  v13[1] = v12;
  result = _io_hideventsystem_open(v4, v5, v6, v7, v8, v9, v10, v11, a2 + 7, v13);
  if (!result)
  {
    *a2 |= 0x80000000;
    a2[1] = 40;
    a2[6] = 1;
    return result;
  }

  a2[8] = result;
LABEL_15:
  *(a2 + 3) = *MEMORY[0x1E69E99E0];
  return result;
}

HIDConnection *_IOHIDEventSystemConnectionCreatePrivate(uint64_t a1)
{
  v1 = [HIDConnection allocWithZone:a1];

  return [(HIDConnection *)v1 init];
}

NSObject *hid_dispatch_queue_create_with_context_destructor(const char *a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v11 = dispatch_queue_create_with_target_V2(a1, a2, a3);
  if (v11)
  {
    v12 = v11;
    if (!(a4 | a5))
    {
      return v12;
    }

    v13 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
    if (v13)
    {
      *v13 = a4;
      v13[1] = a5;
      v13[2] = a6;
      v13[3] = a7;
      dispatch_queue_set_specific(v12, &sHIDExecutionCallbacksKey, v13, __hid_dispatch_queue_context_destructor);
      return v12;
    }

    dispatch_release(v12);
  }

  if (a7)
  {
    a7(a6);
  }

  return 0;
}

uint64_t _IOHIDLoadConnectionPluginBundles(uint64_t a1, uint64_t a2)
{
  if (_IOHIDLoadConnectionPluginBundles_onceToken != -1)
  {
    _IOHIDLoadConnectionPluginBundles_cold_1();
  }

  return __hidConnectionPluginBundles;
}

CFTypeRef IOHIDConnectionFilterCreate(uint64_t a1, __CFBundle *a2, NSObject *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!__kIOHIDConnectionFilterTypeID)
  {
    pthread_once(&__connectionFilterClientTypeInit, __IOHIDConnectionFilterRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  v6 = Instance;
  Instance[1] = 0u;
  v7 = Instance + 1;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[2] = 0u;
  InfoDictionary = CFBundleGetInfoDictionary(a2);
  if (!InfoDictionary || (v9 = InfoDictionary, (Value = CFDictionaryGetValue(InfoDictionary, @"NSPrincipalClass")) == 0) || (v11 = Value, v12 = CFGetTypeID(Value), v12 != CFStringGetTypeID()) || (v13 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"OBJC_CLASS_$_%@", v11)) == 0)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  DataPointerForName = CFBundleGetDataPointerForName(a2, v13);
  if (!DataPointerForName)
  {
    v22 = _IOHIDLogCategory(0);
    if (OUTLINED_FUNCTION_0_8(v22))
    {
      *buf = 138412546;
      v30 = v14;
      v31 = 2112;
      v32 = v9;
      v23 = "IOHIDConnectionFilterCreate failed to find symbol %@ for bundle %@";
      v24 = a3;
      v25 = 22;
LABEL_29:
      _os_log_error_impl(&dword_197195000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v16 = DataPointerForName;
  if (![DataPointerForName getUid("matchConnection:a3")])
  {
    goto LABEL_30;
  }

  v17 = [v16 getUid("alloc")];
  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = v17;
  if (![v17 getUid("initWithConnection:a3")])
  {
    v26 = _IOHIDLogCategory(0);
    if (!OUTLINED_FUNCTION_0_8(v26))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v23 = "IOHIDConnectionFilterCreate Failed to initialize plugin";
LABEL_28:
    v24 = a3;
    v25 = 2;
    goto LABEL_29;
  }

  *v7 = v18;
  Protocol = objc_getProtocol("HIDConnectionPlugin");
  if (!Protocol)
  {
    v27 = _IOHIDLogCategory(0);
    if (!OUTLINED_FUNCTION_0_8(v27))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v23 = "IOHIDConnectionFilterCreate Failed to find HIDConnectionPlugin protocol";
    goto LABEL_28;
  }

  if (!class_conformsToProtocol(v16, Protocol))
  {
    v28 = _IOHIDLogCategory(0);
    if (OUTLINED_FUNCTION_0_8(v28))
    {
      *buf = 0;
      v23 = "IOHIDConnectionFilterCreate class does not conform to HIDConnectionPlugin protocol";
      goto LABEL_28;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_15;
  }

  v6[3] = sel_getUid("propertyForKey:");
  v6[4] = sel_getUid("setProperty:forKey:");
  v6[9] = sel_getUid("filterEvent:");
  v6[5] = sel_getUid("setCancelHandler:");
  v6[8] = sel_getUid("setDispatchQueue:");
  v6[6] = sel_getUid("activate");
  v6[7] = sel_getUid("cancel");
  v20 = CFRetain(v6);
LABEL_15:
  CFRelease(v14);
LABEL_16:
  CFRelease(v6);
  return v20;
}

const __CFDictionary *IOHIDEventSystemConnectionGetAttribute(uint64_t a1, const void *a2)
{
  result = *(a1 + 184);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void __IOHIDConnectionFilterRelease(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t _IOHIDEventSystemConnectionRegisterDemuxCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;

  return os_unfair_recursive_lock_unlock();
}

void _IOHIDEventSystemAddConnection(CFMutableSetRef *a1, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  Type = IOHIDEventSystemConnectionGetType(a2);
  v5 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = a2;
    _os_log_impl(&dword_197195000, v5, OS_LOG_TYPE_DEFAULT, "Connection added: %{public}@", &v12, 0xCu);
  }

  os_unfair_recursive_lock_lock_with_options();
  v6 = &a1[3 * Type];
  v7 = v6[23];
  v8 = v6[24];
  v9 = v6[25];
  CFSetAddValue(a1[6], a2);
  if (Type <= 4)
  {
    CFSetAddValue(*(a1 + qword_19723DA40[Type]), a2);
  }

  v10 = CFGetAllocator(a1);
  Copy = CFSetCreateCopy(v10, a1[53]);
  os_unfair_recursive_lock_unlock();
  if (Copy)
  {
    CFSetApplyFunction(Copy, _IOHIDEventSystemConnectionRecordClientChanged, 0);
    CFRelease(Copy);
  }

  if (v8)
  {
    v8(v7, v9, a2);
  }
}

id _IOHIDEventSystemConnectionScheduleAsync(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E96E0], *(a1 + 40), 8uLL, *(a1 + 96));
  *(a1 + 120) = v2;
  if (v2)
  {
    CFRetain(a1);
    dispatch_source_set_registration_handler(*(a1 + 120), &__block_literal_global_15);
    v3 = *(a1 + 120);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___IOHIDEventSystemConnectionScheduleAsync_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_15_1;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    v4 = *(a1 + 120);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___IOHIDEventSystemConnectionScheduleAsync_block_invoke_3;
    v7[3] = &__block_descriptor_tmp_16;
    v7[4] = a1;
    dispatch_source_set_cancel_handler(v4, v7);
    dispatch_resume(*(a1 + 120));
  }

  else
  {
    v5 = _IOHIDLogCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _IOHIDEventSystemConnectionScheduleAsync_cold_1();
    }
  }

  IOMIGMachPortScheduleWithDispatchQueue(*(a1 + 32), *(a1 + 96));
  result = *(a1 + 448);
  if (result)
  {
    IOHIDConnectionFilterSetDispatchQueue(result, *(a1 + 96));
    return IOHIDConnectionFilterActivate(*(a1 + 448));
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionRegisterTerminationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOMIGMachPortScheduleWithDispatchQueue(uint64_t a1, NSObject *a2)
{
  result = CFMachPortGetPort(*(a1 + 48));
  *(a1 + 32) = a2;
  if (a2)
  {
    if (!*(a1 + 40))
    {
      dispatch_queue_get_label(a2);
      result = dispatch_mach_create_f();
      if (result)
      {
        *(a1 + 40) = result;
        CFRetain(a1);

        return dispatch_mach_connect();
      }
    }
  }

  return result;
}

void IOHIDEventSystemClientSetMatchingMultiple(uint64_t a1, const __CFArray *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *MEMORY[0x1E695E480];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a1 + 96));
  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  CFSetRemoveAllValues(*(a1 + 112));
  CFDictionaryRemoveAllValues(*(a1 + 96));
  v7 = io_hideventsystem_clear_service_cache(*(a1 + 32));
  if (v7 == 268435459 && !*(a1 + 384) && !*(a1 + 400))
  {
    __IOHIDEventSystemClientTerminationCallback(v7, a1, 1);
    io_hideventsystem_clear_service_cache(*(a1 + 32));
  }

  os_unfair_recursive_lock_unlock();
  if (a2)
  {
    os_unfair_recursive_lock_lock_with_options();
    *(a1 + 80) = CFArrayCreateCopy(v4, a2);
    os_unfair_recursive_lock_unlock();
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 == CFDictionaryGetTypeID())
        {
          __IOHIDEventSystemClientCacheMatchingServices(a1, ValueAtIndex, &value);
          if (value)
          {
            os_unfair_recursive_lock_lock_with_options();
            CFSetAddValue(*(a1 + 112), value);
            os_unfair_recursive_lock_unlock();
            CFRelease(value);
          }
        }
      }
    }
  }

  else
  {
    value = 0;
    __IOHIDEventSystemClientCacheMatchingServices(a1, 0, &value);
    if (value)
    {
      os_unfair_recursive_lock_lock_with_options();
      CFSetAddValue(*(a1 + 112), value);
      os_unfair_recursive_lock_unlock();
      CFRelease(value);
    }
  }

  if (Copy)
  {
    os_unfair_recursive_lock_lock_with_options();
    CFDictionaryApplyFunction(Copy, __IOHIDEventSystemClientServiceReplaceCallback, *(a1 + 96));
    v13 = CFGetAllocator(a1);
    v14 = CFDictionaryCreateCopy(v13, *(a1 + 96));
    os_unfair_recursive_lock_unlock();
    __IOHIDEventSystemClientHandleServiceCacheRefresh(a1, Copy, v14);
    CFRelease(v14);
    CFRelease(Copy);
  }
}

uint64_t io_hideventsystem_clear_service_cache(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x1117300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

void __IOHIDEventSystemClientCacheMatchingServices(uint64_t a1, const void *a2, const void **a3)
{
  memset(length, 0, sizeof(length));
  v26 = 0;
  v25 = 0;
  if (a3)
  {
    v6 = &length[1];
  }

  else
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = length;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], a2);
    v9 = v8;
    if (v8)
    {
      BytePtr = CFDataGetBytePtr(v8);
      v11 = CFDataGetLength(v9);
    }

    else
    {
      v11 = 0;
      BytePtr = 0;
    }
  }

  else
  {
    v11 = 0;
    BytePtr = 0;
    v9 = 0;
  }

  os_unfair_recursive_lock_lock_with_options();
  v12 = io_hideventsystem_copy_matching_services(*(a1 + 32), BytePtr, v11, v6, v7, &v26, &v25);
  v13 = v12;
  if (v12 == 268435459)
  {
    if (*(a1 + 384))
    {
      os_unfair_recursive_lock_unlock();
LABEL_17:
      v14 = 0;
      goto LABEL_18;
    }

    __IOHIDEventSystemClientTerminationCallback(v12, a1, 0);
    v13 = io_hideventsystem_copy_matching_services(*(a1 + 32), BytePtr, v11, v6, v7, &v26, &v25);
  }

  os_unfair_recursive_lock_unlock();
  if (v13)
  {
    goto LABEL_17;
  }

  v15 = v26;
  v16 = v25;
  TypeID = CFArrayGetTypeID();
  v14 = _IOHIDUnserializeAndVMDeallocWithTypeID(v15, v16, TypeID);
  v18 = _IOHIDUnserializeAndVMDealloc(*&length[1], length[0]);
  if (v18)
  {
    v19 = v18;
    if (a3)
    {
      v20 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v22 = Mutable;
        CFDictionarySetValue(Mutable, @"id", v19);
        if (a2)
        {
          Copy = CFDictionaryCreateCopy(v20, a2);
          CFDictionarySetValue(v22, @"matching", Copy);
          CFRelease(Copy);
        }

        v24 = IOHIDNotificationCreate(v20, __IOHIDEventSystemClientMatchNotifyRelease, a1, v22, 0, 0, 0);
        *a3 = v24;
        if (v24)
        {
          os_unfair_recursive_lock_lock_with_options();
          CFDictionaryAddValue(*(a1 + 88), v19, *a3);
          os_unfair_recursive_lock_unlock();
        }
      }
    }

    CFRelease(v19);
  }

LABEL_18:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v14)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = ____IOHIDEventSystemClientCacheServices_block_invoke;
    v28[3] = &__block_descriptor_tmp_132;
    v28[4] = a1;
    _IOHIDCFArrayApplyBlock(v14, v28);
    CFRelease(v14);
  }
}

uint64_t io_hideventsystem_copy_matching_services(mach_port_t a1, uint64_t a2, int a3, uint64_t *a4, int *a5, void *a6, _DWORD *a7)
{
  msg.msgh_id = 0;
  v24 = 0;
  v25 = 0u;
  v26 = 0u;
  *&msg.msgh_size = 0u;
  v20 = 1;
  v21 = a2;
  v22 = 16777472;
  v23 = a3;
  v24 = *MEMORY[0x1E69E99E0];
  LODWORD(v25) = a3;
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x1117100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&msg, 3162115, 0x38u, 0x54u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 70101)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v21))
            {
              if (msg.msgh_remote_port)
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = HIDWORD(v21);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_30;
        }

        v15 = 4294966996;
        if (v20 == 2 && msg.msgh_size == 76 && !msg.msgh_remote_port && HIBYTE(v22) == 1 && BYTE3(v25) == 1)
        {
          v16 = v23;
          if (v23 == v26)
          {
            v17 = DWORD1(v25);
            if (DWORD1(v25) == DWORD1(v26))
            {
              v15 = 0;
              *a4 = v21;
              *a5 = v16;
              *a6 = v24;
              *a7 = v17;
              return v15;
            }
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v15;
}

uint64_t _io_hideventsystem_clear_service_cache(unsigned int a1)
{
  v1 = IOMIGMachPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == IOHIDEventSystemConnectionGetTypeID())
    {
      _IOHIDEventSystemConnectionRemoveAllServices(v2);
    }

    CFRelease(v2);
  }

  return 0;
}

_DWORD *_Xio_hideventsystem_clear_service_cache(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _io_hideventsystem_clear_service_cache(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

void _IOHIDEventSystemConnectionRemoveAllServices(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 8);
  v3 = CFGetAllocator(a1);
  Copy = CFSetCreateCopy(v3, *(a1 + 80));
  CFSetRemoveAllValues(*(a1 + 80));
  os_unfair_recursive_lock_unlock();
  if (v2 && Copy)
  {
    _IOHIDEventSystemRemoveServicesForConnection(v2, Copy, a1);
  }

  else if (!Copy)
  {
    return;
  }

  CFRelease(Copy);
}

uint64_t _Xio_hideventsystem_copy_matching_services(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
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
  *(a2 + 52) = 16777473;
  result = _io_hideventsystem_copy_matching_services(*(result + 12), *(result + 28), *(result + 40), a2 + 28, a2 + 68, a2 + 44, a2 + 72);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(a2 + 72);
  *(a2 + 40) = *(a2 + 68);
  *(a2 + 56) = v4;
  *(a2 + 60) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 76;
  *(a2 + 24) = 2;
  return result;
}

void __IOHIDEventSystemCopyMatchingServices(CFDictionaryRef *cf, const __CFDictionary *a2, uint64_t a3, CFTypeRef a4, uint64_t a5, void *a6, void *a7)
{
  MutableCopy = a2;
  if (a2)
  {
    v14 = CFGetAllocator(cf);
    MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, MutableCopy);
  }

  if (a4)
  {
    v15 = CFGetTypeID(a4);
    if (v15 == IOHIDEventSystemConnectionGetTypeID())
    {
      v16 = a4;
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

  context[0] = 0;
  context[1] = MutableCopy;
  context[2] = v16;
  os_unfair_recursive_lock_lock_with_options();
  if (a3)
  {
    if (a6)
    {
      v17 = CFGetAllocator(cf);
      v18 = IOHIDNotificationCreate(v17, __IOHIDEventSystemMatchNotifyRelease, cf, MutableCopy, a3, a4, a5);
      if (v18)
      {
        v19 = v18;
        if (MutableCopy)
        {
          CFRetain(MutableCopy);
        }

        CFSetAddValue(cf[5], v19);
        *a6 = v19;
      }
    }
  }

  if (a7 && CFDictionaryGetCount(cf[2]))
  {
    v20 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v20, cf[2]);
    os_unfair_recursive_lock_unlock();
    if (Copy)
    {
      CFDictionaryApplyFunction(Copy, __IOHIDEventSystemCompareServiceFunction, context);
      CFRelease(Copy);
      v22 = context[0];
    }

    else
    {
      v22 = 0;
    }

    *a7 = v22;
    os_unfair_recursive_lock_lock_with_options();
  }

  os_unfair_recursive_lock_unlock();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

uint64_t IOHIDEventSystemCopyMatchingServices(CFDictionaryRef *a1, const __CFDictionary *a2, uint64_t a3, const void *a4, uint64_t a5, void *a6)
{
  v7 = 0;
  __IOHIDEventSystemCopyMatchingServices(a1, a2, a3, a4, a5, a6, &v7);
  return v7;
}

void *IOHIDNotificationCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __kIOHIDNotificationTypeID;
  if (!__kIOHIDNotificationTypeID)
  {
    pthread_once(&__notificationTypeInit, __IOHIDNotificationRegister);
    v14 = __kIOHIDNotificationTypeID;
  }

  result = _IOHIDObjectCreateInstance(a1, v14, 0x50uLL);
  if (result)
  {
    result[3] = a5;
    result[4] = a6;
    result[5] = a7;
    result[6] = a2;
    result[7] = a3;
    result[8] = a4;
    result[10] = 0;
    result[11] = 0;
  }

  return result;
}

void __IOHIDEventSystemCompareServiceFunction(uint64_t a1, const void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  if (v5 && (v6 = CFGetTypeID(v5), v6 == IOHIDEventSystemConnectionGetTypeID()) && (v7 = *(a3 + 16)) != 0 && (UUID = IOHIDEventSystemConnectionGetUUID(*(a3 + 16)), _IOHIDServiceIsProtected(a2)) && (v9 = IOHIDServiceCheckEntitlements(a2, v7), !v9))
  {
    v12 = _IOHIDLogCategory(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = UUID;
      v15 = 2112;
      RegistryID = IOHIDServiceGetRegistryID(a2);
      _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_DEFAULT, "Connection: %@ not entitled to match protected service: %@", &v13, 0x16u);
    }
  }

  else if (!_IOHIDServiceIsInactive(a2))
  {
    if (IOHIDServiceMatchPropertyTable(a2, *(a3 + 8)))
    {
      Mutable = *a3;
      if (*a3 || (v11 = CFGetAllocator(a2), Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]), (*a3 = Mutable) != 0))
      {

        CFArrayAppendValue(Mutable, a2);
      }
    }
  }
}

uint64_t _IOHIDServiceMatchPropertyTable(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = theDict;
  context = a1;
  v9 = 1;
  if (*(a1 + 224))
  {
    return 0;
  }

  if (a3 || !*(a1 + 300))
  {
    goto LABEL_3;
  }

  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryContainsKey(theDict, @"Hidden");
  if (!result)
  {
    return result;
  }

LABEL_3:
  if (*(a1 + 304))
  {
    if (!theDict)
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (!theDict || !CFDictionaryContainsKey(theDict, @"Unregistered"))
  {
    v6 = _IOHIDLogCategory(0);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = *(a1 + 400);
    *buf = 134217984;
    v12 = v7;
    _os_log_impl(&dword_197195000, v6, OS_LOG_TYPE_DEFAULT, "Service:0x%llx  is unregistered, not matching", buf, 0xCu);
    return 0;
  }

LABEL_12:
  result = CFDictionaryGetCount(theDict);
  if (result)
  {
    CFDictionaryApplyFunction(theDict, __IOHIDServiceComparePropertyFunction, &context);
    return v9;
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionAddNotification(uint64_t a1, const void *a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  CFDictionaryAddValue(*(a1 + 16), a2, a3);

  return os_unfair_recursive_lock_unlock();
}

const __CFArray *_IOHIDCopyServiceClientInfo(const __CFArray *cf)
{
  v1 = cf;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (cf)
  {
    v2 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    v7[3] = Mutable;
    if (Mutable)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = ___IOHIDCopyServiceClientInfo_block_invoke;
      v5[3] = &unk_1E74A90E8;
      v5[4] = &v6;
      _IOHIDCFArrayApplyBlock(v1, v5);
      v1 = v7[3];
    }

    else
    {
      v1 = 0;
    }
  }

  _Block_object_dispose(&v6, 8);
  return v1;
}

void _IOHIDEventSystemConnectionAddServices(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t a1, const void *a2), void *a15, uint64_t a16, uint64_t a17, int valuePtr, int a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_18_1();
  a34 = v35;
  a35 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  a23 = *MEMORY[0x1E69E9840];
  v43 = *(v41 + 8);
  v44 = *(v41 + 40);
  v45 = *(v41 + 176);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v47 = Mutable;
    v76 = v44;
    a12 = MEMORY[0x1E69E9820];
    a13 = 0x40000000;
    a14 = ___IOHIDEventSystemConnectionAddServices_block_invoke;
    a15 = &__block_descriptor_tmp_28_0;
    a16 = v42;
    a17 = Mutable;
    _IOHIDCFArrayApplyBlock(v40, &a12);
    if (!CFArrayGetCount(v47))
    {
      goto LABEL_29;
    }

    Count = CFArrayGetCount(v47);
    if (Count >= 1)
    {
      v49 = Count;
      for (i = 0; i != v49; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v47, i);
        v52 = ValueAtIndex;
        if (v45 == 2)
        {
          v53 = _IOHIDServiceCopyPropertyForClient(ValueAtIndex, @"QueueSize", v42);
          if (v53)
          {
            v54 = v53;
            valuePtr = 0;
            CFNumberGetValue(v53, kCFNumberSInt32Type, &valuePtr);
            CFRelease(v54);
            if (!valuePtr)
            {
              continue;
            }
          }
        }

        os_unfair_recursive_lock_lock_with_options();
        CFSetAddValue(*(v42 + 80), v52);
        os_unfair_recursive_lock_unlock();
        _IOHIDEventSystemAddServiceForConnection(v43, v52, v42);
      }
    }

    if (!v38)
    {
      goto LABEL_29;
    }

    v55 = CFGetAllocator(v42);
    v56 = _IOHIDCreateBinaryData(v55, v38);
    if (!v56)
    {
      goto LABEL_29;
    }

    v57 = v56;
    v58 = _IOHIDCopyServiceClientInfo(v47);
    if (!v58)
    {
LABEL_28:
      CFRelease(v57);
LABEL_29:
      CFRelease(v47);
      goto LABEL_30;
    }

    v59 = v58;
    v60 = CFGetAllocator(v42);
    v61 = _IOHIDCreateBinaryData(v60, v59);
    if (!v61)
    {
LABEL_27:
      CFRelease(v59);
      goto LABEL_28;
    }

    v62 = v61;
    if (!*(v42 + 456))
    {
      BytePtr = CFDataGetBytePtr(v57);
      Length = CFDataGetLength(v57);
      v65 = CFDataGetBytePtr(v62);
      v66 = CFDataGetLength(v62);
      v67 = iohideventsystem_client_dispatch_notification_results(v76, BytePtr, Length, v65, v66, 0);
      v68 = v67;
      if ((v67 - 268435459) < 2)
      {
        v74 = _IOHIDLogCategory(9);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_9_3();
          *(&a21 + 2) = v68;
          v72 = v74;
          v73 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_22;
        }

LABEL_25:
        __IOHIDEventSystemConnectionCheckServerStatus(v68, v42);
        goto LABEL_26;
      }

      if (v67)
      {
        OUTLINED_FUNCTION_17_1();
        if (v68 != v69)
        {
          v75 = _IOHIDLogCategory(9);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_9_3();
            *(&a21 + 2) = v68;
            _os_log_error_impl(&dword_197195000, v75, OS_LOG_TYPE_ERROR, "%s: iohideventsystem_client_dispatch_notification_results:0x%x", &valuePtr, 0x12u);
          }

          goto LABEL_25;
        }

        v70 = _IOHIDLogCategory(9);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_17_1();
          *(&a21 + 2) = v71;
          v72 = v70;
          v73 = OS_LOG_TYPE_INFO;
LABEL_22:
          _os_log_impl(&dword_197195000, v72, v73, "%s: iohideventsystem_client_dispatch_notification_results:0x%x", &valuePtr, 0x12u);
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

LABEL_26:
    CFRelease(v62);
    goto LABEL_27;
  }

LABEL_30:
  OUTLINED_FUNCTION_19_0();
}

BOOL _IOHIDEventSystemConnectionContainsService(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = CFSetContainsValue(*(a1 + 80), a2) != 0;
  os_unfair_recursive_lock_unlock();
  return v4;
}

uint64_t _IOHIDEventSystemAddServiceForConnection(CFSetRef *a1, uint64_t a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = CFSetContainsValue(a1[7], a3);
  v7 = CFSetContainsValue(a1[8], a3);
  v8 = a1[10];
  v12.length = CFArrayGetCount(v8);
  v12.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v12, a3);
  result = os_unfair_recursive_lock_unlock();
  if (v6)
  {
    result = _IOHIDServiceAddConnection(a2, a3, 0);
  }

  if (v7)
  {
    result = _IOHIDServiceAddConnection(a2, a3, 2);
  }

  if (FirstIndexOfValue != -1)
  {

    return _IOHIDServiceAddConnection(a2, a3, 1);
  }

  return result;
}

void *_IOHIDServiceClientCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, uint64_t a4)
{
  if (_IOHIDServiceClientCreate_onceToken == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  _IOHIDServiceClientCreate_cold_1();
  if (!a2)
  {
    return 0;
  }

LABEL_3:
  Private = _IOHIDServiceClientCreatePrivate();
  v9 = Private;
  if (Private)
  {
    *(Private + 8) = a4;
    *(Private + 16) = CFRetain(a2);
    v9[12] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9[11] = 0;
    v9[3] = 0;
    _IOHIDServiceClientCacheProperties(v9, a3);
  }

  return v9;
}

void _IOHIDServiceClientCacheProperties(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    LODWORD(v23) = 0;
    Value = CFDictionaryGetValue(theDict, @"PrimaryUsagePage");
    if (Value && (v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()))
    {
      v6 = OUTLINED_FUNCTION_6_2();
      CFNumberGetValue(v6, v7, v8);
      v9 = v23;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 128) = v9;
    LODWORD(v23) = 0;
    v10 = CFDictionaryGetValue(theDict, @"PrimaryUsage");
    if (v10 && (v11 = CFGetTypeID(v10), v11 == CFNumberGetTypeID()))
    {
      v12 = OUTLINED_FUNCTION_6_2();
      CFNumberGetValue(v12, v13, v14);
      v15 = v23;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 132) = v15;
    v16 = CFDictionaryGetValue(theDict, @"DeviceUsagePairs");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFArrayGetTypeID())
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x2000000000;
        Count = CFArrayGetCount(v17);
        v19 = *(v24 + 6);
        if (v19)
        {
          v20 = malloc_type_calloc(1uLL, 8 * v19, 0x100004000313F17uLL);
          *(a1 + 136) = v20;
          if (v20)
          {
            v21 = v24;
            *(a1 + 144) = *(v24 + 6);
            *(v21 + 6) = 0;
            OUTLINED_FUNCTION_0_15();
            v22[1] = 0x40000000;
            v22[2] = ___IOHIDServiceClientCacheProperties_block_invoke;
            v22[3] = &unk_1E74A9130;
            v22[4] = &v23;
            v22[5] = a1;
            _IOHIDCFArrayApplyBlock(v17, v22);
          }
        }

        _Block_object_dispose(&v23, 8);
      }
    }
  }
}

const __CFDictionary *_IOHIDServiceClientRefresh(CFDictionaryRef *a1)
{
  result = os_unfair_recursive_lock_lock_with_options();
  if (a1)
  {
    result = a1[12];
    if (result)
    {
      Value = CFDictionaryGetValue(result, @"ReportInterval");
      if (Value)
      {
        _IOHIDServiceClientRefresh_cold_1((a1 + 11), a1, Value);
      }

      v4 = CFDictionaryGetValue(a1[12], @"BatchInterval");
      result = os_unfair_recursive_lock_unlock();
      if (v4)
      {

        return IOHIDServiceClientSetProperty(a1, @"BatchInterval", v4);
      }
    }
  }

  return result;
}

uint64_t __IOHIDNotificationRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDNotificationTypeID = result;
  return result;
}

uint64_t __IOHIDEventSystemClientStartQueue(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 200) == 0;
  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(a1 + 32);
  if (v3 && !v2 && (*(a1 + 384) || *(a1 + 400)))
  {
    if (io_hideventsystem_queue_start(v3))
    {
      v4 = _IOHIDLogCategory(13);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __IOHIDEventSystemClientStartQueue_cold_1();
      }
    }
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t __IOHIDEventSystemClientStartFilter(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 32);
  if (v2 && (*(a1 + 232) || *(a1 + 240)) && (*(a1 + 384) || *(a1 + 400)))
  {
    io_hideventsystem_register_event_filter(v2, *(a1 + 264));
  }

  return os_unfair_recursive_lock_unlock();
}

CFTypeRef IOHIDEventSystemClientCopyProperty(IOHIDEventSystemClientRef client, CFStringRef key)
{
  result = 0;
  length = 0;
  bytes = 0;
  if (client && key)
  {
    v4 = _IOHIDCreateBinaryData(*MEMORY[0x1E695E480], key);
    if (!v4)
    {
      return _IOHIDUnserializeAndVMDealloc(bytes, HIDWORD(length));
    }

    v5 = v4;
    BytePtr = CFDataGetBytePtr(v4);
    v7 = CFDataGetLength(v5);
    os_unfair_recursive_lock_lock_with_options();
    v8 = io_hideventsystem_copy_property(*(client + 8), BytePtr, v7, &bytes, &length + 1, &length);
    v9 = v8;
    if (v8 == 268435459)
    {
      if (*(client + 48))
      {
        v9 = 268435459;
      }

      else
      {
        v9 = 268435459;
        if (!*(client + 50))
        {
          __IOHIDEventSystemClientTerminationCallback(v8, client, 0);
          v9 = io_hideventsystem_copy_property(*(client + 8), BytePtr, v7, &bytes, &length + 1, &length);
        }
      }
    }

    os_unfair_recursive_lock_unlock();
    CFRelease(v5);
    if (v9 | length)
    {
      return 0;
    }

    else
    {
      return _IOHIDUnserializeAndVMDealloc(bytes, HIDWORD(length));
    }
  }

  return result;
}

uint64_t io_hideventsystem_copy_property(mach_port_t a1, uint64_t a2, int a3, uint64_t *a4, int *a5, _DWORD *a6)
{
  msg.msgh_id = 0;
  v21 = 0;
  v22 = 0u;
  *&msg.msgh_size = 0u;
  v17 = 1;
  v18 = a2;
  v19 = 16777472;
  v20 = a3;
  v21 = *MEMORY[0x1E69E99E0];
  LODWORD(v22) = a3;
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x1117E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x38u, 0x44u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 70114)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v13 = 4294966996;
            if (HIDWORD(v18))
            {
              if (msg.msgh_remote_port)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = HIDWORD(v18);
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_28;
        }

        v13 = 4294966996;
        if (v17 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v19) == 1)
        {
          v14 = v20;
          if (v20 == v22)
          {
            v13 = 0;
            *a4 = v18;
            *a5 = v14;
            *a6 = DWORD1(v22);
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_28;
  }

  return v13;
}

uint64_t _Xio_hideventsystem_copy_property(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
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
  result = _io_hideventsystem_copy_property(*(result + 12), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _io_hideventsystem_copy_property(unsigned int a1, UInt8 *a2, unsigned int a3, vm_offset_t *a4, _DWORD *a5, int *a6)
{
  *a5 = 0;
  v11 = a3;
  TypeID = CFStringGetTypeID();
  v13 = _IOHIDUnserializeAndVMDeallocWithTypeID(a2, v11, TypeID);
  if (v13)
  {
    v14 = v13;
    v15 = IOMIGMachPortCacheCopy(a1);
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == IOHIDEventSystemConnectionGetTypeID() && (System = _IOHIDEventSystemConnectionGetSystem(v16), a4) && ((v19 = System, IOHIDEventSystemConnectionGetType(v16) != 4) || CFSetContainsValue(__whiteListSet, v14)))
      {
        v20 = _IOHIDEventSystemCopyPropertyForConnection(v19, v14, v16);
        if (v20)
        {
          v21 = v20;
          *a5 = _IOHIDSerialize(v20, a4);
          CFRelease(v21);
        }

        v22 = 0;
      }

      else
      {
        v22 = -536870206;
      }

      *a6 = v22;
      CFRelease(v14);
      v23 = v16;
    }

    else
    {
      *a6 = -536870206;
      v23 = v14;
    }

    CFRelease(v23);
  }

  else
  {
    *a6 = -536870206;
  }

  return 0;
}

__CFArray *_IOHIDEventSystemCopyPropertyForConnection(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(a1 + 128);
  result = _IOHIDEventSystemConnectionCopyProperty(a3, a2);
  if (!result)
  {

    return _IOHIDSessionCopyPropertyForClient(v5, a2, a3);
  }

  return result;
}

__CFString *IOHIDSessionFilterGetPropertyForClient(uint64_t a1, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"HIDObjectUUID"))
  {
    return *(a1 + 32);
  }

  v5 = *(a1 + 16);
  if (v5 && (v6 = *(*v5 + 120)) != 0)
  {
    v7 = v6();
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v7 = [v8 *(a1 + 64)];
      if (CFEqual(cf1, @"SessionFilterDebug") && v7)
      {
        CFRetain(v7);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (!CFEqual(cf1, @"SessionFilterDebug"))
  {
    return v7;
  }

  v9 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return v7;
  }

  v4 = Mutable;
  if (v7)
  {
    v11 = _IOHIDIsSerializable(v7);
    if (v11)
    {
      v13 = v4;
      v14 = v7;
    }

    else
    {
      v15 = _IOHIDLog(v11, v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        IOHIDSessionFilterGetPropertyForClient_cold_1(a1, v15);
      }

      v14 = @"not serializable";
      v13 = v4;
    }

    CFDictionaryAddValue(v13, @"plugin", v14);
    CFRelease(v7);
  }

  v16 = CFGetAllocator(a1);
  v17 = CFUUIDCreateString(v16, *(a1 + 32));
  if (v17)
  {
    v18 = v17;
    CFDictionaryAddValue(v4, @"uuid", v17);
    CFRelease(v18);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    CFDictionaryAddValue(v4, @"name", v19);
  }

  return v4;
}

CFNumberRef _IOHIDEventSystemConnectionCopyProperty(void *a1, CFTypeRef cf2)
{
  if (*MEMORY[0x1E695E738] == a1)
  {
    return 0;
  }

  v4 = a1[56];
  if (v4)
  {
    result = IOHIDConnectionFilterCopyProperty(v4, cf2);
    if (result)
    {
      return result;
    }
  }

  if (!CFEqual(@"HIDActivityState", cf2))
  {
    if (CFEqual(cf2, @"IdleNotificationTime"))
    {
      v6 = kCFNumberSInt64Type;
      v7 = 52;
      goto LABEL_8;
    }

    return 0;
  }

  v6 = kCFNumberSInt32Type;
  v7 = 51;
LABEL_8:
  v8 = CFGetAllocator(a1);

  return CFNumberCreate(v8, v6, &a1[v7]);
}

__CFArray *_IOHIDSessionCopyPropertyForClient(uint64_t a1, const void *a2, const void *a3)
{
  v5 = a1;
  v71[2] = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 8)))
  {
    __IOHIDSessionCreate_block_invoke_cold_1(v71, valuePtr);
  }

  ++**(v5 + 32);
  if (CFEqual(a2, @"LastActivityTimestamp"))
  {
    v6 = CFGetAllocator(v5);
    v7 = CFNumberCreate(v6, kCFNumberSInt64Type, (v5 + 168));
    CFDictionarySetValue(*(v5 + 120), a2, v7);
    CFRelease(v7);
  }

  if (CFEqual(a2, @"LastActivityTime"))
  {
    *valuePtr = *(v5 + 176) | (*(v5 + 184) << 32);
    v8 = CFGetAllocator(v5);
    v9 = CFNumberCreate(v8, kCFNumberSInt64Type, valuePtr);
    CFDictionarySetValue(*(v5 + 120), a2, v9);
    CFRelease(v9);
  }

  if (CFEqual(a2, @"HIDIdleTimeMicroseconds"))
  {
    v10 = mach_continuous_time();
    *valuePtr = _IOHIDGetTimestampDelta(v10, *(v5 + 168), 0x3E8u);
    v11 = CFGetAllocator(v5);
    v12 = CFNumberCreate(v11, kCFNumberSInt64Type, valuePtr);
    CFDictionarySetValue(*(v5 + 120), a2, v12);
    CFRelease(v12);
  }

  if (CFEqual(a2, @"ServiceRecords"))
  {
    if (a3)
    {
      v13 = *(v5 + 8);
      if (v13)
      {
        v14 = IOHIDEventSystemCopyServices(v13, 0);
        if (v14)
        {
          v15 = v14;
          v63 = v5;
          v16 = *MEMORY[0x1E695E480];
          Count = CFArrayGetCount(v14);
          Mutable = CFArrayCreateMutable(v16, Count, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v19 = CFArrayGetCount(v15);
            if (v19 >= 1)
            {
              v20 = v19;
              v21 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v15, v21);
                if (!ValueAtIndex)
                {
                  goto LABEL_32;
                }

                v23 = ValueAtIndex;
                v24 = _IOHIDServiceCopyServiceRecordForClient(ValueAtIndex, a3);
                if (v24)
                {
                  break;
                }

LABEL_28:
                if (v20 == ++v21)
                {
                  goto LABEL_32;
                }
              }

              v26 = v24;
              v27 = _IOHIDLog(v24, v25);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *valuePtr = 138412290;
                *&valuePtr[4] = v23;
                _os_log_impl(&dword_197195000, v27, OS_LOG_TYPE_INFO, "Creating deep copy of record belonging to service: %@", valuePtr, 0xCu);
              }

              DeepCopy = CFPropertyListCreateDeepCopy(v16, v26, 0);
              v29 = DeepCopy;
              if (DeepCopy && (v30 = CFGetTypeID(DeepCopy), v30 == CFDictionaryGetTypeID()))
              {
                CFArrayAppendValue(Mutable, v29);
              }

              else
              {
                v31 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v31)
                {
                  v33 = v31;
                  RegistryID = IOHIDServiceGetRegistryID(v23);
                  CFDictionarySetValue(v33, @"ServiceID", RegistryID);
                  CFArrayAppendValue(Mutable, v33);
                  CFRelease(v33);
                }

                v35 = _IOHIDLog(v31, v32);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  _IOHIDSessionCopyPropertyForClient_cold_2(v71, v23, (v71 + 4), v35);
                  if (!v29)
                  {
                    goto LABEL_27;
                  }
                }

                else if (!v29)
                {
LABEL_27:
                  CFRelease(v26);
                  goto LABEL_28;
                }
              }

              CFRelease(v29);
              goto LABEL_27;
            }
          }

LABEL_32:
          v36 = v15;
LABEL_33:
          CFRelease(v36);
LABEL_34:
          v5 = v63;
          goto LABEL_35;
        }
      }
    }

    goto LABEL_82;
  }

  if (CFEqual(a2, @"ClientRecords"))
  {
    if (a3)
    {
      v65 = *(v5 + 8);
      if (v65)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          goto LABEL_35;
        }

        v63 = v5;
        cf = 0;
        for (i = 0; i != 5; ++i)
        {
          v40 = IOHIDEventSystemCopyConnections(v65, i);
          v41 = v40 == 0;
          if (!v40)
          {
            break;
          }

          if (!i)
          {
            v42 = _IOHIDEventSystemCopyRecord(v65);
            if (!v42)
            {
              goto LABEL_75;
            }

            cf = v42;
            CFArrayAppendValue(Mutable, v42);
          }

          v43 = CFArrayGetCount(v40);
          if (v43 >= 1)
          {
            v44 = v43;
            v45 = 0;
            while (1)
            {
              v46 = CFArrayGetValueAtIndex(v40, v45);
              if (!v46)
              {
                break;
              }

              v47 = v46;
              if (v46 != a3)
              {
                v48 = _IOHIDEventSystemConnectionCopyRecord(v46);
                if (!v48)
                {
                  break;
                }

                v49 = v48;
                v50 = _IOHIDIsSerializable(v48);
                if (v50)
                {
                  CFArrayAppendValue(Mutable, v49);
                }

                else
                {
                  v52 = _IOHIDLog(v50, v51);
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *valuePtr = 138412290;
                    *&valuePtr[4] = v47;
                    _os_log_error_impl(&dword_197195000, v52, OS_LOG_TYPE_ERROR, "Client record is not serializable for %@", valuePtr, 0xCu);
                  }
                }

                CFRelease(v49);
              }

              if (v44 == ++v45)
              {
                goto LABEL_58;
              }
            }

            v41 = 0;
            break;
          }

LABEL_58:
          CFRelease(v40);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (!v41)
        {
LABEL_75:
          v36 = v40;
          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

LABEL_82:
    Mutable = 0;
    goto LABEL_35;
  }

  if (CFEqual(a2, @"SessionFilterDebug"))
  {
    if (!a3)
    {
      goto LABEL_82;
    }

    v53 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v54 = CFArrayGetCount(*(v5 + 152));
      if (v54 >= 1)
      {
        v55 = v54;
        v56 = 0;
        v57 = MEMORY[0x1E695E9D8];
        v58 = MEMORY[0x1E695E9E8];
        while (1)
        {
          v59 = CFArrayGetValueAtIndex(*(v5 + 152), v56);
          PropertyForClient = IOHIDSessionFilterGetPropertyForClient(v59, @"SessionFilterDebug");
          if (PropertyForClient)
          {
            goto LABEL_68;
          }

          v61 = CFDictionaryCreateMutable(v53, 0, v57, v58);
          if (v61)
          {
            break;
          }

LABEL_69:
          if (v55 == ++v56)
          {
            goto LABEL_35;
          }
        }

        PropertyForClient = v61;
        CFDictionaryAddValue(v61, @"Class", @"Unknown");
LABEL_68:
        CFArrayAppendValue(Mutable, PropertyForClient);
        CFRelease(PropertyForClient);
        goto LABEL_69;
      }
    }
  }

  else
  {
    context[0] = v5;
    context[1] = a2;
    v68 = 0;
    if (a3 && CFEqual(a3, *MEMORY[0x1E695E738]))
    {
      a3 = 0;
    }

    v69 = a3;
    v62 = *(v5 + 152);
    v72.length = CFArrayGetCount(v62);
    v72.location = 0;
    CFArrayApplyFunction(v62, v72, __FilterFunctionGetPropertyForClient, context);
    Mutable = v68;
    if (v68 || (Mutable = CFDictionaryGetValue(*(v5 + 120), a2)) != 0)
    {
      CFRetain(Mutable);
    }
  }

LABEL_35:
  v37 = *(v5 + 32);
  if (*v37)
  {
    --*v37;
    if (pthread_mutex_unlock((v37 + 8)))
    {
      __IOHIDSessionCreate_block_invoke_cold_2(&v66, valuePtr);
    }
  }

  return Mutable;
}

__CFString *__FilterFunctionGetPropertyForClient(__CFString *result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    result = IOHIDSessionFilterGetPropertyForClient(result, *(a2 + 8));
    *(a2 + 16) = result;
  }

  return result;
}

CFRunLoopSourceRef IOHIDEventSystemClientScheduleWithRunLoop(CFRunLoopSourceRef result, __CFRunLoop *a2, const __CFString *a3)
{
  *(result + 48) = a2;
  *(result + 49) = a3;
  if (!a2)
  {
    return result;
  }

  v5 = result;
  __IOHIDEventSystemClientSetupAsyncSupport(result);
  os_unfair_recursive_lock_lock_with_options();
  RunLoopSource = *(v5 + 36);
  if (RunLoopSource)
  {
    goto LABEL_3;
  }

  v9 = *(v5 + 35);
  if (!v9)
  {
LABEL_4:
    v7 = *(v5 + 8);
    if (!v7)
    {
      v10 = *(v5 + 7);
      if (!v10)
      {
        goto LABEL_6;
      }

      result = CFMachPortCreateRunLoopSource(*MEMORY[0x1E695E480], v10, 0);
      v7 = result;
      *(v5 + 8) = result;
      if (!result)
      {
        return result;
      }
    }

    CFRunLoopAddSource(a2, v7, a3);
LABEL_6:
    v8 = *(v5 + 5);
    if (v8)
    {
      IOMIGMachPortScheduleWithRunLoop(v8, a2, a3);
    }

    os_unfair_recursive_lock_unlock();
    __IOHIDEventSystemClientStartQueue(v5);

    return __IOHIDEventSystemClientStartFilter(v5);
  }

  RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x1E695E480], v9, 0);
  *(v5 + 36) = RunLoopSource;
  if (RunLoopSource)
  {
LABEL_3:
    CFRunLoopAddSource(a2, RunLoopSource, a3);
    goto LABEL_4;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t __IOHIDEventSystemClientSetupAsyncSupport(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v27.version = 0;
  memset(&v27.retain, 0, 24);
  v27.info = a1;
  os_unfair_recursive_lock_lock_with_options();
  v2 = MEMORY[0x1E695E480];
  if (*(a1 + 280) || (NotificationPort = IODataQueueAllocateNotificationPort()) != 0 && (v4 = CFMachPortCreateWithPort(*v2, NotificationPort, __IOHIDEventSystemClientQueueCallback, &v27, 0), (*(a1 + 280) = v4) != 0))
  {
    if (!*(a1 + 56))
    {
      HIDWORD(v28) = 0;
      v5 = notify_register_mach_port("com.apple.iohideventsystem.available", &v28 + 1, 0, (a1 + 48));
      if (v5)
      {
        v6 = v5;
        v7 = _IOHIDLogCategory(0);
        if (OUTLINED_FUNCTION_12(v7))
        {
          *buf = 67109120;
          v30 = v6;
          OUTLINED_FUNCTION_18_0(&dword_197195000, v8, v9, "Failed to register for server availability: %d", v10, v11, v12, v13, v27.version, v27.info, v27.retain, v27.release, v27.copyDescription, v28);
        }
      }

      else
      {
        v14 = CFMachPortCreateWithPort(*v2, HIDWORD(v28), __IOHIDEventSystemClientAvailabilityCallback, &v27, 0);
        *(a1 + 56) = v14;
        if (!v14)
        {
          return os_unfair_recursive_lock_unlock();
        }

        __IOHIDEventSystemClientRefresh(a1, 0);
      }
    }

    if (!*(a1 + 272))
    {
      if (*(a1 + 448))
      {
        v15 = 0x20000;
      }

      else if (*(a1 + 424) == 2)
      {
        v15 = 0x4000;
      }

      else
      {
        v15 = 0x8000;
      }

      Port = CFMachPortGetPort(*(a1 + 280));
      HIDWORD(v28) = 0;
      v17 = io_hideventsystem_queue_create(*(a1 + 32), Port, v15, &v28 + 1);
      if (v17)
      {
        v18 = v17;
        v19 = _IOHIDLogCategory(13);
        if (OUTLINED_FUNCTION_12(v19))
        {
          *buf = 67109120;
          v30 = v18;
          OUTLINED_FUNCTION_18_0(&dword_197195000, v20, v21, "Unable to create event queue via hidd: (%08x)", v22, v23, v24, v25, v27.version, v27.info, v27.retain, v27.release, v27.copyDescription, v28);
        }

        *(a1 + 272) = 0;
      }

      else
      {
        *(a1 + 272) = IOHIDEventQueueCreateWithVM(*v2, HIDWORD(v28), v15);
      }
    }
  }

  return os_unfair_recursive_lock_unlock();
}

mach_port_t IODataQueueAllocateNotificationPort(void)
{
  *name = 0;
  v0 = MEMORY[0x1E69E9A60];
  v1 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name[1]);
  result = 0;
  if (!v1)
  {
    port_info_outCnt = 1;
    if (mach_port_get_attributes(*v0, name[1], 1, name, &port_info_outCnt) || (name[0] = 1, MEMORY[0x19A8DBBA0](*v0, name[1], 1, name, 1)))
    {
      mach_port_mod_refs(*v0, name[1], 1u, -1);
      return 0;
    }

    else
    {
      return name[1];
    }
  }

  return result;
}

uint64_t io_hideventsystem_queue_create(int a1, int a2, int a3, _DWORD *a4)
{
  memset(&msg[4], 0, 32);
  *&msg[24] = 1;
  *&msg[28] = a2;
  v12 = 1310720;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x1117F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x34u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 70115)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v9 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg[32];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_27;
        }

        v9 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v12) << 16 == 1114112)
        {
          v9 = 0;
          *a4 = *&msg[28];
          return v9;
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_27;
  }

  return v9;
}

uint64_t _io_hideventsystem_queue_create(unsigned int a1, int a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  v7 = IOMIGMachPortCacheCopy(a1);
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == IOHIDEventSystemConnectionGetTypeID())
    {
      v10 = _IOHIDEventSystemConnectionCopyQueue(v8);
      if (v10)
      {
        v11 = v10;
        _IOHIDEventSystemConnectionSetQueue(v8, 0);
        CFRelease(v11);
      }

      v12 = CFGetAllocator(v8);
      v13 = IOHIDEventQueueCreate(v12, 1, a3);
      if (v13)
      {
        v14 = v13;
        IOHIDEventQueueSetNotificationPort(v13, a2);
        *a4 = IOHIDEventQueueGetMemoryHandle(v14);
        _IOHIDEventSystemConnectionSetQueue(v8, v14);
        CFRelease(v14);
      }
    }

    CFRelease(v8);
  }

  return 0;
}

uint64_t _IOHIDServiceRemoveConnection(uint64_t result, const void *a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 > 2)
  {
    return result;
  }

  v5 = result;
  if (pthread_mutex_lock((*(result + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v13, v14);
  }

  ++**(v5 + 72);
  if (*(*(v5 + 368) + 8 * a3))
  {
    v6 = CFGetAllocator(v5);
    v7 = *(*(v5 + 368) + 8 * a3);
    if (a3 != 1)
    {
      MutableCopy = CFSetCreateMutableCopy(v6, 0, v7);
      CFSetRemoveValue(MutableCopy, a2);
LABEL_8:
      CFRelease(*(*(v5 + 368) + 8 * a3));
      *(*(v5 + 368) + 8 * a3) = MutableCopy;
      v9 = *(v5 + 480);
      if (v9)
      {
        v10 = *(v5 + 560);
        if (v10)
        {
          [v9 v10];
        }
      }

      v11 = *(v5 + 256);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = ___IOHIDServiceRemoveConnection_block_invoke;
      v12[3] = &__block_descriptor_tmp_129;
      v12[4] = a2;
      _IOHIDCFArrayApplyBlock(v11, v12);
      goto LABEL_12;
    }

    if (CFArrayCreateMutableCopy(v6, 0, v7))
    {
      _IOHIDServiceRemoveConnection_cold_2();
      MutableCopy = *&v14[0];
      goto LABEL_8;
    }
  }

LABEL_12:
  result = *(v5 + 72);
  if (*result)
  {
    --*result;
    result = pthread_mutex_unlock((result + 8));
    if (result)
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v13, v14);
    }
  }

  return result;
}

uint64_t _io_hideventsystem_release_notification(uint64_t a1, UInt8 *a2, CFIndex a3)
{
  if (OUTLINED_FUNCTION_6_4(a3, a2))
  {
    v4 = OUTLINED_FUNCTION_4_7();
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == IOHIDEventSystemConnectionGetTypeID())
      {
        System = _IOHIDEventSystemConnectionGetSystem(v5);
        if (System)
        {
          _IOHIDEventSystemRemoveNotificationForConnection(System, v5, v3);
        }
      }

      CFRelease(v3);
    }

    else
    {
      v5 = v3;
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t _Xio_hideventsystem_release_notification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1)
    {
      v3 = *(result + 40);
      if (v3 == *(result + 52))
      {
        result = _io_hideventsystem_release_notification(*(result + 12), *(result + 28), v3);
        *(a2 + 32) = result;
        return result;
      }
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _IOHIDEventSystemRemoveNotificationForConnection(uint64_t a1, CFDictionaryRef *a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = _IOHIDEventSystemConnectionCopyNotification(a2, a3);
  _IOHIDEventSystemConnectionRemoveNotification(a2, a3);
  if (v6)
  {
    CFSetRemoveValue(*(a1 + 40), v6);
    CFRelease(v6);
  }

  return os_unfair_recursive_lock_unlock();
}

const void *_IOHIDEventSystemConnectionCopyNotification(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  os_unfair_recursive_lock_unlock();
  return v5;
}

void _IOHIDEventSystemConnectionRemoveNotification(CFDictionaryRef *a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(a1[2], a2);
  os_unfair_recursive_lock_unlock();
  if (Value)
  {
    CFRetain(Value);
    CFRetain(a2);
    CFRetain(a1);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___IOHIDEventSystemConnectionRemoveNotification_block_invoke;
    v5[3] = &__block_descriptor_tmp_26_1;
    v5[4] = a1;
    v5[5] = a2;
    v5[6] = Value;
    IOHIDNotificationInvalidate(Value, v5);
  }
}

void __IOHIDEventSystemMatchNotifyRelease(uint64_t a1, const void *a2, const void *a3)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = *(a1 + 40);
  if (v6)
  {
    CFSetRemoveValue(v6, a3);
  }

  os_unfair_recursive_lock_unlock();
  if (a2)
  {

    CFRelease(a2);
  }
}

void __ConnectionFunctionPickBatchInterval(uint64_t a1, void *a2, unsigned int *a3)
{
  valuePtr = 0;
  v4 = IOHIDServiceConnectionCacheCopyValueForKey(a2, @"BatchInterval");
  if (v4)
  {
    v5 = v4;
    CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v5);
    if (valuePtr < *a3)
    {
      *a3 = valuePtr;
    }
  }
}

uint64_t IOMIGMachPortCacheRemove(unsigned int a1)
{
  pthread_mutex_lock(&__ioPortCacheLock);
  CFDictionaryRemoveValue(__ioPortCache, a1);

  return pthread_mutex_unlock(&__ioPortCacheLock);
}

void _IOHIDServiceClientReleasePrivate(void *a1)
{
  IOHIDServiceClientFastPathInvalidate(a1);
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[12];
  if (v3)
  {
    CFRelease(v3);
    a1[12] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[17];
  if (v7)
  {

    free(v7);
  }
}

id IOHIDServiceFilterClientNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 96);
  if (result)
  {
    v7 = *(a1 + 176);
    if (v7)
    {
      return [result v7];
    }
  }

  return result;
}

uint64_t __IOHIDServiceUpdateIntervals(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&context, buf);
  }

  ++**(a1 + 72);
  context = 0;
  v4 = *(a1 + 168);
  CFDictionaryApplyFunction(*(a1 + 240), __ConnectionFunctionPickReportInterval, &context);
  if (CFDictionaryGetCount(*(a1 + 240)))
  {
    LODWORD(v5) = HIDWORD(context);
    v6 = v5;
    v7 = context * 1.25 < v6;
    if (context * 1.75 <= v6)
    {
      v7 = 0;
    }

    v4 = context >> v7;
  }

  v8 = *(a1 + 72);
  if (*v8)
  {
    --*v8;
    if (pthread_mutex_unlock((v8 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v20, buf);
    }
  }

  v9 = __IOHIDServicePickBatchInterval(a1);
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&context, buf);
  }

  ++**(a1 + 72);
  if (v4 == *(a1 + 160))
  {
    v10 = 1;
  }

  else
  {
    v10 = __SetNumPropertyForService(a1, @"ReportInterval", v4, a2);
    v11 = _IOHIDServiceCopyEventCounts(a1);
    v12 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 400);
      v14 = *(a1 + 160);
      *buf = 134219010;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      v26 = 1024;
      v27 = v4;
      v28 = 1024;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_INFO, "0x%llx: Set report interval current:%d new:%d result:%d events:%@", buf, 0x28u);
    }

    if (v10)
    {
      *(a1 + 160) = v4;
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v9 != *(a1 + 164))
  {
    v10 = __SetNumPropertyForService(a1, @"BatchInterval", v9, a2);
    v15 = _IOHIDLogCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 400);
      v17 = *(a1 + 164);
      *buf = 134218752;
      v23 = v16;
      v24 = 1024;
      v25 = v17;
      v26 = 1024;
      v27 = v9;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&dword_197195000, v15, OS_LOG_TYPE_INFO, "0x%llx: Set batch interval current:%d new:%d result:%d", buf, 0x1Eu);
    }

    if (v10)
    {
      *(a1 + 164) = v9;
    }
  }

  v18 = *(a1 + 72);
  if (*v18)
  {
    --*v18;
    if (pthread_mutex_unlock((v18 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&context, buf);
    }
  }

  return v10;
}

uint64_t __IOHIDServicePickBatchInterval(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  context = -1;
  if (pthread_mutex_lock((*(a1 + 72) + 8)))
  {
    __IOHIDServiceCreateAndCopyConnectionCache_cold_1(&v4, v6);
  }

  ++**(a1 + 72);
  CFDictionaryApplyFunction(*(a1 + 240), __ConnectionFunctionPickBatchInterval, &context);
  v2 = *(a1 + 72);
  if (*v2)
  {
    --*v2;
    if (pthread_mutex_unlock((v2 + 8)))
    {
      __IOHIDServiceCreateAndCopyConnectionCache_cold_2(&v4, v6);
    }
  }

  result = context;
  if (context == -1)
  {
    return *(a1 + 172);
  }

  return result;
}

void __ConnectionFunctionPickReportInterval(uint64_t a1, void *a2, unsigned int *a3)
{
  valuePtr = 0;
  if (_IOHIDEventSystemConnectionIsResponsive(a1))
  {
    v5 = IOHIDServiceConnectionCacheCopyValueForKey(a2, @"ReportInterval");
    if (v5)
    {
      v6 = v5;
      CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
      CFRelease(v6);
      v7 = valuePtr;
      if (valuePtr)
      {
        v8 = *a3;
        if (*a3)
        {
          if (valuePtr < v8)
          {
            a3[1] = v8;
LABEL_10:
            *a3 = v7;
            return;
          }
        }

        else
        {
          *a3 = valuePtr;
          a3[1] = v7;
          v8 = v7;
        }

        v10 = a3[1];
        ++a3;
        v9 = v10;
        if (v8 == v10 || v7 < v9)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

void __IOHIDEventQueueRelease(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*(a1 + 144) == 1)
    {
      v3 = MEMORY[0x1E69E9A60];
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], v2, *(a1 + 24));
      v4 = *(a1 + 84);
      if (v4)
      {
        mach_port_deallocate(*v3, v4);
      }
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  os_unfair_recursive_lock_unlock();
  if (*(a1 + 160))
  {
    IOHIDAnalyticsEventCancel();
    CFRelease(*(a1 + 160));
    *(a1 + 160) = 0;
  }
}

void __IOHIDEventSystemConnectionPortTerminateCallback(uint64_t a1, uint64_t *cf)
{
  CFRetain(cf);
  os_unfair_recursive_lock_lock_with_options();
  v4 = cf[8];
  if (v4)
  {
    v5 = cf[4];
    if (v5 == a1)
    {
      v6 = cf[9];
      if (a1)
      {
        IOMIGMachPortRegisterTerminationCallback(v5, 0, 0);
      }

      os_unfair_recursive_lock_unlock();
      v4(cf, v6);
      os_unfair_recursive_lock_lock_with_options();
    }
  }

  os_unfair_recursive_lock_unlock();

  CFRelease(cf);
}

void __IOHIDEventServerKillClient(uint64_t a1, uint64_t *a2)
{
  _IOHIDEventSystemConnectionInvalidate(a2);
  _IOHIDEventSystemConnectionUnscheduleAsync(a2);
  Port = _IOHIDEventSystemConnectionGetPort(a2);
  IOMIGMachPortCacheRemove(Port);
  v5 = *(a1 + 16);

  _IOHIDEventSystemRemoveConnection(v5, a2);
}

void __IOHIDEventSystemConnectionDiedCallback(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    __IOHIDEventServerKillClient(a2, result);
  }
}

void _IOHIDEventSystemConnectionInvalidate(uint64_t a1)
{
  if (CFDictionaryGetCount(*(a1 + 280)) >= 1)
  {
    v2 = CFGetAllocator(a1);
    Copy = CFDictionaryCreateCopy(v2, *(a1 + 280));
    CFDictionaryRemoveAllValues(*(a1 + 280));
    CFRetain(a1);
    EnumerationQueue = _IOHIDEventSystemGetEnumerationQueue(*(a1 + 8));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___IOHIDEventSystemConnectionInvalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_17;
    block[4] = Copy;
    block[5] = a1;
    dispatch_async(EnumerationQueue, block);
  }

  os_unfair_recursive_lock_lock_with_options();
  CFDictionaryApplyFunction(*(a1 + 16), __NotificationApplier, a1);
  os_unfair_recursive_lock_unlock();
  v5 = *(a1 + 432);
  if (v5)
  {
    IOHIDNotificationInvalidate(v5, 0);
  }

  CFRetain(a1);
  v6 = *(a1 + 96);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___IOHIDEventSystemConnectionInvalidate_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_18_2;
  v7[4] = a1;
  dispatch_async(v6, v7);
  *(a1 + 264) |= 1u;
}