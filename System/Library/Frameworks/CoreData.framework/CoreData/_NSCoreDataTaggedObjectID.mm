@interface _NSCoreDataTaggedObjectID
+ (Class)classWithStore:(id)store andEntity:(id)entity;
+ (void)initialize;
- (BOOL)_isPersistentStoreAlive;
- (BOOL)isTemporaryID;
- (id)_retainedURIString;
- (id)_storeIdentifier;
- (id)_storeInfo1;
- (id)entity;
- (id)entityName;
- (id)persistentStore;
- (int64_t)_referenceData64;
@end

@implementation _NSCoreDataTaggedObjectID

- (id)persistentStore
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  return atomic_load((_PFTaggedPointersPool + 32 * (((v2 ^ self) >> 4) & 0x1FFFF)));
}

- (BOOL)_isPersistentStoreAlive
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  v3 = atomic_load((_PFTaggedPointersPool + 32 * (((v2 ^ self) >> 4) & 0x1FFFF)));
  return [v3 _isPersistentStoreAlive];
}

- (BOOL)isTemporaryID
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  return ((v2 ^ self) >> 3) & 1;
}

- (id)entity
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  return atomic_load((_PFTaggedPointersPool + 32 * (((v2 ^ self) >> 4) & 0x1FFFF) + 8));
}

- (int64_t)_referenceData64
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = 0x3FFFFFFFFFFLL;
  if ((~v3 & 7) == 0)
  {
    v4 = 0x3FFFFFFFFLL;
  }

  return v4 & (v3 >> 21);
}

- (id)_storeInfo1
{
  if (!_PFTaggedPointersPool)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  v3 = (_PFTaggedPointersPool + 32 * (((v2 ^ self) >> 4) & 0x1FFFF));
  v4 = atomic_load(v3);
  v5 = atomic_load(v3 + 1);
  if (!v4 || v5 == 0)
  {
    return 0;
  }

  else
  {
    return [v4 _storeInfoForEntityDescription:?];
  }
}

- (id)_storeIdentifier
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  return atomic_load((_PFTaggedPointersPool + 32 * (((v2 ^ self) >> 4) & 0x1FFFF) + 16));
}

- (id)entityName
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  return atomic_load((_PFTaggedPointersPool + 32 * (((v2 ^ self) >> 4) & 0x1FFFF) + 24));
}

+ (void)initialize
{
  v32 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  Class = objc_getClass("_NSCoreDataTaggedObjectID");
  if (Class != objc_opt_class())
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v18 = 138413826;
      selfCopy8 = self;
      v20 = 2048;
      selfCopy9 = self;
      v22 = 2112;
      v23 = NSStringFromClass(Class);
      v24 = 2048;
      selfCopy10 = Class;
      v26 = 2048;
      v27 = _PFTaggedPointersPool;
      v28 = 2080;
      ImageName = class_getImageName(self);
      v30 = 2080;
      v31 = class_getImageName(Class);
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failure to initialize tagged pointers (classes don't match): %@:%p:%@:%p - %p\n%s\n%s\n", &v18, 0x48u);
    }

    v7 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v8 = NSStringFromClass(Class);
    v9 = _PFTaggedPointersPool;
    v10 = class_getImageName(self);
    v11 = class_getImageName(Class);
    v18 = 138413826;
    selfCopy8 = self;
    v20 = 2048;
    selfCopy9 = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2048;
    selfCopy10 = Class;
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    ImageName = v10;
    v30 = 2080;
    v31 = v11;
    v12 = "CoreData: Failure to initialize tagged pointers (classes don't match): %@:%p:%@:%p - %p\n%s\n%s";
    goto LABEL_16;
  }

  if (*MEMORY[0x1E69E5908] && Class == self && !_PFTaggedPointersPool)
  {
    v4 = MEMORY[0x1E69E9AC8];
    v5 = ((*MEMORY[0x1E69E9AB8] + 0x400000) & ~*MEMORY[0x1E69E9AB8]) + *MEMORY[0x1E69E9AC8];
    _PFTaggedPointersPool = mmap(0, v5, 3, 4098, 771751936, 0);
    mprotect((v5 + _PFTaggedPointersPool - *v4), *v4, 0);
    *algn_1ED4BE978 = Class;
    _objc_registerTaggedPointerClass();
    qword_1ED4BE980 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    dword_1ED4BE974 = 0;
    if (_PFTaggedPointersPool)
    {
      __dmb(0xBu);
      return;
    }

    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 138413826;
      selfCopy8 = self;
      v20 = 2048;
      selfCopy9 = self;
      v22 = 2112;
      v23 = NSStringFromClass(Class);
      v24 = 2048;
      selfCopy10 = self;
      v26 = 2048;
      v27 = _PFTaggedPointersPool;
      v28 = 2080;
      ImageName = class_getImageName(self);
      v30 = 2080;
      v31 = class_getImageName(Class);
      _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: Failure to initialize tagged pointers (pool is NULL after initialization attempt): %@:%p:%@:%p - %p\n%s\n%s\n", &v18, 0x48u);
    }

    v7 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
