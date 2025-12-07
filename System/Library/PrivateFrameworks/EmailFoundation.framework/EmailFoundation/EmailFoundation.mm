id _ef_log_EFObservable(uint64_t a1)
{
  if (_ef_log_EFObservable_onceToken != -1)
  {
    _ef_log_EFObservable_cold_1();
  }

  v2 = _ef_log_EFObservable_log;

  return v2;
}

uint64_t EFIsRunningUnitTests(uint64_t a1, uint64_t a2)
{
  if (EFIsRunningUnitTests_onceToken != -1)
  {
    EFIsRunningUnitTests_cold_1();
  }

  return EFIsRunningUnitTests_result;
}

void __EFIsRunningUnitTests_block_invoke()
{
  if (NSClassFromString(&cfstr_Xctestcase.isa))
  {
    v0 = [MEMORY[0x1E696AAE8] allBundles];
    EFIsRunningUnitTests_result = [v0 ef_any:&__block_literal_global_4_2];
  }
}

uint64_t EFNonContainerizedHomeDirectory()
{
  pw_uid = geteuid();
  if (!pw_uid)
  {
    pw_uid = getuid();
    if (!pw_uid)
    {
      v1 = getpwnam("mobile");
      if (v1)
      {
        pw_uid = v1->pw_uid;
      }

      else
      {
        pw_uid = 501;
      }
    }
  }

  v2 = getpwuid(pw_uid);
  if (!v2 || (pw_dir = v2->pw_dir) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSURL * _Nonnull EFNonContainerizedHomeDirectory(void)"];
    [v4 handleFailureInFunction:v5 file:@"EFPathUtilities.m" lineNumber:44 description:@"Couldn't get non-containerized home directory"];

    pw_dir = 0;
  }

  v6 = MEMORY[0x1E695DFF8];

  return [v6 fileURLWithFileSystemRepresentation:pw_dir isDirectory:1 relativeToURL:0];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__0(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t EFEncodeCacheableInstance(void *a1, void *a2, uint64_t a3)
{
  if ([a2 ef_isNSXPCCoder])
  {
    os_unfair_recursive_lock_lock_with_options();
    AssociatedObject = objc_getAssociatedObject(a1, @"EFCacheableInstanceID");
    if (!AssociatedObject)
    {
      if (EFEncodeCacheableInstance_onceToken != -1)
      {
        EFEncodeCacheableInstance_cold_1();
      }

      AssociatedObject = EFEncodeCacheableInstance_sInstanceID++;
      ++EFEncodeCacheableInstance_sInstanceCount;
      if (__ROR8__(0x5D4E8FB00BCBE61DLL * EFEncodeCacheableInstance_sInstanceCount + 0xA7C5AC471B460, 5) <= 0xA7C5AC471B46uLL)
      {
        if (_log_onceToken != -1)
        {
          EFEncodeCacheableInstance_cold_2();
        }

        v7 = _log_log;
        if (os_log_type_enabled(_log_log, OS_LOG_TYPE_DEBUG))
        {
          EFEncodeCacheableInstance_cold_3(v7);
        }
      }

      objc_setAssociatedObject(a1, @"EFCacheableInstanceID", AssociatedObject, 0);
    }

    os_unfair_recursive_lock_unlock();
    [a2 encodeInt64:AssociatedObject forKey:@"EFCacheableInstanceID"];
  }

  return (*(a3 + 16))(a3);
}

uint64_t sub_1C6154E4C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6154EEC(uint64_t a1)
{
  (*(*(*(*v1 + 80) - 8) + 16))(v1 + *(*v1 + 88), a1);
  v2 = swift_slowAlloc();
  *(v1 + *(*v1 + 96)) = v2;
  *v2 = 0;
  return v1;
}

uint64_t Locked.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1C6154EEC(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

id EFLogRegisterStateCaptureBlock(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (!v7 || !v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<EFCancelable>  _Nonnull EFLogRegisterStateCaptureBlock(__strong dispatch_queue_t _Nonnull, NSString *__strong _Nonnull, EFLogStateType, __strong EFLogStateCaptureBlock _Nonnull)"}];
    [v16 handleFailureInFunction:v17 file:@"EFLogging.m" lineNumber:42 description:@"No dispatch queue or 'state capture block' can be found. Please check previous logging"];
  }

  v18[5] = MEMORY[0x1E69E9820];
  v18[6] = 3221225472;
  v18[7] = __EFLogRegisterStateCaptureBlock_block_invoke;
  v18[8] = &unk_1E8248D48;
  v21 = a3;
  v11 = v10;
  v20 = v11;
  v12 = v8;
  v19 = v12;
  v13 = os_state_add_handler();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __EFLogRegisterStateCaptureBlock_block_invoke_14;
  v18[3] = &__block_descriptor_40_e5_v8__0l;
  v18[4] = v13;
  v14 = [EFManualCancelationToken tokenWithCancelationBlock:v18];

  return v14;
}

void sub_1C6155308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id EFBundleIdentifierForXPCConnection(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v19 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = v2;
  if (!v2)
  {
    v7 = 0;
    goto LABEL_25;
  }

  v4 = [v2 valueForEntitlement:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 rangeOfString:@"."] == 10 && v5 + 10 < objc_msgSend(v4, "length"))
    {
      v6 = [v4 substringFromIndex:11];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
    goto LABEL_24;
  }

  v8 = [v3 processIdentifier];
  if (getpid() != v8 || ([MEMORY[0x1E696AAE8] mainBundle], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (getpid() == v8)
    {
      v10 = [MEMORY[0x1E696AAE8] mainBundle];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 bundleURL];

        goto LABEL_20;
      }
    }

    memset(__b, 170, sizeof(__b));
    if (!proc_pidpath(v8, __b, 0x1000u))
    {
      goto LABEL_22;
    }

    v9 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:__b isDirectory:0 relativeToURL:0];
    if (v9)
    {
      v13 = _CFBundleCopyBundleURLForExecutableURL();
      v14 = [v13 pathExtension];
      v15 = [v14 length];

      if (v15)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }

      v12 = v16;

LABEL_20:
      if (v12)
      {
        v9 = [MEMORY[0x1E696AAE8] bundleWithURL:v12];

        goto LABEL_23;
      }

LABEL_22:
      v9 = 0;
    }
  }

LABEL_23:
  v7 = [v9 bundleIdentifier];

LABEL_24:
LABEL_25:

  return v7;
}

void sub_1C61555B8(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

uint64_t EFDecodeCacheableInstance(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 decodeInt64ForKey:@"EFCacheableInstanceID"];
  if (v4)
  {
    v5 = v4;
    os_unfair_recursive_lock_lock_with_options();
    v6 = sInstanceCache;
    if (!sInstanceCache)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:5 capacity:15000];
      sInstanceCache = v6;
    }

    v7 = [v6 objectForKey:v5];
    if (!v7)
    {
      v7 = [(*(a3 + 16))(a3) cachedSelf];
      [sInstanceCache setObject:v7 forKey:v5];
    }

    os_unfair_recursive_lock_unlock();
    return v7;
  }

  else
  {
    v9 = (*(a3 + 16))(a3);

    return [v9 cachedSelf];
  }
}

uint64_t __hashForDigest_block_invoke(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a4)
  {
    while (1)
    {
      v5 = *a2++;
      *(*(*(result + 32) + 8) + 24) |= v5 << (8 * *(*(*(result + 40) + 8) + 24));
      v6 = *(*(result + 40) + 8);
      v7 = *(v6 + 24) + 1;
      *(v6 + 24) = v7;
      if (v7 == 8)
      {
        break;
      }

      if (!--a4)
      {
        return result;
      }
    }

    *a5 = 1;
  }

  return result;
}

id activityLog(uint64_t a1)
{
  if (activityLog_onceToken != -1)
  {
    activityLog_cold_1();
  }

  v2 = activityLog_log;

  return v2;
}

uint64_t __EFEncodeCacheableInstance_block_invoke()
{
  result = getpid();
  EFEncodeCacheableInstance_sInstanceID = __rbit32(result) << 32;
  return result;
}

uint64_t EFSetsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqualToSet:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id _EFLocalizedStringFromTable(void *a1, dispatch_once_t *a2, id *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___EFLocalizedStringFromTable_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  if (*a2 != -1)
  {
    dispatch_once(a2, block);
  }

  v9 = [*a3 localizedStringForKey:v7 value:0 table:v8];

  return v9;
}

id _EFLocalizedString(void *a1, dispatch_once_t *a2, id *a3)
{
  v3 = _EFLocalizedStringFromTable(a1, a2, a3, 0);

  return v3;
}

void Locked.performWhileLocked<A>(_:)(void (*a1)(uint64_t))
{
  v2 = v1;
  os_unfair_lock_lock(*(v2 + *(*v2 + 96)));
  v4 = *(*v1 + 88);
  swift_beginAccess();
  a1(v1 + v4);
  swift_endAccess();
  os_unfair_lock_unlock(*(v2 + *(*v2 + 96)));
}

BOOL EFIsNull_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
    v4 = v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void _ef_xpc_activity_register(const char *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = *MEMORY[0x1E69E9C50];
  }

  else
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    v7[2](v7, v9);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ef_xpc_activity_register_block_invoke;
  handler[3] = &unk_1E824A3B8;
  v15 = a1;
  v10 = v7;
  v13 = v10;
  v11 = v8;
  v14 = v11;
  xpc_activity_register(a1, v9, handler);
}

void ___ef_xpc_activity_register_block_invoke(uint64_t a1, void *a2)
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = activityLog(state);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!state)
  {
    if (v6)
    {
      v8 = *(a1 + 48);
      v14 = 136446210;
      *v15 = v8;
      _os_log_impl(&dword_1C6152000, v5, OS_LOG_TYPE_INFO, "Check in '%{public}s'", &v14, 0xCu);
    }

    v5 = *(a1 + 32);
    v9 = v3;
    v10 = xpc_dictionary_create(0, 0, 0);
    (v5[2].isa)(v5, v10);
    v11 = xpc_activity_copy_criteria(v9);
    v12 = v11;
    if (!v11 || !xpc_equal(v11, v10))
    {
      xpc_activity_set_criteria(v9, v10);
    }

    goto LABEL_14;
  }

  if (state != 2)
  {
    if (v6)
    {
      v13 = *(a1 + 48);
      v14 = 67109378;
      v15[0] = state;
      LOWORD(v15[1]) = 2082;
      *(&v15[1] + 2) = v13;
      _os_log_impl(&dword_1C6152000, v5, OS_LOG_TYPE_INFO, "Unexpected state %u for '%{public}s'", &v14, 0x12u);
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v6)
  {
    v7 = *(a1 + 48);
    v14 = 136446210;
    *v15 = v7;
    _os_log_impl(&dword_1C6152000, v5, OS_LOG_TYPE_INFO, "Run '%{public}s'", &v14, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_15:
}

void __activityLog_block_invoke()
{
  v0 = os_log_create("com.apple.email", "XPCActivity");
  v1 = activityLog_log;
  activityLog_log = v0;
}

id EFAtomicObjectSetIfNil(atomic_ullong *a1, void *a2)
{
  v2 = EFAtomicObjectSetIfIdentical(a1, 0, a2);

  return v2;
}

id EFAtomicObjectSetIfIdentical(atomic_ullong *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<NSObject>  _Nullable EFAtomicObjectSetIfIdentical(EFAtomicObject * _Nonnull, id<NSObject>  _Nullable __strong, __strong id<NSObject> _Nonnull)"}];
    [v13 handleFailureInFunction:v14 file:@"EFAtomicObject.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"newObject != nil"}];
  }

  v7 = v6;
  v8 = v7;
  v9 = v5;
  atomic_compare_exchange_strong(a1, &v9, v7);
  v10 = v5;
  v11 = v7;
  if (v9 != v5)
  {
    CFRelease(v7);
    v15 = atomic_load(a1);
    v11 = v15;
    v10 = v8;
  }

  return v11;
}

void std::__tree<long long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<long long>::destroy(a1, *a2);
    std::__tree<long long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<long long>::__assign_multi<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<long long>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          std::__tree<long long>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<long long>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<long long>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<long long>::__emplace_multi<long long const&>(v5, a2 + 4);
  }

  return result;
}

