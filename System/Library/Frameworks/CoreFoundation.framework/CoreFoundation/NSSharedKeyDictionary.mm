@interface NSSharedKeyDictionary
+ (id)sharedKeyDictionaryWithKeySet:(id)set;
- (NSSharedKeyDictionary)initWithCoder:(id)coder;
- (NSSharedKeyDictionary)initWithKeySet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObservationInfo:(void *)info;
@end

@implementation NSSharedKeyDictionary

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  values = self->_values;
  if (values)
  {
    v4 = [(NSSharedKeySet *)self->_keyMap count];
    if (v4)
    {
      v5 = v4;
      do
      {
        if ((*values & 0x8000000000000000) == 0)
        {
        }

        ++values;
        --v5;
      }

      while (v5);
    }

    free(self->_values);
  }

  keyMap = self->_keyMap;
  if (keyMap >= 1)
  {
  }

  sideDic = self->_sideDic;
  if (sideDic >= 1)
  {
  }

  v8.receiver = self;
  v8.super_class = NSSharedKeyDictionary;
  [(NSSharedKeyDictionary *)&v8 dealloc];
}

- (unint64_t)count
{
  count = self->_count;
  sideDic = self->_sideDic;
  if (sideDic)
  {
    sideDic = [(NSDictionary *)sideDic count];
  }

  return sideDic + count;
}

- (id)objectForKey:(id)key
{
  if (key)
  {
    keyMap = self->_keyMap;
    if (keyMap)
    {
      v6 = (self->_ifkIMP)(keyMap, sel_indexForKey_, key);
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return self->_values[v6];
      }
    }
  }

  sideDic = self->_sideDic;

  return [(NSDictionary *)sideDic objectForKey:key];
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = count >> 61;
  if (objects && v9 || keys && v9)
  {
    v18 = _os_log_pack_size();
    v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v19, v18, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous");
    *v20 = 136315394;
    *(v20 + 4) = "[NSSharedKeyDictionary getObjects:andKeys:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSharedKeyDictionary getObjects:andKeys:count:]", count);
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v18];
    objc_exception_throw(v22);
  }

  sideDic = self->_sideDic;
  if (sideDic)
  {
    v11 = [(NSDictionary *)sideDic count];
    sideDic = self->_sideDic;
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v11;
  }

  [(NSDictionary *)sideDic getObjects:objects andKeys:keys count:countCopy];
  v13 = count - countCopy;
  if (count != countCopy)
  {
    v14 = [(NSSharedKeySet *)self->_keyMap count];
    if (v14)
    {
      if (keys)
      {
        v15 = &keys[countCopy];
      }

      else
      {
        v15 = 0;
      }

      if (objects)
      {
        v16 = &objects[countCopy];
      }

      else
      {
        v16 = 0;
      }

      v17 = v14 - 1;
      do
      {
        if (self->_values[v17])
        {
          if (v15)
          {
            *v15++ = [(NSSharedKeySet *)self->_keyMap keyAtIndex:v17];
          }

          if (v16)
          {
            *v16++ = self->_values[v17];
          }

          if (!--v13)
          {
            break;
          }
        }

        --v17;
      }

      while (v17 != -1);
    }
  }
}

