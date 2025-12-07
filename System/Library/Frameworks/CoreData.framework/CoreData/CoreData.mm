void developerSubmittedBlockToNSManagedObjectContextPerform(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((v4 & 4) != 0)
  {
    v5 = objc_autoreleasePoolPush();
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x2000) != 0)
  {
LABEL_5:
    __dmb(0xBu);
  }

LABEL_6:
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 712);
  v8 = a1[3];
  v20 = v7;
  if (!v8)
  {
    v11 = 0;
    if (v7 == v2)
    {
      v12 = 1;
      if (!_PF_Threading_Debugging_level)
      {
        goto LABEL_19;
      }

      goto LABEL_60;
    }

    goto LABEL_16;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = _PF_Threading_Debugging_level < 2;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    dispatch_assert_queue_V2(v9);
  }

  if (v7 != v2)
  {
    do
    {
      v11 = atomic_load((v8 + 8));
    }

    while (!_PF_actor_set_owner(v11, v8, v2));
LABEL_16:
    v12 = 0;
    *(StatusReg + 712) = v2;
    goto LABEL_18;
  }

  v11 = 0;
  v12 = 1;
LABEL_18:
  if (!_PF_Threading_Debugging_level)
  {
    goto LABEL_19;
  }

LABEL_60:
  _PFAssertSafeMultiThreadedAccess_impl(v2, sel_performBlock_);
LABEL_19:
  v3[2](v3);
  if ((v4 & 0x1000) != 0)
  {
    if (v4)
    {
      _Block_release(v3);
      free(a1);
    }

    if ((v4 & 4) != 0 && v5)
    {
      objc_autoreleasePoolPop(v5);
    }

    if (v12)
    {
      *(StatusReg + 712) = 0;
      if (v11 == v2)
      {
        _PF_actor_set_owner(v2, v8, 0);
      }
    }

    else
    {
      if (v11 == v2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      *(StatusReg + 712) = v20;
      v14 = _PF_actor_set_owner(v2, v8, v13);
      if (v8)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        do
        {
          v16 = atomic_load((v8 + 8));
        }

        while (!_PF_actor_set_owner(v16, v8, v13));
      }
    }

LABEL_54:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_55;
  }

  if (v4)
  {
    _Block_release(v3);
  }

  if ((v4 & 2) != 0)
  {
    [v2 processPendingChanges];
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_46;
  }

  if (v5)
  {
    objc_autoreleasePoolPop(v5);
  }

  [(NSManagedObjectContext *)v2 _processReferenceQueue:?];
LABEL_46:
  if ((v12 & 1) == 0)
  {
    *(StatusReg + 712) = v20;
    v17 = _PF_actor_set_owner(v2, v8, v11);
    if (v8)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      do
      {
        v19 = atomic_load((v8 + 8));
      }

      while (!_PF_actor_set_owner(v19, v8, v11));
    }
  }

  if ((v4 & 1) == 0)
  {

    goto LABEL_54;
  }

  CFRelease(v2);
  free(a1);
  if ((v4 & 0x2000) != 0)
  {
LABEL_55:
    __dmb(0xBu);
  }
}

uint64_t PFInstrumentsRecordingEnabled()
{
  result = kdebug_is_enabled();
  if (result)
  {
    if (PFInstrumentsGetLog_logtoken != -1)
    {
      dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
    }

    v1 = PFInstrumentsGetLog_coreDataInstrumentsLog;

    return os_signpost_enabled(v1);
  }

  return result;
}

void sub_185660EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __internalBlockToDeallocNSManagedObjectContext_block_invoke_2(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  if (!*(a1 + 48))
  {
    v2 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v2 = malloc_default_zone();
    }

    v3 = *(a1 + 40);

    malloc_zone_free(v2, v3);
  }
}

void _performRunLoopAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  if ((*(a3 + 20) & 0x80000000) == 0)
  {
    *(a3 + 20) = 0;
    os_unfair_lock_unlock((a3 + 12));
    os_unfair_lock_lock_with_options();
    v5 = *(a3 + 24) && (v4 = *(a3 + 32)) != 0 && CFArrayGetCount(v4) > 0;
    os_unfair_lock_unlock((a3 + 12));
    v6 = *(a3 + 24);
    if (!v6 || *(v6 + 16) || (v7 = *(v6 + 40), (v7 & 8) != 0))
    {
      v8 = 0;
    }

    else
    {
      if ((v7 & 0x100) != 0)
      {
        v8 = 1;
LABEL_14:
        v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        WeakRetained = [_PFWeakReference weakReferenceWithObject:v6];
        if (WeakRetained)
        {
          WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
        }

        v11 = WeakRetained;
        if (v11 && (v12 = v11, !*(v11 + 4)) && (v8 & ([v11 _isDeallocating] ^ 1) & 1) != 0 && ((_PF_USE_IOS_PLATFORM & 1) != 0 || !objc_msgSend(objc_msgSend(v12, "undoManager"), "groupsByEvent")))
        {
          [v12 processPendingChanges];
        }

        else
        {
          [(_PFManagedObjectReferenceQueue *)a3 _processReferenceQueue:?];
        }

        [v9 drain];
        return;
      }

      v8 = *(v6 + 40) & 1;
    }

    if ((v5 | v8) != 1)
    {
      return;
    }

    goto LABEL_14;
  }

  os_unfair_lock_unlock((a3 + 12));
}

void _sharedIMPL_pvfk_core(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (_pvfk_header(a1, a3))
  {
    v5 = *(a1 + 3);

    snapshot_get_value_as_object(v5, v3);
  }
}

id _PFRetainedObjectIDCore(void *a1, void *a2, void *a3, char a4)
{
  v6 = a2;
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = [a2 persistentStore];
  v9 = [v8 _persistentStoreCoordinator];
  v10 = [a1 persistentStoreCoordinator];
  if (v8)
  {
    v11 = [v6 _isPersistentStoreAlive] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  if (*(a1[21] + 8))
  {
    if ([v6 isTemporaryID])
    {
      if (!_PFCMT_GetValue(a1[15], v6))
      {
        v12 = [**(a1[21] + 8) objectForKey:v6];
        if (v12)
        {
          v6 = v12;
        }
      }
    }
  }

  if ((v9 != v10) | v11 & 1 && (v8 || ![v6 isTemporaryID]))
  {
    v14 = [v6 URIRepresentation];
    if ([v6 isTemporaryID])
    {
      v15 = 133000;
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Temporary object ID refers to object in different NSPersistentStoreCoordinator" userInfo:0];
      if ((a4 & 1) == 0)
      {
LABEL_17:
        if (!a3)
        {
          return 0;
        }

        if (v16)
        {
          v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v16, @"NSUnderlyingException", 0}];
        }

LABEL_26:
        *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v15 userInfo:v16];

        return 0;
      }
    }

    else
    {
      if (-[NSPersistentStoreCoordinator _persistentStoreForIdentifier:](v10, [v6 _storeIdentifier]))
      {
        v17 = [(NSPersistentStoreCoordinator *)v10 managedObjectIDForURIRepresentation:v14 error:0];
        if (v17)
        {
          v16 = [NSManagedObjectContext _retainedObjectWithID:a1 optionalHandler:v17 withInlineStorage:0];
          if (v16)
          {
            return v16;
          }
        }

        if ((a4 & 1) == 0)
        {
          v16 = 0;
          if (!a3)
          {
            return v16;
          }

          v15 = 133000;
          goto LABEL_26;
        }

LABEL_31:
        v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid state for objectID or NSManagedObjectContext" userInfo:0];
LABEL_32:
        objc_exception_throw(v16);
      }

      v18 = *MEMORY[0x1E695D940];
      v19 = @"objectID";
      v20[0] = v6;
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:v18 reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{v6), objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1)}];
      v15 = 134098;
      if ((a4 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v16)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  return [NSManagedObjectContext _retainedObjectWithID:a1 optionalHandler:v6 withInlineStorage:0];
}

const void *_PFCMT_GetValue(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (([a2 isTemporaryID] & 1) == 0)
  {
    v5 = _PFModelMapSlotForEntity(a1[7], [a2 entity]);
    if (v5 < 0)
    {
      v6 = a1[3];
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      v6 = a1[4];
      if (!v6)
      {
        return 0;
      }
    }

    v4 = *(v6 + 8 * (v5 & 0x7FFFFFFF));
    if (v4)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v4 = a1[2];
  if (!v4)
  {
    return 0;
  }

LABEL_10:

  return CFDictionaryGetValue(v4, a2);
}

uint64_t *_PFObjectIDFastHash64(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    Class = object_getClass(a1);
    IndexedIvars = object_getIndexedIvars(Class);
    if ((IndexedIvars[4] & 2) != 0)
    {
      v5 = object_getClass(v1);
      if (*(object_getIndexedIvars(v5) + 4))
      {
        v4 = v1[1] >> 16;
      }

      else
      {
        v4 = v1[2];
      }
    }

    else
    {
      v4 = [v1[2] hash];
    }

    return (*(IndexedIvars + 8) ^ (v4 << 6));
  }

  return v1;
}

uint64_t _PFModelMapSlotForEntity(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "managedObjectModel")];
  if (a2)
  {
    result = a2[20];
    if (a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = 0;
    if (a1)
    {
      goto LABEL_4;
    }
  }

  if (v4)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Model map is unexpectedly nil\n", buf, 2u);
    }

    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Model map is unexpectedly nil", v21, 2u);
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = @"Model map is nil";
LABEL_23:
    objc_exception_throw([v12 exceptionWithName:v13 reason:v14 userInfo:0]);
  }

LABEL_4:
  if (v4 > 16049)
  {
    switch(v4)
    {
      case 16050:
        v9 = 0;
        v6 = *(a1 + 64);
LABEL_15:
        v8 = v9 + 1;
        result += v6[v9];
        goto LABEL_16;
      case 17000:
        v7 = 0;
        v6 = *(a1 + 64);
        goto LABEL_14;
      case 18000:
        v6 = *(a1 + 64);
        result += *v6;
        v7 = 1;
LABEL_14:
        v9 = v7 + 1;
        result += v6[v7];
        goto LABEL_15;
    }

    goto LABEL_26;
  }

  if (!v4)
  {
    return result;
  }

  if (v4 != 16000)
  {
LABEL_26:
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D930];
    v17 = MEMORY[0x1E696AEC0];
    v18 = v4;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v14 = objc_msgSend_stringWithFormat_(v17, v18, v20);
    v12 = v15;
    v13 = v16;
    goto LABEL_23;
  }

  v8 = 0;
  v6 = *(a1 + 64);
LABEL_16:
  result += v6[v8];
  return result;
}

uint64_t _pvfk_header(unsigned int *a1, unint64_t a2)
{
  if (!_PF_Threading_Debugging_level)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = MEMORY[0x10];
    goto LABEL_7;
  }

  _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_primitiveValueForKey_);
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = a1[4];
  if ((v4 & 0x4000) != 0)
  {
    v5 = a1;
    v4 = a1[4] & 0xFFFFBFFF;
    a1[4] = v4;
  }

LABEL_7:
  v6 = a1[5];
  if (v6)
  {
    v7 = a1 + v6;
  }

  else
  {
    v7 = 0;
  }

  if (((v7[(a2 >> 3) - ((v4 >> 22) & 0x3FC)] >> (a2 & 7)) & 1) == 0)
  {
    _PF_FulfillDeferredFault(a1, a2);
  }

  if (*(a1 + 3))
  {
    return 1;
  }

  result = 0;
  v9 = a1[4];
  if ((v9 & 0x38000) != 0x10000 && (v9 & 0x80) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v11 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v13 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          v16 = 0;
          v14 = &v16;
LABEL_24:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NULL _cd_rawData but the object is not being turned into a fault\n", v14, 2u);
        }
      }

      else if (v13)
      {
        LOWORD(v15) = 0;
        v14 = &v15;
        goto LABEL_24;
      }
    }

    _NSCoreDataLog_console(1, "NULL _cd_rawData but the object is not being turned into a fault", v15);
    objc_autoreleasePoolPop(v10);
    return 0;
  }

  return result;
}

void snapshot_get_value_as_object(id *a1, unsigned int a2)
{
  if (!a1)
  {
    v27 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v28 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v30 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v28)
      {
        if (v30)
        {
          *buf = 0;
          v31 = buf;
          goto LABEL_53;
        }
      }

      else if (v30)
      {
        LOWORD(v32) = 0;
        v31 = &v32;
LABEL_53:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: warning snapshot_get_value_as_object called on NULL\n", v31, 2u);
      }
    }

    _NSCoreDataLog_console(1, "warning snapshot_get_value_as_object called on NULL", v32);
    objc_autoreleasePoolPop(v27);
    __break(1u);
    return;
  }

  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  if (((*(a1 + (a2 >> 3) + 28) >> (a2 & 7)) & 1) == 0)
  {
    v7 = *(IndexedIvars + a2 + 19);
    v8 = *(IndexedIvars[7] + a2);
    if (v8 <= 3)
    {
      switch(v8)
      {
        case 1u:
          v19 = *(a1 + v7);
          v20 = MEMORY[0x1E696AD98];

          [v20 numberWithChar:v19];
          break;
        case 2u:
          v24 = *(a1 + v7);
          v25 = MEMORY[0x1E696AD98];

          [v25 numberWithShort:v24];
          break;
        case 3u:
          v12 = *(a1 + v7);
          v13 = MEMORY[0x1E696AD98];

          [v13 numberWithInt:v12];
          break;
      }
    }

    else if (*(IndexedIvars[7] + a2) > 5u)
    {
      if (v8 == 6)
      {
        LODWORD(v6) = *(a1 + v7);
        v23 = MEMORY[0x1E696AD98];

        [v23 numberWithFloat:v6];
      }

      else if (v8 == 8)
      {
        v14 = *(a1 + v7);
        v15 = object_getClass(v14);
        v16 = v15 == PFFaultingTransformedValue_Decoded || v15 == PFFaultingTransformedValue_Encoded;
        if (v16 || v15 == PFFaultingTransformedValue_Decoded_Dirty)
        {
          v18 = [objc_msgSend(objc_msgSend(a1[2] "persistentStore")];

          [(PFFaultingTransformedValue *)v14 valueWithRegistry:v18];
        }
      }
    }

    else if (v8 == 4)
    {
      v21 = *(a1 + v7);
      v22 = MEMORY[0x1E696AD98];

      [v22 numberWithLongLong:v21];
    }

    else if (v8 == 5)
    {
      v9 = *(a1 + v7);
      v10 = *(*([a1[2] entity] + 96) + 24 + 8 * a2);
      if (([v10 _isRelationship] & 1) != 0 || objc_msgSend(v10, "attributeType") != 900)
      {
        v26 = MEMORY[0x1E696AD98];

        [v26 numberWithDouble:v9];
      }

      else
      {
        v11 = MEMORY[0x1E695DF00];

        [v11 dateWithTimeIntervalSinceReferenceDate:v9];
      }
    }
  }
}

void *_PFAllocateObject(Class cls, uint64_t a2)
{
  v4 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v4 = malloc_default_zone();
  }

  InstanceSize = class_getInstanceSize(cls);
  v6 = malloc_type_zone_calloc(v4, 1uLL, ((InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8) + a2, 0x43CBCCECuLL);
  v7 = v6;
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    class_getName(cls);
    __CFSetLastAllocationEventName();
    if (!v7)
    {
      return v7;
    }

    goto LABEL_5;
  }

  if (v6)
  {
LABEL_5:
    objc_constructInstance(cls, v7);
  }

  return v7;
}

void *PF_CALLOC_OBJECT_ARRAY(uint64_t a1)
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  return malloc_type_zone_calloc(v2, 1uLL, 8 * a1, 0x80040B8603338uLL);
}

NSObject *createQueueForMOC(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  __str[0] = 0;
  v2 = [*(a1[21] + 168) copy];
  if (v2)
  {
    v3 = v2;
    snprintf(__str, 0x1FFuLL, "NSManagedObjectContext %p: ", a1);
    [v3 UTF8String];
    __strlcat_chk();
  }

  else
  {
    snprintf(__str, 0x1FFuLL, "NSManagedObjectContext %p", a1);
  }

  v4 = dispatch_queue_create(__str, 0);
  dispatch_set_context(v4, a1);
  return v4;
}

uint64_t _sqlEntityForEntityDescription(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = [objc_msgSend(a2 "managedObjectModel")];
    if (v5 == *(a1 + 60) && (v6 = a2[20], *(a1 + 64) - v5 >= v6))
    {
      return *(*(a1 + 40) + 8 * v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _sqlCoreLookupSQLEntityForEntityDescription(void *a1, void *a2)
{
  v2 = 0;
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = _sqlEntityForEntityDescription([a1 model], a2);
      if (!v2)
      {
        v5 = [a1 ancillarySQLModels];
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v13;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v13 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = _sqlEntityForEntityDescription([v5 objectForKey:*(*(&v12 + 1) + 8 * i)], a2);
              if (v10)
              {
                v2 = v10;
                goto LABEL_14;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

        v2 = 0;
LABEL_14:
      }
    }
  }

  return v2;
}

void gutsOfBlockToNSPersistentStoreCoordinatorPerform(void *a1)
{
  v1 = a1;
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (_PF_Threading_Debugging_level >= 2)
  {
    dispatch_assert_queue_V2(*(v2 + 16));
  }

  atomic_store(1u, (v2 + 28));
  if ((v4 & 4) != 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = 0;
  if ((v4 & 0x2000) != 0)
  {
LABEL_7:
    __dmb(0xBu);
  }

LABEL_8:
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = *(StatusReg + 712);
  v8 = v1[3];
  if (v7 == v2)
  {
    v9 = 0;
  }

  else
  {
    if (v8)
    {
      do
      {
        v9 = atomic_load((v8 + 8));
      }

      while (!_PF_actor_set_owner(v9, v8, v2));
    }

    else
    {
      v9 = 0;
    }

    *(StatusReg + 712) = v2;
  }

  v3[2](v3);
  if (v4)
  {
    _Block_release(v3);
    CFRelease(v2);
    free(v1);
    v1 = 0;
  }

  if ((v4 & 4) != 0)
  {
    [v5 drain];
  }

  if (v7 != v2)
  {
    *(StatusReg + 712) = v7;
    v10 = _PF_actor_set_owner(v2, v8, v9);
    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      do
      {
        v12 = atomic_load((v8 + 8));
      }

      while (!_PF_actor_set_owner(v12, v8, v9));
    }
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

LABEL_29:
    __dmb(0xBu);
    return;
  }

  free(v1);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_29;
  }
}

void sub_1856629CC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_log_t oslogb, void *exc_bufa, __int128 buf)
{
  if (a2)
  {
    exc_buf = objc_begin_catch(a1);
    if (a2 == 2)
    {
      if (v12)
      {
        oslog = _PFLogGetLogStream(17);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          if (objc_opt_respondsToSelector())
          {
            v17 = [exc_buf userInfo];
          }

          else
          {
            v17 = 0;
          }

          LODWORD(buf) = 138412546;
          *(&buf + 4) = exc_buf;
          WORD6(buf) = 2112;
          *(&buf + 14) = v17;
          _os_log_error_impl(&dword_18565F000, oslog, OS_LOG_TYPE_ERROR, "CoreData: fault: Exception was caught during NSPersistentStoreCoordinator -performBlock: %@ with userInfo %@\n", &buf, 0x16u);
        }

        osloga = _PFLogGetLogStream(17);
        if (os_log_type_enabled(osloga, OS_LOG_TYPE_FAULT))
        {
          if (objc_opt_respondsToSelector())
          {
            v18 = [exc_buf userInfo];
          }

          else
          {
            v18 = 0;
          }

          LODWORD(buf) = 138412546;
          *(&buf + 4) = exc_buf;
          WORD6(buf) = 2112;
          *(&buf + 14) = v18;
          _os_log_fault_impl(&dword_18565F000, osloga, OS_LOG_TYPE_FAULT, "CoreData: Exception was caught during NSPersistentStoreCoordinator -performBlock: %@ with userInfo %@", &buf, 0x16u);
        }
      }

      else
      {
        v14 = exc_buf;
        *(v11 + 32) = exc_buf;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unidentifiable exception was caught during NSPersistentStoreCoordinator -performBlock.\n", &buf, 2u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Unidentifiable exception was caught during NSPersistentStoreCoordinator -performBlock.", &buf, 2u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1856628D4);
  }

  JUMPOUT(0x185662CD0);
}

void sub_185662BA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    if ((v10 & 1) == 0)
    {
      JUMPOUT(0x1856628F8);
    }

    JUMPOUT(0x1856628DCLL);
  }

  JUMPOUT(0x185662CD0);
}

void sub_185662BF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf, __int16 buf)
{
  if (a2)
  {
    objc_begin_catch(a1);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Exception thrown during autorelease pool drain.\n", &buf, 2u);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Exception thrown during autorelease pool drain.", &buf, 2u);
    }

    objc_exception_rethrow();
  }

  JUMPOUT(0x185662CD0);
}

void sub_185662C8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x185662908);
  }

  JUMPOUT(0x185662CD0);
}

void sub_185662CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (v10)
  {
    objc_end_catch();
  }

  if (v11)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void _perform(unint64_t a1, uint64_t a2)
{
  context[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
      context[0] = a2;
      context[1] = a1;
      context[2] = 0;
      context[3] = v3;
      v4 = atomic_load((a1 + 49));
      if (v4)
      {
        if (!_PFIsSerializedWithMainQueue())
        {
LABEL_26:
          dispatch_sync_f(v2, context, internalBlockToNSManagedObjectContextPerform);
          return;
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_26;
        }

        v5 = 0;
        v6 = 0;
        v7 = v3;
        while (v7 != a1)
        {
          if (v7 == v5)
          {
            goto LABEL_15;
          }

          if (!v5)
          {
            v5 = v7;
          }

          v7 = atomic_load((v7 + 8));
          if (!v7)
          {
            goto LABEL_16;
          }
        }

        v6 = 1;
LABEL_15:
        if (v6)
        {
          goto LABEL_25;
        }

LABEL_16:
        v8 = 0;
        v9 = 0;
        while (a1 != v3)
        {
          if (a1 == v8)
          {
            goto LABEL_24;
          }

          if (!v8)
          {
            v8 = a1;
          }

          a1 = atomic_load((a1 + 8));
          if (!a1)
          {
            goto LABEL_26;
          }
        }

        v9 = 1;
LABEL_24:
        if (!v9)
        {
          goto LABEL_26;
        }
      }

LABEL_25:
      internalBlockToNSManagedObjectContextPerform(context);
    }
  }
}

void _perform_0(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
    v12[0] = a2;
    v12[1] = v2;
    v12[2] = 0;
    v12[3] = v4;
    v13 = 0;
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v4;
      while (v7 != v2)
      {
        if (v7 == v5)
        {
          goto LABEL_11;
        }

        if (!v5)
        {
          v5 = v7;
        }

        v7 = atomic_load((v7 + 8));
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      v6 = 1;
LABEL_11:
      if (v6)
      {
LABEL_21:
        gutsOfBlockToNSPersistentStoreCoordinatorPerform(v12);
        goto LABEL_23;
      }

LABEL_12:
      v8 = 0;
      v9 = 0;
      while (v2 != v4)
      {
        if (v2 == v8)
        {
          goto LABEL_20;
        }

        if (!v8)
        {
          v8 = v2;
        }

        v2 = atomic_load((v2 + 8));
        if (!v2)
        {
          goto LABEL_22;
        }
      }

      v9 = 1;
LABEL_20:
      if (v9)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    dispatch_sync_f(v3, v12, internalBlockToNSPersistentStoreCoordinatorPerform);
LABEL_23:
    v10 = v13;
    if (v13)
    {
      v11 = v13;
      objc_exception_throw(v10);
    }
  }
}

BOOL _PF_actor_set_owner(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v6 = a1;
  atomic_compare_exchange_strong((a2 + 8), &v6, a3);
  if (v6 == a1)
  {
    return 1;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v10 = atomic_load((a2 + 8));
    v12 = 134218752;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a1;
    v18 = 2048;
    v19 = v10;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to set actor (%p) new owner (%p).  Expected previous (%p) is now (%p)\n", &v12, 0x2Au);
  }

  v9 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v11 = atomic_load((a2 + 8));
    v12 = 134218752;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a1;
    v18 = 2048;
    v19 = v11;
    _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Failed to set actor (%p) new owner (%p).  Expected previous (%p) is now (%p)", &v12, 0x2Au);
    return 0;
  }

  return result;
}

