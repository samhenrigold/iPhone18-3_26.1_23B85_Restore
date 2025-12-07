@interface NSConstantDictionary
- (NSConstantDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)keyEnumerator;
- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test;
- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test;
- (id)objectEnumerator;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__apply:(void *)__apply context:(void *)context;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
@end

@implementation NSConstantDictionary

- (NSConstantDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (id)objectForKey:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  options = self->_options;
  count = self->_count;
  keys = self->_keys;
  objects = self->_objects;
  keyCopy = key;
  if (!count)
  {
    return 0;
  }

  if (count == 1 && *keys == key)
  {
    return *objects;
  }

  if ((options & 2) != 0)
  {
    if ((_NSIsNSNumber(key) & 1) == 0)
    {
      return 0;
    }

    if (count == 1)
    {
      if ([key isEqualToNumber:{*keys, keyCopy, v12}])
      {
        return *objects;
      }

      return 0;
    }

    v9 = comparisonUsingOrderingForNumericKeys;
    if ((options & 1) == 0)
    {
LABEL_20:
      while (1)
      {
        v10 = *keys;
        if (*keys == key)
        {
          break;
        }

        if ((options & 2) != 0)
        {
          if ([v10 isEqualToNumber:{key, keyCopy, v12}])
          {
            return *objects;
          }
        }

        else if ([v10 isEqualToString:key])
        {
          return *objects;
        }

        result = 0;
        ++objects;
        ++keys;
        if (!--count)
        {
          return result;
        }
      }

      return *objects;
    }
  }

  else
  {
    if ((_NSIsNSString(key) & 1) == 0)
    {
      if (!options)
      {
        while (*keys != key && ([*keys isEqual:{key, keyCopy, v12}] & 1) == 0)
        {
          result = 0;
          ++objects;
          ++keys;
          if (!--count)
          {
            return result;
          }
        }

        return *objects;
      }

      return 0;
    }

    if (count == 1)
    {
      if ([key isEqualToString:{*keys, keyCopy, v12}])
      {
        return *objects;
      }

      return 0;
    }

    v9 = comparisonUsingOrderingForStringKeys;
    if ((options & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  result = bsearch(&keyCopy, keys, count, 8uLL, v9);
  if (!result)
  {
    return result;
  }

  objects = (objects + result - keys);
  return *objects;
}

- (id)keyEnumerator
{
  v2 = [[__NSConstantDictionaryEnumerator alloc] initWithConstantDictionary:self enumerateKeys:1];

  return v2;
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = count >> 61;
  if (objects && v7 || keys && v7)
  {
    v11 = _os_log_pack_size();
    v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous");
    *v13 = 136315394;
    *(v13 + 4) = "[NSConstantDictionary getObjects:andKeys:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = count;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSConstantDictionary getObjects:andKeys:count:]", count);
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v15);
  }

  v8 = 8 * self->_count;
  if (keys)
  {
    memmove(keys, self->_keys, v8);
  }

  if (objects)
  {
    objects = self->_objects;

    memmove(objects, objects, v8);
  }
}

- (void)__apply:(void *)__apply context:(void *)context
{
  if (!__apply)
  {
    v8 = __CFExceptionProem(self, a2);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v8);
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9), 0];
    objc_exception_throw(v10);
  }

  if (self->_count)
  {
    v7 = 0;
    do
    {
      (__apply)(self->_keys[v7], self->_objects[v7], context);
      ++v7;
    }

    while (v7 < self->_count);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v19 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v11 = _os_log_pack_size();
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v18, v19);
    *v13 = 136315394;
    *(v13 + 4) = "[NSConstantDictionary countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = count;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSConstantDictionary countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_18;
  }

  if (count >> 61)
  {
    v11 = _os_log_pack_size();
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v18, v19);
    *v16 = 136315394;
    *(v16 + 4) = "[NSConstantDictionary countByEnumeratingWithState:objects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSConstantDictionary countByEnumeratingWithState:objects:count:]", count);
