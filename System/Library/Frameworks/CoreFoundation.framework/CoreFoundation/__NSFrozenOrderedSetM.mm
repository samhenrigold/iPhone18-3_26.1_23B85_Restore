@interface __NSFrozenOrderedSetM
- (BOOL)containsObject:(id)object;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countForObject:(id)object;
- (unint64_t)indexOfObject:(id)object;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSFrozenOrderedSetM

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 4))
    {
      [__NSFrozenOrderedSetM dealloc];
    }

    v4 = *(v3 + 6);
    v5 = *(v3 + 4) - 1;
    *(v3 + 4) = v5;
    v6 = (v4 | v5);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      __RELEASE_OBJECTS_IN_THE_ORDEREDSET__(self, 0);
      free(v3);
    }
  }

  else
  {
    __RELEASE_OBJECTS_IN_THE_ORDEREDSET__(self, 0);
  }

  v7.receiver = self;
  v7.super_class = __NSFrozenOrderedSetM;
  [(__NSFrozenOrderedSetM *)&v7 dealloc];
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  if (!atomic_load(&self->cow))
  {
    v5 = _cow_create(self, 0);
    v6 = 0;
    atomic_compare_exchange_strong(&self->cow, &v6, v5);
    if (v6)
    {
      free(v5);
    }
  }

  v7 = objc_opt_self();
  v8 = __CFAllocateObject(v7, 0);
  v9 = atomic_load(&self->cow);
  _cow_copy(self, 0, v9, __NSOrderedSet_cowCallbacks, v8, 1);
  return v8;
}

- (unint64_t)indexOfObject:(id)object
{
  v9 = *MEMORY[0x1E69E9840];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (object)
  {
    p_storage = &self->storage;
    set = self->storage.set;
    if (set)
    {
      v7 = 0u;
      v8 = 0u;
      CFBasicHashFindBucket(set, object, &v7);
      if (*(&v8 + 1))
      {
        return [(NSArray *)p_storage->array indexOfObjectIdenticalTo:v8];
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return result;
}

- (id)objectAtIndex:(unint64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  p_storage = &self->storage;
  Count = CFBasicHashGetCount(self->storage.set);
  if (Count <= index)
  {
    if (Count)
    {
      v14 = Count;
      v8 = _os_log_pack_size();
      v11 = &v20 - ((MEMORY[0x1EEE9AC00](v8, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v20, v21, v22);
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "_oset_objectAtIndex", index, --v14);
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v18, "_oset_objectAtIndex", index, v14);
    }

    else
    {
      v8 = _os_log_pack_size();
      v11 = &v20 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v20, v21);
      *v12 = 136315394;
      *(v12 + 4) = "_oset_objectAtIndex";
      *(v12 + 12) = 2048;
      *(v12 + 14) = index;
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "_oset_objectAtIndex", index);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v19);
  }

  array = p_storage->array;

  return [(NSArray *)array objectAtIndex:index];
}

- (BOOL)containsObject:(id)object
{
  result = 0;
  v8 = *MEMORY[0x1E69E9840];
  if (object)
  {
    set = self->storage.set;
    if (set)
    {
      v6 = 0u;
      v7 = 0u;
      CFBasicHashFindBucket(set, object, &v6);
      return *(&v7 + 1) != 0;
    }
  }

  return result;
}

- (unint64_t)countForObject:(id)object
{
  result = 0;
  v8 = *MEMORY[0x1E69E9840];
  if (object)
  {
    set = self->storage.set;
    if (set)
    {
      v6 = 0u;
      v7 = 0u;
      CFBasicHashFindBucket(set, object, &v6);
      return *(&v7 + 1) != 0;
    }
  }

  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v5 = _os_log_pack_size();
    v8 = v12 - ((MEMORY[0x1EEE9AC00](v5, v6, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = _os_log_pack_fill(v8, v5, 0, &dword_1830E6000, "*** %s: block cannot be nil", v12[0]);
    *v9 = 136315138;
    *(v9 + 4) = "_oset_enumerateObjectsWithOptionsUsingBlock";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "_oset_enumerateObjectsWithOptionsUsingBlock");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v8, v5];
    objc_exception_throw(v11);
  }

  array = self->storage.array;

  [(NSArray *)array enumerateObjectsWithOptions:options usingBlock:?];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v34 = *MEMORY[0x1E69E9840];
  p_storage = &self->storage;
  Count = CFBasicHashGetCount(self->storage.set);
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || Count < location + length)
  {
    if (Count)
    {
      v27 = Count;
      v16 = _os_log_pack_size();
      v19 = &v33 - ((MEMORY[0x1EEE9AC00](v16, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill(v19, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v33, v34, v35, v36);
      v31 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v30, "_oset_getObjectsRange", location, length, --v27);
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v31, "_oset_getObjectsRange", location, length, v27);
    }

    else
    {
      v16 = _os_log_pack_size();
      v19 = &v33 - ((MEMORY[0x1EEE9AC00](v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill(v19, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v33, v34, v35);
      v21 = __os_log_helper_1_2_3_8_32_8_0_8_0(v20, "_oset_getObjectsRange", location, length);
      v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v21, "_oset_getObjectsRange", location, length);
    }

    v32 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v19, v16];
    objc_exception_throw(v32);
  }

  if (!objects && length)
  {
    v10 = _os_log_pack_size();
    v13 = &v33 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v33, v34);
    *v14 = 136315394;
    *(v14 + 4) = "_oset_getObjectsRange";
    *(v14 + 12) = 2048;
    *(v14 + 14) = length;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "_oset_getObjectsRange", length);
    goto LABEL_14;
  }

  if (length >> 61)
  {
    v10 = _os_log_pack_size();
    v13 = &v33 - ((MEMORY[0x1EEE9AC00](v10, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v33, v34);
    *v25 = 136315394;
    *(v25 + 4) = "_oset_getObjectsRange";
    *(v25 + 12) = 2048;
    *(v25 + 14) = length;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "_oset_getObjectsRange", length);
LABEL_14:
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v26);
  }

  array = p_storage->array;

  [(NSArray *)array getObjects:objects range:location, length];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  if (!atomic_load(&self->cow))
  {
    v6 = _cow_create(self, 0);
    v7 = 0;
    atomic_compare_exchange_strong(&self->cow, &v7, v6);
    if (v7)
    {
      free(v6);
    }
  }

  v8 = objc_opt_self();
  v9 = __CFAllocateObject(v8, 0);
  v10 = atomic_load(&self->cow);
  _cow_copy(self, 0, v10, __NSOrderedSet_cowCallbacks, v9, 1);
  return v9;
}

@end