- (id)keyEnumerator
{
  v17[1] = *MEMORY[0x1E69E9840];
  count = self->_count;
  sideDic = self->_sideDic;
  if (sideDic)
  {
    sideDic = [(NSDictionary *)sideDic count];
  }

  v5 = sideDic + count;
  if (v5 >> 60)
  {
    v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
    v16 = [NSException exceptionWithName:@"NSGenericException" reason:v15 userInfo:0];
    CFRelease(v15);
    objc_exception_throw(v16);
  }

  v17[0] = 0;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = _CFCreateArrayStorage(v6, 0, v17);
  [(NSSharedKeyDictionary *)self getObjects:0 andKeys:v7 count:v5];
  if (v7)
  {
    if (v5)
    {
      v8 = v7;
      v9 = v5;
      do
      {
        v10 = *v8++;
        --v9;
      }

      while (v9);
    }

    v11 = [[NSArray alloc] _initByAdoptingBuffer:v7 count:v5 size:v5];
  }

  else
  {
    v11 = [[NSArray alloc] initWithObjects:0 count:v5];
  }

  v12 = v11;
  objectEnumerator = [(NSArray *)v11 objectEnumerator];

  return objectEnumerator;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  countCopy = count;
  v40 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v23 = _os_log_pack_size();
    v26 = &v39 - ((MEMORY[0x1EEE9AC00](v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = _os_log_pack_fill(v26, v23, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v39, v40);
    *v27 = 136315394;
    *(v27 + 4) = "[NSSharedKeyDictionary countByEnumeratingWithState:objects:count:]";
    *(v27 + 12) = 2048;
    *(v27 + 14) = countCopy;
    v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSSharedKeyDictionary countByEnumeratingWithState:objects:count:]", countCopy);
    v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v23];
    objc_exception_throw(v29);
  }

  if (count >> 61)
  {
    v30 = _os_log_pack_size();
    v33 = &v39 - ((MEMORY[0x1EEE9AC00](v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = _os_log_pack_fill(v33, v30, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v39, v40);
    *v34 = 136315394;
    *(v34 + 4) = "[NSSharedKeyDictionary countByEnumeratingWithState:objects:count:]";
    *(v34 + 12) = 2048;
    *(v34 + 14) = countCopy;
    v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSharedKeyDictionary countByEnumeratingWithState:objects:count:]", countCopy);
    v36 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v33, v30];
    objc_exception_throw(v36);
  }

  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_mutations;
    count = self->_count;
    sideDic = self->_sideDic;
    if (sideDic)
    {
      sideDic = [(NSDictionary *)sideDic count];
      v12 = state->var0;
    }

    else
    {
      v12 = 0;
    }

    v13 = sideDic + count;
    state->var3[0] = v13;
    if (v13 <= v12)
    {
      countCopy = 0;
      v18 = -1;
LABEL_22:
      state->var0 = v18;
      return countCopy;
    }

    if (v13 >> 60)
    {
      v37 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v13);
      v38 = [NSException exceptionWithName:@"NSGenericException" reason:v37 userInfo:0];
      CFRelease(v37);
      objc_exception_throw(v38);
    }

    v39 = 0;
    v14 = _CFCreateArrayStorage(v13, 0, &v39);
    [(NSSharedKeyDictionary *)self getObjects:0 andKeys:v14 count:v13];
    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = v14[v15++];
      }

      while (v13 != v15);
      v17 = [[NSArray alloc] _initByAdoptingBuffer:v14 count:v13 size:v13];
    }

    else
    {
      v17 = [[NSArray alloc] initWithObjects:0 count:v13];
    }

    state->var3[1] = v17;
    var0 = state->var0;
  }

  v19 = state->var3[0];
  v20 = v19 > var0;
  v21 = v19 - var0;
  if (v20)
  {
    if (v21 < countCopy)
    {
      countCopy = v21;
    }

    [state->var3[1] getObjects:objects range:?];
    state->var1 = objects;
    v18 = state->var0 + countCopy;
    goto LABEL_22;
  }

  return 0;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v11 = _os_log_pack_size();
    v14 = &v18 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: block cannot be nil", v18);
    *v15 = 136315138;
    *(v15 + 4) = "[NSSharedKeyDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSSharedKeyDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v11];
    objc_exception_throw(v17);
  }

  v7 = [(NSSharedKeySet *)self->_keyMap count];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__NSSharedKeyDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke;
  v20[3] = &unk_1E6D7D810;
  v20[4] = self;
  v20[5] = block;
  v20[6] = &v21;
  if (!__NSCollectionHandleConcurrentEnumerationIfSpecified(options, 0, v7, v20))
  {
    v19 = 0;
    if (v7)
    {
      for (i = 0; i < v7; ++i)
      {
        while (!self->_values[i])
        {
          if (++i >= v7)
          {
            goto LABEL_11;
          }
        }

        v10 = _CFAutoreleasePoolPush();
        [(NSSharedKeySet *)self->_keyMap keyAtIndex:i];
        __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v10);
      }
    }

    goto LABEL_11;
  }

  v8 = atomic_load(v22 + 24);
  if ((v8 & 1) == 0)
  {
LABEL_11:
    [(NSDictionary *)self->_sideDic enumerateKeysAndObjectsWithOptions:options usingBlock:block];
  }

  _Block_object_dispose(&v21, 8);
}

void *__71__NSSharedKeyDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke(void *result, uint64_t a2)
{
  if (*(*(result[4] + 24) + 8 * a2))
  {
    v3 = result;
    v4 = _CFAutoreleasePoolPush();
    v5 = v3[5];
    [*(v3[4] + 8) keyAtIndex:a2];
    __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(v5);
    return _CFAutoreleasePoolPop(v4);
  }

  return result;
}

