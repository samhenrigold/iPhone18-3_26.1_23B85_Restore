const char *caller_path(const char *a1, char a2)
{
  v2 = a1;
  if (!(a2 & 3 | strncmp(a1, "/System/Volumes/Data/", 0x15uLL)))
  {
    if (!strncmp(v2 + 20, "/Device/", 8uLL))
    {
      v2 += 27;
    }

    else
    {
      v2 += 20;
    }
  }

  return v2;
}

void FSEventStreamRelease(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (atomic_fetch_add(streamRef, 0xFFFFFFFF) <= 1)
    {
      if ((*streamRef & 0x80000000) != 0)
      {
        v3 = fsevent_default_log(streamRef, v1);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamRelease_cold_1();
        }
      }

      else
      {

        _FSEventStreamDeallocate(streamRef, v1);
      }
    }
  }

  else
  {
    v2 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamRelease_cold_2();
    }
  }
}

void FSEventStreamStop(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 49))
      {
        v3 = *(streamRef + 45);
        if (v3 && *(streamRef + 92) == 3)
        {
          dispatch_suspend(v3);
          *(streamRef + 92) = 2;
        }

        v4 = *(streamRef + 47);
        if (v4)
        {
          cancel_source(streamRef + 47, streamRef + 96);
          *(streamRef + 49) = 0;
        }

        v5 = *(streamRef + 26);
        if (v5)
        {
          CFMachPortSetInvalidationCallBack(v5, 0);
          CFMachPortInvalidate(*(streamRef + 26));
          CFRelease(*(streamRef + 26));
          *(streamRef + 26) = 0;
        }

        if (!v4)
        {
          dispose_f2d_private_port(*(streamRef + 49));
          *(streamRef + 49) = 0;
        }

        v6 = *(streamRef + 52);
        if (v6)
        {
          CFFileDescriptorDisableCallBacks(v6, 1uLL);
        }

        v7 = *(streamRef + 54);
        if (v7)
        {
          if (*(streamRef + 110) == 3)
          {
            dispatch_suspend(v7);
            *(streamRef + 110) = 2;
          }
        }

        *(streamRef + 188) = 0;
      }

      else
      {
        v9 = fsevent_default_log(streamRef, v1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamStop_cold_1();
        }
      }
    }
  }

  else
  {
    v8 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamStop_cold_2();
    }
  }
}

void cancel_source(dispatch_source_t *a1, int *a2)
{
  v4 = *a1;
  if (v4)
  {
    resume_source(v4, a2);
    dispatch_source_cancel(*a1);
    *a1 = 0;
  }

  *a2 = 0;
}

void FSEventStreamInvalidate(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (*(streamRef + 27) || *(streamRef + 45))
    {
      if (*(streamRef + 188))
      {
        v3 = fsevent_default_log(streamRef, v1);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamInvalidate_cold_1();
        }
      }

      *(streamRef + 189) = 1;
      _FSEventStreamUnscheduleFromRunLoops(streamRef);
      v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, streamRef + 192);
      pthread_mutex_lock(&FSEvents_streamDict_mutex);
      CFDictionaryRemoveValue(FSEvents_streamDict, v4);
      pthread_mutex_unlock(&FSEvents_streamDict_mutex);
      CFRelease(v4);
      v5 = *(streamRef + 25);
      if (v5)
      {
        CFMachPortInvalidate(v5);
        CFRelease(*(streamRef + 25));
        *(streamRef + 25) = 0;
        v6 = *(streamRef + 26);
        if (v6)
        {
          CFMachPortSetInvalidationCallBack(v6, 0);
          CFRelease(*(streamRef + 26));
          *(streamRef + 26) = 0;
        }

        v7 = *(streamRef + 27);
        if (v7)
        {
          CFRelease(v7);
          *(streamRef + 27) = 0;
        }
      }

      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
      }

      else
      {
        dispose_d2f_port(*(streamRef + 48));
      }

      *(streamRef + 48) = 0;
      if (*(streamRef + 47))
      {
        cancel_source(streamRef + 47, streamRef + 96);
        *(streamRef + 49) = 0;
      }

      if ((*(streamRef + 184) & 4) != 0)
      {
        v9 = *(streamRef + 52);
        if (v9)
        {
          CFFileDescriptorInvalidate(v9);
          CFRelease(*(streamRef + 52));
          *(streamRef + 52) = 0;
          v10 = *(streamRef + 53);
          if (v10)
          {
            CFRelease(v10);
            *(streamRef + 53) = 0;
          }
        }

        if (*(streamRef + 54))
        {
          cancel_source(streamRef + 54, streamRef + 110);
          *(streamRef + 102) = -1;
        }
      }
    }

    else
    {
      v11 = fsevent_default_log(streamRef, v1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamInvalidate_cold_2();
      }
    }
  }

  else
  {
    v8 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamInvalidate_cold_3();
    }
  }
}

void _FSEventStreamUnscheduleFromRunLoops(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 224) = 0;
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 232) = 0;
  }
}

void __create_d2f_port_source_block_invoke_2(uint64_t a1)
{
  dispose_d2f_port(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

void dispose_d2f_port(uint64_t name)
{
  if (name)
  {
    v1 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 1u, -1);
    if (v1)
    {
      v3 = v1;
      v4 = fsevent_default_log(v1, v2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        dispose_d2f_port_cold_1(v3);
      }
    }
  }
}

FSEventStreamRef FSEventStreamCreateRelativeToDevice(CFAllocatorRef allocator, FSEventStreamCallback callback, FSEventStreamContext *context, dev_t deviceToWatch, CFArrayRef pathsToWatchRelativeToDevice, FSEventStreamEventId sinceWhen, CFTimeInterval latency, FSEventStreamCreateFlags flags)
{
  if (deviceToWatch > 0)
  {
    return _FSEventStreamCreate("FSEventStreamCreateRelativeToDevice", allocator, callback, &context->version, deviceToWatch, pathsToWatchRelativeToDevice, sinceWhen, (latency * 1000000.0), flags);
  }

  v9 = fsevent_default_log(allocator, callback);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    FSEventStreamCreateRelativeToDevice_cold_1();
  }

  return 0;
}

void __create_f2d_private_port_source_block_invoke_2(uint64_t a1)
{
  dispose_f2d_private_port(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

void dispose_f2d_private_port(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = f2d_unregister_rpc(result);
    if (v2)
    {
      v4 = fsevent_default_log(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        dispose_f2d_private_port_cold_1();
      }
    }

    else
    {
      v5 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
      if (v5)
      {
        v7 = v5;
        v8 = fsevent_default_log(v5, v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          dispose_f2d_private_port_cold_2(v7);
        }
      }
    }
  }
}

uint64_t f2d_unregister_rpc(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_special_reply_port();
      return v5;
    }

    if (*&msg[20] == 71)
    {
      v5 = 4294966988;
    }

    else if (*&msg[20] == 66106)
    {
      v5 = 4294966996;
      if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
      {
        v5 = *&msg[32];
        if (!*&msg[32])
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(msg);
  }

  return v5;
}

void _FSEventStreamDeallocate(char *ptr, uint64_t a2)
{
  if (ptr)
  {
    v2 = ptr;
    if (*ptr)
    {
      v3 = fsevent_default_log(ptr, a2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _FSEventStreamDeallocate_cold_1();
      }
    }

    else
    {
      if (ptr[188])
      {
        v5 = fsevent_default_log(ptr, a2);
        ptr = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
        if (ptr)
        {
          _FSEventStreamDeallocate_cold_2();
        }
      }

      if (*(v2 + 27) || *(v2 + 45))
      {
        v6 = fsevent_default_log(ptr, a2);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamDeallocate_cold_3();
        }
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        v8 = *(v2 + 10);
        if (v8)
        {
          v9 = *(v2 + 9);
          *(v2 + 9) = 0;
          if (v9 >= 1)
          {
            v10 = 0;
            v11 = v9 & 0x7FFFFFFF;
            do
            {
              v12 = *(*(v2 + 10) + 8 * v10);
              if (v12)
              {
                CFAllocatorDeallocate(v7, v12);
              }

              v13 = *(v2 + 49);
              if (v13)
              {
                v14 = *(v13 + 32 * v10 + 24);
                if (v14)
                {
                  free(v14);
                  v13 = *(v2 + 49);
                }

                v15 = v13 + 32 * v10;
                v16 = *(v15 + 16);
                if (v16)
                {
                  if (*(v15 + 8) >= 1)
                  {
                    v17 = 0;
                    do
                    {
                      close(*(*(v13 + 32 * v10 + 16) + 4 * v17++));
                      v13 = *(v2 + 49);
                      v18 = v13 + 32 * v10;
                    }

                    while (v17 < *(v18 + 8));
                    v16 = *(v18 + 16);
                  }

                  free(v16);
                  v13 = *(v2 + 49);
                }

                close(*(v13 + 32 * v10 + 4));
              }

              ++v10;
            }

            while (v10 != v11);
            v8 = *(v2 + 10);
          }

          CFAllocatorDeallocate(v7, v8);
          CFAllocatorDeallocate(v7, *(v2 + 11));
          v19 = *(v2 + 49);
          if (v19)
          {
            CFAllocatorDeallocate(v7, v19);
          }

          v20 = *(v2 + 50);
          if (v20)
          {
            CFAllocatorDeallocate(v7, v20);
          }
        }

        for (i = 104; i != 168; i += 8)
        {
          v22 = *&v2[i];
          if (v22)
          {
            free(v22);
            *&v2[i] = 0;
          }
        }

        *(v2 + 12) = 0;
        v23 = *(v2 + 44);
        if (v23)
        {
          dispatch_release(v23);
        }

        v24 = *(v2 + 6);
        if (v24)
        {
          v24(*(v2 + 4));
        }

        *(v2 + 56) = 0;
        *(v2 + 26) = 0u;
        *(v2 + 27) = 0u;
        *(v2 + 24) = 0u;
        *(v2 + 25) = 0u;
        *(v2 + 22) = 0u;
        *(v2 + 23) = 0u;
        *(v2 + 20) = 0u;
        *(v2 + 21) = 0u;
        *(v2 + 18) = 0u;
        *(v2 + 19) = 0u;
        *(v2 + 16) = 0u;
        *(v2 + 17) = 0u;
        *(v2 + 14) = 0u;
        *(v2 + 15) = 0u;
        *(v2 + 12) = 0u;
        *(v2 + 13) = 0u;
        *(v2 + 10) = 0u;
        *(v2 + 11) = 0u;
        *(v2 + 8) = 0u;
        *(v2 + 9) = 0u;
        *(v2 + 6) = 0u;
        *(v2 + 7) = 0u;
        *(v2 + 4) = 0u;
        *(v2 + 5) = 0u;
        *(v2 + 2) = 0u;
        *(v2 + 3) = 0u;
        *v2 = 0u;
        *(v2 + 1) = 0u;
        CFAllocatorDeallocate(v7, v2);
        CFRelease(v7);
      }
    }
  }

  else
  {
    v4 = fsevent_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamDeallocate_cold_4();
    }
  }
}

id LaunchServices::DatabaseContext::getLog(LaunchServices::DatabaseContext *this)
{
  if (LaunchServices::DatabaseContext::getLog(void)::once != -1)
  {
    LaunchServices::DatabaseContext::getLog();
  }

  v2 = LaunchServices::DatabaseContext::getLog(void)::result;

  return v2;
}

uint64_t _LSDatabaseContextStartAccessing(const unsigned int *a1, uint64_t a2, void *a3)
{
  v5 = uidPointerToDomain(a1);
  started = _LSDatabaseContextStartAccessingWithDomain(v5, a2, a3);

  return started;
}

id uidPointerToDomain(const unsigned int *a1)
{
  if (a1)
  {
    v1 = [[_LSDServiceDomain alloc] initWithUID:?];
  }

  else
  {
    v1 = +[_LSDServiceDomain defaultServiceDomain];
  }

  return v1;
}

uint64_t _LSDatabaseContextStartAccessingWithDomain(LaunchServices::DatabaseContext *a1, uint64_t a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  PerThreadStateReference = LaunchServices::DatabaseContext::getPerThreadStateReference(a1);
  v7 = LaunchServices::DatabaseContext::getLog(PerThreadStateReference);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    _LSDatabaseContextStartAccessingWithDomain_cold_1(PerThreadStateReference, a2, v7);
  }

  v9 = *(PerThreadStateReference + 4);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSDatabaseContextStartAccessingWithDomain(_LSDServiceDomain *const __strong _Nonnull, LSDatabaseContextAccessOptions, NSError *__autoreleasing * _Nullable)"}];
    [v33 handleFailureInFunction:v34 file:@"LSDatabaseContext.mm" lineNumber:164 description:@"Called +startAccessingReturningError: a ludicrous number of times without calling +stopAccessing. This is likely a bug in the Launch Services client."];

    v9 = *(PerThreadStateReference + 4);
  }

  if (v9 < 1)
  {
    v19 = [(_LSDServiceDomain *)a1 resolvedDomainUID];
    v20 = v19;
    v22 = [__LSDefaultsGetSharedInstance(v19 v21)];
    if (v20 && v22 != v20 && v22 && (v24 = _LSGetAuditTokenForSelf(v22, v23), !_LSCheckEntitlementForAuditToken(v24, @"com.apple.private.xpc.launchd.per-user-lookup")))
    {
      if (a3)
      {
        v35 = *MEMORY[0x1E696A278];
        v36 = @"This process is not privileged enough to access XPC services on another user account.";
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 13, v30, "_LSDatabaseContextStartAccessingWithDomain", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSDatabaseContext.mm", 187);
      }
    }

    else
    {
      if (LaunchServices::Database::Context::_get(PerThreadStateReference, a1, a2))
      {
        result = 1;
        *(PerThreadStateReference + 4) = 1;
        return result;
      }

      if (a3)
      {
        v27 = +[_LSDServiceDomain defaultServiceDomain];
        v28 = LaunchServices::Database::Context::_get(PerThreadStateReference, v27, 0);

        if (v28)
        {
          v29 = 0;
        }

        else
        {
          v29 = *(PerThreadStateReference + 3);
        }

        *a3 = v29;
      }

      if (*PerThreadStateReference && *(PerThreadStateReference + 16) == 1)
      {
        _LSContextDestroy(*PerThreadStateReference);
      }

      v31 = *(PerThreadStateReference + 1);
      *PerThreadStateReference = 0;
      *(PerThreadStateReference + 1) = 0;

      *(PerThreadStateReference + 16) = 0;
      v32 = *(PerThreadStateReference + 3);
      *(PerThreadStateReference + 3) = 0;
    }

    return 0;
  }

  if ((a2 & 2) != 0)
  {
    if (a3)
    {
      v39 = *MEMORY[0x1E696A278];
      v40[0] = @"LSDatabaseContextAccessOptionAlwaysUpdate cannot be specified while the database is already being accessed.";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 16, v26, "_LSDatabaseContextStartAccessingWithDomain", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSDatabaseContext.mm", 171);
    }

    return 0;
  }

  v10 = [(_LSDServiceDomain *)a1 resolvedSessionKey];
  if (*PerThreadStateReference)
  {
    v11 = v10;
    SessionKey = _LSDatabaseGetSessionKey(**PerThreadStateReference);
    if ((v11 & 0x100000000) != 0)
    {
      v15 = HIDWORD(SessionKey) & 1;
    }

    else
    {
      LOBYTE(v15) = (SessionKey & 0x100000000) == 0 && v11 == SessionKey;
      if ((SessionKey & 0x100000000) == 0 && v11 != SessionKey)
      {
        v16 = [__LSDefaultsGetSharedInstance(SessionKey v13)];
        if (v16 != [__LSDefaultsGetSharedInstance(v16 v17)])
        {
          goto LABEL_18;
        }

LABEL_33:
        ++*(PerThreadStateReference + 4);
        return 1;
      }
    }

    if (v15)
    {
      goto LABEL_33;
    }
  }

LABEL_18:
  if (a3)
  {
    v37 = *MEMORY[0x1E696A278];
    v38 = @"LSDatabaseContext cannot take a user ID while the database is already being accessed.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 56, v18, "_LSDatabaseContextStartAccessingWithDomain", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSDatabaseContext.mm", 175);
  }

  return 0;
}

void *std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::push_back[abi:nn200100](void *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__emplace_back_slow_path<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v5 = *(a2 + 13);
    v4[1] = *(a2 + 8);
    *(v4 + 13) = v5;
    result = v4 + 3;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__emplace_back_slow_path<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier const&>(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v11[4] = a1;
  if (v6)
  {
    std::allocator<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::allocate_at_least[abi:nn200100](a1, v6);
  }

  v7 = 24 * v2;
  v11[0] = 0;
  v11[1] = v7;
  v11[3] = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 13) = *(a2 + 13);
  *(v7 + 8) = v8;
  v11[2] = v7 + 24;
  std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__swap_out_circular_buffer(a1, v11);
  v9 = a1[1];
  std::__split_buffer<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::~__split_buffer(v11);
  return v9;
}

void sub_18166F560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = v7[1];
      *(v8 + 13) = *(v7 + 13);
      v8[1] = v10;
      v7 += 3;
      v8 += 3;
    }

    while (v7 != v4);
    do
    {
      v11 = *v5;
      v5 += 3;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

void std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t _LSGetDMFPolicy(LaunchServices::DMFSupport *a1, NSString *a2)
{
  v2 = LaunchServices::DMFSupport::getCachedPolicy(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id LaunchServices::DMFSupport::getCachedPolicy(LaunchServices::DMFSupport *this, NSString *a2)
{
  v2 = this;
  v3 = LaunchServices::DMFSupport::getMonitor(1);
  if (v2)
  {
    os_unfair_lock_lock(&LaunchServices::DMFSupport::allPoliciesLock);
    v4 = [LaunchServices::DMFSupport::allPolicies objectForKeyedSubscript:v2];
    os_unfair_lock_unlock(&LaunchServices::DMFSupport::allPoliciesLock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id LaunchServices::DMFSupport::getMonitor(LaunchServices::DMFSupport *this)
{
  if (this)
  {
    if (LaunchServices::DMFSupport::getMonitor(BOOL)::once != -1)
    {
      LaunchServices::DMFSupport::getMonitor();
    }

    v1 = &LaunchServices::DMFSupport::getMonitor(BOOL)::cachingMonitor;
  }

  else
  {
    if (LaunchServices::DMFSupport::getMonitor(BOOL)::once != -1)
    {
      LaunchServices::DMFSupport::getMonitor();
    }

    v1 = &LaunchServices::DMFSupport::getMonitor(BOOL)::nonCachingMonitor;
  }

  v2 = *v1;

  return v2;
}

void LaunchServices::DMFSupport::getMonitor()
{
  dispatch_once(&LaunchServices::DMFSupport::getMonitor(BOOL)::once, &__block_literal_global_16);
}

{
  dispatch_once(&LaunchServices::DMFSupport::getMonitor(BOOL)::once, &__block_literal_global_21_0);
}

void ___ZN14LaunchServices10DMFSupportL10getMonitorEb_block_invoke(LaunchServices::DMFSupport *a1)
{
  v1 = [objc_alloc(LaunchServices::DMFSupport::getDMFApplicationPolicyMonitorClass(a1)) initWithPolicyChangeHandler:&__block_literal_global_18];
  v2 = LaunchServices::DMFSupport::getMonitor(BOOL)::cachingMonitor;
  LaunchServices::DMFSupport::getMonitor(BOOL)::cachingMonitor = v1;

  v3 = LaunchServices::DMFSupport::getMonitor(BOOL)::cachingMonitor;

  LaunchServices::DMFSupport::reloadAllPolicies(v3);
}

Class LaunchServices::DMFSupport::initDMFApplicationPolicyMonitor(LaunchServices::DMFSupport *this)
{
  if (!LaunchServices::DMFSupport::DeviceManagementLibrary(void)::frameworkLibrary)
  {
    LaunchServices::DMFSupport::DeviceManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 2);
  }

  result = objc_getClass("DMFApplicationPolicyMonitor");
  LaunchServices::DMFSupport::classDMFApplicationPolicyMonitor = result;
  LaunchServices::DMFSupport::getDMFApplicationPolicyMonitorClass = LaunchServices::DMFSupport::DMFApplicationPolicyMonitorFunction;
  return result;
}

void LaunchServices::DMFSupport::reloadAllPolicies(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v3 = +[_LSDServiceDomain defaultServiceDomain];
  v4 = LaunchServices::Database::Context::_get(&v17, v3, 0);

  if (v4)
  {
    StringForCFString = _LSDatabaseGetStringForCFString(*v4, @"Hidden", 0);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v22 = ___ZN14LaunchServices10DMFSupportL15getAllBundleIDsEv_block_invoke;
    v23 = &unk_1E6A1C0D8;
    v26 = StringForCFString;
    v25 = v4;
    v24 = v2;
    _LSEnumerateViableBundlesOfClass(v4, 2, &buf);
    v7 = v24;
  }

  else
  {
    v7 = LaunchServices::DMFSupport::getLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = +[_LSDServiceDomain defaultServiceDomain];
      v15 = LaunchServices::Database::Context::_get(&v17, v14, 0);

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v20;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v16;
      _os_log_error_impl(&dword_18162D000, v7, OS_LOG_TYPE_ERROR, "Failed to get database context: %{public}@", &buf, 0xCu);
    }
  }

  v8 = [v2 allObjects];
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v9 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v10 = v20;
  v20 = 0;

  v12 = LaunchServices::DMFSupport::getLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v8 count];
    LODWORD(buf) = 134283521;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_INFO, "reloading all DMF policies for %{private}zu identifiers", &buf, 0xCu);
  }

  [v1 requestPoliciesForBundleIdentifiers:v8 completionHandler:&__block_literal_global_25];
}

void ___ZN14LaunchServices10DMFSupportL15getAllBundleIDsEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 177) & 4) == 0)
  {
    v4 = *(a3 + 352);
    if (!v4 || v4 != *(a1 + 48))
    {
      [(_LSDatabase *)**(a1 + 40) store];
      v5 = _CSStringCopyCFString();
      if (v5)
      {
        [*(a1 + 32) addObject:v5];
      }
    }
  }
}

id LaunchServices::DMFSupport::getLog(LaunchServices::DMFSupport *this)
{
  if (LaunchServices::DMFSupport::getLog(void)::once != -1)
  {
    LaunchServices::DMFSupport::getLog();
  }

  v2 = LaunchServices::DMFSupport::getLog(void)::result;

  return v2;
}

void ___ZN14LaunchServices10DMFSupportL6getLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "dmfsupport");
  v1 = LaunchServices::DMFSupport::getLog(void)::result;
  LaunchServices::DMFSupport::getLog(void)::result = v0;
}

