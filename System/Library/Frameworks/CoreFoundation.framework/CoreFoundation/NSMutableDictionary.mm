@interface NSMutableDictionary
+ (NSMutableDictionary)dictionaryWithCapacity:(NSUInteger)numItems;
+ (NSMutableDictionary)dictionaryWithSharedKeySet:(id)keyset;
- (NSMutableDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)__addObject:(id)object forKey:(id)key;
- (void)__setObject:(id)object forKey:(id)key;
- (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary;
- (void)addObject:(id)object forKey:(id)key;
- (void)addObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)addObjects:(id)objects forKeys:(id)keys;
- (void)invert;
- (void)removeAllObjects;
- (void)removeEntriesInDictionary:(id)dictionary;
- (void)removeEntriesPassingTest:(id)test;
- (void)removeEntriesWithOptions:(unint64_t)options passingTest:(id)test;
- (void)removeKeysForObject:(id)object;
- (void)removeObjectForKey:(id)aKey;
- (void)removeObjectsForKeys:(NSArray *)keyArray;
- (void)replaceObject:(id)object forKey:(id)key;
- (void)replaceObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)replaceObjects:(id)objects forKeys:(id)keys;
- (void)setDictionary:(NSDictionary *)otherDictionary;
- (void)setEntriesFromDictionary:(id)dictionary;
- (void)setObject:(id)anObject forKey:(id)aKey;
- (void)setObject:(id)obj forKeyedSubscript:(id)key;
- (void)setObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)setObjects:(id)objects forKeys:(id)keys;
@end

@implementation NSMutableDictionary

- (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!otherDictionary)
    {
      goto LABEL_4;
    }
  }

  else if (!otherDictionary)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSDictionary(otherDictionary) & 1) == 0)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: dictionary argument is not an NSDictionary", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableDictionary addEntriesFromDictionary:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSMutableDictionary addEntriesFromDictionary:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  if (self != otherDictionary)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(NSDictionary *)otherDictionary countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(otherDictionary);
          }

          [(NSMutableDictionary *)self setObject:[(NSDictionary *)otherDictionary objectForKey:*(*(&v15 + 1) + 8 * i)] forKey:*(*(&v15 + 1) + 8 * i)];
        }

        v7 = [(NSDictionary *)otherDictionary countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)addObject:(id)object forKey:(id)key
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = _os_log_pack_size();
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: object cannot be nil", v14[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableDictionary addObject:forKey:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableDictionary addObject:forKey:]");
    goto LABEL_11;
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!object)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!key)
  {
    v8 = _os_log_pack_size();
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: key cannot be nil", v14[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary addObject:forKey:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSMutableDictionary addObject:forKey:]");
LABEL_11:
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v13);
  }

  if (![(NSDictionary *)self objectForKey:key])
  {

    [(NSMutableDictionary *)self setObject:object forKey:key];
  }
}

- (void)addObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v23 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableDictionary);
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
    goto LABEL_22;
  }

LABEL_4:
  if (count >> 61)
  {
    v16 = _os_log_pack_size();
    v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v22, v23);
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableDictionary addObjects:forKeys:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = count;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableDictionary addObjects:forKeys:count:]", count);
    goto LABEL_23;
  }

  if (!count)
  {
    return;
  }

  v10 = 0;
  do
  {
    if (!objects[v10])
    {
LABEL_19:
      v11 = _os_log_pack_size();
      v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]");
      *v13 = 136315394;
      *(v13 + 4) = "[NSMutableDictionary addObjects:forKeys:count:]";
      *(v13 + 12) = 2048;
      *(v13 + 14) = v10;
      v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableDictionary addObjects:forKeys:count:]", v10);
      v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
      objc_exception_throw(v15);
    }

    ++v10;
  }

  while (count != v10);
  if (!keys)
  {
LABEL_22:
    v16 = _os_log_pack_size();
    v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu");
    *v20 = 136315394;
    *(v20 + 4) = "[NSMutableDictionary addObjects:forKeys:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableDictionary addObjects:forKeys:count:]", count);
LABEL_23:
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v16];
    objc_exception_throw(v21);
  }

  v10 = 0;
  do
  {
    if (!keys[v10])
    {
      goto LABEL_19;
    }

    ++v10;
  }

  while (count != v10);
  do
  {
    if (![(NSDictionary *)self objectForKey:*keys])
    {
      [(NSMutableDictionary *)self setObject:*objects forKey:*keys];
    }

    ++objects;
    ++keys;
    --count;
  }

  while (count);
}