_PFFetchPlanHeader *fetchPlanAllocateInitialize(NSFetchRequest *a1, NSPersistentStore *a2, NSManagedObjectContext *a3)
{
  v6 = objc_alloc_init(_PFFetchPlanHeader);
  v6->fetch_request = a1;
  v6->requested_batch_size = [(NSFetchRequest *)a1 fetchLimit];
  v6->sql_core = a2;
  v7 = _sqlCoreLookupSQLEntityForEntityDescription(a2, [(NSFetchRequest *)a1 entity]);
  v6->statement_entity = v7;
  v6->sql_model = [(NSSQLEntity *)v7 model];
  v6->current_context = a3;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    if (a2)
    {
      v9 = [(NSSQLCore *)a2 rowCacheForGeneration:?];
    }

    else
    {
      v9 = 0;
    }

    v6->row_cache = v9;
  }

  v6->entity_for_ek_funptr = [(NSSQLModel *)v6->sql_model methodForSelector:sel_entityForID_];
  v10 = [(NSFetchRequest *)a1 includesPropertyValues];
  v11 = [(NSFetchRequest *)a1 resultType];
  v12 = [(NSFetchRequest *)a1 resultType];
  if ([(NSFetchRequest *)a1 returnsObjectsAsFaults])
  {
    v13 = [(NSArray *)[(NSFetchRequest *)a1 relationshipKeyPathsForPrefetching] count]!= 0;
  }

  else
  {
    v13 = 1;
  }

  if ([(NSFetchRequest *)a1 resultType])
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = [(NSArray *)[(NSFetchRequest *)a1 propertiesToFetch] count]!= 0;
    v10 |= v14;
  }

  statement_entity = v6->statement_entity;
  if (statement_entity)
  {
    subentities = statement_entity->_subentities;
    if (subentities)
    {
      LODWORD(statement_entity) = [(NSMutableArray *)subentities count]!= 0;
    }

    else
    {
      LODWORD(statement_entity) = 0;
    }
  }

  v17 = v11 == 1;
  if (v12 == 2)
  {
    v17 = 1;
    v18 = 16;
  }

  else
  {
    v18 = 20;
  }

  if (v11 == 1)
  {
    v18 = 4;
  }

  v19 = v17 || v14;
  if ((v12 == 2) | v10 & 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
  }

  if ((v13 & v10) != 0)
  {
    v21 = 12;
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  v6->flags = (v22 | v20 | statement_entity | *&v6->flags & 0x20);
  return v6;
}

void sub_185665ECC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int buf, int a55, int a56, __int16 a57, int a58, __int16 a59, __int16 a60, uint64_t a61)
{
  if (a2)
  {
    if (v62)
    {
      objc_end_catch();
    }

    if (v63)
    {
      objc_end_catch();
    }

    objc_begin_catch(exc_buf);
    *(v61 + 312) &= ~0x80u;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

unint64_t _PFRawIndexForKnownKey(void *a1, __CFString *a2)
{
  if (!a2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = _PFRawFastIndexForKnownKey(a1, a2, &v7);
  if (v4 >= a1[3])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  if (*(a1[5] + 8 * v4) != a2 && ![(__CFString *)a2 isEqualToString:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

uint64_t _PFRawFastIndexForKnownKey(void *a1, __CFString *theString, unint64_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1[3])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v7 = CStringPtr;
    v8 = [(__CFString *)theString length];
    *a3 = v8;
    v9 = a1[2];
    v10 = *v9;
    if (*v9)
    {
      v11 = *v10;
      while (1)
      {
        v12 = v8;
        if ((v11 & 0x1FF8) != 0)
        {
          v12 = v7[v11 >> 13];
        }

        v13 = *(v10 + 4);
        v18 = v12 >= v13;
        v14 = v12 - v13;
        if (v18)
        {
          if (v12 <= *(v10 + 6))
          {
            v16 = v14 <= 0xFFFE ? v14 : 0;
            v15 = v10 + v16 + 8;
          }

          else
          {
            v15 = v10 + 7;
          }
        }

        else
        {
          v15 = v10 + 5;
        }

        v17 = *v15;
        if ((v17 & 0x80000000) == 0)
        {
          break;
        }

        v10 = v9[-v17];
        v11 = *v10;
        v18 = (*v10 & 0x1FF8) != 0 && *v10 >> 13 >= v8;
        if (v18)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      return (v17 + HIDWORD(v11));
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = a1[2];
  v20 = *v19;
  v21 = [(__CFString *)theString length];
  if (!v20)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = v21;
  v23 = 0;
  v24 = *v20;
  while (1)
  {
    if ((v24 & 0x1FF8) != 0)
    {
      if (v24 >> 13 >= v22)
      {
        goto LABEL_46;
      }

      v25 = [(__CFString *)theString characterAtIndex:?];
    }

    else
    {
      *a3 = v22;
      v25 = v22;
    }

    if ((v24 & 7) == 1)
    {
      v26 = *(v20 + 4);
      v18 = v25 >= v26;
      v27 = v25 - v26;
      if (v18)
      {
        if (v25 <= *(v20 + 6))
        {
          if (v27 <= 0xFFFE)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          v28 = v20 + v29 + 8;
        }

        else
        {
          v28 = v20 + 7;
        }
      }

      else
      {
        v28 = v20 + 5;
      }

      v23 = *v28;
    }

    if ((v23 & 0x80000000) == 0)
    {
      break;
    }

    v20 = v19[-v23];
    v24 = *v20;
    if ((*v20 & 0x1FF8) != 0 && v22 <= *v20 >> 13)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  result = (v23 + HIDWORD(v24));
  if (result == 0x200000)
  {
LABEL_46:
    v32 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v33 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v35 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v33)
      {
        if (v35)
        {
          goto LABEL_67;
        }
      }

      else if (v35)
      {
LABEL_67:
        *buf = 138412546;
        *v47 = a1;
        *&v47[8] = 2048;
        *&v47[10] = [a1 length];
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NSKnownKeysDictionary: dumping bad mapping: %@ with length:\x05 %ld\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "NSKnownKeysDictionary: dumping bad mapping: %@ with length:\x05 %ld", a1, [a1 length]);
    objc_autoreleasePoolPop(v32);
    v36 = [a1 keys];
    if (!a1[3])
    {
LABEL_61:
      v44 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v47 = theString;
        _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: fault: NSKnownKeysDictionary: improper mapping detected with key '%@'\n", buf, 0xCu);
      }

      v45 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *v47 = theString;
        _os_log_fault_impl(&dword_18565F000, v45, OS_LOG_TYPE_FAULT, "CoreData: NSKnownKeysDictionary: improper mapping detected with key '%@'", buf, 0xCu);
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v37 = v36;
    v38 = 0;
    while (1)
    {
      v39 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v40 = _pflogging_catastrophic_mode;
        v41 = _PFLogGetLogStream(1);
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
        if (v40)
        {
          if (v42)
          {
            goto LABEL_60;
          }
        }

        else if (v42)
        {
LABEL_60:
          v43 = *(v37 + 8 * v38);
          *buf = 67109378;
          *v47 = v38;
          *&v47[4] = 2112;
          *&v47[6] = v43;
          _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error:  \t key[%d] = %@\n", buf, 0x12u);
        }
      }

      _NSCoreDataLog_console(1, " \t key[%d] = %@", v38, *(v37 + 8 * v38));
      objc_autoreleasePoolPop(v39);
      if (a1[3] <= ++v38)
      {
        goto LABEL_61;
      }
    }
  }

  return result;
}

uint64_t _execute(uint64_t a1)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v70 = 0;
  v6 = 0.0;
LABEL_4:
  for (i = 3 * v4 - 29999; ; i += 3)
  {
    result = sqlite3_step(*(a1 + 80));
    v9 = result;
    if (result > 6u)
    {
      break;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        if (result != 1)
        {
          goto LABEL_76;
        }

        goto LABEL_43;
      }

      if ((*(a1 + 312) & 2) == 0)
      {
        sqlite3_reset(*(a1 + 80));
      }

      if (*(a1 + 232) > 0.0 && v6 == 0.0)
      {
        v6 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
      }

LABEL_21:
      if (v4 <= 0xA)
      {
        v10 = 3 * v4 + 1;
      }

      else
      {
        v10 = v4 + 1101;
      }

LABEL_33:
      usleep(v10);
      goto LABEL_34;
    }

    if ((*(a1 + 312) & 2) == 0)
    {
      sqlite3_reset(*(a1 + 80));
    }

    if (*(a1 + 232) > 0.0 && v6 == 0.0)
    {
      v6 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
    }

    if (v4 >= 0x2711)
    {
      if (v4 - 10000 >= 0xB)
      {
        v10 = v4 - 8899;
      }

      else
      {
        v10 = i;
      }

      goto LABEL_33;
    }

LABEL_34:
    if (v6 != 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current > v6)
      {
        if (v5 <= 7)
        {
          ++v4;
          v6 = Current + *(a1 + 240);
          ++v5;
          goto LABEL_4;
        }

        v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], Current - v6 + *(a1 + 232));
        if (+[NSSQLCore debugDefault]< 1)
        {
          goto LABEL_121;
        }

        v58 = *(a1 + 42);
        v59 = objc_autoreleasePoolPush();
        IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
        if (v58 == 1)
        {
          if (IsOSLogEnabled)
          {
            v61 = _pflogging_catastrophic_mode;
            LogStream = _PFLogGetLogStream(1);
            v63 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
            if (v61)
            {
              if (v63)
              {
                goto LABEL_115;
              }
            }

            else if (v63)
            {
LABEL_115:
              *buf = 67109378;
              v72 = v9;
              v73 = 2112;
              v74 = v57;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
            }
          }

          _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v9, v57);
LABEL_120:
          objc_autoreleasePoolPop(v59);
LABEL_121:
          v67 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57);
          *(a1 + 312) &= 0xFFFFEFFD;
          [(NSSQLiteConnection *)a1 releaseSQLStatement];
          v68 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134090, v67, [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v9), @"NSSQLiteErrorDomain"}]);
          objc_exception_throw(v68);
        }

        if (IsOSLogEnabled)
        {
          v64 = _pflogging_catastrophic_mode;
          v65 = _PFLogGetLogStream(1);
          v66 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
          if (v64)
          {
            if (v66)
            {
              goto LABEL_118;
            }
          }

          else if (v66)
          {
LABEL_118:
            *buf = 67109378;
            v72 = v9;
            v73 = 2112;
            v74 = v57;
            _os_log_error_impl(&dword_18565F000, v65, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
          }
        }

        _NSCoreDataLog_console(1, "(%d) %@", v9, v57);
        goto LABEL_120;
      }
    }

    ++v4;
  }

  if (result <= 0x10u)
  {
    if (result <= 0xDu)
    {
      if (result != 7 && result != 10)
      {
        if (result != 11)
        {
          goto LABEL_76;
        }

LABEL_53:
        v18 = MEMORY[0x1E696AEC0];
        v19 = *(a1 + 32);
        v20 = sqlite3_errmsg(*(a1 + 72));
        v17 = objc_msgSend_stringWithFormat_(v18, v19, v9, v20);
LABEL_54:
        v16 = @"NSSQLiteErrorDomain";
        v15 = v9;
        [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
LABEL_55:
        switch(v9)
        {
          case 0x613:
            *(a1 + 312) &= 0xFFFFEFFD;
            [(NSSQLiteConnection *)a1 _endFetch];
            [(NSSQLiteConnection *)a1 releaseSQLStatement];
            v35 = *MEMORY[0x1E695D940];
            v75 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
            v76 = MEMORY[0x1E695E0F0];
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
            v34 = @"Constraint primary key violation";
            v32 = _NSCoreDataOptimisticLockingException;
            v33 = v35;
            break;
          case 0x713:
            v29 = sqlite3_errmsg(*(a1 + 72));
            *(a1 + 312) &= 0xFFFFEFFD;
            [(NSSQLiteConnection *)a1 _endFetch];
            v30 = "no message";
            if (v29)
            {
              v30 = v29;
            }

            v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30);
            [(NSSQLiteConnection *)a1 releaseSQLStatement];
            v24 = *MEMORY[0x1E695D940];
            v77[0] = *MEMORY[0x1E696A588];
            v77[1] = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
            v78[0] = v23;
            v78[1] = MEMORY[0x1E695E0F0];
            v25 = MEMORY[0x1E695DF20];
            v26 = v78;
            v27 = v77;
            v28 = 2;
LABEL_64:
            v31 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
            v32 = _NSCoreDataConstraintViolationException;
            v33 = v24;
            v34 = v23;
            break;
          case 0x813:
            v21 = sqlite3_errmsg(*(a1 + 72));
            *(a1 + 312) &= 0xFFFFEFFD;
            v22 = "no message";
            if (v21)
            {
              v22 = v21;
            }

            v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22);
            [(NSSQLiteConnection *)a1 _endFetch];
            [(NSSQLiteConnection *)a1 releaseSQLStatement];
            v24 = *MEMORY[0x1E695D940];
            v79 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
            v80[0] = MEMORY[0x1E695E0F0];
            v25 = MEMORY[0x1E695DF20];
            v26 = v80;
            v27 = &v79;
            v28 = 1;
            goto LABEL_64;
          default:
            if (v17)
            {
              v36 = [v17 UTF8String];
              v37 = 0;
              goto LABEL_78;
            }

LABEL_77:
            v36 = sqlite3_errmsg(*(a1 + 72));
            v17 = 0;
            v37 = 1;
LABEL_78:
            v39 = *(a1 + 42);
            v40 = objc_autoreleasePoolPush();
            v41 = _NSCoreDataIsOSLogEnabled(1);
            if (v39 == 1)
            {
              if (v41)
              {
                v42 = _pflogging_catastrophic_mode;
                v43 = _PFLogGetLogStream(1);
                v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
                if (v42)
                {
                  if (v44)
                  {
                    goto LABEL_88;
                  }
                }

                else if (v44)
                {
LABEL_88:
                  *buf = 67109378;
                  v72 = v9;
                  v73 = 2080;
                  v74 = v36;
                  _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
                }
              }

              _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_93:
              objc_autoreleasePoolPop(v40);
              if (v37)
              {
                v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36);
                v69 = v9;
                v48 = @"NSSQLiteErrorDomain";
              }

              else
              {
                v48 = v16;
                v69 = v15;
              }

              [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
              v49 = *MEMORY[0x1E695D930];
              v50 = MEMORY[0x1E695DF20];
              v51 = *(a1 + 32);
              v52 = *MEMORY[0x1E696A368];
              v53 = [MEMORY[0x1E696AD98] numberWithInt:v9];
              if (v70)
              {
                v54 = [MEMORY[0x1E696AD98] numberWithInteger:?];
              }

              else
              {
                v54 = 0;
              }

              v55 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v49, v69, v17, [v50 dictionaryWithObjectsAndKeys:{v51, v52, v53, @"NSSQLiteErrorDomain", v54, *MEMORY[0x1E696A798], 0}]);
              v56 = v55;
              if (v48)
              {
                [(_NSCoreDataException *)v55 _setDomain:v48];
              }

              objc_exception_throw(v56);
            }

            if (v41)
            {
              v45 = _pflogging_catastrophic_mode;
              v46 = _PFLogGetLogStream(1);
              v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
              if (v45)
              {
                if (v47)
                {
                  goto LABEL_91;
                }
              }

              else if (v47)
              {
LABEL_91:
                *buf = 67109378;
                v72 = v9;
                v73 = 2080;
                v74 = v36;
                _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
              }
            }

            _NSCoreDataLog_console(1, "(%d) %s");
            goto LABEL_93;
        }

        objc_exception_throw([(__objc2_class *)v32 exceptionWithName:v33 reason:v34 userInfo:v31]);
      }

LABEL_43:
      v12 = result;
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
      if (v12 == 10 && (sqlite3_file_control(*(a1 + 72), 0, 4, &v70), v70))
      {
        v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(a1 + 32), v9, v13, v70);
      }

      else
      {
        v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(a1 + 32), v9, v13);
      }

      v17 = v14;
      if (!v14)
      {
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (result != 14)
    {
      goto LABEL_76;
    }

    if (v3 > 2)
    {
      goto LABEL_43;
    }

    if (*(a1 + 232) > 0.0 && v6 == 0.0)
    {
      v6 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
    }

    ++v3;
    goto LABEL_21;
  }

  if (result <= 0x19u)
  {
    if (result != 17)
    {
      if (result == 19)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        goto LABEL_55;
      }

      if (result != 21)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_43;
  }

  switch(result)
  {
    case 0x64u:
      *(a1 + 312) |= 2u;
      break;
    case 0x65u:
      result = [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
      *(a1 + 312) &= ~2u;
      *(a1 + 100) = 0;
      *(a1 + 92) = 0;
      *(a1 + 108) = 0;
      break;
    case 0x1Au:
      goto LABEL_53;
    default:
LABEL_76:
      v16 = 0;
      v15 = 0;
      goto LABEL_77;
  }

  return result;
}

_PFArray *_newFetchedRowsForRequest(uint64_t a1)
{
  v212[1] = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a1 + 120))
  {
    v7 = NSArray_EmptyArray;

    return v7;
  }

  v2 = *(a1 + 136);
  v3 = [a1 request];
  v185 = a1;
  v4 = [a1 fetchStatement];
  if (!v4 || (*(v4 + 40) & 1) != 0)
  {
    if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 1)
    {
      if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 2)
      {
        v5 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v3;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: logically false fetch request %@ short circuits.\n", buf, 0xCu);
            }
          }

          else
          {
            v25 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v3;
              _os_log_impl(&dword_18565F000, v25, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: logically false fetch request %@ short circuits.\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v26 = 1;
        }

        else
        {
          v26 = 4;
        }

        _NSCoreDataLog_console(v26, "logically false fetch request %@ short circuits.", v3);
        objc_autoreleasePoolPop(v5);
      }

      v27 = *(a1 + 80);
      v28 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      IsLogEnabled = _NSCoreDataIsLogEnabled(4);
      v30 = _pflogging_enable_oslog > 0 && IsLogEnabled;
      if (v27)
      {
        if (v30)
        {
          if (_pflogging_catastrophic_mode)
          {
            v31 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = 0;
              v210 = 1024;
              v211 = 0;
              _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", buf, 0x12u);
            }
          }

          else
          {
            v33 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = 0;
              v210 = 1024;
              v211 = 0;
              _os_log_impl(&dword_18565F000, v33, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", buf, 0x12u);
            }
          }
        }

        v34 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
      }

      else
      {
        if (v30)
        {
          if (_pflogging_catastrophic_mode)
          {
            v32 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = 0;
              v210 = 1024;
              v211 = 0;
              _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: %.4fs for %d rows.\n", buf, 0x12u);
            }
          }

          else
          {
            v35 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = 0;
              v210 = 1024;
              v211 = 0;
              _os_log_impl(&dword_18565F000, v35, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: %.4fs for %d rows.\n", buf, 0x12u);
            }
          }
        }

        v34 = "total fetch execution time: %.4fs for %d rows.";
      }

      if (_pflogging_catastrophic_mode)
      {
        v36 = 1;
      }

      else
      {
        v36 = 4;
      }

      _NSCoreDataLog_console(v36, v34, 0, 0);
      objc_autoreleasePoolPop(v28);
    }

    return NSArray_EmptyArray;
  }

  if (*(a1 + 81) == 1 && (*(v2 + 72) & 1) == 0 && (*(v2 + 72) & 0x18) != 16)
  {

    return newFetchedRowsForFetchPlan_MT(a1);
  }

  v10 = *(a1 + 136);
  v171 = [a1 fetchStatement];
  v182 = *(a1 + 24);
  v189 = v10;
  if ((*(v10 + 72) & 2) != 0)
  {
    v11 = 4096;
  }

  else
  {
    v11 = 512;
  }

  if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]< 1)
  {
    Current = 0.0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v13 = v10;
  if (*(v10 + 16))
  {
    v14 = *(v10 + 16);
  }

  else
  {
    v14 = -1;
  }

  v15 = +[NSSQLCore bufferedAllocationsOverride];
  v17 = v15 >= 1 && (*(v189 + 72) & 0x1C) == 0x10 && ((v16 = *(v189 + 40)) == 0 || (v13 = v189, *(v16 + 184) >> 3 < 0x84Du)) || [*(v13 + 8) allocationType] == 1 && (*(v13 + 72) & 0x1C) == 16;
  objc_opt_self();
  if (v15 != 2 || (*(v189 + 72) & 0x1C) != 0x10)
  {
    if ((_CoreData_debugVMBufferAllocations & 1) == 0)
    {
LABEL_48:
      v19 = [*(v189 + 8) allocationType] == 2;
      goto LABEL_49;
    }

LABEL_47:
    v19 = 1;
LABEL_49:
    v191 = v19;
    goto LABEL_50;
  }

  v18 = *(v189 + 40);
  if (!v18)
  {
    goto LABEL_47;
  }

  v191 = 1;
  if (*(v18 + 184) >> 3 >= 0x84Du && (_CoreData_debugVMBufferAllocations & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_50:
  objc_opt_self();
  v20 = (v15 != 3) & (_CoreData_debugOneBufferAllocations ^ 1);
  if (!v20 && v191)
  {
    v21 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v22 = _pflogging_catastrophic_mode;
      v23 = _PFLogGetLogStream(1);
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (v22)
      {
        if (v24)
        {
          *buf = 0;
LABEL_341:
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: VM Memory is already One Buffer Row that grows!!!\n", buf, 2u);
        }
      }

      else if (v24)
      {
        *buf = 0;
        goto LABEL_341;
      }
    }

    _NSCoreDataLog_console(1, "VM Memory is already One Buffer Row that grows!!!");
    objc_autoreleasePoolPop(v21);
  }

  objc_opt_self();
  v38 = (v15 == 4) | _CoreData_debuguseManyResultSetsAllocations;
  if (v38 & v191)
  {
    v39 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v40 = _pflogging_catastrophic_mode == 0;
      v41 = _PFLogGetLogStream(1);
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
      if (v40)
      {
        if (v42)
        {
          *buf = 0;
          goto LABEL_343;
        }
      }

      else if (v42)
      {
        *buf = 0;
LABEL_343:
        _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error: VM Memory does not support multiple result sets!!!\n", buf, 2u);
      }
    }

    _NSCoreDataLog_console(1, "VM Memory does not support multiple result sets!!!");
    objc_autoreleasePoolPop(v39);
  }

  if ((*(v189 + 72) & 2) == 0 && (*(v189 + 72) & 0x18) != 0x10)
  {
    [*(v189 + 8) _disablePersistentStoreResultCaching];
  }

  v172 = *(v185 + 201);
  v188 = [*(v189 + 8) _asyncResultHandle];
  v43 = [v188 progress];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 totalUnitCount];
    v46 = v45 & ~(v45 >> 31);
  }

  else
  {
    v46 = 0;
  }

  v184 = v191 | v17;
  v174 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v180 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((*(v189 + 72) & 0x1C) == 0xC)
  {
    v179 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v179 = 0;
  }

  [(NSSQLiteConnection *)v182 selectRowsWithStatement:v171 cached:v172];
  v47 = CFAbsoluteTimeGetCurrent();
  v177 = v20;
  v181 = v46;
  v183 = v44;
  v48 = 0;
  v49 = 0;
  v186 = 0;
  if ([(NSSQLStoreRequestContext *)v185 debugLogLevel]<= 0)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = v47 - Current;
  }

  if (v184)
  {
    v51 = 10;
  }

  else
  {
    v51 = 12;
  }

  v52 = v38 | v184 ^ 1;
  while (2)
  {
    v190 = 0;
    v53 = v14;
    while (1)
    {
      if (v184)
      {
        if (!v190)
        {
          v54 = *(v189 + 8);
          if (v191)
          {
            Initialize = bufferResultSetAllocateWithVMMemory([v54 allocationSize], objc_msgSend(*(v189 + 8), "purgeableResult"));
          }

          else
          {
            Initialize = bufferResultSetAllocateInitialize([v54 allocationSize], v189);
          }

          v190 = Initialize;
          *(Initialize + 1) = v47;
        }
      }

      else
      {
        v56 = fetchResultSetAllocateInitialize(v48, (*(v189 + 72) >> 5) & 1);
        v56[1] = v47;
        *v56 = v186;
        v190 = v56;
      }

      v57 = v53 >= v11 ? v11 : v53;
      v14 = v53 >= v11 ? v53 - v11 : 0;
      *(v189 + 16) = v57;
      v58 = [(NSSQLStoreRequestContext *)v185 debugLogLevel]< 1 ? 0.0 : CFAbsoluteTimeGetCurrent();
      if (v188 && [v188 _isCancelled])
      {
        v186 += v49;
        v59 = v190[v51];
      }

      else
      {
        if (v184)
        {
          v60 = [(NSSQLiteConnection *)v182 fetchBufferResultSet:v190 usingFetchPlan:v189];
          v61 = 10;
        }

        else
        {
          v60 = [(NSSQLiteConnection *)v182 fetchResultSet:v190 usingFetchPlan:v189];
          v61 = 12;
        }

        v49 = v60;
        v186 += v60;
        v59 = v190[v61];
        if (!v188)
        {
          v62 = v59 ^ 1;
          goto LABEL_137;
        }
      }

      v62 = ((v59 & 1) == 0) & ~[v188 _isCancelled];
LABEL_137:
      if (v183 && ([v183 isCancelled] & 1) == 0)
      {
        v63 = v181;
        if (v181 < 1)
        {
          v64 = 0;
          v63 = 0;
        }

        else if (v186 >= v181)
        {
          if (v186 >= 2 * v181)
          {
            v63 = v186 + 1;
          }

          else
          {
            v63 = 2 * v181;
          }

          v64 = 1;
        }

        else
        {
          v64 = 0;
        }

        v65 = *(v189 + 48);
        v201[0] = MEMORY[0x1E69E9820];
        v201[1] = 3221225472;
        v201[2] = ___newFetchedRowsForFetchPlan_ST_block_invoke;
        v201[3] = &unk_1E6EC4290;
        v204 = v64;
        v201[4] = v183;
        v181 = v63;
        v202 = v63;
        v203 = v186;
        [v65 performBlock:v201];
      }

      if ([(NSSQLStoreRequestContext *)v185 debugLogLevel]>= 1)
      {
        v50 = v50 + CFAbsoluteTimeGetCurrent() - v58;
      }

      if (v52)
      {
        break;
      }

      v66 = v53 > v11;
      v53 = v14;
      if ((v62 & v66 & 1) == 0)
      {
        v72 = _prepareLargeDictionaryResults(v190, v185, 1);
        v71 = v186;
        v73 = v72;
        if (((v177 | v191) & 1) == 0)
        {
          v212[0] = v72;
          v74 = _prepareBufferedDictionaryResult([MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:1], v185);

          v73 = v74;
        }

        [v180 addObject:v73];

        goto LABEL_170;
      }
    }

    if (v49)
    {
      *buf = 0;
      if (v184)
      {
        v67 = _prepareLargeDictionaryResults(v190, v185, 1);
      }

      else if ((*(v189 + 72) & 0x18) == 0x10)
      {
        v67 = _prepareDictionaryResults(v190, v185);
      }

      else
      {
        v67 = _prepareResultsFromResultSet_0(v190, buf, v185);
      }

      v68 = v67;
      [v180 addObject:v67];
      if (*buf)
      {
        [v179 addObject:?];
      }

      if ((v184 & 1) == 0)
      {
LABEL_164:
        v69 = v190[4];
        v70 = v190[5];
        fetchResultSetDeallocate(v190);
        v48 = v70 * v69;
      }
    }

    else if ((v184 & 1) == 0)
    {
      goto LABEL_164;
    }

    if ((v62 & (v53 > v11)) != 0)
    {
      continue;
    }

    break;
  }

  v190 = 0;
  v71 = v186;
