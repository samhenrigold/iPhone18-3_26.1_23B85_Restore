unint64_t *__CFMessagePortCreateLocal(__objc2_class **a1, const __CFString *a2, unint64_t a3, __int128 *a4, _BYTE *a5, int a6, unint64_t a7)
{
  v98 = *MEMORY[0x1E69E9840];
  ptr = 0;
  if (a5)
  {
    *a5 = 1;
  }

  if (a2)
  {
    SanitizedStringName = __CFMessagePortCreateSanitizedStringName(a2, &ptr);
  }

  else
  {
    SanitizedStringName = 0;
  }

  os_unfair_lock_lock(&__CFAllMessagePortsLock);
  if (a6)
  {
    v14 = 1;
  }

  else
  {
    v14 = SanitizedStringName == 0;
  }

  v15 = !v14;
  if (!v14)
  {
    cf[0] = 0;
    if (__CFAllLocalMessagePorts)
    {
      if (CFDictionaryGetValueIfPresent(__CFAllLocalMessagePorts, SanitizedStringName, cf))
      {
        CFRetain(cf[0]);
        os_unfair_lock_unlock(&__CFAllMessagePortsLock);
        CFRelease(SanitizedStringName);
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
        IsValid = CFMessagePortIsValid(cf[0]);
        if (!IsValid)
        {
          v18 = _CFOSLog(IsValid, v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __CFMessagePortCreateLocal_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
          }

          v26 = cf[0];
          goto LABEL_50;
        }

        return cf[0];
      }
    }
  }

  os_unfair_lock_unlock(&__CFAllMessagePortsLock);
  Instance = _CFRuntimeCreateInstance(a1, 0x23uLL, 144, 0, v27, v28, v29, v30);
  if (!Instance)
  {
    if (SanitizedStringName)
    {
      CFRelease(SanitizedStringName);
    }

    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
    v49 = _CFOSLog(v47, v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      __CFMessagePortCreateLocal_cold_5(v49, v50, v51, v52, v53, v54, v55, v56);
    }

    return 0;
  }

  v32 = Instance;
  v33 = atomic_load(Instance + 1);
  v34 = v33;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v34, v33 & 0xFFFFFFFFFFFFFFFELL);
    v14 = v34 == v33;
    v33 = v34;
  }

  while (!v14);
  v35 = atomic_load(Instance + 1);
  v36 = v35;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v36, v35 & 0xFFFFFFFFFFFFFFFDLL);
    v14 = v36 == v35;
    v35 = v36;
  }

  while (!v14);
  v37 = atomic_load(Instance + 1);
  v38 = v37;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v38, v37 & 0xFFFFFFFFFFFFFFFBLL);
    v14 = v38 == v37;
    v37 = v38;
  }

  while (!v14);
  *(Instance + 28) = 0;
  Instance[2] = SanitizedStringName;
  if (a6)
  {
    *(Instance + 11) = getpid();
  }

  v32[12] = a3;
  v32[13] = a7;
  if (SanitizedStringName)
  {
    *special_port = 0;
    v39 = MEMORY[0x1E69E9A60];
    task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]);
    if (a6 || bootstrap_check_in(special_port[1], ptr, special_port))
    {
      cf[0] = 0;
      v84 = 0u;
      v85 = 0;
      cf[1] = v32;
      v40 = _CFMachPortCreate3(a1, __CFMessagePortDummyCallback, cf, 0);
      if (!v40)
      {
        v57 = _CFOSLog(0, v41);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          __CFMessagePortCreateLocal_cold_2(v57, v58, v59, v60, v61, v62, v63, v64);
        }

        goto LABEL_49;
      }

      v42 = v40;
      special_port[0] = CFMachPortGetPort(v40);
      v43 = bootstrap_register2();
      if (v43)
      {
        v45 = v43;
        v46 = _CFOSLog(v43, v44);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v82 = bootstrap_strerror(v45);
          *buf = 67110146;
          v89 = v45;
          v90 = 1024;
          v91 = v45;
          v92 = 2080;
          v93 = v82;
          v94 = 1024;
          v95 = special_port[0];
          v96 = 2080;
          v97 = ptr;
          _os_log_error_impl(&dword_1830E6000, v46, OS_LOG_TYPE_ERROR, "*** CFMessagePort: bootstrap_register(): failed %d (0x%x) '%s', port = 0x%x, name = '%s'\nSee /usr/include/servers/bootstrap_defs.h for the error codes.", buf, 0x28u);
        }

        CFMachPortInvalidate(v42);
        CFRelease(v42);
LABEL_49:
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
        v26 = v32;
LABEL_50:
        CFRelease(v26);
        return 0;
      }
    }

    else
    {
      inserted = mach_port_insert_right(*v39, special_port[0], special_port[0], 0x14u);
      if (inserted)
      {
        v67 = inserted;
        v68 = _CFOSLog(inserted, v66);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          __CFMessagePortCreateLocal_cold_3(special_port, v67, v68);
        }

        mach_port_mod_refs(*v39, special_port[0], 1u, -1);
        goto LABEL_49;
      }

      cf[0] = 0;
      v84 = 0u;
      v85 = 0;
      cf[1] = v32;
      v69 = _CFMachPortCreateWithPort3(a1, special_port[0], __CFMessagePortDummyCallback, cf, 0);
      if (!v69)
      {
        v81 = _CFOSLog(0, v70);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          __CFMessagePortCreateLocal_cold_4(special_port, v81);
        }

        mach_port_mod_refs(*v39, special_port[0], 1u, -1);
        mach_port_deallocate(*v39, special_port[0]);
        goto LABEL_49;
      }

      v42 = v69;
      v71 = atomic_load(v32 + 1);
      v72 = v71;
      do
      {
        atomic_compare_exchange_strong(v32 + 1, &v72, v71 | 2);
        v14 = v72 == v71;
        v71 = v72;
      }

      while (!v14);
    }

    CFMachPortSetInvalidationCallBack(v42, __CFMessagePortInvalidationCallBack);
    v32[3] = v42;
  }

  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
  v73 = atomic_load(v32 + 1);
  v74 = v73;
  do
  {
    atomic_compare_exchange_strong(v32 + 1, &v74, v73 | 1);
    v14 = v74 == v73;
    v73 = v74;
  }

  while (!v14);
  if (a4)
  {
    v75 = *a4;
    v76 = a4[1];
    v32[19] = *(a4 + 4);
    *(v32 + 17) = v76;
    *(v32 + 15) = v75;
    v77 = *(a4 + 1);
    v78 = *(a4 + 2);
    if (v78)
    {
      v77 = v78(v77);
    }

    v32[16] = v77;
  }

  os_unfair_lock_lock(&__CFAllMessagePortsLock);
  if (v15)
  {
    cf[0] = 0;
    if (!__CFAllLocalMessagePorts)
    {
      goto LABEL_70;
    }

    if (CFDictionaryGetValueIfPresent(__CFAllLocalMessagePorts, SanitizedStringName, cf))
    {
      CFRetain(cf[0]);
      os_unfair_lock_unlock(&__CFAllMessagePortsLock);
      CFRelease(v32);
      return cf[0];
    }

    Mutable = __CFAllLocalMessagePorts;
    if (!__CFAllLocalMessagePorts)
    {
LABEL_70:
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
      __CFAllLocalMessagePorts = Mutable;
    }

    CFDictionaryAddValue(Mutable, SanitizedStringName, v32);
  }

  os_unfair_lock_unlock(&__CFAllMessagePortsLock);
  if (a5)
  {
    *a5 = 0;
  }

  return v32;
}

Boolean CFMessagePortIsRemote(CFMessagePortRef ms)
{
  __CFCheckCFInfoPACSignature(ms);
  v2 = _CFGetNonObjCTypeID(ms);
  if (v2 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v2);
  }

  v3 = atomic_load(ms + 1);
  return (v3 >> 2) & 1;
}

CFStringRef CFMessagePortGetName(CFMessagePortRef ms)
{
  __CFCheckCFInfoPACSignature(ms);
  v2 = _CFGetNonObjCTypeID(ms);
  if (v2 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v2);
  }

  return *(ms + 2);
}

Boolean CFMessagePortSetName(CFMessagePortRef ms, CFStringRef newName)
{
  ptr[1] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(ms);
  v4 = _CFGetNonObjCTypeID(ms);
  if (v4 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v4);
  }

  v5 = CFGetAllocator(ms);
  ptr[0] = 0;
  if (*(ms + 11))
  {
    goto LABEL_14;
  }

  v6 = atomic_load(ms + 1);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

  v7 = v5;
  SanitizedStringName = __CFMessagePortCreateSanitizedStringName(newName, ptr);
  if (SanitizedStringName)
  {
    v9 = SanitizedStringName;
    os_unfair_lock_lock(&__CFAllMessagePortsLock);
    value[0] = 0;
    if (__CFAllLocalMessagePorts && CFDictionaryGetValueIfPresent(__CFAllLocalMessagePorts, v9, value))
    {
      v10 = &__CFAllMessagePortsLock;
LABEL_13:
      os_unfair_lock_unlock(v10);
      CFRelease(v9);
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr[0]);
LABEL_14:
      LOBYTE(SanitizedStringName) = 0;
      return SanitizedStringName;
    }

    os_unfair_lock_unlock(&__CFAllMessagePortsLock);
    os_unfair_lock_lock(ms + 28);
    if (*(ms + 8))
    {
      CFLog(7, @"*** CFMessagePort: Unable to SetName on CFMessagePort %p as it already has a dispatch queue associated with itself.", v11, v12, v13, v14, v15, v16, ms);
LABEL_12:
      v10 = (ms + 112);
      goto LABEL_13;
    }

    v17 = dyld_program_sdk_at_least();
    v18 = *(ms + 2);
    if (v17)
    {
      if (v18)
      {
        goto LABEL_12;
      }
    }

    else if (v18)
    {
      if (CFEqual(v18, v9))
      {
        CFRelease(v9);
LABEL_44:
        os_unfair_lock_unlock(ms + 28);
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr[0]);
        LOBYTE(SanitizedStringName) = 1;
        return SanitizedStringName;
      }

      v21 = (ms + 24);
      v20 = *(ms + 3);
      if (*(ms + 2))
      {
        v40 = atomic_load(ms + 1);
        v19 = (v40 >> 1) & 1;
      }

      else
      {
        LODWORD(v19) = 0;
      }

LABEL_21:
      *special_port = 0;
      v22 = MEMORY[0x1E69E9A60];
      task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]);
      if (bootstrap_check_in(special_port[1], ptr[0], special_port))
      {
        goto LABEL_22;
      }

      if (mach_port_insert_right(*v22, special_port[0], special_port[0], 0x14u))
      {
        os_unfair_lock_unlock(ms + 28);
        mach_port_mod_refs(*v22, special_port[0], 1u, -1);
        goto LABEL_28;
      }

      value[0] = 0;
      v43 = 0u;
      v44 = 0;
      value[1] = ms;
      v33 = _CFMachPortCreateWithPort3(v7, special_port[0], __CFMessagePortDummyCallback, value, 0);
      v24 = v33;
      v34 = atomic_load(ms + 1);
      v35 = v34;
      do
      {
        atomic_compare_exchange_strong(ms + 1, &v35, v34 | 2);
        v36 = v35 == v34;
        v34 = v35;
      }

      while (!v36);
      if (!v33)
      {
LABEL_22:
        value[0] = 0;
        v43 = 0u;
        v44 = 0;
        value[1] = ms;
        v23 = _CFMachPortCreate3(v7, __CFMessagePortDummyCallback, value, 0);
        if (!v23)
        {
          os_unfair_lock_unlock(ms + 28);
          goto LABEL_28;
        }

        v24 = v23;
        special_port[0] = CFMachPortGetPort(v23);
        v25 = bootstrap_register2();
        if (v25)
        {
          v26 = v25;
          os_unfair_lock_unlock(ms + 28);
          bootstrap_strerror(v26);
          CFLog(7, @"*** CFMessagePort: bootstrap_register(): failed %d (0x%x) '%s', port = 0x%x, name = '%s'\nSee /usr/include/servers/bootstrap_defs.h for the error codes.", v27, v28, v29, v30, v31, v32, v26);
          CFMachPortInvalidate(v24);
          CFRelease(v24);
LABEL_28:
          CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr[0]);
          CFRelease(v9);
          goto LABEL_14;
        }
      }

      CFMachPortSetInvalidationCallBack(v24, __CFMessagePortInvalidationCallBack);
      *v21 = v24;
      if (v20 && v20 != v24)
      {
        if (v19)
        {
          if (*(ms + 8))
          {
            CFMessagePortSetName_cold_1();
          }

          Port = CFMachPortGetPort(v20);
          mach_port_mod_refs(*v22, Port, 1u, -1);
          mach_port_deallocate(*v22, Port);
        }

        CFMachPortInvalidate(v20);
        CFRelease(v20);
      }

      os_unfair_lock_lock(&__CFAllMessagePortsLock);
      Mutable = __CFAllLocalMessagePorts;
      if (!__CFAllLocalMessagePorts)
      {
        Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
        __CFAllLocalMessagePorts = Mutable;
      }

      v39 = *(ms + 2);
      if (v39)
      {
        CFDictionaryRemoveValue(Mutable, v39);
        CFRelease(*(ms + 2));
        Mutable = __CFAllLocalMessagePorts;
      }

      *(ms + 2) = v9;
      CFDictionaryAddValue(Mutable, v9, ms);
      os_unfair_lock_unlock(&__CFAllMessagePortsLock);
      goto LABEL_44;
    }

    LODWORD(v19) = 0;
    v21 = (ms + 24);
    v20 = *(ms + 3);
    goto LABEL_21;
  }

  return SanitizedStringName;
}

void __CFMessagePortInvalidationCallBack(int a1, CFMessagePortRef ms)
{
  if (ms)
  {
    CFMessagePortInvalidate(ms);
  }
}

void CFMessagePortGetContext(CFMessagePortRef ms, CFMessagePortContext *context)
{
  __CFCheckCFInfoPACSignature(ms);
  v4 = _CFGetNonObjCTypeID(ms);
  if (v4 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v4);
  }

  v5 = *(ms + 120);
  v6 = *(ms + 136);
  context->copyDescription = *(ms + 19);
  *&context->version = v5;
  *&context->retain = v6;
}

Boolean CFMessagePortIsValid(CFMessagePortRef ms)
{
  __CFCheckCFInfoPACSignature(ms);
  v2 = _CFGetNonObjCTypeID(ms);
  if (v2 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v2);
  }

  v3 = atomic_load(ms + 1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  CFRetain(ms);
  v5 = *(ms + 3);
  if (v5 && !CFMachPortIsValid(v5) || (v6 = *(ms + 6)) != 0 && !CFMachPortIsValid(v6))
  {
    CFMessagePortInvalidate(ms);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  CFRelease(ms);
  return v4;
}

CFMessagePortInvalidationCallBack CFMessagePortGetInvalidationCallBack(CFMessagePortRef ms)
{
  __CFCheckCFInfoPACSignature(ms);
  v2 = _CFGetNonObjCTypeID(ms);
  if (v2 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v2);
  }

  return *(ms + 11);
}

void CFMessagePortSetInvalidationCallBack(CFMessagePortRef ms, CFMessagePortInvalidationCallBack callout)
{
  __CFCheckCFInfoPACSignature(ms);
  v3 = _CFGetNonObjCTypeID(ms);
  if (v3 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v3);
  }

  v4 = atomic_load(ms + 1);
  if (!callout || (v4 & 1) != 0)
  {
    *(ms + 11) = callout;
  }

  else
  {
    v5 = *(ms + 16);

    (callout)(ms, v5);
  }
}

SInt32 CFMessagePortSendRequest(CFMessagePortRef remote, SInt32 msgid, CFDataRef data, CFTimeInterval sendTimeout, CFTimeInterval rcvTimeout, CFStringRef replyMode, CFDataRef *returnData)
{
  v55 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(remote);
  v14 = _CFGetNonObjCTypeID(remote);
  if (v14 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v14);
  }

  Current = CFRunLoopGetCurrent();
  if (data && CFDataGetLength(data) >= 1610612737)
  {
    CFLog(4, @"*** CFMessagePortSendRequest: CFMessagePort cannot send more than %lu bytes of data", v16, v17, v18, v19, v20, v21, 1610612736);
    return -4;
  }

  os_unfair_lock_lock(remote + 28);
  v22 = atomic_load(remote + 1);
  if ((v22 & 1) == 0)
  {
    os_unfair_lock_unlock(remote + 28);
    return -3;
  }

  CFRetain(remote);
  if (!*(remote + 6))
  {
    *&v51 = 0;
    *(&v51 + 1) = remote;
    v52 = CFRetain;
    v53 = CFRelease;
    v54 = __CFMessagePortCopyDescription;
    v24 = CFGetAllocator(remote);
    *(remote + 6) = _CFMachPortCreateReply(v24, __CFMessagePortReplyCallBack, &v51, 0);
  }

  v25 = *(remote + 10);
  *(remote + 10) = v25 + 1;
  Port = CFMachPortGetPort(*(remote + 3));
  if (replyMode)
  {
    v27 = CFMachPortGetPort(*(remote + 6));
  }

  else
  {
    v27 = 0;
  }

  v50 = returnData;
  if (data)
  {
    BytePtr = CFDataGetBytePtr(data);
    Length = CFDataGetLength(data);
  }

  else
  {
    BytePtr = 0;
    Length = -1;
  }

  Message = __CFMessagePortCreateMessage(0, Port, v27, v25 + 1, msgid, BytePtr, Length);
  if (!Message)
  {
    os_unfair_lock_unlock(remote + 28);
    CFRelease(remote);
    return -4;
  }

  v31 = Message;
  v32 = ~v25;
  if (replyMode)
  {
    CFDictionarySetValue(*(remote + 4), v32, &__kCFNull);
    v33 = CFGetAllocator(remote);
    RunLoopSource = CFMachPortCreateRunLoopSource(v33, *(remote + 6), -100);
    if (!CFRunLoopContainsSource(Current, RunLoopSource, replyMode))
    {
      CFRunLoopAddSource(Current, RunLoopSource, replyMode);
      v35 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    RunLoopSource = 0;
  }

  v35 = 1;
LABEL_23:
  if (sendTimeout >= 864000.0)
  {
    v37 = 0;
    v38 = 1;
  }

  else
  {
    v36 = sendTimeout * 1000.0;
    if (sendTimeout * 1000.0 < 1.0)
    {
      v36 = 0.0;
    }

    v37 = vcvtmd_u64_f64(v36);
    v38 = 17;
  }

  os_unfair_lock_unlock(remote + 28);
  v39 = mach_msg(v31, v38, v31->msgh_size, 0, 0, v37, 0);
  os_unfair_lock_lock(remote + 28);
  if (!v39)
  {
    os_unfair_lock_unlock(remote + 28);
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v31);
    if (replyMode)
    {
      _CFMachPortInstallNotifyPort();
      v41 = mach_absolute_time();
      v42 = __CFTimeIntervalToTSR(rcvTimeout) + v41;
      v43 = v32;
      do
      {
        v44 = __CFTimeIntervalUntilTSR(v42);
        CFRunLoopRunInMode(replyMode, v44, 1u);
        Value = CFDictionaryGetValue(*(remote + 4), v43);
        v46 = Value;
        if (Value)
        {
          v47 = &__kCFNull == Value;
        }

        else
        {
          v47 = 1;
        }

        v48 = v47;
      }

      while (v47 && v42 >= mach_absolute_time() && CFMessagePortIsValid(remote));
      if ((v35 & 1) == 0)
      {
        CFRunLoopRemoveSource(Current, RunLoopSource, replyMode);
      }

      if (RunLoopSource)
      {
        CFRelease(RunLoopSource);
      }

      if (v48)
      {
        CFDictionaryRemoveValue(*(remote + 4), v43);
        CFRelease(remote);
        if (CFMessagePortIsValid(remote))
        {
          return -2;
        }

        else
        {
          return -5;
        }
      }

      if (v50)
      {
        if (&__kCFBooleanFalse == v46)
        {
          v49 = 0;
        }

        else
        {
          v49 = CFRetain(v46);
        }

        *v50 = v49;
      }

      CFDictionaryRemoveValue(*(remote + 4), v43);
    }

    CFRelease(remote);
    return 0;
  }

  if (replyMode)
  {
    if ((v39 - 268435459) <= 4 && ((1 << (v39 - 3)) & 0x13) != 0)
    {
      msgh_local_port = v31->msgh_local_port;
      if (msgh_local_port - 1 <= 0xFFFFFFFD && (v31->msgh_bits & 0x1F00) == 0x1200)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], msgh_local_port);
        v31->msgh_local_port = 0;
      }
    }
  }

  if ((v35 & 1) == 0)
  {
    CFRunLoopRemoveSource(Current, RunLoopSource, replyMode);
  }

  if (RunLoopSource)
  {
    CFRelease(RunLoopSource);
  }

  os_unfair_lock_unlock(remote + 28);
  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v31);
  CFRelease(remote);
  if (v39 == 268435460)
  {
    return -1;
  }

  else
  {
    return -4;
  }
}

void __CFMessagePortReplyCallBack(uint64_t a1, int *a2, unint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 112));
  v13 = atomic_load((a4 + 8));
  if ((v13 & 1) == 0)
  {
    goto LABEL_77;
  }

  if (a3 < 0x18)
  {
LABEL_3:
    v14 = 0;
LABEL_76:
    CFLog(4, @"*** CFMessagePort: dropping corrupt reply Mach message (0b%d%d%d%d%d%d)", v7, v8, v9, v10, v11, v12, v14);
    mach_msg_destroy(a2);
    goto LABEL_77;
  }

  v16 = *a2;
  if (*a2 < 0)
  {
    if (a3 < 0x3C)
    {
      goto LABEL_3;
    }

    LODWORD(v23) = a2[1];
    if (v23 < 0x3C)
    {
      goto LABEL_3;
    }

    v24 = a2[11];
    v14 = v24 != -252513032 && v24 != -118164752;
    v26 = a2[6] != 1 || *(a2 + 39) != 1;
    goto LABEL_56;
  }

  if (a2[5] == 1128680784)
  {
    if (a3 < 0x38)
    {
      goto LABEL_3;
    }

    v17 = 56;
  }

  else
  {
    if (a3 < 0x3C)
    {
      goto LABEL_3;
    }

    v17 = 60;
  }

  v23 = a2[1];
  if (v17 > v23)
  {
    goto LABEL_3;
  }

  if (a2[5] != 1128680784)
  {
    if (a2[11] == -252513032)
    {
      v14 = 0;
      goto LABEL_54;
    }

    v29 = 11;
LABEL_53:
    v14 = a2[v29] != -118164752;
LABEL_54:
    v26 = 0;
    if (a2[5] == 1128680784)
    {
      goto LABEL_55;
    }

LABEL_56:
    v30 = 4060;
    goto LABEL_57;
  }

  if (a2[10] != -252513032)
  {
    v29 = 10;
    goto LABEL_53;
  }

  v26 = 0;
  v14 = 0;
LABEL_55:
  v30 = 4056;