- (void)setObject:(id)object forKey:(id)key
{
  v26[1] = *MEMORY[0x1E69E9840];
  ++self->_mutations;
  if (!key)
  {
    v12 = _os_log_pack_size();
    v15 = v26 - ((MEMORY[0x1EEE9AC00](v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v12, 0, &dword_1830E6000, "*** %s: key cannot be nil", v26[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSSharedKeyDictionary setObject:forKey:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSSharedKeyDictionary setObject:forKey:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v12];
    objc_exception_throw(v18);
  }

  if (!object)
  {
    v19 = _os_log_pack_size();
    v22 = v26 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: object cannot be nil (key: %@)");
    *v23 = 136315394;
    *(v23 + 4) = "[NSSharedKeyDictionary setObject:forKey:]";
    *(v23 + 12) = 2112;
    *(v23 + 14) = key;
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil (key: %@)", "[NSSharedKeyDictionary setObject:forKey:]", key);
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v19];
    objc_exception_throw(v25);
  }

  keyMap = self->_keyMap;
  if (keyMap)
  {
    v8 = (self->_ifkIMP)(keyMap, sel_indexForKey_, key);
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_doKVO)
  {
    [(NSSharedKeyDictionary *)self willChangeValueForKey:key];
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sideDic = self->_sideDic;
    if (!sideDic)
    {
      sideDic = objc_opt_new();
      self->_sideDic = sideDic;
    }

    [(NSMutableDictionary *)sideDic setObject:object forKey:key];
  }

  else
  {
    v10 = self->_values[v8];
    if (v10 != object)
    {
      if ((object & 0x8000000000000000) == 0)
      {
        objectCopy = object;
      }

      if (v10)
      {
        self->_values[v8] = object;
        if (v10 >= 1)
        {
        }
      }

      else
      {
        ++self->_count;
        self->_values[v8] = object;
      }
    }
  }

  if (self->_doKVO)
  {

    [(NSSharedKeyDictionary *)self didChangeValueForKey:key];
  }
}

- (void)removeObjectForKey:(id)key
{
  v17[1] = *MEMORY[0x1E69E9840];
  ++self->_mutations;
  if (!key)
  {
    v10 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: key cannot be nil", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSSharedKeyDictionary removeObjectForKey:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSSharedKeyDictionary removeObjectForKey:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v16);
  }

  keyMap = self->_keyMap;
  if (keyMap)
  {
    v6 = (self->_ifkIMP)(keyMap, sel_indexForKey_, key);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_doKVO)
  {
    [(NSSharedKeyDictionary *)self willChangeValueForKey:key];
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sideDic = self->_sideDic;
    if (sideDic)
    {
      [(NSMutableDictionary *)sideDic removeObjectForKey:key];
    }
  }

  else
  {
    values = self->_values;
    v9 = values[v6];
    values[v6] = 0;
    if (v9)
    {
      --self->_count;
      if ((v9 & 0x8000000000000000) == 0)
      {
      }
    }
  }

  if (self->_doKVO)
  {

    [(NSSharedKeyDictionary *)self didChangeValueForKey:key];
  }
}

- (NSSharedKeyDictionary)initWithKeySet:(id)set
{
  if (set)
  {
    if ((set & 0x8000000000000000) == 0)
    {
      setCopy = set;
    }

    self->_keyMap = set;
    self->_ifkIMP = [set methodForSelector:sel_indexForKey_];
    v7 = malloc_type_calloc([(NSSharedKeySet *)self->_keyMap count], 8uLL, 0x80040B8603338uLL);
    self->_values = v7;
    if (!v7)
    {
      v9 = __CFExceptionProem(self, a2);
      v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v9);
      v11 = _CFAutoreleasePoolAddObject(0, v10);

      objc_exception_throw([NSException exceptionWithName:@"NSMallocException" reason:v11 userInfo:0]);
    }
  }

  return self;
}

+ (id)sharedKeyDictionaryWithKeySet:(id)set
{
  v3 = [[self alloc] initWithKeySet:set];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithKeySet:", self->_keyMap}];
  v5[2] = self->_count;
  v6 = [(NSSharedKeySet *)self->_keyMap count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      v8 = self->_values[v7];
      if (v8 >= 1)
      {
        v9 = v8;
        v8 = self->_values[v7];
      }

      *(v5[3] + 8 * v7--) = v8;
    }

    while (v7 != -1);
  }

  v5[5] = [(NSDictionary *)self->_sideDic mutableCopyWithZone:zone];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v16 = __CFExceptionProem(self, a2);
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: this object can only be encoded by a keyed coder", v16);
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17), 0];
    objc_exception_throw(v18);
  }

  [coder encodeObject:self->_keyMap forKey:@"NS.skkeyset"];
  [coder encodeObject:self->_sideDic forKey:@"NS.sideDic"];
  [coder encodeInt64:self->_count forKey:@"NS.count"];
  if (self->_count)
  {
    v6 = +[(NSArray *)NSMutableArray];
    v7 = +[(NSArray *)NSMutableArray];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    keyMap = self->_keyMap;
    v9 = [(NSSharedKeySet *)keyMap countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(keyMap);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [(NSSharedKeyDictionary *)self objectForKey:v13];
          if (v14)
          {
            v15 = v14;
            [(NSArray *)v6 addObject:v13];
            [(NSArray *)v7 addObject:v15];
          }
        }

        v10 = [(NSSharedKeySet *)keyMap countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v10);
    }

    [coder encodeObject:v6 forKey:@"NS.keys"];
    [coder encodeObject:v7 forKey:@"NS.values"];
  }
}