LABEL_170:
  [(NSSQLiteConnection *)v182 endFetchAndRecycleStatement:v172];
  if ([(NSSQLStoreRequestContext *)v185 debugLogLevel]>= 1)
  {
    v75 = *(v185 + 80);
    v76 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    v77 = _NSCoreDataIsLogEnabled(4);
    v78 = _pflogging_enable_oslog > 0 && v77;
    if (v75)
    {
      if (v78)
      {
        if (_pflogging_catastrophic_mode)
        {
          v79 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v50;
            _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
          }
        }

        else
        {
          v81 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v50;
            _os_log_impl(&dword_18565F000, v81, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql connection fetch time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
          }
        }
      }

      v82 = "sql connection fetch time: \x1B[31m%.4f\x1B[0ms";
    }

    else
    {
      if (v78)
      {
        if (_pflogging_catastrophic_mode)
        {
          v80 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v50;
            _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: %.4fs\n", buf, 0xCu);
          }
        }

        else
        {
          v83 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v50;
            _os_log_impl(&dword_18565F000, v83, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql connection fetch time: %.4fs\n", buf, 0xCu);
          }
        }
      }

      v82 = "sql connection fetch time: %.4fs";
    }

    if (_pflogging_catastrophic_mode)
    {
      v84 = 1;
    }

    else
    {
      v84 = 4;
    }

    _NSCoreDataLog_console(v84, v82, *&v50);
    objc_autoreleasePoolPop(v76);
  }

  v85 = [v180 count];
  v192 = *(v189 + 48);
  v86 = *(v185 + 128);
  if (v188 && ([v188 _isCancelled] & 1) != 0)
  {
    v71 = 0;
    goto LABEL_198;
  }

  if (v85 == 1)
  {
    v92 = [v180 objectAtIndex:0];
    if (v179)
    {
      v93 = [v179 objectAtIndex:0];
      v87 = malloc_type_malloc([(_PFArray *)v92 count], 0x100004077774924uLL);
      v187 = v71;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v94 = [(_PFArray *)v92 countByEnumeratingWithState:&v197 objects:buf count:16];
      if (v94)
      {
        v95 = v87;
        v96 = 0;
        v97 = 0;
        v98 = *v198;
        do
        {
          for (i = 0; i != v94; ++i)
          {
            if (*v198 != v98)
            {
              objc_enumerationMutation(v92);
            }

            v100 = *(*(&v197 + 1) + 8 * i);
            v95[v96] = (*(v100 + 16) & 0x18000) == 0x8000;
            _PFFaultHandlerFulfillFault(v86, v100, v192, [v93 objectAtIndex:v97], 0);
            ++v96;
            ++v97;
          }

          v94 = [(_PFArray *)v92 countByEnumeratingWithState:&v197 objects:buf count:16];
        }

        while (v94);
        v37 = v92;
        v87 = v95;
      }

      else
      {
        v37 = v92;
      }

      v71 = v187;
    }

    else
    {
      v87 = 0;
      v37 = v92;
    }
  }

  else
  {
    if (!v85)
    {
LABEL_198:
      v87 = 0;
      v88 = NSArray_EmptyArray;
      goto LABEL_199;
    }

    if (v184)
    {
      v87 = 0;
      v88 = _prepareBufferedDictionaryResult(v180, v185);
LABEL_199:
      v37 = v88;
    }

    else
    {
      v101 = 0;
      v102 = 0;
      do
      {
        v102 += [objc_msgSend(v180 objectAtIndex:{v101++), "count"}];
      }

      while (v85 != v101);
      v103 = malloc_type_malloc(v102, 0x100004077774924uLL);
      v169 = v102;
      v170 = PF_ALLOCATE_OBJECT_ARRAY(v102);
      v104 = [v180 objectAtIndex:0];
      v105 = 0x1EA8C5000uLL;
      if (v104)
      {
        v168 = *(v104 + 32) & 0x3B;
      }

      else
      {
        v168 = 0;
      }

      v106 = 0;
      v107 = 0;
      v108 = v170;
      v173 = v85;
      do
      {
        v109 = [v180 objectAtIndex:v106];
        [v109 getObjects:v108];
        v110 = [v109 count];
        if (v109)
        {
          *&v109[*(v105 + 1192)] &= 0xFFFFFFFFFFFFFFF9;
        }

        v176 = v108;
        v178 = v106;
        v175 = v110;
        if (v179)
        {
          v111 = [v179 objectAtIndex:v106];
          v199 = 0u;
          v200 = 0u;
          v197 = 0u;
          v198 = 0u;
          v112 = [v109 countByEnumeratingWithState:&v197 objects:buf count:16];
          if (v112)
          {
            v113 = 0;
            v114 = *v198;
            do
            {
              for (j = 0; j != v112; ++j)
              {
                if (*v198 != v114)
                {
                  objc_enumerationMutation(v109);
                }

                v116 = *(*(&v197 + 1) + 8 * j);
                v103[v107] = (*(v116 + 16) & 0x18000) == 0x8000;
                _PFFaultHandlerFulfillFault(v86, v116, v192, [v111 objectAtIndex:v113], 0);
                ++v107;
                ++v113;
              }

              v112 = [v109 countByEnumeratingWithState:&v197 objects:buf count:16];
            }

            while (v112);
          }
        }

        v108 = &v176[8 * v175];
        v106 = v178 + 1;
        v71 = v186;
        v105 = 0x1EA8C5000;
      }

      while (v178 + 1 != v173);
      v37 = [[_PFArray alloc] initWithObjects:v170 count:v169 andFlags:v168 andContext:v192];
      v87 = v103;
    }
  }

  v89 = COERCE_DOUBLE([(_PFArray *)v37 count]);
  if (v183 && ([v183 isCancelled] & 1) == 0)
  {
    v90 = v181;
    if (v181 < 1)
    {
      v91 = 0;
      v90 = 0;
    }

    else if (v71 >= v181)
    {
      if (v71 >= 2 * v181)
      {
        v90 = v71 + 1;
      }

      else
      {
        v90 = 2 * v181;
      }

      v91 = 1;
    }

    else
    {
      v91 = 0;
    }

    v117 = *(v189 + 48);
    v193[0] = MEMORY[0x1E69E9820];
    v193[1] = 3221225472;
    v193[2] = ___newFetchedRowsForFetchPlan_ST_block_invoke_287;
    v193[3] = &unk_1E6EC4290;
    v196 = v91;
    v193[4] = v183;
    v194 = v90;
    v195 = v71;
    [v117 performBlock:v193];
  }

  if (*&v89 != v71)
  {
    v118 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v119 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
LABEL_344:
          *v205 = 134218240;
          v206 = v89;
          v207 = 1024;
          v208 = v71;
          _os_log_error_impl(&dword_18565F000, v119, OS_LOG_TYPE_ERROR, "CoreData: error: result array has %lu entries, but we fetched %d rows\n", v205, 0x12u);
        }
      }

      else
      {
        v119 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_344;
        }
      }
    }

    _NSCoreDataLog_console(1, "result array has %lu entries, but we fetched %d rows", *&v89, v71);
    objc_autoreleasePoolPop(v118);
  }

  if ([(NSSQLStoreRequestContext *)v185 debugLogLevel]>= 2)
  {
    v120 = COERCE_DOUBLE(objc_alloc_init(MEMORY[0x1E696AD60]));
    [*&v120 appendFormat:@"fetch using %@ returned %lu rows", v171, *&v89];
    if ([(NSSQLStoreRequestContext *)v185 debugLogLevel]>= 3)
    {
      [*&v120 appendFormat:@" with values: %@", v37];
    }

    v121 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v122 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          *v205 = 138412290;
          v206 = v120;
          _os_log_error_impl(&dword_18565F000, v122, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", v205, 0xCu);
        }
      }

      else
      {
        v123 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *v205 = 138412290;
          v206 = v120;
          _os_log_impl(&dword_18565F000, v123, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: %@\n", v205, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v124 = 1;
    }

    else
    {
      v124 = 4;
    }

    _NSCoreDataLog_console(v124, "%@", *&v120);
    objc_autoreleasePoolPop(v121);
  }

  v125 = [*(v189 + 8) relationshipKeyPathsForPrefetching];
  v126 = *(v189 + 72);
  if (v89 == 0.0 || !v125)
  {
    v128 = 0x1E695D000;
  }

  else
  {
    v127 = (v126 >> 2) & 7;
    v128 = 0x1E695D000uLL;
    if (v127 <= 5 && ((1 << v127) & 0x29) != 0)
    {
      if ((*(v189 + 72) & 0x1C) == 4)
      {
        v129 = 0;
        v130 = v37;
      }

      else
      {
        v130 = [_PFRoutines newArrayOfObjectIDsFromCollection:v37];
        v129 = v130;
        if ((*(v189 + 72) & 0x1C) == 4)
        {
          v130 = v37;
        }
      }

      _prefetchForFetchRequest(v130, 0, v185);

      v126 = *(v189 + 72);
    }
  }

  if ((v126 & 0x1C) == 0xC && v87)
  {
    v131 = [objc_alloc(*(v128 + 3952)) initWithCapacity:{-[_PFArray count](v37, "count")}];
    v132 = 0;
    v133 = MEMORY[0x1E695E118];
    v134 = MEMORY[0x1E695E110];
    while (v132 < [(_PFArray *)v37 count])
    {
      if (v87[v132])
      {
        v135 = v133;
      }

      else
      {
        v135 = v134;
      }

      [v131 addObject:v135];
      ++v132;
    }

    [(NSSQLFetchRequestContext *)v185 addFaultsThatWereFired:v131];
  }

  [v174 drain];

  if (v188)
  {
    v136 = [v188 _isCancelled] ^ 1;
  }

  else
  {
    v136 = 1;
  }

  [*(v189 + 8) _setAsyncResultHandle:0];
  [0 drain];
  if (!((v190 == 0) | v184 & 1))
  {
    fetchResultSetDeallocate(v190);
  }

  if (v87)
  {
    free(v87);
  }

  if ([(NSSQLStoreRequestContext *)v185 debugLogLevel]< 1)
  {
    return v37;
  }

  v137 = *(v185 + 80);
  v138 = objc_autoreleasePoolPush();
  _pflogInitialize(4);
  v139 = _NSCoreDataIsLogEnabled(4);
  v140 = _pflogging_enable_oslog > 0 && v139;
  if (!v136)
  {
    if (v137)
    {
      if (v140)
      {
        if (_pflogging_catastrophic_mode)
        {
          v144 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            v145 = CFAbsoluteTimeGetCurrent();
            *v205 = 134217984;
            v206 = v145 - Current;
            _os_log_error_impl(&dword_18565F000, v144, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.\n", v205, 0xCu);
          }
        }

        else
        {
          v157 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
          {
            v158 = CFAbsoluteTimeGetCurrent();
            *v205 = 134217984;
            v206 = v158 - Current;
            _os_log_impl(&dword_18565F000, v157, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.\n", v205, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v159 = CFAbsoluteTimeGetCurrent();
        v160 = "Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.";
LABEL_334:
        v167 = 1;
LABEL_337:
        _NSCoreDataLog_console(v167, v160, v159 - Current);
        goto LABEL_338;
      }

      v159 = CFAbsoluteTimeGetCurrent();
      v160 = "Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.";
    }

    else
    {
      if (v140)
      {
        if (_pflogging_catastrophic_mode)
        {
          v149 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            v150 = CFAbsoluteTimeGetCurrent();
            *v205 = 134217984;
            v206 = v150 - Current;
            _os_log_error_impl(&dword_18565F000, v149, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch cancelled.  Total fetch execution time: %.4fs.\n", v205, 0xCu);
          }
        }

        else
        {
          v165 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
          {
            v166 = CFAbsoluteTimeGetCurrent();
            *v205 = 134217984;
            v206 = v166 - Current;
            _os_log_impl(&dword_18565F000, v165, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetch cancelled.  Total fetch execution time: %.4fs.\n", v205, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v159 = CFAbsoluteTimeGetCurrent();
        v160 = "Fetch cancelled.  Total fetch execution time: %.4fs.";
        goto LABEL_334;
      }

      v159 = CFAbsoluteTimeGetCurrent();
      v160 = "Fetch cancelled.  Total fetch execution time: %.4fs.";
    }

    v167 = 4;
    goto LABEL_337;
  }

  if (v137)
  {
    if (v140)
    {
      if (_pflogging_catastrophic_mode)
      {
        v141 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
        {
          v142 = CFAbsoluteTimeGetCurrent();
          v143 = [(_PFArray *)v37 count];
          *v205 = 134218240;
          v206 = v142 - Current;
          v207 = 1024;
          v208 = v143;
          _os_log_error_impl(&dword_18565F000, v141, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", v205, 0x12u);
        }
      }

      else
      {
        v151 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
        {
          v152 = CFAbsoluteTimeGetCurrent();
          v153 = [(_PFArray *)v37 count];
          *v205 = 134218240;
          v206 = v152 - Current;
          v207 = 1024;
          v208 = v153;
          _os_log_impl(&dword_18565F000, v151, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", v205, 0x12u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v154 = CFAbsoluteTimeGetCurrent();
      v155 = [(_PFArray *)v37 count];
      v156 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
      goto LABEL_326;
    }

    v154 = CFAbsoluteTimeGetCurrent();
    v155 = [(_PFArray *)v37 count];
    v156 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
LABEL_328:
    v164 = 4;
  }

  else
  {
    if (v140)
    {
      if (_pflogging_catastrophic_mode)
      {
        v146 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
        {
          v147 = CFAbsoluteTimeGetCurrent();
          v148 = [(_PFArray *)v37 count];
          *v205 = 134218240;
          v206 = v147 - Current;
          v207 = 1024;
          v208 = v148;
          _os_log_error_impl(&dword_18565F000, v146, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: %.4fs for %d rows.\n", v205, 0x12u);
        }
      }

      else
      {
        v161 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
        {
          v162 = CFAbsoluteTimeGetCurrent();
          v163 = [(_PFArray *)v37 count];
          *v205 = 134218240;
          v206 = v162 - Current;
          v207 = 1024;
          v208 = v163;
          _os_log_impl(&dword_18565F000, v161, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: %.4fs for %d rows.\n", v205, 0x12u);
        }
      }
    }

    if (!_pflogging_catastrophic_mode)
    {
      v154 = CFAbsoluteTimeGetCurrent();
      v155 = [(_PFArray *)v37 count];
      v156 = "total fetch execution time: %.4fs for %d rows.";
      goto LABEL_328;
    }

    v154 = CFAbsoluteTimeGetCurrent();
    v155 = [(_PFArray *)v37 count];
    v156 = "total fetch execution time: %.4fs for %d rows.";
LABEL_326:
    v164 = 1;
  }

  _NSCoreDataLog_console(v164, v156, v154 - Current, v155);
LABEL_338:
  objc_autoreleasePoolPop(v138);
  return v37;
}

void sub_18566AA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (v32)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_18566AB60(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566ABACLL);
  }

  JUMPOUT(0x18566AB44);
}

void sub_18566AB7C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566AB84);
  }

  JUMPOUT(0x18566AB44);
}

void sub_18566AB98(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x18566A3C8);
    }

    objc_begin_catch(exc_buf);

    objc_exception_rethrow();
  }

  JUMPOUT(0x18566AB44);
}

void sub_18566ABF4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18566ABB8);
  }

  JUMPOUT(0x18566AB44);
}

_PFArray *newFetchedRowsForFetchPlan_MT(void *a1)
{
  v212 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[17];
  }

  else
  {
    v2 = 0;
  }

  v3 = [a1 fetchStatement];
  v192 = a1;
  v4 = [(NSSQLStoreRequestContext *)a1 debugLogLevel];
  v5 = *(v2 + 72);
  if ((v5 & 2) != 0)
  {
    v6 = 4096;
  }

  else
  {
    v6 = 512;
  }

  v194 = v4;
  if (v4 < 1)
  {
    Current = 0.0;
    LOBYTE(v8) = *(v2 + 72);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(v2 + 72);
  }

  if (*(v2 + 16))
  {
    v9 = *(v2 + 16);
  }

  else
  {
    v9 = -1;
  }

  v169 = [*(v2 + 8) relationshipKeyPathsForPrefetching];
  v195 = v2;
  v11 = (v5 & 2) == 0 && (*(v2 + 72) & 0x1C) == 12;
  v172 = v11;
  if (v192)
  {
    v12 = *(v192 + 201);
  }

  else
  {
    v12 = 0;
  }

  v208 = 1;
  v196 = [*(v195 + 8) _asyncResultHandle];
  v13 = [v196 progress];
  v190 = v13;
  if (v13)
  {
    v14 = [v13 totalUnitCount];
    v15 = v14 & ~(v14 >> 31);
  }

  else
  {
    v15 = 0;
  }

  v170 = v12;
  v171 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  count = objc_alloc_init(MEMORY[0x1E695DF70]);
  CFRetain(count);

  if (v172)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    CFRetain(v16);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v192)
  {
    v18 = v192[3];
  }

  else
  {
    v18 = 0;
  }

  [(NSSQLiteConnection *)v18 selectRowsWithStatement:v3 cached:v12 & 1];
  v19 = CFAbsoluteTimeGetCurrent();
  v182 = v15;
  v168 = v3;
  cf = v17;
  v176 = v18;
  v20 = 0;
  v21 = 0;
  v180 = 0;
  v22 = 0;
  v174 = 0;
  v23 = 0;
  ptr = 0;
  v184 = v8 & 3;
  if (v194 <= 0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v19 - Current;
  }

  allocator = *MEMORY[0x1E695E480];
  do
  {
    Initialize = fetchResultSetAllocateInitialize(v20, (*(v195 + 72) >> 5) & 1);
    Initialize[1] = v19;
    value = Initialize;
    *Initialize = ptr;
    if (v9 >= v6)
    {
      v26 = v6;
    }

    else
    {
      v26 = v9;
    }

    if (v9 >= v6)
    {
      v27 = v9 - v6;
    }

    else
    {
      v27 = 0;
    }

    *(v195 + 16) = v26;
    if (v194 <= 0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = CFAbsoluteTimeGetCurrent();
    }

    if (v196 && [v196 _isCancelled])
    {
      ptr += v23;
      v29 = *(value + 12);
    }

    else
    {
      v30 = [(NSSQLiteConnection *)v176 fetchResultSet:v195 usingFetchPlan:?];
      v23 = v30;
      ptr += v30;
      v29 = *(value + 12);
      if (!v196)
      {
        v31 = v29 ^ 1;
        goto LABEL_47;
      }
    }

    v31 = ((v29 & 1) == 0) & ~[v196 _isCancelled];
LABEL_47:
    if (v190 && ([v190 isCancelled] & 1) == 0)
    {
      v32 = v182;
      if (v182 < 1)
      {
        v34 = 0;
        v182 = 0;
      }

      else
      {
        if (ptr >= 2 * v182)
        {
          v33 = ptr + 1;
        }

        else
        {
          v33 = 2 * v182;
        }

        v34 = ptr >= v182;
        if (ptr >= v182)
        {
          v32 = v33;
        }

        v182 = v32;
      }

      if (v192)
      {
        v35 = v192[4];
      }

      else
      {
        v35 = 0;
      }

      v204[0] = MEMORY[0x1E69E9820];
      v204[1] = 3221225472;
      v204[2] = __newFetchedRowsForFetchPlan_MT_block_invoke;
      v204[3] = &unk_1E6EC4290;
      v207 = v34;
      v204[4] = v190;
      v205 = v182;
      v206 = ptr;
      [v35 performBlock:v204];
    }

    if ((v31 & (v21 == 0)) == 1)
    {
      Mutable = CFArrayCreateMutable(allocator, 0, 0);
      if (v184 != 2)
      {
        v180 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      }

      v37 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v37 = malloc_default_zone();
      }

      v38 = malloc_type_zone_calloc(v37, 5uLL, 8uLL, 0x100004000313F17uLL);
      *v38 = v192;
      v38[1] = Mutable;
      v38[2] = count;
      v38[3] = &v208;
      v38[4] = v180;
      if (v184 == 2)
      {
        v39 = _prepareObjectIDsOnBackgroundThread;
      }

      else
      {
        v39 = _prepareRowsOnBackgroundThreads;
      }

      v21 = [[_PFTask alloc] initWithFunction:v39 withArgument:v38 andPriority:2];
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      v174 = 1;
      v22 = Mutable;
    }

    if (v194 >= 1)
    {
      v24 = v24 + CFAbsoluteTimeGetCurrent() - v28;
    }

    if (v23)
    {
      if (v21)
      {
        pthread_mutex_lock(&v21->lock);
        CFArrayAppendValue(v22, value);
        pthread_mutex_unlock(&v21->lock);
        pthread_cond_signal(&v21->condition);
        goto LABEL_82;
      }

      *buf = 0;
      v42 = _prepareResultsFromResultSet(value, buf, v192);
      [count addObject:v42];
      if (*buf)
      {
        [cf addObject:?];
        v43 = *buf;
      }

      else
      {
        v43 = 0;
      }

      v40 = *(value + 4);
      v41 = *(value + 5);
      fetchResultSetDeallocate(value);
    }

    else
    {
      v40 = *(value + 4);
      v41 = *(value + 5);
      fetchResultSetDeallocate(value);
    }

    v20 = v41 * v40;