void ___ZN14LaunchServices10DMFSupportL17reloadAllPoliciesEP27DMFApplicationPolicyMonitor_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = LaunchServices::DMFSupport::getLog(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ___ZN14LaunchServices10DMFSupportL17reloadAllPoliciesEP27DMFApplicationPolicyMonitor_block_invoke_cold_1();
    }

    LaunchServices::DMFSupport::addKnownPoliciesToCache(v4, 1);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___ZN14LaunchServices10DMFSupportL17reloadAllPoliciesEP27DMFApplicationPolicyMonitor_block_invoke_cold_2();
    }
  }
}

void LaunchServices::DMFSupport::addKnownPoliciesToCache(void *a1, int a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v37 = a1;
  v3 = [v37 mutableCopy];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = ___ZN14LaunchServices10DMFSupportL23addKnownPoliciesToCacheEP12NSDictionaryIP8NSStringP8NSNumberEb_block_invoke;
  v41[3] = &unk_1E6A1C100;
  v4 = v3;
  v42 = v4;
  [v37 enumerateKeysAndObjectsUsingBlock:v41];
  v39 = v4;
  os_unfair_lock_lock(&LaunchServices::DMFSupport::allPoliciesLock);
  v5 = [LaunchServices::DMFSupport::allPolicies copy];
  v6 = v5;
  if (a2)
  {
    v7 = [v39 copy];
    v8 = LaunchServices::DMFSupport::allPolicies;
    LaunchServices::DMFSupport::allPolicies = v7;
  }

  else
  {
    v9 = [v5 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v8 = v11;

    [v8 addEntriesFromDictionary:v39];
    v12 = [v8 copy];
    v13 = LaunchServices::DMFSupport::allPolicies;
    LaunchServices::DMFSupport::allPolicies = v12;
  }

  os_unfair_lock_unlock(&LaunchServices::DMFSupport::allPoliciesLock);
  v14 = v6;
  v40 = v39;
  v38 = LaunchServices::DMFSupport::getNotificationCenter(0);
  if (v38)
  {
    v15 = [MEMORY[0x1E695DFA8] set];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = ___ZN14LaunchServices10DMFSupportL16postNotificationEP12NSDictionaryIP8NSStringP8NSNumberES7__block_invoke;
    v55[3] = &unk_1E6A1B008;
    v16 = v40;
    v56 = v16;
    v17 = v15;
    v57 = v17;
    [v14 enumerateKeysAndObjectsUsingBlock:v55];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v19)
    {
      v20 = *v52;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v51 + 1) + 8 * i);
          v23 = [v14 objectForKeyedSubscript:v22];
          v24 = v23 == 0;

          if (v24)
          {
            [v17 addObject:v22];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v19);
    }

    if ([v17 count])
    {
      v25 = [MEMORY[0x1E695DF70] array];
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v26 = +[_LSDServiceDomain defaultServiceDomain];
      v27 = LaunchServices::Database::Context::_get(&v47, v26, 0);

      if (v27)
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v29 = v17;
        v30 = [v29 countByEnumeratingWithState:&v43 objects:v58 count:16];
        if (v30)
        {
          v31 = *v44;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v44 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = [LSApplicationProxy applicationProxyForIdentifier:*(*(&v43 + 1) + 8 * j) withContext:v27];
              if (v33)
              {
                [v25 addObject:v33];
              }
            }

            v30 = [v29 countByEnumeratingWithState:&v43 objects:v58 count:16];
          }

          while (v30);
        }
      }

      v34 = LaunchServices::DMFSupport::getLog(v28);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        LaunchServices::DMFSupport::addKnownPoliciesToCache();
      }

      [v38 postNotificationName:@"com.apple.launchservices.private._LSDMFPolicyDidChangeNotification" object:v25];
      if (v47 && v49 == 1)
      {
        _LSContextDestroy(v47);
      }

      v35 = v48;
      v47 = 0;
      v48 = 0;

      v49 = 0;
      v36 = v50;
      v50 = 0;
    }

    else
    {
      v25 = LaunchServices::DMFSupport::getLog(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        LaunchServices::DMFSupport::addKnownPoliciesToCache();
      }
    }
  }

  else
  {
    v17 = LaunchServices::DMFSupport::getLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LaunchServices::DMFSupport::addKnownPoliciesToCache();
    }
  }
}

void ___ZN14LaunchServices10DMFSupportL23addKnownPoliciesToCacheEP12NSDictionaryIP8NSStringP8NSNumberEb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (![v5 integerValue])
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v6];
  }
}

id LaunchServices::DMFSupport::getNotificationCenter(LaunchServices::DMFSupport *this)
{
  v1 = this;
  os_unfair_lock_lock(&LaunchServices::DMFSupport::getNotificationCenter(BOOL)::lock);
  v2 = LaunchServices::DMFSupport::getNotificationCenter(BOOL)::center;
  if (LaunchServices::DMFSupport::getNotificationCenter(BOOL)::center)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (!v3)
  {
    v4 = LaunchServices::DMFSupport::getMonitor(1);
    v5 = objc_alloc_init(MEMORY[0x1E696AD88]);
    v6 = LaunchServices::DMFSupport::getNotificationCenter(BOOL)::center;
    LaunchServices::DMFSupport::getNotificationCenter(BOOL)::center = v5;

    v2 = LaunchServices::DMFSupport::getNotificationCenter(BOOL)::center;
  }

  v7 = v2;
  os_unfair_lock_unlock(&LaunchServices::DMFSupport::getNotificationCenter(BOOL)::lock);

  return v7;
}

id *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,LSRecord * {__weak}*>(int a1, id *location, id *a3, id *a4)
{
  v5 = location;
  if (location != a3)
  {
    do
    {
      WeakRetained = objc_loadWeakRetained(v5);
      objc_storeWeak(a4, WeakRetained);

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t LSDefaultAppCategoryMayBeChanged(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = LSGetDefaultAppCategoryInfoForCategory(a1);
  v3 = *(v2 + 3);
  if (!v3)
  {
    return 1;
  }

  v4 = LaunchServices::EligibilityCache::shared(v2);
  v21[0] = 0;
  v5 = LaunchServices::EligibilityCache::cachedAnswerForDomain(v4, v3, v21);
  v7 = v6;
  v8 = v21[0];
  v9 = v8;
  if (v7)
  {
    if (v5 == 2)
    {
      goto LABEL_12;
    }

    if (v5 == 4)
    {

      return 1;
    }

    v11 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v3;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v5;
      _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "uncommon answer for domain %d: %d", buf, 0xEu);
    }
  }

  else
  {
    v11 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LSDefaultAppCategoryMayBeChanged_cold_1();
    }
  }

LABEL_12:
  v12 = LSGetDefaultAppCategoryInfoForCategory(a1);
  if (v12[56])
  {
    return 0;
  }

  if ([__LSDefaultsGetSharedInstance(v12 v13)])
  {
    return _LSServer_HasPreferenceEverBeenSetForDefaultAppCategory(a1, v14);
  }

  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__31;
  v27 = __Block_byref_object_dispose__31;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__31;
  v21[4] = __Block_byref_object_dispose__31;
  v22 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZL48_LSHasPreferenceEverBeenSetForDefaultAppCategory20LSDefaultAppCategory_block_invoke;
  v20[3] = &unk_1E6A18DF0;
  v20[4] = v21;
  v15 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___ZL48_LSHasPreferenceEverBeenSetForDefaultAppCategory20LSDefaultAppCategory_block_invoke_2;
  v19[3] = &unk_1E6A1D130;
  v19[4] = buf;
  v19[5] = v21;
  [v15 getHasEverChangedPreferredAppForCategory:a1 completion:v19];

  v16 = *(v24 + 5);
  if (v16)
  {
    v10 = [v16 BOOLValue];
  }

  else
  {
    v17 = _LSDefaultLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LSDefaultAppCategoryMayBeChanged_cold_2();
    }

    v10 = 0;
  }

  _Block_object_dispose(v21, 8);

  _Block_object_dispose(buf, 8);
  return v10;
}

void sub_181670B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

char *LSGetDefaultAppCategoryInfoForCategory(uint64_t a1)
{
  if ((a1 - 11) <= 0xFFFFFFFFFFFFFFF5)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const struct LSDefaultAppCategoryInfo *LSGetDefaultAppCategoryInfoForCategory(LSDefaultAppCategory)"];
    [v3 handleFailureInFunction:v4 file:@"LSDefaultAppsCore.mm" lineNumber:412 description:{@"Category %llu is out of range", a1}];
  }

  return &LSDefaultAppCategoryInfos + 64 * a1 - 64;
}

uint64_t LaunchServices::EligibilityCache::shared(LaunchServices::EligibilityCache *this)
{
  if (LaunchServices::EligibilityCache::shared(void)::onceToken != -1)
  {
    LaunchServices::EligibilityCache::shared();
  }

  return LaunchServices::EligibilityCache::shared(void)::result;
}

unint64_t LaunchServices::EligibilityCache::cachedAnswerForDomain(uint64_t a1, unint64_t a2, void *a3)
{
  os_unfair_lock_lock(a1);
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = (a1 + 16);
  do
  {
    v10 = v7[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = v7[v12];
  }

  while (v7);
  if (v9 != v8 && v9[4] <= a2)
  {
    v22 = v9[5];
    v23 = v22 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_9:
    v26 = 0;
    refreshed = LaunchServices::EligibilityCache::refreshAnswerForDomain(a1, v6, a2, &v26);
    v14 = v26;
    v15 = v14;
    if (refreshed)
    {
      v16 = *v8;
      if (!*v8)
      {
        goto LABEL_18;
      }

      v17 = (a1 + 16);
      do
      {
        v18 = v16[4];
        v11 = v18 >= a2;
        v19 = v18 < a2;
        if (v11)
        {
          v17 = v16;
        }

        v16 = v16[v19];
      }

      while (v16);
      if (v17 == v8 || v17[4] > a2)
      {
LABEL_18:
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"std::optional<os_eligibility_answer_t> LaunchServices::EligibilityCache::cachedAnswerForDomain(os_eligibility_domain_t, NSError *__autoreleasing * _Nullable)"}];
        [v20 handleFailureInFunction:v21 file:@"LSEligibility.mm" lineNumber:231 description:{@"Didn't find domain %llu in domain cache after refreshing successfully", a2}];

        v17 = (a1 + 16);
      }

      v22 = v17[5];
      v23 = v22 & 0xFFFFFFFFFFFFFF00;
    }

    else if (a3)
    {
      v24 = v14;
      LOBYTE(v22) = 0;
      v23 = 0;
      *a3 = v15;
    }

    else
    {
      LOBYTE(v22) = 0;
      v23 = 0;
    }
  }

  os_unfair_lock_unlock(a1);
  return v23 | v22;
}

uint64_t _LSIsArrayWithValuesOfClass(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (a2)
  {
    a2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v6 count:1];
  }

  v4 = _LSIsArrayWithValuesOfClasses(v3, a2);

  return v4;
}

void ___ZL19_LSTryUniversalLinkP5NSURLP8NSStringP12NSDictionaryIS2_P11objc_objectEP15NSXPCConnectionU13block_pointerFvbE_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 16);

    v2();
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL19_LSTryUniversalLinkP5NSURLP8NSStringP12NSDictionaryIS2_P11objc_objectEP15NSXPCConnectionU13block_pointerFvbE_block_invoke_3;
    v3[3] = &unk_1E6A1C820;
    v4 = *(a1 + 32);
    _LSAsyncOpenContext(v3);
  }
}

void __enumeratePluginsMatchingQuery_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (v8)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = v5;
    if (!v7)
    {
      v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "enumeratePluginsMatchingQuery_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 325);
    }

    (*(*(a1 + 32) + 16))();
  }

  objc_autoreleasePoolPop(v6);
}

void __destroy_helper_block_ea8_96c48_ZTSNSt3__18optionalIU8__strongP12NSDictionaryEE(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
  }
}

uint64_t _LSShouldSetWeakBindingOnOpenByDefault()
{
  if (_os_feature_enabled_impl())
  {
    return _os_feature_enabled_impl() ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t getFileHandleForOpeningResourceIfNecessary(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v10;
  if (([v9 isFileURL] & 1) == 0)
  {

    goto LABEL_13;
  }

  v13 = objc_opt_class();
  v14 = [v11 objectForKey:@"FileProviderString"];
  v15 = v14;
  if (v13 && v14)
  {
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }
  }

  else if (v14)
  {
    goto LABEL_12;
  }

  v16 = objc_opt_class();
  v17 = [v12 objectForKey:@"FileProviderString"];
  v15 = v17;
  if (v16 && v17 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v15 = 0;
  }

LABEL_12:

  if (v15)
  {
LABEL_13:
    v18 = 0;
    if (a4)
    {
LABEL_14:
      v18 = v18;
      v19 = 0;
      *a4 = v18;
LABEL_18:
      v21 = 1;
      goto LABEL_19;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v20 = open([v9 fileSystemRepresentation], 0);
  if ((v20 & 0x80000000) == 0)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v20 closeOnDealloc:1];
    if (a4)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v23 = *MEMORY[0x1E696A798];
  v24 = *__error();
  v27 = *MEMORY[0x1E696A278];
  v28[0] = @"open(2) failed when opening resource to open";
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v19 = _LSMakeNSErrorImpl(v23, v24, v25, "getFileHandleForOpeningResourceIfNecessary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 1675);

  if (a5)
  {
    v26 = v19;
    v21 = 0;
    v18 = 0;
    *a5 = v19;
  }

  else
  {
    v21 = 0;
    v18 = 0;
  }

LABEL_19:

  return v21;
}

void std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<LSBinding>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<LSBinding>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<LSBinding>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<LSBinding>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
  }
}

void std::__allocator_destroy[abi:nn200100]<std::allocator<LSBinding>,LSBinding*,LSBinding*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v4 += 56;
    }

    while (v4 != a3);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<LSBinding>,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LSBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 32) = *(v6 + 32);
      v8 = *(v6 + 40);
      v9 = *(v6 + 48);
      *(a4 + 40) = v8;
      *(a4 + 48) = v9;
      v6 += 104;
      a4 += 56;
    }

    while (v6 != a3);
  }

  return a4;
}

uint64_t LaunchServices::BindingEvaluation::BindingEligibilityChecker::isDefaultAppCategoryBindingEligibile(uint64_t a1, id **a2, uint64_t a3, uint64_t a4)
{
  [(_LSDatabase *)**a2 store];
  v5 = _CSStringCopyCFString();
  v6 = [v5 isEqualToString:@"System"];

  if (v6)
  {
    return 1;
  }

  if (*(a3 + 56) == 1)
  {
    v9 = LaunchServices::EligibilityCache::shared(v7);
    v10 = *(a3 + 24);

    return LaunchServices::EligibilityCache::eligibleForDomainFailingClosed(v9, v10);
  }

  else
  {
    v11 = *a3;

    return LSDefaultAppCategoryMayBeChanged(v11);
  }
}

BOOL LaunchServices::BindingEvaluation::BindingEligibilityChecker::isBundleEligibleFromFlags(LaunchServices::EligibilityCache *a1, int a2, int a3, int a4)
{
  if ((a2 & 0x200000) == 0 && (a4 & 0xFFFFFFFD) != 0)
  {
    return 1;
  }

  if ((a3 & 0x20000) != 0)
  {
    v6 = LaunchServices::EligibilityCache::shared(a1);

    return LaunchServices::EligibilityCache::getEligibilityGatedBrowsersCanBind(v6);
  }

  else
  {
    if ((a3 & 0x40000) == 0)
    {
      return 1;
    }

    v5 = LaunchServices::EligibilityCache::shared(a1);

    return LaunchServices::EligibilityCache::getEligibilityGatedBrowserEngineEmbeddersCanBind(v5);
  }
}

id _LSOpenLog(uint64_t a1)
{
  if (_LSOpenLog_once != -1)
  {
    _LSOpenLog_cold_1();
  }

  v2 = _LSOpenLog_result;

  return v2;
}

void LaunchServices::BindingEvaluator::CreateWithURLScheme(LaunchServices::BindingEvaluator *this@<X0>, id *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = LaunchServices::BindingEvaluator::BindingEvaluator(a2);
  v5 = _LSBindingLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v8 = this;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "BindingEvaluator::CreateWithURLScheme(%{private}@)", buf, 0xCu);
  }

  LaunchServices::BindingEvaluation::logToFile(@"Creating binding evaluator for URL scheme %@", v6, this);
  objc_storeStrong(a2 + 1, this);
}

char *LSDefaultAppCategoryGetInfoForSubordinateClaim(int a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  while (1)
  {
    v5 = &LSDefaultAppCategoryInfos + v4;
    v6 = *(&LSDefaultAppCategoryInfos + v4 + 48);
    if (v6)
    {
      break;
    }

LABEL_8:
    v4 += 64;
    if (v4 == 640)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  v7 = *(v5 + 5) + 8;
  while ((*(v7 + 8) & 1) != 0 || *(v7 - 8) != a1 || strcmp(*v7, [v3 UTF8String]))
  {
    v7 += 24;
    if (!--v6)
    {
      goto LABEL_8;
    }
  }

LABEL_10:

  return v5;
}

void LaunchServices::BindingEvaluator::evaluateBindings(LaunchServices::BindingEvaluator *a1@<X0>, LSContext *a2@<X1>, void **a3@<X2>, NSString *a4@<X3>, uint64_t *a5@<X8>)
{
  v23[13] = *MEMORY[0x1E69E9840];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  LaunchServices::BindingEvaluation::State::State(&v21, a2, a1);
  if (a3)
  {
    v9 = LaunchServices::BindingEvaluation::State::getTypeRecord(&v21);
    v10 = *a3;
    *a3 = v9;
  }

  LaunchServices::BindingEvaluation::runEvaluator(&v21, a4, &v18);
  if (v18 != v19)
  {
    std::vector<LSBinding>::reserve(a5, 0x4EC4EC4EC4EC4EC5 * ((v19 - v18) >> 3));
    std::vector<LSBinding>::__insert_with_size[abi:nn200100]<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>>(a5, *a5, v18, v19, 0x4EC4EC4EC4EC4EC5 * ((v19 - v18) >> 3));
    if (((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(a1 + 110) & 2) != 0) && v19 != v18)
    {
      v11 = 0;
      if ((0x4EC4EC4EC4EC4EC5 * ((v19 - v18) >> 3)) <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0x4EC4EC4EC4EC4EC5 * ((v19 - v18) >> 3);
      }

      v13 = 40;
      do
      {
        v14 = LaunchServices::BindingEvaluation::getReasonFromBinding(&v18[v11]);
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &stru_1EEF65710;
        }

        objc_storeStrong((*a5 + v13), v16);

        v11 += 26;
        v13 += 56;
        --v12;
      }

      while (v12);
    }
  }

  v20 = &v18;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v20);

  v18 = v23;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v18);
  LaunchServices::BindingEvaluator::~BindingEvaluator(&v22, v17);
}

void sub_1816720DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(v8, va);
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](va1);
  LaunchServices::BindingEvaluation::State::~State(va2);
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](va2);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<LSBinding>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::allocator<LSBinding>::allocate_at_least[abi:nn200100](result, a2);
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_181672204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<LSBinding>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<LSBinding>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSBinding>,LSBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *(v4 + 16);
      *a4 = *v4;
      *(a4 + 16) = v5;
      v6 = *(v4 + 32);
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(a4 + 32) = v6;
      *(a4 + 48) = *(v4 + 48);
      v4 += 56;
      a4 += 56;
    }

    while (v4 != a3);
  }

  std::__allocator_destroy[abi:nn200100]<std::allocator<LSBinding>,LSBinding*,LSBinding*>(a1, a2, a3);
}

uint64_t std::vector<LSBinding>::__insert_with_size[abi:nn200100]<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        std::vector<LSBinding>::__move_range(a1, a2, a1[1], a2 + 56 * a5);
        v19 = a3 + 104 * a5;
        v18 = a3;
      }

      else
      {
        v17 = a3 - 0x6DB6DB6DB6DB6DA8 * ((v10 - a2) >> 3);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<LSBinding>,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LSBinding*>(a1, v17, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<LSBinding>::__move_range(a1, v5, v10, v5 + 56 * a5);
        v18 = a3;
        v19 = v17;
      }

      std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LSBinding *>(&v21, v18, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
    if (v12 > 0x492492492492492)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v13 = a2 - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v12;
    }

    v25 = a1;
    if (v15)
    {
      std::allocator<LSBinding>::allocate_at_least[abi:nn200100](a1, v15);
    }

    v21 = 0;
    v22 = 8 * (v13 >> 3);
    v23 = v22;
    v24 = 0;
    std::__split_buffer<LSBinding>::__construct_at_end_with_size<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>>(&v21, a3, a5);
    v5 = std::vector<LSBinding>::__swap_out_circular_buffer(a1, &v21, v5);
    std::__split_buffer<LSBinding>::~__split_buffer(&v21);
  }

  return v5;
}