void sub_1C61575F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<long long>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C6157B6C(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6158050(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t EFSQLVerboseDebugLoggingEnabled(uint64_t a1, uint64_t a2)
{
  if (EFSQLVerboseDebugLoggingEnabled_onceToken != -1)
  {
    EFSQLVerboseDebugLoggingEnabled_cold_1();
  }

  return EFSQLVerboseDebugLoggingEnabled_enabled;
}

uint64_t EFObjectsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

BOOL EFIsNotNull_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
    v4 = v3 != v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1C6158878(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _EFKeyValueObserverHandler;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t Locked.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1C6154EEC(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

void sub_1C61592E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EFSQLPreparedStatement;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void *std::__tree<long long>::__emplace_unique_key_args<long long,long long const&>(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<long long>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

__CFString *describableObjectForExpression(void *a1)
{
  v1 = a1;
  v2 = [v1 expressionType];
  v3 = @"<evaluated object>";
  if (v2 > 6)
  {
    v4 = @"<any key>";
    v5 = @"<block>";
    v6 = @"<conditional>";
    if (v2 != 20)
    {
      v6 = @"<evaluated object>";
    }

    if (v2 != 19)
    {
      v5 = v6;
    }

    if (v2 != 15)
    {
      v4 = v5;
    }

    v7 = @"<minus set>";
    v8 = @"<subquery>";
    v9 = @"<aggregate>";
    if (v2 != 14)
    {
      v9 = @"<evaluated object>";
    }

    if (v2 != 13)
    {
      v8 = v9;
    }

    if (v2 != 7)
    {
      v7 = v8;
    }

    if (v2 <= 14)
    {
      v3 = v7;
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    if (v2 <= 3)
    {
      if (v2)
      {
        if (v2 == 2)
        {
          v3 = @"<variable>";
        }

        else if (v2 == 3)
        {
          v3 = v1;
        }

        goto LABEL_35;
      }

      v12 = [v1 constantValue];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v3 = @"<constant>";
          goto LABEL_33;
        }

        v13 = [EFPrivacy fullyRedactedStringForString:v12];
      }

      else
      {
        v13 = v1;
      }

      v3 = v13;
LABEL_33:

      goto LABEL_35;
    }

    v10 = @"<union set>";
    v11 = @"<intersect set>";
    if (v2 != 6)
    {
      v11 = @"<evaluated object>";
    }

    if (v2 != 5)
    {
      v10 = v11;
    }

    if (v2 == 4)
    {
      v3 = @"<function>";
    }

    else
    {
      v3 = v10;
    }
  }

LABEL_35:

  return v3;
}

void sub_1C615A76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = EFListStateCapturer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C615A7FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EFStoppableScheduler;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id EFAtomicObjectRelease(unint64_t *a1)
{
  do
  {
    v1 = atomic_load(a1);
    v2 = v1;
    atomic_compare_exchange_strong(a1, &v2, 0);
  }

  while (v2 != v1);
  return v1;
}

uint64_t is32Bit(uint64_t a1, uint64_t a2)
{
  if (is32Bit_onceToken != -1)
  {
    is32Bit_cold_1();
  }

  if (!EFIsRunningUnitTests(a1, a2))
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:@"EFHashing.UseMurmur3x86-32"];
  v5 = [v4 BOOLValue];

  return v5;
}

unint64_t EFMurmurHash3Mix(unint64_t a1, uint64_t a2)
{
  v3 = is32Bit(a1, a2);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (a1 ^ (a1 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (a1 ^ (a1 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = -1028477387 * ((-2048144789 * (a1 ^ WORD1(a1))) ^ ((-2048144789 * (a1 ^ WORD1(a1))) >> 13));
  v7 = v6 ^ HIWORD(v6);
  if (v3)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

uint64_t EFArraysAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqualToArray:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

__CFString *EFSQLStringForConflictResolution(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return @"ABORT";
  }

  else
  {
    return off_1E8249C80[a1 - 2];
  }
}

__CFString *EFStringWithInt64(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v1;
  v6 = v1;
  v2 = snprintf(__str, 0x20uLL, "%lld", a1);
  v3 = CFStringCreateWithBytes(0, __str, v2, 0x600u, 0);

  return v3;
}

void sub_1C615B200(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EFLazyCache;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1C615B6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void __initErrorDecodersOnce_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = sErrorDecoders;
  sErrorDecoders = v0;

  v2 = dispatch_queue_create("com.apple.mail.errorDecoder", 0);
  v3 = sErrorDecodeQueue;
  sErrorDecodeQueue = v2;
}

id truncatedDescriptionToMaxAllowableSize(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 substringToIndex:v5];

  return v6;
}

void sub_1C615BA60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EFDeallocInvocationToken;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id _ef_log_EFSQLQueryGenerator(uint64_t a1)
{
  if (_ef_log_EFSQLQueryGenerator_onceToken != -1)
  {
    _ef_log_EFSQLQueryGenerator_cold_1();
  }

  v2 = _ef_log_EFSQLQueryGenerator_log;

  return v2;
}

void sub_1C615BC3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EFDebouncer;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id _Log(uint64_t a1)
{
  if (_Log_onceToken != -1)
  {
    _Log_cold_1();
  }

  v2 = _Log_log;

  return v2;
}

id _Log_0(uint64_t a1)
{
  if (_Log_onceToken_0 != -1)
  {
    _Log_cold_1_0();
  }

  v2 = _Log_log_0;

  return v2;
}

uint64_t _KeyBagLockState()
{
  LODWORD(result) = MKBGetDeviceLockState();
  if (result >= 4)
  {
    return -1;
  }

  else
  {
    return result;
  }
}

void _NotifyObserversWithContentProtectionState(unint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(_observationQueue);
  if (a1 == -1)
  {
    _NotifyObserversWithContentProtectionState_cold_6();
  }

  if (_InitObservation_sOnceToken != -1)
  {
    _DiagnosticStateDictionary_cold_1();
  }

  v3 = atomic_load(sContentProtectionState);
  if (v3 == 255)
  {
    _NotifyObserversWithContentProtectionState_cold_5();
  }

  if (_InitObservation_sOnceToken != -1)
  {
    _DiagnosticStateDictionary_cold_1();
  }

  v4 = atomic_load(sContentProtectionState);
  v5 = v4;
  log = _Log(v2);
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v5 == a1)
  {
    if (v6)
    {
      if ((v5 + 1) > 4u)
      {
        v7 = @"unknown";
      }

      else
      {
        v7 = off_1E8248910[(v5 + 1)];
      }

      if (a1 + 1 > 4)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_1E8248910[a1 + 1];
      }

      *buf = 138543618;
      v27 = v7;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_1C6152000, log, OS_LOG_TYPE_DEFAULT, "Ignoring lock state change from %{public}@ to %{public}@", buf, 0x16u);
    }

    goto LABEL_47;
  }

  if (v6)
  {
    if ((v5 + 1) > 4u)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_1E8248910[(v5 + 1)];
    }

    if (a1 > 3)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = off_1E82488F0[a1];
    }

    *buf = 138543618;
    v27 = v8;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_1C6152000, log, OS_LOG_TYPE_DEFAULT, "Keybag transitioning from %{public}@ to %{public}@", buf, 0x16u);
  }

  if (a1 == 1 && !v5)
  {
    v12 = _Log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _NotifyObserversWithContentProtectionState_cold_3(v12);
    }

    goto LABEL_37;
  }

  if (!v5)
  {
    if (a1 == 2)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v5 == 1)
  {
    if (!a1)
    {
      goto LABEL_40;
    }

LABEL_37:
    v13 = _Log(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      _NotifyObserversWithContentProtectionState_cold_4(v13);
    }

    goto LABEL_40;
  }

  if (v5 != 2 || a1 >= 2)
  {
    goto LABEL_37;
  }

LABEL_40:
  atomic_store(a1, sContentProtectionState);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  log = [_observers allValues];
  v14 = [log countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(log);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v17 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___NotifyObserversWithContentProtectionState_block_invoke;
        block[3] = &unk_1E82488D0;
        block[4] = v17;
        block[5] = a1;
        block[6] = v5;
        dispatch_async(v18, block);
      }

      v14 = [log countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

LABEL_47:
}

uint64_t sub_1C615C760()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C615C798()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C615C7D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1C615CAA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C615D4E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C615DBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_1C615EB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37)
{
  _Block_object_dispose((v42 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_1C615F030(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1C615F33C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void sub_1C615F534(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1C61609FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  _Block_object_dispose((v52 - 152), 8);

  _Unwind_Resume(a1);
}

id EFAtomicObjectReleaseIfIdentical(atomic_ullong *a1, void *a2)
{
  v2 = a2;
  atomic_compare_exchange_strong(a1, &v2, 0);
  if (v2 == a2)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

id EFAtomicSetOnceObjectLoad(atomic_ullong *a1, void *a2)
{
  v3 = a2;
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v5 = explicit;
  if (explicit)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3[2](v3);
    if (v8)
    {
      v9 = v8;
      v6 = v9;
      v10 = 0;
      atomic_compare_exchange_strong(a1, &v10, v9);
      if (v10)
      {

        v11 = v10;
        v6 = v11;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void addStringToIndexes(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __addStringToIndexes_block_invoke;
  v11[3] = &unk_1E82487A8;
  v12 = v9;
  v10 = v9;
  addValueToIndexesWithBlock(a1, a3, a4, a5, v11);
}

void addDataToIndexes(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __addDataToIndexes_block_invoke;
  v11[3] = &unk_1E82487A8;
  v12 = v9;
  v10 = v9;
  addValueToIndexesWithBlock(a1, a3, a4, a5, v11);
}

id bestBloomFilterCandidate(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = a1;
  v32 = a2;
  v35 = 0;
  v36 = 0;
  v8 = 0;
  do
  {
    v34 = v8;
    context = objc_autoreleasePoolPush();
    v9 = arc4random();
    v10 = arc4random();
    v30 = v31;
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = v30;
    v13 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v14 = v10 | (v9 << 32);
    if (v13)
    {
      v15 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            addStringToIndexes(v11, v17, a3, a4, v14);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              addDataToIndexes(v11, v17, a3, a4, v14);
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v13);
    }

    v18 = [[EFBloomFilter alloc] _initWithBucketCount:a3 hashFunctionCount:a4 seed:v14 indexes:v11];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __bestBloomFilterCandidate_block_invoke;
    v37[3] = &unk_1E82487D0;
    v19 = v18;
    v38 = v19;
    v20 = [v32 ef_filter:v37];
    v21 = [v20 count];
    if (v36 && v21 >= [v35 count])
    {
      goto LABEL_17;
    }

    v22 = v19;

    v23 = v20;
    if (v21)
    {
      v35 = v23;
      v36 = v22;
LABEL_17:
      v24 = 0;
      goto LABEL_19;
    }

    v24 = 1;
    v35 = v23;
    v36 = v22;
LABEL_19:

    objc_autoreleasePoolPop(context);
    v8 = v34 + 1;
    if (v34 == 9)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }
  }

  while ((v25 & 1) == 0);
  v26 = v35;
  if (a5)
  {
    v27 = v35;
    v26 = v35;
    *a5 = v35;
  }

  return v36;
}

void sub_1C6162840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t checkValueWithBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 bucketCount];
  v6 = [v3 seed];
  v7 = [v3 hashFunctionCount];
  if (v7)
  {
    while (1)
    {
      v13 = 0;
      v8 = v7 - 1;
      if (v7 == 1)
      {
        v4[2](v4, v6 ^ 1, &v13, 0);
        v8 = 1;
      }

      else
      {
        v12 = 0;
        (v4)[2](v4, v7 ^ v6, &v13, &v12);
        if (([v3[1] containsIndex:v12 % v5] & 1) == 0)
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v9 = [v3[1] containsIndex:v13 % v5];
      v7 = v8 - 1;
      if (v8 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v9 = 1;
LABEL_12:

  return v9;
}

void addValueToIndexesWithBlock(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  while (a3)
  {
    v12 = 0;
    if (a3 == 1)
    {
      v10[2](v10, a4 ^ 1, &v12, 0);
      a3 = 0;
    }

    else
    {
      v11 = 0;
      (v10)[2](v10, a3 ^ a4, &v12, &v11);
      [v9 addIndex:v11 % a2];
      a3 -= 2;
    }

    [v9 addIndex:v12 % a2];
  }
}

unint64_t __addStringToIndexes_block_invoke(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  result = EFMurmurHash3String(*(a1 + 32), a2, a4);
  *a3 = result;
  return result;
}

unint64_t __addDataToIndexes_block_invoke(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  result = EFMurmurHash3Data(*(a1 + 32), a2, a4);
  *a3 = result;
  return result;
}

uint64_t __bestBloomFilterCandidate_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) mayContainString:v3];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = [*(a1 + 32) mayContainData:v3];
  }

  v5 = v4;
LABEL_7:

  return v5;
}

id *__appendIndexesToData_block_invoke(id *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 >> 6;
  if (a2 >> 6 != *(*(result[5] + 1) + 24))
  {
    v5 = *(result[6] + 1);
    v6 = *(v5 + 24);
    if (*(result + 56))
    {
      v6 = v6;
    }

    *(v5 + 24) = v6;
    result = [result[4] appendBytes:*(result[6] + 1) + 24 length:8];
    *(*(v3[6] + 1) + 24) = 0;
    while (++*(*(v3[5] + 1) + 24) < v4)
    {
      result = [v3[4] appendBytes:*(v3[6] + 1) + 24 length:8];
    }
  }

  *(*(v3[6] + 1) + 24) |= 1 << v2;
  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E82483D0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

os_log_t ___log_block_invoke()
{
  result = os_log_create("com.apple.email", "cacheable");
  _log_log = result;
  return result;
}

void sub_1C6163D4C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = EFCancelationToken;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t EFDataAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqualToData:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t EFStringsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqualToString:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t EFAttributedStringsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqualToAttributedString:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t EFDictionarysAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqualToDictionary:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t EFNumbersAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = (v3 | v4) == 0;
  if (v4)
  {
    v5 = [v3 isEqualToNumber:v4];
  }

  return v5;
}

__CFString *EFContentProtectionStateDescription(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E8248910[a1 + 1];
  }
}

id _DiagnosticStateDictionary()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (_InitObservation_sOnceToken != -1)
  {
    _DiagnosticStateDictionary_cold_1();
  }

  v1 = atomic_load(sContentProtectionState);
  v2 = v1 + 1;
  if (v2 > 4u)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_1E8248910[v2];
  }

  [v0 setObject:v3 forKeyedSubscript:@"Recorded state"];
  [v0 setObject:off_1E8248910[_KeyBagLockState() + 1] forKeyedSubscript:@"System state"];
  MKBDeviceUnlockedSinceBoot();
  v4 = NSStringFromBOOL();
  [v0 setObject:v4 forKeyedSubscript:@"Unlocked since boot"];

  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setTimeStyle:3];
  [v5 setDateStyle:2];
  if (*&_lastNotificationTime == 0.0)
  {
    v7 = @"never";
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*&_lastNotificationTime];
    v7 = [v5 stringFromDate:v6];
  }

  if (*&_beganObservingTime == 0.0)
  {
    v9 = @"never";
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*&_beganObservingTime];
    v9 = [v5 stringFromDate:v8];
  }

  [v0 setObject:v7 forKeyedSubscript:@"Last lock_status notification"];
  [v0 setObject:v9 forKeyedSubscript:@"Began observing lock_status"];
  v10 = _observers;
  if ([v10 count])
  {
    v11 = [v10 allValues];
    v12 = [v11 ef_map:&__block_literal_global_3];
    v13 = [v12 componentsJoinedByString:{@", "}];
    [v0 setObject:v13 forKeyedSubscript:@"Observers"];
  }

  return v0;
}