LABEL_82:
    v44 = v9 > v6;
    v9 = v27;
  }

  while ((v31 & v44 & 1) != 0);
  [(NSSQLiteConnection *)v176 endFetchAndRecycleStatement:?];
  if (v194 >= 1)
  {
    if (v192)
    {
      v45 = *(v192 + 80);
      v46 = objc_autoreleasePoolPush();
      if (v45)
      {
        _pflogInitialize(4);
        IsLogEnabled = _NSCoreDataIsLogEnabled(4);
        v48 = "sql connection fetch time: \x1B[31m%.4f\x1B[0ms";
        if (IsLogEnabled && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              *&buf[4] = v24;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
            }
          }

          else
          {
            v50 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v24;
              _os_log_impl(&dword_18565F000, v50, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql connection fetch time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
            }
          }

          v48 = "sql connection fetch time: \x1B[31m%.4f\x1B[0ms";
        }

        goto LABEL_109;
      }
    }

    else
    {
      v46 = objc_autoreleasePoolPush();
    }

    _pflogInitialize(4);
    v51 = _NSCoreDataIsLogEnabled(4);
    v48 = "sql connection fetch time: %.4fs";
    if (v51 && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v52 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v24;
          _os_log_error_impl(&dword_18565F000, v52, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: %.4fs\n", buf, 0xCu);
        }
      }

      else
      {
        v53 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v24;
          _os_log_impl(&dword_18565F000, v53, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql connection fetch time: %.4fs\n", buf, 0xCu);
        }
      }

      v48 = "sql connection fetch time: %.4fs";
    }

LABEL_109:
    if (_pflogging_catastrophic_mode)
    {
      v54 = 1;
    }

    else
    {
      v54 = 4;
    }

    _NSCoreDataLog_console(v54, v48, *&v24);
    objc_autoreleasePoolPop(v46);
  }

  if (v21)
  {
    pthread_mutex_lock(&v21->lock);
    atomic_store(0, &v208);
    if (!v21->isFinishedFlag)
    {
      pthread_cond_signal(&v21->condition);
    }

    while (!v21->isFinishedFlag)
    {
      pthread_cond_wait(&v21->condition, &v21->lock);
    }

    pthread_mutex_unlock(&v21->lock);
  }

  v55 = [count count];
  v56 = v172;
  if (!v180)
  {
    v56 = 1;
  }

  if (v56)
  {
    v57 = v180;
  }

  else
  {
    CFRelease(v180);
    v57 = 0;
  }

  v181 = v57;
  if (v196 && ([v196 _isCancelled] & 1) != 0)
  {
    ptr = 0;
LABEL_133:
    v185 = 0;
    v60 = count;
    allocatora = NSArray_EmptyArray;
    goto LABEL_171;
  }

  if (!v55)
  {
    goto LABEL_133;
  }

  if (v55 == 1)
  {
    v58 = [count objectAtIndex:0];
    if (v172)
    {
      if (cf)
      {
        ValueAtIndex = [cf objectAtIndex:0];
        if (!ValueAtIndex)
        {
          goto LABEL_169;
        }
      }

      else
      {
        if (!v181)
        {
          goto LABEL_169;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v181, 0);
        if (!ValueAtIndex)
        {
          goto LABEL_169;
        }
      }

      allocatora = v58;
      v185 = ValueAtIndex;
      v60 = count;
      CFRetain(ValueAtIndex);
      goto LABEL_171;
    }

LABEL_169:
    v185 = 0;
    allocatora = v58;
    goto LABEL_170;
  }

  v61 = 0;
  v62 = 0;
  do
  {
    v62 += [objc_msgSend(count objectAtIndex:{v61++), "count"}];
  }

  while (v55 != v61);
  v63 = PF_ALLOCATE_OBJECT_ARRAY(v62);
  if (v172)
  {
    v64 = PF_ALLOCATE_OBJECT_ARRAY(v62);
  }

  else
  {
    v64 = 0;
  }

  v65 = [count objectAtIndex:0];
  if (v65)
  {
    v66 = *(v65 + 32) & 0x23;
  }

  else
  {
    v66 = 0;
  }

  v67 = 0;
  v167 = v66 | 8;
  v186 = v64;
  allocatorb = v63;
  while (2)
  {
    v68 = [count objectAtIndex:v67];
    [v68 getObjects:v63];
    v69 = [v68 count];
    if (v68)
    {
      v68[4] &= 0xFFFFFFFFFFFFFFF9;
    }

    if (v172)
    {
      if (cf)
      {
        v70 = [cf objectAtIndex:v67];
        goto LABEL_149;
      }

      if (v181)
      {
        v70 = CFArrayGetValueAtIndex(v181, v67);
LABEL_149:
        v71 = v70;
      }

      else
      {
        v71 = 0;
      }

      [v71 getObjects:v64 range:{0, objc_msgSend(v71, "count")}];
      v64 += 8 * [v71 count];
    }

    v63 = (v63 + 8 * v69);
    if (v55 != ++v67)
    {
      continue;
    }

    break;
  }

  v72 = 0;
  v73 = (*(v195 + 72) >> 2) & 7;
  if (v73 > 5)
  {
    v74 = v186;
    v75 = allocatorb;
    v76 = v167;
  }

  else
  {
    v74 = v186;
    v75 = allocatorb;
    v76 = v167;
    if (((1 << v73) & 0x29) != 0)
    {
      if (v192)
      {
        v72 = v192[4];
      }

      else
      {
        v72 = 0;
      }

      v76 = v66 | 0x28u;
    }
  }

  allocatora = [[_PFArray alloc] initWithObjects:v75 count:v62 andFlags:v76 andContext:v72];
  if (v172)
  {
    v77 = [_PFArray alloc];
    v78 = v169 ? 11 : 8;
    v79 = [(_PFArray *)v77 initWithObjects:v74 count:v62 andFlags:v78 andContext:0];
    v185 = v79;
    if (v79)
    {
      v60 = count;
      CFRetain(v79);

      goto LABEL_171;
    }
  }

  v185 = 0;
LABEL_170:
  v60 = count;
LABEL_171:
  if (v60)
  {
    CFRelease(v60);
  }

  v80 = [(_PFArray *)allocatora count];
  if (v190 && ([v190 isCancelled] & 1) == 0)
  {
    if (v182 < 1)
    {
      v81 = 0;
      v182 = 0;
    }

    else if (ptr >= v182)
    {
      v82 = 2 * v182;
      if (ptr >= 2 * v182)
      {
        v82 = ptr + 1;
      }

      v182 = v82;
      v81 = 1;
    }

    else
    {
      v81 = 0;
    }

    if (v192)
    {
      v83 = v192[4];
    }

    else
    {
      v83 = 0;
    }

    v200[0] = MEMORY[0x1E69E9820];
    v200[1] = 3221225472;
    v200[2] = __newFetchedRowsForFetchPlan_MT_block_invoke_48;
    v200[3] = &unk_1E6EC4290;
    v203 = v81;
    v200[4] = v190;
    v201 = v182;
    v202 = ptr;
    [v83 performBlock:v200];
  }

  if (v80 != ptr)
  {
    v84 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v85 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
LABEL_327:
          *buf = 134218240;
          *&buf[4] = v80;
          v210 = 1024;
          LODWORD(v211) = ptr;
          _os_log_error_impl(&dword_18565F000, v85, OS_LOG_TYPE_ERROR, "CoreData: error: result array has %lu entries, but we fetched %d rows\n", buf, 0x12u);
        }
      }

      else
      {
        v85 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_327;
        }
      }
    }

    _NSCoreDataLog_console(1, "result array has %lu entries, but we fetched %d rows", v80, ptr);
    objc_autoreleasePoolPop(v84);
  }

  v183 = v80;
  if (v80)
  {
    if (v169)
    {
      v86 = (*(v195 + 72) >> 2) & 7;
      if (v86 <= 5 && ((1 << v86) & 0x29) != 0)
      {
        [v171 drain];
        v87 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        if ((*(v195 + 72) & 0x1C) == 4)
        {
          v88 = 0;
          v89 = allocatora;
        }

        else
        {
          v89 = [_PFRoutines newArrayOfObjectIDsFromCollection:?];
          v88 = v89;
          if ((*(v195 + 72) & 0x1C) == 4)
          {
            v89 = allocatora;
          }
        }

        _prefetchForFetchRequest(v89, 0, v192);

        v171 = v87;
      }
    }
  }

  v90 = v172;
  if (!v80)
  {
    v90 = 0;
  }

  if (v90)
  {
    if (v174)
    {
      active = +[(_PFTask *)0x1ED4BE000];
    }

    else
    {
      active = 1;
    }

    v92 = [(_PFArray *)allocatora count];
    v93 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v93 = malloc_default_zone();
    }

    ptra = malloc_type_zone_calloc(v93, 1uLL, v92, 0x100004077774924uLL);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v94 = [(_PFArray *)allocatora _objectsPointer];
    }

    else
    {
      v95 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v95 = malloc_default_zone();
      }

      v94 = malloc_type_zone_calloc(v95, 1uLL, 8 * v92, 0x80040B8603338uLL);
      [(_PFArray *)allocatora getObjects:v94 range:0, v92];
    }

    objc_opt_class();
    v173 = objc_opt_isKindOfClass();
    if (v173)
    {
      v191 = [(_PFArray *)v185 _objectsPointer];
    }

    else
    {
      v96 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v96 = malloc_default_zone();
      }

      v191 = malloc_type_zone_calloc(v96, 1uLL, 8 * v92, 0x80040B8603338uLL);
      [(_PFArray *)v185 getObjects:v191 range:0, [(_PFArray *)v185 count]];
    }

    v97 = v92 / active;
    v98 = v92 % active;
    v99 = active - 1;
    if (active == 1)
    {
      v102 = 0;
    }

    else
    {
      counta = active - 1;
      v100 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v100 = malloc_default_zone();
      }

      v101 = active - 1;
      v102 = malloc_type_zone_calloc(v100, counta, 8uLL, 0x80040B8603338uLL);
      v103 = 0;
      if (counta <= 1)
      {
        v101 = 1;
      }

      do
      {
        v104 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v104 = malloc_default_zone();
        }

        v105 = malloc_type_zone_calloc(v104, 6uLL, 8uLL, 0x100004000313F17uLL);
        *v105 = v192;
        v105[1] = v94;
        v105[2] = v191;
        v105[3] = v98 + (v103 + 1) * v97;
        v105[4] = v97;
        v105[5] = ptra;
        v102[v103++] = [[_PFTask alloc] initWithFunction:_fireFaultsOnBackgroundThread withArgument:v105 andPriority:2];
      }

      while (v101 != v103);
      v99 = counta;
    }

    v106 = v97 + v98;
    if (v192)
    {
      v107 = v192[4];
      v108 = v192[16];
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    countb = v108;
    if (v106)
    {
      for (i = 0; i < v106; ++i)
      {
        v110 = v94[i];
        if (((*(v110 + 16) >> 15) & 3 | 4) == 5)
        {
          v111 = *(v110 + 48);
          if (v111 && *v111)
          {
            v112 = 3;
          }

          else
          {
            _PFFaultHandlerFulfillFault(v108, v110, v107, v191[i], 0);
            v112 = 1;
          }

          ptra[i] = v112;
        }
      }
    }

    if (v102)
    {
      if (v99)
      {
        for (j = 0; j != v99; ++j)
        {
          v114 = v102[j];
          pthread_mutex_lock((v114 + 32));
          while (!*(v114 + 144))
          {
            pthread_cond_wait((v114 + 96), (v114 + 32));
          }

          pthread_mutex_unlock((v114 + 32));
        }
      }

      PF_FREE_OBJECT_ARRAY(v102);
    }

    v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v92)
    {
      v116 = MEMORY[0x1E695E118];
      v117 = MEMORY[0x1E695E110];
      v118 = ptra;
      v119 = v94;
      v120 = v191;
      do
      {
        v122 = *v118++;
        v121 = v122;
        if (v122)
        {
          v123 = v116;
          if (v121 != 1)
          {
            _PFFaultHandlerFulfillFault(countb, *v119, v107, *v120, 1);
            v123 = v117;
          }
        }

        else
        {
          v123 = v117;
        }

        [v115 addObject:v123];
        ++v120;
        ++v119;
        --v92;
      }

      while (v92);
    }

    [(NSSQLFetchRequestContext *)v192 addFaultsThatWereFired:v115];

    v124 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v124 = malloc_default_zone();
    }

    malloc_zone_free(v124, ptra);
    if ((isKindOfClass & 1) == 0)
    {
      v125 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v125 = malloc_default_zone();
      }

      malloc_zone_free(v125, v94);
    }

    if ((v173 & 1) == 0)
    {
      v126 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v126 = malloc_default_zone();
      }

      malloc_zone_free(v126, v191);
    }
  }

  if (v185)
  {
    CFRelease(v185);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v194 >= 2)
  {
    v127 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v128 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v168;
          v210 = 2048;
          v211 = v183;
          _os_log_error_impl(&dword_18565F000, v128, OS_LOG_TYPE_ERROR, "CoreData: error: fetch using %@ returned %lu rows\n", buf, 0x16u);
        }
      }

      else
      {
        v129 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v168;
          v210 = 2048;
          v211 = v183;
          _os_log_impl(&dword_18565F000, v129, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: fetch using %@ returned %lu rows\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v130 = 1;
    }

    else
    {
      v130 = 4;
    }

    _NSCoreDataLog_console(v130, "fetch using %@ returned %lu rows", v168, v183);
    objc_autoreleasePoolPop(v127);
    if (v194 != 2 && allocatora)
    {
      v131 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v132 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = allocatora;
            _os_log_error_impl(&dword_18565F000, v132, OS_LOG_TYPE_ERROR, "CoreData: error:  with values: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v133 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = allocatora;
            _os_log_impl(&dword_18565F000, v133, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:  with values: %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v134 = 1;
      }

      else
      {
        v134 = 4;
      }

      _NSCoreDataLog_console(v134, " with values: %@", allocatora);
      objc_autoreleasePoolPop(v131);
    }
  }

  [v171 drain];
  if (v22)
  {
    CFRelease(v22);
  }

  if (v181)
  {
    CFRelease(v181);
  }

  if (v196)
  {
    v135 = [v196 _isCancelled] ^ 1;
  }

  else
  {
    v135 = 1;
  }

  [*(v195 + 8) _setAsyncResultHandle:0];
  [0 drain];
  if (v194 < 1)
  {
    return allocatora;
  }

  if (!v135)
  {
    if (v192)
    {
      v141 = *(v192 + 80);
      v137 = objc_autoreleasePoolPush();
      if (v141)
      {
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v142 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
            {
              v143 = CFAbsoluteTimeGetCurrent();
              *buf = 134217984;
              *&buf[4] = v143 - Current;
              _os_log_error_impl(&dword_18565F000, v142, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.\n", buf, 0xCu);
            }
          }

          else
          {
            v150 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
            {
              v151 = CFAbsoluteTimeGetCurrent();
              *buf = 134217984;
              *&buf[4] = v151 - Current;
              _os_log_impl(&dword_18565F000, v150, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v152 = CFAbsoluteTimeGetCurrent();
          v153 = "Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.";
LABEL_353:
          v165 = 1;
LABEL_356:
          _NSCoreDataLog_console(v165, v153, v152 - Current);
          goto LABEL_357;
        }

        v152 = CFAbsoluteTimeGetCurrent();
        v153 = "Fetch cancelled.  Total fetch execution time: \x1B[31m%.4f\x1B[0ms.";
        goto LABEL_355;
      }
    }

    else
    {
      v137 = objc_autoreleasePoolPush();
    }

    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v161 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
        {
          v162 = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          *&buf[4] = v162 - Current;
          _os_log_error_impl(&dword_18565F000, v161, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch cancelled.  Total fetch execution time: %.4fs.\n", buf, 0xCu);
        }
      }

      else
      {
        v163 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
        {
          v164 = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          *&buf[4] = v164 - Current;
          _os_log_impl(&dword_18565F000, v163, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetch cancelled.  Total fetch execution time: %.4fs.\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v152 = CFAbsoluteTimeGetCurrent();
      v153 = "Fetch cancelled.  Total fetch execution time: %.4fs.";
      goto LABEL_353;
    }

    v152 = CFAbsoluteTimeGetCurrent();
    v153 = "Fetch cancelled.  Total fetch execution time: %.4fs.";
LABEL_355:
    v165 = 4;
    goto LABEL_356;
  }

  if (v192)
  {
    v136 = *(v192 + 80);
    v137 = objc_autoreleasePoolPush();
    if (v136)
    {
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v138 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = CFAbsoluteTimeGetCurrent();
            v140 = [(_PFArray *)allocatora count];
            *buf = 134218240;
            *&buf[4] = v139 - Current;
            v210 = 1024;
            LODWORD(v211) = v140;
            _os_log_error_impl(&dword_18565F000, v138, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", buf, 0x12u);
          }
        }

        else
        {
          v144 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            v145 = CFAbsoluteTimeGetCurrent();
            v146 = [(_PFArray *)allocatora count];
            *buf = 134218240;
            *&buf[4] = v145 - Current;
            v210 = 1024;
            LODWORD(v211) = v146;
            _os_log_impl(&dword_18565F000, v144, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.\n", buf, 0x12u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v147 = CFAbsoluteTimeGetCurrent();
        v148 = [(_PFArray *)allocatora count];
        v149 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
        goto LABEL_339;
      }

      v147 = CFAbsoluteTimeGetCurrent();
      v148 = [(_PFArray *)allocatora count];
      v149 = "total fetch execution time: \x1B[31m%.4f\x1B[0ms for %d rows.";
LABEL_341:
      v160 = 4;
      goto LABEL_342;
    }
  }

  else
  {
    v137 = objc_autoreleasePoolPush();
  }

  _pflogInitialize(4);
  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v154 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        v155 = CFAbsoluteTimeGetCurrent();
        v156 = [(_PFArray *)allocatora count];
        *buf = 134218240;
        *&buf[4] = v155 - Current;
        v210 = 1024;
        LODWORD(v211) = v156;
        _os_log_error_impl(&dword_18565F000, v154, OS_LOG_TYPE_ERROR, "CoreData: error: total fetch execution time: %.4fs for %d rows.\n", buf, 0x12u);
      }
    }

    else
    {
      v157 = _PFLogGetLogStream(4);
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        v158 = CFAbsoluteTimeGetCurrent();
        v159 = [(_PFArray *)allocatora count];
        *buf = 134218240;
        *&buf[4] = v158 - Current;
        v210 = 1024;
        LODWORD(v211) = v159;
        _os_log_impl(&dword_18565F000, v157, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total fetch execution time: %.4fs for %d rows.\n", buf, 0x12u);
      }
    }
  }

  if (!_pflogging_catastrophic_mode)
  {
    v147 = CFAbsoluteTimeGetCurrent();
    v148 = [(_PFArray *)allocatora count];
    v149 = "total fetch execution time: %.4fs for %d rows.";
    goto LABEL_341;
  }

  v147 = CFAbsoluteTimeGetCurrent();
  v148 = [(_PFArray *)allocatora count];
  v149 = "total fetch execution time: %.4fs for %d rows.";
LABEL_339:
  v160 = 1;
LABEL_342:
  _NSCoreDataLog_console(v160, v149, v147 - Current, v148);
LABEL_357:
  objc_autoreleasePoolPop(v137);
  return allocatora;
}

void sub_18566C954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (v32)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_18566CC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x18566CD34);
}

void sub_18566CC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *exc_buf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  if (a2)
  {
    v19 = objc_begin_catch(a1);
    if (a2 == 3)
    {
      v20 = v19;
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v22 = [v20 userInfo];
        *(v17 - 176) = 138412546;
        *(v17 - 172) = v20;
        *(v17 - 164) = 2112;
        *(v17 - 162) = v22;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: exception raised during multi-threaded fetch %@ (%@)\n", (v17 - 176), 0x16u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = [v20 userInfo];
        *(v17 - 176) = 138412546;
        *(v17 - 172) = v20;
        *(v17 - 164) = 2112;
        *(v17 - 162) = v24;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: exception raised during multi-threaded fetch %@ (%@)", (v17 - 176), 0x16u);
      }

      objc_exception_rethrow();
    }

    v25 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *(v17 - 176) = 0;
      _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: unidentifiable exception during multi-threaded fetch\n", (v17 - 176), 2u);
    }

    v26 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *(v17 - 176) = 0;
      _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: unidentifiable exception during multi-threaded fetch", (v17 - 176), 2u);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_18566CCFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x18566CD58);
}

void sub_18566CD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *exc_buf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(a1);
      if (!v30)
      {
        JUMPOUT(0x18566C2A8);
      }

      JUMPOUT(0x18566C2A0);
    }

    objc_begin_catch(a1);

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_18566CD3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CD54);
  }

  _Unwind_Resume(a1);
}

void sub_18566CD64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CD74);
  }

  _Unwind_Resume(a1);
}

void sub_18566CD80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CD9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_18566CDAC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CDB4);
  }

  JUMPOUT(0x18566CA74);
}

void sub_18566CE2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18566CDECLL);
  }

  _Unwind_Resume(a1);
}

void sub_18566CE44(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566CE5CLL);
  }

  JUMPOUT(0x18566CA74);
}

void sub_18566CFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *exc_buf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18566D018);
  }

  _Unwind_Resume(a1);
}

void sub_18566CFE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x18566B450);
  }

  _Unwind_Resume(a1);
}

void sub_18566CFF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18566D000);
  }

  objc_terminate();
}

void sub_18566D00C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18566D014);
  }

  _Unwind_Resume(a1);
}

_PFArray *_executeFetchRequest(void *a1)
{
  v1 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        dispatch_assert_queue_V2(v3);
      }

      *(v2 + 312) |= 0x1000u;
    }
  }

  v4 = _newFetchedRowsForRequest(v1);
  if (v4 && [v1 shouldUseBatches])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [(_PFArray *)v4 count];
      v6 = v5;
      MEMORY[0x1EEE9AC00](v5);
      v9 = v14 - v8;
      if (v5 >= 0x201uLL)
      {
        v9 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v14 - v8, 8 * v7);
      }

      [(_PFArray *)v4 getObjects:v9 range:0, v5];
      v10 = [[_PFArray alloc] initWithObjects:v9 count:v5 andFlags:27];
      if (v6 >= 0x201)
      {
        NSZoneFree(0, v9);
      }

      v4 = v10;
    }

    if (v1)
    {
      v11 = v1[4];
      v1 = v1[24];
    }

    else
    {
      v11 = 0;
    }

    v12 = [[_PFBatchFaultingArray alloc] initWithPFArray:v4 andRequest:v1 andContext:v11];

    v4 = v12;
  }

  return v4;
}

unint64_t *_PFFastEntityClass(unint64_t *result, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (atomic_load(result + 7))
  {
    return atomic_load(result + 7);
  }

  v4 = objc_opt_class();
  v5 = [(atomic_ullong *)v2 managedObjectClassName];
  v6 = _PFClassFromString(v5);
  if (!v6)
  {
    if (([@"NSManagedObject" isEqualToString:v5] & 1) == 0)
    {
      PFUseToolchainBehaviors();
    }

    goto LABEL_13;
  }

  v7 = v6;
  if (v6 != v4 && ([(objc_class *)v6 isSubclassOfClass:v4]& 1) == 0)
  {
    v14 = [(atomic_ullong *)v2 name];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"<nil entity>";
    }

    ImageName = class_getImageName(v7);
    if (ImageName)
    {
      v17 = ImageName;
    }

    else
    {
      v17 = "<unknown library>";
    }

    Name = class_getName(v7);
    v19 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_34;
    }

    v20 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v22 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
LABEL_33:
        *buf = 136315650;
        v39 = class_getName(v7);
        v40 = 2112;
        v41 = v15;
        v42 = 2080;
        v43 = v17;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Class '%s' for entity '%@' is not a subclass of NSManagedObject.  It was loaded from '%s'\n", buf, 0x20u);
      }
    }

    else if (v22)
    {
      goto LABEL_33;
    }

LABEL_34:
    v31 = class_getName(v7);
    _NSCoreDataLog_console(1, "Class '%s' for entity '%@' is not a subclass of NSManagedObject.  It was loaded from '%s'", v31, v15, v17);
    if (Name)
    {
      v32 = Name;
    }

    else
    {
      v32 = "<unknown class>";
    }

    objc_autoreleasePoolPop(v19);
    v37[0] = v15;
    v36[0] = @"entityName";
    v36[1] = @"className";
    v37[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v32];
    v36[2] = @"sourceLibrary";
    v37[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v34 = MEMORY[0x1E695DF30];
    v35 = *MEMORY[0x1E695D930];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(atomic_ullong *)v2 managedObjectClassName]);
    v28 = v34;
    v29 = v35;
    v30 = v33;
