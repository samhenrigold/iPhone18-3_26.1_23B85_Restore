@interface __NSOrderedSetM
- (BOOL)containsObject:(id)object;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countForObject:(id)object;
- (unint64_t)indexOfObject:(id)object;
- (void)_mutate;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)setObject:(id)object atIndex:(unint64_t)index;
@end

@implementation __NSOrderedSetM

- (void)_mutate
{
  array = self->storage.array;
  [(NSMutableArray *)array _mutate];
  v4 = __cf_tsanWriteFunction;
  if (__cf_tsanWriteFunction)
  {
    v5 = __CFTSANTagMutableOrderedSet;

    v4(array, v2, v5);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 6))
    {
      [__NSOrderedSetM dealloc];
    }

    v4 = *(v3 + 4);
    v5 = *(v3 + 6) - 1;
    *(v3 + 6) = v5;
    v6 = (v5 | v4);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      __RELEASE_OBJECTS_IN_THE_ORDEREDSET__(self, 1);
      free(v3);
    }
  }

  else
  {
    __RELEASE_OBJECTS_IN_THE_ORDEREDSET__(self, 1);
  }

  v7.receiver = self;
  v7.super_class = __NSOrderedSetM;
  [(__NSOrderedSetM *)&v7 dealloc];
}

- (id)copy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  if (!atomic_load(&self->cow))
  {
    v5 = _cow_create(self, 1);
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
  _cow_copy(self, 1, v9, __NSOrderedSet_cowCallbacks, v8, 0);
  return v8;
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  if (!atomic_load(&self->cow))
  {
    v5 = _cow_create(self, 1);
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
  _cow_copy(self, 1, v9, __NSOrderedSet_cowCallbacks, v8, 1);
  return v8;
}

- (void)removeAllObjects
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = atomic_load(&self->cow);
  if (v4)
  {
    os_unfair_lock_lock(v4);
    if (!*(v4 + 6))
    {
      [__NSOrderedSetM removeAllObjects];
    }

    if (*(v4 + 6) != 1 || *(v4 + 4) != 0)
    {
      --*(v4 + 6);
      _cow_mutate_slow(self, v4, __NSOrderedSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v4);
  }

  p_storage = &self->storage;
  [(NSMutableArray *)p_storage->array removeAllObjects];
  set = p_storage->set;

  CFBasicHashRemoveAllValues(set);
}

- (unint64_t)indexOfObject:(id)object
{
  v11 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (object)
  {
    p_storage = &self->storage;
    set = p_storage->set;
    if (p_storage->set)
    {
      v9 = 0u;
      v10 = 0u;
      CFBasicHashFindBucket(set, object, &v9);
      if (*(&v10 + 1))
      {
        return [(NSArray *)p_storage->array indexOfObjectIdenticalTo:v10];
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
  v23 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  p_storage = &self->storage;
  Count = CFBasicHashGetCount(*p_storage);
  if (Count <= index)
  {
    if (Count)
    {
      v16 = Count;
      v10 = _os_log_pack_size();
      v13 = &v22 - ((MEMORY[0x1EEE9AC00](v10, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v22, v23, v24);
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "_oset_objectAtIndex", index, --v16);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v20, "_oset_objectAtIndex", index, v16);
    }

    else
    {
      v10 = _os_log_pack_size();
      v13 = &v22 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v22, v23);
      *v14 = 136315394;
      *(v14 + 4) = "_oset_objectAtIndex";
      *(v14 + 12) = 2048;
      *(v14 + 14) = index;
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "_oset_objectAtIndex", index);
    }

    v21 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v21);
  }

  v8 = p_storage[1];

  return [v8 objectAtIndex:index];
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v37 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = atomic_load(&self->cow);
  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSOrderedSetM insertObject:atIndex:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSOrderedSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
  }

  if (!object)
  {
    v14 = _os_log_pack_size();
    v17 = &v36 - ((MEMORY[0x1EEE9AC00](v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v17, v14, 0, &dword_1830E6000, "*** %s: object cannot be nil", v36);
    *v18 = 136315138;
    *(v18 + 4) = "[__NSOrderedSetM insertObject:atIndex:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSOrderedSetM insertObject:atIndex:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v14];
    objc_exception_throw(v20);
  }

  p_storage = &self->storage;
  Count = CFBasicHashGetCount(self->storage.set);
  v12 = Count;
  if ((index & 0x8000000000000000) != 0 || Count < index)
  {
    if (Count)
    {
      v21 = _os_log_pack_size();
      v31 = &v36 - ((MEMORY[0x1EEE9AC00](v21, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = _os_log_pack_fill(v31, v21, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v36, v37, v38);
      v33 = v12 - 1;
      v34 = __os_log_helper_1_2_3_8_32_8_0_8_0(v32, "[__NSOrderedSetM insertObject:atIndex:]", index, v33);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v34, "[__NSOrderedSetM insertObject:atIndex:]", index, v33);
      v27 = _CFAutoreleasePoolAddObject(0, v35);
      v28 = v31;
    }

    else
    {
      v21 = _os_log_pack_size();
      v24 = &v36 - ((MEMORY[0x1EEE9AC00](v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v36, v37);
      *v25 = 136315394;
      *(v25 + 4) = "[__NSOrderedSetM insertObject:atIndex:]";
      *(v25 + 12) = 2048;
      *(v25 + 14) = index;
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[__NSOrderedSetM insertObject:atIndex:]", index);
      v27 = _CFAutoreleasePoolAddObject(0, v26);
      v28 = v24;
    }

    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v27 userInfo:0 osLogPack:v28 size:v21]);
  }

  if (CFBasicHashAddValue(*p_storage, object, object))
  {
    v13 = p_storage[1];

    [v13 insertObject:object atIndex:index];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = atomic_load(&self->cow);
  if (v6)
  {
    os_unfair_lock_lock(v6);
    if (!*(v6 + 6))
    {
      [__NSOrderedSetM removeObjectAtIndex:];
    }

    if (*(v6 + 6) != 1 || *(v6 + 4) != 0)
    {
      --*(v6 + 6);
      _cow_mutate_slow(self, v6, __NSOrderedSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v6);
  }

  p_storage = &self->storage;
  Count = CFBasicHashGetCount(p_storage->set);
  if ((index & 0x8000000000000000) != 0 || Count <= index)
  {
    if (Count)
    {
      v17 = Count;
      v11 = _os_log_pack_size();
      v14 = &v23 - ((MEMORY[0x1EEE9AC00](v11, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v23, v24, v25);
      v21 = __os_log_helper_1_2_3_8_32_8_0_8_0(v20, "[__NSOrderedSetM removeObjectAtIndex:]", index, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v21, "[__NSOrderedSetM removeObjectAtIndex:]", index, v17);
    }

    else
    {
      v11 = _os_log_pack_size();
      v14 = &v23 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v23, v24);
      *v15 = 136315394;
      *(v15 + 4) = "[__NSOrderedSetM removeObjectAtIndex:]";
      *(v15 + 12) = 2048;
      *(v15 + 14) = index;
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[__NSOrderedSetM removeObjectAtIndex:]", index);
    }

    v22 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v11];
    objc_exception_throw(v22);
  }

  CFBasicHashRemoveValue(p_storage->set, [(NSArray *)p_storage->array objectAtIndex:index]);
  array = p_storage->array;

  [(NSMutableArray *)array removeObjectAtIndex:index];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v38[4] = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = atomic_load(&self->cow);
  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSOrderedSetM replaceObjectAtIndex:withObject:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSOrderedSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
  }

  if (!object)
  {
    v15 = _os_log_pack_size();
    v18 = &v38[-1] - ((MEMORY[0x1EEE9AC00](v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v15, 0, &dword_1830E6000, "*** %s: object cannot be nil", v37);
    *v19 = 136315138;
    *(v19 + 4) = "[__NSOrderedSetM replaceObjectAtIndex:withObject:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSOrderedSetM replaceObjectAtIndex:withObject:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v15];
    objc_exception_throw(v21);
  }

  p_storage = &self->storage;
  Count = CFBasicHashGetCount(self->storage.set);
  v12 = Count;
  if ((index & 0x8000000000000000) != 0 || Count <= index)
  {
    if (Count)
    {
      v22 = _os_log_pack_size();
      v32 = &v38[-1] - ((MEMORY[0x1EEE9AC00](v22, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v32, v22, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v37, v38[0], v38[1]);
      v34 = v12 - 1;
      v35 = __os_log_helper_1_2_3_8_32_8_0_8_0(v33, "[__NSOrderedSetM replaceObjectAtIndex:withObject:]", index, v34);
      v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v35, "[__NSOrderedSetM replaceObjectAtIndex:withObject:]", index, v34);
      v28 = _CFAutoreleasePoolAddObject(0, v36);
      v29 = v32;
    }

    else
    {
      v22 = _os_log_pack_size();
      v25 = &v38[-1] - ((MEMORY[0x1EEE9AC00](v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill(v25, v22, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v37, v38[0]);
      *v26 = 136315394;
      *(v26 + 4) = "[__NSOrderedSetM replaceObjectAtIndex:withObject:]";
      *(v26 + 12) = 2048;
      *(v26 + 14) = index;
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[__NSOrderedSetM replaceObjectAtIndex:withObject:]", index);
      v28 = _CFAutoreleasePoolAddObject(0, v27);
      v29 = v25;
    }

    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v28 userInfo:0 osLogPack:v29 size:v22]);
  }

  v13 = [(NSArray *)p_storage->array objectAtIndex:index];
  v14 = v13;
  if (v13 != object && [v13 isEqual:object] || (CFBasicHashFindBucket(p_storage->set, object, v38), !v38[3]))
  {
    CFBasicHashRemoveValue(p_storage->set, v14);
    CFBasicHashAddValue(p_storage->set, object, object);
    [(NSMutableArray *)p_storage->array replaceObjectAtIndex:index withObject:object];
  }
}

- (BOOL)containsObject:(id)object
{
  v10 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  result = 0;
  if (object)
  {
    set = self->storage.set;
    if (set)
    {
      v8 = 0u;
      v9 = 0u;
      CFBasicHashFindBucket(set, object, &v8);
      return *(&v9 + 1) != 0;
    }
  }

  return result;
}

- (unint64_t)countForObject:(id)object
{
  v10 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  result = 0;
  if (object)
  {
    set = self->storage.set;
    if (set)
    {
      v8 = 0u;
      v9 = 0u;
      CFBasicHashFindBucket(set, object, &v8);
      return *(&v9 + 1) != 0;
    }
  }

  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!__cf_tsanReadFunction)
  {
    if (block)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = _os_log_pack_size();
    v12 = v16 - ((MEMORY[0x1EEE9AC00](v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v9, 0, &dword_1830E6000, "*** %s: block cannot be nil", v16[0]);
    *v13 = 136315138;
    *(v13 + 4) = "_oset_enumerateObjectsWithOptionsUsingBlock";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "_oset_enumerateObjectsWithOptionsUsingBlock");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v9];
    objc_exception_throw(v15);
  }

  __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  if (!block)
  {
    goto LABEL_7;
  }

LABEL_3:
  array = self->storage.array;

  [(NSArray *)array enumerateObjectsWithOptions:options usingBlock:block];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v36 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  p_storage = &self->storage;
  Count = CFBasicHashGetCount(*p_storage);
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || Count < location + length)
  {
    if (Count)
    {
      v29 = Count;
      v18 = _os_log_pack_size();
      v21 = &v35 - ((MEMORY[0x1EEE9AC00](v18, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v35, v36, v37, v38);
      v33 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v32, "_oset_getObjectsRange", location, length, --v29);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v33, "_oset_getObjectsRange", location, length, v29);
    }

    else
    {
      v18 = _os_log_pack_size();
      v21 = &v35 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v35, v36, v37);
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "_oset_getObjectsRange", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v23, "_oset_getObjectsRange", location, length);
    }

    v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v21, v18];
    objc_exception_throw(v34);
  }

  if (!objects && length)
  {
    v12 = _os_log_pack_size();
    v15 = &v35 - ((MEMORY[0x1EEE9AC00](v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v12, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v35, v36);
    *v16 = 136315394;
    *(v16 + 4) = "_oset_getObjectsRange";
    *(v16 + 12) = 2048;
    *(v16 + 14) = length;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "_oset_getObjectsRange", length);
    goto LABEL_16;
  }

  if (length >> 61)
  {
    v12 = _os_log_pack_size();
    v15 = &v35 - ((MEMORY[0x1EEE9AC00](v12, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = _os_log_pack_fill(v15, v12, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v35, v36);
    *v27 = 136315394;
    *(v27 + 4) = "_oset_getObjectsRange";
    *(v27 + 12) = 2048;
    *(v27 + 14) = length;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "_oset_getObjectsRange", length);
LABEL_16:
    v28 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v12];
    objc_exception_throw(v28);
  }

  v11 = p_storage[1];

  [v11 getObjects:objects range:{location, length}];
}

- (void)setObject:(id)object atIndex:(unint64_t)index
{
  v39[4] = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = atomic_load(&self->cow);
  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSOrderedSetM setObject:atIndex:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSOrderedSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
  }

  if (!object)
  {
    v16 = _os_log_pack_size();
    v19 = &v39[-1] - ((MEMORY[0x1EEE9AC00](v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v19, v16, 0, &dword_1830E6000, "*** %s: object cannot be nil", v38);
    *v20 = 136315138;
    *(v20 + 4) = "[__NSOrderedSetM setObject:atIndex:]";
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSOrderedSetM setObject:atIndex:]");
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v16];
    objc_exception_throw(v22);
  }

  p_storage = &self->storage;
  Count = CFBasicHashGetCount(self->storage.set);
  v12 = Count;
  if ((index & 0x8000000000000000) != 0 || Count < index)
  {
    if (Count)
    {
      v23 = _os_log_pack_size();
      v33 = &v39[-1] - ((MEMORY[0x1EEE9AC00](v23, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill(v33, v23, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v38, v39[0], v39[1]);
      v35 = v12 - 1;
      v36 = __os_log_helper_1_2_3_8_32_8_0_8_0(v34, "[__NSOrderedSetM setObject:atIndex:]", index, v35);
      v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v36, "[__NSOrderedSetM setObject:atIndex:]", index, v35);
      v29 = _CFAutoreleasePoolAddObject(0, v37);
      v30 = v33;
    }

    else
    {
      v23 = _os_log_pack_size();
      v26 = &v39[-1] - ((MEMORY[0x1EEE9AC00](v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v23, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v38, v39[0]);
      *v27 = 136315394;
      *(v27 + 4) = "[__NSOrderedSetM setObject:atIndex:]";
      *(v27 + 12) = 2048;
      *(v27 + 14) = index;
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[__NSOrderedSetM setObject:atIndex:]", index);
      v29 = _CFAutoreleasePoolAddObject(0, v28);
      v30 = v26;
    }

    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v29 userInfo:0 osLogPack:v30 size:v23]);
  }

  if (Count == index)
  {
    if (CFBasicHashAddValue(p_storage->set, object, object))
    {
      array = p_storage->array;

      [(NSMutableArray *)array insertObject:object atIndex:index];
    }
  }

  else
  {
    v14 = [(NSArray *)p_storage->array objectAtIndex:index];
    v15 = v14;
    if (v14 != object && [v14 isEqual:object] || (CFBasicHashFindBucket(p_storage->set, object, v39), !v39[3]))
    {
      CFBasicHashRemoveValue(p_storage->set, v15);
      CFBasicHashAddValue(p_storage->set, object, object);
      [(NSMutableArray *)p_storage->array replaceObjectAtIndex:index withObject:object];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  if (!atomic_load(&self->cow))
  {
    v6 = _cow_create(self, 1);
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
  _cow_copy(self, 1, v10, __NSOrderedSet_cowCallbacks, v9, 0);
  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  if (!atomic_load(&self->cow))
  {
    v6 = _cow_create(self, 1);
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
  _cow_copy(self, 1, v10, __NSOrderedSet_cowCallbacks, v9, 1);
  return v9;
}

@end