void sub_1C616465C(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

uint64_t EFContentProtectionGetObservedState(uint64_t a1)
{
  if (_InitObservation_sOnceToken != -1)
  {
    _DiagnosticStateDictionary_cold_1();
  }

  return atomic_load(sContentProtectionState);
}

void EFRegisterContentProtectionObserver(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = "nil != observer";
    v9 = 260;
    goto LABEL_8;
  }

  if (!v4)
  {
    v8 = "NULL != queue";
    v9 = 261;
    goto LABEL_8;
  }

  if (_observationQueue == v4)
  {
    v8 = "_observationQueue != queue";
    v9 = 262;
LABEL_8:
    __assert_rtn("EFRegisterContentProtectionObserver", "EFContentProtectionObserver.m", v9, v8);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __EFRegisterContentProtectionObserver_block_invoke;
  v10[3] = &unk_1E82485D0;
  v6 = v3;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  _InitAndPerformSync(v10);
}

void _InitAndPerformSync(void *a1)
{
  v1 = _InitObservation_sOnceToken;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    _DiagnosticStateDictionary_cold_1();
    v3 = v4;
  }

  dispatch_sync(_observationQueue, v3);
}

void __EFRegisterContentProtectionObserver_block_invoke(uint64_t a1)
{
  value = [[_EFContentProtectionObserverWrapper alloc] initWithObserver:*(a1 + 32) queue:*(a1 + 40)];
  Mutable = _observers;
  if (!_observers)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    _observers = Mutable;
  }

  CFDictionaryAddValue(Mutable, *(a1 + 32), value);
}

void EFUnregisterContentProtectionObserver(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    __assert_rtn("EFUnregisterContentProtectionObserver", "EFContentProtectionObserver.m", 277, "nil != observer");
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __EFUnregisterContentProtectionObserver_block_invoke;
  v3[3] = &unk_1E8248580;
  v2 = v1;
  v4 = v2;
  _InitAndPerformSync(v3);
}

void __EFUnregisterContentProtectionObserver_block_invoke(uint64_t a1)
{
  if (_observers)
  {
    CFDictionaryRemoveValue(_observers, *(a1 + 32));
  }
}

void EFPerformSyncWithProtectedDataAvailability(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __EFPerformSyncWithProtectedDataAvailability_block_invoke;
  v3[3] = &unk_1E8248840;
  v4 = v1;
  v2 = v1;
  _InitAndPerformSync(v3);
}

uint64_t __EFPerformSyncWithProtectedDataAvailability_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = EFProtectedDataAvailable(a1);
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

BOOL EFProtectedDataAvailable(uint64_t a1)
{
  if (_InitObservation_sOnceToken != -1)
  {
    _DiagnosticStateDictionary_cold_1();
  }

  atomic_load(sContentProtectionState);
  if (_InitObservation_sOnceToken != -1)
  {
    _DiagnosticStateDictionary_cold_1();
  }

  v1 = atomic_load(sContentProtectionState);
  return v1 == 3 || v1 == 0;
}

BOOL EFProtectedDataAvailableInState(uint64_t a1)
{
  if (_InitObservation_sOnceToken != -1)
  {
    _DiagnosticStateDictionary_cold_1();
  }

  v1 = atomic_load(sContentProtectionState);
  return v1 == 3 || v1 == 0;
}

void EFContentProtectionValidateObservedStateIsUnlocked(uint64_t a1)
{
  if (_InitObservation_sOnceToken != -1)
  {
    _DiagnosticStateDictionary_cold_1();
  }

  v1 = atomic_load(sContentProtectionState);
  if ((v1 - 1) <= 1 && !_KeyBagLockState())
  {
    v2 = _observationQueue;

    dispatch_sync(v2, &__block_literal_global_54);
  }
}

void EFContentProtectionSimulateState(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __EFContentProtectionSimulateState_block_invoke;
  v1[3] = &__block_descriptor_40_e5_v8__0l;
  v1[4] = a1;
  _InitAndPerformSync(v1);
}

id EFContentProtectionDumpDiagnosticState()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n==== EFContentProtectionObserver ====\n"];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __EFContentProtectionDumpDiagnosticState_block_invoke;
  v3[3] = &unk_1E8248580;
  v1 = v0;
  v4 = v1;
  _InitAndPerformSync(v3);

  return v1;
}

void __EFContentProtectionDumpDiagnosticState_block_invoke(uint64_t a1)
{
  v2 = _DiagnosticStateDictionary();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __EFContentProtectionDumpDiagnosticState_block_invoke_2;
  v3[3] = &unk_1E8248868;
  v4 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void EFVerifyFileProtectionType(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E695DAF8];
  v20 = 0;
  v6 = *MEMORY[0x1E695DAF0];
  v19 = 0;
  v7 = [v3 getResourceValue:&v20 forKey:v6 error:&v19];
  v8 = v20;

  v9 = v19;
  v10 = v9;
  if (v7)
  {
    v11 = [v8 isEqualToString:v4];
    if (v11)
    {
      v12 = _Log_0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v3 path];
        *buf = 138412546;
        v22 = v13;
        v23 = 2114;
        v24 = v4;
        _os_log_impl(&dword_1C6152000, v12, OS_LOG_TYPE_DEFAULT, "%@ has file protection type %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v16 = _Log_0(v11);
      v12 = v16;
      if (v8)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          v17 = [v3 path];
          *buf = 138412802;
          v22 = v17;
          v23 = 2114;
          v24 = v8;
          v25 = 2114;
          v26 = v4;
          _os_log_fault_impl(&dword_1C6152000, v12, OS_LOG_TYPE_FAULT, "%@ has incorrect file protection type %{public}@, expected %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v3 path];
        *buf = 138412546;
        v22 = v18;
        v23 = 2114;
        v24 = v4;
        _os_log_impl(&dword_1C6152000, v12, OS_LOG_TYPE_DEFAULT, "%@ has no file protection type, expected %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = _Log_0(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [v3 path];
      v15 = [v10 ef_publicDescription];
      EFVerifyFileProtectionType_cold_1(v14, v15, buf, v12);
    }
  }
}

void WithDeviceIsInternal(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WithDeviceIsInternal(void (^ _Nonnull __strong)(void), BOOL)"}];
    [v5 handleFailureInFunction:v6 file:@"EFDevice.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v4 = [EFDevice testingDeviceWithInternal:a2];
  [EFDevice setCurrentDevice:v4];

  v3[2](v3);
  [EFDevice setCurrentDevice:0];
}

void sub_1C6166F64(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void test_setUse32BitMurmurHash3()
{
  v1 = [MEMORY[0x1E696AF00] currentThread];
  v0 = [v1 threadDictionary];
  [v0 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"EFHashing.UseMurmur3x86-32"];
}

void test_unsetUse32BitMurmurHash3()
{
  v1 = [MEMORY[0x1E696AF00] currentThread];
  v0 = [v1 threadDictionary];
  [v0 setObject:0 forKeyedSubscript:@"EFHashing.UseMurmur3x86-32"];
}

unint64_t EFMurmurHash3String(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = [a1 dataUsingEncoding:4];
  v6 = EFMurmurHash3Data(v5, a2, a3);

  return v6;
}

unint64_t EFMurmurHash3Data(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  if (is32Bit(v5, v6))
  {
    v7 = v5;
    v8 = v7;
    if (a3)
    {
      v9 = [v7 length];
      v10 = [v8 bytes];
      v11 = a2;
      v12 = a2;
      v13 = a2;
      while (2)
      {
        v10 += v9 & 0xFFFFFFFFFFFFFFF0;
        v43 = 0;
        switch(v9)
        {
          case 0uLL:
            goto LABEL_49;
          case 1uLL:
            goto LABEL_48;
          case 2uLL:
            goto LABEL_47;
          case 3uLL:
            goto LABEL_46;
          case 4uLL:
            goto LABEL_45;
          case 5uLL:
            goto LABEL_44;
          case 6uLL:
            goto LABEL_43;
          case 7uLL:
            goto LABEL_42;
          case 8uLL:
            goto LABEL_41;
          case 9uLL:
            goto LABEL_40;
          case 0xAuLL:
            goto LABEL_39;
          case 0xBuLL:
            goto LABEL_38;
          case 0xCuLL:
            goto LABEL_37;
          case 0xDuLL:
            goto LABEL_36;
          case 0xEuLL:
            goto LABEL_35;
          case 0xFuLL:
            v43 = v10[14] << 16;
LABEL_35:
            v43 |= v10[13] << 8;
LABEL_36:
            v11 ^= 597399067 * ((776732672 * (v43 ^ v10[12])) | ((-1578923117 * (v43 ^ v10[12])) >> 14));
LABEL_37:
            v43 = v10[11] << 24;
LABEL_38:
            v43 |= v10[10] << 16;
LABEL_39:
            v43 ^= v10[9] << 8;
LABEL_40:
            v12 ^= -1578923117 * ((-1781923840 * (v43 ^ v10[8])) | ((951274213 * (v43 ^ v10[8])) >> 15));
LABEL_41:
            v43 = v10[7] << 24;
LABEL_42:
            v43 |= v10[6] << 16;
LABEL_43:
            v43 ^= v10[5] << 8;
LABEL_44:
            v13 ^= 951274213 * ((-1752629248 * (v43 ^ v10[4])) | ((-1425107063 * (v43 ^ v10[4])) >> 16));
LABEL_45:
            v43 = v10[3] << 24;
LABEL_46:
            v43 |= v10[2] << 16;
LABEL_47:
            v43 ^= v10[1] << 8;
LABEL_48:
            LODWORD(a2) = (-1425107063 * ((-888307712 * (v43 ^ *v10)) | ((597399067 * (v43 ^ *v10)) >> 17))) ^ a2;
LABEL_49:
            v44 = v11 ^ v9;
            v45 = (v12 ^ v9) + (v13 ^ v9) + (a2 ^ v9) + v44;
            v46.i32[0] = v45 + (v13 ^ v9);
            v46.i32[1] = v45;
            v46.i32[2] = v45 + (v12 ^ v9);
            v46.i32[3] = v45 + v44;
            v47 = vmulq_s32(veorq_s8(vshrq_n_u32(v46, 0x10uLL), v46), vdupq_n_s32(0x85EBCA6B));
            v48 = vmulq_s32(veorq_s8(vshrq_n_u32(v47, 0xDuLL), v47), vdupq_n_s32(0xC2B2AE35));
            v49 = veorq_s8(vshrq_n_u32(v48, 0x10uLL), v48);
            v50 = vaddvq_s32(v49);
            v27 = v50;
            *a3 = v50 + v49.i32[0];
            break;
          default:
            v36 = v9 >> 4;
            v37 = (v10 + 8);
            v13 = a2;
            v12 = a2;
            v11 = a2;
            do
            {
              v38 = *(v37 - 1);
              HIDWORD(v39) = (-1425107063 * ((-888307712 * *(v37 - 2)) | ((597399067 * *(v37 - 2)) >> 17))) ^ a2;
              LODWORD(v39) = HIDWORD(v39);
              v40 = *v37;
              v41 = v37[1];
              v37 += 4;
              LODWORD(a2) = 5 * ((v39 >> 13) + v13) + 1444728091;
              HIDWORD(v39) = (951274213 * ((-1752629248 * v38) | ((-1425107063 * v38) >> 16))) ^ v13;
              LODWORD(v39) = HIDWORD(v39);
              v13 = 5 * ((v39 >> 15) + v12) + 197830471;
              HIDWORD(v39) = (-1578923117 * ((-1781923840 * v40) | ((951274213 * v40) >> 15))) ^ v12;
              LODWORD(v39) = HIDWORD(v39);
              v42 = 5 * ((v39 >> 17) + v11);
              HIDWORD(v39) = (597399067 * ((-1953300480 * v41) | ((-1578923117 * v41) >> 16))) ^ v11;
              LODWORD(v39) = HIDWORD(v39);
              v12 = v42 - 1764942795;
              v11 = 5 * ((v39 >> 19) + a2) + 850148119;
              --v36;
            }

            while (v36);
            continue;
        }

        goto LABEL_55;
      }
    }

    v28 = [v7 length];
    v29 = [v8 bytes];
    if (v28 >= 4)
    {
      v30 = v28 >> 2;
      v31 = v29;
      do
      {
        v32 = *v31++;
        HIDWORD(v33) = (461845907 * ((380141568 * v32) | ((-862048943 * v32) >> 17))) ^ a2;
        LODWORD(v33) = HIDWORD(v33);
        LODWORD(a2) = 5 * (v33 >> 19) - 430675100;
        --v30;
      }

      while (v30);
    }

    v34 = 0;
    v35 = (v29 + (v28 & 0xFFFFFFFFFFFFFFFCLL));
    if ((v28 & 3) > 1)
    {
      if ((v28 & 3) != 2)
      {
        v34 = v35[2] << 16;
      }

      v34 |= v35[1] << 8;
    }

    else if ((v28 & 3) == 0)
    {
      goto LABEL_54;
    }

    LODWORD(a2) = (461845907 * ((380141568 * (v34 ^ *v35)) | ((-862048943 * (v34 ^ *v35)) >> 17))) ^ a2;
LABEL_54:
    v51 = -2048144789 * (a2 ^ v28 ^ ((a2 ^ v28) >> 16));
    v27 = (-1028477387 * (v51 ^ (v51 >> 13))) ^ ((-1028477387 * (v51 ^ (v51 >> 13))) >> 16);
    goto LABEL_55;
  }

  v8 = v5;
  v14 = [v8 length];
  v15 = [v8 bytes];
  v16 = a2;
  while (2)
  {
    v19 = (v15 + (v14 & 0xFFFFFFFFFFFFFFF0));
    v20 = 0;
    switch(v14)
    {
      case 0uLL:
        goto LABEL_23;
      case 1uLL:
        goto LABEL_22;
      case 2uLL:
        goto LABEL_21;
      case 3uLL:
        goto LABEL_20;
      case 4uLL:
        goto LABEL_19;
      case 5uLL:
        goto LABEL_18;
      case 6uLL:
        goto LABEL_17;
      case 7uLL:
        goto LABEL_16;
      case 8uLL:
        goto LABEL_15;
      case 9uLL:
        goto LABEL_14;
      case 0xAuLL:
        goto LABEL_13;
      case 0xBuLL:
        goto LABEL_12;
      case 0xCuLL:
        goto LABEL_11;
      case 0xDuLL:
        goto LABEL_10;
      case 0xEuLL:
        goto LABEL_9;
      case 0xFuLL:
        v20 = v19[14] << 48;
LABEL_9:
        v20 |= v19[13] << 40;
LABEL_10:
        v20 ^= v19[12] << 32;
LABEL_11:
        v20 ^= v19[11] << 24;
LABEL_12:
        v20 ^= v19[10] << 16;
LABEL_13:
        v20 ^= v19[9] << 8;
LABEL_14:
        v16 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v20 ^ v19[8])) | ((0x4CF5AD432745937FLL * (v20 ^ v19[8])) >> 31));
LABEL_15:
        v20 = v19[7] << 56;
LABEL_16:
        v20 |= v19[6] << 48;
LABEL_17:
        v20 ^= v19[5] << 40;
LABEL_18:
        v20 ^= v19[4] << 32;
LABEL_19:
        v20 ^= v19[3] << 24;
LABEL_20:
        v20 ^= v19[2] << 16;
LABEL_21:
        v20 ^= v19[1] << 8;
LABEL_22:
        a2 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v20 ^ *v19)) | ((0x87C37B91114253D5 * (v20 ^ *v19)) >> 33));
LABEL_23:
        v21 = (a2 ^ v14) + (v16 ^ v14);
        v22 = v21 + (v16 ^ v14);
        v23 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v21 ^ (v21 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v21 ^ (v21 >> 33))) >> 33));
        v24 = v23 ^ (v23 >> 33);
        v25 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v22 ^ (v22 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v22 ^ (v22 >> 33))) >> 33));
        v26 = v25 ^ (v25 >> 33);
        v27 = v26 + v24;
        if (a3)
        {
          *a3 = v27 + v26;
        }

        break;
      default:
        v17 = v14 >> 4;
        v18 = (v15 + 8);
        v16 = a2;
        do
        {
          a2 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v18 - 1)) | ((0x87C37B91114253D5 * *(v18 - 1)) >> 33))) ^ a2, 37) + v16) + 1390208809;
          v16 = 5 * (a2 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v18) | ((0x4CF5AD432745937FLL * *v18) >> 31))) ^ v16, 33)) + 944331445;
          v18 += 2;
          --v17;
        }

        while (v17);
        continue;
    }

    break;
  }