LABEL_38:
    objc_exception_throw([v28 exceptionWithName:v29 reason:v27 userInfo:v30]);
  }

  if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
  {
    v8 = [(objc_class *)v7 instanceMethodForSelector:sel_isEqual_];
    if (v8 != [NSManagedObject instanceMethodForSelector:sel_isEqual_]|| (v9 = [(objc_class *)v7 instanceMethodForSelector:sel_hash], v9 != [NSManagedObject instanceMethodForSelector:sel_hash]))
    {
      v23 = MEMORY[0x1E695DF30];
      v24 = *MEMORY[0x1E695D930];
      v25 = MEMORY[0x1E696AEC0];
      v26 = class_getName(v7);
      v27 = objc_msgSend_stringWithFormat_(v25, v26, [(atomic_ullong *)v2 name]);
      v28 = v23;
      v29 = v24;
      v30 = 0;
      goto LABEL_38;
    }
  }

  v4 = v7;
LABEL_13:
  if (([(objc_class *)v4 _isGeneratedClass]& 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(objc_class *)v4 classForEntity:v2];
    v4 = v10;
  }

  v11 = 0;
  v12 = v2 + 7;
  atomic_compare_exchange_strong(v12, &v11, v4);
  if (v11)
  {
    v13 = atomic_load(v12);
    if (v10 != v13)
    {
      [(objc_class *)v10 _entityDeallocated];
    }
  }

  return atomic_load(v12);
}

id _PFfastOidRetain(int a1, id a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    Class = object_getClass(a2);
    if (*(object_getIndexedIvars(Class) + 4))
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if ((v5 & 0x8000) != 0)
          {
            break;
          }

          v6 = *(a2 + 1);
          atomic_compare_exchange_strong(a2 + 1, &v6, v5 + 1);
          if (v6 == v5)
          {
            return a2;
          }
        }

        v7 = *(a2 + 1);
        os_unfair_lock_lock_with_options();
        v8 = v7;
        atomic_compare_exchange_strong_explicit(a2 + 1, &v8, v7, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          break;
        }

        os_unfair_lock_unlock(&_extraRetainsLock);
      }

      NSIncrementExtraRefCount(a2);
      os_unfair_lock_unlock(&_extraRetainsLock);
    }

    else
    {
      atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
    }
  }

  return a2;
}

void _PFCMT_SetValue(uint64_t a1, void *a2, const void *a3)
{
  if (a2)
  {
    if ([a2 isTemporaryID])
    {
      v7 = (a1 + 16);
      v6 = *(a1 + 16);
      if (v6)
      {
LABEL_31:
        CFDictionarySetValue(v6, a2, a3);
        return;
      }

      memset(&keyCallBacks, 0, 24);
      *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
      keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
      memset(&v21, 0, sizeof(v21));
      v21.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
      v8 = *(a1 + 48) & 3;
      if (v8 != 1)
      {
        *&v21.retain = *(MEMORY[0x1E695E9E8] + 8);
        if (v8 == 3)
        {
          *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
        }
      }

      *v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &v21);
      _CFDictionarySetCapacity();
    }

    else
    {
      v9 = _PFModelMapSlotForEntity(*(a1 + 56), [a2 entity]);
      v10 = v9;
      if (v9 < 0)
      {
        v13 = v9 & 0x7FFFFFFF;
        v17 = *(a1 + 24);
        if (!v17)
        {
          v18 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v18 = malloc_default_zone();
          }

          v17 = malloc_type_zone_calloc(v18, 1uLL, 8 * *(a1 + 8), 0x80040B8603338uLL);
          *(a1 + 24) = v17;
        }

        v6 = v17[v13];
        if (v6)
        {
          goto LABEL_31;
        }

        v19 = 0;
        memset(&keyCallBacks, 0, 24);
        *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
        keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
        memset(&v21, 0, sizeof(v21));
        v21.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
        v20 = *(a1 + 48) & 3;
        if (v20 != 1)
        {
          *&v21.retain = *(MEMORY[0x1E695E9E8] + 8);
          if (v20 == 3)
          {
            *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
          }

          v19 = &v21;
        }

        *(*(a1 + 24) + 8 * v13) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, v19);
        _CFDictionarySetCapacity();
        v16 = *(a1 + 24);
      }

      else
      {
        v11 = *(a1 + 32);
        if (!v11)
        {
          v12 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v12 = malloc_default_zone();
          }

          v11 = malloc_type_zone_calloc(v12, 1uLL, 8 * *(a1 + 8), 0x80040B8603338uLL);
          *(a1 + 32) = v11;
        }

        v13 = v10 & 0x7FFFFFFF;
        v6 = v11[v13];
        if (v6)
        {
          goto LABEL_31;
        }

        v14 = 0;
        memset(&keyCallBacks, 0, 24);
        keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
        keyCallBacks.equal = _PFObjectIDFastEquals64;
        keyCallBacks.hash = _PFObjectIDFastHash64;
        memset(&v21, 0, sizeof(v21));
        v21.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
        v15 = *(a1 + 48) & 3;
        if (v15 != 1)
        {
          *&v21.retain = *(MEMORY[0x1E695E9E8] + 8);
          if (v15 == 3)
          {
            *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
          }

          v14 = &v21;
        }

        *(*(a1 + 32) + 8 * v13) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, v14);
        _CFDictionarySetCapacity();
        v16 = *(a1 + 32);
      }

      v7 = (v16 + 8 * v13);
    }

    v6 = *v7;
    goto LABEL_31;
  }
}

uint64_t _PF_HasCustomPrimitiveProperties(uint64_t a1)
{
  v1 = (*(a1 + 120) >> 9) & 3;
  if (v1 <= 1)
  {
    v3 = [objc_msgSend(a1 "properties")];
    v4 = *(*(a1 + 152) + 8);
    if (v4)
    {
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = _resolveForSelectorAndType(a1, sel__createValuePrimitiveGetterWithContainerClassID_key_, qword_1ED4BE9A8, 1u);
      if (!v3)
      {
LABEL_9:
        v6 = **(a1 + 152);
        if (v6)
        {
          if (v3)
          {
            goto LABEL_11;
          }

          goto LABEL_13;
        }

        v6 = _resolveForSelectorAndType(a1, sel__createValuePrimitiveSetterWithContainerClassID_key_, _MergedGlobals_70, 0);
        if (!v3)
        {
LABEL_13:
          v7 = *(a1 + 120) & 0xFFFFF9FF | 0x400;
LABEL_15:
          *(a1 + 120) = v7;
          v1 = v7 >> 9;
          return v1 & 1;
        }

LABEL_11:
        while (!*v6)
        {
          ++v6;
          if (!--v3)
          {
            goto LABEL_13;
          }
        }

LABEL_14:
        v7 = *(a1 + 120) | 0x600;
        goto LABEL_15;
      }
    }

    v5 = v3;
    while (!*v4)
    {
      ++v4;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_14;
  }

  return v1 & 1;
}

uint64_t _PFObjectIDFastEquals64(unint64_t a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) == 0)
  {
    Class = object_getClass(a1);
    if (Class == objc_opt_class())
    {
      v6 = object_getClass(a1);
      if ((*(object_getIndexedIvars(v6) + 4) & 2) != 0)
      {
        v7 = object_getClass(a1);
        if (*(object_getIndexedIvars(v7) + 4))
        {
          v8 = *(a1 + 8) >> 16;
        }

        else
        {
          v8 = *(a1 + 16);
        }

        v9 = object_getClass(a2);
        if (*(object_getIndexedIvars(v9) + 4))
        {
          v10 = *(a2 + 8) >> 16;
        }

        else
        {
          v10 = *(a2 + 16);
        }

        return v8 == v10;
      }

      else
      {
        return [*(a1 + 16) isEqual:*(a2 + 16)];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *_PFFaultHandlerLookupRow(_DWORD *a1, uint64_t a2, id *a3, int a4, uint64_t a5)
{
  v9 = a1;
  v121 = *MEMORY[0x1E69E9840];
  v10 = a1[4];
  if (((v10 >> 15) & 3 | 4) != 5 && (v10 & 0x80) == 0)
  {
    return v9;
  }

  v11 = *(a1 + 5);
  values = v11;
  v12 = _PFEntityForManagedObject(a1);
  if (!v12)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An NSManagedObject must have a valid NSEntityDescription." userInfo:0]);
  }

  v13 = v12;
  v14 = v9[4];
  v15 = [v11 isTemporaryID];
  v16 = v15;
  v85 = a3;
  v84 = a4;
  if (v15)
  {
    if (!a2 || (v17 = atomic_load((a2 + 48)), (v17 & 1) == 0))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v86 = 0;
      goto LABEL_70;
    }
  }

  v86 = 0;
  if ((v14 & 0x12) != 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_70;
  }

  [(NSManagedObjectContext *)a2 lockObjectStore];
  if (a2)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [*(a2 + 32) newValuesForObjectWithID:values withContext:a2 error:&v86];
    v23 = v86;
    objc_autoreleasePoolPop(v21);
    if (v22)
    {
      if (*(v9 + 17) & 2) != 0 || ([values isTemporaryID])
      {
        v24 = 0;
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        memset(buf, 0, sizeof(buf));
        v27 = _PFStackAllocatorCreate(buf, 1024);
        v28 = CFArrayCreate(v27, &values, 1, 0);
        [*(a2 + 32) managedObjectContextDidRegisterObjectsWithIDs:v28 generation:{objc_msgSend(a2, "_queryGenerationToken")}];
        if (*&buf[24] && v28)
        {
          CFRelease(v28);
        }

        v24 = 0;
        v19 = 0;
        v20 = 0;
        v9[4] |= 0x200u;
      }

      goto LABEL_66;
    }
  }

  if (v86 && [v86 code] != 133000)
  {
    if ([objc_msgSend(a2 "persistentStoreCoordinator")])
    {
      [a2 _setFaultingError:v86];
      v25 = [a2 persistentStoreCoordinator];
      v26 = [(NSPersistentStoreCoordinator *)v25 _handleFaultingError:v86 fromContext:a2];
      if (v26 != 1)
      {
        if (v26 != 2)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSPersistentStoreCoordinatorDelegate returned an illegal NSPersistentStoreCoordinatorDelegateErrorAction" userInfo:0]);
        }

        goto LABEL_55;
      }
    }

    else
    {
      v22 = getprogname();
      if (!v22)
      {
        v24 = 0;
        v19 = 0;
        goto LABEL_43;
      }

      if (!strncmp("avatarsd", v22, 8uLL) || !strncmp("CalendarAgent", v22, 0xDuLL))
      {
        [a2 _setFaultingError:v86];
      }
    }

    v24 = 0;
    v19 = 0;
    v22 = 0;
LABEL_43:
    v20 = 1;
    goto LABEL_66;
  }

  if ((v16 & 1) != 0 || (v9[4] & 0x24) != 0)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    v29 = a3;
    v30 = a4;
    if ((a4 & 1) == 0)
    {
      goto LABEL_56;
    }

    v31 = [*(v9 + 4) _delegate];
    goto LABEL_40;
  }

  if ((*(a2 + 41) & 0x10) != 0)
  {
    goto LABEL_55;
  }

  v29 = a3;
  v30 = a4;
  if (a4)
  {
    v31 = [a2 _delegate];
LABEL_40:
    v32 = v31;
    if (a5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v13[12] + 24 + 8 * a5);
    }

    if (v31 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v34 = [v32 context:a2 shouldHandleInaccessibleFault:v9 forObjectID:values andTrigger:v33];
      if (v34 > 1)
      {
        if (v34 != 2)
        {
          if (v34 != 3)
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"An NSManagedObjectContext delegate returned an illegal result" userInfo:0]);
          }

          v35 = objc_autoreleasePoolPush();
          if (!_NSCoreDataIsOSLogEnabled(1))
          {
            goto LABEL_134;
          }

          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = values;
LABEL_136:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: An NSManagedObjectContext delegate overrode fault handling behavior to silently substitute nil/0 for all property values for the object with ID '%@'.  This is very unwise.\n", buf, 0xCu);
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = values;
              goto LABEL_136;
            }
          }

LABEL_134:
          _NSCoreDataLog_console(1, "An NSManagedObjectContext delegate overrode fault handling behavior to silently substitute nil/0 for all property values for the object with ID '%@'.  This is very unwise.", values);
          objc_autoreleasePoolPop(v35);
LABEL_20:
          v24 = 0;
          v19 = 0;
          v20 = 0;
          v22 = 0;
          goto LABEL_66;
        }

LABEL_55:
        v24 = 0;
        v20 = 0;
        v22 = 0;
        v19 = 1;
        goto LABEL_66;
      }
    }

    else if ([a2 shouldHandleInaccessibleFault:v9 forObjectID:values triggeredByProperty:v33])
    {
      goto LABEL_55;
    }
  }

LABEL_56:
  v9[4] = v9[4] & 0xFFFC7FFF | 0x8000;
  v37 = MEMORY[0x1E695DF20];
  if (v86)
  {
    v38 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];
    v39 = [v37 dictionaryWithObjectsAndKeys:{v38, @"NSAffectedObjectsErrorKey", v86, *MEMORY[0x1E696AA08], 0}];
  }

  else
  {
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v9), @"NSAffectedObjectsErrorKey", 0}];
  }

  v40 = v39;
  if (v30)
  {
    v81 = values;
    if (!values)
    {
      v81 = @"<UNKNOWN objectID>";
    }

    v82 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v81);
    v83 = [_NSCoreDataException exceptionWithName:133000 code:v82 reason:v40 userInfo:?];
    objc_exception_throw(v83);
  }

  if (v29)
  {
    if (v86)
    {

      v86 = 0;
    }

    v41 = objc_alloc(MEMORY[0x1E696ABC0]);
    v42 = [v41 initWithDomain:*MEMORY[0x1E696A250] code:133000 userInfo:v40];
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v86 = v42;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v22 = 0;
  }

  v24 = 1;
LABEL_66:
  [(NSManagedObjectContext *)a2 unlockObjectStore];
  if ((v24 & 1) == 0)
  {
    v18 = v22;
LABEL_70:
    v45 = [v18 knownKeyValuesPointer];
    if (v18)
    {
      v46 = v45 == 0;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    if (v46)
    {
      v45 = [(NSManagedObjectContext *)a2 lockObjectStore];
    }

    v48 = v19 | v20;
    if ((v19 | v20) == 1)
    {
      v49 = v9[4];
      v50 = (v49 & 0x2000) == 0;
      if ((v49 & 0x2000) == 0)
      {
        v49 |= 0x2000u;
        v9[4] = v49;
      }

      if ((v49 & 0x38000) == 0x28000)
      {
        [(NSFaultHandler *)_insertion_fault_handler turnObject:v9 intoFaultWithContext:a2];
      }
    }

    else
    {
      v50 = 0;
    }

    _PFFaultHandlerFulfillFault(v45, v9, a2, v18, v48 ^ 1);
    if (v48)
    {
      if (![v9 managedObjectContext])
      {
        [(NSManagedObjectContext *)a2 _forceRegisterLostFault:v9];
      }

      if (v19)
      {
        [a2 deleteObject:v9];
      }

      if (v50)
      {
        v44 = 0;
        v9[4] &= ~0x2000u;
        goto LABEL_94;
      }
    }

    else
    {
      v20 = 0;
    }

    v44 = 0;
LABEL_94:
    v22 = v18;
    v43 = v47;
    if (!v18)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v43 = 0;
  v44 = 1;
  if (v22)
  {
LABEL_95:
  }

LABEL_96:
  if (v43)
  {
    [(NSManagedObjectContext *)a2 unlockObjectStore];
  }

  v51 = v86;
  if ((v20 | v44))
  {
    if (!v86)
    {
      if (!v85)
      {
        goto LABEL_127;
      }

      v52 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v52, OS_LOG_TYPE_ERROR, "CoreData: fault: faulting failed to record an error for an serious condition\n", buf, 2u);
      }

      v53 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_127;
      }

      *buf = 0;
      v54 = "CoreData: faulting failed to record an error for an serious condition";
      v55 = v53;
      v56 = 2;
LABEL_124:
      _os_log_fault_impl(&dword_18565F000, v55, OS_LOG_TYPE_FAULT, v54, buf, v56);
      goto LABEL_127;
    }

    if (v85)
    {
      *v85 = v86;
      goto LABEL_127;
    }

    if (v84)
    {
      v57 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_118;
      }

      v58 = _pflogging_catastrophic_mode == 0;
      v59 = _PFLogGetLogStream(1);
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
      if (v58)
      {
        if (!v60)
        {
          goto LABEL_118;
        }
      }

      else if (!v60)
      {
        goto LABEL_118;
      }

      v72 = v86;
      v73 = [v86 userInfo];
      *buf = 138412546;
      *&buf[4] = v72;
      *&buf[12] = 2112;
      *&buf[14] = v73;
      _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: error: Unhandled error occurred during faulting: %@ (%@)\n", buf, 0x16u);
LABEL_118:
      _NSCoreDataLog_console(1, "Unhandled error occurred during faulting: %@ (%@)", v86, [v86 userInfo]);
      objc_autoreleasePoolPop(v57);
      if (([objc_msgSend(v86 "domain")] & 1) == 0 && objc_msgSend(v86, "code") != 134071)
      {
        v74 = MEMORY[0x1E696AEC0];
        v75 = [v86 domain];
        v76 = [v86 code];
        v77 = objc_msgSend_stringWithFormat_(v74, v75, v76, v86);
        v78 = [v86 code];
        v88 = *MEMORY[0x1E696AA08];
        v89 = v86;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v80 = [_NSCoreDataException exceptionWithName:v78 code:v77 reason:v79 userInfo:?];
        -[_NSCoreDataException _setDomain:](v80, [v86 domain]);
        objc_exception_throw(v80);
      }

      v65 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v70 = [v86 domain];
        v71 = [v86 code];
        *buf = 138412802;
        *&buf[4] = v70;
        *&buf[12] = 2048;
        *&buf[14] = v71;
        *&buf[22] = 2112;
        *&buf[24] = v86;
        _os_log_error_impl(&dword_18565F000, v65, OS_LOG_TYPE_ERROR, "CoreData: fault: Unhandled error (%@, %ld) occurred during faulting and was ignored: %@\n", buf, 0x20u);
      }

      v66 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_127;
      }

      v67 = [v86 domain];
      v68 = [v86 code];
      *buf = 138412802;
      *&buf[4] = v67;
      *&buf[12] = 2048;
      *&buf[14] = v68;
      *&buf[22] = 2112;
      *&buf[24] = v86;
      v54 = "CoreData: Unhandled error (%@, %ld) occurred during faulting and was ignored: %@";
      v55 = v66;
      v56 = 32;
      goto LABEL_124;
    }

    if ([v86 code] == 133000)
    {
      goto LABEL_127;
    }

    v61 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v62 = _pflogging_catastrophic_mode == 0;
      v63 = _PFLogGetLogStream(1);
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
      if (v62)
      {
        if (v64)
        {
          *buf = 138412290;
          *&buf[4] = v86;
          goto LABEL_132;
        }
      }

      else if (v64)
      {
        *buf = 138412290;
        *&buf[4] = v86;
LABEL_132:
        _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: error: Client ill advisedly ignored an I/O or unknown error from faulting: %@\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, "Client ill advisedly ignored an I/O or unknown error from faulting: %@", v86);
    objc_autoreleasePoolPop(v61);
LABEL_127:
    if (v44)
    {
      return 0;
    }
  }

  return v9;
}

void sub_18566EFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, void *a16)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v18 = objc_begin_catch(exception_object);
      if ((a14 & 1) == 0)
      {
        if (a15 && !a16)
        {
          v19 = v18;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSManagedObjectContext *)v17 _handleError:v19 withError:&a16];
            v20 = a16;
          }

          else
          {
            v21 = objc_alloc(MEMORY[0x1E695DF20]);
            [MEMORY[0x1E695DEC8] arrayWithObject:v16];
            v22 = [v21 initWithObjectsAndKeys:v19];
            v23 = objc_alloc(MEMORY[0x1E696ABC0]);
            a16 = [v23 initWithDomain:*MEMORY[0x1E696A250] code:133000 userInfo:v22];
          }
        }

        objc_end_catch();
        JUMPOUT(0x18566E8C4);
      }

      a16 = 0;
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0x18566E9C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_18566F190(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18566F1A4);
  }

  JUMPOUT(0x18566F1D0);
}

void sub_18566F1B8()
{
  if (v0)
  {
    JUMPOUT(0x18566F1C0);
  }

  JUMPOUT(0x18566F1D0);
}

void sub_18566F1C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18566F1CCLL);
  }

  objc_terminate();
}

void *_PFEntityForManagedObject(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[5];
    if (!v2 || (result = [v2 entity]) == 0)
    {
      Class = object_getClass(v1);

      return _PFEntityForClass(Class);
    }
  }

  return result;
}