LABEL_57:
  v31 = v30 < v23;
  if (v26 || v30 < v23)
  {
    v32 = 0;
    v34 = 0;
    if (v16 < 0)
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  if (v16 < 0)
  {
    v32 = a2[14];
    v34 = (v32 - 1610612737) < 0x9FFFFFFE || a2[10] != v32;
    goto LABEL_74;
  }

  if (a2[5] != 1128680784)
  {
    v32 = a2[14];
    if ((v32 - 1610612737) >= 0x9FFFFFFE)
    {
      v33 = -60;
      goto LABEL_71;
    }

LABEL_68:
    v34 = 1;
    goto LABEL_72;
  }

  v32 = a2[13];
  if ((v32 - 1610612737) < 0x9FFFFFFE)
  {
    goto LABEL_68;
  }

  v33 = -56;
LABEL_71:
  v34 = v33 + v23 < v32;
LABEL_72:
  if (a2[5] == 1128680784)
  {
    v35 = 10;
    goto LABEL_75;
  }

LABEL_74:
  v35 = 11;
LABEL_75:
  v36 = a2[v35 + 2] >= 0;
  if (v26 || v14 || v31 || v34 || v36)
  {
    goto LABEL_76;
  }

  if (*a2 < 0 || a2[5] != 1128680784)
  {
    v15 = 11;
  }

  else
  {
    v15 = 10;
  }

  v18 = CFDictionaryContainsKey(*(a4 + 32), a2[v15 + 2]);
  v19 = *a2;
  if (v18)
  {
    if (v19 < 0)
    {
      v27 = CFDataCreate(&__kCFAllocatorSystemDefault, *(a2 + 7), a2[10]);
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], *(a2 + 7), a2[10]);
    }

    else
    {
      v20 = 11;
      if (a2[5] == 1128680784)
      {
        v20 = 10;
      }

      v21 = &a2[v20 + 4];
      if (&v21[v32] <= a2 + a2[1])
      {
        v22 = CFDataCreate(&__kCFAllocatorSystemDefault, v21, v32 & ~(v32 >> 31));
      }

      else
      {
        v22 = CFRetain(&__kCFBooleanFalse);
      }

      v27 = v22;
    }

    if (*a2 < 0 || a2[5] != 1128680784)
    {
      v28 = 11;
    }

    else
    {
      v28 = 10;
    }

    CFDictionarySetValue(*(a4 + 32), a2[v28 + 2], v27);
    CFRelease(v27);
  }

  else if (v19 < 0)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *(a2 + 7), a2[10]);
  }

LABEL_77:

  os_unfair_lock_unlock((a4 + 112));
}

char *__CFMessagePortCreateMessage(int a1, int a2, int a3, int a4, int a5, const void *a6, int a7)
{
  if ((a7 - 1610612737) < 0x9FFFFFFE)
  {
    return 0;
  }

  v15 = (a7 + 7) & 0xFFFFFFF8;
  if (v15 >= 0xFA1)
  {
    v16 = 60;
  }

  else
  {
    v16 = v15 + 60;
  }

  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v16, 0x2287C2C6uLL);
  v7 = Typed;
  if (Typed)
  {
    bzero(Typed, v16);
    *(v7 + 2) = a2;
    *(v7 + 3) = a3;
    if (a1)
    {
      v18 = 18;
    }

    else
    {
      v18 = 19;
    }

    if (a3)
    {
      v19 = 5376;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19 | v18;
    *v7 = v20;
    *(v7 + 1) = v16;
    *(v7 + 20) = 1667657072;
    *(v7 + 11) = -252513032;
    *(v7 + 12) = a5;
    *(v7 + 13) = a4;
    *(v7 + 14) = a7;
    if (v15 > 0xFA0)
    {
      *v7 = v20 | 0x80000000;
      *(v7 + 6) = 1;
      v21 = v7[38];
      *(v7 + 28) = a6;
      *(v7 + 9) = (v21 << 16) | 0x1000100;
      *(v7 + 10) = a7;
    }

    else if (a6 && a7 >= 1)
    {
      memmove(v7 + 60, a6, a7);
    }
  }

  return v7;
}

CFRunLoopSourceRef CFMessagePortCreateRunLoopSource(CFAllocatorRef allocator, CFMessagePortRef local, CFIndex order)
{
  v14.perform = *MEMORY[0x1E69E9840];
  if (local)
  {
    __CFCheckCFInfoPACSignature(local);
    v6 = _CFGetNonObjCTypeID(local);
    if (v6 != 35)
    {
      _CFAssertMismatchedTypeID(0x23uLL, v6);
    }
  }

  if (CFMessagePortIsValid(local))
  {
    v7 = atomic_load(local + 1);
    if ((v7 & 4) == 0)
    {
      os_unfair_lock_lock(local + 28);
      v8 = *(local + 7);
      if (v8)
      {
        IsValid = CFRunLoopSourceIsValid(v8);
        v10 = *(local + 7);
        if (IsValid)
        {
          if (v10)
          {
            goto LABEL_17;
          }
        }

        else
        {
          CFRelease(v10);
          *(local + 7) = 0;
        }
      }

      if (*(local + 8) || ((v12 = atomic_load(local + 1), (v12 & 1) != 0) ? (v14.version = 1, v14.info = local, v14.retain = CFRetain, v14.release = CFRelease, v14.equal = 0, v14.hash = 0, v14.copyDescription = __CFMessagePortCopyDescription, v14.schedule = __CFMessagePortGetPort, v14.cancel = __CFMessagePortPerform, v10 = CFRunLoopSourceCreate(allocator, order, &v14), *(local + 7) = v10) : (v10 = *(local + 7)), !v10))
      {
        v11 = 0;
LABEL_18:
        os_unfair_lock_unlock(local + 28);
        return v11;
      }

LABEL_17:
      v11 = CFRetain(v10);
      goto LABEL_18;
    }
  }

  return 0;
}

__CFMachPort *__CFMessagePortGetPort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 24);
  if (result)
  {
    goto LABEL_5;
  }

  v10 = atomic_load((a1 + 8));
  if (v10)
  {
    CFLog(4, @"*** Warning: A local CFMessagePort (%p) is being put in a run loop or dispatch queue, but it has not been named yet, so this will be a no-op and no messages are going to be received, even if named later.", a3, a4, a5, a6, a7, a8, a1);
  }

  result = *(a1 + 24);
  if (result)
  {
LABEL_5:

    return CFMachPortGetPort(result);
  }

  return result;
}

char *__CFMessagePortPerform(int *a1, unint64_t a2, const __CFAllocator *a3, uint64_t a4)
{
  address[1] = *MEMORY[0x1E69E9840];
  address[0] = 0;
  os_unfair_lock_lock((a4 + 112));
  v8 = atomic_load((a4 + 8));
  if ((v8 & 1) == 0)
  {
    os_unfair_lock_unlock((a4 + 112));
    return 0;
  }

  v10 = *(a4 + 128);
  v9 = *(a4 + 136);
  if (v9)
  {
    v10 = v9(*(a4 + 128));
    v11 = *(a4 + 144);
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock((a4 + 112));
  if (a2 < 0x18)
  {
    goto LABEL_7;
  }

  v27 = *a1;
  if (*a1 < 0)
  {
    if (a2 >= 0x3C)
    {
      LODWORD(v30) = a1[1];
      if (v30 >= 0x3C)
      {
        v31 = a1[11];
        v18 = v31 != -252513032 && v31 != -118164752;
        v33 = a1[6] != 1;
        goto LABEL_78;
      }
    }

    goto LABEL_7;
  }

  if (a1[5] == 1128680784)
  {
    if (a2 >= 0x38)
    {
      v28 = 56;
      goto LABEL_38;
    }

LABEL_7:
    v18 = 0;
LABEL_98:
    CFLog(4, @"*** CFMessagePort: dropping corrupt request Mach message (0b%d%d%d%d%d%d)", v12, v13, v14, v15, v16, v17, v18);
    mach_msg_destroy(a1);
    return 0;
  }

  if (a2 < 0x3C)
  {
    goto LABEL_7;
  }

  v28 = 60;
LABEL_38:
  v30 = a1[1];
  if (v28 > v30)
  {
    goto LABEL_7;
  }

  if (a1[5] != 1128680784)
  {
    if (a1[11] == -252513032)
    {
      v18 = 0;
      goto LABEL_76;
    }

    v51 = 11;
LABEL_75:
    v18 = a1[v51] != -118164752;
LABEL_76:
    v33 = 0;
    if (a1[5] == 1128680784)
    {
      goto LABEL_77;
    }

LABEL_78:
    v52 = 4060;
    goto LABEL_79;
  }

  if (a1[10] != -252513032)
  {
    v51 = 10;
    goto LABEL_75;
  }

  v33 = 0;
  v18 = 0;
LABEL_77:
  v52 = 4056;
LABEL_79:
  v53 = v52 < v30;
  if (!v33 && v52 >= v30)
  {
    if (v27 < 0)
    {
      v54 = a1[14];
      v56 = (v54 - 1610612737) < 0x9FFFFFFE || a1[10] != v54;
      goto LABEL_96;
    }

    if (a1[5] == 1128680784)
    {
      v54 = a1[13];
      if ((v54 - 1610612737) >= 0x9FFFFFFE)
      {
        v55 = -56;
LABEL_93:
        v56 = v55 + v30 < v54;
        goto LABEL_94;
      }
    }

    else
    {
      v54 = a1[14];
      if ((v54 - 1610612737) >= 0x9FFFFFFE)
      {
        v55 = -60;
        goto LABEL_93;
      }
    }

    v56 = 1;
    goto LABEL_94;
  }

  v56 = 0;
  v54 = 0;
  if (v27 < 0)
  {
    goto LABEL_96;
  }

LABEL_94:
  if (a1[5] != 1128680784)
  {
LABEL_96:
    v57 = 11;
    goto LABEL_97;
  }

  v57 = 10;
LABEL_97:
  v58 = a1[v57 + 2] < 1;
  if (v33 || v18 || v53 || v56 || v58)
  {
    goto LABEL_98;
  }

  if (*a1 < 0)
  {
    v25 = a1[12];
    v29 = *(a1 + 7);
    v19 = a1[10];
LABEL_44:
    v34 = CFDataCreateWithBytesNoCopy(a3, v29, v19, &__kCFAllocatorNull);
    goto LABEL_45;
  }

  v19 = v54 & ~(v54 >> 31);
  v20 = a1 + a1[1];
  v21 = a1[5];
  v22 = v21 == 1128680784;
  if (v21 == 1128680784)
  {
    v23 = 40;
  }

  else
  {
    v23 = 44;
  }

  v24 = a1 + v19 + v23 + 16;
  if (!v22)
  {
    v25 = a1[12];
    if (v24 > v20)
    {
      goto LABEL_35;
    }

    v26 = 11;
    goto LABEL_43;
  }

  v25 = a1[11];
  if (v24 <= v20)
  {
    v26 = 10;
LABEL_43:
    v29 = &a1[v26 + 4];
    goto LABEL_44;
  }

LABEL_35:
  v34 = 0;
LABEL_45:
  v35 = *(a4 + 96);
  if (v35)
  {
    v36 = v35(a4, v25, v34, v10);
  }

  else
  {
    v36 = (*(a4 + 104))(a4, v25, v34, v10, (a1 + a1[1] + 3) & 0xFFFFFFFFFFFFFFFCLL, 0);
  }

  v37 = v36;
  if (v36)
  {
    Length = CFDataGetLength(v36);
    if (Length < 1610612737)
    {
      v45 = Length;
      if (Length > 3999)
      {
        address[0] = 0;
        if (vm_allocate(*MEMORY[0x1E69E9A60], address, Length, 335544321))
        {
          LODWORD(v45) = 0;
        }

        else
        {
          v46 = address[0];
          BytePtr = CFDataGetBytePtr(v37);
          memmove(v46, BytePtr, v45);
        }
      }

      else
      {
        address[0] = CFDataGetBytePtr(v37);
      }
    }

    else
    {
      CFLog(4, @"*** CFMessagePort reply: CFMessagePort cannot send more than %lu bytes of data", v39, v40, v41, v42, v43, v44, 1610612736);
      CFRelease(v37);
      LODWORD(v45) = 0;
      v37 = 0;
    }
  }

  else
  {
    LODWORD(v45) = -1;
  }

  if (*a1 < 0 || a1[5] != 1128680784)
  {
    v48 = 11;
  }

  else
  {
    v48 = 10;
  }

  Message = __CFMessagePortCreateMessage(1, a1[2], 0, -a1[v48 + 2], v25, address[0], v45);
  v50 = Message;
  if ((*Message & 0x80000000) != 0)
  {
    Message[36] = 1;
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (*a1 < 0)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 7), a1[10]);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v11)
  {
    v11(v10);
  }

  return v50;
}

void CFMessagePortSetDispatchQueue(CFMessagePortRef ms, dispatch_queue_t queue)
{
  v37 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(ms);
  v4 = _CFGetNonObjCTypeID(ms);
  if (v4 != 35)
  {
    _CFAssertMismatchedTypeID(0x23uLL, v4);
  }

  os_unfair_lock_lock(ms + 28);
  v12 = atomic_load(ms + 1);
  if ((v12 & 1) == 0)
  {
    os_unfair_lock_unlock(ms + 28);
    v19 = @"*** CFMessagePortSetDispatchQueue(): CFMessagePort is invalid";
LABEL_8:
    CFLog(4, v19, v13, v14, v15, v16, v17, v18, v33[0]);
    return;
  }

  v20 = atomic_load(ms + 1);
  if ((v20 & 4) != 0)
  {
    os_unfair_lock_unlock(ms + 28);
    v19 = @"*** CFMessagePortSetDispatchQueue(): CFMessagePort is not a local port, queue cannot be set";
    goto LABEL_8;
  }

  if (*(ms + 7))
  {
    os_unfair_lock_unlock(ms + 28);
    v19 = @"*** CFMessagePortSetDispatchQueue(): CFMessagePort already has a CFRunLoopSourceRef, queue cannot be set";
    goto LABEL_8;
  }

  v22 = (ms + 64);
  v21 = *(ms + 8);
  if (v21)
  {
    dispatch_source_cancel(v21);
    *v22 = 0;
    *(ms + 9) = 0;
  }

  if (queue)
  {
    Port = __CFMessagePortGetPort(ms, v5, v6, v7, v8, v9, v10, v11);
    if (Port)
    {
      v30 = Port;
      if (CFMessagePortSetDispatchQueue_once != -1)
      {
        CFMessagePortSetDispatchQueue_cold_1();
      }

      v31 = dispatch_semaphore_create(0);
      dispatch_retain(v31);
      *(ms + 10) = v31;
      _cfmp_record_intent_to_invalidate(1, v30);
      v32 = dispatch_source_create(MEMORY[0x1E69E96D8], v30, 0, CFMessagePortSetDispatchQueue_mportQueue);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __CFMessagePortSetDispatchQueue_block_invoke_2;
      handler[3] = &__block_descriptor_tmp_21;
      handler[4] = queue;
      handler[5] = v32;
      v36 = v30;
      handler[6] = v31;
      dispatch_source_set_cancel_handler(v32, handler);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 0x40000000;
      v33[2] = __CFMessagePortSetDispatchQueue_block_invoke_3;
      v33[3] = &__block_descriptor_tmp_23;
      v34 = v30;
      v33[4] = ms;
      v33[5] = queue;
      dispatch_source_set_event_handler(v32, v33);
      *(ms + 8) = v32;
      if (v32)
      {
        goto LABEL_16;
      }
    }

    else if (*v22)
    {
LABEL_16:
      dispatch_retain(queue);
      *(ms + 9) = queue;
      dispatch_resume(*(ms + 8));
      goto LABEL_19;
    }

    CFLog(4, @"*** CFMessagePortSetDispatchQueue(): dispatch source could not be created", v24, v25, v26, v27, v28, v29, v33[0]);
  }

LABEL_19:
  os_unfair_lock_unlock(ms + 28);
}

dispatch_queue_t __CFMessagePortSetDispatchQueue_block_invoke()
{
  v0 = qos_class_main();
  v1 = dispatch_queue_attr_make_with_qos_class(0, v0, 0);
  result = dispatch_queue_create("com.apple.CFMessagePort", v1);
  CFMessagePortSetDispatchQueue_mportQueue = result;
  return result;
}

void __CFMessagePortSetDispatchQueue_block_invoke_2(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  _cfmp_source_invalidated(1, *(a1 + 56));
  dispatch_semaphore_signal(*(a1 + 48));
  v2 = *(a1 + 48);

  dispatch_release(v2);
}

void __CFMessagePortSetDispatchQueue_block_invoke_3(uint64_t a1)
{
  block[6] = *MEMORY[0x1E69E9840];
  CFRetain(*(a1 + 32));
  v2 = 2048;
  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 0x800uLL, 0x1000040504FFAC1uLL);
  for (Typed->msgh_size = 2048; ; Typed->msgh_size = v2)
  {
    Typed->msgh_bits = 0;
    v4 = *(a1 + 48);
    Typed->msgh_remote_port = 0;
    Typed->msgh_local_port = v4;
    Typed->msgh_id = 0;
    v5 = mach_msg(Typed, 117440518, 0, v2, *(a1 + 48), 0, 0);
    if (v5 != 268451844)
    {
      break;
    }

    v2 = (Typed->msgh_size + 71) & 0xFFFFFFFC;
    Typed = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, Typed, v2, -1935939019, 0);
  }

  if (v5)
  {
    __break(1u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CFMessagePortSetDispatchQueue_block_invoke_4;
  block[3] = &__block_descriptor_tmp_22_0;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  block[4] = Typed;
  block[5] = v7;
  dispatch_async(v6, block);
}

void __CFMessagePortSetDispatchQueue_block_invoke_4(uint64_t a1)
{
  v2 = __CFMessagePortPerform(*(a1 + 32), *(*(a1 + 32) + 4), &__kCFAllocatorSystemDefault, *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = mach_msg(v2, 1, v2->msgh_size, 0, 0, 0, 0);
    __CFMachMessageCheckForAndDestroyUnsentMessage(v4, v3);
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v3);
  }

  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, *(a1 + 32));
  v5 = *(a1 + 40);

  CFRelease(v5);
}

CFMutableStringRef _CFXNotificationCenterCopyDebugInfo(uint64_t a1)
{
  v5[6] = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v3 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___CFXNotificationCenterCopyDebugInfo_block_invoke;
  v5[3] = &__block_descriptor_48_e80_v16__0___CFXNotificationRegistration_____CFString__v_vQ_________v_____Q___i_Q__8l;
  v5[4] = Mutable;
  v5[5] = a1;
  CFXNotificationRegistrarEnumerate(v3, v5);
  return Mutable;
}

void _CFNotificationCenterRegisterDependentNotificationList(__CFString ****a1)
{
  os_unfair_lock_lock(&_dependentNotificationLock);
  v2 = 0;
  while ((&_unprocessedDependentNotificationLists)[v2])
  {
    if (++v2 == 8)
    {
      _CFNotificationCenterRegisterDependentNotificationList_cold_1();
    }
  }

  (&_unprocessedDependentNotificationLists)[v2] = a1;

  os_unfair_lock_unlock(&_dependentNotificationLock);
}

void _CFXNotificationGetSuspended(uint64_t a1)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    v2 = atomic_load((a1 + 8));
    if ((v2 & 2) != 0)
    {
      atomic_load((a1 + 8));
    }

    else
    {
      __break(1u);
    }
  }
}

void _CFXNotificationSetSuspended(uint64_t a1, int a2)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    v4 = atomic_load((a1 + 8));
    if ((v4 & 2) != 0)
    {
      v5 = atomic_load((a1 + 8));
      if ((v5 & 2) == 0 || (__CFIsDistNoteDaemon & 1) == 0)
      {
        v6 = atomic_load((a1 + 8));
        if (((v6 >> 3) & 1) != a2)
        {
          v7 = atomic_load((a1 + 8));
          if (a2)
          {
            v8 = "suspend";
            v9 = v7;
            do
            {
              atomic_compare_exchange_strong((a1 + 8), &v9, v7 | 8);
              v10 = v9 == v7;
              v7 = v9;
            }

            while (!v10);
          }

          else
          {
            v8 = "unsuspend";
            v11 = v7;
            do
            {
              atomic_compare_exchange_strong((a1 + 8), &v11, v7 & 0xFFFFFFFFFFFFFFF7);
              v10 = v11 == v7;
              v7 = v11;
            }

            while (!v10);
          }

          v12 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v12, "method", v8);
          xpc_dictionary_set_uint64(v12, "version", 1uLL);
          v13 = *(a1 + 24);
          _CFSuddenTerminationDisable();
          xpc_connection_send_message(v13, v12);
          xpc_connection_send_barrier(v13, &__block_literal_global_123);

          xpc_release(v12);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void CFNotificationCenterSetSuspended(unint64_t *a1, int a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 52)
  {
    _CFAssertMismatchedTypeID(0x34uLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {

    _CFXNotificationSetSuspended(a1, a2 != 0);
  }
}

void CFNotificationCenterIsSuspended(unint64_t *a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 52)
  {
    _CFAssertMismatchedTypeID(0x34uLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    _CFXNotificationGetSuspended(a1);
  }
}

uint64_t ___registerSubNotifications_block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 24);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 40);

  return v5(DarwinNotifyCenter, 0, v3, 0, 0);
}

CFStringRef __CFBooleanCopyDescription(__objc2_class **a1)
{
  v2 = CFGetAllocator(a1);
  if (&__kCFBooleanTrue == a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFBoolean %p [%p]>{value = %s}", a1, v2, v3);
}

CFStringRef __CFNumberCreateFormattingDescription(const __CFAllocator *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v3 = 0;
  v4 = *MEMORY[0x1E69E5910];
  if ((~a2 & 0xC000000000000007) == 0)
  {
    v4 = 0;
  }

  v5 = v4 ^ a2;
  while ((v5 & 7) != *(MEMORY[0x1E69E5900] + v3))
  {
    if (++v3 == 7)
    {
      goto LABEL_10;
    }
  }

  if (v3 == 3)
  {
    v6 = v5 >> 3;
  }

  else
  {
LABEL_10:
    LOBYTE(v6) = atomic_load((a2 + 8));
  }

  if ((__CFNumberTypeTable[__CFNumberCanonicalTypes[v6 & 7]] & 0x20) != 0)
  {

    return __CFNumberCreateFormattingDescriptionAsFloat64(a1, a2);
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    __CFNumberGetValue(a2, 17, v8);
    emit128(v9, v8, 0);
    return CFStringCreateWithFormat(a1, 0, @"%s", v9);
  }
}

__CFString *__CFNumberCopyDescription(unint64_t *a1)
{
  v18[16] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ a1;
  while ((v4 & 7) != *(MEMORY[0x1E69E5900] + v2))
  {
    if (++v2 == 7)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 3)
  {
    v5 = v4 >> 3;
  }

  else
  {
LABEL_10:
    LOBYTE(v5) = atomic_load(a1 + 1);
  }

  v6 = v5 & 7;
  v7 = __CFNumberCanonicalTypes[v6];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v9 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<CFNumber %p [%p]>{value = ", a1, v9);
  v10 = __CFNumberTypeTable[v7];
  if ((v10 & 0x20) == 0)
  {
    v17[0] = 0;
    v17[1] = 0;
    __CFNumberGetValue(a1, 17, v17);
    emit128(v18, v17, 1);
    v11 = "unknown integer";
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v11 = "kCFNumberSInt8Type";
      }

      else if (v7 == 2)
      {
        v11 = "kCFNumberSInt16Type";
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          v11 = "kCFNumberSInt32Type";
          break;
        case 4:
          v11 = "kCFNumberSInt64Type";
          break;
        case 17:
          v11 = "kCFNumberSInt128Type";
          break;
      }
    }

    CFStringAppendFormat(Mutable, 0, @"%s, type = %s}", v18, v11);
    return Mutable;
  }

  v18[0] = 0.0;
  __CFNumberGetValue(a1, 6, v18);
  if (fabs(v18[0]) == INFINITY)
  {
    if (v18[0] <= 0.0)
    {
      v12 = @"-infinity";
    }

    else
    {
      v12 = @"+infinity";
    }
  }

  else
  {
    if (v18[0] != 0.0)
    {
      v14 = 20;
      if ((v10 & 0x40) == 0)
      {
        v14 = 10;
      }

      CFStringAppendFormat(Mutable, 0, @"%+.*f", v18[0], v14, *&v18[0]);
      goto LABEL_26;
    }

    if (v18[0] >= 0.0)
    {
      v12 = @"+0.0";
    }

    else
    {
      v12 = @"-0.0";
    }
  }

  CFStringAppend(Mutable, v12);
LABEL_26:
  v13 = "unknown float";
  if (v6 == 5)
  {
    v13 = "kCFNumberFloat64Type";
  }

  if (v6 == 4)
  {
    v13 = "kCFNumberFloat32Type";
  }

  CFStringAppendFormat(Mutable, 0, @", type = %s}", v13, v16);
  return Mutable;
}

CFStringRef __CFNumberFormatterCopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CFNumberFormatter %p [%p]>", a1, v3);
}

CFNumberFormatterStyle CFNumberFormatterGetStyle(CFNumberFormatterRef formatter)
{
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v2);
  }

  return *(formatter + 4);
}

