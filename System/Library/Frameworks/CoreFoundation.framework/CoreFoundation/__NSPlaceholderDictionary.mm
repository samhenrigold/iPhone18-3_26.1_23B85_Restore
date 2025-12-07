@interface __NSPlaceholderDictionary
- (__NSPlaceholderDictionary)init;
- (__NSPlaceholderDictionary)initWithCapacity:(unint64_t)capacity;
- (__NSPlaceholderDictionary)initWithContentsOfFile:(id)file;
- (__NSPlaceholderDictionary)initWithContentsOfURL:(id)l;
- (__NSPlaceholderDictionary)initWithDictionary:(id)dictionary copyItems:(BOOL)items;
- (__NSPlaceholderDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation __NSPlaceholderDictionary

- (__NSPlaceholderDictionary)init
{
  if (self == &___immutablePlaceholderDictionary)
  {
    return [(__NSPlaceholderDictionary *)&___immutablePlaceholderDictionary initWithObjects:0 forKeys:0 count:0];
  }

  if (self == &___mutablePlaceholderDictionary)
  {
    return [(__NSPlaceholderDictionary *)&___mutablePlaceholderDictionary initWithCapacity:0];
  }

  __break(1u);
  return self;
}

- (unint64_t)count
{
  v4 = "mutable";
  v5 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v7 = "NSDictionary";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (id)objectForKey:(id)key
{
  v5 = "mutable";
  v6 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v8 = "NSDictionary";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (id)keyEnumerator
{
  v4 = "mutable";
  v5 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v7 = "NSDictionary";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (void)setObject:(id)object forKey:(id)key
{
  v6 = "mutable";
  v7 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v6 = "<unknown>";
    v7 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v8 = "immutable";
  }

  else
  {
    v8 = v6;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v9 = "NSDictionary";
  }

  else
  {
    v9 = v7;
  }

  v10 = __CFLookUpClass(v9);
  v11 = __CFFullMethodName(v10, self, a2);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v11, v8);
  v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
  objc_exception_throw(v13);
}

- (void)removeObjectForKey:(id)key
{
  v5 = "mutable";
  v6 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v8 = "NSDictionary";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (__NSPlaceholderDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v19 = *MEMORY[0x1E69E9840];
  if (!keys && count)
  {
    goto LABEL_32;
  }

  if (count >> 61)
  {
    v9 = _os_log_pack_size();
    v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v10, v9, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v18, v19);
    *v15 = 136315394;
    *(v15 + 4) = "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = count;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]", count);
    goto LABEL_29;
  }

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!keys[i])
      {
        goto LABEL_28;
      }
    }

    if (objects)
    {
      i = 0;
      while (objects[i])
      {
        if (count == ++i)
        {
          goto LABEL_12;
        }
      }

LABEL_28:
      v8 = i;
      v9 = _os_log_pack_size();
      v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = _os_log_pack_fill(v10, v9, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]");
      *v11 = 136315394;
      *(v11 + 4) = "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]";
      *(v11 + 12) = 2048;
      *(v11 + 14) = v8;
      v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]", v8);
LABEL_29:
      v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v9];
      objc_exception_throw(v13);
    }

LABEL_32:
    v9 = _os_log_pack_size();
    v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v10, v9, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu");
    *v17 = 136315394;
    *(v17 + 4) = "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]", count);
    goto LABEL_29;
  }

LABEL_12:
  if (self == &___immutablePlaceholderDictionary)
  {
    if (count == 1)
    {
      v6 = *keys;
      v7 = *objects;

      return __NSSingleEntryDictionaryI_new(v6, v7, 1);
    }

    else if (count)
    {

      return __NSDictionaryI_new(keys, objects, 0, count, 1);
    }

    else
    {

      return &__NSDictionary0__struct;
    }
  }

  else if (self == &___mutablePlaceholderDictionary)
  {

    return __NSDictionaryM_new(keys, objects, count, 3uLL);
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (__NSPlaceholderDictionary)initWithDictionary:(id)dictionary copyItems:(BOOL)items
{
  itemsCopy = items;
  v12 = *MEMORY[0x1E69E9840];
  if (items)
  {
    goto LABEL_12;
  }

  v7 = objc_opt_class();
  v8 = v7 == __NSDictionaryI || v7 == __NSDictionaryM;
  if (!v8 && v7 != __NSFrozenDictionaryM)
  {
    goto LABEL_12;
  }

  if (self == &___mutablePlaceholderDictionary)
  {

    return [dictionary mutableCopyWithZone:0];
  }

  else
  {
    if (self != &___immutablePlaceholderDictionary)
    {
LABEL_12:
      v11.receiver = self;
      v11.super_class = __NSPlaceholderDictionary;
      return [(NSDictionary *)&v11 initWithDictionary:dictionary copyItems:itemsCopy];
    }

    return [dictionary copyWithZone:0];
  }
}

- (__NSPlaceholderDictionary)initWithCapacity:(unint64_t)capacity
{
  v10 = *MEMORY[0x1E69E9840];
  if (capacity >> 61)
  {
    v5 = _os_log_pack_size();
    v6 = _os_log_pack_fill(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5, 0, &dword_1830E6000, "*** %s: capacity (%lu) is ridiculous", v9, v10);
    *v6 = 136315394;
    *(v6 + 4) = "[__NSPlaceholderDictionary initWithCapacity:]";
    *(v6 + 12) = 2048;
    *(v6 + 14) = capacity;
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: capacity (%lu) is ridiculous", "[__NSPlaceholderDictionary initWithCapacity:]", capacity);
    v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7) osLogPack:0 size:&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5];
    objc_exception_throw(v8);
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    [&___immutablePlaceholderDictionary doesNotRecognizeSelector:a2];
LABEL_9:
    __break(1u);
  }

  if (self != &___mutablePlaceholderDictionary)
  {
    goto LABEL_9;
  }

  return __NSDictionaryM_new(0, 0, capacity, 3uLL);
}

- (__NSPlaceholderDictionary)initWithContentsOfFile:(id)file
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (file && (_NSIsNSString(file) & 1) == 0)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: string argument is not an NSString", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[__NSPlaceholderDictionary initWithContentsOfFile:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: string argument is not an NSString", "[__NSPlaceholderDictionary initWithContentsOfFile:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  return [NSDictionary newWithContentsOf:file immutable:self == &___immutablePlaceholderDictionary];
}

- (__NSPlaceholderDictionary)initWithContentsOfURL:(id)l
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (atomic_load(&initWithContentsOfURL____cls_NSURL_0))
  {
    if (!l)
    {
      goto LABEL_6;
    }
  }

  else
  {
    atomic_store(objc_lookUpClass("NSURL"), &initWithContentsOfURL____cls_NSURL_0);
    if (!l)
    {
      goto LABEL_6;
    }
  }

  atomic_load(&initWithContentsOfURL____cls_NSURL_0);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: url argument is not an NSURL", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[__NSPlaceholderDictionary initWithContentsOfURL:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: url argument is not an NSURL", "[__NSPlaceholderDictionary initWithContentsOfURL:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

LABEL_6:

  return [NSDictionary newWithContentsOf:l immutable:self == &___immutablePlaceholderDictionary];
}

@end