LABEL_55:

  return v27;
}

void sub_1C616C03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose(&a14, 8);
  std::__tree<long long>::destroy(v21 + 48, a21);
  _Unwind_Resume(a1);
}

void *std::set<long long>::insert[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(v5, (v5 + 8), v4 + 4, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_1C616D030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<long long>::destroy(&a9, a10);

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<long long>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<long long>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<long long>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<long long>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<long long>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<long long>::destroy(*a1, v2);
  }

  return a1;
}

void *std::set<long long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<long long>::insert[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(uint64_t **a1, void *a2, uint64_t *a3, void *a4)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *std::__tree<long long>::__find_equal<long long>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<long long>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void **std::__advance[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

uint64_t std::__tree<long long>::__erase_unique<long long>(uint64_t **a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    if (v2[4] >= v3)
    {
      v4 = v2;
    }

    v2 = v2[v2[4] < v3];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<long long>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<long long>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

double std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a3;
  v21 = a1;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  for (i = 0; v20 != a4; a3 = v20)
  {
    v12 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,long long,std::__identity const,std::__less<void,void>>(v21, a2, a3 + 4, a7, &v18);
    v13 = v21;
    v21 = v12;
    std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(v12 == v13, &v21, &v20, &v19, &i);
    if (v21 == a2)
    {
      break;
    }

    v14 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,long long,std::__identity const,std::__less<void,void>>(v20, a4, v21 + 4, a7, &v18);
    v15 = v20;
    v20 = v14;
    std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(v14 == v15, &v21, &v20, &v19, &i);
  }

  *a8 = a2;
  *(a8 + 8) = a4;
  result = *&v19;
  *(a8 + 16) = v19;
  return result;
}

void *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,long long,std::__identity const,std::__less<void,void>>(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  if (a1 != a2)
  {
    v6 = a1;
    if (a1[4] >= *a3)
    {
      return a1;
    }

    else
    {
      v11 = a1;
      v7 = 1;
      v8 = std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v11, 1, &v12);
      a2 = v11;
      if (v11 != v12)
      {
        v7 = 1;
        do
        {
          v9 = a2;
          if (a2[4] >= *a3)
          {
            break;
          }

          v7 *= 2;
          v11 = a2;
          v8 = std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v11, v7, &v12);
          a2 = v11;
          v6 = v9;
        }

        while (v11 != v12);
      }

      if (v7 - v8 != 1)
      {
        return std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,long long,std::__identity const,std::__less<void,void>>(v6, a3, v7 - v8);
      }
    }
  }

  return a2;
}

uint64_t std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,std::insert_iterator<std::set<long long>>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = std::insert_iterator<std::set<long long>>::operator=[abi:ne200100](a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>,long long,std::__identity const,std::__less<void,void>>(void *a1, void *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = v4 >> 1;
      v11 = a1;
      std::__advance[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(&v11, v4 >> 1);
      v7 = v11;
      if (v11[4] < *a2)
      {
        v8 = v11[1];
        if (v8)
        {
          do
          {
            a1 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            a1 = v7[2];
            v9 = *a1 == v7;
            v7 = a1;
          }

          while (!v9);
        }

        v6 = v4 + ~v6;
      }

      v4 = v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<long long,std::__tree_node<long long,void *> *,long>>(void **a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    v3 = 0;
    v8 = -a2;
    v9 = 1;
    if (-a2 > 1)
    {
      v9 = -a2;
    }

    v10 = *a1;
    while (v10 != *a3)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v7 = *v12 == v10;
          v10 = v12;
        }

        while (v7);
      }

      *a1 = v12;
      ++v3;
      v10 = v12;
      if (v3 == v9)
      {
        v3 = v9;
        return v8 - v3;
      }
    }
  }

  else if (a2)
  {
    v3 = 0;
    v4 = *a1;
    while (v4 != *a3)
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      *a1 = v6;
      ++v3;
      v4 = v6;
      if (v3 == a2)
      {
        v8 = a2;
        v3 = a2;
        return v8 - v3;
      }
    }

    v8 = a2;
  }

  else
  {
    v8 = 0;
    v3 = 0;
  }

  return v8 - v3;
}

uint64_t std::insert_iterator<std::set<long long>>::operator=[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = std::__tree<long long>::__emplace_hint_unique_key_args<long long,long long const&>(*a1, *(a1 + 8), a2, a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void sub_1C616E7D0(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1C616F5E0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C616F8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);

  _Unwind_Resume(a1);
}

id EFFetchSignpostLog(uint64_t a1)
{
  if (EFFetchSignpostLog_onceToken != -1)
  {
    EFFetchSignpostLog_cold_1();
  }

  v2 = EFFetchSignpostLog_log;

  return v2;
}

void __EFFetchSignpostLog_block_invoke()
{
  v0 = os_log_create("com.apple.email.fetch.signpost", "PointsOfInterest");
  v1 = EFFetchSignpostLog_log;
  EFFetchSignpostLog_log = v0;
}

_DWORD *__EFLogRegisterStateCaptureBlock_block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = *(a2 + 16);
  if ((v3 & 1) != 0 && v4 == 1 || (v3 & 2) != 0 && v4 == 2 || ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 0 ? (v5 = v4 == 3) : (v5 = 0), v5))
  {
    v7 = (*(*(a1 + 40) + 16))();
    if (![v7 count])
    {
      v6 = 0;
LABEL_23:

      return v6;
    }

    v15 = 0;
    v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v15];
    v9 = v15;
    if (v8)
    {
      v10 = [v8 length];
      v11 = malloc_type_calloc(1uLL, v10 + 200, 0x1000040BEF03554uLL);
      v6 = v11;
      if (v11)
      {
        *v11 = 1;
        v11[1] = v10;
        if ([*(a1 + 32) UTF8String])
        {
          __strlcpy_chk();
        }

        v12 = v8;
        memcpy(v6 + 50, [v8 bytes], v10);
        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __EFLogRegisterStateCaptureBlock_block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [v9 ef_publicDescription];
      __EFLogRegisterStateCaptureBlock_block_invoke_cold_2(v7, v13, buf);
    }

    v6 = 0;
LABEL_22:

    goto LABEL_23;
  }

  return 0;
}

void sub_1C61708C4(_Unwind_Exception *a1)
{
  v6 = v5;

  os_unfair_lock_unlock(v2 + 2);
  _Unwind_Resume(a1);
}

void sub_1C6170B64(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

unint64_t EFRoundUnsignedInteger(unint64_t result, unint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = log10(result);
    v5 = __exp10((a2 - ceil(v4)));
    return (llround(v5 * v3) / v5);
  }

  return result;
}

long double _EFARC4NormallyDistributedRandomDouble(long double *a1, double a2, double a3)
{
  v6 = arc4random() / 4294967300.0 * 1.0 + 2.22044605e-16;
  v7 = arc4random() / 4294967300.0;
  v8 = log(v6);
  v9 = v7 * 6.28318531;
  v10 = sqrt(v8 * -2.0);
  if (a1)
  {
    *a1 = a2 + sin(v9) * v10 * a3;
  }

  return a2 + cos(v9) * v10 * a3;
}

void EFARC4NormallyDistributedRandomDoubleInRange(double a1, double a2, double a3, double a4)
{
  if (a4 <= a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"double EFARC4NormallyDistributedRandomDoubleInRange(double, double, double, double)"}];
    [v11 handleFailureInFunction:v12 file:@"EFMathUtilities.m" lineNumber:46 description:@"max must be greater than min"];
  }

  do
  {
    v13 = 0.0;
    v8 = _EFARC4NormallyDistributedRandomDouble(&v13, a1, a2);
    if (v8 >= a3 && v8 <= a4)
    {
      break;
    }
  }

  while (v13 < a3 || v13 > a4);
}

uint64_t kCompareTuples_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 index];
  if (v6 >= [v5 index])
  {
    v8 = [v4 index];
    v7 = v8 > [v5 index];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

id _ef_log_EFNetworkStatus(uint64_t a1)
{
  if (_ef_log_EFNetworkStatus_onceToken != -1)
  {
    _ef_log_EFNetworkStatus_cold_1();
  }

  v2 = _ef_log_EFNetworkStatus_log;

  return v2;
}

void sub_1C6172E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  v21 = v19;

  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);

  _Unwind_Resume(a1);
}