Boolean CFNumberFormatterGetDecimalInfoForCurrencyCode(CFStringRef currencyCode, int32_t *defaultFractionDigits, double *roundingIncrement)
{
  v7 = *MEMORY[0x1E69E9840];
  v8.location = 0;
  v8.length = 3;
  CFStringGetCharacters(currencyCode, v8, buffer);
  buffer[3] = 0;
  if (defaultFractionDigits)
  {
    *defaultFractionDigits = __cficu_ucurr_getDefaultFractionDigits();
  }

  if (roundingIncrement)
  {
    *roundingIncrement = __cficu_ucurr_getRoundingIncrement();
  }

  if (!defaultFractionDigits)
  {
    if (!roundingIncrement)
    {
      return 1;
    }

    return *roundingIncrement >= 0.0;
  }

  result = *defaultFractionDigits >= 0;
  if (roundingIncrement && (*defaultFractionDigits & 0x80000000) == 0)
  {
    return *roundingIncrement >= 0.0;
  }

  return result;
}

CFTypeID __CFNumberFormatterApplySymbolPrefs(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v5 == result)
  {
    v7 = CFGetTypeID(a2);
    result = CFStringGetTypeID();
    if (v7 == result)
    {
      CFStringGetIntValue(a1);
      v14[1] = 0;
      Length = CFStringGetLength(a2);
      if (Length < 1)
      {
        return __cficu_unum_setSymbol();
      }

      else
      {
        if (Length >= 0x300)
        {
          v11 = 768;
        }

        else
        {
          v11 = Length;
        }

        MEMORY[0x1EEE9AC00](Length, v9, v10);
        v13 = (v14 - v12);
        if (!CFStringGetCharactersPtr(a2))
        {
          v16.location = 0;
          v16.length = v11;
          CFStringGetCharacters(a2, v16, v13);
        }

        return __cficu_unum_setSymbol();
      }
    }
  }

  return result;
}

void mutateError(SEL sel, uint64_t a2, void *a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 == 1)
      {
        Name = sel_getName(sel);
        _CFThrowFormattedException(@"NSInvalidArgumentException", @"Attempt to mutate immutable object with %s", Name);
      }

      v4 = sel_getName(sel);
      Class = object_getClass(a3);
      _CFThrowFormattedException(@"NSInvalidArgumentException", @"Can't call %s in %@", v4, Class);
    }

    v6 = __CFExceptionProem(a3, sel);
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: nil argument", v6);
  }

  v7 = __CFExceptionProem(a3, sel);
  _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range or index out of bounds", v7);
}

void mutateError2(SEL sel, uint64_t a2, void *a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 == 1)
      {
        Name = sel_getName(sel);
        _CFThrowFormattedException(@"NSInvalidArgumentException", @"Attempt to mutate immutable object with %s", Name);
      }

      v4 = sel_getName(sel);
      Class = object_getClass(a3);
      _CFThrowFormattedException(@"NSInvalidArgumentException", @"Can't call %s in %@", v4, Class);
    }

    v6 = __CFExceptionProem(a3, sel);
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: nil argument", v6);
  }

  v7 = __CFExceptionProem(a3, sel);
  _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range or index out of bounds", v7);
}

void *__CFFireTimer(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = _CFAutoreleasePoolPush();
  v6 = a1;
  v7 = v3;
  [v3 v4];

  return _CFAutoreleasePoolPop(v5);
}

uint64_t __CFDescribeTimer(uint64_t a1, uint64_t a2, char *a3, size_t a4, char *a5, size_t a6, uint64_t *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  ClassName = object_getClassName(v12);
  Name = sel_getName(v13);
  if (a7)
  {
    *a7 = object_getMethodImplementation();
  }

  v16 = "<unknown name>";
  if (ClassName)
  {
    v16 = ClassName;
  }

  v17 = "<unknown selector>";
  if (Name)
  {
    v17 = Name;
  }

  snprintf(a5, a6, "(CFTimer) %s %s", v16, v17);
  Class = object_getClass(v12);
  memset(&v21, 0, sizeof(v21));
  result = dladdr(Class, &v21);
  if (result)
  {
    dli_fname = v21.dli_fname;
    if (!v21.dli_fname)
    {
      dli_fname = "<unknown library>";
    }

    return snprintf(a3, a4, "%s", dli_fname);
  }

  return result;
}

id *_timerRelease(id *result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) <= 1)
  {
    v2 = result;
    v3 = _CFAutoreleasePoolPush();

    free(v2);

    return _CFAutoreleasePoolPop(v3);
  }

  return result;
}

void _inputStreamCallbackFunc(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 retainedDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 stream:a1 handleEvent:a2];
  }
}

void mergeFunc(uint64_t a1, const __CFDictionary *cf, os_unfair_lock_s *a3)
{
  if (CFGetTypeID(cf) == 18)
  {
    Value = CFDictionaryGetValue(cf, @"NSUserDefaultsDefaultValue");
    if (Value)
    {

      [(CFPrefsSource *)a3 setValue:a1 forKey:0 from:?];
    }
  }
}

uint64_t remoteStoreChanged(void *a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __remoteStoreChanged_block_invoke;
  v2[3] = &unk_1E6D81EC0;
  v2[4] = a1;
  return [a1 lockedAsync:v2];
}

void sub_1831E6D24(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int buf, __int128 a16, id a17)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 2)
  {
    v18 = objc_begin_catch(a1);
    v20 = _CFPrefsDaemonLog(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(v17 + 48);
      buf = 138478339;
      WORD2(a16) = 2114;
      *(&a16 + 6) = v21;
      HIWORD(a16) = 2114;
      a17 = v18;
      _os_log_error_impl(&dword_1830E6000, v20, OS_LOG_TYPE_ERROR, "writing key %{private}@ in cloud domain %{public}@ failed with exception %{public}@", &buf, 0x20u);
    }

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(a1);
  }

  JUMPOUT(0x1831E6CD0);
}

uint64_t __remoteStoreChanged_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(*(a1 + 32) + 152) synchronizeForced:1];
  v4 = _CFPrefsDaemonLog(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __remoteStoreChanged_block_invoke_cold_1(v1, v4);
  }

  [*v1 updateShmemEntry];
  return [*v1 asyncNotifyObserversOfWriteFromConnection:0 message:0];
}

void *initSYDRemotePreferencesSource()
{
  if (SyncedDefaultsLibrary_frameworkLibrary || (result = dlopen("/System/Library/PrivateFrameworks/SyncedDefaults.framework/SyncedDefaults", 2), (SyncedDefaultsLibrary_frameworkLibrary = result) != 0))
  {
    result = objc_getClass("SYDRemotePreferencesSource");
    classSYDRemotePreferencesSource = result;
    getSYDRemotePreferencesSourceClass[0] = SYDRemotePreferencesSourceFunction;
  }

  return result;
}

void sub_1831E769C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1831E77FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *PROEM_CLS(uint64_t a1)
{
  v1 = objc_opt_class();
  if (!v1)
  {
    return "(null class)";
  }

  return class_getName(v1);
}

const char *PROEM_SEL(const char *a1)
{
  if (a1)
  {
    return sel_getName(a1);
  }

  else
  {
    return "(null selector)";
  }
}

double __os_log_helper_1_2_5_8_32_8_32_8_0_8_32_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&result = 136316162;
  *a1 = 136316162;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2080;
  *(a1 + 34) = a5;
  *(a1 + 42) = 2048;
  *(a1 + 44) = a6;
  return result;
}

uint64_t (**(*CFStringEncodingConverterFindBootstrap(int a1))(int a1, uint64_t (*a2)(uint64_t)))()
{
  v1 = __CFStringEncodingGetArabicConverterDefinition;
  if (a1 > 1039)
  {
    if (a1 <= 1287)
    {
      if (a1 > 1057)
      {
        if (a1 <= 1283)
        {
          if (a1 <= 1281)
          {
            if (a1 != 1058)
            {
              if (a1 != 1281)
              {
                return 0;
              }

              return __CFStringEncodingGetLatin2ConverterDefinition;
            }

            return __CFStringEncodingGetKoreanConverterDefinition;
          }

          if (a1 != 1282)
          {
            return __CFStringEncodingGetGreekConverterDefinition;
          }

          return __CFStringEncodingGetCyrillicConverterDefinition;
        }

        if (a1 <= 1285)
        {
          if (a1 != 1284)
          {
            return __CFStringEncodingGetHebrewConverterDefinition;
          }

          return __CFStringEncodingGetLatin5ConverterDefinition;
        }

        if (a1 == 1286)
        {
          return v1;
        }

        return __CFStringEncodingGetLatinSuppConverterDefinition;
      }

      if (a1 > 1045)
      {
        if (a1 <= 1052)
        {
          if (a1 != 1046)
          {
            if (a1 != 1051)
            {
              return 0;
            }

            return __CFStringEncodingGetCyrillicConverterDefinition;
          }

          return __CFStringEncodingGetLatinSuppConverterDefinition;
        }

        if (a1 != 1053)
        {
          if (a1 != 1056)
          {
            return 0;
          }

          return __CFStringEncodingGetJapaneseConverterDefinition;
        }

        return __CFStringEncodingGetThaiConverterDefinition;
      }

      if (a1 == 1040)
      {
        return __CFStringEncodingGetLatinSuppConverterDefinition;
      }

      if (a1 != 1042)
      {
        if (a1 != 1044)
        {
          return 0;
        }

        return __CFStringEncodingGetLatin5ConverterDefinition;
      }

      return __CFStringEncodingGetLatin2ConverterDefinition;
    }

    if (a1 <= 2562)
    {
      if (a1 <= 2351)
      {
        if (a1 > 2111)
        {
          if (a1 == 2112)
          {
            return __CFStringEncodingGetKoreanConverterDefinition;
          }

          if (a1 != 2336)
          {
            return 0;
          }
        }

        else
        {
          if (a1 == 1288)
          {
            return __CFStringEncodingGetVietnameseConverterDefinition;
          }

          if (a1 != 2080)
          {
            return 0;
          }
        }

        return __CFStringEncodingGetJapaneseConverterDefinition;
      }

      if (a1 > 2560)
      {
        if (a1 != 2561)
        {
          return __CFStringEncodingGetCyrillicConverterDefinition;
        }

        return __CFStringEncodingGetJapaneseConverterDefinition;
      }

      if (a1 != 2352)
      {
        if (a1 != 2368)
        {
          return 0;
        }

        return __CFStringEncodingGetKoreanConverterDefinition;
      }

      return __CFStringEncodingGetSimplifiedChineseConverterDefinition;
    }

    if (a1 > 3055)
    {
      if ((a1 - 3056) > 4 || a1 == 3059)
      {
        return 0;
      }

      return __CFStringEncodingGetJapaneseConverterDefinition;
    }

    if (a1 != 2563)
    {
      if (a1 == 2564)
      {
        return __CFStringEncodingGetLatinSuppConverterDefinition;
      }

      if (a1 != 2565)
      {
        return 0;
      }

      return __CFStringEncodingGetSimplifiedChineseConverterDefinition;
    }

    return __CFStringEncodingGetTraditionalChineseConverterDefinition;
  }

  if (a1 <= 513)
  {
    if (a1 > 32)
    {
      if (a1 > 36)
      {
        if (a1 == 37)
        {
          return __CFStringEncodingGetLatinSuppConverterDefinition;
        }

        if (a1 != 38)
        {
          if (a1 != 152)
          {
            return 0;
          }

          return __CFStringEncodingGetCyrillicConverterDefinition;
        }
      }

      else
      {
        if ((a1 - 33) < 2)
        {
          return __CFStringEncodingGetSymbolConverterDefinition;
        }

        if (a1 == 35)
        {
          return __CFStringEncodingGetLatin5ConverterDefinition;
        }

        if (a1 != 36)
        {
          return 0;
        }
      }

      return __CFStringEncodingGetLatin2ConverterDefinition;
    }

    if (a1 > 6)
    {
      if (a1 <= 24)
      {
        if (a1 == 7)
        {
          return __CFStringEncodingGetCyrillicConverterDefinition;
        }

        if (a1 != 21)
        {
          return 0;
        }

        return __CFStringEncodingGetThaiConverterDefinition;
      }

      if (a1 != 25)
      {
        if (a1 != 29)
        {
          return 0;
        }

        return __CFStringEncodingGetLatin2ConverterDefinition;
      }

      return __CFStringEncodingGetSimplifiedChineseConverterDefinition;
    }

    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return __CFStringEncodingGetKoreanConverterDefinition;
      }

      if (a1 != 6)
      {
        return 0;
      }

      return __CFStringEncodingGetGreekConverterDefinition;
    }

    if (a1 == 1)
    {
      return __CFStringEncodingGetJapaneseConverterDefinition;
    }

    if (a1 != 2)
    {
      return 0;
    }

    return __CFStringEncodingGetTraditionalChineseConverterDefinition;
  }

  if (a1 > 522)
  {
    if (a1 > 1023)
    {
      if (a1 != 1024)
      {
        if (a1 == 1029)
        {
          return __CFStringEncodingGetGreekConverterDefinition;
        }

        if (a1 != 1030)
        {
          return 0;
        }
      }

      return __CFStringEncodingGetLatinSuppConverterDefinition;
    }

    if ((a1 - 525) < 3)
    {
      return __CFStringEncodingGetLatinSuppConverterDefinition;
    }

    if (a1 != 523)
    {
      return 0;
    }

    return __CFStringEncodingGetThaiConverterDefinition;
  }

  if (a1 > 518)
  {
    if (a1 <= 520)
    {
      if (a1 == 519)
      {
        return __CFStringEncodingGetGreekConverterDefinition;
      }

      return __CFStringEncodingGetHebrewConverterDefinition;
    }

    if (a1 == 521)
    {
      return __CFStringEncodingGetLatin5ConverterDefinition;
    }

    return __CFStringEncodingGetLatinSuppConverterDefinition;
  }

  if (a1 == 514)
  {
    return __CFStringEncodingGetLatin2ConverterDefinition;
  }

  if (a1 == 517)
  {
    return __CFStringEncodingGetCyrillicConverterDefinition;
  }

  if (a1 != 518)
  {
    return 0;
  }

  return v1;
}

CFStringRef _CFStringCreateHostName()
{
  v2 = *MEMORY[0x1E69E9840];
  if (gethostname(cStr, 0x101uLL))
  {
    cStr[0] = 0;
  }

  return CFStringCreateWithCString(&__kCFAllocatorSystemDefault, cStr, 0x8000100u);
}

void __CFTSDInitialize(uint64_t result, uint64_t a2)
{
  if (__CFTSDInitialize_once != -1)
  {
    __CFTSDInitialize_cold_1();
  }
}

uint64_t (*CFStringEncodingGetAddressForSelector(unsigned int a1))()
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1EF0659F8[a1];
  }
}

uint64_t CFStringEncodingIsDecomposableCharacter(unsigned int a1)
{
  if (a1 >= 0x80)
  {
    return CFUniCharIsMemberOf(a1, 0x65u);
  }

  else
  {
    return 0;
  }
}

uint64_t CFStringEncodingDecomposeCharacter(char a1, __int16 a2, unsigned int *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v4 = 0;
  CFUniCharDecompose(&v5, 1, 0, a3, 10, &v4, 0, 0, a1 < 0);
  return v4;
}

uint64_t (**__CFStringEncodingGetExternalConverter(uint64_t a1))()
{
  if (WORD1(a1) || (Bootstrap = CFStringEncodingConverterFindBootstrap(a1)) == 0)
  {
    if (__CFStringEncodingGetICUName(a1))
    {
      return &__CFICUBootstrap;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return Bootstrap(a1, CFStringEncodingGetAddressForSelector);
  }
}

uint64_t __CFStringEncodingCreateListOfAvailablePlatformConverters(int a1, void *a2)
{
  result = CFAllocatorAllocateTyped(a1, 0xDCuLL, 0x100004052888210uLL);
  for (i = 0; i != 55; ++i)
  {
    *(result + 4 * i) = __CFStringEncodingDylibConveters[i];
  }

  *a2 = 55;
  return result;
}

id __CFCalendarCopyDescription(void *a1)
{
  v1 = [a1 debugDescription];

  return v1;
}

CFLocaleRef CFCalendarCopyLocale(CFCalendarRef calendar)
{
  v1 = [(__CFCalendar *)calendar locale];

  return [v1 copy];
}

CFTimeZoneRef CFCalendarCopyTimeZone(CFCalendarRef calendar)
{
  v1 = [(__CFCalendar *)calendar timeZone];

  return [v1 copy];
}

id CFCalendarCopyGregorianStartDate(void *a1)
{
  v1 = [a1 gregorianStartDate];

  return v1;
}

CFRange CFCalendarGetMinimumRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit)
{
  v2 = [(__CFCalendar *)calendar minimumRangeOfUnit:unit];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = -1;
    v3 = -1;
  }

  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFCalendarGetMaximumRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit)
{
  v2 = [(__CFCalendar *)calendar maximumRangeOfUnit:unit];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = -1;
    v3 = -1;
  }

  result.length = v3;
  result.location = v2;
  return result;
}