- (void)addObjects:(id)objects forKeys:(id)keys
{
  v19[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: objects argument is not an NSArray", v19[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableDictionary addObjects:forKeys:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: objects argument is not an NSArray", "[NSMutableDictionary addObjects:forKeys:]");
    goto LABEL_16;
  }

LABEL_4:
  if (keys && (_NSIsNSArray(keys) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: keys argument is not an NSArray", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableDictionary addObjects:forKeys:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: keys argument is not an NSArray", "[NSMutableDictionary addObjects:forKeys:]");
LABEL_16:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v18);
  }

  v8 = [objects count];
  v9 = [keys count];
  if (v8 != v9)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of objects (%lu) differs from count of keys (%lu)", "[NSMutableDictionary addObjects:forKeys:]", v8, v9);
  }

  v10 = [objects count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      -[NSMutableDictionary addObject:forKey:](self, "addObject:forKey:", [objects objectAtIndex:i], objc_msgSend(keys, "objectAtIndex:", i));
    }
  }
}

- (void)invert
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  allKeys = [(NSDictionary *)self allKeys];
  allValues = [(NSDictionary *)self allValues];
  [(NSMutableDictionary *)self removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSArray *)allKeys countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        [(NSMutableDictionary *)self setObject:*(*(&v12 + 1) + 8 * v10++) forKey:[(NSArray *)allValues objectAtIndex:v8++]];
      }

      while (v7 != v10);
      v7 = [(NSArray *)allKeys countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }
}

- (void)removeAllObjects
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self count];
  v7 = v4;
  if (v4 >> 60)
  {
    v14 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4);
    v15 = [NSException exceptionWithName:@"NSGenericException" reason:v14 userInfo:0];
    CFRelease(v14);
    objc_exception_throw(v15);
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v4, v5, v6);
  v10 = v16 - v9;
  v16[0] = 0;
  if (v7 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, v16);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [(NSDictionary *)self getObjects:0 andKeys:v10 count:v7, v16[0]];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v13 = [(NSDictionary *)self countForKey:*&v10[8 * i]]+ 1;
      while (--v13)
      {
        [(NSMutableDictionary *)self removeObjectForKey:*&v10[8 * i]];
      }
    }
  }

  free(v11);
}

- (void)removeEntriesInDictionary:(id)dictionary
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!dictionary)
    {
      goto LABEL_4;
    }
  }

  else if (!dictionary)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSDictionary(dictionary) & 1) == 0)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: dictionary argument is not an NSDictionary", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableDictionary removeEntriesInDictionary:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSMutableDictionary removeEntriesInDictionary:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  if (self == dictionary)
  {

    [(NSMutableDictionary *)self removeAllObjects];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [dictionary countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(dictionary);
          }

          [(NSMutableDictionary *)self removeObjectForKey:*(*(&v15 + 1) + 8 * i)];
        }

        v7 = [dictionary countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)removeEntriesWithOptions:(unint64_t)options passingTest:(id)test
{
  optionsCopy = options;
  v30 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill(&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v18);
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableDictionary removeEntriesWithOptions:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableDictionary removeEntriesWithOptions:passingTest:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
    objc_exception_throw(v17);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!test)
  {
    goto LABEL_12;
  }

LABEL_3:
  __NSDictionaryParameterCheckIterate(self, a2, test);
  v9 = +[(NSSet *)NSMutableSet];
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v29 = 0;
  v25 = 850045857;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__NSMutableDictionary_removeEntriesWithOptions_passingTest___block_invoke;
  v19[3] = &unk_1E6D82458;
  v19[5] = test;
  v19[6] = &v25;
  v19[4] = v9;
  __NSDictionaryEnumerate(self, optionsCopy & 0xFD, v19);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSMutableDictionary *)self removeObjectForKey:*(*(&v21 + 1) + 8 * i)];
      }

      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v11);
  }
}

uint64_t __60__NSMutableDictionary_removeEntriesWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    pthread_mutex_lock(*(a1 + 48));
    [*(a1 + 32) addObject:a2];
    v5 = *(a1 + 48);

    return pthread_mutex_unlock(v5);
  }

  return result;
}

- (void)removeEntriesPassingTest:(id)test
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!__cf_tsanWriteFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSMutableDictionary removeEntriesPassingTest:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableDictionary removeEntriesPassingTest:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  if (!test)
  {
    goto LABEL_7;
  }