void std::vector<LSBinding>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {

      v3 -= 56;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void _LSServer_PerformOpenOperation(void *a1, void *a2, void *a3, char a4, __int128 *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v44 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a6;
  v43 = a7;
  v42 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v41 = v21;
  v36 = MEMORY[0x1865D71B0]();
  MEMORY[0x1865D7C40]();
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = ___LSServer_PerformOpenOperation_block_invoke;
  v60[3] = &unk_1E6A190B8;
  v39 = v36;
  v61 = v39;
  v40 = MEMORY[0x1865D71B0](v60);

  v58 = 0u;
  v59 = 0u;
  v24 = v20;
  if (a5)
  {
    v25 = a5[1];
    v58 = *a5;
    v59 = v25;
    v27 = v43;
    v26 = v44;
    v28 = v42;
  }

  else
  {
    v27 = v43;
    v26 = v44;
    v28 = v42;
    if (v22)
    {
      objc_msgSend_auditToken(v22);
    }
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = ___LSServer_PerformOpenOperation_block_invoke_81;
  v45[3] = &unk_1E6A1D420;
  v37 = v19;
  v46 = v37;
  v38 = v26;
  v47 = v38;
  v29 = v28;
  v48 = v29;
  v30 = v22;
  v49 = v30;
  v57 = a4;
  v55 = v58;
  v56 = v59;
  v31 = v40;
  v54 = v31;
  v32 = v18;
  v50 = v32;
  v33 = v24;
  v51 = v33;
  v34 = v27;
  v52 = v34;
  v35 = v41;
  v53 = v35;
  _LSAsyncOpenContext(v45);
}

void _LSAsyncOpenContext(void *a1)
{
  v1 = a1;
  if (_LSOpenOperationGetQueue(void)::once != -1)
  {
    _LSAsyncOpenContext();
  }

  v2 = _LSOpenOperationGetQueue(void)::result;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL19_LSAsyncOpenContextU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1E6A1C820;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void ___ZL19_LSTryUniversalLinkP5NSURLP8NSStringP12NSDictionaryIS2_P11objc_objectEP15NSXPCConnectionU13block_pointerFvbE_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LSAppLinkOpenState);
  if (!v2)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSTryUniversalLink(NSURL *__strong, NSString *__strong, NSDictionary<NSString *, id> *__strong, NSXPCConnection *__strong, void (^__strong)(BOOL))_block_invoke"}];
    [v8 handleFailureInFunction:v9 file:@"LSOpenOperation.mm" lineNumber:1179 description:@"failed to create universal link state object"];
  }

  [(_LSAppLinkOpenState *)v2 setURL:*(a1 + 32)];
  [(_LSAppLinkOpenState *)v2 setXPCConnection:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [v3 mutableCopy];
    [v4 setObject:0 forKeyedSubscript:@"LSBlockUntilComplete"];
    [v4 setObject:0 forKeyedSubscript:@"ReferrerURL"];
    [v4 setObject:0 forKeyedSubscript:@"LSTargetBSServiceConnectionEndpointKey"];
    if (getUISOpenApplicationOptionClickAttribution())
    {
      [v4 setObject:0 forKeyedSubscript:getUISOpenApplicationOptionClickAttribution()];
    }

    v5 = objc_alloc_init(_LSOpenConfiguration);
    [(_LSOpenConfiguration *)v5 setFrontBoardOptions:v4];
    v6 = [*(a1 + 48) objectForKeyedSubscript:@"ReferrerURL"];
    [(_LSOpenConfiguration *)v5 setReferrerURL:v6];

    v7 = [*(a1 + 48) objectForKeyedSubscript:@"LSTargetBSServiceConnectionEndpointKey"];
    [(_LSOpenConfiguration *)v5 setTargetConnectionEndpoint:v7];

    [(_LSAppLinkOpenState *)v2 setOpenConfiguration:v5];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL19_LSTryUniversalLinkP5NSURLP8NSStringP12NSDictionaryIS2_P11objc_objectEP15NSXPCConnectionU13block_pointerFvbE_block_invoke_2;
  v10[3] = &unk_1E6A190B8;
  v11 = *(a1 + 56);
  [LSAppLink _openWithAppLink:0 state:v2 completionHandler:v10];
}

id openOptionsModifiedForOneTapOpen(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKey:@"LSOneTapOpenBehaviorKey"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v4 objectForKey:@"FileProviderString"];

    if (v8)
    {
      v10 = _LSOpenLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        openOptionsModifiedForOneTapOpen_cold_1();
      }
    }

    [v3 fileSystemRepresentation];
    v11 = sandbox_extension_issue_file();
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      [v5 setObject:v12 forKeyedSubscript:@"LSFPSandboxExtensionKey"];
    }

    else
    {
      v14 = __error();
      v12 = _LSOpenLog(v14);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        openOptionsModifiedForOneTapOpen_cold_2();
      }
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = v4;
  }

  v15 = v13;

  return v15;
}

void ___ZL19_LSAsyncOpenContextU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = _LSServer_DatabaseExecutionContext();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL19_LSAsyncOpenContextU13block_pointerFvvE_block_invoke_2;
  v3[3] = &unk_1E6A1A660;
  v4 = *(a1 + 32);
  [(LSDBExecutionContext *)v2 syncRead:v3];
}

void _LSOpenOperationPerformContinueAfterAsyncGather(void *a1, void *a2, void *a3, int a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v246 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v211 = a2;
  v219 = a3;
  v212 = a5;
  v214 = a6;
  v217 = a7;
  v213 = a8;
  v218 = a9;
  v215 = v16;
  v216 = a10;
  _LSAssertRunningInServer("void _LSOpenOperationPerformContinueAfterAsyncGather(NSURL *__strong, NSFileHandle *__strong, NSString *__strong, BOOL, NSString *__strong, NSDictionary<NSString *,id> *__strong, NSDictionary<NSString *,id> *__strong, __strong id<LSOpenResourceOperationDelegate>, NSXPCConnection *__strong, __strong _LSDOpenServiceCompletionHandler)", v17);
  if (!v16)
  {
    v209 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_184;
  }

  if ([v16 isFileURL])
  {
    v202 = [LSApplicationProxy applicationProxyForIdentifier:v219];
    v18 = objc_opt_class();
    v19 = [v217 objectForKey:@"FileProviderString"];
    v20 = v19;
    if (v18 && v19)
    {
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_36;
      }
    }

    else if (v19)
    {
      goto LABEL_36;
    }

    v29 = objc_opt_class();
    v30 = [v214 objectForKey:@"FileProviderString"];
    v31 = v30;
    if (v29 && v30 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v20 = 0;
    }

    else
    {
      v20 = v31;
    }

LABEL_36:
    v48 = objc_opt_class();
    v49 = [v217 objectForKey:@"RequireOpenInPlace"];
    v50 = v49;
    if (v48 && v49 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v50 = 0;
    }

    v51 = [v50 BOOLValue];

    if (v51)
    {
      v209 = 1;
    }

    else
    {
      v52 = objc_opt_class();
      v53 = [v214 objectForKey:@"RequireOpenInPlace"];
      v54 = v53;
      if (v52 && v53 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        v54 = 0;
      }

      v209 = [v54 BOOLValue];
    }

    v55 = objc_opt_class();
    v56 = [v217 objectForKey:@"LSMoveDocumentOnOpen"];
    v57 = v56;
    if (v55 && v56 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v57 = 0;
    }

    v58 = [v57 BOOLValue];

    if (v58)
    {
      goto LABEL_57;
    }

    v59 = objc_opt_class();
    v60 = [v214 objectForKey:@"LSMoveDocumentOnOpen"];
    v61 = v60;
    if (v59 && v60 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v61 = 0;
    }

    v62 = [v61 BOOLValue];

    if (v62)
    {
LABEL_57:
      v63 = [v218 _xpcConnection];
      v199 = _LSCheckEntitlementForXPCConnection(v63, @"com.apple.launchservices.MoveDocumentOnOpen") != 0;

      if (v20)
      {
LABEL_58:
        v64 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      v199 = 0;
      if (v20)
      {
        goto LABEL_58;
      }
    }

    v65 = [v202 dataContainerURL];
    if (v65)
    {
      v66 = [v16 absoluteString];
      v67 = [v65 absoluteString];
      [v66 rangeOfString:v67 options:8];
      v69 = v68;

      v64 = v69 == 0;
    }

    else
    {
      v64 = 1;
    }

LABEL_64:
    if (v209)
    {
      v70 = [v202 supportsOpenInPlace];
      if ((v70 & 1) == 0)
      {
        v96 = _LSDefaultLog(v70);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v16;
          *&buf[12] = 2112;
          *&buf[14] = v219;
          _os_log_impl(&dword_18162D000, v96, OS_LOG_TYPE_DEFAULT, "Document %@ requires open-in-place but target (%@) does not support it.", buf, 0x16u);
        }

        v97 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 45, 0, "_LSOpenOperationPerformContinueAfterAsyncGather", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 444);
        v216[2](v216, 0, v97);

        goto LABEL_182;
      }
    }

    v198 = v64;
    v71 = v218;
    v72 = v202;
    v73 = v16;
    if (v71)
    {
      if (v72)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v188 = [MEMORY[0x1E696AAA8] currentHandler];
      v189 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSCheckIfXPCConnectionCanReadDocument(NSXPCConnection *__strong, LSApplicationProxy *__strong, NSURL *__strong, NSError *__autoreleasing *)"}];
      [v188 handleFailureInFunction:v189 file:@"LSOpenOperation.mm" lineNumber:1245 description:{@"Invalid parameter not satisfying: %@", @"clientXPCConnection != nil"}];

      if (v72)
      {
        goto LABEL_68;
      }
    }

    v190 = [MEMORY[0x1E696AAA8] currentHandler];
    v191 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSCheckIfXPCConnectionCanReadDocument(NSXPCConnection *__strong, LSApplicationProxy *__strong, NSURL *__strong, NSError *__autoreleasing *)"}];
    [v190 handleFailureInFunction:v191 file:@"LSOpenOperation.mm" lineNumber:1246 description:{@"Invalid parameter not satisfying: %@", @"targetApp != nil"}];

LABEL_68:
    v74 = objc_autoreleasePoolPush();
    memset(buf, 0, 32);
    if (v71)
    {
      objc_msgSend_auditToken(v71);
    }

    if ([FSNode canReadURL:v73 fromSandboxWithAuditToken:buf]|| (v75 = _CFURLCopyPromiseURLOfLogicalURL(), (v76 = v75) != 0) && (v77 = [FSNode canReadURL:v75 fromSandboxWithAuditToken:buf], v76, v77))
    {
      v78 = 0;
      v79 = 1;
    }

    else
    {
      v80 = _LSDefaultLog(v75);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *v242 = 67109635;
        *&v242[4] = [v71 processIdentifier];
        *&v242[8] = 2113;
        *&v242[10] = v73;
        *&v242[18] = 2113;
        *&v242[20] = v72;
        _os_log_impl(&dword_18162D000, v80, OS_LOG_TYPE_DEFAULT, "pid %i does not have read access to document %{private}@ in order to open it in target %{private}@.", v242, 0x1Cu);
      }

      v78 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 1, 0, "_LSCheckIfXPCConnectionCanReadDocument", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1274);
      v79 = 0;
    }

    objc_autoreleasePoolPop(v74);
    if (v79)
    {
      v81 = 0;
    }

    else
    {
      v82 = v78;
      v81 = v78;
    }

    v83 = v81;
    v84 = v83;
    if ((v79 & 1) == 0)
    {
      v216[2](v216, 0, v83);

      goto LABEL_182;
    }

    v85 = v72 == 0;

    v86 = v72;
    v200 = v73;
    if (v85)
    {
      v192 = [MEMORY[0x1E696AAA8] currentHandler];
      v193 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSCheckIfApplicationCanOpenUSBOrSMBDocument(LSApplicationProxy *__strong, NSURL *__strong, NSError *__autoreleasing *)"}];
      [v192 handleFailureInFunction:v193 file:@"LSOpenOperation.mm" lineNumber:1291 description:{@"Invalid parameter not satisfying: %@", @"targetApp != nil"}];
    }

    v87 = objc_autoreleasePoolPush();
    *v236 = 0;
    v88 = *MEMORY[0x1E695DDA8];
    v89 = [v200 getResourceValue:v236 forKey:*MEMORY[0x1E695DDA8] error:0];
    v90 = *v236;
    if ((v89 & 1) == 0)
    {
      v91 = _CFURLCopyPromiseURLOfLogicalURL();
      v231 = 0;
      [v91 getResourceValue:&v231 forKey:v88 error:0];
      v92 = v231;

      v90 = v92;
    }

    if (v90 && (v93 = [v90 BOOLValue], (v93 & 1) == 0))
    {
      v98 = _LSDefaultLog(v93);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        *&buf[4] = v200;
        *&buf[12] = 2113;
        *&buf[14] = v86;
        _os_log_impl(&dword_18162D000, v98, OS_LOG_TYPE_INFO, "Document %{private}@ is on USB/SMB. Checking if application %{private}@ can open such documents.", buf, 0x16u);
      }

      v99 = [v86 platform];
      v100 = [v99 unsignedIntegerValue];

      v101 = [v86 sdkVersion];
      v102 = v101;
      v103 = @"1.0";
      if (v101)
      {
        v103 = v101;
      }

      v196 = v103;

      if ((v100 - 11) >= 2)
      {
        v117 = +[LSApplicationWorkspace defaultWorkspace];
        v95 = [v117 isVersion:v196 greaterThanOrEqualToVersion:@"13.0"];

        if (v95)
        {
          v119 = _LSDefaultLog(v118);
          if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
          {
            *buf = 138478083;
            *&buf[4] = v86;
            *&buf[12] = 2114;
            *&buf[14] = v196;
            _os_log_impl(&dword_18162D000, v119, OS_LOG_TYPE_INFO, "Application %{private}@ was linked against SDK %{public}@ and so can open documents on USB/SMB.", buf, 0x16u);
          }

          v94 = 0;
        }

        else
        {
          v120 = _LSDefaultLog(v118);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            *&buf[4] = v86;
            *&buf[12] = 2114;
            *&buf[14] = v196;
            _os_log_impl(&dword_18162D000, v120, OS_LOG_TYPE_DEFAULT, "Application %{private}@ was linked against SDK %{public}@ and so CANNOT open documents on USB/SMB.", buf, 0x16u);
          }

          v121 = *MEMORY[0x1E696A278];
          *v242 = @"SDKVersion";
          *&v242[8] = v121;
          *buf = v196;
          *&buf[8] = @"SDK too old to support SMB/USB documents (iOS 13.0 required.)";
          v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v242 count:2];
          v94 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 45, v119, "_LSCheckIfApplicationCanOpenUSBOrSMBDocument", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1317);
        }
      }

      else
      {
        v94 = 0;
        LOBYTE(v95) = 1;
      }
    }

    else
    {
      v94 = 0;
      LOBYTE(v95) = 1;
    }

    objc_autoreleasePoolPop(v87);
    if (v95)
    {
      v122 = 0;
    }

    else
    {
      v123 = v94;
      v122 = v94;
    }

    v124 = v122;
    v125 = v124;
    if ((v95 & 1) == 0)
    {
      v216[2](v216, 0, v124);

      goto LABEL_182;
    }

    v126 = objc_opt_class();
    v127 = [v217 objectForKey:@"LSSetHandlerOnDocumentOpenKey"];
    v128 = v127;
    if (v126 && v127)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

LABEL_135:
        v128 = 0;
        v129 = _LSShouldSetWeakBindingOnOpenByDefault();
        goto LABEL_136;
      }
    }

    else if (!v127)
    {
      goto LABEL_135;
    }

    v129 = [v128 BOOLValue];
LABEL_136:
    if (!v129 || !v86 || !a4 || ![v200 isFileURL])
    {
      goto LABEL_174;
    }

    v205 = v86;
    v130 = v200;
    v197 = v128;
    v131 = [FSNode alloc];
    v235 = 0;
    v132 = [(FSNode *)v131 initWithURL:v130 flags:0 error:&v235];
    v133 = v235;
    v134 = v133;
    if (!v132)
    {
      v145 = _LSDefaultLog(v133);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        *&buf[4] = v130;
        *&buf[12] = 2114;
        *&buf[14] = v134;
        _os_log_impl(&dword_18162D000, v145, OS_LOG_TYPE_DEFAULT, "Could not create node for resource URL %{private}@ for default handler update: %{public}@", buf, 0x16u);
      }

      goto LABEL_173;
    }

    v234 = 0;
    v231 = 0;
    v232 = 0;
    v233 = 0;
    v135 = +[_LSDServiceDomain defaultServiceDomain];
    v136 = LaunchServices::Database::Context::_get(&v231, v135, 0);

    if (!v136)
    {
      v146 = _LSDefaultLog(v137);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        v147 = +[_LSDServiceDomain defaultServiceDomain];
        v148 = LaunchServices::Database::Context::_get(&v231, v147, 0);

        if (v148)
        {
          v149 = 0;
        }

        else
        {
          v149 = v234;
        }

        *buf = 138543362;
        *&buf[4] = v149;
        _os_log_impl(&dword_18162D000, v146, OS_LOG_TYPE_DEFAULT, "Could not create database context for default handler update: %{public}@", buf, 0xCu);
      }

      v195 = v134;
      goto LABEL_169;
    }

    LaunchServices::TypeEvaluator::TypeEvaluator(v230, v132);
    v194 = LaunchServices::TypeEvaluator::getTypeIdentifier(v230, &v136->db, 0);
    if (!v194)
    {
      v140 = _LSDefaultLog(0);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        *&buf[4] = v132;
        *&buf[12] = 2114;
        *&buf[14] = v134;
        _os_log_impl(&dword_18162D000, v140, OS_LOG_TYPE_DEFAULT, "Could not get UTI for node %{private}@ for default handler update: %{public}@", buf, 0x16u);
      }

      v195 = v134;
      goto LABEL_165;
    }

    v138 = [FSNode alloc];
    v139 = [v205 bundleURL];
    v229 = v134;
    v140 = [(FSNode *)v138 initWithURL:v139 flags:0 error:&v229];
    v195 = v229;

    if (!v140)
    {
      v150 = _LSDefaultLog(v141);
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        *&buf[4] = v205;
        *&buf[12] = 2114;
        *&buf[14] = v195;
        _os_log_impl(&dword_18162D000, v150, OS_LOG_TYPE_DEFAULT, "Could not get node for app %{private}@: %{public}@", buf, 0x16u);
      }

      v140 = 0;
      goto LABEL_165;
    }

    v228 = 0;
    v142 = v205;
    v143 = _LSBundleFindWithNode(v136, v140, &v228, 0);
    if (v143)
    {
      v144 = _LSDefaultLog(v143);
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        *&buf[4] = v205;
        _os_log_impl(&dword_18162D000, v144, OS_LOG_TYPE_DEFAULT, "Could not get unit for app %{private}@", buf, 0xCu);
      }

      goto LABEL_165;
    }

    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = 0;
    *&buf[24] = 0u;
    v245 = 0u;
    if (!_LSGetBindingForNodeOrSchemeOrUTI(v136, 0, 0, v194, v228, 14, 0, 12320, buf) && *&buf[24])
    {
      v180 = _LSClaimFlagsAreWildcard(*(*&buf[24] + 8));
      if (v180)
      {
        v181 = _LSDefaultLog(v180);
        if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
        {
          v182 = [v205 bundleIdentifier];
          *v242 = 138478083;
          *&v242[4] = v182;
          *&v242[12] = 2113;
          *&v242[14] = v132;
          _os_log_impl(&dword_18162D000, v181, OS_LOG_TYPE_INFO, "App %{private}@ claims %{private}@ via a wildcard UTI, so won't set default handler.", v242, 0x16u);
        }

LABEL_246:

LABEL_164:
LABEL_165:

LABEL_169:
        if (v231 && v233 == 1)
        {
          _LSContextDestroy(v231);
        }

        v153 = v232;
        v231 = 0;
        v232 = 0;

        v233 = 0;
        v154 = v234;
        v234 = 0;

        v134 = v195;
LABEL_173:

        v128 = v197;
LABEL_174:

        if (!v198)
        {
          v158 = _LSDefaultLog(v155);
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v200;
            *&buf[12] = 2112;
            *&buf[14] = v219;
            _os_log_impl(&dword_18162D000, v158, OS_LOG_TYPE_DEFAULT, "Not copying %@ to Inbox for %@", buf, 0x16u);
          }

          v22 = v200;
          v23 = 0;
          goto LABEL_183;
        }

        v156 = _LSGetInboxURLForBundleIdentifier(v219);
        if (v156)
        {
          v221[0] = MEMORY[0x1E69E9820];
          v221[1] = 3221225472;
          v221[2] = ___ZL47_LSOpenOperationPerformContinueAfterAsyncGatherP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke;
          v221[3] = &unk_1E6A1D4E8;
          v222 = v213;
          v223 = v71;
          v224 = v217;
          v225 = v214;
          v226 = v219;
          v227 = v216;
          _LSCopyOrMoveFileResource(v200, v211, v212, v156, v199, v221);

          v157 = v222;
        }

        else
        {
          v157 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 45, 0, "_LSOpenOperationPerformContinueAfterAsyncGather", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 486);
          v216[2](v216, 0, v157);
        }

LABEL_182:
        v22 = 0;
        v23 = 1;
LABEL_183:

        LOBYTE(v16) = 0;
        v21 = 0;
        goto LABEL_184;
      }

      if (*&buf[24] && !*(*&buf[24] + 12))
      {
        v181 = _LSDefaultLog(v180);
        if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
        {
          *v242 = 138478083;
          *&v242[4] = v130;
          *&v242[12] = 2113;
          *&v242[14] = v195;
          _os_log_impl(&dword_18162D000, v181, OS_LOG_TYPE_INFO, "App %{private}@'s claim for resource URL %{private}@ has a handler rank of None. Will skip weak default handler.", v242, 0x16u);
        }

        goto LABEL_246;
      }
    }

    *v242 = 0;
    *&v242[8] = 0;
    *&v242[16] = 0;
    *&v242[24] = 0u;
    v243 = 0u;
    if (!_LSGetBindingForNodeOrSchemeOrUTI(v136, 0, 0, v194, 0, 14, 0, 12320, v242) && (db = v136->db, [v205 bundleIdentifier], v184 = objc_claimAutoreleasedReturnValue(), StringForCFString = _LSDatabaseGetStringForCFString(db, v184, 0), v184, v142 = v205, *&v242[8]) && *(*&v242[8] + 12) == StringForCFString)
    {
      v151 = _LSDefaultLog(v186);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        v187 = [v205 bundleIdentifier];
        _LSOpenOperationPerformContinueAfterAsyncGather(v132, v187, v236, v151);
      }
    }

    else
    {
      MEMORY[0x1865D7C40]();
      v151 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:?];
      v152 = [v142 bundleIdentifier];
      memset(v241, 0, sizeof(v241));
      *v236 = MEMORY[0x1E69E9820];
      v237 = 3221225472;
      v238 = ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke_161;
      v239 = &unk_1E6A1D510;
      v240 = v142;
      [v151 setHandler:v152 version:v241 roles:0xFFFFFFFFLL forContentType:v194 completionHandler:v236];
    }

    goto LABEL_164;
  }

  v24 = [v16 scheme];
  v25 = [v24 caseInsensitiveCompare:@"search"];
  v21 = v25 == 0;

  if (!v25)
  {
    v32 = objc_opt_class();
    v33 = [v217 objectForKey:@"LSOpenSensitiveURLOption"];
    v34 = v33;
    if (v32 && v33 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v34 = 0;
    }

    v35 = [v34 BOOLValue];

    if (v35)
    {
      v37 = [v218 _xpcConnection];
      v38 = _LSCheckOpenSensitiveURLForXPCConnection(v37, [v16 absoluteString]);

      if (v38)
      {
        v39 = [v16 host];

        v22 = v16;
        v209 = 0;
        v20 = 0;
        LOBYTE(v16) = 0;
        v23 = 0;
        v21 = 1;
        v219 = v39;
        goto LABEL_184;
      }
    }

    v40 = _LSDefaultLog(v36);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v40, OS_LOG_TYPE_DEFAULT, "The 'search:' scheme requires the com.apple.springboard.opensensitiveurl entitlement", buf, 2u);
    }

    v41 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 1, 0, "_LSOpenOperationPerformContinueAfterAsyncGather", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 537);
    v216[2](v216, 0, v41);

    v22 = 0;
LABEL_28:
    LOBYTE(v16) = 0;
    v20 = 0;
    v209 = 0;
    v42 = v219;
    v43 = v219 != 0;