Boolean CFCalendarAddComponents(CFCalendarRef calendar, CFAbsoluteTime *at, CFOptionFlags options, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  va_copy(v16, va);
  v8 = [objc_allocWithZone(NSDateComponents) init];
  v9 = *componentDesc;
  if (*componentDesc)
  {
    v10 = componentDesc + 1;
    while (1)
    {
      v11 = va_arg(v16, void);
      if (v9 <= 113)
      {
        switch(v9)
        {
          case 'D':
            [v8 setDayOfYear:v11];
            break;
          case 'E':
          case 'c':
            [v8 setWeekday:v11];
            break;
          case 'F':
            [v8 setWeekdayOrdinal:v11];
            break;
          case 'G':
            [v8 setEra:v11];
            break;
          case 'H':
            [v8 setHour:v11];
            break;
          case 'I':
          case 'J':
          case 'K':
          case 'N':
          case 'O':
          case 'P':
          case 'S':
          case 'T':
          case 'V':
          case 'X':
          case 'Z':
          case '[':
          case '\\':
          case ']':
          case '_':
          case 'a':
          case 'b':
          case 'e':
          case 'f':
          case 'g':
          case 'h':
          case 'i':
          case 'j':
          case 'k':
            goto LABEL_28;
          case 'L':
          case 'M':
            [v8 setMonth:v11];
            break;
          case 'Q':
            [v8 setQuarter:v11];
            break;
          case 'R':
            [v8 setRepeatedDay:v11 != 0];
            break;
          case 'U':
            goto LABEL_12;
          case 'W':
            [v8 setWeekOfMonth:v11];
            break;
          case 'Y':
            [v8 setYearForWeekOfYear:v11];
            break;
          case '^':
            goto LABEL_14;
          case 'd':
            [v8 setDay:v11];
            break;
          case 'l':
            [v8 setLeapMonth:v11 != 0];
            break;
          case 'm':
            [v8 setMinute:v11];
            break;
          default:
            if (v9 == 35)
            {
              [v8 setNanosecond:v11];
            }

            break;
        }

        goto LABEL_28;
      }

      if (v9 <= 118)
      {
        break;
      }

      if (v9 == 119)
      {
LABEL_14:
        [v8 setWeekOfYear:{v11, v16}];
        [v8 setWeek:v11];
        goto LABEL_28;
      }

      if (v9 == 121)
      {
        goto LABEL_12;
      }

LABEL_28:
      v12 = *v10++;
      v9 = v12;
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    if (v9 != 114)
    {
      if (v9 == 115)
      {
        [v8 setSecond:v11];
      }

      goto LABEL_28;
    }

LABEL_12:
    [v8 setYear:{v11, v16}];
    goto LABEL_28;
  }

LABEL_29:
  v13 = [(__CFCalendar *)calendar dateByAddingComponents:v8 toDate:[NSDate options:"dateWithTimeIntervalSinceReferenceDate:" dateWithTimeIntervalSinceReferenceDate:v16], options];

  if (!v13)
  {
    return 0;
  }

  [v13 timeIntervalSinceReferenceDate];
  *at = v14;
  return 1;
}

Boolean CFCalendarGetComponentDifference(CFCalendarRef calendar, CFAbsoluteTime startingAT, CFAbsoluteTime resultAT, CFOptionFlags options, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  vars0 = va_arg(va, void);
  v5 = vars0;
  vars8 = va_arg(va, _BYTE *);
  v6 = 0;
  va_copy(v29, va);
  for (i = vars8; ; ++i)
  {
    v8 = *i;
    if (v8 > 0x56)
    {
      v9 = v6 | 0x2100;
      v10 = v6 | 4;
      if (v8 != 121)
      {
        v10 = v6;
      }

      if (v8 != 119)
      {
        v9 = v10;
      }

      v11 = v6 | 0x40;
      v12 = v6 | 0x80;
      if (v8 != 115)
      {
        v12 = v6;
      }

      if (v8 != 109)
      {
        v11 = v12;
      }

      if (*i <= 0x76u)
      {
        v9 = v11;
      }

      v13 = v6 | 0x10;
      v14 = v6 | 8;
      if (v8 != 108)
      {
        v14 = v6;
      }

      if (v8 != 100)
      {
        v13 = v14;
      }

      v15 = v6 | 0x1000;
      v16 = v6 | 0x4000;
      if (v8 != 89)
      {
        v16 = v6;
      }

      if (v8 != 87)
      {
        v15 = v16;
      }

      if (*i <= 0x63u)
      {
        v13 = v15;
      }

      v17 = *i <= 0x6Cu;
      goto LABEL_38;
    }

    if (*i > 0x46u)
    {
      v9 = v6 | 8;
      v18 = v6 | 0x800;
      if (v8 != 81)
      {
        v18 = v6;
      }

      if (v8 != 77)
      {
        v9 = v18;
      }

      v13 = v6 | 2;
      v19 = v6 | 0x20;
      if (v8 != 72)
      {
        v19 = v6;
      }

      if (v8 != 71)
      {
        v13 = v19;
      }

      v17 = *i <= 0x4Cu;
LABEL_38:
      if (v17)
      {
        v6 = v13;
      }

      else
      {
        v6 = v9;
      }

      continue;
    }

    if (*i > 0x44u)
    {
      v20 = v6 | 0x400;
      if (v8 != 70)
      {
        v20 = v6;
      }

      if (v8 == 69)
      {
        v6 |= 0x200uLL;
      }

      else
      {
        v6 = v20;
      }

      continue;
    }

    if (v8 == 35)
    {
      v6 |= 0x8000uLL;
      continue;
    }

    if (v8 == 68)
    {
      v6 |= 0x10000uLL;
      continue;
    }

    if (!*i)
    {
      break;
    }
  }

  v21 = [(__CFCalendar *)calendar components:v6 fromDate:[NSDate dateWithTimeIntervalSinceReferenceDate:?], [NSDate dateWithTimeIntervalSinceReferenceDate:resultAT], v5];
  if (v21)
  {
    v22 = *vars8;
    if (*vars8)
    {
      v23 = v21;
      v24 = vars8 + 1;
      do
      {
        v25 = va_arg(v29, _DWORD *);
        if (v22 <= 81)
        {
          if (v22 > 70)
          {
            if (v22 > 76)
            {
              if (v22 == 77)
              {
                v26 = [v23 month];
                goto LABEL_92;
              }

              if (v22 == 81)
              {
                v26 = [v23 quarter];
                goto LABEL_92;
              }
            }

            else
            {
              if (v22 == 71)
              {
                v26 = [v23 era];
                goto LABEL_92;
              }

              if (v22 == 72)
              {
                v26 = [v23 hour];
                goto LABEL_92;
              }
            }
          }

          else
          {
            if (v22 > 68)
            {
              if (v22 == 69)
              {
                v26 = [v23 weekday];
              }

              else
              {
                v26 = [v23 weekdayOrdinal];
              }

              goto LABEL_92;
            }

            if (v22 == 35)
            {
              v26 = [v23 nanosecond];
              goto LABEL_92;
            }

            if (v22 == 68)
            {
              v26 = [v23 dayOfYear];
              goto LABEL_92;
            }
          }
        }

        else if (v22 <= 107)
        {
          if (v22 > 88)
          {
            if (v22 == 89)
            {
              v26 = [v23 yearForWeekOfYear];
              goto LABEL_92;
            }

            if (v22 == 100)
            {
              v26 = [v23 day];
              goto LABEL_92;
            }
          }

          else
          {
            if (v22 == 82)
            {
              v26 = [v23 isRepeatedDay];
              goto LABEL_92;
            }

            if (v22 == 87)
            {
              v26 = [v23 weekOfMonth];
              goto LABEL_92;
            }
          }
        }

        else if (v22 <= 114)
        {
          if (v22 == 108)
          {
            v26 = [v23 isLeapMonth];
            goto LABEL_92;
          }

          if (v22 == 109)
          {
            v26 = [v23 minute];
            goto LABEL_92;
          }
        }

        else
        {
          switch(v22)
          {
            case 's':
              v26 = [v23 second];
              goto LABEL_92;
            case 'w':
              *v25 = [v23 weekOfYear];
              if ([v23 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v26 = [v23 week];
                goto LABEL_92;
              }

              break;
            case 'y':
              v26 = [v23 year];
LABEL_92:
              *v25 = v26;
              break;
          }
        }

        v27 = *v24++;
        v22 = v27;
      }

      while (v27);
    }

    LOBYTE(v21) = 1;
  }

  return v21;
}

Boolean CFCalendarGetTimeRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit, CFAbsoluteTime at, CFAbsoluteTime *startp, CFTimeInterval *tip)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11[0] = 0;
  v7 = [(__CFCalendar *)calendar rangeOfUnit:unit startDate:v11 interval:&v10 forDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
  if (v7)
  {
    if (startp)
    {
      [v11[0] timeIntervalSinceReferenceDate];
      *startp = v8;
    }

    if (tip)
    {
      *tip = v10;
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

uint64_t CFCalendarGetComponentFromDate(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 component:a2 fromDate:a3];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = [(__CFCalendar *)calendar rangeOfUnit:smallerUnit inUnit:biggerUnit forDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = -1;
    v5 = -1;
  }

  result.length = v5;
  result.location = v4;
  return result;
}

CFIndex CFCalendarGetOrdinalityOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  result = [(__CFCalendar *)calendar ordinalityOfUnit:smallerUnit inUnit:biggerUnit forDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

void _CFLocaleSetPreferredMeasurementSystem(__CFString *cf1)
{
  v1 = cf1;
  if (cf1)
  {
    if (CFEqual(cf1, @"Metric"))
    {
      v2 = &kCFBooleanTrue;
      v1 = @"Centimeters";
    }

    else
    {
      if (CFEqual(v1, @"U.S."))
      {
        v2 = &kCFBooleanFalse;
      }

      else
      {
        if (!CFEqual(v1, @"U.K."))
        {
          return;
        }

        v2 = &kCFBooleanTrue;
      }

      v1 = @"Inches";
    }

    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetValue(@"AppleMetricUnits", v3, @"kCFPreferencesAnyApplication", @"kCFPreferencesCurrentUser", @"kCFPreferencesAnyHost");
  CFPreferencesSetValue(@"AppleMeasurementUnits", v1, @"kCFPreferencesAnyApplication", @"kCFPreferencesCurrentUser", @"kCFPreferencesAnyHost");
  CFPreferencesSynchronize(@"kCFPreferencesAnyApplication", @"kCFPreferencesCurrentUser", @"kCFPreferencesAnyHost");
  __CFLocaleResetCurrent(1);

  _CFLocalePostChangeNotification(@"AppleMeasurementSystemPreferencesChangedNotification");
}

void _CFLocalePostChangeNotification(const __CFString *a1)
{
  __CFLocaleResetCurrent(1);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, a1, 0, 0, 1u);
}

CFTypeRef _CFLocaleCopyPreferredMeasurementSystem()
{
  v0 = CFPreferencesCopyValue(@"AppleMetricUnits", @"kCFPreferencesAnyApplication", @"kCFPreferencesCurrentUser", @"kCFPreferencesAnyHost");
  v1 = CFPreferencesCopyValue(@"AppleMeasurementUnits", @"kCFPreferencesAnyApplication", @"kCFPreferencesCurrentUser", @"kCFPreferencesAnyHost");
  if (!(v0 | v1))
  {
    return 0;
  }

  v2 = v1;
  if (v1)
  {
    v3 = &__kCFBooleanTrue == v0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && CFEqual(v1, @"Inches"))
  {
    if (dyld_program_sdk_at_least())
    {
      v4 = &kCFLocaleMeasurementSystemUK;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v0)
  {
    v6 = &__kCFBooleanFalse == v0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v4 = &kCFLocaleMeasurementSystemUS;
LABEL_19:
    v5 = CFRetain(*v4);
    if (!v0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v2 && CFEqual(v2, @"Centimeters"))
  {
LABEL_17:
    v4 = &kCFLocaleMeasurementSystemMetric;
    goto LABEL_19;
  }

  v5 = 0;
  if (v0)
  {
LABEL_20:
    CFRelease(v0);
  }

LABEL_21:
  if (v2)
  {
    CFRelease(v2);
  }

  return v5;
}

void _CFLocaleSetPreferredTemperatureUnit(CFPropertyListRef value)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!value || _CFLocaleGetTemperatureUnitForPreferences(value, &v2))
  {
    CFPreferencesSetValue(@"AppleTemperatureUnit", value, @"kCFPreferencesAnyApplication", @"kCFPreferencesCurrentUser", @"kCFPreferencesAnyHost");
    CFPreferencesSynchronize(@"kCFPreferencesAnyApplication", @"kCFPreferencesCurrentUser", @"kCFPreferencesAnyHost");
    __CFLocaleResetCurrent(1);

    _CFLocalePostChangeNotification(@"AppleTemperatureUnitPreferencesChangedNotification");
  }
}

Boolean CFPlugInRegisterFactoryFunction(CFUUIDRef factoryUUID, CFPlugInFactoryFunction func)
{
  os_unfair_recursive_lock_lock_with_options();
  Locked = _CFPFactoryCommonCreateLocked(&__kCFAllocatorSystemDefault, factoryUUID, v4, v5, v6, v7, v8, v9);
  Locked[5] = 0;
  Locked[6] = 0;
  Locked[4] = func;
  os_unfair_recursive_lock_unlock();
  return 1;
}

Boolean CFPlugInRegisterFactoryFunctionByName(CFUUIDRef factoryUUID, CFPlugInRef plugIn, CFStringRef functionName)
{
  os_unfair_recursive_lock_lock_with_options();
  _CFPlugInRegisterFactoryFunctionByNameLocked(factoryUUID, plugIn, functionName, v6, v7, v8, v9, v10);
  os_unfair_recursive_lock_unlock();
  return 1;
}

Boolean CFPlugInUnregisterFactory(CFUUIDRef factoryUUID)
{
  os_unfair_recursive_lock_lock_with_options();
  if (_factoriesByFactoryID && (Value = CFDictionaryGetValue(_factoriesByFactoryID, factoryUUID)) != 0 && Value[24])
  {
    _CFPFactoryDisableLocked(Value);
  }

  else
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInUnregisterFactory_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_ERROR))
    {
      CFPlugInUnregisterFactory_cold_2();
    }
  }

  os_unfair_recursive_lock_unlock();
  return 1;
}

void _CFPFactoryDisableLocked(_BYTE *a1)
{
  a1[24] = 0;
  if (_CFBundlePluginLogger_onceToken != -1)
  {
    _CFPFactoryDisableLocked_cold_1();
  }

  v2 = _CFBundlePluginLogger__log;
  if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
  {
    _CFPFactoryDisableLocked_cold_2(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  CFRelease(a1);
}

Boolean CFPlugInRegisterPlugInType(CFUUIDRef factoryUUID, CFUUIDRef typeUUID)
{
  os_unfair_recursive_lock_lock_with_options();
  _CFPlugInRegisterPlugInTypeLocked(factoryUUID, typeUUID);
  os_unfair_recursive_lock_unlock();
  return 1;
}

Boolean CFPlugInUnregisterPlugInType(CFUUIDRef factoryUUID, CFUUIDRef typeUUID)
{
  os_unfair_recursive_lock_lock_with_options();
  if (_factoriesByFactoryID && (Value = CFDictionaryGetValue(_factoriesByFactoryID, factoryUUID)) != 0 && *(Value + 24))
  {
    _CFPFactoryRemoveTypeLocked(Value, typeUUID);
  }

  else
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInUnregisterPlugInType_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_ERROR))
    {
      CFPlugInUnregisterPlugInType_cold_2();
    }
  }

  os_unfair_recursive_lock_unlock();
  return 1;
}

void _CFPFactoryRemoveTypeLocked(CFMutableArrayRef *a1, const void *a2)
{
  v4 = a1[7];
  v9.length = CFArrayGetCount(v4);
  v9.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v9, a2);
  if ((FirstIndexOfValue & 0x80000000) == 0)
  {
    CFArrayRemoveValueAtIndex(a1[7], FirstIndexOfValue & 0x7FFFFFFF);
  }

  if (_factoriesByTypeID)
  {
    Value = CFDictionaryGetValue(_factoriesByTypeID, a2);
    if (Value)
    {
      v7 = Value;
      v10.length = CFArrayGetCount(Value);
      v10.location = 0;
      v8 = CFArrayGetFirstIndexOfValue(v7, v10, a1);
      if ((v8 & 0x80000000) == 0)
      {
        CFArrayRemoveValueAtIndex(v7, v8 & 0x7FFFFFFF);
        if (!CFArrayGetCount(v7))
        {
          CFDictionaryRemoveValue(_factoriesByTypeID, a2);
        }
      }
    }
  }

  if (_CFBundlePluginLogger_onceToken != -1)
  {
    _CFPFactoryRemoveTypeLocked_cold_1();
  }

  if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
  {
    _CFPFactoryRemoveTypeLocked_cold_2();
  }
}

void CFPlugInSetLoadOnDemand(CFPlugInRef plugIn, Boolean flag)
{
  v2 = flag;
  PlugInData = __CFBundleGetPlugInData(plugIn);
  if (*PlugInData)
  {
    v5 = PlugInData;
    os_unfair_recursive_lock_lock_with_options();
    v5[1] = v2;
    if (v2)
    {
      if (v5[2] || *(v5 + 2))
      {

        os_unfair_recursive_lock_unlock();
      }

      else
      {
        os_unfair_recursive_lock_unlock();

        CFBundleUnloadExecutable(plugIn);
      }
    }

    else
    {
      os_unfair_recursive_lock_unlock();

      CFBundleLoadExecutable(plugIn);
    }
  }
}

Boolean CFPlugInIsLoadOnDemand(CFPlugInRef plugIn)
{
  if (*__CFBundleGetPlugInData(plugIn))
  {
    return *(__CFBundleGetPlugInData(plugIn) + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *_CFPlugInWillUnload(uint64_t a1)
{
  result = __CFBundleGetPlugInData(a1);
  if (*result)
  {
    os_unfair_recursive_lock_lock_with_options();
    PlugInData = __CFBundleGetPlugInData(a1);
    Count = CFArrayGetCount(*(PlugInData + 16));
    if (Count >= 1)
    {
      v5 = (Count & 0x7FFFFFFF) + 1;
      do
      {
        v6 = __CFBundleGetPlugInData(a1);
        *(CFArrayGetValueAtIndex(*(v6 + 16), v5 - 2) + 4) = 0;
        --v5;
      }

      while (v5 > 1);
    }

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

void _CFPFactoryDeallocate(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(a1 + 16))
  {
    v2 = _factoriesByTypeID == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    CFDictionaryRemoveValue(_factoriesByFactoryID, *(a1 + 16));
  }

  if (_CFBundlePluginLogger_onceToken != -1)
  {
    _CFPFactoryDeallocate_cold_1();
  }

  if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
  {
    _CFPFactoryDeallocate_cold_2();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if (*__CFBundleGetPlugInData(*(a1 + 40)))
    {
      v4 = *(__CFBundleGetPlugInData(v3) + 16);
      PlugInData = __CFBundleGetPlugInData(v3);
      v13.length = CFArrayGetCount(*(PlugInData + 16));
      v13.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v13, a1);
      if ((FirstIndexOfValue & 0x80000000) == 0)
      {
        v7 = __CFBundleGetPlugInData(v3);
        CFArrayRemoveValueAtIndex(*(v7 + 16), FirstIndexOfValue & 0x7FFFFFFF);
      }
    }

    CFRelease(*(a1 + 40));
  }

  Count = CFArrayGetCount(*(a1 + 56));
  if (Count >= 1)
  {
    v9 = (Count & 0x7FFFFFFF) + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v9 - 2);
      _CFPFactoryRemoveTypeLocked(a1, ValueAtIndex);
      --v9;
    }

    while (v9 > 1);
  }

  CFRelease(*(a1 + 56));
  os_unfair_recursive_lock_unlock();
  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
  }
}

CFArrayRef CFPlugInFindFactoriesForPlugInType(CFUUIDRef typeUUID)
{
  os_unfair_recursive_lock_lock_with_options();
  if (_factoriesByTypeID && (Value = CFDictionaryGetValue(_factoriesByTypeID, typeUUID)) != 0)
  {
    v3 = Value;
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        v9 = *(ValueAtIndex + 2);
        if (v9)
        {
          CFRetain(*(ValueAtIndex + 2));
          CFArrayAppendValue(Mutable, v9);
          CFRelease(v9);
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  os_unfair_recursive_lock_unlock();
  if (_CFBundlePluginLogger_onceToken != -1)
  {
    CFPlugInFindFactoriesForPlugInType_cold_1();
  }

  if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
  {
    CFPlugInFindFactoriesForPlugInType_cold_2(Mutable);
  }

  return Mutable;
}

uint64_t __CFPlugInInstanceDeallocate(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(a1 + 40);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    _CFPFactoryRemoveInstanceLocked(v3);
  }

  return os_unfair_recursive_lock_unlock();
}

CFPlugInInstanceRef CFPlugInInstanceCreateWithInstanceDataSize(CFAllocatorRef allocator, CFIndex instanceDataSize, CFPlugInInstanceDeallocateInstanceDataFunction deallocateInstanceFunction, CFStringRef factoryName, CFPlugInInstanceGetInterfaceFunction getInterfaceFunction)
{
  Instance = _CFRuntimeCreateInstance(allocator, 0x21uLL, (instanceDataSize + 24), 0, getInterfaceFunction, v5, v6, v7);
  if (Instance)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (_factoriesByFactoryID && (Value = CFDictionaryGetValue(_factoriesByFactoryID, factoryName)) != 0 && Value[24])
    {
      Instance[2] = Value;
      _CFPFactoryAddInstanceLocked(Value);
    }

    else
    {
      Instance[2] = 0;
    }

    Instance[3] = getInterfaceFunction;
    Instance[4] = deallocateInstanceFunction;
    os_unfair_recursive_lock_unlock();
  }

  return Instance;
}

Boolean CFPlugInInstanceGetInterfaceFunctionTable(CFPlugInInstanceRef instance, CFStringRef interfaceName, void **ftbl)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = *(instance + 3);
  if (v4)
  {
    v5 = v4() != 0;
    if (!ftbl)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
    if (!ftbl)
    {
      return v5;
    }
  }

  v6 = v8;
  if (!v5)
  {
    v6 = 0;
  }

  *ftbl = v6;
  return v5;
}

CFStringRef CFPlugInInstanceGetFactoryName(CFPlugInInstanceRef instance)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(instance + 2);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRetain(*(v2 + 16));
  }

  os_unfair_recursive_lock_unlock();
  return v3;
}

uint64_t _CFPropertyListCreateFromXMLData(__objc2_class **a1, const __CFData *a2, unsigned int a3, CFStringRef *a4, char a5, void *a6)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  if (a4)
  {
    *a4 = 0;
  }

  cf = 0;
  v7 = _CFPropertyListCreateWithData(a1, a2, a3, &cf, a5, a6, 0, v11);
  v8 = cf;
  if (a4 && !v7 && cf)
  {
    *a4 = __copyErrorDebugDescription(cf);
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v11[0];
}

CFStringRef __copyErrorDebugDescription(__CFError *a1)
{
  v1 = CFErrorCopyUserInfo(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, @"NSDebugDescription");
  if (Value)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, Value);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v2);
  return Copy;
}

__CFString *__CFRunArrayCopyDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"%ld blocks used, total length %ld (%ld blocks, block %ld is at %ld)\n", v1[2], v1[1], v1[3], v1[4], v1[5]);
  if (v1[2] >= 1)
  {
    v3 = 0;
    v4 = v1 + 7;
    do
    {
      CFStringAppendFormat(Mutable, 0, @" %ld %p %@\n", *(v4 - 1), *v4, *v4);
      ++v3;
      v4 += 2;
    }

    while (v3 < v1[2]);
  }

  return Mutable;
}

void *__CFRunArrayMakeNewList(CFTypeRef cf, uint64_t *a2)
{
  if (a2)
  {
    v4 = a2[2];
  }

  else
  {
    v4 = 2;
  }

  v5 = CFGetAllocator(cf);
  result = CFAllocatorAllocateTyped(v5, 16 * v4 + 48, 0x1000040EED21634uLL);
  v7 = result;
  result[3] = v4;
  if (a2)
  {
    v8 = a2[2];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = result + 7;
      v11 = (a2 + 7);
      do
      {
        v12 = *v11;
        *(v10 - 1) = *(v11 - 1);
        result = CFRetain(v12);
        *v10 = result;
        v10 += 2;
        ++v9;
        v8 = a2[2];
        v11 += 2;
      }

      while (v9 < v8);
    }

    v7[2] = v8;
    *(v7 + 2) = *(a2 + 2);
    v13 = *a2;
    v7[1] = a2[1];
    *a2 = v13 - 1;
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    result[4] = 0;
    result[5] = 0;
  }

  *v7 = 1;
  *(cf + 2) = v7;
  return result;
}

uint64_t CFRunArrayGetValueAtRunArrayIndex(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 16) <= a2)
  {
    return 0;
  }

  v4 = v3 + 16 * a2;
  if (a3)
  {
    *a3 = *(v4 + 48);
  }

  return *(v4 + 56);
}

uint64_t __CFLocaleCopyDescription(void *a1)
{
  v1 = [a1 description];

  return [v1 copy];
}

id _CFLocaleCopyNumberingSystemForLocaleIdentifier(uint64_t a1)
{
  v1 = [NSLocale _numberingSystemForLocaleIdentifier:a1];

  return v1;
}

id _CFLocaleCopyValidNumberingSystemsForLocaleIdentifier(uint64_t a1)
{
  v1 = [NSLocale _validNumberingSystemsForLocaleIdentifier:a1];

  return v1;
}

id _CFLocaleCreateLocaleIdentiferByReplacingLanguageCodeAndScriptCode(uint64_t a1, uint64_t a2)
{
  v2 = [NSLocale _localeIdentifierByReplacingLanguageCodeAndScriptCodeForLangCode:a1 desiredComponents:a2];

  return v2;
}

CFStringRef CFLocaleCopyDisplayNameForPropertyValue(CFLocaleRef displayLocale, CFLocaleKey key, CFStringRef value)
{
  v3 = [(__CFLocale *)displayLocale displayNameForKey:key value:value];

  return v3;
}

CFArrayRef CFLocaleCopyAvailableLocaleIdentifiers(void)
{
  v0 = +[NSLocale availableLocaleIdentifiers];

  return v0;
}

CFArrayRef CFLocaleCopyISOLanguageCodes(void)
{
  v0 = +[NSLocale ISOLanguageCodes];

  return v0;
}

CFArrayRef CFLocaleCopyISOCountryCodes(void)
{
  v0 = +[NSLocale ISOCountryCodes];

  return v0;
}

CFArrayRef CFLocaleCopyISOCurrencyCodes(void)
{
  v0 = +[NSLocale ISOCurrencyCodes];

  return v0;
}

CFArrayRef CFLocaleCopyCommonISOCurrencyCodes(void)
{
  v0 = +[NSLocale commonISOCurrencyCodes];

  return v0;
}

id _CFLocaleCopyPreferredLanguagesForCurrentUser()
{
  v0 = [NSLocale _preferredLanguagesForCurrentUser:1];

  return v0;
}

void __CFLocaleResetCurrent(int a1)
{
  CFPreferencesAppSynchronize(@"kCFPreferencesCurrentApplication");
  if (a1)
  {
    +[NSLocale _resetCurrent];
  }

  v2 = MEMORY[0x1E69E96A0];

  dispatch_async(v2, &__block_literal_global_13);
}

void _CFLocaleResetCurrent()
{
  CFPreferencesAppSynchronize(@"kCFPreferencesCurrentApplication");
  +[NSLocale _resetCurrent];
  v0 = MEMORY[0x1E69E96A0];

  dispatch_async(v0, &__block_literal_global_13);
}

void __CFLocalePrefsChanged()
{
  v4[5] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  __lastNote = *&Current;
  v1 = dispatch_time(0, 10000000);
  v2 = qos_class_main();
  global_queue = dispatch_get_global_queue(v2, 2uLL);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ____CFLocalePrefsChanged_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = Current;
  dispatch_after(v1, global_queue, v4);
}

uint64_t (**__CFStringEncodingGetLatin5ConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingPrecomposeLatinCharacter_2)
  {
    __CFStringEncodingPrecomposeLatinCharacter_2 = a2(4);
  }

  if (a1 > 1043)
  {
    if (a1 != 1044)
    {
      if (a1 == 1284)
      {
        return __CFConverterWindowsLatin5;
      }

      return 0;
    }

    return __CFConverterDOSTurkish;
  }

  else
  {
    if (a1 != 35)
    {
      if (a1 == 521)
      {
        return __CFConverterISOLatin5;
      }

      return 0;
    }

    return __CFConverterMacTurkish;
  }
}

uint64_t __CFToISOLatin5(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xCF)
  {
    goto LABEL_2;
  }

  if (a2 < 0x11E)
  {
LABEL_11:
    if (a2 <= 0xFF && ((a2 + 48) >= 0x2Fu || ((0x600100006001uLL >> (a2 + 48)) & 1) == 0))
    {
LABEL_2:
      *a3 = a2;
      return 1;
    }
  }

  else if (a2 <= 0x15F)
  {
    v4 = &ISOLatin5_from_uni;
    v5 = &unk_183309854;
    while (1)
    {
      v6 = &v4[2 * ((v5 - v4) >> 3)];
      v7 = *v6;
      if (v7 <= a2)
      {
        if (v7 >= a2)
        {
          LOBYTE(a2) = *(v6 + 2);
          goto LABEL_2;
        }

        v4 = v6 + 2;
      }

      else
      {
        v5 = v6 - 2;
      }

      if (v4 > v5)
      {
        goto LABEL_11;
      }
    }
  }

  return 0;
}

uint64_t __CFFromISOLatin5(uint64_t a1, int a2, _WORD *a3)
{
  if (a2 > 239)
  {
    switch(a2)
    {
      case 240:
        LOWORD(a2) = 287;
        break;
      case 253:
        LOWORD(a2) = 305;
        break;
      case 254:
        LOWORD(a2) = 351;
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 208:
        LOWORD(a2) = 286;
        break;
      case 221:
        LOWORD(a2) = 304;
        break;
      case 222:
        LOWORD(a2) = 350;
        break;
    }
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToISOLatin5Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v9 = __CFStringEncodingPrecomposeLatinCharacter_2(a2, a3, 0);
  v10 = __CFToISOLatin5(v9, v9, &v13);
  result = 0;
  if (v10)
  {
    v12 = v13 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a5)
    {
      *a4 = v13;
    }

    *a6 = 1;
    return 2;
  }

  return result;
}

uint64_t __CFIsValidCombiningCharacterForLatin5(int a1)
{
  if ((a1 - 768) > 0x5F)
  {
    return 0;
  }

  else
  {
    return (__CFLatin5CombiningCharBitmap[(a1 - 768) >> 5] >> ~a1) & 1;
  }
}

uint64_t __CFToMacTurkish(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if ((a2 + 1792) >= 0x7A0u)
    {
      v4 = &MacTurkish_from_uni;
      v5 = &unk_183309A60;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_2;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a3 = a2;
    return 1;
  }
}

