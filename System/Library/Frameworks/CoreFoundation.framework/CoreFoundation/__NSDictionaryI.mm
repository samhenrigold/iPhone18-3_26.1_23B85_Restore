@interface __NSDictionaryI
- (double)_clumpingFactor;
- (id)_cfMutableCopy;
- (id)keyEnumerator;
- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test;
- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__apply:(void *)__apply context:(void *)context;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
@end

@implementation __NSDictionaryI

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (&__NSDictionary0__struct == self)
  {
    __break(1u);
  }

  v3 = self->_used[7];
  v4 = __NSDictionarySizes[v3 >> 2];
  self->_used[7] = v3 & 3;
  *self->_used &= 0xFE00000000000000;
  v5 = 2 * v4;
  if (2 * v4)
  {
    v6 = (self + 16);
    do
    {
      if (*v6 >= 1)
      {
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  v7.receiver = self;
  v7.super_class = __NSDictionaryI;
  [(__NSDictionaryI *)&v7 dealloc];
}

- (id)keyEnumerator
{
  v2 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v2;
}

- (id)_cfMutableCopy
{
  result = _NSDictionaryI_mutableCopyWithZone(self, a2, v2);
  *(result + 2) = *(result + 2) & 0xFFFFFFFF7FFFFFFFLL | (((self->_used[7] >> 1) & 1) << 31);
  return result;
}

- (id)objectForKey:(id)key
{
  v3 = self->_used[7];
  if (v3 < 4)
  {
    return 0;
  }

  v7 = *(__NSDictionarySizes + ((2 * v3) & 0x1F8));
  v8 = self + 16;
  v9 = [key hash] % v7;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = 2 * v9;
  v12 = *&v8[16 * v9];
  if (v12)
  {
    v13 = v12 == key;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v14 = 1;
    v15 = 1;
    do
    {
      if ([v12 isEqual:key])
      {
        break;
      }

      v15 = v14 < v7;
      if (v10 == v14)
      {
        break;
      }

      v16 = v9 + 1;
      v17 = v9 + 1 >= v7 ? v7 : 0;
      v9 = v16 - v17;
      v11 = 2 * (v16 - v17);
      v12 = *&v8[16 * (v16 - v17)];
      ++v14;
    }

    while (v12 && v12 != key);
  }

  v19 = 2 * v7;
  if (v15)
  {
    v19 = v11;
  }

  if (v19 >= 2 * v7)
  {
    return 0;
  }

  else
  {
    return self->_list[v19];
  }
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = count >> 61;
  if (objects && v5 || keys && v5)
  {
    v13 = _os_log_pack_size();
    v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous");
    *v15 = 136315394;
    *(v15 + 4) = "[__NSDictionaryI getObjects:andKeys:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSDictionaryI getObjects:andKeys:count:]", count);
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v17);
  }

  countCopy = *self->_used & 0x1FFFFFFFFFFFFFFLL;
  if (countCopy >= count)
  {
    countCopy = count;
  }

  v7 = 2 * *(__NSDictionarySizes + ((2 * self->_used[7]) & 0x1F8));
  if (v7)
  {
    v8 = countCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    list = self->_list;
    v10 = 2;
    do
    {
      v11 = *(list - 1);
      if (v11)
      {
        if (keys)
        {
          *keys++ = v11;
        }

        if (objects)
        {
          *objects++ = *list;
        }

        --countCopy;
      }

      if (v10 >= v7)
      {
        break;
      }

      v10 += 2;
      list += 2;
    }

    while (countCopy);
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

  v4 = 2 * *(__NSDictionarySizes + ((2 * self->_used[7]) & 0x1F8));
  if (v4)
  {
    v7 = 0;
    v8 = self + 16;
    do
    {
      v9 = *&v8[8 * v7];
      if (v9)
      {
        (__apply)(v9, *&v8[8 * v7 + 8], context);
      }

      v7 += 2;
    }

    while (v7 < v4);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v20 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v12 = _os_log_pack_size();
    v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v19, v20);
    *v14 = 136315394;
    *(v14 + 4) = "[__NSDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSDictionaryI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_18;
  }

  if (count >> 61)
  {
    v12 = _os_log_pack_size();
    v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v19, v20);
    *v17 = 136315394;
    *(v17 + 4) = "[__NSDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSDictionaryI countByEnumeratingWithState:objects:count:]", count);