LABEL_187:
    v23 = 1;
    goto LABEL_188;
  }

  v26 = [v16 scheme];
  v27 = [v26 caseInsensitiveCompare:@"com-apple-audiounit"];

  if (!v27)
  {
    v22 = v16;
    _LSAudioUnitURLOpen(v22);
    v216[2](v216, 1, 0);
    goto LABEL_28;
  }

  v28 = +[LSApplicationWorkspace defaultWorkspace];
  if (a4)
  {
    v22 = v16;
    LOBYTE(v16) = 0;
  }

  else
  {
    v44 = objc_opt_class();
    v45 = [v217 objectForKey:@"NoOverrides"];
    v46 = v45;
    if (v44 && v45 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v46 = 0;
    }

    LOBYTE(v16) = [v46 BOOLValue];

    if (v16)
    {
      v47 = 0;
    }

    else
    {
      v104 = [[_LSURLOverride alloc] initWithOriginalURL:v215];
      v47 = [(_LSURLOverride *)v104 overrideURL];
    }

    v105 = v215;
    if (v47)
    {
      v105 = v47;
    }

    v22 = v105;
  }

  if (!v219)
  {
    v106 = [v28 applicationForOpeningResource:v22];
    v219 = [v106 bundleIdentifier];
  }

  v107 = [(NSURL *)v22 scheme];
  if (!v107)
  {
    goto LABEL_112;
  }

  v108 = +[_LSCanOpenURLManager sharedManager];
  v109 = [v108 schemeTypeOfScheme:v107];

  if (v109 != 1)
  {
    goto LABEL_112;
  }

  v110 = objc_opt_class();
  v111 = [v217 objectForKey:@"LSOpenSensitiveURLOption"];
  v112 = v111;
  if (v110 && v111 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v112 = 0;
  }

  v113 = [v112 BOOLValue];

  if (!v113 || ([v218 _xpcConnection], v114 = objc_claimAutoreleasedReturnValue(), v115 = _LSCheckOpenSensitiveURLForXPCConnection(v114, -[NSURL absoluteString](v22, "absoluteString")), v114, !v115))
  {
    v116 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 1, 0, "_LSOpenOperationPerformContinueAfterAsyncGather", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 579);
    v216[2](v216, 0, v116);

    v23 = 1;
  }

  else
  {
LABEL_112:
    v23 = 0;
  }

  v209 = 0;
  v20 = 0;
  v21 = 1;
LABEL_184:
  v42 = v219;
  v43 = v219 != 0;
  if ((v23 & 1) == 0 && !v219)
  {
    v159 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 45, 0, "_LSOpenOperationPerformContinueAfterAsyncGather", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 589);
    v216[2](v216, 0, v159);

    v43 = 0;
    v42 = 0;
    goto LABEL_187;
  }

LABEL_188:
  v220 = v42;
  _LSSchemeApprovalRememberForBouncebackCheck(v218, v42);
  if (v23)
  {
    goto LABEL_232;
  }

  v160 = _LSGetOptionsDictionaryContainingSourceApplication(v218, 0, v22, 0, 0, 0, 0, v217);
  v161 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v214];
  if (v22)
  {
    [v160 setObject:v22 forKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadURL()];
  }

  if (v21)
  {
    v162 = objc_opt_class();
    v163 = [v160 objectForKey:@"ReferrerURL"];
    v164 = v163;
    if (v162 && v163)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v164 = 0;
        goto LABEL_213;
      }
    }

    else if (!v163)
    {
      goto LABEL_213;
    }

    v210 = v220;
    v170 = @"com.apple.launchservices.receivereferrerrurl";
    v171 = !v43;
    if (!v170)
    {
      v171 = 1;
    }

    if ((v171 & 1) == 0)
    {
      *v242 = 0;
      if (!_LSContextInit(v242))
      {
        LODWORD(v241[0]) = 0;
        v231 = 0;
        memset(buf, 0, 32);
        if (_LSBundleFindWithInfo(v242, 0, v210, 0, buf, 0, 128, v241, &v231))
        {
          v178 = 1;
        }

        else
        {
          v206 = *v242;
          v203 = v231[35];
          v201 = v170;
          v207 = _LSPlistGet(v206, v203);
          v179 = _LSPlistDataGetValueForKey(v207, v201, 0);

          if (v179 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v208 = [v179 BOOLValue];
          }

          else
          {
            v208 = 0;
          }

          v178 = v208 ^ 1;
        }

        _LSContextDestroy(v242);

        if ((v178 & 1) == 0)
        {
          [v161 setObject:v164 forKeyedSubscript:@"ReferrerURL"];
        }

        goto LABEL_212;
      }
    }

LABEL_212:
    [v160 removeObjectForKey:@"ReferrerURL"];
LABEL_213:
    if ((v16 & 1) != 0 && _LSBundleIdentifierIsPlatformWebBrowser(v220))
    {
      [v161 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NoOverrides"];
    }

    [v160 removeObjectForKey:@"NoOverrides"];
    if ([v161 count])
    {
      [v160 setObject:v161 forKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadAnnotation()];
    }

    goto LABEL_219;
  }

  if (v20)
  {
    v165 = objc_opt_class();
    v166 = [v160 objectForKey:@"__PayloadOptions"];
    v167 = v166;
    if (v165 && v166 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v167 = 0;
    }

    v168 = [v167 mutableCopy];

    [v168 setObject:v20 forKeyedSubscript:@"FileProviderString"];
    v169 = [MEMORY[0x1E696AD98] numberWithBool:v209];
    [v168 setObject:v169 forKeyedSubscript:@"RequireOpenInPlace"];

    [v160 setObject:v168 forKeyedSubscript:@"__PayloadOptions"];
    [v160 setObject:MEMORY[0x1E695E118] forKeyedSubscript:getFBSOpenApplicationOptionKeyDocumentOpen4LS()];
    [v161 removeObjectForKey:@"FileProviderString"];
    [v161 removeObjectForKey:@"RequireOpenInPlace"];
  }

  if ([v161 count])
  {
    [v160 setObject:v161 forKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadAnnotation()];
  }

  [v160 setObject:MEMORY[0x1E695E110] forKeyedSubscript:getFBSOpenApplicationOptionKeyActivateSuspended()];
LABEL_219:
  v172 = objc_opt_class();
  v173 = [v160 objectForKey:@"LSBlockUntilComplete"];
  v174 = v173;
  if (v172 && v173)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v174 = 0;
LABEL_225:
      v175 = 0;
      goto LABEL_226;
    }
  }

  else if (!v173)
  {
    goto LABEL_225;
  }

  v175 = [v174 BOOLValue];
  [v160 removeObjectForKey:@"LSBlockUntilComplete"];
LABEL_226:

  v176 = objc_alloc_init(_LSSpringBoardCall);
  [(_LSSpringBoardCall *)v176 setBundleIdentifier:v220];
  [(_LSSpringBoardCall *)v176 setLaunchOptions:v160];
  if (v20)
  {
    v177 = 1;
  }

  else
  {
    v177 = v21;
  }

  if (v177 == 1)
  {
    [(_LSSpringBoardCall *)v176 setClientXPCConnection:v218];
  }

  [(_LSSpringBoardCall *)v176 setCallCompletionHandlerWhenFullyComplete:v175];
  [(_LSSpringBoardCall *)v176 callWithCompletionHandler:v216];

LABEL_232:
}

void sub_181674D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, _Unwind_Exception *exception_object, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  LaunchServices::Database::Context::~Context(&a43);

  _Unwind_Resume(a1);
}

uint64_t _LSGetSchemeType(NSString *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_LSURLSchemeType _LSGetSchemeType(NSString *__strong)"];
    [v11 handleFailureInFunction:v12 file:@"LSCanOpenURLManager.mm" lineNumber:734 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];
  }

  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v15, v2, 0);

  if (v3)
  {
    v4 = v1;
    if (!v1)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_LSURLSchemeType _LSGetSchemeType(LSContext *, NSString *__strong)"}];
      [v13 handleFailureInFunction:v14 file:@"LSCanOpenURLManager.mm" lineNumber:708 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];
    }

    objc_msgSend_bindingEvaluatorForScheme_(_LSCanOpenURLManager);
    LaunchServices::BindingEvaluator::evaluateBindings(v21, v3, 0, v19);
    v5 = v19[0];
    v6 = -1;
    while (v5 != v19[1])
    {
      v7 = *(v5 + 24);
      if (v7)
      {
        if ((*(v7 + 8) & 0x80) != 0)
        {
          v6 = 1;
          break;
        }

        v6 = 0;
      }

      v5 += 56;
    }

    v20 = v19;
    std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v20);
    LaunchServices::BindingEvaluator::~BindingEvaluator(v21);
  }

  else
  {
    v6 = -1;
  }

  if (v15 && v17 == 1)
  {
    _LSContextDestroy(v15);
  }

  v8 = v16;
  v15 = 0;
  v16 = 0;

  v17 = 0;
  v9 = v18;
  v18 = 0;

  return v6;
}

void sub_181675644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

uint64_t FBSOpenApplicationOptionKeyPayloadURLFunction(void)
{
  return constantFBSOpenApplicationOptionKeyPayloadURL;
}

{
  return constantFBSOpenApplicationOptionKeyPayloadURL;
}

{
  return constantFBSOpenApplicationOptionKeyPayloadURL;
}

LaunchServices::URLOverrides::State *LaunchServices::URLOverrides::State::State(LaunchServices::URLOverrides::State *this, NSURLComponents *a2, char a3)
{
  v5 = a2;
  *this = v5;
  *(this + 8) = a3;
  *(this + 9) = 0;
  v6 = this + 9;
  *(this + 13) = 0;
  v7 = [(NSURLComponents *)v5 scheme];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 caseInsensitiveCompare:@"http"];
    *v6 = v9 == 0;
    if (v9)
    {
      v10 = [v8 caseInsensitiveCompare:@"https"];
      v11 = 0;
      v12 = *(this + 9);
      *(this + 10) = v10 == 0;
      if ((v12 & 1) == 0 && v10)
      {
        v11 = [v8 caseInsensitiveCompare:@"itms"] == 0;
      }
    }

    else
    {
      v11 = 0;
      *(this + 10) = 0;
    }

    *(this + 11) = v11;
  }

  if (*v6 || *(this + 10) == 1)
  {
    v15 = v5;
    v16 = pthread_mutex_lock(&LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::lock);
    if (!LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::cachedICloudHosts || (v18 = *&LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::nextFetchTime, v16 = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v18 < v19))
    {
      v20 = [__LSDefaultsGetSharedInstance(v16 v17)];
      if ((v20 & 1) != 0 || (v20 = [__LSDefaultsGetSharedInstance(v20 v21)], (v20 & 1) == 0))
      {
        v24 = LaunchServices::URLOverrides::getLog(v20);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          LaunchServices::URLOverrides::State::State();
        }

        v23 = _LSServer_GetiCloudHostNames();
        v25 = [v23 copy];
        v26 = LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::cachedICloudHosts;
        LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::cachedICloudHosts = v25;
      }

      else
      {
        v22 = LaunchServices::URLOverrides::getLog(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          LaunchServices::URLOverrides::State::State();
        }

        v23 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:?];
        [v23 getiCloudHostNamesWithCompletionHandler:&__block_literal_global_246];
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *&LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::nextFetchTime = v27 + 86400.0;
    }

    v28 = [LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::cachedICloudHosts copy];
    pthread_mutex_unlock(&LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::lock);
    v29 = [(NSURLComponents *)v15 host];
    v30 = [v29 lowercaseString];

    if (v30)
    {
      v31 = [v28 containsObject:v30];
    }

    else
    {
      v31 = 0;
    }

    *(this + 12) = v31;
  }

  v32 = [__LSDefaultsGetSharedInstance(v13 v14)];
  if (!LaunchServices::URLOverrides::gUseMacOverrides)
  {
    v32 = 0;
  }

  if (v32 == 1)
  {
    *(this + 13) = [LaunchServices::URLOverrides::gUseMacOverrides BOOLValue];
  }

  return this;
}

void sub_1816759DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id LaunchServices::URLOverrides::getLog(LaunchServices::URLOverrides *this)
{
  if (LaunchServices::URLOverrides::getLog(void)::once != -1)
  {
    LaunchServices::URLOverrides::getLog();
  }

  v2 = LaunchServices::URLOverrides::getLog(void)::result;

  return v2;
}

CFTypeRef _LSCopyBundleIdentifierForXPCConnection(void *a1, uint64_t a2)
{
  v3 = a1;
  xpc_connection_get_audit_token();
  v4 = _LSCopyBundleIdentifierForAuditToken(&v6, a2);

  return v4;
}

id _LSGetOptionsDictionaryContainingSourceApplication(void *a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6, int a7, void *a8)
{
  v71[1] = *MEMORY[0x1E69E9840];
  v65 = a1;
  v66 = a2;
  v64 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v63 = v16;
  if (v16)
  {
    v17 = [v16 mutableCopy];
  }

  else
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
  }

  v18 = v17;
  if (v14 | v15)
  {
LABEL_9:
    if (!a7)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v19 = objc_opt_class();
  v20 = [v18 objectForKey:@"_LSAppLinkOpenStateLaunchOptionKey"];
  v21 = v20;
  if (!v19 || !v20 || (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = v21;
    goto LABEL_9;
  }

  v15 = 0;
  if (!a7)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v15)
  {
    v22 = [v15 openConfiguration];
    v23 = [v22 frontBoardOptions];

    if (v23 && [v23 count])
    {
      [v18 addEntriesFromDictionary:v23];
      [v18 removeObjectForKey:getFBSOpenApplicationOptionKeyPayloadIsValid4LS()];
      LOBYTE(a7) = 0;
    }

    else
    {
      LOBYTE(a7) = 1;
    }
  }

LABEL_16:
  [v18 removeObjectForKey:@"_LSAppLinkOpenStateLaunchOptionKey"];
  if (v66 || v14 || v15)
  {
    if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
    {
      FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
      if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
      {
LABEL_49:
        FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
        if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }
    }

    if (v66 && getFBSOpenApplicationOptionKeyActions())
    {
      v71[0] = v66;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
      [v18 setObject:v24 forKeyedSubscript:getFBSOpenApplicationOptionKeyActions()];
    }

    if (v14 && getFBSOpenApplicationOptionKeyAppLink4LS())
    {
      [v18 setObject:v14 forKeyedSubscript:getFBSOpenApplicationOptionKeyAppLink4LS()];
    }

    if (v15)
    {
      v25 = v15;
      v26 = [v25 browserState];
      if (v26)
      {
        v27 = getFBSOpenApplicationOptionKeyBrowserAppLinkState4LS() == 0;

        if (!v27)
        {
          v28 = [v25 browserState];
          [v18 setObject:v28 forKeyedSubscript:getFBSOpenApplicationOptionKeyBrowserAppLinkState4LS()];
        }
      }

      v29 = [v25 openConfiguration];
      v30 = [v29 targetConnectionEndpoint];

      if (v30)
      {
        v31 = [v18 objectForKeyedSubscript:@"LSTargetBSServiceConnectionEndpointKey"];
        v32 = v31 == 0;

        if (v32)
        {
          [v18 setObject:v30 forKeyedSubscript:@"LSTargetBSServiceConnectionEndpointKey"];
        }
      }

      v33 = [v25 openConfiguration];
      v34 = [v33 clickAttribution];

      if (v34)
      {
        if (getUISOpenApplicationOptionClickAttribution())
        {
          v35 = [v18 objectForKeyedSubscript:getUISOpenApplicationOptionClickAttribution()];
          v36 = v35 == 0;

          if (v36)
          {
            [v18 setObject:v34 forKeyedSubscript:getUISOpenApplicationOptionClickAttribution()];
          }
        }
      }

      v37 = [v25 openConfiguration];
      v38 = [v37 pasteSharingToken];

      if (v38)
      {
        if (getUISOpenApplicationOptionPasteSharingToken())
        {
          v39 = [v18 objectForKeyedSubscript:getUISOpenApplicationOptionPasteSharingToken()];
          v40 = v39 == 0;

          if (v40)
          {
            [v18 setObject:v38 forKeyedSubscript:getUISOpenApplicationOptionPasteSharingToken()];
          }
        }
      }
    }

    v41 = a7 ^ 1;
    if (!v14)
    {
      v41 = 1;
    }

    if ((v41 & 1) == 0 && getFBSOpenApplicationOptionKeyPayloadIsValid4LS())
    {
      [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadIsValid4LS()];
    }
  }

  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (v66)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:a4];
    [v18 setObject:v42 forKeyedSubscript:@"__UserActivity4LS"];
  }

  else
  {
    [v18 setObject:0 forKeyedSubscript:@"__UserActivity4LS"];
  }

LABEL_53:
  v43 = [v18 objectForKeyedSubscript:@"__PayloadOptions"];
  v44 = v43 == 0;

  if (v44)
  {
    v46 = [MEMORY[0x1E695DF90] dictionary];
    if (!v46)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v45 = [v18 objectForKeyedSubscript:@"__PayloadOptions"];
    v46 = [v45 mutableCopy];

    if (!v46)
    {
      goto LABEL_64;
    }
  }

  [v18 setObject:v46 forKeyedSubscript:@"__PayloadOptions"];
  if (v65)
  {
    v47 = [v46 objectForKeyedSubscript:@"UIApplicationLaunchOptionsSourceApplicationKey"];
    v48 = v47 == 0;

    if (!v48)
    {
      v49 = [v65 _xpcConnection];
      v50 = _LSCheckEntitlementForXPCConnection(v49, @"com.apple.private.launchservices.canspecifysourceapplication") == 0;

      if (!v50)
      {
        goto LABEL_64;
      }

      [v46 removeObjectForKey:@"UIApplicationLaunchOptionsSourceApplicationKey"];
    }

    v51 = [v65 _xpcConnection];
    v52 = _LSCopyBundleIdentifierForXPCConnection(v51, 0);

    if (v52)
    {
      [v46 setObject:v52 forKeyedSubscript:@"UIApplicationLaunchOptionsSourceApplicationKey"];
    }
  }

LABEL_64:
  if (getUISOpenApplicationOptionClickAttribution())
  {
    v53 = [v18 objectForKeyedSubscript:getUISOpenApplicationOptionClickAttribution()];
    v54 = v53 == 0;

    if (!v54)
    {
      if (v64)
      {
        v55 = [v64 scheme];
        v56 = v55 == 0;

        if (!v56)
        {
          v57 = [v64 scheme];
          if (![v57 caseInsensitiveCompare:@"http"])
          {
LABEL_72:

            goto LABEL_73;
          }

          v58 = [v64 scheme];
          v59 = [v58 caseInsensitiveCompare:@"https"] == 0;

          if (v59)
          {
            goto LABEL_73;
          }
        }
      }

      v60 = [v18 removeObjectForKey:getUISOpenApplicationOptionClickAttribution()];
      v57 = _LSDefaultLog(v60);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109379;
        v68 = [v65 processIdentifier];
        v69 = 2113;
        v70 = v64;
        _os_log_impl(&dword_18162D000, v57, OS_LOG_TYPE_DEFAULT, "pid %i not allowed to set click attribution option for URL %{private}@.", buf, 0x12u);
      }

      goto LABEL_72;
    }
  }

LABEL_73:

  return v18;
}

uint64_t _LSXPCConnectionCanSuppressCustomSchemePrompt(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    v6 = _LSCopyEntitlementValueForXPCConnection(v3, @"com.apple.private.launchservices.suppresscustomschemeprompt");
    v5 = _LSCheckEntitlementValueForSchemeOrTypeMatch(v6, a2, 0);
  }

  return v5;
}

void sub_181677468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, int a22, char a23)
{
  if (a23)
  {
  }

  _Unwind_Resume(a1);
}

void _LSSchemeApprovalRememberForBouncebackCheck(void *a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 _xpcConnection];
    v6 = _LSCopyBundleIdentifierForXPCConnection(v5, 0);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4;
  v8 = _LSSchemeApprovalGetBouncebackHistory(v7);
  objc_sync_enter(v8);
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v9;
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v8 addObject:v11];

  if (!v7)
  {
  }

  if (!v6)
  {
  }

  if ([v8 count] >= 3)
  {
    [v8 removeObjectsInRange:{0, objc_msgSend(v8, "count") - 2}];
  }

  objc_sync_exit(v8);
}

void sub_181678300(_Unwind_Exception *a1)
{
  if (!v3)
  {
  }

  objc_sync_exit(v5);

  _Unwind_Resume(a1);
}

CFTypeRef _LSCopyBundleIdentifierForAuditToken(_OWORD *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = _LSCopyEntitlementValueForAuditToken(a1, @"application-identifier");
    v5 = v4;
    if (v4 && object_getClass(v4) == MEMORY[0x1E69E9F10])
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v5)];
      *atoken.val = 0;
      _LSSplitApplicationIdentifier(v13, 0, &atoken);
      if (*atoken.val)
      {
        v12 = *atoken.val;

LABEL_17:
        return v12;
      }
    }

    v6 = getpid();
    pidp = 0;
    v7 = a1[1];
    *atoken.val = *a1;
    *&atoken.val[4] = v7;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    if (v6 == pidp && (MainBundle = CFBundleGetMainBundle()) != 0 && (Unique = CFRetain(MainBundle)) != 0 || (v10 = _LSCopyBundleURLForAuditToken(a1, a2)) != 0 && (Unique = _CFBundleCreateUnique(), CFRelease(v10), Unique))
    {
      Identifier = CFBundleGetIdentifier(Unique);
      if (Identifier)
      {
        v12 = CFRetain(Identifier);
      }

      else
      {
        v12 = 0;
      }

      CFRelease(Unique);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_17;
  }

  return 0;
}

id BSServiceConnectionEndpointFunction(void)
{
  return classBSServiceConnectionEndpoint;
}

{
  return classBSServiceConnectionEndpoint;
}

_BYTE *__copy_helper_block_ea8_96c48_ZTSNSt3__18optionalIU8__strongP12NSDictionaryEE(_BYTE *result, uint64_t a2)
{
  result[96] = 0;
  result[104] = 0;
  if (*(a2 + 104) == 1)
  {
    v2 = result;
    result = *(a2 + 96);
    *(v2 + 12) = result;
    v2[104] = 1;
  }

  return result;
}