BOOL __CFFromMacTurkish(__int16 a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    if (a2 == 245 && (a1 & 0x200) != 0)
    {
      a2 = 65533;
    }

    else
    {
      a2 = MacTurkish_to_uni[a2 & 0x7F];
    }
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToMacTurkishPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_2(a2, a3, 0);
  if (v9 <= 0x7F)
  {
    v10 = v9;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if ((v9 + 1792) < 0x7A0u)
  {
    return 0;
  }

  v12 = &MacTurkish_from_uni;
  v13 = &unk_183309A60;
  while (1)
  {
    v14 = &v12[2 * ((v13 - v12) >> 3)];
    v15 = *v14;
    if (v15 <= v9)
    {
      break;
    }

    v13 = v14 - 2;
LABEL_12:
    if (v12 > v13)
    {
      return 0;
    }
  }

  if (v15 < v9)
  {
    v12 = v14 + 2;
    goto LABEL_12;
  }

  v10 = *(v14 + 2);
  if (!v10)
  {
    return 0;
  }

LABEL_3:
  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToDOSTurkish(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9633 < 0xFFFFDAFF)
  {
    return 0;
  }

  v5 = &DOSTurkish_from_uni;
  v6 = &unk_183309D54;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromDOSTurkish(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = DOSTurkish_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToDOSTurkishPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_2(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 9633) >= 0xDAFFu)
    {
      v11 = &DOSTurkish_from_uni;
      v12 = &unk_183309D54;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToWindowsLatin5(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8483 < 0xFFFFDF7D)
  {
    return 0;
  }

  v5 = &WindowsLatin5_from_uni;
  v6 = &unk_18330A038;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromWindowsLatin5(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = WindowsLatin5_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToWindowsLatin5Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_2(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 8483) >= 0xDF7Du)
    {
      v11 = &WindowsLatin5_from_uni;
      v12 = &unk_18330A038;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

void __CFRunLoopDump()
{
  Current = CFRunLoopGetCurrent();
  v1 = CFCopyDescription(Current);
  CFShow(v1);

  CFRelease(v1);
}

__CFString *__CFRunLoopModeCopyDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v3 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<CFRunLoopMode %p [%p]>{name = %@, ", a1, v3, *(a1 + 80));
  CFStringAppendFormat(Mutable, 0, @"port set = 0x%x, ", *(a1 + 136));
  CFStringAppendFormat(Mutable, 0, @"queue = %p, ", *(a1 + 160));
  if (*(a1 + 168))
  {
    v4 = "fired";
  }

  else
  {
    v4 = "not fired";
  }

  CFStringAppendFormat(Mutable, 0, @"source = %p (%s), ", *(a1 + 152), v4);
  CFStringAppendFormat(Mutable, 0, @"timer port = 0x%x, ", *(a1 + 172));
  v17 = *(a1 + 96);
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  Current = CFAbsoluteTimeGetCurrent();
  v8 = mach_absolute_time();
  v9 = *(a1 + 184);
  v10 = mach_absolute_time();
  v11 = __CFTSRToTimeInterval(v9 - v10);
  v12 = *(a1 + 184);
  v13 = *(a1 + 192);
  v14 = mach_absolute_time();
  v15 = __CFTSRToTimeInterval(v13 - v14);
  CFStringAppendFormat(Mutable, 0, @"\n\tsources0 = %@,\n\tsources1 = %@,\n\tobservers = %@,\n\ttimers = %@,\n\tcurrently %0.09g (%lld) / soft deadline in: %0.09g sec (@ %lld) / hard deadline in: %0.09g sec (@ %lld)\n},\n", v17, v5, v6, *&Current, v8, *&v11, v12, *&v15, *(a1 + 192));
  return Mutable;
}

__CFString *__CFRunLoopCopyDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v3 = CFGetAllocator(a1);
  v4 = a1 + *(a1 + 84);
  v5 = *(v4 + 85);
  v6 = *(v4 + 339);
  v7 = *(a1 + 2656);
  if (v7)
  {
    v8 = *(v7 + 80);
  }

  else
  {
    v8 = @"(none)";
  }

  if (v6)
  {
    v9 = "true";
  }

  else
  {
    v9 = "false";
  }

  if (v5)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  CFStringAppendFormat(Mutable, 0, @"<CFRunLoop %p [%p]>{wakeup port = 0x%x, stopped = %s, ignoreWakeUps = %s, \ncurrent mode = %@,\n", a1, v3, *(a1 + 80), v10, v9, v8);
  CFStringAppendFormat(Mutable, 0, @"common modes = %@,\ncommon mode items = %@,\nmodes = %@}\n", *(a1 + 2640), *(a1 + 2648), *(a1 + 2664));
  return Mutable;
}

uint64_t CFRunLoopRunInModeWithOptions(__CFString *a1, uint64_t a2, double a3)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  Current = CFRunLoopGetCurrent();

  return _CFRunLoopRunSpecificWithOptions(Current, a1, a2, a3);
}

CFAbsoluteTime CFRunLoopGetNextTimerFireDate(CFRunLoopRef rl, CFRunLoopMode mode)
{
  __CFCheckCFInfoPACSignature(rl);
  v4 = _CFGetNonObjCTypeID(rl);
  if (v4 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v4);
  }

  v5 = atomic_load(__CFMainThreadHasExited);
  if (v5)
  {
    CFRunLoopGetNextTimerFireDate_cold_1(rl);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((rl + 16));
  v11 = __CFRunLoopCopyMode(rl, mode, 0, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = v11;
    pthread_mutex_lock((v11 + 2));
    v13 = v12[15];
    NextFireDate = 0.0;
    if (v13)
    {
      if (CFArrayGetCount(v13) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12[15], 0);
        if (ValueAtIndex)
        {
          NextFireDate = CFRunLoopTimerGetNextFireDate(ValueAtIndex);
        }
      }
    }

    pthread_mutex_unlock((v12 + 2));
    CFRelease(v12);
  }

  else
  {
    NextFireDate = 0.0;
  }

  pthread_mutex_unlock((rl + 16));
  return NextFireDate;
}

void _CFRunLoopStopMode(uint64_t a1, const __CFString *a2)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((a1 + 16));
  v9 = __CFRunLoopCopyMode(a1, a2, 1, v4, v5, v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    pthread_mutex_lock((v9 + 2));
    *(v10 + 88) = 1;
    pthread_mutex_unlock((v10 + 2));
    CFRelease(v10);
  }

  pthread_mutex_unlock((a1 + 16));

  CFRunLoopWakeUp(a1);
}

uint64_t _CFRunLoopModeContainsMode()
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return 0;
}

Boolean CFRunLoopContainsTimer(CFRunLoopRef rl, CFRunLoopTimerRef timer, CFRunLoopMode mode)
{
  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopContainsTimer_cold_1(rl);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  LOBYTE(v8) = 0;
  v9 = *(timer + 11);
  if (v9 && v9 == rl)
  {
    pthread_mutex_lock((rl + 16));
    if (mode == @"kCFRunLoopCommonModes")
    {
      v17 = *(rl + 331);
      if (v17)
      {
        LOBYTE(v8) = CFSetContainsValue(v17, timer);
LABEL_18:
        pthread_mutex_unlock((rl + 16));
        return v8;
      }
    }

    else
    {
      v15 = __CFRunLoopCopyMode(rl, mode, 0, v10, v11, v12, v13, v14);
      if (v15)
      {
        v16 = v15;
        pthread_mutex_lock((v15 + 2));
        v8 = v16[15];
        if (v8)
        {
          v19.length = CFArrayGetCount(v16[15]);
          v19.location = 0;
          LOBYTE(v8) = CFArrayGetFirstIndexOfValue(v8, v19, timer) != -1;
        }

        pthread_mutex_unlock((v16 + 2));
        CFRelease(v16);
        goto LABEL_18;
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_18;
  }

  return v8;
}

CFStringRef __CFRunLoopSourceCopyDescription(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a1[17];
  if (v2)
  {
    v3 = v2(a1[14]);
    if (v3)
    {
      v4 = v3;
      goto LABEL_17;
    }
  }

  v5 = a1[13];
  if (!v5)
  {
    v6 = 22;
    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v6 = 21;
LABEL_8:
    v7 = a1[v6];
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  memset(&v17, 0, sizeof(v17));
  v8 = dladdr(v7, &v17);
  dli_sname = "???";
  if (v8)
  {
    if (v17.dli_sname && v17.dli_saddr == v7)
    {
      dli_sname = v17.dli_sname;
    }
  }

  v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFRunLoopSource context>{version = %ld, info = %p, callout = %s (%p)}", a1[13], a1[14], dli_sname, v7);
LABEL_17:
  v11 = CFGetAllocator(a1);
  v12 = "Yes";
  if (atomic_load_explicit(a1 + 11, memory_order_acquire))
  {
    v13 = "Yes";
  }

  else
  {
    v13 = "No";
  }

  v14 = atomic_load(a1 + 1);
  if ((v14 & 8) == 0)
  {
    v12 = "No";
  }

  v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFRunLoopSource %p [%p]>{signalled = %s, valid = %s, order = %ld, context = %@}", a1, v11, v13, v12, a1[10], v4);
  CFRelease(v4);
  return v15;
}

CFIndex CFRunLoopSourceGetOrder(CFRunLoopSourceRef source)
{
  __CFCheckCFInfoPACSignature(source);
  v2 = _CFGetNonObjCTypeID(source);
  if (v2 != 46)
  {
    _CFAssertMismatchedTypeID(0x2EuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return *(source + 10);
}

BOOL CFRunLoopSourceIsSignalled(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 46)
  {
    _CFAssertMismatchedTypeID(0x2EuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((a1 + 16));
  v3 = atomic_load_explicit((a1 + 88), memory_order_acquire) != 0;
  pthread_mutex_unlock((a1 + 16));
  return v3;
}

CFStringRef __CFRunLoopObserverCopyDescription(unint64_t *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[19];
  if (!v2 || (v3 = v2(a1[16])) == 0)
  {
    v3 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFRunLoopObserver context %p>", a1[16]);
  }

  v4 = a1[14];
  memset(&v14, 0, sizeof(v14));
  dli_sname = "???";
  if (dladdr(v4, &v14))
  {
    if (v14.dli_sname && v14.dli_saddr == v4)
    {
      dli_sname = v14.dli_sname;
    }
  }

  v7 = CFGetAllocator(a1);
  v8 = atomic_load(a1 + 1);
  if ((v8 & 8) != 0)
  {
    v9 = "Yes";
  }

  else
  {
    v9 = "No";
  }

  v10 = atomic_load(a1 + 1);
  if ((v10 & 2) != 0)
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFRunLoopObserver %p [%p]>{valid = %s, activities = 0x%lx, repeats = %s, order = %ld, callout = %s (%p), context = %@}", a1, v7, v9, a1[12], v11, a1[13], dli_sname, v4, v3);
  CFRelease(v3);
  return v12;
}

CFOptionFlags CFRunLoopObserverGetActivities(CFRunLoopObserverRef observer)
{
  __CFCheckCFInfoPACSignature(observer);
  v2 = _CFGetNonObjCTypeID(observer);
  if (v2 != 45)
  {
    _CFAssertMismatchedTypeID(0x2DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return *(observer + 12);
}

CFIndex CFRunLoopObserverGetOrder(CFRunLoopObserverRef observer)
{
  __CFCheckCFInfoPACSignature(observer);
  v2 = _CFGetNonObjCTypeID(observer);
  if (v2 != 45)
  {
    _CFAssertMismatchedTypeID(0x2DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return *(observer + 13);
}

Boolean CFRunLoopObserverDoesRepeat(CFRunLoopObserverRef observer)
{
  __CFCheckCFInfoPACSignature(observer);
  v2 = _CFGetNonObjCTypeID(observer);
  if (v2 != 45)
  {
    _CFAssertMismatchedTypeID(0x2DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v3 = atomic_load(observer + 1);
  return (v3 >> 1) & 1;
}

Boolean CFRunLoopObserverIsValid(CFRunLoopObserverRef observer)
{
  __CFCheckCFInfoPACSignature(observer);
  v2 = _CFGetNonObjCTypeID(observer);
  if (v2 != 45)
  {
    _CFAssertMismatchedTypeID(0x2DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v3 = atomic_load(observer + 1);
  return (v3 >> 3) & 1;
}

void CFRunLoopObserverGetContext(CFRunLoopObserverRef observer, CFRunLoopObserverContext *context)
{
  __CFCheckCFInfoPACSignature(observer);
  v4 = _CFGetNonObjCTypeID(observer);
  if (v4 != 45)
  {
    _CFAssertMismatchedTypeID(0x2DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v5 = *(observer + 120);
  v6 = *(observer + 136);
  context->copyDescription = *(observer + 19);
  *&context->version = v5;
  *&context->retain = v6;
}

uint64_t _CFRunLoopObserverSetRecursive(uint64_t result, int a2)
{
  v2 = atomic_load((result + 8));
  v3 = v2;
  do
  {
    atomic_compare_exchange_strong((result + 8), &v3, v2 & 0xFFFFFFFFFFFFFFFBLL | (4 * (a2 != 0)));
    v4 = v3 == v2;
    v2 = v3;
  }

  while (!v4);
  return result;
}

CFStringRef __CFRunLoopTimerCopyDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v4 = v3;
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 184);
  if (!v5 || (v6 = v5(*(v3 + 160))) == 0)
  {
    v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFRunLoopTimer context %p>", *(v4 + 160));
  }

  v7 = *(v4 + 144);
  v8 = *(v4 + 160);
  strcpy(__str, "<unknown>");
  strcpy(v25, "<unknown>");
  v23 = 0;
  if (__CFRunLoopDebugInfoForRunLoopTimer_onceToken != -1)
  {
    __CFRunLoopTimerCopyDescription_cold_1();
  }

  v9 = *(v4 + 144);
  if (v9 == _runLoopTimerWithBlockContext)
  {
    if (!*(v8 + 16))
    {
      v9 = 0;
      goto LABEL_12;
    }

    v9 = *(v8 + 16);
  }

  if (v9 == __CFFireTimer)
  {
    __CFDescribeTimer(v4, v8, __str, 0x800uLL, v25, 0x800uLL, &v23);
    goto LABEL_27;
  }

LABEL_12:
  if (v9 == __CFRunLoopDebugInfoForRunLoopTimer_foundationTimerFunc && __CFRunLoopDebugInfoForRunLoopTimer_foundationTimerFunc && (v10 = __CFRunLoopDebugInfoForRunLoopTimer_foundationDescribeTimerCalloutFunc) != 0 || v9 == __CFRunLoopDebugInfoForRunLoopTimer_foundationDelayedPerformFunc && __CFRunLoopDebugInfoForRunLoopTimer_foundationDelayedPerformFunc && (v10 = __CFRunLoopDebugInfoForRunLoopTimer_foundationDescribeDelayedPerformFunc) != 0)
  {
    v10(v4, v8, __str, 2048, v25, 2048, &v23);
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
    if (dladdr(v9, &v24))
    {
      dli_fname = v24.dli_fname;
      if (!v24.dli_fname)
      {
        dli_fname = "<unknown library>";
      }

      snprintf(__str, 0x800uLL, "%s", dli_fname);
      dli_sname = v24.dli_sname;
      if (!v24.dli_sname)
      {
        dli_sname = "<unknown function>";
      }

      snprintf(v25, 0x800uLL, "%s", dli_sname);
    }

    else
    {
      strcpy(__str, "<unknown library>");
      strcpy(v25, "<unknown function>");
    }

    v23 = v9;
  }

LABEL_27:
  v13 = CFGetAllocator(v4);
  v14 = atomic_load((v4 + 8));
  if ((v14 & 8) != 0)
  {
    v15 = "Yes";
  }

  else
  {
    v15 = "No";
  }

  if (*(v4 + 16))
  {
    v16 = "Yes";
  }

  else
  {
    v16 = "No";
  }

  v18 = *(v4 + 112);
  v17 = *(v4 + 120);
  v19 = *(v4 + 104);
  Current = CFAbsoluteTimeGetCurrent();
  v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFRunLoopTimer %p [%p]>{valid = %s, firing = %s, interval = %0.09g, tolerance = %0.09g, next fire date = %0.09g (%0.09g @ %lld), callout = %s (%p / %p) (%s), context = %@}", v4, v13, v15, v16, v18, v17, *&v19, v19 - Current, *(v4 + 128), v25, v7, v23, __str, v6);
  CFRelease(v6);
  return v21;
}

CFIndex CFRunLoopTimerGetOrder(CFRunLoopTimerRef timer)
{
  __CFCheckCFInfoPACSignature(timer);
  v2 = _CFGetNonObjCTypeID(timer);
  if (v2 != 47)
  {
    _CFAssertMismatchedTypeID(0x2FuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return *(timer + 17);
}

CFTimeInterval CFRunLoopTimerGetTolerance(CFRunLoopTimerRef timer)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (!CF_IS_OBJC(0x2FuLL, timer))
  {
    return *(timer + 15);
  }

  [(__CFRunLoopTimer *)timer tolerance];
  return result;
}

uint64_t __CFRunLoopKillOneTimer(uint64_t a1)
{
  pthread_mutex_lock((a1 + 24));
  CFSetRemoveAllValues(*(a1 + 96));
  *(a1 + 88) = 0;

  return pthread_mutex_unlock((a1 + 24));
}

void __THE_SYSTEM_HAS_NO_PORT_SETS_AVAILABLE__(int a1)
{
  if (a1 == 6)
  {
    __RESOURCE_SHORTAGE__();
  }

  if (a1 == 3)
  {
    __NO_SPACE__();
  }

  __break(1u);
}

uint64_t __CFRecordAllocationEvent(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__CFOASafe == 1 && __CFObjectAllocRecordAllocationFunction != 0)
  {
    return __CFObjectAllocRecordAllocationFunction(result, a2, a3, a4, a5);
  }

  return result;
}

void *__CFRuntimeEnumerateClassTable(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *, uint64_t, void **), uint64_t a4)
{
  __dst[33] = *MEMORY[0x1E69E9840];
  v8 = (*(a2 + 16))(a2, "__CFRuntimeBuiltinClassTable");
  if (v8)
  {
    __dst[0] = 0;
    if (!a3(a1, v8, 576, __dst))
    {
      for (i = 0; i != 576; i += 8)
      {
        (*(a4 + 16))(a4, *(__dst[0] + i));
      }
    }
  }

  result = (*(a2 + 16))(a2, "__CFRuntimeClassTables");
  if (result)
  {
    __src = 0;
    result = a3(a1, result, 264, &__src);
    if (!result)
    {
      result = memcpy(__dst, __src, 0x108uLL);
      v15 = 0;
      v11 = atomic_load(&__dst[32]);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = -1;
        do
        {
          if (v12 >> 6 != v13)
          {
            result = a3(a1, __dst[v12 >> 6], 512, &v15);
            v13 = v12 >> 6;
            if (result)
            {
              break;
            }
          }

          result = (*(a4 + 16))(a4, *(v15 + 8 * (v12++ & 0x3F)));
          v14 = atomic_load(&__dst[32]);
        }

        while (v12 < v14);
      }
    }
  }

  return result;
}

uint64_t _CFRuntimeGetClassWithTypeID(unint64_t a1)
{
  if (a1 <= 0x47)
  {
    v1 = &__CFRuntimeBuiltinClassTable + a1;
    return *v1;
  }

  v2 = a1 - 72;
  if (a1 - 72 < dword_1ED40C410[0])
  {
    v3 = __CFRuntimeClassTables[v2 >> 6];
    if (v3)
    {
      v1 = (v3 + 8 * (v2 & 0x3F));
      return *v1;
    }
  }

  return 0;
}

void _CFRuntimeUnregisterClassWithTypeID(unint64_t a1)
{
  if (a1 <= 0x47)
  {
    _CFRuntimeUnregisterClassWithTypeID_cold_1();
  }

  v1 = a1;
  os_unfair_lock_lock_with_options();
  *(__CFRuntimeClassTables[(v1 - 72) >> 6] + 8 * ((v1 - 72) & 0x3F)) = 0;

  os_unfair_lock_unlock(&__CFBigRuntimeFunnel);
}

void _CFEnableZombies()
{
  if (!__CFZombieEnabled)
  {
    __CFZombieEnabled = -1;
    __CFZombifyNSObject();
  }
}

Class _CFRuntimeInitStaticInstance(Class result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (a2 > 0x47)
  {
    v10 = a2 - 72;
    if (a2 - 72 >= dword_1ED40C410[0])
    {
      goto LABEL_21;
    }

    v11 = __CFRuntimeClassTables[v10 >> 6];
    if (!v11)
    {
      goto LABEL_21;
    }

    v9 = (v11 + 8 * (v10 & 0x3F));
  }

  else
  {
    v9 = (&__CFRuntimeBuiltinClassTable + a2);
  }

  v12 = *v9;
  if (!*v9)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if ((*v12 & 8) != 0)
  {
    return CFLog(3, @"*** Cannot initialize a static instance to a class (%s) with custom ref counting", a3, a4, a5, a6, a7, a8, *(v12 + 8));
  }

  atomic_store(((a2 & 0xFFFFFF) << 8) | 0x80, result + 1);
  atomic_fetch_and(result + 1, 0xFFFFF00000FFFFFFLL);
  v13 = atomic_load(result + 1);
  atomic_fetch_or(result + 1, ((v13 & 0x83FF00) >> 20) & 0xFFFFF000000);
  *result = 0;
  if (a2 <= 0x47)
  {
    v14 = &__CFRuntimeBuiltinObjCClassTable[a2];
LABEL_14:
    v17 = *v14;
    goto LABEL_16;
  }

  v15 = a2 - 72;
  if (a2 - 72 < dword_1ED40C410[0])
  {
    v16 = __CFRuntimeClassTables[(v15 >> 6) + 16];
    if (v16)
    {
      v14 = (v16 + 8 * (v15 & 0x3F));
      goto LABEL_14;
    }
  }

  v17 = 0;
LABEL_16:
  result = object_setClass(result, v17);
  v18 = *(v12 + 16);
  if (v18)
  {

    return v18(v8);
  }

  return result;
}

uint64_t __CFRuntimeIsFreedObject(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!__CFRuntimeIsFreedObject_freedClass)
    {
      __CFRuntimeIsFreedObject_freedClass = _objc_getFreedObjectClass();
    }

    Class = object_getClass(v1);
    if (Class == __CFRuntimeIsFreedObject_freedClass)
    {
      return 1;
    }

    v3 = Class;
    result = object_getClass(Class);
    if (!result)
    {
      return result;
    }

    Name = class_getName(v3);
    return Name && !strncmp(Name, "_NSZombie_", 0xAuLL);
  }

  return result;
}

unint64_t __CFGenericTypeID(unint64_t *a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v8 = atomic_load(a1 + 1);
    return (v8 >> 8) & 0x3FF;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ a1;
  do
  {
    if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  v5 = v2 | v4;
  v6 = v2 & 7;
  v7 = (v5 >> 55) + 8;
  if (v6 == 7)
  {
    LODWORD(v6) = v7;
  }

  if (v6 > 4)
  {
    if (v6 > 19)
    {
      if (v6 != 20)
      {
        if (v6 != 22)
        {
          goto LABEL_29;
        }

        return 7;
      }
    }

    else if (v6 != 5)
    {
      if (v6 == 6)
      {
        return 42;
      }

      goto LABEL_29;
    }

    return 1;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      return 22;
    }

    return 1;
  }

  if (!v6)
  {
    if (dyld_program_sdk_at_least())
    {
      return 7;
    }

    else
    {
      return 1;
    }
  }

  if (v6 == 2)
  {
    return 7;
  }

LABEL_29:

  return [a1 _cfTypeID];
}

CFStringRef CFCopyTypeIDDescription(CFTypeID type_id)
{
  if (type_id > 0x47)
  {
    v1 = (__CFRuntimeClassTables[(type_id - 72) >> 6] + 8 * ((type_id - 72) & 0x3F));
  }

  else
  {
    v1 = &__CFRuntimeBuiltinClassTable + type_id;
  }

  return CFStringCreateWithCString(&__kCFAllocatorSystemDefault, *(*v1 + 1), 0x600u);
}

uint64_t _objc_getTaggedPointerTag(uint64_t a1)
{
  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  do
  {
    if ((v3 & 7) == *(MEMORY[0x1E69E5900] + v1))
    {
      break;
    }

    ++v1;
  }

  while (v1 != 7);
  v4 = v1 | v3;
  v5 = v1 & 7;
  v6 = (v4 >> 55) + 8;
  if (v5 == 7)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

char *__CFgetenvIfNotRestricted(char *a1)
{
  if (issetugid())
  {
    return 0;
  }

  return __CFgetenv(a1);
}

uint64_t __cf_atfork_prepare()
{
  result = pthread_is_threaded_np();
  if (result)
  {
    atomic_fetch_or(&__CF_FORK_STATE, 4u);
  }

  else
  {
    atomic_fetch_and(&__CF_FORK_STATE, 0xFBu);
  }

  return result;
}

void __cf_atfork_child()
{
  if ((__CF_FORK_STATE & 2) != 0)
  {
    atomic_fetch_or(&__CF_FORK_STATE, 1u);
  }
}

uint64_t _CFRegisterThreadSanitizerTag(uint64_t a1)
{
  if (__cf_tsanRegisterTagFunction)
  {
    v1 = a1 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return __cf_tsanRegisterTagFunction(a1);
  }
}

uint64_t _CFAssignThreadSanitizerTag(uint64_t result, uint64_t a2)
{
  if (__cf_tsanAssignTagFunction)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && a2 != 0)
  {
    return __cf_tsanAssignTagFunction(result, a2);
  }

  return result;
}

const char *PROEM_SEL_0(const char *a1)
{
  if (a1)
  {
    return sel_getName(a1);
  }

  else
  {
    return "(null selector)";
  }
}

double __os_log_helper_1_2_4_8_32_8_32_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&result = 136315906;
  *a1 = 136315906;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a5;
  return result;
}

double __os_log_helper_1_2_3_8_32_8_32_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

void sub_1831ED09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1831ED784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1831ED934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _compare_clumpiness_0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

double __CFSetGetCallbacks@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v7 = 0u;
  __CFBasicHashGetCallbacks(a1, &v7);
  v3 = *(&v7 + 1);
  v4 = *(&v8 + 1);
  *a2 = 0;
  *(a2 + 8) = v3;
  v5 = *(&v10 + 1);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  result = *(v9 + 1);
  *(a2 + 32) = *(v9 + 8);
  return result;
}

CFIndex CFSetGetCountOfValue(CFSetRef theSet, const void *value)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    return [(__CFSet *)theSet countForObject:value];
  }

  else
  {

    return CFBasicHashGetCountOfKey(theSet, value);
  }
}

void CFSetReplaceValue(CFMutableSetRef theSet, const void *value)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    [(__CFSet *)theSet replaceObject:value];
  }

  else
  {
    v10 = atomic_load(theSet + 1);
    if ((v10 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v4, v5, v6, v7, v8, v9, "void CFSetReplaceValue(CFMutableSetRef, const void *)");
    }

    CFBasicHashReplaceValue(theSet, value, value);
  }
}

uint64_t __CFSocketSetSocketReadBufferAttrs(uint64_t a1, CFIndex a2, double a3)
{
  if (a3 == 0.0)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = a3 < 2147483650.0 && a3 > 0.0;
    v8 = floor(a3);
    if (v7)
    {
      v9 = v8;
      v6 = v9;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    v5 = ((a3 - v8) * 1000000.0);
  }

  pthread_mutex_lock((a1 + 24));
  os_unfair_lock_lock(&__CFActiveSocketsLock);
  v10 = *(a1 + 296);
  if (v10 != a2)
  {
    v11 = *(a1 + 304);
    v12 = *(a1 + 312);
    v13 = v11 - v12;
    if (v11 != v12)
    {
      Mutable = *(a1 + 328);
      if (!Mutable)
      {
        v15 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v15, 0);
        *(a1 + 328) = Mutable;
      }

      BytePtr = CFDataGetBytePtr(*(a1 + 288));
      CFDataAppendBytes(Mutable, &BytePtr[*(a1 + 312)], v13);
      CFRelease(*(a1 + 288));
      v10 = 0;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
    }

    if (a2)
    {
      v17 = *(a1 + 288);
      if (v10 < a2)
      {
        if (v17)
        {
          CFRelease(v17);
          *(a1 + 288) = 0;
        }

        *(a1 + 304) = 0;
        *(a1 + 312) = 0;
        *(a1 + 296) = a2;
        goto LABEL_23;
      }

      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      *(a1 + 296) = a2;
      if (!v17)
      {
LABEL_23:
        v19 = CFDataCreateMutable(&__kCFAllocatorSystemDefault, a2);
        *(a1 + 288) = v19;
        CFDataSetLength(v19, a2);
      }
    }

    else
    {
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      v18 = *(a1 + 288);
      if (v18)
      {
        CFRelease(v18);
        v5 = 0;
        v6 = 0;
        *(a1 + 288) = 0;
      }

      else
      {
        v5 = 0;
        v6 = 0;
      }
    }
  }

  if (*(a1 + 272) != v6 || *(a1 + 280) != v5)
  {
    *(a1 + 272) = v6;
    *(a1 + 280) = v5;
    *(a1 + 284) = 0;
    __CFReadSocketsTimeoutInvalid = 0;
  }

  os_unfair_lock_unlock(&__CFActiveSocketsLock);

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t __CFSocketGetBytesAvailable(__CFSocket *a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 38) - *(a1 + 39);
  if (!v3)
  {
    v6[0] = 0;
    Native = CFSocketGetNative(a1);
    if (ioctl(Native, 0x4004667FuLL, v6) < 0)
    {
      return 0;
    }

    v3 = v6[0];
  }

  *a2 = v3;
  return 1;
}

__CFString *__CFSocketCopyDescription(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 208);
  memset(&v19, 0, sizeof(v19));
  dli_sname = "???";
  if (dladdr(v4, &v19))
  {
    if (v19.dli_sname && v19.dli_saddr == v4)
    {
      dli_sname = v19.dli_sname;
    }
  }

  v7 = CFGetAllocator(a1);
  v8 = "Yes";
  v9 = atomic_load((a1 + 8));
  if ((v9 & 0x10) == 0)
  {
    v8 = "No";
  }

  v10 = *(a1 + 184);
  v12 = *(a1 + 152);
  v11 = *(a1 + 156);
  v13 = atomic_load((a1 + 8));
  CFStringAppendFormat(Mutable, 0, @"<CFSocket %p [%p]>{valid = %s, type = %d, socket = %d, socket set count = %ld,\n    callback types = 0x%x, callout = %s (%p), source = %p,\n    run loops = %@,\n    context = ", a1, v7, v8, v11, v12, v10, v13 & 0xF, dli_sname, v4, *(a1 + 192), *(a1 + 200));
  v14 = *(a1 + 224);
  v15 = *(a1 + 248);
  pthread_mutex_unlock((a1 + 24));
  if (!v14 || !v15 || (v16 = v15(v14)) == 0)
  {
    v17 = CFGetAllocator(a1);
    v16 = CFStringCreateWithFormat(v17, 0, @"<CFSocket context %p>", v14);
  }

  CFStringAppend(Mutable, v16);
  CFStringAppend(Mutable, @"}");
  CFRelease(v16);
  return Mutable;
}

CFTypeID CFSocketGetTypeID(void)
{
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketGetTypeID_cold_1();
  }

  return 61;
}

uint64_t __CFSocketGetTypeID_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v6.rlim_cur = 0;
  v6.rlim_max = 0;
  v0 = getrlimit(8, &v6);
  *v7 = 0x1D00000001;
  rlim_max = 0;
  v4 = 4;
  result = sysctl(v7, 2u, &rlim_max, &v4, 0, 0);
  if (result | v0)
  {
    if (v0)
    {
      return result;
    }

    LODWORD(v2) = rlim_max;
  }

  else
  {
    LODWORD(v2) = rlim_max;
    if (v6.rlim_max < rlim_max)
    {
      rlim_max = v6.rlim_max;
      LODWORD(v2) = v6.rlim_max;
    }
  }

  if (v6.rlim_cur < v2)
  {
    v2 = v2;
    v3 = v6;
    if (v6.rlim_cur + 2304 < v2)
    {
      v2 = v6.rlim_cur + 2304;
    }

    v3.rlim_cur = v2;
    return setrlimit(8, &v3);
  }

  return result;
}

