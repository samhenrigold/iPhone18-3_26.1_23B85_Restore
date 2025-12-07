@interface __NSPlaceholderArray
- (__NSPlaceholderArray)init;
- (__NSPlaceholderArray)initWithArray:(id)array;
- (__NSPlaceholderArray)initWithArray:(id)array copyItems:(BOOL)items;
- (__NSPlaceholderArray)initWithCapacity:(unint64_t)capacity;
- (__NSPlaceholderArray)initWithContentsOfFile:(id)file;
- (__NSPlaceholderArray)initWithContentsOfURL:(id)l;
- (__NSPlaceholderArray)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)_initByAdoptingBuffer:(id *)buffer count:(unint64_t)count size:(unint64_t)size;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation __NSPlaceholderArray

- (__NSPlaceholderArray)init
{
  if (self == &___immutablePlaceholderArray)
  {
    return [(__NSPlaceholderArray *)&___immutablePlaceholderArray initWithObjects:0 count:0];
  }

  if (self == &___mutablePlaceholderArray)
  {
    return [(__NSPlaceholderArray *)&___mutablePlaceholderArray initWithCapacity:0];
  }

  __break(1u);
  return self;
}

- (unint64_t)count
{
  v4 = "mutable";
  v5 = "NSMutableArray";
  if (self != &___mutablePlaceholderArray)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderArray)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderArray)
  {
    v7 = "NSArray";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s array object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (id)objectAtIndex:(unint64_t)index
{
  v5 = "mutable";
  v6 = "NSMutableArray";
  if (self != &___mutablePlaceholderArray)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderArray)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderArray)
  {
    v8 = "NSArray";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s array object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v6 = "mutable";
  v7 = "NSMutableArray";
  if (self != &___mutablePlaceholderArray)
  {
    v6 = "<unknown>";
    v7 = "<unknown>";
  }

  if (self == &___immutablePlaceholderArray)
  {
    v8 = "immutable";
  }

  else
  {
    v8 = v6;
  }

  if (self == &___immutablePlaceholderArray)
  {
    v9 = "NSArray";
  }

  else
  {
    v9 = v7;
  }

  v10 = __CFLookUpClass(v9);
  v11 = __CFFullMethodName(v10, self, a2);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s array object", v11, v8);
  v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
  objc_exception_throw(v13);
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v5 = "mutable";
  v6 = "NSMutableArray";
  if (self != &___mutablePlaceholderArray)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderArray)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderArray)
  {
    v8 = "NSArray";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s array object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v6 = "mutable";
  v7 = "NSMutableArray";
  if (self != &___mutablePlaceholderArray)
  {
    v6 = "<unknown>";
    v7 = "<unknown>";
  }

  if (self == &___immutablePlaceholderArray)
  {
    v8 = "immutable";
  }

  else
  {
    v8 = v6;
  }

  if (self == &___immutablePlaceholderArray)
  {
    v9 = "NSArray";
  }

  else
  {
    v9 = v7;
  }

  v10 = __CFLookUpClass(v9);
  v11 = __CFFullMethodName(v10, self, a2);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s array object", v11, v8);
  v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
  objc_exception_throw(v13);
}

- (__NSPlaceholderArray)initWithArray:(id)array
{
  v7 = *MEMORY[0x1E69E9840];
  result = __initWithArrayDontCopyItems(self, array);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = __NSPlaceholderArray;
    return [(NSArray *)&v6 initWithArray:array copyItems:0];
  }

  return result;
}

- (__NSPlaceholderArray)initWithArray:(id)array copyItems:(BOOL)items
{
  itemsCopy = items;
  v9 = *MEMORY[0x1E69E9840];
  if (items || (result = __initWithArrayDontCopyItems(self, array)) == 0)
  {
    v8.receiver = self;
    v8.super_class = __NSPlaceholderArray;
    return [(NSArray *)&v8 initWithArray:array copyItems:itemsCopy];
  }

  return result;
}

