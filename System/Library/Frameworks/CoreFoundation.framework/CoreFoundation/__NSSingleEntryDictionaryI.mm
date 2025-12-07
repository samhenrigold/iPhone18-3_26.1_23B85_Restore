@interface __NSSingleEntryDictionaryI
- (BOOL)isEqualToDictionary:(id)dictionary;
- (id)keyEnumerator;
- (id)objectEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__apply:(void *)__apply context:(void *)context;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
@end

@implementation __NSSingleEntryDictionaryI

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  obj = self->_obj;
  if (obj >= 1)
  {
  }

  key = self->_key;
  if (key >= 1)
  {
  }

  v5.receiver = self;
  v5.super_class = __NSSingleEntryDictionaryI;
  [(__NSSingleEntryDictionaryI *)&v5 dealloc];
}

- (id)keyEnumerator
{
  v2 = [[__NSSingleObjectEnumerator alloc] initWithObject:self->_key collection:self];

  return v2;
}

- (BOOL)isEqualToDictionary:(id)dictionary
{
  selfCopy = self;
  v12[1] = *MEMORY[0x1E69E9840];
  if (dictionary)
  {
    if ((_NSIsNSDictionary(dictionary) & 1) == 0)
    {
      v7 = _os_log_pack_size();
      v8 = _os_log_pack_fill(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: dictionary argument is not an NSDictionary", v12[0]);
      *v8 = 136315138;
      *(v8 + 4) = "[__NSSingleEntryDictionaryI isEqualToDictionary:]";
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[__NSSingleEntryDictionaryI isEqualToDictionary:]");
      v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
      objc_exception_throw(v10);
    }

    if (dictionary == selfCopy)
    {
      LOBYTE(self) = 1;
    }

    else if ([dictionary count] == 1)
    {
      self = [dictionary objectForKey:selfCopy->_key];
      if (self)
      {
        selfCopy2 = self;
        obj = selfCopy->_obj;

        LOBYTE(self) = [obj isEqual:selfCopy2];
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  else
  {
    LOBYTE(self) = self == 0;
  }

  return self;
}

- (id)objectForKey:(id)key
{
  key = self->_key;
  if (key == key || [key isEqual:?])
  {
    return self->_obj;
  }

  else
  {
    return 0;
  }
}

- (id)objectEnumerator
{
  v2 = [[__NSSingleObjectEnumerator alloc] initWithObject:self->_obj collection:self];

  return v2;
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = count >> 61;
  if (objects)
  {
    if (v5)
    {
      goto LABEL_10;
    }

    if (!count)
    {
      return;
    }

    *objects = self->_obj;
  }

  if (!keys)
  {
    return;
  }

  if (v5)
  {
LABEL_10:
    v7 = _os_log_pack_size();
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous");
    *v9 = 136315394;
    *(v9 + 4) = "[__NSSingleEntryDictionaryI getObjects:andKeys:count:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleEntryDictionaryI getObjects:andKeys:count:]", count);
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v8, v7];
    objc_exception_throw(v11);
  }

  if (count)
  {
    *keys = self->_key;
  }
}

- (void)__apply:(void *)__apply context:(void *)context
{
  if (!__apply)
  {
    v7 = __CFExceptionProem(self, a2);
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v7);
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8), 0];
    objc_exception_throw(v9);
  }

  obj = self->_obj;
  key = self->_key;

  (__apply)(key, obj, context);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v15 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v7 = _os_log_pack_size();
    v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v14, v15);
    *v9 = 136315394;
    *(v9 + 4) = "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_10;
  }

  if (count >> 61)
  {
    v7 = _os_log_pack_size();
    v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v14, v15);
    *v12 = 136315394;
    *(v12 + 4) = "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]", count);
LABEL_10:
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v8, v7];
    objc_exception_throw(v13);
  }

  if (state->var0)
  {
    return 0;
  }

  state->var1 = objects;
  state->var2 = &countByEnumeratingWithState_objects_count__const_mu_2;
  *objects = self->_key;
  result = 1;
  state->var0 = 1;
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: block cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[__NSSingleEntryDictionaryI enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSingleEntryDictionaryI enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  HIBYTE(v10[0]) = 0;
  v5 = _CFAutoreleasePoolPush();
  __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
  _CFAutoreleasePoolPop(v5);
}

@end