- (NSSharedKeyDictionary)initWithCoder:(id)coder
{
  v114 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v16 = __CFExceptionProem(self, a2);
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: this object can only be decoded by a keyed coder", v16);
    v18 = _CFAutoreleasePoolAddObject(0, v17);

    [coder failWithError:__archiveIsCorrupt(v18)];
    return 0;
  }

  v6 = objc_opt_class();
  objc_getClass("NSKeyedUnarchiver");
  isKindOfClass = objc_opt_isKindOfClass();
  v112 = 0;
  v113 = 0;
  if (isKindOfClass)
  {
    coderCopy = coder;
  }

  else
  {
    coderCopy = 0;
  }

  v110 = 0;
  v111 = coderCopy;
  v108 = coderCopy;
  v109 = 0;
  v9 = [coder decodeObjectOfClass:v6 forKey:@"NS.skkeyset"];
  v10 = v9;
  v112 = v9;
  v104 = 8;
  self->_keyMap = v9;
  if (v9 >= 1)
  {
    v11 = v9;
  }

  v12 = objc_opt_class();
  if (v12 == v6)
  {
    v20 = *(&self->super.super.super.isa + v104);
    if (v20)
    {
      self->_ifkIMP = [v20 methodForSelector:sel_indexForKey_];
      v21 = malloc_type_calloc([*(&self->super.super.super.isa + v104) count], 8uLL, 0x80040B8603338uLL);
      self->_values = v21;
      if (!v21)
      {
        v34 = __CFExceptionProem(self, a2);
        v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v34);
        v15 = _CFAutoreleasePoolAddObject(0, v35);
        if ([coder decodingFailurePolicy] == 1)
        {
        }

        goto LABEL_10;
      }

      if (isKindOfClass)
      {
        v22 = objc_opt_new();
        v113 = v22;
        if (!v22)
        {
          v45 = __CFExceptionProem(self, a2);
          v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v45);
          v15 = _CFAutoreleasePoolAddObject(0, v46);
          if ([coder decodingFailurePolicy] == 1)
          {
          }

          goto LABEL_10;
        }

        if (v10)
        {
          [coder replaceObject:v10 withObject:v22];
        }
      }
    }

    v23 = objc_lookUpClass("NSArray");
    objc_lookUpClass("NSDictionary");
    v24 = objc_lookUpClass("NSMutableDictionary");
    v25 = objc_lookUpClass("NSString");
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__NSSharedKeyDictionary_initWithCoder___block_invoke;
    block[3] = &unk_1E6D81EC0;
    block[4] = v25;
    if (initWithCoder__onceToken != -1)
    {
      dispatch_once(&initWithCoder__onceToken, block);
    }

    allowedClasses = [coder allowedClasses];
    v27 = [allowedClasses setByAddingObjectsFromSet:initWithCoder__oPlistClasses];
    sideDic = [coder decodeObjectOfClasses:objc_msgSend(v27 forKey:{"setByAddingObject:", v24), @"NS.sideDic"}];
    v29 = sideDic;
    v109 = sideDic;
    self->_sideDic = sideDic;
    if (sideDic >= 1)
    {
      v30 = sideDic;
      sideDic = self->_sideDic;
    }

    if (sideDic)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v36 = __CFExceptionProem(self, a2);
        v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid archive (must be mutable)", v36);
        v33 = _CFAutoreleasePoolAddObject(0, v37);
        if ([coder decodingFailurePolicy] == 1)
        {
        }

        goto LABEL_82;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = __CFExceptionProem(self, a2);
        v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid archive (invalid dictionary)", v31);
        v33 = _CFAutoreleasePoolAddObject(0, v32);
        if ([coder decodingFailurePolicy] == 1)
        {
        }