id *_PF_FulfillDeferredFault(id **a1, unint64_t a2)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_fulfillFault_withContext_forIndex_);
  }

  if ((a1[2] & 0x30000) == 0x10000 || (a1[2] & 0x80) != 0)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = _PFEntityForManagedObject(a1);
  v8 = v7[14];
  v9 = v8[2];
  v11 = a2 >= v9;
  v10 = a2 - v9;
  v11 = !v11 || v10 >= v8[3];
  v12 = !v11;
  v14 = *(a1 + 4);
  v13 = *(a1 + 5);
  v15 = v13 ? a1 + v13 : 0;
  v16 = &v15[-((v14 >> 22) & 0x3FC)];
  v17 = a2 >> 3;
  if ((v14 & 0x38000) == 0x8000 || v12)
  {
    [_insertion_fault_handler fulfillFault:a1 withContext:v5 forIndex:a2];
    if (((v16[v17] >> (a2 & 7)) | v12))
    {
      return 0;
    }
  }

  v18 = v8[12];
  v19 = v8[13];
  v20 = _kvcPropertysPrimitiveSetters(v7);
  v11 = a2 >= v18;
  v21 = a2 - v18;
  v22 = *(v20 + 8 * a2);
  if (!v11 || v21 >= v19)
  {
    v48 = *(v20 + 8 * a2);
    v24 = v8[28];
    v11 = a2 >= v24;
    v25 = a2 - v24;
    v27 = v11 && v25 < v8[29];
    v28 = v8[18];
    v11 = a2 >= v28;
    v29 = a2 - v28;
    v31 = v11 && v29 < v8[19];
    v32 = v8[26];
    v11 = a2 >= v32;
    v33 = a2 - v32;
    v35 = v11 && v33 < v8[27];
    if (((v27 | v31) & 1) == 0 && !v35)
    {
      if (*(_kvcPropertysPrimitiveGetters(v7) + 8 * a2))
      {
        v36 = _NSGetUsingKeyValueGetter();
      }

      else
      {
        snapshot_get_value_as_object(a1[3], a2);
      }

      v5 = v36;
      goto LABEL_67;
    }

    v39 = (a1[2] & 0x12) == 0;
    v40 = [v6 isTemporaryID];
    v41 = v5 != 0;
    v42 = *(v7[12] + 24 + 8 * a2);
    v43 = (v41 | ~v40) & v39 | v27;
    v44 = objc_opt_class();
    v5 = [_PFAllocateObject(v44 0)];
    _PF_CopyOnWrite_Snapshot(a1);
    if (v48)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (!v5)
  {
LABEL_67:
    v16[v17] |= 1 << (a2 & 7);
    return v5;
  }

  v37 = *(_kvcPropertysPrimitiveGetters(v7) + 8 * a2);
  if (v37)
  {
    v38 = _NSGetUsingKeyValueGetter();
  }

  else
  {
    snapshot_get_value_as_object(a1[3], a2);
  }

  v45 = v38;
  if (v38 != _CD_ScalarNull)
  {
    if (v38)
    {
      goto LABEL_55;
    }

    goto LABEL_66;
  }

  [_insertion_fault_handler fulfillFault:a1 withContext:v5 forIndex:a2];
  result = a1[3];
  if (result)
  {
    if (((v16[v17] >> (a2 & 7)) & 1) == 0)
    {
      if (v37)
      {
        v47 = _NSGetUsingKeyValueGetter();
      }

      else
      {
        snapshot_get_value_as_object(result, a2);
      }

      v45 = v47;
      if (v47)
      {
LABEL_55:
        v5 = [NSManagedObjectContext _retainedObjectWithID:v5 optionalHandler:v45 withInlineStorage:0];
        _PF_CopyOnWrite_Snapshot(a1);
        if (v22)
        {
LABEL_56:
          _NSSetUsingKeyValueSetter();

          goto LABEL_67;
        }

LABEL_57:
        snapshot_set_value_as_object(a1[3], a2, v5);
        goto LABEL_67;
      }

LABEL_66:
      v5 = 0;
      goto LABEL_67;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void _PFFaultHandlerFulfillFault(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v5 = (*(a2 + 16) >> 15) & 7;
  if (((*(a2 + 16) >> 15) & 3 | 4) != 5)
  {
    return;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a2 + 16) & 0xFFFC7FFF | 0x18000;
  *(a2 + 16) = v11;
  if ((v11 & 0x100) == 0)
  {
    [a2 willFireFault];
  }

  v12 = *(a2 + 40);
  v13 = _PFEntityForManagedObject(a2);
  context = v10;
  v121 = a5;
  v120 = v11;
  v115 = v12;
  if ((v11 & 0x12) != 0)
  {
    v14 = 1;
  }

  else
  {
    if (![v12 isTemporaryID])
    {
      v127 = 0;
      goto LABEL_14;
    }

    if (a3)
    {
      v15 = a4 == 0;
    }

    else
    {
      v15 = 1;
    }

    v14 = v15;
  }

  v127 = v14;
LABEL_14:
  v125 = a4;
  v16 = v13[13];
  v131 = v13[14];
  v17 = v13[12];
  v116 = *(v16 + 40);
  v18 = _kvcPropertysPrimitiveSetters(v13);
  v19 = *(a2 + 48);
  if (!v19 || !*v19 || (*(a2 + 17) & 0x20) != 0)
  {
    HasCustomPrimitiveProperties = _PF_HasCustomPrimitiveProperties(v13);
    v20 = 0;
    goto LABEL_22;
  }

  v20 = *(v13[19] + 48);
  HasCustomPrimitiveProperties = _PF_HasCustomPrimitiveProperties(v13);
  if (!v20)
  {
LABEL_22:
    v21 = 1;
    goto LABEL_23;
  }

  if (a3)
  {
    ++*(a3 + 46);
  }

  *(a2 + 16) |= 0x1000u;
  [a2 _willChangeValuesForKeys:v20];
  v21 = 0;
LABEL_23:
  v124 = a3;
  v114 = v20;
  v119 = v21;
  v117 = v5;
  if (v127)
  {
    v128 = 0;
LABEL_31:
    v24 = *(a2 + 24);
    v27 = v24;
    _PF_CopyOnWrite_Snapshot(a2);
    if (v5 == 5)
    {
      v118 = v24;
    }

    else
    {

      v118 = 0;
      v24 = 0;
    }

    HasCustomPrimitiveProperties = 1;
    v130 = 1;
    goto LABEL_40;
  }

  v22 = [v125 _snapshot];
  if (!v22)
  {
    v128 = [v125 knownKeyValuesPointer];
    *(a2 + 12) = [v125 _versionNumber];
    goto LABEL_31;
  }

  v23 = v22;
  *(a2 + 12) = *(v22 + 12);
  v24 = *(a2 + 24);
  v25 = v24;
  if (v24 == v23)
  {
    if (v5 == 5)
    {
      v130 = 0;
      v128 = 0;
      v118 = v24;
    }

    else
    {

      v118 = 0;
      v130 = 0;
      v128 = 0;
    }

    v24 = 0;
  }

  else
  {
    *(a2 + 24) = v23;
    if (v5 == 5)
    {
      v130 = 0;
      v128 = 0;
      v118 = v24;
    }

    else
    {

      v118 = 0;
      v130 = 0;
      v128 = 0;
    }
  }

LABEL_40:
  v129 = v17 + 24;
  v29 = v131[6];
  v28 = v131[7];
  v30 = v28 + v29;
  v31 = *(a2 + 20);
  if (v31)
  {
    v32 = a2 + v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32 - 4 * *(a2 + 19);
  if (v29 < v30)
  {
    v34 = v30 - 1;
    v35 = v29 >> 3;
    v36 = (v30 - 1) >> 3;
    v37 = 255 << (v29 & 7);
    if (v36 == v29 >> 3)
    {
      v38 = (0xFFu >> (~v34 & 7)) & v37;
      v36 = v29 >> 3;
    }

    else
    {
      v39 = (v33 + v35);
      *v39 |= v37;
      if (v35 + 1 < v36)
      {
        memset(v39 + 1, 255, (v36 - v35 - 2) + 1);
      }

      v38 = 0xFFu >> (~v34 & 7);
    }

    *(v33 + v36) |= v38;
  }

  v123 = &v113;
  if ((v127 & 1) == 0)
  {
    if (HasCustomPrimitiveProperties)
    {
      if (v130)
      {
        if (v29 < v30)
        {
          do
          {
            if (v128)
            {
              v42 = *(v128 + 8 * v29);
            }

            else
            {
              v42 = objc_msgSend_valueForKey_(v125);
            }

            v43 = *(v18 + 8 * v29);
            _PF_CopyOnWrite_Snapshot(a2);
            if (v43)
            {
              _NSSetUsingKeyValueSetter();
            }

            else
            {
              snapshot_set_value_as_object(*(a2 + 24), v29, v42);
            }

            ++v29;
            --v28;
          }

          while (v28);
        }
      }

      else if (v29 < v30)
      {
        v48 = v116 + 8 * v29;
        v49 = v128 + 8 * v29;
        v50 = (v18 + 8 * v29);
        do
        {
          if (*v50)
          {
            if (!v128)
            {
              objc_msgSend_valueForKey_(v125);
            }

            _PF_CopyOnWrite_Snapshot(a2);
            _NSSetUsingKeyValueSetter();
          }

          v48 += 8;
          v49 += 8;
          ++v50;
          --v28;
        }

        while (v28);
      }
    }

    goto LABEL_89;
  }

  if (HasCustomPrimitiveProperties)
  {
    if (v130)
    {
      if (v29 < v30)
      {
        do
        {
          v40 = *(v129 + 8 * v29);
          if ([v40 _propertyType] == 7)
          {
            v41 = [v40 _buildDefaultValue];
          }

          else
          {
            v41 = [v40 defaultValue];
          }

          v26 = v41;
          if (v41)
          {
            _PF_Handler_Primitive_Internal_SetProperty(a2, v29, v41, *(v18 + 8 * v29));
          }

          ++v29;
          --v28;
        }

        while (v28);
LABEL_89:
        v46 = v131[12];
        v51 = v131[13];
        v47 = v51 + v46;
        v52 = v127;
        if (!v125)
        {
          v52 = 1;
        }

        if (v52)
        {
          goto LABEL_92;
        }

        if (v46 >= v47)
        {
          goto LABEL_134;
        }

        v125 = NSKeyValueCoding_NullValue;
        v58 = v47 - 1;
        v59 = v46 >> 3;
        v60 = v58 >> 3;
        v61 = 0xFFu >> (8 - (v46 & 7));
        if (v58 >> 3 == v46 >> 3)
        {
          v62 = (510 << (v58 & 7)) | v61;
          v60 = v46 >> 3;
        }

        else
        {
          v65 = (v33 + v59);
          *v65 &= v61;
          if (v59 + 1 < v60)
          {
            bzero(v65 + 1, (v60 - v59 - 2) + 1);
          }

          v62 = 510 << (v58 & 7);
        }

        *(v33 + v60) &= v62;
        if (!HasCustomPrimitiveProperties)
        {
          goto LABEL_134;
        }

        while (1)
        {
          v66 = *(v18 + 8 * v46);
          v67 = v130;
          if (v66)
          {
            v67 = 1;
          }

          if (v67 != 1)
          {
            goto LABEL_131;
          }

          v68 = *(v129 + 8 * v46);
          if (!v128 || (v69 = *(v128 + 8 * v46), v69 == v125))
          {
            v71 = v124;
            [(NSManagedObjectContext *)v124 lockObjectStore];
            if (v71)
            {
              v72 = *(v71 + 32);
            }

            else
            {
              v72 = 0;
            }

            v69 = [v72 newValueForRelationship:v68 forObjectWithID:v115 withContext:v71 error:0];
            [(NSManagedObjectContext *)v71 unlockObjectStore];
            if (v69 == v125 || (v70 = 1, !v69))
            {
LABEL_125:
              if (v117 == 5)
              {
                _PF_CopyOnWrite_Snapshot(a2);
                if (v66)
                {
                  _NSSetUsingKeyValueSetter();
                }

                else
                {
                  snapshot_set_value_as_object(*(a2 + 24), v46, 0);
                }
              }

              goto LABEL_131;
            }
          }

          else
          {
            v70 = 0;
            if (!v69)
            {
              goto LABEL_125;
            }
          }

          _PF_CopyOnWrite_Snapshot(a2);
          if (v66)
          {
            break;
          }

          snapshot_set_value_as_object(*(a2 + 24), v46, v69);
          if (v70)
          {
            goto LABEL_129;
          }

LABEL_131:
          ++v46;
          if (!--v51)
          {
            goto LABEL_134;
          }
        }

        _NSSetUsingKeyValueSetter();
        if (!v70)
        {
          goto LABEL_131;
        }

LABEL_129:

        goto LABEL_131;
      }
    }

    else if (v29 < v30)
    {
      do
      {
        if (*(v18 + 8 * v29))
        {
          v44 = *(v129 + 8 * v29);
          v45 = ([v44 _propertyType] == 7 ? objc_msgSend(v44, "_buildDefaultValue") : objc_msgSend(v44, "defaultValue"));
          v26 = v45;
          if (v45)
          {
            _PF_Handler_Primitive_Internal_SetProperty(a2, v29, v45, *(v18 + 8 * v29));
          }
        }

        ++v29;
        --v28;
      }

      while (v28);
      goto LABEL_89;
    }
  }

  v46 = v131[12];
  v47 = v131[13] + v46;
LABEL_92:
  if (v46 < v47)
  {
    v53 = v47 - 1;
    v54 = v46 >> 3;
    v55 = 255 << (v46 & 7);
    if (v46 >> 3 == (v47 - 1) >> 3)
    {
      v56 = (0xFFu >> (~v53 & 7)) & v55;
      v57 = v46 >> 3;
    }

    else
    {
      v57 = v53 >> 3;
      v63 = (v33 + v54);
      *v63 |= v55;
      if (v54 + 1 < v53 >> 3)
      {
        memset(v63 + 1, 255, (v57 - v54 - 2) + 1);
      }

      v56 = 0xFFu >> (~v53 & 7);
    }

    *(v33 + v57) |= v56;
    if (v117 == 5)
    {
      do
      {
        v64 = *(v18 + 8 * v46);
        _PF_CopyOnWrite_Snapshot(a2);
        if (v64)
        {
          _NSSetUsingKeyValueSetter();
        }

        else
        {
          snapshot_set_value_as_object(*(a2 + 24), v46, 0);
        }

        ++v46;
      }

      while (v47 != v46);
    }
  }

LABEL_134:
  v73 = 0;
  v128 = v33 + 1;
  do
  {
    v74 = &v131[2 * dword_18592E450[v73]];
    v75 = *v74;
    v76 = v74[1];
    v77 = v76 + *v74;
    if (v24)
    {
      if (v75 < v77)
      {
        do
        {
          object = snapshot_get_object(v24, v75);
          if (object)
          {
            v79 = object;
            v80 = *(v18 + 8 * v75);
            _PF_CopyOnWrite_Snapshot(a2);
            if (v80)
            {
              _NSSetUsingKeyValueSetter();
            }

            else
            {
              snapshot_set_value_as_object(*(a2 + 24), v75, v79);
            }

            v81 = v75 >> 3;
            v82 = *(v33 + (v75 >> 3)) | (1 << (v75 & 7));
          }

          else
          {
            v81 = v75 >> 3;
            v82 = *(v33 + (v75 >> 3)) & ~(1 << (v75 & 7));
          }

          *(v33 + v81) = v82;
          ++v75;
          --v76;
        }

        while (v76);
      }
    }

    else if (v75 < v77)
    {
      v83 = v77 - 1;
      v84 = v75 >> 3;
      v85 = v83 >> 3;
      v86 = 0xFFu >> (8 - (v75 & 7));
      if (v83 >> 3 == v75 >> 3)
      {
        v87 = (510 << (v83 & 7)) | v86;
      }

      else
      {
        *(v33 + v84) &= v86;
        if (v84 + 1 < v85)
        {
          bzero((v128 + v84), (v85 - v84 - 2) + 1);
        }

        v87 = 510 << (v83 & 7);
        v84 = v83 >> 3;
      }

      *(v33 + v84) &= v87;
    }

    ++v73;
  }

  while (v73 != 3);
  v88 = v131[10];
  v89 = v131[11];
  v90 = v89 + v88;
  if (HasCustomPrimitiveProperties)
  {
    if (v88 < v90)
    {
      do
      {
        v91 = (1 << (v88 & 7)) & *(v33 + (v88 >> 3));
        v92 = *(v18 + 8 * v88);
        v93 = v130;
        if (v91)
        {
          v93 = 1;
        }

        if ((v93 & 1) != 0 || v92)
        {
          if (v91)
          {
            snapshot_get_value_as_object(v24, v88);
          }

          else
          {
            v95 = *(v129 + 8 * v88);
            v94 = ([v95 _propertyType] == 7 ? objc_msgSend(v95, "_buildDefaultValue") : objc_msgSend(v95, "defaultValue"));
          }

          v26 = v94;
          if (v94)
          {
            _PF_Handler_Primitive_Internal_SetProperty(a2, v88, v94, v92);
          }
        }

        ++v88;
        --v89;
      }

      while (v89);
    }
  }

  else if (v88 < v90)
  {
    do
    {
      if ((*(v33 + (v88 >> 3)) >> (v88 & 7)))
      {
        v96 = *(v18 + 8 * v88);
        snapshot_get_value_as_object(v24, v88);
        if (v97)
        {
          _PF_Handler_Primitive_Internal_SetProperty(a2, v88, v97, v96);
        }
      }

      ++v88;
      --v89;
    }

    while (v89);
  }

  v98 = v131[10];
  v99 = v131[11] + v98;
  v100 = v124;
  v101 = v119;
  if (v98 < v99)
  {
    v102 = v99 - 1;
    v103 = v98 >> 3;
    v104 = v102 >> 3;
    v105 = 255 << (v98 & 7);
    if (v102 >> 3 == v98 >> 3)
    {
      v106 = (0xFFu >> (~v102 & 7)) & v105;
      v104 = v103;
    }

    else
    {
      v107 = (v33 + v103);
      *v107 |= v105;
      if (v103 + 1 < v104)
      {
        memset(v107 + 1, 255, (v104 - v103 - 2) + 1);
      }

      v106 = 0xFFu >> (~v102 & 7);
    }

    *(v33 + v104) |= v106;
  }

  *(a2 + 16) &= 0xFFFC7FFF;
  if ((v101 & 1) == 0)
  {
    [a2 _didChangeValuesForKeys:v114];
    *(a2 + 16) &= ~0x1000u;
    if (v100)
    {
      --*(v100 + 46);
    }
  }

  v108 = context;
  v109 = v121;
  if ((v120 & 0x100) == 0)
  {
    [a2 didFireFault];
  }

  v110 = v127;
  if ((v109 & 1) == 0)
  {
    v110 = 1;
  }

  if ((v110 & 1) == 0)
  {
    *(a2 + 16) |= 0x1000u;
    [a2 awakeFromFetch];
    *(a2 + 16) &= ~0x1000u;
  }

  if (v24)
  {
  }

  objc_autoreleasePoolPop(v108);
  v111 = v118;
  v112 = 0;
}

uint64_t _kvcPropertysPrimitiveSetters(uint64_t a1)
{
  if (**(a1 + 152))
  {
    return **(a1 + 152);
  }

  else
  {
    return _resolveForSelectorAndType(a1, sel__createValuePrimitiveSetterWithContainerClassID_key_, _MergedGlobals_70, 0);
  }
}

uint64_t _kvcPropertysPrimitiveGetters(unint64_t *a1)
{
  if (*(a1[19] + 8))
  {
    return *(a1[19] + 8);
  }

  else
  {
    return _resolveForSelectorAndType(a1, sel__createValuePrimitiveGetterWithContainerClassID_key_, qword_1ED4BE9A8, 1u);
  }
}

CFIndex _PFCMT_GetCount(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  if (a1[3])
  {
    v4 = a1[1];
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(a1[3] + 8 * i);
        if (v6)
        {
          Count += CFDictionaryGetCount(v6);
          v4 = a1[1];
        }
      }
    }
  }

  if (a1[4])
  {
    v7 = a1[1];
    if (v7)
    {
      for (j = 0; j < v7; ++j)
      {
        v9 = *(a1[4] + 8 * j);
        if (v9)
        {
          Count += CFDictionaryGetCount(v9);
          v7 = a1[1];
        }
      }
    }
  }

  return Count;
}

void _PF_Handler_Primitive_GetProperty(id **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!_PF_Threading_Debugging_level)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = MEMORY[0x10];
    goto LABEL_7;
  }

  _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_valueForKey_);
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *(a1 + 4);
  if ((v7 & 0x4000) != 0)
  {
    v8 = a1;
    v7 = a1[2] & 0xFFFFBFFF;
    *(a1 + 4) = v7;
  }

LABEL_7:
  v9 = *(a1 + 5);
  if (v9)
  {
    v10 = a1 + v9;
  }

  else
  {
    v10 = 0;
  }

  if (((v10[(a2 >> 3) - ((v7 >> 22) & 0x3FC)] >> (a2 & 7)) & 1) == 0)
  {
    _PF_FulfillDeferredFault(a1, a2);
  }

  v11 = a1[3];
  if (!v11)
  {
    v12 = *(a1 + 4);
    if ((v12 & 0x38000) == 0x10000 || (v12 & 0x80) != 0)
    {
      return;
    }

    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v14 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v16 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          v19 = 0;
          v17 = &v19;
LABEL_30:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NULL _cd_rawData but the object is not being turned into a fault\n", v17, 2u);
        }
      }

      else if (v16)
      {
        LOWORD(v18) = 0;
        v17 = &v18;
        goto LABEL_30;
      }
    }

    _NSCoreDataLog_console(1, "NULL _cd_rawData but the object is not being turned into a fault", v18);
    objc_autoreleasePoolPop(v13);
    return;
  }

  if (a4)
  {

    _NSGetUsingKeyValueGetter();
  }

  else
  {

    snapshot_get_value_as_object(v11, a2);
  }
}

uint64_t _kvcPropertysPublicSetters(unint64_t *a1)
{
  if (*(a1[19] + 16))
  {
    return *(a1[19] + 16);
  }

  else
  {
    return _resolveForSelectorAndType(a1, sel__createValueSetterWithContainerClassID_key_, _MergedGlobals_70, 2u);
  }
}

void *_PF_ManagedObject_DidChangeValueForKeyIndex(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = *(result + 4);
  if ((v6 & 0x2000) == 0)
  {
    if ((result = _PFEntityForManagedObject(result), v9 = result[14], v10 = *(v9 + 32), v11 = *(v9 + 40), (v12 = v5[6]) != 0) && *v12 || ((v14 = a4 >= v10, v13 = a4 - v10, v14) ? (v14 = v13 >= v11) : (v14 = 1), !v14))
    {
      result = _NSObjectDidChangeVFKImp(v5, a2, a3);
    }
  }

  if ((v6 & 0x1000) == 0)
  {
    *(v5 + 4) &= ~0x800u;
  }

  if ((v6 & 0x40) == 0)
  {

    return [v5 didAccessValueForKey:{a3, a4}];
  }

  return result;
}

void *_sharedIMPL_setvfk_core(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_setValue_forKey_);
  }

  v14 = a3;
  v7 = _PFEntityForManagedObject(a1);
  v8 = *(v7[12] + 24 + 8 * a4);
  v9 = *(_kvcPropertysPrimitiveSetters(v7) + 8 * a4);
  v10 = *(*(v7[12] + 16) + 40);
  v11 = *(v10 + 8 * a4);
  v12 = *(a1 + 4);
  if ((v12 & 0x40000) != 0)
  {
    _PF_ManagedObject_WillChangeValueForKeyIndex(a1, sel_willChangeValueForKey_, v11, a4, 0);
  }

  else
  {
    [a1 willChangeValueForKey:*(v10 + 8 * a4)];
  }

  _PF_CopyOnWrite_Snapshot(a1);
  _PFManagedObject_coerceValueForKeyWithDescription(a1, &v14, v11, v8);
  if (v9)
  {
    _NSSetUsingKeyValueSetter();
    if ((v12 & 0x40000) != 0)
    {
      return _PF_ManagedObject_DidChangeValueForKeyIndex(a1, sel_didChangeValueForKey_, v11, a4);
    }
  }

  else
  {
    snapshot_set_value_as_object(a1[3], a4, v14);
    if ((v12 & 0x40000) != 0)
    {
      return _PF_ManagedObject_DidChangeValueForKeyIndex(a1, sel_didChangeValueForKey_, v11, a4);
    }
  }

  return [a1 didChangeValueForKey:v11];
}

void _PFFastMOCObjectWillChange(uint64_t a1, _DWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a1, sel_objectWillChange_);
  }

  v4 = a2[4];
  if ((v4 & 7) != 0)
  {
    return;
  }

  if ((v4 & 0x80) != 0)
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v7 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          goto LABEL_29;
        }
      }

      else if (v9)
      {
LABEL_29:
        *buf = 138412546;
        v19 = [a2 objectID];
        v20 = 2048;
        v21 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Mutating a managed object %@ (%p) after it has been removed from its context.\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Mutating a managed object %@ (%p) after it has been removed from its context.", [a2 objectID], a2);
    v14 = v6;
LABEL_27:
    objc_autoreleasePoolPop(v14);
    return;
  }

  if (!a1)
  {
    return;
  }

  if ((v4 & 0x80) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 4);
  }

  if (v5 != a1)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v11 = _pflogging_catastrophic_mode;
      v12 = _PFLogGetLogStream(1);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          goto LABEL_30;
        }
      }

      else if (v13)
      {
LABEL_30:
        v16 = [a2 objectID];
        v17 = *(a2 + 4);
        *buf = 138413058;
        v19 = v16;
        v20 = 2048;
        v21 = a2;
        v22 = 2048;
        v23 = v17;
        v24 = 2048;
        v25 = a1;
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: Mutating a managed object %@ (%p) that has a different context %p than the receiver %p.\n", buf, 0x2Au);
      }
    }

    _NSCoreDataLog_console(1, "Mutating a managed object %@ (%p) that has a different context %p than the receiver %p.", [a2 objectID], a2, *(a2 + 4), a1);
    v14 = v10;
    goto LABEL_27;
  }

  [(NSManagedObjectContext *)a1 _establishEventSnapshotsForObject:a2];
  v15 = *(a1 + 40);
  if ((v15 & 0x200) != 0 && (v15 & 0x100) == 0)
  {
    _PFFaultLogExcessivePrepareForPendingChangesAttempts();
    v15 = *(a1 + 40);
  }

  *(a1 + 40) = v15 | 0x100;
  [*(a1 + 56) addObject:a2];
  a2[4] |= 1u;
  [(NSManagedObjectContext *)a1 _registerClearStateWithUndoManager];
  [(NSManagedObjectContext *)a1 _enqueueEndOfEventNotification];
  if ((*(a1 + 41) & 4) == 0)
  {
    [a1 willChangeValueForKey:@"hasChanges"];
    *(a1 + 40) |= 0x400u;

    [a1 didChangeValueForKey:@"hasChanges"];
  }
}