CFDataRef CFSocketCopyAddress(CFSocketRef s)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketCopyAddress_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));
  v9 = 256;
  v3 = atomic_load(s + 1);
  if ((v3 & 0x10) != 0 && !*(s + 21))
  {
    v7 = *(s + 38);
    if (v7 != -1 && !getsockname(v7, &v10, &v9) && v9 >= 1)
    {
      v8 = CFGetAllocator(s);
      *(s + 21) = CFDataCreate(v8, &v10.sa_len, v9);
    }
  }

  v4 = *(s + 21);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock((s + 24));
  return v5;
}

CFDataRef CFSocketCopyPeerAddress(CFSocketRef s)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketCopyPeerAddress_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));
  v9 = 256;
  v3 = atomic_load(s + 1);
  if ((v3 & 0x10) != 0 && !*(s + 22))
  {
    v7 = *(s + 38);
    if (v7 != -1 && !getpeername(v7, &v10, &v9) && v9 >= 1)
    {
      v8 = CFGetAllocator(s);
      *(s + 22) = CFDataCreate(v8, &v10.sa_len, v9);
    }
  }

  v4 = *(s + 22);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock((s + 24));
  return v5;
}

void CFSocketGetContext(CFSocketRef s, CFSocketContext *context)
{
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketGetContext_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v4 = _CFGetNonObjCTypeID(s);
  if (v4 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v5 = *(s + 216);
  v6 = *(s + 232);
  context->copyDescription = *(s + 31);
  *&context->version = v5;
  *&context->retain = v6;
}

CFSocketError CFSocketSendData(CFSocketRef s, CFDataRef address, CFDataRef data, CFTimeInterval timeout)
{
  v22 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketSendData_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v8 = _CFGetNonObjCTypeID(s);
  if (v8 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v8);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v21 = 0;
  if (address)
  {
    BytePtr = CFDataGetBytePtr(address);
    LODWORD(address) = CFDataGetLength(address);
  }

  else
  {
    BytePtr = 0;
  }

  v10 = CFDataGetBytePtr(data);
  Length = CFDataGetLength(data);
  if (!CFSocketIsValid(s))
  {
    return -1;
  }

  Native = CFSocketGetNative(s);
  if (Native == -1)
  {
    return -1;
  }

  v13 = Native;
  CFRetain(s);
  os_unfair_lock_lock(&__CFSocketWriteLock_);
  v14 = timeout < 2147483650.0 && timeout > 0.0;
  v15 = floor(timeout);
  v16 = vcvtmd_s64_f64(timeout);
  if (!v14)
  {
    v16 = 0x7FFFFFFFLL;
  }

  v20 = v16;
  LODWORD(v21) = vcvtmd_s64_f64((timeout - v15) * 1000000.0);
  setsockopt(v13, 0xFFFF, 4101, &v20, 0x10u);
  if (BytePtr && address >= 1)
  {
    v17 = sendto(v13, v10, Length, 0, BytePtr, address);
  }

  else
  {
    v17 = send(v13, v10, Length, 0);
  }

  v19 = v17;
  os_unfair_lock_unlock(&__CFSocketWriteLock_);
  CFRelease(s);
  if (v19 >= 1)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

CFSocketError CFSocketSetAddress(CFSocketRef s, CFDataRef address)
{
  v26 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketSetAddress_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v4 = _CFGetNonObjCTypeID(s);
  if (v4 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (!address || !CFSocketIsValid(s))
  {
    return -1;
  }

  BytePtr = CFDataGetBytePtr(address);
  Length = CFDataGetLength(address);
  result = kCFSocketError;
  if (BytePtr && Length)
  {
    Native = CFSocketGetNative(s);
    if (Length < 3 || BytePtr->sa_family != 1)
    {
LABEL_18:
      v15 = bind(Native, BytePtr, Length);
      if (v15)
      {
        v16 = @"CFSocketSetAddress bind failure: %d";
      }

      else
      {
        if (!listen(Native, 256))
        {
          return v15;
        }

        v16 = @"CFSocketSetAddress listen failure: %d";
      }

      v17 = __error();
      CFLog(7, v16, v18, v19, v20, v21, v22, v23, *v17);
      return v15;
    }

    Length = strnlen(BytePtr->sa_data, Length - 2) + 2;
    if (Length <= 0xFF)
    {
      if (Length != BytePtr->sa_len)
      {
        CFLog(4, @"WARNING: The sun_len field of a sockaddr_un structure passed to CFSocketSetAddress was not set correctly using the SUN_LEN macro.", v9, v10, v11, v12, v13, v14, v24);
        __memcpy_chk();
        v25 = Length;
        BytePtr = &v25;
      }

      goto LABEL_18;
    }

    return -1;
  }

  return result;
}

CFSocketError CFSocketConnectToAddress(CFSocketRef s, CFDataRef address, CFTimeInterval timeout)
{
  v31 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketConnectToAddress_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v6 = _CFGetNonObjCTypeID(s);
  if (v6 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v6);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v29 = 1;
  v30 = 0;
  HIDWORD(v28) = 0;
  if (!CFSocketIsValid(s))
  {
    return -1;
  }

  BytePtr = CFDataGetBytePtr(address);
  Length = CFDataGetLength(address);
  result = kCFSocketError;
  if (BytePtr && Length >= 1)
  {
    Native = CFSocketGetNative(s);
    v11 = (fcntl(Native, 3, 0) & 0x80000004) == 4 || timeout == 0.0;
    if (!v11)
    {
      ioctl(Native, 0x8004667EuLL, &v29);
    }

    v12 = connect(Native, BytePtr, Length);
    if (v12)
    {
      v13 = *__error();
      v14 = v13 == 36;
      if (timeout >= 0.0 && v13 == 36)
      {
        LODWORD(v28) = 4;
        HIDWORD(v27) = 0;
        Mutable = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
        v16 = Mutable;
        if ((Native & 0x80000000) == 0)
        {
          v17 = 8 * CFDataGetLength(Mutable);
          if (v17 <= Native)
          {
            v19 = v17 >> 5;
            v20 = 4 * (((Native + 32) >> 5) - (v17 >> 5));
            CFDataIncreaseLength(v16, v20);
            MutableBytePtr = CFDataGetMutableBytePtr(v16);
            bzero(&MutableBytePtr[4 * v19], v20);
          }

          else
          {
            MutableBytePtr = CFDataGetMutableBytePtr(v16);
          }

          v21 = Native >> 5;
          if (!__darwin_check_fd_set_overflow(Native, MutableBytePtr, 1) || ((*&MutableBytePtr[4 * v21] >> Native) & 1) == 0)
          {
            if (__darwin_check_fd_set_overflow(Native, MutableBytePtr, 1))
            {
              *&MutableBytePtr[4 * v21] |= 1 << Native;
            }
          }
        }

        v22 = timeout < 2147483650.0 && timeout > 0.0;
        v23 = floor(timeout);
        v24 = vcvtmd_s64_f64(timeout);
        if (!v22)
        {
          v24 = 0x7FFFFFFFLL;
        }

        v26 = v24;
        LODWORD(v27) = vcvtmd_s64_f64((timeout - v23) * 1000000.0);
        CFDataGetLength(v16);
        CFDataGetMutableBytePtr(v16);
        v25 = select_DARWIN_EXTSN();
        if (v25 < 0)
        {
          v30 = *__error();
          v12 = -1;
        }

        else if (v25)
        {
          if (getsockopt(Native, 0xFFFF, 4103, &v30, &v28))
          {
            v12 = 0;
            v30 = 0;
          }

          else if (v30)
          {
            v12 = -1;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = -2;
        }

        CFRelease(v16);
        v14 = 1;
        if (v11)
        {
          goto LABEL_26;
        }

LABEL_25:
        ioctl(Native, 0x8004667EuLL, &v28 + 4, v26, v27, v28);
LABEL_26:
        if (timeout < 0.0 && v14)
        {
          return 0;
        }

        else
        {
          return v12;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  return result;
}

CFSocketRef CFSocketCreate(CFAllocatorRef allocator, SInt32 protocolFamily, SInt32 socketType, SInt32 protocol, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (protocolFamily >= 1)
  {
    v14 = protocolFamily;
  }

  else
  {
    v14 = 2;
  }

  if (socketType <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = socketType;
  }

  if (protocol < 1 && socketType < 2)
  {
    v17 = 6;
  }

  else
  {
    v17 = protocol;
  }

  if (v17 < 1 && socketType == 2)
  {
    v17 = 17;
  }

  if (v14 == 2)
  {
    v19 = v17;
  }

  else
  {
    v19 = protocol;
  }

  if (v14 != 2)
  {
    v15 = socketType;
  }

  if (v15 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v15;
  }

  if (v14 == 1)
  {
    v21 = v20;
  }

  else
  {
    v21 = v15;
  }

  v22 = socket(v14, v21, v19);
  if (v22 == -1)
  {
    return 0;
  }

  return CFSocketCreateWithNative(allocator, v22, callBackTypes, callout, context);
}

CFSocketRef CFSocketCreateWithSocketSignature(CFAllocatorRef allocator, const CFSocketSignature *signature, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v10 = CFSocketCreate(allocator, signature->protocolFamily, signature->socketType, signature->protocol, callBackTypes, callout, context);
  v11 = v10;
  if (v10 && (!CFSocketIsValid(v10) || CFSocketSetAddress(v11, signature->address)))
  {
    CFSocketInvalidate(v11);
    CFRelease(v11);
    return 0;
  }

  return v11;
}

CFSocketRef CFSocketCreateConnectedToSocketSignature(CFAllocatorRef allocator, const CFSocketSignature *signature, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context, CFTimeInterval timeout)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v12 = CFSocketCreate(allocator, signature->protocolFamily, signature->socketType, signature->protocol, callBackTypes, callout, context);
  v13 = v12;
  if (v12 && (!CFSocketIsValid(v12) || CFSocketConnectToAddress(v13, signature->address, timeout)))
  {
    CFSocketInvalidate(v13);
    CFRelease(v13);
    return 0;
  }

  return v13;
}

CFSocketError CFSocketRegisterValue(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name, CFPropertyListRef value)
{
  v13 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10[2] = 0;
  v11 = kCFSocketError;
  v10[0] = &v11;
  v10[1] = 0;
  CFDictionaryAddValue(Mutable, @"Command", @"Register");
  CFDictionaryAddValue(Mutable, @"Name", name);
  if (value)
  {
    CFDictionaryAddValue(Mutable, @"Value", value);
  }

  memset(&v12, 0, sizeof(v12));
  __CFSocketValidateSignature(nameServerSignature, &v12, __CFSocketDefaultNameRegistryPortNumber);
  __CFSocketSendNameRegistryRequest(&v12, Mutable, v10, timeout);
  CFRelease(Mutable);
  CFRelease(v12.address);
  return v11;
}

void *__CFSocketValidateSignature(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  *bytes = 528;
  v17 = bswap32(__CFSocketDefaultNameRegistryPortNumber) >> 16;
  v18 = 16777343;
  if (!a1)
  {
    *a2 = 0x100000002;
    *(a2 + 8) = 6;
    goto LABEL_23;
  }

  v7 = *a1;
  v6 = *(a1 + 4);
  *a2 = *a1;
  *(a2 + 4) = v6;
  v8 = *(a1 + 8);
  *(a2 + 8) = v8;
  if (v7 <= 0)
  {
    *a2 = 2;
LABEL_7:
    if (v6 < 1)
    {
      *(a2 + 4) = 1;
      if (v8 >= 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 >= 1)
      {
        goto LABEL_15;
      }

      if (v6 != 1)
      {
        if (v6 != 2)
        {
          goto LABEL_15;
        }

        v9 = 17;
        goto LABEL_14;
      }
    }

    v9 = 6;
LABEL_14:
    *(a2 + 8) = v9;
    goto LABEL_15;
  }

  if (v7 == 2)
  {
    goto LABEL_7;
  }

LABEL_15:
  v10 = *(a1 + 16);
  if (v10)
  {
    BytePtr = CFDataGetBytePtr(v10);
    if (CFDataGetLength(*(a1 + 16)) < 16 || (BytePtr[1] | 2) != 2)
    {
      result = CFRetain(*(a1 + 16));
      goto LABEL_25;
    }

    *bytes = 528;
    v12 = *(BytePtr + 1);
    v13 = __rev16(a3);
    if (!v12)
    {
      v12 = v13;
    }

    v17 = v12;
    v14 = *(BytePtr + 1);
    if (!v14)
    {
      v14 = 16777343;
    }

    v18 = v14;
  }

LABEL_23:
  result = CFDataCreate(&__kCFAllocatorSystemDefault, bytes, 16);
LABEL_25:
  *(a2 + 16) = result;
  return result;
}

void __CFSocketSendNameRegistryRequest(const CFSocketSignature *a1, const void *a2, void **a3, CFTimeInterval a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v13.version = 0;
  memset(&v13.retain, 0, 24);
  v13.info = a3;
  if (*a3)
  {
    **a3 = -1;
  }

  Data = CFPropertyListCreateData(&__kCFAllocatorSystemDefault, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v8 = Data;
    if (*a3)
    {
      **a3 = -2;
    }

    v9 = CFSocketCreateConnectedToSocketSignature(&__kCFAllocatorSystemDefault, a1, 3uLL, __CFSocketHandleNameRegistryReply, &v13, a4);
    if (v9)
    {
      v10 = v9;
      if (CFSocketSendData(v9, 0, v8, a4) == kCFSocketSuccess)
      {
        RunLoopSource = CFSocketCreateRunLoopSource(&__kCFAllocatorSystemDefault, v10, 0);
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, RunLoopSource, @"CFSocketRegistryRequest");
        CFRunLoopRunInMode(@"CFSocketRegistryRequest", a4, 0);
        CFRelease(RunLoopSource);
      }

      CFSocketInvalidate(v10);
      CFRelease(v10);
    }

    CFRelease(v8);
  }
}

CFSocketError CFSocketCopyRegisteredValue(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name, CFPropertyListRef *value, CFDataRef *nameServerAddress)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&v14, 0, sizeof(v14));
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12[2] = nameServerAddress;
  v13 = kCFSocketError;
  v12[0] = &v13;
  v12[1] = value;
  CFDictionaryAddValue(Mutable, @"Command", @"Retrieve");
  CFDictionaryAddValue(Mutable, @"Name", name);
  __CFSocketValidateSignature(nameServerSignature, &v14, __CFSocketDefaultNameRegistryPortNumber);
  __CFSocketSendNameRegistryRequest(&v14, Mutable, v12, timeout);
  CFRelease(Mutable);
  CFRelease(v14.address);
  return v13;
}

CFSocketError CFSocketRegisterSocketSignature(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name, const CFSocketSignature *signature)
{
  v21 = *MEMORY[0x1E69E9840];
  if (signature)
  {
    v17 = 0;
    v18 = 0;
    theData = 0;
    __CFSocketValidateSignature(signature, &v17, 0);
    v7 = theData;
    if (theData && (v8 = v17, v17 <= 0xFF) && (v9 = BYTE4(v17), HIDWORD(v17) <= 0xFF) && (v10 = v18, v18 <= 0xFF))
    {
      Length = CFDataGetLength(theData);
      if ((Length - 256) >= 0xFFFFFFFFFFFFFF01)
      {
        v14 = Length;
        Mutable = CFDataCreateMutable(&__kCFAllocatorSystemDefault, Length + 4);
        bytes[0] = v8;
        bytes[1] = v9;
        bytes[2] = v10;
        bytes[3] = v14;
        CFDataAppendBytes(Mutable, bytes, 4);
        BytePtr = CFDataGetBytePtr(v7);
        CFDataAppendBytes(Mutable, BytePtr, v14);
        v12 = CFSocketRegisterValue(nameServerSignature, timeout, name, Mutable);
        CFRelease(Mutable);
      }

      else
      {
        v12 = kCFSocketError;
      }
    }

    else
    {
      v12 = kCFSocketError;
      if (!theData)
      {
        return v12;
      }
    }

    CFRelease(v7);
    return v12;
  }

  return CFSocketRegisterValue(nameServerSignature, timeout, name, 0);
}

CFSocketError CFSocketCopyRegisteredSocketSignature(const CFSocketSignature *nameServerSignature, CFTimeInterval timeout, CFStringRef name, CFSocketSignature *signature, CFDataRef *nameServerAddress)
{
  value[1] = *MEMORY[0x1E69E9840];
  v23 = 0;
  value[0] = 0;
  v21 = 0;
  v22 = 0;
  cf = 0;
  v7 = CFSocketCopyRegisteredValue(nameServerSignature, timeout, name, value, &cf);
  if (value[0])
  {
    v8 = CFGetTypeID(value[0]);
    if (v8 == CFDataGetTypeID() && (v9 = CFDataGetBytePtr(value[0])) != 0 && (v10 = v9, v11 = CFDataGetLength(value[0]), v11 >= 4))
    {
      if (signature && v7 == kCFSocketSuccess)
      {
        LODWORD(v21) = *v10;
        HIDWORD(v21) = v10[1];
        LODWORD(v22) = v10[2];
        v13 = CFDataCreate(&__kCFAllocatorSystemDefault, v10 + 4, v11 - 4);
        v23 = v13;
        __CFSocketValidateSignature(&v21, signature, 0);
        CFRelease(v13);
        BytePtr = CFDataGetBytePtr(signature->address);
        if (CFDataGetLength(signature->address) >= 16 && BytePtr[1] == 2)
        {
          if (cf)
          {
            if (CFDataGetLength(cf) >= 16)
            {
              v15 = CFDataGetBytePtr(cf);
              if (v15)
              {
                v16 = v15;
                if (v15[1] == 2)
                {
                  Length = CFDataGetLength(signature->address);
                  MutableCopy = CFDataCreateMutableCopy(&__kCFAllocatorSystemDefault, Length, signature->address);
                  *(CFDataGetMutableBytePtr(MutableCopy) + 1) = *(v16 + 1);
                  CFRelease(signature->address);
                  signature->address = MutableCopy;
                }
              }
            }
          }
        }

        if (nameServerAddress)
        {
          v19 = cf;
          if (cf)
          {
            v19 = CFRetain(cf);
          }

          v7 = kCFSocketSuccess;
          *nameServerAddress = v19;
        }

        else
        {
          v7 = kCFSocketSuccess;
        }
      }
    }

    else
    {
      v7 = kCFSocketError;
    }

    if (value[0])
    {
      CFRelease(value[0]);
    }
  }

  else
  {
    v7 = kCFSocketError;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

UInt8 *clearInvalidFileDescriptors(UInt8 *result)
{
  if (result)
  {
    v1 = result;
    v2 = 8 * CFDataGetLength(result);
    result = CFDataGetMutableBytePtr(v1);
    if (v2 >= 1)
    {
      v3 = result;
      for (i = 0; i != v2; ++i)
      {
        result = __darwin_check_fd_set_overflow(i, v3, 1);
        if (result)
        {
          if ((*&v3[4 * (i >> 5)] & (1 << i)) != 0)
          {
            result = __CFNativeSocketIsValid(i);
            if (!result)
            {
              result = __darwin_check_fd_set_overflow(i, v3, 1);
              if (result)
              {
                *&v3[4 * (i >> 5)] &= ~(1 << i);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void __CFSocketHandleNameRegistryReply(__CFSocket *a1, int a2, const __CFData *a3, CFDataRef data, uint64_t a5)
{
  v8 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, data, 0, 0, 0);
  v9 = v8;
  if (*a5)
  {
    **a5 = -1;
  }

  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v9, @"Result");
      if (Value)
      {
        if (*a5)
        {
          **a5 = 0;
        }

        if (*(a5 + 8))
        {
          **(a5 + 8) = CFRetain(Value);
        }

        v12 = *(a5 + 16);
        if (v12)
        {
          if (a3)
          {
            Copy = CFDataCreateCopy(&__kCFAllocatorSystemDefault, a3);
            v12 = *(a5 + 16);
          }

          else
          {
            Copy = 0;
          }

          *v12 = Copy;
        }
      }
    }

    CFRelease(v9);
  }

  CFSocketInvalidate(a1);
}

uint64_t __CFDateIntervalFormatterDeallocate(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  result = a1[7];
  if (result)
  {

    return udtitvfmt_close();
  }

  return result;
}

unint64_t *CFDateIntervalFormatterCreate(__objc2_class **a1, const void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    a1 = _CFGetTSD(1);
    if (!a1)
    {
      a1 = &__kCFAllocatorSystemDefault;
    }
  }

  Instance = _CFRuntimeCreateInstance(a1, 0x45uLL, 80, 0, a5, a6, a7, a8);
  v12 = Instance;
  if (Instance)
  {
    v13 = 2;
    if (a3 >= 5)
    {
      v14 = 2;
    }

    else
    {
      v14 = a3;
    }

    if (a4 < 5)
    {
      v13 = a4;
    }

    Instance[8] = v14;
    Instance[9] = v13;
    if (a2)
    {
      v15 = CFRetain(a2);
    }

    else
    {
      v15 = 0;
    }

    v12[2] = v15;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
    v12[6] = CFRetain(&stru_1EF068AA8);
    v12[7] = 0;
    v12[10] = 0;
    *(v12 + 22) = 0;
    *(v12 + 92) &= 0xFCu;
  }

  return v12;
}

void _CFDateIntervalFormatterInitializeFromCoderValues(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, int a6, int a7, const void *a8, const void *a9, const void *a10)
{
  os_unfair_lock_lock((a1 + 88));
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  v18 = *(a1 + 48);
  if (v18 != a4)
  {
    if (v18)
    {
      CFRelease(v18);
    }

    if (a4)
    {
      CFRetain(a4);
    }

    *(a1 + 48) = a4;
  }

  v19 = *(a1 + 40);
  if (v19 != a5)
  {
    if (v19)
    {
      CFRelease(v19);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    *(a1 + 40) = a5;
  }

  *(a1 + 92) = (a6 != 0) | (2 * (a7 != 0)) | *(a1 + 92) & 0xFC;
  v20 = *(a1 + 16);
  if (v20 != a8)
  {
    if (v20)
    {
      CFRelease(v20);
    }

    if (a8)
    {
      CFRetain(a8);
    }

    *(a1 + 16) = a8;
  }

  v21 = *(a1 + 24);
  if (v21 != a9)
  {
    if (v21)
    {
      CFRelease(v21);
    }

    if (a9)
    {
      CFRetain(a9);
    }

    *(a1 + 24) = a9;
  }

  v22 = *(a1 + 32);
  if (v22 != a10)
  {
    if (v22)
    {
      CFRelease(v22);
    }

    if (a10)
    {
      CFRetain(a10);
    }

    *(a1 + 32) = a10;
  }

  os_unfair_lock_unlock((a1 + 88));
}

void _CFDateIntervalFormatterCopyCoderValues(uint64_t a1, void *a2, void *a3, void *a4, void *a5, _BYTE *a6, BOOL *a7, void *a8, void *a9, void *a10)
{
  os_unfair_lock_lock((a1 + 88));
  v18 = *(a1 + 72);
  *a2 = *(a1 + 64);
  *a3 = v18;
  v19 = *(a1 + 48);
  if (v19)
  {
    CFRetain(*(a1 + 48));
  }

  *a4 = v19;
  v20 = *(a1 + 40);
  if (v20)
  {
    CFRetain(*(a1 + 40));
  }

  *a5 = v20;
  *a6 = *(a1 + 92) & 1;
  *a7 = (*(a1 + 92) & 2) != 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    CFRetain(*(a1 + 16));
  }

  *a8 = v21;
  v22 = *(a1 + 24);
  if (v22)
  {
    CFRetain(*(a1 + 24));
  }

  *a9 = v22;
  v23 = *(a1 + 32);
  if (v23)
  {
    CFRetain(*(a1 + 32));
  }

  *a10 = v23;

  os_unfair_lock_unlock((a1 + 88));
}

unint64_t *CFDateIntervalFormatterCreateCopy(__objc2_class **a1, uint64_t a2)
{
  __CFCheckCFInfoPACSignature(a2);
  v4 = _CFGetNonObjCTypeID(a2);
  if (v4 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v4);
  }

  os_unfair_lock_lock((a2 + 88));
  v9 = CFDateIntervalFormatterCreate(a1, *(a2 + 16), *(a2 + 64), *(a2 + 72), v5, v6, v7, v8);
  v10 = *(a2 + 24);
  if (v10)
  {
    v9[3] = _CFCalendarCreateCopy(a1, v10);
  }

  v11 = *(a2 + 32);
  if (v11)
  {
    v9[4] = CFRetain(v11);
  }

  v12 = *(a2 + 40);
  if (v12)
  {
    v9[5] = CFStringCreateCopy(a1, v12);
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    v9[6] = CFStringCreateCopy(a1, v13);
  }

  *(v9 + 4) = *(a2 + 64);
  v14 = *(v9 + 92) & 0xFE | *(a2 + 92) & 1;
  *(v9 + 92) = v14;
  *(v9 + 92) = v14 & 0xFD | *(a2 + 92) & 2;
  os_unfair_lock_unlock((a2 + 88));
  return v9;
}

CFLocaleRef CFDateIntervalFormatterCopyLocale(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v2);
  }

  os_unfair_lock_lock((a1 + 88));
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRetain(*(a1 + 16));
    os_unfair_lock_unlock((a1 + 88));
    return v3;
  }

  else
  {
    os_unfair_lock_unlock((a1 + 88));

    return CFLocaleCopyCurrent();
  }
}

void CFDateIntervalFormatterSetLocale(uint64_t a1, const __CFLocale *a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v4);
  }

  os_unfair_lock_lock((a1 + 88));
  v5 = *(a1 + 16);
  if (v5 != a2)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    if (a2)
    {
      Copy = CFLocaleCreateCopy(&__kCFAllocatorSystemDefault, a2);
    }

    else
    {
      Copy = 0;
    }

    *(a1 + 16) = Copy;
    *(a1 + 92) |= 1u;
    updateDateTemplateFromCurrentSettings(a1);
  }

  os_unfair_lock_unlock((a1 + 88));
}

void updateDateTemplateFromCurrentSettings(void *a1)
{
  v2 = a1[8];
  v3 = a1[9];
  v4 = a1[2];
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = CFLocaleCopyCurrent();
  }

  v6 = v5;
  Value = a1[3];
  if (!Value)
  {
    Value = CFLocaleGetValue(v5, @"kCFLocaleCalendarKey");
  }

  v8 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, v6, v2, v3);
  CFDateFormatterSetProperty(v8, @"kCFDateFormatterCalendarKey", Value);
  CFRelease(v6);
  Format = CFDateFormatterGetFormat(v8);
  v10 = a1[5];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[5] = CFStringCreateCopy(&__kCFAllocatorSystemDefault, Format);

  CFRelease(v8);
}