LABEL_82:
        [coder failWithError:__archiveIsCorrupt(v33)];
        goto LABEL_11;
      }

      if (isKindOfClass)
      {
        v38 = objc_opt_new();
        v110 = v38;
        if (!v38)
        {
          v75 = __CFExceptionProem(self, a2);
          v76 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v75);
          v33 = _CFAutoreleasePoolAddObject(0, v76);
          if ([coder decodingFailurePolicy] == 1)
          {
          }

          goto LABEL_82;
        }

        if (v29)
        {
          [coder replaceObject:v29 withObject:v38];
        }
      }

      v39 = [(NSDictionary *)self->_sideDic count];
      v42 = v39;
      if (v39 >= 1)
      {
        if (v39 >= 0x1000001)
        {
          v43 = __CFExceptionProem(self, a2);
          v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unreasonably sized collection", v43);
          v33 = _CFAutoreleasePoolAddObject(0, v44);
          if ([coder decodingFailurePolicy] == 1)
          {
          }

          goto LABEL_82;
        }

        v103 = &v98;
        MEMORY[0x1EEE9AC00](v39, v40, v41);
        v48 = &v98 - v47;
        v49 = 0;
        v106 = 0;
        if (v42 >= 0x101)
        {
          v49 = _CFCreateArrayStorage(v42, 0, &v106);
          v48 = v49;
        }

        [(NSDictionary *)self->_sideDic getObjects:0 andKeys:v48 count:v42];
        while ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v48 += 8;
          if (!--v42)
          {
            free(v49);
            goto LABEL_56;
          }
        }

        v77 = objc_opt_class();
        v78 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected recursive keys (%@)", v77);
        v79 = _CFAutoreleasePoolAddObject(0, v78);
        if ([coder decodingFailurePolicy] == 1)
        {
        }

        [coder failWithError:__archiveIsCorrupt(v79)];
        v80 = v49;
LABEL_86:
        free(v80);
        self = 0;
        goto LABEL_12;
      }
    }