LABEL_18:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  v6 = *(__NSDictionarySizes + ((2 * self->_used[7]) & 0x1F8));
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu_0;
  }

  if (v6 <= var0)
  {
    return 0;
  }

  state->var1 = objects;
  if (!count)
  {
    return 0;
  }

  result = 0;
  v9 = self + 16;
  do
  {
    v10 = *&v9[16 * var0++];
    state->var0 = var0;
    if (v10)
    {
      objects[result++] = v10;
      var0 = state->var0;
    }
  }

  while (var0 < v6 && result < count);
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v18[6] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v10 = _os_log_pack_size();
    v13 = &v18[-1] - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: block cannot be nil", v17);
    *v14 = 136315138;
    *(v14 + 4) = "[__NSDictionaryI enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSDictionaryI enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v16);
  }

  v6 = self->_used[7];
  v7 = *(__NSDictionarySizes + ((2 * v6) & 0x1F8));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65____NSDictionaryI_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke;
  v18[3] = &unk_1E6D7D7E8;
  v18[4] = self;
  v18[5] = block;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(options, 0, v7, v18) & 1) == 0)
  {
    HIBYTE(v17) = 0;
    if (v6 >= 4u)
    {
      v8 = 0;
      do
      {
        if (*&self->_used[16 * v8 + 8])
        {
          v9 = _CFAutoreleasePoolPush();
          __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v9);
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
  v6 = self->_used[7];
  v7 = *(__NSDictionarySizes + ((2 * v6) & 0x1F8));
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53____NSDictionaryI_keyOfEntryWithOptions_passingTest___block_invoke;
  v16[3] = &unk_1E6D7D810;
  v16[4] = self;
  v16[5] = test;
  v16[6] = &v17;
  if (__NSCollectionHandleConcurrentEnumerationIfSpecified(options, 0, v7, v16))
  {
    v8 = atomic_load(v18 + 3);
  }

  else
  {
    v15 = 0;
    if (v6 >= 4u)
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

      list = self->_list;
      do
      {
        v11 = *(list - 1);
        if (v11)
        {
          v12 = *list;
          v13 = _CFAutoreleasePoolPush();
          if ((*(test + 2))(test, v11, v12, &v15))
          {
            v15 = 1;
            v8 = v11;
          }

          _CFAutoreleasePoolPop(v13);
          if (v15)
          {
            break;
          }
        }

        list += 2;
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
  v27 = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v16 = _os_log_pack_size();
    v19 = &v23 - ((MEMORY[0x1EEE9AC00](v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v19, v16, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v23);
    *v20 = 136315138;
    *(v20 + 4) = "[__NSDictionaryI keysOfEntriesWithOptions:passingTest:]";
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[__NSDictionaryI keysOfEntriesWithOptions:passingTest:]");
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v16];
    objc_exception_throw(v22);
  }

  optionsCopy = options;
  v7 = self->_used[7];
  v8 = *(__NSDictionarySizes + ((2 * v7) & 0x1F8));
  v9 = +[(NSSet *)NSMutableSet];
  v26 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56____NSDictionaryI_keysOfEntriesWithOptions_passingTest___block_invoke;
  v25[3] = &unk_1E6D7D838;
  v25[6] = test;
  v25[7] = &v26;
  v25[4] = self;
  v25[5] = v9;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 0, v8, v25) & 1) == 0)
  {
    v24 = 0;
    if (v7 >= 4u)
    {
      v10 = 0;
      v11 = self + 16;
      do
      {
        v12 = *&v11[16 * v10];
        if (v12)
        {
          v13 = *&v11[16 * v10 + 8];
          v14 = _CFAutoreleasePoolPush();
          if ((*(test + 2))(test, v12, v13, &v24))
          {
            [(NSSet *)v9 addObject:v12];
          }

          _CFAutoreleasePoolPop(v14);
          if (v24)
          {
            break;
          }
        }

        ++v10;
      }

      while (v10 < v8);
    }

    return [NSSet setWithSet:v9];
  }

  return v9;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = self->_used[7];
  if (v3 < 4)
  {
    return 0;
  }

  v7 = *(__NSDictionarySizes + ((2 * v3) & 0x1F8));
  v8 = self + 16;
  v9 = [subscript hash] % v7;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = 2 * v9;
  v12 = *&v8[16 * v9];
  if (v12)
  {
    v13 = v12 == subscript;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v14 = 1;
    v15 = 1;
    do
    {
      if ([v12 isEqual:subscript])
      {
        break;
      }

      v15 = v14 < v7;
      if (v10 == v14)
      {
        break;
      }

      v16 = v9 + 1;
      v17 = v9 + 1 >= v7 ? v7 : 0;
      v9 = v16 - v17;
      v11 = 2 * (v16 - v17);
      v12 = *&v8[16 * (v16 - v17)];
      ++v14;
    }

    while (v12 && v12 != subscript);
  }

  v19 = 2 * v7;
  if (v15)
  {
    v19 = v11;
  }

  if (v19 >= 2 * v7)
  {
    return 0;
  }

  else
  {
    return self->_list[v19];
  }
}

- (double)_clumpingFactor
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *self->_used;
  if ((v3 & 0x1FFFFFFFFFFFFFELL) != 0)
  {
    v4 = v3 & 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  v5 = (MEMORY[0x1EEE9AC00])(v4, a2);
  v8 = &v22 - v7;
  v22 = 0;
  if (v6 >= 0x101)
  {
    v8 = _CFCreateArrayStorage(v5, 0, &v22);
    v6 = *self->_used & 0x1FFFFFFFFFFFFFFLL;
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(__NSDictionaryI *)self getObjects:0 andKeys:v8 count:v6, v22, v23];
  v10 = *self->_used & 0x1FFFFFFFFFFFFFFLL;
  v11 = 0.0;
  if (v10 >= 2)
  {
    v12 = *(__NSDictionarySizes + ((2 * self->_used[7]) & 0x1F8));
    v13 = malloc_type_malloc(8 * v10 + 8, 0x100004000313F17uLL);
    for (i = 0; i != v10; ++i)
    {
      v13[i] = [*&v8[i * 8] hash] % v12;
    }

    qsort(v13, v10, 8uLL, _compare_clumpiness);
    v13[v10] = *v13 + v12;
    v15 = v10;
    v16 = v12 / v10;
    v17 = v13 + 1;
    v18 = 0.0;
    do
    {
      v19 = *v17 - *(v17 - 1);
      if (v16 <= v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v16 - v19;
      }

      v18 = v18 + v20 * v20;
      ++v17;
      --v10;
    }

    while (v10);
    free(v13);
    v11 = v18 * v15 * v15 / (v12 * v12) / (v15 + -1.0);
  }

  free(v9);
  return v11;
}

@end