void _LSSchemeApprovalFindWithCompletionHandler(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = v12;
  if (!v11 || !v12)
  {
    if (!v12)
    {
      goto LABEL_39;
    }

    v48 = *MEMORY[0x1E696A278];
    v49 = @"invalid input parameters";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "_LSSchemeApprovalFindWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 157);
    (v13)[2](v13, 0, v17);
    goto LABEL_8;
  }

  if (!v9)
  {
    v18 = 0;
    v16 = 0;
    v19 = v10 != 0;
    goto LABEL_10;
  }

  v14 = [v9 _xpcConnection];
  CanSuppressCustomSchemePrompt = _LSXPCConnectionCanSuppressCustomSchemePrompt(v14, v11);

  if (!CanSuppressCustomSchemePrompt)
  {
    v29 = [v9 _xpcConnection];
    v16 = _LSCopyBundleIdentifierForXPCConnection(v29, 0);

    v18 = v16 != 0;
    v19 = v10 != 0;
    if (v10 && v16)
    {
      if ([v16 isEqual:v10])
      {
        goto LABEL_14;
      }

      v34 = v10;
      v35 = [LSBundleProxy bundleProxyForIdentifier:v16];
      v36 = [LSBundleProxy bundleProxyForIdentifier:v34];
      v37 = v36;
      if (v35 && v36)
      {
        v41 = v34;
        if (objc_opt_respondsToSelector())
        {
          v43 = [v35 teamID];
        }

        else
        {
          v43 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v38 = [v37 teamID];
          v39 = v38;
          if (v43 && v38)
          {
            v40 = [v43 isEqual:v38];

            if (v40)
            {
              goto LABEL_14;
            }

            goto LABEL_54;
          }
        }

        else
        {
          v39 = 0;
        }

        v34 = v41;
      }

LABEL_54:
      v19 = 1;
      goto LABEL_11;
    }

LABEL_10:
    if (!v18)
    {
LABEL_12:
      if (v19 && _LSSchemeApprovalBundleIsAppleInternal(v10))
      {
        goto LABEL_14;
      }

      v42 = v10;
      v20 = v11;
      v47 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v21 = +[_LSDServiceDomain defaultServiceDomain];
      v22 = LaunchServices::Database::Context::_get(&v44, v21, 0);

      if (v22 && (v23 = _LSDatabaseGetStringForCFString(*v22, v20, 1), v23) && (HandlerPref = LSHandlerPref::GetHandlerPref(*v22, v23, 5, 0)) != 0)
      {
        v25 = LSHandlerPref::roleHandler(HandlerPref, 0xFFFFFFFF, 0);
        StringForCFString = _LSDatabaseGetStringForCFString(*v22, v42, 0);
        if (v25)
        {
          v27 = v25 == StringForCFString;
        }

        else
        {
          v27 = 0;
        }

        v28 = !v27;
      }

      else
      {
        v28 = 1;
      }

      if (v44 && v46 == 1)
      {
        _LSContextDestroy(v44);
      }

      v30 = v45;
      v44 = 0;
      v45 = 0;

      v46 = 0;
      v31 = v47;
      v47 = 0;

      if ((v28 & 1) == 0)
      {
        v13[2](v13, 1, 0);
        goto LABEL_38;
      }

      v32 = !v19;
      if (!v9)
      {
        v32 = 1;
      }

      if ((v32 & 1) == 0)
      {
        _LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler(v9, v16, v42, v20, a4, v13);
        goto LABEL_38;
      }

      v50 = *MEMORY[0x1E696A278];
      v51[0] = @"invalid input parameters";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      v33 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "_LSSchemeApprovalFindWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 151);
      (v13)[2](v13, 0, v33);

LABEL_8:
LABEL_38:

      goto LABEL_39;
    }

LABEL_11:
    if (_LSSchemeApprovalBundleIsAppleInternal(v16))
    {
LABEL_14:
      v13[2](v13, 1, 0);
      goto LABEL_38;
    }

    goto LABEL_12;
  }

  v13[2](v13, 1, 0);
LABEL_39:
}

uint64_t _LSCopyDataContainerURLFromContainermanager(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = _LSDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138412802;
    *&v12[4] = v5;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "querying MCM for container for %@, class %llx, platform %lu", v12, 0x20u);
  }

  *v12 = 1;
  [v5 UTF8String];
  v7 = container_create_or_lookup_path_for_platform();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
    free(v8);
  }

  else
  {
    v10 = _LSDefaultLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _LSCopyDataContainerURLFromContainermanager_cold_1(v5, v12);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t _LSCheckEntitlementValueForSchemeOrTypeMatch(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (v5 && a2 | a3)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL44_LSCheckEntitlementValueForSchemeOrTypeMatchPU24objcproto13OS_xpc_object8NSObjectPK10__CFStringS4__block_invoke;
    v13[3] = &unk_1E6A1CD60;
    v13[4] = &v18;
    v13[5] = &v14;
    v13[6] = a2;
    v13[7] = a3;
    v6 = MEMORY[0x1865D71B0](v13);
    if (object_getClass(v5) == MEMORY[0x1E69E9E50])
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = ___ZL44_LSCheckEntitlementValueForSchemeOrTypeMatchPU24objcproto13OS_xpc_object8NSObjectPK10__CFStringS4__block_invoke_2;
      applier[3] = &unk_1E6A1CD88;
      v10 = v6;
      v11 = &v18;
      v12 = &v14;
      xpc_array_apply(v5, applier);

      if (!a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (object_getClass(v5) == MEMORY[0x1E69E9F10])
      {
        (v6)[2](v6, v5);
      }

      if (!a2)
      {
LABEL_11:
        if (!a3 || *(v15 + 24))
        {
          v7 = 1;
LABEL_15:

          _Block_object_dispose(&v14, 8);
          _Block_object_dispose(&v18, 8);
          goto LABEL_16;
        }

LABEL_14:
        v7 = 0;
        goto LABEL_15;
      }
    }

    if (!*(v19 + 24))
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

void sub_181678F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);

  _Unwind_Resume(a1);
}

id FBSOpenApplicationServiceFunction(void)
{
  return classFBSOpenApplicationService;
}

{
  return classFBSOpenApplicationService;
}

void ___ZL12getEPFromLSDP8NSStringjPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, a3);
}

id _LSDatabaseCreateSnapshot(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[3];
  }

  else
  {
    v5 = 0;
  }

  SnapshotAgainstAccessContext = _LSDatabaseCreateSnapshotAgainstAccessContext(v3, v5, a2);

  return SnapshotAgainstAccessContext;
}

uint64_t _LSSchemeApprovalBundleIsAppleInternal(NSString *a1)
{
  v1 = a1;
  v10 = 0;
  p_super = [LSBundleRecord bundleRecordWithBundleIdentifier:v1 allowPlaceholder:0 error:&v10];
  v3 = v10;
  if (p_super)
  {
    goto LABEL_4;
  }

  v9 = v3;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v9];
  v5 = v9;

  if (v4)
  {
    v3 = v5;
    p_super = &v4->super.super.super;
LABEL_4:
    v7 = [p_super isAppleInternal];
    goto LABEL_5;
  }

  p_super = _LSDefaultLog(v6);
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    _LSSchemeApprovalBundleIsAppleInternal(v5, p_super);
  }

  v7 = 0;
  v3 = v5;
LABEL_5:

  return v7;
}

void _LSSchemeApprovalBundleIsAppleInternal(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Error fetching bundle record for scheme approval: %@", &v2, 0xCu);
}

void sub_181679594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void _LSGetDMFPolicyWithCompletionHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___LSGetDMFPolicyWithCompletionHandler_block_invoke;
  v5[3] = &unk_1E6A1C060;
  v6 = v3;
  v4 = v3;
  LaunchServices::DMFSupport::getPolicyWithCompletionHandler(a1, 3, v5);
}

void LaunchServices::DMFSupport::getPolicyWithCompletionHandler(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:a1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN14LaunchServices10DMFSupportL30getPolicyWithCompletionHandlerEP8NSStringhU13block_pointerFvP8NSNumberP7NSErrorE_block_invoke;
  v8[3] = &unk_1E6A1C088;
  v7 = v5;
  v9 = v7;
  LaunchServices::DMFSupport::getPoliciesWithCompletionHandler(v6, v3, v8);
}

void LaunchServices::DMFSupport::getPoliciesWithCompletionHandler(void *a1, unsigned int a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v37 = a3;
  if (!v5)
  {
    v50 = *MEMORY[0x1E696A278];
    v51 = @"bundleIDs";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v6, "getPoliciesWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDMFSupport.mm", 314);
    v37[2](v37, 0, v15);
LABEL_35:

    goto LABEL_36;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a2)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v7 = v5;
    v9 = [v7 countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v9)
    {
      v10 = *v47;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v47 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v46 + 1) + 8 * i);
          v13 = LaunchServices::DMFSupport::getCachedPolicy(v12, v8);
          if (v13)
          {
            [v6 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v9);
    }
  }

  v14 = [v6 count];
  if (v14 != [v5 count])
  {
    v15 = LaunchServices::DMFSupport::getMonitor((a2 & 1));
    if (v15)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = ___ZN14LaunchServices10DMFSupportL32getPoliciesWithCompletionHandlerEP5NSSetIP8NSStringEhU13block_pointerFvP12NSDictionaryIS3_P8NSNumberEP7NSErrorE_block_invoke;
      v43[3] = &unk_1E6A1C128;
      v45 = a2 & 1;
      v44 = v37;
      v16 = MEMORY[0x1865D71B0](v43);
      v17 = LaunchServices::DMFSupport::getLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v5 count];
        *buf = 134283777;
        v54 = v18;
        v55 = 1024;
        v56 = (a2 >> 1) & 1;
        _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_INFO, "requesting DMF policies for %{private}zu identifiers, async? %d", buf, 0x12u);
      }

      [v5 allObjects];
      if ((a2 & 2) != 0)
        v20 = {;
        [v15 requestPoliciesForBundleIdentifiers:v20 completionHandler:v16];
      }

      else
        v19 = {;
        v42 = 0;
        v20 = [v15 requestPoliciesForBundleIdentifiers:v19 withError:&v42];
        v21 = v42;

        (*(v16 + 2))(v16, v20, v21);
      }
    }

    else
    {
      v22 = LaunchServices::DMFSupport::getLog(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LaunchServices::DMFSupport::getPoliciesWithCompletionHandler(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v30 = v5;
      v31 = [v30 countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v31)
      {
        v32 = *v39;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v39 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v38 + 1) + 8 * j);
            v35 = [v6 objectForKeyedSubscript:v34];
            v36 = v35 == 0;

            if (v36)
            {
              [v6 setObject:&unk_1EEF8EFA8 forKeyedSubscript:v34];
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v31);
      }

      (v37)[2](v37, v6, 0);
    }

    goto LABEL_35;
  }

  (v37)[2](v37, v6, 0);
LABEL_36:
}

uint64_t MDTCopierGetTypeID()
{
  v0 = 0;
  atomic_compare_exchange_strong_explicit(__gMDTCopierTypeInitialized, &v0, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v0)
  {
    __gMDTCopierTypeID = _CFRuntimeRegisterClass();
    pthread_mutex_init(&stru_1ED4452A0, 0);
    _MergedGlobals = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return __gMDTCopierTypeID;
}

CFMachPortRef *MDTCreateCopierWithSandboxExtensionAndReturnError(const __CFAllocator *a1, const __CFURL *a2, const __CFURL *a3, const __CFString *a4, const __CFString *a5, __CFMachPort *a6, __CFMachPort *a7, __CFMachPort *a8, CFErrorRef *a9)
{
  *special_port = 0;
  *sp = 0;
  v51 = 0;
  if (!a2)
  {
    v36 = *MEMORY[0x1E695E640];
    v37 = @"NULL source URL";
    v38 = 22;
    v39 = 341;
LABEL_27:
    v40 = MDTCreateError(v36, v38, v39, v37);
    goto LABEL_53;
  }

  if (!a3)
  {
    v36 = *MEMORY[0x1E695E640];
    v37 = @"NULL destination URL";
    v38 = 22;
    v39 = 342;
    goto LABEL_27;
  }

  if (!a7)
  {
    v36 = *MEMORY[0x1E695E640];
    v37 = @"NULL callback";
    v38 = 22;
    v39 = 343;
    goto LABEL_27;
  }

  MDTCopierGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v36 = *MEMORY[0x1E695E640];
    v37 = @"Could not create CF instance";
    v38 = 12;
    v39 = 348;
    goto LABEL_27;
  }

  v18 = Instance;
  *(Instance + 5) = 0u;
  *(Instance + 6) = 0u;
  *(Instance + 3) = 0u;
  *(Instance + 4) = 0u;
  *(Instance + 1) = 0u;
  *(Instance + 2) = 0u;
  v19 = MEMORY[0x1E69E9A60];
  v20 = task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]);
  if (v20)
  {
    v41 = v20;
    v42 = @"Could not get bootstrap port";
    v43 = *MEMORY[0x1E695E630];
    v44 = 354;
  }

  else if (special_port[1])
  {
    v21 = bootstrap_look_up(special_port[1], "com.apple.mdt", &sp[1]);
    if (v21)
    {
      v41 = v21;
      v42 = @"Could not look up MDT service";
      v43 = *MEMORY[0x1E695E630];
      v44 = 360;
    }

    else if (sp[1])
    {
      v50.version = 0;
      memset(&v50.retain, 0, 24);
      v50.info = v18;
      v22 = mach_port_allocate(*v19, 1u, sp);
      if (v22)
      {
        v41 = v22;
        v42 = @"Could not allocate port receive right";
        v43 = *MEMORY[0x1E695E630];
        v44 = 374;
      }

      else
      {
        inserted = mach_port_insert_right(*v19, sp[0], sp[0], 0x14u);
        if (inserted)
        {
          v41 = inserted;
          v42 = @"Could not insert send right";
          v43 = *MEMORY[0x1E695E630];
          v44 = 377;
        }

        else
        {
          v24 = CFMachPortCreateWithPort(a1, sp[0], __MDTCopierMachCallback, &v50, 0);
          v18[6] = v24;
          if (v24)
          {
            v25 = sp[1];
            Port = CFMachPortGetPort(v24);
            v27 = MDT_create_session(v25, Port, v18 + 10, &v51);
            if (v27)
            {
              v41 = v27;
              v42 = @"Could not create MDT session";
              v43 = *MEMORY[0x1E695E630];
              v44 = 389;
            }

            else
            {
              v28 = CFURLCopyAbsoluteURL(a2);
              v18[7] = v28;
              if (v28)
              {
                v29 = CFURLCopyAbsoluteURL(a3);
                v18[8] = v29;
                if (v29)
                {
                  if (a4 && (v30 = CFStringCreateCopy(0, a4), (v18[9] = v30) == 0))
                  {
                    v43 = *MEMORY[0x1E695E640];
                    v42 = @"Could not copy unique ID";
                    v41 = 12;
                    v44 = 403;
                  }

                  else if (a5 && (Copy = CFStringCreateCopy(0, a5), (v18[10] = Copy) == 0))
                  {
                    v43 = *MEMORY[0x1E695E640];
                    v42 = @"Could not copy sandbox extension";
                    v41 = 12;
                    v44 = 410;
                  }

                  else
                  {
                    v32 = mach_port_request_notification(*v19, sp[0], 70, 1u, sp[0], 0x15u, special_port);
                    if (v32)
                    {
                      v41 = v32;
                      v42 = @"Could not request port notification";
                      v43 = *MEMORY[0x1E695E630];
                      v44 = 418;
                    }

                    else
                    {
                      if (!special_port[0])
                      {
                        v18[2] = a7;
                        v18[3] = a8;
                        v18[13] = a6;
                        pthread_mutex_lock(&stru_1ED4452A0);
                        v33 = _MergedGlobals;
                        v34 = CFMachPortGetPort(v18[6]);
                        CFDictionarySetValue(v33, v34, v18);
                        pthread_mutex_unlock(&stru_1ED4452A0);
                        return v18;
                      }

                      v43 = *MEMORY[0x1E695E640];
                      v42 = @"Could not request port notification";
                      v41 = 12;
                      v44 = 420;
                    }
                  }
                }

                else
                {
                  v43 = *MEMORY[0x1E695E640];
                  v42 = @"Could not copy destination URL";
                  v41 = 12;
                  v44 = 397;
                }
              }

              else
              {
                v43 = *MEMORY[0x1E695E640];
                v42 = @"Could not copy source URL";
                v41 = 12;
                v44 = 393;
              }
            }
          }

          else
          {
            v43 = *MEMORY[0x1E695E640];
            v42 = @"Could not create CFMachPort";
            v41 = 12;
            v44 = 381;
          }
        }
      }
    }

    else
    {
      v43 = *MEMORY[0x1E695E640];
      v42 = @"Could not look up MDT service";
      v41 = 12;
      v44 = 362;
    }
  }

  else
  {
    v43 = *MEMORY[0x1E695E640];
    v42 = @"Could not get bootstrap port";
    v41 = 12;
    v44 = 356;
  }

  v40 = MDTCreateError(v43, v41, v44, v42);
  v45 = v18[7];
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = v18[8];
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = v18[9];
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = v18[10];
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = v18[6];
  if (v49)
  {
    CFRelease(v49);
  }

  CFRelease(v18);
LABEL_53:
  if (a9)
  {
    v18 = 0;
    *a9 = v40;
  }

  else
  {
    if (v40)
    {
      CFRelease(v40);
    }

    return 0;
  }

  return v18;
}

CFErrorRef MDTCreateError(const __CFString *a1, CFIndex a2, int a3, uint64_t a4)
{
  userInfoKeys[3] = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  userInfoKeys[0] = @"MobileDataTransitErrorFile";
  userInfoKeys[1] = @"MobileDataTransitErrorLine";
  userInfoKeys[2] = *MEMORY[0x1E695E620];
  userInfoValues = @"/Library/Caches/com.apple.xbs/Sources/MobileDataTransit/Client.c";
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v12 = a4;
  v7 = CFErrorCreateWithUserInfoKeysAndValues(0, a1, a2, userInfoKeys, &userInfoValues, 3);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void __MDTCopierMachCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, 60);
  v5 = *(a2 + 20);
  if ((v5 - 78) <= 0xFFFFFFF1)
  {
    MDTR_server(a2, v8);
    v5 = *(a2 + 20);
  }

  if (v5 == 72 || v5 == 70)
  {
    MDTCopierInvalidate(a4);
    v7 = CFErrorCreate(0, *MEMORY[0x1E695E640], 57, 0);
    *(a4 + 96) = v7;
    (*(a4 + 16))(a4, 3, 0, v7, *(a4 + 24));
  }
}

__CFRunLoopSource *MDTCopierScheduleWithRunLoop(uint64_t a1, __CFRunLoop *a2, const __CFString *a3)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  v7 = CFGetAllocator(a1);
  result = CFMachPortCreateRunLoopSource(v7, *(a1 + 48), 0);
  *(a1 + 32) = result;
  if (result)
  {
    CFRunLoopAddSource(a2, result, a3);
    return 1;
  }

  return result;
}

void MDTCopierUnscheduleFromRunLoop(uint64_t a1, CFRunLoopRef rl, const __CFString *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRunLoopRemoveSource(rl, v3, a3);
  }
}

BOOL MDTCopierStart(uint64_t a1)
{
  v2 = copyCStringPath(*(a1 + 56));
  v3 = copyCStringPath(*(a1 + 64));
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = copyCString(*(a1 + 72));
  }

  else
  {
    v5 = "";
  }

  v6 = copyCString(*(a1 + 80));
  v7 = MDT_start(*(a1 + 40));
  CFAllocatorDeallocate(0, v2);
  CFAllocatorDeallocate(0, v3);
  if (v4)
  {
    CFAllocatorDeallocate(0, v5);
  }

  if (v6)
  {
    CFAllocatorDeallocate(0, v6);
  }

  return v7 == 0;
}

const __CFURL *copyCStringPath(const __CFURL *result)
{
  if (result)
  {
    v1 = CFURLCopyFileSystemPath(result, kCFURLPOSIXPathStyle);
    v2 = copyCString(v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

char *copyCString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = MEMORY[0x1865D4CB0](0, MaximumSizeForEncoding + 1, 1171218421, 0);
  CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u);
  return v4;
}

void MDTCopierInvalidate(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {

    CFMachPortInvalidate(v4);
  }
}

void __MDTCopierFinalize(void *a1)
{
  MDTCopierInvalidate(a1);
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[12];
  if (v9)
  {

    CFRelease(v9);
  }
}

__CFString *__MDTCopierCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<MDTCopier %p [%p]> {\n", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"RunLoopSource: %p", a1[4]);
  CFStringAppendFormat(Mutable, 0, @"Source: %@", a1[7]);
  CFStringAppendFormat(Mutable, 0, @"Dest: %@", a1[8]);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

const __CFDictionary *__MDTCreateErrorFromPropertyList(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, @"Domain");
    v3 = CFDictionaryGetValue(v1, @"Code");
    v4 = CFDictionaryGetValue(v1, @"UserInfo");
    result = 0;
    valuePtr = 0;
    if (Value)
    {
      if (v3)
      {
        CFNumberGetValue(v3, kCFNumberLongType, &valuePtr);
        return CFErrorCreate(0, Value, valuePtr, v4);
      }
    }
  }

  return result;
}

CFURLRef __MDTCreateURLFromPropertyList(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"URL");
  if (!Value)
  {
    return 0;
  }

  return CFURLCreateWithString(0, Value, 0);
}

const __CFData *__MDTUnserializePropertyList(CFDataRef theData)
{
  v1 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(v1);
    v4 = CFReadStreamCreateWithBytesNoCopy(0, BytePtr, Length, *MEMORY[0x1E695E498]);
    if (v4)
    {
      v5 = v4;
      format = 0;
      CFReadStreamOpen(v4);
      v6 = CFDataGetLength(v1);
      v1 = CFPropertyListCreateWithStream(0, v5, v6, 0, &format, 0);
      CFReadStreamClose(v5);
      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t MDT_create_session(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  *&msg[20] = 0u;
  v14 = 0u;
  v15 = 0;
  *&msg[4] = 0;
  *&msg[24] = 1;
  *&msg[28] = a2;
  LODWORD(v14) = 1114112;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x38E38E3900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(msg, 3, 0x28u, 0x3Cu, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 954437277)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v10 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 52 && !*&msg[8] && WORD1(v14) << 16 == 1114112)
          {
            v10 = 0;
            v11 = HIDWORD(v14);
            *a3 = *&msg[28];
            *a4 = v11;
            return v10;
          }
        }

        else if (*&msg[4] == 36)
        {
          v10 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = *&msg[32];
            }
          }
        }

        else
        {
          v10 = 4294966996;
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v10;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v10;
}