CFCalendarRef CFDateIntervalFormatterCopyCalendar(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v2);
  }

  os_unfair_lock_lock((a1 + 88));
  v3 = *(a1 + 24);
  if (v3)
  {
    Value = *(a1 + 24);
  }

  else
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v3 = CFCalendarCopyCurrent();
      goto LABEL_7;
    }

    Value = CFLocaleGetValue(v5, @"kCFLocaleCalendarKey");
    v3 = Value;
  }

  CFRetain(Value);
LABEL_7:
  os_unfair_lock_unlock((a1 + 88));
  return v3;
}

void CFDateIntervalFormatterSetCalendar(uint64_t a1, void *a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v4);
  }

  os_unfair_lock_lock((a1 + 88));
  v5 = *(a1 + 24);
  if (v5 != a2)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    if (a2)
    {
      Copy = _CFCalendarCreateCopy(&__kCFAllocatorSystemDefault, a2);
    }

    else
    {
      Copy = 0;
    }

    *(a1 + 24) = Copy;
    *(a1 + 92) |= 1u;
    updateDateTemplateFromCurrentSettings(a1);
  }

  os_unfair_lock_unlock((a1 + 88));
}

CFTimeZoneRef CFDateIntervalFormatterCopyTimeZone(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v2);
  }

  os_unfair_lock_lock((a1 + 88));
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRetain(*(a1 + 32));
    os_unfair_lock_unlock((a1 + 88));
    return v3;
  }

  else
  {
    os_unfair_lock_unlock((a1 + 88));

    return CFTimeZoneCopyDefault();
  }
}

void CFDateIntervalFormatterSetTimeZone(uint64_t a1, const void *a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v4);
  }

  os_unfair_lock_lock((a1 + 88));
  v5 = *(a1 + 32);
  if (v5 != a2)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    if (a2)
    {
      v6 = CFRetain(a2);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 32) = v6;
    *(a1 + 92) |= 1u;
    updateDateTemplateFromCurrentSettings(a1);
  }

  os_unfair_lock_unlock((a1 + 88));
}

const void *CFDateIntervalFormatterCopyDateTemplate(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v2);
  }

  os_unfair_lock_lock((a1 + 88));
  v3 = *(a1 + 48);
  if (v3 || (v3 = *(a1 + 40)) != 0)
  {
    CFRetain(v3);
  }

  os_unfair_lock_unlock((a1 + 88));
  return v3;
}

void CFDateIntervalFormatterSetDateTemplate(uint64_t a1, const __CFString *a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v4);
  }

  if (!a2)
  {
    a2 = &stru_1EF068AA8;
  }

  os_unfair_lock_lock((a1 + 88));
  if (!CFEqual(a2, *(a1 + 48)))
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 48) = CFStringCreateCopy(&__kCFAllocatorSystemDefault, a2);
    *(a1 + 92) |= 3u;
  }

  os_unfair_lock_unlock((a1 + 88));
}

uint64_t CFDateIntervalFormatterGetDateStyle(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v2);
  }

  os_unfair_lock_lock((a1 + 88));
  v3 = *(a1 + 64);
  os_unfair_lock_unlock((a1 + 88));
  return v3;
}

void CFDateIntervalFormatterSetDateStyle(uint64_t a1, uint64_t a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v4);
  }

  os_unfair_lock_lock((a1 + 88));
  *(a1 + 64) = a2;
  *(a1 + 92) = *(a1 + 92) & 0xFC | 1;
  updateDateTemplateFromCurrentSettings(a1);

  os_unfair_lock_unlock((a1 + 88));
}

uint64_t CFDateIntervalFormatterGetTimeStyle(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v2);
  }

  os_unfair_lock_lock((a1 + 88));
  v3 = *(a1 + 72);
  os_unfair_lock_unlock((a1 + 88));
  return v3;
}

void CFDateIntervalFormatterSetTimeStyle(uint64_t a1, uint64_t a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v4);
  }

  os_unfair_lock_lock((a1 + 88));
  *(a1 + 72) = a2;
  *(a1 + 92) = *(a1 + 92) & 0xFC | 1;
  updateDateTemplateFromCurrentSettings(a1);

  os_unfair_lock_unlock((a1 + 88));
}

uint64_t _CFDateIntervalFormatterGetBoundaryStyle(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v2);
  }

  os_unfair_lock_lock((a1 + 88));
  v3 = *(a1 + 80);
  os_unfair_lock_unlock((a1 + 88));
  return v3;
}

void _CFDateIntervalFormatterSetBoundaryStyle(uint64_t a1, uint64_t a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v4);
  }

  os_unfair_lock_lock((a1 + 88));
  *(a1 + 80) = a2;
  *(a1 + 92) |= 1u;

  os_unfair_lock_unlock((a1 + 88));
}

CFStringRef CFDateIntervalFormatterCreateStringFromDateToDate(uint64_t a1, const __CFDate *a2, const __CFDate *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(a1);
  v6 = _CFGetNonObjCTypeID(a1);
  if (v6 != 69)
  {
    _CFAssertMismatchedTypeID(0x45uLL, v6);
  }

  os_unfair_lock_lock((a1 + 88));
  v7 = *(a1 + 56);
  if (*(a1 + 92))
  {
    if (v7)
    {
      udtitvfmt_close();
      *(a1 + 56) = 0;
      *(a1 + 92) &= ~1u;
    }
  }

  else if (v7)
  {
    goto LABEL_28;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRetain(*(a1 + 16));
  }

  else
  {
    v8 = CFLocaleCopyCurrent();
  }

  Value = *(a1 + 24);
  if (!Value)
  {
    Value = CFLocaleGetValue(v8, @"kCFLocaleCalendarKey");
  }

  Identifier = CFLocaleGetIdentifier(v8);
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(&__kCFAllocatorSystemDefault, Identifier);
  MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, ComponentsFromLocaleIdentifier);
  CFRelease(ComponentsFromLocaleIdentifier);
  if (Value)
  {
    CFDictionarySetValue(MutableCopy, @"kCFLocaleCalendarKey", Value);
  }

  LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(&__kCFAllocatorSystemDefault, MutableCopy);
  CFRelease(MutableCopy);
  v48 = 0;
  memset(buffer, 0, sizeof(buffer));
  CFStringGetCString(LocaleIdentifierFromComponents, buffer, 100, 0x8000100u);
  CFRelease(LocaleIdentifierFromComponents);
  v44 = 0;
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
  *chars = 0u;
  v33 = 0u;
  v14 = *(a1 + 32);
  if (v14)
  {
    CFRetain(*(a1 + 32));
  }

  else
  {
    v14 = CFTimeZoneCopyDefault();
  }

  Name = CFTimeZoneGetName(v14);
  if (CFStringGetLength(Name) > 99)
  {
    v16.length = 100;
  }

  else
  {
    v16.length = CFStringGetLength(Name);
  }

  v16.location = 0;
  CFStringGetCharacters(Name, v16, chars);
  v17 = 48;
  if ((*(a1 + 92) & 2) == 0)
  {
    v17 = 40;
  }

  v18 = *(a1 + v17);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  if (CFStringGetLength(v18) > 99)
  {
    v19.length = 100;
  }

  else
  {
    v19.length = CFStringGetLength(v18);
  }

  v19.location = 0;
  CFStringGetCharacters(v18, v19, v45);
  CFStringGetLength(v18);
  CFStringGetLength(Name);
  v20 = udtitvfmt_open();
  *(a1 + 56) = v20;
  if (v20 || (u_errorName(U_ZERO_ERROR), CFLog(3, @"udtitvfmt_open failed!  Formatter is NULL! -- locale: %s, template: %@, timezone: %@, status: %s", v21, v22, v23, v24, v25, v26, buffer), *(a1 + 56)))
  {
    udtitvfmt_setAttribute();
  }

  CFRelease(v8);
  CFRelease(v14);
  if (!*(a1 + 56))
  {
    v30 = &stru_1EF068AA8;
    goto LABEL_32;
  }

LABEL_28:
  CFDateGetAbsoluteTime(a2);
  CFDateGetAbsoluteTime(a3);
  bzero(chars, 0x7D0uLL);
  LODWORD(v45[0]) = 0;
  v27 = udtitvfmt_format();
  if (v27 < 1001)
  {
    v30 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, chars, v27);
  }

  else
  {
    v28 = malloc_type_calloc(v27, 2uLL, 0x1000040BDFB0063uLL);
    LODWORD(v45[0]) = 0;
    v29 = udtitvfmt_format();
    v30 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v28, v29);
    free(v28);
  }

LABEL_32:
  os_unfair_lock_unlock((a1 + 88));
  return v30;
}

CFStringRef CFDateIntervalFormatterCreateStringFromDateInterval(uint64_t a1, uint64_t a2)
{
  started = CFDateIntervalCopyStartDate(a2);
  v5 = CFDateIntervalCopyEndDate(a2);
  StringFromDateToDate = CFDateIntervalFormatterCreateStringFromDateToDate(a1, started, v5);
  CFRelease(started);
  CFRelease(v5);
  return StringFromDateToDate;
}

uint64_t _CFBundleGetLanguageCodeForLocalization(const __CFString *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  if ((Length - 2) > 0xFD)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = Length;
  if (!CFStringGetCString(a1, buffer, 255, 0x600u))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v14 = 0;
  v5 = -1;
  do
  {
    v6 = strcmp(buffer, __CFBundleLanguageNamesArray[v4]);
    ++v5;
    if (!v6)
    {
      break;
    }

    v7 = v4++ >= 0x97;
  }

  while (!v7);
  v8 = *buffer == 1415538810 && *&buffer[4] == 87;
  if (v8 || *buffer == 0x746E61482D687ALL)
  {
    return 19;
  }

  v9 = *buffer == 1130326138 && *&buffer[4] == 78;
  result = 33;
  if (!v9)
  {
    result = *buffer == 0x736E61482D687ALL ? 33 : v5;
    if (*buffer != 0x736E61482D687ALL && v6)
    {
      if (v3 != 2)
      {
        if (buffer[2] < 0 ? __maskrune(buffer[2], 0x100uLL) : *(MEMORY[0x1E69E9830] + 4 * buffer[2] + 60) & 0x100)
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (buffer[0] == 110 && buffer[1] == 111)
      {
        return 9;
      }

      else
      {
        v12 = 0;
        result = 0xFFFFFFFFLL;
        while (buffer[0] != byte_18330A6CF[v12] || buffer[1] != byte_18330A6CF[v12 + 1])
        {
          v7 = v12 >= 0x1C5;
          v12 += 3;
          if (v7)
          {
            return result;
          }
        }

        return v12 / 3u;
      }
    }
  }

  return result;
}

uint64_t _CFBundleGetRegionCodeForLocalization(const __CFString *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((CFStringGetLength(a1) - 2) > 3 || !CFStringGetCString(a1, buffer, 6, 0x600u))
  {
    goto LABEL_14;
  }

  v2 = 0;
  buffer[5] = 0;
  v3 = __CFBundleLocaleAbbreviationsArray;
  do
  {
    if (!strcmp(buffer, (v3 + v2)))
    {
      result = v2 / 6u;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (result != -1)
    {
      break;
    }

    v5 = v2 >= 0x288;
    v2 += 6;
  }

  while (!v5);
  if (result <= 27)
  {
    if (result != -1)
    {
      if (result == 25)
      {
        return 68;
      }

      return result;
    }

LABEL_14:
    LanguageCodeForLocalization = _CFBundleGetLanguageCodeForLocalization(a1);
    return _CFBundleGetRegionCodeForLanguageCode(LanguageCodeForLocalization);
  }

  if (result == 28)
  {
    return 82;
  }

  if (result == 37)
  {
    return 0;
  }

  return result;
}

uint64_t _CFBundleGetLanguageCodeForRegionCode(unsigned int a1)
{
  if (a1 == 52)
  {
    return 33;
  }

  if (a1 > 0x6C)
  {
    return 0xFFFFFFFFLL;
  }

  if (!__CFBundleLocaleAbbreviationsArray)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = (__CFBundleLocaleAbbreviationsArray + 6 * a1);
  if (!*v2)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = 0; *v2 != byte_18330A6CF[i] || v2[1] != byte_18330A6CF[i + 1]; i += 3)
  {
    if (i >= 0x1C5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return i / 3u;
}

uint64_t _CFBundleGetRegionCodeForLanguageCode(unsigned int a1)
{
  if (a1 == 19)
  {
    return 53;
  }

  if (a1 > 0x97)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = &byte_18330A6CF[3 * a1];
  if (!*v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  while (*(__CFBundleLocaleAbbreviationsArray + v3) != *v2 || *(__CFBundleLocaleAbbreviationsArray + v3 + 1) != v2[1])
  {
    v4 = v3 >= 0x288;
    v3 += 6;
    if (v4)
    {
      v5 = -1;
      goto LABEL_15;
    }
  }

  if (v3 - 150 < 6)
  {
    return 68;
  }

  v5 = v3 / 6;
LABEL_15:
  if (v5 == 28)
  {
    return 82;
  }

  else
  {
    return v5;
  }
}

CFArrayRef CFBundleCopyLocalizationsForURL(CFURLRef url)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = CFBundleCreate(&__kCFAllocatorSystemDefault, url);
  v17[0] = 0;
  if (v2)
  {
    v5 = v2;
    v6 = _CFBundleCopyBundleLocalizations(v2, 0);
    CFRelease(v5);
    return v6;
  }

  v8 = _CFBundleCopyInfoDictionaryInExecutable(url, v3, v4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, @"CFBundleLocalizations");
  if (!Value || (v11 = Value, v12 = CFGetTypeID(Value), v12 != CFArrayGetTypeID()) || (v13 = CFRetain(v11)) == 0)
  {
    v13 = _copyAppleLocalizations(v9);
    if (!v13)
    {
      v15 = CFDictionaryGetValue(v9, @"CFBundleDevelopmentRegion");
      v14 = v15;
      v17[0] = v15;
      if (!v15)
      {
        goto LABEL_9;
      }

      v16 = CFGetTypeID(v15);
      if (v16 != CFStringGetTypeID() || CFStringGetLength(v14) < 1)
      {
        v14 = 0;
        goto LABEL_9;
      }

      v13 = CFArrayCreate(&__kCFAllocatorSystemDefault, v17, 1, &kCFTypeArrayCallBacks);
    }
  }

  v14 = v13;
LABEL_9:
  CFRelease(v9);
  return v14;
}

void _CFBundleSetupXPCBootstrap(void *a1)
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    v3 = _CFBundleCopyLanguageSearchListInBundle(MainBundle);
    if (v3)
    {
      v4 = v3;
      _CFBundleSetupXPCBootstrapWithLanguages(a1, v3);

      CFRelease(v4);
    }
  }
}

void _CFBundleFlushLanguageCachesAfterEUIDChange()
{
  MainBundle = CFBundleGetMainBundle();
  _CFBundleFlushBundleCaches(MainBundle);
  _CFLocaleResetCurrent();
  os_unfair_lock_lock(&_CFBundleUserLanguagesLock);
  if (_CFBundleUserLanguages)
  {
    CFRelease(_CFBundleUserLanguages);
    _CFBundleUserLanguages = 0;
  }

  os_unfair_lock_unlock(&_CFBundleUserLanguagesLock);
}

void _CFBundleSetDefaultLocalization(CFStringRef theString)
{
  if (theString)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, theString);
  }

  else
  {
    Copy = 0;
  }

  if (_defaultLocalization)
  {
    CFRelease(_defaultLocalization);
  }

  _defaultLocalization = Copy;
}