LABEL_56:
    v50 = [coder decodeInt64ForKey:@"NS.count"];
    v51 = v50;
    if ((v50 & 0x8000000000000000) != 0)
    {
      v55 = __CFExceptionProem(self, a2);
      v56 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: negative count", v55);
      v54 = _CFAutoreleasePoolAddObject(0, v56);
      if ([coder decodingFailurePolicy] == 1)
      {
      }
    }

    else
    {
      if (!v50)
      {
        goto LABEL_12;
      }

      if (v50 < 0x1000001)
      {
        if (*(&self->super.super.super.isa + v104))
        {
          v57 = [v27 setByAddingObject:v23];
          v58 = [coder decodeObjectOfClasses:v57 forKey:@"NS.keys"];
          v59 = [coder decodeObjectOfClasses:v57 forKey:@"NS.values"];
          if (!_NSIsNSArray(v58))
          {
            v58 = 0;
          }

          if (_NSIsNSArray(v59))
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          v61 = [v58 count];
          v62 = [v60 count];
          if (v61 && v62)
          {
            if (v61 == v62)
            {
              if (v61 == v51)
              {
                v103 = &v98;
                v65 = MEMORY[0x1EEE9AC00](v62, v63, v64);
                v69 = &v98 - v68;
                v106 = 0;
                if (v51 > 0x100)
                {
                  v69 = _CFCreateArrayStorage(v51, 0, &v106);
                  MEMORY[0x1EEE9AC00](v69, v87, v88);
                  v71 = &v97;
                  v105 = 0;
                  v72 = _CFCreateArrayStorage(v51, 0, &v105);
                  v102 = v69;
                }

                else
                {
                  MEMORY[0x1EEE9AC00](v65, v66, v67);
                  v71 = (&v98 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
                  v102 = 0;
                  v72 = 0;
                  v105 = 0;
                }

                v100 = v60;
                v101 = v72;
                if (v51 >= 0x101)
                {
                  v71 = v72;
                }

                [v58 getObjects:v69 range:{0, v51}];
                v99 = v69;
                v89 = v51;
                do
                {
                  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
                  {
                    v92 = objc_opt_class();
                    v93 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected recursive keys (%@)", v92);
                    v94 = _CFAutoreleasePoolAddObject(0, v93);
                    if ([coder decodingFailurePolicy] == 1)
                    {
                    }

                    goto LABEL_109;
                  }

                  v69 += 8;
                  --v89;
                }

                while (v89);
                [v100 getObjects:v71 range:{0, v51}];
                v90 = v99;
                while (1)
                {
                  v91 = *v90;
                  if ((self->_ifkIMP)(*(&self->super.super.super.isa + v104), sel_indexForKey_, *v90) == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  [(NSSharedKeyDictionary *)self setObject:*v71++ forKey:v91];
                  v90 += 8;
                  if (!--v51)
                  {
                    free(v101);
                    free(v102);
                    goto LABEL_12;
                  }
                }

                v95 = __CFExceptionProem(self, a2);
                v96 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: encoded key not present in keyset", v95);
                v94 = _CFAutoreleasePoolAddObject(0, v96);
                if ([coder decodingFailurePolicy] == 1)
                {
                }

LABEL_109:
                [coder failWithError:__archiveIsCorrupt(v94)];
                free(v101);
                v80 = v102;
                goto LABEL_86;
              }

              v85 = __CFExceptionProem(self, a2);
              v86 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: more entries than expected", v85);
              v54 = _CFAutoreleasePoolAddObject(0, v86);
              if ([coder decodingFailurePolicy] == 1)
              {
              }
            }

            else
            {
              v83 = __CFExceptionProem(self, a2);
              v84 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: encoded keys/values length does not match", v83);
              v54 = _CFAutoreleasePoolAddObject(0, v84);
              if ([coder decodingFailurePolicy] == 1)
              {
              }
            }
          }

          else
          {
            v81 = __CFExceptionProem(self, a2);
            v82 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: encoded keys/values are empty", v81);
            v54 = _CFAutoreleasePoolAddObject(0, v82);
            if ([coder decodingFailurePolicy] == 1)
            {
            }
          }
        }

        else
        {
          v73 = __CFExceptionProem(self, a2);
          v74 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid archive (encoded count but missing keyset)", v73);
          v54 = _CFAutoreleasePoolAddObject(0, v74);
          if ([coder decodingFailurePolicy] == 1)
          {
          }
        }
      }

      else
      {
        v52 = __CFExceptionProem(self, a2);
        v53 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unreasonably sized collection", v52);
        v54 = _CFAutoreleasePoolAddObject(0, v53);
        if ([coder decodingFailurePolicy] == 1)
        {
        }
      }
    }

    [coder failWithError:__archiveIsCorrupt(v54)];
    goto LABEL_11;
  }

  v13 = __CFExceptionProem(self, a2);
  v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid archive (unexpected keyset: %@)", v13, v12);
  v15 = _CFAutoreleasePoolAddObject(0, v14);
  if ([coder decodingFailurePolicy] == 1)
  {
  }

LABEL_10:
  [coder failWithError:__archiveIsCorrupt(v15)];
LABEL_11:
  self = 0;
LABEL_12:
  cleanup_sentinel_pair(&v108);
  cleanup_sentinel_pair(&v111);
  return self;
}

NSSet *__39__NSSharedKeyDictionary_initWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_lookUpClass("NSNumber");
  v3 = objc_lookUpClass("NSDate");
  v4 = objc_lookUpClass("NSURL");
  v5 = [NSSet setWithObjects:v1, v2, v3, v4, objc_lookUpClass("NSData"), 0];
  initWithCoder__oPlistClasses = v5;

  return v5;
}

- (void)setObservationInfo:(void *)info
{
  v4 = *MEMORY[0x1E69E9840];
  self->_doKVO = info != 0;
  v3.receiver = self;
  v3.super_class = NSSharedKeyDictionary;
  [(NSSharedKeyDictionary *)&v3 setObservationInfo:?];
}

@end