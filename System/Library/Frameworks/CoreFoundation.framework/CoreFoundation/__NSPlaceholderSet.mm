@interface __NSPlaceholderSet
+ (void)initialize;
- (__NSPlaceholderSet)init;
- (__NSPlaceholderSet)initWithCapacity:(unint64_t)capacity;
- (__NSPlaceholderSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (__NSPlaceholderSet)initWithSet:(id)set copyItems:(BOOL)items;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation __NSPlaceholderSet

- (__NSPlaceholderSet)init
{
  if (self == &___immutablePlaceholderSet)
  {
    return [(__NSPlaceholderSet *)&___immutablePlaceholderSet initWithObjects:0 count:0];
  }

  if (self == &___mutablePlaceholderSet)
  {
    return [(__NSPlaceholderSet *)&___mutablePlaceholderSet initWithCapacity:0];
  }

  __break(1u);
  return self;
}

+ (void)initialize
{
  if (__NSPlaceholderSet == self)
  {
    __NSSet0__ = __NSSetI_new(0, 0, 0, 0);
  }
}

- (unint64_t)count
{
  v4 = "mutable";
  v5 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "NSSet";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (id)member:(id)member
{
  v5 = "mutable";
  v6 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v8 = "NSSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (id)objectEnumerator
{
  v4 = "mutable";
  v5 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "NSSet";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (void)addObject:(id)object
{
  v5 = "mutable";
  v6 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v8 = "NSSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (void)removeObject:(id)object
{
  v5 = "mutable";
  v6 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v8 = "NSSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (__NSPlaceholderSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v18 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v8 = _os_log_pack_size();
    v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v17, v18);
    *v14 = 136315394;
    *(v14 + 4) = "[__NSPlaceholderSet initWithObjects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSPlaceholderSet initWithObjects:count:]", count);
    goto LABEL_25;
  }

  if (count >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v17, v18);
    *v16 = 136315394;
    *(v16 + 4) = "[__NSPlaceholderSet initWithObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSPlaceholderSet initWithObjects:count:]", count);
    goto LABEL_25;
  }

  if (count)
  {
    v4 = 0;
    while (objects[v4])
    {
      if (count == ++v4)
      {
        goto LABEL_8;
      }
    }

    v7 = v4;
    v8 = _os_log_pack_size();
    v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v17, v18);
    *v10 = 136315394;
    *(v10 + 4) = "[__NSPlaceholderSet initWithObjects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = v7;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSPlaceholderSet initWithObjects:count:]", v7);
LABEL_25:
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v12);
  }

LABEL_8:
  if (self == &___immutablePlaceholderSet)
  {
    if (count == 1)
    {
      v6 = *objects;

      return __NSSingleObjectSetI_new(v6, 0);
    }

    else if (count)
    {

      return __NSSetI_new(objects, 0, count, 0);
    }

    else
    {
      v5 = __NSSet0__;

      return v5;
    }
  }

  else if (self == &___mutablePlaceholderSet)
  {

    return __NSSetM_new(objects, count, 0);
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (__NSPlaceholderSet)initWithSet:(id)set copyItems:(BOOL)items
{
  itemsCopy = items;
  v12 = *MEMORY[0x1E69E9840];
  if (items)
  {
    goto LABEL_12;
  }

  v7 = objc_opt_class();
  v8 = v7 == __NSSetI || v7 == __NSSetM;
  if (!v8 && v7 != __NSFrozenSetM)
  {
    goto LABEL_12;
  }

  if (self == &___mutablePlaceholderSet)
  {

    return [set mutableCopyWithZone:0];
  }

  else
  {
    if (self != &___immutablePlaceholderSet)
    {
LABEL_12:
      v11.receiver = self;
      v11.super_class = __NSPlaceholderSet;
      return [(NSSet *)&v11 initWithSet:set copyItems:itemsCopy];
    }

    return [set copyWithZone:0];
  }
}

- (__NSPlaceholderSet)initWithCapacity:(unint64_t)capacity
{
  v10 = *MEMORY[0x1E69E9840];
  if (capacity >> 61)
  {
    v5 = _os_log_pack_size();
    v6 = _os_log_pack_fill(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5, 0, &dword_1830E6000, "*** %s: capacity (%lu) is ridiculous", v9, v10);
    *v6 = 136315394;
    *(v6 + 4) = "[__NSPlaceholderSet initWithCapacity:]";
    *(v6 + 12) = 2048;
    *(v6 + 14) = capacity;
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: capacity (%lu) is ridiculous", "[__NSPlaceholderSet initWithCapacity:]", capacity);
    v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7) osLogPack:0 size:&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5];
    objc_exception_throw(v8);
  }

  if (self == &___immutablePlaceholderSet)
  {
    [&___immutablePlaceholderSet doesNotRecognizeSelector:a2];
LABEL_9:
    __break(1u);
  }

  if (self != &___mutablePlaceholderSet)
  {
    goto LABEL_9;
  }

  return __NSSetM_new(0, capacity, 0);
}

@end