LABEL_3:

  [(NSMutableDictionary *)self removeEntriesWithOptions:0 passingTest:test];
}

- (void)removeKeysForObject:(id)object
{
  v26 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = +[(NSArray *)NSMutableArray];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(NSDictionary *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(self);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([(NSDictionary *)self objectForKey:v11]== object)
        {
          [(NSArray *)v6 addObject:v11];
        }
      }

      v8 = [(NSDictionary *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableDictionary *)self removeObjectForKey:*(*(&v17 + 1) + 8 * j)];
      }

      v13 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v13);
  }
}

- (void)removeObjectsForKeys:(NSArray *)keyArray
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!keyArray)
    {
      goto LABEL_4;
    }
  }

  else if (!keyArray)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(keyArray) & 1) == 0)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableDictionary removeObjectsForKeys:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableDictionary removeObjectsForKeys:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSArray *)keyArray countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(keyArray);
        }

        [(NSMutableDictionary *)self removeObjectForKey:*(*(&v15 + 1) + 8 * i)];
      }

      v7 = [(NSArray *)keyArray countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)replaceObject:(id)object forKey:(id)key
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = _os_log_pack_size();
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: object cannot be nil", v14[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableDictionary replaceObject:forKey:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableDictionary replaceObject:forKey:]");
    goto LABEL_12;
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!object)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!key)
  {
    v8 = _os_log_pack_size();
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: key cannot be nil", v14[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary replaceObject:forKey:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSMutableDictionary replaceObject:forKey:]");
LABEL_12:
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v13);
  }

  if ([(NSDictionary *)self objectForKey:key])
  {

    [(NSMutableDictionary *)self setObject:object forKey:key];
  }
}

- (void)replaceObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v26 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableDictionary);
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
    goto LABEL_20;
  }

LABEL_4:
  if (count >> 61)
  {
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v21 = 136315394;
    *(v21 + 4) = "[NSMutableDictionary replaceObjects:forKeys:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableDictionary replaceObjects:forKeys:count:]", count);
    goto LABEL_21;
  }

  if (!count)
  {
    return;
  }

  v10 = 0;
  do
  {
    if (!objects[v10])
    {
LABEL_17:
      v14 = _os_log_pack_size();
      v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]");
      *v16 = 136315394;
      *(v16 + 4) = "[NSMutableDictionary replaceObjects:forKeys:count:]";
      *(v16 + 12) = 2048;
      *(v16 + 14) = v10;
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableDictionary replaceObjects:forKeys:count:]", v10);
      v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
      objc_exception_throw(v18);
    }

    ++v10;
  }

  while (count != v10);
  if (!keys)
  {
LABEL_20:
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu");
    *v23 = 136315394;
    *(v23 + 4) = "[NSMutableDictionary replaceObjects:forKeys:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableDictionary replaceObjects:forKeys:count:]", count);
LABEL_21:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v19];
    objc_exception_throw(v24);
  }

  v10 = 0;
  do
  {
    if (!keys[v10])
    {
      goto LABEL_17;
    }

    ++v10;
  }

  while (count != v10);
  do
  {
    v12 = *objects++;
    v11 = v12;
    v13 = *keys++;
    [(NSMutableDictionary *)self replaceObject:v11 forKey:v13];
    --count;
  }

  while (count);
}

- (void)replaceObjects:(id)objects forKeys:(id)keys
{
  v19[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: objects argument is not an NSArray", v19[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableDictionary replaceObjects:forKeys:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: objects argument is not an NSArray", "[NSMutableDictionary replaceObjects:forKeys:]");
    goto LABEL_16;
  }

LABEL_4:
  if (keys && (_NSIsNSArray(keys) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: keys argument is not an NSArray", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableDictionary replaceObjects:forKeys:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: keys argument is not an NSArray", "[NSMutableDictionary replaceObjects:forKeys:]");
LABEL_16:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v18);
  }

  v8 = [objects count];
  v9 = [keys count];
  if (v8 != v9)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of objects (%lu) differs from count of keys (%lu)", "[NSMutableDictionary replaceObjects:forKeys:]", v8, v9);
  }

  v10 = [objects count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      -[NSMutableDictionary replaceObject:forKey:](self, "replaceObject:forKey:", [objects objectAtIndex:i], objc_msgSend(keys, "objectAtIndex:", i));
    }
  }
}

