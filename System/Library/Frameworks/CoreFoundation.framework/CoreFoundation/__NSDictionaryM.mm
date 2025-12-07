@interface __NSDictionaryM
- (double)_clumpingFactor;
- (double)_clumpingInterestingThreshold;
- (id)_cfMutableCopy;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyEnumerator;
- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test;
- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__apply:(void *)__apply context:(void *)context;
- (void)__setObject:(id)object forKey:(id)key;
- (void)_mutate;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
- (void)removeAllObjects;
- (void)removeEntriesWithOptions:(unint64_t)options passingTest:(id)test;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setObservationInfo:(void *)info;
@end

@implementation __NSDictionaryM

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  return self->storage.var0.var1.other & 0x1FFFFFF;
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
      [__NSDictionaryM dealloc];
    }

    v4 = *(v3 + 4);
    v5 = *(v3 + 6) - 1;
    *(v3 + 6) = v5;
    v6 = (v5 | v4);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      cow_cleanup(self, 1);
      free(v3);
    }
  }

  else
  {
    cow_cleanup(self, 1);
  }

  v7.receiver = self;
  v7.super_class = __NSDictionaryM;
  [(__NSDictionaryM *)&v7 dealloc];
}

- (id)copy
{
  if (__cf_tsanReadFunction)
  {
    v2 = v3;
    v16 = OUTLINED_FUNCTION_0_27();
    v17(v16);
    if (__cf_tsanReadFunction)
    {
      v18 = OUTLINED_FUNCTION_0_27();
      v19(v18);
    }
  }

  if (![(__NSDictionaryM *)self count])
  {
    return &__NSDictionary0__struct;
  }

  OUTLINED_FUNCTION_3_8();
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_2_10();
    v8 = _cow_create(v6, v7);
    v9 = 0;
    atomic_compare_exchange_strong(v2, &v9, v8);
    if (v9)
    {
      free(v8);
    }
  }

  v10 = objc_opt_self();
  __CFAllocateObject(v10, 0);
  OUTLINED_FUNCTION_1_20();
  v11 = OUTLINED_FUNCTION_2_10();
  _cow_copy(v11, v12, v13, v14, v2, 0);
  return v2;
}

- (void)removeAllObjects
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v5 = atomic_load(&self->cow);
  p_storage = &self->storage;
  mutations = self->storage.var0.var0.mutations;
  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v8 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    os_unfair_lock_lock(v5);
    if (!*(v5 + 6))
    {
      [__NSDictionaryM removeAllObjects];
    }

    if (*(v5 + 6) != 1 || *(v5 + 4) != 0)
    {
      --*(v5 + 6);
      _cow_mutate_slow(self, v5, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v5);
    mutations = self->storage.var0.var0.mutations;
  }

  v10 = mutations & 0xFFFFFFFF80000000 | v8;
  self->storage.var0.var0.mutations = v10;
  v11 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = p_storage->buffer;
  v13 = mutations >> 58;
  if ((mutations & 0x200000000000000) != 0)
  {
    v33[1] = v33;
    v15 = HIDWORD(mutations) & 0x1FFFFFF;
    if ((mutations & 0x1FFFFFE00000000) != 0)
    {
      v16 = HIDWORD(mutations) & 0x1FFFFFF;
    }

    else
    {
      v16 = 1;
    }

    v17 = MEMORY[0x1EEE9AC00](v16, a2, v2);
    v19 = v33 - v18;
    v34[0] = 0;
    if (v15 >= 0x101)
    {
      v19 = _CFCreateArrayStorage(v17, 0, v34);
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    if (v15 && v13)
    {
      v21 = 0;
      v22 = 1;
      v23 = buffer;
      do
      {
        v24 = *v23;
        if (*v23)
        {
          v25 = v24 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          *&v19[8 * v21++] = v24;
        }

        if (v21 == v15)
        {
          break;
        }

        ++v23;
      }

      while (v22++ < v11);
    }

    v14 = [[NSSet alloc] initWithObjects:v19 count:v21];
    [(__NSDictionaryM *)self _willChangeValuesForKeys:v14];
    free(v20);
    v10 = self->storage.var0.var0.mutations;
  }

  else
  {
    v14 = 0;
  }

  v27 = v10 & 0x2000000FFFFFFFFLL;
  p_storage->buffer = 0;
  self->storage.var0.var0.mutations = v27;
  if (!v13)
  {
LABEL_52:
    p_storage->buffer = buffer;
    self->storage.var0.var0.mutations = v27 | mutations & 0xFC00000000000000;
    if ((mutations & 0x200000000000000) != 0)
    {
      goto LABEL_55;
    }

    return;
  }

  v28 = 0;
  v29 = &buffer[v11];
  if (v11 <= 1)
  {
    v11 = 1;
  }

  do
  {
    v30 = &buffer[v28];
    v31 = *v30;
    if (*v30)
    {
      v32 = v31 == &___NSDictionaryM_DeletedMarker;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
      }

      if (*v29 >= 1)
      {
      }

      buffer[v28] = 0;
      v30 = v29;
LABEL_49:
      *v30 = 0;
      goto LABEL_50;
    }

    if (v31)
    {
      goto LABEL_49;
    }

LABEL_50:
    ++v28;
    ++v29;
  }

  while (v11 != v28);
  v27 = self->storage.var0.var0.mutations;
  if (!(v27 >> 58))
  {
    goto LABEL_52;
  }

  free(buffer);
  if ((mutations & 0x200000000000000) != 0)
  {
LABEL_55:
    [(__NSDictionaryM *)self _didChangeValuesForKeys:v14];
  }
}