uint64_t MDT_start(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v1;
  v37 = *MEMORY[0x1E69E9840];
  memset(v36, 0, 480);
  v34 = 0u;
  v35 = 0u;
  *(&v35 + 1) = *MEMORY[0x1E69E99E0];
  v14 = &v34 - 64;
  if (MEMORY[0x1EEE9AC40])
  {
    v15 = mig_strncpy_zerofill(v36 + 8, v2, 1024);
    LODWORD(v36[0]) = 0;
    DWORD1(v36[0]) = v15;
    v16 = (v15 + 3) & 0xFFFFFFFC;
    v17 = v14 + v16;
    v18 = mig_strncpy_zerofill(v17 + 1072, v12, 1024);
    *(v17 + 267) = v18;
    *(v17 + 266) = 0;
    v19 = (v18 + 3) & 0xFFFFFFFC;
    v20 = &v17[v19];
    v21 = mig_strncpy_zerofill(v20 + 1080, v10, 1024);
    v22 = (v21 + 3) & 0xFFFFFFFC;
    *(v20 + 269) = v21;
    v23 = &v20[v22];
    *(v20 + 268) = 0;
    v24 = &v20[v22 - 2048];
    *(v23 + 270) = v8;
    v25 = mig_strncpy_zerofill(v23 + 1092, v6, 1024);
  }

  else
  {
    v26 = mig_strncpy(v36 + 8, v2, 1024);
    LODWORD(v36[0]) = 0;
    DWORD1(v36[0]) = v26;
    v16 = (v26 + 3) & 0xFFFFFFFC;
    v27 = v14 + v16;
    v28 = mig_strncpy(v27 + 1072, v12, 1024);
    *(v27 + 267) = v28;
    *(v27 + 266) = 0;
    v19 = (v28 + 3) & 0xFFFFFFFC;
    v29 = &v27[v19];
    v30 = mig_strncpy(v29 + 1080, v10, 1024);
    v22 = (v30 + 3) & 0xFFFFFFFC;
    *(v29 + 269) = v30;
    v31 = &v29[v22];
    *(v29 + 268) = 0;
    v24 = &v29[v22 - 2048];
    *(v31 + 270) = v8;
    v25 = mig_strncpy(v31 + 1092, v6, 1024);
  }

  *(v24 + 3136) = v25;
  *(v24 + 3132) = 0;
  v32 = (v25 + 3) & 0xFFFFFFFC;
  *(v24 + v32 + 3140) = v4;
  LODWORD(v34) = 19;
  *(&v34 + 1) = v13;
  *&v35 = 0x38E38E3B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v34);
  }

  return mach_msg(&v34, 1, v19 + v16 + v22 + v32 + 72, 0, 0, 0, 0);
}

uint64_t MDTR_server(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = *(a1 + 20) + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (*(a1 + 20) != 954437178)
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
    return result;
  }

  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 60)
  {
    v7 = -304;
LABEL_10:
    *(a2 + 32) = v7;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return 1;
  }

  if (*(a1 + 39) != 1 || (v5 = *(a1 + 40), v5 != *(a1 + 56)))
  {
    v7 = -300;
    goto LABEL_10;
  }

  *(a2 + 32) = _status(*(a1 + 12), *(a1 + 52), *(a1 + 28), v5);
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  return 1;
}

uint64_t fsevent_default_log(uint64_t a1, uint64_t a2)
{
  if (fsevent_default_log_once != -1)
  {
    fsevent_default_log_cold_1();
  }

  return fsevent_default_log_logger;
}

os_log_t __fsevent_default_log_block_invoke()
{
  result = os_log_create("com.apple.fsevents", "client");
  fsevent_default_log_logger = result;
  return result;
}

atomic_uint *_FSEventStreamRetainAndReturnSelf(atomic_uint *a1, uint64_t a2)
{
  if (a1)
  {
    atomic_fetch_add(a1, 1u);
  }

  else
  {
    v3 = fsevent_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamRetainAndReturnSelf_cold_1();
    }
  }

  return a1;
}

CFStringRef FSEventStreamCopyDescription(ConstFSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v19 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyDescription_cold_2();
    }

    return 0;
  }

  v3 = malloc_type_malloc((*(streamRef + 18) << 10) + 1024, 0x68187881uLL);
  if (!v3)
  {
    v20 = fsevent_default_log(0, v4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyDescription_cold_1();
    }

    return 0;
  }

  v5 = v3;
  v6 = &v3[sprintf(v3, "FSEventStreamRef @ %p:\n", streamRef)];
  v7 = &v6[sprintf(v6, "   allocator = %p\n", *(streamRef + 1))];
  v8 = &v7[sprintf(v7, "   callback = %p\n", *(streamRef + 2))];
  v9 = &v8[sprintf(v8, "   context = {%lu, %p, %p, %p, %p}\n", *(streamRef + 3), *(streamRef + 4), *(streamRef + 5), *(streamRef + 6), *(streamRef + 7))];
  v10 = &v9[sprintf(v9, "   numPathsToWatch = %lu\n", *(streamRef + 9))];
  v11 = &v10[sprintf(v10, "   pathsToWatch = %p\n", *(streamRef + 10))];
  if (*(streamRef + 9) >= 1)
  {
    v12 = 0;
    do
    {
      v11 += sprintf(v11, "        pathsToWatch[%d] = '%s'\n", v12, *(*(streamRef + 10) + 8 * v12));
      ++v12;
    }

    while (*(streamRef + 9) > v12);
  }

  v13 = &v11[sprintf(v11, "   latestEventId = %lld\n", *(streamRef + 21))];
  v14 = &v13[sprintf(v13, "   latency = %llu (microseconds)\n", *(streamRef + 22))];
  v15 = &v14[sprintf(v14, "   flags = 0x%08x\n", *(streamRef + 46))];
  v16 = sprintf(v15, "\trunLoop = %p\n", *(streamRef + 28));
  sprintf(&v15[v16], "\trunLoopMode = %p\n", *(streamRef + 29));
  v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
  free(v5);
  return v17;
}

void FSEventsClientPortCallback(uint64_t a1, uint64_t a2)
{
  v2 = fsevent_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    FSEventsClientPortCallback_cold_1();
  }
}

FSEventStreamEventId FSEventStreamGetLatestEventId(ConstFSEventStreamRef streamRef)
{
  if (streamRef)
  {
    return *(streamRef + 21);
  }

  v3 = fsevent_default_log(streamRef, v1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    FSEventStreamGetLatestEventId_cold_1();
  }

  return 0;
}

dev_t FSEventStreamGetDeviceBeingWatched(ConstFSEventStreamRef streamRef)
{
  if (streamRef)
  {
    return *(streamRef + 16);
  }

  v3 = fsevent_default_log(streamRef, v1);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    FSEventStreamGetDeviceBeingWatched_cold_1();
    return 0;
  }

  return result;
}

CFArrayRef FSEventStreamCopyPathsBeingWatched(ConstFSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v15 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_4();
    }

    return 0;
  }

  v3 = malloc_type_calloc(*(streamRef + 9), 8uLL, 0x6004044C4A2DFuLL);
  if (!v3)
  {
    v16 = fsevent_default_log(0, v4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_3();
    }

    return 0;
  }

  v5 = v3;
  v6 = *(streamRef + 9);
  v7 = *MEMORY[0x1E695E480];
  if (v6 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = CFStringCreateWithFileSystemRepresentation(v7, *(*(streamRef + 10) + 8 * v8));
      if (!v9)
      {
        break;
      }

      v5[v8++] = v9;
      v6 = *(streamRef + 9);
      if (v6 <= v8)
      {
        goto LABEL_7;
      }
    }

    v17 = fsevent_default_log(0, v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_2();
    }

    goto LABEL_20;
  }

LABEL_7:
  v11 = CFArrayCreate(v7, v5, v6, MEMORY[0x1E695E9C0]);
  if (!v11)
  {
    v18 = fsevent_default_log(0, v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_1();
    }

LABEL_20:
    if (*(streamRef + 9) >= 1)
    {
      v19 = 0;
      do
      {
        v20 = v5[v19];
        if (!v20)
        {
          break;
        }

        CFRelease(v20);
        ++v19;
      }

      while (*(streamRef + 9) > v19);
    }

    free(v5);
    return 0;
  }

  v13 = v11;
  if (*(streamRef + 9) >= 1)
  {
    v14 = 0;
    do
    {
      CFRelease(v5[v14++]);
    }

    while (*(streamRef + 9) > v14);
  }

  free(v5);
  return v13;
}

void FSEventStreamScheduleWithRunLoop(FSEventStreamRef streamRef, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (streamRef)
  {
    if (runLoop)
    {
      v6 = (streamRef + 192);
      if (*(streamRef + 48))
      {
LABEL_4:
        v7 = _createAndAddRunLoopSource("FSEventStreamScheduleWithRunLoop", streamRef, runLoop, runLoopMode);
        if (v7)
        {
          v9 = fsevent_default_log(v7, v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamScheduleWithRunLoop_cold_2();
          }

          mach_port_deallocate(*MEMORY[0x1E69E9A60], *v6);
          *v6 = 0;
        }

        else
        {
          *(streamRef + 28) = CFRetain(runLoop);
          *(streamRef + 29) = CFStringCreateCopy(0, runLoopMode);
          if ((*(streamRef + 184) & 4) != 0)
          {
            context.version = 0;
            context.info = streamRef;
            context.retain = _FSEventStreamRetainAndReturnSelf;
            context.release = FSEventStreamRelease;
            context.copyDescription = FSEventStreamCopyDescription;
            v15 = CFFileDescriptorCreate(0, *(streamRef + 102), 1u, cffd_callback, &context);
            *(streamRef + 52) = v15;
            if (v15)
            {
              RunLoopSource = CFFileDescriptorCreateRunLoopSource(0, v15, 0);
              *(streamRef + 53) = RunLoopSource;
              if (RunLoopSource)
              {
                CFRunLoopAddSource(runLoop, RunLoopSource, *MEMORY[0x1E695E8E0]);
              }

              else
              {
                v22 = fsevent_default_log(0, v18);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  FSEventStreamScheduleWithRunLoop_cold_3();
                }

                CFFileDescriptorInvalidate(*(streamRef + 52));
                CFRelease(*(streamRef + 52));
                *(streamRef + 52) = 0;
              }
            }

            else
            {
              v21 = fsevent_default_log(0, v16);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                FSEventStreamScheduleWithRunLoop_cold_4();
              }
            }
          }
        }

        return;
      }

      d2f_port = allocate_d2f_port("FSEventStreamScheduleWithRunLoop", streamRef);
      if (!d2f_port)
      {
        pthread_mutex_lock(&FSEvents_streamDict_mutex);
        v19 = *MEMORY[0x1E695E480];
        if (!FSEvents_streamDict)
        {
          FSEvents_streamDict = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], 0);
        }

        v20 = CFNumberCreate(v19, kCFNumberIntType, v6);
        CFDictionaryAddValue(FSEvents_streamDict, v20, streamRef);
        pthread_mutex_unlock(&FSEvents_streamDict_mutex);
        CFRelease(v20);
        goto LABEL_4;
      }

      v14 = fsevent_default_log(d2f_port, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamScheduleWithRunLoop_cold_1();
      }
    }

    else
    {
      v11 = fsevent_default_log(streamRef, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamScheduleWithRunLoop_cold_5();
      }
    }
  }

  else
  {
    v10 = fsevent_default_log(0, runLoop);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamScheduleWithRunLoop_cold_6();
    }
  }
}

uint64_t _createAndAddRunLoopSource(uint64_t a1, uint64_t a2, CFRunLoopRef rl, CFRunLoopMode mode)
{
  v5 = *(a2 + 192);
  if (!v5)
  {
    v10 = fsevent_default_log(a1, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_4();
    }

    return 5;
  }

  if (*(a2 + 200))
  {
    v8 = *(a2 + 216);
    if (!v8)
    {
      v9 = fsevent_default_log(a1, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _createAndAddRunLoopSource_cold_1();
      }

      return 5;
    }

LABEL_11:
    CFRunLoopAddSource(rl, v8, mode);
    return 0;
  }

  memset(&v18, 0, sizeof(v18));
  v11 = CFMachPortCreateWithPort(0, v5, FSEventsClientProcessMessageCallback, &v18, 0);
  *(a2 + 200) = v11;
  if (v11)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x1E695E480], v11, 0);
    *(a2 + 216) = RunLoopSource;
    if (RunLoopSource)
    {
      v8 = RunLoopSource;
      goto LABEL_11;
    }

    v17 = fsevent_default_log(0, v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_2();
    }

    CFMachPortInvalidate(*(a2 + 200));
    CFRelease(*(a2 + 200));
    *(a2 + 200) = 0;
  }

  else
  {
    v16 = fsevent_default_log(0, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_3();
    }
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a2 + 196));
  *(a2 + 196) = 0;
  return 5;
}

void cffd_callback(__CFFileDescriptor *a1, int a2, FSEventStreamRef streamRef)
{
  FSEventStreamRetain(streamRef);
  NativeDescriptor = CFFileDescriptorGetNativeDescriptor(a1);
  process_dir_events(NativeDescriptor, streamRef);
  if (*streamRef >= 2 && *(streamRef + 188))
  {
    CFFileDescriptorEnableCallBacks(a1, 1uLL);
  }

  FSEventStreamRelease(streamRef);
}

void FSEventStreamUnscheduleFromRunLoop(FSEventStreamRef streamRef, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (streamRef)
  {
    if (runLoop)
    {
      v5 = *(streamRef + 27);
      if (v5)
      {
        CFRunLoopRemoveSource(runLoop, v5, runLoopMode);
        v7 = *(streamRef + 53);
        if (v7)
        {
          CFRunLoopRemoveSource(runLoop, v7, runLoopMode);
        }

        _FSEventStreamUnscheduleFromRunLoops(streamRef);
      }

      else
      {
        v10 = fsevent_default_log(streamRef, 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamUnscheduleFromRunLoop_cold_1();
        }
      }
    }

    else
    {
      v9 = fsevent_default_log(streamRef, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamUnscheduleFromRunLoop_cold_2();
      }
    }
  }

  else
  {
    v8 = fsevent_default_log(0, runLoop);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamUnscheduleFromRunLoop_cold_3();
    }
  }
}

void __FSEventStreamSetDispatchQueue_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 188))
  {
    if (!*(v1 + 189))
    {
      process_dir_events(*(result + 40), v1);
    }
  }
}

void process_dir_events(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2[49];
  v4 = a2[50];
  v6 = a2[9];
  timeout.tv_sec = 0;
  timeout.tv_nsec = 0;
  v7 = kevent(a1, 0, 0, v4, v6, &timeout);
  if ((v7 & 0x80000000) != 0)
  {
    v38 = __error();
    v39 = *v38;
    v41 = fsevent_default_log(v38, v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      process_dir_events_cold_1(v39);
    }
  }

  else if (v7)
  {
    for (i = v7; i; --i)
    {
      if (v4->udata < 0)
      {
        udata = v4->udata & 0x7FFFFFFF;
      }

      else
      {
        udata = v4->udata;
      }

      if (udata < 0 || udata >= v6 || (v11 = v5 + 32 * udata, v7 = *(v11 + 4), (v7 & 0x80000000) != 0) || (v12 = *(v11 + 24)) == 0)
      {
        v22 = fsevent_default_log(v7, v8);
        v7 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          if (udata >= v6)
          {
            v28 = 0;
            v27 = -1;
          }

          else
          {
            v26 = v5 + 32 * udata;
            v27 = *(v26 + 4);
            v28 = *(v26 + 24);
          }

          buf.st_dev = 136316162;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2048;
          *(&buf.st_ino + 6) = udata;
          HIWORD(buf.st_gid) = 1024;
          buf.st_rdev = v6;
          *(&buf.st_rdev + 2) = 1024;
          *(&buf.st_rdev + 6) = v27;
          WORD1(buf.st_atimespec.tv_sec) = 2048;
          *(&buf.st_atimespec.tv_sec + 4) = v28;
          p_buf = &buf;
          v19 = v22;
          v20 = "%s: index in event (%ld) not valid (%d max; fdtbl %d name %p)";
          v21 = 44;
          goto LABEL_39;
        }
      }

      else
      {
        if (*v11)
        {
          v7 = watch_path("process_dir_events", a1, v12, v4, v5 + 32 * udata, udata);
          if (v7)
          {
            v23 = fsevent_default_log(v7, v8);
            v7 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              v36 = *(v11 + 24);
              buf.st_dev = 136315394;
              *&buf.st_mode = "process_dir_events";
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v36;
              _os_log_error_impl(&dword_18162D000, v23, OS_LOG_TYPE_ERROR, "%s: creation: watch_path() failed for '%s'", &buf, 0x16u);
            }
          }

          if (*v11)
          {
            goto LABEL_17;
          }

          root_dir_event_callback(a2, udata, 32);
          if ((*v11 & 8) == 0)
          {
            goto LABEL_17;
          }

          v7 = watch_all_parents("process_dir_events", a1, *(v11 + 24), v5 + 32 * udata, udata);
          if (!v7)
          {
            goto LABEL_17;
          }

          v24 = fsevent_default_log(v7, v8);
          v7 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
          if (!v7)
          {
            goto LABEL_17;
          }

          v25 = *(v11 + 24);
          buf.st_dev = 136315394;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = v25;
          p_buf = &buf;
          v19 = v24;
          v20 = "%s: creation: watch_all_parents() failed for '%s'";
LABEL_51:
          v21 = 22;
          goto LABEL_39;
        }

        fflags = v4->fflags;
        if ((fflags & 0x22) == 0)
        {
          if ((fflags & 1) == 0)
          {
            goto LABEL_17;
          }

          root_dir_event_callback(a2, udata, 32);
          v7 = watch_path("process_dir_events", a1, *(v11 + 24), v4, v5 + 32 * udata, udata);
          if (v7)
          {
            v29 = fsevent_default_log(v7, v8);
            v7 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              v37 = *(v11 + 24);
              buf.st_dev = 136315394;
              *&buf.st_mode = "process_dir_events";
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v37;
              _os_log_error_impl(&dword_18162D000, v29, OS_LOG_TYPE_ERROR, "%s: delete: watch_path() failed for '%s'", &buf, 0x16u);
            }
          }

          if ((*v11 & 8) == 0)
          {
            goto LABEL_17;
          }

          v7 = watch_all_parents("process_dir_events", a1, *(v11 + 24), v5 + 32 * udata, udata);
          if (!v7)
          {
            goto LABEL_17;
          }

          v30 = fsevent_default_log(v7, v8);
          v7 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
          if (!v7)
          {
            goto LABEL_17;
          }

          v31 = *(v11 + 24);
          buf.st_dev = 136315394;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = v31;
          p_buf = &buf;
          v19 = v30;
          v20 = "%s: delete: watch_all_parents() failed for '%s'";
          goto LABEL_51;
        }

        memset(&buf, 0, sizeof(buf));
        v14 = fcntl(v7, 50, __s1);
        if (!v14)
        {
          if (!strcmp(__s1, *(v11 + 24)))
          {
            v7 = lstat(__s1, &buf);
            if (!v7)
            {
              goto LABEL_17;
            }
          }

          root_dir_event_callback(a2, udata, 32);
          if ((*v11 & 4) != 0)
          {
            free(*(v11 + 24));
            v7 = strdup(__s1);
            *(v11 + 24) = v7;
          }

          else
          {
            v7 = watch_path("process_dir_events", a1, *(v11 + 24), v4, v5 + 32 * udata, udata);
            if (v7)
            {
              v32 = fsevent_default_log(v7, v8);
              v7 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
              if (v7)
              {
                v33 = *(v11 + 24);
                *v43 = 136315394;
                v44 = "process_dir_events";
                v45 = 2080;
                v46 = v33;
                _os_log_error_impl(&dword_18162D000, v32, OS_LOG_TYPE_ERROR, "%s: rename: watch_path() failed for '%s'", v43, 0x16u);
              }
            }
          }

          if ((*v11 & 8) == 0)
          {
            goto LABEL_17;
          }

          v7 = watch_all_parents("process_dir_events", a1, *(v11 + 24), v5 + 32 * udata, udata);
          if (!v7)
          {
            goto LABEL_17;
          }

          v34 = fsevent_default_log(v7, v8);
          v7 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
          if (!v7)
          {
            goto LABEL_17;
          }

          v35 = *(v11 + 24);
          *v43 = 136315394;
          v44 = "process_dir_events";
          v45 = 2080;
          v46 = v35;
          p_buf = v43;
          v19 = v34;
          v20 = "%s: rename: watch_all_parents() failed for '%s'";
          goto LABEL_51;
        }

        v16 = fsevent_default_log(v14, v15);
        v7 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          v17 = *(v11 + 4);
          *v43 = 136315394;
          v44 = "process_dir_events";
          v45 = 1024;
          LODWORD(v46) = v17;
          p_buf = v43;
          v19 = v16;
          v20 = "%s: failed to get the new path for fd %d";
          v21 = 18;
LABEL_39:
          _os_log_error_impl(&dword_18162D000, v19, OS_LOG_TYPE_ERROR, v20, p_buf, v21);
        }
      }

LABEL_17:
      ++v4;
    }
  }
}

void __FSEventStreamSetDispatchQueue_block_invoke_2(uint64_t a1)
{
  close(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

FSEventStreamEventId FSEventStreamFlushAsync(FSEventStreamRef streamRef)
{
  v8 = 0;
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 25))
      {
        v2 = f2d_flush_rpc(*(streamRef + 49), &v8);
        if (v2)
        {
          v4 = fsevent_default_log(v2, v3);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamFlushAsync_cold_1();
          }
        }
      }
    }

    else
    {
      v6 = fsevent_default_log(streamRef, v1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamFlushAsync_cold_2();
      }
    }
  }

  else
  {
    v5 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamFlushAsync_cold_3();
    }
  }

  return v8;
}

void FSEventStreamFlushSync(FSEventStreamRef streamRef)
{
  v21 = 0;
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 25) || *(streamRef + 45))
      {
        v3 = *(streamRef + 28);
        if (v3 || *(streamRef + 45))
        {
          v4 = *(streamRef + 27);
          if (v4 || *(streamRef + 45))
          {
            if (v3)
            {
              CFRunLoopAddSource(v3, v4, @"com.apple.FSEvents");
              v20 = 0;
                ;
              }
            }

            else
            {
              pthread_mutex_lock((streamRef + 240));
              while (*(streamRef + 190))
              {
                v7 = pthread_cond_wait((streamRef + 304), (streamRef + 240));
                if (v7)
                {
                  v9 = fsevent_default_log(v7, v8);
                  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                  {
                    FSEventStreamFlushSync_cold_1();
                  }

                  break;
                }
              }

              pthread_mutex_unlock((streamRef + 240));
            }

            v10 = f2d_flush_rpc(*(streamRef + 49), &v21);
            if (v10)
            {
              v12 = fsevent_default_log(v10, v11);
              v10 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
              if (v10)
              {
                FSEventStreamFlushSync_cold_2();
              }
            }

            if (!v21)
            {
              goto LABEL_46;
            }

            if (v21 > 0)
            {
              *(streamRef + 56) = v21;
              v20 = 0;
              if (*(streamRef + 28))
              {
                  ;
                }
              }

              else
              {
                pthread_mutex_lock((streamRef + 240));
                while (*(streamRef + 21) < *(streamRef + 56))
                {
                  v16 = pthread_cond_wait((streamRef + 304), (streamRef + 240));
                  if (v16)
                  {
                    v18 = fsevent_default_log(v16, v17);
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                    {
                      FSEventStreamFlushSync_cold_4();
                    }

                    break;
                  }
                }

                pthread_mutex_unlock((streamRef + 240));
              }

              *(streamRef + 56) = 0;
LABEL_46:
              v19 = *(streamRef + 28);
              if (v19)
              {
                CFRunLoopRemoveSource(v19, *(streamRef + 27), @"com.apple.FSEvents");
              }

              return;
            }

            v13 = fsevent_default_log(v10, v11);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              FSEventStreamFlushSync_cold_3();
            }
          }

          else
          {
            v15 = fsevent_default_log(v3, 0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              FSEventStreamFlushSync_cold_5();
            }
          }
        }

        else
        {
          v14 = fsevent_default_log(0, v1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamFlushSync_cold_6();
          }
        }
      }
    }

    else
    {
      v6 = fsevent_default_log(streamRef, v1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamFlushSync_cold_7();
      }
    }
  }

  else
  {
    v5 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamFlushSync_cold_8();
    }
  }
}