- (void)setEntriesFromDictionary:(id)dictionary
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!dictionary)
    {
      goto LABEL_4;
    }
  }

  else if (!dictionary)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSDictionary(dictionary) & 1) == 0)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: dictionary argument is not an NSDictionary", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableDictionary setEntriesFromDictionary:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSMutableDictionary setEntriesFromDictionary:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  if (self != dictionary)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [dictionary countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(dictionary);
          }

          -[NSMutableDictionary setObject:forKey:](self, "setObject:forKey:", [dictionary objectForKey:*(*(&v15 + 1) + 8 * i)], *(*(&v15 + 1) + 8 * i));
        }

        v7 = [dictionary countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setObject:(id)obj forKeyedSubscript:(id)key
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  if (obj)
  {

    [(NSMutableDictionary *)self setObject:obj forKey:key];
  }

  else
  {

    [(NSMutableDictionary *)self removeObjectForKey:key];
  }
}

- (void)setObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v26 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableDictionary);
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
    goto LABEL_20;
  }

LABEL_4:
  if (count >> 61)
  {
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v21 = 136315394;
    *(v21 + 4) = "[NSMutableDictionary setObjects:forKeys:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableDictionary setObjects:forKeys:count:]", count);
    goto LABEL_21;
  }

  if (!count)
  {
    return;
  }

  v10 = 0;
  do
  {
    if (!objects[v10])
    {
LABEL_17:
      v14 = _os_log_pack_size();
      v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]");
      *v16 = 136315394;
      *(v16 + 4) = "[NSMutableDictionary setObjects:forKeys:count:]";
      *(v16 + 12) = 2048;
      *(v16 + 14) = v10;
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableDictionary setObjects:forKeys:count:]", v10);
      v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
      objc_exception_throw(v18);
    }

    ++v10;
  }

  while (count != v10);
  if (!keys)
  {
LABEL_20:
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu");
    *v23 = 136315394;
    *(v23 + 4) = "[NSMutableDictionary setObjects:forKeys:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableDictionary setObjects:forKeys:count:]", count);
LABEL_21:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v19];
    objc_exception_throw(v24);
  }

  v10 = 0;
  do
  {
    if (!keys[v10])
    {
      goto LABEL_17;
    }

    ++v10;
  }

  while (count != v10);
  do
  {
    v12 = *objects++;
    v11 = v12;
    v13 = *keys++;
    [(NSMutableDictionary *)self setObject:v11 forKey:v13];
    --count;
  }

  while (count);
}

- (void)setObjects:(id)objects forKeys:(id)keys
{
  v17[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: objects argument is not an NSArray", v17[0]);
    *v13 = 136315138;
    *(v13 + 4) = "[NSMutableDictionary setObjects:forKeys:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: objects argument is not an NSArray", "[NSMutableDictionary setObjects:forKeys:]");
    goto LABEL_16;
  }

LABEL_4:
  if (keys && (_NSIsNSArray(keys) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: keys argument is not an NSArray", v17[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableDictionary setObjects:forKeys:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: keys argument is not an NSArray", "[NSMutableDictionary setObjects:forKeys:]");
LABEL_16:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v16);
  }

  v8 = [objects count];
  v9 = [keys count];
  if (v8 != v9)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of objects (%lu) differs from count of keys (%lu)", "[NSMutableDictionary setObjects:forKeys:]", v8, v9);
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      -[NSMutableDictionary setObject:forKey:](self, "setObject:forKey:", [objects objectAtIndex:i], objc_msgSend(keys, "objectAtIndex:", i));
    }
  }
}

- (void)setDictionary:(NSDictionary *)otherDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!otherDictionary)
    {
      goto LABEL_4;
    }
  }

  else if (!otherDictionary)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSDictionary(otherDictionary) & 1) == 0)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: dictionary argument is not an NSDictionary", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableDictionary setDictionary:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSMutableDictionary setDictionary:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  if (self != otherDictionary)
  {
    [(NSMutableDictionary *)self removeAllObjects];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(NSDictionary *)otherDictionary countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(otherDictionary);
          }

          [(NSMutableDictionary *)self setObject:[(NSDictionary *)otherDictionary objectForKey:*(*(&v15 + 1) + 8 * i)] forKey:*(*(&v15 + 1) + 8 * i)];
        }

        v7 = [(NSDictionary *)otherDictionary countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)__addObject:(id)object forKey:(id)key
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = _os_log_pack_size();
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: object cannot be nil", v14[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableDictionary __addObject:forKey:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableDictionary __addObject:forKey:]");
    goto LABEL_11;
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!object)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!key)
  {
    v8 = _os_log_pack_size();
    v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: key cannot be nil", v14[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary __addObject:forKey:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSMutableDictionary __addObject:forKey:]");