- (void)_mutate
{
  v2 = atomic_load(&self->cow);
  p_storage = &self->storage;
  mutations = self->storage.var0.var0.mutations;
  v5 = mutations;
  if (v2)
  {
    os_unfair_lock_lock(v2);
    if (!*(v2 + 6))
    {
      [__NSDictionaryM _mutate];
    }

    if (*(v2 + 6) != 1 || *(v2 + 4) != 0)
    {
      --*(v2 + 6);
      _cow_mutate_slow(self, v2, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v2);
    v5 = p_storage->var0.var0.mutations;
  }

  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v8 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v8 = 0;
  }

  p_storage->var0.var0.mutations = v5 & 0xFFFFFFFF80000000 | v8;
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
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
  _cow_copy(self, 1, v9, __NSDictionary_cowCallbacks, v8, 1);
  return v8;
}

- (id)_cfMutableCopy
{
  result = [(__NSDictionaryM *)self mutableCopyWithZone:0];
  *(result + 2) = *(result + 2) & 0xFFFFFFFF7FFFFFFFLL | (((self->storage.var0.var0.mutations >> 31) & 1) << 31);
  return result;
}

- (id)keyEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v4;
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
  }

  v10 = count >> 61;
  if (objects && v10 || keys && v10)
  {
    v20 = _os_log_pack_size();
    v23 = v27 - ((MEMORY[0x1EEE9AC00](v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous");
    *v24 = 136315394;
    *(v24 + 4) = "[__NSDictionaryM getObjects:andKeys:count:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = count;
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSDictionaryM getObjects:andKeys:count:]", count);
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v20];
    objc_exception_throw(v26);
  }

  mutations = self->storage.var0.var0.mutations;
  v12 = mutations >> 58;
  countCopy = HIDWORD(mutations) & 0x1FFFFFF;
  if (countCopy >= count)
  {
    countCopy = count;
  }

  if (v12)
  {
    v14 = countCopy == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = LODWORD(__NSDictionarySizes_0[v12]);
    buffer = self->storage.buffer;
    v17 = 1;
    do
    {
      v18 = *buffer;
      if (*buffer)
      {
        v19 = v18 == &___NSDictionaryM_DeletedMarker;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        if (keys)
        {
          *keys++ = v18;
        }

        if (objects)
        {
          *objects++ = buffer[v15];
        }

        --countCopy;
      }

      if (v17 >= v15)
      {
        break;
      }

      ++buffer;
      ++v17;
    }

    while (countCopy);
  }
}

- (id)objectForKey:(id)key
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  p_storage = &self->storage;
  mutations = self->storage.var0.var0.mutations;
  if (!(mutations >> 58))
  {
    return 0;
  }

  v8 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = p_storage->buffer;
  v10 = [key hash] % v8;
  v11 = v8 <= 1 ? 1 : v8;
  v12 = v8;
  while (1)
  {
    v13 = buffer[v10];
    if (!v13)
    {
      break;
    }

    if (v13 == &___NSDictionaryM_DeletedMarker)
    {
      if (v12 == v8)
      {
        v12 = v10;
      }
    }

    else if (v13 == key || ([(state *)v13 isEqual:key]& 1) != 0)
    {
      v12 = v10;
      goto LABEL_23;
    }

    if (v10 + 1 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    v10 = v10 + 1 - v14;
    if (!--v11)
    {
      goto LABEL_23;
    }
  }

  if (v12 == v8)
  {
    v12 = v10;
  }

LABEL_23:
  if (v12 < v8)
  {
    return *(&buffer[v8] + v12);
  }

  else
  {
    return 0;
  }
}

- (void)removeObjectForKey:(id)key
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = atomic_load(&self->cow);
  mutations = self->storage.var0.var0.mutations;
  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v8 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    os_unfair_lock_lock(v6);
    if (!*(v6 + 6))
    {
      [__NSDictionaryM removeObjectForKey:];
    }

    if (*(v6 + 6) != 1 || *(v6 + 4) != 0)
    {
      --*(v6 + 6);
      _cow_mutate_slow(self, v6, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v6);
    mutations = self->storage.var0.var0.mutations;
  }

  self->storage.var0.var0.mutations = mutations & 0xFFFFFFFF80000000 | v8;
  if (!key)
  {
    v10 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: key cannot be nil", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[__NSDictionaryM removeObjectForKey:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[__NSDictionaryM removeObjectForKey:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v16);
  }

  mdict_removeObjectForKey(self, key);
}