uint64_t _runRunLoopOnceForFlushSync(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = CFRunLoopRunInMode(@"com.apple.FSEvents", 5.0, 1u);
  v10 = v8;
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v14 = fsevent_default_log(v8, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        _runRunLoopOnceForFlushSync_cold_2();
      }

      return 1;
    }

    if (v8 == 2)
    {
      v11 = fsevent_default_log(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _runRunLoopOnceForFlushSync_cold_1();
      }

      return 1;
    }

LABEL_9:
    v13 = fsevent_default_log(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = a1;
      v20 = 2048;
      v21 = a2;
      v22 = 2080;
      v23 = "UNKNOWN";
      v24 = 1024;
      v25 = v10;
      _os_log_error_impl(&dword_18162D000, v13, OS_LOG_TYPE_ERROR, "%s(streamRef = %p): ERROR: CFRunLoopRunInMode() => %s (%d)", &v18, 0x26u);
    }

    return 1;
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v15 = *a3;
  if ((*a3 & ~(-1 << *a4)) == 0)
  {
    v16 = fsevent_default_log(v8, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = (*a3 + 1) * 5.0;
      v18 = 136316162;
      v19 = a1;
      v20 = 2048;
      v21 = a2;
      v22 = 2080;
      v23 = "The run loop timed out.";
      v24 = 1024;
      v25 = 3;
      v26 = 2048;
      v27 = v17;
      _os_log_error_impl(&dword_18162D000, v16, OS_LOG_TYPE_ERROR, "%s(streamRef = %p): WARNING: CFRunLoopRunInMode() => %s (%d) (%.2f seconds)", &v18, 0x30u);
    }

    ++*a4;
    v15 = *a3;
  }

  result = 0;
  *a3 = v15 + 1;
  return result;
}

FSEventStreamEventId FSEventsGetLastEventIdForDeviceBeforeTime(dev_t dev, CFAbsoluteTime time)
{
  v6 = 0;
  v4 = FSEvents_connect("FSEventsGetLastEventIdForDeviceBeforeTime");
  result = 0;
  if (!v4)
  {
    f2d_get_last_event_for_device_before_time_rpc(FSEvents_f2d_public_port, dev, time, &v6);
    return v6;
  }

  return result;
}

Boolean FSEventsPurgeEventsForDeviceUpToEventId(dev_t dev, FSEventStreamEventId eventId)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (FSEvents_connect("FSEventsPurgeEventsForDeviceUpToEventId"))
  {
    goto LABEL_2;
  }

  v18[0] = 0;
  v5 = getfsstat(0, 0, 2);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = 2168 * v5;
    v8 = malloc_type_malloc(2168 * v5, 0x100004087E0324AuLL);
    if (v8)
    {
      v9 = v8;
      v10 = getfsstat(v8, v7, 2);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = v10 >= v6 ? v6 : v10;
        if (v11)
        {
          f_mntonname = v9->f_mntonname;
          while (*(f_mntonname - 10) != dev)
          {
            f_mntonname += 2168;
            if (!--v11)
            {
              goto LABEL_15;
            }
          }

          __strlcpy_chk();
        }
      }

LABEL_15:
      free(v9);
    }
  }

  syslog(2, "dev %d (%s) : purging events up to event id %lld", dev, v18, eventId);
  v13 = f2d_purge_events_for_device_up_to_event_id_rpc(FSEvents_f2d_public_port, dev, eventId, &v17);
  if (!v13)
  {
    return v17 == 0;
  }

  v15 = fsevent_default_log(v13, v14);
  v4 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    FSEventsPurgeEventsForDeviceUpToEventId_cold_1();
LABEL_2:
    LOBYTE(v4) = 0;
  }

  return v4;
}

void FSEventStreamShow(ConstFSEventStreamRef streamRef)
{
  v2 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "FSEventStreamRef @ %p:\n", streamRef);
  if (streamRef)
  {
    fprintf(*v2, "   allocator = %p\n", *(streamRef + 1));
    fprintf(*v2, "   callback = %p\n", *(streamRef + 2));
    fprintf(*v2, "   f2d_private_port = 0x%x\n", *(streamRef + 49));
    fprintf(*v2, "   context = {%lu, %p, %p, %p, %p}\n", *(streamRef + 3), *(streamRef + 4), *(streamRef + 5), *(streamRef + 6), *(streamRef + 7));
    fprintf(*v2, "   numPathsToWatch = %lu\n", *(streamRef + 9));
    fprintf(*v2, "   pathsToWatch = %p\n", *(streamRef + 10));
    if (*(streamRef + 9) >= 1)
    {
      v3 = 0;
      do
      {
        fprintf(*v2, "        pathsToWatch[%d] = '%s'\n", v3, *(*(streamRef + 10) + 8 * v3));
        ++v3;
      }

      while (*(streamRef + 9) > v3);
    }

    fprintf(*v2, "   numPathsToExclude = %lu\n", *(streamRef + 12));
    if (*(streamRef + 12) >= 1)
    {
      v4 = 0;
      do
      {
        fprintf(*v2, "        pathsToExclude[%d] = '%s'\n", v4, *(streamRef + v4 + 13));
        ++v4;
      }

      while (*(streamRef + 12) > v4);
    }

    fprintf(*v2, "   latestEventId = %lld\n", *(streamRef + 21));
    fprintf(*v2, "   latency = %llu (microseconds)\n", *(streamRef + 22));
    fprintf(*v2, "   flags = 0x%08x\n", *(streamRef + 46));
    fprintf(*v2, "   runLoop = %p\n", *(streamRef + 28));
    fprintf(*v2, "   runLoopMode = %p\n", *(streamRef + 29));
  }
}

void server_gone_StreamRef_callback(uint64_t a1)
{
  if (a1 && !*(a1 + 189) && (*(a1 + 360) || *(a1 + 224)))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 192));
    pthread_mutex_lock(&FSEvents_streamDict_mutex);
    CFDictionaryRemoveValue(FSEvents_streamDict, v3);
    pthread_mutex_unlock(&FSEvents_streamDict_mutex);
    CFRelease(v3);
    pthread_mutex_lock(&FSEvents_f2d_public_port_mutex);
    v4 = MEMORY[0x1E69E9A60];
    mach_port_deallocate(*MEMORY[0x1E69E9A60], FSEvents_f2d_public_port);
    FSEvents_f2d_public_port = 0;
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    v5 = *(a1 + 360);
    if (v5)
    {
      cancel_source((a1 + 360), (a1 + 368));
      *(a1 + 192) = 0;
    }

    v6 = *(a1 + 376);
    if (v6)
    {
      cancel_source((a1 + 376), (a1 + 384));
      *(a1 + 196) = 0;
    }

    v7 = *(a1 + 216);
    if (v7)
    {
      CFRunLoopRemoveSource(*(a1 + 224), v7, *(a1 + 232));
      CFRelease(*(a1 + 216));
      *(a1 + 216) = 0;
    }

    v8 = *(a1 + 208);
    if (v8)
    {
      CFMachPortSetInvalidationCallBack(v8, 0);
      CFMachPortInvalidate(*(a1 + 208));
      CFRelease(*(a1 + 208));
      *(a1 + 208) = 0;
    }

    if (!v6)
    {
      mach_port_deallocate(*v4, *(a1 + 196));
      *(a1 + 196) = 0;
    }

    v9 = *(a1 + 200);
    if (v9)
    {
      CFMachPortInvalidate(v9);
      CFRelease(*(a1 + 200));
      *(a1 + 200) = 0;
    }

    if (!v5)
    {
      dispose_d2f_port(*(a1 + 192));
      *(a1 + 192) = 0;
    }

    v10 = FSEvents_connect("server_gone_StreamRef_callback");
    if (v10)
    {
      v12 = fsevent_default_log(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        server_gone_StreamRef_callback_cold_1();
      }
    }

    else
    {
      d2f_port = allocate_d2f_port("server_gone_StreamRef_callback", a1);
      if (d2f_port)
      {
        v15 = fsevent_default_log(d2f_port, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          server_gone_StreamRef_callback_cold_2();
        }
      }

      else
      {
        v16 = register_with_server(a1, "server_gone_StreamRef_callback", *(a1 + 192), *(a1 + 64), *(a1 + 72), *(a1 + 80), -1, *(a1 + 176), *(a1 + 184), (a1 + 196));
        if (v16)
        {
          v18 = fsevent_default_log(v16, v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            server_gone_StreamRef_callback_cold_3();
          }
        }

        else
        {
          v19 = CFNumberCreate(v2, kCFNumberIntType, (a1 + 192));
          pthread_mutex_lock(&FSEvents_streamDict_mutex);
          CFDictionaryAddValue(FSEvents_streamDict, v19, a1);
          pthread_mutex_unlock(&FSEvents_streamDict_mutex);
          CFRelease(v19);
          if (v5)
          {
            if (create_d2f_port_source(a1))
            {
              resume_source(*(a1 + 360), (a1 + 368));
            }

            if (create_f2d_private_port_source(a1))
            {
              resume_source(*(a1 + 376), (a1 + 384));
            }
          }

          else if (*(a1 + 224))
          {
            context.version = 0;
            context.info = a1;
            context.retain = _FSEventStreamRetainAndReturnSelf;
            context.release = FSEventStreamRelease;
            context.copyDescription = FSEventStreamCopyDescription;
            v20 = CFMachPortCreateWithPort(0, *(a1 + 196), FSEventsClientPortCallback, &context, 0);
            *(a1 + 208) = v20;
            if (v20)
            {
              CFMachPortSetInvalidationCallBack(v20, server_gone_callback);
              _createAndAddRunLoopSource("server_gone_StreamRef_callback", a1, *(a1 + 224), *(a1 + 232));
            }

            else
            {
              v22 = fsevent_default_log(0, v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                server_gone_StreamRef_callback_cold_4();
              }
            }
          }

          FSEventStreamRetain(a1);
          if (*(a1 + 72) >= 1)
          {
            v23 = 0;
            do
            {
              root_dir_event_callback(a1, v23++, 5);
            }

            while (*(a1 + 72) > v23);
          }

          FSEventStreamRelease(a1);
        }
      }
    }
  }
}

void root_dir_event_callback(uint64_t a1, int a2, int a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v6 = caller_path(*(*(a1 + 80) + 8 * a2), *(*(a1 + 88) + 4 * a2));
  v29 = v6;
  v28 = a3;
  v32[0] = 0;
  v7 = *(a1 + 184);
  if ((v7 & 0x40) != 0)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x1E695E480], v6);
    if (v9)
    {
      v11 = v9;
      values = v9;
      keys = @"path";
      cf = CFDictionaryCreate(v8, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (cf)
      {
        v13 = CFArrayCreate(v8, &cf, 1, MEMORY[0x1E695E9C0]);
        if (v13)
        {
          v15 = v13;
          (*(a1 + 16))(a1, *(a1 + 32), 1, v13, &v28, v32);
          CFRelease(v15);
        }

        else
        {
          v25 = fsevent_default_log(0, v14);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            root_dir_event_callback_cold_1();
          }
        }

        CFRelease(cf);
      }

      else
      {
        v23 = fsevent_default_log(0, v12);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          root_dir_event_callback_cold_2();
        }
      }

      v21 = v11;
      goto LABEL_22;
    }

    v22 = fsevent_default_log(0, v10);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    root_dir_event_callback_cold_3();
    return;
  }

  if ((v7 & 1) == 0)
  {
    v3(a1, *(a1 + 32), 1, &v29, &v28, v32);
    return;
  }

  v16 = *MEMORY[0x1E695E480];
  cf = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x1E695E480], v6);
  if (!cf)
  {
    v24 = fsevent_default_log(0, v17);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  v18 = CFArrayCreate(v16, &cf, 1, MEMORY[0x1E695E9C0]);
  if (v18)
  {
    v20 = v18;
    (*(a1 + 16))(a1, *(a1 + 32), 1, v18, &v28, v32);
    CFRelease(v20);
    v21 = cf;
LABEL_22:
    CFRelease(v21);
    return;
  }

  v26 = fsevent_default_log(0, v19);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    root_dir_event_callback_cold_1();
  }
}

uint64_t watch_path(const char *a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  v68 = *MEMORY[0x1E69E9840];
  memset(&v55, 0, sizeof(v55));
  v11 = -1;
  memset(&v54, 0, sizeof(v54));
  v12 = 1;
  v13 = 0xFFFFFFFFLL;
  v14 = 1;
  while (1)
  {
    v15 = v10;
    v10 = v12;
    realpath_DARWIN_EXTSN(a3, &__s);
    if (v66)
    {
      v16 = 0;
      while (1)
      {
        v17 = open(&__s, 0x8000);
        if ((v17 & 0x80000000) == 0)
        {
          break;
        }

        __error();
        my_dirname(&__s, v67);
        realpath_DARWIN_EXTSN(v67, &__s);
        ++v16;
        if (!v66)
        {
          goto LABEL_8;
        }
      }

      v11 = v17;
LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

    v16 = 0;
    if (v11 < 0)
    {
LABEL_8:
      v18 = open(&__s, 0x8000);
      v11 = v18;
      if ((v18 & 0x80000000) != 0)
      {
        v41 = fsevent_default_log(v18, v19);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          watch_path_cold_2();
        }

        v43 = __error();
        v45 = fsevent_default_log(v43, v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          watch_path_cold_3();
        }

        v33 = __error();
        v13 = *v33;
        goto LABEL_47;
      }

      goto LABEL_11;
    }

LABEL_12:
    fcntl(v11, 2, 1);
    if (v14 || (v20 = open(&__s, 0), v20 < 0))
    {
      v24 = v15;
    }

    else
    {
      v21 = v20;
      fstat(v11, &v55);
      fstat(v21, &v54);
      close(v21);
      v22 = close(v11);
      if (v55.st_ino == v54.st_ino)
      {
        v46 = fsevent_default_log(v22, v23);
        v33 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (v33)
        {
          watch_path_cold_1();
        }

        v11 = -1;
        goto LABEL_47;
      }

      v24 = v15;
      v11 = -1;
    }

    *a4 = v11;
    *(a4 + 8) = 0x270021FFFCLL;
    *(a4 + 16) = 0;
    *(a4 + 24) = a6;
    v25 = kevent(a2, a4, 1, 0, 0, 0);
    v13 = v25;
    if ((v25 & 0x80000000) != 0)
    {
      v27 = fsevent_default_log(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v50 = *(a5 + 24);
        v37 = __error();
        v38 = strerror(*v37);
        *buf = 136316162;
        v57 = a1;
        v58 = 2080;
        p_s = "watch_path";
        v60 = 1024;
        v61 = v11;
        v62 = 2080;
        *v63 = v50;
        *&v63[8] = 2080;
        v64[0] = v38;
        _os_log_error_impl(&dword_18162D000, v27, OS_LOG_TYPE_ERROR, "%s: %s: error trying to add kqueue for fd %d (%s; %s)", buf, 0x30u);
      }
    }

    v28 = *(a5 + 4);
    if ((v28 & 0x80000000) == 0)
    {
      *a4 = v28;
      *(a4 + 8) = 0x270002FFFCLL;
      *(a4 + 16) = 0;
      *(a4 + 24) = a6;
      v29 = kevent(a2, a4, 1, 0, 0, 0);
      v13 = v29;
      if ((v29 & 0x80000000) != 0)
      {
        v31 = fsevent_default_log(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v51 = *(a5 + 4);
          v39 = __error();
          v40 = strerror(*v39);
          *buf = 136315906;
          v57 = a1;
          v58 = 2080;
          p_s = "watch_path";
          v60 = 1024;
          v61 = v51;
          v62 = 2080;
          *v63 = v40;
          _os_log_error_impl(&dword_18162D000, v31, OS_LOG_TYPE_ERROR, "%s: %s: error removing fd %d from kqueue (%s)", buf, 0x26u);
        }
      }

      close(*(a5 + 4));
    }

    v32 = *a5 & 0xFFFFFFFE;
    if (v16)
    {
      ++v32;
    }

    *a5 = v32;
    *(a5 + 4) = v11;
    v33 = open(&__s, 0);
    v35 = v33;
    if ((v33 & 0x80000000) != 0)
    {
      break;
    }

    fstat(v11, &v55);
    fstat(v35, &v54);
    v33 = close(v35);
    if (v55.st_ino == v54.st_ino)
    {
      goto LABEL_41;
    }

    v36 = fsevent_default_log(v33, v34);
    v33 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      *buf = 136315394;
      v57 = "watch_path";
      v58 = 2080;
      p_s = &__s;
      _os_log_error_impl(&dword_18162D000, v36, OS_LOG_TYPE_ERROR, "%s: watching path(%s) renamed while registering watchroot", buf, 0x16u);
    }

LABEL_32:
    v14 = v35 >= 0;
    v12 = v10 + 1;
    if (v10 == 1000)
    {
      v10 = 1001;
      goto LABEL_47;
    }
  }

  if ((*a5 & 5) != 4)
  {
    goto LABEL_32;
  }

  v33 = fcntl(*(a5 + 4), 50, buf);
  if (!v33)
  {
    free(*(a5 + 24));
    v33 = strdup(buf);
    *(a5 + 24) = v33;
  }

LABEL_41:
  if (v24 != 999 && (v11 & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_47:
  v47 = fsevent_default_log(v33, v34);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v49 = strerror(v13);
    *buf = 136316418;
    v57 = "watch_path";
    v58 = 2080;
    p_s = a3;
    v60 = 1024;
    v61 = v11;
    v62 = 1024;
    *v63 = v10;
    *&v63[4] = 1024;
    *&v63[6] = v13;
    LOWORD(v64[0]) = 2080;
    *(v64 + 2) = v49;
    _os_log_error_impl(&dword_18162D000, v47, OS_LOG_TYPE_ERROR, "%s: watching path (%s) fd(%d) retry (%d) failed (%d):(%s)", buf, 0x32u);
  }

  return v13;
}

uint64_t watch_all_parents(uint64_t a1, uint64_t kq, char *__s, uint64_t a4, uint64_t a5)
{
  v8 = kq;
  v42 = *MEMORY[0x1E69E9840];
  memset(&changelist, 0, sizeof(changelist));
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = *(a4 + 8);
    if (v11 >= 1)
    {
      for (i = 0; i < v11; ++i)
      {
        if ((*(*(a4 + 16) + 4 * i) & 0x80000000) == 0)
        {
          changelist.ident = *(*(a4 + 16) + 4 * i);
          *&changelist.filter = 0x200002FFFCLL;
          changelist.data = 0;
          changelist.udata = (a5 | 0x80000000);
          kevent(v8, &changelist, 1, 0, 0, 0);
          close(*(*(a4 + 16) + 4 * i));
          v11 = *(a4 + 8);
        }
      }

      v10 = *(a4 + 16);
    }

    free(v10);
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
  }

  if (__s && *__s)
  {
    my_dirname(__s, __sa);
    v13 = v41;
    realpath_DARWIN_EXTSN(__sa, v41);
    v14 = 0;
    do
    {
      while (1)
      {
        v16 = *v13++;
        v15 = v16;
        if (v16 != 47)
        {
          break;
        }

        ++v14;
      }
    }

    while (v15);
    v19 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
    *(a4 + 16) = v19;
    if (v19)
    {
      v20 = 0;
      v21 = v14;
      *(a4 + 8) = v14;
      do
      {
        v22 = open(v41, 0x8000);
        *(*(a4 + 16) + 4 * v20) = v22;
        if ((v22 & 0x80000000) == 0)
        {
          fcntl(v22, 2, 1);
          changelist.ident = *(*(a4 + 16) + 4 * v20);
          *&changelist.filter = 0x200021FFFCLL;
          changelist.data = 0;
          changelist.udata = (a5 | 0x80000000);
          v23 = kevent(v8, &changelist, 1, 0, 0, 0);
          if ((v23 & 0x80000000) != 0)
          {
            v25 = fsevent_default_log(v23, v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = *(*(a4 + 16) + 4 * v20);
              v27 = __error();
              v28 = strerror(*v27);
              *buf = 136316162;
              v31 = a1;
              v32 = 2080;
              v33 = "watch_all_parents";
              v34 = 1024;
              v35 = v26;
              v36 = 2080;
              v37 = v41;
              v38 = 2080;
              v39 = v28;
              _os_log_error_impl(&dword_18162D000, v25, OS_LOG_TYPE_ERROR, "%s: %s: error trying to add kqueue for fd %d (%s; %s)", buf, 0x30u);
            }
          }
        }

        __strcpy_chk();
        my_dirname(__sa, v41);
        result = 0;
        ++v20;
      }

      while (v20 < v21 && v41[1]);
    }

    else
    {
      return 12;
    }
  }

  else
  {
    v17 = fsevent_default_log(v10, kq);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (result)
    {
      watch_all_parents_cold_1();
      return 0;
    }
  }

  return result;
}

char *my_dirname(char *__s, char *a2)
{
  if (__s && *__s && (v4 = strrchr(__s, 47)) != 0)
  {
    if (v4 > __s)
    {
      while (*v4 == 47)
      {
        if (--v4 <= __s)
        {
          v4 = __s;
          break;
        }
      }
    }

    v5 = v4 - __s;
    if (v4 - __s > 1023)
    {
      strncpy(a2, __s, 0x3FFuLL);
      a2[1023] = 0;
    }

    else
    {
      v6 = v5 + 1;
      strncpy(a2, __s, v5 + 1);
      a2[v6] = 0;
    }
  }

  else
  {
    strcpy(a2, "./");
  }

  return a2;
}

uint64_t FSEventsClientProcessMessageCallback(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = *MEMORY[0x1E69E9840];
  return FSEventsD2F_server(v1, v3);
}