void _onelineFormatArray(__CFString *a1, const __CFArray *a2)
{
  CFStringAppend(a1, @"[");
  if (a2)
  {
    v5.length = CFArrayGetCount(a2);
    v5.location = 0;
    CFArrayApplyFunction(a2, v5, _onelineFormatArrayApply, a1);
    if (CFArrayGetCount(a2) >= 1)
    {
      v6.location = CFStringGetLength(a1) - 2;
      v6.length = 2;
      CFStringDelete(a1, v6);
    }
  }

  else
  {
    CFStringAppend(a1, @"<null>");
  }

  CFStringAppend(a1, @"]");
}

const char *PROEM_SEL_1(const char *a1)
{
  if (a1)
  {
    return sel_getName(a1);
  }

  else
  {
    return "(null selector)";
  }
}

void __NSOrderedSetEnumerate(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v7 = [a4 firstIndex];
      v32 = [a4 lastIndex];
    }

    else
    {
      v7 = 0;
      v32 = [a1 count] - 1;
    }

    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a3)
      {
        v8 = __CFActiveProcessorCount();
        if (v8 < 2)
        {
          a3 &= ~1uLL;
        }
      }

      else
      {
        v8 = 1;
      }

      if ((a3 & 3) != 0)
      {
        v9 = (v32 - v7 + 1) / v8 / v8;
        if (v9 >= 0x10)
        {
          if (v9 <= 0x1000)
          {
            v10 = (v9 + 15) & 0x3FF0;
          }

          else
          {
            v10 = 4096;
          }
        }

        else
        {
          v10 = 16;
        }

        v17 = v10 + v32 - v7;
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v40 = 0x7FFFFFFFFFFFFFFFLL;
        if (a3)
        {
          v35[0] = 0;
          v35[1] = v35;
          v35[2] = 0x2020000000;
          v36 = 0;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ____NSOrderedSetEnumerate_block_invoke;
          block[3] = &unk_1E6D82388;
          block[10] = v10;
          block[11] = v32;
          block[12] = a3;
          block[4] = a1;
          block[5] = a4;
          block[6] = a2;
          block[7] = v35;
          block[8] = &v37;
          block[9] = v7;
          dispatch_apply(v17 / v10, 0, block);
          _Block_object_dispose(v35, 8);
        }

        else
        {
          v29 = a2;
          v31 = a1;
          if (v10 <= v17)
          {
            v18 = v7;
            v19 = 0;
            v20 = v10 - 1;
            v21 = 1;
            v22 = v18;
            v23 = v32;
            v24 = v17 / v10;
            do
            {
              if ((a3 & 2) != 0)
              {
                if (v20 >= v23 - v18)
                {
                  v26 = v18;
                }

                else
                {
                  v26 = 1 - v10 + v23;
                }

                v25 = v23;
              }

              else
              {
                if (v20 >= v23 - v18)
                {
                  v25 = v32;
                }

                else
                {
                  v25 = v20 + v19 * v10 + v18;
                }

                v26 = v22;
              }

              v27 = __NSOrderedSetChunkIterate(v31, a3, v26, v25, a4, v29, v38 + 3, 0, 0);
              ++v19;
              if (v21 >= v24)
              {
                v28 = 1;
              }

              else
              {
                v28 = v27;
              }

              ++v21;
              v23 -= v10;
              v22 += v10;
            }

            while (v28 != 1);
          }
        }

        _Block_object_dispose(&v37, 8);
      }

      else
      {
        v30 = v7;
        LOBYTE(v35[0]) = 0;
        v11 = _CFAutoreleasePoolPush();
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v12 = [a1 countByEnumeratingWithState:&v42 objects:v41 count:16];
        if (v12)
        {
          v13 = 0;
          v14 = 0;
          v15 = *v43;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v43 != v15)
              {
                objc_enumerationMutation(a1);
              }

              if ((a3 & 0x1000000000000000) == 0 || v30 <= v14 && v14 <= v32 && [a4 containsIndex:v14])
              {
                __NSORDEREDSET_IS_CALLING_OUT_TO_A_BLOCK__(a2);
                if (v13 < 0x3FF)
                {
                  ++v13;
                }

                else
                {
                  _CFAutoreleasePoolPop(v11);
                  v11 = _CFAutoreleasePoolPush();
                  v13 = 0;
                }
              }

              ++v14;
            }

            v12 = [a1 countByEnumeratingWithState:&v42 objects:v41 count:16];
          }

          while (v12);
        }

        _CFAutoreleasePoolPop(v11);
      }
    }
  }
}

void sub_1831F4F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t comparisonUsingOrderingForNumericKeys(void **a1, void **a2)
{
  v4 = *a1;
  if (v4 == *a2)
  {
    return 0;
  }

  else
  {
    return [v4 compare:{v2, v3}];
  }
}

id __CFURLComponentsCopyDescription(void *a1)
{
  v1 = [a1 debugDescription];

  return v1;
}

id _CFURLComponentsCreate()
{
  v0 = [MEMORY[0x1E696AF20] _components];

  return v0;
}

id _CFURLComponentsCreateWithURL(uint64_t a1, uint64_t a2, int a3)
{
  v3 = [MEMORY[0x1E696AF20] _componentsWithUrl:a2 resolvingAgainstBaseURL:a3 != 0];

  return v3;
}

id _CFURLComponentsCreateWithString(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AF20] _componentsWithString:a2 encodingInvalidCharacters:1];

  return v2;
}

id _CFURLComponentsCopyURL(void *a1)
{
  v1 = [a1 URL];

  return v1;
}

id _CFURLComponentsCopyURLRelativeToURL(void *a1, uint64_t a2)
{
  v2 = [a1 URLRelativeToURL:a2];

  return v2;
}

id _CFURLComponentsCopyString(void *a1)
{
  v1 = [a1 string];

  return v1;
}

id _CFURLComponentsCopyScheme(void *a1)
{
  v1 = [a1 scheme];

  return v1;
}

id _CFURLComponentsCopyUser(void *a1)
{
  v1 = [a1 user];

  return v1;
}

id _CFURLComponentsCopyPassword(void *a1)
{
  v1 = [a1 password];

  return v1;
}

id _CFURLComponentsCopyHost(void *a1)
{
  v1 = [a1 host];

  return v1;
}

id _CFURLComponentsCopyPort(void *a1)
{
  v1 = [a1 port];

  return v1;
}

id _CFURLComponentsCopyPath(void *a1)
{
  v1 = [a1 path];

  return v1;
}

id _CFURLComponentsCopyQuery(void *a1)
{
  v1 = [a1 query];

  return v1;
}

id _CFURLComponentsCopyFragment(void *a1)
{
  v1 = [a1 fragment];

  return v1;
}

void sub_1831F62B4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F62ACLL);
}

void sub_1831F6344(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F633CLL);
}

id _CFURLComponentsCopyPercentEncodedUser(void *a1)
{
  v1 = [a1 percentEncodedUser];

  return v1;
}

id _CFURLComponentsCopyPercentEncodedPassword(void *a1)
{
  v1 = [a1 percentEncodedPassword];

  return v1;
}

id _CFURLComponentsCopyPercentEncodedHost(void *a1)
{
  v1 = [a1 percentEncodedHost];

  return v1;
}

id _CFURLComponentsCopyPercentEncodedPath(void *a1)
{
  v1 = [a1 percentEncodedPath];

  return v1;
}

id _CFURLComponentsCopyPercentEncodedQuery(void *a1)
{
  v1 = [a1 percentEncodedQuery];

  return v1;
}

id _CFURLComponentsCopyPercentEncodedFragment(void *a1)
{
  v1 = [a1 percentEncodedFragment];

  return v1;
}

BOOL _CFURLComponentsSchemeIsValid(const __CFString *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v3 = Length;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *buffer = 0u;
  theString[0] = a1;
  v38 = 0;
  v37 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  theString[1] = CharactersPtr;
  if (CharactersPtr)
  {
    *(&v37 + 1) = 0;
    v38 = 0;
    *&v36 = 0;
    isa = CharactersPtr->isa;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    *(&v37 + 1) = 0;
    v38 = 0;
    *&v36 = CStringPtr;
    if (CStringPtr)
    {
      isa = *CStringPtr;
    }

    else
    {
      v8.length = v3 >= 0x40 ? 64 : v3;
      v38 = v8.length;
      v8.location = 0;
      CFStringGetCharacters(a1, v8, buffer);
      isa = buffer[-*(&v37 + 1)];
    }
  }

  if (((isa & 0xFFDF) - 91) < 0xFFE6u)
  {
    return 0;
  }

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = -1;
    v12 = 65;
    v13 = 1;
    do
    {
      if (v13 >= 4)
      {
        v14 = 4;
      }

      else
      {
        v14 = v13;
      }

      if (theString[1])
      {
        v15 = *(&theString[1]->isa + *(&v36 + 1) + v10 + 1);
      }

      else if (v36)
      {
        v15 = *(v36 + *(&v36 + 1) + v10 + 1);
      }

      else
      {
        if (v38 <= v10 + 1 || (v16 = *(&v37 + 1), *(&v37 + 1) > v10 + 1))
        {
          v17 = -v14;
          v18 = v14 + v11;
          v19 = v12 - v14;
          v20 = v10 + v17;
          v21 = v20 + 1;
          v22 = v20 + 65;
          if (v22 >= v37)
          {
            v22 = v37;
          }

          *(&v37 + 1) = v21;
          v38 = v22;
          if (v37 < v19)
          {
            v19 = v37;
          }

          v40.location = v21 + *(&v36 + 1);
          v40.length = v19 + v18;
          CFStringGetCharacters(theString[0], v40, buffer);
          v16 = *(&v37 + 1);
        }

        v15 = buffer[v10 + 1 - v16];
      }

      if (v15 > 0x7Fu)
      {
        break;
      }

      if ((v15 - 48) >= 0xAu && (v15 & 0x5Fu) - 65 >= 0x1A)
      {
        v24 = v15;
        v25 = (1 << v15) & 0x680000000000;
        if (v24 > 0x2E || v25 == 0)
        {
          break;
        }
      }

      ++v13;
      v9 = v10 + 2 >= v3;
      ++v10;
      --v11;
      ++v12;
    }

    while (v3 - 1 != v10);
  }

  return v9;
}

id _CFURLComponentsCopyEncodedHost(void *a1)
{
  v1 = [a1 encodedHost];

  return v1;
}

void sub_1831F6794(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F678CLL);
}

void sub_1831F67C4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F67BCLL);
}

void sub_1831F67F4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F67ECLL);
}

void sub_1831F6824(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F681CLL);
}

void sub_1831F6854(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F684CLL);
}

void sub_1831F6884(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F687CLL);
}

void sub_1831F68B4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1831F68ACLL);
}

uint64_t _CFURLComponentsGetRangeOfScheme(void *a1)
{
  result = [a1 rangeOfScheme];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfUser(void *a1)
{
  result = [a1 rangeOfUser];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfPassword(void *a1)
{
  result = [a1 rangeOfPassword];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfHost(void *a1)
{
  result = [a1 rangeOfHost];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfPort(void *a1)
{
  result = [a1 rangeOfPort];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfPath(void *a1)
{
  result = [a1 rangeOfPath];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfQuery(void *a1)
{
  result = [a1 rangeOfQuery];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfFragment(void *a1)
{
  result = [a1 rangeOfFragment];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

CFArrayRef __CFURLComponentsCopyQueryItems(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = [a1 percentEncodedQueryItems];
  }

  else
  {
    v2 = [a1 queryItems];
  }

  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  if ([v2 count] != 1)
  {
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      v13 = xmmword_1E6D82AC8;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          values[0] = [v10 name];
          values[1] = [v10 value];
          if ([v10 value])
          {
            v11 = 2;
          }

          else
          {
            v11 = 1;
          }

          v12 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, keys, values, v11, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFArrayAppendValue(Mutable, v12);
        }

        v7 = [v3 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v7);
    }

    return Mutable;
  }

  return CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
}

void *__CFURLComponentsSetQueryItems(void *a1, CFArrayRef theArray, const __CFArray *a3)
{
  v3 = a1;
  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      Count = CFArrayGetCount(theArray);
      result = CFArrayGetCount(a3);
      if (Count == result)
      {
        v8 = +[(NSArray *)NSMutableArray];
        if (CFArrayGetCount(theArray) >= 1)
        {
          v9 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
            v11 = CFArrayGetValueAtIndex(a3, v9);
            if (ValueAtIndex == &__kCFNull)
            {
              ValueAtIndex = &stru_1EF068AA8;
            }

            else
            {
              v12 = CFGetTypeID(ValueAtIndex);
              if (v12 != CFStringGetTypeID())
              {
                ValueAtIndex = &stru_1EF068AA8;
              }
            }

            if (v11 == &__kCFNull)
            {
              v14 = 0;
            }

            else
            {
              v13 = CFGetTypeID(v11);
              if (v13 == CFStringGetTypeID())
              {
                v14 = v11;
              }

              else
              {
                v14 = 0;
              }
            }

            -[NSArray addObject:](v8, "addObject:", [MEMORY[0x1E696AF60] queryItemWithName:ValueAtIndex value:v14]);
            ++v9;
          }

          while (CFArrayGetCount(theArray) > v9);
        }

        return [v3 setQueryItems:v8];
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v15 = &stru_1EF068AA8;
    a1 = v3;
  }

  else
  {
    v15 = 0;
  }

  return [a1 setQuery:v15];
}

uint64_t _CFURLComponentsMatchURLInString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [MEMORY[0x1E696AF20] _matchWithString:a1 requiredComponents:a2 defaultValues:a3 urlPtr:a4];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFSocketStreamPairSetAuthenticatesServerCertificate(__CFReadStream *a1, CFWriteStreamRef stream, int a3)
{
  v3 = &kCFBooleanFalse;
  if (a3)
  {
    v3 = &kCFBooleanTrue;
  }

  v4 = *v3;
  if (a1)
  {
    return CFReadStreamSetProperty(a1, @"_kCFStreamPropertySocketSecurityAuthenticatesServerCertificate", v4);
  }

  else
  {
    return CFWriteStreamSetProperty(stream, @"_kCFStreamPropertySocketSecurityAuthenticatesServerCertificate", v4);
  }
}

uint64_t _CFStreamErrorFromError(__CFError *a1)
{
  pthread_mutex_lock(&CFNetworkSupport);
  if ((dword_1EA846F70 & 1) == 0)
  {
    initializeCFNetworkSupport();
  }

  v2 = off_1EA846F88;
  pthread_mutex_unlock(&CFNetworkSupport);
  if (v2)
  {
    return off_1EA846F88(a1);
  }

  Domain = CFErrorGetDomain(a1);
  if (CFEqual(Domain, @"NSPOSIXErrorDomain"))
  {
    v3 = 1;
  }

  else if (CFEqual(Domain, @"NSOSStatusErrorDomain"))
  {
    v3 = 2;
  }

  else if (CFEqual(Domain, @"NSMachErrorDomain"))
  {
    v3 = 11;
  }

  else
  {
    v3 = -1;
  }

  CFErrorGetCode(a1);
  return v3;
}

uint64_t (*initializeCFNetworkSupport())(void)
{
  dword_1EA846F70 |= 1u;
  off_1EA846F78 = __CFLookupCFNetworkFunction("_CFSocketStreamCreatePair");
  off_1EA846F80 = __CFLookupCFNetworkFunction("_CFErrorCreateWithStreamError");
  result = __CFLookupCFNetworkFunction("_CFStreamErrorFromCFError");
  off_1EA846F88 = result;
  if (!off_1EA846F78)
  {
    result = CFLog(3, @"CoreFoundation: failed to dynamically link symbol _CFSocketStreamCreatePair", v1, v2, v3, v4, v5, v6, v7);
  }

  if (!off_1EA846F80)
  {
    result = CFLog(3, @"CoreFoundation: failed to dynamically link symbol _CFErrorCreateWithStreamError", v1, v2, v3, v4, v5, v6, v7);
  }

  if (!off_1EA846F88)
  {
    result = CFLog(3, @"CoreFoundation: failed to dynamically link symbol _CFStreamErrorFromCFError", v1, v2, v3, v4, v5, v6, v7);
  }

  dword_1EA846F70 |= 2u;
  return result;
}

CFErrorRef _CFStreamCreateErrorFromStreamError(const __CFAllocator *a1, int *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&CFNetworkSupport);
  if ((dword_1EA846F70 & 1) == 0)
  {
    initializeCFNetworkSupport();
  }

  v4 = off_1EA846F80;
  pthread_mutex_unlock(&CFNetworkSupport);
  if (v4)
  {
    v5 = off_1EA846F80;

    return v5(a1, a2);
  }

  else
  {
    if (*a2 == 2)
    {
      v7 = a2[2];
      v8 = &kCFErrorDomainOSStatus;
    }

    else
    {
      if (*a2 != 1)
      {
        keys[0] = @"CFStreamErrorDomainKey";
        values = CFNumberCreate(a1, kCFNumberCFIndexType, a2);
        v10 = CFDictionaryCreate(a1, keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v11 = CFErrorCreate(a1, @"BogusCFStreamErrorCompatibilityDomain", a2[2], v10);
        CFRelease(values);
        CFRelease(v10);
        return v11;
      }

      v7 = a2[2];
      v8 = &kCFErrorDomainPOSIX;
    }

    v9 = *v8;

    return CFErrorCreate(a1, v9, v7, 0);
  }
}

void *__CFSortIndexes_block_invoke(void *result, uint64_t a2)
{
  v2 = result[4];
  v3 = v2 * a2;
  v4 = v2 * a2 + v2;
  if (v4 >= result[5])
  {
    v4 = result[5];
  }

  v5 = v4 - v3;
  if (v4 > v3)
  {
    v6 = result[6];
    v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = 1;
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v9 - 1), xmmword_183306C30)));
      if (v10.i8[0])
      {
        *(v6 + 8 * v3) = v3;
      }

      if (v10.i8[4])
      {
        *(v6 + 8 * v3 + 8) = v3 + 1;
      }

      v9 += 2;
      v3 += 2;
      v7 -= 2;
    }

    while (v7);
  }

  return result;
}

void __CFSortIndexesN(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  block[10] = *MEMORY[0x1E69E9840];
  v5 = (a2 + a3 - 1) / a3;
  v7 = v5 + 15;
  v6 = v5 < -15;
  v8 = v5 + 30;
  if (!v6)
  {
    v8 = v7;
  }

  v9 = v8 >> 4;
  v10 = v8 & 0xFFFFFFFFFFFFFFF0;
  v11 = (v8 & 0xFFFFFFFFFFFFFFF0) + a2;
  v12 = (v11 - 1) / v10;
  v13 = v11 - v10 * v12;
  MEMORY[0x1EEE9AC00](a1, a2, a3);
  v16 = (&v25 - v15);
  if (v14 >= 0x200)
  {
    v17 = 512;
  }

  else
  {
    v17 = v14;
  }

  bzero(&v25 - v15, v17);
  v18 = v9 << 7;
  if (v12 >= 1)
  {
    v19 = v16;
    v20 = v12;
    do
    {
      *v19++ = malloc_type_malloc(v18, 0x100004000313F17uLL);
      --v20;
    }

    while (v20);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ____CFSortIndexesN_block_invoke;
  block[3] = &unk_1E6D82BD0;
  block[6] = v10;
  block[7] = v13;
  block[8] = a1;
  block[9] = v16;
  block[4] = v30;
  block[5] = v12;
  dispatch_apply(v12, 0, block);
  v21 = v12 - 1;
  if (v12 >= 1)
  {
    v28 = v12 + (v12 >> 63);
    v27 = v21 + (v21 >> 63);
    v22 = (v12 + 1) >> 1;
    v26 = MEMORY[0x1E69E9820];
    v25 = ____CFSortIndexesN_block_invoke_2;
    v29 = v12 - 1;
    v23 = &a1[8 * v10 * v21];
    do
    {
      v32[0] = v26;
      v32[1] = 0x40000000;
      v32[2] = v25;
      v32[3] = &unk_1E6D82BF8;
      v32[6] = v10;
      v32[7] = v12;
      v32[8] = v13;
      v32[9] = v16;
      v32[4] = v30;
      v32[5] = a1;
      dispatch_apply(v28 & 0xFFFFFFFFFFFFFFFELL, 0, v32);
      if (v12)
      {
        memmove(v16[v29], v23, 8 * v13);
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = ____CFSortIndexesN_block_invoke_3;
      v31[3] = &unk_1E6D82C20;
      v31[6] = v12;
      v31[7] = v13;
      v31[8] = v10;
      v31[9] = a1;
      v31[5] = v16;
      v31[4] = v30;
      dispatch_apply(v27 & 0xFFFFFFFFFFFFFFFELL, 0, v31);
      memmove(a1, *v16, v18);
      if ((v12 & 1) == 0)
      {
        memmove(v23, v16[v29], 8 * v13);
      }

      --v22;
    }

    while (v22);
    do
    {
      v24 = *v16++;
      free(v24);
      --v12;
    }

    while (v12);
  }
}

uint64_t *__CFSortIndexesNMerge(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v13 = result;
  if (a4 + a2 >= 17)
  {
    result = (*(a7 + 16))(a7, result[a2 - 1], *a3);
    if (result <= 0)
    {
      if (a6)
      {
        v30 = v11;
      }

      else
      {
        v30 = v13;
      }

      if (a6)
      {
        v31 = a4;
      }

      else
      {
        v31 = a2;
      }

      return memmove(a5, v30, 8 * v31);
    }
  }

  if (!a6)
  {
    if (a2 < 1)
    {
      return result;
    }

    v22 = &v13[a2];
    v23 = &v11[a4];
    v24 = &a5[a2];
    while (1)
    {
      if (v23 <= v11)
      {
        v28 = *v13++;
        v27 = v28;
      }

      else
      {
        if (v22 > v13)
        {
          v25 = *v13;
          v26 = *v11;
          result = (*(a7 + 16))(a7, *v13, *v11);
          if (result <= 0)
          {
            *a5 = v25;
            ++v13;
          }

          else
          {
            *a5 = v26;
            ++v11;
          }

          goto LABEL_25;
        }

        v29 = *v11++;
        v27 = v29;
      }

      *a5 = v27;
LABEL_25:
      if (++a5 >= v24)
      {
        return result;
      }
    }
  }

  if (a4 >= 1)
  {
    v14 = &a5[a4];
    v15 = &v11[a4 - 1];
    v16 = &v13[a2 - 1];
    do
    {
      --v14;
      if (v15 >= v11)
      {
        if (v16 >= v13)
        {
          v20 = *v16;
          v21 = *v15;
          result = (*(a7 + 16))(a7, *v16, *v15);
          if (result <= 0)
          {
            *v14 = v21;
            --v15;
          }

          else
          {
            *v14 = v20;
            --v16;
          }

          continue;
        }

        v19 = *--v15;
        v17 = v19;
      }

      else
      {
        v18 = *--v16;
        v17 = v18;
      }

      *v14 = v17;
    }

    while (v14 > a5);
  }

  return result;
}