LABEL_11:
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v13);
  }

  if (![(NSDictionary *)self objectForKey:key])
  {

    [(NSMutableDictionary *)self __setObject:object forKey:key];
  }
}

- (void)__setObject:(id)object forKey:(id)key
{
  v20[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: object cannot be nil", v20[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableDictionary __setObject:forKey:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableDictionary __setObject:forKey:]");
    goto LABEL_12;
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!object)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!key)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: key cannot be nil", v20[0]);
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableDictionary __setObject:forKey:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSMutableDictionary __setObject:forKey:]");
LABEL_12:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    CFLog(3, @"*** CFDictionarySetValue(): attempt to use this function to set a key which is not copyable into a non-CFDictionary via toll-free bridging", v8, v9, v10, v11, v12, v13, v20[0]);
  }

  [(NSMutableDictionary *)self setObject:object forKey:key];
}

- (NSMutableDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  countCopy = count;
  keysCopy = keys;
  objectsCopy = objects;
  v26 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    goto LABEL_21;
  }

  if (count >> 61)
  {
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v21 = 136315394;
    *(v21 + 4) = "[NSMutableDictionary initWithObjects:forKeys:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = countCopy;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableDictionary initWithObjects:forKeys:count:]", countCopy);
    goto LABEL_22;
  }

  if (!count)
  {

    return [(NSMutableDictionary *)self initWithCapacity:0];
  }

  for (i = 0; i != count; ++i)
  {
    if (!objects[i])
    {
LABEL_18:
      v14 = _os_log_pack_size();
      v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]");
      *v16 = 136315394;
      *(v16 + 4) = "[NSMutableDictionary initWithObjects:forKeys:count:]";
      *(v16 + 12) = 2048;
      *(v16 + 14) = i;
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableDictionary initWithObjects:forKeys:count:]", i);
      v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
      objc_exception_throw(v18);
    }
  }

  if (!keys)
  {
LABEL_21:
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu");
    *v23 = 136315394;
    *(v23 + 4) = "[NSMutableDictionary initWithObjects:forKeys:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = countCopy;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableDictionary initWithObjects:forKeys:count:]", countCopy);
LABEL_22:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v19];
    objc_exception_throw(v24);
  }

  for (i = 0; i != count; ++i)
  {
    if (!keys[i])
    {
      goto LABEL_18;
    }
  }

  v9 = [(NSMutableDictionary *)self initWithCapacity:count];
  do
  {
    v11 = *objectsCopy++;
    v10 = v11;
    v12 = *keysCopy++;
    [(NSMutableDictionary *)v9 setObject:v10 forKey:v12];
    --countCopy;
  }

  while (countCopy);
  return v9;
}

+ (NSMutableDictionary)dictionaryWithCapacity:(NSUInteger)numItems
{
  v3 = [[self alloc] initWithCapacity:numItems];

  return v3;
}

+ (NSMutableDictionary)dictionaryWithSharedKeySet:(id)keyset
{
  if (!keyset)
  {
    v10 = __CFExceptionProem(self, a2);
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keyset cannot be nil", v10);
    goto LABEL_12;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = __CFExceptionProem(self, a2);
    v11 = objc_opt_class();
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keyset must be an object created by +sharedKeySetForKeys: instead of '%@'", v8, v11);
LABEL_12:
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
    objc_exception_throw(v9);
  }

  if ([keyset isEmpty])
  {

    return [NSMutableDictionary dictionaryWithCapacity:0];
  }

  else
  {

    return [NSSharedKeyDictionary sharedKeyDictionaryWithKeySet:keyset];
  }
}

- (void)removeObjectForKey:(id)aKey
{
  v5 = __CFLookUpClass("NSMutableDictionary");

  __CFRequireConcreteImplementation(v5, self, a2);
}

- (void)setObject:(id)anObject forKey:(id)aKey
{
  v6 = __CFLookUpClass("NSMutableDictionary");

  __CFRequireConcreteImplementation(v6, self, a2);
}

@end