void sub_1C6173EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C6175810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id EFComparatorFromSortDescriptors(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSComparator  _Nonnull EFComparatorFromSortDescriptors(NSArray<NSSortDescriptor *> *__strong _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"EFNSComparatorAdditions.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"sortDescriptors"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __EFComparatorFromSortDescriptors_block_invoke;
  aBlock[3] = &unk_1E8248F58;
  v8 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

uint64_t __EFComparatorFromSortDescriptors_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = [*(*(&v13 + 1) + 8 * v10) compareObject:v5 toObject:{v6, v13}];
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

void sub_1C61782CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6178418(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6178564(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C6178778(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6178C9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id _sharedShortDateFormatter()
{
  v0 = _sharedShortDateFormatter___sharedShortDateFormatter;
  if (!_sharedShortDateFormatter___sharedShortDateFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = _sharedShortDateFormatter___sharedShortDateFormatter;
    _sharedShortDateFormatter___sharedShortDateFormatter = v1;

    [_sharedShortDateFormatter___sharedShortDateFormatter setTimeStyle:1];
    [_sharedShortDateFormatter___sharedShortDateFormatter setDateStyle:1];
    v0 = _sharedShortDateFormatter___sharedShortDateFormatter;
  }

  return v0;
}

id _sharedLongDateFormatter()
{
  v0 = _sharedLongDateFormatter___sharedLongDateFormatter;
  if (!_sharedLongDateFormatter___sharedLongDateFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = _sharedLongDateFormatter___sharedLongDateFormatter;
    _sharedLongDateFormatter___sharedLongDateFormatter = v1;

    [_sharedLongDateFormatter___sharedLongDateFormatter setTimeStyle:1];
    [_sharedLongDateFormatter___sharedLongDateFormatter setDateStyle:3];
    [_sharedLongDateFormatter___sharedLongDateFormatter setDoesRelativeDateFormatting:1];
    v0 = _sharedLongDateFormatter___sharedLongDateFormatter;
  }

  return v0;
}

void sub_1C6179340(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ___sharedMediumRelativeDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _sharedMediumRelativeDateFormatter__sharedMediumRelativeDateFormatter;
  _sharedMediumRelativeDateFormatter__sharedMediumRelativeDateFormatter = v0;

  [_sharedMediumRelativeDateFormatter__sharedMediumRelativeDateFormatter setTimeStyle:1];
  [_sharedMediumRelativeDateFormatter__sharedMediumRelativeDateFormatter setDateStyle:2];
  v2 = _sharedMediumRelativeDateFormatter__sharedMediumRelativeDateFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

uint64_t ___sharedMediumRelativeDateOnlyFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _sharedMediumRelativeDateOnlyFormatter__sharedMediumRelativeDateOnlyFormatter;
  _sharedMediumRelativeDateOnlyFormatter__sharedMediumRelativeDateOnlyFormatter = v0;

  [_sharedMediumRelativeDateOnlyFormatter__sharedMediumRelativeDateOnlyFormatter setDateStyle:2];
  v2 = _sharedMediumRelativeDateOnlyFormatter__sharedMediumRelativeDateOnlyFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

uint64_t ___sharedShortTimeFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _sharedShortTimeFormatter__sharedShortTimeFormatter;
  _sharedShortTimeFormatter__sharedShortTimeFormatter = v0;

  v2 = _sharedShortTimeFormatter__sharedShortTimeFormatter;

  return [v2 setTimeStyle:1];
}

void sub_1C61795C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6179764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C617A300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C617A594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _sharedIntegerWithGroupingFormatter()
{
  v0 = _sharedIntegerWithGroupingFormatter___sharedIntegerWithGroupingFormatter;
  if (!_sharedIntegerWithGroupingFormatter___sharedIntegerWithGroupingFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v2 = _sharedIntegerWithGroupingFormatter___sharedIntegerWithGroupingFormatter;
    _sharedIntegerWithGroupingFormatter___sharedIntegerWithGroupingFormatter = v1;

    [_sharedIntegerWithGroupingFormatter___sharedIntegerWithGroupingFormatter setUsesGroupingSeparator:1];
    [_sharedIntegerWithGroupingFormatter___sharedIntegerWithGroupingFormatter setGroupingSize:3];
    v0 = _sharedIntegerWithGroupingFormatter___sharedIntegerWithGroupingFormatter;
  }

  return v0;
}

id _sharedIntegerFormatter()
{
  v0 = _sharedIntegerFormatter___sharedIntegerFormatter;
  if (!_sharedIntegerFormatter___sharedIntegerFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v2 = _sharedIntegerFormatter___sharedIntegerFormatter;
    _sharedIntegerFormatter___sharedIntegerFormatter = v1;

    [_sharedIntegerFormatter___sharedIntegerFormatter setUsesGroupingSeparator:0];
    v0 = _sharedIntegerFormatter___sharedIntegerFormatter;
  }

  return v0;
}

void sub_1C617CAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, ...)
{
  va_start(va, a32);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C617D268(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C617D670(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *operatorDescriptionForPredicate(void *a1)
{
  v1 = [a1 compoundPredicateType];
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8249338[v1];
  }
}

void sub_1C617F104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C617FD50(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6180158(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *EFStringWithInt(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v1;
  v6 = v1;
  v2 = snprintf(__str, 0x20uLL, "%d", a1);
  v3 = CFStringCreateWithBytes(0, __str, v2, 0x600u, 0);

  return v3;
}

__CFString *EFStringWithUInt64(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v1;
  v6 = v1;
  v2 = snprintf(__str, 0x20uLL, "%llu", a1);
  v3 = CFStringCreateWithBytes(0, __str, v2, 0x600u, 0);

  return v3;
}

__CFString *EFStringWithUnsignedInteger(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v1;
  v6 = v1;
  v2 = snprintf(__str, 0x20uLL, "%lu", a1);
  v3 = CFStringCreateWithBytes(0, __str, v2, 0x600u, 0);

  return v3;
}

void sub_1C6182630(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6182D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C6183F00(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *_EFRepairString(void *a1)
{
  v1 = a1;
  if (![(__CFString *)v1 length]|| (v2 = [(__CFString *)v1 fastestEncoding], v2 == 4) || v2 == 1)
  {
    v3 = v1;
LABEL_5:
    v4 = v3;
    goto LABEL_6;
  }

  CStringPtr = CFStringGetCStringPtr(v1, 4u);
  v7 = v1;
  v8 = v7;
  if (CStringPtr)
  {
    v4 = v7;
    goto LABEL_6;
  }

  v9 = objc_opt_self();

  if (!v9 || ((v69 = 0xAAAAAAAAAAAAAAAALL, *&v10 = 0xAAAAAAAAAAAAAAAALL, *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL, v68 = 0xAAAAAAAAAAAAAAAALL, v65 = 0xAAAAAAAAAAAAAAAALL, v61 = v10, v62 = v10, v59 = v10, v60 = v10, v57 = v10, v58 = v10, *buffer = v10, v56 = v10, Length = CFStringGetLength(v8), v63 = v8, v66 = 0, v67 = Length, (CharactersPtr = CFStringGetCharactersPtr(v8)) == 0) ? (v12 = CFStringGetCStringPtr(v8, 0x600u)) : (v12 = 0), v65 = v12, v68 = 0, v69 = 0, Length < 1))
  {

LABEL_42:
    v3 = v8;
    goto LABEL_5;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 64;
  do
  {
    if (v16 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v16;
    }

    v19 = v67;
    if (v67 <= v16)
    {
      if (v15 >> 10 == 54)
      {
        goto LABEL_43;
      }

      v15 = 0;
      goto LABEL_29;
    }

    if (CharactersPtr)
    {
      v20 = &CharactersPtr[v66];
LABEL_23:
      v21 = v20[v16];
      goto LABEL_28;
    }

    if (!v65)
    {
      if (v69 <= v16 || v14 > v16)
      {
        v24 = -v18;
        v25 = v18 + v13;
        v26 = v17 - v18;
        v27 = v16 + v24;
        v28 = v27 + 64;
        if (v27 + 64 >= v67)
        {
          v28 = v67;
        }

        v68 = v27;
        v69 = v28;
        if (v67 >= v26)
        {
          v19 = v26;
        }

        v71.location = v27 + v66;
        v71.length = v19 + v25;
        CFStringGetCharacters(v63, v71, buffer);
        v14 = v68;
      }

      v20 = &buffer[-v14];
      goto LABEL_23;
    }

    v21 = *(v65 + v66 + v16);
LABEL_28:
    v22 = v15 >> 10 == 54;
    v15 = v21;
    if ((v22 ^ (v21 >> 10 == 55)))
    {
LABEL_43:

      goto LABEL_45;
    }

LABEL_29:
    ++v16;
    --v13;
    ++v17;
  }

  while (Length != v16);

  if (v15 >> 10 != 54)
  {
    goto LABEL_42;
  }

LABEL_45:
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{-[__CFString length](v8, "length")}];
  v29 = v8;
  v30 = objc_opt_self();

  if (v30)
  {
    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v61 = v31;
    v62 = v31;
    v59 = v31;
    v60 = v31;
    v57 = v31;
    v58 = v31;
    *buffer = v31;
    v56 = v31;
    v52 = v29;
    v32 = CFStringGetLength(v29);
    v63 = v29;
    v66 = 0;
    v67 = v32;
    CharactersPtr = CFStringGetCharactersPtr(v29);
    if (CharactersPtr)
    {
      v33 = 0;
    }

    else
    {
      v33 = CFStringGetCStringPtr(v29, 0x600u);
    }

    v65 = v33;
    v68 = 0;
    v69 = 0;
    if (v32 >= 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 64;
      do
      {
        if (v35 >= 4)
        {
          v39 = 4;
        }

        else
        {
          v39 = v35;
        }

        v40 = v67;
        if (v67 <= v35)
        {
          v43 = 0;
          v54 = 0;
          goto LABEL_59;
        }

        if (CharactersPtr)
        {
          v41 = &CharactersPtr[v66];
        }

        else
        {
          if (v65)
          {
            v42 = *(v65 + v66 + v35);
            goto LABEL_62;
          }

          v45 = v68;
          if (v69 <= v35 || v68 > v35)
          {
            v47 = -v39;
            v48 = v39 + v34;
            v49 = v38 - v39;
            v50 = v35 + v47;
            v51 = v50 + 64;
            if (v50 + 64 >= v67)
            {
              v51 = v67;
            }

            v68 = v50;
            v69 = v51;
            if (v67 >= v49)
            {
              v40 = v49;
            }

            v72.location = v50 + v66;
            v72.length = v40 + v48;
            CFStringGetCharacters(v63, v72, buffer);
            v45 = v68;
          }

          v41 = &buffer[-v45];
        }

        v42 = v41[v35];
LABEL_62:
        v54 = v42;
        v43 = (v42 & 0xFC00) == 55296;
        if (v37 && (v42 & 0xFC00) == 56320)
        {
          v53[0] = v36;
          v53[1] = v42;
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v53 length:2];
          [(__CFString *)v4 appendString:v44];
          goto LABEL_64;
        }

        if ((v42 & 0xF800 | 0x400) == 0xDC00)
        {
          goto LABEL_65;
        }

LABEL_59:
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v54 length:1];
        [(__CFString *)v4 appendString:v44];
LABEL_64:

LABEL_65:
        ++v35;
        v36 = v54;
        --v34;
        ++v38;
        v37 = v43;
      }

      while (v32 != v35);
    }

    v29 = v52;
  }

LABEL_6:

  return v4;
}

void sub_1C6184C40(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C6184D34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C618532C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C6185418(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C61859FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v13)
  {
  }

  _Unwind_Resume(a1);
}

id _EFCopyResponseDataForURLRequest(void *a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = objc_alloc_init(_EFURLConnectionDelegate);
  v12 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  v13 = v12;
  if (v9)
  {
    [v12 set_sourceApplicationBundleIdentifier:v9];
  }

  v14 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v13 delegate:v11 delegateQueue:0];
  v15 = [v14 dataTaskWithRequest:v10];
  v16 = v15;
  if (v15)
  {
    [v15 resume];
    v17 = [(_EFURLConnectionDelegate *)v11 future];
    v18 = [v17 resultWithTimeout:a4 error:a5];

    if (a3)
    {
      *a3 = [(_EFURLConnectionDelegate *)v11 response];
    }

    [v14 invalidateAndCancel];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void EFPostUTF8FormData(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v12 = a1;
  v9 = a3;
  v10 = [MEMORY[0x1E696AD68] requestWithURL:a2];
  [v10 setHTTPMethod:@"POST"];
  [v10 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"content-type"];
  [v10 setHTTPBody:v9];
  v11 = _EFCopyResponseDataForURLRequest(v12, v10, 0, a4, a5);
}

void sub_1C6188EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v16 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1C6189744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, ...)
{
  va_start(va, location);

  objc_destroyWeak((v37 + 56));
  objc_destroyWeak((v36 + 72));

  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 176), 8);

  _Block_object_dispose((v38 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C6189900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 64));

  _Unwind_Resume(a1);
}

void sub_1C6189E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, void *a29)
{
  v33 = v31;

  _Unwind_Resume(a1);
}

void sub_1C618A1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C618A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25)
{
  v29 = v27;

  _Unwind_Resume(a1);
}

void sub_1C618A5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C618A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  v27 = v25;

  _Unwind_Resume(a1);
}

void sub_1C618C13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C618C58C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C618D27C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C618D338(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C618DEE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C618E5D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C618EB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C618EDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id _ef_log_EFProtectedFile(uint64_t a1)
{
  if (_ef_log_EFProtectedFile_onceToken != -1)
  {
    _ef_log_EFProtectedFile_cold_1();
  }

  v2 = _ef_log_EFProtectedFile_log;

  return v2;
}

void sub_1C618FA80(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C61900A0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 8);

  _Unwind_Resume(a1);
}

uint64_t EFMarkFileAsPurgeable(void *a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = open([v3 fileSystemRepresentation], 0);
  v5 = v4;
  if (v4 < 0)
  {
    v12 = __error();
    v13 = *v12;
    if (a2)
    {
      v14 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A998];
      v23[0] = v3;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a2 = [v14 errorWithDomain:*MEMORY[0x1E696A798] code:v13 userInfo:v15];
    }

    v10 = EFPurgeableFileLog(v12);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = [v3 path];
      EFMarkFileAsPurgeable_cold_2(v16, v21, v13);
    }
  }

  else
  {
    v21[0] = 65539;
    v6 = ffsctl(v4, 0xC0084A44uLL, v21, 0);
    if (!v6)
    {
      close(v5);
      v17 = 1;
      goto LABEL_13;
    }

    v7 = close(v5);
    if (a2)
    {
      v8 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A998];
      v20 = v3;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *a2 = [v8 errorWithDomain:*MEMORY[0x1E696A798] code:v6 userInfo:v9];
    }

    v10 = EFPurgeableFileLog(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 path];
      EFMarkFileAsPurgeable_cold_1(v11, v21, v6);
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

id EFPurgeableFileLog(uint64_t a1)
{
  if (EFPurgeableFileLog_onceToken != -1)
  {
    EFPurgeableFileLog_cold_1();
  }

  v2 = EFPurgeableFileLog_log;

  return v2;
}

uint64_t EFGetFileIsPurgeableFD(int a1, BOOL *a2)
{
  v4 = 0;
  result = ffsctl(a1, 0x40084A47uLL, &v4, 0);
  if (a2)
  {
    if (!result)
    {
      *a2 = (v4 & 0xE00) != 0;
    }
  }

  return result;
}

void __EFPurgeableFileLog_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFPurgeableFile");
  v1 = EFPurgeableFileLog_log;
  EFPurgeableFileLog_log = v0;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

void sub_1C6191888(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_1C6191ABC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_1C6191CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C6193ECC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

void sub_1C6194D0C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C61950AC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&trampolineWithScheduler_object__sTrampolineLock);

  _Unwind_Resume(a1);
}

char *__EFSQLVerboseDebugLoggingEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"EFSQLVerboseDebugLoggingEnabled"];

  result = getenv("OS_ACTIVITY_DT_MODE");
  if (result)
  {
    v3 = v1;
  }

  else
  {
    v3 = 1;
  }

  EFSQLVerboseDebugLoggingEnabled_enabled = v3;
  return result;
}

