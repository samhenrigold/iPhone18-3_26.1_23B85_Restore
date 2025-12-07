@interface __NSFrozenDictionaryM
- (id)keyEnumerator;
- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test;
- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__apply:(void *)__apply context:(void *)context;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
@end

@implementation __NSFrozenDictionaryM

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 4))
    {
      [__NSFrozenDictionaryM dealloc];
    }

    v4 = *(v3 + 6);
    v5 = *(v3 + 4) - 1;
    *(v3 + 4) = v5;
    v6 = (v4 | v5);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      cow_cleanup(self, 0);
      free(v3);
    }
  }

  else
  {
    cow_cleanup(self, 0);
  }

  v7.receiver = self;
  v7.super_class = __NSFrozenDictionaryM;
  [(__NSFrozenDictionaryM *)&v7 dealloc];
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
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
  _cow_copy(self, 0, v9, __NSDictionary_cowCallbacks, v8, 1);
  return v8;
}

- (id)keyEnumerator
{
  v2 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v2;
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = count >> 61;
  if (objects && v5 || keys && v5)
  {
    v16 = _os_log_pack_size();
    v19 = v23 - ((MEMORY[0x1EEE9AC00](v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v19, v16, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous");
    *v20 = 136315394;
    *(v20 + 4) = "[__NSFrozenDictionaryM getObjects:andKeys:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSFrozenDictionaryM getObjects:andKeys:count:]", count);
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v16];
    objc_exception_throw(v22);
  }

  mutations = self->storage.var0.var0.mutations;
  v7 = mutations >> 58;
  countCopy = HIDWORD(mutations) & 0x1FFFFFF;
  if (countCopy >= count)
  {
    countCopy = count;
  }

  if (v7)
  {
    v9 = countCopy == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = LODWORD(__NSDictionarySizes_0[v7]);
    buffer = self->storage.buffer;
    v12 = 1;
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
        if (keys)
        {
          *keys++ = v13;
        }

        if (objects)
        {
          *objects++ = buffer[v10];
        }

        --countCopy;
      }

      if (v12 >= v10)
      {
        break;
      }

      ++buffer;
      ++v12;
    }

    while (countCopy);
  }
}

- (id)objectForKey:(id)key
{
  mutations = self->storage.var0.var0.mutations;
  if (!(mutations >> 58))
  {
    return 0;
  }

  v6 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = self->storage.buffer;
  v8 = [key hash] % v6;
  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v6;
  while (1)
  {
    v11 = buffer[v8];
    if (!v11)
    {
      break;
    }

    if (v11 == &___NSDictionaryM_DeletedMarker)
    {
      if (v10 == v6)
      {
        v10 = v8;
      }
    }

    else if (v11 == key || ([(state *)v11 isEqual:key]& 1) != 0)
    {
      v10 = v8;
      goto LABEL_22;
    }

    if (v8 + 1 >= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v8 = v8 + 1 - v12;
    if (!--v9)
    {
      goto LABEL_22;
    }
  }

  if (v10 == v6)
  {
    v10 = v8;
  }

LABEL_22:
  if (v10 >= v6)
  {
    return 0;
  }

  else
  {
    return *(&buffer[v6] + v10);
  }
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
  v24 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v12 = _os_log_pack_size();
    v15 = &v23 - ((MEMORY[0x1EEE9AC00](v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v12, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v23, v24);
    *v16 = 136315394;
    *(v16 + 4) = "[__NSFrozenDictionaryM countByEnumeratingWithState:objects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSFrozenDictionaryM countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_20;
  }

  if (count >> 61)
  {
    v12 = _os_log_pack_size();
    v15 = &v23 - ((MEMORY[0x1EEE9AC00](v12, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v15, v12, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v23, v24);
    *v21 = 136315394;
    *(v21 + 4) = "[__NSFrozenDictionaryM countByEnumeratingWithState:objects:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSFrozenDictionaryM countByEnumeratingWithState:objects:count:]", count);
LABEL_20:
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v12];
    objc_exception_throw(v22);
  }

  var0 = state->var0;
  v6 = *(__NSDictionarySizes_0 + ((self->storage.var0.var0.mutations >> 55) & 0x1F8));
  if (!state->var0)
  {
    state->var2 = &mdict_countByEnumeratingWithStateObjectsCount_const_mu;
  }

  if (var0 >= v6)
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
      v9 = buffer[var0];
      if (v9)
      {
        v10 = v9 == &___NSDictionaryM_DeletedMarker;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        objects[result++] = v9;
      }

      ++var0;
    }

    while (var0 < v6 && result < count);
  }

  state->var0 = var0;
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v21[7] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v12 = _os_log_pack_size();
    v15 = &v19 - ((MEMORY[0x1EEE9AC00](v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v12, 0, &dword_1830E6000, "*** %s: block cannot be nil", v19);
    *v16 = 136315138;
    *(v16 + 4) = "[__NSFrozenDictionaryM enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSFrozenDictionaryM enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v12];
    objc_exception_throw(v18);
  }

  buffer = self->storage.buffer;
  mutations = self->storage.var0.var0.mutations;
  v7 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __mdict_enumerateKeysAndObjectsWithOptionsUsingBlock_block_invoke;
  v21[3] = &unk_1E6DD2980;
  v21[4] = block;
  v21[5] = buffer;
  v21[6] = &buffer[v7];
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(options, 0, v7, v21) & 1) == 0)
  {
    v20 = 0;
    if (mutations >> 58)
    {
      v8 = 0;
      do
      {
        v9 = buffer[v8];
        if (v9)
        {
          v10 = v9 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = _CFAutoreleasePoolPush();
          __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v11);
        }

        ++v8;
      }

      while (v8 < v7);
    }
  }
}

- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test
{
  v21 = *MEMORY[0x1E69E9840];
  buffer = self->storage.buffer;
  mutations = self->storage.var0.var0.mutations;
  v7 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __mdict_keyOfEntryWithOptionsPassingTest_block_invoke;
  v16[3] = &unk_1E6DD29A8;
  v16[6] = buffer;
  v16[7] = &buffer[v7];
  v16[4] = test;
  v16[5] = &v17;
  if (__NSCollectionHandleConcurrentEnumerationIfSpecified(options, 0, v7, v16))
  {
    v8 = atomic_load(v18 + 3);
  }

  else
  {
    v15 = 0;
    if (mutations >> 58)
    {
      v8 = 0;
      if (v7 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      do
      {
        v10 = *buffer;
        if (*buffer)
        {
          v11 = v10 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = buffer[v7];
          v13 = _CFAutoreleasePoolPush();
          if ((*(test + 2))(test, v10, v12, &v15))
          {
            v15 = 1;
            v8 = v10;
          }

          _CFAutoreleasePoolPop(v13);
          if (v15)
          {
            break;
          }
        }

        ++buffer;
        --v9;
      }

      while (v9);
    }

    else
    {
      v8 = 0;
    }
  }

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[__NSFrozenDictionaryM keysOfEntriesWithOptions:passingTest:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[__NSFrozenDictionaryM keysOfEntriesWithOptions:passingTest:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  p_storage = &self->storage;

  return mdict_keysOfEntriesWithOptionsPassingTest(p_storage, options, test);
}

- (id)objectForKeyedSubscript:(id)subscript
{
  mutations = self->storage.var0.var0.mutations;
  if (!(mutations >> 58))
  {
    return 0;
  }

  v6 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = self->storage.buffer;
  v8 = [subscript hash] % v6;
  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v6;
  while (1)
  {
    v11 = buffer[v8];
    if (!v11)
    {
      break;
    }

    if (v11 == &___NSDictionaryM_DeletedMarker)
    {
      if (v10 == v6)
      {
        v10 = v8;
      }
    }

    else if (v11 == subscript || ([(state *)v11 isEqual:subscript]& 1) != 0)
    {
      v10 = v8;
      goto LABEL_22;
    }

    if (v8 + 1 >= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v8 = v8 + 1 - v12;
    if (!--v9)
    {
      goto LABEL_22;
    }
  }

  if (v10 == v6)
  {
    v10 = v8;
  }

LABEL_22:
  if (v10 >= v6)
  {
    return 0;
  }

  else
  {
    return *(&buffer[v6] + v10);
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
  _cow_copy(self, 0, v10, __NSDictionary_cowCallbacks, v9, 1);
  return v9;
}

@end