void FSEventStreamStart_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamStart_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamStart_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void register_with_server_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void register_with_server_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void register_with_server_cold_3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void register_with_server_cold_4()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  mach_error_string(v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void register_with_server_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void register_with_server_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void register_with_server_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamRetainAndReturnSelf_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamRelease_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamCopyDescription_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamStop_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamStop_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void dispose_f2d_private_port_cold_1()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void dispose_f2d_private_port_cold_2(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void implementation_callback_rpc_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void implementation_callback_rpc_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void implementation_callback_rpc_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void implementation_callback_rpc_cold_4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void implementation_callback_rpc_cold_7(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "implementation_callback_rpc";
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "%s: ERROR: CFNumberCreate() => NULL\n", buf, 0xCu);
}

void implementation_callback_rpc_cold_11()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamRetain_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamGetLatestEventId_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamGetDeviceBeingWatched_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamCopyPathsBeingWatched_cold_4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamCreate_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void _FSEventStreamCreate_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void _FSEventStreamCreate_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamCreate_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _FSEventStreamCreate_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamCreate_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void _FSEventStreamCreate_cold_9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamCreateRelativeToDevice_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamDeallocate_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamDeallocate_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamDeallocate_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _FSEventStreamDeallocate_cold_4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamScheduleWithRunLoop_cold_1()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamScheduleWithRunLoop_cold_2()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamScheduleWithRunLoop_cold_5()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamScheduleWithRunLoop_cold_6()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void allocate_d2f_port_cold_1()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  mach_error_string(v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void _createAndAddRunLoopSource_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _createAndAddRunLoopSource_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _createAndAddRunLoopSource_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _createAndAddRunLoopSource_cold_4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamUnscheduleFromRunLoop_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamUnscheduleFromRunLoop_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamUnscheduleFromRunLoop_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamSetDispatchQueue_cold_1()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamSetDispatchQueue_cold_4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void process_dir_events_cold_1(int a1)
{
  strerror(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamFlushAsync_cold_1()
{
  OUTLINED_FUNCTION_14();
  mach_error_string(v0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void FSEventStreamFlushAsync_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushAsync_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void FSEventStreamFlushSync_cold_2()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  mach_error_string(v2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

void FSEventStreamFlushSync_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void FSEventStreamFlushSync_cold_5()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_6()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_7()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamFlushSync_cold_8()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _runRunLoopOnceForFlushSync_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _runRunLoopOnceForFlushSync_cold_2()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void FSEventStreamInvalidate_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamInvalidate_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventStreamInvalidate_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void dispose_d2f_port_cold_1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void FSEvents_connect_cold_1()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_16(v0, v1);
  bootstrap_strerror(v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void FSEventsCopyUUIDForDevice_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void FSEventsPurgeEventsForDeviceUpToEventId_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void server_gone_StreamRef_callback_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void server_gone_StreamRef_callback_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void root_dir_event_callback_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void root_dir_event_callback_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void watch_path_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void watch_path_cold_2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void watch_path_cold_3()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

void watch_all_parents_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void receive_and_dispatch_rcv_msg_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void receive_and_dispatch_rcv_msg_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

uint64_t f2d_flush_rpc(int a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x34u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 66101)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v11;
                return v7;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v8 = 1;
            }

            else
            {
              v8 = *&msg[32] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  return v7;
}

uint64_t f2d_get_last_event_for_device_before_time_rpc(int a1, int a2, uint64_t a3, void *a4)
{
  *&msg[20] = 0u;
  v13 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  *&v13 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x2Cu, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 66104)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                *a4 = v13;
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t f2d_purge_events_for_device_up_to_event_id_rpc(int a1, int a2, uint64_t a3, _DWORD *a4)
{
  memset(&v13[16], 0, 28);
  *v13 = 0u;
  *&v13[20] = *MEMORY[0x1E69E99E0];
  *&v13[28] = a2;
  *&v13[32] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13[4] = a1;
  *&v13[8] = special_reply_port;
  v12 = 5395;
  *&v13[12] = 0x101D500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = *&v13[8];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x2Cu, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&v13[16] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&v13[16] == 66105)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (*v13 == 40)
          {
            if (!*&v13[4])
            {
              v9 = *&v13[28];
              if (!*&v13[28])
              {
                *a4 = *&v13[32];
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*v13 == 36)
          {
            if (*&v13[4])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&v13[28] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&v13[28];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

CFTypeRef _XCFRetain(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    _XCFRetain_cold_1();
  }

  return CFRetain(cf);
}

void _XCFRelease(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    _XCFRelease_cold_1();
  }

  CFRelease(cf);
}

uint64_t _XCFStringHashCaseInsensitive(const __CFString *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    *v11 = 0u;
    if (a1 && (v6 = CFGetTypeID(a1), CStringPtr = CFStringGetTypeID(), v6 == CStringPtr))
    {
      Length = CFStringGetLength(a1);
      CStringPtr = XCFBufInitWithCFStringRange(&v10, a1, 0, Length, 0);
      if (CStringPtr)
      {
        v8 = _XCFHash8BitCaseInsensitive(v10, DWORD2(v10));
        if (v11[0])
        {
          free(v11[0]);
        }

        return v8;
      }
    }

    else
    {
      *&v10 = &v11[1] + 4;
      DWORD2(v10) = 0;
      LODWORD(v11[1]) = 127;
      v11[0] = 0;
      BYTE4(v11[1]) = 0;
    }

    v9 = _LSDefaultLog(CStringPtr);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _XCFStringHashCaseInsensitive_cold_1(v9);
    }

    return 0;
  }

  v3 = CStringPtr;
  v4 = strlen(CStringPtr);

  return _XCFHash8BitCaseInsensitive(v3, v4);
}

CFArrayRef XCFArrayCreateWithSet(const __CFAllocator *a1, CFSetRef theSet, const CFArrayCallBacks *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(theSet);
  v7 = Count;
  v8 = v11;
  if (Count >= 0x101)
  {
    v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  memset(v11, 0, 512);
  CFSetGetValues(theSet, v8);
  v9 = CFArrayCreate(a1, v8, v7, a3);
  if (v8 != v11)
  {
    free(v8);
  }

  return v9;
}

CFSetRef XCFSetCreateWithArray(const __CFAllocator *a1, CFArrayRef theArray, const CFSetCallBacks *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  v7 = Count;
  v8 = v11;
  if (Count >= 0x101)
  {
    v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  memset(v11, 0, 512);
  v13.location = 0;
  v13.length = v7;
  CFArrayGetValues(theArray, v13, v8);
  v9 = CFSetCreate(a1, v8, v7, a3);
  if (v8 != v11)
  {
    free(v8);
  }

  return v9;
}

CFNumberRef XCFNumberCreateWithHFSTypeAndCreatorCodes(unsigned int a1, unsigned int a2)
{
  if (a2 == 1061109567)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  if (a1 == 1061109567)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  valuePtr = v3 | (v2 << 32);
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
}

const __CFNumber *XCFNumberGetHFSTypeAndCreatorCodes(const __CFNumber *result, int *a2, _DWORD *a3)
{
  if (result)
  {
    valuePtr = 0;
    result = CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    if (a2)
    {
      v5 = valuePtr;
      if (!valuePtr)
      {
        v5 = 1061109567;
      }

      *a2 = v5;
    }

    if (a3)
    {
      v6 = HIDWORD(valuePtr);
      if (!HIDWORD(valuePtr))
      {
        LODWORD(v6) = 1061109567;
      }

      *a3 = v6;
    }
  }

  return result;
}

uint64_t XCFBufInitWithCFStringInlineBuffer(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 144))
  {
    *(a1 + 24) = 127;
    *(a1 + 16) = 0;
    *(a1 + 28) = 0;
    v3 = (*(a2 + 144) + *(a2 + 152));
    *a1 = v3;
    v4 = *(a2 + 160);
    *(a1 + 8) = v4;
    if (!a3 || !v4)
    {
      return 1;
    }

    v4 = v4;
    while (1)
    {
      v5 = *v3++;
      if ((v5 - 65) <= 0x19)
      {
        break;
      }

      if (!--v4)
      {
        return 1;
      }
    }
  }

  return XCFBufInitWithCFStringRange(a1, *(a2 + 128), *(a2 + 152), *(a2 + 160), a3);
}

CFURLRef XCFBundleCopyFolderURL(__CFBundle *a1, const __CFString *a2)
{
  result = CFBundleCopySupportFilesDirectoryURL(a1);
  if (result)
  {
    v5 = result;
    v6 = CFGetAllocator(a1);
    v7 = CFURLCreateWithString(v6, a2, v5);
    CFRelease(v5);
    return v7;
  }

  return result;
}

const __CFString *XCFURLCopyRelativeFileSystemPath(const __CFURL *a1, const __CFURL *a2, CFURLPathStyle a3)
{
  v6 = CFURLCopyAbsoluteURL(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFURLCopyFileSystemPath(v6, a3);
  CFRelease(v7);
  if (!v8)
  {
    return 0;
  }

  v9 = CFURLCopyAbsoluteURL(a2);
  if (!v9)
  {
    CFRelease(v8);
    return 0;
  }

  v10 = v9;
  v11 = CFURLHasDirectoryPath(v9);
  v12 = CFURLCopyFileSystemPath(v10, a3);
  CFRelease(v10);
  Length = CFStringGetLength(v8);
  v14 = CFStringGetLength(v12);
  if (Length > v14 || (v15 = v14, v23.location = 0, v23.length = Length, CFStringCompareWithOptions(v12, v8, v23, 0)))
  {
    Copy = 0;
  }

  else
  {
    if (v15 > Length && CFStringGetCharacterAtIndex(v12, Length) == 47)
    {
      ++Length;
    }

    v18 = CFGetAllocator(a1);
    v24.length = v15 - Length;
    v24.location = Length;
    v19 = CFStringCreateWithSubstring(v18, v12, v24);
    Copy = v19;
    if (v11)
    {
      if (!CFStringHasSuffix(v19, @"/"))
      {
        v20 = *MEMORY[0x1E695E480];
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, Copy);
        if (MutableCopy)
        {
          v22 = MutableCopy;
          CFStringAppend(MutableCopy, @"/");
          CFRelease(Copy);
          Copy = CFStringCreateCopy(v20, v22);
          CFRelease(v22);
        }
      }
    }
  }

  CFRelease(v8);
  CFRelease(v12);
  return Copy;
}

void XCFURLEnumerate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    XCFURLEnumerate_cold_1();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  XCFURLEnumerate_cold_2();
LABEL_3:
  v9 = MEMORY[0x1865D57B0](*MEMORY[0x1E695E480], a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    v17 = 0;
    while (1)
    {
      v15 = 0;
      v16 = 0;
      v11 = MEMORY[0x1865D57C0](v10, &v16, &v15);
      v12 = v11;
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v14 = _LSDefaultLog(3);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138478083;
            v19 = a1;
            v20 = 2114;
            v21 = v15;
            _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "Error (non-fatal) enumerating %{private}@: %{public}@", buf, 0x16u);
          }

          (v8)[2](v8, v10, 0, v15, &v17);
          goto LABEL_18;
        }

        if (v11 != 4)
        {
LABEL_11:
          v13 = _LSDefaultLog(v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138478083;
            v19 = a1;
            v20 = 2048;
            v21 = v12;
            _os_log_debug_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEBUG, "Unexpected CFURLEnumeratorResult when enumerating %{private}@: %lli", buf, 0x16u);
          }
        }
      }

      else if (v11 == 1)
      {
        (v8)[2](v8, v10, v16, 0, &v17);
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_11;
        }

        v17 = 1;
      }

LABEL_18:

      if (v17)
      {
        CFRelease(v10);
        break;
      }
    }
  }
}

id _LSGetFrontBoardOptionsDictionaryClasses(uint64_t a1)
{
  if (_LSGetFrontBoardOptionsDictionaryClasses_once != -1)
  {
    _LSGetFrontBoardOptionsDictionaryClasses_cold_1();
  }

  v2 = _LSGetFrontBoardOptionsDictionaryClasses_result;

  return v2;
}

uint64_t _XCFHash8BitCaseInsensitive(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 0x81)
  {
    if (a2)
    {
      v5 = a2;
      v3 = a2;
      do
      {
        v6 = *a1++;
        v3 = 17 * v3 + (v6 & 0xFFFFFFDF);
        --v5;
      }

      while (v5);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v3 = 17 * v3 + (a1[v2++] & 0xDF);
    }

    while (v2 != 64);
    v4 = -64;
    do
    {
      v3 = 17 * v3 + (a1[a2 + v4++] & 0xDF);
    }

    while (v4);
  }

  return (v3 << (a2 & 7)) + v3;
}

Class initBSServiceConnectionEndpoint()
{
  if (!BoardServicesLibrary_frameworkLibrary)
  {
    BoardServicesLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/BoardServices.framework/BoardServices", 2);
  }

  result = objc_getClass("BSServiceConnectionEndpoint");
  classBSServiceConnectionEndpoint = result;
  getBSServiceConnectionEndpointClass = BSServiceConnectionEndpointFunction;
  return result;
}

Class initUISClickAttribution()
{
  if (!UIKitServicesLibrary_frameworkLibrary)
  {
    UIKitServicesLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
  }

  result = objc_getClass("UISClickAttribution");
  classUISClickAttribution = result;
  getUISClickAttributionClass = UISClickAttributionFunction;
  return result;
}

Class initUISPasteSharingToken()
{
  if (!UIKitServicesLibrary_frameworkLibrary)
  {
    UIKitServicesLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
  }

  result = objc_getClass("UISPasteSharingToken");
  classUISPasteSharingToken = result;
  getUISPasteSharingTokenClass = UISPasteSharingTokenFunction;
  return result;
}

uint64_t CSBindableKeyMapNextKey(uint64_t a1, uint64_t a2)
{
  Header = CSMapGetHeader();
  if (!Header)
  {
    return 0;
  }

  v3 = *Header;
  CSMapWriteToHeader();
  return v3;
}

id fileSystemRealPath(void *a1, void *a2)
{
  if (a1 && [a1 length])
  {
    operator new();
  }

  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-43 userInfo:0];
    v4 = v3;
    *a2 = v3;
  }

  return 0;
}

uint64_t FSNodeCreateWithURL(uint64_t a1, uint64_t a2, id *a3)
{
  v3 = 4294967246;
  if (a1 && a3)
  {
    v9 = 0;
    v5 = [[FSNode alloc] initWithURL:a1 flags:a2 error:&v9];
    v6 = v9;
    v7 = v6;
    if (v5)
    {
      objc_storeStrong(a3, v5);
      v3 = 0;
    }

    else
    {
      v3 = _LSGetOSStatusFromNSError(v6);
    }
  }

  return v3;
}

void sub_181685CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _FSNodeGetNonFictionalDeviceNumber(FSNode *a1)
{
  v8 = 0;
  v7 = 0;
  v1 = [(FSNode *)a1 getDeviceNumber:&v8 error:&v7];
  v2 = v7;
  v3 = v2;
  if (v1)
  {
    v4 = v8;
  }

  else
  {
    v5 = _LSDefaultLog(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _FSNodeGetNonFictionalDeviceNumber(v3, v5);
    }

    v4 = 0;
  }

  return v4;
}

void sub_18168656C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  CFRelease(v10);

  _Unwind_Resume(a1);
}

id anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = &unk_1EEF61C98;
  v9 = a2;
  v11 = &v8;
  v3 = LaunchServices::LSStatePlist::modify(a1, &v8);
  std::__function::__value_func<objc_object * ()(objc_object *,NSError *)>::~__value_func[abi:nn200100](&v8);
  v4 = os_transaction_create();
  v5 = _LSServer_GetIOQueue(v4);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = ___ZN12_GLOBAL__N_143LSDefaultApplicationQueryServerStateManager12scheduleSaveEv_block_invoke;
  v11 = &unk_1E6A18D78;
  v13 = a1;
  v6 = v4;
  v12 = v6;
  _LSDispatchCoalescedAfterDelay((a1 + 64), v5, &v8, 1.0);

  return v3;
}

uint64_t std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_181689328(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL anonymous namespace::LSDefaultApplicationQueryServerStateManager::validatePlist(_anonymous_namespace_::LSDefaultApplicationQueryServerStateManager *this, objc_object *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v16 = this;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v16;
    v2 = [(_anonymous_namespace_::LSDefaultApplicationQueryServerStateManager *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v2)
    {
      v3 = *v23;
      v4 = 1;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v23 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v22 + 1) + 8 * i);
          if (_NSIsNSString())
          {
            v7 = [(_anonymous_namespace_::LSDefaultApplicationQueryServerStateManager *)obj objectForKey:v6];
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            v8 = v7;
            v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v9)
            {
              v10 = *v19;
              do
              {
                for (j = 0; j != v9; ++j)
                {
                  if (*v19 != v10)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v12 = *(*(&v18 + 1) + 8 * j);
                  if (_NSIsNSString())
                  {
                    v13 = [v8 objectForKey:v12];
                    if (v4)
                    {
                      v14 = [LSDefaultApplicationQueryEntry createFromPlistRepresentation:v13];
                      v4 = v14 != 0;
                    }

                    else
                    {
                      v4 = 0;
                    }
                  }

                  else
                  {
                    v4 = 0;
                  }
                }

                v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
              }

              while (v9);
            }
          }

          else
          {
            v4 = 0;
          }
        }

        v2 = [(_anonymous_namespace_::LSDefaultApplicationQueryServerStateManager *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v2);
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

  return v4;
}

uint64_t std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEF61C50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void anonymous namespace::LSDefaultApplicationQueryState::fromValidatedPlist(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_::LSDefaultApplicationQueryState *this@<X0>)
{
  v34 = *MEMORY[0x1E69E9840];
  v14 = this;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v14;
  v2 = [(_anonymous_namespace_::LSDefaultApplicationQueryState *)obj countByEnumeratingWithState:&v26 objects:v33 count:16, v14];
  if (v2)
  {
    v16 = *v27;
    do
    {
      v18 = v2;
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v26 + 1) + 8 * i);
        v21 = [(_anonymous_namespace_::LSDefaultApplicationQueryState *)obj objectForKey:v4];
        v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v20 = v4;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = v21;
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v7)
        {
          v8 = *v23;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v23 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v22 + 1) + 8 * j);
              v11 = [v6 objectForKey:v10];
              v12 = [LSDefaultApplicationQueryEntry createFromPlistRepresentation:v11];
              if (v12)
              {
                [v5 setObject:v12 forKey:v10];
              }

              else
              {
                v13 = _LSDefaultLog(0);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v31 = v11;
                  _os_log_fault_impl(&dword_18162D000, v13, OS_LOG_TYPE_FAULT, "couldn't make query entry from category dict %@!", buf, 0xCu);
                }
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
          }

          while (v7);
        }

        [v17 setObject:v5 forKey:v20];
      }

      v2 = [(_anonymous_namespace_::LSDefaultApplicationQueryState *)obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v2);
  }

  *a1 = v17;
}

uint64_t std::__function::__func<anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)> const&)::{lambda(objc_object *,NSError *)#1},std::allocator<anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)> const&)::{lambda(objc_object *,NSError *)#1}>,objc_object * ()(objc_object *,NSError *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEF61C98;
  a2[1] = v2;
  return result;
}

id std::__function::__func<anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)> const&)::{lambda(objc_object *,NSError *)#1},std::allocator<anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)> const&)::{lambda(objc_object *,NSError *)#1}>,objc_object * ()(objc_object *,NSError *)>::operator()(uint64_t a1, id *a2, void **a3)
{
  v41[16] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = *a2;
  v22 = v5;
  v23 = v4;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = v24;
  if (v5)
  {
    v6 = v41[0];
    v31 = v41[0];

    v24 = v6;
  }

  v7 = *(a1 + 8);
  v8 = *(v7 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v8 + 48))(&v30);

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v30;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v26 = *v37;
    do
    {
      v28 = v9;
      for (i = 0; i != v28; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = [v30 objectForKey:{v11, v22, v23}];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v15)
        {
          v16 = *v33;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v32 + 1) + 8 * j);
              v19 = [v14 objectForKey:v18];
              v20 = [v19 plistRepresentation];

              [v12 setObject:v20 forKey:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v15);
        }

        [v27 setObject:v12 forKey:v11];
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
  }

  return v27;
}

void *anonymous namespace::LSDefaultApplicationQueryState::LSDefaultApplicationQueryState(void *a1, id *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *a2;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*a2 objectForKey:{v9, v13}];
        v11 = [v10 mutableCopy];
        [v4 setObject:v11 forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  *a1 = v4;
  return a1;
}

uint64_t std::__function::__value_func<objc_object * ()(objc_object *,NSError *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZN12_GLOBAL__N_143LSDefaultApplicationQueryServerStateManager12scheduleSaveEv_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = LaunchServices::LSStatePlist::save(*(a1 + 40));
  v2 = _LSDefaultLog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LSDefaultApplicationQueryServerStateManager saved state with error %@", &v3, 0xCu);
  }
}

void sub_18168AA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t _LSAliasAdd(void *a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5 && (v7 = [(_LSDatabase *)v5 store], v6) && v7)
  {
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v5 schema];
    [v6 length];
    [v6 bytes];
    v8 = CSStoreAllocUnitWithData();
    v9 = v8;
    if (a3 && !v8)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9493, 0, "_LSAliasAdd", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 27);
      *a3 = v9 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v12 = *MEMORY[0x1E696A278];
      v13[0] = @"invalid input parameters";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "_LSAliasAdd", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 31);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t _LSAliasAddNode(void *a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5 && (v7 = [(_LSDatabase *)v5 store], v6) && v7)
  {
    v8 = [v6 bookmarkDataRelativeToNode:0 error:a3];
    if (v8)
    {
      v9 = _LSAliasAdd(v5, v8, a3);
    }

    else
    {
      v9 = 4294956486;
    }
  }

  else
  {
    if (a3)
    {
      v12 = *MEMORY[0x1E696A278];
      v13[0] = @"invalid input parameters";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "_LSAliasAddNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 54);
    }

    v9 = 4294956486;
  }

  return v9;
}

uint64_t _LSAliasAddURL(void *a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5 && (v7 = -[_LSDatabase store](v5), v6) && v7 && [v6 isFileURL])
  {
    v8 = [[FSNode alloc] initWithURL:v6 flags:0 error:a3];
    if (v8)
    {
      v9 = _LSAliasAddNode(v5, v8, a3);
    }

    else
    {
      v9 = 4294956486;
    }
  }

  else
  {
    if (a3)
    {
      v12 = *MEMORY[0x1E696A278];
      v13[0] = @"invalid input parameters";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "_LSAliasAddURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 78);
    }

    v9 = 4294956486;
  }

  return v9;
}

uint64_t _LSAliasRemove(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [(_LSDatabase *)v3 store];
    v6 = 4294967246;
    if (v2 && v5)
    {
      [(_LSDatabase *)v4 store];
      [(_LSDatabase *)v4 schema];
      CSStoreFreeUnit();
      v6 = 0;
    }
  }

  else
  {
    v6 = 4294967246;
  }

  return v6;
}