void _PF_ManagedObject_WillChangeValueForKeyIndex(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  v10 = _PFEntityForManagedObject(a1);
  if (!v10)
  {
    v11 = 0;
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    [a1 willAccessValueForKey:a3];
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v11 = v10[14];
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    v12 = 1;
    goto LABEL_5;
  }

  _PF_Handler_WillAccess_Property(a1, sel_willAccessValueForKey_, a4);
LABEL_8:
  v12 = 0;
  v15 = v11[10];
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (!v16 || v17 >= v11[11])
  {
LABEL_5:
    v13 = 0;
    v14 = 1;
    if ((*(a1 + 17) & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v18 = [(objc_class *)object_getClass(a1) _transientPropertiesChangesMask];
  v13 = v18;
  v19 = *(a1 + 16);
  if ((v19 & 0x8000) != 0)
  {
    v34 = *(a1 + 20);
    if (v34)
    {
      v35 = a1 + v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v35 - ((v19 >> 22) & 0x3FC) + (a4 >> 3));
    v37 = 1 << (a4 & 7);
    v12 = 0;
    v14 = 0;
    v38 = (v37 & v36) == 0 || v18 == 0;
    if (v38 || (v37 & *(v18 + (a4 >> 3))) == 0)
    {
LABEL_6:
      [_insertion_fault_handler fulfillFault:a1 withContext:*(a1 + 32) forIndex:a4];
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

LABEL_13:
  if ((v9 & 0x1000) != 0)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x80) != 0)
  {
    v20 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v40 = v12;
      v21 = v11;
      v22 = v14;
      v23 = v13;
      v24 = v20;
      v25 = a5;
      v26 = a3;
      v27 = _pflogging_catastrophic_mode;
      log = _PFLogGetLogStream(1);
      v28 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        a3 = v26;
        a5 = v25;
        v20 = v24;
        v13 = v23;
        v14 = v22;
        v11 = v21;
        v12 = v40;
        if (v28)
        {
          goto LABEL_43;
        }
      }

      else
      {
        a3 = v26;
        a5 = v25;
        v20 = v24;
        v13 = v23;
        v14 = v22;
        v11 = v21;
        v12 = v40;
        if (v28)
        {
LABEL_43:
          *buf = 138412546;
          v42 = [a1 objectID];
          v43 = 2048;
          v44 = a1;
          _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: Mutating a managed object %@ (%p) after it has been removed from its context.\n", buf, 0x16u);
        }
      }
    }

    _NSCoreDataLog_console(1, "Mutating a managed object %@ (%p) after it has been removed from its context.", [a1 objectID], a1);
    objc_autoreleasePoolPop(v20);
  }

  v29 = *(a1 + 32);
  if (v29 && (v12 & ((*&v9 & 0x400000) != 0)) == 0)
  {
    v30 = v13 ? v14 : 1;
    if ((v30 & 1) != 0 || ((*(v13 + (a4 >> 3)) >> (a4 & 7)) & 1) == 0)
    {
      _PFFastMOCObjectWillChange(v29, a1);
    }
  }

  *(a1 + 16) |= 0x800u;
LABEL_33:
  if ((v9 & 0x2000) == 0)
  {
    v31 = *(a1 + 48);
    if (v31)
    {
      LOBYTE(v31) = *v31 != 0;
    }

    if ((v31 & 1) != 0 || (a5 & 1) != 0 || (v32 = v11[4], v16 = a4 >= v32, v33 = a4 - v32, v16) && v33 < v11[5])
    {
      off_1ED4BE9C0(a1, sel_willChangeValueForKey_, a3);
    }
  }
}

id *_PF_Handler_WillAccess_Property(id *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!_PF_Threading_Debugging_level)
  {
    if (result)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = MEMORY[0x10];
    goto LABEL_7;
  }

  result = _PFAssertSafeMultiThreadedAccess_impl([result managedObjectContext], sel_willAccessValueForKey_);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *(v4 + 4);
  if ((v5 & 0x4000) != 0)
  {
    result = v4;
    v5 = v4[2] & 0xFFFFBFFF;
    *(v4 + 4) = v5;
  }

LABEL_7:
  v6 = *(v4 + 5);
  if (v6)
  {
    v7 = v4 + v6;
  }

  else
  {
    v7 = 0;
  }

  if (((v7[(a3 >> 3) - ((v5 >> 22) & 0x3FC)] >> (a3 & 7)) & 1) == 0)
  {

    return _PF_FulfillDeferredFault(v4, a3);
  }

  return result;
}

uint64_t _PFManagedObject_coerceValueForKeyWithDescription(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if ([MEMORY[0x1E695DFB0] null] == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  result = [a4 _propertyType];
  if (result != 4)
  {
    if (result != 2)
    {
      v8 = v9;
      goto LABEL_88;
    }

    if (v9)
    {
      result = [a4 attributeType];
      if (result > 699)
      {
        if (result > 999)
        {
          switch(result)
          {
            case 1000:
              if ([a4 isFileBackedFuture])
              {
                objc_opt_class();
                result = objc_opt_isKindOfClass();
                if (result)
                {
                  return result;
                }
              }

              else
              {
                result = [v9 isNSData];
                if (result)
                {
                  return result;
                }
              }

              break;
            case 1800:
              if ([a4 usesMergeableStorage])
              {
                objc_opt_class();
                result = objc_opt_respondsToSelector();
                if (result)
                {
                  return result;
                }
              }

              break;
            case 2200:
              return result;
          }

          goto LABEL_59;
        }

        if (result == 700)
        {
          result = [v9 isNSString];
          if (result)
          {
            return result;
          }

          goto LABEL_59;
        }

        if (result != 800)
        {
          if (result == 900)
          {
            result = [v9 isNSDate];
            if (result)
            {
              return result;
            }
          }

          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (result <= 299)
      {
        if (result != 100 && result != 200)
        {
          goto LABEL_59;
        }
      }

      else if (result != 300 && result != 500 && result != 600)
      {
LABEL_59:
        if (![a4 isFileBackedFuture])
        {
          if ([a4 usesMergeableStorage])
          {
            v26 = MEMORY[0x1E695DF30];
            v27 = *MEMORY[0x1E695D940];
            v59 = MEMORY[0x1E696AEC0];
            v60 = [a4 name];
            v61 = NSStringFromProtocol(&unk_1EF444E10);
            v32 = objc_msgSend_stringWithFormat_(v59, v60, v61);
          }

          else
          {
            v38 = [a4 _attributeValueClass];
            if (v38)
            {
              v39 = v38;
              result = objc_opt_isKindOfClass();
              if (result)
              {
                goto LABEL_88;
              }

              v40 = a3;
              if ([v9 isNSNumber] && objc_msgSend(v39, "isSubclassOfClass:", objc_opt_class()))
              {
                result = [MEMORY[0x1E696AB90] decimalNumberWithString:{objc_msgSend(v9, "stringValue")}];
                v8 = result;
                goto LABEL_88;
              }

              v26 = MEMORY[0x1E695DF30];
              v27 = *MEMORY[0x1E695D940];
              v66 = MEMORY[0x1E696AEC0];
              v67 = [a4 attributeValueClassName];
              v68 = objc_opt_class();
              v65 = objc_msgSend_stringWithFormat_(v66, a3, v67, v68, v9);
              goto LABEL_111;
            }

            result = [a4 isTransient];
            if (result)
            {
              goto LABEL_88;
            }

            result = [a4 attributeType];
            if (result == 1800)
            {
              goto LABEL_88;
            }

            v26 = MEMORY[0x1E695DF30];
            v27 = *MEMORY[0x1E695D930];
            v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, [a4 entity], v9);
          }

LABEL_50:
          v33 = v32;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"key", v9, @"value", 0}];
LABEL_51:
          v35 = v34;
          v36 = v26;
          v37 = v27;
          goto LABEL_85;
        }

        v55 = MEMORY[0x1E695DF30];
        v56 = *MEMORY[0x1E695D940];
        v57 = MEMORY[0x1E696AEC0];
        v71 = objc_opt_class();
        v58 = objc_msgSend_stringWithFormat_(v57, a3, @"A class implementing the NSFileBackedFuture protocol", v71, v9);
        goto LABEL_115;
      }

LABEL_58:
      result = [v9 isNSNumber];
      if (result)
      {
        return result;
      }

      goto LABEL_59;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_88;
  }

  v11 = [a4 destinationEntity];
  v13 = _PFFastEntityClass(v11, v12);
  class_getSuperclass(v13);
  result = [a4 isToMany];
  if (!result)
  {
    if (v9)
    {
      v16 = [v9 managedObjectContext];
      v17 = v16;
      if (!a1 || (*(a1 + 16) & 0x80) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a1 + 32);
      }

      if (([v16 _isSwiftBound] & 1) != 0 || (v24 = objc_msgSend(v18, "_isSwiftBound"), v17 == v18) || (v24 & 1) != 0 || objc_msgSend_valueForKey_(a1) == v9)
      {
        isKindOfClass = objc_opt_isKindOfClass();
        if (v11)
        {
          if (isKindOfClass)
          {
            result = [v11 _subentitiesIncludes:_PFEntityForManagedObject(v9)];
            if (result)
            {
              goto LABEL_88;
            }
          }
        }

        v26 = MEMORY[0x1E695DF30];
        v27 = *MEMORY[0x1E695D940];
        v28 = MEMORY[0x1E696AEC0];
        v29 = [a4 destinationEntity];
        [(NSEntityDescription *)v29 _entityClass];
        v31 = objc_opt_class();
        v70 = objc_opt_class();
        v32 = objc_msgSend_stringWithFormat_(v28, a3, v31, v70, v9);
        goto LABEL_50;
      }

      v55 = MEMORY[0x1E695DF30];
      v56 = *MEMORY[0x1E695D940];
      v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, a1, v9);
LABEL_115:
      v69 = v58;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"key", v9, @"value", 0}];
      v36 = v55;
      v37 = v56;
      v54 = v69;
      goto LABEL_86;
    }

    goto LABEL_24;
  }

  if ([a4 isOrdered])
  {
    v14 = objc_opt_class();
    v74 = objc_opt_class();
    if ([v9 isNSOrderedSet])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = objc_opt_class();
    v74 = objc_opt_class();
    if ([v9 isNSSet])
    {
LABEL_17:
      v15 = 1;
      if (!v9)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }
  }

  v15 = [v9 count] == 0;
  if (!v9)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (!v15)
  {
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v62 = MEMORY[0x1E696AEC0];
    v40 = a3;
    if ([a4 isOrdered])
    {
      v63 = @"ordered to-many";
    }

    else
    {
      v63 = @"to-many";
    }

    v64 = objc_opt_class();
    v65 = objc_msgSend_stringWithFormat_(v62, v63, v40, v14, v64, v9);
LABEL_111:
    v33 = v65;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v40, @"key", v9, @"value", 0}];
    goto LABEL_51;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([v9 source] == a1)
    {
      result = [v9 relationship];
      if (result == a4)
      {
        goto LABEL_88;
      }
    }
  }

  v19 = [v9 count];
  if (!v19)
  {
LABEL_40:
    v8 = [[v74 alloc] initWithSource:a1 forRelationship:a4 asFault:0];
    goto LABEL_41;
  }

  v20 = v19;
  v72 = &v72;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v73 = a3;
  if (v21 > 0x200)
  {
    v23 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v72 - v22, 8 * v21);
  }

  [v9 getObjects:{v23, v72}];
  for (i = 0; i != v20; ++i)
  {
    v42 = *&v23[8 * i];
    v43 = [v42 managedObjectContext];
    if (!a1 || (*(a1 + 16) & 0x80) != 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = *(a1 + 32);
    }

    if (v43 != v44 && ([objc_msgSend_valueForKey_(a1) containsObject:v42] & 1) == 0)
    {
      v55 = MEMORY[0x1E695DF30];
      v56 = *MEMORY[0x1E695D940];
      a3 = v73;
      v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v73, a1, v42);
      goto LABEL_115;
    }

    v45 = objc_opt_isKindOfClass();
    if (!v11 || !v42 || (v45 & 1) == 0 || ([v11 _subentitiesIncludes:_PFEntityForManagedObject(v42)] & 1) == 0)
    {
      v46 = MEMORY[0x1E695DF30];
      v47 = *MEMORY[0x1E695D940];
      v48 = MEMORY[0x1E696AEC0];
      v49 = [a4 destinationEntity];
      [(NSEntityDescription *)v49 _entityClass];
      v51 = objc_opt_class();
      v52 = objc_opt_class();
      v53 = v73;
      v33 = objc_msgSend_stringWithFormat_(v48, v73, v9, v51, v52, v42);
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v53, @"key", v9, @"value", 0}];
      v36 = v46;
      v37 = v47;
LABEL_85:
      v54 = v33;
LABEL_86:
      objc_exception_throw([v36 exceptionWithName:v37 reason:v54 userInfo:v35]);
    }
  }

  v8 = [[v74 alloc] initWithSource:a1 forRelationship:a4 asFault:0];
  if ([a4 isOrdered])
  {
    [v8 addObjects:v23 count:v20];
  }

  else
  {
    [v8 setSet:v9];
  }

  if (v20 >= 0x201)
  {
    NSZoneFree(0, v23);
  }

LABEL_41:
  result = v8;
LABEL_88:
  *a2 = v8;
  return result;
}

void _PF_CopyOnWrite_Snapshot(void *a1)
{
  v2 = a1[3];
  if (!v2)
  {
    v3 = _PFEntityForManagedObject(a1);
    v4 = _PFCDSnapshotClassForEntity(v3);
    if (v4)
    {
      v5 = [(_CDSnapshot *)[v4 alloc] initWithObjectID:?];
      snapshot_initialize_all_null(v5);
      *(v5 + 3) = *(a1 + 3);
      a1[3] = v5;
      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v7 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          *buf = 0;
          v10 = buf;
          goto LABEL_15;
        }
      }

      else if (v9)
      {
        v12 = 0;
        v10 = &v12;
LABEL_15:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Snapshot class was nil\n", v10, 2u);
      }
    }

    _NSCoreDataLog_console(1, "Snapshot class was nil");
    objc_autoreleasePoolPop(v6);
    __break(1u);
    return;
  }

  if (v2[24])
  {
    v11 = v2;
    a1[3] = [v2 mutableCopy];
  }
}

void *snapshot_set_value_as_object(id *a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    v20 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v21 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v23 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v23)
        {
          *buf = 0;
          v24 = buf;
          goto LABEL_43;
        }
      }

      else if (v23)
      {
        v26 = 0;
        v24 = &v26;
LABEL_43:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: warning snapshot_set_value_as_object called on NULL\n", v24, 2u);
      }
    }

    _NSCoreDataLog_console(1, "warning snapshot_set_value_as_object called on NULL");
    objc_autoreleasePoolPop(v20);
    __break(1u);
    return MEMORY[0x1EEE66BB8](result, v12);
  }

  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  v7 = a1 + (a2 >> 3);
  v8 = 1 << (a2 & 7);
  v9 = v7[28];
  v10 = v9 & ~v8;
  v11 = v9 | v8;
  v12 = a3;
  if (a3)
  {
    v11 = v10;
  }

  v7[28] = v11;
  v13 = *(result + a2 + 19);
  v14 = *(result[7] + a2);
  if (v14 <= 3)
  {
    switch(v14)
    {
      case 1u:
        result = [a3 charValue];
        v12 = a3;
        *(a1 + v13) = result;
        goto LABEL_33;
      case 2u:
        result = [a3 shortValue];
        v12 = a3;
        *(a1 + v13) = result;
        goto LABEL_33;
      case 3u:
        result = [a3 intValue];
        v12 = a3;
        *(a1 + v13) = result;
        goto LABEL_33;
    }

    goto LABEL_20;
  }

  if (*(result[7] + a2) > 5u)
  {
    if (v14 == 6)
    {
      if (a3)
      {
        result = [a3 floatValue];
        v12 = a3;
      }

      else
      {
        v18 = 0;
      }

      *(a1 + v13) = v18;
      goto LABEL_33;
    }

    if (v14 == 8)
    {
      v16 = *(a1 + v13);
      if (v16)
      {
        result = [(PFFaultingTransformedValue *)v16 setValue:a3];
        v12 = a3;
      }

      else
      {
        v19 = *(*([a1[2] entity] + 96) + 24 + 8 * a2);
        objc_opt_self();
        result = [[PFFaultingTransformedValue_Decoded alloc] initWithStorage:a3 attribute:v19];
        v12 = a3;
        *(a1 + v13) = result;
      }

      goto LABEL_33;
    }

LABEL_20:
    v17 = *(a1 + v13);
    *(a1 + v13) = a3;
    v12 = v17;
    if (v17)
    {
      goto LABEL_34;
    }

    return result;
  }

  if (v14 == 4)
  {
    result = [a3 longLongValue];
    v12 = a3;
    *(a1 + v13) = result;
    goto LABEL_33;
  }

  if (v14 != 5)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    if ([a3 isNSNumber])
    {
      result = [a3 doubleValue];
    }

    else
    {
      result = [a3 timeIntervalSinceReferenceDate];
    }

    v12 = a3;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + v13) = v15;
LABEL_33:
  if (v12)
  {
LABEL_34:

    return MEMORY[0x1EEE66BB8](result, v12);
  }

  return result;
}

unsigned int *snapshot_set_object(id *a1, unsigned int a2, unsigned int *a3)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  *(a1 + (a2 >> 3) + 28) &= ~(1 << (a2 & 7));
  v8 = result[a2 + 19];
  v9 = *(a1 + v8);
  if (*(*(result + 7) + a2) == 8)
  {
    v14 = *(a1 + v8);
    result = object_getClass(a3);
    if (result != PFFaultingTransformedValue_Decoded && result != PFFaultingTransformedValue_Encoded && result != PFFaultingTransformedValue_Decoded_Dirty)
    {
      v12 = *(*([a1[2] entity] + 96) + 24 + 8 * a2);
      v13 = a3;
      objc_opt_self();
      result = [[PFFaultingTransformedValue_Decoded alloc] initWithStorage:v13 attribute:v12];
      a3 = result;
    }

    v9 = v14;
  }

  *(a1 + v8) = a3;
  if (v9)
  {

    return MEMORY[0x1EEE66BB8](result, v9);
  }

  return result;
}

const void *_sqlEntityForEntityID(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) >= a2)
  {
    return CFArrayGetValueAtIndex(*(a1 + 32), ~*(a1 + 60) + a2);
  }

  else
  {
    return 0;
  }
}

id snapshot_get_object(id *a1, unsigned int a2)
{
  Class = object_getClass(a1);
  v5 = *(object_getIndexedIvars(Class) + a2 + 19);
  v6 = object_getClass(*(a1 + v5));
  if (v6 != PFFaultingTransformedValue_Decoded && v6 != PFFaultingTransformedValue_Encoded && v6 != PFFaultingTransformedValue_Decoded_Dirty)
  {
    return *(a1 + v5);
  }

  v9 = [objc_msgSend(a1[2] "persistentStore")];
  v10 = *(a1 + v5);
  v11 = [v9 codableAdapterRegistry];

  return [(PFFaultingTransformedValue *)v10 valueWithRegistry:v11];
}

void PF_FREE_OBJECT_ARRAY(void *ptr)
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  malloc_zone_free(v2, ptr);
}

_DWORD *fetchResultSetAllocateInitialize(unsigned int a1, int a2)
{
  if (a1 >= 0x20000)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = a1;
  }

  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 15359;
  }

  v5 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v5 = malloc_default_zone();
  }

  v6 = malloc_type_zone_calloc(v5, 1uLL, 0x60uLL, 0x10800407186F754uLL);
  v6[4] = v4;
  v6[5] = 1;
  v7 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v7 = malloc_default_zone();
  }

  v8 = malloc_type_zone_malloc(v7, 0x10uLL, 0x80040B8603338uLL);
  *(v6 + 8) = v8;
  v8[1] = 0;
  v9 = _PF_Private_Malloc_Zone;
  if (a2)
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v9 = malloc_default_zone();
    }

    v10 = malloc_type_zone_calloc(v9, 1uLL, v4, 0x1DE6F454uLL);
  }

  else
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v9 = malloc_default_zone();
    }

    v10 = malloc_type_zone_malloc(v9, v4, 0xABEB63D1uLL);
  }

  *(v6 + 10) = v10;
  **(v6 + 8) = v10;
  *(v6 + 11) = *(v6 + 10);
  v6[6] = 0;
  *(v6 + 4) = 0;
  v11 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v11 = malloc_default_zone();
  }

  v12 = malloc_type_zone_malloc(v11, 0x10uLL, 0x100004000313F17uLL);
  *(v6 + 9) = v12;
  *v12 = v4;
  v12[1] = 0;
  v13 = *(v6 + 8);
  *(v6 + 11) = *v13;
  v14 = (v13[v6[6]] + *(v6 + 4));
  *v14 = 0u;
  v14[1] = 0u;
  v6[7] = -1;
  *v14 = -1;
  if (a2)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v6[12] = v6[12] & 0xFFFFFFFB | v15;
  return v6;
}

void *fetchResultSetPrepareNextRow(void *result)
{
  v1 = result;
  v2 = *(result + 6);
  v3 = result[4];
  v4 = result[8];
  v5 = v4[v2] + v3;
  if ((*v5 & 0x80000000) != 0)
  {
    if ((*(result + 7) & 0x80000000) != 0)
    {
      goto LABEL_5;
    }

    *(v5 + 4) = v2;
    *(v5 + 16) = v3;
  }

  *(result + 7) = v2;
  result[5] = v3;
LABEL_5:
  v6 = result[10];
  v7 = ((result[11] + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*(result + 4) + v6 - v7 <= 31)
  {
    v8 = *(result + 5);
    *(result + 4) = 15359;
    *(result + 5) = v8 + 1;
    v9 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v9 = malloc_default_zone();
      v4 = v1[8];
    }

    v10 = malloc_type_zone_realloc(v9, v4, 8 * (v8 + 2), 0x80040B8603338uLL);
    v1[8] = v10;
    v10[v8 + 1] = 0;
    v11 = _PF_Private_Malloc_Zone;
    if ((v1[6] & 4) != 0)
    {
      if (!_PF_Private_Malloc_Zone)
      {
        v11 = malloc_default_zone();
      }

      v12 = malloc_type_zone_calloc(v11, 1uLL, 0x3BFFuLL, 0x9F2C2B17uLL);
    }

    else
    {
      if (!_PF_Private_Malloc_Zone)
      {
        v11 = malloc_default_zone();
      }

      v12 = malloc_type_zone_malloc(v11, 0x3BFFuLL, 0x7AE6AA9DuLL);
    }

    v1[10] = v12;
    *(v1[8] + 8 * v8) = v12;
    v7 = v1[10];
    v1[11] = v7;
    v13 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v13 = malloc_default_zone();
    }

    result = malloc_type_zone_realloc(v13, v1[9], 8 * (v8 + 2), 0x100004000313F17uLL);
    v1[9] = result;
    result[v8] = 15359;
    *(v1 + 6) = v8;
    v6 = v1[10];
  }

  v1[4] = v7 - v6;
  *v7 = 0u;
  v7[1] = 0u;
  v14 = *(v1 + 6);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v1[8] + 8 * v14) + v1[4];
  }

  v16 = *v1;
  *v15 = *v1;
  *(v15 + 4) = -1;
  *(v15 + 16) = 0;
  *v1 = v16 + 1;
  v1[11] = v15 + 32;
  return result;
}

unint64_t _sql_fetch_plan_for_entity(unint64_t *a1)
{
  v1 = a1;
  v36[5] = *MEMORY[0x1E69E9840];
  if (!atomic_load(a1 + 28))
  {
    v3 = [a1 foreignKeyColumns];
    v4 = [v1 foreignEntityKeyColumns];
    v5 = [v1 foreignOrderKeyColumns];
    v6 = [v1 attributeColumns];
    v32 = v1;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObject:v1[18]];
    v8 = [v3 count];
    v9 = [v4 count];
    v10 = [v5 count];
    v11 = v9 + v8 + v10 + [v6 count];
    v12 = v11 + 1;
    v13 = (24 * v11 + 32);
    v14 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v14 = malloc_default_zone();
    }

    v15 = malloc_type_zone_malloc(v14, v13, 0xB7E42E29uLL);
    v16 = 0;
    v15[1] = v12;
    v31 = v15;
    v17 = (v15 + 2);
    v36[0] = v7;
    v36[1] = v3;
    v36[2] = v4;
    v36[3] = v5;
    v18 = 32;
    v36[4] = v6;
    do
    {
      v33 = v16;
      v35 = v36[v16];
      v19 = [v35 count];
      v34 = v19;
      if (v19)
      {
        v20 = 0;
        do
        {
          v21 = [v35 objectAtIndex:v20];
          v22 = [v21 slot];
          if (v21)
          {
            v23 = v21[13];
          }

          else
          {
            v23 = 0;
          }

          v24 = [v21 sqlType];
          v25 = [v21 propertyType];
          v26 = v25;
          if (v25 == 1)
          {
            v27 = [objc_msgSend(v21 "propertyDescription")];
            if (v27)
            {
              v18 += 4;
            }
          }

          else
          {
            v27 = 0;
          }

          v28 = [(NSSQLColumn *)v21 roughSizeEstimate];
          if (v21)
          {
            CFRetain(v21);
          }

          v18 += v28;
          *v17 = v22;
          *(v17 + 1) = v23;
          *(v17 + 2) = v27;
          v17[12] = v24;
          v17[13] = v26;
          *(v17 + 7) = 0;
          *(v17 + 2) = v21;
          v17 += 24;
          ++v20;
        }

        while (v34 != v20);
      }

      v16 = v33 + 1;
    }

    while (v33 != 4);
    v29 = 0;
    v1 = v32;
    *v31 = v18;
    atomic_compare_exchange_strong(v32 + 28, &v29, v31);
    if (v29)
    {
      _deallocateFetchEntityPlan(v31);
    }
  }

  return atomic_load(v1 + 28);
}