LABEL_17:
      __break(1u);
      return;
    }

    v14 = NSStringFromClass(Class);
    v15 = _PFTaggedPointersPool;
    v16 = class_getImageName(self);
    v17 = class_getImageName(Class);
    v18 = 138413826;
    selfCopy8 = self;
    v20 = 2048;
    selfCopy9 = self;
    v22 = 2112;
    v23 = v14;
    v24 = 2048;
    selfCopy10 = self;
    v26 = 2048;
    v27 = v15;
    v28 = 2080;
    ImageName = v16;
    v30 = 2080;
    v31 = v17;
    v12 = "CoreData: Failure to initialize tagged pointers (pool is NULL after initialization attempt): %@:%p:%@:%p - %p\n%s\n%s";
LABEL_16:
    _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, v12, &v18, 0x48u);
    goto LABEL_17;
  }
}

- (id)_retainedURIString
{
  _storeIdentifier = [(_NSCoreDataTaggedObjectID *)self _storeIdentifier];
  if (_storeIdentifier)
  {
    v4 = _storeIdentifier;
  }

  else
  {
    v4 = &stru_1EF3F1768;
  }

  v5 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v5 = 0;
  }

  v6 = v5 ^ self;
  v7 = v6 >> 21;
  if ((v6 & 8) != 0)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    entityName = [(_NSCoreDataTaggedObjectID *)self entityName];
    return [v11 initWithFormat:@"%@://%@/%@/t%@%d", @"x-coredata", v4, entityName, _PFCoreDataProcessInstanceUUID(entityName, v13), v7];
  }

  else
  {
    v8 = (~v6 & 7) == 0;
    v9 = 0x3FFFFFFFFFFLL;
    if (v8)
    {
      v9 = 0x3FFFFFFFFLL;
    }

    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@://%@/%@/p%qu", @"x-coredata", v4, -[_NSCoreDataTaggedObjectID entityName](self, "entityName"), v9 & v7, v14];
  }
}

+ (Class)classWithStore:(id)store andEntity:(id)entity
{
  v27 = *MEMORY[0x1E69E9840];
  if (!_PFTaggedPointersPool)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *v26 = 138412546;
      *&v26[4] = [entity name];
      *&v26[12] = 2112;
      *&v26[14] = store;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fatal attempt to reserve a tagged pointer slot without a pool for '%@': %@\n", v26, 0x16u);
    }

    v24 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      name = [entity name];
      *v26 = 138412546;
      *&v26[4] = name;
      *&v26[12] = 2112;
      *&v26[14] = store;
      _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Fatal attempt to reserve a tagged pointer slot without a pool for '%@': %@", v26, 0x16u);
    }

    __break(1u);
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = atomic_load((_PFTaggedPointersPool + v6 + 16));
    if (!v8)
    {
      atomic_compare_exchange_strong((_PFTaggedPointersPool + v6), &v8, store);
      if (!v8)
      {
        break;
      }
    }

    ++v7;
    v6 += 32;
    if (v7 == 0x20000)
    {
      result = [objc_opt_class() classWithStore:store andEntity:entity];
      goto LABEL_7;
    }
  }

  identifier = [store identifier];
  name2 = [entity name];
  os_unfair_lock_lock_with_options();
  v12 = [qword_1ED4BE980 member:identifier];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [identifier copy];
    [qword_1ED4BE980 addObject:v13];
  }

  v14 = [qword_1ED4BE980 member:name2];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:name2];
    [qword_1ED4BE980 addObject:v15];
  }

  os_unfair_lock_unlock(&dword_1ED4BE974);
  v16 = _PFTaggedPointersPool + v6;
  atomic_store(entity, (_PFTaggedPointersPool + v6 + 8));
  v17 = atomic_load((v16 + 16));
  v18 = atomic_load((_PFTaggedPointersPool + v6 + 24));
  v19 = _PFTaggedPointersPool;
  v20 = v17;
  atomic_compare_exchange_strong_explicit((_PFTaggedPointersPool + v6 + 16), &v20, v13, memory_order_relaxed, memory_order_relaxed);
  if (v20 != v17)
  {

    v19 = _PFTaggedPointersPool;
  }

  v21 = v18;
  atomic_compare_exchange_strong_explicit((v19 + v6 + 24), &v21, v15, memory_order_relaxed, memory_order_relaxed);
  if (v21 != v18)
  {
  }

  __dmb(0xBu);
  v22 = objc_opt_class();
  result = _PFAllocateObject(v22, 0);
  if (result)
  {
    *v26 = result;
    *&v26[8] = _NSCoreDataTaggedObjectIDFactory;
    result = objc_msgSendSuper2(v26, sel_init);
    if (result)
    {
      *(result + 3) = v7;
    }
  }

LABEL_7:
  __dmb(0xBu);
  return result;
}

@end