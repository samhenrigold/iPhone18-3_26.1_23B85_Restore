@interface __NSPlaceholderOrderedSet
- (__NSPlaceholderOrderedSet)init;
- (__NSPlaceholderOrderedSet)initWithCapacity:(unint64_t)capacity;
- (__NSPlaceholderOrderedSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)indexOfObject:(id)object;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation __NSPlaceholderOrderedSet

- (__NSPlaceholderOrderedSet)init
{
  if (self == &___immutablePlaceholderOrderedSet)
  {
    return [(__NSPlaceholderOrderedSet *)&___immutablePlaceholderOrderedSet initWithObjects:0 count:0];
  }

  if (self == &___mutablePlaceholderOrderedSet)
  {
    return [(__NSPlaceholderOrderedSet *)&___mutablePlaceholderOrderedSet initWithCapacity:0];
  }

  __break(1u);
  return self;
}

- (__NSPlaceholderOrderedSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v27 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v11 = _os_log_pack_size();
    v14 = &v26 - ((MEMORY[0x1EEE9AC00](v11, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v26, v27);
    *v21 = 136315394;
    *(v21 + 4) = "[__NSPlaceholderOrderedSet initWithObjects:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSPlaceholderOrderedSet initWithObjects:count:]", count);
    goto LABEL_23;
  }

  if (count >> 61)
  {
    v11 = _os_log_pack_size();
    v14 = &v26 - ((MEMORY[0x1EEE9AC00](v11, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v26, v27);
    *v25 = 136315394;
    *(v25 + 4) = "[__NSPlaceholderOrderedSet initWithObjects:count:]";
    *(v25 + 12) = 2048;
    *(v25 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSPlaceholderOrderedSet initWithObjects:count:]", count);
    goto LABEL_23;
  }

  if (count)
  {
    v8 = 0;
    while (objects[v8])
    {
      if (count == ++v8)
      {
        if (self == &___immutablePlaceholderOrderedSet)
        {

          return __NSOrderedSetI_new(objects, count, 0);
        }

LABEL_13:
        if (self == &___mutablePlaceholderOrderedSet)
        {

          return __NSOrderedSetM_new(objects, count, 0, count, v4, v5, v6, v7);
        }

        else
        {
          __break(1u);
        }

        return self;
      }
    }

    v10 = v8;
    v11 = _os_log_pack_size();
    v14 = &v26 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v26, v27);
    *v15 = 136315394;
    *(v15 + 4) = "[__NSPlaceholderOrderedSet initWithObjects:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = v10;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSPlaceholderOrderedSet initWithObjects:count:]", v10);
LABEL_23:
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v11];
    objc_exception_throw(v17);
  }

  if (self != &___immutablePlaceholderOrderedSet)
  {
    goto LABEL_13;
  }

  if (initWithObjects_count__static_init != -1)
  {
    [__NSPlaceholderOrderedSet initWithObjects:count:];
  }

  v9 = initWithObjects_count____NSOrderedSet0__;

  return v9;
}

- (__NSPlaceholderOrderedSet)initWithCapacity:(unint64_t)capacity
{
  v15 = *MEMORY[0x1E69E9840];
  if (capacity >> 61)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: capacity (%lu) is ridiculous", v14, v15);
    *v11 = 136315394;
    *(v11 + 4) = "[__NSPlaceholderOrderedSet initWithCapacity:]";
    *(v11 + 12) = 2048;
    *(v11 + 14) = capacity;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: capacity (%lu) is ridiculous", "[__NSPlaceholderOrderedSet initWithCapacity:]", capacity);
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    [&___immutablePlaceholderOrderedSet doesNotRecognizeSelector:a2];
LABEL_9:
    __break(1u);
  }

  if (self != &___mutablePlaceholderOrderedSet)
  {
    goto LABEL_9;
  }

  return __NSOrderedSetM_new(0, capacity, 0, v3, v4, v5, v6, v7);
}

- (unint64_t)count
{
  v4 = "mutable";
  v5 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v7 = "NSOrderedSet";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (unint64_t)indexOfObject:(id)object
{
  v5 = "mutable";
  v6 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "NSOrderedSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (id)objectAtIndex:(unint64_t)index
{
  v5 = "mutable";
  v6 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "NSOrderedSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v6 = "mutable";
  v7 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v6 = "<unknown>";
    v7 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "immutable";
  }

  else
  {
    v8 = v6;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v9 = "NSOrderedSet";
  }

  else
  {
    v9 = v7;
  }

  v10 = __CFLookUpClass(v9);
  v11 = __CFFullMethodName(v10, self, a2);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v11, v8);
  v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
  objc_exception_throw(v13);
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v5 = "mutable";
  v6 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "NSOrderedSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v6 = "mutable";
  v7 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v6 = "<unknown>";
    v7 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "immutable";
  }

  else
  {
    v8 = v6;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v9 = "NSOrderedSet";
  }

  else
  {
    v9 = v7;
  }

  v10 = __CFLookUpClass(v9);
  v11 = __CFFullMethodName(v10, self, a2);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v11, v8);
  v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
  objc_exception_throw(v13);
}

@end