- (void)setObject:(id)object forKey:(id)key
{
  selfCopy = self;
  v49 = *MEMORY[0x1E69E9840];
  if (!__cf_tsanWriteFunction)
  {
    if (key)
    {
      goto LABEL_3;
    }

LABEL_64:
    v32 = _os_log_pack_size();
    v35 = &v46 - ((MEMORY[0x1EEE9AC00](v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = _os_log_pack_fill(v35, v32, 0, &dword_1830E6000, "*** %s: key cannot be nil", v46);
    *v36 = 136315138;
    *(v36 + 4) = "[__NSDictionaryM setObject:forKey:]";
    v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[__NSDictionaryM setObject:forKey:]");
    v38 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v37) osLogPack:0 size:v35, v32];
    objc_exception_throw(v38);
  }

  __cf_tsanWriteFunction(selfCopy, v4, __CFTSANTagMutableDictionary);
  if (!key)
  {
    goto LABEL_64;
  }

LABEL_3:
  if (!object)
  {
    v39 = _os_log_pack_size();
    v42 = &v46 - ((MEMORY[0x1EEE9AC00](v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill(v42, v39, 0, &dword_1830E6000, "*** %s: object cannot be nil (key: %@)");
    *v43 = 136315394;
    *(v43 + 4) = "[__NSDictionaryM setObject:forKey:]";
    *(v43 + 12) = 2112;
    *(v43 + 14) = key;
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil (key: %@)", "[__NSDictionaryM setObject:forKey:]", key);
    v45 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v39];
    objc_exception_throw(v45);
  }

  v7 = selfCopy;
  v8 = atomic_load(selfCopy + 3);
  v9 = (v7 + 1);
  v10 = v7[2];
  if (((v10 >> 9) & 0x3FFFFF) < 0x7D)
  {
    v11 = (v10 & 0x7FFFFFFF) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSDictionaryM setObject:forKey:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(selfCopy, v8, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
    v10 = v9[1];
  }

  v13 = v10 & 0xFFFFFFFF80000000 | v11;
  v9[1] = v13;
  v14 = v10 >> 58;
  if (v10 >> 58)
  {
    LODWORD(v16) = __NSDictionarySizes_0[v14];
    if ((object & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9[1] = v13 | 0x400000000000000;
  v15 = malloc_type_calloc(1uLL, 0x30uLL, 0x80040B8603338uLL);
  if (!v15)
  {
    __break(1u);
    return;
  }

  *v9 = v15;
  LODWORD(v14) = 1;
  LODWORD(v16) = 3;
  if ((object & 0x8000000000000000) == 0)
  {
LABEL_20:
    objectCopy = object;
  }

LABEL_21:
  v46 = v9[1];
  objectCopy2 = object;
  while (1)
  {
    v18 = *v9;
    v19 = v16;
    v20 = 0;
    v21 = [key hash] % v16;
    v16 = (v16 & 0xFFFFFFFE) != 0 ? v16 : 1;
    v22 = v19;
    while (1)
    {
      v23 = *(v18 + 8 * v21);
      if (!v23)
      {
        break;
      }

      if (v23 == &___NSDictionaryM_DeletedMarker)
      {
        ++v20;
        if (v22 == v19)
        {
          v22 = v21;
        }
      }

      else if (v23 == key || ([v23 isEqual:key] & 1) != 0)
      {
        v22 = v21;
        goto LABEL_41;
      }

      if (v21 + 1 >= v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = 0;
      }

      v21 = v21 + 1 - v24;
      if (!--v16)
      {
        goto LABEL_41;
      }
    }

    if (v22 == v19)
    {
      v22 = v21;
    }

LABEL_41:
    if (v22 < v19 && v20 <= 0xF)
    {
      break;
    }

    if (v22 < v19)
    {
      v25 = v14;
    }

    else
    {
      v25 = v14 + 1;
    }

    mdict_rehashd(selfCopy, v25);
    v14 = v9[1] >> 58;
    LODWORD(v16) = __NSDictionarySizes_0[v14];
  }

  v26 = *(v18 + 8 * v22);
  v27 = v18 + 8 * v19;
  v28 = v46;
  if ((v46 & 0x200000000000000) != 0)
  {
    [selfCopy willChangeValueForKey:key];
  }

  v29 = *(v27 + 8 * v22);
  if (v26 == &___NSDictionaryM_DeletedMarker || v26 == 0)
  {
    *(v18 + 8 * v22) = [key copyWithZone:0];
    *(v27 + 8 * v22) = objectCopy2;
    v31 = v9[1];
    v9[1] = v31 & 0xFE000000FFFFFFFFLL | ((((v31 + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
    if (__NSDictionaryCapacities_0[v14] < (((v31 + 0x100000000) >> 32) & 0x1FFFFFF))
    {
      mdict_rehashd(selfCopy, v14 + 1);
    }
  }

  else
  {
    *(v27 + 8 * v22) = objectCopy2;
  }

  if ((v28 & 0x200000000000000) != 0)
  {
    [selfCopy didChangeValueForKey:key];
  }

  if (v29 >= 1)
  {
  }
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  selfCopy = self;
  v47 = *MEMORY[0x1E69E9840];
  if (!__cf_tsanWriteFunction)
  {
    if (subscript)
    {
      goto LABEL_3;
    }

LABEL_71:
    v35 = _os_log_pack_size();
    v38 = &v42 - ((MEMORY[0x1EEE9AC00](v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill(v38, v35, 0, &dword_1830E6000, "*** %s: key cannot be nil", v42);
    *v39 = 136315138;
    *(v39 + 4) = "[__NSDictionaryM setObject:forKeyedSubscript:]";
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[__NSDictionaryM setObject:forKeyedSubscript:]");
    v41 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v38, v35];
    objc_exception_throw(v41);
  }

  __cf_tsanWriteFunction(selfCopy, v4, __CFTSANTagMutableDictionary);
  if (!subscript)
  {
    goto LABEL_71;
  }

LABEL_3:
  v7 = selfCopy;
  v8 = atomic_load(selfCopy + 3);
  v9 = (v7 + 1);
  v10 = v7[2];
  if (((v10 >> 9) & 0x3FFFFF) < 0x7D)
  {
    v11 = (v10 & 0x7FFFFFFF) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSDictionaryM setObject:forKeyedSubscript:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(selfCopy, v8, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
    v10 = v9[1];
  }

  v13 = v10 & 0xFFFFFFFF80000000 | v11;
  v9[1] = v13;
  if (!object)
  {

    mdict_removeObjectForKey(selfCopy, subscript);
    return;
  }

  v14 = v10 >> 58;
  if (v10 >> 58)
  {
    LODWORD(v16) = __NSDictionarySizes_0[v14];
    if ((object & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v9[1] = v13 | 0x400000000000000;
    v15 = malloc_type_calloc(1uLL, 0x30uLL, 0x80040B8603338uLL);
    if (!v15)
    {
      __break(1u);
      return;
    }

    *v9 = v15;
    LODWORD(v14) = 1;
    LODWORD(v16) = 3;
    if ((object & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }
  }

  objectCopy = object;
LABEL_24:
  objectCopy2 = object;
  v18 = v9[1];
  v43 = v10;
  v44 = v18;
  while (1)
  {
    v19 = *v9;
    v20 = v16;
    v21 = 0;
    v22 = [subscript hash] % v16;
    v16 = (v16 & 0xFFFFFFFE) != 0 ? v16 : 1;
    v23 = v20;
    while (1)
    {
      v24 = *(v19 + 8 * v22);
      if (!v24)
      {
        break;
      }

      if (v24 == &___NSDictionaryM_DeletedMarker)
      {
        ++v21;
        if (v23 == v20)
        {
          v23 = v22;
        }
      }

      else if (v24 == subscript || ([v24 isEqual:subscript] & 1) != 0)
      {
        v23 = v22;
        goto LABEL_44;
      }

      if (v22 + 1 >= v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = 0;
      }

      v22 = v22 + 1 - v25;
      if (!--v16)
      {
        goto LABEL_44;
      }
    }

    if (v23 == v20)
    {
      v23 = v22;
    }

LABEL_44:
    if (v23 < v20 && v21 <= 0xF)
    {
      break;
    }

    if (v23 < v20)
    {
      v26 = v14;
    }

    else
    {
      v26 = v14 + 1;
    }

    mdict_rehashd(selfCopy, v26);
    v14 = v9[1] >> 58;
    LODWORD(v16) = __NSDictionarySizes_0[v14];
  }

  v27 = *(v19 + 8 * v23);
  v28 = v19 + 8 * v20;
  v29 = v44;
  if ((v44 & 0x200000000000000) != 0)
  {
    [selfCopy willChangeValueForKey:subscript];
  }

  v30 = *(v28 + 8 * v23);
  if (v27 == &___NSDictionaryM_DeletedMarker || v27 == 0)
  {
    if ((v43 & 0x80000000) != 0)
    {
      subscriptCopy3 = [subscript copyWithZone:0];
    }

    else
    {
      subscriptCopy3 = subscript;
      if ((subscript & 0x8000000000000000) == 0)
      {
        subscriptCopy2 = subscript;
        subscriptCopy3 = subscript;
      }
    }

    *(v19 + 8 * v23) = subscriptCopy3;
    *(v28 + 8 * v23) = objectCopy2;
    v34 = v9[1];
    v9[1] = v34 & 0xFE000000FFFFFFFFLL | ((((v34 + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
    if (__NSDictionaryCapacities_0[v14] < (((v34 + 0x100000000) >> 32) & 0x1FFFFFF))
    {
      mdict_rehashd(selfCopy, v14 + 1);
    }
  }

  else
  {
    *(v28 + 8 * v23) = objectCopy2;
  }

  if ((v29 & 0x200000000000000) != 0)
  {
    [selfCopy didChangeValueForKey:subscript];
  }

  if (v30 >= 1)
  {
  }
}

- (void)__setObject:(id)object forKey:(id)key
{
  v80 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  [(__NSDictionaryM *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (key)
    {
      goto LABEL_3;
    }

LABEL_119:
    v61 = _os_log_pack_size();
    v64 = &v75 - ((MEMORY[0x1EEE9AC00](v61, v62, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = _os_log_pack_fill(v64, v61, 0, &dword_1830E6000, "*** %s: key cannot be nil", v75);
    *v65 = 136315138;
    *(v65 + 4) = "[__NSDictionaryM __setObject:forKey:]";
    v66 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[__NSDictionaryM __setObject:forKey:]");
    v67 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v66) osLogPack:0 size:v64, v61];
    objc_exception_throw(v67);
  }

  __cf_tsanWriteFunction(selfCopy, v4, __CFTSANTagMutableDictionary);
  if (!key)
  {
    goto LABEL_119;
  }

LABEL_3:
  if (!object)
  {
    v68 = _os_log_pack_size();
    v71 = &v75 - ((MEMORY[0x1EEE9AC00](v68, v69, v70) + 15) & 0xFFFFFFFFFFFFFFF0);
    v72 = _os_log_pack_fill(v71, v68, 0, &dword_1830E6000, "*** %s: object cannot be nil (key: %@)");
    *v72 = 136315394;
    *(v72 + 4) = "[__NSDictionaryM __setObject:forKey:]";
    *(v72 + 12) = 2112;
    *(v72 + 14) = key;
    v73 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil (key: %@)", "[__NSDictionaryM __setObject:forKey:]", key);
    v74 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v73) osLogPack:0 size:v71, v68];
    objc_exception_throw(v74);
  }

  v7 = selfCopy;
  v8 = atomic_load(selfCopy + 3);
  v9 = (v7 + 1);
  v10 = v7[2];
  if (((v10 >> 9) & 0x3FFFFF) < 0x7D)
  {
    v11 = (v10 & 0x7FFFFFFF) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSDictionaryM __setObject:forKey:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(selfCopy, v8, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
    v10 = v9[1];
  }

  v13 = v10 & 0xFFFFFFFF80000000 | v11;
  v9[1] = v13;
  objectCopy = object;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = v9[1];
LABEL_18:
    v20 = v13 >> 58;
    if (v13 >> 58)
    {
      LODWORD(v22) = __NSDictionarySizes_0[v20];
      if ((object & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v9[1] = v13 | 0x400000000000000;
    v21 = malloc_type_calloc(1uLL, 0x30uLL, 0x80040B8603338uLL);
    if (v21)
    {
      *v9 = v21;
      LODWORD(v20) = 1;
      LODWORD(v22) = 3;
      if ((object & 0x8000000000000000) != 0)
      {
LABEL_24:
        v24 = v9[1];
        v76 = v13;
        v77 = v24;
        while (1)
        {
          v25 = *v9;
          v26 = v22;
          v27 = 0;
          v28 = [key hash] % v22;
          v29 = (v22 & 0xFFFFFFFE) != 0 ? v22 : 1;
          v22 = v22;
          while (1)
          {
            v30 = *(v25 + 8 * v28);
            if (!v30)
            {
              break;
            }

            if (v30 == &___NSDictionaryM_DeletedMarker)
            {
              ++v27;
              if (v22 == v26)
              {
                v22 = v28;
              }
            }

            else if (v30 == key || ([v30 isEqual:key] & 1) != 0)
            {
              v22 = v28;
              goto LABEL_44;
            }

            if (v28 + 1 >= v26)
            {
              v31 = v26;
            }

            else
            {
              v31 = 0;
            }

            v28 = v28 + 1 - v31;
            if (!--v29)
            {
              goto LABEL_44;
            }
          }

          if (v22 == v26)
          {
            v22 = v28;
          }

LABEL_44:
          if (v22 < v26 && v27 <= 0xF)
          {
            break;
          }

          if (v22 < v26)
          {
            v32 = v20;
          }

          else
          {
            v32 = v20 + 1;
          }

          mdict_rehashd(selfCopy, v32);
          v20 = v9[1] >> 58;
          LODWORD(v22) = __NSDictionarySizes_0[v20];
        }

        v33 = *(v25 + 8 * v22);
        v34 = v25 + 8 * v26;
        v35 = v77;
        if ((v77 & 0x200000000000000) != 0)
        {
          [selfCopy willChangeValueForKey:key];
        }

        v36 = *(v34 + 8 * v22);
        if (v33 == &___NSDictionaryM_DeletedMarker || v33 == 0)
        {
          if ((v76 & 0x80000000) != 0)
          {
            keyCopy3 = [key copyWithZone:0];
          }

          else
          {
            keyCopy3 = key;
            if ((key & 0x8000000000000000) == 0)
            {
              keyCopy2 = key;
              keyCopy3 = key;
            }
          }

          *(v25 + 8 * v22) = keyCopy3;
          *(v34 + 8 * v22) = objectCopy;
          v44 = v9[1];
          v9[1] = v44 & 0xFE000000FFFFFFFFLL | ((((v44 + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
          if (__NSDictionaryCapacities_0[v20] < (((v44 + 0x100000000) >> 32) & 0x1FFFFFF))
          {
            mdict_rehashd(selfCopy, v20 + 1);
          }
        }

        else
        {
          *(v34 + 8 * v22) = objectCopy;
        }

        if ((v35 & 0x200000000000000) != 0)
        {
          [selfCopy didChangeValueForKey:key];
        }

        if (v36 >= 1)
        {
        }

        return;
      }

LABEL_23:
      objectCopy2 = object;
      goto LABEL_24;
    }

    goto LABEL_122;
  }

  CFLog(3, @"*** CFDictionarySetValue(): attempt to use this function to set a key which is not copyable into a non-CFDictionary via toll-free bridging", v14, v15, v16, v17, v18, v19, v75);
  v40 = v9[1];
  v41 = v40 >> 58;
  if (v40 >> 58)
  {
    LODWORD(v43) = __NSDictionarySizes_0[v41];
    if ((object & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

LABEL_74:
    objectCopy3 = object;
    goto LABEL_75;
  }

  v9[1] = v40 | 0x400000000000000;
  v42 = malloc_type_calloc(1uLL, 0x30uLL, 0x80040B8603338uLL);
  if (!v42)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  *v9 = v42;
  LODWORD(v41) = 1;
  LODWORD(v43) = 3;
  if ((object & 0x8000000000000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_75:
  v77 = v9[1];
  while (1)
  {
    v46 = *v9;
    v47 = v43;
    v48 = 0;
    v49 = [key hash] % v43;
    v43 = (v43 & 0xFFFFFFFE) != 0 ? v43 : 1;
    v50 = v47;
    while (1)
    {
      v51 = *(v46 + 8 * v49);
      if (!v51)
      {
        break;
      }

      if (v51 == &___NSDictionaryM_DeletedMarker)
      {
        ++v48;
        if (v50 == v47)
        {
          v50 = v49;
        }
      }

      else if (v51 == key || ([v51 isEqual:key] & 1) != 0)
      {
        v50 = v49;
        goto LABEL_95;
      }

      if (v49 + 1 >= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = 0;
      }

      v49 = v49 + 1 - v52;
      if (!--v43)
      {
        goto LABEL_95;
      }
    }

    if (v50 == v47)
    {
      v50 = v49;
    }

LABEL_95:
    if (v50 < v47 && v48 <= 0xF)
    {
      break;
    }

    if (v50 < v47)
    {
      v53 = v41;
    }

    else
    {
      v53 = v41 + 1;
    }

    mdict_rehashd(selfCopy, v53);
    v41 = v9[1] >> 58;
    LODWORD(v43) = __NSDictionarySizes_0[v41];
  }

  v54 = *(v46 + 8 * v50);
  v55 = v46 + 8 * v47;
  v56 = v77;
  if ((v77 & 0x200000000000000) != 0)
  {
    [selfCopy willChangeValueForKey:key];
  }

  v57 = *(v55 + 8 * v50);
  if (v54 == &___NSDictionaryM_DeletedMarker || v54 == 0)
  {
    if ((key & 0x8000000000000000) == 0)
    {
      keyCopy4 = key;
    }

    *(v46 + 8 * v50) = key;
    *(v55 + 8 * v50) = objectCopy;
    v60 = v9[1];
    v9[1] = v60 & 0xFE000000FFFFFFFFLL | ((((v60 + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
    if (__NSDictionaryCapacities_0[v41] < (((v60 + 0x100000000) >> 32) & 0x1FFFFFF))
    {
      mdict_rehashd(selfCopy, v41 + 1);
    }
  }

  else
  {
    *(v55 + 8 * v50) = objectCopy;
  }

  if ((v56 & 0x200000000000000) != 0)
  {
    [selfCopy didChangeValueForKey:key];
  }

  if (v57 >= 1)
  {
  }

  if (getenv("__setObject_throw_on_warning"))
  {
LABEL_123:
    objc_exception_throw([NSException exceptionWithName:@"NSInvalidArgumentException" reason:@"key should be copyable" userInfo:0]);
  }
}

- (void)setObservationInfo:(void *)info
{
  v12 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = atomic_load(&self->cow);
  mutations = self->storage.var0.var0.mutations;
  v8 = mutations;
  if (v6)
  {
    os_unfair_lock_lock(v6);
    if (!*(v6 + 6))
    {
      [__NSDictionaryM setObservationInfo:];
    }

    if (*(v6 + 6) != 1 || *(v6 + 4) != 0)
    {
      --*(v6 + 6);
      _cow_mutate_slow(self, v6, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v6);
    v8 = self->storage.var0.var0.mutations;
  }

  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v10 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v10 = 0;
  }

  self->storage.var0.var0.mutations = v10 | ((info != 0) << 57) | v8 & 0xFDFFFFFF80000000;
  v11.receiver = self;
  v11.super_class = __NSDictionaryM;
  [(__NSDictionaryM *)&v11 setObservationInfo:info];
}

- (void)__apply:(void *)__apply context:(void *)context
{
  if (!__apply)
  {
    v10 = __CFExceptionProem(self, a2);
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v10);
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
    objc_exception_throw(v12);
  }

  v4 = self->storage.var0.var0.mutations >> 58;
  if (v4)
  {
    v6 = v4;
    buffer = self->storage.buffer;
    if (LODWORD(__NSDictionarySizes_0[v6]) <= 1uLL)
    {
      v8 = 1;
    }

    else
    {
      v8 = LODWORD(__NSDictionarySizes_0[v6]);
    }

    do
    {
      if (*buffer)
      {
        v9 = *buffer == &___NSDictionaryM_DeletedMarker;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        (__apply)();
      }

      ++buffer;
      --v8;
    }

    while (v8);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v27 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
    if (objects)
    {
      goto LABEL_4;
    }
  }

  else if (objects)
  {
    goto LABEL_4;
  }

  if (count)
  {
    v16 = _os_log_pack_size();
    v19 = &v26 - ((MEMORY[0x1EEE9AC00](v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v19, v16, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v26, v27);
    *v20 = 136315394;
    *(v20 + 4) = "[__NSDictionaryM countByEnumeratingWithState:objects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSDictionaryM countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_23;
  }

LABEL_4:
  if (count >> 61)
  {
    v16 = _os_log_pack_size();
    v19 = &v26 - ((MEMORY[0x1EEE9AC00](v16, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill(v19, v16, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v26, v27);
    *v24 = 136315394;
    *(v24 + 4) = "[__NSDictionaryM countByEnumeratingWithState:objects:count:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = count;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSDictionaryM countByEnumeratingWithState:objects:count:]", count);
LABEL_23:
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v16];
    objc_exception_throw(v25);
  }

  var0 = state->var0;
  v11 = *(__NSDictionarySizes_0 + ((self->storage.var0.var0.mutations >> 55) & 0x1F8));
  if (!state->var0)
  {
    state->var2 = &self->storage.var0.var0.mutations;
  }

  if (var0 >= v11)
  {
    return 0;
  }

  buffer = self->storage.buffer;
  state->var1 = objects;
  result = 0;
  if (count)
  {
    do
    {
      v14 = buffer[var0];
      if (v14)
      {
        v15 = v14 == &___NSDictionaryM_DeletedMarker;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        objects[result++] = v14;
      }

      ++var0;
    }

    while (var0 < v11 && result < count);
  }

  state->var0 = var0;
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v24[7] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
    if (block)
    {
      goto LABEL_3;
    }

LABEL_14:
    v15 = _os_log_pack_size();
    v18 = &v22 - ((MEMORY[0x1EEE9AC00](v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v15, 0, &dword_1830E6000, "*** %s: block cannot be nil", v22);
    *v19 = 136315138;
    *(v19 + 4) = "[__NSDictionaryM enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSDictionaryM enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v15];
    objc_exception_throw(v21);
  }

  if (!block)
  {
    goto LABEL_14;
  }

LABEL_3:
  buffer = self->storage.buffer;
  mutations = self->storage.var0.var0.mutations;
  v10 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __mdict_enumerateKeysAndObjectsWithOptionsUsingBlock_block_invoke;
  v24[3] = &unk_1E6DD2980;
  v24[4] = block;
  v24[5] = buffer;
  v24[6] = &buffer[v10];
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 0, v10, v24) & 1) == 0)
  {
    v23 = 0;
    if (mutations >> 58)
    {
      v11 = 0;
      do
      {
        v12 = buffer[v11];
        if (v12)
        {
          v13 = v12 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = _CFAutoreleasePoolPush();
          __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v14);
        }

        ++v11;
      }

      while (v11 < v10);
    }
  }
}

- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test
{
  optionsCopy = options;
  v24 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  buffer = self->storage.buffer;
  mutations = self->storage.var0.var0.mutations;
  v10 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __mdict_keyOfEntryWithOptionsPassingTest_block_invoke;
  v19[3] = &unk_1E6DD29A8;
  v19[6] = buffer;
  v19[7] = &buffer[v10];
  v19[4] = test;
  v19[5] = &v20;
  if (__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 0, v10, v19))
  {
    v11 = atomic_load(v21 + 3);
  }

  else
  {
    v18 = 0;
    v11 = 0;
    if (mutations >> 58)
    {
      if (v10 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10;
      }

      do
      {
        v13 = *buffer;
        if (*buffer)
        {
          v14 = v13 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = buffer[v10];
          v16 = _CFAutoreleasePoolPush();
          if ((*(test + 2))(test, v13, v15, &v18))
          {
            v18 = 1;
            v11 = v13;
          }

          _CFAutoreleasePoolPop(v16);
          if (v18)
          {
            break;
          }
        }

        ++buffer;
        --v12;
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v20, 8);
  return v11;
}

- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test
{
  optionsCopy = options;
  v13[1] = *MEMORY[0x1E69E9840];
  if (!__cf_tsanReadFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v13[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[__NSDictionaryM keysOfEntriesWithOptions:passingTest:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[__NSDictionaryM keysOfEntriesWithOptions:passingTest:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!test)
  {
    goto LABEL_7;
  }

LABEL_3:

  return mdict_keysOfEntriesWithOptionsPassingTest(&self->storage, optionsCopy, test);
}

- (id)objectForKeyedSubscript:(id)subscript
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  p_storage = &self->storage;
  mutations = self->storage.var0.var0.mutations;
  if (!(mutations >> 58))
  {
    return 0;
  }

  v8 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = p_storage->buffer;
  v10 = [subscript hash] % v8;
  v11 = v8 <= 1 ? 1 : v8;
  v12 = v8;
  while (1)
  {
    v13 = buffer[v10];
    if (!v13)
    {
      break;
    }

    if (v13 == &___NSDictionaryM_DeletedMarker)
    {
      if (v12 == v8)
      {
        v12 = v10;
      }
    }

    else if (v13 == subscript || ([(state *)v13 isEqual:subscript]& 1) != 0)
    {
      v12 = v10;
      goto LABEL_23;
    }

    if (v10 + 1 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    v10 = v10 + 1 - v14;
    if (!--v11)
    {
      goto LABEL_23;
    }
  }

  if (v12 == v8)
  {
    v12 = v10;
  }

LABEL_23:
  if (v12 < v8)
  {
    return *(&buffer[v8] + v12);
  }

  else
  {
    return 0;
  }
}

- (void)removeEntriesWithOptions:(unint64_t)options passingTest:(id)test
{
  v22 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  v8 = atomic_load(&self->cow);
  mutations = self->storage.var0.var0.mutations;
  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v10 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSDictionaryM removeEntriesWithOptions:passingTest:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
    mutations = self->storage.var0.var0.mutations;
  }

  self->storage.var0.var0.mutations = mutations & 0xFFFFFFFF80000000 | v10;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(__NSDictionaryM *)self keysOfEntriesWithOptions:options passingTest:test];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(__NSDictionaryM *)self removeObjectForKey:*(*(&v18 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v14);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
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
  _cow_copy(self, 1, v10, __NSDictionary_cowCallbacks, v9, 1);
  return v9;
}

- (double)_clumpingFactor
{
  v23 = *MEMORY[0x1E69E9840];
  mutations = self->storage.var0.var0.mutations;
  v4 = HIDWORD(mutations) & 0x1FFFFFF;
  if ((mutations & 0x1FFFFFE00000000) != 0)
  {
    v5 = HIDWORD(mutations) & 0x1FFFFFF;
  }

  else
  {
    v5 = 1;
  }

  v6 = (MEMORY[0x1EEE9AC00])(v5, a2);
  v8 = &v22 - v7;
  v10 = *(__NSDictionarySizes_0 + ((v9 >> 55) & 0x1F8));
  v22 = 0;
  if (v4 >= 0x101)
  {
    v8 = _CFCreateArrayStorage(v6, 0, &v22);
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  [(__NSDictionaryM *)self getObjects:0 andKeys:v8 count:v4, v22, v23];
  v12 = 0.0;
  if (v4 >= 2)
  {
    v13 = malloc_type_malloc(8 * v4 + 8, 0x100004000313F17uLL);
    for (i = 0; i != v4; ++i)
    {
      v13[i] = [*&v8[i * 8] hash] % v10;
    }

    qsort(v13, v4, 8uLL, _compare_clumpiness_2);
    v13[v4] = *v13 + v10;
    v15 = v10 / v4;
    v16 = v13 + 1;
    v17 = v4;
    v18 = 0.0;
    do
    {
      v19 = *v16 - *(v16 - 1);
      if (v15 <= v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v15 - v19;
      }

      v18 = v18 + v20 * v20;
      ++v16;
      --v17;
    }

    while (v17);
    free(v13);
    v12 = v18 * v4 * v4 / (v10 * v10) / (v4 - 1);
  }

  free(v11);
  return v12;
}

- (double)_clumpingInterestingThreshold
{
  mutations = self->storage.var0.var0.mutations;
  v3 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  return 1.0 - (2 * (HIDWORD(mutations) & 0x1FFFFFF)) / v3 + ((HIDWORD(mutations) & 0x1FFFFFF) * (HIDWORD(mutations) & 0x1FFFFFF)) / v3 / v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    v3 = v4;
    v17 = OUTLINED_FUNCTION_0_27();
    v18(v17);
    if (__cf_tsanReadFunction)
    {
      v19 = OUTLINED_FUNCTION_0_27();
      v20(v19);
    }
  }

  if (![(__NSDictionaryM *)self count])
  {
    return &__NSDictionary0__struct;
  }

  OUTLINED_FUNCTION_3_8();
  if (!v6)
  {
    v7 = OUTLINED_FUNCTION_2_10();
    v9 = _cow_create(v7, v8);
    v10 = 0;
    atomic_compare_exchange_strong(v3, &v10, v9);
    if (v10)
    {
      free(v9);
    }
  }

  v11 = objc_opt_self();
  __CFAllocateObject(v11, 0);
  OUTLINED_FUNCTION_1_20();
  v12 = OUTLINED_FUNCTION_2_10();
  _cow_copy(v12, v13, v14, v15, v3, 0);
  return v3;
}

@end