LABEL_18:
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v17);
  }

  count = self->_count;
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu_4;
  }

  if (count <= var0)
  {
    return 0;
  }

  state->var1 = objects;
  if (!count)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v8 = self->_keys[var0++];
    state->var0 = var0;
    if (v8)
    {
      objects[v7++] = v8;
      var0 = state->var0;
    }
  }

  while (var0 < count && v7 < count);
  return v7;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, 0, &dword_1830E6000, "*** %s: block cannot be nil", v13[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[NSConstantDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSConstantDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  count = self->_count;
  HIBYTE(v13[0]) = 0;
  if (count)
  {
    for (i = 0; i < count; ++i)
    {
      if (self->_keys[i])
      {
        v8 = _CFAutoreleasePoolPush();
        __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v8);
      }
    }
  }
}

- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test
{
  v14 = *MEMORY[0x1E69E9840];
  count = self->_count;
  v13 = 0;
  if (!count)
  {
    return 0;
  }

  v7 = 0;
  for (i = 0; i != count; ++i)
  {
    v9 = self->_keys[i];
    if (v9)
    {
      v10 = self->_objects[i];
      v11 = _CFAutoreleasePoolPush();
      if ((*(test + 2))(test, v9, v10, &v13))
      {
        v13 = 1;
        v7 = v9;
      }

      _CFAutoreleasePoolPop(v11);
      if (v13)
      {
        break;
      }
    }
  }

  return v7;
}

- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSConstantDictionary keysOfEntriesWithOptions:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSConstantDictionary keysOfEntriesWithOptions:passingTest:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

  count = self->_count;
  v7 = +[(NSSet *)NSMutableSet];
  HIBYTE(v17[0]) = 0;
  if (count)
  {
    for (i = 0; i < count; ++i)
    {
      v9 = self->_keys[i];
      if (v9)
      {
        v10 = self->_objects[i];
        v11 = _CFAutoreleasePoolPush();
        if ((*(test + 2))(test, v9, v10, v17 + 7))
        {
          [(NSSet *)v7 addObject:v9];
        }

        _CFAutoreleasePoolPop(v11);
        if (HIBYTE(v17[0]))
        {
          break;
        }
      }
    }
  }

  return [NSSet setWithSet:v7];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v12 = *MEMORY[0x1E69E9840];
  options = self->_options;
  count = self->_count;
  keys = self->_keys;
  objects = self->_objects;
  subscriptCopy = subscript;
  if (!count)
  {
    return 0;
  }

  if (count == 1 && *keys == subscript)
  {
    return *objects;
  }

  if ((options & 2) != 0)
  {
    if ((_NSIsNSNumber(subscript) & 1) == 0)
    {
      return 0;
    }

    if (count == 1)
    {
      if ([subscript isEqualToNumber:{*keys, subscriptCopy, v12}])
      {
        return *objects;
      }

      return 0;
    }

    v9 = comparisonUsingOrderingForNumericKeys;
    if ((options & 1) == 0)
    {
LABEL_20:
      while (1)
      {
        v10 = *keys;
        if (*keys == subscript)
        {
          break;
        }

        if ((options & 2) != 0)
        {
          if ([v10 isEqualToNumber:{subscript, subscriptCopy, v12}])
          {
            return *objects;
          }
        }

        else if ([v10 isEqualToString:subscript])
        {
          return *objects;
        }

        result = 0;
        ++objects;
        ++keys;
        if (!--count)
        {
          return result;
        }
      }

      return *objects;
    }
  }

  else
  {
    if ((_NSIsNSString(subscript) & 1) == 0)
    {
      if (!options)
      {
        while (*keys != subscript && ([*keys isEqual:{subscript, subscriptCopy, v12}] & 1) == 0)
        {
          result = 0;
          ++objects;
          ++keys;
          if (!--count)
          {
            return result;
          }
        }

        return *objects;
      }

      return 0;
    }

    if (count == 1)
    {
      if ([subscript isEqualToString:{*keys, subscriptCopy, v12}])
      {
        return *objects;
      }

      return 0;
    }

    v9 = comparisonUsingOrderingForStringKeys;
    if ((options & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  result = bsearch(&subscriptCopy, keys, count, 8uLL, v9);
  if (!result)
  {
    return result;
  }

  objects = (objects + result - keys);
  return *objects;
}

- (id)objectEnumerator
{
  v2 = [[__NSConstantDictionaryEnumerator alloc] initWithConstantDictionary:self enumerateKeys:0];

  return v2;
}

@end