uint64_t _prepareResultsFromResultSet(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v217[1] = *MEMORY[0x1E69E9840];
  v180 = a2;
  if (a3)
  {
    v5 = *(a3 + 136);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 4) <= 0x40000000u)
  {
    v6 = *(a1 + 4);
  }

  else
  {
    v6 = 0;
  }

  v7 = PF_ALLOCATE_OBJECT_ARRAY(v6);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v189 = a1;
  if (v3)
  {
    v9 = *(v3 + 112);
    v188 = *(v5 + 56);
    v185 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = *(v3 + 32);
    if (v10)
    {
      v203 = *(v10 + 42) >> 7;
    }

    else
    {
      v203 = 0;
    }

    v11 = *(v5 + 72);
    v12 = (v11 >> 2) & 7;
    v13 = *(a1 + 64);
    v208 = (a1 + 64);
    v14 = *v13;
    if (v12 == 3)
    {
      v190 = *(v3 + 128);
      v201 = 1;
    }

    else
    {
      v201 = 0;
      v190 = 0;
    }
  }

  else
  {
    v188 = *(v5 + 56);
    v185 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = 0;
    v9 = 0;
    v203 = 0;
    v190 = 0;
    v11 = *(v5 + 72);
    v12 = (v11 >> 2) & 7;
    v201 = v12 == 3;
    v171 = *(a1 + 64);
    v208 = (a1 + 64);
    v14 = *v171;
  }

  i = v5;
  v15 = [*(v5 + 8) _disablePersistentStoreResultCaching];
  v202 = v15;
  v212 = v11;
  v16 = v8;
  if (v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = v8;
  }

  MEMORY[0x1EEE9AC00](v15);
  v20 = &v175[-v19];
  v21 = v10;
  if (v17 > 0x200)
  {
    v22 = NSAllocateScannedUncollectable();
    v20 = v22;
  }

  else
  {
    bzero(&v175[-v19], 8 * v18);
  }

  MEMORY[0x1EEE9AC00](v22);
  v25 = &v175[-v24];
  v186 = v26;
  if (v26 > 0x200)
  {
    v27 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v175[-v24], 8 * v23);
    v27 = v25;
  }

  if (v20)
  {
    v28 = v27 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v21;
  v206 = v27;
  if (v28)
  {
    PF_FREE_OBJECT_ARRAY(v7);
    v7 = 0;
    v30 = 0;
  }

  else
  {
    v30 = v16;
  }

  v31 = i;
  v187 = v17;
  v184 = sel_setForeignEntityKeySlot_entityKey_;
  v183 = [NSSQLRow instanceMethodForSelector:?];
  v194 = sel_setForeignKeySlot_int64_;
  v193 = [NSSQLRow instanceMethodForSelector:?];
  v182 = sel_setForeignOrderKeySlot_orderKey_;
  v181 = [NSSQLRow instanceMethodForSelector:?];
  v192 = sel_setOptLock_;
  v191 = [NSSQLRow instanceMethodForSelector:?];
  if (v3)
  {
    v32 = [*(v3 + 8) objectIDFactoryForSQLEntity:*(v31 + 40)];
  }

  else
  {
    v32 = 0;
  }

  if ((v212 & 1) == 0)
  {
    v33 = v30;
    v34 = v29;
    v35 = v32;
    v36 = v33;
    if (v33 == [v32 allocateBatch:v20 count:v33])
    {
      v33 = v33;
    }

    else
    {
      v33 = 0;
    }

    if ((v212 & 2) != 0 || !v33)
    {
      v32 = v35;
      v29 = v34;
      v30 = v36;
      if (!v33)
      {
        PF_FREE_OBJECT_ARRAY(v7);
        v30 = 0;
        v7 = 0;
        v176 = 0;
        goto LABEL_238;
      }
    }

    else
    {
      v28 = v33 == [NSSQLRow newBatchRowAllocation:v206 count:v33 forSQLEntity:*(i + 40) withOwnedObjectIDs:v20 andTimestamp:*(v189 + 8)];
      v32 = v35;
      v29 = v34;
      v30 = v36;
      if (!v28)
      {
        PF_FREE_OBJECT_ARRAY(v7);
        v7 = 0;
        v30 = 0;
        v176 = 0;
        goto LABEL_239;
      }
    }
  }

  v210 = v32;
  v176 = v30 > 0;
  if (v30 >= 1)
  {
    v37 = 0;
    v178 = 0;
    v177 = 0;
    v179 = 0;
    v38 = 0;
    v204 = v30;
    v199 = v29;
    v200 = v7;
    v198 = v30;
    v205 = v3;
    v197 = v12;
    v196 = v9;
    v195 = v20;
    while (1)
    {
        ;
      }

      v213 = _sqlEntityForEntityID(v9, *(v14 + 8));
      v39 = v210;
      if (v213 != v38)
      {
        v39 = 0;
      }

      if (v3 && v213 != v38)
      {
        v39 = [*(v3 + 8) objectIDFactoryForSQLEntity:v213];
      }

      v40 = v212;
      v210 = v39;
      if (v212)
      {
        v44 = [[v39 alloc] initWithPK64:*(v14 + 24)];
        if ((v40 & 2) != 0)
        {
          v46 = i;
          goto LABEL_210;
        }

        v48 = v213;
        v49 = v44;
        v50 = [NSSQLRow allocForSQLEntity:v213];
        v51 = *(v189 + 8);
        v207 = v49;
        v52 = [v50 initWithSQLEntity:v48 ownedObjectID:v49 andTimestamp:v51];
        v206[i] = v52;
      }

      else
      {
        v41 = i;
        v42 = *&v20[8 * i];
        v43 = _PFSetPrimaryKey(v42, *(v14 + 24));
        v44 = v42;
        if (v42 == v43)
        {
          v46 = v41;
          if ((v212 & 2) != 0)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v45 = v43;

          *&v20[8 * v41] = v45;
          v46 = v41;
          if ((v212 & 2) != 0)
          {
            v44 = v45;
LABEL_210:
            if ((v12 - 1) < 2)
            {
              goto LABEL_233;
            }

            if (!v12 || v12 == 3)
            {
              v152 = v44;
              v153 = [NSManagedObjectContext _retainedObjectWithID:v29 optionalHandler:v44 withInlineStorage:v190];

              v46 = i;
              v44 = v153;
              goto LABEL_233;
            }

LABEL_223:
            v44 = 0;
            goto LABEL_233;
          }

          v47 = atomic_load(v206[v41] + 5);
          *(v47 + 16) = v45;
          v44 = v45;
        }

        v207 = v44;
        v52 = v206[v46];
        v48 = v213;
      }

      v211 = v52;
      v53 = atomic_load(v52 + 5);
      plan_for_entity = _sql_fetch_plan_for_entity(v48);
      v55 = *(plan_for_entity + 4);
      if (v55)
      {
        v56 = (v14 + 32);
        v209 = v53 + 28;
        v57 = (plan_for_entity + 24);
        do
        {
          v58 = *(v57 - 4);
          if ((v58 - 2) > 6)
          {
            v59 = 3;
          }

          else
          {
            v59 = qword_18592E790[(v58 - 2)];
          }

          v60 = ((v56 + v59) & ~v59);
          if (*(v57 - 1))
          {
            v62 = *v60;
            v60 = (v60 + 1);
            v61 = v62 != 0;
          }

          else
          {
            v61 = 0;
          }

          v63 = (v57 - 2);
          v64 = ~v59;
          if (*(v57 - 4) <= 6u)
          {
            if ((v58 - 4) < 3)
            {
              goto LABEL_109;
            }

            if ((v58 - 2) >= 2)
            {
              if (v58 != 1)
              {
                goto LABEL_118;
              }

              v85 = ((v60 + v59) & v64);
              v76 = v85 + 1;
              if (v61)
              {
                v56 = v60;
              }

              else
              {
                v56 = v85 + 1;
              }

              v86 = *(v57 - 3);
              switch(v86)
              {
                case 10:
                  if (v61)
                  {
                    v117 = 0;
                  }

                  else
                  {
                    v117 = *v85;
                  }

                  v122 = *v63;
                  v123 = v211;
                  v124 = v182;
                  v125 = &v215;
                  goto LABEL_165;
                case 4:
                  if (v61)
                  {
                    v117 = 0;
                  }

                  else
                  {
                    v117 = *v85;
                  }

                  v122 = *v63;
                  v123 = v211;
                  v124 = v184;
                  v125 = v217;
LABEL_165:
                  (*(v125 - 32))(v123, v124, v122, v117);
                  break;
                case 1:
                  v78 = [objc_msgSend(*v57 "propertyDescription")];
                  if (!v61)
                  {
                    if (v78)
                    {
                      v80 = [MEMORY[0x1E696AD98] numberWithInt:*v85];
LABEL_107:
                      setMultiColumnValueDictionary(v53, (v57 - 2), v80);
                    }

                    else
                    {
                      type = snapshot_get_type(v53, *v63);
                      v141 = *v63;
                      v142 = *v85;
                      if (type == 115)
                      {
                        Class = object_getClass(v53);
                        IndexedIvars = object_getIndexedIvars(Class);
                        v209[v141 >> 3] &= ~(1 << (v141 & 7));
                        *(v53 + IndexedIvars[v141 + 19]) = v142;
                      }

                      else if (type == 99)
                      {
                        v143 = object_getClass(v53);
                        v144 = object_getIndexedIvars(v143);
                        v209[v141 >> 3] &= ~(1 << (v141 & 7));
                        *(v53 + v144[v141 + 19]) = v142;
                      }

                      else
                      {
                        v149 = object_getClass(v53);
                        v150 = object_getIndexedIvars(v149);
                        v209[v141 >> 3] &= ~(1 << (v141 & 7));
                        *(v53 + v150[v141 + 19]) = v142;
                      }
                    }

                    goto LABEL_178;
                  }

LABEL_111:
                  if (v78)
                  {
                    setMultiColumnValueNullFlag(v53, v57 - 4);
                  }

                  else
                  {
                    v209[*v63 >> 3] |= 1 << (*v63 & 7);
                  }

LABEL_117:
                  v56 = v60;
                  break;
              }
            }

            else
            {
              v75 = ((v60 + v59) & v64);
              v76 = (v75 + 1);
              if (v61)
              {
                v56 = v60;
              }

              else
              {
                v56 = (v75 + 1);
              }

              v77 = *(v57 - 3);
              switch(v77)
              {
                case 6:
                  if (v61)
                  {
                    v108 = 0;
                  }

                  else
                  {
                    v108 = *v75;
                  }

                  v191(v211, v192, v108);
                  break;
                case 3:
                  if (v61)
                  {
                    v107 = 0;
                  }

                  else
                  {
                    v107 = *v75;
                  }

                  v193(v211, v194, *v63, v107);
                  break;
                case 1:
                  v78 = [objc_msgSend(*v57 "propertyDescription")];
                  if (!v61)
                  {
                    v79 = *v75;
                    if (v78)
                    {
                      v80 = [MEMORY[0x1E696AD98] numberWithLongLong:*v75];
                      goto LABEL_107;
                    }

                    v133 = *v63;
                    v134 = object_getClass(v53);
                    v135 = object_getIndexedIvars(v134);
                    v209[v133 >> 3] &= ~(1 << (v133 & 7));
                    *(v53 + v135[v133 + 19]) = v79;
LABEL_178:
                    v56 = v76;
                    break;
                  }

                  goto LABEL_111;
              }
            }
          }

          else
          {
            if (*(v57 - 4) > 0xBu)
            {
              if ((v58 - 13) < 2)
              {
                goto LABEL_117;
              }

              if (v58 == 12)
              {
LABEL_109:
                if (!v61)
                {
                  v87 = ((v60 + v59) & v64);
                  v88 = (v87 + 4);
                  v89 = CFStringCreateWithCString(0, v87 + 4, 0x8000100u);
                  v90 = *v87;
                  v91 = *(v57 - 4);
                  if (v91 == 12)
                  {
                    v92 = [MEMORY[0x1E695DFF8] URLWithString:v89];
LABEL_129:
                    v103 = v92;
                    CFRelease(v89);
                    v89 = v103;
                  }

                  else if (v91 == 4)
                  {
                    v92 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v89];
                    goto LABEL_129;
                  }

                  v56 = (v88 + v90);
                  if ([objc_msgSend(*v57 "propertyDescription")])
                  {
                    goto LABEL_153;
                  }

                  v104 = *v63;
                  v105 = v53;
                  v106 = v89;
                  goto LABEL_132;
                }
              }

              else
              {
                if (v58 != 16)
                {
                  goto LABEL_118;
                }

                v65 = [*v57 propertyDescription];
                if (v203)
                {
                  if (![v65 _isFileBackedFuture])
                  {
                    goto LABEL_118;
                  }
                }

                if (!v61)
                {
                  v66 = ((v60 + v59) & v64);
                  v68 = (v66 + 4);
                  v67 = *(v66 + 4);
                  if (v67 != 3)
                  {
                    if (v67 == 1)
                    {
                      v69 = [_PFExternalReferenceData alloc];
                      if (v205)
                      {
                        v70 = *(v205 + 184);
                      }

                      else
                      {
                        v70 = 0;
                      }

                      v71 = *v66;
                      v72 = (v66 + 4);
                      v73 = 0;
                      v74 = 0;
                      goto LABEL_188;
                    }

                    v126 = strnlen(v66 + 5, *v66 - 1);
                    v127 = [v185 stringWithFileSystemRepresentation:v66 + 5 length:v126];
                    v128 = v178;
                    if (v178)
                    {
                      if (!v205)
                      {
                        goto LABEL_168;
                      }

LABEL_182:
                      v129 = v177;
                      if (!v177)
                      {
                        v129 = *(v205 + 96);
                      }
                    }

                    else
                    {
                      if (v205)
                      {
                        v128 = *(v205 + 88);
                        goto LABEL_182;
                      }

                      v128 = 0;
LABEL_168:
                      v129 = v177;
                    }

                    v178 = v128;
                    v136 = [v128 stringByAppendingPathComponent:v127];
                    v177 = v129;
                    v137 = [v129 stringByAppendingPathComponent:v127];
                    if ([v185 fileExistsAtPath:v136])
                    {
                      v69 = [_PFExternalReferenceData alloc];
                      if (v205)
                      {
                        v70 = *(v205 + 184);
                      }

                      else
                      {
                        v70 = 0;
                      }

                      v71 = *v66;
                      v72 = (v66 + 4);
                      v73 = v136;
                      v74 = v137;
LABEL_188:
                      v138 = [(_PFExternalReferenceData *)v69 initWithStoreBytes:v72 length:v71 externalLocation:v73 safeguardLocation:v74 protectionLevel:v70];
LABEL_195:
                      v139 = v138;
                    }

                    else
                    {
                      v139 = 0;
                    }

                    v56 = (v68 + *v66);
                    if ([objc_msgSend(*v57 "propertyDescription")])
                    {
                      setMultiColumnValueDictionary(v53, (v57 - 2), v139);

                      goto LABEL_154;
                    }

                    v104 = *v63;
                    v105 = v53;
                    v106 = v139;
                    goto LABEL_132;
                  }

                  if (v205)
                  {
                    v121 = v179;
                    if (!v179)
                    {
                      v121 = *(v205 + 104);
                    }
                  }

                  else
                  {
                    v121 = v179;
                  }

                  v145 = [MEMORY[0x1E695DEF0] dataWithBytes:v68 length:*v66];
                  v146 = [_NSDataFileBackedFuture alloc];
                  v179 = v121;
                  v138 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v146, "initWithStoreMetadata:directory:", v145, [MEMORY[0x1E695DFF8] fileURLWithPath:v121 isDirectory:1]);
                  goto LABEL_195;
                }
              }

              goto LABEL_110;
            }

            if ((v58 - 7) >= 2)
            {
              if (v58 == 9)
              {
                goto LABEL_109;
              }

LABEL_118:
              if (!v61)
              {
                v93 = ((v60 + v59) & v64);
                v94 = (v93 + 4);
                v95 = CFDataCreate(0, v93 + 4, *v93);
                v96 = v95;
                v97 = *v93;
                v98 = *(v57 - 4);
                if (v98 == 11)
                {
                  if ([(__CFData *)v95 length]== 16)
                  {
                    v102 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[__CFData bytes](v96, "bytes")}];
                    goto LABEL_171;
                  }

                  v96 = 0;
                }

                else if (v98 == 18 || v98 == 15)
                {
                  v99 = [*v57 propertyDescription];
                  if ([v99 superCompositeAttribute])
                  {
                    if (*(v57 - 4) == 18)
                    {
                      if (v205)
                      {
                        v100 = *(v205 + 32);
                      }

                      else
                      {
                        v100 = 0;
                      }

                      v101 = [objc_msgSend(v100 "persistentStoreCoordinator")];
                      v215 = 0;
                      v102 = [v99 decode:v96 withRegistry:v101 error:&v215];
                      if (!v102)
                      {
                        v172 = MEMORY[0x1E695DF30];
                        v173 = *MEMORY[0x1E695D940];
                        v174 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v99, v215);
                        v216 = *MEMORY[0x1E696AA08];
                        v217[0] = v215;
                        objc_exception_throw([v172 exceptionWithName:v173 reason:v174 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v217, &v216, 1)}]);
                      }
                    }

                    else
                    {
                      v102 = [_PFRoutines retainedDecodeValue:v96 forTransformableAttribute:v99];
                    }
                  }

                  else
                  {
                    v102 = [PFFaultingTransformedValue transformedValueWithData:v96 forAttribute:v99];
                  }

LABEL_171:
                  v130 = v102;
                  CFRelease(v96);
                  v96 = v130;
                }

                v56 = (v94 + v97);
                if ([objc_msgSend(*v57 "propertyDescription")])
                {
                  setMultiColumnValueDictionary(v53, (v57 - 2), v96);

                  goto LABEL_154;
                }

                v104 = *v63;
                v105 = v53;
                v106 = v96;
LABEL_132:
                snapshot_set_object(v105, v104, v106);
                goto LABEL_154;
              }

LABEL_110:
              v78 = [objc_msgSend(*v57 "propertyDescription")];
              goto LABEL_111;
            }

            if (v61)
            {
              goto LABEL_110;
            }

            v81 = ((v60 + v59) & v64);
            v56 = (v81 + 1);
            v82 = [objc_msgSend(*v57 "propertyDescription")];
            v83 = *(v57 - 4);
            if (v82)
            {
              if (v83 == 7)
              {
                if (snapshot_get_type(v53, *v63) == 102)
                {
                  v84 = kCFNumberFloatType;
                }

                else
                {
                  v84 = kCFNumberDoubleType;
                }

                v116 = CFNumberCreate(0, v84, v81);
              }

              else
              {
                v116 = CFDateCreate(0, *v81);
              }

              v89 = v116;
LABEL_153:
              setMultiColumnValueDictionary(v53, (v57 - 2), v89);

              goto LABEL_154;
            }

            v109 = *v63;
            if (v83 != 7)
            {
              v112 = *v81;
              v118 = object_getClass(v53);
              v119 = object_getIndexedIvars(v118);
              v209[v109 >> 3] &= ~(1 << (v109 & 7));
              v120 = &v119[4 * v109];
LABEL_176:
              *(v53 + *(v120 + 19)) = v112;
              goto LABEL_154;
            }

            v110 = snapshot_get_type(v53, *v63);
            v111 = *v63;
            v112 = *v81;
            if (v110 != 102)
            {
              v131 = object_getClass(v53);
              v132 = object_getIndexedIvars(v131);
              v209[v111 >> 3] &= ~(1 << (v111 & 7));
              v120 = &v132[4 * v111];
              goto LABEL_176;
            }

            v114 = object_getClass(v53);
            v115 = object_getIndexedIvars(v114);
            v209[v111 >> 3] &= ~(1 << (v111 & 7));
            v113 = v112;
            *(v53 + v115[v111 + 19]) = v113;
          }

LABEL_154:
          v57 += 3;
          --v55;
        }

        while (v55);
      }

      v9 = v196;
      if (v202)
      {
        v12 = v197;
        v29 = v199;
        v7 = v200;
        v30 = v198;
        v20 = v195;
        if (v197 == 2)
        {
          v44 = v211;
          v3 = v205;
LABEL_222:
          v46 = i;
          goto LABEL_233;
        }

        v154 = v211;
        [(atomic_uint *)v211 knownKeyValuesPointer];
        v155 = v53;
        v206[i] = v155;
      }

      else
      {
        v151 = v211;
        [(atomic_uint *)v211 knownKeyValuesPointer];
        [(NSPersistentStoreCache *)v188 registerRow:v151 forObjectID:v207 options:0];
        v29 = v199;
        v7 = v200;
        v30 = v198;
        v12 = v197;
        v20 = v195;
      }

      if (v12 > 1)
      {
        v3 = v205;
        v46 = i;
        if (v12 == 2)
        {
          v44 = v211;
          goto LABEL_233;
        }

        if (v12 != 3)
        {
          goto LABEL_223;
        }
      }

      else
      {
        v3 = v205;
        v46 = i;
        if (v12)
        {
          if (v12 == 1)
          {
            _PFfastOidRetain(0, v207);
            v44 = v207;
            goto LABEL_222;
          }

          goto LABEL_223;
        }
      }

      v156 = [NSManagedObjectContext _retainedObjectWithID:v29 optionalHandler:v207 withInlineStorage:v190];
      v44 = v156;
      if (v202)
      {
        goto LABEL_222;
      }

      v46 = i;
      if (!v156)
      {
        goto LABEL_227;
      }

      v157 = *(v156 + 4);
      if ((v157 & 0x200) == 0)
      {
        break;
      }

      if (!v211)
      {
        goto LABEL_233;
      }

      v158 = v211 + 3;
      if (atomic_fetch_add(v211 + 3, 0) > 0)
      {
        goto LABEL_233;
      }

LABEL_232:
      atomic_fetch_add_explicit(v158, 1u, memory_order_relaxed);
LABEL_233:
      *(v7 + v46) = v44;
      v159 = *(v14 + 4);
      if ((v159 & 0x80000000) == 0)
      {
        v160 = *(*v208 + 8 * v159);
        if (v160)
        {
          v14 = v160 + *(v14 + 16);
          v37 = v46 + 1;
          v38 = v213;
          if (v37 != v204)
          {
            continue;
          }
        }
      }

      goto LABEL_238;
    }

    *(v156 + 4) = v157 | 0x200;
LABEL_227:
    if (!v211)
    {
      goto LABEL_233;
    }

    v158 = v211 + 3;
    goto LABEL_232;
  }

LABEL_238:
  if ((v212 & 2) != 0)
  {
    v165 = v187;
    p_superclass = (&OBJC_METACLASS___NSSQLForeignOrderKey + 8);
    goto LABEL_249;
  }

LABEL_239:
  v161 = v180;
  v162 = !v201;
  if (!v180)
  {
    v162 = 1;
  }

  p_superclass = &OBJC_METACLASS___NSSQLForeignOrderKey.superclass;
  if (v162)
  {
    if (v12 != 2 && v176)
    {
      v166 = v30;
      v167 = v206;
      do
      {
        v168 = *v167++;

        --v166;
      }

      while (v166);
    }
  }

  else
  {
    v164 = [_PFArray alloc];
    *v161 = [(_PFArray *)v164 initWithObjects:v206 count:v30 andFlags:26 andContext:v29];
  }

  v165 = v187;
LABEL_249:
  if (v186 >= 0x201)
  {
    NSZoneFree(0, v206);
  }

  if (v165 >= 0x201)
  {
    NSZoneFree(0, v20);
  }

  if (v12 > 3)
  {
    v169 = 10;
  }

  else
  {
    v169 = dword_18592E780[v12];
  }

  return [objc_alloc((p_superclass + 264)) initWithObjects:v7 count:v30 andFlags:v169 andContext:v29];
}