- (__NSPlaceholderArray)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v17 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v7 = _os_log_pack_size();
    v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v16, v17);
    *v13 = 136315394;
    *(v13 + 4) = "[__NSPlaceholderArray initWithObjects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSPlaceholderArray initWithObjects:count:]", count);
    goto LABEL_25;
  }

  if (count >> 61)
  {
    v7 = _os_log_pack_size();
    v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v16, v17);
    *v15 = 136315394;
    *(v15 + 4) = "[__NSPlaceholderArray initWithObjects:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSPlaceholderArray initWithObjects:count:]", count);
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

    v6 = v4;
    v7 = _os_log_pack_size();
    v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v16, v17);
    *v9 = 136315394;
    *(v9 + 4) = "[__NSPlaceholderArray initWithObjects:count:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSPlaceholderArray initWithObjects:count:]", v6);
LABEL_25:
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v8, v7];
    objc_exception_throw(v11);
  }

LABEL_8:
  if (self == &___immutablePlaceholderArray)
  {
    if (count == 1)
    {
      v5 = *objects;

      return __NSSingleObjectArrayI_new(v5, 0);
    }

    else if (count)
    {

      return __NSArrayI_new(objects, 0, count, 0);
    }

    else
    {

      return &__NSArray0__struct;
    }
  }

  else if (self == &___mutablePlaceholderArray)
  {

    return __NSArrayM_new(objects, count, 0);
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)_initByAdoptingBuffer:(id *)buffer count:(unint64_t)count size:(unint64_t)size
{
  if (self == &___immutablePlaceholderArray)
  {
    return __NSArrayI_transferNew(buffer, count);
  }

  if (self == &___mutablePlaceholderArray)
  {
    return __NSArrayM_transferNew(buffer, count, size);
  }

  return 0;
}

- (__NSPlaceholderArray)initWithCapacity:(unint64_t)capacity
{
  v10 = *MEMORY[0x1E69E9840];
  if (capacity >> 61)
  {
    v5 = _os_log_pack_size();
    v6 = _os_log_pack_fill(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5, 0, &dword_1830E6000, "*** %s: capacity (%lu) is ridiculous", v9, v10);
    *v6 = 136315394;
    *(v6 + 4) = "[__NSPlaceholderArray initWithCapacity:]";
    *(v6 + 12) = 2048;
    *(v6 + 14) = capacity;
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: capacity (%lu) is ridiculous", "[__NSPlaceholderArray initWithCapacity:]", capacity);
    v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7) osLogPack:0 size:&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5];
    objc_exception_throw(v8);
  }

  if (self == &___immutablePlaceholderArray)
  {
    [&___immutablePlaceholderArray doesNotRecognizeSelector:a2];
LABEL_9:
    __break(1u);
  }

  if (self != &___mutablePlaceholderArray)
  {
    goto LABEL_9;
  }

  return __NSArrayM_new(0, capacity, 0);
}

- (__NSPlaceholderArray)initWithContentsOfFile:(id)file
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (file && (_NSIsNSString(file) & 1) == 0)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: string argument is not an NSString", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[__NSPlaceholderArray initWithContentsOfFile:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: string argument is not an NSString", "[__NSPlaceholderArray initWithContentsOfFile:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  return [NSArray newWithContentsOf:file immutable:self == &___immutablePlaceholderArray];
}

- (__NSPlaceholderArray)initWithContentsOfURL:(id)l
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (atomic_load(&initWithContentsOfURL____cls_NSURL))
  {
    if (!l)
    {
      goto LABEL_6;
    }
  }

  else
  {
    atomic_store(objc_lookUpClass("NSURL"), &initWithContentsOfURL____cls_NSURL);
    if (!l)
    {
      goto LABEL_6;
    }
  }

  atomic_load(&initWithContentsOfURL____cls_NSURL);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: url argument is not an NSURL", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[__NSPlaceholderArray initWithContentsOfURL:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: url argument is not an NSURL", "[__NSPlaceholderArray initWithContentsOfURL:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

LABEL_6:

  return [NSArray newWithContentsOf:l immutable:self == &___immutablePlaceholderArray];
}

@end