id ___registerSQLiteErrorDomainUserInfoValueProvider_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (![a3 isEqualToString:*MEMORY[0x1E696A278]])
  {
    v8 = 0;
    goto LABEL_207;
  }

  v5 = [v4 code];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"EFSQLiteExtendedErrorCodeKey"];

  if (v7)
  {
    v5 = [v7 intValue];
  }

  v9 = MEMORY[0x1E696AEC0];
  if (v5 <= 522)
  {
    if (v5 <= 99)
    {
      v10 = @"SQLITE_OK";
      switch(v5)
      {
        case 0:
          goto LABEL_206;
        case 1:
          v10 = @"SQLITE_ERROR";
          break;
        case 2:
          v10 = @"SQLITE_INTERNAL";
          break;
        case 3:
          v10 = @"SQLITE_PERM";
          break;
        case 4:
          v10 = @"SQLITE_ABORT";
          break;
        case 5:
          v10 = @"SQLITE_BUSY";
          break;
        case 6:
          v10 = @"SQLITE_LOCKED";
          break;
        case 7:
          v10 = @"SQLITE_NOMEM";
          break;
        case 8:
          v10 = @"SQLITE_READONLY";
          break;
        case 9:
          v10 = @"SQLITE_INTERRUPT";
          break;
        case 10:
          v10 = @"SQLITE_IOERR";
          break;
        case 11:
          v10 = @"SQLITE_CORRUPT";
          break;
        case 12:
          v10 = @"SQLITE_NOTFOUND";
          break;
        case 13:
          v10 = @"SQLITE_FULL";
          break;
        case 14:
          v10 = @"SQLITE_CANTOPEN";
          break;
        case 15:
          v10 = @"SQLITE_PROTOCOL";
          break;
        case 16:
          v10 = @"SQLITE_EMPTY";
          break;
        case 17:
          v10 = @"SQLITE_SCHEMA";
          break;
        case 18:
          v10 = @"SQLITE_TOOBIG";
          break;
        case 19:
          v10 = @"SQLITE_CONSTRAINT";
          break;
        case 20:
          v10 = @"SQLITE_MISMATCH";
          break;
        case 21:
          v10 = @"SQLITE_MISUSE";
          break;
        case 22:
          v10 = @"SQLITE_NOLFS";
          break;
        case 23:
          v10 = @"SQLITE_AUTH";
          break;
        case 24:
          v10 = @"SQLITE_FORMAT";
          break;
        case 25:
          v10 = @"SQLITE_RANGE";
          break;
        case 26:
          v10 = @"SQLITE_NOTADB";
          break;
        case 27:
          v10 = @"SQLITE_NOTICE";
          break;
        case 28:
          v10 = @"SQLITE_WARNING";
          break;
        default:
          goto LABEL_205;
      }

      goto LABEL_206;
    }

    if (v5 <= 274)
    {
      if (v5 > 261)
      {
        if (v5 <= 265)
        {
          if (v5 == 262)
          {
            v10 = @"SQLITE_LOCKED_SHAREDCACHE";
            goto LABEL_206;
          }

          if (v5 == 264)
          {
            v10 = @"SQLITE_READONLY_RECOVERY";
            goto LABEL_206;
          }
        }

        else
        {
          switch(v5)
          {
            case 0x10A:
              v10 = @"SQLITE_IOERR_READ";
              goto LABEL_206;
            case 0x10B:
              v10 = @"SQLITE_CORRUPT_VTAB";
              goto LABEL_206;
            case 0x10E:
              v10 = @"SQLITE_CANTOPEN_NOTEMPDIR";
              goto LABEL_206;
          }
        }
      }

      else if (v5 <= 255)
      {
        if (v5 == 100)
        {
          v10 = @"SQLITE_ROW";
          goto LABEL_206;
        }

        if (v5 == 101)
        {
          v10 = @"SQLITE_DONE";
          goto LABEL_206;
        }
      }

      else
      {
        switch(v5)
        {
          case 0x100:
            v10 = @"SQLITE_OK_LOAD_PERMANENTLY";
            goto LABEL_206;
          case 0x101:
            v10 = @"SQLITE_ERROR_MISSING_COLLSEQ";
            goto LABEL_206;
          case 0x105:
            v10 = @"SQLITE_BUSY_RECOVERY";
            goto LABEL_206;
        }
      }
    }

    else if (v5 <= 512)
    {
      if (v5 <= 282)
      {
        if (v5 == 275)
        {
          v10 = @"SQLITE_CONSTRAINT_CHECK";
          goto LABEL_206;
        }

        if (v5 == 279)
        {
          v10 = @"SQLITE_AUTH_USER";
          goto LABEL_206;
        }
      }

      else
      {
        switch(v5)
        {
          case 0x11B:
            v10 = @"SQLITE_NOTICE_RECOVER_WAL";
            goto LABEL_206;
          case 0x11C:
            v10 = @"SQLITE_WARNING_AUTOINDEX";
            goto LABEL_206;
          case 0x200:
            v10 = @"SQLITE_OK_SYMLINK";
            goto LABEL_206;
        }
      }
    }

    else if (v5 > 517)
    {
      switch(v5)
      {
        case 0x206:
          v10 = @"SQLITE_LOCKED_VTAB";
          goto LABEL_206;
        case 0x208:
          v10 = @"SQLITE_READONLY_CANTLOCK";
          goto LABEL_206;
        case 0x20A:
          v10 = @"SQLITE_IOERR_SHORT_READ";
          goto LABEL_206;
      }
    }

    else
    {
      switch(v5)
      {
        case 0x201:
          v10 = @"SQLITE_ERROR_RETRY";
          goto LABEL_206;
        case 0x204:
          v10 = @"SQLITE_ABORT_ROLLBACK";
          goto LABEL_206;
        case 0x205:
          v10 = @"SQLITE_BUSY_SNAPSHOT";
          goto LABEL_206;
      }
    }

    goto LABEL_205;
  }

  if (v5 <= 2313)
  {
    if (v5 <= 1042)
    {
      if (v5 > 777)
      {
        if (v5 > 1031)
        {
          switch(v5)
          {
            case 0x408:
              v10 = @"SQLITE_READONLY_DBMOVED";
              goto LABEL_206;
            case 0x40A:
              v10 = @"SQLITE_IOERR_FSYNC";
              goto LABEL_206;
            case 0x40E:
              v10 = @"SQLITE_CANTOPEN_CONVPATH";
              goto LABEL_206;
          }
        }

        else
        {
          switch(v5)
          {
            case 0x30A:
              v10 = @"SQLITE_IOERR_WRITE";
              goto LABEL_206;
            case 0x30E:
              v10 = @"SQLITE_CANTOPEN_FULLPATH";
              goto LABEL_206;
            case 0x313:
              v10 = @"SQLITE_CONSTRAINT_FOREIGNKEY";
              goto LABEL_206;
          }
        }
      }

      else if (v5 > 538)
      {
        switch(v5)
        {
          case 0x21B:
            v10 = @"SQLITE_NOTICE_RECOVER_ROLLBACK";
            goto LABEL_206;
          case 0x301:
            v10 = @"SQLITE_ERROR_SNAPSHOT";
            goto LABEL_206;
          case 0x308:
            v10 = @"SQLITE_READONLY_ROLLBACK";
            goto LABEL_206;
        }
      }

      else
      {
        switch(v5)
        {
          case 0x20B:
            v10 = @"SQLITE_CORRUPT_SEQUENCE";
            goto LABEL_206;
          case 0x20E:
            v10 = @"SQLITE_CANTOPEN_ISDIR";
            goto LABEL_206;
          case 0x213:
            v10 = @"SQLITE_CONSTRAINT_COMMITHOOK";
            goto LABEL_206;
        }
      }
    }

    else if (v5 <= 1545)
    {
      if (v5 > 1293)
      {
        switch(v5)
        {
          case 0x50E:
            v10 = @"SQLITE_CANTOPEN_DIRTYWAL";
            goto LABEL_206;
          case 0x513:
            v10 = @"SQLITE_CONSTRAINT_NOTNULL";
            goto LABEL_206;
          case 0x608:
            v10 = @"SQLITE_READONLY_DIRECTORY";
            goto LABEL_206;
        }
      }

      else
      {
        switch(v5)
        {
          case 0x413:
            v10 = @"SQLITE_CONSTRAINT_FUNCTION";
            goto LABEL_206;
          case 0x508:
            v10 = @"SQLITE_READONLY_CANTINIT";
            goto LABEL_206;
          case 0x50A:
            v10 = @"SQLITE_IOERR_DIR_FSYNC";
            goto LABEL_206;
        }
      }
    }

    else if (v5 <= 1801)
    {
      switch(v5)
      {
        case 0x60A:
          v10 = @"SQLITE_IOERR_TRUNCATE";
          goto LABEL_206;
        case 0x60E:
          v10 = @"SQLITE_CANTOPEN_SYMLINK";
          goto LABEL_206;
        case 0x613:
          v10 = @"SQLITE_CONSTRAINT_PRIMARYKEY";
          goto LABEL_206;
      }
    }

    else if (v5 > 2057)
    {
      if (v5 == 2058)
      {
        v10 = @"SQLITE_IOERR_UNLOCK";
        goto LABEL_206;
      }

      if (v5 == 2067)
      {
        v10 = @"SQLITE_CONSTRAINT_UNIQUE";
        goto LABEL_206;
      }
    }

    else
    {
      if (v5 == 1802)
      {
        v10 = @"SQLITE_IOERR_FSTAT";
        goto LABEL_206;
      }

      if (v5 == 1811)
      {
        v10 = @"SQLITE_CONSTRAINT_TRIGGER";
        goto LABEL_206;
      }
    }

LABEL_205:
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown error code: %d", v5];
    goto LABEL_206;
  }

  if (v5 > 4873)
  {
    if (v5 <= 6409)
    {
      if (v5 > 5641)
      {
        switch(v5)
        {
          case 0x160A:
            v10 = @"SQLITE_IOERR_SEEK";
            goto LABEL_206;
          case 0x170A:
            v10 = @"SQLITE_IOERR_DELETE_NOENT";
            goto LABEL_206;
          case 0x180A:
            v10 = @"SQLITE_IOERR_MMAP";
            goto LABEL_206;
        }
      }

      else
      {
        switch(v5)
        {
          case 0x130A:
            v10 = @"SQLITE_IOERR_SHMSIZE";
            goto LABEL_206;
          case 0x140A:
            v10 = @"SQLITE_IOERR_SHMLOCK";
            goto LABEL_206;
          case 0x150A:
            v10 = @"SQLITE_IOERR_SHMMAP";
            goto LABEL_206;
        }
      }
    }

    else if (v5 <= 7177)
    {
      switch(v5)
      {
        case 0x190A:
          v10 = @"SQLITE_IOERR_GETTEMPPATH";
          goto LABEL_206;
        case 0x1A0A:
          v10 = @"SQLITE_IOERR_CONVPATH";
          goto LABEL_206;
        case 0x1B0A:
          v10 = @"SQLITE_IOERR_VNODE";
          goto LABEL_206;
      }
    }

    else if (v5 > 7689)
    {
      if (v5 == 7690)
      {
        v10 = @"SQLITE_IOERR_COMMIT_ATOMIC";
        goto LABEL_206;
      }

      if (v5 == 7946)
      {
        v10 = @"SQLITE_IOERR_ROLLBACK_ATOMIC";
        goto LABEL_206;
      }
    }

    else
    {
      if (v5 == 7178)
      {
        v10 = @"SQLITE_IOERR_AUTH";
        goto LABEL_206;
      }

      if (v5 == 7434)
      {
        v10 = @"SQLITE_IOERR_BEGIN_ATOMIC";
        goto LABEL_206;
      }
    }

    goto LABEL_205;
  }

  if (v5 <= 3081)
  {
    if (v5 > 2578)
    {
      switch(v5)
      {
        case 0xA13:
          v10 = @"SQLITE_CONSTRAINT_ROWID";
          goto LABEL_206;
        case 0xB0A:
          v10 = @"SQLITE_IOERR_BLOCKED";
          goto LABEL_206;
        case 0xB13:
          v10 = @"SQLITE_CONSTRAINT_PINNED";
          goto LABEL_206;
      }
    }

    else
    {
      switch(v5)
      {
        case 0x90A:
          v10 = @"SQLITE_IOERR_RDLOCK";
          goto LABEL_206;
        case 0x913:
          v10 = @"SQLITE_CONSTRAINT_VTAB";
          goto LABEL_206;
        case 0xA0A:
          v10 = @"SQLITE_IOERR_DELETE";
          goto LABEL_206;
      }
    }

    goto LABEL_205;
  }

  if (v5 <= 3849)
  {
    switch(v5)
    {
      case 0xC0A:
        v10 = @"SQLITE_IOERR_NOMEM";
        goto LABEL_206;
      case 0xD0A:
        v10 = @"SQLITE_IOERR_ACCESS";
        goto LABEL_206;
      case 0xE0A:
        v10 = @"SQLITE_IOERR_CHECKRESERVEDLOCK";
        goto LABEL_206;
    }

    goto LABEL_205;
  }

  if (v5 > 4361)
  {
    if (v5 == 4362)
    {
      v10 = @"SQLITE_IOERR_DIR_CLOSE";
      goto LABEL_206;
    }

    if (v5 == 4618)
    {
      v10 = @"SQLITE_IOERR_SHMOPEN";
      goto LABEL_206;
    }

    goto LABEL_205;
  }

  if (v5 == 3850)
  {
    v10 = @"SQLITE_IOERR_LOCK";
    goto LABEL_206;
  }

  if (v5 != 4106)
  {
    goto LABEL_205;
  }

  v10 = @"SQLITE_IOERR_CLOSE";
LABEL_206:
  v8 = [v9 stringWithFormat:@"%@: %s", v10, sqlite3_errstr(v5)];

LABEL_207:

  return v8;
}

__CFString *EFSQLStringForCollation(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return &stru_1F459BF68;
  }

  else
  {
    return off_1E8249CA0[a1 - 1];
  }
}

__CFString *EFSQLStringForOrderDirection(uint64_t a1)
{
  v1 = &stru_1F459BF68;
  if (a1 == 1)
  {
    v1 = @"ASC";
  }

  if (a1 == 2)
  {
    return @"DESC";
  }

  else
  {
    return v1;
  }
}

void sub_1C619D3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C61A3580(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id _keyForClassInstanceProperty(void *a1, objc_class *a2, const char *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = a1;
  Name = class_getName(a2);
  v6 = strlen(Name);
  v7 = sel_getName(a3);
  v19 = Name;
  v8 = strlen(v7);
  v9 = [v20 UTF8String];
  v10 = strlen(v9);
  v18 = &v18;
  v11 = v10 + 1 + v6;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  if ((v15 & 1) == 0)
  {
    memset(&v18 - v13, 170, v12);
  }

  memcpy(v14, v9, v10);
  v14[v10] = 1;
  memcpy(&v14[v10 + 1], v19, v6);
  v14[v11] = 46;
  memcpy(&v14[v11 + 1], v7, v8);
  v14[v11 + 1 + v8] = 0;
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v14, v18}];

  return v16;
}

id _keyForLookupValue(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 UTF8String];
  v5 = strlen(v4);
  v6 = [v3 description];
  v7 = [v6 UTF8String];

  v8 = strlen(v7);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  if ((v12 & 1) == 0)
  {
    memset(v15 - v10, 170, v9);
  }

  memcpy(v11, v4, v5);
  v11[v5] = 1;
  memcpy(&v11[v5 + 1], v7, v8);
  v11[v8 + 1 + v5] = 0;
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];

  return v13;
}

id _keyForProtocolInstanceProperty(void *a1, Protocol *a2, const char *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = a1;
  Name = protocol_getName(a2);
  v6 = strlen(Name);
  v7 = sel_getName(a3);
  v19 = Name;
  v8 = strlen(v7);
  v9 = [v20 UTF8String];
  v10 = strlen(v9);
  v18 = &v18;
  v11 = v10 + 2 + v6;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  if ((v15 & 1) == 0)
  {
    memset(&v18 - v13, 170, v12);
  }

  memcpy(v14, v9, v10);
  *&v14[v10] = 15361;
  memcpy(&v14[v10 + 2], v19, v6);
  *&v14[v11] = 11838;
  memcpy(&v14[v11 + 2], v7, v8);
  v14[v11 + 2 + v8] = 0;
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v14, v18}];

  return v16;
}

void sub_1C61A69CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C61A86DC(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

void sub_1C61A9BAC(uint64_t a1)
{
  *(v3 - 112) = a1;

  _Unwind_Resume(*(v3 - 112));
}

void sub_1C61AA000(uint64_t a1)
{
  *(v3 - 104) = a1;

  _Unwind_Resume(*(v3 - 104));
}

void sub_1C61AA51C(uint64_t a1)
{
  *(v3 - 112) = a1;

  _Unwind_Resume(*(v3 - 112));
}

void sub_1C61AAC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1C61AB16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C61ABBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C61AF360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C61AF640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C61AFC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);

  _Unwind_Resume(a1);
}

void sub_1C61AFF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Unwind_Resume(a1);
}

void sub_1C61B051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 64), 8);

  _Unwind_Resume(a1);
}

void EFSaveTailspin(unint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1 > 0xA)
  {
    v4 = @"unknown-cause";
  }

  else
  {
    v4 = sContextNames[3 * a1];
  }

  memset(__b, 170, sizeof(__b));
  LODWORD(__b[4]) = 0;
  *v22 = 0xE00000001;
  v23 = 1;
  v24 = getpid();
  v20 = 648;
  v5 = sysctl(v22, 4u, __b, &v20, 0, 0);
  v6 = v5;
  v7 = __b[4];
  v8 = _tsl(v5);
  v9 = v8;
  if (v6 || (v7 & 0x800) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v4;
      v14 = [(__CFString *)v4 UTF8String];
      v15 = _shortContextName(a1);
      LODWORD(__b[0]) = 136446466;
      *(__b + 4) = v14;
      WORD2(__b[1]) = 2114;
      *(&__b[1] + 6) = v15;
      _os_log_impl(&dword_1C6152000, v9, OS_LOG_TYPE_DEFAULT, "Saving tailspin for %{public}s (%{public}@)", __b, 0x16u);
    }

    v16 = DRTailspinRequest();
    v17 = 0;
    v9 = v17;
    if ((v16 & 1) == 0)
    {
      v18 = _tsl(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = _shortContextName(a1);
        LODWORD(__b[0]) = 138543874;
        *(__b + 4) = v4;
        WORD2(__b[1]) = 2114;
        *(&__b[1] + 6) = v19;
        HIWORD(__b[2]) = 2114;
        __b[3] = v9;
        _os_log_error_impl(&dword_1C6152000, v18, OS_LOG_TYPE_ERROR, "Failed to generate %{public}@ (%{public}@) tailspin: %{public}@", __b, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = v4;
    v11 = [(__CFString *)v4 UTF8String];
    v12 = _shortContextName(a1);
    LODWORD(__b[0]) = 136446466;
    *(__b + 4) = v11;
    WORD2(__b[1]) = 2114;
    *(&__b[1] + 6) = v12;
    _os_log_impl(&dword_1C6152000, v9, OS_LOG_TYPE_INFO, "Skipping tailspin for %{public}s (%{public}@)", __b, 0x16u);
  }
}

id _tsl(uint64_t a1)
{
  if (_tsl_o != -1)
  {
    _tsl_cold_1();
  }

  v2 = _tsl_h;

  return v2;
}

__CFString *_shortContextName(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v2 = @"unknown-cause";
  }

  else
  {
    v2 = sContextNames[3 * a1 + 1];
  }

  return v2;
}

void ___tsl_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFTailspin");
  v1 = _tsl_h;
  _tsl_h = v0;
}

uint64_t __EFIsRunningUnitTests_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKeyedSubscript:@"CFBundlePackageType"];
  v5 = [v4 isEqual:@"BNDL"];

  if (v5)
  {
    v6 = [v2 bundleIdentifier];
    v7 = [v6 componentsSeparatedByString:@"."];

    v8 = [v7 ef_any:&__block_literal_global_16_0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void _readVersions_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = _CFCopySystemVersionDictionary();
  if (v1)
  {
    v2 = v1;
    v3 = [CFDictionaryGetValue(v1 *MEMORY[0x1E695E208])];
    v4 = sProductVersion;
    sProductVersion = v3;

    v5 = [CFDictionaryGetValue(v2 *MEMORY[0x1E695E1E8])];
    v6 = sBuildVersion;
    sBuildVersion = v5;

    CFRelease(v2);
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t EFIsSeedBuild()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqual:@"Beta"];

  return v1;
}

uint64_t EFIsCustomerBuild()
{
  if (EFIsSeedBuild())
  {
    return 0;
  }

  v1 = +[EFDevice currentDevice];
  v2 = [v1 isInternal];

  return v2 ^ 1u;
}

id EFProductName()
{
  v0 = MGCopyAnswer();
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Mail", v0];

  return v1;
}

id EFVerboseVersion(uint64_t a1)
{
  if (EFVerboseVersion_onceToken != -1)
  {
    EFVerboseVersion_cold_1();
  }

  v2 = EFVerboseVersion_verboseVersion;

  return v2;
}

void __EFVerboseVersion_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = EFProductName();
  v1 = EFSystemBuildVersion(v4);
  v2 = [v0 initWithFormat:@"%@ %@", v4, v1];
  v3 = EFVerboseVersion_verboseVersion;
  EFVerboseVersion_verboseVersion = v2;
}

id EFSystemBuildVersion(uint64_t a1)
{
  if (sSystemVersionsOnce != -1)
  {
    EFSystemBuildVersion_cold_1();
  }

  v2 = sBuildVersion;

  return v2;
}

id EFSystemVersion(uint64_t a1)
{
  if (sSystemVersionsOnce != -1)
  {
    EFSystemBuildVersion_cold_1();
  }

  v2 = sProductVersion;

  return v2;
}

void sub_1C61B1D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void ef_xpc_activity_run_if_necessary(const char *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E69E9C50];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __ef_xpc_activity_run_if_necessary_block_invoke;
  v6[3] = &unk_1E824A3E0;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  xpc_activity_register(a1, v4, v6);
}

void __ef_xpc_activity_run_if_necessary_block_invoke(uint64_t a1, void *a2)
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = activityLog(state);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!state)
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      v13 = 136446210;
      *v14 = v8;
      _os_log_impl(&dword_1C6152000, v5, OS_LOG_TYPE_INFO, "Check in '%{public}s'", &v13, 0xCu);
    }

    v9 = *(a1 + 40);
    count = xpc_activity_copy_criteria(v3);
    v5 = count;
    if (!count || (count = xpc_dictionary_get_count(count)) == 0)
    {
      v11 = activityLog(count);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136446210;
        *v14 = v9;
        _os_log_impl(&dword_1C6152000, v11, OS_LOG_TYPE_INFO, "Unregister '%{public}s'", &v13, 0xCu);
      }

      xpc_activity_unregister(v9);
    }

    goto LABEL_15;
  }

  if (state != 2)
  {
    if (v6)
    {
      v12 = *(a1 + 40);
      v13 = 67109378;
      v14[0] = state;
      LOWORD(v14[1]) = 2082;
      *(&v14[1] + 2) = v12;
      _os_log_impl(&dword_1C6152000, v5, OS_LOG_TYPE_INFO, "Unexpected state %u for '%{public}s'", &v13, 0x12u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v6)
  {
    v7 = *(a1 + 40);
    v13 = 136446210;
    *v14 = v7;
    _os_log_impl(&dword_1C6152000, v5, OS_LOG_TYPE_INFO, "Run '%{public}s'", &v13, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_16:
}

uint64_t EFFuture.__allocating_init<A>(_:)(void *a1)
{
  v2 = swift_allocObject();
  EFFuture.init<A>(_:)(a1);
  return v2;
}

void EFFuture.init<A>(_:)(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    *(v1 + 16) = v3;
  }

  else
  {

    __break(1u);
  }
}

uint64_t EFFuture.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  result = static EFFuture.asAnyObject(_:)(a1);
  if (result)
  {
    v5 = [objc_opt_self() futureWithResult_];
    v6 = swift_allocObject();
    EFFuture.init<A>(_:)(v5);
    swift_unknownObjectRelease();
    (*(*(*(v2 + 80) - 8) + 8))(a1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static EFFuture.asAnyObject(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = sub_1C61B8D84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v11 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  v9 = sub_1C61B59B8(v7);
  (*(v5 + 8))(v7, v4);
  result = 0;
  if (!v9)
  {
    return sub_1C61B8D94();
  }

  return result;
}

uint64_t EFFuture.__allocating_init(_:)(void *a1)
{
  v2 = a1;
  v3 = sub_1C61B8D44();
  v4 = [objc_opt_self() futureWithError_];

  v5 = swift_allocObject();
  EFFuture.init<A>(_:)(v4);

  return v5;
}

uint64_t EFFuture.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = a1;
  v5[4] = a2;
  v11[4] = sub_1C61B5B54;
  v11[5] = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C61B3E4C;
  v11[3] = &block_descriptor;
  v6 = _Block_copy(v11);
  v7 = objc_opt_self();

  v8 = [v7 futureWithBlock_];
  _Block_release(v6);

  v9 = swift_allocObject();
  EFFuture.init<A>(_:)(v8);

  return v9;
}

uint64_t sub_1C61B3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  type metadata accessor for EFFuture(0, a4, v10, v11);
  v12 = static EFFuture.asAnyObject(_:)(v8);
  (*(v5 + 8))(v8, a4);
  return v12;
}

id sub_1C61B3E4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t EFFuture.result()@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 80);
  v3 = sub_1C61B8D84();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v15[0] = 0;
  v8 = [v7 result_];
  v9 = v15[0];
  if (v15[0])
  {
    swift_willThrow();
    v9;
    return swift_unknownObjectRelease();
  }

  else
  {
    v11 = v14;
    static EFFuture.asValue(_:)(v8, v6);
    v12 = *(v2 - 8);
    if ((*(v12 + 48))(v6, 1, v2) == 1)
    {
      result = (*(v4 + 8))(v6, v3);
      __break(1u);
    }

    else
    {
      swift_unknownObjectRelease();
      return (*(v12 + 32))(v11, v6, v2);
    }
  }

  return result;
}

uint64_t static EFFuture.asValue(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 80);
  v6 = sub_1C61B8D84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  v15[1] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1BF7D0, &qword_1C61CC9F0);
  v10 = swift_dynamicCast();
  v11 = *(v5 - 8);
  v12 = *(v11 + 56);
  if (v10)
  {
    v12(v9, 0, 1, v5);
    (*(v11 + 32))(a2, v9, v5);
    return (v12)(a2, 0, 1, v5);
  }

  else
  {
    v12(v9, 1, 1, v5);
    v15[0] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v14 = swift_dynamicCast();
    v12(a2, v14 ^ 1u, 1, v5);
    result = (*(v11 + 48))(v9, 1, v5);
    if (result != 1)
    {
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t EFFuture.result(withTimeout:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = *(*v2 + 80);
  v6 = sub_1C61B8D84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = v2[2];
  v17[0] = 0;
  v11 = [v10 resultWithTimeout:v17 error:a2];
  v12 = v17[0];
  if (v11)
  {
    v13 = swift_unknownObjectRetain();
    static EFFuture.asValue(_:)(v13, v9);
    swift_unknownObjectRelease();
    v14 = *(v5 - 8);
    if ((*(v14 + 48))(v9, 1, v5) == 1)
    {
      result = (*(v7 + 8))(v9, v6);
      __break(1u);
    }

    else
    {
      swift_unknownObjectRelease();
      return (*(v14 + 32))(a1, v9, v5);
    }
  }

  else
  {
    v16 = v12;
    sub_1C61B8D54();

    return swift_willThrow();
  }

  return result;
}

uint64_t EFFuture.result(beforeDate:)@<X0>(uint64_t a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *(*v1 + 80);
  v4 = sub_1C61B8D84();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = v1[2];
  v8 = sub_1C61B8D64();
  v17[0] = 0;
  v9 = [v7 resultBeforeDate:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = swift_unknownObjectRetain();
    static EFFuture.asValue(_:)(v11, v6);
    swift_unknownObjectRelease();
    v12 = *(v3 - 8);
    if ((*(v12 + 48))(v6, 1, v3) == 1)
    {
      result = (*(v16 + 8))(v6, v4);
      __break(1u);
    }

    else
    {
      swift_unknownObjectRelease();
      return (*(v12 + 32))(a1, v6, v3);
    }
  }

  else
  {
    v14 = v10;
    sub_1C61B8D54();

    return swift_willThrow();
  }

  return result;
}

uint64_t EFFuture.onSuccess(on:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[2];
  v9 = swift_allocObject();
  v9[2] = *(v7 + 80);
  v9[3] = a2;
  v9[4] = a3;
  v12[4] = sub_1C61B5BC0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C61B4A98;
  v12[3] = &block_descriptor_6;
  v10 = _Block_copy(v12);

  [v8 onScheduler:a1 addSuccessBlock:v10];
  _Block_release(v10);
}

uint64_t sub_1C61B48B8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1C61B8D84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EFFuture(0, a4, v15, v16);
  static EFFuture.asValue(_:)(a1, v11);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v11, a4);
    a2(v14);
    return (*(v12 + 8))(v14, a4);
  }

  return result;
}

uint64_t sub_1C61B4A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t EFFuture.onError(on:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v11[4] = sub_1C61B5BCC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C61B4BF4;
  v11[3] = &block_descriptor_12;
  v9 = _Block_copy(v11);

  [v7 onScheduler:a1 addFailureBlock:v9];
  _Block_release(v9);
}

void sub_1C61B4BF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t EFFuture.always(on:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v11[4] = sub_1C61B5BF4;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C61B4D58;
  v11[3] = &block_descriptor_18;
  v9 = _Block_copy(v11);

  [v7 onScheduler:a1 always:v9];
  _Block_release(v9);
}

uint64_t sub_1C61B4D58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t EFFuture.then<A>(on:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for EFFuture(0, a4, a3, a4);
  v10 = v4[2];
  v11 = swift_allocObject();
  v11[2] = *(v9 + 80);
  v11[3] = a4;
  v11[4] = a2;
  v11[5] = a3;
  v16[4] = sub_1C61B5C34;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C61B50F0;
  v16[3] = &block_descriptor_24;
  v12 = _Block_copy(v16);

  v13 = [v10 onScheduler:a1 then:v12];
  _Block_release(v12);
  v14 = swift_allocObject();
  EFFuture.init<A>(_:)(v13);
  return v14;
}

id sub_1C61B4EF4(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1C61B8D84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EFFuture(0, a4, v15, v16);
  static EFFuture.asValue(_:)(a1, v11);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v11, a4);
    v17 = a2(v14);
    (*(v12 + 8))(v14, a4);
    v18 = *(v17 + 16);

    return v18;
  }

  return result;
}

id sub_1C61B50F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

uint64_t EFFuture.recover<A>(on:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for EFFuture(0, a4, a3, a4);
  v10 = v4[2];
  v11 = swift_allocObject();
  v11[2] = *(v9 + 80);
  v11[3] = a4;
  v11[4] = a2;
  v11[5] = a3;
  v16[4] = sub_1C61B5C40;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C61B52B4;
  v16[3] = &block_descriptor_30;
  v12 = _Block_copy(v16);

  v13 = [v10 onScheduler:a1 recover:v12];
  _Block_release(v12);
  v14 = swift_allocObject();
  EFFuture.init<A>(_:)(v13);
  return v14;
}

id sub_1C61B52B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t EFFuture.map<A>(on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for EFFuture(0, a4, a3, a4);
  v10 = v4[2];
  v11 = swift_allocObject();
  v12 = *(v9 + 80);
  v11[2] = v12;
  v11[3] = a4;
  v11[4] = a2;
  v11[5] = a3;
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = sub_1C61B5C84;
  v13[5] = v11;
  v18[4] = sub_1C61B5C90;
  v18[5] = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1C61B5804;
  v18[3] = &block_descriptor_39;
  v14 = _Block_copy(v18);

  v15 = [v10 onScheduler:a1 map:v14];
  _Block_release(v14);
  v16 = swift_allocObject();
  EFFuture.init<A>(_:)(v15);
  return v16;
}

uint64_t sub_1C61B54AC@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a2;
  v9 = sub_1C61B8D84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EFFuture(0, a3, v17, v18);
  static EFFuture.asValue(_:)(a1, v13);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v19 = 1;
  }

  else
  {
    (*(v14 + 32))(v16, v13, a3);
    v22(v16);
    (*(v14 + 8))(v16, a3);
    v19 = 0;
  }

  return (*(*(a4 - 8) + 56))(a5, v19, 1, a4);
}

_OWORD *sub_1C61B56DC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  v8 = sub_1C61B8D84();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  a2(a1);
  v11 = *(a3 - 8);
  result = (*(v11 + 48))(v10, 1, a3);
  if (result == 1)
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    v15 = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(v11 + 32))(boxed_opaque_existential_0, v10, a3);
    return sub_1C61B5EAC(v14, a4);
  }

  return result;
}

id sub_1C61B5804(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v11, v3);

  swift_unknownObjectRelease();
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1C61B8D94();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t EFFuture.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

BOOL sub_1C61B59B8(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = sub_1C61B8D84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  (*(v5 + 16))(v10 - v6, a1, v4);
  if ((*(*(v3 - 8) + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
LABEL_5:
    sub_1C61B8D74();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass() != 0;
    swift_unknownObjectRelease();
    return v8;
  }

  sub_1C61B5EBC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_1C61B5C40()
{
  v1 = *((*(v0 + 32))() + 16);

  return v1;
}

uint64_t sub_1C61B5D20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C61B5D40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1EC1BF858)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC1BF858);
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_1C61B5EAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C61B5EBC()
{
  result = qword_1EC1BF860[0];
  if (!qword_1EC1BF860[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EC1BF860);
  }

  return result;
}

uint64_t EFPromise.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(EFPromise) init];
  return v0;
}

uint64_t EFPromise.finish(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1C61B8D84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  LOBYTE(a1) = EFPromise.finish(with:error:)(v7, 0);
  (*(v5 + 8))(v7, v4);
  return a1 & 1;
}

id EFPromise.finish(with:error:)(char *a1, void *a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_1C61B8D84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v18 = v2[2];
  v10 = *(v5 - 8);
  v11 = *(v10 + 48);
  v12 = 0;
  if (v11(a1, 1, v5) != 1)
  {
    (*(v7 + 16))(v9, a1, v6);
    result = v11(v9, 1, v5);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for EFFuture(0, v5, v14, v15);
    v12 = static EFFuture.asAnyObject(_:)(v9);
    (*(v10 + 8))(v9, v5);
  }

  if (a2)
  {
    a2 = sub_1C61B8D44();
  }

  v16 = [v18 finishWithResult:v12 error:a2];
  swift_unknownObjectRelease();

  return v16;
}

uint64_t EFPromise.finish(_:)(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1C61B8D84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(*(v3 - 8) + 56))(&v9 - v6, 1, 1, v3);
  LOBYTE(a1) = EFPromise.finish(with:error:)(v7, a1);
  (*(v5 + 8))(v7, v4);
  return a1 & 1;
}

uint64_t EFPromise.finish(_:)(void (*a1)(uint64_t))
{
  v3 = *(*v1 + 80);
  v4 = sub_1C61B8D84();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  a1(v7);
  (*(*(v3 - 8) + 56))(v9, 0, 1, v3);
  EFPromise.finish(with:error:)(v9, 0);
  return (*(v5 + 8))(v9, v4);
}

uint64_t EFPromise.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C61B675C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v6 - v3, v4);
  return swift_setAtReferenceWritableKeyPath();
}

uint64_t Locked.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C61B69D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v7 = *(v4 - 8);
  (*(v7 + 8))(a1, v4);
  v5 = *(v7 + 16);

  return v5(a1, v3, v4);
}

void EFEncodeCacheableInstance_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 134217984;
  v2 = EFEncodeCacheableInstance_sInstanceCount;
  _os_log_debug_impl(&dword_1C6152000, log, OS_LOG_TYPE_DEBUG, "Has created %td instance IDs.", &v1, 0xCu);
}

void EFVerifyFileProtectionType_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6152000, log, OS_LOG_TYPE_ERROR, "Could not get file protection type for %@: %{public}@", buf, 0x16u);
}

void WithDeviceIsInternal_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C6152000, log, OS_LOG_TYPE_FAULT, "Exception occured: %{public}@\nSymbols:\n%{public}@", buf, 0x16u);
}

void __EFLogRegisterStateCaptureBlock_block_invoke_cold_2(uint64_t a1, void *a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6152000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Looks like this failed to transform state dictionary %@ into a property list, please check previous logging: %{public}@", buf, 0x16u);
}

void EFMarkFileAsPurgeable_cold_1(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_1C6152000, v5, OS_LOG_TYPE_ERROR, "Failed to mark '%@' as purgeable %{errno}d", v4, 0x12u);
}

void EFMarkFileAsPurgeable_cold_2(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_1C6152000, v5, OS_LOG_TYPE_ERROR, "Failed to open '%@': %{errno}d", v4, 0x12u);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}